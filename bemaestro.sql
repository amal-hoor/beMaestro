-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 04:14 PM
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
(1, 15, 1, 'كورسات', 'courses1', 'مع الجامعة المفتوحة ، يمكنك الدراسة متى وأينما تختار. لدينا طلاب في أكثر من 128 دولة ، ولدينا سمعة عالمية كشركة رائدة في مجال التعلم المرن. يعني تعليمنا المرن أيضًا ، إذا كنت تسافر كثيرًا أو كنت بحاجة إلى الانتقال ، يمكنك متابعة الدراسة أينما ذهبت.', 'With The Open University you can study whenever and wherever you choose. We have students in over 128 countries, and a global reputation as a pioneer in the field of flexible learning. Our flexible teaching also means, if you travel often or need to relocate, you can continue to study wherever you go.', NULL, '2019-07-06 12:35:37'),
(2, 2, 1, 'كورسات مجانيه', 'courses2', 'مع الجامعة المفتوحة ، يمكنك الدراسة متى وأينما تختار. لدينا طلاب في أكثر من 128 دولة ، ولدينا سمعة عالمية كشركة رائدة في مجال التعلم المرن. يعني تعليمنا المرن أيضًا ، إذا كنت تسافر كثيرًا أو كنت بحاجة إلى الانتقال ، يمكنك متابعة الدراسة أينما ذهبت.', 'With The Open University you can study whenever and wherever you choose. We have students in over 128 countries, and a global reputation as a pioneer in the field of flexible learning. Our flexible teaching also means, if you travel often or need to relocate, you can continue to study wherever you go.', NULL, NULL),
(4, 12, 3, 'لارافل', 'LARAVEL', '، يمكنك الدراسة متى وأينما تختار. لدينا طلاب في أكثر من 128 دولة ، ولدينا سمعة عالمية كشركة رائدة في مجال التعلم المرن. يعني تعليمنا المرن أيضًا ، إذا كنت تسافر كثيرًا أو كنت بحاجة إلى الانتقال ، يمكنك متابعة الدراسة أينما', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias minima asperiores eveniet in maxime ipsam suscipit sunt, nulla repudiandae delectus.', '2019-06-26 11:49:45', '2019-06-26 11:49:45'),
(6, 12, 5, '5.4 لارافل', 'LARAVEL5.4', 'ويتركز أغلب سكان مصر في وادي النيل وفي الحضر ويشكل وادي النيل والدلتا أقل من 4% من المساحة الكلية للبلاد أي حوالي 33000 كم2، وأكبر الكتل السكانية هي القاهرة الكبرى التي بها تقريباً ربع السكان، تليها الإسكندرية؛ كما يعيش أغلب السكان الباقين في الدلتا وعلى ساحلي البحر المتوسط والبحر الأحمر ومدن قناة السويس، وتشغل هذه الأماكن ما مساحته 40 ألف كيلومتر مربع.', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Inventore consequatur quidem, beatae esse odio praesentium aspernatur quia hic vel voluptas?', '2019-06-26 11:57:21', '2019-06-26 11:57:21');

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
(1, 2, 'تسويق', 'marketing', '2019-06-26 12:23:18', '2019-06-27 14:26:54'),
(2, NULL, 'تصميم2', 'design', NULL, '2019-06-27 14:29:16'),
(3, 2, 'تصميم', 'design2', '2019-07-06 11:51:37', '2019-07-06 11:51:37'),
(4, 1, 'شش', 'سي', '2019-07-06 11:51:57', '2019-07-06 11:51:57');

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

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `country_id`, `name`, `email`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 'ahmed', 'ahmed@yahoo.com', 12333322, NULL, '2019-07-07 07:16:12'),
(2, 3, 'amal', 'amal@yahoo.com', 12222222, '2019-07-06 13:39:30', '2019-07-06 13:39:30'),
(3, 4, 'eman', 'eman@yahoo.com', 983737, '2019-07-07 07:17:13', '2019-07-07 07:17:13');

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
(1, 1, 1, 2, 0, 'إنشاء التصاميم البصرية المتنوعة والبانرات، وذلك من...', NULL, '2019-06-28 15:13:37'),
(2, 2, 3, 4, 0, 'إنشاء التصاميم البصرية المتنوعة والبانرات، وذلك من...', NULL, NULL);

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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `hours` bigint(20) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `price`, `hours`, `instructor_id`, `created_at`, `updated_at`, `photo_id`, `category_id`) VALUES
(1, 'فوتوشوب', 'photoshop3', 'إنشاء التصاميم البصرية المتنوعة والبانرات، وذلك من خلال دمج الصور والنصوص وغيرها من العناصر مع بعضها البعض في تصميم واحد', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Assumenda, molestiae asperiores. Inventore, eum. Similique soluta tenetur, ipsam quis enim unde.', 1200.00, 50, 1, '2019-06-26 09:21:56', '2019-06-26 12:09:24', NULL, NULL),
(12, 'تصميم', 'design', 'تضم الإسكندرية بين طياتها الكثير من المعالم المميزة، إذ يوجد بها أكبر', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui aut in eveniet, rem recusandae ab. Explicabo quos dolorum illo dolorem!', 12000.00, 20, 1, '2019-06-26 12:56:45', '2019-06-26 12:56:45', 12, 1),
(13, 'تصميم', 'design', 'تضم الإسكندرية بين طياتها الكثير من المعالم المميزة، إذ يوجد بها أكبر', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui aut in eveniet, rem recusandae ab. Explicabo quos dolorum illo dolorem!', 12000.00, 20, 1, '2019-06-26 12:57:09', '2019-06-26 12:57:09', 13, 1),
(14, 'تصميم', 'design', 'تضم الإسكندرية بين طياتها الكثير من المعالم المميزة، إذ يوجد بها أكبر', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui aut in eveniet, rem recusandae ab. Explicabo quos dolorum illo dolorem!', 12000.00, 20, 1, '2019-06-26 13:01:28', '2019-06-26 13:01:28', 14, 1),
(15, 'كورس1', 'course1', 'تفاصيل', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis, repudiandae aliquid accusantium laborum similique explicabo enim eaque fugiat possimus laboriosam.', 10000.00, 20, 1, '2019-07-06 12:41:42', '2019-07-06 12:41:42', NULL, 1),
(16, 'كورس1', 'course1', 'اي تفاصيل', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Explicabo, a?', 1000.00, 200, 4, '2019-07-09 11:22:25', '2019-07-09 11:22:25', NULL, 1),
(17, 'كورس4', 'Course4', 'وتعني فريق مدريد الملكي لكرة القدم) هو فريق كرة قدم محترف إسباني', 'lorem ipsum', 100.00, 88, 2, '2019-07-09 12:10:46', '2019-07-09 12:10:46', NULL, 3);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `photo_id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 3, 'Aurelie Adams', 'brycen62@example.net', '2019-06-26 08:04:42', '2019-06-26 08:04:42'),
(2, 4, 'Linnie Sporer', 'jacques.schaden@example.net', '2019-06-26 08:04:42', '2019-06-26 08:04:42'),
(3, 9, 'Prof. Lucius Thiel', 'pschinner@example.com', '2019-06-26 08:04:42', '2019-06-26 08:04:42'),
(4, 9, 'Mrs. Isabel Hoeger I', 'jward@example.net', '2019-06-26 08:04:42', '2019-06-26 08:04:42'),
(5, 4, 'Ilene Dare', 'howe.tom@example.net', '2019-06-26 08:04:42', '2019-06-26 08:04:42');

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
(1, 1, 1, 2, NULL, NULL, 1),
(2, 2, 1, 5, NULL, NULL, 2);

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
(126, '2014_10_12_000000_create_users_table', 9),
(127, '2014_10_12_100000_create_password_resets_table', 9),
(128, '2019_06_16_132945_create_countries_table', 9),
(129, '2019_06_16_133345_create_roles_table', 9),
(130, '2019_06_16_142401_create_courses_table', 9),
(131, '2019_06_16_145730_create_comments_table', 9),
(132, '2019_06_16_152333_create_blogs_table', 9),
(133, '2019_06_16_163425_create_instructors_table', 9),
(134, '2019_06_17_092441_create_likes_table', 9),
(135, '2019_06_17_094028_create_orders_table', 9),
(136, '2019_06_19_095134_create_photos_table', 9),
(137, '2019_06_19_105915_add_path_column_to_photos_table', 9),
(138, '2019_06_19_154018_add_photo_column_to_courses_table', 9),
(139, '2019_06_20_150622_add_course_id_column_to_likes_table', 9),
(140, '2019_06_22_093631_add_block_column_to_users_table', 9),
(141, '2019_06_22_100349_create_offers_table', 9),
(142, '2019_06_22_114236_create_videos_table', 9),
(143, '2019_06_22_150721_create_categories_table', 9),
(144, '2019_06_24_093302_create_notifications_table', 9),
(145, '2019_06_24_094319_create_user_notifications_table', 9),
(146, '2019_06_24_110129_add_offer_id_column_to_notifications_table', 9),
(147, '2019_06_24_112132_add_category_id_column_to_courses_table', 9),
(148, '2019_06_24_144417_create_contacts_table', 9),
(149, '2019_06_26_100059_add_api_token_column_to_users_table', 10),
(150, '2019_06_26_125013_add_status_column_to_order_table', 11),
(152, '2019_07_06_150454_create_clients_table', 12),
(153, '2019_07_07_092522_create_settings_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
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

INSERT INTO `notifications` (`id`, `comment_id`, `blog_id`, `course_id`, `title_ar`, `title_en`, `body_ar`, `body_en`, `created_at`, `updated_at`, `offer_id`) VALUES
(1, NULL, NULL, 3, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-06-26 09:26:31', '2019-06-26 09:26:31', NULL),
(2, NULL, 3, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-06-26 11:49:02', '2019-06-26 11:49:02', NULL),
(3, NULL, 4, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-06-26 11:49:45', '2019-06-26 11:49:45', NULL),
(4, NULL, 5, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-06-26 11:54:01', '2019-06-26 11:54:01', NULL),
(5, NULL, 6, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-06-26 11:57:21', '2019-06-26 11:57:21', NULL),
(7, NULL, NULL, 17, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-06-26 13:37:24', '2019-06-26 13:37:24', NULL),
(8, NULL, NULL, 18, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-06-27 14:19:01', '2019-06-27 14:19:01', NULL),
(9, NULL, NULL, NULL, 'عرض جديد', 'new offer', 'عرض جديد ', 'new offer is created', '2019-06-27 14:38:33', '2019-06-27 14:38:33', 3),
(10, NULL, 7, NULL, 'New Blog', 'New Blog', 'تم اضافه مدونه جديده', 'New Blog has been added', '2019-07-06 12:29:44', '2019-07-06 12:29:44', NULL),
(11, NULL, NULL, 15, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-07-06 12:41:42', '2019-07-06 12:41:42', NULL),
(12, NULL, NULL, 16, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-07-09 11:22:25', '2019-07-09 11:22:25', NULL),
(13, NULL, NULL, 17, 'كورس جديد', 'New Course', 'تم اضافه كورس جديد', 'New Course has been added', '2019-07-09 12:10:46', '2019-07-09 12:10:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `newprice` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `course_id`, `newprice`, `created_at`, `updated_at`) VALUES
(1, 3, 1003, '2019-06-26 12:14:55', '2019-06-27 14:32:45'),
(2, 5, 1001, '2019-06-26 12:16:36', '2019-06-27 14:35:31'),
(3, 9, 200, '2019-06-27 14:38:33', '2019-06-27 14:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliver_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `course_id`, `user_id`, `address`, `deliver_time`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 12, '25 lorem ipsum', '24:13:06', NULL, '2019-06-27 12:58:10', 0),
(2, 3, 12, '25 lorem ipsum', '17:00:08', NULL, '2019-06-27 12:58:12', 1);

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
(1, 'colleagues-friends-group-1065707.jpg', NULL, NULL, ''),
(2, 'black-city-city-center-1081229.jpg', '2019-06-26 11:49:02', '2019-06-26 11:49:02', 'images/black-city-city-center-1081229.jpg'),
(3, '12.jpg', '2019-06-26 11:49:45', '2019-06-26 11:49:45', 'images/12.jpg'),
(4, 'black-city-city-center-1081229.jpg', '2019-06-26 11:54:01', '2019-06-26 11:54:01', 'images/black-city-city-center-1081229.jpg'),
(5, '11.jpg', '2019-06-26 11:57:21', '2019-06-26 11:57:21', 'images/11.jpg'),
(6, '7.jpg', '2019-06-26 12:52:40', '2019-06-26 12:52:40', 'images/7.jpg'),
(7, '7.jpg', '2019-06-26 12:54:17', '2019-06-26 12:54:17', 'images/7.jpg'),
(8, '7.jpg', '2019-06-26 12:54:34', '2019-06-26 12:54:34', 'images/7.jpg'),
(9, '7.jpg', '2019-06-26 12:55:39', '2019-06-26 12:55:39', 'images/7.jpg'),
(10, '7.jpg', '2019-06-26 12:56:15', '2019-06-26 12:56:15', 'images/7.jpg'),
(11, '7.jpg', '2019-06-26 12:56:39', '2019-06-26 12:56:39', 'images/7.jpg'),
(12, '7.jpg', '2019-06-26 12:56:45', '2019-06-26 12:56:45', 'images/7.jpg'),
(13, '7.jpg', '2019-06-26 12:57:09', '2019-06-26 12:57:09', 'images/7.jpg'),
(14, '7.jpg', '2019-06-26 13:01:28', '2019-06-26 13:01:28', 'images/7.jpg'),
(15, '6.jpg', '2019-06-26 13:37:23', '2019-06-26 13:37:23', 'images/6.jpg'),
(16, '2019-02-07.png', '2019-06-27 14:18:06', '2019-06-27 14:18:06', 'images/2019-02-07.png'),
(17, '2019-02-07.png', '2019-06-27 14:19:01', '2019-06-27 14:19:01', 'images/2019-02-07.png'),
(18, '5.jpg', '2019-07-06 12:18:07', '2019-07-06 12:18:07', 'images/5.jpg'),
(19, '5.jpg', '2019-07-06 12:18:24', '2019-07-06 12:18:24', 'images/5.jpg'),
(20, '5.jpg', '2019-07-06 12:19:04', '2019-07-06 12:19:04', 'images/5.jpg'),
(21, '5.jpg', '2019-07-06 12:19:26', '2019-07-06 12:19:26', 'images/5.jpg'),
(22, '5.jpg', '2019-07-06 12:20:04', '2019-07-06 12:20:04', 'images/5.jpg'),
(23, '5.jpg', '2019-07-06 12:20:19', '2019-07-06 12:20:19', 'images/5.jpg'),
(24, '5.jpg', '2019-07-06 12:20:37', '2019-07-06 12:20:37', 'images/5.jpg'),
(25, '5.jpg', '2019-07-06 12:20:45', '2019-07-06 12:20:45', 'images/5.jpg'),
(26, '3.jpg', '2019-07-06 12:29:44', '2019-07-06 12:29:44', 'images/3.jpg');

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
(1, 'admin\r\n', '2019-06-26 08:04:41', '2019-06-26 08:04:41'),
(2, 'administrator', '2019-06-26 08:04:41', '2019-06-26 08:04:41'),
(3, 'subscriber', '2019-06-26 08:04:41', '2019-06-26 08:04:41'),
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
(1, 'bemaestro titles', 'logo.webp', 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://youtube.com', 'http://bemaestro.com', NULL, '2019-07-07 08:46:09');

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
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `block` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country_id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`, `block`) VALUES
(1, 4, 3, 'Chelsie Kohler DVM', 'adrienne90@example.com', '2019-06-26 08:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WDe0jSVeZ5', '7lSZ6mnO7r', '2019-06-26 08:04:41', '2019-06-26 08:04:41', 1),
(2, 1, 3, 'Giovanna Auer', 'giovanna11@example.net', '2019-06-26 08:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ASc0ixm1KM', 'w5R3qhmgAr', '2019-06-26 08:04:41', '2019-06-26 08:04:41', 1),
(3, 2, 3, 'Libby Pollich', 'ignacio71@example.net', '2019-06-26 08:04:40', '$2y$10$v9JopVavmM.xLmjbeQ.seuZBEuuh9JmjSeUybKpmbyR86hCB7yNAu', 'N8qq3IFVFC', 'bteiSrlEkM', '2019-06-26 08:04:41', '2019-06-26 11:32:16', 1),
(4, 1, 3, 'Jaunita Kassulke', 'breanne96@example.org', '2019-06-26 08:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ao6ngTl6m3', '9784mUB0ZJ', '2019-06-26 08:04:41', '2019-06-26 08:04:41', 1),
(5, 4, 2, 'Dr. Guiseppe Sauer', 'pouros.taryn@example.net', '2019-06-26 08:04:40', '$2y$10$Mee97GHUx2ooiY8ml8kFNubLJ3CB0M8XByY1sYuz6vK5IqpmG7e/a', 'mPjBF6apcD', '3QnrmwYEZm', '2019-06-26 08:04:41', '2019-06-27 14:07:23', 1),
(7, 1, 2, 'Ms. Retha Kozey', 'anabel19@example.org', '2019-06-26 08:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nJ0eRF05wj', 'tCzNp1ouzU', '2019-06-26 08:04:41', '2019-06-26 08:04:41', 1),
(8, 4, 2, 'Nya Ward', 'adubuque@example.com', '2019-06-26 08:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wtVjpQzoj1', 'D5RvvbDQTl', '2019-06-26 08:04:41', '2019-06-26 08:04:41', 1),
(9, 3, 2, 'Miss Virgie Schulist', 'mavis21@example.com', '2019-06-26 08:04:40', '$2y$10$RZ7xjYeyFoq.LWFraFnjse/EN8WqLXCw8B9/fLZZu08v/r6VPNMp6', 'yKUxDZKk7L', 'NLHlRnihTB', '2019-06-26 08:04:41', '2019-06-27 14:02:23', 1),
(12, 3, 1, 'amal', 'amal@yahoo.com', NULL, '$2y$10$R34TBkbY11U20nWutp0.q.S2xx16ex7lMUYVumpz021tYP4MFiaDW', '7nfGnsampBQfBunGBvoOPvslndo19qhvk7nzDIUk70Aub5PET5rJYtqYA7e7', NULL, '2019-06-26 09:01:21', '2019-06-26 09:01:21', 1),
(13, 3, 1, 'admin', 'admin@yahoo.com', NULL, '$2y$10$j9IYqpf3D3K.A4wtZd8yM.HXdISEo65cxwpD9ZL/jKHbK9Vxx.sAa', NULL, NULL, '2019-06-26 11:33:05', '2019-06-26 11:33:05', 1),
(14, 4, 4, 'ahmed', 'ahmed@yahoo.com', NULL, '$2y$10$qKpJ4ymyp7QkGFYGAngiL.dFlBGg.KQQv8wv/V5RiG.kX/S9RdkO2', NULL, NULL, '2019-07-06 11:45:55', '2019-07-06 11:45:55', 1),
(15, 3, 4, 'adse', 'adse@yahoo.com', NULL, '$2y$10$IPyS1gPN.qLcIwu8.XTTiOjpLN4H/YyJ2qXCgyJ7DBvBmehWRySNq', NULL, NULL, '2019-07-06 12:06:05', '2019-07-06 12:06:05', 1);

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
(2, 13, 2, NULL, NULL),
(3, 13, 4, NULL, NULL),
(4, 1, 6, NULL, NULL),
(5, 1, 10, NULL, NULL),
(7, 2, 2, NULL, NULL),
(8, 2, 3, NULL, NULL),
(9, 2, 4, NULL, NULL),
(10, 2, 6, NULL, NULL),
(12, 3, 2, NULL, NULL),
(13, 3, 3, NULL, NULL),
(14, 3, 4, NULL, NULL),
(15, 3, 6, NULL, NULL),
(17, 4, 2, NULL, NULL),
(18, 4, 3, NULL, NULL),
(19, 4, 4, NULL, NULL),
(20, 4, 6, NULL, NULL),
(22, 5, 2, NULL, NULL),
(23, 5, 3, NULL, NULL),
(24, 5, 4, NULL, NULL),
(25, 5, 6, NULL, NULL),
(27, 6, 2, NULL, NULL),
(28, 6, 3, NULL, NULL),
(29, 6, 4, NULL, NULL),
(30, 6, 6, NULL, NULL),
(31, 7, 1, NULL, NULL),
(32, 7, 2, NULL, NULL),
(33, 7, 3, NULL, NULL),
(34, 7, 4, NULL, NULL),
(35, 7, 6, NULL, NULL),
(36, 8, 1, NULL, NULL),
(37, 8, 2, NULL, NULL),
(38, 8, 3, NULL, NULL),
(39, 8, 4, NULL, NULL),
(40, 9, 1, NULL, NULL),
(41, 9, 2, NULL, NULL),
(42, 9, 3, NULL, NULL),
(43, 9, 4, NULL, NULL),
(44, 10, 1, NULL, NULL),
(45, 10, 2, NULL, NULL),
(46, 10, 3, NULL, NULL),
(47, 10, 4, NULL, NULL),
(48, 11, 1, NULL, NULL),
(49, 11, 2, NULL, NULL),
(50, 11, 3, NULL, NULL),
(51, 11, 4, NULL, NULL),
(52, 12, 1, NULL, NULL),
(53, 12, 2, NULL, NULL),
(54, 12, 3, NULL, NULL),
(55, 12, 4, NULL, NULL),
(56, 13, 1, NULL, NULL),
(57, 13, 2, NULL, NULL),
(58, 13, 3, NULL, NULL),
(59, 13, 4, NULL, NULL);

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
(1, 3, 'ف1', 'v1', 'إنشاء التصاميم البصرية المتنوعة والبانرات، وذلك من خلال دمج الصور والنصوص وغيرها من العناصر مع بعضها البعض في تصميم واحد', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Obcaecati laborum quia et cumque delectus voluptate ratione nisi doloribus quibusdam repellendus.', 'https://www.youtube.com/embed/sgn5jRuZb6o', '2019-06-26 09:21:56', '2019-06-28 07:36:17'),
(7, 2, 'فيديو5', 'v5', 'إنشاء الصور المتحركة واجراء تعديلات بسيطة على مقاطع الفيديو في الإصدارات الحديثة.', 'How to Build iOS Style Switch or Toggle Using Only HTML, CSS, & Vanilla JS', 'https://www.youtube.com/embed/iKRLrJXNN4M', '2019-06-26 12:31:43', '2019-06-26 12:31:43'),
(10, 13, 'ف4', NULL, 'وغيرها، يبلغ عدد سكان الإسكندرية حوالي 4,123,869 نسمة (حسب تعداد 2006) يعملون بالأنشطة التجارية والصناعية والزراعية. تنقسم الإسكندري', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui aut in eveniet, rem recusandae ab. Explicabo quos dolorum illo dolorem!', 'https://www.youtube.com/embed/KJKcup31kw0', '2019-06-26 12:57:09', '2019-06-26 12:57:09'),
(11, 14, 'ف4', NULL, 'وغيرها، يبلغ عدد سكان الإسكندرية حوالي 4,123,869 نسمة (حسب تعداد 2006) يعملون بالأنشطة التجارية والصناعية والزراعية. تنقسم الإسكندري', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui aut in eveniet, rem recusandae ab. Explicabo quos dolorum illo dolorem!', 'https://www.youtube.com/embed/KJKcup31kw0', '2019-06-26 13:01:28', '2019-06-26 13:01:28'),
(13, 3, 'w1', 'w2', 'lorem  ipsum', 'lorem  ipsum', 'https://www.youtube.com/embed/sgn5jRuZb6o', '2019-06-26 13:17:30', '2019-06-28 07:41:26'),
(15, 1, 'تت1', 'v1', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus, fuga!', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus, fuga!', 'C:\\xampp\\htdocs\\beMaestro\\public\\uploads\\v1.jpg', '2019-07-09 09:22:13', '2019-07-09 09:22:13'),
(16, 1, 'v1', 'ds', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, velit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, velit.', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/ds', '2019-07-09 10:06:33', '2019-07-09 10:06:33'),
(17, 1, 'hfg', 'gf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, velit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, velit.', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/gf', '2019-07-09 10:07:06', '2019-07-09 10:07:06'),
(18, 1, 'فيديو1', 'video1', 'عقد الخمسينيات من القرن العشرين، وبحلول عقد الثمانينيات من', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, adipisci.', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/', '2019-07-09 10:43:34', '2019-07-09 10:43:34'),
(19, 3, 'فيديو2', 'video2', 'عقد الخمسينيات من القرن العشرين، وبحلول عقد الثمانينيات من', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, adipisci.', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/video2', '2019-07-09 10:43:34', '2019-07-09 11:03:33'),
(20, 16, 'فيديو ن', 'vv', 'اي وصف', 'lorem ipsum', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/vv', '2019-07-09 11:22:25', '2019-07-09 11:22:25'),
(21, 16, NULL, 'vvva', 'اي وصف', 'lorem ipsum', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/vvva', '2019-07-09 11:22:25', '2019-07-09 11:22:25'),
(22, 12, '2-Way Binding in Vue with V-Model - Vue.js 2.0 Fundamentals (Part 6)', '2-Way Binding in Vue with V-Model - Vue.js 2.0 Fundamentals (Part 6)', 'وتعني فريق مدريد الملكي لكرة القدم) هو فريق كرة قدم محترف إسباني', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus, fuga!', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/2-Way Binding in Vue with V-Model - Vue.js 2.0 Fundamentals (Part 6)', '2019-07-09 12:03:09', '2019-07-09 12:03:09'),
(23, 17, 'فيديو7', 'video7', 'وتعني فريق مدريد الملكي لكرة القدم) هو فريق كرة قدم محترف إسباني', 'lorem ipsum', 'C:\\xampp\\htdocs\\beMaestro\\public/uploads/video7', '2019-07-09 12:10:46', '2019-07-09 12:10:46');

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
