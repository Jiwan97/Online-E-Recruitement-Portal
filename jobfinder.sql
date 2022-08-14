-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 02:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `username`, `firstname`, `lastname`, `phone`, `email`, `profile_pic`, `created_date`, `user_id`) VALUES
(1, 'Jiwan', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-14 20:32:28.480726', 1),
(2, '190288', 'CAMERONZ', 'BLANCHARDa', '9822060698', 'jiwan6thapa@gmail.com', 'static/uploads/150101294_837710437075729_3575903778002551348_o.jpg', '2021-04-14 20:32:49.741187', 2),
(3, 'jiwan3', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-17 06:18:59.164004', 5),
(4, 'jjjjjjjjj', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-17 06:53:56.844840', 7),
(5, 'jjjjjjjjjj', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-17 06:54:26.968802', 8),
(6, 'jjjjjjjjjjjjjjjj', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-17 06:55:31.885967', 9),
(7, 'jjjjjjjjjjjjjjj', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-17 06:55:49.814365', 10),
(8, 'ffffffffff', NULL, NULL, NULL, 'jiwan6thapa@gmail.com', 'static/images/8.png', '2021-04-17 14:29:46.568931', 14),
(9, 'jiwan22', NULL, NULL, NULL, 'jiwan6thapa@gmail.com', 'static/images/8.png', '2021-04-17 15:42:20.542195', 15),
(10, '999972', 'CAMer', 'BLANCHARDaaaa', '9822060698', 'jiwan6thapa@gmail.com', 'static/uploads/Digital_Animator_1200x630-1503546170318.jpg', '2021-04-19 14:19:35.990705', 16),
(11, NULL, 'CAMERONZ', 'BLANCHARD', '9822060698', 'jiwan6thapa@gmail.comsd', 'static/images/8.png', '2021-04-19 15:13:24.218571', NULL),
(12, NULL, 'CAMERONZ', 'BLANCHARD', '9822060698', 'jiwan6thapa@gmail.comsasad', 'static/images/8.png', '2021-04-19 15:13:29.872995', NULL),
(13, NULL, 'CAMERONZ', 'BLANCHARD', '9822060698', 'jiwan6thapa@gmail.comsasdada', 'static/images/8.png', '2021-04-19 15:13:32.918498', NULL),
(14, NULL, 'CAMERONZ', 'BLANCHARDa', '9822060698asda', 'jiwan6thapa@gmail.coms', 'static/images/8.png', '2021-04-19 15:13:38.678611', NULL),
(15, NULL, 'CAMERONZ', 'BLANCHARDaa', '9822060698', 'jiwan6thapa@gmail.coms', 'static/images/8.png', '2021-04-19 15:14:20.254022', NULL),
(16, NULL, 'CAMERONZ', 'BLANCHARDaaaa', '9822060698', 'jiwan6thapa@gmail.com', 'static/images/8.png', '2021-04-19 15:14:25.658411', NULL),
(17, NULL, 'CAMERONZ', 'BLANCHARDaaaa', '9822060698', 'jiwan6thapa@gmail.com', 'static/images/8.png', '2021-04-19 15:14:36.997298', NULL),
(18, 'jiwan6thapa@gmail.com', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-20 15:46:46.940251', 17),
(19, 'JiwanT97', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-20 15:54:03.769747', 18),
(20, 'JiwanT971', 'CAMERONZ', 'BLANCHARD', '9822060698', 'jiwan6thapa@gmail.com', 'static/uploads/Profile.jpg', '2021-04-20 16:16:28.367881', 19),
(21, 'JT97', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-20 16:32:01.982008', 20),
(22, 'Abhi', NULL, NULL, NULL, NULL, 'static/images/8.png', '2021-04-20 17:03:18.614763', 21);

-- --------------------------------------------------------

--
-- Table structure for table `admins_vacancy`
--

CREATE TABLE `admins_vacancy` (
  `id` int(11) NOT NULL,
  `job` varchar(200) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `totalVacancy` int(11) NOT NULL,
  `features` varchar(1000) NOT NULL,
  `pic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins_vacancy`
--

INSERT INTO `admins_vacancy` (`id`, `job`, `salary`, `totalVacancy`, `features`, `pic`) VALUES
(12, 'Doctor', 20000, 10, 'sadasdas', 'static/useruploads/photo-1505751172876-fa1923c5c528.jfif'),
(13, 'Teacher', 10000, 15, 'sadadas', 'static/useruploads/new_teacher.jpeg'),
(14, 'Content Writer', 12000, 5, 'asdasda', 'static/useruploads/1_EioSQpM0_jj-VeOPpcNubw.jpeg'),
(15, '2D animator', 15000, 9, 'asdasda', 'static/useruploads/Digital_Animator_1200x630-1503546170318.jpg'),
(16, 'Front End Developer', 17000, 14, 'asdasdas', 'static/useruploads/CT9xCjqrhnPD4ivB6B8Hqe.jpg'),
(17, 'Computer Engineer', 100000, 20, 'asdasda', 'static/useruploads/ComputerScience_header4-min.jpg'),
(21, 'Accountant', 10000, 20, 'sadasda', 'static/useruploads/accountant-filing-invoice-500x333_miPqbTH.jpg'),
(22, 'Security Guard', 40000, 10, 'asdfasdas', 'static/useruploads/ComputerScience_header4-min_iPkphtr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admins_vacancyform`
--

CREATE TABLE `admins_vacancyform` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `cv` varchar(100) DEFAULT NULL,
  `citizenship` varchar(100) DEFAULT NULL,
  `qualification` varchar(1000) NOT NULL,
  `applied` tinyint(1) NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `response` varchar(1000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vacancy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins_vacancyform`
--

INSERT INTO `admins_vacancyform` (`id`, `name`, `dob`, `cv`, `citizenship`, `qualification`, `applied`, `seen`, `response`, `user_id`, `vacancy_id`) VALUES
(10, 'Jiwan Thapa', '07/05/1988', 'static/useruploads/CV_x0UMuBN.docx', 'static/usercitizen/Citizenship_NSLVc02.jpg', 'anything', 1, 1, 'asdada', 19, 17),
(11, 'Jiwan Thapa', '07/05/1988', 'static/useruploads/CV_Th6LxJe.docx', 'static/usercitizen/Citizenship_kOirvvP.jpg', 'anythingg here', 1, 1, 'asdasda', 20, 13),
(12, 'Jiwan Thapa', '07/05/1988', 'static/useruploads/CV_MbshPCn.docx', 'static/usercitizen/Citizenship_q4U2iTl.jpg', 'sadadaasdas', 1, 1, 'asdasdas', 21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add message', 8, 'add_message'),
(30, 'Can change message', 8, 'change_message'),
(31, 'Can delete message', 8, 'delete_message'),
(32, 'Can view message', 8, 'view_message'),
(33, 'Can add vacancy', 9, 'add_vacancy'),
(34, 'Can change vacancy', 9, 'change_vacancy'),
(35, 'Can delete vacancy', 9, 'delete_vacancy'),
(36, 'Can view vacancy', 9, 'view_vacancy'),
(37, 'Can add vacancy form', 10, 'add_vacancyform'),
(38, 'Can change vacancy form', 10, 'change_vacancyform'),
(39, 'Can delete vacancy form', 10, 'delete_vacancyform'),
(40, 'Can view vacancy form', 10, 'view_vacancyform'),
(41, 'Can add message', 11, 'add_message'),
(42, 'Can change message', 11, 'change_message'),
(43, 'Can delete message', 11, 'delete_message'),
(44, 'Can view message', 11, 'view_message');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$sjT79Hl3cIyD$4kPQAyti54l9auNrwTlyd4bPVnER0FSlrWxVQcumSVs=', NULL, 0, 'Jiwan', '', '', '', 0, 1, '2021-04-14 20:32:28.381112'),
(2, 'pbkdf2_sha256$216000$FEKOSkCB0VJT$xUMQ2S2jqC0WKoV/vot2qCmz4W2Dfl33T2ISYBXnsy8=', '2021-04-19 15:06:11.784894', 0, '190288', '', '', '', 0, 1, '2021-04-14 20:32:49.651171'),
(3, 'pbkdf2_sha256$216000$uwpR74QOQ1Dc$RN9jBIxvFrFsMGF3v49Z4DjJqpdGkMHj0yMIS0hwaWo=', '2021-04-20 17:04:41.951446', 1, 'jiwan1', '', '', 'jiwan@gmail.com', 1, 1, '2021-04-16 08:44:04.173943'),
(4, 'pbkdf2_sha256$216000$HQggFtky2gr2$XF2HrLRL3mGuPdzgRwBjzTz8BtZojJI+IlMMwFVA8MM=', '2021-04-17 06:17:53.353070', 0, 'jiwan2', '', '', '', 0, 1, '2021-04-17 06:17:03.953209'),
(5, 'pbkdf2_sha256$216000$EMa60ccvymsL$7KibkUM88owefUsH21LC3P8VKOjmbsjAl50X93yBOO4=', '2021-04-17 06:19:23.554158', 0, 'jiwan3', '', '', '', 0, 1, '2021-04-17 06:18:58.998993'),
(6, 'pbkdf2_sha256$216000$XwYcUinyJUqt$t2vJIYhOQAAuK/Do6PmqFMBAZAgVCXEBCgvLXqlsMGg=', NULL, 0, 'jiwanT', '', '', '', 0, 1, '2021-04-17 06:49:33.885937'),
(7, 'pbkdf2_sha256$216000$G069xDcwUXkQ$pxxShUdaZy867XvJ4puO8TyNRzr8UBFv5Z8QLylAvxY=', NULL, 0, 'jjjjjjjjj', '', '', '', 0, 1, '2021-04-17 06:53:56.748206'),
(8, 'pbkdf2_sha256$216000$l5ZmxQSq8auM$OJfcZKZjjuMr/bloZgH7ApMUe84wKYEcC3SdGM1rT2E=', NULL, 0, 'jjjjjjjjjj', '', '', '', 0, 1, '2021-04-17 06:54:26.868782'),
(9, 'pbkdf2_sha256$216000$vclrJFqUaDie$JDFxmmKaHfwAKt57dUlCEtLJJUwX3oUab3iymTljmS4=', NULL, 0, 'jjjjjjjjjjjjjjjj', '', '', '', 0, 1, '2021-04-17 06:55:31.794948'),
(10, 'pbkdf2_sha256$216000$QiTI4qCd4ERk$MIEAwVSgROhuh8kDP+w0anMgFsczaDemuKzbLv/Ahm4=', NULL, 0, 'jjjjjjjjjjjjjjj', '', '', '', 0, 1, '2021-04-17 06:55:49.721339'),
(11, 'pbkdf2_sha256$216000$X3R3AXTHV6Ae$yXcMYA8BwV+kOYCtx4GQMLswN7sagwxXvi03YB6dG8Q=', NULL, 0, 'jjjjjjjjjjjjjjjjjjjjjjj', '', '', '', 0, 1, '2021-04-17 06:56:19.616555'),
(12, 'pbkdf2_sha256$216000$dRmGA7Tufb8F$rVFMdkqZhSs9QpySmrlg8OUKbqYSukEDbnDkRBlx1pg=', NULL, 0, 'hhhhh', '', '', '', 0, 1, '2021-04-17 14:19:31.492066'),
(13, 'pbkdf2_sha256$216000$Pcib8jP1VZz9$+QLz8xhkHOoJ9LJQWNh7WXgjQmor9OhFOmzIZ8ILqug=', NULL, 0, 'jjjjjjjjjjjjjjjjjj', '', '', '', 0, 1, '2021-04-17 14:25:23.290649'),
(14, 'pbkdf2_sha256$216000$vDKYjUbj8vvL$P/S9gIjJLD3Xbwit0e9d0Fd4OX1WE78ujEI8r9sdKXs=', NULL, 0, 'ffffffffff', '', '', '', 0, 1, '2021-04-17 14:29:46.474187'),
(15, 'pbkdf2_sha256$216000$JoyuVyuyiGLJ$5mXbMbaz6HrQ9vjYk7gv90kBycR1ifoRjtZScWmIz9s=', '2021-04-17 16:51:37.756348', 0, 'jiwan22', '', '', '', 0, 1, '2021-04-17 15:42:20.455006'),
(16, 'pbkdf2_sha256$216000$FTfWS3vLVXvz$uIf73XLHbUsABmnGnETDr5zXTkOjBJjTH+oNEOtU6z4=', '2021-04-20 14:52:07.508056', 0, '999972', '', '', '', 0, 1, '2021-04-19 14:19:35.894685'),
(17, 'pbkdf2_sha256$216000$d6QHpQ30DSjg$Iz7zqoZgx7esJLOVVP4hl5jXgf41b/wy1RZ7R1usAFQ=', NULL, 0, 'jiwan6thapa@gmail.com', '', '', '', 0, 1, '2021-04-20 15:46:46.854211'),
(18, 'pbkdf2_sha256$216000$s25asp9znUoh$BOVWqklQNcH31s62AIvNYtydvp5Mx51vuCHtyl+55og=', '2021-04-20 16:07:28.035701', 0, 'JiwanT97', '', '', '', 0, 1, '2021-04-20 15:54:03.680728'),
(19, 'pbkdf2_sha256$216000$lh1wByxjfLbp$xTkOcuJTBKEVvlYP9Zm1lLmFvdmE2nUdReBPZXnBNkQ=', '2021-04-20 16:16:43.315268', 0, 'JiwanT971', '', '', '', 0, 1, '2021-04-20 16:16:28.279857'),
(20, 'pbkdf2_sha256$216000$bLQ0wqcu4Qt3$Z1CJTYOsQSoyF+fDe/czeo6Pr009iVGuhVJpnLuDwew=', '2021-04-20 17:07:16.509620', 0, 'JT97', '', '', '', 0, 1, '2021-04-20 16:32:01.891983'),
(21, 'pbkdf2_sha256$216000$xRp1hfmpKdcb$MXEW1lzZwQEqvphhScgO0AL48/aMEFlJ2EveBP15DHQ=', '2021-04-20 17:03:31.350793', 0, 'Abhi', '', '', '', 0, 1, '2021-04-20 17:03:18.521736');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(8, 'admins', 'message'),
(9, 'admins', 'vacancy'),
(10, 'admins', 'vacancyform'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'findjob', 'message'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-14 06:39:38.641380'),
(2, 'auth', '0001_initial', '2021-04-14 06:39:38.857330'),
(3, 'admin', '0001_initial', '2021-04-14 06:39:39.247208'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-14 06:39:39.359578'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-14 06:39:39.371305'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-14 06:39:39.444588'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-14 06:39:39.496378'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-14 06:39:39.515931'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-14 06:39:39.525691'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-14 06:39:39.572607'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-14 06:39:39.575526'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-14 06:39:39.585315'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-14 06:39:39.602897'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-14 06:39:39.622439'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-14 06:39:39.641982'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-14 06:39:39.651762'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-14 06:39:39.669332'),
(18, 'sessions', '0001_initial', '2021-04-14 06:39:39.703530'),
(19, 'accounts', '0001_initial', '2021-04-14 19:53:59.213454'),
(20, 'admins', '0001_initial', '2021-04-17 05:06:07.456840'),
(21, 'admins', '0002_delete_message', '2021-04-17 15:49:50.538820'),
(22, 'findjob', '0001_initial', '2021-04-17 15:49:50.567823'),
(23, 'findjob', '0002_message_subject', '2021-04-17 15:49:50.582827'),
(24, 'admins', '0003_vacancy_pic', '2021-04-19 14:42:20.415059'),
(25, 'admins', '0004_auto_20210420_0209', '2021-04-19 20:24:15.966704'),
(26, 'accounts', '0002_auto_20210420_1716', '2021-04-20 11:31:36.745122'),
(27, 'accounts', '0003_auto_20210420_1720', '2021-04-20 11:35:29.674907');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2pkddrbgpna1yrxspooga9naznxcw9fo', 'e30:1lXe6Q:fj81fK4v3CXsviXI7vSV6GT_LDALvlQIKKUqpXUavHA', '2021-05-01 06:06:46.539232'),
('2r19ynigc8l0ilqk59osdpiavjqthcl8', 'e30:1lXe4V:sPmJCkpl5lCnGV3xpynbs78t5NnBwImDWPcGfUQrDzw', '2021-05-01 06:04:47.945213'),
('3du7ko0vsa8i3wmo0cowgfr8gz31elmp', 'e30:1lXe3j:Wgul7m1CheCxhNpPd9qvPAKL_x7N8RR0PsAdvYS_Qhg', '2021-05-01 06:03:59.230378'),
('66cz78nmxjahli9cmgd5nq1q24xxcgx6', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYtJU:uBL1rJZTaLjPSrVpksFbPXcCq-ovGuS07buD4kGQPPQ', '2021-05-04 16:33:24.358653'),
('7207uubjyrc39uc8xf6c9ne65cq8z0rf', '.eJxVjDsOwjAQBe_iGlleyDo2JX3OED1nvSSAbCmfCnF3FCkFtDOjeZse2zr225LnfhJzNcTm9AsThmcuu5EHyr3aoZZ1npLdE3vYxXZV8ut2tH-DEcu4f0EIMZMnICFdQnCRfWCnTiXmCLTkGwrSCCspWlXHHjgHzzxIMp8vC_44ZQ:1lXoAT:0EbpDTP2R8DtGa4JjctrVDYfJvQWEm_5vIDyFlnX7vA', '2021-05-01 16:51:37.758348'),
('83hhwencfgdj4y6pueym9rumbgrl75un', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYtnl:0vs33_JlFz46gnI1WJulq7ByF1QjkNQxIkrs2SgE0aA', '2021-05-04 17:04:41.955447'),
('8ml1hzzmiyzq7zsuad6w3qai35q4xtd9', '.eJxVjDsOwjAQBe_iGlkO6y8lPWew7N01DiBHipMKcXcSKQW0b2beW8S0LjWunec4kriIwYrT75gTPrnthB6p3SeJU1vmMctdkQft8jYRv66H-3dQU69bHQbrM-vEDOCdouDAeCqYlfNQTNZBFfSQNBZQZ6MNbowY0bE1Hkl8vhDyON0:1lYbWn:tXdi8bX7NBFJoRc91YKcWNxkJ1hJNpjcbPh3padvsfY', '2021-05-03 21:33:57.371032'),
('bci5h46444liudfn16vb5jgrmew5w6le', '.eJxVjDsOwjAQBe_iGlm2499S0ucM1tq74ABypDipEHeHSCmgfTPzXiLhtta0dV7SROIsjBKn3zFjeXDbCd2x3WZZ5rYuU5a7Ig_a5TgTPy-H-3dQsddvPWgOWK7WDxSj8UUxOvRRYQTtvAIsASIE61hnsMyUkQwUq9koR9GJ9wf_cTfk:1lYtqG:nUVkfsvWjPPkXi10M9Hjzd3iGv41bwuTFq8ndbgPHQQ', '2021-05-04 17:07:16.513623'),
('c5jdyqb6srm6h7fr6n7ee33lie8yqvym', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYa7T:VXNOvNF76EEVki2FUgxVEG21-mm8xiIoxIGnMMg5Vf4', '2021-05-03 20:03:43.693214'),
('cp14p4jcnq1aabf3r1pslml7ikqauf1j', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lXK5K:Zc4Bm7LFCr0vWSDnptCS2FmkGaT8X7jTt-scB9FMhrw', '2021-04-30 08:44:18.531032'),
('e1mzkonweiia8ne30vywl6uy4eozpn0p', '.eJxVjDsOwjAQBe_iGlkO6y8lPWew7N01DiBHipMKcXcSKQW0b2beW8S0LjWunec4kriIwYrT75gTPrnthB6p3SeJU1vmMctdkQft8jYRv66H-3dQU69bHQbrM-vEDOCdouDAeCqYlfNQTNZBFfSQNBZQZ6MNbowY0bE1Hkl8vhDyON0:1lYWhB:_7ExKJL9j41w_u8xqmgyPY3qDEghLXZ3NG7p3dVosOQ', '2021-05-03 16:24:21.616886'),
('e37cgfa8ehvoxwo625gk385rp7zi2mxv', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYaHe:klqdcGpm9ris-cID1-Er_GGPSQr5FdpL3Dd4bLJh-Cs', '2021-05-03 20:14:14.545283'),
('ec2suwgsmyc3o4exvudab0exe9seituk', '.eJxVjDsOwjAQBe_iGlkO6y8lPWew7N01DiBHipMKcXcSKQW0b2beW8S0LjWunec4kriIwYrT75gTPrnthB6p3SeJU1vmMctdkQft8jYRv66H-3dQU69bHQbrM-vEDOCdouDAeCqYlfNQTNZBFfSQNBZQZ6MNbowY0bE1Hkl8vhDyON0:1lYbDI:xHA3uur7anDduDmmOagDdpG4LgIKxdN8J-JtAPB5QEM', '2021-05-03 21:13:48.107964'),
('g25pou3ufvx9ufoe64q6f27xb6njbp6j', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lXoCW:ahOfEs0dorTTKQDXErkJOx6wYti3sAnXhhA2mIgBc6g', '2021-05-01 16:53:44.325439'),
('hdc8rlg3uvpp5ecvs3p2ciqq9drqsrtl', '.eJxVjMsOgjAQRf-la9PA2HaKS_d8A5lHEdS0CYWV8d-VhIVu7znnvsxA2zoNW03LMKu5GDCn341JHinvQO-Ub8VKyesys90Ve9Bq-6LpeT3cv4OJ6vSt0QGckSR6cIk5RuSg0AaO3lOLUTl0TcCuDUlBhDxIcCNEHBv1Tjrz_gDHSjdW:1lWvwt:Q19FRIMv1p_w02CkadQCCdZRqJixRCVxE1FqlD9lkcE', '2021-04-29 06:57:59.049739'),
('hvouhlm3zqpe09d63gr8y2r3l0o7y19b', '.eJxVjDsOwjAQBe_iGlkO6y8lPWew7N01DiBHipMKcXcSKQW0b2beW8S0LjWunec4kriIwYrT75gTPrnthB6p3SeJU1vmMctdkQft8jYRv66H-3dQU69bHQbrM-vEDOCdouDAeCqYlfNQTNZBFfSQNBZQZ6MNbowY0bE1Hkl8vhDyON0:1lYbeD:v8K5HUB_8-ReqUBzXGudYVqit5du5SFju6zGnz2-AZY', '2021-05-03 21:41:37.321754'),
('jxticg3mb42qzdyfgdd2qc5us8bkksc7', 'e30:1lXe8P:2c0TUgkRxWJLmI6b1VdPuuvleR5bYWKPU7UD7tSp6PI', '2021-05-01 06:08:49.782106'),
('kpwbk1hpylsst40ed12mcfire7ru9mn9', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYN6d:5hSgTHHHghIj2N5J3wcH3UFdHM8DF9MWiIBvuGQOGuo', '2021-05-03 06:09:59.575885'),
('m8kak4uyteucql8ufg6lfdm5itt5fthk', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYVd4:TnNzQDZWcNDExqmL1jR-nvuYfECXwwfQe5p_KWmRe4c', '2021-05-03 15:16:02.323195'),
('mykgrpi4l6t91enbb2pv6esi3y2bw4jn', 'e30:1lXe7c:dSj1mwSa4kz_aEg10xqLknh0Z86o9iO8IIWjTrVMxfQ', '2021-05-01 06:08:00.306950'),
('pltwh90zkwrbdf1nf4i23ral2qh7kb97', '.eJxVjDsOwjAQBe_iGlkO6y8lPWew7N01DiBHipMKcXcSKQW0b2beW8S0LjWunec4kriIwYrT75gTPrnthB6p3SeJU1vmMctdkQft8jYRv66H-3dQU69bHQbrM-vEDOCdouDAeCqYlfNQTNZBFfSQNBZQZ6MNbowY0bE1Hkl8vhDyON0:1lYofq:yp0FFQo9prDu1MzcdEvuQpK8d8_bGpYLpPASbSDy5Sg', '2021-05-04 11:36:10.068365'),
('pqb2l52s2k10bo9bwvcmukxds1uf9kwx', '.eJxVjDsOwjAQBe_iGlkO6y8lPWew7N01DiBHipMKcXcSKQW0b2beW8S0LjWunec4kriIwYrT75gTPrnthB6p3SeJU1vmMctdkQft8jYRv66H-3dQU69bHQbrM-vEDOCdouDAeCqYlfNQTNZBFfSQNBZQZ6MNbowY0bE1Hkl8vhDyON0:1lYoc2:g8U2KNikI1E7GiNA6x2Pwc0_k0lxTDUqXD3VCN-VefU', '2021-05-04 11:32:14.974632'),
('rs6nvaqszwhq98v343huxkpt3hn6oad0', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYt5f:Im8a7RfKaepPsVCZL0UcDGV3cjoYLlMsen0qgnqOkGM', '2021-05-04 16:19:07.199602'),
('w5oopmp0fu5cstihxpadynyfkl7pqpff', '.eJxVjEEOwiAQRe_C2hBgChSX7nsGMgxTqRqalHZlvLtt0oVu_3vvv0XEbS1xa7zEKYur0L24_I4J6cn1IPmB9T5Lmuu6TEkeijxpk8Oc-XU73b-Dgq3stQ_dLgcLYIIDZD8qbZBMRkhs0Y6qw4DkAYgcBUdsjdVslIKQAHvx-QIPuTgm:1lYsuO:dN8KntT-Zotw9q6VS4ukb7VP3EefVUAMclPBhr8Wjgg', '2021-05-04 16:07:28.037707'),
('wdxy6prjcb99pi47cw7fectqz20bxqcd', '.eJxVjMsOgjAQRf-la9PA2HaKS_d8A5lHEdS0CYWV8d-VhIVu7znnvsxA2zoNW03LMKu5GDCn341JHinvQO-Ub8VKyesys90Ve9Bq-6LpeT3cv4OJ6vSt0QGckSR6cIk5RuSg0AaO3lOLUTl0TcCuDUlBhDxIcCNEHBv1Tjrz_gDHSjdW:1lWma5:mzO1h9R_5QSQ39ouRMw9zIek4fKBSObe84dnGu4Bw3U', '2021-04-28 20:57:49.137808'),
('wx41662gfgaensiqdgn2rm4k9rg1pp9s', '.eJxVjEEOwiAQRe_C2pACQxGX7nsGwjCDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnERRpx-N4zpwXUHdI_11mRqdV1mlLsiD9rl1Iif18P9Oyixl2_NcLaZ_IiOOXpAUsqQSylrhZwNegWDdokgD6BQOczZewRtbTRj8iDeHwcoOGk:1lYj1p:V0QFsDsbZQAgAKUAVKUVQrp3uNDUrg9lcdr-TyAuWYg', '2021-05-04 05:34:29.551130'),
('z9og7vnc5lbw4m41wohc4m3r5yj78ogp', '.eJxVjMsOgjAQRf-la9PA2HaKS_d8A5lHEdS0CYWV8d-VhIVu7znnvsxA2zoNW03LMKu5GDCn341JHinvQO-Ub8VKyesys90Ve9Bq-6LpeT3cv4OJ6vSt0QGckSR6cIk5RuSg0AaO3lOLUTl0TcCuDUlBhDxIcCNEHBv1Tjrz_gDHSjdW:1lWmf5:L6UhWfS5ZkrcdTQgLZ21pNxYduVvhtvTXfDdhJPpD14', '2021-04-28 21:02:59.259291');

-- --------------------------------------------------------

--
-- Table structure for table `findjob_message`
--

CREATE TABLE `findjob_message` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `query` varchar(1000) DEFAULT NULL,
  `response` varchar(1000) NOT NULL,
  `date` date DEFAULT NULL,
  `seen` tinyint(1) NOT NULL,
  `subject` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `findjob_message`
--

INSERT INTO `findjob_message` (`id`, `name`, `email`, `query`, `response`, `date`, `seen`, `subject`) VALUES
(1, 'Jiwan Thapa', 'jiwan6thapa@gmail.com', 'I m your passs', '', '2021-04-17', 1, 'asda'),
(2, 'CAMERONZ BLANCHARD', 'jiwan6thapa@gmail.com', 'sdfasdfs', '', '2021-04-20', 1, 'asda'),
(3, 'CAMERONZ BLANCHARD', 'jiwan6thapa@gmail.com', 'asda', '', '2021-04-20', 1, 'szcas'),
(4, 'Jiwan', 'jiwan6thapa@gmail.com', 'I need help', '', '2021-04-20', 0, 'asda'),
(5, 'Jiwan Thapa', 'jiwan6thapa@gmail.com', 'I need A help', '', '2021-04-20', 1, 'Help'),
(6, 'Jiwan Thapa', 'jiwan6thapa@gmail.com', 'I need Help', '', '2021-04-20', 1, 'Help'),
(7, 'Jiwan Thapa', 'jiwan6thapa@gmail.com', 'I need Help', '', '2021-04-20', 1, 'Help'),
(8, 'CAMERONZ BLANCHARD', 'jiwan6thapa@gmail.com', 'Help', '', '2021-04-20', 1, 'Help');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admins_vacancy`
--
ALTER TABLE `admins_vacancy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins_vacancyform`
--
ALTER TABLE `admins_vacancyform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_vacancyform_user_id_c8235b03_fk_auth_user_id` (`user_id`),
  ADD KEY `admins_vacancyform_vacancy_id_c962f33d_fk_admins_vacancy_id` (`vacancy_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `findjob_message`
--
ALTER TABLE `findjob_message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `admins_vacancy`
--
ALTER TABLE `admins_vacancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `admins_vacancyform`
--
ALTER TABLE `admins_vacancyform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `findjob_message`
--
ALTER TABLE `findjob_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `admins_vacancyform`
--
ALTER TABLE `admins_vacancyform`
  ADD CONSTRAINT `admins_vacancyform_user_id_c8235b03_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `admins_vacancyform_vacancy_id_c962f33d_fk_admins_vacancy_id` FOREIGN KEY (`vacancy_id`) REFERENCES `admins_vacancy` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
