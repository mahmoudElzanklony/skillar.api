-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 09:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewaa`
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
(1, 1, 'governments', 10, '2022-08-06 23:33:05', '2022-08-07 16:13:33'),
(2, 1, 'areas', 22, '2022-08-08 12:29:52', '2022-08-08 12:29:52'),
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
(1, 1, 'اجابه اول', 'first answer', NULL, '2022-07-23 01:04:01', '2022-07-28 16:30:26'),
(4, 13, 'تيست', 'test', NULL, '2022-07-23 01:18:10', '2022-07-23 01:50:35'),
(13, 13, 'سؤال', 'qqq', NULL, '2022-07-23 01:45:44', '2022-07-23 01:50:35'),
(17, 16, 'a', 'b', 'c', '2022-07-24 01:04:19', '2022-07-24 01:04:19'),
(19, 17, 'aaaa', 'ssssss', NULL, '2022-07-30 21:46:40', '2022-07-30 21:46:40'),
(20, 19, 'اجابه اولي', 'answer one', NULL, '2022-08-10 20:28:38', '2022-08-10 20:28:38'),
(21, 1, 'اجابه ثانيه', 'second answer', NULL, '2022-08-10 22:34:55', '2022-08-10 22:34:55'),
(22, 1, 'اجابه اخري', 'another value', NULL, '2022-08-10 22:37:05', '2022-08-10 22:37:05');

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
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `parent_id`, `image`, `created_at`, `updated_at`) VALUES
(17, 'عقارات', 'listings', NULL, 'عقارات وصف', 'listtings info', NULL, NULL, '16601702713552295020729_image.png', '2022-08-10 20:24:31', '2022-08-10 20:24:31'),
(18, 'بيوت', 'homes', NULL, 'وصف', 'info', NULL, 17, '16601703239383963758998_image.png', '2022-08-10 20:25:23', '2022-08-10 20:25:23'),
(19, 'فلل', 'villa', NULL, 'وصف', 'info', NULL, 17, 'default.png', '2022-08-10 20:28:38', '2022-08-10 20:28:38'),
(20, 'كومبودنات', 'compounds', NULL, 'وصف', 'info', NULL, NULL, '16601774574256790320182_image.png', '2022-08-10 22:24:17', '2022-08-10 22:24:17');

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
(21, 19, 19, '2022-08-10 20:28:38', '2022-08-10 20:28:38');

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
(1, 'مصر', 'Egypt', '', 'وصف سريع عن مصر', 'description info about egypt', NULL, '2022-07-15 23:23:47', '2022-08-17 20:59:10'),
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `ar_name`, `en_name`, `tu_name`, `currency_code`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 'ريال سعودي', 'Ryal', '', 'SR', 'KSA', '2022-07-30 17:10:45', NULL),
(2, 'جنيه مصري', 'Egypt Poun', '', 'L.E', 'EGP', '2022-07-30 17:10:45', '2022-07-30 22:59:50');

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
  `price` float NOT NULL,
  `meters_number` float NOT NULL,
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

INSERT INTO `listings_infos` (`id`, `user_id`, `category_id`, `area_id`, `ar_name`, `en_name`, `tu_name`, `ar_info`, `en_info`, `tu_info`, `ar_address`, `en_address`, `tu_address`, `rent_or_sale`, `price`, `meters_number`, `youtube_link`, `whatapp_status`, `contact_email_status`, `payment_status`, `client_payment_status`, `coordinates`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(29, 14, 18, 1, 'test', 'test', NULL, 'test', 'test', NULL, 'aaaaaaaaa', 'aaaaaaaaaa', NULL, 'sale', 100, 2000, 'https://test.com', 0, 0, 1, 'cash', '103123123,3123123123', 'live', NULL, '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(30, 14, 18, 4, 'dasd', 'dad', NULL, 'adsd', 'dasd', NULL, 'das', 'dasw', NULL, 'sale', 400, 200, 'dasd', 0, 0, 0, 'cash', '103123123,3123123123', 'live', NULL, '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(34, 10, 18, 4, 'wwqqqqqqqqq', 'wwqqqqqqqqq', NULL, 'wwqqqqqqqqq', 'wwqqqqqqqqq', NULL, 'wwqqqqqqqqq', 'wwqqqqqqqqq', NULL, 'rent', 120, 400, NULL, 0, 0, 1, 'one_payment', '103123123,3123123123', 'live', NULL, '2022-08-14 21:10:53', '2022-08-14 21:10:53');

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
(27, 34, '16605186964497781738753_image.jpeg', NULL, NULL);

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
(7, 29, 13, '4', 'select', '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(8, 29, 1, '1', 'select', '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(9, 29, 17, '19', 'select', '2022-08-10 22:38:16', '2022-08-18 22:01:00'),
(10, 30, 2, '1', 'checkbox', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(11, 30, 13, '4', 'select', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(12, 30, 1, '1', 'select', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(13, 30, 17, '19', 'select', '2022-08-13 21:43:06', '2022-08-18 22:01:39'),
(26, 34, 2, '1', '1', '2022-08-14 21:10:53', '2022-08-14 21:10:53'),
(27, 34, 13, '4', '4', '2022-08-14 21:10:53', '2022-08-14 21:10:53'),
(28, 34, 1, '1', '1', '2022-08-14 21:10:53', '2022-08-14 21:10:53'),
(29, 34, 17, '19', '19', '2022-08-14 21:10:53', '2022-08-14 21:10:53');

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
(4, 34, 35, 3, 1, '2022-08-14 21:10:53', '2022-08-24 05:41:19'),
(5, 29, 0, 68, 0, '2022-08-14 23:13:59', '2022-08-24 05:41:11'),
(6, 30, 5, 16, 2, '2022-08-14 23:13:59', '2022-08-21 21:12:14');

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
(78, '2022_08_21_200520_create_answers_reactions_table', 11);

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
(63, 5, 14, 'تمت عملية شراء نقاط الباقة بنجاح و تم اضافه النقاط الي رصيدك', 'sale of points has been done successfully and points added to your wallet', '', 1, '2022-08-23 22:38:12', '2022-08-23 22:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `packages` (`id`, `ar_name`, `en_name`, `min_value`, `max_value`, `price`, `image`, `is_visible`, `currency_id`, `expiration_date`, `created_at`, `updated_at`) VALUES
(1, 'dasd', 'dsa', 1, 10, 2.00, 'default.png', 1, 1, NULL, '2022-07-30 17:21:10', '2022-08-06 11:50:37'),
(41, 'الذهبية', 'gold', 1, 100, 14.00, '1659222438_user.png', 1, 2, NULL, '2022-07-30 21:05:55', '2022-08-06 12:00:40');

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
(1, 'السؤال  das', 'question one', NULL, 1, '16601747436963280380260_image.png', 1, 'select', '2022-07-20 00:56:58', '2022-08-10 21:39:03'),
(2, 'السؤال الثاني', 'question two', NULL, 1, '', 0, 'radio', '2022-07-20 00:56:58', '2022-08-08 20:24:08'),
(13, 'يs', 'das', NULL, 1, '', 0, 'select', '2022-07-23 01:18:10', '2022-07-23 01:25:07'),
(16, 'ييشسي', 'test ss', 'dsa', 1, '', 0, 'select', '2022-07-24 01:04:19', '2022-07-24 01:04:19'),
(17, 'das', 'dsad', NULL, 1, '', 0, 'select', '2022-07-28 15:33:28', '2022-07-30 21:46:40'),
(19, 'سؤال مضاف', 'new question', NULL, 1, '', 0, 'select', '2022-08-10 20:28:38', '2022-08-10 20:28:38');

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
(5, 'admin', '2022-07-15 23:08:03', NULL);

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
(7, 2, 1, 'ali', 'ali@yahoo.com', NULL, '1657996316', '$2y$10$/3F2fUEZYfFJ8SNi3laARuYkO7O9OxPs59aEGkXhb2wMJqDOkYthW', '01005663932', '', 'default.png', 0, 0, 0, NULL, '2022-07-16 16:31:56', '2022-07-16 16:31:56'),
(8, 2, 1, 'ahmed', 'api_user@yahoo.com', NULL, '1658163459', '$2y$10$dT5BrViw6MarWWpZs7pzle0Ys2eTUDCtcm/eRd0ZJSfU1mGF9hZQq', '123567890', '', 'default.png', 0, 0, 0, NULL, '2022-07-18 14:57:40', '2022-07-18 14:57:40'),
(9, 2, 1, 'das', 'dasd', NULL, '1658257519', '$2y$10$iW24n0WlziaRJMWKpoZFNufJvqizaaRRnrz/Jl325b0kXTu7wL5.y', '2131233213123', '', 'default.png', 0, 0, 0, NULL, '2022-07-19 17:05:19', '2022-07-19 17:05:19'),
(10, 4, 1, 'احمد سعد', 'ahmed_saad@yahoo.com', NULL, '1658257862', '', '011522966411', 'dsad', '1658257973_user.png', 0, 1, 0, NULL, '2022-07-19 17:11:02', '2022-08-07 17:26:49'),
(11, 2, 1, 'test', 'test@yahoo.com', NULL, '1659400700', '$2y$10$lWBGPQEncih3jHa6toVxle9fGx10rmx.Vbiu9MSCzuQebIwjdl0PW', '01041413123', '', 'default.png', 0, 0, 0, NULL, '2022-08-01 22:38:20', '2022-08-01 22:38:20'),
(12, 2, 1, 'dsad', 'dsa@yahoo.com', NULL, '1659400744', '$2y$10$HduagOzUckkj1kY.Zy678e.cBo2j4kdfsPQoRwyV5U0me3JzfGPoO', '3123123', '', 'default.png', 0, 0, 0, NULL, '2022-08-01 22:39:04', '2022-08-01 22:39:04'),
(13, 2, 4, 'ads', 'dasdasd@yahoo.com', NULL, '1659400995', '$2y$10$lyHKwY2b4nPxwxO8xRZsOecpSSksJyDOqBDj7z0pF3qiCRDSV9vEG', '3123123111', 'dasd', '1659402361_user.jpg', 0, 1, 0, NULL, '2022-08-01 22:43:15', '2022-08-01 23:09:20'),
(14, 5, 1, 'محمود عبد الله', 'mahmoud_elzanklony@yahoo.com', NULL, '1659958982', '$2y$10$jNHXV7h/Sva98PWdzCH.dOkJInf2Jw6XS0u6Be5cVnmg4/A9FrQWG', '01152296646', '', 'default.png', 0, 0, 67, NULL, '2022-08-08 09:43:02', '2022-08-23 22:38:12');

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
(3, 9, '', '', '2022-07-19 17:05:19', '2022-07-19 17:05:19'),
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
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `full_name`, `whatapp_status`, `age`, `gender`, `marital_status`, `education`, `industry`, `position`, `created_at`, `updated_at`) VALUES
(1, 6, 'ahmed sameh api full', 0, 'abc', 'male', 'single', 'phd', 'abc', 'xyz', '2022-07-16 16:31:56', '2022-07-20 14:27:19'),
(2, 8, '', 0, '', '', '', '', '', '', '2022-07-18 14:57:40', '2022-07-18 14:57:40'),
(3, 9, '', 0, '', '', '', '', '', '', '2022-07-19 17:05:19', '2022-07-19 17:05:19'),
(4, 10, 'احمد كامل سعد', 1, '26:30', 'male', 'single', 'bachelors', 'هندسة', 'مهندس معماري', '2022-07-19 17:11:02', '2022-07-20 10:14:16'),
(5, 11, '', 0, '', '', '', '', '', '', '2022-08-01 22:38:20', '2022-08-01 22:38:20'),
(6, 12, '', 0, '', '', '', '', '', '', '2022-08-01 22:39:04', '2022-08-01 22:39:04'),
(7, 13, '', 0, '', '', '', '', '', '', '2022-08-01 22:43:15', '2022-08-01 22:43:15'),
(8, 14, '', 0, '', '', '', '', '', '', '2022-08-08 09:43:02', '2022-08-08 09:43:02');

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
-- Indexes for table `categories_questions`
--
ALTER TABLE `categories_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_questions_category_id_foreign` (`category_id`),
  ADD KEY `categories_questions_question_id_foreign` (`question_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_government_id_foreign` (`government_id`);

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
-- Indexes for table `listings_infos`
--
ALTER TABLE `listings_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_infos_user_id_foreign` (`user_id`),
  ADD KEY `listings_infos_category_id_foreign` (`category_id`),
  ADD KEY `listings_infos_area_id_foreign` (`area_id`);

--
-- Indexes for table `listings_notes`
--
ALTER TABLE `listings_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_notes_user_id_foreign` (`user_id`),
  ADD KEY `listings_notes_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `listing_photos`
--
ALTER TABLE `listing_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_photos_listing_id_foreign` (`listing_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories_questions`
--
ALTER TABLE `categories_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `listings_infos`
--
ALTER TABLE `listings_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `listings_notes`
--
ALTER TABLE `listings_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `listing_photos`
--
ALTER TABLE `listing_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `listing_questions_answers`
--
ALTER TABLE `listing_questions_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `listing_statistics`
--
ALTER TABLE `listing_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `map_images`
--
ALTER TABLE `map_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- Constraints for table `categories_questions`
--
ALTER TABLE `categories_questions`
  ADD CONSTRAINT `categories_questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_questions_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `listings_infos`
--
ALTER TABLE `listings_infos`
  ADD CONSTRAINT `listings_infos_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listings_infos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listings_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listings_notes`
--
ALTER TABLE `listings_notes`
  ADD CONSTRAINT `listings_notes_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listings_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listing_photos`
--
ALTER TABLE `listing_photos`
  ADD CONSTRAINT `listing_photos_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings_infos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`currency_Id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
