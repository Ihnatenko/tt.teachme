-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.4:3306
-- Час створення: Жов 28 2025 р., 22:13
-- Версія сервера: 8.4.6
-- Версія PHP: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `teachme`
--

-- --------------------------------------------------------

--
-- Структура таблиці `tc_commentmeta`
--

CREATE TABLE `tc_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `tc_comments`
--

CREATE TABLE `tc_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_comments`
--

INSERT INTO `tc_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://uk.wordpress.org/', '', '2025-10-23 18:45:24', '2025-10-23 15:45:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://uk.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `tc_links`
--

CREATE TABLE `tc_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `tc_options`
--

CREATE TABLE `tc_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_options`
--

INSERT INTO `tc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1761684346;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1761709561;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1761713123;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1761714923;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1761716723;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1761752746;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1761752761;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1761752765;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1761839732;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1761925546;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1762184712;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'https://teachme.loc', 'on'),
(3, 'home', 'https://teachme.loc', 'on'),
(4, 'blogname', 'TeachMe', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'test@test.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'd.m.Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'd.m.Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:2:{i:0;s:38:\"carbon-fields/carbon-fields-plugin.php\";i:1;s:25:\"tablepress/tablepress.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'teachme', 'on'),
(42, 'stylesheet', 'teachme', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'Europe/Kiev', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '2', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1776786323', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'tc_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:72:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:23:\"tablepress_edit_options\";b:1;s:28:\"tablepress_import_tables_url\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:44:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:28:\"tablepress_import_tables_url\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:19:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'uk', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:169:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Недавні записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:245:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Останні коментарі</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архіви</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:158:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Категорії</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.3\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:2:{s:22:\"uv3DZuPXSQf406kfKtoy5B\";a:2:{s:10:\"hashed_key\";s:49:\"$generic$iF_OzD02qnrncZeBuXnw5_wtlMTueXd1_beYQzgj\";s:10:\"created_at\";i:1761581078;}s:22:\"qi72mHITbAzmqDMskgs2Sp\";a:2:{s:10:\"hashed_key\";s:49:\"$generic$--pKHU-ps8lfPMZ1dUJeM3j2KdaUY7x7BbIn4F2R\";s:10:\"created_at\";i:1761680389;}}', 'off'),
(134, '_site_transient_timeout_browser_bfe921b394bf10c8d08c5999edfccc8d', '1761839164', 'off'),
(135, '_site_transient_browser_bfe921b394bf10c8d08c5999edfccc8d', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"144.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(136, '_site_transient_timeout_php_check_0de9299bebf1b4260c50ab073761d90c', '1761839164', 'off'),
(137, '_site_transient_php_check_0de9299bebf1b4260c50ab073761d90c', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(152, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1761238927;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(153, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"08a863f7f4395bf9a71ffe117c52266b\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(156, 'finished_updating_comment_type', '1', 'auto'),
(157, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(158, 'recently_activated', 'a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1761580076;}', 'off'),
(168, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:29:\"tablepress/libraries/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"2.12.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1761234954;s:11:\"plugin_path\";s:25:\"tablepress/tablepress.php\";}}s:7:\"abspath\";s:28:\"C:\\OSPanel\\home\\teachme.loc/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:25:\"tablepress/tablepress.php\";s:8:\"sdk_path\";s:29:\"tablepress/libraries/freemius\";s:7:\"version\";s:6:\"2.12.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1761234954;}}', 'auto'),
(169, 'fs_debug_mode', '', 'auto'),
(170, 'fs_accounts', 'a:7:{s:21:\"id_slug_type_path_map\";a:1:{i:10340;a:3:{s:4:\"slug\";s:10:\"tablepress\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"tablepress/tablepress.php\";}}s:11:\"plugin_data\";a:1:{s:10:\"tablepress\";a:17:{s:19:\"last_load_timestamp\";i:1761666801;s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"tablepress/tablepress.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1761234954;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:6:\"2.12.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.2.4\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";N;s:4:\"host\";s:11:\"teachme.loc\";s:9:\"server_ip\";s:10:\"127.0.1.11\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1761234954;s:7:\"version\";s:5:\"3.2.4\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1761234960;s:7:\"version\";s:5:\"3.2.4\";}}}s:13:\"file_slug_map\";a:1:{s:25:\"tablepress/tablepress.php\";s:10:\"tablepress\";}s:7:\"plugins\";a:1:{s:10:\"tablepress\";O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"10340\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_b215ca1bb4041cf43ed137ae7665b\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:10:\"TablePress\";s:4:\"slug\";s:10:\"tablepress\";s:12:\"premium_slug\";s:18:\"tablepress-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"tablepress/tablepress.php\";s:7:\"version\";s:5:\"3.2.4\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";a:3:{s:3:\"new\";b:1;s:7:\"updates\";b:0;s:9:\"localhost\";b:0;}}}s:12:\"gc_timestamp\";a:0:{}s:10:\"theme_data\";a:0:{}s:9:\"unique_id\";s:32:\"77118bbcb893d9b34d76984779792f08\";}', 'auto'),
(171, 'fs_api_cache', 'a:0:{}', 'off'),
(176, 'tablepress_plugin_options', '{\"plugin_options_db_version\":118,\"table_scheme_db_version\":3,\"prev_tablepress_version\":\"0\",\"tablepress_version\":\"3.2.4\",\"first_activation\":1761234955,\"message_plugin_update\":false,\"message_donation_nag\":true,\"use_custom_css\":false,\"use_custom_css_file\":false,\"custom_css\":\"\",\"custom_css_minified\":\"\",\"custom_css_version\":0,\"modules\":false}', 'auto'),
(181, 'tablepress_tables', '{\"last_id\":1,\"table_post\":{\"1\":9}}', 'auto');
INSERT INTO `tc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(189, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1761670011;s:15:\"version_checked\";s:5:\"6.8.3\";s:12:\"translations\";a:0:{}}', 'off'),
(190, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1761675805;s:7:\"checked\";a:1:{s:7:\"teachme\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(191, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:13:\"test@test.com\";s:7:\"version\";s:5:\"6.8.3\";s:9:\"timestamp\";i:1761237932;}', 'off'),
(195, 'db_upgraded', '', 'on'),
(196, 'can_compress_scripts', '1', 'on'),
(197, 'current_theme', 'TeachMe', 'auto'),
(198, 'theme_mods_teachme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(199, 'theme_switched', '', 'auto'),
(216, 'recovery_mode_email_last_sent', '1761680389', 'auto'),
(262, '_transient_timeout_tablepress_c_c4ca4238a0b923820dcc509a6f75849b', '1761839741', 'off'),
(263, '_transient_tablepress_c_c4ca4238a0b923820dcc509a6f75849b', '[\"tablepress_13e4a258c2c3a4b21f9102c175a15c51\"]', 'off'),
(264, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":5,\"critical\":0}', 'on'),
(285, 'acf_first_activated_version', '6.6.1', 'on'),
(286, 'acf_site_health', '{\"version\":\"6.6.1\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.8.3\",\"mysql_version\":\"8.4.6\",\"is_multisite\":false,\"active_theme\":{\"name\":\"TeachMe\",\"version\":\"\",\"theme_uri\":\"https:\\/\\/docs.google.com\\/document\\/d\\/1A68C_JK37URZJSgfo3ypY6UqDiFy0flljcOM5Yu4FeU\\/edit?tab=t.0\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.6.1\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"tablepress\\/tablepress.php\":{\"name\":\"TablePress\",\"version\":\"3.2.4\",\"plugin_uri\":\"https:\\/\\/tablepress.org\\/\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[],\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"4\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1761579912,\"last_updated\":1761579912}', 'off'),
(288, 'acf_version', '6.6.1', 'auto'),
(303, '_site_transient_timeout_fs_garbage_collection', '1761753216', 'off'),
(304, '_site_transient_fs_garbage_collection', '1', 'off'),
(305, '_transient_timeout_tablepress_13e4a258c2c3a4b21f9102c175a15c51', '1761753341', 'off'),
(306, '_transient_tablepress_13e4a258c2c3a4b21f9102c175a15c51', '\n<table id=\"tablepress-1\" class=\"tablepress tablepress-id-1\">\n<tbody class=\"row-striping row-hover\">\n<tr class=\"row-1\">\n	<td class=\"column-1\"></td><td class=\"column-2\">Lithuania</td><td class=\"column-3\">Czech</td><td class=\"column-4\">Poland</td><td class=\"column-5\">Slovakia</td><td class=\"column-6\">Estonia</td><td class=\"column-7\">MSB Canada</td><td class=\"column-8\">UAE</td>\n</tr>\n<tr class=\"row-2\">\n	<td class=\"column-1\">Ultricies quam id at rhoncus</td><td class=\"column-2\">Auctor non</td><td class=\"column-3\">Mi dignissim</td><td class=\"column-4\">Habitasse</td><td class=\"column-5\">Sed etiam nisi</td><td class=\"column-6\">Elementum ac</td><td class=\"column-7\">Purus</td><td class=\"column-8\">Purus amet</td>\n</tr>\n<tr class=\"row-3\">\n	<td class=\"column-1\">Aliquam nunc urna in</td><td class=\"column-2\">Nibh est</td><td class=\"column-3\">Pulvinar</td><td class=\"column-4\">Pharetra</td><td class=\"column-5\">Ullamcorper</td><td class=\"column-6\">Mauris elit</td><td class=\"column-7\">Ullamcorper</td><td class=\"column-8\">In sagittis sed</td>\n</tr>\n<tr class=\"row-4\">\n	<td class=\"column-1\">Eget diam rutrum mauris</td><td class=\"column-2\">Neque risus</td><td class=\"column-3\">Facilisis at</td><td class=\"column-4\">Mauris est</td><td class=\"column-5\">Leo cursus</td><td class=\"column-6\">Parturient</td><td class=\"column-7\">Dignissim</td><td class=\"column-8\">Ut iaculis</td>\n</tr>\n<tr class=\"row-5\">\n	<td class=\"column-1\">Mattis sed et sed mollis</td><td class=\"column-2\">Erat nunc</td><td class=\"column-3\">Consectetur</td><td class=\"column-4\">Congue in ut</td><td class=\"column-5\">Tristique nisl</td><td class=\"column-6\">Orci quam in</td><td class=\"column-7\">Praesent ut a</td><td class=\"column-8\">Neque mauris</td>\n</tr>\n<tr class=\"row-6\">\n	<td class=\"column-1\">Tellus sed arcu tellus massa</td><td class=\"column-2\">Sed</td><td class=\"column-3\">Nibh cursus</td><td class=\"column-4\">Consectetur</td><td class=\"column-5\">Mauris quam</td><td class=\"column-6\">Nisi dictumst</td><td class=\"column-7\">Vulputate ac</td><td class=\"column-8\">Ac interdum</td>\n</tr>\n<tr class=\"row-7\">\n	<td class=\"column-1\">Id rhoncus sollicitudin id</td><td class=\"column-2\">At justo</td><td class=\"column-3\">Habitasse</td><td class=\"column-4\">Sed porta</td><td class=\"column-5\">Risus egestas</td><td class=\"column-6\">Varius purus</td><td class=\"column-7\">Sit porta nec</td><td class=\"column-8\">Magna id</td>\n</tr>\n<tr class=\"row-8\">\n	<td class=\"column-1\">Aenean etiam orci eget</td><td class=\"column-2\">Pellentesque</td><td class=\"column-3\">Consectetur</td><td class=\"column-4\">Orci justo</td><td class=\"column-5\">Lacus</td><td class=\"column-6\">Nisi amet</td><td class=\"column-7\">Amet leo</td><td class=\"column-8\">Massa ut</td>\n</tr>\n<tr class=\"row-9\">\n	<td class=\"column-1\">Mattis adipiscing sit quis</td><td class=\"column-2\">Rutrum id</td><td class=\"column-3\">Enim</td><td class=\"column-4\">Pharetra amet</td><td class=\"column-5\">Sed tellus</td><td class=\"column-6\">Suscipit</td><td class=\"column-7\">Id rhoncus</td><td class=\"column-8\">Urna ut odio</td>\n</tr>\n<tr class=\"row-10\">\n	<td class=\"column-1\">Arcu at convallis malesuada</td><td class=\"column-2\">Tellus purus</td><td class=\"column-3\">Nunc</td><td class=\"column-4\">Scelerisque</td><td class=\"column-5\">Purus eget</td><td class=\"column-6\">Ipsum</td><td class=\"column-7\">Ut iaculis</td><td class=\"column-8\">Elit vel orci</td>\n</tr>\n</tbody>\n</table>\n', 'off'),
(316, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1761670011;s:8:\"response\";a:1:{s:25:\"tablepress/tablepress.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:24:\"w.org/plugins/tablepress\";s:4:\"slug\";s:10:\"tablepress\";s:6:\"plugin\";s:25:\"tablepress/tablepress.php\";s:11:\"new_version\";s:5:\"3.2.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/tablepress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/tablepress.3.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/tablepress/assets/icon.svg?rev=3192944\";s:3:\"svg\";s:55:\"https://ps.w.org/tablepress/assets/icon.svg?rev=3192944\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/tablepress/assets/banner-1544x500.png?rev=3192944\";s:2:\"1x\";s:65:\"https://ps.w.org/tablepress/assets/banner-772x250.png?rev=3192944\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/tablepress/assets/banner-1544x500-rtl.png?rev=3192944\";s:2:\"1x\";s:69:\"https://ps.w.org/tablepress/assets/banner-772x250-rtl.png?rev=3192944\";}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.8.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}s:14:\"upgrade_notice\";s:105:\"<p>This update is a security, maintenance, and compatibility release. Updating is highly recommended!</p>\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:2:{s:38:\"carbon-fields/carbon-fields-plugin.php\";s:5:\"3.6.5\";s:25:\"tablepress/tablepress.php\";s:5:\"3.2.4\";}}', 'off'),
(322, '_site_transient_timeout_theme_roots', '1761677605', 'off'),
(323, '_site_transient_theme_roots', 'a:1:{s:7:\"teachme\";s:7:\"/themes\";}', 'off'),
(336, '_site_transient_timeout_wp_theme_files_patterns-4cc4bee8b389f486fcdf000c190630a9', '1761683238', 'off'),
(337, '_site_transient_wp_theme_files_patterns-4cc4bee8b389f486fcdf000c190630a9', 'a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Структура таблиці `tc_postmeta`
--

CREATE TABLE `tc_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_postmeta`
--

INSERT INTO `tc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', ''),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1761680622:1'),
(5, 2, '_edit_last', '1'),
(7, 9, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":0,\"table_foot\":0,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":false,\"datatables_lengthchange\":false,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(8, 9, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1,1,1,1],\"columns\":[1,1,1,1,1,1,1,1]}'),
(10, 13, 'footnotes', ''),
(11, 14, 'footnotes', ''),
(13, 16, 'footnotes', ''),
(14, 2, 'footnotes', ''),
(15, 17, 'footnotes', ''),
(16, 18, '_edit_lock', '1761250346:1'),
(17, 18, '_wp_page_template', 'plugin.php'),
(18, 3, '_wp_trash_meta_status', 'draft'),
(19, 3, '_wp_trash_meta_time', '1761250262'),
(20, 3, '_wp_desired_post_slug', 'privacy-policy'),
(21, 21, 'footnotes', ''),
(23, 23, 'footnotes', ''),
(24, 18, '_wp_trash_meta_status', 'publish'),
(25, 18, '_wp_trash_meta_time', '1761250578'),
(26, 18, '_wp_desired_post_slug', 'plugin-table'),
(28, 25, 'footnotes', ''),
(30, 27, 'footnotes', ''),
(247, 27, '_tt_header|||0|value', '_'),
(248, 27, '_tt_header|||1|value', '_'),
(249, 27, '_tt_header|||2|value', '_'),
(250, 27, '_tt_header|||3|value', '_'),
(251, 27, '_tt_header|||4|value', '_'),
(252, 27, '_tt_header|||5|value', '_'),
(253, 27, '_tt_header|||6|value', '_'),
(254, 27, '_tt_header|tt_head|0|0|value', 'Lithuania'),
(255, 27, '_tt_header|tt_head|1|0|value', 'Czech'),
(256, 27, '_tt_header|tt_head|2|0|value', 'Poland'),
(257, 27, '_tt_header|tt_head|3|0|value', 'Slovakia'),
(258, 27, '_tt_header|tt_head|4|0|value', 'Estonia'),
(259, 27, '_tt_header|tt_head|5|0|value', 'MSB Canada'),
(260, 27, '_tt_header|tt_head|6|0|value', 'UAE'),
(261, 27, '_tt_table|||0|value', '_'),
(262, 27, '_tt_table|||1|value', '_'),
(263, 27, '_tt_table|||2|value', '_'),
(264, 27, '_tt_table|tt_name|0|0|value', 'Ultricies quam id at rhoncus'),
(265, 27, '_tt_table|tt_table_row|0|0|value', '_'),
(266, 27, '_tt_table|tt_table_row|0|1|value', '_'),
(267, 27, '_tt_table|tt_table_row|0|2|value', '_'),
(268, 27, '_tt_table|tt_table_row|0|3|value', '_'),
(269, 27, '_tt_table|tt_table_row|0|4|value', '_'),
(270, 27, '_tt_table|tt_table_row|0|5|value', '_'),
(271, 27, '_tt_table|tt_table_row|0|6|value', '_'),
(272, 27, '_tt_table|tt_table_row:tt_cell|0:0|0|value', 'Auctor non'),
(273, 27, '_tt_table|tt_table_row:tt_cell|0:1|0|value', 'Mi dignissim'),
(274, 27, '_tt_table|tt_table_row:tt_cell|0:2|0|value', 'Habitasse'),
(275, 27, '_tt_table|tt_table_row:tt_cell|0:3|0|value', 'Sed etiam nisi'),
(276, 27, '_tt_table|tt_table_row:tt_cell|0:4|0|value', 'Elementum ac'),
(277, 27, '_tt_table|tt_table_row:tt_cell|0:5|0|value', 'Purus'),
(278, 27, '_tt_table|tt_table_row:tt_cell|0:6|0|value', 'Purus amet'),
(279, 27, '_tt_table|tt_name|1|0|value', 'Aliquam nunc urna in'),
(280, 27, '_tt_table|tt_table_row|1|0|value', '_'),
(281, 27, '_tt_table|tt_table_row|1|1|value', '_'),
(282, 27, '_tt_table|tt_table_row|1|2|value', '_'),
(283, 27, '_tt_table|tt_table_row|1|3|value', '_'),
(284, 27, '_tt_table|tt_table_row|1|4|value', '_'),
(285, 27, '_tt_table|tt_table_row|1|5|value', '_'),
(286, 27, '_tt_table|tt_table_row|1|6|value', '_'),
(287, 27, '_tt_table|tt_table_row:tt_cell|1:0|0|value', 'Nibh est'),
(288, 27, '_tt_table|tt_table_row:tt_cell|1:1|0|value', 'Pulvinar'),
(289, 27, '_tt_table|tt_table_row:tt_cell|1:2|0|value', 'Pharetra'),
(290, 27, '_tt_table|tt_table_row:tt_cell|1:3|0|value', 'Ullamcorper'),
(291, 27, '_tt_table|tt_table_row:tt_cell|1:4|0|value', 'Mauris elit'),
(292, 27, '_tt_table|tt_table_row:tt_cell|1:5|0|value', 'Ullamcorper'),
(293, 27, '_tt_table|tt_table_row:tt_cell|1:6|0|value', 'In sagittis sed'),
(294, 27, '_tt_table|tt_name|2|0|value', 'Eget diam rutrum mauris'),
(295, 27, '_tt_table|tt_table_row|2|0|value', '_'),
(296, 27, '_tt_table|tt_table_row|2|1|value', '_'),
(297, 27, '_tt_table|tt_table_row|2|2|value', '_'),
(298, 27, '_tt_table|tt_table_row|2|3|value', '_'),
(299, 27, '_tt_table|tt_table_row|2|4|value', '_'),
(300, 27, '_tt_table|tt_table_row|2|5|value', '_'),
(301, 27, '_tt_table|tt_table_row|2|6|value', '_'),
(302, 27, '_tt_table|tt_table_row:tt_cell|2:0|0|value', 'Neque risus'),
(303, 27, '_tt_table|tt_table_row:tt_cell|2:1|0|value', 'Facilisis at'),
(304, 27, '_tt_table|tt_table_row:tt_cell|2:2|0|value', 'Mauris est'),
(305, 27, '_tt_table|tt_table_row:tt_cell|2:3|0|value', 'Leo cursus'),
(306, 27, '_tt_table|tt_table_row:tt_cell|2:4|0|value', 'Parturient'),
(307, 27, '_tt_table|tt_table_row:tt_cell|2:5|0|value', 'Dignissim'),
(308, 27, '_tt_table|tt_table_row:tt_cell|2:6|0|value', 'Ut iaculis'),
(310, 31, 'footnotes', ''),
(311, 2, '_tt_header|||0|value', '_'),
(312, 2, '_tt_header|||1|value', '_'),
(313, 2, '_tt_header|||2|value', '_'),
(314, 2, '_tt_header|||3|value', '_'),
(315, 2, '_tt_header|||4|value', '_'),
(316, 2, '_tt_header|||5|value', '_'),
(317, 2, '_tt_header|||6|value', '_'),
(318, 2, '_tt_header|tt_head|0|0|value', 'Lithuania'),
(319, 2, '_tt_header|tt_head|1|0|value', 'Czech'),
(320, 2, '_tt_header|tt_head|2|0|value', 'Poland'),
(321, 2, '_tt_header|tt_head|3|0|value', 'Slovakia'),
(322, 2, '_tt_header|tt_head|4|0|value', 'Estonia'),
(323, 2, '_tt_header|tt_head|5|0|value', 'MSB Canada'),
(324, 2, '_tt_header|tt_head|6|0|value', 'UAE'),
(325, 2, '_tt_table|||0|value', '_'),
(326, 2, '_tt_table|||1|value', '_'),
(327, 2, '_tt_table|||2|value', '_'),
(328, 2, '_tt_table|||3|value', '_'),
(329, 2, '_tt_table|||4|value', '_'),
(330, 2, '_tt_table|||5|value', '_'),
(331, 2, '_tt_table|||6|value', '_'),
(332, 2, '_tt_table|||7|value', '_'),
(333, 2, '_tt_table|||8|value', '_'),
(334, 2, '_tt_table|tt_name|0|0|value', 'Ultricies quam id at rhoncus'),
(335, 2, '_tt_table|tt_table_row|0|0|value', '_'),
(336, 2, '_tt_table|tt_table_row|0|1|value', '_'),
(337, 2, '_tt_table|tt_table_row|0|2|value', '_'),
(338, 2, '_tt_table|tt_table_row|0|3|value', '_'),
(339, 2, '_tt_table|tt_table_row|0|4|value', '_'),
(340, 2, '_tt_table|tt_table_row|0|5|value', '_'),
(341, 2, '_tt_table|tt_table_row|0|6|value', '_'),
(342, 2, '_tt_table|tt_table_row:tt_cell|0:0|0|value', 'Auctor non'),
(343, 2, '_tt_table|tt_table_row:tt_cell|0:1|0|value', 'Mi dignissim'),
(344, 2, '_tt_table|tt_table_row:tt_cell|0:2|0|value', 'Habitasse'),
(345, 2, '_tt_table|tt_table_row:tt_cell|0:3|0|value', 'Sed etiam nisi'),
(346, 2, '_tt_table|tt_table_row:tt_cell|0:4|0|value', 'Elementum ac'),
(347, 2, '_tt_table|tt_table_row:tt_cell|0:5|0|value', 'Purus'),
(348, 2, '_tt_table|tt_table_row:tt_cell|0:6|0|value', 'Purus amet'),
(349, 2, '_tt_table|tt_name|1|0|value', 'Aliquam nunc urna in'),
(350, 2, '_tt_table|tt_table_row|1|0|value', '_'),
(351, 2, '_tt_table|tt_table_row|1|1|value', '_'),
(352, 2, '_tt_table|tt_table_row|1|2|value', '_'),
(353, 2, '_tt_table|tt_table_row|1|3|value', '_'),
(354, 2, '_tt_table|tt_table_row|1|4|value', '_'),
(355, 2, '_tt_table|tt_table_row|1|5|value', '_'),
(356, 2, '_tt_table|tt_table_row|1|6|value', '_'),
(357, 2, '_tt_table|tt_table_row:tt_cell|1:0|0|value', 'Nibh est'),
(358, 2, '_tt_table|tt_table_row:tt_cell|1:1|0|value', 'Pulvinar'),
(359, 2, '_tt_table|tt_table_row:tt_cell|1:2|0|value', 'Pharetra'),
(360, 2, '_tt_table|tt_table_row:tt_cell|1:3|0|value', 'Ullamcorper'),
(361, 2, '_tt_table|tt_table_row:tt_cell|1:4|0|value', 'Mauris elit'),
(362, 2, '_tt_table|tt_table_row:tt_cell|1:5|0|value', 'Ullamcorper'),
(363, 2, '_tt_table|tt_table_row:tt_cell|1:6|0|value', 'In sagittis sed'),
(364, 2, '_tt_table|tt_name|2|0|value', 'Eget diam rutrum mauris'),
(365, 2, '_tt_table|tt_table_row|2|0|value', '_'),
(366, 2, '_tt_table|tt_table_row|2|1|value', '_'),
(367, 2, '_tt_table|tt_table_row|2|2|value', '_'),
(368, 2, '_tt_table|tt_table_row|2|3|value', '_'),
(369, 2, '_tt_table|tt_table_row|2|4|value', '_'),
(370, 2, '_tt_table|tt_table_row|2|5|value', '_'),
(371, 2, '_tt_table|tt_table_row|2|6|value', '_'),
(372, 2, '_tt_table|tt_table_row:tt_cell|2:0|0|value', 'Neque risus'),
(373, 2, '_tt_table|tt_table_row:tt_cell|2:1|0|value', 'Facilisis at'),
(374, 2, '_tt_table|tt_table_row:tt_cell|2:2|0|value', 'Mauris est'),
(375, 2, '_tt_table|tt_table_row:tt_cell|2:3|0|value', 'Leo cursus'),
(376, 2, '_tt_table|tt_table_row:tt_cell|2:4|0|value', 'Parturient'),
(377, 2, '_tt_table|tt_table_row:tt_cell|2:5|0|value', 'Dignissim'),
(378, 2, '_tt_table|tt_table_row:tt_cell|2:6|0|value', 'Ut iaculis'),
(379, 2, '_tt_table|tt_name|3|0|value', 'Mattis sed et sed mollis'),
(380, 2, '_tt_table|tt_table_row|3|0|value', '_'),
(381, 2, '_tt_table|tt_table_row|3|1|value', '_'),
(382, 2, '_tt_table|tt_table_row|3|2|value', '_'),
(383, 2, '_tt_table|tt_table_row|3|3|value', '_'),
(384, 2, '_tt_table|tt_table_row|3|4|value', '_'),
(385, 2, '_tt_table|tt_table_row|3|5|value', '_'),
(386, 2, '_tt_table|tt_table_row|3|6|value', '_'),
(387, 2, '_tt_table|tt_table_row:tt_cell|3:0|0|value', 'Erat nunc'),
(388, 2, '_tt_table|tt_table_row:tt_cell|3:1|0|value', 'Consectetur'),
(389, 2, '_tt_table|tt_table_row:tt_cell|3:2|0|value', 'Congue in ut'),
(390, 2, '_tt_table|tt_table_row:tt_cell|3:3|0|value', 'Tristique nisl'),
(391, 2, '_tt_table|tt_table_row:tt_cell|3:4|0|value', 'Orci quam in'),
(392, 2, '_tt_table|tt_table_row:tt_cell|3:5|0|value', 'Praesent ut a'),
(393, 2, '_tt_table|tt_table_row:tt_cell|3:6|0|value', 'Neque mauris'),
(394, 2, '_tt_table|tt_name|4|0|value', 'Tellus sed arcu tellus massa'),
(395, 2, '_tt_table|tt_table_row|4|0|value', '_'),
(396, 2, '_tt_table|tt_table_row|4|1|value', '_'),
(397, 2, '_tt_table|tt_table_row|4|2|value', '_'),
(398, 2, '_tt_table|tt_table_row|4|3|value', '_'),
(399, 2, '_tt_table|tt_table_row|4|4|value', '_'),
(400, 2, '_tt_table|tt_table_row|4|5|value', '_'),
(401, 2, '_tt_table|tt_table_row|4|6|value', '_'),
(402, 2, '_tt_table|tt_table_row:tt_cell|4:0|0|value', 'Sed'),
(403, 2, '_tt_table|tt_table_row:tt_cell|4:1|0|value', 'Nibh cursus'),
(404, 2, '_tt_table|tt_table_row:tt_cell|4:2|0|value', 'Consectetur'),
(405, 2, '_tt_table|tt_table_row:tt_cell|4:3|0|value', 'Mauris quam'),
(406, 2, '_tt_table|tt_table_row:tt_cell|4:4|0|value', 'Nisi dictumst'),
(407, 2, '_tt_table|tt_table_row:tt_cell|4:5|0|value', 'Vulputate ac'),
(408, 2, '_tt_table|tt_table_row:tt_cell|4:6|0|value', 'Ac interdum'),
(409, 2, '_tt_table|tt_name|5|0|value', 'Id rhoncus sollicitudin id'),
(410, 2, '_tt_table|tt_table_row|5|0|value', '_'),
(411, 2, '_tt_table|tt_table_row|5|1|value', '_'),
(412, 2, '_tt_table|tt_table_row|5|2|value', '_'),
(413, 2, '_tt_table|tt_table_row|5|3|value', '_'),
(414, 2, '_tt_table|tt_table_row|5|4|value', '_'),
(415, 2, '_tt_table|tt_table_row|5|5|value', '_'),
(416, 2, '_tt_table|tt_table_row|5|6|value', '_'),
(417, 2, '_tt_table|tt_table_row:tt_cell|5:0|0|value', 'At justo'),
(418, 2, '_tt_table|tt_table_row:tt_cell|5:1|0|value', 'Habitasse'),
(419, 2, '_tt_table|tt_table_row:tt_cell|5:2|0|value', 'Sed porta'),
(420, 2, '_tt_table|tt_table_row:tt_cell|5:3|0|value', 'Risus egestas'),
(421, 2, '_tt_table|tt_table_row:tt_cell|5:4|0|value', 'Varius purus'),
(422, 2, '_tt_table|tt_table_row:tt_cell|5:5|0|value', 'Sit porta nec'),
(423, 2, '_tt_table|tt_table_row:tt_cell|5:6|0|value', 'Magna id'),
(424, 2, '_tt_table|tt_name|6|0|value', 'Aenean etiam orci eget'),
(425, 2, '_tt_table|tt_table_row|6|0|value', '_'),
(426, 2, '_tt_table|tt_table_row|6|1|value', '_'),
(427, 2, '_tt_table|tt_table_row|6|2|value', '_'),
(428, 2, '_tt_table|tt_table_row|6|3|value', '_'),
(429, 2, '_tt_table|tt_table_row|6|4|value', '_'),
(430, 2, '_tt_table|tt_table_row|6|5|value', '_'),
(431, 2, '_tt_table|tt_table_row|6|6|value', '_'),
(432, 2, '_tt_table|tt_table_row:tt_cell|6:0|0|value', 'Pellentesque'),
(433, 2, '_tt_table|tt_table_row:tt_cell|6:1|0|value', 'Consectetur'),
(434, 2, '_tt_table|tt_table_row:tt_cell|6:2|0|value', 'Orci justo'),
(435, 2, '_tt_table|tt_table_row:tt_cell|6:3|0|value', 'Lacus'),
(436, 2, '_tt_table|tt_table_row:tt_cell|6:4|0|value', 'Nisi amet'),
(437, 2, '_tt_table|tt_table_row:tt_cell|6:5|0|value', 'Amet leo'),
(438, 2, '_tt_table|tt_table_row:tt_cell|6:6|0|value', 'Massa ut'),
(439, 2, '_tt_table|tt_name|7|0|value', 'Mattis adipiscing sit quis'),
(440, 2, '_tt_table|tt_table_row|7|0|value', '_'),
(441, 2, '_tt_table|tt_table_row|7|1|value', '_'),
(442, 2, '_tt_table|tt_table_row|7|2|value', '_'),
(443, 2, '_tt_table|tt_table_row|7|3|value', '_'),
(444, 2, '_tt_table|tt_table_row|7|4|value', '_'),
(445, 2, '_tt_table|tt_table_row|7|5|value', '_'),
(446, 2, '_tt_table|tt_table_row|7|6|value', '_'),
(447, 2, '_tt_table|tt_table_row:tt_cell|7:0|0|value', 'Rutrum id'),
(448, 2, '_tt_table|tt_table_row:tt_cell|7:1|0|value', 'Enim'),
(449, 2, '_tt_table|tt_table_row:tt_cell|7:2|0|value', 'Pharetra amet'),
(450, 2, '_tt_table|tt_table_row:tt_cell|7:3|0|value', 'Sed tellus'),
(451, 2, '_tt_table|tt_table_row:tt_cell|7:4|0|value', 'Suscipit'),
(452, 2, '_tt_table|tt_table_row:tt_cell|7:5|0|value', 'Id rhoncus'),
(453, 2, '_tt_table|tt_table_row:tt_cell|7:6|0|value', 'Urna ut odio'),
(454, 2, '_tt_table|tt_name|8|0|value', 'Arcu at convallis malesuada'),
(455, 2, '_tt_table|tt_table_row|8|0|value', '_'),
(456, 2, '_tt_table|tt_table_row|8|1|value', '_'),
(457, 2, '_tt_table|tt_table_row|8|2|value', '_'),
(458, 2, '_tt_table|tt_table_row|8|3|value', '_'),
(459, 2, '_tt_table|tt_table_row|8|4|value', '_'),
(460, 2, '_tt_table|tt_table_row|8|5|value', '_'),
(461, 2, '_tt_table|tt_table_row|8|6|value', '_'),
(462, 2, '_tt_table|tt_table_row:tt_cell|8:0|0|value', 'Tellus purus'),
(463, 2, '_tt_table|tt_table_row:tt_cell|8:1|0|value', 'Nunc'),
(464, 2, '_tt_table|tt_table_row:tt_cell|8:2|0|value', 'Scelerisque'),
(465, 2, '_tt_table|tt_table_row:tt_cell|8:3|0|value', 'Purus eget'),
(466, 2, '_tt_table|tt_table_row:tt_cell|8:4|0|value', 'Ipsum'),
(467, 2, '_tt_table|tt_table_row:tt_cell|8:5|0|value', 'Ut iaculis'),
(468, 2, '_tt_table|tt_table_row:tt_cell|8:6|0|value', 'Elit vel orci'),
(469, 31, '_tt_header|||0|value', '_'),
(470, 31, '_tt_header|||1|value', '_'),
(471, 31, '_tt_header|||2|value', '_'),
(472, 31, '_tt_header|||3|value', '_'),
(473, 31, '_tt_header|||4|value', '_'),
(474, 31, '_tt_header|||5|value', '_'),
(475, 31, '_tt_header|||6|value', '_'),
(476, 31, '_tt_header|tt_head|0|0|value', 'Lithuania'),
(477, 31, '_tt_header|tt_head|1|0|value', 'Czech'),
(478, 31, '_tt_header|tt_head|2|0|value', 'Poland'),
(479, 31, '_tt_header|tt_head|3|0|value', 'Slovakia'),
(480, 31, '_tt_header|tt_head|4|0|value', 'Estonia'),
(481, 31, '_tt_header|tt_head|5|0|value', 'MSB Canada'),
(482, 31, '_tt_header|tt_head|6|0|value', 'UAE'),
(483, 31, '_tt_table|||0|value', '_'),
(484, 31, '_tt_table|||1|value', '_'),
(485, 31, '_tt_table|||2|value', '_'),
(486, 31, '_tt_table|||3|value', '_'),
(487, 31, '_tt_table|||4|value', '_'),
(488, 31, '_tt_table|||5|value', '_'),
(489, 31, '_tt_table|||6|value', '_'),
(490, 31, '_tt_table|||7|value', '_'),
(491, 31, '_tt_table|||8|value', '_'),
(492, 31, '_tt_table|tt_name|0|0|value', 'Ultricies quam id at rhoncus'),
(493, 31, '_tt_table|tt_table_row|0|0|value', '_'),
(494, 31, '_tt_table|tt_table_row|0|1|value', '_'),
(495, 31, '_tt_table|tt_table_row|0|2|value', '_'),
(496, 31, '_tt_table|tt_table_row|0|3|value', '_'),
(497, 31, '_tt_table|tt_table_row|0|4|value', '_'),
(498, 31, '_tt_table|tt_table_row|0|5|value', '_'),
(499, 31, '_tt_table|tt_table_row|0|6|value', '_'),
(500, 31, '_tt_table|tt_table_row:tt_cell|0:0|0|value', 'Auctor non'),
(501, 31, '_tt_table|tt_table_row:tt_cell|0:1|0|value', 'Mi dignissim'),
(502, 31, '_tt_table|tt_table_row:tt_cell|0:2|0|value', 'Habitasse'),
(503, 31, '_tt_table|tt_table_row:tt_cell|0:3|0|value', 'Sed etiam nisi'),
(504, 31, '_tt_table|tt_table_row:tt_cell|0:4|0|value', 'Elementum ac'),
(505, 31, '_tt_table|tt_table_row:tt_cell|0:5|0|value', 'Purus'),
(506, 31, '_tt_table|tt_table_row:tt_cell|0:6|0|value', 'Purus amet'),
(507, 31, '_tt_table|tt_name|1|0|value', 'Aliquam nunc urna in'),
(508, 31, '_tt_table|tt_table_row|1|0|value', '_'),
(509, 31, '_tt_table|tt_table_row|1|1|value', '_'),
(510, 31, '_tt_table|tt_table_row|1|2|value', '_'),
(511, 31, '_tt_table|tt_table_row|1|3|value', '_'),
(512, 31, '_tt_table|tt_table_row|1|4|value', '_'),
(513, 31, '_tt_table|tt_table_row|1|5|value', '_'),
(514, 31, '_tt_table|tt_table_row|1|6|value', '_'),
(515, 31, '_tt_table|tt_table_row:tt_cell|1:0|0|value', 'Nibh est'),
(516, 31, '_tt_table|tt_table_row:tt_cell|1:1|0|value', 'Pulvinar'),
(517, 31, '_tt_table|tt_table_row:tt_cell|1:2|0|value', 'Pharetra'),
(518, 31, '_tt_table|tt_table_row:tt_cell|1:3|0|value', 'Ullamcorper'),
(519, 31, '_tt_table|tt_table_row:tt_cell|1:4|0|value', 'Mauris elit'),
(520, 31, '_tt_table|tt_table_row:tt_cell|1:5|0|value', 'Ullamcorper'),
(521, 31, '_tt_table|tt_table_row:tt_cell|1:6|0|value', 'In sagittis sed'),
(522, 31, '_tt_table|tt_name|2|0|value', 'Eget diam rutrum mauris'),
(523, 31, '_tt_table|tt_table_row|2|0|value', '_'),
(524, 31, '_tt_table|tt_table_row|2|1|value', '_'),
(525, 31, '_tt_table|tt_table_row|2|2|value', '_'),
(526, 31, '_tt_table|tt_table_row|2|3|value', '_'),
(527, 31, '_tt_table|tt_table_row|2|4|value', '_'),
(528, 31, '_tt_table|tt_table_row|2|5|value', '_'),
(529, 31, '_tt_table|tt_table_row|2|6|value', '_'),
(530, 31, '_tt_table|tt_table_row:tt_cell|2:0|0|value', 'Neque risus'),
(531, 31, '_tt_table|tt_table_row:tt_cell|2:1|0|value', 'Facilisis at'),
(532, 31, '_tt_table|tt_table_row:tt_cell|2:2|0|value', 'Mauris est'),
(533, 31, '_tt_table|tt_table_row:tt_cell|2:3|0|value', 'Leo cursus'),
(534, 31, '_tt_table|tt_table_row:tt_cell|2:4|0|value', 'Parturient'),
(535, 31, '_tt_table|tt_table_row:tt_cell|2:5|0|value', 'Dignissim'),
(536, 31, '_tt_table|tt_table_row:tt_cell|2:6|0|value', 'Ut iaculis'),
(537, 31, '_tt_table|tt_name|3|0|value', 'Mattis sed et sed mollis'),
(538, 31, '_tt_table|tt_table_row|3|0|value', '_'),
(539, 31, '_tt_table|tt_table_row|3|1|value', '_'),
(540, 31, '_tt_table|tt_table_row|3|2|value', '_'),
(541, 31, '_tt_table|tt_table_row|3|3|value', '_'),
(542, 31, '_tt_table|tt_table_row|3|4|value', '_'),
(543, 31, '_tt_table|tt_table_row|3|5|value', '_'),
(544, 31, '_tt_table|tt_table_row|3|6|value', '_'),
(545, 31, '_tt_table|tt_table_row:tt_cell|3:0|0|value', 'Erat nunc'),
(546, 31, '_tt_table|tt_table_row:tt_cell|3:1|0|value', 'Consectetur'),
(547, 31, '_tt_table|tt_table_row:tt_cell|3:2|0|value', 'Congue in ut'),
(548, 31, '_tt_table|tt_table_row:tt_cell|3:3|0|value', 'Tristique nisl'),
(549, 31, '_tt_table|tt_table_row:tt_cell|3:4|0|value', 'Orci quam in'),
(550, 31, '_tt_table|tt_table_row:tt_cell|3:5|0|value', 'Praesent ut a'),
(551, 31, '_tt_table|tt_table_row:tt_cell|3:6|0|value', 'Neque mauris'),
(552, 31, '_tt_table|tt_name|4|0|value', 'Tellus sed arcu tellus massa'),
(553, 31, '_tt_table|tt_table_row|4|0|value', '_'),
(554, 31, '_tt_table|tt_table_row|4|1|value', '_'),
(555, 31, '_tt_table|tt_table_row|4|2|value', '_'),
(556, 31, '_tt_table|tt_table_row|4|3|value', '_'),
(557, 31, '_tt_table|tt_table_row|4|4|value', '_'),
(558, 31, '_tt_table|tt_table_row|4|5|value', '_'),
(559, 31, '_tt_table|tt_table_row|4|6|value', '_'),
(560, 31, '_tt_table|tt_table_row:tt_cell|4:0|0|value', 'Sed'),
(561, 31, '_tt_table|tt_table_row:tt_cell|4:1|0|value', 'Nibh cursus'),
(562, 31, '_tt_table|tt_table_row:tt_cell|4:2|0|value', 'Consectetur'),
(563, 31, '_tt_table|tt_table_row:tt_cell|4:3|0|value', 'Mauris quam'),
(564, 31, '_tt_table|tt_table_row:tt_cell|4:4|0|value', 'Nisi dictumst'),
(565, 31, '_tt_table|tt_table_row:tt_cell|4:5|0|value', 'Vulputate ac'),
(566, 31, '_tt_table|tt_table_row:tt_cell|4:6|0|value', 'Ac interdum'),
(567, 31, '_tt_table|tt_name|5|0|value', 'Id rhoncus sollicitudin id'),
(568, 31, '_tt_table|tt_table_row|5|0|value', '_'),
(569, 31, '_tt_table|tt_table_row|5|1|value', '_'),
(570, 31, '_tt_table|tt_table_row|5|2|value', '_'),
(571, 31, '_tt_table|tt_table_row|5|3|value', '_'),
(572, 31, '_tt_table|tt_table_row|5|4|value', '_'),
(573, 31, '_tt_table|tt_table_row|5|5|value', '_'),
(574, 31, '_tt_table|tt_table_row|5|6|value', '_'),
(575, 31, '_tt_table|tt_table_row:tt_cell|5:0|0|value', 'At justo'),
(576, 31, '_tt_table|tt_table_row:tt_cell|5:1|0|value', 'Habitasse'),
(577, 31, '_tt_table|tt_table_row:tt_cell|5:2|0|value', 'Sed porta'),
(578, 31, '_tt_table|tt_table_row:tt_cell|5:3|0|value', 'Risus egestas'),
(579, 31, '_tt_table|tt_table_row:tt_cell|5:4|0|value', 'Varius purus'),
(580, 31, '_tt_table|tt_table_row:tt_cell|5:5|0|value', 'Sit porta nec'),
(581, 31, '_tt_table|tt_table_row:tt_cell|5:6|0|value', 'Magna id'),
(582, 31, '_tt_table|tt_name|6|0|value', 'Aenean etiam orci eget'),
(583, 31, '_tt_table|tt_table_row|6|0|value', '_'),
(584, 31, '_tt_table|tt_table_row|6|1|value', '_'),
(585, 31, '_tt_table|tt_table_row|6|2|value', '_'),
(586, 31, '_tt_table|tt_table_row|6|3|value', '_'),
(587, 31, '_tt_table|tt_table_row|6|4|value', '_'),
(588, 31, '_tt_table|tt_table_row|6|5|value', '_'),
(589, 31, '_tt_table|tt_table_row|6|6|value', '_'),
(590, 31, '_tt_table|tt_table_row:tt_cell|6:0|0|value', 'Pellentesque'),
(591, 31, '_tt_table|tt_table_row:tt_cell|6:1|0|value', 'Consectetur'),
(592, 31, '_tt_table|tt_table_row:tt_cell|6:2|0|value', 'Orci justo'),
(593, 31, '_tt_table|tt_table_row:tt_cell|6:3|0|value', 'Lacus'),
(594, 31, '_tt_table|tt_table_row:tt_cell|6:4|0|value', 'Nisi amet'),
(595, 31, '_tt_table|tt_table_row:tt_cell|6:5|0|value', 'Amet leo'),
(596, 31, '_tt_table|tt_table_row:tt_cell|6:6|0|value', 'Massa ut'),
(597, 31, '_tt_table|tt_name|7|0|value', 'Mattis adipiscing sit quis'),
(598, 31, '_tt_table|tt_table_row|7|0|value', '_'),
(599, 31, '_tt_table|tt_table_row|7|1|value', '_'),
(600, 31, '_tt_table|tt_table_row|7|2|value', '_'),
(601, 31, '_tt_table|tt_table_row|7|3|value', '_'),
(602, 31, '_tt_table|tt_table_row|7|4|value', '_'),
(603, 31, '_tt_table|tt_table_row|7|5|value', '_'),
(604, 31, '_tt_table|tt_table_row|7|6|value', '_'),
(605, 31, '_tt_table|tt_table_row:tt_cell|7:0|0|value', 'Rutrum id'),
(606, 31, '_tt_table|tt_table_row:tt_cell|7:1|0|value', 'Enim'),
(607, 31, '_tt_table|tt_table_row:tt_cell|7:2|0|value', 'Pharetra amet'),
(608, 31, '_tt_table|tt_table_row:tt_cell|7:3|0|value', 'Sed tellus'),
(609, 31, '_tt_table|tt_table_row:tt_cell|7:4|0|value', 'Suscipit'),
(610, 31, '_tt_table|tt_table_row:tt_cell|7:5|0|value', 'Id rhoncus'),
(611, 31, '_tt_table|tt_table_row:tt_cell|7:6|0|value', 'Urna ut odio'),
(612, 31, '_tt_table|tt_name|8|0|value', 'Arcu at convallis malesuada'),
(613, 31, '_tt_table|tt_table_row|8|0|value', '_'),
(614, 31, '_tt_table|tt_table_row|8|1|value', '_'),
(615, 31, '_tt_table|tt_table_row|8|2|value', '_'),
(616, 31, '_tt_table|tt_table_row|8|3|value', '_'),
(617, 31, '_tt_table|tt_table_row|8|4|value', '_'),
(618, 31, '_tt_table|tt_table_row|8|5|value', '_'),
(619, 31, '_tt_table|tt_table_row|8|6|value', '_'),
(620, 31, '_tt_table|tt_table_row:tt_cell|8:0|0|value', 'Tellus purus'),
(621, 31, '_tt_table|tt_table_row:tt_cell|8:1|0|value', 'Nunc'),
(622, 31, '_tt_table|tt_table_row:tt_cell|8:2|0|value', 'Scelerisque'),
(623, 31, '_tt_table|tt_table_row:tt_cell|8:3|0|value', 'Purus eget'),
(624, 31, '_tt_table|tt_table_row:tt_cell|8:4|0|value', 'Ipsum'),
(625, 31, '_tt_table|tt_table_row:tt_cell|8:5|0|value', 'Ut iaculis'),
(626, 31, '_tt_table|tt_table_row:tt_cell|8:6|0|value', 'Elit vel orci');

-- --------------------------------------------------------

--
-- Структура таблиці `tc_posts`
--

CREATE TABLE `tc_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_posts`
--

INSERT INTO `tc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-10-23 18:45:24', '2025-10-23 15:45:24', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82', '', '', '2025-10-23 18:45:24', '2025-10-23 15:45:24', '', 0, 'https://teachme.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2025-10-23 18:45:24', '2025-10-23 15:45:24', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td></td><td>Lithuania</td><td>Czech</td><td>Poland</td><td>Slovakia</td><td>Estonia</td><td>MSB Canada</td><td>UAE</td></tr><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'Таблиці', '', 'publish', 'closed', 'closed', '', 'tables', '', '', '2025-10-27 18:31:30', '2025-10-27 16:31:30', '', 0, 'https://teachme.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-10-23 18:45:24', '2025-10-23 15:45:24', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Хто ми</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Наша адреса сайту: https://teachme.loc.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Коментарі</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медіафайли</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Вбудований вміст з інших веб-сайтів</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">З ким ми ділимося вашими даними</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви запросите скидання паролю, ваш IP буде вказано в email-повідомленні про скидання.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Як довго ми зберігаємо ваші дані</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Які права ви маєте відносно своїх даних</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куди відправляються ваші дані</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p>\n<!-- /wp:paragraph -->\n', 'Політика конфіденційності', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2025-10-23 23:11:02', '2025-10-23 20:11:02', '', 0, 'https://teachme.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2025-10-23 18:46:05', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-10-23 18:46:05', '0000-00-00 00:00:00', '', 0, 'https://teachme.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2025-10-23 18:46:09', '2025-10-23 15:46:09', '<!-- wp:page-list /-->', 'Навігація', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-10-23 18:46:09', '2025-10-23 15:46:09', '', 0, 'https://teachme.loc/?p=5', 0, 'wp_navigation', '', 0),
(6, 1, '2025-10-23 18:56:09', '2025-10-23 15:56:09', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfive', '', '', '2025-10-23 18:56:09', '2025-10-23 15:56:09', '', 0, 'https://teachme.loc/?p=6', 0, 'wp_global_styles', '', 0),
(8, 1, '2025-10-23 18:58:17', '2025-10-23 15:58:17', '', 'Таблиця', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 18:58:17', '2025-10-23 15:58:17', '', 2, 'https://teachme.loc/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-10-23 18:58:58', '2025-10-23 15:58:58', '[[\"\",\"Lithuania\",\"Czech\",\"Poland\",\"Slovakia\",\"Estonia\",\"MSB Canada\",\"UAE\"],[\"Ultricies quam id at rhoncus\",\"Auctor non\",\"Mi dignissim\",\"Habitasse\",\"Sed etiam nisi\",\"Elementum ac\",\"Purus\",\"Purus amet\"],[\"Aliquam nunc urna in\",\"Nibh est\",\"Pulvinar\",\"Pharetra\",\"Ullamcorper\",\"Mauris elit\",\"Ullamcorper\",\"In sagittis sed\"],[\"Eget diam rutrum mauris\",\"Neque risus\",\"Facilisis at\",\"Mauris est\",\"Leo cursus\",\"Parturient\",\"Dignissim\",\"Ut iaculis\"],[\"Mattis sed et sed mollis\",\"Erat nunc\",\"Consectetur\",\"Congue in ut\",\"Tristique nisl\",\"Orci quam in\",\"Praesent ut a\",\"Neque mauris\"],[\"Tellus sed arcu tellus massa\",\"Sed\",\"Nibh cursus\",\"Consectetur\",\"Mauris quam\",\"Nisi dictumst\",\"Vulputate ac\",\"Ac interdum\"],[\"Id rhoncus sollicitudin id\",\"At justo\",\"Habitasse\",\"Sed porta\",\"Risus egestas\",\"Varius purus\",\"Sit porta nec\",\"Magna id\"],[\"Aenean etiam orci eget\",\"Pellentesque\",\"Consectetur\",\"Orci justo\",\"Lacus\",\"Nisi amet\",\"Amet leo\",\"Massa ut\"],[\"Mattis adipiscing sit quis\",\"Rutrum id\",\"Enim\",\"Pharetra amet\",\"Sed tellus\",\"Suscipit\",\"Id rhoncus\",\"Urna ut odio\"],[\"Arcu at convallis malesuada\",\"Tellus purus\",\"Nunc\",\"Scelerisque\",\"Purus eget\",\"Ipsum\",\"Ut iaculis\",\"Elit vel orci\"]]', 'Таблиця додана задопомогою плагіна', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b0%d0%b1%d0%bb%d0%b8%d1%86%d1%8f-%d0%b4%d0%be%d0%b4%d0%b0%d0%bd%d0%b0-%d0%b7%d0%b0%d0%b4%d0%be%d0%bf%d0%be%d0%bc%d0%be%d0%b3%d0%be%d1%8e-%d0%bf%d0%bb%d0%b0%d0%b3%d1%96%d0%bd%d0%b0', '', '', '2025-10-23 23:43:26', '2025-10-23 20:43:26', '', 0, 'https://teachme.loc/?post_type=tablepress_table&#038;p=9', 0, 'tablepress_table', 'application/json', 0),
(10, 1, '2025-10-23 19:01:37', '2025-10-23 16:01:37', '[[\"\",\"Lithuania\",\"Lithuania\",\"Lithuania\",\"Lithuania\"],[\"Nunc faucibus morbi\",\"Czech\",\"Czech\",\"Czech\",\"Czech\"],[\"\",\"Poland\",\"Poland\",\"Poland\",\"Poland\"],[\"\",\"Slovakia\",\"Slovakia\",\"Slovakia\",\"Slovakia\"],[\"\",\"Estonia\",\"Estonia\",\"Estonia\",\"Estonia\"],[\"\",\"MSB Canada\",\"MSB Canada\",\"MSB Canada\",\"MSB Canada\"],[\"\",\"UAE\",\"UAE\",\"UAE\",\"UAE\"]]', 'Таблиця додана задопомогою плагіна', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2025-10-23 19:01:37', '2025-10-23 16:01:37', '', 9, 'https://teachme.loc/?p=10', 0, 'revision', '', 0),
(11, 1, '2025-10-23 19:54:37', '2025-10-23 16:54:37', '[[\"\",\"Lithuania\",\"Czech\",\"Poland\",\"Slovakia\",\"Estonia\",\"MSB Canada\",\"UAE\"],[\"Ultricies quam id at rhoncus\",\"Auctor non\",\"Mi dignissim\",\"Habitasse\",\"Sed etiam nisi\",\"Elementum ac\",\"Purus\",\"Purus amet\"],[\"Aliquam nunc urna in\",\"Nibh est\",\"Pulvinar\",\"Pharetra\",\"Ullamcorper\",\"Mauris elit\",\"Ullamcorper\",\"In sagittis sed\"],[\"Eget diam rutrum mauris\",\"Neque risus\",\"Facilisis at\",\"Mauris est\",\"Leo cursus\",\"Parturient\",\"Dignissim\",\"Ut iaculis\"],[\"Mattis sed et sed mollis\",\"Erat nunc\",\"Consectetur\",\"Congue in ut\",\"Tristique nisl\",\"Orci quam in\",\"Praesent ut a\",\"Neque mauris\"],[\"Tellus sed arcu tellus massa\",\"Sed\",\"Nibh cursus\",\"Consectetur\",\"Mauris quam\",\"Nisi dictumst\",\"Vulputate ac\",\"Ac interdum\"],[\"Id rhoncus sollicitudin id\",\"At justo\",\"Habitasse\",\"Sed porta\",\"Risus egestas\",\"Varius purus\",\"Sit porta nec\",\"Magna id\"],[\"Aenean etiam orci eget\",\"Pellentesque\",\"Consectetur\",\"Orci justo\",\"Lacus\",\"Nisi amet\",\"Amet leo\",\"Massa ut\"],[\"Mattis adipiscing sit quis\",\"Rutrum id\",\"Enim\",\"Pharetra amet\",\"Sed tellus\",\"Suscipit\",\"Id rhoncus\",\"Urna ut odio\"],[\"Arcu at convallis malesuada\",\"Tellus purus\",\"Nunc\",\"Scelerisque\",\"Purus eget\",\"Ipsum\",\"Ut iaculis\",\"Elit vel orci\"]]', 'Таблиця додана задопомогою плагіна', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2025-10-23 19:54:37', '2025-10-23 16:54:37', '', 9, 'https://teachme.loc/?p=11', 0, 'revision', '', 0),
(13, 1, '2025-10-23 22:47:24', '2025-10-23 19:47:24', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиця', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 22:47:24', '2025-10-23 19:47:24', '', 2, 'https://teachme.loc/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-10-23 22:57:25', '2025-10-23 19:57:25', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиця', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 22:57:25', '2025-10-23 19:57:25', '', 2, 'https://teachme.loc/?p=14', 0, 'revision', '', 0),
(16, 1, '2025-10-23 23:05:23', '2025-10-23 20:05:23', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиця', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 23:05:23', '2025-10-23 20:05:23', '', 2, 'https://teachme.loc/?p=16', 0, 'revision', '', 0),
(17, 1, '2025-10-23 23:07:36', '2025-10-23 20:07:36', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Нативна таблиця', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 23:07:36', '2025-10-23 20:07:36', '', 2, 'https://teachme.loc/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-10-23 23:08:53', '2025-10-23 20:08:53', '', 'Таблиця з плагіну', '', 'trash', 'closed', 'closed', '', 'plugin-table__trashed', '', '', '2025-10-23 23:16:18', '2025-10-23 20:16:18', '', 0, 'https://teachme.loc/?page_id=18', 0, 'page', '', 0),
(19, 1, '2025-10-23 23:08:53', '2025-10-23 20:08:53', '', 'Таблиця з плагіну', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-10-23 23:08:53', '2025-10-23 20:08:53', '', 18, 'https://teachme.loc/?p=19', 0, 'revision', '', 0),
(20, 1, '2025-10-23 23:11:02', '2025-10-23 20:11:02', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Хто ми</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Наша адреса сайту: https://teachme.loc.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Коментарі</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медіафайли</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Вбудований вміст з інших веб-сайтів</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">З ким ми ділимося вашими даними</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви запросите скидання паролю, ваш IP буде вказано в email-повідомленні про скидання.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Як довго ми зберігаємо ваші дані</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Які права ви маєте відносно своїх даних</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куди відправляються ваші дані</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p>\n<!-- /wp:paragraph -->\n', 'Політика конфіденційності', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-10-23 23:11:02', '2025-10-23 20:11:02', '', 3, 'https://teachme.loc/?p=20', 0, 'revision', '', 0),
(21, 1, '2025-10-23 23:15:00', '2025-10-23 20:15:00', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>[table id=1 /]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Нативна таблиця', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 23:15:00', '2025-10-23 20:15:00', '', 2, 'https://teachme.loc/?p=21', 0, 'revision', '', 0),
(23, 1, '2025-10-23 23:16:10', '2025-10-23 20:16:10', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Таблиця, добавлена нативно</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Таблиця, добавлена за допомогою плагіна</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[table id=1 /]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиці', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 23:16:10', '2025-10-23 20:16:10', '', 2, 'https://teachme.loc/?p=23', 0, 'revision', '', 0),
(25, 1, '2025-10-23 23:21:48', '2025-10-23 20:21:48', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Таблиця, добавлена нативно</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td></td><td>Lithuania</td><td>Czech</td><td>Poland</td><td>Slovakia</td><td>Estonia</td><td>MSB Canada</td><td>UAE</td></tr><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Таблиця, добавлена за допомогою плагіна</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[table id=1 /]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиці', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-23 23:21:48', '2025-10-23 20:21:48', '', 2, 'https://teachme.loc/?p=25', 0, 'revision', '', 0),
(27, 1, '2025-10-24 00:09:19', '2025-10-23 21:09:19', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td></td><td>Lithuania</td><td>Czech</td><td>Poland</td><td>Slovakia</td><td>Estonia</td><td>MSB Canada</td><td>UAE</td></tr><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиці', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-24 00:09:19', '2025-10-23 21:09:19', '', 2, 'https://teachme.loc/?p=27', 0, 'revision', '', 0),
(28, 1, '2025-10-27 17:45:29', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-27 17:45:29', '0000-00-00 00:00:00', '', 0, 'https://teachme.loc/?post_type=acf-field-group&p=28', 0, 'acf-field-group', '', 0),
(31, 1, '2025-10-27 18:31:29', '2025-10-27 16:31:29', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td></td><td>Lithuania</td><td>Czech</td><td>Poland</td><td>Slovakia</td><td>Estonia</td><td>MSB Canada</td><td>UAE</td></tr><tr><td>Ultricies quam id at rhoncus</td><td>Auctor non</td><td>Mi dignissim</td><td>Habitasse</td><td>Sed etiam nisi</td><td>Elementum ac</td><td>Purus</td><td>Purus amet</td></tr><tr><td>Aliquam nunc urna in</td><td>Nibh est</td><td>Pulvinar</td><td>Pharetra</td><td>Ullamcorper</td><td>Mauris elit</td><td>Ullamcorper</td><td>In sagittis sed</td></tr><tr><td>Eget diam rutrum mauris</td><td>Neque risus</td><td>Facilisis at</td><td>Mauris est</td><td>Leo cursus</td><td>Parturient</td><td>Dignissim</td><td>Ut iaculis</td></tr><tr><td>Mattis sed et sed mollis</td><td>Erat nunc</td><td>Consectetur</td><td>Congue in ut</td><td>Tristique nisl</td><td>Orci quam in</td><td>Praesent ut a</td><td>Neque mauris</td></tr><tr><td>Tellus sed arcu tellus massa</td><td>Sed</td><td>Nibh cursus</td><td>Consectetur</td><td>Mauris quam</td><td>Nisi dictumst</td><td>Vulputate ac</td><td>Ac interdum</td></tr><tr><td>Id rhoncus sollicitudin id</td><td>At justo</td><td>Habitasse</td><td>Sed porta</td><td>Risus egestas</td><td>Varius purus</td><td>Sit porta nec</td><td>Magna id</td></tr><tr><td>Aenean etiam orci eget</td><td>Pellentesque</td><td>Consectetur</td><td>Orci justo</td><td>Lacus</td><td>Nisi amet</td><td>Amet leo</td><td>Massa ut</td></tr><tr><td>Mattis adipiscing sit quis</td><td>Rutrum id</td><td>Enim</td><td>Pharetra amet</td><td>Sed tellus</td><td>Suscipit</td><td>Id rhoncus</td><td>Urna ut odio</td></tr><tr><td>Arcu at convallis malesuada</td><td>Tellus purus</td><td>Nunc</td><td>Scelerisque</td><td>Purus eget</td><td>Ipsum</td><td>Ut iaculis</td><td>Elit vel orci</td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'Таблиці', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-27 18:31:29', '2025-10-27 16:31:29', '', 2, 'https://teachme.loc/?p=31', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `tc_termmeta`
--

CREATE TABLE `tc_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `tc_terms`
--

CREATE TABLE `tc_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_terms`
--

INSERT INTO `tc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'twentytwentyfive', 'twentytwentyfive', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `tc_term_relationships`
--

CREATE TABLE `tc_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_term_relationships`
--

INSERT INTO `tc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `tc_term_taxonomy`
--

CREATE TABLE `tc_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_term_taxonomy`
--

INSERT INTO `tc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `tc_usermeta`
--

CREATE TABLE `tc_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_usermeta`
--

INSERT INTO `tc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'tc_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'tc_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'tp20_edit_context_menu,tp21_edit_screen_options'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"5e0973e601e7eee4e72a803323baa0405852fd53071d9a932bcd8b38ba673783\";a:4:{s:10:\"expiration\";i:1762443961;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0\";s:5:\"login\";i:1761234361;}s:64:\"ae9342410f45ee27974e6697013014df65b14d3c3ef01990e2af01dd0a58e9b5\";a:4:{s:10:\"expiration\";i:1761752673;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0\";s:5:\"login\";i:1761579873;}}'),
(17, 1, 'tc_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'tc_tablepress_user_options', '{\"user_options_db_version\":118,\"admin_menu_parent_page\":\"middle\",\"message_first_visit\":true,\"message_superseded_extensions\":false,\"table_editor_column_width\":\"170\",\"table_editor_line_clamp\":\"5\"}'),
(20, 1, 'managetablepress_listcolumnshidden', 'a:1:{i:0;s:22:\"table_last_modified_by\";}'),
(21, 1, 'tc_persisted_preferences', 'a:3:{s:4:\"core\";a:6:{s:26:\"isComplementaryAreaVisible\";b:1;s:24:\"enableChoosePatternModal\";b:1;s:10:\"editorMode\";s:6:\"visual\";s:9:\"focusMode\";b:0;s:15:\"distractionFree\";b:0;s:12:\"fixedToolbar\";b:0;}s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:14:\"fullscreenMode\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:611;}s:9:\"_modified\";s:24:\"2025-10-27T16:20:54.901Z\";}'),
(22, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:32:\"carbon_fields_container_a3909591\";s:4:\"side\";s:0:\"\";}'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблиці `tc_users`
--

CREATE TABLE `tc_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `tc_users`
--

INSERT INTO `tc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$12$t2.s63TjufwN9J2RVLX3ruMlGw3XAWK9bYCDri3k/PwjiTTCG9dX6', 'admin', 'test@test.com', 'https://teachme.loc', '2025-10-23 15:45:24', '', 0, 'admin');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `tc_commentmeta`
--
ALTER TABLE `tc_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `tc_comments`
--
ALTER TABLE `tc_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `tc_links`
--
ALTER TABLE `tc_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `tc_options`
--
ALTER TABLE `tc_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `tc_postmeta`
--
ALTER TABLE `tc_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `tc_posts`
--
ALTER TABLE `tc_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `tc_termmeta`
--
ALTER TABLE `tc_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `tc_terms`
--
ALTER TABLE `tc_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `tc_term_relationships`
--
ALTER TABLE `tc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `tc_term_taxonomy`
--
ALTER TABLE `tc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `tc_usermeta`
--
ALTER TABLE `tc_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `tc_users`
--
ALTER TABLE `tc_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `tc_commentmeta`
--
ALTER TABLE `tc_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `tc_comments`
--
ALTER TABLE `tc_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `tc_links`
--
ALTER TABLE `tc_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `tc_options`
--
ALTER TABLE `tc_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT для таблиці `tc_postmeta`
--
ALTER TABLE `tc_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT для таблиці `tc_posts`
--
ALTER TABLE `tc_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблиці `tc_termmeta`
--
ALTER TABLE `tc_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `tc_terms`
--
ALTER TABLE `tc_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `tc_term_taxonomy`
--
ALTER TABLE `tc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `tc_usermeta`
--
ALTER TABLE `tc_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблиці `tc_users`
--
ALTER TABLE `tc_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
