-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 04:57 PM
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
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'ثبات اليد والذراع', 'Arm-Hand Steadiness', 'القدرة على الحفاظ على ثبات اليد والذراع أثناء القيام بحركة الذراع أو أثناء الإمساك بالذراع واليد في وضع واحد', 'The ability to keep the hand and arm steady while making an arm movement or while holding the arm and hand in one position', 'AB001', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(4, 'الانتباه السمعي', 'Auditory Attention', 'القدرة على التركيز على مصدر واحد للمعلومات السمعية في وجود أصوات مشتتة أخرى', 'The ability to focus on a single source of auditory (hearing) information in the presence of other distracting sounds', 'AB002', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(5, 'مرونة الفئة', 'Category Flexibility', 'القدرة على إنتاج العديد من القواعد بحيث تخبر كل قاعدة كيفية تجميع (أو دمج) مجموعة من الأشياء بطريقة مختلفة', 'The ability to produce many rules so that each rule tells how to group (or combine) a set of things in a different way', 'AB003', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(6, 'دقة التحكم', 'Control Precision', 'القدرة على إجراء تعديلات دقيقة بسرعة وبشكل متكرر في تحريك أدوات التحكم في الماكينة أو المركبة إلى المواضع الدقيقة', 'The ability to quickly and repeatedly make precise adjustments in moving the controls of a machine or vehicle to exact positions', 'AB004', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(7, 'المنطق الاستنتاجي', 'Deductive Reasoning', 'القدرة على تطبيق القواعد العامة على مشاكل محددة للتوصل إلى إجابات منطقية. إنه ينطوي على تحديد ما إذا كانت الإجابة منطقية', 'The ability to apply general rules to specific problems to come up with logical answers.  It involves deciding if an answer makes sense', 'AB005', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(8, 'تصور العمق', 'Depth Perception', 'القدرة على الحكم على أي من عدة أشياء هو أقرب أو أبعد من المراقب ، أو الحكم على المسافة بين كائن والمراقب', 'The ability to judge which of several objects is closer or farther away from the observer, or to judge the distance between an object and the observer', 'AB006', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(9, 'المرونة الديناميكية', 'Dynamic Flexibility', 'القدرة على الانحناء أو التمدد أو الالتواء أو مد الجسم أو الذراعين أو الساقين بسرعة وبشكل متكرر', 'The ability to quickly and repeatedly bend, stretch, twist, or reach out with the body, arms, and/or legs', 'AB007', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(10, 'القوة الديناميكية', 'Dynamic Strength', 'القدرة على ممارسة القوة العضلية بشكل متكرر أو مستمر بمرور الوقت. يتضمن هذا التحمل العضلي ومقاومة إجهاد العضلات', 'The ability to exert muscle force repeatedly or continuously over time.  This involves muscular endurance and resistance to muscle fatigue', 'AB008', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(11, 'القوة المتفجرة', 'Explosive Strength', 'القدرة على استخدام دفعات قصيرة من القوة العضلية لدفع النفس (كما في القفز أو الركض السريع) ، أو رمي شيء ما', 'The ability to use short bursts of muscle force to propel oneself (as in jumping or sprinting), or to throw an object', 'AB009', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(12, 'مدى المرونة', 'Extent Flexibility', 'القدرة على الانحناء أو التمدد أو الالتواء أو الوصول إلى الجسم والذراعين و / أو الساقين', 'The ability to bend, stretch, twist, or reach out with the body, arms, and/or legs', 'AB010', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(13, 'رؤية بعيدة', 'Far Vision', 'القدرة على رؤية التفاصيل عن بعد', 'The ability to see details at a distance', 'AB011', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(14, 'براعة الاصبع', 'Finger Dexterity', 'القدرة على القيام بحركات منسقة بدقة لأصابع إحدى اليدين أو كلتيهما لإمساك الأشياء الصغيرة جدًا أو معالجتها أو تجميعها', 'The ability to make precisely coordinated movements of the fingers of one or both hands to grasp, manipulate, or assemble very small objects', 'AB012', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(15, 'مرونة الإغلاق', 'Flexibility of Closure', 'القدرة على تحديد أو اكتشاف نمط معروف (شكل أو كائن أو كلمة أو صوت) مخفي في مادة أخرى مشتتة للانتباه', 'The ability to identify or detect a known pattern (a figure, object, word, or sound) that is hidden in other distracting material', 'AB013', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(16, 'طلاقة الأفكار', 'Fluency of Ideas', 'القدرة على ابتكار عدد من الأفكار حول موضوع معين. يتعلق الأمر بعدد الأفكار المنتجة وليس جودة الأفكار أو صحتها أو إبداعها', 'The ability to come up with a number of ideas about a given topic.  It concerns the number of ideas produced and not the quality, correctness, or creativity of the ideas', 'AB014', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(17, 'حساسية الوهج', 'Glare Sensitivity', 'القدرة على رؤية الأشياء في وجود وهج أو إضاءة ساطعة', 'The ability to see objects in the presence of glare or bright lighting', 'AB015', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(18, 'تنسيق الجسم الإجمالي', 'Gross Body Coordination', 'القدرة على تنسيق حركة الذراعين والساقين والجذع معًا في الأنشطة التي يتحرك فيها الجسم بالكامل', 'The ability to coordinate the movement of the arms, legs, and torso together in activities where the whole body is in motion', 'AB016', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(19, 'توازن الجسم الإجمالي', 'Gross Body Equilibrium', 'القدرة على الحفاظ على توازن الجسم أو استعادته أو البقاء منتصبًا عندما يكون في وضع غير مستقر', 'The ability to keep or regain one\'s body balance or stay upright when in an unstable position', 'AB017', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(20, 'حساسية السمع', 'Hearing Sensitivity', 'القدرة على اكتشاف أو التمييز بين الأصوات التي تختلف في نطاقات واسعة من درجة الصوت والجهارة', 'The ability to detect or tell the difference between sounds that vary over broad ranges of pitch and loudness', 'AB018', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(21, 'الاستدلال الاستقرائي', 'Inductive Reasoning', 'القدرة على الجمع بين أجزاء منفصلة من المعلومات ، أو إجابات محددة على المشاكل ، لتشكيل قواعد عامة أو استنتاجات. يتضمن الخروج بتفسير منطقي لسبب حدوث سلسلة من الأحداث التي تبدو غير مرتبطة معًا', 'The ability to combine separate pieces of information, or specific answers to problems, to form general rules or conclusions.  It includes coming up with a logical explanation for why a serie', 'AB019', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(22, 'ترتيب المعلومات', 'Information Ordering', 'القدرة على اتباع قاعدة معينة أو مجموعة من القواعد بشكل صحيح من أجل ترتيب الأشياء أو الإجراءات في ترتيب معين. يمكن أن تتضمن الأشياء أو الإجراءات الأرقام والحروف والكلمات والصور والإجراءات والج', 'The ability to correctly follow a given rule or set of rules in order to arrange things or actions in a certain order.  The things or actions can include numbers, letters, words, pictures, pr', 'AB020', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(23, 'البراعة اليدوية', 'Manual Dexterity', 'القدرة على إجراء حركات منسقة بسرعة من يد واحدة ، أو يد مع ذراعها ، أو يدان لإمساك الأشياء أو معالجتها أو تجميعها', 'The ability to quickly make coordinated movements of one hand, a hand together with its arm, or two hands to grasp, manipulate, or assemble objects', 'AB021', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(24, 'المنطق الرياضي', 'Mathematical Reasoning', 'القدرة على فهم وتنظيم مشكلة ثم اختيار طريقة أو صيغة رياضية لحل المشكلة', 'The ability to understand and organize a problem and then to select a mathematical method or formula to solve the problem', 'AB022', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(25, 'حفظ', 'Memorization', 'القدرة على تذكر المعلومات مثل الكلمات والأرقام والصور والإجراءات', 'The ability to remember information such as words, numbers, pictures, and procedures', 'AB023', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(26, 'تنسيق Multilimb', 'Multilimb Coordination', 'القدرة على تنسيق حركات طرفين أو أكثر معًا (على سبيل المثال ، ذراعان أو ساقان أو ساق واحدة وذراع واحد) أثناء الجلوس أو الوقوف أو الاستلقاء. لا يتضمن القيام بالأنشطة أثناء حركة الجسم', 'The ability to coordinate movements of two or more limbs together (for example, two arms, two legs, or one leg and one arm) while sitting, standing, or lying down.  It does not involve perfor', 'AB024', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(27, 'نظرة قريبة', 'Near Vision', 'القدرة على رؤية تفاصيل الأشياء من مسافة قريبة (على بعد أقدام قليلة من المراقب)', 'The ability to see details of objects at a close range (within a few feet of the observer)', 'AB025', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(28, 'الرؤية الليلية', 'Night Vision', 'القدرة على الرؤية تحت ظروف الإضاءة المنخفضة', 'The ability to see under low light conditions', 'AB026', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(29, 'مرفق الرقم', 'Number Facility', 'القدرة على الجمع أو الطرح أو الضرب أو القسمة بسرعة وبشكل صحيح', 'The ability to add, subtract, multiply, or divide quickly and correctly', 'AB027', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(30, 'الفهم عن طريق الفم', 'Oral Comprehension', 'القدرة على الاستماع إلى المعلومات والأفكار المقدمة من خلال الكلمات والجمل المنطوقة وفهمها', 'The ability to listen to and understand information and ideas presented through spoken words and sentences', 'AB028', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(31, 'تعبير شفهي', 'Oral Expression', 'القدرة على إيصال المعلومات والأفكار أثناء التحدث حتى يفهمها الآخرون', 'The ability to communicate information and ideas in speaking so others will understand', 'AB029', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(32, 'أصالة', 'Originality', 'القدرة على ابتكار أفكار غير عادية أو ذكية حول موضوع أو موقف معين ، أو تطوير طرق إبداعية لحل مشكلة ما', 'The ability to come up with unusual or clever ideas about a given topic or situation, or to develop creative ways to solve a problem', 'AB030', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(33, 'سرعة الإدراك الحسي', 'Perceptual Speed', 'القدرة على مقارنة الحروف والأرقام والأشياء والصور والأنماط بسرعة ودقة. الأشياء المراد مقارنتها يمكن تقديمها في نفس الوقت أو واحدة تلو الأخرى. تتضمن هذه القدرة أيضًا مقارنة كائن معروض بجسم ما ', 'The ability to quickly and accurately compare letters, numbers, objects, pictures, or patterns.  The things to be compared may be presented at the same time or one after the other.  This abil', 'AB031', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(34, 'الرؤية المحيطية', 'Peripheral Vision', 'القدرة على رؤية الأشياء أو تحريك الأشياء إلى جانب الشخص عندما تتركز العينان إلى الأمام', 'The ability to see objects or movement of objects to one\'s side when the eyes are focused forward', 'AB032', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(35, 'حساسية المشكلة', 'Problem Sensitivity', 'القدرة على معرفة ما إذا كان هناك خطأ ما أو من المحتمل أن يحدث خطأ. لا يتضمن حل المشكلة ، فقط الاعتراف بوجود مشكلة', 'The ability to tell when something is wrong or is likely to go wrong.  It does not involve solving the problem, only recognizing there is a problem', 'AB033', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(36, 'معدل السيطرة', 'Rate Control', 'القدرة على ضبط توقيت تعديلات الحركة أو التحكم في المعدات تحسبًا للتغييرات في سرعة و / أو اتجاه كائن أو مشهد متحرك باستمرار', 'The ability to time the adjustments of a movement or equipment control in anticipation of changes in the speed and/or direction of a continuously moving object or scene', 'AB034', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(37, 'وقت رد الفعل', 'Reaction Time', 'القدرة على الاستجابة بسرعة (باليد أو الإصبع أو القدم) لإشارة واحدة (صوت ، ضوء ، صورة ، إلخ) عند ظهورها', 'The ability to quickly respond (with the hand, finger, or foot) to one signal (sound, light, picture, etc.) when it appears', 'AB035', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(38, 'اتجاه الاستجابة', 'Response Orientation', 'القدرة على الاختيار بسرعة وبشكل صحيح بين حركتين أو أكثر استجابة لإشارتين أو أكثر (أضواء ، أصوات ، صور ، إلخ). يتضمن السرعة التي تبدأ بها الاستجابة الصحيحة باليد أو القدم أو أجزاء أخرى من الجس', 'The ability to choose quickly and correctly between two or more movements in response to two or more signals (lights, sounds, pictures, etc.).  It includes the speed with which the correct re', 'AB036', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(39, 'الاهتمام الانتقائي', 'Selective Attention', 'القدرة على التركيز وعدم تشتيت الانتباه أثناء أداء مهمة ما خلال فترة زمنية', 'The ability to concentrate and not be distracted while performing a task over a period of time', 'AB037', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(40, 'توطين الصوت', 'Sound Localization', 'القدرة على معرفة الاتجاه الذي نشأ منه الصوت', 'The ability to tell the direction from which a sound originated', 'AB038', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(41, 'التوجه المكاني', 'Spatial Orientation', 'القدرة على معرفة موقع الشخص فيما يتعلق بالبيئة ، أو معرفة مكان وجود الأشياء الأخرى فيما يتعلق بذاته', 'The ability to know one\'s location in relation to the environment, or to know where other objects are in relation to one\'s self', 'AB039', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(42, 'وضوح الكلام', 'Speech Clarity', 'القدرة على التحدث بوضوح بحيث يكون مفهوماً للمستمع', 'The ability to speak clearly so that it is understandable to a listener', 'AB040', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(43, 'التعرف على الكلام', 'Speech Recognition', 'القدرة على تحديد وفهم كلام شخص آخر', 'The ability to identify and understand the speech of another person', 'AB041', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(44, 'سرعة الإغلاق', 'Speed of Closure', 'القدرة على فهم المعلومات التي تبدو بلا معنى أو تنظيم بسرعة. إنه ينطوي على دمج وتنظيم أجزاء مختلفة من المعلومات بسرعة في نمط ذي مغزى', 'The ability to quickly make sense of information that seems to be without meaning or organization.  It involves quickly combining and organizing different pieces of information into a meaning', 'AB042', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(45, 'سرعة حركة الأطراف', 'Speed of Limb Movement', 'القدرة على تحريك الذراعين أو الساقين بسرعة', 'The ability to quickly move the arms or legs', 'AB043', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(46, 'قوة تحمل', 'Stamina', 'القدرة على بذل مجهود جسدي على مدى فترات طويلة من الزمن دون أن ينفد أو ينفث', 'The ability to exert one\'s self physically over long periods of time without getting winded or out of breath', 'AB044', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(47, 'قوة ثابتة', 'Static Strength', 'القدرة على ممارسة أقصى قوة عضلية لرفع أو دفع أو سحب أو حمل الأشياء', 'The ability to exert maximum muscle force to lift, push, pull, or carry objects', 'AB045', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(48, 'وقت المشاركة', 'Time Sharing', 'القدرة على الانتقال بكفاءة ذهابًا وإيابًا بين نشاطين أو أكثر أو مصادر المعلومات (مثل الكلام أو الأصوات أو اللمس أو مصادر أخرى)', 'The ability to efficiently shift back and forth between two or more activities or sources of information (such as speech, sounds, touch, or other sources)', 'AB046', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(49, 'قوة الجذع', 'Trunk Strength', 'القدرة على استخدام عضلات البطن وأسفل الظهر لدعم جزء من الجسم بشكل متكرر أو مستمر بمرور الوقت دون \"الاستسلام\" أو التعب', 'The ability to use one\'s abdominal and lower back muscles to support part of the body repeatedly or continuously over time without \"giving out\" or fatiguing', 'AB047', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(50, 'تمييز اللون المرئي', 'Visual Color Discrimination', 'القدرة على مطابقة أو اكتشاف الاختلافات بين الألوان ، بما في ذلك ظلال اللون والسطوع', 'The ability to match or detect differences between colors, including shades of color and brightness', 'AB048', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(51, 'التصور', 'Visualization', 'القدرة على تخيل كيف سيبدو شيء ما بعد تحريكه أو عند تحريك أجزائه أو إعادة ترتيبها', 'The ability to imagine how something will look after it is moved around or when its parts are moved or rearranged', 'AB049', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(52, 'سرعة المعصم الاصبع', 'Wrist-Finger Speed', 'القدرة على القيام بحركات سريعة وبسيطة ومتكررة للأصابع واليدين والمعصمين', 'The ability to make fast, simple, repeated movements of the fingers, hands, and wrists', 'AB050', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(53, 'الفهم الكتابي', 'Written Comprehension', 'القدرة على قراءة وفهم المعلومات والأفكار المقدمة كتابة', 'The ability to read and understand information and ideas presented in writing', 'AB051', NULL, '2023-09-08 19:55:10', '2023-09-08 19:55:10'),
(54, 'تعبير كتابي', 'Written Expression', 'القدرة على إيصال المعلومات والأفكار كتابةً حتى يفهمها الآخرون', 'The ability to communicate information and ideas in writing so others will understand', 'AB052', NULL, '2023-09-08 19:55:10', '2023-09-08 20:13:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
