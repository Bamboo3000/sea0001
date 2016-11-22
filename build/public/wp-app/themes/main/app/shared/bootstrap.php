<?php
/**
 * Bootstrap your application here
 *
 * This is a great place to register your wordpress filters and actions.
 */
ini_set('date.timezone','Europe/London');

$this->helper('urls')->enforceHttps();

$this->addPath('app.configFile', $this->path('shared.configs', 'application.php'));

$this->service->registerFactory('helper.social', function(){
	require_once $this->path('shared', 'services/Social.php');
	return new \Services\SocialHelper($this);
});

$this->service->registerFactory('helper.sea0001.misc', function(){
	require_once $this->path('shared', 'services/Misc.php');
	return new \Services\MiscHelper($this);
});

$this->service('admin.setup')->registerSamplePermalink(function($post, $url, $permalink){
	if(in_array($post->post_type, ['jobs'])) {
		return $url . '/' . $post->post_type . '/' . $post->post_name;
	}
	// elseif(in_array($post->post_type, ['case-study'])) {
	// 	return $url . '/case-studies/' . $post->post_name;
	// }
	// elseif(in_array($post->post_type, ['team'])) {
	// 	return $url . '/our-team'; // change this according to site map
	// }
	return $permalink;
});


if(!$this->helper('pages')->isAdmin()) {
    // $this->helper('urls')->redirectToTargetUri('/coming-soon');
}

if($this->config('redirectToTarget', false)) {
	//$this->helper('urls')->redirectToTargetDomain('rossdales.co.uk');
}

function add_svg_to_upload_mimes( $upload_mimes ) {
	$upload_mimes['svg'] = 'image/svg+xml';
	$upload_mimes['svgz'] = 'image/svg+xml';
	return $upload_mimes;
}
add_filter( 'upload_mimes', 'add_svg_to_upload_mimes', 10, 1 );

// remove feature images
add_action('do_meta_boxes', function (){
    remove_meta_box( 'postimagediv','post','side' );
    remove_meta_box( 'postimagediv','page','side' );
});

add_action( 'init', 'my_custom_init' );
function my_custom_init() {
	remove_post_type_support( 'page', 'editor' );
}

define('FS_METHOD', 'direct');