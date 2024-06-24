-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 05:27 PM
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
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'فني', 'Artistic', 'غالبًا ما تتضمن المهن الفنية العمل مع الأشكال والتصاميم والأنماط. غالبًا ما تتطلب التعبير عن الذات ويمكن إنجاز العمل دون اتباع مجموعة واضحة من القواعد', 'Artistic occupations frequently involve working with forms, designs and patterns.  They often require self-expression and the work can be done without following a clear set of rules', 'I001', NULL, '2023-09-08 20:12:36', '2023-09-08 20:12:36'),
(6, 'عادي', 'Conventional', 'تتضمن المهن التقليدية في كثير من الأحيان اتباع الإجراءات والروتين المحدد. يمكن أن تشمل هذه المهن العمل مع البيانات والتفاصيل أكثر من الأفكار. عادة ما يكون هناك خط واضح للسلطة يجب اتباعه', 'Conventional occupations frequently involve following set procedures and routines. These occupations can include working with data and details more than with ideas. Usually there is a clear line of authority to follow', 'I002', NULL, '2023-09-08 20:12:36', '2023-09-08 20:12:36'),
(7, 'مغامر', 'Enterprising', 'غالبًا ما تتضمن المهن الريادية بدء المشاريع وتنفيذها. يمكن أن تتضمن هذه المهن قيادة الأشخاص واتخاذ العديد من القرارات. في بعض الأحيان يحتاجون إلى المخاطرة وغالبًا ما يتعاملون مع الأعمال', 'Enterprising occupations frequently involve starting up and carrying out projects.  These occupations can involve leading people and making many decisions.  Sometimes they require risk taking and often deal with business', 'I003', NULL, '2023-09-08 20:12:36', '2023-09-08 20:12:36'),
(8, 'استقصائي', 'Investigative', 'غالبًا ما تتضمن المهن الاستقصائية العمل بالأفكار وتتطلب قدرًا كبيرًا من التفكير. يمكن أن تتضمن هذه المهن البحث عن الحقائق واكتشاف المشكلات عقليًا', 'Investigative occupations frequently involve working with ideas, and require an extensive amount of thinking.  These occupations can involve searching for facts and figuring out problems mentally', 'I004', NULL, '2023-09-08 20:12:36', '2023-09-08 20:12:36'),
(9, 'حقيقي', 'Realistic', 'غالبًا ما تتضمن المهن الواقعية أنشطة عمل تتضمن مشكلات وحلول عملية وتطبيقية. غالبًا ما يتعاملون مع النباتات والحيوانات والمواد الواقعية مثل الخشب والأدوات والآلات. تتطلب العديد من المهن العمل في الخارج ، ولا تتطلب الكثير من الأعمال الورقية أو العمل عن كثب مع الآخرين', 'Realistic occupations frequently involve work activities that include practical, hands-on problems and solutions. They often deal with plants, animals, and real-world materials like wood, tools, and machinery. Many of the occupations require working outside, and do not involve a lot of paperwork or working closely with others', 'I005', NULL, '2023-09-08 20:12:36', '2023-09-08 20:12:36'),
(10, 'اجتماعي', 'Social', 'غالبًا ما تتضمن المهن الاجتماعية العمل مع الناس والتواصل معهم وتعليمهم. غالبًا ما تتضمن هذه المهن المساعدة أو تقديم الخدمة للآخرين', 'Social occupations frequently involve working with, communicating with, and teaching people.  These occupations often involve helping or providing service to others', 'I006', NULL, '2023-09-08 20:12:36', '2023-09-08 20:12:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
