-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql.haverhilldevserver.com
-- Generation Time: Aug 01, 2016 at 02:12 AM
-- Server version: 5.6.25-log
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `honest_db_dev_hon0031`
--

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_commentmeta`
--

DROP TABLE IF EXISTS `hon0031_commentmeta`;
CREATE TABLE `hon0031_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_comments`
--

DROP TABLE IF EXISTS `hon0031_comments`;
CREATE TABLE `hon0031_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_comments`
--

INSERT INTO `hon0031_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-04-19 15:11:04', '2016-04-19 15:11:04', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_links`
--

DROP TABLE IF EXISTS `hon0031_links`;
CREATE TABLE `hon0031_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_options`
--

DROP TABLE IF EXISTS `hon0031_options`;
CREATE TABLE `hon0031_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_options`
--

INSERT INTO `hon0031_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://hon0031.dev.haverhilldevserver.com/wp-core', 'yes'),
(2, 'home', 'https://hon0031.dev.haverhilldevserver.com', 'yes'),
(3, 'blogname', 'Vanilla Wordpress Site', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'developer@smrtr.co.uk', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:1;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'main', 'yes'),
(42, 'stylesheet', 'main', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31535', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:53:"simple-custom-post-order/simple-custom-post-order.php";s:18:"scporder_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '1', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'hon0031_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1470054465;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470064313;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470064720;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470079740;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(111, '_transient_random_seed', '19417064274e88c24dea91d8571fa87d', 'yes'),
(115, 'can_compress_scripts', '1', 'yes'),
(171, '_site_transient_timeout_browser_df34444887481e1f7cdd0ce4f2286a31', '1462372728', 'yes'),
(172, '_site_transient_browser_df34444887481e1f7cdd0ce4f2286a31', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.0.2623.112";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(188, '_site_transient_timeout_browser_d1c1bad5ebb3ff17031ba6e83f9fed4e', '1465467102', 'yes'),
(189, '_site_transient_browser_d1c1bad5ebb3ff17031ba6e83f9fed4e', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"50.0.2661.94";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(193, '_transient_timeout_plugin_slugs', '1465028448', 'no'),
(194, '_transient_plugin_slugs', 'a:2:{i:0;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:1;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(195, 'recently_activated', 'a:0:{}', 'yes'),
(199, 'theme_mods_main', 'a:1:{s:18:"nav_menu_locations";a:4:{s:8:"main-nav";i:2;s:12:"footer-links";i:3;s:8:"site-map";i:5;s:12:"clients-list";i:6;}}', 'yes'),
(200, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(266, 'wpseo', 'a:21:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";N;s:7:"version";s:5:"3.0.7";s:11:"alexaverify";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";}', 'yes'),
(267, 'wpseo_permalinks', 'a:13:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(268, 'wpseo_titles', 'a:66:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:10:"title-team";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-team";s:0:"";s:12:"metakey-team";s:0:"";s:12:"noindex-team";b:0;s:13:"showdate-team";b:0;s:16:"hideeditbox-team";b:0;s:17:"title-testimonial";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:20:"metadesc-testimonial";s:0:"";s:19:"metakey-testimonial";s:0:"";s:19:"noindex-testimonial";b:0;s:20:"showdate-testimonial";b:0;s:23:"hideeditbox-testimonial";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(269, 'wpseo_social', 'a:21:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"4242464f5f58b31823ff8f48aab1df36";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(270, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(271, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(272, 'wpseo_xml', 'a:18:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:30:"post_types-team-not_in_sitemap";b:0;s:37:"post_types-testimonial-not_in_sitemap";b:0;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(274, 'scporder_install', '1', 'yes'),
(277, 'wpseo_dismiss_recalculate', '1', 'yes'),
(288, 'contact_phone', '+44 1733 340400', 'yes'),
(289, 'contact_email', 'sales@premcom.co.uk', 'yes'),
(290, 'address', 'Premcom\r\n1b Centurion Business Park\r\nSturrock Way\r\nPeterborough\r\nPE3 8YF\r\nDX 744520 Peterborough 25', 'yes'),
(291, 'address_map_link', 'https://www.google.co.uk/maps/place/Centurian+Business+Centre,+Sturrock+Way,+Peterborough+PE3+8YB/@52.5981233,-0.2688716,18z/data=!4m2!3m1!1s0x4877f13f882f6a8f:0x756e3a1b44ad1cdb', 'yes'),
(292, 'address_lat', '52.5976354', 'yes'),
(293, 'address_lng', '-0.2691202', 'yes'),
(294, 'social_linkedin', 'https://www.linkedin.com/company/1499425', 'yes'),
(295, 'social_vimeo', 'https://vimeo.com', 'yes'),
(352, 'footer_text', 'Contact us today to get your project started', 'yes'),
(485, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:21:"developer@smrtr.co.uk";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1467038874;}', 'yes'),
(496, 'rewrite_rules', 'a:72:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=1&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(527, 'jacob', 'wfwfgewrgewgegegr', 'yes'),
(528, 'founding_statment', 'Founded in 2009 by Paul Flower and Nick Mellor. Honest is a Cambridge based Design, Advertising, Marketing and Digital agency offering a nationwide service.', 'yes'),
(821, '_site_transient_timeout_browser_055919ca7988015d051630a4a0ea2b7a', '1468252634', 'yes'),
(822, '_site_transient_browser_055919ca7988015d051630a4a0ea2b7a', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:5:"9.1.1";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1238, '_site_transient_timeout_browser_6c892d4501d4469861f63942e905365a', '1469540203', 'yes'),
(1239, '_site_transient_browser_6c892d4501d4469861f63942e905365a', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:5:"9.1.2";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1244, '_site_transient_timeout_browser_6957617391098a792207167057ded94d', '1469541633', 'yes'),
(1245, '_site_transient_browser_6957617391098a792207167057ded94d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1316, '_site_transient_timeout_browser_07901cd5dfe150c854c865b24e3f09b2', '1469806115', 'yes'),
(1317, '_site_transient_browser_07901cd5dfe150c854c865b24e3f09b2', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"52.0.2743.82";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1417, '_transient_timeout_wpseo_sitemap_cache_1_1', '1469517094', 'no'),
(1418, '_transient_wpseo_sitemap_cache_1_1', '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n<sitemap>\n<loc>https://hon0031.dev.haverhilldevserver.com/page-sitemap.xml</loc>\n<lastmod>2016-07-22T16:09:20+00:00</lastmod>\n</sitemap>\n<sitemap>\n<loc>https://hon0031.dev.haverhilldevserver.com/news-sitemap.xml</loc>\n<lastmod>2016-07-11T16:04:08+00:00</lastmod>\n</sitemap>\n<sitemap>\n<loc>https://hon0031.dev.haverhilldevserver.com/case-study-sitemap.xml</loc>\n<lastmod>2016-07-25T07:06:11+00:00</lastmod>\n</sitemap>\n<sitemap>\n<loc>https://hon0031.dev.haverhilldevserver.com/category-sitemap.xml</loc>\n<lastmod></lastmod>\n</sitemap>\n<sitemap>\n<loc>https://hon0031.dev.haverhilldevserver.com/news-category-sitemap.xml</loc>\n<lastmod>2016-07-11T16:04:08+00:00</lastmod>\n</sitemap>\n</sitemapindex>', 'no'),
(1470, '_site_transient_timeout_browser_7c7be51268629463f235afd39148becf', '1470134819', 'yes'),
(1471, '_site_transient_browser_7c7be51268629463f235afd39148becf', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1474, 'foundation.page.cache', 'a:24:{i:48;O:8:"stdClass":14:{s:2:"ID";s:2:"48";s:5:"title";s:16:"346y34y34y634y4y";s:4:"slug";s:16:"346y34y34y634y4y";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:10:"case-study";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:41;O:8:"stdClass":14:{s:2:"ID";s:2:"41";s:5:"title";s:16:"35t243t342t4t542";s:4:"slug";s:16:"35t243t342t4t542";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"news";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:39;O:8:"stdClass":14:{s:2:"ID";s:2:"39";s:5:"title";s:18:"42522gt42t542t42t5";s:4:"slug";s:18:"42522gt42t542t42t5";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"news";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:37;O:8:"stdClass":14:{s:2:"ID";s:2:"37";s:5:"title";s:17:"43g34gg4ggg24g3g2";s:4:"slug";s:17:"43g34gg4ggg24g3g2";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"news";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:51;O:8:"stdClass":14:{s:2:"ID";s:2:"51";s:5:"title";s:11:"43y34y43y43";s:4:"slug";s:11:"43y34y43y43";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:10:"case-study";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:46;O:8:"stdClass":14:{s:2:"ID";s:2:"46";s:5:"title";s:13:"45t4t443y43y5";s:4:"slug";s:13:"45t4t443y43y5";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:10:"case-study";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:47;O:8:"stdClass":14:{s:2:"ID";s:2:"47";s:5:"title";s:15:"4y3y3y4y34y463y";s:4:"slug";s:15:"4y3y3y4y34y463y";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:10:"case-study";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:52;O:8:"stdClass":14:{s:2:"ID";s:2:"52";s:5:"title";s:14:"4y43y43y43y43y";s:4:"slug";s:14:"4y43y43y43y43y";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:10:"case-study";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:40;O:8:"stdClass":14:{s:2:"ID";s:2:"40";s:5:"title";s:15:"54323g4g4g45g4g";s:4:"slug";s:15:"54323g4g4g45g4g";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"news";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:3;O:8:"stdClass":14:{s:2:"ID";s:1:"3";s:5:"title";s:17:"Case study detail";s:4:"slug";s:17:"case-study-deatil";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:61:"https://hon0031.dev.haverhilldevserver.com/case-study-deatil/";s:3:"url";s:19:"/case-study-deatil/";s:8:"template";s:25:"tpl-case-study-detail.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:4;O:8:"stdClass":14:{s:2:"ID";s:1:"4";s:5:"title";s:18:"Case study listing";s:4:"slug";s:18:"case-study-listing";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:62:"https://hon0031.dev.haverhilldevserver.com/case-study-listing/";s:3:"url";s:20:"/case-study-listing/";s:8:"template";s:18:"tpl-case-study.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:2;O:8:"stdClass":14:{s:2:"ID";s:1:"2";s:5:"title";s:7:"Contact";s:4:"slug";s:7:"contact";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:51:"https://hon0031.dev.haverhilldevserver.com/contact/";s:3:"url";s:9:"/contact/";s:8:"template";s:29:"tpl-benefits-and-services.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:5;O:8:"stdClass":14:{s:2:"ID";s:1:"5";s:5:"title";s:17:"Eexpertise detail";s:4:"slug";s:17:"eexpertise-detail";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:61:"https://hon0031.dev.haverhilldevserver.com/eexpertise-detail/";s:3:"url";s:19:"/eexpertise-detail/";s:8:"template";s:24:"tpl-expertise-detail.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:6;O:8:"stdClass":14:{s:2:"ID";s:1:"6";s:5:"title";s:17:"Expertise listing";s:4:"slug";s:17:"expertise-listing";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:61:"https://hon0031.dev.haverhilldevserver.com/expertise-listing/";s:3:"url";s:19:"/expertise-listing/";s:8:"template";s:17:"tpl-expertise.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:36;O:8:"stdClass":14:{s:2:"ID";s:2:"36";s:5:"title";s:14:"f43f42g4g2g24g";s:4:"slug";s:14:"f43f42g4g2g24g";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"news";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:38;O:8:"stdClass":14:{s:2:"ID";s:2:"38";s:5:"title";s:20:"g4g522g4g42g4g2g24g4";s:4:"slug";s:20:"g4g522g4g42g4g2g24g4";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"news";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:1;O:8:"stdClass":14:{s:2:"ID";s:1:"1";s:5:"title";s:4:"Home";s:4:"slug";s:4:"home";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:43:"https://hon0031.dev.haverhilldevserver.com/";s:3:"url";s:1:"/";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:7;O:8:"stdClass":14:{s:2:"ID";s:1:"7";s:5:"title";s:11:"News detail";s:4:"slug";s:11:"news-detail";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:55:"https://hon0031.dev.haverhilldevserver.com/news-detail/";s:3:"url";s:13:"/news-detail/";s:8:"template";s:19:"tpl-news-detail.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:8;O:8:"stdClass":14:{s:2:"ID";s:1:"8";s:5:"title";s:12:"News listing";s:4:"slug";s:12:"news-listing";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:56:"https://hon0031.dev.haverhilldevserver.com/news-listing/";s:3:"url";s:14:"/news-listing/";s:8:"template";s:12:"tpl-news.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:9;O:8:"stdClass":14:{s:2:"ID";s:1:"9";s:5:"title";s:11:"Our clients";s:4:"slug";s:11:"our-clients";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:55:"https://hon0031.dev.haverhilldevserver.com/our-clients/";s:3:"url";s:13:"/our-clients/";s:8:"template";s:19:"tpl-our-clients.php";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:10;O:8:"stdClass":14:{s:2:"ID";s:2:"10";s:5:"title";s:9:"Our Story";s:4:"slug";s:9:"our-story";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:53:"https://hon0031.dev.haverhilldevserver.com/our-story/";s:3:"url";s:11:"/our-story/";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:60;O:8:"stdClass":14:{s:2:"ID";s:2:"60";s:5:"title";s:7:"Sitemap";s:4:"slug";s:7:"sitemap";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:4:"page";s:6:"parent";s:1:"0";s:9:"permalink";s:51:"https://hon0031.dev.haverhilldevserver.com/sitemap/";s:3:"url";s:9:"/sitemap/";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:49;O:8:"stdClass":14:{s:2:"ID";s:2:"49";s:5:"title";s:13:"y344y34y43y43";s:4:"slug";s:13:"y344y34y43y43";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:10:"case-study";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}i:50;O:8:"stdClass":14:{s:2:"ID";s:2:"50";s:5:"title";s:15:"y4y34y43y43y34y";s:4:"slug";s:15:"y4y34y43y43y34y";s:11:"parent_slug";N;s:12:"parent_title";N;s:10:"menu_order";s:1:"0";s:9:"post_type";s:10:"case-study";s:6:"parent";s:1:"0";s:9:"permalink";s:72:"https://hon0031.dev.haverhilldevserver.com/case-studies/346y34y34y634y4y";s:3:"url";s:30:"/case-studies/346y34y34y634y4y";s:8:"template";s:7:"default";s:9:"ancestors";a:0:{}s:8:"children";a:0:{}s:11:"descendants";a:0:{}}}', 'yes'),
(1558, '_transient_timeout_wpseo_sitemap_cache_category_1', '1469827408', 'no'),
(1559, '_transient_wpseo_sitemap_cache_category_1', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/category/uncategorized/</loc>\n		<lastmod>2016-07-22T15:48:26+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.2</priority>\n	</url>\n</urlset>', 'no'),
(1584, '_transient_timeout_wpseo_sitemap_cache_news-category_1', '1469906258', 'no'),
(1585, '_transient_wpseo_sitemap_cache_news-category_1', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news-category=3f3f33f3f33</loc>\n		<lastmod>2016-07-11T16:03:52+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.2</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news-category=3f3f3f3</loc>\n		<lastmod>2016-07-11T16:03:36+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.2</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news-category=f3f3f3f</loc>\n		<lastmod>2016-07-11T16:03:36+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.2</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news-category=ferthrhtytnynyuyi</loc>\n		<lastmod>2016-07-11T16:04:08+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.2</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news-category=othetr</loc>\n		<lastmod>2016-07-11T16:03:59+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.2</priority>\n	</url>\n</urlset>', 'no'),
(1594, '_transient_timeout_wpseo_sitemap_cache_case-study_1', '1469948282', 'no'),
(1595, '_transient_wpseo_sitemap_cache_case-study_1', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?case-study=45t4t443y43y5</loc>\n		<lastmod>2016-07-08T13:07:02+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?case-study=4y3y3y4y34y463y</loc>\n		<lastmod>2016-07-08T13:07:09+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?case-study=346y34y34y634y4y</loc>\n		<lastmod>2016-07-25T07:39:59+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?case-study=y344y34y43y43</loc>\n		<lastmod>2016-07-08T13:07:22+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?case-study=y4y34y43y43y34y</loc>\n		<lastmod>2016-07-08T13:07:29+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?case-study=43y34y43y43</loc>\n		<lastmod>2016-07-08T13:07:35+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?case-study=4y43y43y43y43y</loc>\n		<lastmod>2016-07-08T13:07:43+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n</urlset>', 'no'),
(1604, '_transient_timeout_wpseo_sitemap_cache_page_1', '1469985298', 'no'),
(1605, '_transient_wpseo_sitemap_cache_page_1', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/</loc>\n		<lastmod>2016-07-22T15:48:26+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>1</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/contact/</loc>\n		<lastmod>2016-06-28T15:47:16+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/case-study-deatil/</loc>\n		<lastmod>2016-07-01T16:11:46+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/case-study-listing/</loc>\n		<lastmod>2016-06-28T15:47:16+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/eexpertise-detail/</loc>\n		<lastmod>2016-06-28T15:47:16+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/expertise-listing/</loc>\n		<lastmod>2016-07-07T13:09:06+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/news-detail/</loc>\n		<lastmod>2016-07-07T17:43:04+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/news-listing/</loc>\n		<lastmod>2016-06-28T15:47:16+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/our-clients/</loc>\n		<lastmod>2016-07-08T14:29:03+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/our-story/</loc>\n		<lastmod>2016-07-22T16:09:20+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/sitemap/</loc>\n		<lastmod>2016-07-19T15:23:36+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n</urlset>', 'no'),
(1614, '_transient_timeout_wpseo_sitemap_cache_news_1', '1470018535', 'no'),
(1615, '_transient_wpseo_sitemap_cache_news_1', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news=f43f42g4g2g24g</loc>\n		<lastmod>2016-07-07T17:34:05+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news=43g34gg4ggg24g3g2</loc>\n		<lastmod>2016-07-11T16:03:59+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news=g4g522g4g42g4g2g24g4</loc>\n		<lastmod>2016-07-07T17:34:22+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news=42522gt42t542t42t5</loc>\n		<lastmod>2016-07-11T16:03:52+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news=54323g4g4g45g4g</loc>\n		<lastmod>2016-07-11T16:04:08+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>https://hon0031.dev.haverhilldevserver.com/?news=35t243t342t4t542</loc>\n		<lastmod>2016-07-11T16:03:36+00:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n</urlset>', 'no'),
(1625, '_site_transient_timeout_theme_roots', '1470044423', 'yes'),
(1626, '_site_transient_theme_roots', 'a:1:{s:4:"main";s:7:"/themes";}', 'yes');
INSERT INTO `hon0031_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1633, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:6:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_GB";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_GB";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.4.4.zip";s:6:"locale";s:5:"en_GB";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.4.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.4";s:7:"version";s:5:"4.4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.3.5.zip";s:6:"locale";s:5:"en_GB";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.3.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.5";s:7:"version";s:5:"4.3.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:5;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.2.9.zip";s:6:"locale";s:5:"en_GB";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.2.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.9";s:7:"version";s:5:"4.2.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1470042627;s:15:"version_checked";s:5:"4.2.2";s:12:"translations";a:0:{}}', 'yes'),
(1634, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470042627;s:7:"checked";a:1:{s:4:"main";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(1635, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470042627;s:8:"response";a:2:{s:43:"custom-options-plus/custom-options-plus.php";O:8:"stdClass":6:{s:2:"id";s:5:"26243";s:4:"slug";s:19:"custom-options-plus";s:6:"plugin";s:43:"custom-options-plus/custom-options-plus.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:50:"https://wordpress.org/plugins/custom-options-plus/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/custom-options-plus.zip";}s:23:"wp-smushit/wp-smush.php";O:8:"stdClass":6:{s:2:"id";s:4:"5534";s:4:"slug";s:10:"wp-smushit";s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:11:"new_version";s:5:"2.4.3";s:3:"url";s:41:"https://wordpress.org/plugins/wp-smushit/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-smushit.2.4.3.zip";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:13:"wordpress-seo";s:8:"language";s:5:"en_GB";s:7:"version";s:5:"3.0.7";s:7:"updated";s:19:"2015-12-04 21:57:54";s:7:"package";s:80:"https://downloads.wordpress.org/translation/plugin/wordpress-seo/3.0.7/en_GB.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:6:{s:49:"enhanced-media-library/enhanced-media-library.php";O:8:"stdClass":6:{s:2:"id";s:5:"45133";s:4:"slug";s:22:"enhanced-media-library";s:6:"plugin";s:49:"enhanced-media-library/enhanced-media-library.php";s:11:"new_version";s:3:"2.3";s:3:"url";s:53:"https://wordpress.org/plugins/enhanced-media-library/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/enhanced-media-library.2.3.zip";}s:39:"mce-table-buttons/mce_table_buttons.php";O:8:"stdClass":6:{s:2:"id";s:5:"11143";s:4:"slug";s:17:"mce-table-buttons";s:6:"plugin";s:39:"mce-table-buttons/mce_table_buttons.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:48:"https://wordpress.org/plugins/mce-table-buttons/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/mce-table-buttons.3.2.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:4:"4437";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}s:47:"safe-redirect-manager/safe-redirect-manager.php";O:8:"stdClass":6:{s:2:"id";s:5:"34252";s:4:"slug";s:21:"safe-redirect-manager";s:6:"plugin";s:47:"safe-redirect-manager/safe-redirect-manager.php";s:11:"new_version";s:5:"1.7.8";s:3:"url";s:52:"https://wordpress.org/plugins/safe-redirect-manager/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/safe-redirect-manager.1.7.8.zip";}s:53:"simple-custom-post-order/simple-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"42644";s:4:"slug";s:24:"simple-custom-post-order";s:6:"plugin";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:11:"new_version";s:3:"2.3";s:3:"url";s:55:"https://wordpress.org/plugins/simple-custom-post-order/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/simple-custom-post-order.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"3.4";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.3.4.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_postmeta`
--

DROP TABLE IF EXISTS `hon0031_postmeta`;
CREATE TABLE `hon0031_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_postmeta`
--

INSERT INTO `hon0031_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'tpl-benefits-and-services.php'),
(2, 3, '_wp_page_template', 'tpl-case-study-detail.php'),
(3, 4, '_wp_page_template', 'tpl-case-study.php'),
(4, 5, '_wp_page_template', 'tpl-expertise-detail.php'),
(5, 6, '_wp_page_template', 'tpl-expertise.php'),
(6, 7, '_wp_page_template', 'tpl-news-detail.php'),
(7, 8, '_wp_page_template', 'tpl-news.php'),
(8, 3, '_edit_lock', '1467732643:1'),
(9, 3, '_edit_last', '1'),
(10, 1, '_edit_lock', '1469203596:1'),
(11, 13, '_menu_item_type', 'post_type'),
(12, 13, '_menu_item_menu_item_parent', '0'),
(13, 13, '_menu_item_object_id', '10'),
(14, 13, '_menu_item_object', 'page'),
(15, 13, '_menu_item_target', ''),
(16, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 13, '_menu_item_xfn', ''),
(18, 13, '_menu_item_url', ''),
(20, 14, '_menu_item_type', 'post_type'),
(21, 14, '_menu_item_menu_item_parent', '0'),
(22, 14, '_menu_item_object_id', '9'),
(23, 14, '_menu_item_object', 'page'),
(24, 14, '_menu_item_target', ''),
(25, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 14, '_menu_item_xfn', ''),
(27, 14, '_menu_item_url', ''),
(29, 15, '_menu_item_type', 'post_type'),
(30, 15, '_menu_item_menu_item_parent', '0'),
(31, 15, '_menu_item_object_id', '8'),
(32, 15, '_menu_item_object', 'page'),
(33, 15, '_menu_item_target', ''),
(34, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 15, '_menu_item_xfn', ''),
(36, 15, '_menu_item_url', ''),
(38, 16, '_menu_item_type', 'post_type'),
(39, 16, '_menu_item_menu_item_parent', '0'),
(40, 16, '_menu_item_object_id', '7'),
(41, 16, '_menu_item_object', 'page'),
(42, 16, '_menu_item_target', ''),
(43, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 16, '_menu_item_xfn', ''),
(45, 16, '_menu_item_url', ''),
(47, 17, '_menu_item_type', 'post_type'),
(48, 17, '_menu_item_menu_item_parent', '0'),
(49, 17, '_menu_item_object_id', '6'),
(50, 17, '_menu_item_object', 'page'),
(51, 17, '_menu_item_target', ''),
(52, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 17, '_menu_item_xfn', ''),
(54, 17, '_menu_item_url', ''),
(56, 18, '_menu_item_type', 'post_type'),
(57, 18, '_menu_item_menu_item_parent', '17'),
(58, 18, '_menu_item_object_id', '8'),
(59, 18, '_menu_item_object', 'page'),
(60, 18, '_menu_item_target', ''),
(61, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 18, '_menu_item_xfn', ''),
(63, 18, '_menu_item_url', ''),
(65, 19, '_menu_item_type', 'post_type'),
(66, 19, '_menu_item_menu_item_parent', '17'),
(67, 19, '_menu_item_object_id', '7'),
(68, 19, '_menu_item_object', 'page'),
(69, 19, '_menu_item_target', ''),
(70, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 19, '_menu_item_xfn', ''),
(72, 19, '_menu_item_url', ''),
(74, 20, '_menu_item_type', 'post_type'),
(75, 20, '_menu_item_menu_item_parent', '17'),
(76, 20, '_menu_item_object_id', '6'),
(77, 20, '_menu_item_object', 'page'),
(78, 20, '_menu_item_target', ''),
(79, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 20, '_menu_item_xfn', ''),
(81, 20, '_menu_item_url', ''),
(83, 21, '_menu_item_type', 'post_type'),
(84, 21, '_menu_item_menu_item_parent', '0'),
(85, 21, '_menu_item_object_id', '8'),
(86, 21, '_menu_item_object', 'page'),
(87, 21, '_menu_item_target', ''),
(88, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 21, '_menu_item_xfn', ''),
(90, 21, '_menu_item_url', ''),
(92, 22, '_menu_item_type', 'post_type'),
(93, 22, '_menu_item_menu_item_parent', '0'),
(94, 22, '_menu_item_object_id', '7'),
(95, 22, '_menu_item_object', 'page'),
(96, 22, '_menu_item_target', ''),
(97, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 22, '_menu_item_xfn', ''),
(99, 22, '_menu_item_url', ''),
(101, 23, '_menu_item_type', 'post_type'),
(102, 23, '_menu_item_menu_item_parent', '0'),
(103, 23, '_menu_item_object_id', '5'),
(104, 23, '_menu_item_object', 'page'),
(105, 23, '_menu_item_target', ''),
(106, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(107, 23, '_menu_item_xfn', ''),
(108, 23, '_menu_item_url', ''),
(110, 24, '_menu_item_type', 'post_type'),
(111, 24, '_menu_item_menu_item_parent', '0'),
(112, 24, '_menu_item_object_id', '4'),
(113, 24, '_menu_item_object', 'page'),
(114, 24, '_menu_item_target', ''),
(115, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 24, '_menu_item_xfn', ''),
(117, 24, '_menu_item_url', ''),
(119, 25, '_menu_item_type', 'post_type'),
(120, 25, '_menu_item_menu_item_parent', '0'),
(121, 25, '_menu_item_object_id', '1'),
(122, 25, '_menu_item_object', 'page'),
(123, 25, '_menu_item_target', ''),
(124, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 25, '_menu_item_xfn', ''),
(126, 25, '_menu_item_url', ''),
(128, 26, '_menu_item_type', 'post_type'),
(129, 26, '_menu_item_menu_item_parent', '0'),
(130, 26, '_menu_item_object_id', '10'),
(131, 26, '_menu_item_object', 'page'),
(132, 26, '_menu_item_target', ''),
(133, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 26, '_menu_item_xfn', ''),
(135, 26, '_menu_item_url', ''),
(137, 27, '_menu_item_type', 'post_type'),
(138, 27, '_menu_item_menu_item_parent', '0'),
(139, 27, '_menu_item_object_id', '8'),
(140, 27, '_menu_item_object', 'page'),
(141, 27, '_menu_item_target', ''),
(142, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 27, '_menu_item_xfn', ''),
(144, 27, '_menu_item_url', ''),
(146, 28, '_menu_item_type', 'post_type'),
(147, 28, '_menu_item_menu_item_parent', '0'),
(148, 28, '_menu_item_object_id', '6'),
(149, 28, '_menu_item_object', 'page'),
(150, 28, '_menu_item_target', ''),
(151, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 28, '_menu_item_xfn', ''),
(153, 28, '_menu_item_url', ''),
(155, 29, '_menu_item_type', 'post_type'),
(156, 29, '_menu_item_menu_item_parent', '0'),
(157, 29, '_menu_item_object_id', '5'),
(158, 29, '_menu_item_object', 'page'),
(159, 29, '_menu_item_target', ''),
(160, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(161, 29, '_menu_item_xfn', ''),
(162, 29, '_menu_item_url', ''),
(164, 30, '_menu_item_type', 'post_type'),
(165, 30, '_menu_item_menu_item_parent', '0'),
(166, 30, '_menu_item_object_id', '4'),
(167, 30, '_menu_item_object', 'page'),
(168, 30, '_menu_item_target', ''),
(169, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 30, '_menu_item_xfn', ''),
(171, 30, '_menu_item_url', ''),
(173, 31, '_menu_item_type', 'post_type'),
(174, 31, '_menu_item_menu_item_parent', '0'),
(175, 31, '_menu_item_object_id', '2'),
(176, 31, '_menu_item_object', 'page'),
(177, 31, '_menu_item_target', ''),
(178, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 31, '_menu_item_xfn', ''),
(180, 31, '_menu_item_url', ''),
(182, 1, '_edit_last', '1'),
(183, 1, '_wp_page_template', 'default'),
(184, 1, 'page_h1', 'This ia a mageting agency'),
(185, 7, '_edit_lock', '1467975048:1'),
(186, 7, '_edit_last', '1'),
(189, 3, 'case_study_panels_link_id_1', '4'),
(191, 3, 'case_study_panels_align_1', 'left'),
(192, 3, 'case_study_panels_bg_colour_1', 'grey'),
(206, 3, 'case_study_panels_order_1', '1'),
(207, 3, 'case_study_panels_type_1', 'header-section'),
(210, 3, 'case_study_panels_title_1', 'ASDFSDF'),
(214, 3, 'case_study_panels_type_3', 'intro-section'),
(215, 3, 'case_study_panels_order_3', '2'),
(216, 3, 'case_study_panels_header_title_1', 'some title'),
(217, 3, 'case_study_panels_intro_title_3', 'some title 3'),
(218, 5, '_edit_lock', '1468947525:1'),
(219, 6, '_edit_lock', '1467905035:1'),
(220, 6, '_edit_last', '1'),
(221, 6, 'info_panels_title_1', 'Beth expertise'),
(222, 6, 'info_panels_summary_1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
(225, 6, 'info_panels_align_1', 'right'),
(226, 6, 'info_panels_bg_colour_1', 'grey'),
(227, 6, 'info_panels_title_2', 'Mwayi Expertise'),
(228, 6, 'info_panels_summary_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus totam asperiores eum, nobis aut sunt ea magnam eligendi blanditiis magni deserunt harum est vero delectus nam fugit omnis ullam earum.'),
(229, 6, 'info_panels_align_2', 'left'),
(230, 6, 'info_panels_bg_colour_2', 'blue'),
(231, 6, 'info_panels_title_3', 'Jakub expertise'),
(232, 6, 'info_panels_summary_3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus totam asperiores eum, nobis aut sunt ea magnam eligendi blanditiis magni deserunt harum est vero delectus nam fugit omnis ullam earum.'),
(233, 6, 'info_panels_align_3', 'right'),
(234, 6, 'info_panels_bg_colour_3', 'grey'),
(235, 6, 'info_panels_title_4', 'Other expertise'),
(236, 6, 'info_panels_summary_4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus totam'),
(237, 6, 'info_panels_link_id_4', '4'),
(238, 6, 'info_panels_link_label_4', 'test'),
(239, 6, 'info_panels_align_4', 'left'),
(240, 6, 'info_panels_bg_colour_4', 'blue'),
(241, 6, 'info_panels_link_id_2', '6'),
(242, 6, 'info_panels_link_label_2', 'ff4fr4'),
(243, 6, 'info_panels_link_id_3', '5'),
(244, 6, 'info_panels_link_label_3', 'tesdsds'),
(245, 6, 'info_panels_title_5', 'Minus totam'),
(246, 6, 'info_panels_summary_5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus totam asperiores eum, nobis aut sunt ea magnam eligendi blanditiis magni deserunt harum est vero delectus nam fugit omnis ullam earum.'),
(247, 6, 'info_panels_link_id_5', '3'),
(248, 6, 'info_panels_link_label_5', 'VEEVEVEV'),
(249, 6, 'info_panels_align_5', 'right'),
(250, 6, 'info_panels_bg_colour_5', 'blue'),
(251, 35, '_edit_last', '1'),
(252, 35, '_edit_lock', '1467912320:1'),
(253, 36, '_edit_last', '1'),
(254, 36, '_edit_lock', '1468252908:1'),
(255, 37, '_edit_last', '1'),
(256, 37, '_edit_lock', '1468253039:1'),
(257, 38, '_edit_last', '1'),
(258, 38, '_edit_lock', '1467912720:1'),
(259, 39, '_edit_last', '1'),
(260, 39, '_edit_lock', '1468253032:1'),
(261, 40, '_edit_last', '1'),
(262, 40, '_edit_lock', '1468253048:1'),
(263, 41, '_edit_last', '1'),
(264, 41, '_edit_lock', '1468252879:1'),
(265, 41, 'related_pages_link_id_1', '41'),
(266, 41, 'related_pages_link_id_2', '40'),
(267, 41, 'related_pages_link_id_3', '39'),
(268, 7, 'related_pages_link_id_1', '39'),
(269, 7, 'related_pages_link_id_2', '40'),
(270, 7, 'related_pages_link_id_3', '37'),
(271, 9, '_edit_lock', '1467988041:1'),
(272, 9, '_edit_last', '1'),
(273, 9, '_wp_page_template', 'tpl-our-clients.php'),
(274, 9, 'client_logos_title_1', 'jupiter'),
(275, 9, 'client_logos_link_id_1', '2'),
(276, 46, '_edit_last', '1'),
(277, 46, '_edit_lock', '1467983080:1'),
(278, 47, '_edit_last', '1'),
(279, 47, '_edit_lock', '1467983087:1'),
(280, 48, '_edit_last', '1'),
(281, 48, '_edit_lock', '1469560727:3'),
(282, 49, '_edit_last', '1'),
(283, 49, '_edit_lock', '1467983100:1'),
(284, 50, '_edit_last', '1'),
(285, 50, '_edit_lock', '1467983107:1'),
(286, 51, '_edit_last', '1'),
(287, 51, '_edit_lock', '1467983255:1'),
(288, 52, '_edit_last', '1'),
(289, 52, '_edit_lock', '1467983250:1'),
(290, 53, '_wp_attached_file', '2016/07/file00053809264.jpg'),
(291, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2918;s:6:"height";i:2091;s:4:"file";s:27:"2016/07/file00053809264.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"file00053809264-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"hero-large";a:4:{s:4:"file";s:29:"file00053809264-1920x1200.jpg";s:5:"width";i:1920;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"card-square";a:4:{s:4:"file";s:27:"file00053809264-740x710.jpg";s:5:"width";i:740;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}s:14:"card-rectangle";a:4:{s:4:"file";s:27:"file00053809264-740x460.jpg";s:5:"width";i:740;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:11:"img-360x360";a:4:{s:4:"file";s:27:"file00053809264-360x360.jpg";s:5:"width";i:360;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(292, 54, '_wp_attached_file', '2016/07/file000132701536.jpg'),
(293, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:28:"2016/07/file000132701536.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"file000132701536-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"card-square";a:4:{s:4:"file";s:28:"file000132701536-740x710.jpg";s:5:"width";i:740;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}s:14:"card-rectangle";a:4:{s:4:"file";s:28:"file000132701536-740x460.jpg";s:5:"width";i:740;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:11:"img-360x360";a:4:{s:4:"file";s:28:"file000132701536-360x360.jpg";s:5:"width";i:360;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(294, 55, '_wp_attached_file', '2016/07/file000267747089.jpg'),
(295, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2304;s:6:"height";i:3456;s:4:"file";s:28:"2016/07/file000267747089.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"file000267747089-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"hero-large";a:4:{s:4:"file";s:30:"file000267747089-1920x1200.jpg";s:5:"width";i:1920;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"card-square";a:4:{s:4:"file";s:28:"file000267747089-740x710.jpg";s:5:"width";i:740;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}s:14:"card-rectangle";a:4:{s:4:"file";s:28:"file000267747089-740x460.jpg";s:5:"width";i:740;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:11:"img-360x360";a:4:{s:4:"file";s:28:"file000267747089-360x360.jpg";s:5:"width";i:360;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:8;s:6:"credit";s:0:"";s:6:"camera";s:22:"Canon EOS 350D DIGITAL";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1160186217;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:2:"25";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(296, 56, '_wp_attached_file', '2016/07/file000267804564.jpg'),
(297, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1372;s:6:"height";i:1029;s:4:"file";s:28:"2016/07/file000267804564.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"file000267804564-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"card-square";a:4:{s:4:"file";s:28:"file000267804564-740x710.jpg";s:5:"width";i:740;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}s:14:"card-rectangle";a:4:{s:4:"file";s:28:"file000267804564-740x460.jpg";s:5:"width";i:740;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:11:"img-360x360";a:4:{s:4:"file";s:28:"file000267804564-360x360.jpg";s:5:"width";i:360;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2;s:6:"credit";s:7:"unknown";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1120253397;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:15:"0.0333333333333";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(298, 57, '_wp_attached_file', '2016/07/file000325161223.jpg'),
(299, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2580;s:6:"height";i:1932;s:4:"file";s:28:"2016/07/file000325161223.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"file000325161223-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"hero-large";a:4:{s:4:"file";s:30:"file000325161223-1920x1200.jpg";s:5:"width";i:1920;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"card-square";a:4:{s:4:"file";s:28:"file000325161223-740x710.jpg";s:5:"width";i:740;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}s:14:"card-rectangle";a:4:{s:4:"file";s:28:"file000325161223-740x460.jpg";s:5:"width";i:740;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:11:"img-360x360";a:4:{s:4:"file";s:28:"file000325161223-360x360.jpg";s:5:"width";i:360;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:8;s:6:"credit";s:0:"";s:6:"camera";s:32:"KODAK DX4530 ZOOM DIGITAL CAMERA";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1152775240;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"24";s:3:"iso";i:0;s:13:"shutter_speed";s:16:"0.00142857142857";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(300, 58, '_wp_attached_file', '2016/07/file000466623310.jpg'),
(301, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3872;s:6:"height";i:2592;s:4:"file";s:28:"2016/07/file000466623310.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"file000466623310-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"hero-large";a:4:{s:4:"file";s:30:"file000466623310-1920x1200.jpg";s:5:"width";i:1920;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"card-square";a:4:{s:4:"file";s:28:"file000466623310-740x710.jpg";s:5:"width";i:740;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}s:14:"card-rectangle";a:4:{s:4:"file";s:28:"file000466623310-740x460.jpg";s:5:"width";i:740;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:11:"img-360x360";a:4:{s:4:"file";s:28:"file000466623310-360x360.jpg";s:5:"width";i:360;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:8;s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D80";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1191077466;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"26";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(302, 59, '_wp_attached_file', '2016/07/file000477760838.jpg'),
(303, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3072;s:6:"height";i:2304;s:4:"file";s:28:"2016/07/file000477760838.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"file000477760838-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"hero-large";a:4:{s:4:"file";s:30:"file000477760838-1920x1200.jpg";s:5:"width";i:1920;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"card-square";a:4:{s:4:"file";s:28:"file000477760838-740x710.jpg";s:5:"width";i:740;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}s:14:"card-rectangle";a:4:{s:4:"file";s:28:"file000477760838-740x460.jpg";s:5:"width";i:740;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:11:"img-360x360";a:4:{s:4:"file";s:28:"file000477760838-360x360.jpg";s:5:"width";i:360;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:23:"Canon PowerShot A710 IS";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1183750577;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"5.8";s:3:"iso";i:0;s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(304, 9, 'client_logos_title_2', '4f4g4g4g4g43g4g43g34g'),
(305, 9, 'client_logos_image_2', '56'),
(306, 9, 'client_logos_link_id_2', '51'),
(307, 9, 'client_logos_image_1', '59'),
(308, 9, 'client_logos_title_3', 't45t4t'),
(309, 9, 'client_logos_image_3', '53'),
(310, 9, 'client_logos_link_id_3', '47'),
(311, 9, 'client_logos_title_4', '4t4t4t4t45t4t4t4t4'),
(312, 9, 'client_logos_link_id_4', '46'),
(313, 9, 'client_logos_title_5', '54t4y4yy4y'),
(314, 9, 'client_logos_image_5', '53'),
(315, 9, 'client_logos_image_4', '55'),
(316, 60, '_edit_last', '1'),
(317, 60, '_wp_page_template', 'default'),
(318, 60, '_edit_lock', '1468941675:1'),
(319, 10, '_edit_lock', '1469457108:1'),
(320, 10, '_edit_last', '1'),
(321, 10, '_wp_page_template', 'default'),
(326, 10, 'page_h1', 'Life is so much simpler when you’re Honest.'),
(328, 10, 'page_title', 'Honest is a team of strategic thinkers, creative people and project managers.'),
(329, 48, 'case_study_panels_type_1', 'header-section'),
(330, 78, '_wp_attached_file', '2016/07/JjdWbOCTlemWMuvC0BeF_DSC_0867edit.jpg'),
(331, 48, 'case_study_panels_header_title_1', 'dsfdsfv'),
(332, 48, 'case_study_panels_header_summary_1', 'ykghjmhjmhjhjm'),
(333, 48, 'case_study_panels_type_2', 'copy-section'),
(334, 48, 'case_study_panels_copy_title_2', 'sdsdfg'),
(335, 48, 'case_study_panels_copy_summary_2', 'sdfgsdfg');

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_posts`
--

DROP TABLE IF EXISTS `hon0031_posts`;
CREATE TABLE `hon0031_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_posts`
--

INSERT INTO `hon0031_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-07-22 15:48:26', '2016-07-22 15:48:26', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=1', 0, 'page', '', 0),
(2, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=2', 0, 'page', '', 0),
(3, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 'Case study detail', '', 'publish', 'closed', 'closed', '', 'case-study-deatil', '', '', '2016-07-01 16:11:46', '2016-07-01 16:11:46', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=3', 0, 'page', '', 0),
(4, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 'Case study listing', '', 'publish', 'open', 'open', '', 'case-study-listing', '', '', '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=4', 0, 'page', '', 0),
(5, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 'Eexpertise detail', '', 'publish', 'open', 'open', '', 'eexpertise-detail', '', '', '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=5', 0, 'page', '', 0),
(6, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 'Expertise listing', '', 'publish', 'closed', 'closed', '', 'expertise-listing', '', '', '2016-07-07 13:09:06', '2016-07-07 13:09:06', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=6', 0, 'page', '', 0),
(7, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '<div class="embed-container"><iframe src="https://player.vimeo.com/video/122809281" width="300" height="150" frameborder="0" allowfullscreen="allowfullscreen"></iframe></div><h2>Cambridge-based marketing agency Honest Ideas has produced the new ‘Bracode’ campaign for Addenbrooke’s Charitable Trust (ACT). The new campaign was launched on 6 July 2015 to support a pioneering research study that could make personalised breast cancer treatment a reality.</h2><p>The Bracode campaign features ten women volunteers – to represent the ten different sub-types of breast cancer recently discovered – all of whose lives have been touched by breast cancer in some way. They are all wearing the same size of bra, and are featured with the campaign line “One size bra won’t fit ten different women. So why should one cancer treatment?”.</p><p>The campaign will appear across video, DM, social media and PR, and served as the backdrop for an intimate fundraising event at the BT Tower in London last week.</p><p>The video is presented by Patricia Hodge and features the ten women volunteers walking a catwalk in jeans and an ill-fitting bra to an audience of family and friends. Dr Jean Abraham, Consultant in Medical Oncology at Addenbrooke’s, and lead researcher on the programme, is also featured in the film.</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p><img src="http://placehold.it/820x460.jpg" alt="" /></p><p class="caption">Caption for image if required</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p><img class="alignleft" src="http://placehold.it/380x460.jpg" alt="" /></p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><h3>Subhead could run here</h3><p><img class="alignright" src="http://placehold.it/380x460.jpg" alt="" /></p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p>', 'News detail', '', 'publish', 'closed', 'closed', '', 'news-detail', '', '', '2016-07-07 17:43:04', '2016-07-07 17:43:04', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=7', 0, 'page', '', 0),
(8, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 'News listing', '', 'publish', 'open', 'open', '', 'news-listing', '', '', '2016-06-28 15:47:16', '2016-06-28 15:47:16', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=8', 0, 'page', '', 0),
(9, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '<p>Something about our clients and what they mean to us lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud ttettetetetetetetetetetet</p>', 'Our clients', '', 'publish', 'closed', 'closed', '', 'our-clients', '', '', '2016-07-08 14:29:03', '2016-07-08 14:29:03', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=9', 0, 'page', '', 0),
(10, 1, '2016-06-28 15:47:16', '2016-06-28 15:47:16', '<p>The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry.</p><p>Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well.</p><p>That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made.</p><p>The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p><p><a href="https://hon0031.dev.haverhilldevserver.com/contact/">Get in touch</a></p><p>&nbsp;</p><p>If you’d kill for a little honesty and simplicity, get in touch today.</p>', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2016-07-22 16:09:20', '2016-07-22 16:09:20', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=10', 0, 'page', '', 0),
(11, 1, '2016-06-28 14:58:55', '2016-06-28 14:58:55', '', 'Case study deatil', '', 'inherit', 'open', 'open', '', '3-revision-v1', '', '', '2016-06-28 14:58:55', '2016-06-28 14:58:55', '', 3, 'https://hon0031.dev.haverhilldevserver.com/3-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-06-28 14:59:12', '2016-06-28 14:59:12', '', 'Case study detail', '', 'inherit', 'open', 'open', '', '3-revision-v1', '', '', '2016-06-28 14:59:12', '2016-06-28 14:59:12', '', 3, 'https://hon0031.dev.haverhilldevserver.com/3-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-06-28 15:29:23', '2016-06-28 15:29:23', ' ', '', '', 'publish', 'open', 'open', '', '13', '', '', '2016-06-28 15:29:39', '2016-06-28 15:29:39', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2016-06-28 15:29:23', '2016-06-28 15:29:23', ' ', '', '', 'publish', 'open', 'open', '', '14', '', '', '2016-06-28 15:29:39', '2016-06-28 15:29:39', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2016-06-28 15:29:24', '2016-06-28 15:29:24', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2016-06-28 15:29:39', '2016-06-28 15:29:39', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2016-06-28 15:29:24', '2016-06-28 15:29:24', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2016-06-28 15:29:39', '2016-06-28 15:29:39', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2016-06-28 15:29:24', '2016-06-28 15:29:24', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2016-06-28 15:29:39', '2016-06-28 15:29:39', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2016-06-28 15:29:40', '2016-06-28 15:29:40', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2016-06-28 15:29:40', '2016-06-28 15:29:40', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=18', 6, 'nav_menu_item', '', 0),
(19, 1, '2016-06-28 15:29:40', '2016-06-28 15:29:40', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2016-06-28 15:29:40', '2016-06-28 15:29:40', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=19', 7, 'nav_menu_item', '', 0),
(20, 1, '2016-06-28 15:29:40', '2016-06-28 15:29:40', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2016-06-28 15:29:40', '2016-06-28 15:29:40', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=20', 8, 'nav_menu_item', '', 0),
(21, 1, '2016-06-28 15:38:27', '2016-06-28 15:38:27', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2016-06-28 15:38:27', '2016-06-28 15:38:27', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2016-06-28 15:38:27', '2016-06-28 15:38:27', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2016-06-28 15:38:27', '2016-06-28 15:38:27', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2016-06-28 15:38:27', '2016-06-28 15:38:27', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2016-06-28 15:38:27', '2016-06-28 15:38:27', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2016-06-28 15:38:27', '2016-06-28 15:38:27', ' ', '', '', 'publish', 'open', 'open', '', '24', '', '', '2016-06-28 15:38:27', '2016-06-28 15:38:27', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2016-06-28 15:38:27', '2016-06-28 15:38:27', ' ', '', '', 'publish', 'open', 'open', '', '25', '', '', '2016-06-28 15:38:27', '2016-06-28 15:38:27', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2016-06-28 15:38:46', '2016-06-28 15:38:46', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2016-06-28 15:38:46', '2016-06-28 15:38:46', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2016-06-28 15:38:46', '2016-06-28 15:38:46', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2016-06-28 15:38:46', '2016-06-28 15:38:46', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2016-06-28 15:38:46', '2016-06-28 15:38:46', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2016-06-28 15:38:46', '2016-06-28 15:38:46', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2016-06-28 15:38:46', '2016-06-28 15:38:46', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2016-06-28 15:38:46', '2016-06-28 15:38:46', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2016-06-28 15:38:46', '2016-06-28 15:38:46', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2016-06-28 15:38:46', '2016-06-28 15:38:46', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=30', 5, 'nav_menu_item', '', 0),
(31, 1, '2016-06-28 15:38:46', '2016-06-28 15:38:46', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2016-06-28 15:38:46', '2016-06-28 15:38:46', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?p=31', 6, 'nav_menu_item', '', 0),
(32, 1, '2016-06-28 16:01:03', '2016-06-28 16:01:03', '', 'Home', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2016-06-28 16:01:03', '2016-06-28 16:01:03', '', 1, 'https://hon0031.dev.haverhilldevserver.com/1-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-06-28 16:14:15', '2016-06-28 16:14:15', '<div class="embed-container"><iframe src="https://player.vimeo.com/video/122809281" width="300" height="150" frameborder="0" allowfullscreen="allowfullscreen"></iframe></div><h2>Cambridge-based marketing agency Honest Ideas has produced the new ‘Bracode’ campaign for Addenbrooke’s Charitable Trust (ACT). The new campaign was launched on 6 July 2015 to support a pioneering research study that could make personalised breast cancer treatment a reality.</h2><p>The Bracode campaign features ten women volunteers – to represent the ten different sub-types of breast cancer recently discovered – all of whose lives have been touched by breast cancer in some way. They are all wearing the same size of bra, and are featured with the campaign line “One size bra won’t fit ten different women. So why should one cancer treatment?”. <br /><br /> The campaign will appear across video, DM, social media and PR, and served as the backdrop for an intimate fundraising event at the BT Tower in London last week. <br /><br /> The video is presented by Patricia Hodge and features the ten women volunteers walking a catwalk in jeans and an ill-fitting bra to an audience of family and friends. Dr Jean Abraham, Consultant in Medical Oncology at Addenbrooke’s, and lead researcher on the programme, is also featured in the film.</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. <br /><br /> Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p><img src="http://placehold.it/820x460.jpg" alt="" /></p><p class="caption">Caption for image if required</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. <br /><br /> Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p><img class="alignleft" src="http://placehold.it/380x460.jpg" alt="" /></p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. <br /><br /> Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><h3>Subhead could run here</h3><p><img class="alignright" src="http://placehold.it/380x460.jpg" alt="" /></p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. <br /><br /> Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p>', 'News detail', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-06-28 16:14:15', '2016-06-28 16:14:15', '', 7, 'https://hon0031.dev.haverhilldevserver.com/7-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-07-07 12:39:36', '2016-07-07 12:39:36', '', 'Expertise listing', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2016-07-07 12:39:36', '2016-07-07 12:39:36', '', 6, 'https://hon0031.dev.haverhilldevserver.com/6-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-07-07 17:25:20', '0000-00-00 00:00:00', '', 'This is a news item', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-07-07 17:25:20', '2016-07-07 17:25:20', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=news&#038;p=35', 0, 'news', '', 0),
(36, 1, '2016-07-07 17:34:05', '2016-07-07 17:34:05', '', 'f43f42g4g2g24g', '', 'publish', 'closed', 'closed', '', 'f43f42g4g2g24g', '', '', '2016-07-07 17:34:05', '2016-07-07 17:34:05', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=news&#038;p=36', 0, 'news', '', 0),
(37, 1, '2016-07-07 17:34:12', '2016-07-07 17:34:12', '', '43g34gg4ggg24g3g2', '', 'publish', 'closed', 'closed', '', '43g34gg4ggg24g3g2', '', '', '2016-07-11 16:03:59', '2016-07-11 16:03:59', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=news&#038;p=37', 0, 'news', '', 0),
(38, 1, '2016-07-07 17:34:22', '2016-07-07 17:34:22', '', 'g4g522g4g42g4g2g24g4', '', 'publish', 'closed', 'closed', '', 'g4g522g4g42g4g2g24g4', '', '', '2016-07-07 17:34:22', '2016-07-07 17:34:22', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=news&#038;p=38', 0, 'news', '', 0),
(39, 1, '2016-07-07 17:34:29', '2016-07-07 17:34:29', '', '42522gt42t542t42t5', '', 'publish', 'closed', 'closed', '', '42522gt42t542t42t5', '', '', '2016-07-11 16:03:52', '2016-07-11 16:03:52', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=news&#038;p=39', 0, 'news', '', 0),
(40, 1, '2016-07-07 17:34:34', '2016-07-07 17:34:34', '', '54323g4g4g45g4g', '', 'publish', 'closed', 'closed', '', '54323g4g4g45g4g', '', '', '2016-07-11 16:04:08', '2016-07-11 16:04:08', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=news&#038;p=40', 0, 'news', '', 0),
(41, 1, '2016-07-07 17:34:41', '2016-07-07 17:34:41', '', '35t243t342t4t542', '', 'publish', 'closed', 'closed', '', '35t243t342t4t542', '', '', '2016-07-11 16:03:36', '2016-07-11 16:03:36', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=news&#038;p=41', 0, 'news', '', 0),
(42, 1, '2016-07-07 17:42:02', '2016-07-07 17:42:02', '<div class="embed-container"><iframe src="https://player.vimeo.com/video/122809281" width="300" height="150" frameborder="0" allowfullscreen="allowfullscreen"></iframe></div><h2>Cambridge-based marketing agency Honest Ideas has produced the new ‘Bracode’ campaign for Addenbrooke’s Charitable Trust (ACT). The new campaign was launched on 6 July 2015 to support a pioneering research study that could make personalised breast cancer treatment a reality.</h2><p>The Bracode campaign features ten women volunteers – to represent the ten different sub-types of breast cancer recently discovered – all of whose lives have been touched by breast cancer in some way. They are all wearing the same size of bra, and are featured with the campaign line “One size bra won’t fit ten different women. So why should one cancer treatment?”.</p><p>The campaign will appear across video, DM, social media and PR, and served as the backdrop for an intimate fundraising event at the BT Tower in London last week.</p><p>The video is presented by Patricia Hodge and features the ten women volunteers walking a catwalk in jeans and an ill-fitting bra to an audience of family and friends. Dr Jean Abraham, Consultant in Medical Oncology at Addenbrooke’s, and lead researcher on the programme, is also featured in the film.</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p><img src="http://placehold.it/820x460.jpg" alt="" /></p><p class="caption">Caption for image if required</p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p><img class="alignleft" src="http://placehold.it/380x460.jpg" alt="" /></p><h3>Subhead could run here</h3><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><h3>Subhead could run here</h3><p><img class="alignright" src="http://placehold.it/380x460.jpg" alt="" /></p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p><p>Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London. Honest created an advertising campaign which tied in with the launch of the new identity. The campaign encouraged London-based parents to give their child ‘a Cantebury education’, prompting them to consider the first-class education which is on offer in beautiful surroundings, not far from London.</p>', 'News detail', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-07-07 17:42:02', '2016-07-07 17:42:02', '', 7, 'https://hon0031.dev.haverhilldevserver.com/7-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-07-08 12:43:12', '2016-07-08 12:43:12', '', 'Our clients', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2016-07-08 12:43:12', '2016-07-08 12:43:12', '', 9, 'https://hon0031.dev.haverhilldevserver.com/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-07-08 12:54:29', '2016-07-08 12:54:29', '<p>Something about our clients and what they mean to us lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud</p>', 'Our clients', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2016-07-08 12:54:29', '2016-07-08 12:54:29', '', 9, 'https://hon0031.dev.haverhilldevserver.com/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2016-07-08 12:54:46', '2016-07-08 12:54:46', '<p>Something about our clients and what they mean to us lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud ttettetetetetetetetetetet</p>', 'Our clients', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2016-07-08 12:54:46', '2016-07-08 12:54:46', '', 9, 'https://hon0031.dev.haverhilldevserver.com/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-07-08 13:07:02', '2016-07-08 13:07:02', '<p>4y354y34y34y34</p>', '45t4t443y43y5', '', 'publish', 'closed', 'closed', '', '45t4t443y43y5', '', '', '2016-07-08 13:07:02', '2016-07-08 13:07:02', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=case-study&#038;p=46', 0, 'case-study', '', 0),
(47, 1, '2016-07-08 13:07:09', '2016-07-08 13:07:09', '<p>4y634y3y3y3</p>', '4y3y3y4y34y463y', '', 'publish', 'closed', 'closed', '', '4y3y3y4y34y463y', '', '', '2016-07-08 13:07:09', '2016-07-08 13:07:09', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=case-study&#038;p=47', 0, 'case-study', '', 0),
(48, 1, '2016-07-08 13:07:15', '2016-07-08 13:07:15', '<p>3yy3y3y3y</p>', '346y34y34y634y4y', '', 'publish', 'closed', 'closed', '', '346y34y34y634y4y', '', '', '2016-07-25 07:39:59', '2016-07-25 07:39:59', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=case-study&#038;p=48', 0, 'case-study', '', 0),
(49, 1, '2016-07-08 13:07:22', '2016-07-08 13:07:22', '<p>y43y34y3yy3y</p>', 'y344y34y43y43', '', 'publish', 'closed', 'closed', '', 'y344y34y43y43', '', '', '2016-07-08 13:07:22', '2016-07-08 13:07:22', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=case-study&#038;p=49', 0, 'case-study', '', 0),
(50, 1, '2016-07-08 13:07:29', '2016-07-08 13:07:29', '<p>y3y3y3y3y34y43y35y</p>', 'y4y34y43y43y34y', '', 'publish', 'closed', 'closed', '', 'y4y34y43y43y34y', '', '', '2016-07-08 13:07:29', '2016-07-08 13:07:29', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=case-study&#038;p=50', 0, 'case-study', '', 0),
(51, 1, '2016-07-08 13:07:35', '2016-07-08 13:07:35', '<p>y43y3yy3y3y3y3y</p>', '43y34y43y43', '', 'publish', 'closed', 'closed', '', '43y34y43y43', '', '', '2016-07-08 13:07:35', '2016-07-08 13:07:35', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=case-study&#038;p=51', 0, 'case-study', '', 0),
(52, 1, '2016-07-08 13:07:43', '2016-07-08 13:07:43', '<p>y6y36y54y3y33y</p>', '4y43y43y43y43y', '', 'publish', 'closed', 'closed', '', '4y43y43y43y43y', '', '', '2016-07-08 13:07:43', '2016-07-08 13:07:43', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?post_type=case-study&#038;p=52', 0, 'case-study', '', 0),
(53, 1, '2016-07-08 14:17:27', '2016-07-08 14:17:27', '', 'file00053809264', '', 'inherit', 'open', 'open', '', 'file00053809264', '', '', '2016-07-08 14:17:27', '2016-07-08 14:17:27', '', 0, '/wp-app/uploads/2016/07/file00053809264.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2016-07-08 14:17:30', '2016-07-08 14:17:30', '', 'file000132701536', '', 'inherit', 'open', 'open', '', 'file000132701536', '', '', '2016-07-08 14:17:30', '2016-07-08 14:17:30', '', 0, '/wp-app/uploads/2016/07/file000132701536.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2016-07-08 14:17:31', '2016-07-08 14:17:31', '', 'file000267747089', '', 'inherit', 'open', 'open', '', 'file000267747089', '', '', '2016-07-08 14:17:31', '2016-07-08 14:17:31', '', 0, '/wp-app/uploads/2016/07/file000267747089.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2016-07-08 14:17:35', '2016-07-08 14:17:35', '', 'file000267804564', '', 'inherit', 'open', 'open', '', 'file000267804564', '', '', '2016-07-08 14:17:35', '2016-07-08 14:17:35', '', 0, '/wp-app/uploads/2016/07/file000267804564.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2016-07-08 14:17:36', '2016-07-08 14:17:36', '', 'file000325161223', '', 'inherit', 'open', 'open', '', 'file000325161223', '', '', '2016-07-08 14:17:36', '2016-07-08 14:17:36', '', 0, '/wp-app/uploads/2016/07/file000325161223.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-07-08 14:17:39', '2016-07-08 14:17:39', '', 'file000466623310', '', 'inherit', 'open', 'open', '', 'file000466623310', '', '', '2016-07-08 14:17:39', '2016-07-08 14:17:39', '', 0, '/wp-app/uploads/2016/07/file000466623310.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-07-08 14:17:43', '2016-07-08 14:17:43', '', 'file000477760838', '', 'inherit', 'open', 'open', '', 'file000477760838', '', '', '2016-07-08 14:17:43', '2016-07-08 14:17:43', '', 0, '/wp-app/uploads/2016/07/file000477760838.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2016-07-19 15:23:36', '2016-07-19 15:23:36', '', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2016-07-19 15:23:36', '2016-07-19 15:23:36', '', 0, 'https://hon0031.dev.haverhilldevserver.com/?page_id=60', 0, 'page', '', 0),
(61, 1, '2016-07-19 15:23:36', '2016-07-19 15:23:36', '', 'Sitemap', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2016-07-19 15:23:36', '2016-07-19 15:23:36', '', 60, 'https://hon0031.dev.haverhilldevserver.com/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2016-07-22 15:47:07', '2016-07-22 15:47:07', 'Honest is a team of strategic thinkers, creative people and project managers.\r\nLife is so much simpler when you’re Honest. \r\nThe company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry. \r\nTwo friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well. \r\nThat was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made. \r\nThe agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.    \r\n', 'Home', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2016-07-22 15:47:07', '2016-07-22 15:47:07', '', 1, 'https://hon0031.dev.haverhilldevserver.com/1-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2016-07-22 15:48:21', '2016-07-22 15:48:21', '', 'Home', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2016-07-22 15:48:21', '2016-07-22 15:48:21', '', 1, 'https://hon0031.dev.haverhilldevserver.com/1-autosave-v1/', 0, 'revision', '', 0),
(64, 1, '2016-07-22 15:48:26', '2016-07-22 15:48:26', '', 'Home', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2016-07-22 15:48:26', '2016-07-22 15:48:26', '', 1, 'https://hon0031.dev.haverhilldevserver.com/1-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2016-07-22 15:49:24', '2016-07-22 15:49:24', '', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:49:24', '2016-07-22 15:49:24', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2016-07-22 15:49:54', '2016-07-22 15:49:54', 'Life is so much simpler when you’re Honest. \r\n', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:49:54', '2016-07-22 15:49:54', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2016-07-22 15:50:41', '2016-07-22 15:50:41', '', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:50:41', '2016-07-22 15:50:41', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-07-22 15:52:11', '2016-07-22 15:52:11', 'The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry. \r\nTwo friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well. \r\nThat was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made. \r\nThe agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.    \r\n', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:52:11', '2016-07-22 15:52:11', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2016-07-22 15:52:54', '2016-07-22 15:52:54', '', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:52:54', '2016-07-22 15:52:54', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2016-07-22 15:53:22', '2016-07-22 15:53:22', '<p>Life is so much simpler when you’re Honest. The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry. Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well. That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made. The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p>', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:53:22', '2016-07-22 15:53:22', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-07-22 15:54:05', '2016-07-22 15:54:05', '<p>Life is so much simpler when you’re Honest.</p><p>The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry.</p><p>Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well.</p><p>That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made.</p><p>The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p>', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:54:05', '2016-07-22 15:54:05', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-07-22 15:57:19', '2016-07-22 15:57:19', '<p>The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry.</p><p>Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well.</p><p>That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made.</p><p>The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p>', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:57:19', '2016-07-22 15:57:19', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-07-22 15:59:28', '2016-07-22 15:59:28', '', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 15:59:28', '2016-07-22 15:59:28', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2016-07-22 16:00:05', '2016-07-22 16:00:05', '<p>The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry.</p><p>Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well.</p><p>That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made.</p><p>The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p>', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 16:00:05', '2016-07-22 16:00:05', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2016-07-22 16:00:53', '2016-07-22 16:00:53', '<p>The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry.</p><p>Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well.</p><p>That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made.</p><p>The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p><p><a href="https://hon0031.dev.haverhilldevserver.com/contact/">Get in touch </a></p>', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 16:00:53', '2016-07-22 16:00:53', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `hon0031_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(76, 1, '2016-07-22 16:01:08', '2016-07-22 16:01:08', '<p>The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry.</p><p>Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well.</p><p>That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made.</p><p>The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p><p><a href="https://hon0031.dev.haverhilldevserver.com/contact/">Get in touch</a></p><p>&nbsp;</p><p>If you’d kill for a little honesty and simplicity, get in touch today.</p>', 'Honest is a team of strategic thinkers, creative people and project managers.', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 16:01:08', '2016-07-22 16:01:08', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-07-22 16:09:20', '2016-07-22 16:09:20', '<p>The company emerged as a reaction against the usual morass of politics and intrigue associated with some elements of our industry.</p><p>Two friends got together over a pint and agreed how much better their working days would be if there were no names on the doors – no doors, even: just a band of able, straightforward people who hit it off, who derived their job satisfaction from treating their clients with respect and consideration and from doing their jobs well.</p><p>That was eight years ago. Today, as the Honest team, still door-free, surveys the tranquil waters of the River Cam and the civilised serenity of St John’s College, they might reflect with satisfaction on a simple decision well-made.</p><p>The agency produces fine, professional work, is large enough to efficiently manage very significant clients, and small enough to preserve the personal relationships that make it so special.</p><p><a href="https://hon0031.dev.haverhilldevserver.com/contact/">Get in touch</a></p><p>&nbsp;</p><p>If you’d kill for a little honesty and simplicity, get in touch today.</p>', 'Our Story', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2016-07-22 16:09:20', '2016-07-22 16:09:20', '', 10, 'https://hon0031.dev.haverhilldevserver.com/10-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2016-07-25 07:19:52', '2016-07-25 07:19:52', '', 'JjdWbOCTlemWMuvC0BeF_DSC_0867edit', '', 'inherit', 'open', 'open', '', 'jjdwboctlemwmuvc0bef_dsc_0867edit', '', '', '2016-07-25 07:19:52', '2016-07-25 07:19:52', '', 0, '/wp-app/uploads/2016/07/JjdWbOCTlemWMuvC0BeF_DSC_0867edit.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 3, '2016-07-26 11:09:50', '2016-07-26 11:09:50', '<p>3yy3y3y3y</p>', '346y34y34y634y4y', '', 'inherit', 'open', 'open', '', '48-autosave-v1', '', '', '2016-07-26 11:09:50', '2016-07-26 11:09:50', '', 48, 'https://hon0031.dev.haverhilldevserver.com/48-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_terms`
--

DROP TABLE IF EXISTS `hon0031_terms`;
CREATE TABLE `hon0031_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_terms`
--

INSERT INTO `hon0031_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Main Navigation', 'main-navigation', 0, 0),
(3, 'Footer Links', 'footer-links', 0, 0),
(4, 'Main Nav', 'main-nav', 0, 0),
(5, 'Site map', 'site-map', 0, 0),
(6, 'Clients list', 'clients-list', 0, 0),
(7, 'f3f3f3f', 'f3f3f3f', 0, 0),
(8, '3f3f3f3', '3f3f3f3', 0, 0),
(9, '3f3f33f3f33', '3f3f33f3f33', 0, 0),
(10, 'othetr', 'othetr', 0, 0),
(11, 'ferthrhtytnynyuyi', 'ferthrhtytnynyuyi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_term_relationships`
--

DROP TABLE IF EXISTS `hon0031_term_relationships`;
CREATE TABLE `hon0031_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_term_relationships`
--

INSERT INTO `hon0031_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 4, 0),
(14, 4, 0),
(15, 4, 0),
(16, 4, 0),
(17, 4, 0),
(18, 4, 0),
(19, 4, 0),
(20, 4, 0),
(21, 5, 0),
(22, 5, 0),
(23, 5, 0),
(24, 5, 0),
(25, 5, 0),
(26, 6, 0),
(27, 6, 0),
(28, 6, 0),
(29, 6, 0),
(30, 6, 0),
(31, 6, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(37, 10, 0),
(38, 2, 0),
(39, 9, 0),
(40, 11, 0),
(41, 7, 0),
(41, 8, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(48, 3, 0),
(49, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_term_taxonomy`
--

DROP TABLE IF EXISTS `hon0031_term_taxonomy`;
CREATE TABLE `hon0031_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_term_taxonomy`
--

INSERT INTO `hon0031_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 10),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 8),
(5, 5, 'nav_menu', '', 0, 5),
(6, 6, 'nav_menu', '', 0, 6),
(7, 7, 'news-category', '', 0, 1),
(8, 8, 'news-category', '', 0, 1),
(9, 9, 'news-category', '', 0, 1),
(10, 10, 'news-category', '', 0, 1),
(11, 11, 'news-category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_usermeta`
--

DROP TABLE IF EXISTS `hon0031_usermeta`;
CREATE TABLE `hon0031_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_usermeta`
--

INSERT INTO `hon0031_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'smrtr'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'hon0031_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"cad186145c55076e5adf526d8327056aba2387aeae5d256419a87b45b2302705";a:4:{s:10:"expiration";i:1469602998;s:2:"ip";s:13:"86.129.218.30";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7";s:5:"login";i:1469430198;}s:64:"bf9dd3f660976bbc31cf9b0a5a1a2df780c7f4840c7efdc08fccddcabc5f0981";a:4:{s:10:"expiration";i:1469629030;s:2:"ip";s:13:"86.129.218.30";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36";s:5:"login";i:1469456230;}}'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:8:"add-team";i:2;s:12:"add-post_tag";}'),
(17, 1, 'nav_menu_recently_edited', '6'),
(18, 1, 'hon0031_user-settings', 'editor=tinymce&wplink=1'),
(19, 1, 'hon0031_user-settings-time', '1469203249'),
(20, 1, 'wpseo_ignore_tour', '1'),
(21, 1, 'wpseo_seen_tagline_notice', 'seen'),
(22, 1, 'wpseo_seen_about_version', '3.0.5'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'meta-box-order_news', 'a:3:{s:4:"side";s:60:"submitdiv,tagsdiv-news-category,wpf-parent-post,postimagediv";s:6:"normal";s:54:"wpseo_meta,slugdiv,page,post,related,c2a,related-pages";s:8:"advanced";s:0:"";}'),
(26, 1, 'screen_layout_news', '2'),
(27, 1, 'closedpostboxes_news', 'a:0:{}'),
(28, 1, 'metaboxhidden_news', 'a:1:{i:0;s:7:"slugdiv";}'),
(29, 2, 'nickname', 'chris'),
(30, 2, 'first_name', 'Chris'),
(31, 2, 'last_name', 'Duncan'),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'comment_shortcuts', 'false'),
(35, 2, 'admin_color', 'fresh'),
(36, 2, 'use_ssl', '0'),
(37, 2, 'show_admin_bar_front', 'true'),
(38, 2, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(39, 2, 'hon0031_user_level', '10'),
(40, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(41, 3, 'nickname', 'Beth'),
(42, 3, 'first_name', 'Beth'),
(43, 3, 'last_name', 'Goldsworthy'),
(44, 3, 'description', ''),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'comment_shortcuts', 'false'),
(47, 3, 'admin_color', 'fresh'),
(48, 3, 'use_ssl', '0'),
(49, 3, 'show_admin_bar_front', 'true'),
(50, 3, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(51, 3, 'hon0031_user_level', '10'),
(52, 3, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(53, 4, 'nickname', 'ellis'),
(54, 4, 'first_name', 'Ellis'),
(55, 4, 'last_name', 'Broadwood-Smith'),
(56, 4, 'description', ''),
(57, 4, 'rich_editing', 'true'),
(58, 4, 'comment_shortcuts', 'false'),
(59, 4, 'admin_color', 'fresh'),
(60, 4, 'use_ssl', '0'),
(61, 4, 'show_admin_bar_front', 'true'),
(62, 4, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(63, 4, 'hon0031_user_level', '10'),
(64, 4, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(65, 5, 'nickname', 'paul'),
(66, 5, 'first_name', 'Paul'),
(67, 5, 'last_name', 'Flower'),
(68, 5, 'description', ''),
(69, 5, 'rich_editing', 'true'),
(70, 5, 'comment_shortcuts', 'false'),
(71, 5, 'admin_color', 'fresh'),
(72, 5, 'use_ssl', '0'),
(73, 5, 'show_admin_bar_front', 'true'),
(74, 5, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(75, 5, 'hon0031_user_level', '10'),
(76, 5, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(77, 6, 'nickname', 'nick'),
(78, 6, 'first_name', 'Nick'),
(79, 6, 'last_name', 'Mellor'),
(80, 6, 'description', ''),
(81, 6, 'rich_editing', 'true'),
(82, 6, 'comment_shortcuts', 'false'),
(83, 6, 'admin_color', 'fresh'),
(84, 6, 'use_ssl', '0'),
(85, 6, 'show_admin_bar_front', 'true'),
(86, 6, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(87, 6, 'hon0031_user_level', '10'),
(88, 6, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(89, 7, 'nickname', 'Louise'),
(90, 7, 'first_name', 'Lousie'),
(91, 7, 'last_name', 'Ecclestone'),
(92, 7, 'description', ''),
(93, 7, 'rich_editing', 'true'),
(94, 7, 'comment_shortcuts', 'false'),
(95, 7, 'admin_color', 'fresh'),
(96, 7, 'use_ssl', '0'),
(97, 7, 'show_admin_bar_front', 'true'),
(98, 7, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(99, 7, 'hon0031_user_level', '10'),
(100, 7, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(101, 8, 'nickname', 'jakub'),
(102, 8, 'first_name', 'Jakub'),
(103, 8, 'last_name', 'Pabis'),
(104, 8, 'description', ''),
(105, 8, 'rich_editing', 'true'),
(106, 8, 'comment_shortcuts', 'false'),
(107, 8, 'admin_color', 'fresh'),
(108, 8, 'use_ssl', '0'),
(109, 8, 'show_admin_bar_front', 'true'),
(110, 8, 'hon0031_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(111, 8, 'hon0031_user_level', '10'),
(112, 8, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(113, 3, 'session_tokens', 'a:1:{s:64:"a40bf476b08b8bbc76121cecb7a964fb4400ebbb8a7b6c864c164d4b3db151ac";a:4:{s:10:"expiration";i:1469702819;s:2:"ip";s:13:"86.129.218.30";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1469530019;}}'),
(114, 3, 'wpseo_ignore_tour', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hon0031_users`
--

DROP TABLE IF EXISTS `hon0031_users`;
CREATE TABLE `hon0031_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hon0031_users`
--

INSERT INTO `hon0031_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'smrtr', '$P$BgOP7LiIkgdl2SYA6hEWME0rq31Jcu1', 'smrtr', 'developer@smrtr.co.uk', '', '2016-04-19 15:11:04', '', 0, 'smrtr'),
(2, 'chris', '$P$BAxWgeflHe9sgymyiQw1nNL/rmPLq71', 'chris', 'chris@honestideas.co.uk', '', '2016-07-19 14:12:26', '', 0, 'Chris Duncan'),
(3, 'Beth', '$P$BJTB/sEp69DCO4dL6BztJFnPEtANWg/', 'beth', 'beth@honestideas.co.uk', '', '2016-07-19 14:14:34', '', 0, 'Beth Goldsworthy'),
(4, 'ellis', '$P$BI4/62B4lXm6Pe/OhWpRIv6pHgCNtR.', 'ellis', 'ellis@honestideas.co.uk', '', '2016-07-19 14:19:08', '', 0, 'Ellis Broadwood-Smith'),
(5, 'paul', '$P$BU8NXPkFFhfEDCqqgDh.nAGyuYb4Ra0', 'paul', 'paul@honestideas.co.uk', '', '2016-07-19 14:20:11', '', 0, 'Paul Flower'),
(6, 'nick', '$P$BKDlYj8wO3BKGCq.Y2ZKej/Lc0VJ3X/', 'nick', 'nick@honestideas.co.uk', '', '2016-07-19 14:22:54', '', 0, 'Nick Mellor'),
(7, 'Louise', '$P$BFdK9tnaBoIduT5n6j3QUB6EEcbi9W0', 'louise', 'louise@honestideas.co.uk', '', '2016-07-19 14:25:50', '', 0, 'Lousie Ecclestone'),
(8, 'jakub', '$P$B26nKBcKtFWW5CXyw.YtTK6IGgmZm90', 'jakub', 'jakub@honestideas.co.uk', '', '2016-07-19 14:28:23', '', 0, 'Jakub Pabis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hon0031_commentmeta`
--
ALTER TABLE `hon0031_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hon0031_comments`
--
ALTER TABLE `hon0031_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `hon0031_links`
--
ALTER TABLE `hon0031_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `hon0031_options`
--
ALTER TABLE `hon0031_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `hon0031_postmeta`
--
ALTER TABLE `hon0031_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hon0031_posts`
--
ALTER TABLE `hon0031_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `hon0031_terms`
--
ALTER TABLE `hon0031_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `hon0031_term_relationships`
--
ALTER TABLE `hon0031_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `hon0031_term_taxonomy`
--
ALTER TABLE `hon0031_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `hon0031_usermeta`
--
ALTER TABLE `hon0031_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hon0031_users`
--
ALTER TABLE `hon0031_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hon0031_commentmeta`
--
ALTER TABLE `hon0031_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hon0031_comments`
--
ALTER TABLE `hon0031_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hon0031_links`
--
ALTER TABLE `hon0031_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hon0031_options`
--
ALTER TABLE `hon0031_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1636;
--
-- AUTO_INCREMENT for table `hon0031_postmeta`
--
ALTER TABLE `hon0031_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `hon0031_posts`
--
ALTER TABLE `hon0031_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `hon0031_terms`
--
ALTER TABLE `hon0031_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `hon0031_term_taxonomy`
--
ALTER TABLE `hon0031_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `hon0031_usermeta`
--
ALTER TABLE `hon0031_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `hon0031_users`
--
ALTER TABLE `hon0031_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
