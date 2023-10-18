-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 11:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jmisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_types`
--

CREATE TABLE `admission_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admission` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admission_types`
--

INSERT INTO `admission_types` (`id`, `admission`, `created_at`, `updated_at`) VALUES
(1, 'day', NULL, NULL),
(2, 'boarding', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classname` varchar(255) NOT NULL,
  `roomnumber` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `students` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees` varchar(220) NOT NULL,
  `subjects` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `classname`, `roomnumber`, `user_id`, `level_id`, `students`, `created_at`, `updated_at`, `fees`, `subjects`) VALUES
(2, 'IA1', '32', 3, 1, 0, '2023-04-16 00:31:44', '2023-10-17 02:00:50', '4,3,1', '8,9,12,2,5,7,6,15,3'),
(7, 'IIIA2', '33', 3, 3, 0, '2023-04-22 02:56:12', '2023-10-13 08:35:07', '1,3', '7,9,2,6,10,14'),
(11, 'I7B', '88', 3, 1, 0, '2023-10-13 06:28:31', '2023-10-13 08:34:42', '1', '7,9,2');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Mathematics', 3, NULL, NULL),
(15, 'Kiswahili', 3, '2023-04-15 12:19:52', '2023-04-15 12:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `duration_payments`
--

CREATE TABLE `duration_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fee_id` bigint(20) UNSIGNED NOT NULL,
  `fee_payment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entry_types`
--

CREATE TABLE `entry_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entry` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entry_types`
--

INSERT INTO `entry_types` (`id`, `entry`, `created_at`, `updated_at`) VALUES
(1, 'new registration', NULL, NULL),
(2, 'transfer in', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examname` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `examname`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 'annualy', 3, 'active', '2023-04-14 03:42:19', '2023-04-14 03:42:19'),
(5, 'terminal', 3, 'active', '2023-04-14 06:04:01', '2023-10-14 01:43:43'),
(6, 'test 1', 3, 'active', '2023-04-14 10:34:32', '2023-10-13 05:24:33'),
(7, 'Test 2', 3, 'active', '2023-04-14 12:38:41', '2023-04-14 12:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `exam_hosts`
--

CREATE TABLE `exam_hosts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_hosts`
--

INSERT INTO `exam_hosts` (`id`, `year`, `classroom_id`, `level_id`, `exam_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, '2023', 2, 1, 5, 3, '2023-10-17 16:33:13', '2023-10-17 16:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `exam_marks`
--

CREATE TABLE `exam_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `mark` int(11) NOT NULL,
  `grade_point` int(11) NOT NULL,
  `grade_label` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `grade_id` varchar(255) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subs` int(50) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_marks`
--

INSERT INTO `exam_marks` (`id`, `year`, `mark`, `grade_point`, `grade_label`, `grade`, `grade_id`, `student_id`, `subject_id`, `classroom_id`, `level_id`, `exam_id`, `user_id`, `subs`, `created_at`, `updated_at`) VALUES
(1, '2023', 68, 2, 'verry good', 'B', '6', 4, 9, 2, 1, 5, 3, 9, '2023-10-14 08:37:22', '2023-10-17 16:33:14'),
(2, '2023', 45, 3, 'good', 'c', '3', 4, 8, 2, 1, 5, 3, 9, '2023-10-14 08:42:02', '2023-10-17 16:33:14'),
(3, '2023', 75, 2, 'verry good', 'B', '6', 4, 12, 2, 1, 5, 3, 9, '2023-10-14 08:43:04', '2023-10-17 16:33:14'),
(4, '2023', 67, 2, 'verry good', 'B', '6', 4, 2, 2, 1, 5, 3, 9, '2023-10-14 08:45:55', '2023-10-17 16:33:14'),
(5, '2023', 87, 1, 'excellent', 'A', '7', 4, 3, 2, 1, 5, 3, 9, '2023-10-14 08:46:16', '2023-10-17 16:33:14'),
(6, '2023', 37, 4, 'Pass', 'd', '2', 4, 5, 2, 1, 5, 3, 9, '2023-10-14 08:46:53', '2023-10-17 16:33:14'),
(7, '2023', 77, 2, 'verry good', 'B', '6', 4, 7, 2, 1, 5, 3, 9, '2023-10-14 08:48:53', '2023-10-17 16:33:14'),
(8, '2023', 57, 3, 'good', 'c', '3', 4, 6, 2, 1, 5, 3, 9, '2023-10-14 08:49:33', '2023-10-17 16:33:14'),
(9, '2023', 77, 2, 'verry good', 'B', '6', 5, 2, 2, 1, 5, 3, 9, '2023-10-14 17:08:55', '2023-10-17 16:33:14'),
(10, '2023', 79, 2, 'verry good', 'B', '6', 5, 3, 2, 1, 5, 3, 9, '2023-10-14 17:09:05', '2023-10-17 16:33:14'),
(11, '2023', 82, 1, 'excellent', 'A', '7', 5, 5, 2, 1, 5, 3, 9, '2023-10-14 17:09:13', '2023-10-17 16:33:14'),
(12, '2023', 82, 1, 'excellent', 'A', '7', 5, 6, 2, 1, 5, 3, 9, '2023-10-14 17:09:19', '2023-10-17 16:33:14'),
(13, '2023', 82, 1, 'excellent', 'A', '7', 5, 7, 2, 1, 5, 3, 9, '2023-10-14 17:09:28', '2023-10-17 16:33:14'),
(14, '2023', 87, 1, 'excellent', 'A', '7', 5, 8, 2, 1, 5, 3, 9, '2023-10-15 06:39:57', '2023-10-17 16:33:14'),
(15, '2023', 87, 1, 'excellent', 'A', '7', 5, 9, 2, 1, 5, 3, 9, '2023-10-15 06:40:04', '2023-10-17 16:33:14'),
(16, '2023', 87, 1, 'excellent', 'A', '7', 5, 12, 2, 1, 5, 3, 9, '2023-10-15 06:40:10', '2023-10-17 16:33:14'),
(17, '2023', 30, 4, 'Pass', 'd', '2', 8, 2, 2, 1, 5, 3, 9, '2023-10-15 07:08:24', '2023-10-17 16:33:14'),
(18, '2023', 60, 3, 'good', 'c', '3', 8, 3, 2, 1, 5, 3, 9, '2023-10-15 07:08:36', '2023-10-17 16:33:14'),
(19, '2023', 41, 3, 'good', 'c', '3', 8, 5, 2, 1, 5, 3, 9, '2023-10-15 07:08:52', '2023-10-17 16:33:14'),
(20, '2023', 21, 4, 'Pass', 'd', '2', 8, 6, 2, 1, 5, 3, 9, '2023-10-15 07:09:07', '2023-10-17 16:33:14'),
(21, '2023', 51, 3, 'good', 'c', '3', 8, 7, 2, 1, 5, 3, 9, '2023-10-15 07:09:18', '2023-10-17 16:33:14'),
(22, '2023', 62, 2, 'verry good', 'B', '6', 8, 8, 2, 1, 5, 3, 9, '2023-10-15 07:09:27', '2023-10-17 16:33:14'),
(23, '2023', 46, 3, 'good', 'c', '3', 8, 9, 2, 1, 5, 3, 9, '2023-10-15 07:09:40', '2023-10-17 16:33:14'),
(24, '2023', 46, 3, 'good', 'c', '3', 8, 12, 2, 1, 5, 3, 9, '2023-10-15 07:09:48', '2023-10-17 16:33:14'),
(25, '2023', 64, 2, 'verry good', 'B', '6', 4, 15, 2, 1, 5, 3, 9, '2023-10-15 07:15:41', '2023-10-17 16:33:14'),
(26, '2023', 50, 3, 'good', 'c', '3', 5, 15, 2, 1, 5, 3, 9, '2023-10-17 02:22:40', '2023-10-17 16:33:14'),
(27, '2023', 50, 3, 'good', 'c', '3', 6, 2, 2, 1, 5, 3, 9, '2023-10-17 02:40:23', '2023-10-17 16:33:14'),
(28, '2023', 50, 3, 'good', 'c', '3', 6, 3, 2, 1, 5, 3, 9, '2023-10-17 02:44:53', '2023-10-17 16:33:14'),
(29, '2023', 50, 3, 'good', 'c', '3', 6, 5, 2, 1, 5, 3, 9, '2023-10-17 02:45:42', '2023-10-17 16:33:14'),
(30, '2023', 50, 3, 'good', 'c', '3', 6, 6, 2, 1, 5, 3, 9, '2023-10-17 02:45:52', '2023-10-17 16:33:14'),
(31, '2023', 50, 3, 'good', 'c', '3', 6, 7, 2, 1, 5, 3, 9, '2023-10-17 02:46:07', '2023-10-17 16:33:14'),
(32, '2023', 50, 3, 'good', 'c', '3', 6, 8, 2, 1, 5, 3, 9, '2023-10-17 02:46:26', '2023-10-17 16:33:14'),
(33, '2023', 50, 3, 'good', 'c', '3', 6, 9, 2, 1, 5, 3, 9, '2023-10-17 02:46:37', '2023-10-17 16:33:14'),
(34, '2023', 50, 3, 'good', 'c', '3', 6, 12, 2, 1, 5, 3, 9, '2023-10-17 02:46:51', '2023-10-17 16:33:14'),
(35, '2023', 50, 3, 'good', 'c', '3', 6, 15, 2, 1, 5, 3, 9, '2023-10-17 02:47:06', '2023-10-17 16:33:14'),
(36, '2023', 55, 3, 'good', 'c', '3', 7, 2, 2, 1, 5, 3, 9, '2023-10-17 02:50:45', '2023-10-17 16:33:14'),
(37, '2023', 55, 3, 'good', 'c', '3', 7, 3, 2, 1, 5, 3, 9, '2023-10-17 02:50:58', '2023-10-17 16:33:14'),
(38, '2023', 55, 3, 'good', 'c', '3', 7, 5, 2, 1, 5, 3, 9, '2023-10-17 02:51:12', '2023-10-17 16:33:14'),
(39, '2023', 55, 3, 'good', 'c', '3', 7, 6, 2, 1, 5, 3, 9, '2023-10-17 02:51:23', '2023-10-17 16:33:14'),
(40, '2023', 55, 3, 'good', 'c', '3', 7, 7, 2, 1, 5, 3, 9, '2023-10-17 02:51:36', '2023-10-17 16:33:14'),
(41, '2023', 55, 3, 'good', 'c', '3', 7, 8, 2, 1, 5, 3, 9, '2023-10-17 02:51:49', '2023-10-17 16:33:14'),
(42, '2023', 50, 3, 'good', 'c', '3', 7, 9, 2, 1, 5, 3, 9, '2023-10-17 02:52:07', '2023-10-17 16:33:14'),
(43, '2023', 55, 3, 'good', 'c', '3', 7, 12, 2, 1, 5, 3, 9, '2023-10-17 02:52:18', '2023-10-17 16:33:14'),
(44, '2023', 55, 3, 'good', 'c', '3', 7, 15, 2, 1, 5, 3, 9, '2023-10-17 02:55:41', '2023-10-17 16:33:14'),
(45, '2023', 40, 4, 'Pass', 'd', '2', 8, 15, 2, 1, 5, 3, 9, '2023-10-17 03:04:04', '2023-10-17 16:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee` varchar(255) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `min_amount` decimal(11,2) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `fee`, `amount`, `min_amount`, `duration`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'A-level practical fee', 700000.00, 350000.00, 2, 3, '2023-10-18 17:27:52', '2023-10-18 17:28:51'),
(3, 'hostel fees', 500000.00, 500000.00, 1, 3, '2023-10-13 03:59:34', '2023-10-13 03:59:51'),
(4, 'O-level practical fee', 100000.00, 100000.00, 1, 3, '2023-10-13 04:00:41', '2023-10-13 08:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `fee_balances`
--

CREATE TABLE `fee_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_payments`
--

CREATE TABLE `fee_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `valid_to` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `paid_amount` decimal(8,2) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fee_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'male', NULL, NULL),
(2, 'female', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade` varchar(255) NOT NULL,
  `grade_label` varchar(255) NOT NULL,
  `point` int(11) NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `mark1` int(11) NOT NULL,
  `mark2` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `grade`, `grade_label`, `point`, `level_id`, `mark1`, `mark2`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'd', 'Pass', 4, 1, 21, 40, 3, '2023-04-17 03:37:39', '2023-04-17 03:40:29'),
(3, 'c', 'good', 3, 1, 41, 60, 3, '2023-04-17 03:39:48', '2023-04-17 03:39:48'),
(4, 'A', 'excellent', 1, 2, 81, 100, 3, '2023-05-06 11:58:12', '2023-10-13 05:09:36'),
(5, 'F', 'poor', 5, 1, 0, 20, 3, '2023-10-13 05:08:52', '2023-10-13 05:17:44'),
(6, 'B', 'verry good', 2, 1, 61, 80, 3, '2023-10-13 05:11:07', '2023-10-13 05:11:07'),
(7, 'A', 'excellent', 1, 1, 81, 100, 3, '2023-10-13 05:12:18', '2023-10-13 05:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `health_statuses`
--

CREATE TABLE `health_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `health` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_statuses`
--

INSERT INTO `health_statuses` (`id`, `health`, `created_at`, `updated_at`) VALUES
(1, 'normal', NULL, NULL),
(2, 'ubnormal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `host_exam_marks`
--

CREATE TABLE `host_exam_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `subjects` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `details` mediumtext NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `host_exam_marks`
--

INSERT INTO `host_exam_marks` (`id`, `year`, `subjects`, `points`, `total_marks`, `details`, `student_id`, `classroom_id`, `level_id`, `exam_id`, `user_id`, `created_at`, `updated_at`) VALUES
(41, '2023', 9, 14, 577, 'Physics-67(B), Kiswahili-87(A), Biology-37(D), Chemistry-57(C), English-77(B), Civics-45(C), Geograph-68(B), History-75(B), Basic mathematics-64(B), ', 4, 2, 1, 5, 3, NULL, NULL),
(42, '2023', 9, 8, 713, 'Physics-77(B), Kiswahili-79(B), Biology-82(A), Chemistry-82(A), English-82(A), Civics-87(A), Geograph-87(A), History-87(A), Basic mathematics-50(C), ', 5, 2, 1, 5, 3, NULL, NULL),
(43, '2023', 9, 21, 450, 'Physics-50(C), Kiswahili-50(C), Biology-50(C), Chemistry-50(C), English-50(C), Civics-50(C), Geograph-50(C), History-50(C), Basic mathematics-50(C), ', 6, 2, 1, 5, 3, NULL, NULL),
(44, '2023', 9, 21, 490, 'Physics-55(C), Kiswahili-55(C), Biology-55(C), Chemistry-55(C), English-55(C), Civics-55(C), Geograph-50(C), History-55(C), Basic mathematics-55(C), ', 7, 2, 1, 5, 3, NULL, NULL),
(45, '2023', 9, 21, 397, 'Physics-30(D), Kiswahili-60(C), Biology-41(C), Chemistry-21(D), English-51(C), Civics-62(B), Geograph-46(C), History-46(C), Basic mathematics-40(D), ', 8, 2, 1, 5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Form I', NULL, NULL),
(2, 'Form II', NULL, NULL),
(3, 'Form III', NULL, NULL),
(4, 'Form IV', NULL, NULL),
(5, 'Form V', NULL, NULL),
(6, 'Form VI', NULL, NULL),
(7, 'O-Level', NULL, NULL),
(8, 'A-Level', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `log`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Delete the Exam by the name of TEXT 2, its id was 2', 3, '2023-04-14 05:58:06', '2023-04-14 05:58:06'),
(2, 'Create the Exam by the name of Middtem', 3, '2023-04-14 06:04:01', '2023-04-14 06:04:01'),
(3, 'Delete the Exam by the name of test 2, its id was 3', 3, '2023-04-14 10:34:09', '2023-04-14 10:34:09'),
(4, 'Create the Exam by the name of Test 2', 3, '2023-04-14 10:34:32', '2023-04-14 10:34:32'),
(5, 'Delete the Exam by the name of Test 1, its id was 1', 3, '2023-04-14 11:07:20', '2023-04-14 11:07:20'),
(6, 'Exam edited from the name of Test 2 toTest 22', 3, '2023-04-14 12:09:44', '2023-04-14 12:09:44'),
(7, 'Exam edited from the name of Test 22 toTest 2', 3, '2023-04-14 12:10:28', '2023-04-14 12:10:28'),
(8, 'Exam edited from the name of Test 2 toTest 277', 3, '2023-04-14 12:34:52', '2023-04-14 12:34:52'),
(9, 'Create the Exam by the name of TEXT 2', 3, '2023-04-14 12:38:41', '2023-04-14 12:38:41'),
(10, 'Exam edited from the name of TEXT 2 toTest 2', 3, '2023-04-14 12:38:59', '2023-04-14 12:38:59'),
(11, 'Create the subject by the name of Biology', 3, '2023-04-14 14:21:30', '2023-04-14 14:21:30'),
(12, 'Delete the subject by the name of Biology, its id was 1', 3, '2023-04-14 14:29:58', '2023-04-14 14:29:58'),
(13, 'Create the subject by the name of Mathematics', 3, '2023-04-14 14:34:50', '2023-04-14 14:34:50'),
(14, 'subject edited from the name of Mathematics toPhysics', 3, '2023-04-14 14:35:18', '2023-04-14 14:35:18'),
(15, 'Create the subject by the name of kiswahili', 3, '2023-04-14 15:02:32', '2023-04-14 15:02:32'),
(16, 'subject edited from the name of kiswahili to kiswahili lang', 3, '2023-04-14 15:02:48', '2023-04-14 15:02:48'),
(17, 'Create the department by the name of kiswahili', 3, '2023-04-14 19:37:14', '2023-04-14 19:37:14'),
(18, 'department edited from the name of kiswahili to English', 3, '2023-04-14 19:46:23', '2023-04-14 19:46:23'),
(19, 'Delete the department by the name of English, its id was 13', 3, '2023-04-14 19:50:04', '2023-04-14 19:50:04'),
(20, 'Delete the department by the name of admission, its id was 3', 3, '2023-04-14 19:51:35', '2023-04-14 19:51:35'),
(21, 'Delete the department by the name of finance, its id was 1', 3, '2023-04-14 19:51:57', '2023-04-14 19:51:57'),
(22, 'Delete the department by the name of biology, its id was 4', 3, '2023-04-14 19:52:07', '2023-04-14 19:52:07'),
(23, 'Create the department by the name of music', 3, '2023-04-14 19:58:26', '2023-04-14 19:58:26'),
(24, 'Delete the department by the name of music, its id was 14', 3, '2023-04-14 19:58:37', '2023-04-14 19:58:37'),
(25, 'Create the department by the name of Kiswahili', 3, '2023-04-15 12:19:52', '2023-04-15 12:19:52'),
(26, 'Create the classname by the name of IIA1', 3, '2023-04-16 00:23:31', '2023-04-16 00:23:31'),
(27, 'Create the classname by the name of IA1', 3, '2023-04-16 00:31:45', '2023-04-16 00:31:45'),
(28, 'Create the classname by the name of IA3', 3, '2023-04-16 00:47:43', '2023-04-16 00:47:43'),
(29, 'Create the classname by the name of ia4', 3, '2023-04-16 00:49:33', '2023-04-16 00:49:33'),
(30, 'Delete the classname by the name of IA3, its id was 3', 3, '2023-04-16 00:56:06', '2023-04-16 00:56:06'),
(31, 'Delete the classname by the name of IIA1, its id was 1', 3, '2023-04-16 00:56:12', '2023-04-16 00:56:12'),
(32, 'Class edited from the name of IA1 to IA2', 3, '2023-04-16 01:57:23', '2023-04-16 01:57:23'),
(33, 'Class edited from the name of IA2 to IA1', 3, '2023-04-16 01:58:34', '2023-04-16 01:58:34'),
(34, 'Create the grade by the name of f', 3, '2023-04-17 03:19:37', '2023-04-17 03:19:37'),
(35, 'Class edited from the name of f to f', 3, '2023-04-17 03:36:38', '2023-04-17 03:36:38'),
(36, 'Create the grade by the name of D', 3, '2023-04-17 03:37:40', '2023-04-17 03:37:40'),
(37, 'Create the grade by the name of c', 3, '2023-04-17 03:39:48', '2023-04-17 03:39:48'),
(38, 'Class edited from the name of D to d', 3, '2023-04-17 03:40:29', '2023-04-17 03:40:29'),
(39, 'Delete the grade by the name of f, its id was 1', 3, '2023-04-17 03:41:29', '2023-04-17 03:41:29'),
(40, 'Create the fee by the name of Tuition fee', 3, '2023-04-18 05:43:43', '2023-04-18 05:43:43'),
(41, 'Fee edited from the name of Tuition fee to Tuition fee o-level', 3, '2023-04-18 06:08:24', '2023-04-18 06:08:24'),
(42, 'Create the fee by the name of food fees', 3, '2023-04-18 06:16:20', '2023-04-18 06:16:20'),
(43, 'Delete the Fee by the name of food fees, its id was 2', 3, '2023-04-18 06:16:36', '2023-04-18 06:16:36'),
(44, 'Create the classname by the name of IIA1', 3, '2023-04-22 02:55:36', '2023-04-22 02:55:36'),
(45, 'Create the classname by the name of IIA2', 3, '2023-04-22 02:55:53', '2023-04-22 02:55:53'),
(46, 'Create the classname by the name of IIIA2', 3, '2023-04-22 02:56:12', '2023-04-22 02:56:12'),
(47, 'Create the classname by the name of IA12', 3, '2023-04-24 10:21:51', '2023-04-24 10:21:51'),
(48, 'Create the subject by the name of civics', 3, '2023-04-24 10:47:28', '2023-04-24 10:47:28'),
(49, 'Delete the subject by the name of civics, its id was 4', 3, '2023-04-24 10:47:40', '2023-04-24 10:47:40'),
(50, 'Create the classname by the name of A12', 14, '2023-05-06 11:55:33', '2023-05-06 11:55:33'),
(51, 'Delete the classname by the name of A12, its id was 9', 14, '2023-05-06 11:55:59', '2023-05-06 11:55:59'),
(52, 'Create the grade by the name of A', 14, '2023-05-06 11:58:12', '2023-05-06 11:58:12'),
(53, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level1', 3, '2023-10-13 03:55:11', '2023-10-13 03:55:11'),
(54, 'Fee edited from the name of Tuition fee o-level1 to Tuition fee o-level', 3, '2023-10-13 03:56:04', '2023-10-13 03:56:04'),
(55, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:56:22', '2023-10-13 03:56:22'),
(56, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:58:10', '2023-10-13 03:58:10'),
(57, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:58:21', '2023-10-13 03:58:21'),
(58, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:58:44', '2023-10-13 03:58:44'),
(59, 'Create the fee by the name of hostel fees', 3, '2023-10-13 03:59:34', '2023-10-13 03:59:34'),
(60, 'Fee edited from the name of hostel fees to hostel fees', 3, '2023-10-13 03:59:51', '2023-10-13 03:59:51'),
(61, 'Create the fee by the name of O-level practical fee', 3, '2023-10-13 04:00:41', '2023-10-13 04:00:41'),
(62, 'Delete the classname by the name of IA12, its id was 8', 3, '2023-10-13 05:03:11', '2023-10-13 05:03:11'),
(63, 'Create the grade by the name of F', 3, '2023-10-13 05:08:52', '2023-10-13 05:08:52'),
(64, 'Class edited from the name of A to A', 3, '2023-10-13 05:09:36', '2023-10-13 05:09:36'),
(65, 'Create the grade by the name of B', 3, '2023-10-13 05:11:07', '2023-10-13 05:11:07'),
(66, 'Create the grade by the name of A', 3, '2023-10-13 05:12:18', '2023-10-13 05:12:18'),
(67, 'Class edited from the name of F to F', 3, '2023-10-13 05:17:44', '2023-10-13 05:17:44'),
(68, 'Exam edited from the name of Middtem to middtem1', 3, '2023-10-13 05:20:17', '2023-10-13 05:20:17'),
(69, 'Exam edited from the name of middtem1 to midterm', 3, '2023-10-13 05:21:18', '2023-10-13 05:21:18'),
(70, 'Exam edited from the name of Test 277 to test 1', 3, '2023-10-13 05:24:33', '2023-10-13 05:24:33'),
(71, 'Create the subject by the name of biology', 3, '2023-10-13 05:26:40', '2023-10-13 05:26:40'),
(72, 'Create the subject by the name of chemistry', 3, '2023-10-13 05:26:53', '2023-10-13 05:26:53'),
(73, 'Create the subject by the name of english', 3, '2023-10-13 05:44:05', '2023-10-13 05:44:05'),
(74, 'Create the subject by the name of civics', 3, '2023-10-13 05:44:59', '2023-10-13 05:44:59'),
(75, 'Create the subject by the name of geograph', 3, '2023-10-13 05:45:27', '2023-10-13 05:45:27'),
(76, 'Create the subject by the name of geograph 1', 3, '2023-10-13 05:45:44', '2023-10-13 05:45:44'),
(77, 'Create the subject by the name of geograph 2', 3, '2023-10-13 05:45:54', '2023-10-13 05:45:54'),
(78, 'Create the subject by the name of History', 3, '2023-10-13 05:46:10', '2023-10-13 05:46:10'),
(79, 'Create the subject by the name of History I', 3, '2023-10-13 05:46:30', '2023-10-13 05:46:30'),
(80, 'Create the subject by the name of History II', 3, '2023-10-13 05:46:39', '2023-10-13 05:46:39'),
(81, 'subject edited from the name of geograph 2 to geograph II', 3, '2023-10-13 05:46:57', '2023-10-13 05:46:57'),
(82, 'subject edited from the name of geograph 1 to geograph I', 3, '2023-10-13 05:47:35', '2023-10-13 05:47:35'),
(83, 'Create the classname by the name of A6', 3, '2023-10-13 06:03:01', '2023-10-13 06:03:01'),
(84, 'Class edited from the name of A6 to IA6', 3, '2023-10-13 06:03:17', '2023-10-13 06:03:17'),
(85, 'Create the classname by the name of I7B', 3, '2023-10-13 06:28:31', '2023-10-13 06:28:31'),
(86, 'Class edited from the name of I7B to I7B', 3, '2023-10-13 08:30:50', '2023-10-13 08:30:50'),
(87, 'Class edited from the name of IA1 to IA1', 3, '2023-10-13 08:31:50', '2023-10-13 08:31:50'),
(88, 'Class edited from the name of IA1 to IA1', 3, '2023-10-13 08:33:49', '2023-10-13 08:33:49'),
(89, 'Class edited from the name of I7B to I7B', 3, '2023-10-13 08:34:42', '2023-10-13 08:34:42'),
(90, 'Class edited from the name of IIIA2 to IIIA2', 3, '2023-10-13 08:35:07', '2023-10-13 08:35:07'),
(91, 'Fee edited from the name of O-level practical fee to O-level practical fee', 3, '2023-10-13 08:39:25', '2023-10-13 08:39:25'),
(92, 'Exam edited from the name of midterm to terminal', 3, '2023-10-14 01:43:43', '2023-10-14 01:43:43'),
(93, 'Class edited from the name of IA1 to IA1', 3, '2023-10-14 08:45:15', '2023-10-14 08:45:15'),
(94, 'subject edited from the name of kiswahili lang to kiswahili', 3, '2023-10-15 07:10:26', '2023-10-15 07:10:26'),
(95, 'Create the subject by the name of Basic mathematics', 3, '2023-10-15 07:13:15', '2023-10-15 07:13:15'),
(96, 'Class edited from the name of IA1 to IA1', 3, '2023-10-15 07:14:30', '2023-10-15 07:14:30'),
(97, 'Delete the subject by the name of geograph I, its id was 10', 3, '2023-10-17 01:53:33', '2023-10-17 01:53:33'),
(98, 'Delete the subject by the name of geograph II, its id was 11', 3, '2023-10-17 01:53:38', '2023-10-17 01:53:38'),
(99, 'Delete the subject by the name of History I, its id was 13', 3, '2023-10-17 01:53:44', '2023-10-17 01:53:44'),
(100, 'Delete the subject by the name of History II, its id was 14', 3, '2023-10-17 01:54:00', '2023-10-17 01:54:00'),
(101, 'Class edited from the name of IA1 to IA1', 3, '2023-10-17 01:55:14', '2023-10-17 01:55:14'),
(102, 'Class edited from the name of IA1 to IA1', 3, '2023-10-17 02:00:50', '2023-10-17 02:00:50'),
(103, 'Delete the Fee by the name of Tuition fee o-level, its id was 1', 3, '2023-10-18 17:26:00', '2023-10-18 17:26:00'),
(104, 'Create the fee by the name of A-level practical fee', 3, '2023-10-18 17:27:53', '2023-10-18 17:27:53'),
(105, 'Fee edited from the name of A-level practical fee to A-level practical fee', 3, '2023-10-18 17:28:16', '2023-10-18 17:28:16'),
(106, 'Fee edited from the name of A-level practical fee to A-level practical fee', 3, '2023-10-18 17:28:51', '2023-10-18 17:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2013_04_03_112002_create_roles_table', 1),
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_04_07_065632_create_levels_table', 1),
(25, '2023_04_07_143717_create_departments_table', 1),
(26, '2023_04_08_003814_create_staff_table', 1),
(27, '2023_04_07_072950_create_classrooms_table', 2),
(28, '2023_04_07_131510_create_grades_table', 2),
(29, '2023_04_12_184354_create_exams_table', 2),
(30, '2023_04_13_062129_create_parents_table', 3),
(31, '2023_04_14_080408_create_logs_table', 4),
(32, '2023_04_07_084452_create_subjects_table', 5),
(33, '2023_04_07_140537_create_fees_table', 6),
(34, '2023_04_21_174616_create_student_statuses_table', 7),
(37, '2023_04_07_084016_create_students_table', 8),
(38, '2023_10_12_154840_create_genders_table', 9),
(39, '2023_10_12_231119_create_relation_tos_table', 10),
(40, '2023_10_13_013052_create_admission_types_table', 11),
(41, '2023_10_13_020318_create_entry_types_table', 12),
(42, '2023_10_13_023345_create_health_statuses_table', 13),
(43, '2023_10_13_143350_create_exam_marks_table', 14),
(44, '2023_10_16_082242_create_change_marks_table', 15),
(45, '2023_10_17_065446_create_host_exam_marks_table', 16),
(46, '2023_10_17_065920_create_exam_hosts_table', 16),
(47, '2023_10_18_174430_create_fee_balances_table', 17),
(48, '2023_10_18_174716_create_fee_payments_table', 17),
(49, '2023_10_18_174750_create_duration_payments_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'staff.png',
  `home_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT 'noemail',
  `occupation` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `index_no` varchar(255) NOT NULL DEFAULT 'noindex_no',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `phone`, `photo`, `home_address`, `email`, `occupation`, `nationality`, `index_no`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'richard', 'joseph', 'mlimila', '1', '+255768448525', 'man.png', 'buza', 'engrithom1@gmail.com', 'coda', 'tanzanian', 'noindex_no', 3, '2023-04-19 05:55:24', '2023-04-19 05:55:24'),
(2, 'sambokile', 'lally', 'kindeki', '1', '+255768448525', 'man.png', 'buza', 'engrithom11@gmail.com', 'jangili', 'congoman', 'noindex_no', 3, '2023-04-19 06:15:12', '2023-04-19 06:15:12'),
(4, 'Bondumali', 'Majidu', 'Dugi', '1', '+255768448521', 'man.png', 'buza', 'engrithom1@gmail.com', 'mkulima', 'Tanzanian', 'noindex_no', 3, '2023-04-21 12:25:48', '2023-04-21 12:25:48'),
(5, 'alyn', 'sano', 'Onyango', '2', '+255768448520', 'man.png', 'mbezi kwa zena', 'engrithom1@gmail.com', 'business man', 'kenyan', 'noindex_no', 3, '2023-04-21 12:31:03', '2023-04-21 12:31:03'),
(6, 'idda', 'kasian', 'Mumba', '2', '+255768348525', 'man.png', 'msamala', 'engrithom1@gmail.com', 'teache', 'tanzanian', 'noindex_no', 3, '2023-04-21 12:39:26', '2023-04-21 12:39:26'),
(7, 'Fredy', 'Focus', 'palapala', '1', '0686255811', 'man.png', 'Dar es salaam', 'mrakilikubwa@gmail.com', 'business man', 'Tanzanian', 'noindex_no', 14, '2023-09-21 16:31:05', '2023-09-21 16:31:05'),
(8, 'babu', 'chiko', 'kombo', '1', '+255768448529', 'man.png', 'mbezi beach', 'babu@gmail.com', 'msela', 'Kenyan', 'noindex_no', 3, '2023-10-12 13:50:54', '2023-10-12 13:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(16, 'App\\Models\\User', 3, 'MyApp', '63df9acd973ebcf0db9b8b4a6708c516623f875a2fe16073cbc53e030a1d0d87', '[\"*\"]', NULL, '2023-04-13 14:02:10', '2023-04-13 14:02:10'),
(17, 'App\\Models\\User', 3, 'MyApp', '5f2dcab44c907eb767af2a3d49277054fe74e2821207d9a7907ae8568f1a6849', '[\"*\"]', '2023-04-24 10:21:51', '2023-04-13 14:26:58', '2023-04-24 10:21:51'),
(18, 'App\\Models\\User', 3, 'MyApp', 'c255ba1cc9734ab4bde3f098fcdefe179dcf6f5590d59e82e1775a993dede211', '[\"*\"]', '2023-04-24 12:08:57', '2023-04-24 10:46:14', '2023-04-24 12:08:57'),
(19, 'App\\Models\\User', 14, 'MyApp', '8b680f3beb4c0c1fe82b75288ff3aa8475787da43bd2229bbf7f844567cc7077', '[\"*\"]', '2023-09-21 16:31:05', '2023-04-24 12:17:34', '2023-09-21 16:31:05'),
(20, 'App\\Models\\User', 14, 'MyApp', '1662a51c8517e43e2dce3a8ff9a0a764d2f0db6b7fc69ece8da5588b96fd90ab', '[\"*\"]', NULL, '2023-04-27 09:15:44', '2023-04-27 09:15:44'),
(21, 'App\\Models\\User', 14, 'MyApp', 'd52262485f1dc823c67f4c97b38f1b9fe7e10fb7f14ee6b9fca0525f1380fce7', '[\"*\"]', NULL, '2023-04-27 09:53:01', '2023-04-27 09:53:01'),
(22, 'App\\Models\\User', 14, 'MyApp', 'ecb40be251e4fbdb21458fb7f09aec8c0c29f6397c242eae24109edb8936be47', '[\"*\"]', NULL, '2023-04-27 10:34:17', '2023-04-27 10:34:17'),
(23, 'App\\Models\\User', 14, 'MyApp', '5f0813c05a4195e8c7bcb6d17d6c8b82c89665ada0d77137a11086b41e1cadad', '[\"*\"]', '2023-04-27 10:55:22', '2023-04-27 10:51:30', '2023-04-27 10:55:22'),
(24, 'App\\Models\\User', 14, 'MyApp', '0d151ed2fec4aae105b1dd8a9ca75ae837b1d42f8fc85b647b73751a1b9bac06', '[\"*\"]', NULL, '2023-04-29 12:46:07', '2023-04-29 12:46:07'),
(25, 'App\\Models\\User', 3, 'MyApp', 'bd15b56ca0dced6917e6954f08edbd0d4cdfdac713f1c802d61032f4328b991b', '[\"*\"]', '2023-10-18 17:28:50', '2023-10-12 11:16:18', '2023-10-18 17:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `relation_tos`
--

CREATE TABLE `relation_tos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `relation` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relation_tos`
--

INSERT INTO `relation_tos` (`id`, `relation`, `created_at`, `updated_at`) VALUES
(1, 'parent', NULL, NULL),
(2, 'ancle', NULL, NULL),
(3, 'aunt', NULL, NULL),
(4, 'brother', NULL, NULL),
(5, 'sister', NULL, NULL),
(6, 'grand parent', NULL, NULL),
(7, 'sponsor', NULL, NULL),
(8, 'other', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `color`, `created_at`, `updated_at`) VALUES
(1, 'student', 'primary', NULL, NULL),
(2, 'teacher', 'primary', NULL, NULL),
(3, 'admin', 'warning', NULL, NULL),
(4, 'super admin', 'danger', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `initial` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'staff.png',
  `home_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `index_no` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `initial`, `first_name`, `middle_name`, `last_name`, `gender`, `phone`, `photo`, `home_address`, `email`, `index_no`, `user_id`, `role_id`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'col', 'richard', 'lally', 'mlimila', '1', '+255768448525', 'man.png', 'buza', 'engrithom1@gmail.com', '15367', 3, 4, 2, '2023-04-10 11:44:58', '2023-04-10 11:44:58'),
(2, 'boss', 'fredy', 'focus', 'palapala', '1', '0686255811', 'man.png', 'masaki', 'fredy', '78952', 3, 4, 2, '2023-04-24 12:08:57', '2023-04-24 12:08:57'),
(3, 'Tr', 'Bob', 'Mikwala', 'Himself', '1', '+255768448527', 'man.png', 'Sinza', 'bobm@gmail.com', '36568', 3, 2, 15, '2023-10-12 13:46:09', '2023-10-12 13:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL DEFAULT 'no phone',
  `photo` varchar(255) NOT NULL DEFAULT 'staff.png',
  `home_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT 'no email',
  `accademic_year` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `behavior` varchar(255) NOT NULL DEFAULT 'no comment',
  `transfer_reason` varchar(255) NOT NULL DEFAULT 'no transfer',
  `relation_to` varchar(255) NOT NULL,
  `school_from` varchar(255) NOT NULL DEFAULT 'no transfer',
  `entry` varchar(255) NOT NULL,
  `admission` varchar(255) NOT NULL,
  `hearth` varchar(255) NOT NULL,
  `index_no` varchar(255) NOT NULL,
  `student_status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `phone`, `photo`, `home_address`, `email`, `accademic_year`, `nationality`, `birth_date`, `behavior`, `transfer_reason`, `relation_to`, `school_from`, `entry`, `admission`, `hearth`, `index_no`, `student_status_id`, `classroom_id`, `level_id`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'richard', 'thoms', 'mlimila', '1', '+255768448525', 'man.png', 'buza', 'engrithom1@gmail.com', '2022', 'tanzania', '2023-04-20', 'no comment', 'no comment', 'aunt', 'no school', 'new registration', 'day', 'normal', 'S.1234.789', 1, 7, 3, 6, 3, '2023-04-23 03:37:41', '2023-04-23 03:37:41'),
(4, 'joh', 'mkale', 'sana', '1', '+255768448525', 'man.png', 'buza', 'engrithom100@gmail.com', '2023', 'Cape', '2005-06-08', 'no comment', 'no comment', '2', 'no school', '1', '1', '1', '0001', 1, 2, 1, 6, 3, '2023-10-13 00:27:54', '2023-10-13 00:27:54'),
(5, 'amiry', 'mohamed', 'chambua', '1', '+255768448511', 'man.png', 'salila', 'salila@gmail.com', '2023', 'Tanzanian', '2000-02-02', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', '0002', 1, 2, 1, 8, 3, '2023-10-14 11:54:30', '2023-10-14 11:54:30'),
(6, 'samuel', 'yelemia', 'jambeli', '1', '+255768448520', 'man.png', 'bunju', 'no email', '2023', 'tanzanian', '2008-02-01', 'no comment', 'no comment', '2', 'no school', '1', '1', '1', '0003', 1, 2, 1, 5, 3, '2023-10-14 12:26:50', '2023-10-14 12:26:50'),
(7, 'simon', 'humphrey', 'kunguru', '1', '+255768448529', 'man.png', 'songea', 'no email', '2023', 'tanzanian', '2010-06-23', 'sio nzuri sana', 'makosa ya kinidhamu', '7', 'bombambili', '2', '1', '1', '0004', 1, 2, 1, 8, 3, '2023-10-14 12:46:41', '2023-10-14 12:46:41'),
(8, 'jerry', 'yeremia', 'shija', '1', '+255768448529', 'man.png', 'loliondo', 'engrithom12@gmail.com', '2023', 'tanzanian', '2008-02-13', 'no comment', 'no comment', '2', 'no school', '1', '1', '1', '0005', 1, 2, 1, 8, 3, '2023-10-14 16:59:21', '2023-10-14 16:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'continue', NULL, NULL),
(2, 'termination', NULL, NULL),
(3, 'transfer out', NULL, NULL),
(4, 'graduate', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Physics', 3, '2023-04-14 14:34:50', '2023-04-14 14:35:18'),
(3, 'kiswahili', 3, '2023-04-14 15:02:32', '2023-10-15 07:10:25'),
(5, 'biology', 3, '2023-10-13 05:26:40', '2023-10-13 05:26:40'),
(6, 'chemistry', 3, '2023-10-13 05:26:53', '2023-10-13 05:26:53'),
(7, 'english', 3, '2023-10-13 05:44:05', '2023-10-13 05:44:05'),
(8, 'civics', 3, '2023-10-13 05:44:59', '2023-10-13 05:44:59'),
(9, 'geograph', 3, '2023-10-13 05:45:27', '2023-10-13 05:45:27'),
(12, 'History', 3, '2023-10-13 05:46:10', '2023-10-13 05:46:10'),
(15, 'Basic mathematics', 3, '2023-10-15 07:13:15', '2023-10-15 07:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `index_no` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`, `role_id`, `index_no`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'engrithom1@gmail.com', '$2y$10$TlYt0O/Ed9.CyACl/8yv0eomHLtqzndLsQsIl7wByYzMSEJ.pQRRm', 'staff', 4, '15367', 'active', NULL, '2023-04-10 11:44:58', '2023-04-10 11:44:58'),
(12, 'S.1234.789', '$2y$10$69nxj9V.cwwFLeTTtdZa8OhIDsOgraxeK.PgsnVeDhQ0RLamwCKD6', 'student', 1, 'S.1234.789', 'active', NULL, '2023-04-23 03:37:41', '2023-04-23 03:37:41'),
(14, 'fredy', '$2y$10$ne/dXXWixO.ZsadLDtcWH.vqcO1Fe5DC8dIFjYMwut33EoQpzSsVa', 'staff', 4, '78952', 'active', NULL, '2023-04-24 12:08:57', '2023-04-24 12:08:57'),
(15, 'bobm@gmail.com', '$2y$10$rHMIYe7MmfSNAvNdLqE3COxkVKBg5COG9cuOFb/IENUqC6XAODRLu', 'staff', 2, '36568', 'active', NULL, '2023-10-12 13:46:09', '2023-10-12 13:46:09'),
(16, '0001', '$2y$10$UvmLlXhjEdLgOY/htYyhjuLR4inStFo3IVsgAx9nQFG1Uu69OvCc2', 'student', 1, '0001', 'active', NULL, '2023-10-13 00:27:54', '2023-10-13 00:27:54'),
(17, '0002', '$2y$10$csU3Syx4u1aD4uJxpyHyfusjI.viLnWvXEvadq0EQAKrO6RK6dJpO', 'student', 1, '0002', 'active', NULL, '2023-10-14 11:54:30', '2023-10-14 11:54:30'),
(18, '0003', '$2y$10$0ZQW1ldGomUyoaU04gs/LuEP9t1eAxEmtfuT/c3YjWZecnBPQUgWC', 'student', 1, '0003', 'active', NULL, '2023-10-14 12:26:50', '2023-10-14 12:26:50'),
(19, '0004', '$2y$10$bEddNpCJqSAhq4CFUZBomeQPRKxmZs6/gKjJ8hW1..CHn5p6sj5Te', 'student', 1, '0004', 'active', NULL, '2023-10-14 12:46:41', '2023-10-14 12:46:41'),
(20, '0005', '$2y$10$m7YGPpFb/YXyVtbSxs0FteYvZ1H1Iqp0Kv2H4.ZDiJUghraVS7ZhG', 'student', 1, '0005', 'active', NULL, '2023-10-14 16:59:21', '2023-10-14 16:59:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_types`
--
ALTER TABLE `admission_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classrooms_user_id_foreign` (`user_id`),
  ADD KEY `classrooms_level_id_foreign` (`level_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_user_id_foreign` (`user_id`);

--
-- Indexes for table `duration_payments`
--
ALTER TABLE `duration_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `duration_payments_student_id_foreign` (`student_id`),
  ADD KEY `duration_payments_classroom_id_foreign` (`classroom_id`),
  ADD KEY `duration_payments_level_id_foreign` (`level_id`),
  ADD KEY `duration_payments_user_id_foreign` (`user_id`),
  ADD KEY `duration_payments_fee_id_foreign` (`fee_id`),
  ADD KEY `duration_payments_fee_payment_id_foreign` (`fee_payment_id`);

--
-- Indexes for table `entry_types`
--
ALTER TABLE `entry_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_user_id_foreign` (`user_id`);

--
-- Indexes for table `exam_hosts`
--
ALTER TABLE `exam_hosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_hosts_classroom_id_foreign` (`classroom_id`),
  ADD KEY `exam_hosts_level_id_foreign` (`level_id`),
  ADD KEY `exam_hosts_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_hosts_user_id_foreign` (`user_id`);

--
-- Indexes for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_marks_student_id_foreign` (`student_id`),
  ADD KEY `exam_marks_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_marks_classroom_id_foreign` (`classroom_id`),
  ADD KEY `exam_marks_level_id_foreign` (`level_id`),
  ADD KEY `exam_marks_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_marks_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_user_id_foreign` (`user_id`);

--
-- Indexes for table `fee_balances`
--
ALTER TABLE `fee_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_balances_student_id_foreign` (`student_id`),
  ADD KEY `fee_balances_user_id_foreign` (`user_id`);

--
-- Indexes for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_payments_student_id_foreign` (`student_id`),
  ADD KEY `fee_payments_classroom_id_foreign` (`classroom_id`),
  ADD KEY `fee_payments_level_id_foreign` (`level_id`),
  ADD KEY `fee_payments_user_id_foreign` (`user_id`),
  ADD KEY `fee_payments_fee_id_foreign` (`fee_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_level_id_foreign` (`level_id`),
  ADD KEY `grades_user_id_foreign` (`user_id`);

--
-- Indexes for table `health_statuses`
--
ALTER TABLE `health_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `host_exam_marks`
--
ALTER TABLE `host_exam_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `host_exam_marks_student_id_foreign` (`student_id`),
  ADD KEY `host_exam_marks_classroom_id_foreign` (`classroom_id`),
  ADD KEY `host_exam_marks_level_id_foreign` (`level_id`),
  ADD KEY `host_exam_marks_exam_id_foreign` (`exam_id`),
  ADD KEY `host_exam_marks_user_id_foreign` (`user_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parents_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `relation_tos`
--
ALTER TABLE `relation_tos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`),
  ADD KEY `staff_role_id_foreign` (`role_id`),
  ADD KEY `staff_department_id_foreign` (`department_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_student_status_id_foreign` (`student_status_id`),
  ADD KEY `students_classroom_id_foreign` (`classroom_id`),
  ADD KEY `students_level_id_foreign` (`level_id`),
  ADD KEY `students_parent_id_foreign` (`parent_id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission_types`
--
ALTER TABLE `admission_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `duration_payments`
--
ALTER TABLE `duration_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entry_types`
--
ALTER TABLE `entry_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_hosts`
--
ALTER TABLE `exam_hosts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_marks`
--
ALTER TABLE `exam_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fee_balances`
--
ALTER TABLE `fee_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_payments`
--
ALTER TABLE `fee_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `health_statuses`
--
ALTER TABLE `health_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `host_exam_marks`
--
ALTER TABLE `host_exam_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `relation_tos`
--
ALTER TABLE `relation_tos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `classrooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `duration_payments`
--
ALTER TABLE `duration_payments`
  ADD CONSTRAINT `duration_payments_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `duration_payments_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`),
  ADD CONSTRAINT `duration_payments_fee_payment_id_foreign` FOREIGN KEY (`fee_payment_id`) REFERENCES `fee_payments` (`id`),
  ADD CONSTRAINT `duration_payments_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `duration_payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `duration_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_hosts`
--
ALTER TABLE `exam_hosts`
  ADD CONSTRAINT `exam_hosts_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `exam_hosts_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_hosts_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `exam_hosts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD CONSTRAINT `exam_marks_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `exam_marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_marks_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `exam_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `exam_marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_marks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fee_balances`
--
ALTER TABLE `fee_balances`
  ADD CONSTRAINT `fee_balances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `fee_balances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD CONSTRAINT `fee_payments_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `fee_payments_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`),
  ADD CONSTRAINT `fee_payments_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `fee_payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `fee_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `grades_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `host_exam_marks`
--
ALTER TABLE `host_exam_marks`
  ADD CONSTRAINT `host_exam_marks_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `host_exam_marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `host_exam_marks_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `host_exam_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `host_exam_marks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `staff_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `students_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`),
  ADD CONSTRAINT `students_student_status_id_foreign` FOREIGN KEY (`student_status_id`) REFERENCES `student_statuses` (`id`),
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
