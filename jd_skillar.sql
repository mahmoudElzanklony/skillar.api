-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 07:51 PM
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
-- Database: `jd_skillar`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', NULL, NULL, '2023-06-11 14:05:32'),
(2, 'قدرة', 'abilitiy', 'dsa', 'das', NULL, '2023-08-05 16:44:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'شهاده', 'certificate', 'وصف', 'info', 'abc.png', NULL, '2023-07-05 16:13:08', NULL),
(2, 'شهاده 2', 'certificate', 'وصف', 'info', '16937810031378110644965_image.jpg', NULL, '2023-07-05 16:13:08', '2023-09-03 19:43:23'),
(3, 'das', 'dasd', 'شهاده', 'sad', '16912681738452500859825_image.jpg', NULL, '2023-08-05 17:41:33', '2023-08-05 17:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competencies`
--

INSERT INTO `competencies` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', NULL, '2023-06-11 16:33:44', '2023-06-11 16:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `ar_name`, `en_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'مصر', 'Egypt', '2023-07-28 17:23:24', '2023-09-03 19:30:17', NULL),
(2, 'امريكا', 'USA', '2023-08-01 22:41:09', NULL, NULL),
(6, 'الامارات', 'EAU', '2023-09-03 19:29:53', '2023-09-03 19:29:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', NULL, '2023-06-11 14:15:17', '2023-06-11 14:15:40'),
(2, 'تعليم', 'education', 'dsad', 'dsad', NULL, '2023-08-05 16:37:47', NULL),
(3, 'يشسaaa', 'يسشي', 'يشسي', 'يسش', NULL, '2023-08-05 16:40:04', '2023-08-05 16:41:34');

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
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل', 'edit', 'تعديل الوصف', 'edit info', NULL, NULL, NULL),
(4, 'هواية اخري', 'interest in english', 'شرح', 'explanation', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_data`
--

CREATE TABLE `jobs_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `career_ladder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_period` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_renewable` tinyint(4) NOT NULL,
  `years_experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_salary` double(8,2) NOT NULL,
  `max_salary` double(8,2) NOT NULL,
  `ar_career_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_career_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_data`
--

INSERT INTO `jobs_data` (`id`, `user_id`, `parent_id`, `career_ladder`, `ar_name`, `en_name`, `ar_desc`, `en_desc`, `contract_period`, `contract_renewable`, `years_experience`, `min_salary`, `max_salary`, `ar_career_path`, `en_career_path`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 15:05:46', '2023-08-20 13:28:33', NULL),
(26, 1, 10, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 15:05:46', '2023-07-05 15:05:46', NULL),
(45, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 17:01:41', '2023-07-05 17:01:41', NULL),
(46, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 21:18:31', '2023-07-05 21:18:31', NULL),
(47, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 21:18:57', '2023-07-05 21:18:57', NULL),
(48, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 21:20:07', '2023-07-05 21:20:07', NULL),
(50, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 21:21:13', '2023-07-05 21:21:13', NULL),
(54, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 21:22:35', '2023-07-05 21:22:35', NULL),
(55, 1, 0, 'Senior', 'مصمم مواقع', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 21:23:39', '2023-07-05 21:23:39', NULL),
(58, 2, 10, 'Senior', 'مصمم مواقع تعديل اخر', 'Front End', 'وصف مهنة مصمم المواقع', 'شرح مهنة مصمم المواقع', 'every year', 1, '5', 1500.00, 5000.00, 'المسار المهني', 'Career Path', '1', '2023-07-05 21:25:41', '2023-08-20 13:38:08', NULL),
(59, 2, 55, 'يشسي', 'تجربه اعلان اليوم', 'question one', 'يشسي', 'يشسيشس', '120', 3, '3', 1000.00, 50000.00, 'المسار المهني', 'Career Path', '', '2023-08-20 15:00:23', '2023-08-20 15:00:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_abilities`
--

CREATE TABLE `job_abilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `ability_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_abilities`
--

INSERT INTO `job_abilities` (`id`, `job_id`, `ability_id`, `created_at`, `updated_at`) VALUES
(6, 10, 1, NULL, NULL),
(18, 54, 1, NULL, NULL),
(19, 55, 1, NULL, NULL),
(22, 58, 1, NULL, NULL),
(23, 59, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_certificates`
--

CREATE TABLE `job_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `certificate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_certificates`
--

INSERT INTO `job_certificates` (`id`, `job_id`, `certificate_id`, `created_at`, `updated_at`) VALUES
(35, 54, 1, NULL, NULL),
(36, 54, 2, NULL, NULL),
(37, 55, 1, NULL, NULL),
(38, 55, 2, NULL, NULL),
(50, 10, 1, NULL, NULL),
(51, 10, 2, NULL, NULL),
(52, 59, 1, NULL, NULL),
(54, 59, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_competencies`
--

CREATE TABLE `job_competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `competency_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_competencies`
--

INSERT INTO `job_competencies` (`id`, `job_id`, `competency_id`, `created_at`, `updated_at`) VALUES
(1, 58, 1, NULL, NULL),
(6, 10, 1, NULL, NULL),
(7, 59, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_educations`
--

CREATE TABLE `job_educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `education_id` bigint(20) UNSIGNED NOT NULL,
  `year_work_experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_educations`
--

INSERT INTO `job_educations` (`id`, `job_id`, `education_id`, `year_work_experience`, `note`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '', NULL, NULL, NULL),
(13, 54, 1, '', NULL, NULL, NULL),
(14, 55, 1, '', NULL, NULL, NULL),
(15, 58, 1, '', NULL, NULL, NULL),
(16, 59, 1, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_interests`
--

CREATE TABLE `job_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_interests`
--

INSERT INTO `job_interests` (`id`, `job_id`, `interest_id`, `created_at`, `updated_at`) VALUES
(2, 54, 1, NULL, NULL),
(3, 55, 1, NULL, NULL),
(4, 58, 1, NULL, NULL),
(9, 10, 1, NULL, NULL),
(10, 59, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_knowledge`
--

CREATE TABLE `job_knowledge` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `knowledge_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_knowledge`
--

INSERT INTO `job_knowledge` (`id`, `job_id`, `knowledge_id`, `created_at`, `updated_at`) VALUES
(1, 10, 1, NULL, NULL),
(13, 54, 1, NULL, NULL),
(14, 55, 1, NULL, NULL),
(18, 59, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_principle_contracts`
--

CREATE TABLE `job_principle_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_requirements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_requirements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_principle_contracts`
--

INSERT INTO `job_principle_contracts` (`id`, `job_id`, `ar_name`, `en_name`, `end_date`, `ar_requirements`, `en_requirements`, `created_at`, `updated_at`) VALUES
(1, 45, 'test', 'test english', '2025', '', '', '2023-07-05 17:01:41', '2023-07-05 17:01:41'),
(2, 46, 'test', 'test english', '2025', '', '', '2023-07-05 21:18:32', '2023-07-05 21:18:32'),
(3, 47, 'test', 'test english', '2025', '', '', '2023-07-05 21:18:57', '2023-07-05 21:18:57'),
(4, 59, 'dasd', 'dasd', '2023-01-01', 'dasd', 'dasd', '2023-07-05 21:20:07', '2023-08-28 20:42:34'),
(5, 50, 'test', 'test english', '2025', '', '', '2023-07-05 21:21:13', '2023-07-05 21:21:13'),
(6, 54, 'test', 'test english', '2025', '', '', '2023-07-05 21:22:36', '2023-07-05 21:22:36'),
(8, 58, 'test', 'test english', '2025', '', 'en rdasd', '2023-07-05 21:25:41', '2023-07-05 21:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `job_references`
--

CREATE TABLE `job_references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `importance` int(11) DEFAULT NULL,
  `mastery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `job_id`, `skill_id`, `importance`, `mastery`, `created_at`, `updated_at`) VALUES
(9, 45, 1, 20, 'top', NULL, NULL),
(10, 46, 1, 20, 'top', NULL, NULL),
(11, 47, 1, 20, 'top', NULL, NULL),
(12, 48, 1, 20, 'top', NULL, NULL),
(13, 50, 1, 20, 'top', NULL, NULL),
(14, 54, 1, 20, 'top', NULL, NULL),
(15, 55, 1, 20, 'top', NULL, NULL),
(20, 10, 1, NULL, NULL, NULL, NULL),
(21, 58, 1, NULL, NULL, NULL, NULL),
(22, 58, 2, NULL, NULL, NULL, NULL),
(23, 58, 12, NULL, NULL, NULL, NULL),
(24, 59, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_tasks`
--

CREATE TABLE `job_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_tasks`
--

INSERT INTO `job_tasks` (`id`, `job_id`, `task_id`, `created_at`, `updated_at`) VALUES
(4, 54, 1, NULL, NULL),
(5, 55, 1, NULL, NULL),
(7, 10, 1, NULL, NULL),
(8, 59, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_work_activities`
--

CREATE TABLE `job_work_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `work_activity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_work_activities`
--

INSERT INTO `job_work_activities` (`id`, `job_id`, `work_activity_id`, `created_at`, `updated_at`) VALUES
(3, 54, 1, NULL, NULL),
(4, 55, 1, NULL, NULL),
(5, 58, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 59, 1, NULL, NULL),
(12, 59, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_work_contexts`
--

CREATE TABLE `job_work_contexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `work_id` bigint(20) UNSIGNED NOT NULL,
  `rank` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_work_contexts`
--

INSERT INTO `job_work_contexts` (`id`, `job_id`, `work_id`, `rank`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '', NULL, NULL),
(15, 45, 1, 'top', NULL, NULL),
(16, 46, 1, 'top', NULL, NULL),
(17, 47, 1, 'top', NULL, NULL),
(18, 48, 1, 'top', NULL, NULL),
(19, 50, 1, 'top', NULL, NULL),
(20, 54, 1, 'top', NULL, NULL),
(21, 55, 1, 'top', NULL, NULL),
(25, 59, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_work_values`
--

CREATE TABLE `job_work_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `work_value_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_work_values`
--

INSERT INTO `job_work_values` (`id`, `job_id`, `work_value_id`, `created_at`, `updated_at`) VALUES
(3, 54, 1, NULL, NULL),
(4, 55, 1, NULL, NULL),
(5, 58, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 59, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `knowledge`
--

CREATE TABLE `knowledge` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledge`
--

INSERT INTO `knowledge` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', NULL, '2023-06-11 14:09:27', '2023-06-11 14:09:44');

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
(1, '2013_07_14_203748_create_roles_table', 1),
(2, '2013_07_14_212529_create_countries_table', 1),
(3, '2013_07_14_212550_create_cities_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2022_07_15_011253_create_supports_table', 1),
(8, '2022_07_16_155307_create_notifications_table', 1),
(9, '2023_05_28_105506_create_jobs_table', 1),
(10, '2023_05_28_110522_create_tasks_table', 1),
(11, '2023_05_28_110530_create_educations_table', 1),
(12, '2023_05_28_114400_create_knowledge_table', 1),
(13, '2023_05_28_121354_create_job_certificates_table', 1),
(14, '2023_05_28_122221_create_job_educations_table', 1),
(15, '2023_05_28_124013_create_work_contexts_table', 1),
(16, '2023_05_28_124250_create_job_work_contexts_table', 1),
(17, '2023_05_28_124506_create_skills_groups_table', 1),
(18, '2023_05_28_125414_create_skills_table', 1),
(19, '2023_05_28_125658_create_skills_jobs_table', 1),
(20, '2023_05_28_134451_create_abilities_table', 1),
(21, '2023_05_28_143359_create_job_tasks_table', 1),
(22, '2023_05_28_143507_create_job_abilities_table', 1),
(23, '2023_05_28_143652_create_job_knowledge_table', 1),
(24, '2023_05_31_224700_create_references_table', 1),
(25, '2023_05_31_224723_create_job_references_table', 1),
(26, '2023_05_31_224751_create_work_values_table', 1),
(27, '2023_05_31_224803_create_job_work_values_table', 1),
(28, '2023_05_31_224816_create_interests_table', 1),
(29, '2023_05_31_224830_create_job_interests_table', 1),
(30, '2023_05_31_224847_create_work_activities_table', 1),
(31, '2023_05_31_224900_create_job_work_activities_table', 1),
(32, '2023_05_31_235655_create_job_principle_contracts_table', 1),
(33, '2023_06_05_022030_create_competencies_table', 1),
(34, '2023_06_05_022041_create_job_competencies_table', 1),
(35, '2023_05_05_160835_create_certificates_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', '2023-06-11 16:36:57', '2023-06-11 16:37:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL, NULL),
(2, 'company', NULL, '2023-07-26 19:21:46', NULL),
(3, 'client', NULL, '2023-07-26 19:21:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sk_group_id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `sk_group_id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'مصمم واجهات', 'front end', 'شرح مهارت تصميم الواجهات', 'explanation of front end', NULL, '2023-06-11 13:05:28', '2023-08-02 18:34:36', NULL),
(2, 1, 'hh', 'front end', 'شرح مهارت تصميم الواجهات', 'explanation of front end', NULL, '2023-06-11 13:05:28', '2023-08-02 20:51:32', NULL),
(3, 2, 'dasdaaaaaa', 'dasd', 'dasd', 'dsad', 'dasd', '2023-08-02 20:56:35', '2023-08-02 20:58:42', NULL),
(4, 2, 'bbb', 'dasd', 'dasd', 'dsad', 'aaaa', '2023-08-02 20:59:00', '2023-08-02 20:59:00', NULL),
(5, 2, 'wwwww', 'wwwwww', 'wwwwwww', 'wwwwwwwwww', 'dasd', '2023-08-02 21:02:04', '2023-08-02 21:04:03', '2023-08-02 21:04:03'),
(6, 2, 'dasd', 'dasd', 'dasd', 'dasd', 'das', '2023-08-02 21:05:01', '2023-08-02 21:05:01', NULL),
(7, 2, 'dasd', 'dsad', 'dsad', 'ase11', '11', '2023-08-02 21:06:04', '2023-08-02 21:06:04', NULL),
(8, 1, '3123', '3', '23', '3', 'das', '2023-08-02 21:08:18', '2023-08-02 21:08:18', NULL),
(9, 1, 'dasd', 'dasd', 'dsad', 'dasd', '3123', '2023-08-02 21:09:50', '2023-08-02 21:09:50', NULL),
(10, 1, '3123', '31232', '3', '23', '3123', '2023-08-02 21:10:31', '2023-08-02 21:10:31', NULL),
(11, 1, 'يشسيشس', 'يشسي', 'يشسي', 'يشسي', 'يشسي', '2023-08-02 21:11:24', '2023-08-02 21:11:24', NULL),
(12, 2, 'aaaaaaaaaa', 'aaaaaaaaaaa', 'dasd', 'dasd', 'dasdas', '2023-08-02 21:12:05', '2023-08-02 21:12:05', NULL),
(13, 1, 'hhىىى', 'front end', 'شرح مهارت تصميم الواجهات', 'explanation of front end', NULL, '2023-06-11 13:05:28', '2023-08-02 20:51:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills_groups`
--

CREATE TABLE `skills_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills_groups`
--

INSERT INTO `skills_groups` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', NULL, '2023-06-11 16:00:59', '2023-06-11 14:08:13'),
(2, 'تيست', 'english ability', 'شرح', 'explanation', NULL, '2023-06-11 14:07:29', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', NULL, '2023-06-11 16:35:26', '2023-06-11 16:35:47');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `country_id`, `username`, `email`, `email_verified_at`, `serial_number`, `password`, `phone`, `address`, `image`, `block`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'aldas', 'mahmoud@yahoo.com', NULL, '3123123123', '', '0113123', 'zagazig', 'default.png', 0, NULL, NULL, '2023-08-02 14:11:41', '2023-08-01 22:02:05'),
(2, 1, 1, 'mahmoud', 'mahmoud_elzanklony@yahoo.com', NULL, '1690416107', '$2y$10$2t1BcG9mXrTOq39gCSYHw..ACjYc40uW0NRR5A01Gi3/7kn2VeFca', '01152296646', '', 'default.png', 0, NULL, NULL, '2023-07-26 21:01:47', '2023-07-26 21:01:47'),
(3, 3, 1, 'dasd', 'mahmoud_elzadasdnklony@yahoo.com', NULL, '1690416107', '$2y$10$2t1BcG9mXrTOq39gCSYHw..ACjYc40uW0NRR5A01Gi3/7kn2VeFca', '01152296646', '', 'default.png', 0, NULL, '2023-08-02 16:06:03', '2023-07-26 21:01:47', '2023-08-02 16:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `work_activities`
--

CREATE TABLE `work_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_activities`
--

INSERT INTO `work_activities` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تيست', 'english ability', 'شرح', 'explanation', NULL, '2023-06-11 16:43:11', NULL),
(2, 'تيست تو', 'english ability', 'شرح', 'explanation', NULL, '2023-06-11 16:43:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_contexts`
--

CREATE TABLE `work_contexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_contexts`
--

INSERT INTO `work_contexts` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', '', '2023-06-11 16:41:59', '2023-06-11 16:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_values`
--

CREATE TABLE `work_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_values`
--

INSERT INTO `work_values` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', NULL, '2023-06-11 16:38:47', '2023-06-11 16:39:00'),
(2, 'قيمه', 'value', 'dasd', 'dsad', NULL, '2023-08-12 12:49:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_data`
--
ALTER TABLE `jobs_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_abilities`
--
ALTER TABLE `job_abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_abilities_job_id_foreign` (`job_id`),
  ADD KEY `job_abilities_ability_id_foreign` (`ability_id`);

--
-- Indexes for table `job_certificates`
--
ALTER TABLE `job_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_certificates_job_id_foreign` (`job_id`),
  ADD KEY `certificate_id` (`certificate_id`);

--
-- Indexes for table `job_competencies`
--
ALTER TABLE `job_competencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_competencies_job_id_foreign` (`job_id`),
  ADD KEY `job_competencies_competency_id_foreign` (`competency_id`);

--
-- Indexes for table `job_educations`
--
ALTER TABLE `job_educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_educations_job_id_foreign` (`job_id`),
  ADD KEY `job_educations_education_id_foreign` (`education_id`);

--
-- Indexes for table `job_interests`
--
ALTER TABLE `job_interests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_interests_job_id_foreign` (`job_id`),
  ADD KEY `job_interests_interest_id_foreign` (`interest_id`);

--
-- Indexes for table `job_knowledge`
--
ALTER TABLE `job_knowledge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_knowledge_job_id_foreign` (`job_id`),
  ADD KEY `job_knowledge_knowledge_id_foreign` (`knowledge_id`);

--
-- Indexes for table `job_principle_contracts`
--
ALTER TABLE `job_principle_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_principle_contracts_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_references`
--
ALTER TABLE `job_references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_references_job_id_foreign` (`job_id`),
  ADD KEY `job_references_reference_id_foreign` (`reference_id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_jobs_job_id_foreign` (`job_id`),
  ADD KEY `skills_jobs_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `job_tasks`
--
ALTER TABLE `job_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_tasks_job_id_foreign` (`job_id`),
  ADD KEY `job_tasks_task_id_foreign` (`task_id`);

--
-- Indexes for table `job_work_activities`
--
ALTER TABLE `job_work_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_work_activities_job_id_foreign` (`job_id`),
  ADD KEY `job_work_activities_work_activity_id_foreign` (`work_activity_id`);

--
-- Indexes for table `job_work_contexts`
--
ALTER TABLE `job_work_contexts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_work_contexts_job_id_foreign` (`job_id`),
  ADD KEY `job_work_contexts_work_id_foreign` (`work_id`);

--
-- Indexes for table `job_work_values`
--
ALTER TABLE `job_work_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_work_values_job_id_foreign` (`job_id`),
  ADD KEY `job_work_values_work_value_id_foreign` (`work_value_id`);

--
-- Indexes for table `knowledge`
--
ALTER TABLE `knowledge`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_sk_group_id_foreign` (`sk_group_id`);

--
-- Indexes for table `skills_groups`
--
ALTER TABLE `skills_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- Indexes for table `work_activities`
--
ALTER TABLE `work_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_contexts`
--
ALTER TABLE `work_contexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_values`
--
ALTER TABLE `work_values`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs_data`
--
ALTER TABLE `jobs_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `job_abilities`
--
ALTER TABLE `job_abilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `job_certificates`
--
ALTER TABLE `job_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `job_competencies`
--
ALTER TABLE `job_competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_educations`
--
ALTER TABLE `job_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `job_interests`
--
ALTER TABLE `job_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_knowledge`
--
ALTER TABLE `job_knowledge`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `job_principle_contracts`
--
ALTER TABLE `job_principle_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `job_references`
--
ALTER TABLE `job_references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `job_tasks`
--
ALTER TABLE `job_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_work_activities`
--
ALTER TABLE `job_work_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `job_work_contexts`
--
ALTER TABLE `job_work_contexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_work_values`
--
ALTER TABLE `job_work_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `knowledge`
--
ALTER TABLE `knowledge`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `skills_groups`
--
ALTER TABLE `skills_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_activities`
--
ALTER TABLE `work_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_contexts`
--
ALTER TABLE `work_contexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_values`
--
ALTER TABLE `work_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs_data`
--
ALTER TABLE `jobs_data`
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_abilities`
--
ALTER TABLE `job_abilities`
  ADD CONSTRAINT `job_abilities_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_abilities_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_certificates`
--
ALTER TABLE `job_certificates`
  ADD CONSTRAINT `job_certificates_ibfk_1` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_certificates_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_competencies`
--
ALTER TABLE `job_competencies`
  ADD CONSTRAINT `job_competencies_competency_id_foreign` FOREIGN KEY (`competency_id`) REFERENCES `competencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_competencies_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_educations`
--
ALTER TABLE `job_educations`
  ADD CONSTRAINT `job_educations_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `educations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_educations_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_interests`
--
ALTER TABLE `job_interests`
  ADD CONSTRAINT `job_interests_interest_id_foreign` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_interests_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_knowledge`
--
ALTER TABLE `job_knowledge`
  ADD CONSTRAINT `job_knowledge_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_knowledge_knowledge_id_foreign` FOREIGN KEY (`knowledge_id`) REFERENCES `knowledge` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_principle_contracts`
--
ALTER TABLE `job_principle_contracts`
  ADD CONSTRAINT `job_principle_contracts_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_references`
--
ALTER TABLE `job_references`
  ADD CONSTRAINT `job_references_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_references_reference_id_foreign` FOREIGN KEY (`reference_id`) REFERENCES `references` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD CONSTRAINT `skills_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skills_jobs_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_tasks`
--
ALTER TABLE `job_tasks`
  ADD CONSTRAINT `job_tasks_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_tasks_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_work_activities`
--
ALTER TABLE `job_work_activities`
  ADD CONSTRAINT `job_work_activities_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_work_activities_work_activity_id_foreign` FOREIGN KEY (`work_activity_id`) REFERENCES `work_activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_work_contexts`
--
ALTER TABLE `job_work_contexts`
  ADD CONSTRAINT `job_work_contexts_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_work_contexts_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `work_contexts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_work_values`
--
ALTER TABLE `job_work_values`
  ADD CONSTRAINT `job_work_values_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_work_values_work_value_id_foreign` FOREIGN KEY (`work_value_id`) REFERENCES `work_values` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_sk_group_id_foreign` FOREIGN KEY (`sk_group_id`) REFERENCES `skills_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
