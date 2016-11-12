<?php 

/**
 * A base controller for all pages
 */
class PageController extends BaseController
{	
	/**
	 * Return the most popular category for post
	 */
	public function getPostCategory($post_id)
	{
		$categories = wp_get_object_terms($post_id, 'category', array('orderby' => 'count', 'order' => 'DESC'));

		return !empty($categories) ? $categories[0] : null;
	}
}
