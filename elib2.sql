-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2018 at 06:28 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elib`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE IF NOT EXISTS `tbl_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `pname` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `pyear` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `isbn` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `abstract` text COLLATE utf8_persian_ci,
  `logo` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `name`, `author`, `pname`, `pyear`, `cid`, `isbn`, `abstract`, `logo`, `pdf`) VALUES
(1006, 'استاتیک', '3', '2', 3, 2, '3', '', 'aid1430367-v4-728px-Learn-the-Basics-of-Programming-Step-1.jpg', ''),
(1004, 'پایگاه داده ها', 'سعید احسانی', 'کدنویسان', 1392, 1, '1111', 'در سیستم های کامپیوتری با دو مفهوم داده و اطلاع سروکار داریم . داده حقایق خام وبدون معنی وتفسیر است مثل :    75/19   و اطلاعات معنا وتفسیر داده هاست به عنوان مثال:   معدل=75/19\r\nداده های ذخیره  شده در پایگاه داده می تواند توسط کاربر یا برنامه خوانده شده و به دلخواه تفسیر شوند . در نتیجه هم مجموعه ای از داده ها هستند و هم مجموعه ای از اطلاعات پس می توان آنها را پایگاه داده ها یا بانک اطلاعاتی نامگذاری کرد.\r\n', '19381922-Beautiful-woman-is-clicking-on-touch-screen-to-choose-digital-photos-Stock-Photo.jpg', 'list.csv'),
(1005, 'برنامه نویسی پی اچ پی', 'احمد فرخی', 'کدنویسان', 1392, 1, '1111', 'برنامه نویسی کاربردی به زبان پی اچ پی', '5ccf5db0c58153666bddda7da223bcc8.jpg', 'سامانه همکاری برنامه ریزی دانشگاه - ابلاغ تدریس.pdf'),
(1007, 'برنامه نویسی سی شارپ', 'حمید', 'ناقوس', 1392, 1, '222', 'ویژوال سی شارپ دات نت  (Visual C#.NET) یک زبان برنامه نویسی شی گرا و قدرتمند است که توسط شرکت مایکروسافت ساخته شده و ترکیبی از قابلیتهای خوب C++ و Java را دارا می باشد. \r\nساختار این زبان نسبت به زبانهای دیگر بسیار آسان و قابل فهم تر است.در این زبان از کتابخانه کلاس دات نت که شامل مجموعه بزرگی از اجزا از قبل ساخته شده است استفاده می کند، این اجزا به ساخت هر چه سریعتر برنامه ها کمک می کنند.', '200_.png', ''),
(1008, 'طراحی به کمک کامپیوتر', 'رضا اسحاقی', 'کدنویسان', 1394, 1, '222', 'نوارهای ابزار به طور معمول شامل همان دستوراتی است که در داخل منو ها قرار دارند. هر دکمه درنوار ابزار دارای آیکونی است که کاربرد آنرا نشان می دهد. \r\nهر ابزار همانند یک میانبر عمل می کند. اگر در مورد عملکرد هر کدام از این دکمه ها شک داشتید می توانید با نشانگر موس بر روی آن مکث کوتاهی بکنید تا کاربرد آن به صورت یک پیام (tool tip) نشان داده شود.', '3248316-education-wallpapers.jpg', ''),
(1009, 'کتاب 1', 'علی', '12', 1396, 1, '2132', 'سیسیسیسی', '5-online-shopping.jpg', '21java-gui.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

DROP TABLE IF EXISTS `tbl_cat`;
CREATE TABLE IF NOT EXISTS `tbl_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`id`, `name`, `pid`) VALUES
(1, 'علوم کامپیوتر', 2),
(2, 'ساختمان ', 0),
(4, 'برنامه نویسی', 1),
(6, 'کشاورزی', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chap`
--

DROP TABLE IF EXISTS `tbl_chap`;
CREATE TABLE IF NOT EXISTS `tbl_chap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_persian_ci,
  `pdf` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_chap`
--

INSERT INTO `tbl_chap` (`id`, `name`, `bid`, `body`, `pdf`) VALUES
(1, 'مقدمات برنامه نویسی پی اچ پی', 1005, 'مقدمات برنامه نویسی پی اچ پی مقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پیمقدمات برنامه نویسی پی اچ پی', ''),
(2, 'دستورات و عملگرهای  محاسباتی ', 1005, 'دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی دستورات محاسباتی ', '200_.png'),
(3, 'ساختارهای شرطی و تکرار', 1005, 'ساختارهای شرطیساختارهای شرطیساختارهای شرطیساختارهای شرطیساختارهای شرطی', ''),
(5, 'سیستم های بانک اطلاعاتی', 1004, '\r\n1-1- پایگاه دادها\r\nدر سیستم های کامپیوتری با دو مفهوم داده و اطلاع سروکار داریم . داده حقایق خام وبدون معنی وتفسیر است مثل :    75/19   و اطلاعات معنا وتفسیر داده هاست به عنوان مثال:   معدل=75/19\r\nداده های ذخیره  شده در پایگاه داده می تواند توسط کاربر یا برنامه خوانده شده و به دلخواه تفسیر شوند . در نتیجه هم مجموعه ای از داده ها هستند و هم مجموعه ای از اطلاعات پس می توان آنها را پایگاه داده ها یا بانک اطلاعاتی نامگذاری کرد.\r\nپایگاه داده مجموعه ای از رکوردهای ذخیره شده به صورت سازماندهی شده شامل فایل ها و جداول....به طوری که عملیات زیر روی آنها قابل اجرا باشد:\r\n\r\n1-	ساخت،اصلاح،حذف فایل ها یا جداول\r\n2-	اضافه و حذف،ویرایش، بازیابی رکوردها \r\n\r\n1-2- دو روش برای مدیریت رکوردها ی اطلاعات \r\n\r\n1)روش فایلینگ (فایل پردازی):\r\nرکوردها در داخل فایل هایی ذخیره شده و با استفاده از امکانات زبان برنامه نویسی می توان آنها را مدیریت کرد .برای مدیریت هر فایل باید برنامه جداگانه(بخشی از برنامه)وجود داشته باشد. این برنامه خودشان ساختار داده ها را تعیین کرده، ایجاد می کنند و سپس روش هاییی برای دسترسی به داده ها استفاده می کنند که وابسته به نحوه سازماندهی داده هاست. به عنوان مثال در محیط دانشگاه ممکن است دو سیستم مختلف در اداره آموزش و امور دانشجویی استفاده شود که هر کدام مسئول ایجاد ساختارهای خاص خود و مدیریت داده های آنها است.\r\n', ''),
(6, 'تکنولوژی .NET و زبان برنامه نویسی C#', 1007, 'دات نت فریم ورک\r\n.NET Framework یک چارچوب است که توسط شرکت مایکروسافت برای توسعه انواع نرم افزارها مخصوصاً ویندوز طراحی شد..NET Frameworkهمچنین می‌تواند برای توسعه نرم افزارهای تحت وب مورد استفاده قرار بگیرد.تا کنون چندین نسخه از .NET Framework انتشار یافته که هر بار قابلیتهای جدیدی به آن اضافه شده است.\r\n.NET Framework شامل کتابخانه کلاس محیط کاری که در بر گیرنده کلاس ها، ساختارها،داده های شمارشی و…. میباشد. مهمترینقسمت.NET Framework زبان مشترک زمان اجرا (CLR) است که محیطی را فراهم می آورد که برنامه ها در آن اجرا شوند. این چارچوب ما را قادر می سازد که برنامه هایی که تحت آن نوشته شده اند اعم از C#.Net ، Visual Basic.Net و C++ را بهتر درک کنیم. \r\nکدهایی که تحت CLR و دات نت اجرا می شوند کدهای مدیریت شده نامیده می شوند چون CLR جنبه های مختلف نرم افزار را در زمان اجرا مدیریت می کند. در زمان کامپایل کدها به زبان مشترک میانی (CIL) که نزدیک و تقریبا شبیه به زبان اسمبلی است ترجمه می شوند. ما باید کدهایمان را به این زبان ترجمه کنیم چون فقط این زبان برای دات نت قابل فهم است.برای مثال کدهای C# و Visual Basic.Net هر دو به زبان مشترک میانی (CIL) ترجمه می شوند. به همین دلیل است که برنامه های مختلف در دات نت که با زبان های متفاوتی نوشته شده اند می توانند با هم ارتباط برقرار کنند. \r\nاگر یک زبان سازگار با دات نت می خواهید باید یک کامپایلر ایجاد کنید که کدهای شما را به زبان میانی ترجمه کند. کدهای ترجمه شده توسط CIL در یک فایل اسمبلی مانند .exe یا .dll ذخیره می شوند.این کامپایلر در لحظه فقط کدهایی را که برنامه در آن زمان نیاز دارد به زبان ماشین ترجمه می کند.\r\nدر زیر نحوه تبدیل کدهای سی شارپ به یک برنامه اجرایی به طور خلاصه آمده است :\r\n•	برنامه نویس برنامه خود را با یک زبان دات نت مانند سی شارپ می نویسد.\r\n•	کدهای سی شارپ به کدهای معادل آن در زبان میانی تبدیل می شوند.\r\n•	کدهای زبان میانی در یک فایل اسمبلی ذخیره می شوند.\r\n•	وقتی کدها اجرا می شوند کامپایلر JIT کدهای زبان میانی را در لحظه به کدهایی که برای کامپیوتر قابل خواندن باشند تبدیل می کند.\r\n1-2-ویژوال استودیو\r\nویژوال استودیو محیط توسعه یکپارچه ای است، که دارای ابزارهایی برای کمک به شما برای توسعه برنامه های سی شارپ ودات نت می باشد. شما میتوانیدیک برنامه سی شارپ را با استفاده از برنامه notepad یا هر برنامه ویرایشگر متن دیگر بنویسید و با استفاده از کامپایلر سی شارپ از آن استفاده کنید، اما این کار بسیار سخت است چون اگر برنامه شما دارای خطا باشد خطایابی آن سخت می شود. توجه کنید که کلمه ویژوال استودیو هم به ویژوال استودیو و هم به ویژوال سی شارپ اشاره دارد.\r\nتوصیه می کنیم که از محیط ویژوال استودیو برای ساخت برنامه استفاده کنید چون این محیط دارای ویژگی های زیادی برای کمک به شما جهت توسعه برنامه های سی شارپ می باشد.تعداد زیادی از پردازش ها که وقت شما را هدر می دهند به صورت خودکار توسط ویژوال استودیو انجام می شوند.یکی از این ویژگی ها اینتل لایسنس (Intellisense) است که شما را در تایپ سریع کدهایتان کمک میکند.یکی دیگر از ویژگی های اضافه شده break point  است که به شما اجازه می دهد در طول اجرای برنامه مقادیر موجود در متغیرها را چک کنید.ویژوال استودیو برنامه شما را خطایابی می کند و حتی خطاهای کوچک (مانند بزرگ یا کوچک نوشتن حروف) را برطرف می کند ،همچنین دارای ابزارهای طراحی برای ساخت یک رابط گرافیکی است که بدون ویژوال استودیو برای ساخت همچین رابط گرافیکی باید کدهای زیادی نوشت.با این برنامه های قدرتمند بازدهی شما افزایش می یابد و در وقت شما با وجود این ویژگیهای شگفت انگیز صرفه جویی می شود. در حال حاضر آخرین نسخه ویژوال استودیو Visual Studio 2015 بوده که دارای زبان های زیر می باشد:\r\n-	ویژوال سی شارپ دات نت(Visual C#.NET)\r\n-	ویژوال بیسک دات نت (Visual Basic.NET)\r\n-	ویژوال سی پلاس پلاس دات نت (Visual C++.NET)\r\n-	ویژوال اف شارپ دات نت(Visual F#.NET)\r\n\r\n', ''),
(7, ' محیط توسعه یکپارچه ویژوال استودیو', 1007, '-\r\nدر این بخش می خواهیم قسمت های مهمتر محیط ویژوال سی شارپ را بررسی کنیم:\r\n1-4-1-صفحه آغازین (START PAGE)\r\nبطور پیش فرض هنگام ورود به محیط ویؤال استدیو، ابتدا این صفحه نمایش داده می شود. برای ایجاد یک پروژه و باز کردن آن از این قسمت استفاده می شود. همچنین اگر از قبل پروژه ای ایجاد کرده اید می توانید آن را در Recent Projectsمشاهده و اجرا کنید. \r\n1-4-2-منو بار (Menu Bar)\r\nمنو بارکه شامل منوهای مختلفی برای ساخت، توسعه، نگهداری، خطایابی و اجای برنامه ها است.با کلیک بر روی هر منو دیگر منوهای وابسته به آن ظاهر می شوند.به این نکته توجه کنید که منوبار دارای آیتم های مختلفی است که فقط در شرایط خاصی ظاهر می شوند.به عنوان مثال آیتم های منوی Project در صورتی نشان داده خواهند شد که پروژه فعال باشد. در زیر برخی از ویژگیهای منوها آمده است :\r\nمنو	توضیح\r\nFile	شامل دستوراتی برای ساخت پروژه یا فایل، باز کردن و ذخیره پروژه ها و خروج از آنها می باشد\r\nEdit	شامل دستوراتی جهت ویرایش از قبیل کپی کردن، جایگزینی و پیدا کردن یک مورد خاص می باشد\r\nView	به شما اجازه می دهد تا پنجره های بیشتری باز کرده و یا به آیتم های toolbar آیتمی اضافه کنید.\r\nProject	شامل دستوراتی در مورد پروژه ای است که شما بر روی آن کار می کنید.\r\nDebug	به شما اجازه کامپایل ، اشکال زدایی و اجرای برنامه را می دهد\r\nData	شامل دستوراتی برای اتصال به دیتابس ها می باشد.\r\nFormat	شامل دستوراتی جهت مرتب کردن اجزای گرافیکی در محیط گرافیکی برنامه می باشد.\r\nTools	شامل ابزارهای مختلف، تنظیمات و … برای ویژوال سی شارپ و ویژوال استودیو میباشد.\r\nWindow	به شما اجازه تنظیمات ظاهری پنجره ها را می دهد.\r\nHelp	شامل اطلاعاتی در مورد برنامه ویژوال استودیو می باشد\r\n1-4-3-نوارهای ابزار (TOOLBARS)\r\nنوارهای ابزار به طور معمول شامل همان دستوراتی است که در داخل منو ها قرار دارند. هر دکمه درنوار ابزار دارای آیکونی است که کاربرد آنرا نشان می دهد. هر ابزار همانند یک میانبر عمل می کند. اگر در مورد عملکرد هر کدام از این دکمه ها شک داشتید می توانید با نشانگر موس بر روی آن مکث کوتاهی بکنید تا کاربرد آن به صورت یک پیام (tool tip) نشان داده شود.\r\n', ''),
(8, 'برنامه نویسی پی اچ پی بر اساس mvc', 1005, 'MVC یک چارچوب برای برنامه نویسی شی گرا و چندلایه با زبان های برنامه نویسی مختلف از جمله PHP است . با استفاده از چارچوب MVC می توانید بخش های مختلف برنامه کاربردی بر اساس PHP را از هم جدا کرده و براحتی پروژه های مختلف را به صورت تیمی پیاده سازی کنید.\r\n\r\nMVC در ابتدا در سال ۱۹۷۰ برای استفاده در زبان smalltalk  ارائه شده و به علت زیبایی و کارآیی فوق العاده آن، امروزه در زبان های برنامه نویسی دیگر از جمله سی شارپ و PHP استفاده می شود.\r\n\r\nچارچوب MVC به شما اجازه می دهد تا حدودی برنامه نویسی PHP را بصورت سه لایه انجام دهید. لایه رابط کاربر، لایه بانک اطلاعاتی و لایه پردازش یا کاربرد. با این تقسیم بندی فعالیت های مختلف توسعه برنامه شامل طراحی رابط کاربر ، طراحی و برنامه نویسی ارتباط با بانک اطلاعاتی و طراحی و پیاده سازی منطق برنامه از هم جدا شده و به صورت مستقل توسط افراد مختلف انجام شوند و این استقلال سه بخش برنامه مزیت های بسیار زیادی از جمله طراحی و برنامه نویسی راحت تر، اشکال یابی سریعتر، انجام اصلاحات بصورت سریعتر و … دارد.\r\n\r\nعلاوه چارچوب MVC ساختار پروژه یا وب سایت را به صورت دقیق تعیین کرده و یک ساختار کلی برای زیرپوشه های وب سایت پیشنهاد می کند. این چارچوب دقیقاً محتوای هر زیر پوشه و حتی قاعده کلی برای نامگذاری فایل های داخل هر زیر پوشه را تعیین می کند. با استفاده از چارچوب MVC ناچاریم بصورت قاعده مند عمل کرده و  از نامگذاری های نامانوس و سازماندهی به هم ریخته و سلیقه ای فایل ها پرهیز کنیم.\r\n\r\nسخت گیری MVC در نامگذاری و تعیین ساختار وب سایت نتیجه بسیار جالبیدارد و آن حذف تمام قطعه کدهای تکراری در برنامه نویسی سایت (تاکید می کنم حذف تمام کدهای تکراری!) خواهد بود. با استفاده از MVC هر کد را تنها یک بار می نویسید و آن را برای موقعیت های مختلف اجرا می کنید.', '5-online-shopping.jpg'),
(9, 'برنامه نویسی پی اچ پی بر اساس mvc', 1005, 'MVC یک چارچوب برای برنامه نویسی شی گرا و چندلایه با زبان های برنامه نویسی مختلف از جمله PHP است . با استفاده از چارچوب MVC می توانید بخش های مختلف برنامه کاربردی بر اساس PHP را از هم جدا کرده و براحتی پروژه های مختلف را به صورت تیمی پیاده سازی کنید.\r\n\r\nMVC در ابتدا در سال ۱۹۷۰ برای استفاده در زبان smalltalk  ارائه شده و به علت زیبایی و کارآیی فوق العاده آن، امروزه در زبان های برنامه نویسی دیگر از جمله سی شارپ و PHP استفاده می شود.\r\n\r\nچارچوب MVC به شما اجازه می دهد تا حدودی برنامه نویسی PHP را بصورت سه لایه انجام دهید. لایه رابط کاربر، لایه بانک اطلاعاتی و لایه پردازش یا کاربرد. با این تقسیم بندی فعالیت های مختلف توسعه برنامه شامل طراحی رابط کاربر ، طراحی و برنامه نویسی ارتباط با بانک اطلاعاتی و طراحی و پیاده سازی منطق برنامه از هم جدا شده و به صورت مستقل توسط افراد مختلف انجام شوند و این استقلال سه بخش برنامه مزیت های بسیار زیادی از جمله طراحی و برنامه نویسی راحت تر، اشکال یابی سریعتر، انجام اصلاحات بصورت سریعتر و … دارد.\r\n\r\nعلاوه چارچوب MVC ساختار پروژه یا وب سایت را به صورت دقیق تعیین کرده و یک ساختار کلی برای زیرپوشه های وب سایت پیشنهاد می کند. این چارچوب دقیقاً محتوای هر زیر پوشه و حتی قاعده کلی برای نامگذاری فایل های داخل هر زیر پوشه را تعیین می کند. با استفاده از چارچوب MVC ناچاریم بصورت قاعده مند عمل کرده و  از نامگذاری های نامانوس و سازماندهی به هم ریخته و سلیقه ای فایل ها پرهیز کنیم.\r\n\r\nسخت گیری MVC در نامگذاری و تعیین ساختار وب سایت نتیجه بسیار جالبیدارد و آن حذف تمام قطعه کدهای تکراری در برنامه نویسی سایت (تاکید می کنم حذف تمام کدهای تکراری!) خواهد بود. با استفاده از MVC هر کد را تنها یک بار می نویسید و آن را برای موقعیت های مختلف اجرا می کنید.', '5-online-shopping.jpg'),
(10, 'برنامه نویسی php بر اساس mvc', 1005, 'MVC یک چارچوب برای برنامه نویسی شی گرا و چندلایه با زبان های برنامه نویسی مختلف از جمله PHP است . با استفاده از چارچوب MVC می توانید بخش های مختلف برنامه کاربردی بر اساس PHP را از هم جدا کرده و براحتی پروژه های مختلف را به صورت تیمی پیاده سازی کنید.\r\n\r\nMVC در ابتدا در سال ۱۹۷۰ برای استفاده در زبان smalltalk  ارائه شده و به علت زیبایی و کارآیی فوق العاده آن، امروزه در زبان های برنامه نویسی دیگر از جمله سی شارپ و PHP استفاده می شود.\r\n\r\nچارچوب MVC به شما اجازه می دهد تا حدودی برنامه نویسی PHP را بصورت سه لایه انجام دهید. لایه رابط کاربر، لایه بانک اطلاعاتی و لایه پردازش یا کاربرد. با این تقسیم بندی فعالیت های مختلف توسعه برنامه شامل طراحی رابط کاربر ، طراحی و برنامه نویسی ارتباط با بانک اطلاعاتی و طراحی و پیاده سازی منطق برنامه از هم جدا شده و به صورت مستقل توسط افراد مختلف انجام شوند و این استقلال سه بخش برنامه مزیت های بسیار زیادی از جمله طراحی و برنامه نویسی راحت تر، اشکال یابی سریعتر، انجام اصلاحات بصورت سریعتر و … دارد.\r\n\r\nعلاوه چارچوب MVC ساختار پروژه یا وب سایت را به صورت دقیق تعیین کرده و یک ساختار کلی برای زیرپوشه های وب سایت پیشنهاد می کند. این چارچوب دقیقاً محتوای هر زیر پوشه و حتی قاعده کلی برای نامگذاری فایل های داخل هر زیر پوشه را تعیین می کند. با استفاده از چارچوب MVC ناچاریم بصورت قاعده مند عمل کرده و  از نامگذاری های نامانوس و سازماندهی به هم ریخته و سلیقه ای فایل ها پرهیز کنیم.\r\n\r\nسخت گیری MVC در نامگذاری و تعیین ساختار وب سایت نتیجه بسیار جالبیدارد و آن حذف تمام قطعه کدهای تکراری در برنامه نویسی سایت (تاکید می کنم حذف تمام کدهای تکراری!) خواهد بود. با استفاده از MVC هر کد را تنها یک بار می نویسید و آن را برای موقعیت های مختلف اجرا می کنید.', '200_.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `uname` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `upass` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `utype` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `uname`, `upass`, `utype`) VALUES
(10, 'رضا', 'admin', '123', 3),
(11, 'علی', 'user2', '123', 1),
(12, 'سارا حمیدی', 'sarah', '1234', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
