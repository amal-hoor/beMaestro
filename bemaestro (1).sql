-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 05:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bemaestro`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ar` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `author_id`, `photo_id`, `title_ar`, `title_en`, `content_ar`, `content_en`, `created_at`, `updated_at`) VALUES
(5, 12, 12, 'لارافل', 'LARAVEL', 'ي الإدارة الأمريكية، ويتم تعينه من قبل الرئيس الأمريكي وينال المشورة والموافقة من قبل مجلس الشيوخ الأمريكي ويكون الوزير عضواً في كابينة الولايات المتحدة (وهو مجلسٌ رئاسيٌ يضم الرئيس والوزراء ومدراء الوكالات الاتحادية المهمة) بالإضافة إلى عضويته في مجلس الأمن القومي الأمريكي. من واجبات ومهام وزير الخارجية التنظيم والإشراف على عمل وزارة الخارجية، والمشاركة في المفاوضات رفيعة المستوى مع الدول الأخرى، ومتابعة عمل السفارات والقنصليات الأمريكية في البلدان المختلفة، ومتابعة شؤون الرعايا الأمريكيين المقيمين في الخارج، وتنظيم سياسة الهجرة الأمريكية، كما يكون وزير الخارجية مستشاراً أولاً للرئيس الأمريكي فيما يتعلق بالشؤون الخارجية للبلاد\r\n', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur s\r\n\r\n', '2019-08-06 14:15:59', '2019-08-06 14:15:59'),
(6, 9, 13, 'مدونه1', 'blog1', 'مقالة حتى الآن، لذا فاحتمال ي الإدارة الأمريكية، ويتم تعينه من قبل الرئيس الأمريكي وينال المشورة والموافقة من قبل مجلس الشيوخ الأمريكي ويكون الوزير عضواً في كابينة الولايات المتحدة (وهو مجلسٌ رئاسيٌ يضم الرئيس والوزراء ومدراء الوكالات الاتحادية المهمة) بالإضافة إلى عضويته في مجلس الأمن القومي الأمريكي. من واجبات ومهام وزير الخارجية التنظيم والإشراف على عمل وزارة الخارجية، والمشاركة في المفاوضات رفيعة المستوى مع الدول الأخرى، ومتابعة عمل السفارات والقنصليات الأمريكية في البلدان المختلفة، ومتابعة شؤون الرعايا الأمريكيين المقيمين في الخارج، وتنظيم سياسة الهجرة الأمريكية، كما يكون وزير الخارجية مستشاراً أولاً للرئيس الأمريكي فيما يتعلق بالشؤون الخارجية للبلاد ما إذا كانت المقالة موجودةً', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur s', '2019-08-15 12:19:13', '2019-08-15 12:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, NULL, 'فئه1', 'cat1', NULL, NULL),
(2, 1, 'فئه2', 'cat2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `course_id`, `user_id`, `status`, `content`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, perspiciatis!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'amal', 'amal@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, praesentium.', '2019-08-15 08:17:28', '2019-08-15 08:17:28'),
(4, 'mohamed', 'mohamed@yahoo.com', 'orem ipsum dolor sit amet, consectetur adipisicing elit. Hic, unde!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, unde!', '2019-08-15 08:41:35', '2019-08-15 08:41:35'),
(5, 'ahmed', 'ahmed@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, optio.', '2019-08-15 08:48:17', '2019-08-15 08:48:17'),
(11, 'adham', 'adham@mail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, illo!', '2019-08-15 09:15:54', '2019-08-15 09:15:54'),
(51, 'amal', 'amal@mail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, voluptas!', '2019-08-20 06:40:17', '2019-08-20 06:40:17'),
(52, 'hayde', 'hyde@mail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, praesentium', '2019-08-20 06:44:20', '2019-08-20 06:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'country1', NULL, NULL),
(2, 'country2', NULL, NULL),
(3, 'country3', NULL, NULL),
(4, 'country4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` bigint(20) NOT NULL,
  `discount` bigint(20) NOT NULL,
  `discount_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_use` int(11) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `discount_type`, `limit_use`, `min_amount`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(1, 1234, 10, 'type1', 2, 3, '2019-08-08 00:00:00', '2019-08-20 00:00:00', '2019-08-06 14:02:58', '2019-08-06 14:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_free` int(11) NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `hours` bigint(20) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `static` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `is_free`, `name_ar`, `name_en`, `details_ar`, `details_en`, `price`, `hours`, `instructor_id`, `from_date`, `to_date`, `created_at`, `updated_at`, `photo_id`, `category_id`, `static`) VALUES
(2, 1, 'جرافيك', 'graphic', 'مشروع الموسوعة الحرة التي يستطيع الجميع تحريرها. توجد الآن 916٬805 مقالة بالعربية. محتوى متميز · التصنيفات', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic.', 1300.00, 200, 2, '2019-08-06 00:00:00', '2019-08-06 00:00:00', NULL, NULL, 14, 2, 0),
(3, 0, '2فوتوشوب', 'photoshop2', 'مشروع الموسوعة الحرة التي يستطيع الجميع تحريرها. توجد الآن 916٬805 مقالة بالعربية. محتوى متميز · التصنيفات', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit, voluptatum.', 2000.00, 100, 2, '2019-08-15 00:00:00', '2019-08-18 00:00:00', '2019-08-06 12:52:54', '2019-08-06 12:52:54', 15, 1, 0),
(4, 0, 'تصميم', 'Designe', 'مشروع الموسوعة الحرة التي يستطيع الجميع تحريرها. توجد الآن 916٬805 مقالة بالعربية. محتوى متميز · التصنيفات', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 0.00, 100, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 16, 1, 1),
(5, 0, '\r\nتجربة تدفق العمل', 'work flow audomation', 'مشروع الموسوعة الحرة التي يستطيع الجميع تحريرها. توجد الآن 916٬805 مقالة بالعربية. محتوى متميز · التصنيفات', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1200.00, 200, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 14, 2, 1),
(6, 0, 'برامج تدريبيه ', ' training courses ', 'مشروع الموسوعة الحرة التي يستطيع الجميع تحريرها. توجد الآن 916٬805 مقالة بالعربية. محتوى متميز · التصنيفات ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita. ', 2000.00, 300, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 15, 3, 1),
(7, 0, 'كورس5', 'course5', 'في ويكيبيديا العربية 916٬808 مقالة حتى الآن، لذا فاحتمال وجود مقالةٍ حول الموضوع الذي تريد الكتابة عنه كبير، استخدم صفحة البحث لمعرفة ما إذا كانت المقالة موجودةً', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, obcaecati.', 2000.00, 200, 1, '2019-08-16 00:00:00', '2019-08-19 00:00:00', '2019-08-15 11:10:46', '2019-08-15 11:10:46', 16, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `photo_id`, `name`, `email`, `created_at`, `updated_at`, `details_ar`, `details_en`) VALUES
(1, 5, 'Mr. Osborne Kuhlman', 'ihermann@example.com', '2019-08-06 10:01:51', '2019-08-06 10:01:51', '', ''),
(2, 2, 'Adrianna Tremblay', 'mhauck@example.com', '2019-08-06 10:01:51', '2019-08-06 10:01:51', '', ''),
(3, 3, 'Kory Mitchell', 'bartell.krystal@example.org', '2019-08-06 10:01:51', '2019-08-06 10:01:51', '', ''),
(4, 4, 'Prof. Sigrid Grimes', 'jany.quitzon@example.net', '2019-08-06 10:01:51', '2019-08-06 10:01:51', '', ''),
(5, 2, 'Maiya Schmitt', 'alena.leuschke@example.com', '2019-08-06 10:01:51', '2019-08-06 10:01:51', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blog_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `comment_id`, `blog_id`, `user_id`, `created_at`, `updated_at`, `course_id`) VALUES
(5, 0, 1, 0, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2019_06_23_124723_create_notifications_table', 7),
(124, '2019_06_24_133539_add_description_column_to_videos_table', 8),
(214, '2014_10_12_000000_create_users_table', 9),
(215, '2014_10_12_100000_create_password_resets_table', 9),
(216, '2019_06_16_132945_create_countries_table', 9),
(217, '2019_06_16_133345_create_roles_table', 9),
(218, '2019_06_16_142401_create_courses_table', 9),
(219, '2019_06_16_145730_create_comments_table', 9),
(220, '2019_06_16_152333_create_blogs_table', 9),
(221, '2019_06_16_163425_create_instructors_table', 9),
(222, '2019_06_17_092441_create_likes_table', 9),
(223, '2019_06_17_094028_create_orders_table', 9),
(224, '2019_06_19_095134_create_photos_table', 9),
(225, '2019_06_19_105915_add_path_column_to_photos_table', 9),
(226, '2019_06_19_154018_add_photo_column_to_courses_table', 9),
(227, '2019_06_20_150622_add_course_id_column_to_likes_table', 9),
(228, '2019_06_22_093631_add_block_column_to_users_table', 9),
(229, '2019_06_22_100349_create_offers_table', 9),
(230, '2019_06_22_114236_create_videos_table', 9),
(231, '2019_06_22_150721_create_categories_table', 9),
(232, '2019_06_24_093302_create_notifications_table', 9),
(233, '2019_06_24_094319_create_user_notifications_table', 9),
(234, '2019_06_24_110129_add_offer_id_column_to_notifications_table', 9),
(235, '2019_06_24_112132_add_category_id_column_to_courses_table', 9),
(236, '2019_06_24_144417_create_contacts_table', 9),
(237, '2019_06_26_100059_add_api_token_column_to_users_table', 9),
(238, '2019_06_26_125013_add_status_column_to_order_table', 9),
(239, '2019_07_06_150454_create_clients_table', 9),
(240, '2019_07_07_092522_create_settings_table', 9),
(241, '2019_08_05_142856_add_phone_to_users_table', 9),
(242, '2019_08_06_074036_create_coupons_table', 9),
(243, '2019_08_07_101527_add_coupon_id_column_to_ntifications_table', 10),
(245, '2019_08_07_150904_create_programes_table', 11),
(246, '2019_08_15_095039_add_static_column_to_courses_table', 12),
(250, '2019_08_17_111540_add_details_column_to_instructors_table', 13),
(251, '2019_08_20_105249_create_payment_methods_table', 14),
(253, '2019_08_21_122923_add_provider_columns_to_users_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `coupon_id` int(10) UNSIGNED DEFAULT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `offer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `comment_id`, `blog_id`, `course_id`, `coupon_id`, `title_ar`, `title_en`, `body_ar`, `body_en`, `created_at`, `updated_at`, `offer_id`) VALUES
(1, NULL, NULL, NULL, NULL, 'كومنت جديد', 'new comment', 'المختصة وظيفيًا في حالة وجود تنازع حول تنفيذ حكمين متعارضين، ويشترط في ذلك التنازع عدة ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis, vel.', '2019-08-06 10:30:23', '2019-08-06 10:30:23', 3),
(2, NULL, 1, NULL, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-08-06 11:55:33', '2019-08-06 11:55:33', NULL),
(3, NULL, 2, NULL, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-08-06 11:56:35', '2019-08-06 11:56:35', NULL),
(5, NULL, 4, NULL, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-08-06 12:02:53', '2019-08-06 12:02:53', NULL),
(6, NULL, NULL, 3, NULL, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-08-06 12:52:54', '2019-08-06 12:52:54', NULL),
(7, NULL, 5, NULL, NULL, 'كومنت جديد', 'New comment', 'المختصة وظيفيًا في حالة وجود تنازع حول تنفيذ حكمين متعارضين، ويشترط في ذلك التنازع عدة ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis, vel.', '2019-08-06 14:15:59', '2019-08-06 14:15:59', NULL),
(8, NULL, NULL, 7, NULL, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-08-15 11:10:46', '2019-08-15 11:10:46', NULL),
(9, NULL, 6, NULL, NULL, 'مدونه جديده', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-08-15 12:19:13', '2019-08-15 12:19:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `newprice` bigint(20) NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `course_id`, `newprice`, `description_ar`, `description_en`, `amount`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(1, 2, 1000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic.', 2, '2019-08-14 00:00:00', '2019-08-18 00:00:00', NULL, '2019-08-06 10:38:17'),
(2, 2, 900, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic.', 3, '2019-08-06 00:00:13', '2019-08-06 07:00:00', NULL, NULL),
(3, 2, 200, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae doloribus ducimus eaque fugiat, libero praesentium!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae doloribus ducimus eaque fugiat, libero praesentium!', 20, '2019-08-14 00:00:00', '2019-08-18 00:00:00', '2019-08-06 10:30:23', '2019-08-06 10:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `course_id`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 12, NULL, NULL, 1),
(2, 3, 12, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `numbers` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `type_ar`, `type_en`, `numbers`, `created_at`, `updated_at`) VALUES
(1, 'موبينيل كاش', 'mobinil cash', 'رنچ كاش خدمة مقدمة من اورنچ بالتعاون مع بنك الامارات دبى الوطني تساعدك على إرسال و استقبال الأموال في الحال.اشترك مجاناً في خدمة اورنج مونى الآن.', 'Orange Cash is a service offered by Orange in cooperation with Emirates NBD to help you send and receive money immediately. Join Orange Money now for free.', 'رقم تليفون', 'mobile', '[\"01122334455\",\"01233444455\"]', '2019-08-20 12:27:20', '2019-08-21 13:32:39'),
(2, 'موبينيل كاش', 'mobinil cash', 'اورنچ كاش خدمة مقدمة من اورنچ بالتعاون مع بنك الامارات دبى الوطني تساعدك على إرسال و استقبال الأموال في الحال.اشترك مجاناً في خدمة اورنج مونى الآن', 'Orange Cash is a service provided by Orange in cooperation with Emirates NBD to help you send and receive money immediately.', 'رقم تليفون', 'mobile', NULL, '2019-08-21 12:06:41', '2019-08-21 12:06:41'),
(3, 'فودافون كاش', 'vodaphone cash', 'اورنچ كاش خدمة مقدمة من اورنچ بالتعاون مع بنك الامارات دبى الوطني تساعدك على إرسال و استقبال الأموال في الحال.اشترك مجاناً في خدمة اورنج مونى الآن', 'Orange Cash is a service provided by Orange in cooperation with Emirates NBD to help you send and receive money immediately.', 'رقم تليفون', 'mobile', '[\"01122334455\",\"01233444444\"]', '2019-08-21 12:10:15', '2019-08-21 12:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `created_at`, `updated_at`, `path`) VALUES
(1, '4.jpg', '2019-08-06 11:55:33', '2019-08-06 11:55:33', 'images/4.jpg'),
(2, '12.jpg', '2019-08-06 11:56:35', '2019-08-06 11:56:35', 'images/6.jpg'),
(3, '11.jpg', '2019-08-06 11:59:15', '2019-08-06 11:59:15', 'images/5.jpg'),
(4, '8.jpg', '2019-08-06 12:02:53', '2019-08-06 12:02:53', 'images/7.jpg'),
(5, '10.jpg', '2019-08-06 12:52:54', '2019-08-06 12:52:54', 'images/5.jpg'),
(6, '3.jpg', '2019-08-06 14:15:59', '2019-08-06 14:15:59', 'images/3.jpg'),
(7, '6.png', NULL, NULL, ''),
(8, '5.png', NULL, NULL, ''),
(9, '4.png', NULL, NULL, ''),
(10, '2019-02-07.png', '2019-08-15 11:10:15', '2019-08-15 11:10:15', 'images/2019-02-07.png'),
(11, '2019-02-07.png', '2019-08-15 11:10:46', '2019-08-15 11:10:46', 'images/2019-02-07.png'),
(12, 'blog.jpg', NULL, NULL, ''),
(13, 'blog.jpg', '2019-08-15 12:19:13', '2019-08-15 12:19:13', 'images/blog.jpg'),
(14, '914296_3670_8.jpg', NULL, NULL, ''),
(15, 'course_design_tile.jpg', NULL, NULL, ''),
(16, 'download.png', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `programes`
--

CREATE TABLE `programes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programes`
--

INSERT INTO `programes` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'برنامج1', 'programe1', NULL, NULL),
(2, 'برنامج2', 'programe2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-08-06 10:01:50', '2019-08-06 10:01:50'),
(2, 'user', '2019-08-06 10:01:50', '2019-08-06 10:01:50'),
(3, 'client', '2019-08-06 10:01:50', '2019-08-06 10:01:50'),
(4, 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `limkedin_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `facebook_link`, `twitter_link`, `limkedin_link`, `youtube_link`, `download_link`, `created_at`, `updated_at`) VALUES
(1, 'BMAESTRO', 'logo.png', 'http:://facebook.com', 'https://twitter.com/login?lang=ar', 'https://eg.linkedin.com/', 'https://www.youtube.com/', 'http:://download.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `block` int(11) NOT NULL DEFAULT '1',
  `phone` bigint(20) DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country_id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`, `block`, `phone`, `provider`, `provider_id`) VALUES
(1, 1, 3, 'Barbara Weber', 'lkozey@example.com', '2019-08-06 10:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XN53kaP6gH', 'hk4xh7u4eb', '2019-08-06 10:01:50', '2019-08-06 10:01:50', 1, 155826432, NULL, NULL),
(3, 4, 1, 'Samson Hayes', 'schimmel.garnett@example.com', '2019-08-06 10:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ReLrhz7q2V', 'dBREefFjA3', '2019-08-06 10:01:50', '2019-08-06 10:01:50', 1, 155826439, NULL, NULL),
(6, 1, 2, 'Ms. Lucy Torphy II', 'will.lueilwitz@example.org', '2019-08-06 10:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Inlo5STpA', 'iewEyIcRHb', '2019-08-06 10:01:50', '2019-08-06 10:01:50', 1, 155826473, NULL, NULL),
(7, 2, 3, 'Celia Hartmann', 'lolita41@example.com', '2019-08-06 10:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TBPSsYuddc', 'rWPPPXHPH2', '2019-08-06 10:01:50', '2019-08-06 10:01:50', 1, 155826477, NULL, NULL),
(8, 4, 1, 'Estel Klein', 'zoconnell@example.com', '2019-08-06 10:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hlyw51DfZC', 'x6cBAmvGGE', '2019-08-06 10:01:50', '2019-08-06 10:01:50', 1, 155826468, NULL, NULL),
(9, 3, 4, 'Miss Kiana Boehm I', 'walter.stanton@example.com', '2019-08-06 10:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NUonizFEzT', 'xj21dycFhC', '2019-08-06 10:01:50', '2019-08-06 10:01:50', 1, 155826449, NULL, NULL),
(10, 1, 3, 'Samanta Sanford', 'maurine.mitchell@example.net', '2019-08-06 10:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OP4iK6DErn', 'SjUAIjrX44', '2019-08-06 10:01:50', '2019-08-06 10:01:50', 1, 155826432, NULL, NULL),
(12, NULL, 4, 'amal1', 'amal1@yahoo.com', NULL, '$2y$10$6/24JXARADBdm1YTcPUg7.SPA1QTxPfAPjidhv7KzCZbrvOIP3xga', 'jTNfkCDh8rh7xN6U3nv6TyLUazJj4qdLgmnTdse0pZF624bcewq4KaP0gT3b', NULL, '2019-08-07 11:35:53', '2019-08-18 06:12:05', 1, 11233445566, NULL, NULL),
(13, NULL, 1, 'admin', 'admin@mail.com', NULL, '$2y$10$MUZ469.pP607HljIlu0PAeESUb4uFoopmX8iObNKKMaMngFsDvQSq', NULL, NULL, '2019-08-07 14:19:53', '2019-08-07 14:19:53', 1, NULL, NULL, NULL),
(20, 2, 2, 'ahmed', 'ahmed@yahoo.com', NULL, '$2y$10$4cRCWlSFJ.Y7fRZ7P.06HuWBxM90YDDOi2VIiXivcfSGbKw0/SWY6', NULL, NULL, '2019-08-17 12:51:19', '2019-08-17 12:51:19', 1, 112233445544, NULL, NULL),
(22, NULL, 2, 'mohamed', 'mohamed@yahoo.com', NULL, '$2y$10$OpVN4z.QqCZB7Ld7PkOMZu3j7wru8XCpNJXSNb3TL49V4Kp5kz2HS', NULL, NULL, '2019-08-21 08:59:55', '2019-08-21 08:59:55', 1, 11223344555, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `notification_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `notification_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(5, 1, 10, NULL, NULL),
(11, 2, 10, NULL, NULL),
(12, 3, 1, NULL, NULL),
(13, 3, 7, NULL, NULL),
(14, 3, 9, NULL, NULL),
(15, 3, 10, NULL, NULL),
(16, 4, 1, NULL, NULL),
(17, 4, 7, NULL, NULL),
(18, 4, 9, NULL, NULL),
(19, 4, 10, NULL, NULL),
(20, 5, 1, NULL, NULL),
(21, 5, 7, NULL, NULL),
(22, 5, 9, NULL, NULL),
(23, 5, 10, NULL, NULL),
(28, 7, 10, NULL, NULL),
(29, 8, 6, NULL, NULL),
(30, 9, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `course_id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `path`, `created_at`, `updated_at`) VALUES
(2, 2, 'فيديو1', 'video1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, similique?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, similique?', '/uploads/video1', '2019-08-06 14:12:40', '2019-08-06 14:12:40'),
(3, 2, 'فيديو2', 'video2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, similique?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, similique?', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/video2', '2019-08-06 14:12:40', '2019-08-06 14:12:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programes`
--
ALTER TABLE `programes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `programes`
--
ALTER TABLE `programes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
