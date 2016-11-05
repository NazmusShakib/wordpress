-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2015 at 07:42 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zdeliccio`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-10-07 16:50:58', '2015-10-07 16:50:58', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=242 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/zdele', 'yes'),
(2, 'home', 'http://localhost/zdele', 'yes'),
(3, 'blogname', 'zDeliccio', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mdshuvobc@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:47:"really-simple-captcha/really-simple-captcha.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'zdeliccio', 'yes'),
(42, 'stylesheet', 'zdeliccio', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
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
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:3:"cat";s:5:"count";i:1;s:12:"hierarchical";i:1;s:8:"dropdown";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '7', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:17:"wine-cook-sidebar";a:5:{i:0;s:30:"deliccio_custom_widget_class-3";i:1;s:14:"recent-posts-2";i:2;s:10:"nav_menu-2";i:3;s:12:"categories-2";i:4;s:17:"recent-comments-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:6:{i:1445273460;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1445273491;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1445274166;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1445281260;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1445316660;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_random_seed', 'd6d094e89b2e6be51eac37a841a4c15c', 'yes'),
(101, 'nonce_key', 'iyG;W?+]f5mhar&de.bplKeLt`=9C+6]x->U^Sqw~Q(?@s,k9UaZY9&#zh^gF7:G', 'yes'),
(102, 'nonce_salt', 'v/6ENTh@^0L sc[.O[Rj?R<@|W5vGOho|w>H@t~&Scm^v2L:lhq<|oY35~7M^MBa', 'yes'),
(105, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1445276328;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1445255720;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";s:9:"zdeliccio";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(111, 'auth_key', '3`0er!}BXrwfm9p;kQx?#j<_oJ.%V5l>BzKXrI+E,+{ykRH,/-BS%ar=:X}vaD@Q', 'yes'),
(112, 'auth_salt', 'l+NJ~y~/A=qs= wgwV/o{S^6djkL`,.Zh>]FRpb*Jl/h%ST.,FXvOq}uH>,@+Et5', 'yes'),
(113, 'logged_in_key', '{|s/+3^TeeZkey*Z7c~@|*wL4NKzzb;rfyVzZ1bTvNh*}5;LL4KjxoA)JLM:%R1h', 'yes'),
(115, 'logged_in_salt', 'y2fdZEoG6;DhG6/rlQ!>wWD9/>A}g1}g<anf@aLin%i6EmB{W5+D$|D6X>-sH`p8', 'yes'),
(116, '_site_transient_timeout_browser_522170fb17b3dafd4d8c57bfe7d2c613', '1444841479', 'yes'),
(117, '_site_transient_browser_522170fb17b3dafd4d8c57bfe7d2c613', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"45.0.2454.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(118, 'can_compress_scripts', '1', 'yes'),
(124, '_transient_twentyfifteen_categories', '1', 'yes'),
(138, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1444236704;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(139, 'current_theme', 'SoftTech 22', 'yes'),
(140, 'theme_mods_zdeliccio', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(143, 'redux-framework-tracking', 'a:3:{s:8:"dev_mode";b:0;s:4:"hash";s:32:"369a3018ff438b49ef917e05448195fb";s:14:"allow_tracking";s:2:"no";}', 'yes'),
(144, 'opt_shuvo', 'a:14:{s:8:"last_tab";s:1:"5";s:10:"opt-slides";a:2:{i:0;a:10:{s:5:"title";s:11:"Lorem ipsum";s:8:"subtitle";s:24:"adipisicing elit, sed do";s:11:"description";s:144:"Lorem ipsum dolamet consectetur \r\nadipisicing elit, sed do eiusmod tempor aliqua enim ad minim veniam, quis nosinci- didunt ut labore et dolore.";s:3:"url";s:0:"";s:4:"sort";s:1:"0";s:13:"attachment_id";s:3:"102";s:5:"thumb";s:66:"http://localhost/zdele/wp-content/uploads/2015/10/img2-150x150.jpg";s:5:"image";s:58:"http://localhost/zdele/wp-content/uploads/2015/10/img2.jpg";s:6:"height";s:3:"384";s:5:"width";s:3:"620";}i:1;a:10:{s:5:"title";s:15:"Maecenas tempus";s:8:"subtitle";s:23:"tellus eget condimentum";s:11:"description";s:166:"eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel";s:3:"url";s:0:"";s:4:"sort";s:1:"1";s:13:"attachment_id";s:3:"103";s:5:"thumb";s:66:"http://localhost/zdele/wp-content/uploads/2015/10/img3-150x150.jpg";s:5:"image";s:58:"http://localhost/zdele/wp-content/uploads/2015/10/img3.jpg";s:6:"height";s:3:"384";s:5:"width";s:3:"620";}}s:8:"rdx_logo";a:5:{s:3:"url";s:66:"http://localhost/zdele/wp-content/themes/zdeliccio/images/logo.png";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:14:"rdx_head1_link";s:0:"";s:14:"rdx_head2_link";s:0:"";s:14:"rdx_head3_link";s:0:"";s:13:"contact-leftt";s:19:"mdshuvobc@gmail.com";s:14:"contact-rightt";s:19:"mdshuvobc@gmail.com";s:14:"contact-number";s:17:"+8801 737 122 789";s:15:"contact-fb-link";s:19:"mdshuvobc@gmail.com";s:21:"contact-linkedin-link";s:19:"mdshuvobc@gmail.com";s:20:"contact-twitter-link";s:19:"mdshuvobc@gmail.com";s:22:"contact-delicious-link";s:19:"mdshuvobc@gmail.com";s:23:"contact-technoraty-link";s:19:"mdshuvobc@gmail.com";}', 'yes'),
(145, 'opt_shuvo-transients', 'a:2:{s:14:"changed_values";a:2:{s:8:"last_tab";s:0:"";s:10:"opt-slides";a:3:{i:0;a:10:{s:5:"title";s:11:"Lorem ipsum";s:8:"subtitle";s:24:"adipisicing elit, sed do";s:11:"description";s:144:"Lorem ipsum dolamet consectetur \r\nadipisicing elit, sed do eiusmod tempor aliqua enim ad minim veniam, quis nosinci- didunt ut labore et dolore.";s:3:"url";s:0:"";s:4:"sort";s:1:"0";s:13:"attachment_id";s:3:"102";s:5:"thumb";s:66:"http://localhost/zdele/wp-content/uploads/2015/10/img2-150x150.jpg";s:5:"image";s:58:"http://localhost/zdele/wp-content/uploads/2015/10/img2.jpg";s:6:"height";s:3:"384";s:5:"width";s:3:"620";}i:1;a:10:{s:5:"title";s:15:"Maecenas tempus";s:8:"subtitle";s:23:"tellus eget condimentum";s:11:"description";s:166:"eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel";s:3:"url";s:0:"";s:4:"sort";s:1:"1";s:13:"attachment_id";s:3:"103";s:5:"thumb";s:66:"http://localhost/zdele/wp-content/uploads/2015/10/img3-150x150.jpg";s:5:"image";s:58:"http://localhost/zdele/wp-content/uploads/2015/10/img3.jpg";s:6:"height";s:3:"384";s:5:"width";s:3:"620";}i:2;a:10:{s:5:"title";s:16:"Aenean vulputate";s:8:"subtitle";s:32:"Integer tincidunt. Cras dapibus.";s:11:"description";s:141:"Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.";s:3:"url";s:0:"";s:4:"sort";s:1:"2";s:13:"attachment_id";s:3:"104";s:5:"thumb";s:66:"http://localhost/zdele/wp-content/uploads/2015/10/img1-150x150.jpg";s:5:"image";s:58:"http://localhost/zdele/wp-content/uploads/2015/10/img1.jpg";s:6:"height";s:3:"384";s:5:"width";s:3:"620";}}}s:9:"last_save";i:1444318036;}', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(148, 'rewrite_rules', 'a:113:{s:36:"winelist/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"winelist/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"winelist/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"winelist/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"winelist/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"winelist/([^/]+)/trackback/?$";s:35:"index.php?winelist=$matches[1]&tb=1";s:37:"winelist/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?winelist=$matches[1]&paged=$matches[2]";s:44:"winelist/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?winelist=$matches[1]&cpage=$matches[2]";s:29:"winelist/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?winelist=$matches[1]&page=$matches[2]";s:25:"winelist/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"winelist/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"winelist/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"winelist/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"winelist/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"event/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"event/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"event/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:34:"event/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:41:"event/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:26:"event/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:22:"event/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"event/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(157, 'category_children', 'a:0:{}', 'yes'),
(171, 'widget_deliccio_custom_widget_class', 'a:2:{i:3;a:3:{s:5:"title";s:16:" venenatis vitae";s:11:"description";s:283:"erdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverr";s:5:"photo";s:64:"http://localhost/zdele/wp-content/uploads/2015/10/page2_img4.jpg";}s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:4:"menu";s:8:"nav_menu";i:2;}s:12:"_multiwidget";i:1;}', 'yes'),
(185, '_transient_timeout_settings_errors', '1444318066', 'no'),
(186, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(187, 'recently_activated', 'a:0:{}', 'yes'),
(188, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.3";}', 'yes'),
(209, '_transient_timeout_plugin_slugs', '1444727157', 'no'),
(210, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";i:3;s:47:"really-simple-captcha/really-simple-captcha.php";}', 'no'),
(237, '_site_transient_timeout_theme_roots', '1445257507', 'yes'),
(238, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:9:"zdeliccio";s:7:"/themes";}', 'yes'),
(239, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1445276329;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.5";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.5.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"really-simple-captcha/really-simple-captcha.php";O:8:"stdClass":6:{s:2:"id";s:4:"7028";s:4:"slug";s:21:"really-simple-captcha";s:6:"plugin";s:47:"really-simple-captcha/really-simple-captcha.php";s:11:"new_version";s:7:"1.8.0.1";s:3:"url";s:52:"https://wordpress.org/plugins/really-simple-captcha/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/really-simple-captcha.1.8.0.1.zip";}}}', 'yes'),
(240, '_transient_doing_cron', '1445276307.1015720367431640625000', 'yes'),
(241, 'auto_updater.lock', '1445276328', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=270 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/zdele/'),
(10, 4, '_menu_item_orphaned', '1444237276'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1444237277'),
(20, 2, '_wp_trash_meta_status', 'publish'),
(21, 2, '_wp_trash_meta_time', '1444237361'),
(22, 7, '_edit_last', '1'),
(23, 7, '_edit_lock', '1444237265:1'),
(24, 7, '_wp_page_template', 'home_template.php'),
(25, 10, '_edit_last', '1'),
(26, 10, '_edit_lock', '1444237285:1'),
(27, 10, '_wp_page_template', 'Cuisine.php'),
(28, 12, '_edit_last', '1'),
(29, 12, '_edit_lock', '1444237303:1'),
(30, 12, '_wp_page_template', 'winepage.php'),
(31, 14, '_edit_last', '1'),
(32, 14, '_edit_lock', '1444293392:1'),
(33, 14, '_wp_page_template', 'cookbookpage.php'),
(34, 16, '_edit_last', '1'),
(35, 16, '_edit_lock', '1444317175:1'),
(36, 16, '_wp_page_template', 'Contacts.php'),
(37, 18, '_menu_item_type', 'post_type'),
(38, 18, '_menu_item_menu_item_parent', '0'),
(39, 18, '_menu_item_object_id', '16'),
(40, 18, '_menu_item_object', 'page'),
(41, 18, '_menu_item_target', ''),
(42, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 18, '_menu_item_xfn', ''),
(44, 18, '_menu_item_url', ''),
(46, 19, '_menu_item_type', 'post_type'),
(47, 19, '_menu_item_menu_item_parent', '0'),
(48, 19, '_menu_item_object_id', '14'),
(49, 19, '_menu_item_object', 'page'),
(50, 19, '_menu_item_target', ''),
(51, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 19, '_menu_item_xfn', ''),
(53, 19, '_menu_item_url', ''),
(55, 20, '_menu_item_type', 'post_type'),
(56, 20, '_menu_item_menu_item_parent', '0'),
(57, 20, '_menu_item_object_id', '12'),
(58, 20, '_menu_item_object', 'page'),
(59, 20, '_menu_item_target', ''),
(60, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 20, '_menu_item_xfn', ''),
(62, 20, '_menu_item_url', ''),
(64, 21, '_menu_item_type', 'post_type'),
(65, 21, '_menu_item_menu_item_parent', '0'),
(66, 21, '_menu_item_object_id', '10'),
(67, 21, '_menu_item_object', 'page'),
(68, 21, '_menu_item_target', ''),
(69, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 21, '_menu_item_xfn', ''),
(71, 21, '_menu_item_url', ''),
(73, 22, '_menu_item_type', 'post_type'),
(74, 22, '_menu_item_menu_item_parent', '0'),
(75, 22, '_menu_item_object_id', '7'),
(76, 22, '_menu_item_object', 'page'),
(77, 22, '_menu_item_target', ''),
(78, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 22, '_menu_item_xfn', ''),
(80, 22, '_menu_item_url', ''),
(82, 23, '_edit_last', '1'),
(83, 23, '_edit_lock', '1444241851:1'),
(84, 24, '_wp_attached_file', '2015/10/page1_img1.jpg'),
(85, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page1_img1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page1_img1-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(86, 25, '_wp_attached_file', '2015/10/page1_img2.jpg'),
(87, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page1_img2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page1_img2-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(88, 26, '_wp_attached_file', '2015/10/page1_img3.jpg'),
(89, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page1_img3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page1_img3-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(90, 27, '_wp_attached_file', '2015/10/page1_img4.jpg'),
(91, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:102;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page1_img4.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(92, 28, '_wp_attached_file', '2015/10/page1_img5.jpg'),
(93, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:102;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page1_img5.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(94, 29, '_wp_attached_file', '2015/10/page1_img6.jpg'),
(95, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:102;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page1_img6.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(96, 30, '_wp_attached_file', '2015/10/page1_img7.jpg'),
(97, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:102;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page1_img7.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(98, 31, '_wp_attached_file', '2015/10/page2_img1.jpg'),
(99, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page2_img1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page2_img1-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(100, 32, '_wp_attached_file', '2015/10/page2_img2.jpg'),
(101, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page2_img2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page2_img2-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(102, 33, '_wp_attached_file', '2015/10/page2_img3.jpg'),
(103, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page2_img3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page2_img3-150x102.jpg";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(104, 34, '_wp_attached_file', '2015/10/page2_img4.jpg'),
(105, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page2_img4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page2_img4-150x102.jpg";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(106, 35, '_wp_attached_file', '2015/10/page2_img5.jpg'),
(107, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page2_img5.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page2_img5-150x102.jpg";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(108, 36, '_wp_attached_file', '2015/10/page3_img1.jpg'),
(109, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page3_img1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page3_img1-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(110, 37, '_wp_attached_file', '2015/10/page3_img2.jpg'),
(111, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page3_img2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page3_img2-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(112, 38, '_wp_attached_file', '2015/10/page3_img3.jpg'),
(113, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page3_img3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page3_img3-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(114, 39, '_wp_attached_file', '2015/10/page3_img4.jpg'),
(115, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page3_img4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page3_img4-150x102.jpg";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(116, 40, '_wp_attached_file', '2015/10/page4_img1.jpg'),
(117, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2015/10/page4_img1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"page4_img1-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(118, 23, '_thumbnail_id', '25'),
(119, 41, '_wp_attached_file', '2015/10/page4_img2.jpg'),
(120, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:102;s:4:"file";s:22:"2015/10/page4_img2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(122, 23, 'post-title-last', 'To us!'),
(123, 43, '_edit_last', '1'),
(124, 43, '_edit_lock', '1444241938:1'),
(125, 43, '_thumbnail_id', '24'),
(127, 43, 'post-title-last', 'Us'),
(128, 45, '_edit_last', '1'),
(129, 45, '_edit_lock', '1444242102:1'),
(130, 45, '_thumbnail_id', '25'),
(132, 45, 'post-title-last', 'Services'),
(133, 47, '_edit_last', '1'),
(134, 47, '_edit_lock', '1444242172:1'),
(135, 47, '_thumbnail_id', '27'),
(136, 48, '_edit_last', '1'),
(137, 48, '_edit_lock', '1444242208:1'),
(138, 48, '_thumbnail_id', '30'),
(139, 49, '_edit_last', '1'),
(140, 49, '_edit_lock', '1444242245:1'),
(141, 49, '_thumbnail_id', '29'),
(142, 50, '_edit_last', '1'),
(143, 50, '_edit_lock', '1444242320:1'),
(144, 50, '_thumbnail_id', '26'),
(145, 51, '_edit_last', '1'),
(146, 51, '_edit_lock', '1444242759:1'),
(147, 51, '_thumbnail_id', '31'),
(148, 52, '_edit_last', '1'),
(149, 52, '_edit_lock', '1444242848:1'),
(150, 52, '_thumbnail_id', '38'),
(152, 52, 'post-title-last', 'you know'),
(153, 54, '_edit_last', '1'),
(154, 54, '_edit_lock', '1444242952:1'),
(156, 54, 'post-title-last', 'ut aliquip'),
(157, 56, '_edit_last', '1'),
(158, 56, '_edit_lock', '1444243081:1'),
(160, 56, 'post-title-last', 'of the day'),
(161, 56, '_thumbnail_id', '33'),
(163, 58, '_edit_last', '1'),
(164, 58, '_edit_lock', '1444243165:1'),
(165, 58, '_thumbnail_id', '33'),
(167, 60, '_edit_last', '1'),
(168, 60, '_edit_lock', '1444243216:1'),
(169, 60, '_thumbnail_id', '33'),
(171, 62, '_edit_last', '1'),
(172, 62, '_edit_lock', '1444243329:1'),
(173, 62, '_thumbnail_id', '41'),
(174, 64, '_edit_last', '1'),
(175, 64, '_edit_lock', '1444288630:1'),
(176, 65, '_wp_attached_file', '2015/10/signature1.jpg'),
(177, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:99;s:6:"height";i:24;s:4:"file";s:22:"2015/10/signature1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(178, 66, '_wp_attached_file', '2015/10/signature2.jpg'),
(179, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:111;s:6:"height";i:24;s:4:"file";s:22:"2015/10/signature2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(180, 67, '_wp_attached_file', '2015/10/signature3.jpg'),
(181, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:117;s:6:"height";i:19;s:4:"file";s:22:"2015/10/signature3.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(182, 64, '_thumbnail_id', '65'),
(183, 68, '_edit_last', '1'),
(184, 68, '_edit_lock', '1444288661:1'),
(185, 68, '_thumbnail_id', '66'),
(186, 69, '_edit_last', '1'),
(187, 69, '_edit_lock', '1444289522:1'),
(189, 69, '_thumbnail_id', '65'),
(190, 70, '_edit_last', '1'),
(191, 70, '_edit_lock', '1444289580:1'),
(192, 70, '_thumbnail_id', '37'),
(194, 70, 'post-title-last', 'Accessories'),
(195, 72, '_edit_last', '1'),
(196, 72, '_edit_lock', '1444289616:1'),
(197, 72, '_thumbnail_id', '36'),
(199, 72, 'post-title-last', 'pairing'),
(200, 74, '_edit_last', '1'),
(201, 74, '_edit_lock', '1444289678:1'),
(202, 74, '_thumbnail_id', '38'),
(204, 74, 'post-title-last', 'Wines'),
(205, 76, '_edit_last', '1'),
(206, 76, '_edit_lock', '1444289735:1'),
(207, 76, '_thumbnail_id', '24'),
(208, 76, 'wine-pricee', '20.00'),
(209, 77, '_edit_last', '1'),
(210, 77, '_edit_lock', '1444289807:1'),
(211, 77, '_thumbnail_id', '37'),
(212, 77, 'wine-pricee', '26.00'),
(213, 78, '_edit_last', '1'),
(214, 78, '_edit_lock', '1444294781:1'),
(215, 78, '_thumbnail_id', '32'),
(217, 78, 'post-title-last', 'ipsum'),
(220, 81, '_edit_last', '1'),
(221, 81, '_edit_lock', '1444291335:1'),
(222, 81, '_wp_page_template', 'default'),
(223, 83, '_edit_last', '1'),
(224, 83, '_wp_page_template', 'cookbookpage - Copy.php'),
(225, 83, '_edit_lock', '1444292805:1'),
(228, 87, '_edit_last', '1'),
(229, 87, '_edit_lock', '1444293309:1'),
(230, 87, '_wp_page_template', 'cookbookpage.php'),
(231, 87, '_wp_trash_meta_status', 'publish'),
(232, 87, '_wp_trash_meta_time', '1444293459'),
(233, 83, '_wp_trash_meta_status', 'publish'),
(234, 83, '_wp_trash_meta_time', '1444293463'),
(235, 81, '_wp_trash_meta_status', 'publish'),
(236, 81, '_wp_trash_meta_time', '1444293469'),
(237, 90, '_edit_last', '1'),
(238, 90, '_edit_lock', '1444293453:1'),
(239, 90, '_thumbnail_id', '36'),
(241, 90, 'post-title-last', 'faucibu'),
(242, 92, '_edit_last', '1'),
(243, 92, '_edit_lock', '1444293811:1'),
(247, 96, '_edit_last', '1'),
(248, 96, '_edit_lock', '1444295407:1'),
(250, 96, '_thumbnail_id', '34'),
(252, 102, '_wp_attached_file', '2015/10/img2.jpg'),
(253, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:384;s:4:"file";s:16:"2015/10/img2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img2-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(254, 103, '_wp_attached_file', '2015/10/img3.jpg'),
(255, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:384;s:4:"file";s:16:"2015/10/img3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img3-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(256, 104, '_wp_attached_file', '2015/10/img1.jpg'),
(257, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:384;s:4:"file";s:16:"2015/10/img1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img1-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(258, 105, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(259, 105, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:33:"[your-name] <mdshuvobc@gmail.com>";s:4:"body";s:169:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)";s:9:"recipient";s:19:"mdshuvobc@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(260, 105, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:31:"zDeliccio <mdshuvobc@gmail.com>";s:4:"body";s:111:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: mdshuvobc@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(261, 105, '_messages', 'a:8:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";}'),
(262, 105, '_additional_settings', ''),
(263, 105, '_locale', 'en_US'),
(264, 106, '_form', '<div id="contact_form">\n<center><strong style="color:red; text-decoration: underline;"></strong></center><strong>Hello !! You can send message to us.</strong>\nName*:[text* text-705 id:name class:name placeholder "Please enter your name"]Email*:[email* email-931 id:email class:email placeholder "youremail@gmail.com"]Message*:[textarea* textarea-706 id:message class:message placeholder "Please enter your message"][submit id:sendButton class:sendButton "Send"]\n</div>'),
(265, 106, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:11:"[email-931]";s:4:"body";s:168:"From: [text-705] <[email-931]>\nSubject: From My website\n\nMessage Body:\n[textarea-706]\n\n--\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)";s:9:"recipient";s:19:"mdshuvobc@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(266, 106, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:31:"zDeliccio <mdshuvobc@gmail.com>";s:4:"body";s:111:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: mdshuvobc@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(267, 106, '_messages', 'a:22:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";}'),
(268, 106, '_additional_settings', ''),
(269, 106, '_locale', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=108 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-10-07 16:50:58', '2015-10-07 16:50:58', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-10-07 16:50:58', '2015-10-07 16:50:58', '', 0, 'http://localhost/zdele/?p=1', 0, 'post', '', 1),
(2, 1, '2015-10-07 16:50:58', '2015-10-07 16:50:58', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/zdele/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page', '', '', '2015-10-07 17:02:41', '2015-10-07 17:02:41', '', 0, 'http://localhost/zdele/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-10-07 17:01:14', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-10-07 17:01:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/zdele/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2015-10-07 17:01:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-10-07 17:01:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/zdele/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2015-10-07 17:02:41', '2015-10-07 17:02:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/zdele/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-10-07 17:02:41', '2015-10-07 17:02:41', '', 2, 'http://localhost/zdele/2015/10/07/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-10-07 17:03:03', '2015-10-07 17:03:03', '', 'Restaurant', '', 'publish', 'closed', 'closed', '', 'restaurent', '', '', '2015-10-07 17:03:20', '2015-10-07 17:03:20', '', 0, 'http://localhost/zdele/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-10-07 17:03:03', '2015-10-07 17:03:03', '', 'Restaurent', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-10-07 17:03:03', '2015-10-07 17:03:03', '', 7, 'http://localhost/zdele/2015/10/07/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-10-07 17:03:20', '2015-10-07 17:03:20', '', 'Restaurant', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-10-07 17:03:20', '2015-10-07 17:03:20', '', 7, 'http://localhost/zdele/2015/10/07/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2015-10-07 17:03:42', '2015-10-07 17:03:42', '', 'Cuisine', '', 'publish', 'closed', 'closed', '', 'cuisine', '', '', '2015-10-07 17:03:42', '2015-10-07 17:03:42', '', 0, 'http://localhost/zdele/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-10-07 17:03:42', '2015-10-07 17:03:42', '', 'Cuisine', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-07 17:03:42', '2015-10-07 17:03:42', '', 10, 'http://localhost/zdele/2015/10/07/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2015-10-07 17:04:01', '2015-10-07 17:04:01', '', 'Wine List', '', 'publish', 'closed', 'closed', '', 'wine-list', '', '', '2015-10-07 17:04:01', '2015-10-07 17:04:01', '', 0, 'http://localhost/zdele/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-10-07 17:04:01', '2015-10-07 17:04:01', '', 'Wine List', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-07 17:04:01', '2015-10-07 17:04:01', '', 12, 'http://localhost/zdele/2015/10/07/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-10-07 17:04:20', '2015-10-07 17:04:20', 'periam, eaque ipsa quae ab illo inventore veritatis et eaque ipsa quae ab illo inventore veritatis et\r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.', 'CookBook', '', 'publish', 'closed', 'closed', '', 'cookbook', '', '', '2015-10-08 08:38:31', '2015-10-08 08:38:31', '', 0, 'http://localhost/zdele/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-10-07 17:04:20', '2015-10-07 17:04:20', '', 'CookBook', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-10-07 17:04:20', '2015-10-07 17:04:20', '', 14, 'http://localhost/zdele/2015/10/07/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2015-10-07 17:04:56', '2015-10-07 17:04:56', '[contact-form-7 id="106" title="zDeliccio Contact Form"]', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2015-10-08 15:14:53', '2015-10-08 15:14:53', '', 0, 'http://localhost/zdele/?page_id=16', 0, 'page', '', 0),
(17, 1, '2015-10-07 17:04:56', '2015-10-07 17:04:56', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2015-10-07 17:04:56', '2015-10-07 17:04:56', '', 16, 'http://localhost/zdele/2015/10/07/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2015-10-07 17:06:07', '2015-10-07 17:06:07', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2015-10-07 17:06:07', '2015-10-07 17:06:07', '', 0, 'http://localhost/zdele/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2015-10-07 17:06:07', '2015-10-07 17:06:07', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2015-10-07 17:06:07', '2015-10-07 17:06:07', '', 0, 'http://localhost/zdele/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2015-10-07 17:06:06', '2015-10-07 17:06:06', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2015-10-07 17:06:06', '2015-10-07 17:06:06', '', 0, 'http://localhost/zdele/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2015-10-07 17:06:06', '2015-10-07 17:06:06', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2015-10-07 17:06:06', '2015-10-07 17:06:06', '', 0, 'http://localhost/zdele/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2015-10-07 17:06:06', '2015-10-07 17:06:06', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2015-10-07 17:06:06', '2015-10-07 17:06:06', '', 0, 'http://localhost/zdele/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2015-10-07 18:19:28', '2015-10-07 18:19:28', 'This <a class="list_1" href="http://blog.templatemonster.com/2011/08/01/free-website-template-jquery-slider-typography-restaurant/">Deliccio Template</a> goes with two packages – with PSD source files and without them. PSD source is available for free for the registered members.', 'welcome', '', 'publish', 'open', 'open', '', 'welcome', '', '', '2015-10-07 18:19:28', '2015-10-07 18:19:28', '', 0, 'http://localhost/zdele/?p=23', 0, 'post', '', 0),
(24, 1, '2015-10-07 18:18:32', '2015-10-07 18:18:32', '', 'page1_img1', '', 'inherit', 'open', 'closed', '', 'page1_img1', '', '', '2015-10-07 18:18:32', '2015-10-07 18:18:32', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page1_img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2015-10-07 18:18:54', '2015-10-07 18:18:54', '', 'page1_img2', '', 'inherit', 'open', 'closed', '', 'page1_img2', '', '', '2015-10-07 18:18:54', '2015-10-07 18:18:54', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page1_img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2015-10-07 18:18:57', '2015-10-07 18:18:57', '', 'page1_img3', '', 'inherit', 'open', 'closed', '', 'page1_img3', '', '', '2015-10-07 18:18:57', '2015-10-07 18:18:57', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page1_img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2015-10-07 18:19:00', '2015-10-07 18:19:00', '', 'page1_img4', '', 'inherit', 'open', 'closed', '', 'page1_img4', '', '', '2015-10-07 18:19:00', '2015-10-07 18:19:00', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page1_img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2015-10-07 18:19:03', '2015-10-07 18:19:03', '', 'page1_img5', '', 'inherit', 'open', 'closed', '', 'page1_img5', '', '', '2015-10-07 18:19:03', '2015-10-07 18:19:03', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page1_img5.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2015-10-07 18:19:06', '2015-10-07 18:19:06', '', 'page1_img6', '', 'inherit', 'open', 'closed', '', 'page1_img6', '', '', '2015-10-07 18:19:06', '2015-10-07 18:19:06', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page1_img6.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2015-10-07 18:19:08', '2015-10-07 18:19:08', '', 'page1_img7', '', 'inherit', 'open', 'closed', '', 'page1_img7', '', '', '2015-10-07 18:19:08', '2015-10-07 18:19:08', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page1_img7.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2015-10-07 18:19:10', '2015-10-07 18:19:10', '', 'page2_img1', '', 'inherit', 'open', 'closed', '', 'page2_img1', '', '', '2015-10-07 18:19:10', '2015-10-07 18:19:10', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page2_img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2015-10-07 18:19:12', '2015-10-07 18:19:12', '', 'page2_img2', '', 'inherit', 'open', 'closed', '', 'page2_img2', '', '', '2015-10-07 18:19:12', '2015-10-07 18:19:12', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page2_img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2015-10-07 18:19:13', '2015-10-07 18:19:13', '', 'page2_img3', '', 'inherit', 'open', 'closed', '', 'page2_img3', '', '', '2015-10-07 18:19:13', '2015-10-07 18:19:13', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page2_img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2015-10-07 18:19:14', '2015-10-07 18:19:14', '', 'page2_img4', '', 'inherit', 'open', 'closed', '', 'page2_img4', '', '', '2015-10-07 18:19:14', '2015-10-07 18:19:14', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page2_img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2015-10-07 18:19:16', '2015-10-07 18:19:16', '', 'page2_img5', '', 'inherit', 'open', 'closed', '', 'page2_img5', '', '', '2015-10-07 18:19:16', '2015-10-07 18:19:16', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page2_img5.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2015-10-07 18:19:17', '2015-10-07 18:19:17', '', 'page3_img1', '', 'inherit', 'open', 'closed', '', 'page3_img1', '', '', '2015-10-07 18:19:17', '2015-10-07 18:19:17', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page3_img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2015-10-07 18:19:18', '2015-10-07 18:19:18', '', 'page3_img2', '', 'inherit', 'open', 'closed', '', 'page3_img2', '', '', '2015-10-07 18:19:18', '2015-10-07 18:19:18', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page3_img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2015-10-07 18:19:19', '2015-10-07 18:19:19', '', 'page3_img3', '', 'inherit', 'open', 'closed', '', 'page3_img3', '', '', '2015-10-07 18:19:19', '2015-10-07 18:19:19', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page3_img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2015-10-07 18:19:20', '2015-10-07 18:19:20', '', 'page3_img4', '', 'inherit', 'open', 'closed', '', 'page3_img4', '', '', '2015-10-07 18:19:20', '2015-10-07 18:19:20', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page3_img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2015-10-07 18:19:22', '2015-10-07 18:19:22', '', 'page4_img1', '', 'inherit', 'open', 'closed', '', 'page4_img1', '', '', '2015-10-07 18:19:22', '2015-10-07 18:19:22', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page4_img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2015-10-07 18:19:24', '2015-10-07 18:19:24', '', 'page4_img2', '', 'inherit', 'open', 'closed', '', 'page4_img2', '', '', '2015-10-07 18:19:24', '2015-10-07 18:19:24', '', 23, 'http://localhost/zdele/wp-content/uploads/2015/10/page4_img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2015-10-07 18:19:28', '2015-10-07 18:19:28', 'This <a class="list_1" href="http://blog.templatemonster.com/2011/08/01/free-website-template-jquery-slider-typography-restaurant/">Deliccio Template</a> goes with two packages – with PSD source files and without them. PSD source is available for free for the registered members.', 'welcome', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2015-10-07 18:19:28', '2015-10-07 18:19:28', '', 23, 'http://localhost/zdele/2015/10/07/23-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-10-07 18:20:49', '2015-10-07 18:20:49', 'created by TemplateMonster.com team. This website template is optimized for 1024x768 screen res.', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2015-10-07 18:20:49', '2015-10-07 18:20:49', '', 0, 'http://localhost/zdele/?p=43', 0, 'post', '', 0),
(44, 1, '2015-10-07 18:20:49', '2015-10-07 18:20:49', 'created by TemplateMonster.com team. This website template is optimized for 1024x768 screen res.', 'About', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2015-10-07 18:20:49', '2015-10-07 18:20:49', '', 43, 'http://localhost/zdele/2015/10/07/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-10-07 18:22:04', '2015-10-07 18:22:04', '<ul class="list1 pad_bot1">\r\n	<li><a href="#">Lorem ipsum dolor sit amet</a></li>\r\n	<li><a href="#">Consectetur adipisicing elit sed</a></li>\r\n	<li><a href="#">Eiusmod tempor incididunt labore</a></li>\r\n	<li><a href="#">Ut enim ad minim veniam</a></li>\r\n</ul>', 'Our', '', 'publish', 'open', 'open', '', 'our', '', '', '2015-10-07 18:22:04', '2015-10-07 18:22:04', '', 0, 'http://localhost/zdele/?p=45', 0, 'post', '', 0),
(46, 1, '2015-10-07 18:22:04', '2015-10-07 18:22:04', '<ul class="list1 pad_bot1">\r\n	<li><a href="#">Lorem ipsum dolor sit amet</a></li>\r\n	<li><a href="#">Consectetur adipisicing elit sed</a></li>\r\n	<li><a href="#">Eiusmod tempor incididunt labore</a></li>\r\n	<li><a href="#">Ut enim ad minim veniam</a></li>\r\n</ul>', 'Our', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-10-07 18:22:04', '2015-10-07 18:22:04', '', 45, 'http://localhost/zdele/2015/10/07/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-10-07 18:24:30', '2015-10-07 18:24:30', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2015-10-07 18:24:30', '2015-10-07 18:24:30', '', 0, 'http://localhost/zdele/?post_type=event&#038;p=47', 0, 'event', '', 0),
(48, 1, '2015-10-07 18:25:34', '2015-10-07 18:25:34', 'Rem aperiam, eaque ipsa quae ab illo inventore veritatis.', 'illo inventore', '', 'publish', 'closed', 'closed', '', 'illo-inventore', '', '', '2015-10-07 18:25:34', '2015-10-07 18:25:34', '', 0, 'http://localhost/zdele/?post_type=event&#038;p=48', 0, 'event', '', 0),
(49, 1, '2015-10-07 18:26:13', '2015-10-07 18:26:13', 'Aut odit aut fugit, sed quia consequuntur magni dolores eos qui.', 'quia consequuntur', '', 'publish', 'closed', 'closed', '', 'quia-consequuntur', '', '', '2015-10-07 18:26:13', '2015-10-07 18:26:13', '', 0, 'http://localhost/zdele/?post_type=event&#038;p=49', 0, 'event', '', 0),
(50, 1, '2015-10-07 18:27:04', '2015-10-07 18:27:04', 'Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'opposed to using', '', 'publish', 'closed', 'closed', '', 'opposed-to-using', '', '', '2015-10-07 18:27:04', '2015-10-07 18:27:04', '', 0, 'http://localhost/zdele/?post_type=event&#038;p=50', 0, 'event', '', 0),
(51, 1, '2015-10-07 18:28:30', '2015-10-07 18:28:30', 'and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the', 'Lorem Ipsum1', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum1', '', '', '2015-10-07 18:28:30', '2015-10-07 18:28:30', '', 0, 'http://localhost/zdele/?post_type=event&#038;p=51', 0, 'event', '', 0),
(52, 1, '2015-10-07 18:36:02', '2015-10-07 18:36:02', 'Neque porro quisquam est, qui dolor- em ipsum qudolor sitamet consectetur adipisci velit, sed quia non numquam eius modi tempora incidunt.', 'Did', '', 'publish', 'open', 'open', '', 'did', '', '', '2015-10-07 18:36:02', '2015-10-07 18:36:02', '', 0, 'http://localhost/zdele/?p=52', 0, 'post', '', 0),
(53, 1, '2015-10-07 18:36:02', '2015-10-07 18:36:02', 'Neque porro quisquam est, qui dolor- em ipsum qudolor sitamet consectetur adipisci velit, sed quia non numquam eius modi tempora incidunt.', 'Did', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2015-10-07 18:36:02', '2015-10-07 18:36:02', '', 52, 'http://localhost/zdele/2015/10/07/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-10-07 18:37:55', '2015-10-07 18:37:55', 'Lorem ipsum dolor sit amet Consectetur adipisicing elit sed Eiusmod tempor incididunt labore Ut enim ad minim veniam Quis nostrud exercation ullamco Laboris nisi ut aliquip Commodo consequat aute Irure dolor in reprehenderit\r\nVoluptate velit esse cillum dolore', 'Lorem', '', 'publish', 'open', 'open', '', 'lorem', '', '', '2015-10-07 18:37:55', '2015-10-07 18:37:55', '', 0, 'http://localhost/zdele/?p=54', 0, 'post', '', 0),
(55, 1, '2015-10-07 18:37:55', '2015-10-07 18:37:55', 'Lorem ipsum dolor sit amet Consectetur adipisicing elit sed Eiusmod tempor incididunt labore Ut enim ad minim veniam Quis nostrud exercation ullamco Laboris nisi ut aliquip Commodo consequat aute Irure dolor in reprehenderit\r\nVoluptate velit esse cillum dolore', 'Lorem', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2015-10-07 18:37:55', '2015-10-07 18:37:55', '', 54, 'http://localhost/zdele/2015/10/07/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-10-07 18:38:51', '2015-10-07 18:38:51', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos.', 'Dish', '', 'publish', 'open', 'open', '', 'dish', '', '', '2015-10-07 18:39:09', '2015-10-07 18:39:09', '', 0, 'http://localhost/zdele/?p=56', 0, 'post', '', 0),
(57, 1, '2015-10-07 18:38:51', '2015-10-07 18:38:51', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos.', 'Dish', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2015-10-07 18:38:51', '2015-10-07 18:38:51', '', 56, 'http://localhost/zdele/2015/10/07/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-10-07 18:41:11', '2015-10-07 18:41:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', 'adipisicing', '', 'publish', 'open', 'open', '', 'adipisicing', '', '', '2015-10-07 18:41:11', '2015-10-07 18:41:11', '', 0, 'http://localhost/zdele/?p=58', 0, 'post', '', 0),
(59, 1, '2015-10-07 18:41:11', '2015-10-07 18:41:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', 'adipisicing', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2015-10-07 18:41:11', '2015-10-07 18:41:11', '', 58, 'http://localhost/zdele/2015/10/07/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-10-07 18:42:22', '2015-10-07 18:42:22', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', 'or randomised words', '', 'publish', 'open', 'open', '', 'or-randomised-words', '', '', '2015-10-07 18:42:22', '2015-10-07 18:42:22', '', 0, 'http://localhost/zdele/?p=60', 0, 'post', '', 0),
(61, 1, '2015-10-07 18:42:22', '2015-10-07 18:42:22', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', 'or randomised words', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2015-10-07 18:42:22', '2015-10-07 18:42:22', '', 60, 'http://localhost/zdele/2015/10/07/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-10-07 18:43:25', '2015-10-07 18:43:25', 'Ipsum available, but the majority Ipsum available, but the majority have suffered alteration in some form, by injected humhave suffered alteration in some form, by injected humIpsum available, but the majority have suffered alteration in some form, by injected hum', 'injected humIpsum', '', 'publish', 'open', 'open', '', 'injected-humipsum', '', '', '2015-10-07 18:43:25', '2015-10-07 18:43:25', '', 0, 'http://localhost/zdele/?p=62', 0, 'post', '', 0),
(63, 1, '2015-10-07 18:43:25', '2015-10-07 18:43:25', 'Ipsum available, but the majority Ipsum available, but the majority have suffered alteration in some form, by injected humhave suffered alteration in some form, by injected humIpsum available, but the majority have suffered alteration in some form, by injected hum', 'injected humIpsum', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2015-10-07 18:43:25', '2015-10-07 18:43:25', '', 62, 'http://localhost/zdele/2015/10/07/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-10-08 07:19:21', '2015-10-08 07:19:21', '“Remperam eaquepsa quae abillo inventore vertatis.”', '3', '', 'publish', 'closed', 'closed', '', '3', '', '', '2015-10-08 07:19:21', '2015-10-08 07:19:21', '', 0, 'http://localhost/zdele/?post_type=testimonial&#038;p=64', 0, 'testimonial', '', 0),
(65, 1, '2015-10-08 07:19:07', '2015-10-08 07:19:07', '', 'signature1', '', 'inherit', 'open', 'closed', '', 'signature1', '', '', '2015-10-08 07:19:07', '2015-10-08 07:19:07', '', 64, 'http://localhost/zdele/wp-content/uploads/2015/10/signature1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2015-10-08 07:19:14', '2015-10-08 07:19:14', '', 'signature2', '', 'inherit', 'open', 'closed', '', 'signature2', '', '', '2015-10-08 07:19:14', '2015-10-08 07:19:14', '', 64, 'http://localhost/zdele/wp-content/uploads/2015/10/signature2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2015-10-08 07:19:15', '2015-10-08 07:19:15', '', 'signature3', '', 'inherit', 'open', 'closed', '', 'signature3', '', '', '2015-10-08 07:19:15', '2015-10-08 07:19:15', '', 64, 'http://localhost/zdele/wp-content/uploads/2015/10/signature3.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2015-10-08 07:19:49', '2015-10-08 07:19:49', '“Quasi arctecto beatae vitae dicta sunt explicabo.”', '2', '', 'publish', 'closed', 'closed', '', '2', '', '', '2015-10-08 07:19:49', '2015-10-08 07:19:49', '', 0, 'http://localhost/zdele/?post_type=testimonial&#038;p=68', 0, 'testimonial', '', 0),
(69, 1, '2015-10-08 07:20:23', '2015-10-08 07:20:23', '“Nemo enim ipsam volupta\r\ntem quia voluptas.”', '1', '', 'publish', 'closed', 'closed', '', '1', '', '', '2015-10-08 07:20:43', '2015-10-08 07:20:43', '', 0, 'http://localhost/zdele/?post_type=testimonial&#038;p=69', 0, 'testimonial', '', 0),
(70, 1, '2015-10-08 07:35:11', '2015-10-08 07:35:11', 'Neque porro quisquam est, qui dolor- em ipsum qudolor sitamet consectetur adipisci velit, sed quia non numquam eius modi tempora incidunt.', 'Wine', '', 'publish', 'open', 'open', '', 'wine', '', '', '2015-10-08 07:35:11', '2015-10-08 07:35:11', '', 0, 'http://localhost/zdele/?p=70', 0, 'post', '', 0),
(71, 1, '2015-10-08 07:35:11', '2015-10-08 07:35:11', 'Neque porro quisquam est, qui dolor- em ipsum qudolor sitamet consectetur adipisci velit, sed quia non numquam eius modi tempora incidunt.', 'Wine', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2015-10-08 07:35:11', '2015-10-08 07:35:11', '', 70, 'http://localhost/zdele/2015/10/08/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2015-10-08 07:35:49', '2015-10-08 07:35:49', 'Ut enim ad minima veniam, quis nos- trum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.', 'Wine', '', 'publish', 'open', 'open', '', 'wine-2', '', '', '2015-10-08 07:35:49', '2015-10-08 07:35:49', '', 0, 'http://localhost/zdele/?p=72', 0, 'post', '', 0),
(73, 1, '2015-10-08 07:35:49', '2015-10-08 07:35:49', 'Ut enim ad minima veniam, quis nos- trum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.', 'Wine', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2015-10-08 07:35:49', '2015-10-08 07:35:49', '', 72, 'http://localhost/zdele/2015/10/08/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2015-10-08 07:36:24', '2015-10-08 07:36:24', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos.', 'Exclusive', '', 'publish', 'open', 'open', '', 'exclusive', '', '', '2015-10-08 07:36:24', '2015-10-08 07:36:24', '', 0, 'http://localhost/zdele/?p=74', 0, 'post', '', 0),
(75, 1, '2015-10-08 07:36:24', '2015-10-08 07:36:24', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos.', 'Exclusive', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2015-10-08 07:36:24', '2015-10-08 07:36:24', '', 74, 'http://localhost/zdele/2015/10/08/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-10-08 07:37:33', '2015-10-08 07:37:33', 't vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos.', 'Sed ut perspiciatis unde', '', 'publish', 'closed', 'closed', '', 'sed-ut-perspiciatis-unde', '', '', '2015-10-08 07:37:33', '2015-10-08 07:37:33', '', 0, 'http://localhost/zdele/?post_type=winelist&#038;p=76', 0, 'winelist', '', 0),
(77, 1, '2015-10-08 07:38:36', '2015-10-08 07:38:36', 'Neque porro quisquam est, qui dolor- em ipsum qudolor sitamet consectetur adipisci velit, sed quia non numquam eius modi tempora incidunt', 'Neque porro quisquam est', '', 'publish', 'closed', 'closed', '', 'neque-porro-quisquam-est', '', '', '2015-10-08 07:38:36', '2015-10-08 07:38:36', '', 0, 'http://localhost/zdele/?post_type=winelist&#038;p=77', 0, 'winelist', '', 0),
(78, 1, '2015-10-08 07:40:55', '2015-10-08 07:40:55', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequa', 'Lorem', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor', '', '', '2015-10-08 08:46:21', '2015-10-08 08:46:21', '', 0, 'http://localhost/zdele/?p=78', 0, 'post', '', 0),
(79, 1, '2015-10-08 07:40:55', '2015-10-08 07:40:55', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequa', 'Lorem ipsum dolor', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2015-10-08 07:40:55', '2015-10-08 07:40:55', '', 78, 'http://localhost/zdele/2015/10/08/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-10-08 07:59:34', '2015-10-08 07:59:34', '', 'cooktest', '', 'trash', 'closed', 'closed', '', 'cooktest', '', '', '2015-10-08 08:37:49', '2015-10-08 08:37:49', '', 0, 'http://localhost/zdele/?page_id=81', 0, 'page', '', 0),
(82, 1, '2015-10-08 07:59:34', '2015-10-08 07:59:34', '', 'cooktest', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2015-10-08 07:59:34', '2015-10-08 07:59:34', '', 81, 'http://localhost/zdele/2015/10/08/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2015-10-08 08:02:47', '2015-10-08 08:02:47', '', 'cook test', '', 'trash', 'closed', 'closed', '', '83-2', '', '', '2015-10-08 08:37:43', '2015-10-08 08:37:43', '', 0, 'http://localhost/zdele/?page_id=83', 0, 'page', '', 0),
(84, 1, '2015-10-08 08:02:47', '2015-10-08 08:02:47', '', '', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2015-10-08 08:02:47', '2015-10-08 08:02:47', '', 83, 'http://localhost/zdele/2015/10/08/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-10-08 08:02:57', '2015-10-08 08:02:57', '', 'cook test', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2015-10-08 08:02:57', '2015-10-08 08:02:57', '', 83, 'http://localhost/zdele/2015/10/08/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2015-10-08 08:30:29', '2015-10-08 08:30:29', 'periam, eaque ipsa quae ab illo inventore veritatis et eaque ipsa quae ab illo inventore veritatis et\r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.periam, eaque ipsa quae ab illo inventore veritatis et \r\nquasi architecto beatae vitae dicta sunt explicabo.', 'CookBook', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-10-08 08:30:29', '2015-10-08 08:30:29', '', 14, 'http://localhost/zdele/2015/10/08/14-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-10-08 08:31:41', '2015-10-08 08:31:41', 'orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam', 'cokbok', '', 'trash', 'closed', 'closed', '', 'cokbok', '', '', '2015-10-08 08:37:40', '2015-10-08 08:37:40', '', 0, 'http://localhost/zdele/?page_id=87', 0, 'page', '', 0),
(88, 1, '2015-10-08 08:31:41', '2015-10-08 08:31:41', '', 'cokbok', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-10-08 08:31:41', '2015-10-08 08:31:41', '', 87, 'http://localhost/zdele/2015/10/08/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-10-08 08:33:23', '2015-10-08 08:33:23', 'orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam', 'cokbok', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-10-08 08:33:23', '2015-10-08 08:33:23', '', 87, 'http://localhost/zdele/2015/10/08/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2015-10-08 08:39:30', '2015-10-08 08:39:30', 'ien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, au', 'venenatis', '', 'publish', 'open', 'open', '', 'venenatis', '', '', '2015-10-08 08:39:30', '2015-10-08 08:39:30', '', 0, 'http://localhost/zdele/?p=90', 0, 'post', '', 0),
(91, 1, '2015-10-08 08:39:30', '2015-10-08 08:39:30', 'ien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, au', 'venenatis', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2015-10-08 08:39:30', '2015-10-08 08:39:30', '', 90, 'http://localhost/zdele/2015/10/08/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2015-10-08 08:40:09', '2015-10-08 08:40:09', 'ien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, au', 's sit amet nibh. Donec', '', 'publish', 'open', 'open', '', 's-sit-amet-nibh-donec', '', '', '2015-10-08 08:40:09', '2015-10-08 08:40:09', '', 0, 'http://localhost/zdele/?p=92', 0, 'post', '', 0),
(93, 1, '2015-10-08 08:40:09', '2015-10-08 08:40:09', 'ien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, auien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, au', 's sit amet nibh. Donec', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2015-10-08 08:40:09', '2015-10-08 08:40:09', '', 92, 'http://localhost/zdele/2015/10/08/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-10-08 08:46:10', '2015-10-08 08:46:10', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequa', 'Lorem dolor', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2015-10-08 08:46:10', '2015-10-08 08:46:10', '', 78, 'http://localhost/zdele/2015/10/08/78-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-10-08 08:46:21', '2015-10-08 08:46:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequa', 'Lorem', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2015-10-08 08:46:21', '2015-10-08 08:46:21', '', 78, 'http://localhost/zdele/2015/10/08/78-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-10-08 09:03:40', '2015-10-08 09:03:40', 'aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem qu', 'justo. Nullam dictum felis eu pede mollis pretium', '', 'publish', 'open', 'open', '', 'justo-nullam-dictum-felis-eu-pede-mollis-pretium', '', '', '2015-10-08 09:07:58', '2015-10-08 09:07:58', '', 0, 'http://localhost/zdele/?p=96', 0, 'post', '', 0),
(97, 1, '2015-10-08 09:03:40', '2015-10-08 09:03:40', 'aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem qu', 'justo. Nullam dictum felis eu pede mollis pretium', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2015-10-08 09:03:40', '2015-10-08 09:03:40', '', 96, 'http://localhost/zdele/2015/10/08/96-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-10-08 10:08:09', '2015-10-08 10:08:09', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2015-10-08 10:08:09', '2015-10-08 10:08:09', '', 0, 'http://localhost/zdele/wp-content/uploads/2015/10/img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2015-10-08 10:09:26', '2015-10-08 10:09:26', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2015-10-08 10:09:26', '2015-10-08 10:09:26', '', 0, 'http://localhost/zdele/wp-content/uploads/2015/10/img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2015-10-08 10:11:43', '2015-10-08 10:11:43', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2015-10-08 10:11:43', '2015-10-08 10:11:43', '', 0, 'http://localhost/zdele/wp-content/uploads/2015/10/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2015-10-08 15:11:58', '2015-10-08 15:11:58', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <mdshuvobc@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)\nmdshuvobc@gmail.com\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nzDeliccio <mdshuvobc@gmail.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)\n[your-email]\nReply-To: mdshuvobc@gmail.com\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2015-10-08 15:11:58', '2015-10-08 15:11:58', '', 0, 'http://localhost/zdele/?post_type=wpcf7_contact_form&p=105', 0, 'wpcf7_contact_form', '', 0),
(106, 1, '2015-10-08 15:13:54', '2015-10-08 15:13:54', '<div id="contact_form">\r\n<center><strong style="color:red; text-decoration: underline;"></strong></center><strong>Hello !! You can send message to us.</strong>\r\nName*:[text* text-705 id:name class:name placeholder "Please enter your name"]Email*:[email* email-931 id:email class:email placeholder "youremail@gmail.com"]Message*:[textarea* textarea-706 id:message class:message placeholder "Please enter your message"][submit id:sendButton class:sendButton "Send"]\r\n</div>\n[your-subject]\n[email-931]\nFrom: [text-705] <[email-931]>\r\nSubject: From My website\r\n\r\nMessage Body:\r\n[textarea-706]\r\n\r\n--\r\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)\nmdshuvobc@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nzDeliccio <mdshuvobc@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on zDeliccio (http://localhost/zdele)\n[your-email]\nReply-To: mdshuvobc@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nYour answer is not correct.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.', 'zDeliccio Contact Form', '', 'publish', 'closed', 'closed', '', 'zdeliccio-contact-form', '', '', '2015-10-08 15:24:19', '2015-10-08 15:24:19', '', 0, 'http://localhost/zdele/?post_type=wpcf7_contact_form&#038;p=106', 0, 'wpcf7_contact_form', '', 0),
(107, 1, '2015-10-08 15:14:53', '2015-10-08 15:14:53', '[contact-form-7 id="106" title="zDeliccio Contact Form"]', 'Contacts', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2015-10-08 15:14:53', '2015-10-08 15:14:53', '', 16, 'http://localhost/zdele/2015/10/08/16-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'zdeliccio', 'zdeliccio', 0),
(3, 'Restaurant', 'restaurant', 0),
(4, 'wine', 'wine', 0),
(5, 'cookbook', 'cookbook', 0),
(6, 'cook blog', 'cook-blog', 0),
(7, 'cusisine', 'cusisine', 0),
(8, 'Banquet’s Specials', 'banquets-specials', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 3, 0),
(43, 3, 0),
(45, 3, 0),
(52, 7, 0),
(54, 7, 0),
(56, 7, 0),
(58, 8, 0),
(60, 8, 0),
(62, 8, 0),
(70, 4, 0),
(72, 4, 0),
(74, 4, 0),
(78, 5, 0),
(90, 5, 0),
(92, 6, 0),
(96, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 3),
(8, 8, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shuvo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:4:{s:64:"90c7091cf95eccf423b9d5b62fe09c37e689dc51eefa266f72fcc6168d3bd55e";a:4:{s:10:"expiration";i:1445446275;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444236675;}s:64:"5d563ea92ded1c750e6f4cd861b2340c6397af308e20b88855a9b4168e399d14";a:4:{s:10:"expiration";i:1445498295;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444288695;}s:64:"215a0fb92e916a6b3c8b45abf0056a38a072af293b62474e67dacbd1ccf0a7f8";a:4:{s:10:"expiration";i:1445621883;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444412283;}s:64:"e64e368c284339283c5e866b90f71e0d33e6fa5c5d28d779482a3e2aebd09087";a:4:{s:10:"expiration";i:1444812271;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444639471;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:12:"add-winelist";i:1;s:9:"add-event";i:2;s:15:"add-testimonial";i:3;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1444243073'),
(21, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:51:"submitdiv,categorydiv,postimagediv,tagsdiv-post_tag";s:6:"normal";s:87:"title-last-part,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(22, 1, 'screen_layout_post', '2'),
(23, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(24, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:"dashboard_activity";i:1;s:21:"dashboard_quick_press";i:2;s:17:"dashboard_primary";}'),
(25, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:"4.3";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shuvo', '$P$BNaxgodPy8KuxBDHL4ka1/kRusT5ps1', 'shuvo', 'mdshuvobc@gmail.com', '', '2015-10-07 16:50:57', '', 0, 'shuvo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
