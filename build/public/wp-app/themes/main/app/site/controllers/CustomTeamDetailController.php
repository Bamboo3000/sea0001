<?php
require_once __DIR__.'/PageController.php';

/**
 * Class TeamDetailController
 *
 * @author Mwayi Dzanjalimodzi <mwayi@smrtr.co.uk>
 */
class CustomTeamDetailController extends PageController
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
		if(($slug = sanitize_text_field($this->getSlug()))) {
			$where = " AND {$wpdb->prefix}posts.post_name = '$slug' AND {$wpdb->prefix}posts.post_type = 'team' ";
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

		if($post instanceof \WP_post && $post->post_type === 'team') {
			header('HTTP/1.0 200 OK');
			$this->setProperties($post);
			$this->loadMeta();
			$this->setAdjustedPostParams();
			$this->setView('single-team');
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
	            return ($post? $post->post_title . ' | Our Team': 'Page Not Found');
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
		return isset($segments[2])? $segments[2]: null;
	}

	/**
	 * Get breadcrumbs
	 *
	 * We need to custom compile the urls of the breadcrumbs when in team teritory
	 *
	 * @return string The Breadcrumbs
	 */
	public function getBreadcrumb() 
	{
		$ids 		 = get_ancestors($this->ID, 'team');
		$ids 		 = array_reverse($ids);
		$prefix 	 = null;

		$breadcrumbs = [];
		
        foreach ($ids as $id){
            $breadcrumbs[] = (object)['link' => get_permalink($id), 'title' => get_the_title($id), 'is_link' => true];
        }
        return array_merge($breadcrumbs, [(object)['link' => $prefix . '/' . $this->getSlug(), 'title' => $this->post_title, 'is_link' => false]]);
	}
}