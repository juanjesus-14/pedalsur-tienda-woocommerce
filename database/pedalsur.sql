-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 28-10-2026 a las 15:57:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedalsur`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_actions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_groups`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_logs`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2, 'siteurl', 'http://localhost/pedalsur', 'on'),
(3, 'home', 'http://localhost/pedalsur', 'on'),
(4, 'blogname', 'PedalSur', 'on'),
(5, 'blogdescription', 'Bicicletas en Málaga', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'admin@pedalsur.local', 'on'),
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
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:136:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:21:\"^wc/file/transient/?$\";s:33:\"index.php?wc-transient-file-name=\";s:24:\"^wc/file/transient/(.+)$\";s:44:\"index.php?wc-transient-file-name=$matches[1]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:9:\"tienda/?$\";s:27:\"index.php?post_type=product\";s:39:\"tienda/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"tienda/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:26:\"tienda/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:15:\"^checkout-link$\";s:28:\"index.php?checkout-link=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"marca/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:39:\"marca/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:20:\"marca/(.+?)/embed/?$\";s:46:\"index.php?product_brand=$matches[1]&embed=true\";s:32:\"marca/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?product_brand=$matches[1]&paged=$matches[2]\";s:14:\"marca/(.+?)/?$\";s:35:\"index.php?product_brand=$matches[1]\";s:57:\"categoria-producto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"categoria-producto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"categoria-producto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"categoria-producto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"categoria-producto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiqueta-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiqueta-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiqueta-producto/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiqueta-producto/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiqueta-producto/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"producto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"producto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"producto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"producto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"producto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"producto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"producto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"producto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"producto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"producto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"producto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'astra', 'on'),
(42, 'stylesheet', 'astra', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '61833', 'on'),
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
(81, 'timezone_string', 'Europe/Madrid', 'on'),
(82, 'page_for_posts', '42', 'on'),
(83, 'page_on_front', '39', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '14', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1808749117', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '61833', 'on'),
(103, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'WPLANG', 'es_ES', 'auto'),
(106, 'user_count', '1', 'off'),
(107, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}s:22:\"astra-woo-shop-sidebar\";a:0:{}s:24:\"astra-woo-single-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'theme_mods_twentytwentyfive', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1793197122;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(128, 'current_theme', 'Astra', 'auto'),
(129, 'theme_switched', '', 'auto'),
(130, 'action_scheduler_hybrid_store_demarkation', '4', 'auto'),
(131, 'schema-ActionScheduler_StoreSchema', '8.0.1793197122', 'auto'),
(132, 'schema-ActionScheduler_LoggerSchema', '3.0.1793197122', 'auto'),
(136, 'woocommerce_newly_installed', 'no', 'auto'),
(137, 'woocommerce_order_stats_has_fulfillment_column', 'no', 'off'),
(138, 'woocommerce_schema_version', '920', 'auto'),
(139, 'woocommerce_store_address', 'Calle Larios, 12', 'on'),
(140, 'woocommerce_store_address_2', '', 'on'),
(141, 'woocommerce_store_city', 'Málaga', 'on'),
(142, 'woocommerce_default_country', 'ES:MA', 'on'),
(143, 'woocommerce_store_postcode', '29005', 'on'),
(144, 'woocommerce_allowed_countries', 'all', 'on'),
(145, 'woocommerce_all_except_countries', '', 'on'),
(146, 'woocommerce_specific_allowed_countries', '', 'on'),
(147, 'woocommerce_ship_to_countries', '', 'on'),
(148, 'woocommerce_specific_ship_to_countries', '', 'on'),
(149, 'woocommerce_default_customer_address', 'base', 'on'),
(150, 'woocommerce_address_autocomplete_enabled', 'no', 'on'),
(151, 'woocommerce_calc_taxes', 'no', 'on'),
(152, 'woocommerce_enable_coupons', 'no', 'on'),
(153, 'woocommerce_calc_discounts_sequentially', 'no', 'off'),
(154, 'woocommerce_currency', 'EUR', 'on'),
(155, 'woocommerce_currency_pos', 'right_space', 'on'),
(156, 'woocommerce_price_thousand_sep', '.', 'on'),
(157, 'woocommerce_price_decimal_sep', ',', 'on'),
(158, 'woocommerce_price_num_decimals', '2', 'on'),
(159, 'woocommerce_shop_page_id', '5', 'on'),
(160, 'woocommerce_cart_redirect_after_add', 'no', 'on'),
(161, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'on'),
(162, 'woocommerce_placeholder_image', '4', 'on'),
(163, 'woocommerce_weight_unit', 'lbs', 'on'),
(164, 'woocommerce_dimension_unit', 'in', 'on'),
(165, 'woocommerce_enable_reviews', 'yes', 'on'),
(166, 'woocommerce_review_rating_verification_label', 'yes', 'off'),
(167, 'woocommerce_review_rating_verification_required', 'no', 'off'),
(168, 'woocommerce_enable_review_rating', 'yes', 'on'),
(169, 'woocommerce_review_rating_required', 'yes', 'off'),
(170, 'woocommerce_manage_stock', 'yes', 'on'),
(171, 'woocommerce_hold_stock_minutes', '60', 'off'),
(172, 'woocommerce_notify_low_stock', 'yes', 'off'),
(173, 'woocommerce_notify_no_stock', 'yes', 'off'),
(174, 'woocommerce_notify_backorder', 'yes', 'off'),
(175, 'woocommerce_stock_email_recipient', 'admin@pedalsur.local', 'off'),
(176, 'woocommerce_notify_low_stock_amount', '2', 'off'),
(177, 'woocommerce_notify_no_stock_amount', '0', 'on'),
(178, 'woocommerce_hide_out_of_stock_items', 'no', 'on'),
(179, 'woocommerce_stock_format', '', 'on'),
(180, 'woocommerce_file_download_method', 'force', 'off'),
(181, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'off'),
(182, 'woocommerce_downloads_require_login', 'no', 'off'),
(183, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'off'),
(184, 'woocommerce_downloads_deliver_inline', '', 'off'),
(185, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'on'),
(186, 'woocommerce_downloads_count_partial', 'yes', 'on'),
(188, 'woocommerce_attribute_lookup_direct_updates', 'no', 'on'),
(189, 'woocommerce_attribute_lookup_optimized_updates', 'no', 'on'),
(190, 'woocommerce_product_match_featured_image_by_sku', 'no', 'on'),
(191, 'woocommerce_prices_include_tax', 'no', 'on'),
(192, 'woocommerce_tax_based_on', 'shipping', 'on'),
(193, 'woocommerce_shipping_tax_class', 'inherit', 'on'),
(194, 'woocommerce_tax_round_at_subtotal', 'no', 'on'),
(195, 'woocommerce_tax_classes', '', 'on'),
(196, 'woocommerce_tax_display_shop', 'excl', 'on'),
(197, 'woocommerce_tax_display_cart', 'excl', 'on'),
(198, 'woocommerce_price_display_suffix', '', 'on'),
(199, 'woocommerce_tax_total_display', 'itemized', 'off'),
(200, 'woocommerce_enable_shipping_calc', 'yes', 'off'),
(201, 'woocommerce_shipping_cost_requires_address', 'no', 'on'),
(202, 'woocommerce_shipping_hide_rates_when_free', 'no', 'off'),
(203, 'woocommerce_ship_to_destination', 'billing', 'off'),
(204, 'woocommerce_shipping_debug_mode', 'no', 'on'),
(205, 'woocommerce_enable_guest_checkout', 'yes', 'off'),
(206, 'woocommerce_enable_checkout_login_reminder', 'no', 'off'),
(207, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'off'),
(208, 'woocommerce_enable_myaccount_registration', 'no', 'off'),
(209, 'woocommerce_registration_generate_password', 'yes', 'off'),
(210, 'woocommerce_registration_generate_username', 'yes', 'off'),
(211, 'woocommerce_erasure_request_removes_order_data', 'no', 'off'),
(212, 'woocommerce_erasure_request_removes_download_data', 'no', 'off'),
(213, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'off'),
(214, 'woocommerce_registration_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web, gestionar el acceso a tu cuenta y otros propósitos descritos en nuestra [privacy_policy].', 'on'),
(215, 'woocommerce_checkout_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web y otros propósitos descritos en nuestra [privacy_policy].', 'on'),
(216, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(217, 'woocommerce_trash_pending_orders', '', 'off'),
(218, 'woocommerce_trash_failed_orders', '', 'off'),
(219, 'woocommerce_trash_cancelled_orders', '', 'off'),
(220, 'woocommerce_anonymize_refunded_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(221, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(222, 'woocommerce_email_from_address', 'admin@pedalsur.local', 'off'),
(223, 'woocommerce_email_reply_to_enabled', 'no', 'off'),
(224, 'woocommerce_email_reply_to_name', '', 'off'),
(225, 'woocommerce_email_reply_to_address', '', 'off'),
(226, 'woocommerce_email_header_image', '', 'off'),
(227, 'woocommerce_email_header_image_width', '120', 'on'),
(228, 'woocommerce_email_header_alignment', 'left', 'on'),
(229, 'woocommerce_email_font_family', 'Helvetica', 'on'),
(230, 'woocommerce_email_footer_text', '{site_title}<br />{store_address}', 'off'),
(231, 'woocommerce_email_base_color', '#8526ff', 'off'),
(232, 'woocommerce_email_background_color', '#ffffff', 'off'),
(233, 'woocommerce_email_body_background_color', '#ffffff', 'off'),
(234, 'woocommerce_email_text_color', '#1e1e1e', 'off'),
(235, 'woocommerce_email_footer_text_color', '#787c82', 'off'),
(236, 'woocommerce_email_auto_sync_with_theme', 'yes', 'off'),
(237, 'woocommerce_pos_store_address', '', 'on'),
(238, 'woocommerce_pos_store_phone', '', 'on'),
(239, 'woocommerce_pos_store_email', 'admin@pedalsur.local', 'on'),
(240, 'woocommerce_pos_refund_returns_policy', '', 'on'),
(241, 'woocommerce_cart_page_id', '6', 'off'),
(242, 'woocommerce_checkout_page_id', '7', 'off'),
(243, 'woocommerce_myaccount_page_id', '8', 'off'),
(244, 'woocommerce_terms_page_id', '', 'off'),
(245, 'woocommerce_force_ssl_checkout', 'no', 'on'),
(246, 'woocommerce_unforce_ssl_checkout', 'no', 'on'),
(247, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'on'),
(248, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'on'),
(249, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'on'),
(250, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'on'),
(251, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'on'),
(252, 'woocommerce_myaccount_orders_endpoint', 'orders', 'on'),
(253, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'on'),
(254, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'on'),
(255, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'on'),
(256, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'on'),
(257, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'on'),
(258, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'on'),
(259, 'woocommerce_logout_endpoint', 'customer-logout', 'on'),
(260, 'woocommerce_allow_tracking', 'no', 'on'),
(261, 'woocommerce_show_marketplace_suggestions', 'no', 'off'),
(262, 'woocommerce_custom_orders_table_enabled', 'yes', 'on'),
(263, 'woocommerce_analytics_enabled', 'yes', 'on'),
(264, 'woocommerce_feature_rate_limit_checkout_enabled', 'no', 'on'),
(265, 'woocommerce_feature_order_withdrawal_enabled', 'no', 'on'),
(266, 'woocommerce_queue_flush_rewrite_rules', 'no', 'auto'),
(267, 'woocommerce_feature_order_attribution_enabled', 'yes', 'on'),
(268, 'woocommerce_hpos_datastore_caching_enabled', 'no', 'on'),
(269, 'woocommerce_feature_remote_logging_enabled', 'yes', 'on'),
(270, 'woocommerce_feature_deferred_transactional_emails_enabled', 'no', 'on'),
(271, 'woocommerce_feature_customer_review_request_enabled', 'no', 'on'),
(272, 'woocommerce_feature_email_improvements_enabled', 'yes', 'on'),
(275, 'woocommerce_email_improvements_disabled_count', '1', 'auto'),
(276, 'woocommerce_email_improvements_first_disabled_at', '2026-10-28 14:18:44', 'auto'),
(277, 'woocommerce_email_improvements_last_disabled_at', '2026-10-28 14:18:44', 'auto'),
(278, 'woocommerce_feature_blueprint_enabled', 'yes', 'on'),
(279, 'woocommerce_feature_cost_of_goods_sold_enabled', 'no', 'on'),
(280, 'woocommerce_feature_product_gallery_videos_enabled', 'no', 'on'),
(281, 'woocommerce_hpos_fts_index_enabled', 'no', 'on'),
(282, 'woocommerce_feature_abandoned_cart_recovery_enabled', 'no', 'on'),
(283, 'woocommerce_feature_block_email_editor_enabled', 'no', 'on'),
(284, 'woocommerce_feature_mcp_integration_enabled', 'no', 'on'),
(285, 'woocommerce_feature_destroy-empty-sessions_enabled', 'no', 'on'),
(286, 'woocommerce_feature_rest_api_caching_enabled', 'no', 'on'),
(287, 'woocommerce_cart_save_for_later_enabled', 'no', 'on'),
(288, 'woocommerce_product_wishlist_enabled', 'no', 'on'),
(289, 'woocommerce_feature_product_instance_caching_enabled', 'yes', 'on'),
(290, 'woocommerce_feature_block_editor_unified_assets_enabled', 'no', 'on'),
(291, 'woocommerce_single_image_width', '600', 'on'),
(292, 'woocommerce_thumbnail_image_width', '300', 'on'),
(293, 'woocommerce_checkout_highlight_required_fields', 'yes', 'on'),
(294, 'woocommerce_demo_store', 'no', 'off'),
(295, 'wc_downloads_approved_directories_mode', 'enabled', 'auto'),
(296, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"producto\";s:13:\"category_base\";s:18:\"categoria-producto\";s:8:\"tag_base\";s:17:\"etiqueta-producto\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'auto'),
(297, 'current_theme_supports_woocommerce', 'yes', 'auto'),
(302, 'default_product_cat', '15', 'auto'),
(303, 'woocommerce_refund_returns_page_id', '9', 'auto'),
(306, 'woocommerce_paypal_settings', 'a:25:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:100:\"Paga a través de PayPal; puedes pagar con tu tarjeta de crédito si no tienes una cuenta de PayPal.\";s:5:\"email\";s:20:\"admin@pedalsur.local\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:14:\"paypal_buttons\";s:3:\"yes\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:9:\"image_url\";s:0:\"\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:20:\"admin@pedalsur.local\";s:14:\"identity_token\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:28:\"transact_onboarding_complete\";s:2:\"no\";s:12:\"_should_load\";s:2:\"no\";}', 'on'),
(307, 'woocommerce_version', '11.1.2', 'auto'),
(308, 'woocommerce_db_version', '11.1.2', 'auto'),
(310, 'woocommerce_admin_install_timestamp', '1793197125', 'auto'),
(311, 'woocommerce_inbox_variant_assignment', '3', 'auto'),
(312, 'woocommerce_remote_variant_assignment', '113', 'auto'),
(313, 'woocommerce_attribute_lookup_enabled', 'no', 'auto'),
(315, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.1.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1793197125;s:7:\"version\";s:5:\"6.1.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(317, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(320, 'woocommerce_admin_notices', 'a:0:{}', 'auto'),
(321, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"cxaAD52nHMKNUclWJ0evwDlEgdqo87zC\";}', 'on'),
(323, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(324, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(325, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(326, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(327, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(328, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(329, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(330, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(331, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(332, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(333, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(334, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(335, 'widget_wc_brands_brand_description', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(336, 'widget_woocommerce_brand_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(337, 'widget_wc_brands_brand_thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(343, 'bsf_usage_migrated', '1', 'off'),
(344, 'theme_mods_astra', 'a:3:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:21;}s:11:\"custom_logo\";i:13;s:18:\"custom_css_post_id\";i:-1;}', 'auto'),
(345, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'auto'),
(349, 'wc_variation_gallery_migration_completed_at', '1793197128', 'auto'),
(350, 'jetpack_options', 'a:1:{s:14:\"last_heartbeat\";i:1793197128;}', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(355, 'woocommerce_custom_orders_table_created', 'yes', 'auto'),
(356, 'woocommerce_coming_soon', 'no', 'auto'),
(357, 'woocommerce_store_pages_only', 'no', 'auto'),
(358, 'woocommerce_email_improvements_default_enabled', 'yes', 'auto'),
(359, 'woocommerce_email_improvements_first_enabled_at', '2026-10-28 14:18:48', 'auto'),
(360, 'woocommerce_email_improvements_last_enabled_at', '2026-10-28 14:18:48', 'auto'),
(361, 'woocommerce_email_improvements_enabled_count', '1', 'auto'),
(362, 'woocommerce_back_in_stock_allow_signups', 'yes', 'auto'),
(363, 'woocommerce_analytics_scheduled_import', 'yes', 'auto'),
(366, 'woocommerce_initial_installed_version', '11.1.2', 'off'),
(367, 'wc_blocks_db_schema_version', '260', 'auto'),
(368, 'astra-settings', 'a:7:{s:18:\"theme-auto-version\";s:6:\"4.14.0\";s:22:\"is_theme_queue_running\";b:0;s:19:\"site-sidebar-layout\";s:10:\"no-sidebar\";s:23:\"footer-copyright-editor\";s:488:\"[copyright] [current_year] PedalSur · Bicicletas en Málaga · Web realizada por <strong>Juan Jesús Díaz Garrido</strong><br><a href=\"http://localhost/pedalsur/informacion-legal/\">Información legal</a> · <a href=\"http://localhost/pedalsur/politica-de-cookies/\">Política de cookies</a> · <a href=\"http://localhost/pedalsur/proteccion-de-datos/\">Protección de datos</a> · <a href=\"http://localhost/pedalsur/contacto/\">Contacto</a><br><em>Tienda ficticia · Práctica educativa</em>\";s:29:\"display-site-title-responsive\";a:3:{s:7:\"desktop\";i:0;s:6:\"tablet\";i:0;s:6:\"mobile\";i:0;}s:31:\"display-site-tagline-responsive\";a:3:{s:7:\"desktop\";i:0;s:6:\"tablet\";i:0;s:6:\"mobile\";i:0;}s:32:\"ast-header-responsive-logo-width\";a:3:{s:7:\"desktop\";i:190;s:6:\"tablet\";i:170;s:6:\"mobile\";i:150;}}', 'auto'),
(370, 'action_scheduler_lock_async-request-runner', '6ae20ce786f836.40336936|1793199395', 'no'),
(373, 'woocommerce_order_withdrawal_inbox_notification_created', 'yes', 'off'),
(374, 'woocommerce_task_list_hidden', 'yes', 'auto'),
(375, 'woocommerce_onboarding_profile', 'a:1:{s:7:\"skipped\";b:1;}', 'auto'),
(380, 'product_cat_children', 'a:1:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}}', 'auto'),
(382, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:\"title\";s:15:\"Envío gratuito\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:2:\"50\";s:16:\"ignore_discounts\";s:2:\"no\";}', 'auto'),
(383, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:16:\"Envío estándar\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:4:\"4.90\";}', 'auto'),
(384, 'pr_zona_envio', '1', 'auto'),
(385, 'woocommerce_bacs_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:30:\"Transferencia bancaria directa\";s:11:\"description\";s:63:\"Realiza el pago por transferencia bancaria (método de prueba).\";}', 'auto'),
(386, 'woocommerce_cod_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:21:\"Pago contra reembolso\";s:11:\"description\";s:58:\"Paga en efectivo al recibir el pedido (método de prueba).\";}', 'auto'),
(410, 'site_logo', '13', 'auto'),
(413, 'woocommerce_checkout_phone_field', 'optional', 'auto'),
(414, 'woocommerce_checkout_company_field', 'hidden', 'auto'),
(415, 'woocommerce_checkout_address_2_field', 'optional', 'auto'),
(420, 'action_scheduler_migration_status', 'complete', 'auto'),
(421, 'as_has_wp_comment_logs', 'no', 'on'),
(423, 'finished_updating_comment_type', '1', 'auto');

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(432, 'woocommerce_admin_pes_incentive_woopayments_store_had_woopayments', 'no', 'auto'),
(433, 'woocommerce_admin_pes_incentive_woopayments_store_had_woopayments_version', '2', 'auto'),
(436, 'woocommerce_gateway_order', 'a:6:{s:19:\"_wc_pes_woopayments\";i:0;s:25:\"_wc_pes_paypal_full_stack\";i:1;s:33:\"_wc_offline_payment_methods_group\";i:2;s:4:\"bacs\";i:3;s:6:\"cheque\";i:4;s:3:\"cod\";i:5;}', 'auto'),
(446, 'astra_usage_installed_time', '1793199271', 'off');

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(464, 'can_compress_scripts', '1', 'on');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 4, '_wp_attached_file', 'woocommerce-placeholder.webp'),
(4, 4, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:28:\"woocommerce-placeholder.webp\";s:8:\"filesize\";i:9892;s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:36:\"woocommerce-placeholder-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1362;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:430;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-600x600.webp\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3162;}s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1362;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"woocommerce-placeholder-1024x1024.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6032;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:662;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4240;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(5, 10, '_form', '<label> Nombre y apellidos\n    [text* your-name autocomplete:name] </label>\n\n<label> Correo electrónico\n    [email* your-email autocomplete:email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Mensaje\n    [textarea* your-message] </label>\n\n[submit \"Enviar\"]'),
(6, 10, '_mail', 'a:8:{s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:36:\"[_site_title] <admin@pedalsur.local>\";s:4:\"body\";s:195:\"De: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(7, 10, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:36:\"[_site_title] <admin@pedalsur.local>\";s:4:\"body\";s:268:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(8, 10, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:79:\"Uno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\";s:4:\"spam\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:30:\"Por favor, rellena este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:53:\"Ha ocurrido un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:41:\"Ha ocurrido un error al subir el archivo.\";s:12:\"invalid_date\";s:57:\"Por favor, introduce una fecha con el formato YYYY-MM-DD.\";s:14:\"date_too_early\";s:46:\"Este campo tiene una fecha demasiado temprana.\";s:13:\"date_too_late\";s:45:\"Este campo tiene una fecha demasiado tardía.\";s:14:\"invalid_number\";s:32:\"Por favor, introduce un número.\";s:16:\"number_too_small\";s:47:\"Este campo tiene un número demasiado pequeño.\";s:16:\"number_too_large\";s:45:\"Este campo tiene un número demasiado grande.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:17:\"captcha_not_match\";s:37:\"El código introducido es incorrecto.\";s:13:\"invalid_email\";s:59:\"Por favor, introduce una dirección de correo electrónico.\";s:11:\"invalid_url\";s:29:\"Por favor, introduce una URL.\";s:11:\"invalid_tel\";s:45:\"Por favor, introduce un número de teléfono.\";}'),
(9, 10, '_additional_settings', ''),
(10, 10, '_locale', 'es_ES'),
(11, 10, '_hash', 'cbfcca27b72d74b7b8e0d8487ca5969ff211aa2a1c6ea04e2451fefd9d025ccf'),
(12, 12, '_wp_attached_file', '2026/10/pedalsur_portada.jpg'),
(13, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:720;s:4:\"file\";s:28:\"2026/10/pedalsur_portada.jpg\";s:8:\"filesize\";i:104321;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"pedalsur_portada-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6204;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"pedalsur_portada-1024x384.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33983;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"pedalsur_portada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3315;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"pedalsur_portada-768x288.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22768;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"pedalsur_portada-1536x576.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63618;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:28:\"pedalsur_portada-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7793;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:28:\"pedalsur_portada-600x225.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15832;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:28:\"pedalsur_portada-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2258;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(14, 12, '_pr_origen', 'pedalsur_portada.jpg'),
(15, 12, '_wp_attachment_image_alt', 'Portada PedalSur'),
(16, 13, '_wp_attached_file', '2026/10/pedalsur_logo.png'),
(17, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:266;s:4:\"file\";s:25:\"2026/10/pedalsur_logo.png\";s:8:\"filesize\";i:80540;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"pedalsur_logo-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20248;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"pedalsur_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9478;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"pedalsur_logo-768x255.png\";s:5:\"width\";i:768;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78514;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:25:\"pedalsur_logo-300x266.png\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18300;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:25:\"pedalsur_logo-600x200.png\";s:5:\"width\";i:600;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54893;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:25:\"pedalsur_logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5568;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(18, 13, '_pr_origen', 'pedalsur_logo.png'),
(19, 13, '_wp_attachment_image_alt', 'Logotipo PedalSur'),
(20, 14, '_wp_attached_file', '2026/10/pedalsur_icono_512.png'),
(21, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2026/10/pedalsur_icono_512.png\";s:8:\"filesize\";i:75855;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"pedalsur_icono_512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35639;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"pedalsur_icono_512-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12751;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:30:\"pedalsur_icono_512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35639;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:30:\"pedalsur_icono_512-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7064;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(22, 14, '_pr_origen', 'pedalsur_icono_512.png'),
(23, 14, '_wp_attachment_image_alt', 'Icono PedalSur'),
(24, 15, '_wp_attached_file', '2026/10/pedalsur_cabecera.jpg'),
(25, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1950;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2026/10/pedalsur_cabecera.jpg\";s:8:\"filesize\";i:71205;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"pedalsur_cabecera-300x77.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3875;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"pedalsur_cabecera-1024x263.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20832;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"pedalsur_cabecera-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2515;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"pedalsur_cabecera-768x197.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13801;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"pedalsur_cabecera-1536x394.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37337;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:29:\"pedalsur_cabecera-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5957;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:29:\"pedalsur_cabecera-600x154.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9896;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:29:\"pedalsur_cabecera-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1787;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(26, 15, '_pr_origen', 'pedalsur_cabecera.jpg'),
(27, 15, '_wp_attachment_image_alt', 'Banner PedalSur'),
(28, 16, '_wp_attached_file', '2026/10/cat-carretera.jpg'),
(29, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2026/10/cat-carretera.jpg\";s:8:\"filesize\";i:58756;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"cat-carretera-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11808;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"cat-carretera-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4560;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"cat-carretera-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42933;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:25:\"cat-carretera-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11808;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:25:\"cat-carretera-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30725;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:25:\"cat-carretera-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2980;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(30, 16, '_pr_origen', 'cat-carretera.jpg'),
(31, 16, '_wp_attachment_image_alt', 'Bicicletas de carretera'),
(32, 17, '_wp_attached_file', '2026/10/cat-electricas.jpg'),
(33, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2026/10/cat-electricas.jpg\";s:8:\"filesize\";i:58351;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"cat-electricas-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11530;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"cat-electricas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4526;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"cat-electricas-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39957;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"cat-electricas-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11530;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"cat-electricas-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29516;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"cat-electricas-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2847;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(34, 17, '_pr_origen', 'cat-electricas.jpg'),
(35, 17, '_wp_attachment_image_alt', 'Bicicletas eléctricas'),
(36, 18, '_wp_attached_file', '2026/10/cat-montana.jpg'),
(37, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2026/10/cat-montana.jpg\";s:8:\"filesize\";i:58139;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"cat-montana-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11145;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"cat-montana-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4460;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"cat-montana-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38795;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"cat-montana-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11145;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"cat-montana-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28550;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"cat-montana-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2715;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(38, 18, '_pr_origen', 'cat-montana.jpg'),
(39, 18, '_wp_attachment_image_alt', 'Bicicletas de montaña'),
(40, 19, '_wp_attached_file', '2026/10/8.webp'),
(41, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2026/10/8.webp\";s:8:\"filesize\";i:80562;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"8-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14252;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"8-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4870;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"8-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:55662;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:14:\"8-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14252;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:14:\"8-600x600.webp\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:39974;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:14:\"8-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2662;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(42, 19, '_pr_origen', '8.webp'),
(43, 19, '_wp_attachment_image_alt', 'Bici de montaña Sierra 29'),
(44, 20, '_wp_attached_file', '2026/10/1.jpg'),
(45, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1422;s:6:\"height\";i:1422;s:4:\"file\";s:13:\"2026/10/1.jpg\";s:8:\"filesize\";i:77540;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10708;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66487;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4245;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43279;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10708;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:13:\"1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29986;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2483;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(46, 20, '_pr_origen', '1.jpg'),
(47, 20, '_wp_attachment_image_alt', 'Bici eléctrica Volt E-City'),
(48, 21, '_wp_attached_file', '2026/10/4.jpg'),
(49, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2026/10/4.jpg\";s:8:\"filesize\";i:91026;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15880;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5797;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63639;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15880;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:13:\"4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45335;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3392;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(50, 21, '_pr_origen', '4.jpg'),
(51, 21, '_wp_attachment_image_alt', 'Bomba de pie con manómetro'),
(52, 22, '_wp_attached_file', '2026/10/3.jpg'),
(53, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:13:\"2026/10/3.jpg\";s:8:\"filesize\";i:14786;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6672;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3006;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6672;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:13:\"3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17114;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1987;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(54, 22, '_pr_origen', '3.jpg'),
(55, 22, '_wp_attachment_image_alt', 'Candado en U Fortis'),
(56, 23, '_wp_attached_file', '2026/10/7.jpg'),
(57, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2026/10/7.jpg\";s:8:\"filesize\";i:91490;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19368;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6770;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"7-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78162;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:13:\"7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19368;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:13:\"7-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55242;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:13:\"7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3950;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(58, 23, '_pr_origen', '7.jpg'),
(59, 23, '_wp_attachment_image_alt', 'Colnago Y1Rs – Edición Pogačar'),
(60, 24, '_wp_attached_file', '2026/10/1.webp'),
(61, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:14:\"2026/10/1.webp\";s:8:\"filesize\";i:33978;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"1-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9806;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3378;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"1-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:37652;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:14:\"1-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9806;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:14:\"1-600x600.webp\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:27686;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:14:\"1-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1874;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(62, 24, '_pr_origen', '1.webp'),
(63, 24, '_wp_attachment_image_alt', 'Bici eléctrica de montaña Trail E-Pro'),
(64, 25, '_wp_attached_file', '2026/10/11.webp'),
(65, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:680;s:6:\"height\";i:680;s:4:\"file\";s:15:\"2026/10/11.webp\";s:8:\"filesize\";i:23100;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"11-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8560;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"11-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3080;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:15:\"11-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8560;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:15:\"11-600x600.webp\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:23116;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:15:\"11-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1702;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(66, 25, '_pr_origen', '11.webp'),
(67, 25, '_wp_attachment_image_alt', 'Bici de montaña doble suspensión Alborán FS'),
(68, 26, '_wp_attached_file', '2026/10/2.webp'),
(69, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:14:\"2026/10/2.webp\";s:8:\"filesize\";i:11318;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"2-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5288;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2166;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:14:\"2-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5288;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:14:\"2-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1328;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(70, 26, '_pr_origen', '2.webp'),
(71, 26, '_wp_attachment_image_alt', 'Kit de luces LED delantera y trasera'),
(72, 27, '_wp_attached_file', '2026/10/5.webp'),
(73, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:14:\"2026/10/5.webp\";s:8:\"filesize\";i:51168;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"5-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8466;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"5-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2714;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"5-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:44118;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:14:\"5-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8466;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:14:\"5-600x600.webp\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:30566;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:14:\"5-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1522;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(74, 27, '_pr_origen', '5.webp'),
(75, 27, '_wp_attachment_image_alt', 'Guantes ciclistas cortos con gel'),
(76, 28, '_wp_attached_file', '2026/10/6.webp'),
(77, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1799;s:6:\"height\";i:2250;s:4:\"file\";s:14:\"2026/10/6.webp\";s:8:\"filesize\";i:84924;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"6-240x300.webp\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8034;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"6-819x1024.webp\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:42242;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"6-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3802;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"6-768x961.webp\";s:5:\"width\";i:768;s:6:\"height\";i:961;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:39328;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:16:\"6-1228x1536.webp\";s:5:\"width\";i:1228;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:65538;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:16:\"6-1637x2048.webp\";s:5:\"width\";i:1637;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:92048;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:14:\"6-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10406;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:14:\"6-600x750.webp\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:29016;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:14:\"6-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2144;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(78, 28, '_pr_origen', '6.webp'),
(79, 28, '_wp_attachment_image_alt', 'Cubiertas de carretera Zaffiro Pro (par)'),
(80, 29, '_sku', 'BIC-MTB-001'),
(81, 29, '_regular_price', '579'),
(82, 29, '_sale_price', '479'),
(83, 29, 'total_sales', '0'),
(84, 29, '_tax_status', 'taxable'),
(85, 29, '_tax_class', ''),
(86, 29, '_manage_stock', 'yes'),
(87, 29, '_backorders', 'no'),
(88, 29, '_sold_individually', 'no'),
(89, 29, '_virtual', 'no'),
(90, 29, '_downloadable', 'no'),
(91, 29, '_download_limit', '-1'),
(92, 29, '_download_expiry', '-1'),
(93, 29, '_thumbnail_id', '19'),
(94, 29, '_stock', '5'),
(95, 29, '_stock_status', 'instock'),
(96, 29, '_wc_average_rating', '0'),
(97, 29, '_wc_review_count', '0'),
(98, 29, '_product_version', '11.1.2'),
(99, 29, '_price', '479'),
(100, 30, '_sku', 'BIC-ELE-001'),
(101, 30, '_regular_price', '1399'),
(102, 30, '_sale_price', '1249'),
(103, 30, 'total_sales', '0'),
(104, 30, '_tax_status', 'taxable'),
(105, 30, '_tax_class', ''),
(106, 30, '_manage_stock', 'yes'),
(107, 30, '_backorders', 'no'),
(108, 30, '_sold_individually', 'no'),
(109, 30, '_virtual', 'no'),
(110, 30, '_downloadable', 'no'),
(111, 30, '_download_limit', '-1'),
(112, 30, '_download_expiry', '-1'),
(113, 30, '_thumbnail_id', '20'),
(114, 30, '_stock', '4'),
(115, 30, '_stock_status', 'instock'),
(116, 30, '_wc_average_rating', '0'),
(117, 30, '_wc_review_count', '0'),
(118, 30, '_product_version', '11.1.2'),
(119, 30, '_price', '1249'),
(120, 31, '_sku', 'ACC-BOM-001'),
(121, 31, '_regular_price', '19.90'),
(122, 31, 'total_sales', '0'),
(123, 31, '_tax_status', 'taxable'),
(124, 31, '_tax_class', ''),
(125, 31, '_manage_stock', 'yes'),
(126, 31, '_backorders', 'no'),
(127, 31, '_sold_individually', 'no'),
(128, 31, '_virtual', 'no'),
(129, 31, '_downloadable', 'no'),
(130, 31, '_download_limit', '-1'),
(131, 31, '_download_expiry', '-1'),
(132, 31, '_thumbnail_id', '21'),
(133, 31, '_stock', '12'),
(134, 31, '_stock_status', 'instock'),
(135, 31, '_wc_average_rating', '0'),
(136, 31, '_wc_review_count', '0'),
(137, 31, '_product_version', '11.1.2'),
(138, 31, '_price', '19.90'),
(139, 32, '_sku', 'ACC-CAN-001'),
(140, 32, '_regular_price', '24.90'),
(141, 32, 'total_sales', '0'),
(142, 32, '_tax_status', 'taxable'),
(143, 32, '_tax_class', ''),
(144, 32, '_manage_stock', 'yes'),
(145, 32, '_backorders', 'no'),
(146, 32, '_sold_individually', 'no'),
(147, 32, '_virtual', 'no'),
(148, 32, '_downloadable', 'no'),
(149, 32, '_download_limit', '-1'),
(150, 32, '_download_expiry', '-1'),
(151, 32, '_thumbnail_id', '22'),
(152, 32, '_stock', '10'),
(153, 32, '_stock_status', 'instock'),
(154, 32, '_wc_average_rating', '0'),
(155, 32, '_wc_review_count', '0'),
(156, 32, '_product_version', '11.1.2'),
(157, 32, '_price', '24.90'),
(158, 33, '_sku', 'BIC-RUT-002'),
(159, 33, '_regular_price', '17990'),
(160, 33, 'total_sales', '0'),
(161, 33, '_tax_status', 'taxable'),
(162, 33, '_tax_class', ''),
(163, 33, '_manage_stock', 'yes'),
(164, 33, '_backorders', 'no'),
(165, 33, '_sold_individually', 'no'),
(166, 33, '_virtual', 'no'),
(167, 33, '_downloadable', 'no'),
(168, 33, '_download_limit', '-1'),
(169, 33, '_download_expiry', '-1'),
(170, 33, '_thumbnail_id', '23'),
(171, 33, '_stock', '2'),
(172, 33, '_stock_status', 'instock'),
(173, 33, '_wc_average_rating', '0'),
(174, 33, '_wc_review_count', '0'),
(175, 33, '_product_version', '11.1.2'),
(176, 33, '_price', '17990'),
(177, 34, '_sku', 'BIC-ELE-002'),
(178, 34, '_regular_price', '3490'),
(179, 34, 'total_sales', '0'),
(180, 34, '_tax_status', 'taxable'),
(181, 34, '_tax_class', ''),
(182, 34, '_manage_stock', 'yes'),
(183, 34, '_backorders', 'no'),
(184, 34, '_sold_individually', 'no'),
(185, 34, '_virtual', 'no'),
(186, 34, '_downloadable', 'no'),
(187, 34, '_download_limit', '-1'),
(188, 34, '_download_expiry', '-1'),
(189, 34, '_thumbnail_id', '24'),
(190, 34, '_stock', '3'),
(191, 34, '_stock_status', 'instock'),
(192, 34, '_wc_average_rating', '0'),
(193, 34, '_wc_review_count', '0'),
(194, 34, '_product_version', '11.1.2'),
(195, 34, '_price', '3490'),
(196, 35, '_sku', 'BIC-MTB-002'),
(197, 35, '_regular_price', '2190'),
(198, 35, 'total_sales', '0'),
(199, 35, '_tax_status', 'taxable'),
(200, 35, '_tax_class', ''),
(201, 35, '_manage_stock', 'yes'),
(202, 35, '_backorders', 'no'),
(203, 35, '_sold_individually', 'no'),
(204, 35, '_virtual', 'no'),
(205, 35, '_downloadable', 'no'),
(206, 35, '_download_limit', '-1'),
(207, 35, '_download_expiry', '-1'),
(208, 35, '_thumbnail_id', '25'),
(209, 35, '_stock', '3'),
(210, 35, '_stock_status', 'instock'),
(211, 35, '_wc_average_rating', '0'),
(212, 35, '_wc_review_count', '0'),
(213, 35, '_product_version', '11.1.2'),
(214, 35, '_price', '2190'),
(215, 36, '_sku', 'ACC-LUC-001'),
(216, 36, '_regular_price', '34.90'),
(217, 36, 'total_sales', '0'),
(218, 36, '_tax_status', 'taxable'),
(219, 36, '_tax_class', ''),
(220, 36, '_manage_stock', 'yes'),
(221, 36, '_backorders', 'no'),
(222, 36, '_sold_individually', 'no'),
(223, 36, '_virtual', 'no'),
(224, 36, '_downloadable', 'no'),
(225, 36, '_download_limit', '-1'),
(226, 36, '_download_expiry', '-1'),
(227, 36, '_thumbnail_id', '26'),
(228, 36, '_stock', '20'),
(229, 36, '_stock_status', 'instock'),
(230, 36, '_wc_average_rating', '0'),
(231, 36, '_wc_review_count', '0'),
(232, 36, '_product_version', '11.1.2'),
(233, 36, '_price', '34.90'),
(234, 37, '_sku', 'ACC-GUA-001'),
(235, 37, '_regular_price', '29.90'),
(236, 37, 'total_sales', '0'),
(237, 37, '_tax_status', 'taxable'),
(238, 37, '_tax_class', ''),
(239, 37, '_manage_stock', 'yes'),
(240, 37, '_backorders', 'no'),
(241, 37, '_sold_individually', 'no'),
(242, 37, '_virtual', 'no'),
(243, 37, '_downloadable', 'no'),
(244, 37, '_download_limit', '-1'),
(245, 37, '_download_expiry', '-1'),
(246, 37, '_thumbnail_id', '27'),
(247, 37, '_stock', '15'),
(248, 37, '_stock_status', 'instock'),
(249, 37, '_wc_average_rating', '0'),
(250, 37, '_wc_review_count', '0'),
(251, 37, '_product_version', '11.1.2'),
(252, 37, '_price', '29.90'),
(253, 38, '_sku', 'ACC-CUB-001'),
(254, 38, '_regular_price', '54.90'),
(255, 38, 'total_sales', '0'),
(256, 38, '_tax_status', 'taxable'),
(257, 38, '_tax_class', ''),
(258, 38, '_manage_stock', 'yes'),
(259, 38, '_backorders', 'no'),
(260, 38, '_sold_individually', 'no'),
(261, 38, '_virtual', 'no'),
(262, 38, '_downloadable', 'no'),
(263, 38, '_download_limit', '-1'),
(264, 38, '_download_expiry', '-1'),
(265, 38, '_thumbnail_id', '28'),
(266, 38, '_stock', '10'),
(267, 38, '_stock_status', 'instock'),
(268, 38, '_wc_average_rating', '0'),
(269, 38, '_wc_review_count', '0'),
(270, 38, '_product_version', '11.1.2'),
(271, 38, '_price', '54.90'),
(272, 39, 'site-post-title', 'disabled'),
(273, 39, 'site-sidebar-layout', 'no-sidebar'),
(274, 39, 'site-content-layout', 'plain-container'),
(277, 47, '_menu_item_type', 'post_type'),
(278, 47, '_menu_item_menu_item_parent', '0'),
(279, 47, '_menu_item_object_id', '39'),
(280, 47, '_menu_item_object', 'page'),
(281, 47, '_menu_item_target', ''),
(282, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 47, '_menu_item_xfn', ''),
(284, 47, '_menu_item_url', ''),
(285, 48, '_menu_item_type', 'post_type'),
(286, 48, '_menu_item_menu_item_parent', '0'),
(287, 48, '_menu_item_object_id', '5'),
(288, 48, '_menu_item_object', 'page'),
(289, 48, '_menu_item_target', ''),
(290, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 48, '_menu_item_xfn', ''),
(292, 48, '_menu_item_url', ''),
(293, 49, '_menu_item_type', 'taxonomy'),
(294, 49, '_menu_item_menu_item_parent', '48'),
(295, 49, '_menu_item_object_id', '16'),
(296, 49, '_menu_item_object', 'product_cat'),
(297, 49, '_menu_item_target', ''),
(298, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(299, 49, '_menu_item_xfn', ''),
(300, 49, '_menu_item_url', ''),
(301, 50, '_menu_item_type', 'taxonomy'),
(302, 50, '_menu_item_menu_item_parent', '49'),
(303, 50, '_menu_item_object_id', '17'),
(304, 50, '_menu_item_object', 'product_cat'),
(305, 50, '_menu_item_target', ''),
(306, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(307, 50, '_menu_item_xfn', ''),
(308, 50, '_menu_item_url', ''),
(309, 51, '_menu_item_type', 'taxonomy'),
(310, 51, '_menu_item_menu_item_parent', '49'),
(311, 51, '_menu_item_object_id', '18'),
(312, 51, '_menu_item_object', 'product_cat'),
(313, 51, '_menu_item_target', ''),
(314, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 51, '_menu_item_xfn', ''),
(316, 51, '_menu_item_url', ''),
(317, 52, '_menu_item_type', 'taxonomy'),
(318, 52, '_menu_item_menu_item_parent', '49'),
(319, 52, '_menu_item_object_id', '19'),
(320, 52, '_menu_item_object', 'product_cat'),
(321, 52, '_menu_item_target', ''),
(322, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(323, 52, '_menu_item_xfn', ''),
(324, 52, '_menu_item_url', ''),
(325, 53, '_menu_item_type', 'taxonomy'),
(326, 53, '_menu_item_menu_item_parent', '48'),
(327, 53, '_menu_item_object_id', '20'),
(328, 53, '_menu_item_object', 'product_cat'),
(329, 53, '_menu_item_target', ''),
(330, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(331, 53, '_menu_item_xfn', ''),
(332, 53, '_menu_item_url', ''),
(333, 54, '_menu_item_type', 'post_type'),
(334, 54, '_menu_item_menu_item_parent', '0'),
(335, 54, '_menu_item_object_id', '40'),
(336, 54, '_menu_item_object', 'page'),
(337, 54, '_menu_item_target', ''),
(338, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(339, 54, '_menu_item_xfn', ''),
(340, 54, '_menu_item_url', ''),
(341, 55, '_menu_item_type', 'post_type'),
(342, 55, '_menu_item_menu_item_parent', '0'),
(343, 55, '_menu_item_object_id', '41'),
(344, 55, '_menu_item_object', 'page'),
(345, 55, '_menu_item_target', ''),
(346, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(347, 55, '_menu_item_xfn', ''),
(348, 55, '_menu_item_url', ''),
(349, 56, '_menu_item_type', 'post_type'),
(350, 56, '_menu_item_menu_item_parent', '0'),
(351, 56, '_menu_item_object_id', '42'),
(352, 56, '_menu_item_object', 'page'),
(353, 56, '_menu_item_target', ''),
(354, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(355, 56, '_menu_item_xfn', ''),
(356, 56, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2026-10-28 14:18:38', '2026-10-28 14:18:38', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/pedalsur.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2026-10-28 14:18:38', '2026-10-28 14:18:38', '', 0, 'http://localhost/pedalsur/?page_id=3', 0, 'page', '', 0),
(4, 1, '2026-10-28 15:18:45', '2026-10-28 14:18:45', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2026-10-28 15:18:45', '2026-10-28 14:18:45', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/woocommerce-placeholder.webp', 0, 'attachment', 'image/webp', 0),
(5, 1, '2026-10-28 15:18:45', '2026-10-28 14:18:45', '', 'Tienda', '', 'publish', 'closed', 'closed', '', 'tienda', '', '', '2026-10-28 15:18:45', '2026-10-28 14:18:45', '', 0, 'http://localhost/pedalsur/tienda/', 0, 'page', '', 0),
(6, 1, '2026-10-28 15:18:45', '2026-10-28 14:18:45', '<!-- wp:woocommerce/cart -->\n<div class=\"wp-block-woocommerce-cart alignwide is-loading\"><!-- wp:woocommerce/filled-cart-block -->\n<div class=\"wp-block-woocommerce-filled-cart-block\"><!-- wp:woocommerce/cart-items-block -->\n<div class=\"wp-block-woocommerce-cart-items-block\"><!-- wp:woocommerce/cart-line-items-block -->\n<div class=\"wp-block-woocommerce-cart-line-items-block\"></div>\n<!-- /wp:woocommerce/cart-line-items-block -->\n\n<!-- wp:woocommerce/product-collection {\"queryId\":0,\"query\":{\"perPage\":3,\"pages\":1,\"offset\":0,\"postType\":\"product\",\"order\":\"asc\",\"orderBy\":\"title\",\"search\":\"\",\"exclude\":[],\"inherit\":false,\"taxQuery\":{},\"isProductCollectionBlock\":true,\"featured\":false,\"woocommerceOnSale\":false,\"woocommerceStockStatus\":[\"instock\",\"outofstock\",\"onbackorder\"],\"woocommerceAttributes\":[],\"woocommerceHandPickedProducts\":[],\"filterable\":false,\"relatedBy\":{\"categories\":true,\"tags\":true}},\"tagName\":\"div\",\"displayLayout\":{\"type\":\"flex\",\"columns\":3,\"shrinkColumns\":true},\"dimensions\":{\"widthType\":\"fill\"},\"collection\":\"woocommerce/product-collection/cross-sells\",\"hideControls\":[\"filterable\"],\"queryContextIncludes\":[\"collection\"]} -->\n<div class=\"wp-block-woocommerce-product-collection\"><!-- wp:heading {\"textAlign\":\"left\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"1rem\"}}}} -->\n<h2 class=\"wp-block-heading has-text-align-left\" style=\"margin-bottom:1rem\">Puede que estés interesado en&hellip;</h2>\n\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-template -->\n<!-- wp:woocommerce/product-image {\"showSaleBadge\":false,\"imageSizing\":\"thumbnail\",\"isDescendentOfQueryLoop\":true} -->\n<!-- wp:woocommerce/product-sale-badge {\"align\":\"right\"} /-->\n<!-- /wp:woocommerce/product-image -->\n\n<!-- wp:post-title {\"textAlign\":\"center\",\"isLink\":true,\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"0.75rem\",\"top\":\"0\"}},\"typography\":{\"lineHeight\":\"1.4\"}},\"fontSize\":\"medium\",\"__woocommerceNamespace\":\"woocommerce/product-collection/product-title\"} /-->\n\n<!-- wp:woocommerce/product-price {\"isDescendentOfQueryLoop\":true,\"textAlign\":\"center\",\"fontSize\":\"small\"} /-->\n\n<!-- wp:woocommerce/product-button {\"textAlign\":\"center\",\"isDescendentOfQueryLoop\":true,\"fontSize\":\"small\"} /-->\n<!-- /wp:woocommerce/product-template --></div>\n<!-- /wp:woocommerce/product-collection --></div>\n\n<!-- /wp:woocommerce/cart-items-block -->\n\n<!-- wp:woocommerce/cart-totals-block -->\n<div class=\"wp-block-woocommerce-cart-totals-block\"><!-- wp:woocommerce/cart-order-summary-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-block\"><!-- wp:woocommerce/cart-order-summary-heading-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-heading-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-heading-block -->\n\n<!-- wp:woocommerce/cart-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/cart-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/cart-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-fee-block -->\n\n<!-- wp:woocommerce/cart-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-discount-block -->\n\n<!-- wp:woocommerce/cart-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/cart-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/cart-order-summary-block -->\n\n<!-- wp:woocommerce/cart-express-payment-block -->\n<div class=\"wp-block-woocommerce-cart-express-payment-block\"></div>\n<!-- /wp:woocommerce/cart-express-payment-block -->\n\n<!-- wp:woocommerce/proceed-to-checkout-block -->\n<div class=\"wp-block-woocommerce-proceed-to-checkout-block\"></div>\n<!-- /wp:woocommerce/proceed-to-checkout-block -->\n\n<!-- wp:woocommerce/cart-accepted-payment-methods-block -->\n<div class=\"wp-block-woocommerce-cart-accepted-payment-methods-block\"></div>\n<!-- /wp:woocommerce/cart-accepted-payment-methods-block --></div>\n<!-- /wp:woocommerce/cart-totals-block --></div>\n<!-- /wp:woocommerce/filled-cart-block -->\n\n<!-- wp:woocommerce/empty-cart-block -->\n<div class=\"wp-block-woocommerce-empty-cart-block\"><!-- wp:heading {\"textAlign\":\"center\",\"className\":\"with-empty-cart-icon wc-block-cart__empty-cart__title\"} -->\n<h2 class=\"wp-block-heading has-text-align-center with-empty-cart-icon wc-block-cart__empty-cart__title\">¡Tu carrito está actualmente vacío!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"className\":\"is-style-dots\"} -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-dots\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Nuevo en la tienda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4,\"rows\":1} /--></div>\n<!-- /wp:woocommerce/empty-cart-block --></div>\n<!-- /wp:woocommerce/cart -->', 'Carrito', '', 'publish', 'closed', 'closed', '', 'carrito', '', '', '2026-10-28 15:18:50', '2026-10-28 14:18:50', '', 0, 'http://localhost/pedalsur/carrito/', 0, 'page', '', 0),
(7, 1, '2026-10-28 15:18:45', '2026-10-28 14:18:45', '<!-- wp:woocommerce/checkout -->\n<div class=\"wp-block-woocommerce-checkout alignwide wc-block-checkout is-loading\"><!-- wp:woocommerce/checkout-fields-block -->\n<div class=\"wp-block-woocommerce-checkout-fields-block\"><!-- wp:woocommerce/checkout-express-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-express-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-express-payment-block -->\n\n<!-- wp:woocommerce/checkout-contact-information-block -->\n<div class=\"wp-block-woocommerce-checkout-contact-information-block\"></div>\n<!-- /wp:woocommerce/checkout-contact-information-block -->\n\n<!-- wp:woocommerce/checkout-shipping-method-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-method-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-method-block -->\n\n<!-- wp:woocommerce/checkout-pickup-options-block -->\n<div class=\"wp-block-woocommerce-checkout-pickup-options-block\"></div>\n<!-- /wp:woocommerce/checkout-pickup-options-block -->\n\n<!-- wp:woocommerce/checkout-shipping-address-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-address-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-address-block -->\n\n<!-- wp:woocommerce/checkout-billing-address-block -->\n<div class=\"wp-block-woocommerce-checkout-billing-address-block\"></div>\n<!-- /wp:woocommerce/checkout-billing-address-block -->\n\n<!-- wp:woocommerce/checkout-shipping-methods-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-methods-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-methods-block -->\n\n<!-- wp:woocommerce/checkout-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-payment-block -->\n\n<!-- wp:woocommerce/checkout-additional-information-block -->\n<div class=\"wp-block-woocommerce-checkout-additional-information-block\"></div>\n<!-- /wp:woocommerce/checkout-additional-information-block -->\n\n<!-- wp:woocommerce/checkout-order-note-block -->\n<div class=\"wp-block-woocommerce-checkout-order-note-block\"></div>\n<!-- /wp:woocommerce/checkout-order-note-block -->\n\n<!-- wp:woocommerce/checkout-terms-block -->\n<div class=\"wp-block-woocommerce-checkout-terms-block\"></div>\n<!-- /wp:woocommerce/checkout-terms-block -->\n\n<!-- wp:woocommerce/checkout-actions-block -->\n<div class=\"wp-block-woocommerce-checkout-actions-block\"></div>\n<!-- /wp:woocommerce/checkout-actions-block --></div>\n<!-- /wp:woocommerce/checkout-fields-block -->\n\n<!-- wp:woocommerce/checkout-totals-block -->\n<div class=\"wp-block-woocommerce-checkout-totals-block\"><!-- wp:woocommerce/checkout-order-summary-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-block\"><!-- wp:woocommerce/checkout-order-summary-cart-items-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-cart-items-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-cart-items-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-fee-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-discount-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/checkout-order-summary-block --></div>\n<!-- /wp:woocommerce/checkout-totals-block --></div>\n<!-- /wp:woocommerce/checkout -->', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2026-10-28 15:18:45', '2026-10-28 14:18:45', '', 0, 'http://localhost/pedalsur/finalizar-compra/', 0, 'page', '', 0),
(8, 1, '2026-10-28 15:18:45', '2026-10-28 14:18:45', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Mi cuenta', '', 'publish', 'closed', 'closed', '', 'mi-cuenta', '', '', '2026-10-28 15:18:45', '2026-10-28 14:18:45', '', 0, 'http://localhost/pedalsur/mi-cuenta/', 0, 'page', '', 0),
(9, 1, '2026-10-28 15:18:45', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Overview</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Refunds</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Late or missing refunds</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Sale items</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Exchanges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Gifts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Shipping returns</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Need help?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Política de devoluciones y reembolsos', '', 'draft', 'closed', 'closed', '', 'reembolso_devoluciones', '', '', '2026-10-28 15:18:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/pedalsur/?page_id=9', 0, 'page', '', 0),
(10, 1, '2026-10-28 15:18:45', '2026-10-28 14:18:45', '<label> Nombre y apellidos\n    [text* your-name autocomplete:name] </label>\n\n<label> Correo electrónico\n    [email* your-email autocomplete:email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Mensaje\n    [textarea* your-message] </label>\n\n[submit \"Enviar\"]\n[_site_title] «[your-subject]»\n[_site_title] <admin@pedalsur.local>\nDe: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] «[your-subject]»\n[_site_title] <admin@pedalsur.local>\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nGracias por tu mensaje. Ha sido enviado.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellena este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHa ocurrido un error desconocido al subir el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nHa ocurrido un error al subir el archivo.\nPor favor, introduce una fecha con el formato YYYY-MM-DD.\nEste campo tiene una fecha demasiado temprana.\nEste campo tiene una fecha demasiado tardía.\nPor favor, introduce un número.\nEste campo tiene un número demasiado pequeño.\nEste campo tiene un número demasiado grande.\nLa respuesta al cuestionario no es correcta.\nEl código introducido es incorrecto.\nPor favor, introduce una dirección de correo electrónico.\nPor favor, introduce una URL.\nPor favor, introduce un número de teléfono.', 'Formulario de contacto', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/?post_type=wpcf7_contact_form&#038;p=10', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2026-10-28 15:18:50', '2026-10-28 14:18:50', '<!-- wp:woocommerce/cart -->\n<div class=\"wp-block-woocommerce-cart alignwide is-loading\"><!-- wp:woocommerce/filled-cart-block -->\n<div class=\"wp-block-woocommerce-filled-cart-block\"><!-- wp:woocommerce/cart-items-block -->\n<div class=\"wp-block-woocommerce-cart-items-block\"><!-- wp:woocommerce/cart-line-items-block -->\n<div class=\"wp-block-woocommerce-cart-line-items-block\"></div>\n<!-- /wp:woocommerce/cart-line-items-block -->\n\n<!-- wp:woocommerce/product-collection {\"queryId\":0,\"query\":{\"perPage\":3,\"pages\":1,\"offset\":0,\"postType\":\"product\",\"order\":\"asc\",\"orderBy\":\"title\",\"search\":\"\",\"exclude\":[],\"inherit\":false,\"taxQuery\":{},\"isProductCollectionBlock\":true,\"featured\":false,\"woocommerceOnSale\":false,\"woocommerceStockStatus\":[\"instock\",\"outofstock\",\"onbackorder\"],\"woocommerceAttributes\":[],\"woocommerceHandPickedProducts\":[],\"filterable\":false,\"relatedBy\":{\"categories\":true,\"tags\":true}},\"tagName\":\"div\",\"displayLayout\":{\"type\":\"flex\",\"columns\":3,\"shrinkColumns\":true},\"dimensions\":{\"widthType\":\"fill\"},\"collection\":\"woocommerce/product-collection/cross-sells\",\"hideControls\":[\"filterable\"],\"queryContextIncludes\":[\"collection\"]} -->\n<div class=\"wp-block-woocommerce-product-collection\"><!-- wp:heading {\"textAlign\":\"left\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"1rem\"}}}} -->\n<h2 class=\"wp-block-heading has-text-align-left\" style=\"margin-bottom:1rem\">Puede que estés interesado en&hellip;</h2>\n\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-template -->\n<!-- wp:woocommerce/product-image {\"showSaleBadge\":false,\"imageSizing\":\"thumbnail\",\"isDescendentOfQueryLoop\":true} -->\n<!-- wp:woocommerce/product-sale-badge {\"align\":\"right\"} /-->\n<!-- /wp:woocommerce/product-image -->\n\n<!-- wp:post-title {\"textAlign\":\"center\",\"isLink\":true,\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"0.75rem\",\"top\":\"0\"}},\"typography\":{\"lineHeight\":\"1.4\"}},\"fontSize\":\"medium\",\"__woocommerceNamespace\":\"woocommerce/product-collection/product-title\"} /-->\n\n<!-- wp:woocommerce/product-price {\"isDescendentOfQueryLoop\":true,\"textAlign\":\"center\",\"fontSize\":\"small\"} /-->\n\n<!-- wp:woocommerce/product-button {\"textAlign\":\"center\",\"isDescendentOfQueryLoop\":true,\"fontSize\":\"small\"} /-->\n<!-- /wp:woocommerce/product-template --></div>\n<!-- /wp:woocommerce/product-collection --></div>\n\n<!-- /wp:woocommerce/cart-items-block -->\n\n<!-- wp:woocommerce/cart-totals-block -->\n<div class=\"wp-block-woocommerce-cart-totals-block\"><!-- wp:woocommerce/cart-order-summary-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-block\"><!-- wp:woocommerce/cart-order-summary-heading-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-heading-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-heading-block -->\n\n<!-- wp:woocommerce/cart-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/cart-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/cart-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-fee-block -->\n\n<!-- wp:woocommerce/cart-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-discount-block -->\n\n<!-- wp:woocommerce/cart-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/cart-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/cart-order-summary-block -->\n\n<!-- wp:woocommerce/cart-express-payment-block -->\n<div class=\"wp-block-woocommerce-cart-express-payment-block\"></div>\n<!-- /wp:woocommerce/cart-express-payment-block -->\n\n<!-- wp:woocommerce/proceed-to-checkout-block -->\n<div class=\"wp-block-woocommerce-proceed-to-checkout-block\"></div>\n<!-- /wp:woocommerce/proceed-to-checkout-block -->\n\n<!-- wp:woocommerce/cart-accepted-payment-methods-block -->\n<div class=\"wp-block-woocommerce-cart-accepted-payment-methods-block\"></div>\n<!-- /wp:woocommerce/cart-accepted-payment-methods-block --></div>\n<!-- /wp:woocommerce/cart-totals-block --></div>\n<!-- /wp:woocommerce/filled-cart-block -->\n\n<!-- wp:woocommerce/empty-cart-block -->\n<div class=\"wp-block-woocommerce-empty-cart-block\"><!-- wp:heading {\"textAlign\":\"center\",\"className\":\"with-empty-cart-icon wc-block-cart__empty-cart__title\"} -->\n<h2 class=\"wp-block-heading has-text-align-center with-empty-cart-icon wc-block-cart__empty-cart__title\">¡Tu carrito está actualmente vacío!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"className\":\"is-style-dots\"} -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-dots\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Nuevo en la tienda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4,\"rows\":1} /--></div>\n<!-- /wp:woocommerce/empty-cart-block --></div>\n<!-- /wp:woocommerce/cart -->', 'Carrito', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2026-10-28 15:18:50', '2026-10-28 14:18:50', '', 6, 'http://localhost/pedalsur/?p=11', 0, 'revision', '', 0),
(12, 1, '2026-10-28 15:18:54', '2026-10-28 14:18:54', '', 'Portada PedalSur', '', 'inherit', 'open', 'closed', '', 'portada-pedalsur', '', '', '2026-10-28 15:18:54', '2026-10-28 14:18:54', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/pedalsur_portada.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2026-10-28 15:18:54', '2026-10-28 14:18:54', '', 'Logotipo PedalSur', '', 'inherit', 'open', 'closed', '', 'logotipo-pedalsur', '', '', '2026-10-28 15:18:54', '2026-10-28 14:18:54', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/pedalsur_logo.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 'Icono PedalSur', '', 'inherit', 'open', 'closed', '', 'icono-pedalsur', '', '', '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/pedalsur_icono_512.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 'Banner PedalSur', '', 'inherit', 'open', 'closed', '', 'banner-pedalsur', '', '', '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/pedalsur_cabecera.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 'Bicicletas de carretera', '', 'inherit', 'open', 'closed', '', 'bicicletas-de-carretera', '', '', '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/cat-carretera.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 'Bicicletas eléctricas', '', 'inherit', 'open', 'closed', '', 'bicicletas-electricas', '', '', '2026-10-28 15:18:55', '2026-10-28 14:18:55', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/cat-electricas.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2026-10-28 15:18:56', '2026-10-28 14:18:56', '', 'Bicicletas de montaña', '', 'inherit', 'open', 'closed', '', 'bicicletas-de-montana', '', '', '2026-10-28 15:18:56', '2026-10-28 14:18:56', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/cat-montana.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2026-10-28 15:18:56', '2026-10-28 14:18:56', '', 'Bici de montaña Sierra 29', '', 'inherit', 'open', 'closed', '', 'bici-de-montana-sierra-29', '', '', '2026-10-28 15:18:56', '2026-10-28 14:18:56', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/8.webp', 0, 'attachment', 'image/webp', 0),
(20, 1, '2026-10-28 15:18:57', '2026-10-28 14:18:57', '', 'Bici eléctrica Volt E-City', '', 'inherit', 'open', 'closed', '', 'bici-electrica-volt-e-city', '', '', '2026-10-28 15:18:57', '2026-10-28 14:18:57', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 'Bomba de pie con manómetro', '', 'inherit', 'open', 'closed', '', 'bomba-de-pie-con-manometro', '', '', '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 'Candado en U Fortis', '', 'inherit', 'open', 'closed', '', 'candado-en-u-fortis', '', '', '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 'Colnago Y1Rs – Edición Pogačar', '', 'inherit', 'open', 'closed', '', 'colnago-y1rs-edicion-pogacar', '', '', '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 'Bici eléctrica de montaña Trail E-Pro', '', 'inherit', 'open', 'closed', '', 'bici-electrica-de-montana-trail-e-pro', '', '', '2026-10-28 15:18:58', '2026-10-28 14:18:58', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/1.webp', 0, 'attachment', 'image/webp', 0),
(25, 1, '2026-10-28 15:18:59', '2026-10-28 14:18:59', '', 'Bici de montaña doble suspensión Alborán FS', '', 'inherit', 'open', 'closed', '', 'bici-de-montana-doble-suspension-alboran-fs', '', '', '2026-10-28 15:18:59', '2026-10-28 14:18:59', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/11.webp', 0, 'attachment', 'image/webp', 0),
(26, 1, '2026-10-28 15:18:59', '2026-10-28 14:18:59', '', 'Kit de luces LED delantera y trasera', '', 'inherit', 'open', 'closed', '', 'kit-de-luces-led-delantera-y-trasera', '', '', '2026-10-28 15:18:59', '2026-10-28 14:18:59', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/2.webp', 0, 'attachment', 'image/webp', 0),
(27, 1, '2026-10-28 15:18:59', '2026-10-28 14:18:59', '', 'Guantes ciclistas cortos con gel', '', 'inherit', 'open', 'closed', '', 'guantes-ciclistas-cortos-con-gel', '', '', '2026-10-28 15:18:59', '2026-10-28 14:18:59', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/5.webp', 0, 'attachment', 'image/webp', 0),
(28, 1, '2026-10-28 15:19:00', '2026-10-28 14:19:00', '', 'Cubiertas de carretera Zaffiro Pro (par)', '', 'inherit', 'open', 'closed', '', 'cubiertas-de-carretera-zaffiro-pro-par', '', '', '2026-10-28 15:19:00', '2026-10-28 14:19:00', '', 0, 'http://localhost/pedalsur/wp-content/uploads/2026/10/6.webp', 0, 'attachment', 'image/webp', 0),
(29, 1, '2026-10-28 15:19:06', '2026-10-28 14:19:06', '<p>La Sierra 29 es una bicicleta de montaña pensada para quien quiere empezar a rodar fuera del asfalto sin gastar de más. Cuadro de aluminio ligero, ruedas de 29 pulgadas para pasar con soltura sobre raíces y piedras, horquilla con suspensión y frenos de disco.</p><p>Se entrega montada y revisada en nuestro taller de Málaga.</p>', 'Bici de montaña Sierra 29', 'Bicicleta de montaña de 29 pulgadas con cuadro de aluminio, ideal para las rutas de la Sierra de Málaga.', 'publish', 'open', 'closed', '', 'bici-de-montana-sierra-29', '', '', '2026-10-28 15:19:06', '2026-10-28 14:19:06', '', 0, 'http://localhost/pedalsur/producto/bici-de-montana-sierra-29/', 1, 'product', '', 0),
(30, 1, '2026-10-28 15:19:07', '2026-10-28 14:19:07', '<p>La Volt E-City es la compañera perfecta para moverte por la ciudad sin sudar. Motor silencioso, batería extraíble para cargarla en casa o en la oficina y cuadro plegable que cabe en el maletero o en un trastero.</p><p>Asistencia al pedaleo en varios niveles y luces integradas para circular con seguridad.</p>', 'Bici eléctrica Volt E-City', 'Bicicleta eléctrica urbana plegable con motor silencioso y batería extraíble.', 'publish', 'open', 'closed', '', 'bici-electrica-volt-e-city', '', '', '2026-10-28 15:19:07', '2026-10-28 14:19:07', '', 0, 'http://localhost/pedalsur/producto/bici-electrica-volt-e-city/', 2, 'product', '', 0),
(31, 1, '2026-10-28 15:19:07', '2026-10-28 14:19:07', '<p>Bomba de pie con base ancha y manómetro visible para inflar tus ruedas a la presión exacta. Cabezal compatible con válvulas Presta y Schrader.</p>', 'Bomba de pie con manómetro', 'Bomba de pie con manómetro para inflar con precisión.', 'publish', 'open', 'closed', '', 'bomba-de-pie-con-manometro', '', '', '2026-10-28 15:19:07', '2026-10-28 14:19:07', '', 0, 'http://localhost/pedalsur/producto/bomba-de-pie-con-manometro/', 3, 'product', '', 0),
(32, 1, '2026-10-28 15:19:07', '2026-10-28 14:19:07', '<p>Candado en U de acero endurecido con cerradura de alta seguridad y soporte para fijarlo al cuadro. Incluye dos llaves.</p>', 'Candado en U Fortis', 'Candado en U de acero endurecido para dejar tu bici tranquila.', 'publish', 'open', 'closed', '', 'candado-en-u-fortis', '', '', '2026-10-28 15:19:07', '2026-10-28 14:19:07', '', 0, 'http://localhost/pedalsur/producto/candado-en-u-fortis/', 4, 'product', '', 0),
(33, 1, '2026-10-28 15:19:07', '2026-10-28 14:19:07', '<p>La Colnago Y1Rs es una bici de carretera pensada para la velocidad: cuadro de carbono con tubos aerodinámicos, horquilla tipo bayoneta y cockpit integrado que oculta los cables.</p><p>Es el modelo con el que compite Tadej Pogačar en las etapas de ruta del Tour de Francia 2026. Con ella tendrás una máquina ligera y muy aerodinámica para grupetas y salidas largas. Disponible en tallas 52, 54 y 56.</p>', 'Colnago Y1Rs – Edición Pogačar', 'Bicicleta de carretera aerodinámica de carbono, la misma familia que usa Tadej Pogačar en el Tour de Francia.', 'publish', 'open', 'closed', '', 'colnago-y1rs-edicion-pogacar', '', '', '2026-10-28 15:19:07', '2026-10-28 14:19:07', '', 0, 'http://localhost/pedalsur/producto/colnago-y1rs-edicion-pogacar/', 5, 'product', '', 0),
(34, 1, '2026-10-28 15:19:07', '2026-10-28 14:19:07', '<p>Una eléctrica de montaña pensada para subir lo que antes no te atrevías: suspensión total, motor de alto par y batería integrada en el cuadro para una autonomía de varias horas de ruta.</p>', 'Bici eléctrica de montaña Trail E-Pro', 'Bicicleta eléctrica de montaña con suspensión total y motor de alto par.', 'publish', 'open', 'closed', '', 'bici-electrica-de-montana-trail-e-pro', '', '', '2026-10-28 15:19:07', '2026-10-28 14:19:07', '', 0, 'http://localhost/pedalsur/producto/bici-electrica-de-montana-trail-e-pro/', 6, 'product', '', 0),
(35, 1, '2026-10-28 15:19:07', '2026-10-28 14:19:07', '<p>Bicicleta de montaña de doble suspensión con geometría equilibrada, transmisión de 12 velocidades y frenos de disco hidráulicos. Ideal para trazados técnicos en los Montes de Málaga.</p>', 'Bici de montaña doble suspensión Alborán FS', 'Doble suspensión ligera para bajar con control y subir con eficacia.', 'publish', 'open', 'closed', '', 'bici-de-montana-doble-suspension-alboran-fs', '', '', '2026-10-28 15:19:07', '2026-10-28 14:19:07', '', 0, 'http://localhost/pedalsur/producto/bici-de-montana-doble-suspension-alboran-fs/', 7, 'product', '', 0),
(36, 1, '2026-10-28 15:19:07', '2026-10-28 14:19:07', '<p>Juego de luces LED delantera y trasera con carga USB, varios modos de iluminación y sujeción rápida al manillar y al tubo del sillín. Autonomía de hasta 8 horas.</p>', 'Kit de luces LED delantera y trasera', 'Luz delantera y trasera recargables por USB.', 'publish', 'open', 'closed', '', 'kit-de-luces-led-delantera-y-trasera', '', '', '2026-10-28 15:19:07', '2026-10-28 14:19:07', '', 0, 'http://localhost/pedalsur/producto/kit-de-luces-led-delantera-y-trasera/', 8, 'product', '', 0),
(37, 1, '2026-10-28 15:19:08', '2026-10-28 14:19:08', '<p>Guantes de dedos cortos con palma acolchada de gel que absorbe las vibraciones, tejido transpirable y cierre de velcro ajustable. Cómodos para salidas largas de carretera y montaña.</p>', 'Guantes ciclistas cortos con gel', 'Guantes cortos con acolchado de gel para salidas largas.', 'publish', 'open', 'closed', '', 'guantes-ciclistas-cortos-con-gel', '', '', '2026-10-28 15:19:08', '2026-10-28 14:19:08', '', 0, 'http://localhost/pedalsur/producto/guantes-ciclistas-cortos-con-gel/', 9, 'product', '', 0),
(38, 1, '2026-10-28 15:19:08', '2026-10-28 14:19:08', '<p>Par de cubiertas de carretera de 700x28 con compuesto de buen agarre y gran resistencia al desgaste. Una opción fiable para entrenar durante todo el año.</p>', 'Cubiertas de carretera Zaffiro Pro (par)', 'Par de cubiertas de carretera con buen agarre y durabilidad.', 'publish', 'open', 'closed', '', 'cubiertas-de-carretera-zaffiro-pro-par', '', '', '2026-10-28 15:19:08', '2026-10-28 14:19:08', '', 0, 'http://localhost/pedalsur/producto/cubiertas-de-carretera-zaffiro-pro-par/', 10, 'product', '', 0),
(39, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '<!-- wp:html -->\n<div style=\"position:relative;border-radius:20px;overflow:hidden;background:#0B3C5D url(\'http://localhost/pedalsur/wp-content/uploads/2026/10/pedalsur_portada.jpg\') center/cover no-repeat;min-height:470px;display:flex;align-items:center;justify-content:center;text-align:center;padding:64px 24px 110px;\"><div style=\"position:absolute;top:0;right:0;bottom:0;left:0;background:linear-gradient(180deg,rgba(11,60,93,.10) 0%,rgba(11,60,93,.62) 100%);\"></div><div style=\"position:relative;max-width:660px;color:#ffffff;\"><span style=\"display:inline-block;background:#E8761A;color:#fff;padding:6px 16px;border-radius:20px;font-size:12px;font-weight:700;letter-spacing:.08em;text-transform:uppercase;\">Tienda de bicicletas en Málaga</span><h1 style=\"color:#ffffff;font-size:58px;line-height:1.1;margin:18px 0 12px;\">PedalSur</h1><p style=\"font-size:18px;margin:0 0 26px;color:#ffffff;\">Bicicletas, ropa y accesorios para rodar por el sur, con envío a toda España.</p><a href=\"http://localhost/pedalsur/tienda/\" style=\"display:inline-block;background:#E8761A;color:#fff;padding:13px 28px;border-radius:8px;font-weight:700;text-decoration:none;margin:4px;\">Ver productos</a><a href=\"http://localhost/pedalsur/empresa/\" style=\"display:inline-block;border:2px solid #ffffff;color:#fff;padding:11px 26px;border-radius:8px;font-weight:700;text-decoration:none;margin:4px;\">Conócenos</a></div></div><div style=\"position:relative;margin:-64px 4% 0;background:#ffffff;border-radius:14px;box-shadow:0 6px 24px rgba(11,60,93,.15);padding:18px 22px;display:grid;grid-template-columns:repeat(auto-fit,minmax(210px,1fr));gap:10px;\"><div style=\"display:flex;align-items:center;gap:12px;padding:6px 8px;\"><div style=\"flex:0 0 42px;height:42px;border-radius:50%;background:#FDEBD9;display:flex;align-items:center;justify-content:center;font-size:20px;\">🚚</div><div><strong style=\"display:block;color:#0B3C5D;\">Envío gratis</strong><small style=\"color:#667085;\">En pedidos de más de 50 €</small></div></div><div style=\"display:flex;align-items:center;gap:12px;padding:6px 8px;\"><div style=\"flex:0 0 42px;height:42px;border-radius:50%;background:#FDEBD9;display:flex;align-items:center;justify-content:center;font-size:20px;\">↩️</div><div><strong style=\"display:block;color:#0B3C5D;\">Devoluciones 30 días</strong><small style=\"color:#667085;\">Sin complicaciones</small></div></div><div style=\"display:flex;align-items:center;gap:12px;padding:6px 8px;\"><div style=\"flex:0 0 42px;height:42px;border-radius:50%;background:#FDEBD9;display:flex;align-items:center;justify-content:center;font-size:20px;\">🔒</div><div><strong style=\"display:block;color:#0B3C5D;\">Pago seguro</strong><small style=\"color:#667085;\">Tarjeta, PayPal y Bizum</small></div></div><div style=\"display:flex;align-items:center;gap:12px;padding:6px 8px;\"><div style=\"flex:0 0 42px;height:42px;border-radius:50%;background:#FDEBD9;display:flex;align-items:center;justify-content:center;font-size:20px;\">🔧</div><div><strong style=\"display:block;color:#0B3C5D;\">Taller en Málaga</strong><small style=\"color:#667085;\">Montaje y revisión incluidos</small></div></div></div>\n<!-- /wp:html -->', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/inicio/', 0, 'page', '', 0),
(40, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PedalSur es una tienda de bicicletas nacida en Málaga en 2019. Vendemos bicicletas de carretera, montaña, urbanas, eléctricas e infantiles, además de ropa ciclista, accesorios y recambios. Todo lo elegimos nosotros mismos, probándolo por las carreteras y senderos de la Costa del Sol.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/pedalsur/wp-content/uploads/2026/10/pedalsur_cabecera.jpg\" alt=\"PedalSur, bicicletas en Málaga\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">A quién nos dirigimos</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Pensamos en cualquiera que quiera moverse en bici: quien va a trabajar por la ciudad, las familias que salen el fin de semana por el paseo marítimo, los aficionados a las rutas por los Montes de Málaga y los deportistas que preparan su próxima marcha.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué nos hace diferentes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\">\n<!-- wp:list-item -->\n<li><strong>Asesoramiento real:</strong> te ayudamos a elegir la talla y el tipo de bici que necesitas.</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li><strong>Taller propio:</strong> montaje, ajuste y primera revisión incluidos con cada bicicleta.</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li><strong>Envío a toda España</strong> y devoluciones durante 30 días.</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li><strong>Rutas en grupo</strong> gratuitas los domingos para clientes.</li>\n<!-- /wp:list-item -->\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://localhost/pedalsur/tienda/\">Ver productos</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Información legal</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\">\n<!-- wp:list-item -->\n<li><a href=\"http://localhost/pedalsur/informacion-legal/\">Información legal</a></li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li><a href=\"http://localhost/pedalsur/politica-de-cookies/\">Política de cookies</a></li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li><a href=\"http://localhost/pedalsur/proteccion-de-datos/\">Protección de datos</a></li>\n<!-- /wp:list-item -->\n</ul>\n<!-- /wp:list -->', 'Empresa', '', 'publish', 'closed', 'closed', '', 'empresa', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/empresa/', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(41, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contacta con PedalSur</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>¿Tienes dudas sobre una bici, una talla o un pedido? Escríbenos y te responderemos en menos de 24 horas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\">\n<!-- wp:list-item -->\n<li>📍 <strong>Dirección:</strong> Calle Larios, 12 · 29005 Málaga</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>📞 <strong>Teléfono:</strong> 952 000 000</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>✉️ <strong>Email:</strong> info@pedalsur.es</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>🕘 <strong>Horario:</strong> lunes a viernes de 10:00 a 14:00 y de 17:00 a 20:30 · sábados de 10:00 a 14:00</li>\n<!-- /wp:list-item -->\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Formulario de contacto</h3>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"cbfcca2\" title=\"Formulario de contacto\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Dónde estamos</h3>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps?q=Calle+Larios+12+29005+M%C3%A1laga&amp;output=embed\" width=\"100%\" height=\"380\" style=\"border:0\" loading=\"lazy\" allowfullscreen referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.google.com/maps/search/?api=1&amp;query=Calle+Larios+12+29005+M%C3%A1laga\">Abrir en Google Maps</a></p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/contacto/', 0, 'page', '', 0),
(42, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/blog/', 0, 'page', '', 0),
(43, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '<!-- wp:paragraph -->\n<p>Málaga es una ciudad perfecta para la bicicleta: clima suave casi todo el año y rutas para todos los niveles. Estas son cinco ideas para empezar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\">\n<!-- wp:list-item -->\n<li>Paseo marítimo de Málaga a Pedregalejo</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>Parque del Guadalhorce</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>Carril bici de la Malagueta al Puerto</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>Subida a los Montes de Málaga</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>Ruta por la Costa del Sol hasta Torremolinos</li>\n<!-- /wp:list-item -->\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><em>Entrada de ejemplo de la tienda ficticia · Práctica educativa.</em></p>\n<!-- /wp:paragraph -->', '5 rutas en bici para empezar a rodar por Málaga', '', 'publish', 'open', 'open', '', '5-rutas-en-bici-para-empezar-a-rodar-por-malaga', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/2026/10/28/5-rutas-en-bici-para-empezar-a-rodar-por-malaga/', 0, 'post', '', 0),
(44, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '<!-- wp:paragraph -->\n<p><strong>Tienda ficticia · Práctica educativa.</strong> Textos de ejemplo para un proyecto formativo; no son asesoramiento jurídico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Titular del sitio</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\">\n<!-- wp:list-item -->\n<li>Denominación: PedalSur (ejemplo)</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>Titular: Juan Jesús Díaz Garrido</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>Domicilio: Calle Larios, 12 · 29005 Málaga (ejemplo)</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>Correo electrónico: info@pedalsur.es (ejemplo)</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li>NIF: no existe, es una práctica</li>\n<!-- /wp:list-item -->\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Objeto</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Este sitio presenta una tienda virtual de bicicletas creada con fines formativos dentro del ciclo de Desarrollo de Aplicaciones Web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Propiedad intelectual</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Los textos y el diseño son obra del autor de la práctica. Las imágenes mantienen la licencia y el crédito de sus autores. Las marcas y modelos citados (por ejemplo, Colnago) pertenecen a sus respectivos titulares y se mencionan solo con fines ilustrativos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Responsabilidad</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Los precios, productos, stock y datos de contacto son ficticios. No se realizan ventas ni envíos reales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Legislación aplicable</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Este sitio se rige por la legislación española, en particular la Ley 34/2002 de servicios de la sociedad de la información y de comercio electrónico (LSSI-CE).</p>\n<!-- /wp:paragraph -->', 'Información legal', '', 'publish', 'closed', 'closed', '', 'informacion-legal', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/informacion-legal/', 0, 'page', '', 0),
(45, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '<!-- wp:paragraph -->\n<p><strong>Tienda ficticia · Práctica educativa.</strong> Textos de ejemplo para un proyecto formativo; no son asesoramiento jurídico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">¿Qué son las cookies?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Son pequeños archivos que un sitio web guarda en tu navegador para recordar información sobre tu visita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies que usa este sitio</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\">\n<!-- wp:list-item -->\n<li><strong>Técnicas (necesarias):</strong> las que usan WordPress y WooCommerce para mantener tu sesión, el carrito de la compra y el proceso de pago. No requieren consentimiento.</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li><strong>Analíticas y publicitarias:</strong> este sitio no utiliza cookies de análisis ni de publicidad.</li>\n<!-- /wp:list-item -->\n<!-- wp:list-item -->\n<li><strong>De terceros:</strong> el mapa de Google Maps de la página de contacto puede instalar cookies propias de Google.</li>\n<!-- /wp:list-item -->\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cómo desactivarlas</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Puedes bloquear o eliminar las cookies desde los ajustes de tu navegador (Chrome, Firefox, Edge, Safari). Si bloqueas las cookies técnicas, el carrito puede dejar de funcionar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contacto</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Para cualquier duda escribe a info@pedalsur.es (ejemplo).</p>\n<!-- /wp:paragraph -->', 'Política de cookies', '', 'publish', 'closed', 'closed', '', 'politica-de-cookies', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/politica-de-cookies/', 0, 'page', '', 0),
(46, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '<!-- wp:paragraph -->\n<p><strong>Tienda ficticia · Práctica educativa.</strong> Textos de ejemplo para un proyecto formativo; no son asesoramiento jurídico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Responsable del tratamiento</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Juan Jesús Díaz Garrido · info@pedalsur.es (ejemplo) · Calle Larios, 12 · 29005 Málaga (ejemplo).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Datos que se recogen</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A través del formulario de contacto: nombre y apellidos, correo electrónico, asunto y mensaje. En el proceso de compra de prueba: los datos de facturación y envío que se introduzcan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Finalidad y base jurídica</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Responder a las consultas recibidas (consentimiento del interesado) y gestionar los pedidos de prueba (ejecución de un contrato ficticio).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Conservación y destinatarios</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Los datos se conservan solo el tiempo necesario para la práctica y no se ceden a terceros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Derechos</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Puedes ejercer tus derechos de acceso, rectificación, supresión, oposición, limitación y portabilidad escribiendo a info@pedalsur.es (ejemplo). También puedes reclamar ante la Agencia Española de Protección de Datos (www.aepd.es).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Normativa aplicable: Reglamento (UE) 2016/679 (RGPD) y Ley Orgánica 3/2018 (LOPDGDD).</p>\n<!-- /wp:paragraph -->', 'Protección de datos', '', 'publish', 'closed', 'closed', '', 'proteccion-de-datos', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/proteccion-de-datos/', 0, 'page', '', 0),
(47, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/2026/10/28/47/', 0, 'nav_menu_item', '', 0),
(48, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'productos', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/2026/10/28/productos/', 2, 'nav_menu_item', '', 0),
(49, 1, '2026-10-28 15:19:12', '2026-10-28 14:19:12', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2026-10-28 15:19:12', '2026-10-28 14:19:12', '', 0, 'http://localhost/pedalsur/2026/10/28/49/', 3, 'nav_menu_item', '', 0),
(50, 1, '2026-10-28 15:19:13', '2026-10-28 14:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2026-10-28 15:19:13', '2026-10-28 14:19:13', '', 16, 'http://localhost/pedalsur/2026/10/28/50/', 4, 'nav_menu_item', '', 0),
(51, 1, '2026-10-28 15:19:13', '2026-10-28 14:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2026-10-28 15:19:13', '2026-10-28 14:19:13', '', 16, 'http://localhost/pedalsur/2026/10/28/51/', 5, 'nav_menu_item', '', 0),
(52, 1, '2026-10-28 15:19:13', '2026-10-28 14:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2026-10-28 15:19:13', '2026-10-28 14:19:13', '', 16, 'http://localhost/pedalsur/2026/10/28/52/', 6, 'nav_menu_item', '', 0),
(53, 1, '2026-10-28 15:19:13', '2026-10-28 14:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2026-10-28 15:19:13', '2026-10-28 14:19:13', '', 0, 'http://localhost/pedalsur/2026/10/28/53/', 7, 'nav_menu_item', '', 0),
(54, 1, '2026-10-28 15:19:13', '2026-10-28 14:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2026-10-28 15:19:13', '2026-10-28 14:19:13', '', 0, 'http://localhost/pedalsur/2026/10/28/54/', 8, 'nav_menu_item', '', 0),
(55, 1, '2026-10-28 15:19:13', '2026-10-28 14:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2026-10-28 15:19:13', '2026-10-28 14:19:13', '', 0, 'http://localhost/pedalsur/2026/10/28/55/', 9, 'nav_menu_item', '', 0),
(56, 1, '2026-10-28 15:19:13', '2026-10-28 14:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2026-10-28 15:19:13', '2026-10-28 14:19:13', '', 0, 'http://localhost/pedalsur/2026/10/28/56/', 10, 'nav_menu_item', '', 0),
(57, 1, '2026-10-28 15:54:34', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-10-28 15:54:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/pedalsur/?p=57', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'thumbnail_id', '16'),
(2, 19, 'thumbnail_id', '17'),
(3, 18, 'thumbnail_id', '18'),
(4, 16, 'product_count_product_cat', '5'),
(5, 18, 'product_count_product_cat', '3'),
(6, 19, 'product_count_product_cat', '2'),
(7, 20, 'product_count_product_cat', '5'),
(8, 17, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sin categorizar', 'sin-categorizar', 0),
(16, 'Bicicletas', 'bicicletas', 0),
(17, 'Carretera', 'carretera', 0),
(18, 'Montaña', 'montana', 0),
(19, 'Eléctricas', 'electricas', 0),
(20, 'Accesorios', 'accesorios', 0),
(21, 'Principal', 'principal', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(29, 2, 0),
(29, 8, 0),
(29, 16, 0),
(29, 18, 0),
(30, 2, 0),
(30, 8, 0),
(30, 16, 0),
(30, 19, 0),
(31, 2, 0),
(31, 20, 0),
(32, 2, 0),
(32, 20, 0),
(33, 2, 0),
(33, 8, 0),
(33, 16, 0),
(33, 17, 0),
(34, 2, 0),
(34, 16, 0),
(34, 18, 0),
(34, 19, 0),
(35, 2, 0),
(35, 16, 0),
(35, 18, 0),
(36, 2, 0),
(36, 20, 0),
(37, 2, 0),
(37, 20, 0),
(38, 2, 0),
(38, 20, 0),
(43, 1, 0),
(47, 21, 0),
(48, 21, 0),
(49, 21, 0),
(50, 21, 0),
(51, 21, 0),
(52, 21, 0),
(53, 21, 0),
(54, 21, 0),
(55, 21, 0),
(56, 21, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 10),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 3),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 5),
(17, 17, 'product_cat', '', 16, 1),
(18, 18, 'product_cat', '', 16, 3),
(19, 19, 'product_cat', '', 16, 2),
(20, 20, 'product_cat', '', 0, 5),
(21, 21, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_wc_admin_notes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `actioned_text` varchar(255) NOT NULL,
  `nonce_action` varchar(255) DEFAULT NULL,
  `nonce_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_wc_admin_note_actions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(16, 16),
(16, 17),
(16, 18),
(16, 19),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_email_unsubscribes`
--

CREATE TABLE `wp_wc_email_unsubscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_hash` char(64) NOT NULL,
  `email_kind` varchar(64) NOT NULL,
  `action` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_orders`
--

CREATE TABLE `wp_wc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tax_amount` decimal(26,8) DEFAULT NULL,
  `total_amount` decimal(26,8) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(320) DEFAULT NULL,
  `date_created_gmt` datetime DEFAULT NULL,
  `date_updated_gmt` datetime DEFAULT NULL,
  `parent_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_orders_meta`
--

CREATE TABLE `wp_wc_orders_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_addresses`
--

CREATE TABLE `wp_wc_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(20) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `postcode` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_operational_data`
--

CREATE TABLE `wp_wc_order_operational_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_via` varchar(100) DEFAULT NULL,
  `woocommerce_version` varchar(20) DEFAULT NULL,
  `prices_include_tax` tinyint(1) DEFAULT NULL,
  `coupon_usages_are_counted` tinyint(1) DEFAULT NULL,
  `download_permission_granted` tinyint(1) DEFAULT NULL,
  `cart_hash` varchar(100) DEFAULT NULL,
  `new_order_email_sent` tinyint(1) DEFAULT NULL,
  `order_key` varchar(100) DEFAULT NULL,
  `order_stock_reduced` tinyint(1) DEFAULT NULL,
  `date_paid_gmt` datetime DEFAULT NULL,
  `date_completed_gmt` datetime DEFAULT NULL,
  `shipping_tax_amount` decimal(26,8) DEFAULT NULL,
  `shipping_total_amount` decimal(26,8) DEFAULT NULL,
  `discount_tax_amount` decimal(26,8) DEFAULT NULL,
  `discount_total_amount` decimal(26,8) DEFAULT NULL,
  `recorded_sales` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_product_attributes_lookup`
--

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_product_download_directories`
--

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_wc_product_download_directories`
--

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file://C:/xampp/htdocs/pedalsur/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://localhost/pedalsur/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `global_unique_id` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) DEFAULT 'taxable',
  `tax_class` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `global_unique_id`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(29, 'BIC-MTB-001', '', 0, 0, 479.0000, 479.0000, 1, 5, 'instock', 0, 0.00, 0, 'taxable', ''),
(30, 'BIC-ELE-001', '', 0, 0, 1249.0000, 1249.0000, 1, 4, 'instock', 0, 0.00, 0, 'taxable', ''),
(31, 'ACC-BOM-001', '', 0, 0, 19.9000, 19.9000, 0, 12, 'instock', 0, 0.00, 0, 'taxable', ''),
(32, 'ACC-CAN-001', '', 0, 0, 24.9000, 24.9000, 0, 10, 'instock', 0, 0.00, 0, 'taxable', ''),
(33, 'BIC-RUT-002', '', 0, 0, 17990.0000, 17990.0000, 0, 2, 'instock', 0, 0.00, 0, 'taxable', ''),
(34, 'BIC-ELE-002', '', 0, 0, 3490.0000, 3490.0000, 0, 3, 'instock', 0, 0.00, 0, 'taxable', ''),
(35, 'BIC-MTB-002', '', 0, 0, 2190.0000, 2190.0000, 0, 3, 'instock', 0, 0.00, 0, 'taxable', ''),
(36, 'ACC-LUC-001', '', 0, 0, 34.9000, 34.9000, 0, 20, 'instock', 0, 0.00, 0, 'taxable', ''),
(37, 'ACC-GUA-001', '', 0, 0, 29.9000, 29.9000, 0, 15, 'instock', 0, 0.00, 0, 'taxable', ''),
(38, 'ACC-CUB-001', '', 0, 0, 54.9000, 54.9000, 0, 10, 'instock', 0, 0.00, 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_rate_limits`
--

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Tasa reducida', 'tasa-reducida'),
(2, 'Tasa cero', 'tasa-cero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_sessions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'España', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'ES', 'country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(1, 2, 'flat_rate', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  ADD KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  ADD KEY `status_claim_id` (`status`,`claim_id`);

--
-- Indices de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`),
  ADD KEY `woo_idx_comment_date_type` (`comment_date_gmt`,`comment_type`,`comment_approved`,`comment_post_ID`),
  ADD KEY `woo_idx_comment_approved_type` (`comment_approved`,`comment_type`,`comment_post_ID`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indices de la tabla `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indices de la tabla `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp_wc_email_unsubscribes`
--
ALTER TABLE `wp_wc_email_unsubscribes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_hash_kind` (`email_hash`,`email_kind`);

--
-- Indices de la tabla `wp_wc_orders`
--
ALTER TABLE `wp_wc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `date_created` (`date_created_gmt`),
  ADD KEY `customer_id_billing_email` (`customer_id`,`billing_email`(171)),
  ADD KEY `customer_id_status` (`customer_id`,`status`),
  ADD KEY `billing_email` (`billing_email`(191)),
  ADD KEY `transaction_id` (`transaction_id`(20)),
  ADD KEY `type_status_date` (`type`,`status`,`date_created_gmt`),
  ADD KEY `parent_order_id` (`parent_order_id`),
  ADD KEY `date_updated` (`date_updated_gmt`);

--
-- Indices de la tabla `wp_wc_orders_meta`
--
ALTER TABLE `wp_wc_orders_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key_value` (`meta_key`(50),`meta_value`(20)),
  ADD KEY `order_id_meta_key_meta_value` (`order_id`,`meta_key`(100),`meta_value`(82));

--
-- Indices de la tabla `wp_wc_order_addresses`
--
ALTER TABLE `wp_wc_order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_type_order_id` (`address_type`,`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `email` (`email`(191)),
  ADD KEY `phone` (`phone`);

--
-- Indices de la tabla `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_order_operational_data`
--
ALTER TABLE `wp_wc_order_operational_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `order_key` (`order_key`);

--
-- Indices de la tabla `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`,`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_product_date` (`customer_id`,`product_id`,`date_created`);

--
-- Indices de la tabla `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_date_paid_status_parent` (`date_paid`,`status`,`parent_id`);

--
-- Indices de la tabla `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_product_attributes_lookup`
--
ALTER TABLE `wp_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`),
  ADD KEY `taxonomy_term_id_in_stock_product_or_parent_id` (`taxonomy`,`term_id`,`in_stock`,`product_or_parent_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Indices de la tabla `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`),
  ADD KEY `sku` (`sku`(50));

--
-- Indices de la tabla `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Indices de la tabla `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id_expires` (`product_id`,`expires`);

--
-- Indices de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`),
  ADD KEY `idx_user_email` (`user_email`(100));

--
-- Indices de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`),
  ADD KEY `session_expiry` (`session_expiry`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `zone_order_id` (`zone_order`,`zone_id`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `method_id` (`method_id`(20));

--
-- Indices de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_email_unsubscribes`
--
ALTER TABLE `wp_wc_email_unsubscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_orders_meta`
--
ALTER TABLE `wp_wc_orders_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_order_addresses`
--
ALTER TABLE `wp_wc_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_order_operational_data`
--
ALTER TABLE `wp_wc_order_operational_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
