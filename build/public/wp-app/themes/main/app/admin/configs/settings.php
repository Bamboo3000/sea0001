<?php 

$settings = [
	'menus' => [
		'main-menu' => 'Main Menu',
	],
  	'scripts' => [],
	'ux' => [
		'show_template_page_column' => true,
		'hide_update_notice' => true,
		'keep_wysiwyg_ptags' => true,
		'hide_admin_menu' => true,
		'hide_dashboard_plugins' => true,
		'hide_dashboard_primary' => true,
		'hide_dashboard_secondary' => true,
		'hide_dashboard_incoming_links' => true,
		'hide_dashboard_quick_press' => true,
		'hide_dashboard_recent_comments' => true,
		'hide_dashboard_right_now' => true,
		'hide_dashboard_recent_drafts' => true,
		'hide_menu_dashboard' => true,
		'hide_menu_links' => true,
		'hide_menu_comments' => true,
		'hide_menu_posts' => true,
		'filter_footer' => 'Built by <a href="http://www.jacbodeveloper.com">jacobdeveloper.com</a>',
	],
	'images' => [
		'featured' => true,
		'sizes' => [
			// 'hero-large' => [1920, 950, true, 'Hero Large'],
			// 'home-grid-small' => [400, 343, true, 'Home Grid Small'],
			// 'home-grid-big' => [810, 705, true, 'Home Grid Big'],
			// 'card-image' => [430, 250, true, 'Card image 430x250']
		],
		'remove_default_sizes' => true,
	],
	// 'post_types' => [
	// 	'blog' => [
	// 		'title_single' => 'Blog',
	// 		'title_plural' => 'Blog',
	// 		'capability_type' => 'post',
	// 		'hierarchial' => true,
	// 		'supports' => ['title', 'editor'],
	// 		'menu_position' => true,
	// 		'publicly_queryable' => true,
	// 		'rewrite' => false,
	// 		'has_archive' => false,
	// 		'taxonomies' => ['blog-category']
	// 	]
	// ],
	// 'taxonomies' => [
	// 	'blog-category' => [
	// 		'posts' => ['blog'],
	// 		'title_single' => 'Category',
	// 		'title_plural' => 'Categories',
	// 		'hierarchical' => false,
	// 		'show_ui' => true,
	// 		'show_admin_column' => true,
	// 		'query_var' =>  true
	// 	]
	// ]
];

return $settings;