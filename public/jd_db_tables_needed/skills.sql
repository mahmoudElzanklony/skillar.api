-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 05:28 PM
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
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `sk_group_id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `note`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 0, 'تعليم فعال', 'Active Learning', 'العمل مع مواد أو معلومات جديدة لفهم آثارها', 'Working with new material or information to grasp its implications', NULL, 'S001', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(17, 0, 'الاستماع الفعال', 'Active Listening', 'الاستماع إلى ما يقوله الآخرون وطرح الأسئلة حسب الاقتضاء', 'Listening to what other people are saying and asking questions as appropriate', NULL, 'S002', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(18, 0, 'تنسيق', 'Coordination', 'تعديل الإجراءات فيما يتعلق بأفعال الآخرين', 'Adjusting actions in relation to others\' actions', NULL, 'S003', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(19, 0, 'التفكير النقدي', 'Critical Thinking', 'استخدام المنطق والتحليل لتحديد نقاط القوة والضعف في الأساليب المختلفة', 'Using logic and analysis to identify the strengths and weaknesses of different approaches', NULL, 'S004', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(20, 0, 'صيانة المعدات', 'Equipment Maintenance', 'إجراء الصيانة الروتينية وتحديد متى ونوع الصيانة المطلوبة', 'Performing routine maintenance and determining when and what kind of maintenance is needed', NULL, 'S005', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(21, 0, 'اختيار المعدات', 'Equipment Selection', 'تحديد نوع الأدوات والمعدات اللازمة للقيام بعمل ما', 'Determining the kind of tools and equipment needed to do a job', NULL, 'S006', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(22, 0, 'تقييم الفكرة', 'Idea Evaluation', 'تقييم النجاح المحتمل لفكرة فيما يتعلق بمتطلبات الموقف', 'Evaluating the likely success of an idea in relation to the demands of the situation', NULL, 'S007', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(23, 0, 'توليد الأفكار', 'Idea Generation', 'توليد عدد من الأساليب المختلفة للمشاكل', 'Generating a number of different approaches to problems', NULL, 'S008', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(24, 0, 'تحديد الأسباب الرئيسية', 'Identification of Key Causes', 'تحديد الأشياء التي يجب تغييرها لتحقيق الهدف', 'Identifying the things that must be changed to achieve a goal', NULL, 'S009', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(25, 0, 'تحديد عواقب المصب', 'Identifying Downstream Consequences', 'تحديد النتائج طويلة المدى للتغيير في العمليات', 'Determining the long-term outcomes of a change in operations', NULL, 'S010', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(26, 0, 'تخطيط التنفيذ', 'Implementation Planning', 'تطوير مناهج لتنفيذ فكرة', 'Developing approaches for implementing an idea', NULL, 'S011', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(27, 0, 'جمع المعلومات', 'Information Gathering', 'معرفة كيفية العثور على المعلومات وتحديد المعلومات الأساسية', 'Knowing how to find information and identifying essential information', NULL, 'S012', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(28, 0, 'منظمة المعلومات', 'Information Organization', 'إيجاد طرق لهيكلة أو تصنيف أجزاء متعددة من المعلومات', 'Finding ways to structure or classify multiple pieces of information', NULL, 'S013', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(29, 0, 'تثبيت', 'Installation', 'تركيب المعدات أو الآلات أو الأسلاك أو البرامج التي تلبي المواصفات', 'Installing equipment, machines, wiring, or programs to meet specifications', NULL, 'S014', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(30, 0, 'تعليمات', 'Instructing', 'تعليم الآخرين كيفية القيام بشيء ما', 'Teaching others how to do something', NULL, 'S015', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(31, 0, 'الحكم واتخاذ القرار', 'Judgment and Decision Making', 'الموازنة بين التكاليف والفوائد النسبية لإجراء محتمل', 'Weighing the relative costs and benefits of a potential action', NULL, 'S016', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(32, 0, 'استراتيجيات التعليم', 'Learning Strategies', 'استخدام مناهج متعددة عند تعلم أشياء جديدة أو تدريسها', 'Using multiple approaches when learning or teaching new things', NULL, 'S017', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(33, 0, 'إدارة الموارد المالية', 'Management of Financial Resources', 'تحديد كيفية إنفاق الأموال لإنجاز العمل ، وحساب هذه النفقات', 'Determining how money will be spent to get the work done, and accounting for these expenditures', NULL, 'S018', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(34, 0, 'إدارة الموارد المادية', 'Management of Material Resources', 'الحصول على ومراقبة الاستخدام المناسب للمعدات والمرافق والمواد اللازمة للقيام بعمل معين', 'Obtaining and seeing to the appropriate use of equipment, facilities, and materials needed to do certain work', NULL, 'S019', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(35, 0, 'إدارة موارد الموظفين', 'Management of Personnel Resources', 'تحفيز الناس وتطويرهم وتوجيههم أثناء عملهم ، وتحديد أفضل الأشخاص للوظيفة', 'Motivating, developing, and directing people as they work, identifying the best people for the job', NULL, 'S020', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(36, 0, 'الرياضيات', 'Mathematics', 'استخدام الرياضيات لحل المسائل', 'Using mathematics to solve problems', NULL, 'S021', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(37, 0, 'يراقب', 'Monitoring', 'تقييم مدى جودة أداء المرء عند التعلم أو القيام بشيء ما', 'Assessing how well one is doing when learning or doing something', NULL, 'S022', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(38, 0, 'تفاوض', 'Negotiation', 'التقريب بين الآخرين ومحاولة التوفيق بين الاختلافات', 'Bringing others together and trying to reconcile differences', NULL, 'S023', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(39, 0, 'التشغيل والتحكم', 'Operation and Control', 'التحكم في عمليات المعدات أو الأنظمة', 'Controlling operations of equipment or systems', NULL, 'S024', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(40, 0, 'مراقبة العملية', 'Operation Monitoring', 'مراقبة المقاييس أو الأقراص أو المؤشرات الأخرى للتأكد من عمل الجهاز بشكل صحيح', 'Watching gauges, dials, or other indicators to make sure a machine is working properly', NULL, 'S025', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(41, 0, 'تحليل العمليات', 'Operations Analysis', 'تحليل الاحتياجات ومتطلبات المنتج لإنشاء تصميم', 'Analyzing needs and product requirements to create a design', NULL, 'S026', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(42, 0, 'إقناع', 'Persuasion', 'إقناع الآخرين بالتعامل مع الأمور بشكل مختلف', 'Persuading others to approach things differently', NULL, 'S027', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(43, 0, 'تعريف المشكلة', 'Problem Identification', 'التعرف على طبيعة المشاكل', 'Identifying the nature of problems', NULL, 'S028', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(44, 0, 'فحص المنتج', 'Product Inspection', 'فحص وتقييم جودة المنتجات', 'Inspecting and evaluating the quality of products', NULL, 'S029', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(45, 0, 'برمجة', 'Programming', 'كتابة برامج الكمبيوتر لأغراض مختلفة', 'Writing computer programs for various purposes', NULL, 'S030', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(46, 0, 'قراءة الفهم', 'Reading Comprehension', 'فهم جمل وفقرات مكتوبة في الوثائق المتعلقة بالعمل', 'Understanding written sentences and paragraphs in work related documents', NULL, 'S031', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(47, 0, 'إصلاح', 'Repairing', 'إصلاح الآلات أو الأنظمة باستخدام الأدوات اللازمة', 'Repairing machines or systems using the needed tools', NULL, 'S032', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(48, 0, 'علوم', 'Science', 'استخدام الأساليب العلمية في حل المشكلات', 'Using scientific methods to solve problems', NULL, 'S033', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(49, 0, 'دائره توجيه', 'Service Orientation', 'يبحث بنشاط عن طرق لمساعدة الناس', 'Actively looking for ways to help people', NULL, 'S034', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(50, 0, 'الإدراك الاجتماعي', 'Social Perceptiveness', 'إدراك ردود أفعال الآخرين وفهم سبب تفاعلهم بالطريقة التي يتصرفون بها', 'Being aware of others\' reactions and understanding why they react the way they do', NULL, 'S035', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(51, 0, 'تقييم الحل', 'Solution Appraisal', 'مراقبة وتقييم نتائج حل المشكلة لتحديد الدروس المستفادة أو إعادة توجيه الجهود', 'Observing and evaluating the outcomes of a problem solution to identify lessons learned or redirect efforts', NULL, 'S036', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(52, 0, 'تكلم', 'Speaking', 'التحدث إلى الآخرين لنقل المعلومات بشكل فعال', 'Talking to others to effectively convey information', NULL, 'S037', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(53, 0, 'التوليف / إعادة التنظيم', 'Synthesis/Reorganization', 'إعادة تنظيم المعلومات للحصول على نهج أفضل للمشكلات أو المهام', 'Reorganizing information to get a better approach to problems or tasks', NULL, 'S038', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(54, 0, 'تقييم النظم', 'Systems Evaluation', 'الاطلاع على العديد من مؤشرات أداء النظام مع مراعاة دقتها', 'Looking at many indicators of system performance, taking into account their accuracy', NULL, 'S039', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(55, 0, 'تصور النظم', 'Systems Perception', 'تحديد وقت حدوث تغييرات مهمة في النظام أو من المحتمل حدوثها', 'Determining when important changes have occurred in a system or are likely to occur', NULL, 'S040', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(56, 0, 'تصميم التكنولوجيا', 'Technology Design', 'توليد أو تكييف المعدات والتكنولوجيا لتلبية احتياجات المستخدم', 'Generating or adapting equipment and technology to serve user needs', NULL, 'S041', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(57, 0, 'اختبارات', 'Testing', 'إجراء اختبارات لتحديد ما إذا كانت المعدات أو البرامج أو الإجراءات تعمل بالشكل المتوقع', 'Conducting tests to determine whether equipment, software, or procedures are operating as expected', NULL, 'S042', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(58, 0, 'إدارة الوقت', 'Time Management', 'إدارة وقت المرء ووقت الآخرين', 'Managing one\'s own time and the time of others', NULL, 'S043', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(59, 0, 'استكشاف الأخطاء وإصلاحها', 'Troubleshooting', 'تحديد سبب الخطأ التشغيلي واتخاذ قرار بشأنه', 'Determining what is causing an operating error and deciding what to do about it', NULL, 'S044', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(60, 0, 'الرؤية', 'Visioning', 'تطوير صورة لكيفية عمل النظام في ظل ظروف مثالية', 'Developing an image of how a system should work under ideal conditions', NULL, 'S045', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL),
(61, 0, 'كتابة', 'Writing', 'التواصل الفعال مع الآخرين كتابيًا كما تدل عليه احتياجات الجمهور', 'Communicating effectively with others in writing as indicated by the needs of the audience', NULL, 'S046', '2023-09-13 15:10:44', '2023-09-13 15:10:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_sk_group_id_foreign` (`sk_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
