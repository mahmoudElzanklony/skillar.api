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
-- Table structure for table `work_activities`
--

CREATE TABLE `work_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_activities`
--

INSERT INTO `work_activities` (`id`, `en_title`, `ar_title`, `ar_desc`, `en_desc`, `code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(45, 'Analyzing Data or Information', 'تحليل البيانات أو المعلومات', 'تحديد المبادئ أو الأسباب أو الحقائق الأساسية عن طريق تقسيم المعلومات أو البيانات إلى أجزاء منفصلة', 'Identifying underlying principles, reasons, or facts by breaking down information or data into separate parts', 'WA001', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(46, 'Assisting and Caring for Others', 'مساعدة ورعاية الآخرين', 'تقديم المساعدة أو العناية الشخصية للآخرين', 'Providing assistance or personal care to others', 'WA002', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(47, 'Coaching and Developing Others', 'تدريب وتطوير الآخرين', 'تحديد الاحتياجات التنموية للآخرين والتدريب أو مساعدة الآخرين على تحسين معارفهم أو مهاراتهم', 'Identifying developmental needs of others and coaching or otherwise helping others to improve their knowledge or skills', 'WA003', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(48, 'Communicating With Other Workers', 'التواصل مع العمال الآخرين', 'توفير المعلومات للمشرفين وزملائهم العاملين والمرؤوسين. يمكن تبادل هذه المعلومات وجهاً لوجه أو كتابةً أو عبر الهاتف / التحويل الإلكتروني', 'Providing information to supervisors, fellow workers, and subordinates.  This information can be exchanged face-to-face, in writing, or via telephone/electronic transfer', 'WA004', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(49, 'Communicating With Persons Outside Organization', 'التواصل مع أشخاص خارج المنظمة', 'التواصل مع أشخاص من خارج المنظمة ، وتمثيل المنظمة للعملاء ، والجمهور ، والحكومة ، ومصادر خارجية أخرى. يمكن تبادل هذه المعلومات وجهاً لوجه أو كتابةً أو عبر الهاتف / التحويل الإلكتروني', 'Communicating with persons outside the organization, representing the organization to customers, the public, government, and other external sources.  This information can be exchanged face-to-face, in writing, or via telephone/electronic transfer', 'WA005', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(50, 'Controlling Machines and Processes', 'التحكم في الآلات والعمليات', 'استخدام آليات التحكم أو النشاط البدني المباشر لتشغيل الآلات أو العمليات (لا تشمل أجهزة الكمبيوتر أو المركبات)', 'Using either control mechanisms or direct physical activity to operate machines or processes (not including computers or vehicles)', 'WA006', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(51, 'Coordinating Work and Activities of Others', 'تنسيق عمل وأنشطة الآخرين', 'تنسيق أعضاء مجموعة العمل لإنجاز المهام', 'Coordinating members of a work group to accomplish tasks', 'WA007', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(52, 'Developing and Building Teams', 'تطوير وبناء الفرق', 'تشجيع وبناء الثقة المتبادلة والاحترام والتعاون بين أعضاء الفريق', 'Encouraging and building mutual trust, respect, and cooperation among team members', 'WA008', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(53, 'Developing Objectives and Strategies', 'تطوير الأهداف والاستراتيجيات', 'وضع أهداف بعيدة المدى وتحديد الاستراتيجيات والإجراءات لتحقيق هذه الأهداف', 'Establishing long range objectives and specifying the strategies and actions to achieve these objectives', 'WA009', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(54, 'Documenting or Recording Information', 'توثيق أو تسجيل المعلومات', 'إدخال المعلومات أو نسخها أو تسجيلها أو تخزينها أو الاحتفاظ بها سواء بشكل مكتوب أو عن طريق التسجيل الإلكتروني / المغناطيسي', 'Entering, transcribing, recording, storing, or maintaining information in either written form or by electronic/magnetic recording', 'WA010', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(55, 'Drafting and Specifying Technical Devices', 'صياغة وتحديد الأجهزة الفنية', 'تقديم الوثائق أو التعليمات التفصيلية أو الرسومات أو المواصفات لإبلاغ الآخرين بكيفية تصنيع الأجهزة أو الأجزاء أو المعدات أو الهياكل أو بناؤها أو تجميعها أو تعديلها أو صيانتها أو استخدامها', 'Providing documentation, detailed instructions, drawings, or specifications to inform others about how devices, parts, equipment, or structures are to be fabricated, constructed, assembled, modified, maintained, or used', 'WA011', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(56, 'Establishing and Maintaining Relationships', 'إقامة العلاقات والحفاظ عليها', 'تطوير علاقات عمل بناءة وتعاونية مع الآخرين', 'Developing constructive and cooperative working relationships with others', 'WA012', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(57, 'Estimating Needed Characteristics', 'تقدير الخصائص المطلوبة', 'تقدير خصائص المواد أو المنتجات أو الأحداث أو المعلومات: تقدير الأحجام والمسافات والكميات أو تحديد الوقت أو التكاليف أو الموارد أو المواد اللازمة لأداء نشاط العمل', 'Estimating the Characteristics of Materials, Products, Events, or Information:  Estimating sizes, distances, and quantities, or determining time, costs, resources, or materials needed to perform a work activity', 'WA013', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(58, 'Evaluating Information Against Standards', 'تقييم المعلومات مقابل المعايير', 'تقييم المعلومات مقابل مجموعة من المعايير والتحقق من صحتها', 'Evaluating information against a set of standards and verifying that it is correct', 'WA014', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(59, 'Getting Information Needed to Do the Job', 'الحصول على المعلومات اللازمة للقيام بالمهمة', 'مراقبة المعلومات وتلقيها والحصول عليها بأي طريقة أخرى من جميع المصادر ذات الصلة', 'Observing, receiving, and otherwise obtaining information from all relevant sources', 'WA015', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(60, 'Guiding, Directing and Motivating Subordinates', 'توجيه وتوجيه وتحفيز المرؤوسين', 'توفير التوجيه والتوجيه للمرؤوسين ، بما في ذلك وضع معايير الأداء ومراقبة المرؤوسين', 'Providing guidance and direction to subordinates, including setting performance standards and monitoring subordinates', 'WA016', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(61, 'Handling and Moving Objects', 'التعامل مع الأشياء ونقلها', 'استخدام يديه وذراعيه في التعامل مع المواد وتركيبها وتشكيلها وتحديد مواضعها ونقلها ، أو في التلاعب بالأشياء ، بما في ذلك استخدام لوحات المفاتيح', 'Using one\'s own hands and arms in handling, installing, forming, positioning, and moving materials, or in manipulating things, including the use of keyboards', 'WA017', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(62, 'Identifying Objects, Actions, and Events', 'تحديد الكائنات والإجراءات والأحداث', 'تحديد المعلومات الواردة عن طريق إجراء تقديرات أو تصنيفات ، أو التعرف على الاختلافات أو أوجه التشابه ، أو استشعار التغيرات في الظروف أو الأحداث', 'Identifying information received by making estimates or categorizations, recognizing differences or similarities, or sensing changes in circumstances or events', 'WA018', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(63, 'Implementing Ideas or Programs', 'تنفيذ الأفكار أو البرامج', 'إجراء أو تنفيذ إجراءات وأنشطة العمل وفقًا لأفكار الفرد أو المعلومات المقدمة من خلال التوجيهات / التعليمات لأغراض تثبيت أو تعديل أو إعداد أو تسليم أو إنشاء أو تكامل أو إنهاء أو إكمال البرامج أو الأنظمة أو الهياكل أو المنتجات', 'Conducting or carrying out work procedures and activities in accord with one\'s own ideas or information provided through directions/instructions for purposes of installing, modifying, preparing, delivering, constructing, integrating, finishing, or completing programs, systems, structures, or products', 'WA019', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(64, 'Inspecting Equipment, Structures, or Material', 'فحص المعدات أو الهياكل أو المواد', 'فحص أو تشخيص المعدات أو الهياكل أو المواد لتحديد أسباب الأخطاء أو المشاكل أو العيوب الأخرى', 'Inspecting or diagnosing equipment, structures, or materials to identify the causes of errors or other problems or defects', 'WA020', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(65, 'Interacting With Computers', 'التعامل مع أجهزة الكمبيوتر', 'التحكم في وظائف الكمبيوتر باستخدام البرامج أو إعداد الوظائف أو كتابة البرامج أو بأي طريقة أخرى الاتصال بأنظمة الكمبيوتر', 'Controlling computer functions by using programs, setting up functions, writing software, or otherwise communicating with computer systems', 'WA021', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(66, 'Interpreting Meaning of Information to Others', 'تفسير معنى المعلومات للآخرين', 'ترجمة أو شرح ما تعنيه المعلومات وكيف يمكن فهمها أو استخدامها لدعم الردود أو التعليقات للآخرين', 'Translating or explaining what information means and how it can be understood or used to support responses or feedback to others', 'WA022', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(67, 'Judging Qualities of Things, Services, or People', 'الحكم على صفات الأشياء أو الخدمات أو الأشخاص', 'إصدار أحكام حول أو تقييم قيمة أو أهمية أو جودة الأشياء أو الأشخاص', 'Making judgments about or assessing the value, importance, or quality of things or people', 'WA023', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(68, 'Making Decisions and Solving Problems', 'اتخاذ القرارات وحل المشكلات', 'الجمع بين المعلومات والبيانات وتقييمها والاستدلال عليها لاتخاذ القرارات وحل المشكلات. تتضمن هذه العمليات اتخاذ قرارات بشأن الأهمية النسبية للمعلومات واختيار الحل الأفضل', 'Combining, evaluating, and reasoning with information and data to make decisions and solve problems.  These processes involve making decisions about the relative importance of information and choosing the best solution', 'WA024', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(69, 'Monitor Processes,  Material, or Surroundings', 'مراقبة العمليات أو المواد أو البيئة المحيطة', 'مراقبة ومراجعة المعلومات من المواد أو الأحداث أو البيئة ، غالبًا لاكتشاف المشكلات أو لمعرفة متى تنتهي الأشياء', 'Monitoring and reviewing information from materials, events, or the environment, often to detect problems or to find out when things are finished', 'WA025', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(70, 'Monitoring and Controlling Resources', 'مراقبة الموارد والتحكم فيها', 'مراقبة الموارد وضبطها والإشراف على إنفاق الأموال', 'Monitoring and controlling resources and overseeing the spending of money', 'WA026', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(71, 'Operating Vehicles or Equipment', 'مركبات أو معدات التشغيل', 'الجري أو المناورة أو الملاحة أو قيادة المركبات أو المعدات الميكانيكية ، مثل الرافعات الشوكية أو مركبات الركاب أو الطائرات أو المركبات المائية', 'Running, maneuvering, navigating, or driving vehicles or mechanized equipment, such as forklifts, passenger vehicles, aircraft, or water craft', 'WA027', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(72, 'Organizing, Planning, and Prioritizing', 'التنظيم والتخطيط وتحديد الأولويات', 'وضع الخطط لإنجاز العمل وتحديد أولويات العمل وتنظيمه', 'Developing plans to accomplish work, and prioritizing and organizing one\'s own work', 'WA028', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(73, 'Performing Administrative Activities', 'أداء الأنشطة الإدارية', 'الموافقة على الطلبات ، والتعامل مع الأعمال الورقية ، وأداء المهام الإدارية اليومية', 'Approving requests, handling paperwork, and performing day-to-day administrative tasks', 'WA029', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(74, 'Performing For or Working With Public', 'الأداء أو العمل مع الجمهور', 'الأداء للناس أو التعامل مباشرة مع الجمهور ، بما في ذلك خدمة الأشخاص في المطاعم والمتاجر ، واستقبال العملاء أو الضيوف', 'Performing for people or dealing directly with the public, including serving persons in restaurants and stores, and receiving clients or guests', 'WA030', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(75, 'Performing General Physical Activities', 'أداء الأنشطة البدنية العامة', 'أداء الأنشطة البدنية التي تتطلب تحريك الجسم بالكامل ، مثل التسلق ، والرفع ، والموازنة ، والمشي ، والانحناء ، حيث تتطلب الأنشطة أيضًا استخدامًا كبيرًا للذراعين والساقين ، كما هو الحال في المناولة المادية للمواد', 'Performing physical activities that require moving one\'s whole body, such as in climbing, lifting, balancing, walking, stooping, where the activities often also require considerable use of the arms and legs, such as in the physical handling of materials', 'WA031', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(76, 'Processing Information', 'معالجة المعلومات', 'تجميع أو ترميز أو تصنيف أو حساب أو جدولة أو تدقيق أو التحقق أو معالجة المعلومات أو البيانات', 'Compiling, coding, categorizing, calculating, tabulating, auditing, verifying, or processing information or data', 'WA032', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(77, 'Providing Consultation and Advice to Others', 'تقديم المشورة والمشورة للآخرين', 'تقديم الاستشارات ونصائح الخبراء للإدارة أو المجموعات الأخرى حول الموضوعات الفنية أو المتعلقة بالأنظمة أو العملية', 'Providing consultation and expert advice to management or other groups on technical, systems-related, or process related topics', 'WA033', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(78, 'Repairing and Maintaining Electrical Equipment', 'إصلاح وصيانة المعدات الكهربائية', 'إصلاح أو صيانة أو تعديل أو تنظيم أو معايرة أو ضبط أو اختبار الآلات والأجهزة والمعدات التي تعمل بشكل أساسي على أساس المبادئ الكهربائية أو الإلكترونية (وليس الميكانيكية)', 'Fixing, servicing, adjusting, regulating, calibrating, fine-tuning, or testing machines, devices, and equipment that operate primarily on the basis of electrical or electronic (not mechanical) principles', 'WA034', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(79, 'Repairing and Maintaining Mechanical Equipment', 'إصلاح وصيانة المعدات الميكانيكية', 'إصلاح وصيانة ومواءمة وإعداد وضبط واختبار الآلات والأجهزة والأجزاء المتحركة والمعدات التي تعمل بشكل أساسي على أساس المبادئ الميكانيكية (وليس الإلكترونية)', 'Fixing, servicing, aligning, setting up, adjusting, and testing machines, devices, moving parts, and equipment that operate primarily on the basis of mechanical (not electronic) principles', 'WA035', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(80, 'Resolving Conflict or Negotiating with Others', 'حل الخلاف أو التفاوض مع الآخرين', 'التعامل مع الشكاوى والتحكيم في النزاعات وحل المظالم أو التفاوض مع الآخرين', 'Handling complaints, arbitrating disputes, and resolving grievances, or otherwise negotiating with others', 'WA036', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(81, 'Scheduling Work and Activities', 'جدولة العمل والأنشطة', 'جدولة الفعاليات والبرامج والأنشطة وكذلك عمل الآخرين', 'Scheduling events, programs, activities, as well as the work of others', 'WA037', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(82, 'Selling or Influencing Others', 'بيع أو التأثير على الآخرين', 'إقناع الآخرين بشراء سلع / سلع ، أو تغيير رأيهم أو أفعالهم', 'Convincing others to buy merchandise/goods, or otherwise changing their minds or actions', 'WA038', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(83, 'Staffing Organizational Units', 'ملاك الوحدات التنظيمية', 'توظيف الأشخاص وإجراء المقابلات معهم واختيارهم وتوظيفهم وترقيتهم', 'Recruiting, interviewing, selecting, hiring, and promoting persons for the organization', 'WA039', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(84, 'Teaching Others', 'تعليم الآخرين', 'تحديد الاحتياجات التعليمية ، وتطوير برامج أو فصول تدريبية رسمية ، وتعليم أو إرشاد الآخرين', 'Identifying educational needs, developing formal training programs or classes, and teaching or instructing others', 'WA040', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(85, 'Thinking Creatively', 'التفكير الإبداعي', 'إنشاء أو ابتكار أو تصميم أو إنشاء تطبيقات أو أفكار أو علاقات أو أنظمة أو منتجات جديدة ، بما في ذلك المساهمات الفنية', 'Originating, inventing, designing, or creating new applications, ideas, relationships, systems, or products, including artistic contributions', 'WA041', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31'),
(86, 'Updating and Using Job-Relevant Knowledge', 'تحديث واستخدام المعرفة ذات الصلة بالوظيفة', 'مواكبة التطورات الفنية ومعرفة الوظائف والوظائف ذات الصلة', 'Keeping up-to-date technically and knowing one\'s own jobs\' and related jobs\' functions', 'WA042', NULL, '2023-09-11 17:16:31', '2023-09-11 17:16:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `work_activities`
--
ALTER TABLE `work_activities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `work_activities`
--
ALTER TABLE `work_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
