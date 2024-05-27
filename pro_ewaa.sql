-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 05:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro_ewaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertising_points_prices`
--

CREATE TABLE `advertising_points_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertising_points_prices`
--

INSERT INTO `advertising_points_prices` (`id`, `place_id`, `type`, `no_points`, `created_at`, `updated_at`) VALUES
(3, 3, 'countries', 500, '2022-08-08 12:30:27', '2022-08-08 12:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `ar_name`, `en_name`, `tu_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'اجابه اول', 'first answer', 'as', '2022-07-23 01:04:01', '2022-11-02 22:36:29'),
(4, 13, 'تيست', 'test', NULL, '2022-07-23 01:18:10', '2022-07-23 01:50:35'),
(13, 13, 'سؤال', 'qqq', NULL, '2022-07-23 01:45:44', '2022-07-23 01:50:35'),
(17, 16, 'a', 'b', 'c', '2022-07-24 01:04:19', '2022-07-24 01:04:19'),
(19, 17, 'aaaa', 'ssssss', NULL, '2022-07-30 21:46:40', '2022-07-30 21:46:40'),
(20, 19, 'اجابه اولي', 'answer one', NULL, '2022-08-10 20:28:38', '2022-08-10 20:28:38'),
(21, 1, 'اجابه ثانيه', 'second answer', 'fs', '2022-08-10 22:34:55', '2022-11-02 22:36:29'),
(22, 1, 'اجابه اخري', 'another value', 's', '2022-08-10 22:37:05', '2022-11-02 22:36:29'),
(23, 2, 'a', 'b', 'c', '2022-12-26 14:07:29', '2022-12-26 14:07:29'),
(24, 2, 'd', 'e', 'g', '2022-12-26 14:07:29', '2022-12-26 14:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `answers_reactions`
--

CREATE TABLE `answers_reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers_reactions`
--

INSERT INTO `answers_reactions` (`id`, `user_id`, `answer_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'like', '2022-08-21 20:14:47', NULL),
(2, 5, 2, 'dislike', '2022-08-21 20:15:28', NULL),
(11, 14, 2, 'dislike', '2022-08-21 20:29:05', '2022-08-21 20:46:03'),
(13, 14, 1, 'like', '2022-08-21 20:41:10', '2022-08-21 20:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `city_id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `created_at`, `updated_at`) VALUES
(1, 1, 'قصر القبة', 'dsad', NULL, '', '', NULL, NULL, NULL),
(2, 3, 'يشسي', 'يسشي', NULL, '', '', NULL, '2022-07-24 11:09:03', '2022-07-24 11:09:03'),
(3, 1, 'حدايق الاهرام', 'test place', NULL, '', '', NULL, '2022-08-15 01:06:33', NULL),
(4, 4, 'العزازي', 'aazazi', NULL, '', '', NULL, '2022-08-15 01:06:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_appearance` tinyint(4) NOT NULL DEFAULT 0,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `home_appearance`, `parent_id`, `image`, `created_at`, `updated_at`) VALUES
(17, 'عقارات', 'listings', 'das', 'عقارات وصف', 'listtings info', 'das', 1, NULL, '16601702713552295020729_image.png', '2022-08-10 20:24:31', '2022-12-27 13:16:31'),
(18, 'بيوت', 'homes', NULL, 'وصف', 'info', NULL, 0, 17, '16601703239383963758998_image.png', '2022-08-10 20:25:23', '2022-08-10 20:25:23'),
(19, 'فلل', 'villa', 'dasd', 'وصف', 'info', NULL, 0, 17, 'default.png', '2022-08-10 20:28:38', '2022-12-26 14:06:06'),
(20, 'كومبودنات', 'compounds', NULL, 'وصف', 'info', 'das', 0, NULL, '16601774574256790320182_image.png', '2022-08-10 22:24:17', '2023-01-03 16:52:25'),
(22, 'عمارات عاليه', 'high building', 'dsa', 'وصف', 'info', NULL, 0, 20, 'default.png', '2022-12-27 13:18:07', '2022-12-27 13:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories_prices_factors`
--

CREATE TABLE `categories_prices_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_prices_factors`
--

INSERT INTO `categories_prices_factors` (`id`, `category_id`, `price_id`, `created_at`, `updated_at`) VALUES
(15, 18, 1, '2022-10-27 18:23:29', '2022-10-27 18:23:29'),
(16, 18, 2, '2022-10-27 18:23:29', '2022-10-27 18:23:29'),
(21, 19, 2, '2022-10-28 21:58:50', '2022-10-28 21:58:50'),
(22, 19, 4, '2022-10-28 21:58:50', '2022-10-28 21:58:50'),
(23, 22, 2, '2022-12-27 13:18:22', '2022-12-27 13:18:22'),
(24, 22, 5, '2022-12-27 13:18:22', '2022-12-27 13:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories_questions`
--

CREATE TABLE `categories_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_questions`
--

INSERT INTO `categories_questions` (`id`, `category_id`, `question_id`, `created_at`, `updated_at`) VALUES
(15, 18, 2, '2022-08-10 20:25:23', '2022-08-10 20:25:23'),
(16, 18, 13, '2022-08-10 20:25:23', '2022-08-10 20:25:23'),
(17, 18, 1, '2022-08-10 20:25:23', '2022-08-10 20:25:23'),
(18, 18, 17, '2022-08-10 20:25:23', '2022-08-10 20:25:23'),
(19, 19, 2, '2022-08-10 20:28:38', '2022-08-10 20:28:38'),
(20, 19, 1, '2022-08-10 20:28:38', '2022-08-10 20:28:38'),
(21, 19, 19, '2022-08-10 20:28:38', '2022-08-10 20:28:38'),
(22, 22, 2, '2022-12-27 13:18:07', '2022-12-27 13:18:07'),
(23, 22, 17, '2022-12-27 13:18:07', '2022-12-27 13:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `receiver_id`, `conversation_id`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(1, 6, 14, 1, 'مرحبا بك', 1, '2022-12-02 20:14:44', '2023-01-03 16:39:39'),
(2, 14, 10, 2, 'فثسف', 0, '2022-12-02 20:29:42', '2022-12-02 20:29:42'),
(3, 10, 14, 2, 'dsad', 1, '2022-12-02 20:33:07', '2023-01-03 16:39:44'),
(4, 14, 6, 1, 'كيف حالك', 0, '2022-12-02 22:53:18', '2022-12-02 22:53:18'),
(5, 14, 6, 1, 'طيب ؟', 0, '2022-12-02 22:57:08', '2022-12-02 22:57:08'),
(6, 6, 14, 1, 'شو تسوي', 1, '2022-12-02 23:00:23', '2023-01-03 16:39:39'),
(7, 14, 10, 2, 'كيف اخر الاخبار', 0, '2022-12-02 23:20:59', '2022-12-02 23:20:59'),
(8, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(9, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(10, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(11, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(12, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(13, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(14, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(15, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(16, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(17, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(18, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(19, 10, 14, 2, 'test كيف اخر الاخبار', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(20, 14, 10, 2, 'dasda', 0, '2022-12-21 16:45:50', '2022-12-21 16:45:50'),
(21, 14, 10, 2, 'dasdadasd', 0, '2022-12-21 16:45:55', '2022-12-21 16:45:55'),
(22, 14, 6, 1, 'test today', 0, '2022-12-26 12:12:39', '2022-12-26 12:12:39'),
(23, 14, 6, 1, 'abc', 0, '2022-12-26 13:58:52', '2022-12-26 13:58:52'),
(24, 14, 10, 2, 'taaaw', 0, '2022-12-26 13:59:36', '2022-12-26 13:59:36'),
(25, 10, 14, 2, 'jdds', 1, '2022-12-02 23:20:59', '2023-01-03 16:39:44'),
(26, 14, 10, 2, 'بخير', 0, '2022-12-26 14:04:18', '2022-12-26 14:04:18'),
(27, 14, 6, 1, 'كيف حالك', 0, '2022-12-26 14:04:29', '2022-12-26 14:04:29'),
(28, 14, 6, 1, 'اتمني ان تكون بخير', 0, '2022-12-26 14:04:33', '2022-12-26 14:04:33'),
(29, 14, 6, 1, 'سيش', 0, '2022-12-26 14:04:40', '2022-12-26 14:04:40'),
(30, 14, 6, 1, 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test', 0, '2022-12-26 14:04:50', '2022-12-26 14:04:50'),
(31, 14, 14, 3, 'dasdasd', 0, '2023-01-03 16:39:11', '2023-01-03 16:39:11'),
(32, 14, 10, 2, 'dasd test', 0, '2023-01-03 16:39:51', '2023-01-03 16:39:51'),
(33, 14, 10, 2, 'lkm', 0, '2023-01-03 16:39:53', '2023-01-03 16:39:53'),
(34, 14, 10, 2, 'mkm', 0, '2023-01-03 16:39:54', '2023-01-03 16:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `government_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `government_id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `created_at`, `updated_at`) VALUES
(1, 1, 'التجمع الخامس', 'five meeting', NULL, 'وصف التجمع', 'info about meeting', NULL, NULL, '2022-08-17 22:07:52'),
(2, 6, 'الحي السابع', 'dsad', NULL, '', '', NULL, '2022-07-24 11:03:50', '2022-07-24 11:03:50'),
(3, 4, 'dasd', 'aaaaaaa', NULL, '', '', NULL, '2022-07-28 15:34:15', '2022-07-28 15:34:25'),
(4, 1, 'الاسكندريه', 'alex', NULL, '', '', NULL, '2022-08-15 01:27:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `users`, `type`, `created_at`, `updated_at`) VALUES
(1, '14,14', '1:1', '2022-12-02 20:14:44', '2022-12-02 20:14:44'),
(2, '14,10', '1:1', '2022-12-02 20:29:42', '2022-12-02 20:29:42'),
(3, '14,14', '1:1', '2023-01-03 16:39:11', '2023-01-03 16:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `created_at`, `updated_at`) VALUES
(1, 'مصر', 'Egypt', 'kk', 'وصف سريع عن مصر', 'description info about egypt', NULL, '2022-07-15 23:23:47', '2022-11-02 22:39:53'),
(2, 'السعودية', 'KSA', '', 'وصف سريع عن السعوديه', 'info about ksa', NULL, '2022-07-15 23:23:47', '2022-08-17 21:15:19'),
(3, 'امريكا', 'usa', NULL, '', '', NULL, '2022-07-24 10:30:32', '2022-07-24 10:30:32'),
(4, 'ق', 'ر', NULL, '', '', NULL, '2022-07-24 10:34:50', '2022-07-24 10:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `ar_name`, `en_name`, `tu_name`, `currency_code`, `country_code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'ريال سعودي', 'Ryal', '', 'SR', 'KSA', 1, '2022-07-30 17:10:45', NULL),
(2, 'جنيه مصري', 'Egypt Poun', 'تىh', 'L.E', 'EGP', 0, '2022-07-30 17:10:45', '2022-12-26 14:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `discussion-answers`
--

CREATE TABLE `discussion-answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussion-answers`
--

INSERT INTO `discussion-answers` (`id`, `user_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 'استني الفتره دي لان الاسعار عاليه', '2022-08-16 15:43:38', NULL),
(2, 13, 1, 'استني مش دلوقتي خالص', '2022-08-16 15:43:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discussion-questions`
--

CREATE TABLE `discussion-questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussion-questions`
--

INSERT INTO `discussion-questions` (`id`, `user_id`, `category_id`, `area_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 14, NULL, 3, 'حابب اشتري شقه هناك', '2022-08-15 15:42:36', NULL),
(2, 13, NULL, 2, 'حابب اشتري شقه كبيره في المكان ده ', '2022-08-15 15:42:36', NULL),
(3, 13, 18, 1, 'dsad', '2022-08-15 22:24:24', '2022-08-15 22:24:24'),
(4, 13, 18, 4, 'test question', '2022-08-15 22:25:46', '2022-08-15 22:25:46'),
(5, 13, 18, 4, 'sdas sa as as sdas sa as as sdas sa as as', '2022-08-15 22:28:09', '2022-08-15 22:28:09'),
(6, 13, 18, 1, 'last', '2022-08-15 22:30:35', '2022-08-15 22:30:35'),
(7, 13, 18, 1, 'abc', '2022-08-15 22:31:32', '2022-08-15 22:31:32'),
(8, 13, 18, 1, 'سؤال ؟', '2022-08-17 18:32:24', '2022-08-17 18:32:24'),
(9, 14, NULL, 1, 'افضل وقت للشراء', '2022-08-21 16:28:45', '2022-08-21 16:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_types`
--

CREATE TABLE `exchange_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange_types`
--

INSERT INTO `exchange_types` (`id`, `ar_name`, `en_name`, `tu_name`, `created_at`, `updated_at`) VALUES
(1, 'سيارات', 'cars', 'arabalar', NULL, NULL),
(2, 'ذهب', 'gold', 'altın', NULL, NULL),
(3, 'بتكوين', 'bitcoin', 'bitcoin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(10, 14, 29, '2022-08-25 22:27:29', NULL),
(11, 13, 29, '2022-08-26 22:27:29', NULL),
(12, 14, 30, '2022-08-19 18:15:00', '2022-08-19 18:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `governments`
--

CREATE TABLE `governments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governments`
--

INSERT INTO `governments` (`id`, `country_id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `created_at`, `updated_at`) VALUES
(1, 1, 'القاهرة', 'cairo', '', 'وصف عن القاهره', 'info about cairo', NULL, '2022-07-20 12:18:57', '2022-08-17 21:21:40'),
(4, 2, 'الرياض', 'ryad', NULL, '', '', NULL, '2022-07-24 10:59:32', '2022-07-24 10:59:32'),
(6, 2, 'مكه', 'maka', NULL, 'وصف سريع عن مكه', 'info about maka', NULL, '2022-07-24 11:03:20', '2022-08-17 21:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `home_comments`
--

CREATE TABLE `home_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rate_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_comments`
--

INSERT INTO `home_comments` (`id`, `rate_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 9, '1', '2023-01-08 21:06:09', '2023-01-08 21:06:09'),
(4, 8, '1', '2023-01-08 21:08:12', '2023-01-08 21:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `listings_infos`
--

CREATE TABLE `listings_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent_or_sale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `negotiation_status` tinyint(4) NOT NULL DEFAULT 0,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatapp_status` tinyint(4) NOT NULL DEFAULT 0,
  `contact_email_status` tinyint(4) NOT NULL DEFAULT 0,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `client_payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings_infos`
--

INSERT INTO `listings_infos` (`id`, `user_id`, `category_id`, `area_id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `ar_address`, `en_address`, `tu_address`, `rent_or_sale`, `price`, `negotiation_status`, `currency_id`, `youtube_link`, `whatapp_status`, `contact_email_status`, `payment_status`, `client_payment_status`, `coordinates`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(29, 14, 18, 1, 'test', 'test', NULL, 'test', 'test', NULL, 'aaaaaaaaa', 'aaaaaaaaaa', NULL, 'sale', 100, 0, 1, 'https://test.com', 0, 0, 1, 'cash', '103123123,3123123123', 'live', NULL, '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(30, 14, 18, 4, 'dasd', 'dad', NULL, 'adsd', 'dasd', NULL, 'das', 'dasw', NULL, 'sale', 400, 0, 1, 'dasd', 0, 0, 0, 'cash', '103123123,3123123123', 'live', NULL, '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(34, 10, 19, 4, 'wwqqqqqqqqq', 'wwqqqqqqqqq', NULL, 'wwqqqqqqqqq', 'wwqqqqqqqqq', NULL, 'wwqqqqqqqqq', 'wwqqqqqqqqq', NULL, 'rent', 120, 0, 1, NULL, 0, 0, 1, 'one_payment', '103123123,3123123123', 'live', NULL, '2022-08-14 21:10:53', '2022-10-26 15:33:51'),
(39, 14, 19, 1, 'dasd', 'das', NULL, 'das', 'das', NULL, 'HGCM+2P مركز الزقازيق، مصر', 'fsd', NULL, 'sale', 5000, 0, 1, NULL, 0, 0, 1, 'cash', '30.570079346509715,31.53430795987651', 'live', NULL, '2022-10-26 16:10:46', '2022-10-27 18:27:22'),
(46, 14, 18, 1, 'das', 'dsa', NULL, 'dsa', 'dsa', NULL, 'HGHJ+3H مركز الزقازيق، مصر', 'HGHJ+3H مركز الزقازيق، مصر', NULL, 'rent', 312, 0, 1, NULL, 0, 0, 1, 'one_payment', '30.57770561741344,31.531475547156784', 'live', NULL, '2022-10-30 19:38:59', '2022-11-30 17:59:54'),
(48, 14, 18, 1, 'عنوان تيست', 'sınav adresi', NULL, 'Test ayrıntıları', 'Test details', NULL, 'HGHW+RP مركز الزقازيق، مصر', 'HGHW+RP مركز الزقازيق، مصر', NULL, 'sale', 3000000, 0, 1, NULL, 0, 0, 0, 'cash', '30.579371937565956,31.555181983052076', 'live', NULL, '2022-11-29 20:27:20', '2022-11-29 20:27:20'),
(49, 14, 18, 1, 'عنوان تيست', 'sınav adresi', NULL, 'Test ayrıntıları', 'Test details', NULL, 'HGHW+RP مركز الزقازيق، مصر', 'HGHW+RP مركز الزقازيق، مصر', NULL, 'sale', 3000000, 0, 1, NULL, 0, 0, 0, 'cash', '30.579371937565956,31.555181983052076', 'live', NULL, '2022-11-29 20:29:07', '2022-11-29 20:29:07'),
(50, 14, 18, 1, 'عنوان تيست', 'test address', 'sınav adresi', 'تفاصيل اعلان', 'Announcement details', 'Duyuru detayları', 'HGHW+RP مركز الزقازيق، مصر', 'HGHW+RP مركز الزقازيق، مصر', NULL, 'sale', 3000000, 0, 2, NULL, 0, 0, 1, 'cash', '30.579371937565956,31.555181983052076', 'live', NULL, '2022-11-29 20:31:19', '2022-11-29 22:26:18'),
(51, 14, 19, 4, 'تجربه اعلان اليوم', 'Try an ad today', 'Bugün bir reklam deneyin', 'تفاصيل اعلان', 'Announcement details', 'Duyuru detayları', 'حي مبارك', 'Mubarak neighborhood', 'Mübarek mahallesi', 'rent', NULL, 0, 1, NULL, 0, 0, 1, 'one_payment', '30.58276729856012,31.548384192786667', 'live', NULL, '2022-12-04 21:22:55', '2022-12-04 21:23:00'),
(52, 14, 18, 1, 'اعلان تجربه', 'Announcement of experience', NULL, 'تفاصيل الاعن تجربه', 'Details of the experience', NULL, 'حي مبارك', 'Mubarak neighborhood', NULL, 'sale', 1000, 0, 1, NULL, 0, 0, 1, 'cash', '30.566915374343242,31.50112273155625', 'live', NULL, '2022-12-21 14:12:07', '2022-12-21 14:12:11'),
(53, 14, 18, 1, 'dsa', 'dsa', 'dsa', 'dsad', 'dsad', 'dsad', 'dasd', 'dasd', 'baba', 'sale', 1000, 0, 1, NULL, 0, 0, 1, 'cash', '30.57797902914727,31.53078890164897', 'live', NULL, '2022-12-21 16:48:58', '2022-12-21 16:49:02'),
(54, 14, 19, 1, 'تجربه اعلان اليوم خاسره', 'Today\'s announcement experience is losing', 'Bugünkü duyuru deneyimi kaybediyor', 'تفاصيل تجربه', 'Experience details', 'Deneyim ayrıntıları', 'عنوان التجربه', 'The title of the experiment', 'deneyin başlığı', 'sale', 10000, 0, 1, NULL, 0, 0, 1, 'installment', '30.58539779113776,31.586656096254497', 'rejected', NULL, '2022-12-25 14:48:15', '2022-12-26 14:17:21'),
(55, 14, 18, 1, 'تجربه اليوم عن اعلان', 'Today\'s experience about the announcement', 'Duyuruyla ilgili bugünkü deneyim', 'تفاصيل التجربه', 'Experiment details', 'Deney ayrıntıları', 'عنوان التجربه في السعوديه', 'The address of the experience in Saudi Arabia', 'Tecrübenin adresi Suudi Arabistan', 'sale', 30000, 1, 1, NULL, 0, 0, 1, 'cash', '321,312', 'live', NULL, '2023-01-03 15:45:53', '2023-01-03 15:45:56'),
(56, 14, 18, 1, 'تجربه', 'an experience', 'tecrübe', 'تفاصيل تجربه', 'Experience details', 'Deneyim ayrıntıları', 'عنوان تجربه ف السعوديه', 'Title of experience in Saudi Arabia', 'Suudi Arabistan\'daki deneyim unvanı', 'sale', 20000, 0, 1, NULL, 0, 0, 1, 'cash', '3213,3123', 'live', NULL, '2023-01-03 16:47:19', '2023-01-03 16:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `listings_notes`
--

CREATE TABLE `listings_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings_notes`
--

INSERT INTO `listings_notes` (`id`, `user_id`, `listing_id`, `note`, `created_at`, `updated_at`) VALUES
(6, 14, 30, 'تيست يي تيست تاني', '2022-08-17 00:08:12', '2022-08-19 19:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `listings_prices`
--

CREATE TABLE `listings_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings_prices`
--

INSERT INTO `listings_prices` (`id`, `listing_id`, `ar_name`, `en_name`, `tu_name`, `basic_price`, `created_at`, `updated_at`) VALUES
(9, 46, 'شهرى', 'montly', NULL, 500, '2022-10-30 19:38:59', '2022-11-30 17:59:54'),
(12, 46, 'سنوي', 'yearly', NULL, 100, '2022-11-30 17:59:54', '2022-11-30 17:59:54'),
(13, 51, 'يومي', 'daily', NULL, 100, '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(14, 51, 'شهري', 'Monthly', NULL, 200, '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(15, 54, 'يومي', 'daily', 'günlük', 10, '2022-12-25 14:48:15', '2022-12-25 14:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `listing_exchanges`
--

CREATE TABLE `listing_exchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `exchange_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_exchanges`
--

INSERT INTO `listing_exchanges` (`id`, `listing_id`, `exchange_id`, `created_at`, `updated_at`) VALUES
(2, 50, 19, '2022-11-29 22:26:18', '2022-11-29 22:26:18'),
(3, 52, 17, '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(4, 52, 20, '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(5, 53, 17, '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(6, 53, 20, '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(10, 54, 17, '2022-12-25 22:49:39', '2022-12-25 22:49:39'),
(11, 54, 20, '2022-12-25 22:49:39', '2022-12-25 22:49:39'),
(12, 55, 17, '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(13, 55, 20, '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(14, 56, 17, '2023-01-03 16:47:19', '2023-01-03 16:47:19'),
(15, 56, 20, '2023-01-03 16:47:19', '2023-01-03 16:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `listing_exchange_additional_notes`
--

CREATE TABLE `listing_exchange_additional_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `ar_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_exchange_additional_notes`
--

INSERT INTO `listing_exchange_additional_notes` (`id`, `listing_id`, `ar_note`, `en_note`, `tu_note`, `created_at`, `updated_at`) VALUES
(1, 50, 'معلومات', 'informations', 'bilgiler', '2022-11-29 20:31:19', '2022-11-29 20:31:19'),
(2, 52, 'ملاحظه مهمه عن هذا الاعن', 'An important note about this advertisement', 'Bu ilanla ilgili önemli bir not', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(3, 53, 'ملاحظه', 'note', 'Not', '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(4, 54, 'لا اريد الاتصال تليفونيا اليوم', 'I don\'t want to call today', 'bugün aramak istemiyorum', '2022-12-25 22:28:05', '2022-12-25 22:41:18'),
(5, 55, 'عند جديه الاتفاق لابد من عرض صور وفديو للسلعة المقدمه', 'When the agreement is serious, pictures and videos of the goods provided must be shown', 'Sözleşme ciddi olduğunda, sağlanan malların resimleri ve videoları gösterilmelidir.', '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(6, 56, 'في حاله استبدال نص', 'In the case of text replacement', 'Metin değiştirme durumunda', '2023-01-03 16:47:19', '2023-01-03 16:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `listing_photos`
--

CREATE TABLE `listing_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_photos`
--

INSERT INTO `listing_photos` (`id`, `listing_id`, `image`, `created_at`, `updated_at`) VALUES
(12, 29, '16601782965516282587924_image.png', NULL, NULL),
(13, 29, '16601782969895893597329_image.png', NULL, NULL),
(14, 29, '16601782965457703998472_image.png', NULL, NULL),
(15, 29, '16601798562186497122924_image.png', NULL, NULL),
(16, 30, '16604341865161639178878_image.png', NULL, NULL),
(17, 30, '16604341869796688409442_image.png', NULL, NULL),
(24, 34, '16605186535800493218094_image.png', NULL, NULL),
(25, 34, '16605186535812920288546_image.png', NULL, NULL),
(26, 34, '16605186532974624035932_image.png', NULL, NULL),
(27, 34, '16605186964497781738753_image.jpeg', NULL, NULL),
(28, 34, '16668056313360383690690_image.png', '2022-10-26 15:33:51', '2022-10-26 15:33:51'),
(29, 34, '16668056317553263860357_image.jpg', '2022-10-26 15:33:51', '2022-10-26 15:33:51'),
(31, 39, '16668078465628143549012_image.jpg', '2022-10-26 16:10:46', '2022-10-26 16:10:46'),
(32, 39, '16668078462867903532741_image.jpg', '2022-10-26 16:10:46', '2022-10-26 16:10:46'),
(33, 39, '16668088235347267290801_image.png', '2022-10-26 16:27:03', '2022-10-26 16:27:03'),
(34, 39, '16669024422522911700317_image.jpg', '2022-10-27 18:27:22', '2022-10-27 18:27:22'),
(35, 39, '1666902442938399018621_image.jpg', '2022-10-27 18:27:22', '2022-10-27 18:27:22'),
(36, 39, '16669024423955096256276_image.jpg', '2022-10-27 18:27:22', '2022-10-27 18:27:22'),
(45, 50, '16697610806945349810598_image.jpg', '2022-11-29 20:31:20', '2022-11-29 20:31:20'),
(46, 50, '16697679798719206024687_image.jpg', '2022-11-29 22:26:19', '2022-11-29 22:26:19'),
(47, 46, '16698383942204556570071_image.png', '2022-11-30 17:59:54', '2022-11-30 17:59:54'),
(48, 46, '16698383943162162398497_image.png', '2022-11-30 17:59:54', '2022-11-30 17:59:54'),
(49, 46, '16698383944487833514369_image.jpeg', '2022-11-30 17:59:54', '2022-11-30 17:59:54'),
(50, 51, '16701961755465992336917_image.png', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(51, 51, '16701961752533789410389_image.jpeg', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(52, 51, '16701961755457527390013_image.jpg', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(53, 52, '16716391272868057651570_image.png', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(54, 52, '16716391277980428790614_image.jpg', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(55, 52, '16716391278529322523611_image.png', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(56, 52, '16716391276339413001635_image.jpg', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(57, 53, '16716485385261498319116_image.jpg', '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(58, 53, '16716485389236530809378_image.jpg', '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(59, 54, '1671986895843501906613_image.png', '2022-12-25 14:48:15', '2022-12-25 14:48:15'),
(60, 54, '16720739144809329117539_image.png', '2022-12-26 14:58:34', '2022-12-26 14:58:34'),
(61, 55, '16727679534472517074204_image.jpg', '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(62, 55, '16727679531901667967653_image.jpg', '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(63, 56, '16727716392013174430036_image.jpg', '2023-01-03 16:47:19', '2023-01-03 16:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `listing_prices_elements`
--

CREATE TABLE `listing_prices_elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_price_element_id` bigint(20) UNSIGNED NOT NULL,
  `prices_id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_prices_elements`
--

INSERT INTO `listing_prices_elements` (`id`, `parent_price_element_id`, `prices_id`, `price`, `created_at`, `updated_at`) VALUES
(3, 9, 1, '400', '2022-10-30 19:38:59', '2022-11-30 17:59:54'),
(4, 9, 2, 'not_applicable', '2022-10-30 19:38:59', '2022-10-30 19:38:59'),
(9, 12, 1, 'not_included', '2022-11-30 17:59:54', '2022-11-30 17:59:54'),
(10, 12, 2, '5', '2022-11-30 17:59:54', '2022-11-30 17:59:54'),
(11, 13, 2, '15', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(12, 13, 4, 'not_included', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(13, 14, 2, '50', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(14, 14, 4, '80', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(15, 15, 2, '53', '2022-12-25 14:48:15', '2022-12-25 16:46:11'),
(16, 15, 4, '1001', '2022-12-25 14:48:15', '2022-12-25 16:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `listing_questions_answers`
--

CREATE TABLE `listing_questions_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_questions_answers`
--

INSERT INTO `listing_questions_answers` (`id`, `listing_id`, `question_id`, `answer`, `type`, `created_at`, `updated_at`) VALUES
(6, 29, 2, '1', 'checkbox', '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(7, 29, 13, '13', 'select', '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(8, 29, 1, '21', 'select', '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(9, 29, 17, '19', 'select', '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(10, 30, 2, '1', 'checkbox', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(11, 30, 13, '4', 'select', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(12, 30, 1, '1', 'select', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(13, 30, 17, '19', 'select', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(26, 34, 2, 'dsa', 'text', '2022-08-14 21:10:53', '2022-10-26 15:33:51'),
(27, 34, 13, '4', 'select', '2022-08-14 21:10:53', '2022-08-14 21:10:53'),
(28, 34, 1, '22', 'select', '2022-08-14 21:10:53', '2022-10-26 15:33:51'),
(29, 34, 17, '19', 'select', '2022-08-14 21:10:53', '2022-08-14 21:10:53'),
(30, 34, 19, '20', 'select', '2022-10-26 15:33:51', '2022-10-26 15:33:51'),
(40, 39, 2, 'abc', 'text', '2022-10-26 16:10:46', '2022-10-27 18:27:22'),
(41, 39, 1, '22', 'select', '2022-10-26 16:10:46', '2022-10-27 18:27:22'),
(42, 39, 19, '20', 'select', '2022-10-26 16:10:46', '2022-10-26 16:10:46'),
(67, 46, 2, 'dsaddddddddddd', 'text', '2022-10-30 19:38:59', '2022-11-30 17:59:54'),
(68, 46, 13, '4', 'select', '2022-10-30 19:38:59', '2022-11-30 17:59:54'),
(69, 46, 1, '1', 'select', '2022-10-30 19:38:59', '2022-11-30 17:59:54'),
(70, 46, 17, '19', 'select', '2022-10-30 19:38:59', '2022-10-30 19:38:59'),
(75, 50, 2, 'dsaddddddddddd', 'text', '2022-11-29 20:31:20', '2022-11-29 20:31:20'),
(76, 50, 13, '4', 'select', '2022-11-29 20:31:20', '2022-11-29 20:31:20'),
(77, 50, 1, '1', 'select', '2022-11-29 20:31:20', '2022-11-29 20:31:20'),
(78, 50, 17, '19', 'select', '2022-11-29 20:31:20', '2022-11-29 20:31:20'),
(79, 51, 2, 'test', 'text', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(80, 51, 1, '21', 'select', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(81, 51, 19, '20', 'select', '2022-12-04 21:22:55', '2022-12-04 21:22:55'),
(82, 52, 2, 'test', 'text', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(83, 52, 13, '4', 'select', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(84, 52, 1, '1', 'select', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(85, 52, 17, '19', 'select', '2022-12-21 14:12:07', '2022-12-21 14:12:07'),
(86, 53, 2, 'test', 'text', '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(87, 53, 13, '4', 'select', '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(88, 53, 1, '1', 'select', '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(89, 53, 17, '19', 'select', '2022-12-21 16:48:58', '2022-12-21 16:48:58'),
(90, 54, 2, '24', 'select', '2022-12-25 14:48:15', '2022-12-26 14:58:34'),
(91, 54, 1, '22', 'select', '2022-12-25 14:48:15', '2022-12-25 22:28:05'),
(92, 54, 19, '20', 'select', '2022-12-25 14:48:15', '2022-12-25 14:48:15'),
(93, 55, 2, '24', 'select', '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(94, 55, 13, '4', 'select', '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(95, 55, 1, '1', 'select', '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(96, 55, 17, '19', 'select', '2023-01-03 15:45:53', '2023-01-03 15:45:53'),
(97, 56, 2, '24', 'select', '2023-01-03 16:47:19', '2023-01-03 16:47:19'),
(98, 56, 13, '13', 'select', '2023-01-03 16:47:19', '2023-01-03 16:47:19'),
(99, 56, 1, '1', 'select', '2023-01-03 16:47:19', '2023-01-03 16:47:19'),
(100, 56, 17, '19', 'select', '2023-01-03 16:47:19', '2023-01-03 16:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `listing_statistics`
--

CREATE TABLE `listing_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `no_search` int(11) NOT NULL,
  `no_seen` int(11) NOT NULL,
  `no_contact_tried` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_statistics`
--

INSERT INTO `listing_statistics` (`id`, `listing_id`, `no_search`, `no_seen`, `no_contact_tried`, `created_at`, `updated_at`) VALUES
(4, 34, 35, 88, 2, '2022-08-14 21:10:53', '2023-01-01 16:02:14'),
(5, 29, 0, 162, 1, '2022-08-14 23:13:59', '2023-01-03 16:28:07'),
(6, 30, 5, 42, 5, '2022-08-14 23:13:59', '2022-12-19 16:41:10'),
(7, 34, 0, 0, 0, '2022-10-26 15:33:51', '2022-10-26 15:33:51'),
(9, 39, 0, 78, 0, '2022-10-26 16:10:46', '2023-01-03 15:30:48'),
(10, 39, 0, 0, 0, '2022-10-27 18:27:22', '2022-10-27 18:27:22'),
(11, 46, 0, 132, 0, '2022-10-30 19:38:59', '2023-01-03 17:07:43'),
(13, 50, 0, 104, 0, '2022-11-29 20:31:20', '2023-01-03 16:28:07'),
(14, 51, 0, 70, 4, '2022-12-04 21:22:55', '2023-01-03 17:07:37'),
(15, 52, 0, 46, 12, '2022-12-21 14:12:07', '2023-01-03 16:38:49'),
(16, 53, 0, 35, 0, '2022-12-21 16:48:58', '2023-01-03 16:28:07'),
(17, 54, 0, 9, 9, '2022-12-25 14:48:15', '2022-12-26 14:59:59'),
(18, 55, 0, 14, 1, '2023-01-03 15:45:53', '2023-01-03 16:28:07'),
(19, 56, 0, 1, 1, '2023-01-03 16:47:19', '2023-01-03 16:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `map_images`
--

CREATE TABLE `map_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map_images`
--

INSERT INTO `map_images` (`id`, `map_id`, `image`, `type`, `created_at`, `updated_at`) VALUES
(2, 1, '16607771922834975902974_image.jpg', 'countries', NULL, NULL),
(3, 1, '16607771926118851500596_image.jpg', 'countries', NULL, NULL),
(4, 1, '16607780309787966923781_image.jpg', 'countries', '2022-08-17 21:13:50', '2022-08-17 21:13:50'),
(5, 2, '16607781191418092603146_image.jpg', 'countries', '2022-08-17 21:15:19', '2022-08-17 21:15:19'),
(8, 1, '16607787506160669722013_image.jpg', 'governments', '2022-08-17 21:25:50', '2022-08-17 21:25:50'),
(9, 1, '16607787508057346839935_image.jpg', 'governments', '2022-08-17 21:25:50', '2022-08-17 21:25:50'),
(12, 6, '16607795281350163243508_image.jpg', 'governments', '2022-08-17 21:38:48', '2022-08-17 21:38:48'),
(13, 6, '16607795285831309702463_image.jpg', 'governments', '2022-08-17 21:38:48', '2022-08-17 21:38:48'),
(14, 1, '16607812728195163782628_image.jpg', 'cities', '2022-08-17 22:07:52', '2022-08-17 22:07:52'),
(15, 1, '16607844063872746387850_image.jpg', 'cities', '2022-08-17 23:00:06', '2022-08-17 23:00:06');

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
(47, '2013_07_14_203748_create_roles_table', 1),
(48, '2013_07_14_212529_create_countries_table', 1),
(49, '2013_07_14_212542_create_governments_table', 1),
(50, '2013_07_14_212550_create_cities_table', 1),
(51, '2013_07_14_212558_create_areas_table', 1),
(52, '2013_07_14_213209_create_categories_table', 1),
(53, '2014_10_12_000000_create_users_table', 1),
(54, '2014_10_12_100000_create_password_resets_table', 1),
(55, '2019_08_19_000000_create_failed_jobs_table', 1),
(56, '2022_07_14_203922_create_user_infos_table', 1),
(57, '2022_07_14_204554_create_user_company_infos_table', 1),
(58, '2022_07_14_212038_create_listings_infos_table', 1),
(59, '2022_07_14_213909_create_questions_table', 1),
(60, '2022_07_14_214038_create_answers_table', 1),
(61, '2022_07_14_214143_create_categories_questions_table', 1),
(62, '2022_07_15_002116_create_listing_questions_answers_table', 1),
(63, '2022_07_15_002252_create_listing_photos_table', 1),
(64, '2022_07_15_002424_create_listing_statistics_table', 1),
(65, '2022_07_15_010812_create_packages_table', 2),
(66, '2022_07_15_010940_create_packages_prices_places_table', 2),
(67, '2022_07_15_011253_create_supports_table', 2),
(68, '2022_07_16_155307_create_notifications_table', 2),
(69, '2022_07_16_155724_create_favourites_table', 3),
(70, '2022_07_21_164902_create_listings_notes_table', 4),
(71, '2022_07_21_215240_create_advertisng_points_prices_table', 5),
(72, '2022_07_14_185319_create_currencies_table', 6),
(73, '2022_08_06_004720_create_subscriptions_table', 7),
(74, '2022_08_15_140956_create_discussion-questions_table', 8),
(75, '2022_08_15_141055_create_discussion-answers_table', 8),
(76, '2022_08_17_220014_create_map_images_table', 9),
(77, '2022_08_19_224305_create_users_contact_sellers_table', 10),
(78, '2022_08_21_200520_create_answers_reactions_table', 11),
(79, '2022_10_21_153028_create_prices_factors_table', 12),
(80, '2022_10_21_153307_create_categories_prices_factors_table', 12),
(81, '2022_10_21_153639_create_listings_prices_table', 12),
(82, '2022_10_27_213132_create_listing_prices_elements_table', 13),
(83, '2022_11_27_192828_create_exchange_types_table', 14),
(84, '2022_11_29_150511_create_listing_exchanges_table', 15),
(85, '2022_11_29_150747_create_listing_exchange_additional_notes_table', 15),
(86, '2022_12_02_212753_create_conversations_table', 16),
(87, '2022_12_03_313807_create_chats_table', 16),
(88, '2023_01_08_223447_create_home_comments_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `ar_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `sender_id`, `receiver_id`, `ar_info`, `en_info`, `tu_info`, `seen`, `created_at`, `updated_at`) VALUES
(1, 5, 14, 'تيست', 'test', '', 1, '2022-08-06 18:58:53', '2022-08-23 17:04:52'),
(2, 5, 14, 'تيست', 'test', '', 1, '2022-08-06 18:58:53', '2022-08-23 17:04:52'),
(3, 5, 14, 'تيست', 'test', '', 1, '2022-08-06 18:58:53', '2022-08-23 17:04:52'),
(4, 5, 14, 'تيست', 'test', '', 1, '2022-08-06 18:58:53', '2022-08-23 17:04:52'),
(5, 5, 14, 'تيست', 'test', '', 1, '2022-08-06 18:58:53', '2022-08-23 17:04:52'),
(6, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(7, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(8, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(9, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(10, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(11, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(12, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(13, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(14, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(15, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(16, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(17, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(18, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(19, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(20, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(21, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(22, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(23, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(24, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(25, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(26, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(27, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(28, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(29, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(30, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(31, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(32, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(33, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(34, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(35, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(36, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(37, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(38, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(39, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(40, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(41, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(42, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(43, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(44, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(45, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(46, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(47, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(48, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(49, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(50, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(51, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(52, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(53, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(54, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(55, 5, 3, 'تيست', 'test', '', 0, '2022-08-06 18:58:53', NULL),
(56, 14, 13, 'قام محمود عبد الله بالغاء التفاعل من علي رد استني الفتره دي لان الاسعار عاليه', 'محمود عبد الله remove react from answer استني الفتره دي لان الاسعار عاليه', '', 0, '2022-08-21 20:40:47', '2022-08-21 20:40:47'),
(57, 14, 13, 'قام محمود عبد الله  بالتفاعل  علي رد استني مش دلوقتي خالص', 'محمود عبد الله  react on answer استني مش دلوقتي خالص', '', 0, '2022-08-21 20:43:14', '2022-08-21 20:43:14'),
(58, 14, 13, 'قام محمود عبد الله  بالتفاعل  علي رد استني مش دلوقتي خالص', 'محمود عبد الله  react on answer استني مش دلوقتي خالص', '', 0, '2022-08-21 20:46:03', '2022-08-21 20:46:03'),
(59, 5, 14, 'تمت عملية شراء نقاط الباقة بنجاح و تم اضافه النقاط الي رصيدك', 'sale of points has been done successfully and points added to your wallet', '', 1, '2022-08-23 21:05:33', '2022-08-23 21:12:22'),
(60, 5, 14, 'تمت عملية شراء نقاط الباقة بنجاح و تم اضافه النقاط الي رصيدك', 'sale of points has been done successfully and points added to your wallet', '', 1, '2022-08-23 22:33:08', '2022-08-23 22:56:37'),
(61, 5, 14, 'تمت عملية شراء نقاط الباقة بنجاح و تم اضافه النقاط الي رصيدك', 'sale of points has been done successfully and points added to your wallet', '', 1, '2022-08-23 22:35:48', '2022-08-23 22:56:37'),
(62, 5, 14, 'تمت عملية شراء نقاط الباقة بنجاح و تم اضافه النقاط الي رصيدك', 'sale of points has been done successfully and points added to your wallet', '', 1, '2022-08-23 22:36:51', '2022-08-23 22:56:37'),
(63, 5, 14, 'تمت عملية شراء نقاط الباقة بنجاح و تم اضافه النقاط الي رصيدك', 'sale of points has been done successfully and points added to your wallet', '', 1, '2022-08-23 22:38:12', '2022-08-23 22:56:37'),
(64, 10, 14, 'تم ارسال رسالة جديدة من محمود عبد الله', 'New message has been sent from محمود عبد الله', 'Kimden yeni mesaj gönderildi محمود عبد الله', 1, '2022-12-01 20:00:05', '2022-12-01 20:20:10'),
(65, 14, 14, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 1, '2022-12-02 20:14:44', '2022-12-19 10:54:48'),
(66, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-02 20:29:42', '2022-12-02 20:29:42'),
(67, 10, 14, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 1, '2022-12-02 20:33:07', '2022-12-19 10:54:48'),
(68, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-02 22:53:18', '2022-12-02 22:53:18'),
(69, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-02 22:57:08', '2022-12-02 22:57:08'),
(70, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-02 23:00:23', '2022-12-02 23:00:23'),
(71, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-02 23:20:59', '2022-12-02 23:20:59'),
(72, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-21 16:45:50', '2022-12-21 16:45:50'),
(73, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-21 16:45:55', '2022-12-21 16:45:55'),
(74, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 12:12:39', '2022-12-26 12:12:39'),
(75, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 13:58:52', '2022-12-26 13:58:52'),
(76, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 13:59:36', '2022-12-26 13:59:36'),
(77, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 14:04:18', '2022-12-26 14:04:18'),
(78, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 14:04:29', '2022-12-26 14:04:29'),
(79, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 14:04:33', '2022-12-26 14:04:33'),
(80, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 14:04:40', '2022-12-26 14:04:40'),
(81, 14, 6, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2022-12-26 14:04:50', '2022-12-26 14:04:50'),
(82, 14, 14, 'تم تعديل حالة عقار تجربه اعلان اليوم خاسره', 'listing  Today\'s announcement experience is losing status has been updated successfully', '', 0, '2022-12-26 14:17:21', '2022-12-26 14:17:21'),
(83, 14, 14, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2023-01-03 16:39:11', '2023-01-03 16:39:11'),
(84, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2023-01-03 16:39:51', '2023-01-03 16:39:51'),
(85, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2023-01-03 16:39:53', '2023-01-03 16:39:53'),
(86, 14, 10, 'تم ارسال رسالة جديدة ', 'New message has been sent ', 'yeni bir mesaj gönderildi', 0, '2023-01-03 16:39:54', '2023-01-03 16:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_value` int(11) NOT NULL,
  `max_value` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visible` tinyint(4) NOT NULL DEFAULT 1,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `expiration_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `ar_name`, `en_name`, `tu_name`, `min_value`, `max_value`, `price`, `image`, `is_visible`, `currency_id`, `expiration_date`, `created_at`, `updated_at`) VALUES
(1, 'dasd', 'dsa', 'jj', 1, 10, 2.00, 'default.png', 1, 1, NULL, '2022-07-30 17:21:10', '2022-12-26 14:11:49'),
(41, 'الذهبية', 'gold', NULL, 1, 100, 14.00, '1659222438_user.png', 1, 2, NULL, '2022-07-30 21:05:55', '2022-08-06 12:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `packages_prices_places`
--

CREATE TABLE `packages_prices_places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages_prices_places`
--

INSERT INTO `packages_prices_places` (`id`, `package_id`, `country_id`, `price`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 3.00, '2022-07-30 21:03:20', '2022-07-30 21:05:25'),
(6, 1, 3, 10.00, '2022-07-30 21:03:20', '2022-08-06 12:00:17'),
(7, 41, 1, 123.00, '2022-07-30 21:07:18', '2022-07-30 21:07:18'),
(8, 41, 3, 140.00, '2022-07-30 21:07:18', '2022-07-30 21:07:18');

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
-- Table structure for table `prices_factors`
--

CREATE TABLE `prices_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices_factors`
--

INSERT INTO `prices_factors` (`id`, `ar_name`, `en_name`, `tu_name`, `created_at`, `updated_at`) VALUES
(1, 'جيم', 'gym', 'qwr', '2022-10-21 14:47:46', '2022-12-26 14:07:42'),
(2, 'مطعم', 'restaurant', NULL, '2022-10-21 14:50:32', '2022-10-21 14:50:56'),
(3, 'مسجد', 'mosque', NULL, '2022-10-21 14:52:00', '2022-10-21 14:52:00'),
(4, 'حمام سباحه', 'swmiming pool', NULL, '2022-10-27 18:22:44', '2022-10-27 18:22:44'),
(5, 'بلاسيتشن', 'playstation', 'das', '2022-11-02 17:21:13', '2022-11-02 22:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required_status` tinyint(4) NOT NULL DEFAULT 0,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_appearance` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `ar_name`, `en_name`, `tu_name`, `required_status`, `icon`, `cover_appearance`, `type`, `created_at`, `updated_at`) VALUES
(1, 'السؤال  das', 'question one', 'as', 1, '16601747436963280380260_image.png', 1, 'select', '2022-07-20 00:56:58', '2022-11-02 22:35:57'),
(2, 'السؤال الثاني ..', 'question two', 'ads', 1, '', 1, 'select', '2022-07-20 00:56:58', '2022-12-26 14:07:29'),
(13, 'يs', 'das', NULL, 1, '', 0, 'select', '2022-07-23 01:18:10', '2022-07-23 01:25:07'),
(16, 'ييشسي', 'test ss', 'dsa', 1, '', 0, 'select', '2022-07-24 01:04:19', '2022-07-24 01:04:19'),
(17, 'das', 'dsad', NULL, 1, '', 0, 'select', '2022-07-28 15:33:28', '2022-07-30 21:46:40'),
(19, 'سؤال مضاف', 'new question', NULL, 1, '', 0, 'select', '2022-08-10 20:28:38', '2022-08-10 20:28:38'),
(20, 'عدد المطابخ', 'kitchen number', NULL, 1, '', 1, 'text', '2022-11-02 17:20:04', '2022-11-02 17:20:04');

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
(1, 'private_owner', '2022-07-15 23:08:03', NULL),
(2, 'freelancer', '2022-07-15 23:08:03', NULL),
(3, 'coupounded_developer', '2022-07-15 23:08:03', NULL),
(4, 'brokerage_company', '2022-07-15 23:08:03', NULL),
(5, 'admin', '2022-07-15 23:08:03', NULL),
(6, 'client', '2022-07-15 23:08:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `points_ordered` int(11) NOT NULL,
  `min_points` int(11) NOT NULL,
  `max_points` int(11) NOT NULL,
  `point_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `package_id`, `points_ordered`, `min_points`, `max_points`, `point_price`, `created_at`, `updated_at`) VALUES
(1, 14, 41, 5, 2, 10, 3.00, '2022-08-06 13:39:30', NULL),
(6, 14, 1, 5, 1, 10, 2.00, '2022-08-23 21:05:33', '2022-08-23 21:05:33'),
(7, 14, 1, 9, 1, 10, 2.00, '2022-08-23 22:33:08', '2022-08-23 22:33:08'),
(8, 14, 41, 15, 1, 100, 14.00, '2022-08-23 22:35:48', '2022-08-23 22:35:48'),
(9, 14, 41, 15, 1, 100, 14.00, '2022-08-23 22:36:51', '2022-08-23 22:36:51'),
(10, 14, 41, 25, 1, 100, 14.00, '2022-08-23 22:38:12', '2022-08-23 22:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `username`, `email`, `message`, `reply`, `created_at`, `updated_at`) VALUES
(1, 'احمد عل', 'mahmoud_elzanklony@yahoo.com', 'test test', 'reply message', '2022-08-06 18:01:53', '2022-08-06 16:35:02'),
(3, 'محمود عبد الله', 'mahmoud_elzanklony@yahoo.com', 'dsa', '', '2022-08-23 22:53:20', '2022-08-23 22:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `serial_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `auto_publish` tinyint(4) NOT NULL DEFAULT 0,
  `total_points` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `country_id`, `username`, `email`, `email_verified_at`, `serial_number`, `password`, `phone`, `address`, `image`, `block`, `auto_publish`, `total_points`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'dasdsa', 'mahmoud_elzanklony1234@yahoo.com', NULL, '1657932959', '1234567', '1090576399', 'قاهؤه', 'default.png', 0, 0, 0, NULL, '2022-07-15 22:55:59', '2022-07-15 22:55:59'),
(3, 3, 1, 'adsa', 'alyaa@yahoo.com', NULL, '1657933400', '1234567', '1090576399', '', 'default.png', 0, 0, 0, NULL, '2022-07-15 23:03:20', '2022-07-15 23:03:20'),
(4, 1, 1, 'dasaaaaaaaa', 'aaaaaaaaa@yahoo.com', NULL, '1657934348', '1234567', '0', '', 'default.png', 0, 0, 0, NULL, '2022-07-15 23:19:08', '2022-07-15 23:19:08'),
(5, 5, 1, 'ahmed', 'ahmed@yahoo.com', NULL, '1657934962', '12345789', '123', '', 'default.png', 0, 0, 0, NULL, '2022-07-15 23:29:22', '2022-07-15 23:29:22'),
(6, 2, 1, 'api user', 'ahmed_ali@yahoo.com', NULL, '1657986689', '$2y$10$l.8YJGqT9MGT9ENZ3fl9xeYVLQChQV.1FHlcUag3CENqPZXhWphOW', '0115229222', '', '1658163675_user.png', 0, 0, 0, NULL, '2022-07-16 13:51:29', '2022-07-20 14:15:41'),
(8, 2, 1, 'ahmed', 'api_user@yahoo.com', NULL, '1658163459', '$2y$10$dT5BrViw6MarWWpZs7pzle0Ys2eTUDCtcm/eRd0ZJSfU1mGF9hZQq', '123567890', '', 'default.png', 0, 0, 0, NULL, '2022-07-18 14:57:40', '2022-07-18 14:57:40'),
(10, 4, 1, 'احمد سعد', 'ahmed_saad@yahoo.com', NULL, '1658257862', '$2y$10$Cr3Kcd5bSgcWX.xs63rYUuVJgTaiLvqZCwju4bOyvHh9BvkVUF1wa', '011522966411', 'dsad', '1658257973_user.png', 0, 1, 0, NULL, '2022-07-19 17:11:02', '2022-10-24 18:54:28'),
(11, 2, 1, 'test', 'test@yahoo.com', NULL, '1659400700', '$2y$10$lWBGPQEncih3jHa6toVxle9fGx10rmx.Vbiu9MSCzuQebIwjdl0PW', '01041413123', '', 'default.png', 0, 0, 0, NULL, '2022-08-01 22:38:20', '2022-08-01 22:38:20'),
(12, 2, 1, 'dsad', 'dsa@yahoo.com', NULL, '1659400744', '$2y$10$HduagOzUckkj1kY.Zy678e.cBo2j4kdfsPQoRwyV5U0me3JzfGPoO', '3123123', '', 'default.png', 0, 0, 0, NULL, '2022-08-01 22:39:04', '2022-08-01 22:39:04'),
(13, 2, 4, 'ads', 'dasdasd@yahoo.com', NULL, '1659400995', '$2y$10$lyHKwY2b4nPxwxO8xRZsOecpSSksJyDOqBDj7z0pF3qiCRDSV9vEG', '3123123111', 'dasd', '1659402361_user.jpg', 0, 1, 0, NULL, '2022-08-01 22:43:15', '2022-08-01 23:09:20'),
(14, 5, 1, 'محمود عبد الله', 'mahmoud_elzanklony@yahoo.com', NULL, '1659958982', '$2y$10$/5ODKQJZWxAGZKDt1aVovOhC25U/koZLJxmL/O1iRcaQtARUBSyv2', '01152296646', 'k', 'default.png', 0, 1, 47, NULL, '2022-08-08 09:43:02', '2022-10-26 16:18:20'),
(15, 6, 1, 'reem', 'reem@yahoo.com', NULL, '1672279230', '$2y$10$JW8am4TMHqqce5LEnCcg5e/IbRkuDH6IPobf6HjplRzBH0M6.8fna', '010032133123123', '', 'default.png', 0, 0, 0, NULL, '2022-12-29 00:00:30', '2022-12-29 00:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `users_contact_sellers`
--

CREATE TABLE `users_contact_sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_contact_sellers`
--

INSERT INTO `users_contact_sellers` (`id`, `listing_id`, `username`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 30, 'محمود عبد الله', 'mahmoud_elzanklony@yahoo.com', '01152296646', '2022-08-19 21:45:45', '2022-08-19 21:45:45'),
(2, 30, 'محمود عبد الله', 'mahmoud_elzanklony@yahoo.com', '01152296646', '2022-08-19 21:57:49', '2022-08-19 21:57:49'),
(3, 34, 'سعد محمد', 'saad@gmail.com', '01005663932', '2022-08-21 16:08:45', '2022-08-21 16:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_company_infos`
--

CREATE TABLE `user_company_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_company_infos`
--

INSERT INTO `user_company_infos` (`id`, `user_id`, `bio`, `image`, `created_at`, `updated_at`) VALUES
(1, 6, '', '', '2022-07-16 16:31:56', '2022-07-16 16:31:56'),
(2, 8, '', '', '2022-07-18 14:57:40', '2022-07-18 14:57:40'),
(4, 10, 'dsakkkkk', '1658318405_user.png', '2022-07-19 17:11:02', '2022-07-20 10:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatapp_status` tinyint(4) NOT NULL DEFAULT 0,
  `contact_email_status` tinyint(4) DEFAULT 0,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars` int(11) DEFAULT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `full_name`, `whatapp_status`, `contact_email_status`, `age`, `gender`, `marital_status`, `education`, `stars`, `feedback`, `industry`, `position`, `created_at`, `updated_at`) VALUES
(1, 6, 'ahmed sameh api full', 0, 0, 'abc', 'male', 'single', 'phd', NULL, NULL, 'abc', 'xyz', '2022-07-16 16:31:56', '2022-07-20 14:27:19'),
(2, 8, '', 0, 0, '', '', '', '', NULL, NULL, '', '', '2022-07-18 14:57:40', '2022-07-18 14:57:40'),
(4, 10, 'احمد كامل سعد', 1, 0, '26:30', 'male', 'single', 'bachelors', NULL, NULL, 'هندسة', 'مهندس معماري', '2022-07-19 17:11:02', '2022-07-20 10:14:16'),
(5, 11, '', 0, 0, '', '', '', '', NULL, NULL, '', '', '2022-08-01 22:38:20', '2022-08-01 22:38:20'),
(6, 12, '', 0, 0, '', '', '', '', NULL, NULL, '', '', '2022-08-01 22:39:04', '2022-08-01 22:39:04'),
(7, 13, '', 0, 0, '', '', '', '', NULL, NULL, '', '', '2022-08-01 22:43:15', '2022-08-01 22:43:15'),
(8, 14, 'saad', 1, 1, '', '', '', '', 3, 'تجربه جيد dasdasd', '', '', '2022-08-08 09:43:02', '2023-01-03 16:48:09'),
(9, 15, '', 0, 0, '', '', '', '', 4, 'كانت تجربه جيده ف كنت ابحث عن موقع موثوق فيه عن اعلانات بخصوص السيارات ورأيت العديد من التجارب الجيده هنا للموقع واستطعت بسهوله الوصول الي ماريد لذا شكرا لمجهوداتكم', '', '', '2022-12-29 00:00:30', '2022-12-29 00:00:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertising_points_prices`
--
ALTER TABLE `advertising_points_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `answers_reactions`
--
ALTER TABLE `answers_reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_reactions_user_id_foreign` (`user_id`),
  ADD KEY `answers_reactions_answer_id_foreign` (`answer_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_city_id_foreign` (`city_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_prices_factors`
--
ALTER TABLE `categories_prices_factors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_prices_factors_category_id_foreign` (`category_id`),
  ADD KEY `categories_prices_factors_price_id_foreign` (`price_id`);

--
-- Indexes for table `categories_questions`
--
ALTER TABLE `categories_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_questions_category_id_foreign` (`category_id`),
  ADD KEY `categories_questions_question_id_foreign` (`question_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_sender_id_foreign` (`sender_id`),
  ADD KEY `chats_receiver_id_foreign` (`receiver_id`),
  ADD KEY `chats_conversations_foreign` (`conversation_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_government_id_foreign` (`government_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion-answers`
--
ALTER TABLE `discussion-answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_answers_question_id_foreign` (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `discussion-questions`
--
ALTER TABLE `discussion-questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_questions_category_id_foreign` (`category_id`),
  ADD KEY `discussion_questions_area_id_foreign` (`area_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `exchange_types`
--
ALTER TABLE `exchange_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_user_id_foreign` (`user_id`),
  ADD KEY `favourites_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `governments`
--
ALTER TABLE `governments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `governments_country_id_foreign` (`country_id`);

--
-- Indexes for table `home_comments`
--
ALTER TABLE `home_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_comments_rate_id_foreign` (`rate_id`);

--
-- Indexes for table `listings_infos`
--
ALTER TABLE `listings_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_infos_user_id_foreign` (`user_id`),
  ADD KEY `listings_infos_category_id_foreign` (`category_id`),
  ADD KEY `listings_infos_area_id_foreign` (`area_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `listings_notes`
--
ALTER TABLE `listings_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_notes_user_id_foreign` (`user_id`),
  ADD KEY `listings_notes_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `listings_prices`
--
ALTER TABLE `listings_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_prices_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `listing_exchanges`
--
ALTER TABLE `listing_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_exchanges_listing_id_foreign` (`listing_id`),
  ADD KEY `exchange_id` (`exchange_id`);

--
-- Indexes for table `listing_exchange_additional_notes`
--
ALTER TABLE `listing_exchange_additional_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_exchange_additional_notes_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `listing_photos`
--
ALTER TABLE `listing_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_photos_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `listing_prices_elements`
--
ALTER TABLE `listing_prices_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_prices_elements_prices_id_foreign` (`prices_id`),
  ADD KEY `listing_prices_elements_ibfk_1` (`parent_price_element_id`);

--
-- Indexes for table `listing_questions_answers`
--
ALTER TABLE `listing_questions_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_questions_answers_listing_id_foreign` (`listing_id`),
  ADD KEY `listing_questions_answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `listing_statistics`
--
ALTER TABLE `listing_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_statistics_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `map_images`
--
ALTER TABLE `map_images`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_sender_id_foreign` (`sender_id`),
  ADD KEY `notifications_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_Id` (`currency_id`);

--
-- Indexes for table `packages_prices_places`
--
ALTER TABLE `packages_prices_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_prices_places_package_id_foreign` (`package_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prices_factors`
--
ALTER TABLE `prices_factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_package_id_foreign` (`package_id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_ibfk_1` (`country_id`);

--
-- Indexes for table `users_contact_sellers`
--
ALTER TABLE `users_contact_sellers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_id` (`listing_id`);

--
-- Indexes for table `user_company_infos`
--
ALTER TABLE `user_company_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_company_infos_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_infos_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertising_points_prices`
--
ALTER TABLE `advertising_points_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `answers_reactions`
--
ALTER TABLE `answers_reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories_prices_factors`
--
ALTER TABLE `categories_prices_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories_questions`
--
ALTER TABLE `categories_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discussion-answers`
--
ALTER TABLE `discussion-answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discussion-questions`
--
ALTER TABLE `discussion-questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exchange_types`
--
ALTER TABLE `exchange_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `governments`
--
ALTER TABLE `governments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_comments`
--
ALTER TABLE `home_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `listings_infos`
--
ALTER TABLE `listings_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `listings_notes`
--
ALTER TABLE `listings_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `listings_prices`
--
ALTER TABLE `listings_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `listing_exchanges`
--
ALTER TABLE `listing_exchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `listing_exchange_additional_notes`
--
ALTER TABLE `listing_exchange_additional_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `listing_photos`
--
ALTER TABLE `listing_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `listing_prices_elements`
--
ALTER TABLE `listing_prices_elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `listing_questions_answers`
--
ALTER TABLE `listing_questions_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `listing_statistics`
--
ALTER TABLE `listing_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `map_images`
--
ALTER TABLE `map_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `packages_prices_places`
--
ALTER TABLE `packages_prices_places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prices_factors`
--
ALTER TABLE `prices_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_contact_sellers`
--
ALTER TABLE `users_contact_sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_company_infos`
--
ALTER TABLE `user_company_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `answers_reactions`
--
ALTER TABLE `answers_reactions`
  ADD CONSTRAINT `answers_reactions_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `discussion-answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answers_reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories_prices_factors`
--
ALTER TABLE `categories_prices_factors`
  ADD CONSTRAINT `categories_prices_factors_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_prices_factors_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices_factors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories_questions`
--
ALTER TABLE `categories_questions`
  ADD CONSTRAINT `categories_questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_questions_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_conversations_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chats_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chats_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_government_id_foreign` FOREIGN KEY (`government_id`) REFERENCES `governments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discussion-answers`
--
ALTER TABLE `discussion-answers`
  ADD CONSTRAINT `discussion-answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `discussion-questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discussion-questions`
--
ALTER TABLE `discussion-questions`
  ADD CONSTRAINT `discussion-questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_questions_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `governments`
--
ALTER TABLE `governments`
  ADD CONSTRAINT `governments_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `home_comments`
--
ALTER TABLE `home_comments`
  ADD CONSTRAINT `home_comments_rate_id_foreign` FOREIGN KEY (`rate_id`) REFERENCES `user_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listings_infos`
--
ALTER TABLE `listings_infos`
  ADD CONSTRAINT `listings_infos_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listings_infos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listings_infos_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listings_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listings_notes`
--
ALTER TABLE `listings_notes`
  ADD CONSTRAINT `listings_notes_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listings_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listings_prices`
--
ALTER TABLE `listings_prices`
  ADD CONSTRAINT `listings_prices_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listing_exchanges`
--
ALTER TABLE `listing_exchanges`
  ADD CONSTRAINT `listing_exchanges_ibfk_1` FOREIGN KEY (`exchange_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listing_exchanges_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listing_exchange_additional_notes`
--
ALTER TABLE `listing_exchange_additional_notes`
  ADD CONSTRAINT `listing_exchange_additional_notes_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listing_photos`
--
ALTER TABLE `listing_photos`
  ADD CONSTRAINT `listing_photos_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listing_prices_elements`
--
ALTER TABLE `listing_prices_elements`
  ADD CONSTRAINT `listing_prices_elements_ibfk_1` FOREIGN KEY (`parent_price_element_id`) REFERENCES `listings_prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listing_prices_elements_prices_id_foreign` FOREIGN KEY (`prices_id`) REFERENCES `prices_factors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listing_questions_answers`
--
ALTER TABLE `listing_questions_answers`
  ADD CONSTRAINT `listing_questions_answers_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listing_questions_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listing_statistics`
--
ALTER TABLE `listing_statistics`
  ADD CONSTRAINT `listing_statistics_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages_prices_places`
--
ALTER TABLE `packages_prices_places`
  ADD CONSTRAINT `packages_prices_places_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `packages_prices_places_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_contact_sellers`
--
ALTER TABLE `users_contact_sellers`
  ADD CONSTRAINT `users_contact_sellers_ibfk_1` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_company_infos`
--
ALTER TABLE `user_company_infos`
  ADD CONSTRAINT `user_company_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD CONSTRAINT `user_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
