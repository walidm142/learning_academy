-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 08:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'programing', '2020-08-31 07:19:40', '2020-08-31 07:19:40'),
(2, 'medical', '2020-08-31 07:19:53', '2020-08-31 07:19:53'),
(3, 'english', '2020-08-31 07:20:02', '2020-08-31 07:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cat_id`, `trainer_id`, `name`, `small_desc`, `desc`, `price`, `img`, `created_at`, `updated_at`) VALUES
(22, 1, 4, 'course num 1 cat number 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4377, '11.jpg', '2020-08-31 07:57:57', '2020-08-31 07:57:57'),
(23, 1, 2, 'course num 2 cat number 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1884, '12.jpg', '2020-08-31 07:57:57', '2020-08-31 07:57:57'),
(24, 1, 1, 'course num 3 cat number 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2897, '13.jpg', '2020-08-31 07:57:57', '2020-08-31 07:57:57'),
(25, 1, 4, 'course num 4 cat number 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4525, '14.jpg', '2020-08-31 07:57:57', '2020-08-31 07:57:57'),
(26, 1, 5, 'course num 5 cat number 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3411, '15.jpg', '2020-08-31 07:57:57', '2020-08-31 07:57:57'),
(27, 1, 4, 'course num 6 cat number 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2794, '16.jpg', '2020-08-31 07:57:57', '2020-08-31 07:57:57'),
(28, 2, 4, 'course num 1 cat number 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3114, '21.jpg', '2020-08-31 07:57:57', '2020-08-31 07:57:57'),
(29, 2, 4, 'course num 2 cat number 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3211, '22.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(30, 2, 1, 'course num 3 cat number 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1425, '23.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(31, 2, 5, 'course num 4 cat number 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1860, '24.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(32, 2, 3, 'course num 5 cat number 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4176, '25.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(33, 2, 3, 'course num 6 cat number 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3172, '26.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(34, 3, 2, 'course num 1 cat number 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3969, '31.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(35, 3, 4, 'course num 2 cat number 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4344, '32.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(36, 3, 5, 'course num 3 cat number 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4015, '33.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(37, 3, 5, 'course num 4 cat number 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1782, '34.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(38, 3, 2, 'course num 5 cat number 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2271, '35.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58'),
(39, 3, 1, 'course num 6 cat number 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2884, '36.jpg', '2020-08-31 07:57:58', '2020-08-31 07:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approve','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 39, 27, 'pending', '2020-08-31 10:55:48', '2020-08-31 10:55:48'),
(2, 23, 34, 'pending', '2020-08-31 10:55:48', '2020-08-31 10:55:48'),
(3, 27, 12, 'pending', '2020-08-31 10:55:48', '2020-08-31 10:55:48'),
(4, 27, 28, 'pending', '2020-08-31 10:55:48', '2020-08-31 10:55:48'),
(5, 30, 47, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(6, 23, 29, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(7, 26, 15, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(8, 39, 15, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(9, 34, 32, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(10, 23, 4, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(11, 33, 36, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(12, 24, 24, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(13, 35, 33, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(14, 28, 18, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(15, 33, 49, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(16, 37, 21, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(17, 22, 25, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(18, 39, 49, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(19, 25, 1, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(20, 32, 27, 'pending', '2020-08-31 10:55:49', '2020-08-31 10:55:49'),
(21, 23, 52, 'pending', '2020-09-20 11:39:47', '2020-09-20 11:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'walid', 'walid@walid.com', 'this is subject', 'this is message', '2020-09-20 11:12:55', '2020-09-20 11:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_08_31_084057_create_cats_table', 1),
(2, '2020_08_31_084220_create_trainers_table', 1),
(3, '2020_08_31_084228_create_courses_table', 1),
(4, '2020_08_31_084321_create_students_table', 1),
(5, '2020_08_31_084335_create_admins_table', 1),
(7, '2020_08_31_090147_create_course_student_table', 2),
(8, '2020_08_31_134449_create_tests_table', 3),
(9, '2020_09_06_123631_create_settings_table', 4),
(10, '2020_09_06_143530_create_site_contents_table', 5),
(11, '2020_09_08_091435_create_newsletters_table', 6),
(12, '2020_09_14_100602_create_messages_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `city`, `address`, `phone`, `work_hours`, `email`, `map`, `fb`, `twitter`, `insta`, `created_at`, `updated_at`) VALUES
(1, 'Learning Academy', 'logo.png', 'favicon.png', 'Cairo Egypt', '50 Abbas Alakadd Naser City', '01010101010', 'SUN to THURS 9 am to 5 pm', 'contact@learning_academy.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6912.788274430904!2d31.251641337303614!3d29.968100999825214!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x63c1510fe109ea88!2sCairo%20Industrial%20School%20Girls!5e0!3m2!1sen!2seg!4v1599396995124!5m2!1sen!2seg\" width=\"1000\" height=\"400\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'www.facebook.com', 'www.twitter.com', 'www.instagram.com', '2020-09-06 10:51:35', '2020-09-06 10:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'banner', '{\"title\":\"EVERY SYUDENT YEARNS TO LEARN\",\"subtitle\":\"Making Your Childs World Better\",\"desc\":\"Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales his void unto last session for bite. Set have great you\'ll male grass yielding yielding man\"}', '2020-09-06 12:46:05', '2020-09-06 12:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `spec`, `created_at`, `updated_at`) VALUES
(1, 'Lawson Haley', 'wkreiger@gmail.com', NULL, '2020-08-31 09:30:49', '2020-08-31 09:30:49'),
(2, 'Roxanne Donnelly', 'jessica31@yahoo.com', NULL, '2020-08-31 09:30:49', '2020-08-31 09:30:49'),
(3, 'Mr. Nils Mayer', 'gia12@gmail.com', NULL, '2020-08-31 09:30:49', '2020-08-31 09:30:49'),
(4, 'Hillary Grimes', 'elton.toy@hotmail.com', NULL, '2020-08-31 09:30:49', '2020-08-31 09:30:49'),
(5, 'Phoebe O\'Keefe', 'mosciski.estevan@cole.com', NULL, '2020-08-31 09:30:49', '2020-08-31 09:30:49'),
(6, 'Kody Schumm Sr.', 'vgutmann@schiller.com', NULL, '2020-08-31 09:30:49', '2020-08-31 09:30:49'),
(7, 'Elmore Hartmann', 'viola51@gmail.com', NULL, '2020-08-31 09:30:50', '2020-08-31 09:30:50'),
(8, 'Franco Runte', 'simone.moore@schaden.net', NULL, '2020-08-31 09:30:50', '2020-08-31 09:30:50'),
(9, 'Alisha Erdman', 'bosco.tierra@boehm.com', NULL, '2020-08-31 09:30:50', '2020-08-31 09:30:50'),
(10, 'Mrs. Dominique Pouros III', 'ferry.ignacio@mayert.com', NULL, '2020-08-31 09:30:50', '2020-08-31 09:30:50'),
(11, 'Otho Goyette', 'napoleon.bahringer@kirlin.biz', NULL, '2020-08-31 09:35:30', '2020-08-31 09:35:30'),
(12, 'Clarissa Hyatt', 'johann.kulas@cronin.net', NULL, '2020-08-31 09:35:30', '2020-08-31 09:35:30'),
(13, 'Romaine Cartwright', 'hand.elva@gmail.com', NULL, '2020-08-31 09:35:30', '2020-08-31 09:35:30'),
(14, 'Demond Wiza', 'geovany.hudson@gmail.com', NULL, '2020-08-31 09:35:30', '2020-08-31 09:35:30'),
(15, 'Ms. Zoey Keebler', 'anderson.mason@carter.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(16, 'Matilda Fahey', 'nicolette83@gusikowski.net', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(17, 'Miss Rosalee Wunsch', 'price.lilliana@waters.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(18, 'Jodie Nader II', 'turcotte.kavon@hotmail.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(19, 'Judge Mayert', 'marjorie.glover@marquardt.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(20, 'Prof. Victor Boehm', 'jaren.glover@hotmail.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(21, 'Dudley Douglas', 'dario67@mcglynn.org', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(22, 'Prof. Vidal Borer', 'tatyana63@yahoo.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(23, 'Nyah Waelchi', 'korbin68@hotmail.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(24, 'Wilford Nikolaus', 'vcollins@hotmail.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(25, 'Litzy Grady PhD', 'smurphy@gmail.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(26, 'Gayle Zboncak', 'mweber@stark.info', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(27, 'Alexander Auer', 'rabbott@gmail.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(28, 'Prof. Chaya Kautzer', 'makenna83@beatty.info', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(29, 'Prof. Kaylie Schneider', 'rgoyette@lubowitz.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(30, 'Prof. Quentin Cormier III', 'archibald.klocko@yahoo.com', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(31, 'Prof. Leola Hirthe MD', 'brekke.eino@wehner.info', NULL, '2020-08-31 09:35:31', '2020-08-31 09:35:31'),
(32, 'Mrs. Mable Green I', 'koss.kenton@gmail.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(33, 'Prof. Tyrell Pacocha', 'gus80@nolan.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(34, 'Edmond Wintheiser', 'hellen21@gleichner.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(35, 'Prof. Willie Gibson', 'dorris29@gmail.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(36, 'Jarvis Collins', 'gmedhurst@bosco.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(37, 'Kallie Bruen PhD', 'schiller.bill@beer.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(38, 'Prof. Wilfrid Hammes DDS', 'meredith.hegmann@yahoo.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(39, 'Rodrick Schneider', 'tom16@yahoo.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(40, 'Ari Mayert PhD', 'nienow.rossie@rohan.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(41, 'Greyson Wilderman', 'ndurgan@pfannerstill.net', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(42, 'Margaretta Douglas', 'eluettgen@gmail.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(43, 'Mr. Curtis Kreiger MD', 'quigley.christine@pouros.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(44, 'Harvey Bauch', 'lois82@pagac.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(45, 'Myrtle Schultz', 'hane.lloyd@gmail.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(46, 'Dr. Waylon Morar', 'crooks.julio@goodwin.info', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(47, 'Irwin Windler', 'jroberts@kris.info', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(48, 'Dr. Brice Quigley PhD', 'josie.windler@reynolds.com', NULL, '2020-08-31 09:35:32', '2020-08-31 09:35:32'),
(49, 'Erich Ziemann V', 'ortiz.marisa@gmail.com', NULL, '2020-08-31 09:35:33', '2020-08-31 09:35:33'),
(50, 'Dortha Metz', 'ularson@sauer.org', NULL, '2020-08-31 09:35:33', '2020-08-31 09:35:33'),
(52, 'walid mahmoud', 'walid@walid.com', NULL, '2020-09-20 11:39:46', '2020-09-20 11:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `spec`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Hazem Mohamed', 'doctor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '1.png', '2020-08-31 11:54:03', '2020-08-31 11:54:03'),
(2, 'Walid Mahmoud', 'Project Manger', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '2.png', '2020-08-31 11:54:03', '2020-08-31 11:54:03'),
(3, 'Omar Walid', 'Doctor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '3.png', '2020-08-31 11:54:03', '2020-08-31 11:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `phone`, `spec`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Kareem Foaud', NULL, 'web development', '1.png', '2020-08-31 07:31:28', '2020-08-31 07:31:28'),
(2, 'Mostafa Mahfouz', NULL, 'web development', '2.png', '2020-08-31 07:31:28', '2020-08-31 07:31:28'),
(3, 'Ahmed Husien', NULL, 'dentist', '3.png', '2020-08-31 07:31:28', '2020-08-31 07:31:28'),
(4, 'Hazem Mohamed', NULL, 'doctor', '4.png', '2020-08-31 07:31:28', '2020-08-31 07:31:28'),
(5, 'Magdy Mohamoud', NULL, 'english teacher', '5.png', '2020-08-31 07:31:29', '2020-08-31 07:31:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_cat_id_foreign` (`cat_id`),
  ADD KEY `courses_trainer_id_foreign` (`trainer_id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`),
  ADD CONSTRAINT `courses_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
