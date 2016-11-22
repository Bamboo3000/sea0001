<?php
require_once __DIR__.'/PageController.php';

/**
 * Class CustomDetailController
 *
 * @author Mwayi Dzanjalimodzi <mwayi@smrtr.co.uk>
 */
class CustomDetailController extends PageController
{
	/**
	 * Hooks
	 *
	 * @param []
	 */
	protected $hooks = [
		'add_filter' => ['posts_where', 'modifyPageRequest']
	];

	/**
	 * Hook Add filter Posts where
	 *
	 * @param string $where clause
	 *
	 * @return string
	 */
	public function modifyPageRequest($where) 
	{	
		global $wpdb;
		if(($slug = sanitize_text_field($this->getSlug())) && ($postType = sanitize_text_field($this->getPostType())) ) {
			$where = " AND {$wpdb->prefix}posts.post_name = '$slug' AND {$wpdb->prefix}posts.post_type = '$postType' ";
			remove_all_actions('__after_loop');
		}
		return $where;
	}

	/**
	 * Setup the controller
	 *
	 * @return mixed
	 */
	public function setup() 
	{
		parent::setup();

		global $post;

		if($post instanceof \WP_post) {
			header('HTTP/1.0 200 OK');
			$this->setProperties($post);
			$this->loadMeta();
			$this->setAdjustedPostParams();
			$this->setView('single-' . $this->getPostType());
		} else {
			$this->setView('404');
			header('HTTP/1.0 404 Not Found');
		}
	}

	/**
     * Bootstrap
     *
     * Allow code to run before template_redirect and template_include hooks are actioned
     *
     * @return void
     */
    public function bootstrap() 
    {
    	parent::bootstrap();
    	if(array_key_exists('requestType', $this->settings) && $this->settings['requestType'] === 'custom') {
	        add_filter('wp_title', function($title){
	        	global $post;
	            return ($post? $post->post_title: 'Page Not Found');
	        });
	    }
    }

	/**
	 * Get slug
	 *
	 * @return string|null 
	 */
	public function getSlug() 
	{
		$segments = $this->helper('urls')->getUrlSegments();
		return isset($segments[1])? $segments[1]: null;
	}

	/**
	 * Get Post Type based on url 
	 *
	 * @return string|null 
	 */
	public function getPostType() 
	{
		$segments = $this->helper('urls')->getUrlSegments();
		$postType = isset($segments[0])? $segments[0]: null;
		return $postType;
	}
}