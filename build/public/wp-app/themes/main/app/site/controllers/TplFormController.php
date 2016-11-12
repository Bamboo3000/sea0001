<?php
/**
 * Class TplFormController
 *
 * @author Mwayi Dzanjalimodzi
 */
class TplFormController extends BaseController
{   
    // /**
    //  * @var array form errors
    //  */
    // protected $errors = [];

    // /**
    //  * @var boolean form submitted successfully
    //  */
    // protected $success = false;

    // /**
    //  * @var boolean is Form 
    //  */
    // protected $isForm = true;

    // /**
    //  * @var \Foundation\Form The form 
    //  */
    // protected $form; 

    // /**
    //  * @var array of callbacks for a basic decorator
    //  */
    // protected $decorator; 

    // *
    //  * @var string submit label
     
    // protected $submitLabel = 'Submit';


    // /**
    //  * @var array emails
    //  */
    // protected $emails = [];


    /**
     * @inheritDoc
     */
    public function setUp()
    {
        parent::setup();

        //Do not load page from cache if this is a post request
        // if ('post' === strtolower($this->request->getMethod())) {
        //     $this->useCache = false;
        // }

        // $this->form = new \Foundation\Form($this->application);
        // $this->form->setVariables($this->request->getPostData());
        // $this->form->text('captcha')->setRequired(true)->setLabel('What is the answer to {{sum.sum}}?');

        // $this->setDecortator();
    }

    // /**
    //  * Set decorator
    //  *
    //  * @return void
    //  */
    // protected function setDecortator()
    // {
    //     $this->decorator = [
    //         'openItem' => function($item, $info) {
    //             // $item['form']->setRequired(false);
    //             // $item['form']->setValue('test');
    //             $item['form']->setNgModel($this->helper('strings')->underscore($item['form']->id));
    //             $item['class'] = isset($item['class'])? $item['class']: null;
    //             ob_start();
    //             require $this->path('partials', 'form-decorator-row.php');
    //             return ob_get_clean();
    //         }
    //     ];
    // }

    /**
     * @inheritDoc
     */
    public function preDispatch()
    {
        parent::preDispatch();
    }

    /**
     * @inheritDoc
     */
    public function dispatch()
    {
        // $this->includeTemplate = $this->getSetting('viewPath');
        // $this->settings['viewPath'] = $this->path('site.views.partials', 'form-layout.php');
        parent::dispatch();
    }

    // /**
    //  * Process the form input before rendering the template.
    //  */
    // public function actionIndex()
    // {
    //     $this->setDefaultAdminEmailAddresses();

    //     if (('post' === strtolower($this->request->getMethod()))) {

    //         $data = $this->request->getPostData();
    //         //$data = $this->getDummyData();

    //         unset($data['captcha']);

    //         foreach($data as $key => $value) {
    //             if(($element = $this->form->getElement($key)) instanceof \Foundation\Form\Element) {
    //                //validate
    //             }
    //         }

    //         $firstname  = $this->helper('arrays')->get($data, 'first_name');
    //         $lastname   = $this->helper('arrays')->get($data, 'last_name');
    //         $email      = $this->helper('arrays')->get($data, 'email');

    //         $formData = $this->helper('ros0001.misc')->getFormData($this->getNestedDataTree($data));

    //         // mail admin on validation success
    //         $this->helper('mail')->generic(
    //             // 'New form submission on (' . $this->getFormName() . ')', 
    //             'admin' , 
    //             $this->emails,
    //             [
    //                 // 'form-name' => $this->getFormName(),
    //                 'fname' => $firstname,
    //                 'lname' => $lastname,
    //                 'form-data' => $formData
    //             ]
    //         );

    //         if($email) {
    //             // mail user on validation success
    //             $this->helper('mail')->generic(
    //                 'Thank you for your enquiry', 
    //                 'user' , 
    //                 [$email => $email],
    //                 [
    //                     // 'form-name' => $this->getFormName(),
    //                     'fname' => $firstname,
    //                     'lname' => $lastname,
    //                     'form-data' => $formData,
    //                     'form-thank-you' => $this->form_settings_thank_you_email
    //                 ]
    //             );
    //         }

    //         $this->success = true;
    //     }
    // }

    // /**
    //  * Set Default Admin
    //  *
    //  * @return array
    //  */
    // protected function setDefaultAdminEmailAddresses()
    // {
    //     if(($this->form_settings_recipients = trim($this->form_settings_recipients))) {
    //         foreach(explode(',', $this->form_settings_recipients) as $email) {
    //             $this->emails[trim($email)] = trim($email);
    //         }
    //     }
    // }

    // /**
    //  * Get form name
    //  *
    //  * @return string
    //  */
    // protected function getFormName()
    // {   
    //     return 'Rossdales ' . ($this->getPrefix() == 'vet'? 'Veterinary': 'Laboratory') . ' - ' . $this->formName;
    // }

    // /**
    //  * Organise the submitted data into a tree
    //  *
    //  * @param array The data
    //  *
    //  * @return array
    //  */
    // protected function getNestedDataTree(array $data)
    // {
    //     foreach($data as $key => $value) {
    //         if(($element = $this->form->getElement($key)) instanceof \Foundation\Form\Element) {
    //             $table[$key] = [$element->label, $value];
    //         }
    //         elseif(is_string($value)) {
    //             $table[$key] = [$this->helper('strings')->titleCase($key), $value];
    //         }
    //         elseif(is_array($value)) {
    //             $table[$key] = $this->getNestedDataTree($value);
    //         }
    //     }
    //     return $table;
    // }

    // // test data
    // protected function getDummyData()
    // {
    //     return array(
    //        'fullname' => 'rwrwr',
    //        'address' => 'te',
    //        'postcode' => 'wdw',
    //        'telephone' => 'wrfwf',
    //        'mobile' => '',
    //        'email' => 'mr.mwayi@gmail.com',
    //        'horse' => 
    //       array (
    //         0 => 
    //         array(
    //            'name' => 'test',
    //            'bread_type' => 'test',
    //            'age' => '12',
    //            'sex' => 'Foal',
    //            'height' => '12',
    //            'colour' => 'red',
    //         ),
    //         1 => 
    //         array(
    //            'name' => 'erwrwr',
    //            'bread_type' => 'wrwr',
    //            'age' => '3',
    //            'sex' => 'Filly',
    //            'height' => '2',
    //            'colour' => '42',
    //         ),
    //       ),
    //        'address_of_stables' => 'test',
    //        'captcha' => '3',
    //     );
    // }
}