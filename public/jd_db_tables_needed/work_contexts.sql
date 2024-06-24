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
-- Table structure for table `work_contexts`
--

CREATE TABLE `work_contexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_contexts`
--

INSERT INTO `work_contexts` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `note`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'تعديل تاني', 'edit', 'تعديل الوصف', 'edit info', '', NULL, '2023-06-11 16:41:59', '2023-06-11 16:42:12', NULL),
(2, ' درجة الأتمتة', '	Degree of Automation', 'حدد مستوى أتمتة هذه الوظيفة', 'Indicate the level of automation of this job', '', 'WC001', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(3, ' التفاعل الاجتماعي المطلوب للوظيفة', '	Job-Required Social Interaction', 'إلى أي مدى تتطلب هذه الوظيفة أن يكون العامل على اتصال (وجهاً لوجه أو عبر الهاتف أو غير ذلك) مع الآخرين من أجل أدائها؟', 'How much does this job require the worker to be in contact (face-to-face, by telephone, or otherwise) with others in order to perform it?', '', 'WC002', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(4, ' الأمراض أو العدوى', '	Diseases or Infections', 'إذا حدثت إصابة بسبب التعرض للأمراض / العدوى أثناء أداء هذه الوظيفة ، فما مدى خطورة النتيجة المحتملة؟ الأمراض / العدوى (على سبيل المثال ، رعاية المرضى ، وبعض الأعمال المخبرية ، والتحكم في الصرف الصحي ، وما إلى ذلك)', 'If injury, due to exposure to diseases/infection, were to occur while performing this job, how serious would be the likely outcome? Diseases/Infections (e.g., patient care, some laboratory work, sanitation control, etc.)', '', 'WC003', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(5, ' ظروف خطرة', '	Hazardous Conditions', 'إذا حدثت إصابة ، بسبب التعرض لظروف خطرة ، أثناء أداء هذه الوظيفة ، فما مدى خطورة النتيجة المحتملة؟ الظروف الخطرة (على سبيل المثال ، الكهرباء عالية الجهد ، والمواد القابلة للاحتراق ، والمتفجرات ، والمواد الكيميائية ؛ لا تشمل المعدات أو المواقف الخطرة)', 'If injury, due to exposure to hazardous conditions, were to occur while performing this job, how serious would be the likely outcome? Hazardous Conditions (e.g., high voltage electricity, combustibles, explosives, chemicals; do not include hazardous equipment or situations)', '', 'WC004', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(6, ' المعدات الخطرة', '	Hazardous Equipment', 'إذا حدثت إصابة بسبب التعرض لمعدات خطرة أثناء أداء هذه الوظيفة ، فما مدى خطورة النتيجة المحتملة؟ المعدات الخطرة (مثل المناشير والآلات / الأجزاء الميكانيكية تشمل التعرض لحركة مرور المركبات ، ولكن ليس قيادة السيارة)', 'If injury, due to exposure to hazardous equipment, were to occur while performing this job, how serious would be the likely outcome? Hazardous Equipment (e.g., saws, machinery/mechanical parts include exposure to vehicular traffic, but not driving a vehicle)', '', 'WC005', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(7, ' المواقف الخطرة', '	Hazardous Situations', 'إذا حدثت إصابة ، بسبب التعرض لمواقف خطرة ، أثناء أداء هذه الوظيفة ، فما مدى خطورة النتيجة المحتملة؟ المواقف الخطرة التي تتضمن احتمالية حدوث جروح أو لدغات أو لسعات أو حروق طفيفة', 'If injury, due to exposure to hazardous situations, were to occur while performing this job, how serious would be the likely outcome? Hazardous Situations involving likely cuts, bites, stings, or minor burns', '', 'WC006', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(8, ' أماكن مرتفعه', '	High Places', 'إذا حدثت إصابة ، بسبب التعرض لمراكز عالية ، أثناء أداء هذه الوظيفة ، فما مدى خطورة النتيجة المحتملة؟ الأماكن المرتفعة (على سبيل المثال ، الارتفاعات التي تزيد عن 8 أقدام على السلالم والأعمدة والسقالات والمنصات وما إلى ذلك)', 'If injury, due to exposure to high places, were to occur while performing this job, how serious would be the likely outcome? High Places (e.g., heights above 8 feet on ladders, poles, scaffolding, catwalks, etc.)', '', 'WC007', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(9, ' إشعاع', '	Radiation', 'إذا حدثت إصابة بسبب التعرض للإشعاع أثناء أداء هذه الوظيفة ، فما مدى خطورة النتيجة المحتملة؟', 'If injury, due to exposure to radiation, were to occur while performing this job, how serious would be the likely outcome?', '', 'WC008', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(10, ' ظروف محبطة', '	Frustrating Circumstances', 'إلى أي مدى تعيق الظروف المحبطة (\"حواجز الطرق\" للعمل الخارج عن إرادة العامل) إنجاز هذه الوظيفة؟', 'To what extent do frustrating circumstances (\"road blocks\" to work that are beyond the worker\'s control) hinder the accomplishment of this job?', '', 'WC009', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(11, ' الانحناء أو التواء الجسم', '	Bending or Twisting the Body', 'كم من الوقت في فترة العمل المعتادة يقضيه العامل: ثني الجسم أو لفه؟', 'How much time in a usual work period does the worker spend: Bending or twisting the body?', '', 'WC010', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(12, ' تسلق السلالم ، السقالات ، الأعمدة ، إلخ.', '	Climbing Ladders, Scaffolds, Poles, etc.', 'كم من الوقت يقضيه العامل في فترة العمل المعتادة: تسلق السلالم ، السقالات ، الأعمدة ، إلخ؟', 'How much time in a usual work period does the worker spend: Climbing ladders, scaffolds, poles, etc?', '', 'WC011', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(13, ' ملابس الحماية أو السلامة العامة', '	Common Protective or Safety Attire', 'كم مرة يرتدي العامل: ملابس الحماية أو السلامة العامة ، مثل أحذية الأمان ، أو النظارات ، أو القفازات ، أو حماية السمع ، أو القبعة الصلبة ، أو جهاز التعويم الشخصي؟', 'How often does the worker wear: Common protective or safety attire, such as safety shoes, glasses, gloves, hearing protection, hard-hat, or personal flotation device?', '', 'WC012', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(14, ' الملوثات', '	Contaminants', 'كم مرة يتعرض العامل خلال فترة العمل المعتادة للشروط التالية: ملوثات (ملوثات ، غازات ، غبار ، روائح ، إلخ)؟', 'How often during a usual work period is the worker exposed to the following conditions: Contaminants (pollutants, gases, dust, odors, etc.)?', '', 'WC013', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(15, ' مساحة عمل ضيقة ، مواقف حرجة', '	Cramped Work Space, Awkward Positions', 'كم مرة يتعرض العامل خلال فترة العمل المعتادة للظروف التالية: مساحة عمل ضيقة تتطلب الدخول في أوضاع غير ملائمة؟', 'How often during a usual work period is the worker exposed to the following conditions: Cramped work space that requires getting into awkward positions?', '', 'WC014', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(16, ' تعامل مع الأشخاص العدوانيين جسديًا', '	Deal With Physically Aggressive People', 'كم مرة تتطلب هذه الوظيفة من العامل التعامل مع الاعتداء الجسدي على الأفراد العنيفين؟', 'How frequently does this job require the worker to deal with physical aggression of violent individuals?', '', 'WC015', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(17, ' تعامل مع الأشخاص غير السارين أو الغاضبين', '	Deal With Unpleasant or Angry People', 'كم مرة يتعين على العامل التعامل مع الأفراد غير السارين أو الغاضبين أو الفاسدين كجزء من متطلبات الوظيفة؟', 'How frequently does the worker have to deal with unpleasant, angry, or discourteous individuals as part of the job requirements?', '', 'WC016', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(18, ' الأمراض أو العدوى', '	Diseases or Infections', 'كم مرة تتطلب هذه الوظيفة تعرض العامل للأمراض / العدوى؟ الأمراض / العدوى (على سبيل المثال ، رعاية المرضى ، وبعض الأعمال المخبرية ، والتحكم في الصرف الصحي ، وما إلى ذلك)', 'How often does this job require the worker to be exposed to diseases/infection? Diseases/Infections (e.g., patient care, some laboratory work, sanitation control, etc.)', '', 'WC017', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(19, ' إضاءة شديدة السطوع أو غير كافية', '	Extremely Bright or Inadequate Lighting', 'كم مرة يتعرض العامل خلال فترة العمل المعتادة للظروف التالية: إضاءة شديدة السطوع أو ظروف إضاءة غير ملائمة؟', 'How often during a usual work period is the worker exposed to the following conditions: Extremely bright or inadequate lighting conditions?', '', 'WC018', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(20, ' التكرار في حالات الصراع', '	Frequency in Conflict Situations', 'كم مرة تضع متطلبات الوظيفة العامل في حالات الصراع؟', 'How frequently do the job requirements place the worker in conflict situations?', '', 'WC019', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(21, ' ظروف خطرة', '	Hazardous Conditions', 'كم مرة تتطلب هذه الوظيفة تعرض العامل لظروف خطرة؟ الظروف الخطرة (على سبيل المثال ، الكهرباء عالية الجهد ، والمواد القابلة للاحتراق ، والمتفجرات ، والمواد الكيميائية ؛ لا تشمل المعدات أو المواقف الخطرة)', 'How often does this job require the worker to be exposed to hazardous conditions? Hazardous Conditions (e.g., high voltage electricity, combustibles, explosives, chemicals; do not include hazardous equipment or situations)', '', 'WC020', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(22, ' المعدات الخطرة', '	Hazardous Equipment', 'كم مرة تتطلب هذه الوظيفة تعرض العامل لمعدات خطيرة؟ المعدات الخطرة (مثل المناشير والآلات / الأجزاء الميكانيكية تشمل التعرض لحركة مرور المركبات ، ولكن ليس قيادة السيارة)', 'How often does this job require the worker to be exposed to harardous equipment? Hazardous Equipment (e.g., saws, machinery/mechanical parts include exposure to vehicular traffic, but not driving a vehicle)', '', 'WC021', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(23, ' المواقف الخطرة', '	Hazardous Situations', 'كم مرة تتطلب هذه الوظيفة تعرض العامل لمواقف صعبة؟ المواقف الخطرة التي تتضمن احتمالية حدوث جروح أو لدغات أو لسعات أو حروق طفيفة', 'How often does this job require the worker to be exposed to harardous situations? Hazardous Situations involving likely cuts, bites, stings, or minor burns', '', 'WC022', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(24, ' أماكن مرتفعه', '	High Places', 'كم مرة تتطلب هذه الوظيفة تعرض العامل لمراكز عالية؟ الأماكن المرتفعة (على سبيل المثال ، الارتفاعات التي تزيد عن 8 أقدام على السلالم والأعمدة والسقالات والمنصات وما إلى ذلك)', 'How often does this job require the worker to be exposed to high places? High Places (e.g., heights above 8 feet on ladders, poles, scaffolding, catwalks, etc.)', '', 'WC023', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(25, ' في الداخل', '	Indoors', 'كم مرة تتطلب هذه الوظيفة من العامل العمل: في الداخل', 'How frequently does this job require the worker to work: Indoors', '', 'WC024', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(26, ' الحفاظ على التوازن أو استعادته', '	Keeping or Regaining Balance', 'ما مقدار الوقت الذي يقضيه العامل في فترة العمل المعتادة: الحفاظ على التوازن أو استعادته؟', 'How much time in a usual work period does the worker spend: Keeping or regaining balance?', '', 'WC025', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(27, ' الركوع أو الجثم أو الزحف', '	Kneeling, Crouching or Crawling', 'كم من الوقت يقضيه العامل في فترة العمل المعتادة: الركوع أو الانحناء أو القرفصاء أو الزحف؟', 'How much time in a usual work period does the worker spend: Kneeling, stooping, crouching or crawling?', '', 'WC026', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(28, ' عمل حركات متكررة', '	Making Repetitive Motions', 'كم من الوقت يقضيه العامل في فترة العمل المعتادة: القيام بحركات متكررة؟', 'How much time in a usual work period does the worker spend: Making repetitive motions?', '', 'WC027', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(29, ' في الهواء الطلق', '	Outdoors', 'كم مرة تتطلب هذه الوظيفة من العامل أن يعمل: في الهواء الطلق', 'How frequently does this job require the worker to work: Outdoors', '', 'WC028', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(30, ' إشعاع', '	Radiation', 'كم مرة تتطلب هذه الوظيفة تعرض العامل للإشعاع؟', 'How often does this job require the worker to be exposed to radiation?', '', 'WC029', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(31, ' يجلس', '	Sitting', 'كم من الوقت في فترة العمل المعتادة يقضيه العامل: جالسًا؟', 'How much time in a usual work period does the worker spend: Sitting?', '', 'WC030', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(32, ' الأصوات أو مستويات الضوضاء تشتت الانتباه', '	Sounds or Noise Levels Are Distracting', 'كم مرة يتعرض العامل خلال فترة العمل المعتادة للظروف التالية: أصوات ومستويات ضوضاء مشتتة وغير مريحة؟', 'How often during a usual work period is the worker exposed to the following conditions: Sounds and noise levels that are distracting and uncomfortable?', '', 'WC031', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(33, ' الزي الخاص', '	Special Uniform', 'كم مرة يرتدي العامل: زي خاص ، مثل زي طيار تجاري ، أو ممرضة ، أو ضابط شرطة ، أو عسكري؟', 'How often does the worker wear: A special uniform, such as that of a commercial pilot, nurse, police officer, or military personnel?', '', 'WC032', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(34, ' ملابس الحماية أو السلامة المتخصصة', '	Specialized Protective or Safety Attire', 'كم مرة يرتدي العامل: ملابس الحماية أو السلامة المتخصصة ، مثل جهاز التنفس ، أو حزام الأمان ، أو بدلة الحماية الكاملة ، أو الحماية من الإشعاع؟', 'How often does the worker wear: Specialized protective or safety attire, such as breathing apparatus, safety harness, full protection suit, or radiation protection?', '', 'WC033', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(35, 'الوقوف', '	Standing', 'كم من الوقت يقضيه العامل في فترة العمل المعتادة: الوقوف؟', 'How much time in a usual work period does the worker spend: Standing?', '', 'WC034', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(36, ' استخدام اليد على الأشياء والأدوات وأدوات التحكم', '	Using Hands on Objects, Tools, Controls', 'ما مقدار الوقت الذي يقضيه العامل في فترة العمل المعتادة: استخدام اليدين للتعامل مع الأشياء أو الأدوات أو أدوات التحكم أو التحكم فيها أو الشعور بها؟', 'How much time in a usual work period does the worker spend: Using hands to handle, control, or feel objects, tools or controls?', '', 'WC035', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(37, ' حار جدا', '	Very Hot', 'كم مرة يتعرض العامل خلال فترة العمل المعتادة للظروف التالية: درجات حرارة شديدة الحرارة (فوق 90 فهرنهايت) أو درجات حرارة شديدة البرودة (أقل من 32 فهرنهايت)؟', 'How often during a usual work period is the worker exposed to the following conditions: Very hot (above 90 F) or very cold (under 32 F) temperatures?', '', 'WC036', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(38, ' المشي أو الجري', '	Walking or Running', 'كم من الوقت يقضيه العامل في فترة العمل المعتادة: المشي أم الجري؟', 'How much time in a usual work period does the worker spend: Walking or running?', '', 'WC037', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(39, ' اهتزاز الجسم بالكامل', '	Whole Body Vibration', 'كم مرة يتعرض العامل خلال فترة العمل المعتادة للظروف التالية: اهتزاز الجسم بالكامل (على سبيل المثال ، تشغيل آلة ثقب الصخور أو معدات تحريك التربة)؟', 'How often during a usual work period is the worker exposed to the following conditions: Whole body vibration (e.g., operating a jackhammer or earthmoving equipment)?', '', 'WC038', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(40, ' مسؤول عن صحة وسلامة الآخرين', '	Responsible for Health and Safety of Others', 'ما مدى مسؤولية العامل عن صحة وسلامة الآخرين في هذه الوظيفة؟', 'How responsible is the worker for others\' health and safety on this job?', '', 'WC039', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(41, ' تنسيق أو قيادة الآخرين', '	Coordinate or Lead Others', 'ما مدى أهمية التفاعلات التي تتطلب من العامل: التنسيق أو قيادة الآخرين في إنجاز أنشطة العمل (وليس الإشراف)؟', 'How important are interactions requiring the worker to: Coordinate or lead others in accomplishing work activities (not supervision)?', '', 'WC040', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(42, ' تعامل مع العملاء الخارجيين', '	Deal With External Customers', 'ما مدى أهمية التفاعلات التي تتطلب من العامل: التعامل مع العملاء الخارجيين (على سبيل المثال ، مبيعات التجزئة) أو الجمهور بشكل عام (على سبيل المثال ، عمل الشرطة)؟', 'How important are interactions requiring the worker to: Deal with external customers (e.g., retail sales) or the public in general (e.g., police work)?', '', 'WC041', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(43, ' أهمية إدراك الأحداث الجديدة', '	Importance of Being Aware of New Events', 'ما مدى أهمية أن تكون على دراية مستمرة إما بالأحداث المتغيرة بشكل متكرر (على سبيل المثال حارس الأمن الذي يراقب اللصوص) أو الأحداث غير المتكررة (مثل عامل الرادار الذي يراقب الأعاصير) لأداء هذه الوظيفة؟', 'How important is being constantly aware of either frequently changing events (e.g. security guard watching for shoplifters) or infrequent events (e.g. radar operator watching for tornadoes) to performing this job?', '', 'WC042', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(44, ' أهمية أن تكون دقيقًا أو دقيقًا', '	Importance of Being Exact or Accurate', 'ما مدى أهمية أن تكون دقيقًا جدًا أو شديد الدقة في أداء هذه الوظيفة؟', 'How important is being very exact or highly accurate in performing this job?', '', 'WC043', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(45, ' أهمية التأكد من أن كل شيء قد تم', '	Importance of Being Sure All Is Done', 'ما مدى أهمية التأكد من أن جميع تفاصيل هذه الوظيفة قد تم إنجازها وأن كل شيء يتم بشكل كامل؟', 'How important is it to be sure that all the details of this job are performed and everything is done completely?', '', 'WC044', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(46, ' أهمية تكرار نفس المهام', '	Importance of Repeating Same Tasks', 'ما مدى أهمية تكرار نفس الأنشطة البدنية (على سبيل المثال ، إدخال المفتاح) أو الأنشطة العقلية (على سبيل المثال ، فحص الإدخالات في دفتر الأستاذ) مرارًا وتكرارًا ، دون توقف ، لأداء هذه الوظيفة؟', 'How important is repeating the same physical activities (e.g., key entry) or mental activities (e.g., checking entries in a ledger) over and over, without stopping, to performing this job?', '', 'WC045', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(47, ' السرعة التي تحددها سرعة المعدات', '	Pace Determined by Speed of Equipment', 'ما مدى أهمية أن يتم تحديد السرعة بالنسبة لهذه الوظيفة من خلال سرعة المعدات أو الآلات؟ (لا يشير هذا إلى استمرار الانشغال بهذه الوظيفة في جميع الأوقات).', 'How important is it to this job that the pace is determined by the speed of equipment or machinery?  (This does not refer to keeping busy at all times on this job.)', '', 'WC046', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(48, ' إقناع شخص ما بمسار العمل', '	Persuade Someone to a Course of Action', 'ما مدى أهمية التفاعلات التي تتطلب من العامل: إقناع شخص ما بمسار عمل (بشكل غير رسمي) أو التأثير على الآخرين لشراء شيء ما (لبيعه)؟', 'How important are interactions requiring the worker to: Persuade someone to a course of action (informally) or influence others to buy something (to sell)?', '', 'WC047', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(49, ' تقديم خدمة للآخرين', '	Provide a Service to Others', 'ما مدى أهمية التفاعلات التي تتطلب من العامل: تقديم خدمة للآخرين (مثل العملاء)؟', 'How important are interactions requiring the worker to: Provide a service to others (e.g., customers)?', '', 'WC048', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(50, ' الإشراف ، المدرب ، تدريب الآخرين', '	Supervise, Coach, Train Others', 'ما مدى أهمية التفاعلات التي تتطلب من العامل: الإشراف على الموظفين الآخرين أو تدريبهم أو تدريبهم أو تطويرهم؟', 'How important are interactions requiring the worker to: Supervise, coach, train, or develop other employees?', '', 'WC049', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(51, ' اتخذ موقفا معارضا للآخرين', '	Take a Position Opposed to Others', 'ما مدى أهمية التفاعلات التي تتطلب من العامل: اتخاذ موقف معارضة لزملاء العمل أو غيرهم؟', 'How important are interactions requiring the worker to: Take a position opposed to coworkers or others?', '', 'WC050', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(52, ' الأمراض أو العدوى', '	Diseases or Infections', 'ما هي احتمالية إصابة العامل نتيجة تعرضه لأمراض / عدوى أثناء تأدية هذه الوظيفة؟ الأمراض / العدوى (على سبيل المثال ، رعاية المرضى ، وبعض الأعمال المخبرية ، والتحكم في الصرف الصحي ، وما إلى ذلك)', 'What is the likelihood that the worker would be injured as a result of being exposed to diseases/infections while performing this job? Diseases/Infections (e.g., patient care, some laboratory work, sanitation control, etc.)', '', 'WC051', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(53, ' ظروف خطرة', '	Hazardous Conditions', 'ما هي احتمالية إصابة العامل نتيجة تعرضه لظروف خطرة أثناء قيامه بهذه الوظيفة؟ الظروف الخطرة (على سبيل المثال ، الكهرباء عالية الجهد ، والمواد القابلة للاحتراق ، والمتفجرات ، والمواد الكيميائية ؛ لا تشمل المعدات أو المواقف الخطرة)', 'What is the likelihood that the worker would be injured as a result of being exposed to hazardous conditions while performing this job? Hazardous Conditions (e.g., high voltage electricity, combustibles, explosives, chemicals; do not include hazardous equipment or situations)', '', 'WC052', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(54, ' المعدات الخطرة', '	Hazardous Equipment', 'ما هو احتمال إصابة العامل نتيجة تعرضه لمعدات خطرة أثناء أداء هذه الوظيفة؟ المعدات الخطرة (مثل المناشير والآلات / الأجزاء الميكانيكية تشمل التعرض لحركة مرور المركبات ، ولكن ليس قيادة السيارة)', 'What is the likelihood that the worker would be injured as a result of being exposed to hazardous equipment while performing this job? Hazardous Equipment (e.g., saws, machinery/mechanical parts include exposure to vehicular traffic, but not driving a vehicle)', '', 'WC053', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(55, ' المواقف الخطرة', '	Hazardous Situations', 'ما هو احتمال إصابة العامل نتيجة تعرضه لمواقف خطرة أثناء أداء هذه الوظيفة؟ المواقف الخطرة التي تتضمن احتمالية حدوث جروح أو لدغات أو لسعات أو حروق طفيفة', 'What is the likelihood that the worker would be injured as a result of being exposed to hazardous situations while performing this job? Hazardous Situations involving likely cuts, bites, stings, or minor burns', '', 'WC054', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(56, ' أماكن مرتفعه', '	High Places', 'ما هي احتمالية إصابة العامل نتيجة تعرضه لمراكز عالية أثناء قيامه بهذه الوظيفة؟ الأماكن المرتفعة (على سبيل المثال ، الارتفاعات التي تزيد عن 8 أقدام على السلالم والأعمدة والسقالات والمنصات وما إلى ذلك)', 'What is the likelihood that the worker would be injured as a result of being exposed to high places while performing this job? High Places (e.g., heights above 8 feet on ladders, poles, scaffolding, catwalks, etc.)', '', 'WC055', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(57, ' إشعاع', '	Radiation', 'ما هي احتمالية إصابة العامل نتيجة تعرضه للإشعاع أثناء قيامه بهذه الوظيفة؟', 'What is the likelihood that the worker would be injured as a result of being exposed to radiation while performing this job?', '', 'WC056', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(58, ' المعلومات الموضوعية أو الشخصية', '	Objective or Subjective Information', 'ما مدى موضوعية أو ذاتية المعلومات التي يتم توصيلها في هذه الوظيفة؟', 'How objective or subjective is the information communicated in this job?', '', 'WC057', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(59, ' المسؤولية عن النتائج والنتائج', '	Responsibility for Outcomes and Results', 'ما مدى مسؤولية العامل عن نتائج العمل ونتائج العمال الآخرين؟', 'How responsible is the worker for work outcomes and results of other workers?', '', 'WC058', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL),
(60, ' نتيجة الخطأ', '	Consequence of Error', 'ما مدى خطورة النتيجة عادة إذا ارتكب العامل خطأ لا يمكن تصحيحه بسهولة؟', 'How serious would the result usually be if the worker made a mistake that was not readily correctable?', '', 'WC059', '2023-09-13 13:46:14', '2023-09-13 13:46:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `work_contexts`
--
ALTER TABLE `work_contexts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `work_contexts`
--
ALTER TABLE `work_contexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
