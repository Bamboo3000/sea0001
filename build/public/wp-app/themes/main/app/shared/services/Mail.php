<?php 

namespace Services\Sea0001;

use Swift_Mailer as Mailer;
use Swift_Message as Message;
use Swift_SmtpTransport as Transport;
use SendGrid;
use Foundation\Application;

class MailHelper
{	
	/**
	 * @var \Swift_Mailer The swift transport mailer
	 */
	protected $mailer;

	/**
	 * @var \Foundation\Application $application
	 */
	protected $application;

	/**
	 * @param \Foundation\Application $application
	 */
	public function __construct(Application $application)
	{
		$this->application = $application;
		$this->setMailer();
	}

	/**
	 * Generic email
	 *
	 * @param string the form name
	 * @param array $to recipient
	 * @param array $properties to replace
	 * 
	 * @return boolean
	 */
	public function generic($subject, $template, array $to, array $properties)
	{
		return $this->factory($subject, $to, $template, $properties);
	}

	/**
	 * Log
	 *
	 * @param string $content
	 * @param string $subject
	 *
	 * @return boolean
	 */
	public function log($content, $subject = 'Alert')
	{
		$message = Message::newInstance($subject)
				->setFrom([$this->config('mail.from') => $this->config('mail.name')])
				->setTo([$this->config('mail.developer')])
				->setBody($content);
		return $this->mailer->send($message);
	}

	/**
	 * The get config shortcut
	 *
	 * @param string The dot notation config 
	 * @param string The default 
	 *
	 * @return mixed
	 */
	protected function config($config, $default = null)
	{
		return $this->application->config($config, $default);
	}
	
	/*
	| ============================== Internal ============================== 
	*/

	/**
	 * Set mailer
	 *
	 * @return void
	 */
	protected function setMailer()
	{
		$transport = Transport::newInstance($this->config('mail.host'), $this->config('mail.port'));
		$transport->setUsername($this->config('mail.user'))->setPassword($this->config('mail.pass'));
  		$this->mailer = Mailer::newInstance($transport);
	}

	/**
	 * Send mail factory
	 *
	 * @param string $subject
	 * @param array  $to 
	 * @param string $template 
	 * @param array  $properties to replace
	 *
	 * @return boolean
	 */
	protected function factory($subject, array $to = [], $template, array $properties = [])
	{
		echo $message = $this->getContent('layout', [
			'content' => $this->getContent($template, $properties),
			'title'	  => $subject
		]);

		exit;
		if($this->application->isEnv(['development', 'dev_mwayi'])) {
			return $this->adaptorSwift($to, $subject, $message);
		}

		if($this->application->isEnv('staging')) {
			$to = [$this->config('mail.developer') => 'Staging'];
			$subject = 'STAGING: ' . $subject;
		}
		return $this->adaptorSendgrid($to, $subject, $message);
	}

	/**
	 * Adaptor Default
	 *
	 * @param string $subject
	 * @param string $message
	 *
	 * @return boolean
	 */
	protected function adaptorDefault($subject, $message)
	{
		return mail($this->config('mail.developer'), $subject, strip_tags(nl2br($message)));
	}

	/**
	 * Adaptor Send Grid
	 *
	 * @param string $to
	 * @param string $subject
	 * @param string $message
	 *
	 * @return boolean
	 */
	protected function adaptorSwift($to, $subject, $message)
	{
		$message  	= Message::newInstance($subject)
					->setFrom([$this->config('mail.from') => $this->config('mail.name')])
		  			->setTo($to)
		  			->setBody($message)
		  			->setContentType('text/html');
		
		try {
			$response = $this->mailer->send($message);
		} catch(\Exception $e) {
			$response = $this->adaptorDefault($this->config('mail.error-subject', 'Problem on ' . $this->application->service('request')->getHost()), $e->getMessage() . "\n\n" . strip_tags(nl2br($body)));
		}
		return $response;
	}

	/**
	 * Adaptor Send Grid
	 *
	 * @param string $to
	 * @param string $subject
	 * @param string $message
	 *
	 * @return boolean
	 */
	protected function adaptorSendGrid($to, $subject, $message)
	{
		$_to = array_values(array_flip($to));
		$_to = array_shift($_to);

		$sendgrid = new SendGrid($this->config('sendgrid-api-key'));
		$email    = new SendGrid\Email();
		$email->addTo($_to)
		    ->setFrom($this->config('mail.from'))
		    ->setFromName($this->config('mail.name'))
		    ->setSubject($subject)
		    ->setHtml($message);

		// Or catch the error
		$message = ''; 
		try {
		    $response = $sendgrid->send($email);
		} catch(\SendGrid\Exception $e) {
		    foreach($e->getErrors() as $er) {
		        $message .= $er . '\n';
		    }
		    $response = $this->adaptorDefault($this->config('mail.error-subject', 'Problem on ' . $this->application->service('request')->getHost()), $message);
		}
		return $response;
	}

	/**
	 * Template Mailer
	 *
	 * @param string $to
	 * @param string $subject
	 * @param string $message
	 *
	 * @return boolean
	 */
	public function adaptorDefaultHtml($to, $subject, $message)
	{	
		$_to = array_values(array_flip($to));
		$_to = array_shift($_to);
	
		$headers  = "MIME-Version: 1.0\r\n";
		$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
		$headers .= "From: ". $this->config('mail.name') ." <". $this->config('mail.from') .">\r\n";
		$headers .= "Reply-To: ". $this->config('mail.reply') . "\r\n";
		$headers .= 'X-Mailer: PHP/' . phpversion();
		
		mail($this->config('mail.developer'), $subject, $message, $headers);

		return mail($_to, $subject, $message, $headers);
	}

	/**
	 * Get content
	 *
	 * @param string $template
	 * @param array  $properties
	 *
	 * @return string The content
	 */
	protected function getContent($template, array $properties = [])
	{
		ob_start();
        if(file_exists($path = $this->application->path('views', 'mail/' . $template . '.php'))) {
        	require($path);
        }
        return $this->replaceProperties(ob_get_clean(), $properties);
	}

	/**
	 * Replace properties
	 *
	 * @param string $content
	 * @param array  $replacement
	 *
	 * @return string The content
	 */
	protected function replaceProperties($content, array $replacements = [])
	{
		foreach($replacements as $key => $replace) {
			$content = str_replace(strtolower('[' . $key . ']') , $replace, $content);
		}
		return $content;
	}

}