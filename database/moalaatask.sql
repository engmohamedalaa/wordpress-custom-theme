-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2021 at 04:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moalaatask`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'مُعلِق ووردبريس', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-26 04:37:35', '2021-09-26 01:37:35', 'مرحبًا، هذا تعليق.\nللبدء بالإشراف، التحرير، وحذف التعليقات، من فضلك قم بزيارة شاشة التعليقات في لوحة التحكم.\nصورة المُعلق تأتي من <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_contacts_list`
--

CREATE TABLE `wp_contacts_list` (
  `ID` int(11) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `contact_message` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_contacts_list`
--

INSERT INTO `wp_contacts_list` (`ID`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`, `created_date`) VALUES
(1, 'Medo', 'm.alaa@egy2d.com', '01158807801', 'teeeeeeeeeest', '2021-09-27 01:10:41'),
(2, 'Medo', 'm.alaa@egy2d.com', '01158807801', 'teeeeeeeeeest', '2021-09-27 01:12:23'),
(3, 'Medo', 'm.alaa@egy2d.com', '01158807801', 'teeeeeeeeeest', '2021-09-27 01:12:39'),
(4, 'Medo', 'm.alaa@egy2d.com', '01158807801', 'teeeeeeeeeest', '2021-09-27 01:13:14'),
(8, 'Medo Alaa', 'm.alaa@egy2d.com', '01158807801', 'Test Message', '2021-09-27 03:10:09'),
(9, 'Medo Alaa', 'm.alaa@egy2d.com', '01158807801', 'Test Message', '2021-09-27 03:11:24'),
(10, 'Medo Alaa22', 'm.alaa@egy2d.com', '01158807801', 'teeeeeeeees1616', '2021-09-27 03:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress-custom-theme', 'yes'),
(2, 'home', 'http://localhost/wordpress-custom-theme', 'yes'),
(3, 'blogname', 'Test Task', 'yes'),
(4, 'blogdescription', 'Slogan', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'medo2012421@gmail.com', 'yes'),
(7, 'start_of_week', '6', 'yes'),
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
(23, 'date_format', 'j F، Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F، Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"project-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:52:\"project-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:33:\"project-category/([^/]+)/embed/?$\";s:49:\"index.php?project_category=$matches[1]&embed=true\";s:45:\"project-category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_category=$matches[1]&paged=$matches[2]\";s:27:\"project-category/([^/]+)/?$\";s:38:\"index.php?project_category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:16:\"moalaa/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mo-alaa-theme', 'yes'),
(41, 'stylesheet', 'mo-alaa-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1648172225', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', '', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>أحدث المقالات</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:239:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>أحدث التعليقات</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:152:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>الأرشيف</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>تصنيفات</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1632710261;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1632749861;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1632749862;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1632793058;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632793180;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632793184;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633311458;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1632620456;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'recovery_keys', 'a:1:{s:22:\"FMIRSQ6DY1moX0940kVTSf\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B85sBug92x8S53CrhUcnEa9Yfvzprc0\";s:10:\"created_at\";i:1632625694;}}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(132, '_site_transient_timeout_browser_6040d7f7c7ce6f4783536c94059801f0', '1633225182', 'no'),
(133, '_site_transient_browser_6040d7f7c7ce6f4783536c94059801f0', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"91.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1633225184', 'no'),
(135, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(152, 'new_admin_email', 'medo2012421@gmail.com', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(163, 'current_theme', 'Mohamed Alaa Task', 'yes'),
(164, 'theme_mods_mo-alaa-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"nav-menu\";i:8;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(173, 'recovery_mode_email_last_sent', '1632625694', 'yes'),
(186, 'recently_activated', 'a:0:{}', 'yes'),
(192, 'project_category_children', 'a:0:{}', 'yes'),
(199, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(203, 'category_children', 'a:0:{}', 'yes'),
(217, '_site_transient_timeout_theme_roots', '1632708470', 'no'),
(218, '_site_transient_theme_roots', 'a:4:{s:13:\"mo-alaa-theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(219, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(221, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1632706677;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(222, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1632706678;s:7:\"checked\";a:4:{s:13:\"mo-alaa-theme\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(223, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1632706680;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-02-16 00:46:40\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/ar.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.12\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:9:\"hello.php\";s:5:\"1.7.2\";s:16:\"moalaa/index.php\";s:3:\"1.0\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1632671527:1'),
(4, 5, '_wp_page_template', 'index.php'),
(5, 3, '_wp_trash_meta_status', 'draft'),
(6, 3, '_wp_trash_meta_time', '1632622743'),
(7, 3, '_wp_desired_post_slug', 'privacy-policy'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1632622745'),
(10, 2, '_wp_desired_post_slug', 'مثال-على-صفحة'),
(11, 10, '_wp_attached_file', '2021/09/header-bg.jpg'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:1250;s:4:\"file\";s:21:\"2021/09/header-bg.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"header-bg-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"header-bg-1024x674.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:674;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"header-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"header-bg-768x505.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:505;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"header-bg-1536x1011.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1011;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 5, '_edit_last', '1'),
(41, 5, 'about_section_title', 'About Section'),
(42, 5, 'about_section_content', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(43, 5, 'hero_image_src', 'http://localhost/mo-alaa/wp-content/uploads/2021/09/header-bg.jpg'),
(44, 5, 'hero_image_src', 'http://localhost/mo-alaa/wp-content/uploads/2021/09/header-bg.jpg'),
(45, 13, '_edit_last', '1'),
(46, 13, '_edit_lock', '1632671974:1'),
(47, 14, '_wp_attached_file', '2021/09/1.jpg'),
(48, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2021/09/1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 15, '_wp_attached_file', '2021/09/2.jpg'),
(50, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2021/09/2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 16, '_wp_attached_file', '2021/09/3.jpg'),
(52, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2021/09/3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 17, '_wp_attached_file', '2021/09/4.jpg'),
(54, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2021/09/4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 18, '_wp_attached_file', '2021/09/5.jpg'),
(56, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2021/09/5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 19, '_wp_attached_file', '2021/09/6.jpg'),
(58, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2021/09/6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 13, '_thumbnail_id', '14'),
(60, 21, '_edit_last', '1'),
(61, 21, '_edit_lock', '1632671929:1'),
(62, 21, '_thumbnail_id', '15'),
(63, 24, '_edit_last', '1'),
(64, 24, '_edit_lock', '1632672029:1'),
(65, 24, '_thumbnail_id', '16'),
(66, 26, '_edit_last', '1'),
(67, 26, '_edit_lock', '1632679975:1'),
(68, 26, '_thumbnail_id', '17'),
(69, 30, '_edit_last', '1'),
(70, 30, '_edit_lock', '1632708904:1'),
(71, 30, '_thumbnail_id', '18'),
(72, 32, '_edit_last', '1'),
(73, 32, '_edit_lock', '1632679233:1'),
(74, 32, '_thumbnail_id', '19'),
(75, 32, 'client_name', 'EGY2D'),
(76, 32, 'delivery_date', '2021-09-01'),
(77, 32, 'featured_project', '1'),
(78, 30, 'client_name', 'EGY2D'),
(79, 30, 'delivery_date', '2021-10-01'),
(80, 30, 'featured_project', '1'),
(81, 26, 'client_name', 'CocaCola'),
(82, 26, 'delivery_date', '2021-11-01'),
(83, 26, 'featured_project', '1'),
(84, 35, '_edit_last', '1'),
(85, 35, '_edit_lock', '1632684410:1'),
(86, 35, '_wp_page_template', 'about.php'),
(87, 37, '_edit_last', '1'),
(88, 37, '_edit_lock', '1632680345:1'),
(89, 37, '_wp_page_template', 'projects.php'),
(90, 39, '_edit_last', '1'),
(91, 39, '_wp_page_template', 'contact.php'),
(92, 39, '_edit_lock', '1632680347:1'),
(93, 41, '_menu_item_type', 'post_type'),
(94, 41, '_menu_item_menu_item_parent', '0'),
(95, 41, '_menu_item_object_id', '5'),
(96, 41, '_menu_item_object', 'page'),
(97, 41, '_menu_item_target', ''),
(98, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 41, '_menu_item_xfn', ''),
(100, 41, '_menu_item_url', ''),
(102, 42, '_menu_item_type', 'post_type'),
(103, 42, '_menu_item_menu_item_parent', '0'),
(104, 42, '_menu_item_object_id', '35'),
(105, 42, '_menu_item_object', 'page'),
(106, 42, '_menu_item_target', ''),
(107, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 42, '_menu_item_xfn', ''),
(109, 42, '_menu_item_url', ''),
(111, 43, '_menu_item_type', 'post_type'),
(112, 43, '_menu_item_menu_item_parent', '0'),
(113, 43, '_menu_item_object_id', '39'),
(114, 43, '_menu_item_object', 'page'),
(115, 43, '_menu_item_target', ''),
(116, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 43, '_menu_item_xfn', ''),
(118, 43, '_menu_item_url', ''),
(120, 44, '_menu_item_type', 'post_type'),
(121, 44, '_menu_item_menu_item_parent', '0'),
(122, 44, '_menu_item_object_id', '37'),
(123, 44, '_menu_item_object', 'page'),
(124, 44, '_menu_item_target', ''),
(125, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 44, '_menu_item_xfn', ''),
(127, 44, '_menu_item_url', ''),
(129, 1, '_wp_trash_meta_status', 'publish'),
(130, 1, '_wp_trash_meta_time', '1632681399'),
(131, 1, '_wp_desired_post_slug', '%d8%a3%d9%87%d9%84%d8%a7-%d8%a8%d8%a7%d9%84%d8%b9%d8%a7%d9%84%d9%85'),
(132, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(133, 46, '_edit_last', '1'),
(134, 46, '_edit_lock', '1632681354:1'),
(135, 47, '_wp_attached_file', '2021/09/facebook.svg'),
(136, 48, '_wp_attached_file', '2021/09/google.svg'),
(137, 49, '_wp_attached_file', '2021/09/ibm.svg'),
(138, 50, '_wp_attached_file', '2021/09/microsoft.svg'),
(139, 46, '_thumbnail_id', '50'),
(144, 52, '_edit_last', '1'),
(145, 52, '_edit_lock', '1632681390:1'),
(146, 52, '_thumbnail_id', '48'),
(151, 52, '_wp_old_slug', 'google'),
(152, 55, '_edit_last', '1'),
(153, 55, '_edit_lock', '1632681413:1'),
(154, 55, '_thumbnail_id', '47'),
(157, 57, '_edit_last', '1'),
(158, 57, '_edit_lock', '1632681447:1'),
(159, 57, '_thumbnail_id', '49'),
(162, 35, 'about_page_right_content', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(163, 35, 'about_page_left_content', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(164, 59, '_edit_last', '1'),
(165, 59, '_edit_lock', '1632685459:1'),
(166, 60, '_wp_attached_file', '2021/09/1-1.jpg'),
(167, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2021/09/1-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 61, '_wp_attached_file', '2021/09/2-1.jpg'),
(169, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2021/09/2-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 62, '_wp_attached_file', '2021/09/3-1.jpg'),
(171, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2021/09/3-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 59, '_thumbnail_id', '60'),
(173, 64, '_edit_last', '1'),
(174, 64, '_thumbnail_id', '61'),
(175, 64, '_edit_lock', '1632685332:1'),
(176, 67, '_edit_last', '1'),
(177, 67, '_thumbnail_id', '62'),
(178, 67, '_edit_lock', '1632685313:1'),
(179, 67, 'team_member_title', 'Lead Developer'),
(180, 67, 'team_member_facebook', ''),
(181, 67, 'team_member_twitter', ''),
(182, 67, 'team_member_linkedin', ''),
(183, 64, 'team_member_title', 'Lead Marketer'),
(184, 64, 'team_member_facebook', ''),
(185, 64, 'team_member_twitter', ''),
(186, 64, 'team_member_linkedin', ''),
(187, 59, 'team_member_title', 'Lead Designer'),
(188, 59, 'team_member_facebook', ''),
(189, 59, 'team_member_twitter', ''),
(190, 59, 'team_member_linkedin', ''),
(191, 69, '_edit_last', '1'),
(192, 69, '_edit_lock', '1632686678:1'),
(193, 69, '_thumbnail_id', '60'),
(194, 69, 'team_member_title', 'Lead Designer2'),
(195, 69, 'team_member_facebook', ''),
(196, 69, 'team_member_twitter', ''),
(197, 69, 'team_member_linkedin', ''),
(198, 71, '_edit_last', '1'),
(199, 71, '_edit_lock', '1632686701:1'),
(200, 71, '_thumbnail_id', '61'),
(201, 71, 'team_member_title', 'Lead Marketer2'),
(202, 71, 'team_member_facebook', ''),
(203, 71, 'team_member_twitter', ''),
(204, 71, 'team_member_linkedin', ''),
(205, 73, '_edit_last', '1'),
(206, 73, '_edit_lock', '1632686725:1'),
(207, 73, '_thumbnail_id', '62'),
(208, 73, 'team_member_title', 'Lead Developer2'),
(209, 73, 'team_member_facebook', ''),
(210, 73, 'team_member_twitter', ''),
(211, 73, 'team_member_linkedin', ''),
(212, 75, '_edit_last', '1'),
(213, 75, '_edit_lock', '1632698110:1'),
(214, 75, '_thumbnail_id', '62'),
(215, 75, 'team_member_title', 'Test'),
(216, 75, 'team_member_facebook', ''),
(217, 75, 'team_member_twitter', ''),
(218, 75, 'team_member_linkedin', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-26 04:37:35', '2021-09-26 01:37:35', '<!-- wp:paragraph -->\n<p>مرحباً بك في ووردبريس. هذه مقالتك الأولى. حررّها أو احذفها، ثم ابدأ النشر!</p>\n<!-- /wp:paragraph -->', 'أهلاً بالعالم !', '', 'trash', 'open', 'open', '', '%d8%a3%d9%87%d9%84%d8%a7-%d8%a8%d8%a7%d9%84%d8%b9%d8%a7%d9%84%d9%85__trashed', '', '', '2021-09-26 21:36:39', '2021-09-26 18:36:39', '', 0, 'http://localhost/mo-alaa/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-26 04:37:35', '2021-09-26 01:37:35', '<!-- wp:paragraph -->\n<p>هذا المثال لـ صفحة. تختلف عن مقالة المدونة؛ لأنها ستظل في موضع واحد وستظهر في قائمة روابط الموقع الخاصة بك (في غالبية القوالب). يبدأ معظم الناس بتقديم صفحة التعريف التي يطلق عليها صفحة \"حول\" عادةً لعرضها على زوّار الموقع المحتملين. قد تكون شيئًا كهذا:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>مرحبًا! أعمل نهاراً كساعي بريد، فنان طموح بقية ساعات يومي، وهذا هو موقع الويب الخاص بي. أعيش في المنطقة الغربية، ولدي قط لطيف يُدعى فروزن، أحب الصناعات الخشبية ومهتم بالنقوش والزخرفة (واهتمامات قد تروق لك من هنا وهناك.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...أو شيئًا من هذا القبيل:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>تأسست شركة XYZ في عام 1971، وقدمت العديد من المنتجات ذات الجودة للعامة منذ ذلك الحين. مقرها الرئيسي في لندن، توظّف شركة XYZ أكثر من 2000 شخص، وتقوم بالعديد من الأشياء والأنشطة الرائعة للمجتمع.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>وبصفتك مستخدمًا جديدًا لـ ووردبريس، ينبغي عليك الانتقال إلى <a href=\"http://localhost/mo-alaa/wp-admin/\">لوحة التحكّم</a> الخاصة بك لحذف هذه الصفحة وإنشاء صفحات جديدة مناسبة للمحتوى الخاص بك. استمتع!</p>\n<!-- /wp:paragraph -->', 'مثال على صفحة', '', 'trash', 'closed', 'open', '', 'مثال-على-صفحة__trashed', '', '', '2021-09-26 05:19:05', '2021-09-26 02:19:05', '', 0, 'http://localhost/mo-alaa/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-26 04:37:35', '2021-09-26 01:37:35', '<!-- wp:heading --><h2>من نحن</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>عنوان موقعنا على الويب: http://localhost/mo-alaa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>تعليقات</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>عندما يترك الزائرون تعليقاتهم على الموقع، نجمع البيانات الموضحة في نموذج التعليقات، وكذلك عنوان IP الخاص بالزائر وسلسلة وكلاء متصفح المستخدم للمساعدة في اكتشاف الرسائل غير المرغوب فيها.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>قد يتم توفير سلسلة مجهولة المصدر تم إنشاؤها من عنوان بريدك الإلكتروني (وتسمى أيضًا hash) إلى خدمة Gravatar لمعرفة ما إذا كنت تستخدمها. سياسة خصوصية خدمة Gravatar متوفرة هنا: https://automattic.com/privacy/. بعد الموافقة على تعليقك، ستكون صورة ملفك الشخصي مرئية للعامة في سياق تعليقك.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>وسائط</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا قمت بتحميل الصور إلى موقع الويب، يجب تجنب تحميل الصور مع بيانات الموقع المضمنة (EXIF GPS). يمكن لزوّار الموقع تنزيل واستخراج أي بيانات موقع من الصور على موقع الويب.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>ملفات تعريف الارتباط</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا تركت تعليقًا على موقعنا، فيمكنك تمكين حفظ اسمك وعنوان بريدك الإلكتروني وموقعك الإلكتروني في ملفات تعريف الارتباط. هذه هي لراحتك حتى لا تضطر إلى ملء التفاصيل الخاصة بك مرة أخرى عند ترك تعليق آخر. ستستمر ملفات تعريف الارتباط هذه لمدة عام واحد.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>إذا قمت بزيارة صفحة تسجيل الدخول الخاصة بنا، فسنهيئ ملف تعريف ارتباط مؤقت لتحديد ما إذا كان مستعرضك يقبل هذه الملفات. لايحوي ملف تعريف الارتباط هذا أي بيانات شخصية كما يتم التخلص منه عندما تقوم بإغلاق متصفحك.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>عندما تسجّل الدخول نقوم أيضاً بتهيئة ملفات عديدة لتعريف الارتباط من أجل حفظ معلومات دخولك وخيارات شاشة العرض الخاصة بك. ملفات تعريف الارتباط لمعلومات الدخول تبقى ليومين، بينما تبقى ملفات تعريف ارتباط خيارات شاشة العرض لمدة سنة. سيستمر تسجيل دخولك طيلة أسبوعين عندما تختار &quot;تذكرني&quot;، وإذا قمت بتسجيل خروجك من الحساب، سيتم حذف ملفات تعريف ارتباط تسجيل الدخول.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>سيُحفظ ملف إضافي لتعريف الارتباط في مستعرضك إذا قمت بتحرير أو نشر مقال. وهذا الملف لايتضمن أي بيانات شخصية فكل ما في الأمر أنه يشير إلى معرّف المقالة التي حررتها. وستنتهي صلاحيته بعد يوم واحد.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>المحتوى المضمّن من مواقع ويب أخرى</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>المقالات على هذا الموقع قد تشمل محتوى مضمّناً (على سبيل المثال: كمقاطع الفيديو، الصور، المقالات .. الخ).  يتصرّف المحتوى المضمَّن من مواقع ويب أخرى بالطريقة نفسها تماماً كما لو أن الزائر زار الموقع الآخر.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>قد تجمع مواقع الويب هذه بيانات عنك، وتستخدم ملفات تعريف الارتباط، وتقوم بضمين تتبعًا إضافيًا - تابعًا لجهة ثالثة خارجية، وتراقب تفاعلك مع هذا المحتوى المضمّن، بما في ذلك تتبع تفاعلك مع المحتوى المضمن إذا كان لديك حساب وتم تسجيل دخولك إلى ذلك الموقع.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>مع من نشارك بياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا طلبت إعادة تعيين كلمة المرور، فسيتم تضمين عنوان IP الخاص بك في رسالة البريد الإلكتروني لإعادة التعيين.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>ماهي مدة احتفاظنا ببياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا تركت تعليقاً، فسيتم الاحتفاظ بالتعليق والبيانات الوصفية الخاصة به إلى أجل غير مسمى. وهذا حتى يمكننا التعرّف على أي تعليقات متتابعة والموافقة عليها تلقائياً بدلاً من الاحتفاظ بها في قائمة انتظار المراجعة للموافقة عليها.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>بالنسبة للمستخدمين الذين قاموا بالتسجيل على موقعنا (إن وجد)، نقوم أيضًا بتخزين المعلومات الشخصية التي يقدمونها في ملف تعريف المستخدم الخاص بهم. يمكن لجميع المستخدمين الاطلاع على معلوماتهم الشخصية أو تعديلها أو حذفها في أي وقت (باستثناء أنه لا يمكنهم تغيير اسم المستخدم الخاص بهم). يمكن لمسؤولي مواقع الويب أيضًا رؤية هذه المعلومات وتحريرها.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>ماهي الحقوق العائدة لك على بياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا كان لديك حساب على هذا الموقع، أو تركت تعليقات، يمكنك طلب الحصول على ملف يتم تصديره من البيانات الشخصية التي نحتفظ بها عنك، بما في ذلك أي بيانات قدمتها لنا. يمكنك أيضًا طلب حذف أي بيانات شخصية نحتفظ بها عنك. هذا لا يشمل أي بيانات نحن ملزمون بالحفاظ عليها لأغراض إدارية أو قانونية أو أمنية.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>إلى أين نرسل بياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>يمكن التحقق من تعليقات الزوار من خلال خدمة الكشف عن الرسائل غير المرغوب فيها تلقائيًا.</p><!-- /wp:paragraph -->', 'سياسة الخصوصية', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-09-26 05:19:03', '2021-09-26 02:19:03', '', 0, 'http://localhost/mo-alaa/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-09-26 04:39:44', '0000-00-00 00:00:00', '', 'مسودة تلقائية', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-26 04:39:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/mo-alaa/?p=4', 0, 'post', '', 0),
(5, 1, '2021-09-26 05:17:59', '2021-09-26 02:17:59', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-26 17:35:30', '2021-09-26 14:35:30', '', 0, 'http://localhost/mo-alaa/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-09-26 05:17:59', '2021-09-26 02:17:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-26 05:17:59', '2021-09-26 02:17:59', '', 5, 'http://localhost/mo-alaa/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-09-26 05:19:03', '2021-09-26 02:19:03', '<!-- wp:heading --><h2>من نحن</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>عنوان موقعنا على الويب: http://localhost/mo-alaa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>تعليقات</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>عندما يترك الزائرون تعليقاتهم على الموقع، نجمع البيانات الموضحة في نموذج التعليقات، وكذلك عنوان IP الخاص بالزائر وسلسلة وكلاء متصفح المستخدم للمساعدة في اكتشاف الرسائل غير المرغوب فيها.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>قد يتم توفير سلسلة مجهولة المصدر تم إنشاؤها من عنوان بريدك الإلكتروني (وتسمى أيضًا hash) إلى خدمة Gravatar لمعرفة ما إذا كنت تستخدمها. سياسة خصوصية خدمة Gravatar متوفرة هنا: https://automattic.com/privacy/. بعد الموافقة على تعليقك، ستكون صورة ملفك الشخصي مرئية للعامة في سياق تعليقك.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>وسائط</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا قمت بتحميل الصور إلى موقع الويب، يجب تجنب تحميل الصور مع بيانات الموقع المضمنة (EXIF GPS). يمكن لزوّار الموقع تنزيل واستخراج أي بيانات موقع من الصور على موقع الويب.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>ملفات تعريف الارتباط</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا تركت تعليقًا على موقعنا، فيمكنك تمكين حفظ اسمك وعنوان بريدك الإلكتروني وموقعك الإلكتروني في ملفات تعريف الارتباط. هذه هي لراحتك حتى لا تضطر إلى ملء التفاصيل الخاصة بك مرة أخرى عند ترك تعليق آخر. ستستمر ملفات تعريف الارتباط هذه لمدة عام واحد.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>إذا قمت بزيارة صفحة تسجيل الدخول الخاصة بنا، فسنهيئ ملف تعريف ارتباط مؤقت لتحديد ما إذا كان مستعرضك يقبل هذه الملفات. لايحوي ملف تعريف الارتباط هذا أي بيانات شخصية كما يتم التخلص منه عندما تقوم بإغلاق متصفحك.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>عندما تسجّل الدخول نقوم أيضاً بتهيئة ملفات عديدة لتعريف الارتباط من أجل حفظ معلومات دخولك وخيارات شاشة العرض الخاصة بك. ملفات تعريف الارتباط لمعلومات الدخول تبقى ليومين، بينما تبقى ملفات تعريف ارتباط خيارات شاشة العرض لمدة سنة. سيستمر تسجيل دخولك طيلة أسبوعين عندما تختار &quot;تذكرني&quot;، وإذا قمت بتسجيل خروجك من الحساب، سيتم حذف ملفات تعريف ارتباط تسجيل الدخول.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>سيُحفظ ملف إضافي لتعريف الارتباط في مستعرضك إذا قمت بتحرير أو نشر مقال. وهذا الملف لايتضمن أي بيانات شخصية فكل ما في الأمر أنه يشير إلى معرّف المقالة التي حررتها. وستنتهي صلاحيته بعد يوم واحد.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>المحتوى المضمّن من مواقع ويب أخرى</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>المقالات على هذا الموقع قد تشمل محتوى مضمّناً (على سبيل المثال: كمقاطع الفيديو، الصور، المقالات .. الخ).  يتصرّف المحتوى المضمَّن من مواقع ويب أخرى بالطريقة نفسها تماماً كما لو أن الزائر زار الموقع الآخر.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>قد تجمع مواقع الويب هذه بيانات عنك، وتستخدم ملفات تعريف الارتباط، وتقوم بضمين تتبعًا إضافيًا - تابعًا لجهة ثالثة خارجية، وتراقب تفاعلك مع هذا المحتوى المضمّن، بما في ذلك تتبع تفاعلك مع المحتوى المضمن إذا كان لديك حساب وتم تسجيل دخولك إلى ذلك الموقع.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>مع من نشارك بياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا طلبت إعادة تعيين كلمة المرور، فسيتم تضمين عنوان IP الخاص بك في رسالة البريد الإلكتروني لإعادة التعيين.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>ماهي مدة احتفاظنا ببياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا تركت تعليقاً، فسيتم الاحتفاظ بالتعليق والبيانات الوصفية الخاصة به إلى أجل غير مسمى. وهذا حتى يمكننا التعرّف على أي تعليقات متتابعة والموافقة عليها تلقائياً بدلاً من الاحتفاظ بها في قائمة انتظار المراجعة للموافقة عليها.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>بالنسبة للمستخدمين الذين قاموا بالتسجيل على موقعنا (إن وجد)، نقوم أيضًا بتخزين المعلومات الشخصية التي يقدمونها في ملف تعريف المستخدم الخاص بهم. يمكن لجميع المستخدمين الاطلاع على معلوماتهم الشخصية أو تعديلها أو حذفها في أي وقت (باستثناء أنه لا يمكنهم تغيير اسم المستخدم الخاص بهم). يمكن لمسؤولي مواقع الويب أيضًا رؤية هذه المعلومات وتحريرها.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>ماهي الحقوق العائدة لك على بياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>إذا كان لديك حساب على هذا الموقع، أو تركت تعليقات، يمكنك طلب الحصول على ملف يتم تصديره من البيانات الشخصية التي نحتفظ بها عنك، بما في ذلك أي بيانات قدمتها لنا. يمكنك أيضًا طلب حذف أي بيانات شخصية نحتفظ بها عنك. هذا لا يشمل أي بيانات نحن ملزمون بالحفاظ عليها لأغراض إدارية أو قانونية أو أمنية.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>إلى أين نرسل بياناتك</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">النص المقترح: </strong>يمكن التحقق من تعليقات الزوار من خلال خدمة الكشف عن الرسائل غير المرغوب فيها تلقائيًا.</p><!-- /wp:paragraph -->', 'سياسة الخصوصية', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-09-26 05:19:03', '2021-09-26 02:19:03', '', 3, 'http://localhost/mo-alaa/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-09-26 05:19:05', '2021-09-26 02:19:05', '<!-- wp:paragraph -->\n<p>هذا المثال لـ صفحة. تختلف عن مقالة المدونة؛ لأنها ستظل في موضع واحد وستظهر في قائمة روابط الموقع الخاصة بك (في غالبية القوالب). يبدأ معظم الناس بتقديم صفحة التعريف التي يطلق عليها صفحة \"حول\" عادةً لعرضها على زوّار الموقع المحتملين. قد تكون شيئًا كهذا:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>مرحبًا! أعمل نهاراً كساعي بريد، فنان طموح بقية ساعات يومي، وهذا هو موقع الويب الخاص بي. أعيش في المنطقة الغربية، ولدي قط لطيف يُدعى فروزن، أحب الصناعات الخشبية ومهتم بالنقوش والزخرفة (واهتمامات قد تروق لك من هنا وهناك.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...أو شيئًا من هذا القبيل:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>تأسست شركة XYZ في عام 1971، وقدمت العديد من المنتجات ذات الجودة للعامة منذ ذلك الحين. مقرها الرئيسي في لندن، توظّف شركة XYZ أكثر من 2000 شخص، وتقوم بالعديد من الأشياء والأنشطة الرائعة للمجتمع.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>وبصفتك مستخدمًا جديدًا لـ ووردبريس، ينبغي عليك الانتقال إلى <a href=\"http://localhost/mo-alaa/wp-admin/\">لوحة التحكّم</a> الخاصة بك لحذف هذه الصفحة وإنشاء صفحات جديدة مناسبة للمحتوى الخاص بك. استمتع!</p>\n<!-- /wp:paragraph -->', 'مثال على صفحة', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-09-26 05:19:05', '2021-09-26 02:19:05', '', 2, 'http://localhost/mo-alaa/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-09-26 05:44:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-26 05:44:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/mo-alaa/?p=9', 0, 'post', '', 0),
(10, 1, '2021-09-26 06:07:05', '2021-09-26 03:07:05', '', 'header-bg', '', 'inherit', 'open', 'closed', '', 'header-bg', '', '', '2021-09-26 06:07:05', '2021-09-26 03:07:05', '', 5, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/header-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2021-09-26 17:05:41', '2021-09-26 14:05:41', '', 'Home1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-26 17:05:41', '2021-09-26 14:05:41', '', 5, 'http://localhost/mo-alaa/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-09-26 17:05:47', '2021-09-26 14:05:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-26 17:05:47', '2021-09-26 14:05:47', '', 5, 'http://localhost/mo-alaa/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-09-26 18:59:35', '2021-09-26 15:59:35', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Threads', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'publish', 'open', 'open', '', 'threads', '', '', '2021-09-26 19:01:56', '2021-09-26 16:01:56', '', 0, 'http://localhost/mo-alaa/?post_type=project&#038;p=13', 0, 'project', '', 0),
(14, 1, '2021-09-26 18:58:29', '2021-09-26 15:58:29', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2021-09-26 18:58:29', '2021-09-26 15:58:29', '', 13, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2021-09-26 18:58:30', '2021-09-26 15:58:30', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2021-09-26 18:58:30', '2021-09-26 15:58:30', '', 13, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2021-09-26 18:58:30', '2021-09-26 15:58:30', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2021-09-26 18:58:30', '2021-09-26 15:58:30', '', 13, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-09-26 18:58:32', '2021-09-26 15:58:32', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2021-09-26 18:58:32', '2021-09-26 15:58:32', '', 13, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2021-09-26 18:58:32', '2021-09-26 15:58:32', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2021-09-26 18:58:32', '2021-09-26 15:58:32', '', 13, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-09-26 18:58:34', '2021-09-26 15:58:34', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2021-09-26 18:58:34', '2021-09-26 15:58:34', '', 13, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2021-09-26 18:59:35', '2021-09-26 15:59:35', '', 'Threads', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-09-26 18:59:35', '2021-09-26 15:59:35', '', 13, 'http://localhost/mo-alaa/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-09-26 19:01:11', '2021-09-26 16:01:11', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Explore', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'publish', 'open', 'open', '', 'explore', '', '', '2021-09-26 19:01:11', '2021-09-26 16:01:11', '', 0, 'http://localhost/mo-alaa/?post_type=project&#038;p=21', 0, 'project', '', 0),
(22, 1, '2021-09-26 19:01:11', '2021-09-26 16:01:11', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Explore', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-09-26 19:01:11', '2021-09-26 16:01:11', '', 21, 'http://localhost/mo-alaa/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-09-26 19:01:29', '2021-09-26 16:01:29', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Threads', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-09-26 19:01:29', '2021-09-26 16:01:29', '', 13, 'http://localhost/mo-alaa/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-09-26 19:02:44', '2021-09-26 16:02:44', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Finish', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'publish', 'open', 'open', '', 'finish', '', '', '2021-09-26 19:02:44', '2021-09-26 16:02:44', '', 0, 'http://localhost/mo-alaa/?post_type=project&#038;p=24', 0, 'project', '', 0),
(25, 1, '2021-09-26 19:02:44', '2021-09-26 16:02:44', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Finish', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-09-26 19:02:44', '2021-09-26 16:02:44', '', 24, 'http://localhost/mo-alaa/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-09-26 19:03:31', '2021-09-26 16:03:31', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Lines', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'publish', 'open', 'open', '', 'lines', '', '', '2021-09-26 21:04:09', '2021-09-26 18:04:09', '', 0, 'http://localhost/mo-alaa/?post_type=project&#038;p=26', 0, 'project', '', 0),
(27, 1, '2021-09-26 19:03:31', '2021-09-26 16:03:31', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Lines', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-09-26 19:03:31', '2021-09-26 16:03:31', '', 26, 'http://localhost/mo-alaa/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-09-26 19:03:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-26 19:03:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/mo-alaa/?post_type=project&p=28', 0, 'project', '', 0),
(29, 1, '2021-09-26 19:03:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-26 19:03:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/mo-alaa/?post_type=project&p=29', 0, 'project', '', 0),
(30, 1, '2021-09-26 19:04:32', '2021-09-26 16:04:32', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Southwest', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'publish', 'open', 'open', '', 'southwest', '', '', '2021-09-26 21:03:19', '2021-09-26 18:03:19', '', 0, 'http://localhost/mo-alaa/?post_type=project&#038;p=30', 0, 'project', '', 0),
(31, 1, '2021-09-26 19:04:32', '2021-09-26 16:04:32', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Southwest', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-09-26 19:04:32', '2021-09-26 16:04:32', '', 30, 'http://localhost/mo-alaa/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-09-26 19:05:15', '2021-09-26 16:05:15', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Window', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'publish', 'open', 'open', '', 'window', '', '', '2021-09-26 19:42:05', '2021-09-26 16:42:05', '', 0, 'http://localhost/mo-alaa/?post_type=project&#038;p=32', 0, 'project', '', 0),
(33, 1, '2021-09-26 19:05:15', '2021-09-26 16:05:15', '<h3 class=\"section-subheading text-muted\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</h3>', 'Window', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-09-26 19:05:15', '2021-09-26 16:05:15', '', 32, 'http://localhost/mo-alaa/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-09-26 21:10:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-26 21:10:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/mo-alaa/?page_id=34', 0, 'page', '', 0),
(35, 1, '2021-09-26 21:13:04', '2021-09-26 18:13:04', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-09-26 22:20:37', '2021-09-26 19:20:37', '', 0, 'http://localhost/mo-alaa/?page_id=35', 0, 'page', '', 0),
(36, 1, '2021-09-26 21:13:04', '2021-09-26 18:13:04', '', 'About', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-09-26 21:13:04', '2021-09-26 18:13:04', '', 35, 'http://localhost/mo-alaa/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-09-26 21:20:10', '2021-09-26 18:20:10', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2021-09-26 21:21:28', '2021-09-26 18:21:28', '', 0, 'http://localhost/mo-alaa/?page_id=37', 0, 'page', '', 0),
(38, 1, '2021-09-26 21:20:10', '2021-09-26 18:20:10', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-26 21:20:10', '2021-09-26 18:20:10', '', 37, 'http://localhost/mo-alaa/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-09-26 21:20:23', '2021-09-26 18:20:23', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-09-26 21:21:11', '2021-09-26 18:21:11', '', 0, 'http://localhost/mo-alaa/?page_id=39', 0, 'page', '', 0),
(40, 1, '2021-09-26 21:20:23', '2021-09-26 18:20:23', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-09-26 21:20:23', '2021-09-26 18:20:23', '', 39, 'http://localhost/mo-alaa/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-09-26 21:21:58', '2021-09-26 18:21:58', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2021-09-26 21:21:58', '2021-09-26 18:21:58', '', 0, 'http://localhost/mo-alaa/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2021-09-26 21:21:58', '2021-09-26 18:21:58', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-09-26 21:21:58', '2021-09-26 18:21:58', '', 0, 'http://localhost/mo-alaa/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2021-09-26 21:22:00', '2021-09-26 18:22:00', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2021-09-26 21:22:00', '2021-09-26 18:22:00', '', 0, 'http://localhost/mo-alaa/?p=43', 4, 'nav_menu_item', '', 0),
(44, 1, '2021-09-26 21:21:58', '2021-09-26 18:21:58', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-09-26 21:21:58', '2021-09-26 18:21:58', '', 0, 'http://localhost/mo-alaa/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2021-09-26 21:36:39', '2021-09-26 18:36:39', '<!-- wp:paragraph -->\n<p>مرحباً بك في ووردبريس. هذه مقالتك الأولى. حررّها أو احذفها، ثم ابدأ النشر!</p>\n<!-- /wp:paragraph -->', 'أهلاً بالعالم !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-26 21:36:39', '2021-09-26 18:36:39', '', 1, 'http://localhost/mo-alaa/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-09-26 21:37:52', '2021-09-26 18:37:52', '', 'Microsoft Planing', '', 'publish', 'open', 'open', '', 'microsoft-planing', '', '', '2021-09-26 21:38:11', '2021-09-26 18:38:11', '', 0, 'http://localhost/mo-alaa/?p=46', 0, 'post', '', 0),
(47, 1, '2021-09-26 21:37:20', '2021-09-26 18:37:20', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2021-09-26 21:37:20', '2021-09-26 18:37:20', '', 46, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(48, 1, '2021-09-26 21:37:20', '2021-09-26 18:37:20', '', 'google', '', 'inherit', 'open', 'closed', '', 'google', '', '', '2021-09-26 21:37:20', '2021-09-26 18:37:20', '', 46, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/google.svg', 0, 'attachment', 'image/svg+xml', 0),
(49, 1, '2021-09-26 21:37:21', '2021-09-26 18:37:21', '', 'ibm', '', 'inherit', 'open', 'closed', '', 'ibm', '', '', '2021-09-26 21:37:21', '2021-09-26 18:37:21', '', 46, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/ibm.svg', 0, 'attachment', 'image/svg+xml', 0),
(50, 1, '2021-09-26 21:37:21', '2021-09-26 18:37:21', '', 'microsoft', '', 'inherit', 'open', 'closed', '', 'microsoft', '', '', '2021-09-26 21:37:21', '2021-09-26 18:37:21', '', 46, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/microsoft.svg', 0, 'attachment', 'image/svg+xml', 0),
(51, 1, '2021-09-26 21:37:52', '2021-09-26 18:37:52', '', 'Microsoft Planing', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-09-26 21:37:52', '2021-09-26 18:37:52', '', 46, 'http://localhost/mo-alaa/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-09-26 21:38:34', '2021-09-26 18:38:34', '', 'Google Event', '', 'publish', 'open', 'open', '', 'google-event', '', '', '2021-09-26 21:38:50', '2021-09-26 18:38:50', '', 0, 'http://localhost/mo-alaa/?p=52', 0, 'post', '', 0),
(53, 1, '2021-09-26 21:38:34', '2021-09-26 18:38:34', '', 'Google', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-09-26 21:38:34', '2021-09-26 18:38:34', '', 52, 'http://localhost/mo-alaa/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-09-26 21:38:50', '2021-09-26 18:38:50', '', 'Google Event', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-09-26 21:38:50', '2021-09-26 18:38:50', '', 52, 'http://localhost/mo-alaa/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-09-26 21:39:11', '2021-09-26 18:39:11', '', 'Facebook Camp', '', 'publish', 'open', 'open', '', 'facebook-camp', '', '', '2021-09-26 21:39:11', '2021-09-26 18:39:11', '', 0, 'http://localhost/mo-alaa/?p=55', 0, 'post', '', 0),
(56, 1, '2021-09-26 21:39:11', '2021-09-26 18:39:11', '', 'Facebook Camp', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-09-26 21:39:11', '2021-09-26 18:39:11', '', 55, 'http://localhost/mo-alaa/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-09-26 21:39:37', '2021-09-26 18:39:37', '', 'IBM Jobs Fair', '', 'publish', 'open', 'open', '', 'ibm-jobs-fair', '', '', '2021-09-26 21:39:37', '2021-09-26 18:39:37', '', 0, 'http://localhost/mo-alaa/?p=57', 0, 'post', '', 0),
(58, 1, '2021-09-26 21:39:37', '2021-09-26 18:39:37', '', 'IBM Jobs Fair', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-09-26 21:39:37', '2021-09-26 18:39:37', '', 57, 'http://localhost/mo-alaa/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-09-26 22:35:09', '2021-09-26 19:35:09', '', 'Parveen Anand', '', 'publish', 'open', 'open', '', 'parveen-anand', '', '', '2021-09-26 22:44:43', '2021-09-26 19:44:43', '', 0, 'http://localhost/mo-alaa/?post_type=team_members&#038;p=59', 0, 'team_members', '', 0),
(60, 1, '2021-09-26 22:34:32', '2021-09-26 19:34:32', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2021-09-26 22:34:32', '2021-09-26 19:34:32', '', 59, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-09-26 22:34:32', '2021-09-26 19:34:32', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2021-09-26 22:34:32', '2021-09-26 19:34:32', '', 59, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-09-26 22:34:33', '2021-09-26 19:34:33', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2021-09-26 22:34:33', '2021-09-26 19:34:33', '', 59, 'http://localhost/mo-alaa/wp-content/uploads/2021/09/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-09-26 22:35:09', '2021-09-26 19:35:09', '', 'Parveen Anand', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-09-26 22:35:09', '2021-09-26 19:35:09', '', 59, 'http://localhost/mo-alaa/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-09-26 22:35:36', '2021-09-26 19:35:36', '', 'Diana Petersen', '', 'publish', 'open', 'open', '', 'diana-petersen', '', '', '2021-09-26 22:44:29', '2021-09-26 19:44:29', '', 0, 'http://localhost/mo-alaa/?post_type=team_members&#038;p=64', 0, 'team_members', '', 0),
(65, 1, '2021-09-26 22:35:36', '2021-09-26 19:35:36', '', 'Diana Petersen', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-09-26 22:35:36', '2021-09-26 19:35:36', '', 64, 'http://localhost/mo-alaa/?p=65', 0, 'revision', '', 0),
(67, 1, '2021-09-26 22:35:55', '2021-09-26 19:35:55', '', 'Larry Parker', '', 'publish', 'open', 'open', '', 'larry-parker', '', '', '2021-09-26 22:44:10', '2021-09-26 19:44:10', '', 0, 'http://localhost/mo-alaa/?post_type=team_members&#038;p=67', 0, 'team_members', '', 0),
(68, 1, '2021-09-26 22:35:55', '2021-09-26 19:35:55', '', 'Larry Parker', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2021-09-26 22:35:55', '2021-09-26 19:35:55', '', 67, 'http://localhost/mo-alaa/?p=68', 0, 'revision', '', 0),
(69, 1, '2021-09-26 23:06:59', '2021-09-26 20:06:59', '', 'Larry Parker2', '', 'publish', 'open', 'open', '', 'larry-parker2', '', '', '2021-09-26 23:06:59', '2021-09-26 20:06:59', '', 0, 'http://localhost/mo-alaa/?post_type=team_members&#038;p=69', 0, 'team_members', '', 0),
(70, 1, '2021-09-26 23:06:59', '2021-09-26 20:06:59', '', 'Larry Parker2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2021-09-26 23:06:59', '2021-09-26 20:06:59', '', 69, 'http://localhost/mo-alaa/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-09-26 23:07:24', '2021-09-26 20:07:24', '', 'Diana Petersen2', '', 'publish', 'open', 'open', '', 'diana-petersen2', '', '', '2021-09-26 23:07:24', '2021-09-26 20:07:24', '', 0, 'http://localhost/mo-alaa/?post_type=team_members&#038;p=71', 0, 'team_members', '', 0),
(72, 1, '2021-09-26 23:07:24', '2021-09-26 20:07:24', '', 'Diana Petersen2', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2021-09-26 23:07:24', '2021-09-26 20:07:24', '', 71, 'http://localhost/mo-alaa/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-09-26 23:07:47', '2021-09-26 20:07:47', '', 'Larry Parker2', '', 'publish', 'open', 'open', '', 'larry-parker2-2', '', '', '2021-09-26 23:07:47', '2021-09-26 20:07:47', '', 0, 'http://localhost/mo-alaa/?post_type=team_members&#038;p=73', 0, 'team_members', '', 0),
(74, 1, '2021-09-26 23:07:47', '2021-09-26 20:07:47', '', 'Larry Parker2', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2021-09-26 23:07:47', '2021-09-26 20:07:47', '', 73, 'http://localhost/mo-alaa/?p=74', 0, 'revision', '', 0),
(75, 1, '2021-09-27 00:37:58', '2021-09-26 21:37:58', '', 'Larry Parker3', '', 'publish', 'open', 'open', '', 'larry-parker3', '', '', '2021-09-27 00:37:58', '2021-09-26 21:37:58', '', 0, 'http://localhost/mo-alaa/?post_type=team_members&#038;p=75', 0, 'team_members', '', 0),
(76, 1, '2021-09-27 00:37:58', '2021-09-26 21:37:58', '', 'Larry Parker3', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2021-09-27 00:37:58', '2021-09-26 21:37:58', '', 75, 'http://localhost/mo-alaa/?p=76', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'غير مصنف', '%d8%ba%d9%8a%d8%b1-%d9%85%d8%b5%d9%86%d9%81', 0),
(2, 'Graphic Design', 'graphic-design', 0),
(3, 'Identity', 'identity', 0),
(4, 'Illustration', 'illustration', 0),
(5, 'Branding', 'branding', 0),
(6, 'Website Design', 'website-design', 0),
(7, 'Photography', 'photography', 0),
(8, 'Main Menu', 'main-menu', 0),
(9, 'Events', 'events', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 4, 0),
(21, 2, 0),
(24, 3, 0),
(26, 5, 0),
(30, 6, 0),
(32, 7, 0),
(41, 8, 0),
(42, 8, 0),
(43, 8, 0),
(44, 8, 0),
(46, 9, 0),
(52, 9, 0),
(55, 9, 0),
(57, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'project_category', '', 0, 1),
(3, 3, 'project_category', '', 0, 1),
(4, 4, 'project_category', '', 0, 1),
(5, 5, 'project_category', '', 0, 1),
(6, 6, 'project_category', '', 0, 1),
(7, 7, 'project_category', '', 0, 1),
(8, 8, 'nav_menu', '', 0, 4),
(9, 9, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"f5cd7ca64d223649d5aa7513556bed6ab5c9ed79ee95e0155c7ca68ac81fd61d\";a:4:{s:10:\"expiration\";i:1632793180;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:91.0) Gecko/20100101 Firefox/91.0\";s:5:\"login\";i:1632620380;}s:64:\"aa17df7689f272538e372f73d7df16a2e39c176dc2a8bfea2c9e3b1e679d1df6\";a:4:{s:10:\"expiration\";i:1632837825;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:91.0) Gecko/20100101 Firefox/91.0\";s:5:\"login\";i:1632665025;}s:64:\"d73118af36224c6f65352e0376c68e42375ed64365180f7038f7eb4f17a0885a\";a:4:{s:10:\"expiration\";i:1632881704;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:91.0) Gecko/20100101 Firefox/91.0\";s:5:\"login\";i:1632708904;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"postcustom\";}'),
(20, 1, 'metaboxhidden_page', 'a:6:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";i:4;s:10:\"postcustom\";i:5;s:12:\"revisionsdiv\";}'),
(21, 1, 'wp_user-settings', 'editor_expand=on&libraryContent=browse&mfold=o'),
(22, 1, 'wp_user-settings-time', '1632706821'),
(23, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:80:\"commentstatusdiv,commentsdiv,slugdiv,authordiv,postcustom,image_uploader_metabox\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_page', '2'),
(25, 1, 'closedpostboxes_project', 'a:0:{}'),
(26, 1, 'metaboxhidden_project', 'a:8:{i:0;s:13:\"pageparentdiv\";i:1;s:12:\"revisionsdiv\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-project\";i:1;s:12:\"add-post_tag\";i:2;s:20:\"add-project_category\";}'),
(29, 1, 'closedpostboxes_team_members', 'a:0:{}'),
(30, 1, 'metaboxhidden_team_members', 'a:8:{i:0;s:13:\"pageparentdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(31, 1, 'managetoplevel_page_wp_list_table_classcolumnshidden', 'a:0:{}'),
(32, 1, 'contacts_per_page', '5');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BnnNukJhwxqHVMvXsaTUXpiRD19pDQ/', 'admin', 'medo2012421@gmail.com', 'http://localhost/mo-alaa', '2021-09-26 01:37:32', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_contacts_list`
--
ALTER TABLE `wp_contacts_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_contacts_list`
--
ALTER TABLE `wp_contacts_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
