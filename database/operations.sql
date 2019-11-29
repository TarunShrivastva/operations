-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 02:41 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `operations`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-user', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 0, 8, 'Helpers', 'fa-gears', '', NULL, NULL),
(9, 8, 9, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, NULL),
(10, 8, 10, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, NULL),
(11, 8, 11, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, NULL),
(12, 0, 0, 'Tasks', 'fa-bars', 'tasks', '2019-11-27 23:59:22', '2019-11-27 23:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-27 23:58:22', '2019-11-27 23:58:22'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-27 23:58:26', '2019-11-27 23:58:26'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Tasks\",\"icon\":\"fa-bars\",\"uri\":\"tasks\",\"roles\":[null],\"_token\":\"kw5YQPAKfxar5lKlH4PEyVMh73N02hMOiZUYRF5I\"}', '2019-11-27 23:59:22', '2019-11-27 23:59:22'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-11-27 23:59:22', '2019-11-27 23:59:22'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-11-27 23:59:29', '2019-11-27 23:59:29'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-28 06:27:31', '2019-11-28 06:27:31'),
(7, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 06:27:49', '2019-11-28 06:27:49'),
(8, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 06:43:36', '2019-11-28 06:43:36'),
(9, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 06:43:39', '2019-11-28 06:43:39'),
(10, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:51:54', '2019-11-28 06:51:54'),
(11, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:52:09', '2019-11-28 06:52:09'),
(12, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:52:28', '2019-11-28 06:52:28'),
(13, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:55:06', '2019-11-28 06:55:06'),
(14, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:55:29', '2019-11-28 06:55:29'),
(15, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:56:25', '2019-11-28 06:56:25'),
(16, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:56:59', '2019-11-28 06:56:59'),
(17, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:57:15', '2019-11-28 06:57:15'),
(18, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 06:58:53', '2019-11-28 06:58:53'),
(19, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:05:39', '2019-11-28 07:05:39'),
(20, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:09:43', '2019-11-28 07:09:43'),
(21, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:09:59', '2019-11-28 07:09:59'),
(22, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:11:08', '2019-11-28 07:11:08'),
(23, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:12:44', '2019-11-28 07:12:44'),
(24, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:12:58', '2019-11-28 07:12:58'),
(25, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:14:12', '2019-11-28 07:14:12'),
(26, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:14:30', '2019-11-28 07:14:30'),
(27, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:14:49', '2019-11-28 07:14:49'),
(28, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:17:02', '2019-11-28 07:17:02'),
(29, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:17:04', '2019-11-28 07:17:04'),
(30, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:17:05', '2019-11-28 07:17:05'),
(31, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:17:23', '2019-11-28 07:17:23'),
(32, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:17:25', '2019-11-28 07:17:25'),
(33, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 07:17:51', '2019-11-28 07:17:51'),
(34, 1, 'admin/tasks/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_method\":\"PUT\"}', '2019-11-28 07:17:53', '2019-11-28 07:17:53'),
(35, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 07:17:56', '2019-11-28 07:17:56'),
(36, 1, 'admin/tasks/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_method\":\"PUT\"}', '2019-11-28 07:17:59', '2019-11-28 07:17:59'),
(37, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 07:18:01', '2019-11-28 07:18:01'),
(38, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 07:18:36', '2019-11-28 07:18:36'),
(39, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:18:40', '2019-11-28 07:18:40'),
(40, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:18:42', '2019-11-28 07:18:42'),
(41, 1, 'admin/tasks/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:18:44', '2019-11-28 07:18:44'),
(42, 1, 'admin/tasks/1', 'PUT', '127.0.0.1', '{\"title\":\"Title First\",\"description\":\"Test Task first\",\"created_by\":\"1\",\"parent_id\":\"1\",\"status\":\"on\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tasks\"}', '2019-11-28 07:18:56', '2019-11-28 07:18:56'),
(43, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 07:18:57', '2019-11-28 07:18:57'),
(44, 1, 'admin/tasks/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:18:59', '2019-11-28 07:18:59'),
(45, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:19:04', '2019-11-28 07:19:04'),
(46, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:19:08', '2019-11-28 07:19:08'),
(47, 1, 'admin/tasks', 'POST', '127.0.0.1', '{\"title\":\"Task Title 2\",\"description\":\"This is test task 2\",\"created_by\":\"1\",\"parent_id\":\"1\",\"status\":\"on\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tasks\"}', '2019-11-28 07:19:29', '2019-11-28 07:19:29'),
(48, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 07:19:29', '2019-11-28 07:19:29'),
(49, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:19:37', '2019-11-28 07:19:37'),
(50, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:19:41', '2019-11-28 07:19:41'),
(51, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:20:31', '2019-11-28 07:20:31'),
(52, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-11-28 07:20:34', '2019-11-28 07:20:34'),
(53, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:20:35', '2019-11-28 07:20:35'),
(54, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-28 07:21:24', '2019-11-28 07:21:24'),
(55, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-11-28 07:21:26', '2019-11-28 07:21:26'),
(56, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-11-28 07:21:41', '2019-11-28 07:21:41'),
(57, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-28 07:21:50', '2019-11-28 07:21:50'),
(58, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:21:53', '2019-11-28 07:21:53'),
(59, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:22:12', '2019-11-28 07:22:12'),
(60, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"read\",\"name\":\"Read\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-11-28 07:22:20', '2019-11-28 07:22:20'),
(61, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-11-28 07:22:20', '2019-11-28 07:22:20'),
(62, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:22:24', '2019-11-28 07:22:24'),
(63, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"write\",\"name\":\"Write\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-11-28 07:22:29', '2019-11-28 07:22:29'),
(64, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-11-28 07:22:30', '2019-11-28 07:22:30'),
(65, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:22:32', '2019-11-28 07:22:32'),
(66, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:22:37', '2019-11-28 07:22:37'),
(67, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:22:39', '2019-11-28 07:22:39'),
(68, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"update\",\"name\":\"Update\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-11-28 07:22:53', '2019-11-28 07:22:53'),
(69, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-11-28 07:22:53', '2019-11-28 07:22:53'),
(70, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:22:55', '2019-11-28 07:22:55'),
(71, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"delete\",\"name\":\"Delete\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-11-28 07:23:02', '2019-11-28 07:23:02'),
(72, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-11-28 07:23:02', '2019-11-28 07:23:02'),
(73, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:23:06', '2019-11-28 07:23:06'),
(74, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"tester\",\"name\":\"Tester\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",null],\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\"}', '2019-11-28 07:23:29', '2019-11-28 07:23:29'),
(75, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-28 07:23:30', '2019-11-28 07:23:30'),
(76, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:23:34', '2019-11-28 07:23:34'),
(77, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:23:37', '2019-11-28 07:23:37'),
(78, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:23:43', '2019-11-28 07:23:43'),
(79, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Tarun\",\"name\":\"Tarun Shrivastva\",\"password\":\"111111\",\"password_confirmation\":\"111111\",\"roles\":[\"2\",null],\"permissions\":[\"1\",\"2\",\"3\",\"4\",null],\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\"}', '2019-11-28 07:24:56', '2019-11-28 07:24:56'),
(80, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-11-28 07:24:57', '2019-11-28 07:24:57'),
(81, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Tarun\",\"name\":\"Tarun Shrivastva\",\"password\":\"111111\",\"password_confirmation\":\"111111\",\"roles\":[\"2\",null],\"permissions\":[\"1\",\"2\",\"3\",\"4\",null],\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\"}', '2019-11-28 07:25:27', '2019-11-28 07:25:27'),
(82, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-11-28 07:25:27', '2019-11-28 07:25:27'),
(83, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:25:33', '2019-11-28 07:25:33'),
(84, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:25:35', '2019-11-28 07:25:35'),
(85, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:25:48', '2019-11-28 07:25:48'),
(86, 1, 'admin/tasks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:25:54', '2019-11-28 07:25:54'),
(87, 1, 'admin/tasks/2', 'PUT', '127.0.0.1', '{\"title\":\"Task Title 2\",\"description\":\"This is test task 2\",\"created_by\":\"1\",\"parent_id\":\"0\",\"status\":\"on\",\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tasks\"}', '2019-11-28 07:25:59', '2019-11-28 07:25:59'),
(88, 1, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-28 07:25:59', '2019-11-28 07:25:59'),
(89, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:26:16', '2019-11-28 07:26:16'),
(90, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:26:21', '2019-11-28 07:26:21'),
(91, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"tarun\",\"name\":\"Tarun Shrivastva\",\"password\":\"$2y$10$NKkl.oLC0pJvJlxm\\/KpKXeTE8v.LqKV56ORZGIlcPHhaDWKs5igcC\",\"password_confirmation\":\"$2y$10$NKkl.oLC0pJvJlxm\\/KpKXeTE8v.LqKV56ORZGIlcPHhaDWKs5igcC\",\"roles\":[\"2\",null],\"permissions\":[\"1\",\"2\",\"3\",\"4\",null],\"_token\":\"OXS8jBVB3m3DPP11lRoxioUUv6lUXBYzPzT6dgks\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2019-11-28 07:26:30', '2019-11-28 07:26:30'),
(92, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-11-28 07:26:31', '2019-11-28 07:26:31'),
(93, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:26:37', '2019-11-28 07:26:37'),
(94, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-28 07:26:46', '2019-11-28 07:26:46'),
(95, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:26:48', '2019-11-28 07:26:48'),
(96, 2, 'admin/tasks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:26:51', '2019-11-28 07:26:51'),
(97, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:41:42', '2019-11-28 07:41:42'),
(98, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-28 07:43:36', '2019-11-28 07:43:36'),
(99, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-28 07:43:40', '2019-11-28 07:43:40'),
(100, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-29 08:01:38', '2019-11-29 08:01:38'),
(101, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:01:43', '2019-11-29 08:01:43'),
(102, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-11-29 08:02:00', '2019-11-29 08:02:00'),
(103, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-11-29 08:02:03', '2019-11-29 08:02:03'),
(104, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"id\":null}', '2019-11-29 08:02:11', '2019-11-29 08:02:11'),
(105, 1, 'admin/tasks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:02:14', '2019-11-29 08:02:14'),
(106, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:02:18', '2019-11-29 08:02:18'),
(107, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:02:21', '2019-11-29 08:02:21'),
(108, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:02:27', '2019-11-29 08:02:27'),
(109, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-29 08:02:38', '2019-11-29 08:02:38'),
(110, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:02:46', '2019-11-29 08:02:46'),
(111, 2, 'admin/tasks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:02:49', '2019-11-29 08:02:49'),
(112, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:02:57', '2019-11-29 08:02:57'),
(113, 2, 'admin/tasks/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:03:00', '2019-11-29 08:03:00'),
(114, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:03:30', '2019-11-29 08:03:30'),
(115, 2, 'admin/tasks/2', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"jlh2l9FgaVg1znunHgzebajnjv71VnauTs9HMG57\",\"_method\":\"PUT\"}', '2019-11-29 08:03:39', '2019-11-29 08:03:39'),
(116, 2, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-29 08:03:42', '2019-11-29 08:03:42'),
(117, 2, 'admin/tasks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:03:47', '2019-11-29 08:03:47'),
(118, 2, 'admin/tasks/2', 'PUT', '127.0.0.1', '{\"title\":\"Task Title 2\",\"description\":\"This is test task 2\",\"created_by\":\"2\",\"parent_id\":\"0\",\"status\":\"on\",\"_token\":\"jlh2l9FgaVg1znunHgzebajnjv71VnauTs9HMG57\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tasks\"}', '2019-11-29 08:03:54', '2019-11-29 08:03:54'),
(119, 2, 'admin/tasks', 'GET', '127.0.0.1', '[]', '2019-11-29 08:03:55', '2019-11-29 08:03:55'),
(120, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:04:19', '2019-11-29 08:04:19'),
(121, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:04:27', '2019-11-29 08:04:27'),
(122, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:04:30', '2019-11-29 08:04:30'),
(123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-29 08:04:43', '2019-11-29 08:04:43'),
(124, 1, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:04:52', '2019-11-29 08:04:52'),
(125, 1, 'admin/tasks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:07:50', '2019-11-29 08:07:50'),
(126, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:08:04', '2019-11-29 08:08:04'),
(127, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-29 08:08:14', '2019-11-29 08:08:14'),
(128, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:08:19', '2019-11-29 08:08:19'),
(129, 2, 'admin/tasks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:08:22', '2019-11-29 08:08:22'),
(130, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:09:09', '2019-11-29 08:09:09'),
(131, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}', '2019-11-29 08:09:13', '2019-11-29 08:09:13'),
(132, 2, 'admin/tasks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 08:09:19', '2019-11-29 08:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Read', 'read', '2019-11-28 07:22:20', '2019-11-28 07:22:20'),
(2, 'Write', 'write', '2019-11-28 07:22:29', '2019-11-28 07:22:29'),
(3, 'Update', 'update', '2019-11-28 07:22:53', '2019-11-28 07:22:53'),
(4, 'Delete', 'delete', '2019-11-28 07:23:02', '2019-11-28 07:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-11-27 23:43:50', '2019-11-27 23:43:50'),
(2, 'Tester', 'tester', '2019-11-28 07:23:30', '2019-11-28 07:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$8Z9MQggoPAEtjqWhG.pMGOpyhYAKAUlMCrUWsaESU.9nBuZkB88A2', 'Administrator', NULL, '2x9RWpokyb1xcOUQfISGAtYgkmVeOJak3tgxrIN7OHsdcsX8GEWFqZjlaplj', '2019-11-27 23:43:50', '2019-11-27 23:43:50'),
(2, 'tarun', '$2y$10$NKkl.oLC0pJvJlxm/KpKXeTE8v.LqKV56ORZGIlcPHhaDWKs5igcC', 'Tarun Shrivastva', 'image/test.jfif', '27lGj3va2MFBLMqAYgE0an49nd6PBkdmGLAvIIEH3BonsWAcBk7jN3J0gBTD', '2019-11-28 07:25:27', '2019-11-28 07:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collegues`
--

CREATE TABLE `collegues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, '2016_01_04_173148_create_admin_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `parent_id`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Title First', 'Test Task first', 1, 1, 1, '2019-11-27 22:49:16', '2019-11-28 07:18:56', NULL),
(2, 'Task Title 2', 'This is test task 2', 0, 2, 1, '2019-11-28 07:19:29', '2019-11-29 08:03:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `collegues`
--
ALTER TABLE `collegues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collegues`
--
ALTER TABLE `collegues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
