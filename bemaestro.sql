-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 05:12 PM
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
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `author_id`, `photo_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'blog1', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Odio quisquam, architecto magnam blanditiis amet eos facere quibusdam quod sit voluptas.', '2019-06-20 11:27:51', '2019-06-20 11:27:51'),
(2, 11, NULL, 'blog2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita minus maxime aliquam cupiditate suscipit officiis tenetur natus unde quod illo.', '2019-06-20 11:29:01', '2019-06-20 12:19:44'),
(3, 11, NULL, 'blog3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti totam suscipit at repellat ab consectetur doloribus sapiente consequuntur officiis iusto.', '2019-06-20 12:21:28', '2019-06-20 12:21:28');

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
(1, 1, 1, 5, 0, '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officiis tempore obcaecati minima autem voluptatibus commodi. Corrupti ad quisquam vero.\r\n', NULL, '2019-06-20 12:45:43'),
(2, 2, 1, 6, 0, '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officiis tempore obcaecati minima autem voluptatibus commodi. Corrupti ad quisquam vero.\r\n', NULL, NULL);

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
(1, 'India', NULL, NULL),
(2, 'USA', NULL, NULL),
(3, 'ksa', NULL, NULL),
(4, 'Egypt', NULL, NULL),
(5, 'Australia', NULL, NULL),
(6, 'Albania', NULL, NULL),
(7, 'Algeria', NULL, NULL),
(8, 'Cyprus', NULL, NULL),
(9, 'El Salvador', NULL, NULL),
(10, 'Finland', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `hours` bigint(20) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `details`, `price`, `hours`, `instructor_id`, `created_at`, `updated_at`, `photo_id`) VALUES
(1, 'css', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita minus maxime aliquam cupiditate suscipit officiis tenetur natus unde quod illo.', 200.00, 20, 5, NULL, '2019-06-20 12:43:55', NULL),
(2, 'css3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita minus maxime aliquam cupiditate suscipit officiis tenetur natus unde quod illo.', 300.00, 20, 2, NULL, NULL, NULL),
(3, 'bootstrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita minus maxime aliquam cupiditate suscipit officiis tenetur natus unde quod illo.', 300.00, 40, 3, NULL, NULL, NULL),
(5, 'laravel', 'lorem ipsum', 1200.00, 30, 2, '2019-06-20 12:43:34', '2019-06-20 12:43:34', 6);

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
(1, 8, 'Casimer Schultz', 'malika25@example.org', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(2, 2, 'Eleazar Crona', 'mose.skiles@example.org', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(3, 9, 'Miss Daisy Wolf', 'cronin.hershel@example.org', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(4, 9, 'Luz Robel', 'kale.larkin@example.net', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(5, 9, 'Prof. Maurine Jenkins', 'wiegand.stephon@example.net', '2019-06-20 11:10:33', '2019-06-20 11:10:33');

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
(1, 1, 1, 3, '2019-06-16 22:00:00', '2019-06-16 22:00:00', 1),
(2, 2, 1, 4, '2019-06-23 22:00:00', '2019-06-01 22:00:00', 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_16_132945_create_countries_table', 1),
(4, '2019_06_16_133345_create_roles_table', 1),
(5, '2019_06_16_142401_create_courses_table', 1),
(6, '2019_06_16_145730_create_comments_table', 1),
(7, '2019_06_16_152333_create_blogs_table', 1),
(8, '2019_06_16_163425_create_instructors_table', 1),
(9, '2019_06_17_092441_create_likes_table', 1),
(10, '2019_06_17_094028_create_orders_table', 1),
(11, '2019_06_19_095134_create_photos_table', 1),
(12, '2019_06_19_105915_add_path_column_to_photos_table', 1),
(13, '2019_06_19_154018_add_photo_column_to_courses_table', 1),
(14, '2019_06_20_150622_add_course_id_column_to_likes_table', 2);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `course_id`, `user_id`, `address`, `deliver_time`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '35 street', '00:00:11', NULL, NULL);

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
(1, 'colleagues-friends-group-1065707.jpg', '2019-06-20 11:26:49', '2019-06-20 11:26:49', 'images/colleagues-friends-group-1065707.jpg'),
(2, 'colleagues-friends-group-1065707.jpg', '2019-06-20 11:27:51', '2019-06-20 11:27:51', 'images/colleagues-friends-group-1065707.jpg'),
(3, 'person4.jpg', '2019-06-20 11:29:01', '2019-06-20 11:29:01', 'images/person4.jpg'),
(4, 'person4.jpg', '2019-06-20 12:21:28', '2019-06-20 12:21:28', 'images/person4.jpg'),
(5, '7.jpg', '2019-06-20 12:42:45', '2019-06-20 12:42:45', 'images/7.jpg'),
(6, '7.jpg', '2019-06-20 12:43:33', '2019-06-20 12:43:33', 'images/7.jpg');

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
(1, 'superadmin', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(2, 'administrator', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(3, 'subscriber', '2019-06-20 11:10:33', '2019-06-20 11:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country_id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'Dr. Joanne Fay I', 'rusty63@example.net', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J3p402lBMH', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(2, 9, 2, 'Marianne Anderson', 'umurray@example.net', '2019-06-20 11:10:33', '$2y$10$UzcE/MXwOktlv7ClQA6M6e.cL9vHmWd4qDJgylxUj.pDQBY.QLxVG', 'tYltLgLZmc', '2019-06-20 11:10:33', '2019-06-20 12:06:00'),
(3, 10, 3, 'Mr. Johann Bailey II', 'mgulgowski@example.net', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oN5Nfw5cCP', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(4, 5, 1, 'Dr. Blaise Von Sr.', 'idell.considine@example.com', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1wV7YlVv9q', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(5, 6, 3, 'Vanessa Hyatt', 'lindgren.terence@example.org', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jRIW3vMBMM', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(6, 6, 1, 'Prof. Dusty Funk', 'candelario.treutel@example.org', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Au2nAPT8w8', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(7, 3, 1, 'Prof. Alfonso Leffler', 'eloise.skiles@example.net', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PZ2zOWByhC', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(8, 3, 3, 'Casandra Luettgen', 'bernhard.brennon@example.org', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5QWuzWJfpY', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(9, 2, 2, 'Emily Champlinn', 'ray.hagenes@example.net', '2019-06-20 11:10:33', '$2y$10$d0hniWTPY2UU3aByBwKmeO0aU1.s3li8uq8TBHlic5p0Tc2czJcpm', 'MICauLMGoQ', '2019-06-20 11:10:33', '2019-06-20 12:10:26'),
(10, 9, 3, 'Duncan Beier', 'herman.clement@example.net', '2019-06-20 11:10:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2vHBKEdYvO', '2019-06-20 11:10:33', '2019-06-20 11:10:33'),
(11, 2, 1, 'amal', 'amal@outlook.com', NULL, '123456', NULL, NULL, NULL),
(12, 1, 2, 'mohamed4', 'mohamed@yahoo.com', NULL, '$2y$10$HlSr65rggMcMAOec9bDlre7evYIs7WPOLm7GdOdJG2aqfWXKhllqy', NULL, '2019-06-20 11:56:08', '2019-06-20 12:11:38'),
(13, 1, 2, 'amal123', 'amal1234@yahoo.com', NULL, '$2y$10$oQD78F9WJ4JOWmkzoADTT.7g7RiOv0uZaUz/QDSwmAH07WA3nkZXG', NULL, '2019-06-20 11:56:59', '2019-06-20 12:14:46'),
(15, 1, 1, 'asem', 'asem@yahoo.com', NULL, '$2y$10$uFQ8YHQp1RK5H6o0xhRLLu9rQWnNCIY3nXkWjI4C76Iq2EmG9Glxa', NULL, '2019-06-20 11:59:09', '2019-06-20 11:59:09'),
(16, 1, 1, 'eman', 'eman@yahoo.com', NULL, '$2y$10$8rtu8iT0OwkAFybhAyOCh.RMl/aYGlLGJA/cakf4sY5qjb25vRm06', NULL, '2019-06-20 12:01:25', '2019-06-20 12:01:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
