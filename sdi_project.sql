-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2022 at 03:03 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdi_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `nama_bagian`, `created_at`, `updated_at`) VALUES
(1, 'Quality Control', '2022-01-04 20:23:00', '2022-01-04 20:23:00'),
(2, 'Produksi', '2022-01-04 20:23:52', '2022-01-04 20:23:52'),
(3, 'Eng / Mtc', '2022-01-04 20:31:12', '2022-01-04 20:31:12'),
(4, 'Quality Assurance', '2022-01-04 20:31:55', '2022-01-04 20:31:55'),
(5, 'BOD', '2022-01-04 20:32:12', '2022-01-04 20:32:12'),
(6, 'Admin', '2022-01-04 20:32:26', '2022-01-04 20:32:26'),
(7, 'IT', '2022-01-04 20:32:37', '2022-01-04 20:32:37'),
(8, 'Purchasing', '2022-01-04 21:54:27', '2022-01-04 21:54:27'),
(9, 'Marketing', '2022-01-04 21:54:34', '2022-01-04 21:54:34'),
(10, 'PPIC', '2022-01-04 21:54:40', '2022-01-04 21:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 6),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 7),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 11),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 14),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 15),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 12),
(22, 1, 'user_belongsto_bagian_relationship', 'relationship', 'bagian', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Bagian\",\"table\":\"bagian\",\"type\":\"belongsTo\",\"column\":\"bagian_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"bagian\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(23, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 9),
(24, 1, 'bagian_id', 'text', 'Bagian Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(25, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(26, 4, 'nama_bagian', 'text', 'Nama Bagian', 1, 1, 1, 1, 1, 1, '{}', 2),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 3),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 1, 0, 1, '{}', 4),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'nama_line', 'text', 'Nama Line', 1, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'pic_line', 'text', 'Pic Line', 0, 1, 1, 1, 1, 1, '{}', 3),
(32, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 4),
(33, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 1, 0, 1, '{}', 5),
(35, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 6, 'kode_supplier', 'text', 'Kode Supplier', 1, 1, 1, 1, 1, 1, '{}', 2),
(37, 6, 'nama_supplier', 'text', 'Nama Supplier', 1, 1, 1, 1, 1, 1, '{}', 3),
(38, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 4),
(39, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 1, 0, 1, '{}', 5),
(40, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 7, 'user_id', 'text', 'User Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(42, 7, 'line_id', 'text', 'Line Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(43, 7, 'pic_id', 'hidden', 'Pic Id', 0, 0, 0, 0, 0, 0, '{}', 7),
(44, 7, 'supplier_id', 'text', 'Supplier Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(45, 7, 'foto_masalah', 'image', 'Foto Masalah', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 9),
(46, 7, 'kondisi', 'text', 'Kondisi', 1, 1, 1, 1, 1, 1, '{}', 10),
(47, 7, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 11),
(48, 7, 'tindakan_pencegahan', 'text', 'Tindakan Pencegahan', 0, 1, 1, 1, 1, 1, '{}', 12),
(49, 7, 'yokoten', 'text', 'Yokoten', 0, 1, 1, 1, 1, 1, '{}', 13),
(50, 7, 'note', 'text', 'Note', 0, 1, 1, 1, 1, 1, '{}', 14),
(51, 7, 'repetitive', 'radio_btn', 'Repetitive', 1, 1, 1, 1, 1, 1, '{\"default\":\"baru\",\"options\":{\"baru\":\"Kejadian Baru\",\"berulang\":\"Kejadian Berulang\"}}', 15),
(52, 7, 'status', 'radio_btn', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"open\",\"options\":{\"open\":\"OPEN\",\"onprogress\":\"ON PROGRESS\",\"close\":\"CLOSE\"}}', 16),
(53, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 17),
(54, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 1, 0, 1, '{}', 19),
(56, 7, 'problem_belongsto_line_relationship', 'relationship', 'Line', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Line\",\"table\":\"line\",\"type\":\"belongsTo\",\"column\":\"line_id\",\"key\":\"id\",\"label\":\"nama_line\",\"pivot_table\":\"bagian\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(58, 7, 'created_by', 'text', 'Created By', 0, 1, 0, 0, 0, 0, '{}', 3),
(59, 7, 'updated_by', 'text', 'Updated By', 0, 0, 0, 1, 0, 1, '{}', 18),
(61, 7, 'nama_produk', 'text', 'Nama Produk', 1, 1, 1, 1, 1, 1, '{}', 4),
(62, 1, 'nik', 'text', 'Nik', 1, 1, 1, 1, 1, 1, '{}', 3),
(66, 5, 'line_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"pic_line\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"bagian\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(68, 7, 'created_by_user_id', 'text', 'Created By User Id', 0, 1, 1, 1, 1, 1, '{}', 19),
(69, 7, 'problem_belongsto_supplier_relationship', 'relationship', 'supplier', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Supplier\",\"table\":\"supplier\",\"type\":\"belongsTo\",\"column\":\"supplier_id\",\"key\":\"id\",\"label\":\"nama_supplier\",\"pivot_table\":\"bagian\",\"pivot\":\"0\",\"taggable\":\"0\"}', 20),
(70, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 8, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 8, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(73, 8, 'comment', 'text_area', 'Comment', 1, 1, 1, 1, 1, 1, '{}', 4),
(74, 8, 'commentable_id', 'text', 'Commentable Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 8, 'commentable_type', 'text', 'Commentable Type', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 7),
(77, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 1, 0, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-01-04 19:03:36', '2022-01-06 01:11:13'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-01-04 19:03:36', '2022-01-04 19:03:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-01-04 19:03:36', '2022-01-04 19:03:36'),
(4, 'bagian', 'bagian', 'Bagian', 'Bagian', 'voyager-people', 'App\\Models\\Bagian', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-04 20:23:18', '2022-01-04 20:23:18'),
(5, 'line', 'line', 'Line', 'Line', 'voyager-compass', 'App\\Models\\Line', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-04 21:11:10', '2022-01-12 18:05:46'),
(6, 'supplier', 'supplier', 'Supplier', 'Suppliers', 'voyager-bag', 'App\\Models\\supplier', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-04 21:23:47', '2022-03-16 21:35:57'),
(7, 'problem', 'problem', 'Problem', 'Problem', 'voyager-warning', 'App\\Models\\Problem', NULL, 'App\\Http\\Controllers\\ProblemController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-05 01:41:02', '2022-03-10 18:36:26'),
(8, 'comment', 'comment', 'Comment', 'Comments', 'voyager-edit', 'App\\Models\\Comment', NULL, 'App\\Http\\Controllers\\CommentController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-13 21:11:01', '2022-01-13 21:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `komentar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `problems_id` bigint(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `user_id`, `komentar`, `problems_id`, `parent`, `created_at`, `updated_at`) VALUES
(31, 10, 'Tes komentar', 54, 0, '2022-03-24 23:44:20', '2022-03-24 23:44:20'),
(32, 10, 'Balas komentar', 54, 31, '2022-03-24 23:44:39', '2022-03-24 23:44:39'),
(33, 10, 'Balas lg', 54, 32, '2022-03-24 23:44:52', '2022-03-24 23:44:52'),
(34, 10, 'Balas lg ah', 54, 32, '2022-03-24 23:46:29', '2022-03-24 23:46:29'),
(35, 9, 'tes komentar managemnt', 54, 32, '2022-03-25 00:38:33', '2022-03-25 00:38:33'),
(36, 4, 'ini karena itu', 62, 0, '2022-03-25 01:49:59', '2022-03-25 01:49:59'),
(37, 9, 'itu kenapa', 66, 0, '2022-03-27 20:10:45', '2022-03-27 20:10:45'),
(38, 9, 'tes komentar', 65, 0, '2022-03-27 20:13:18', '2022-03-27 20:13:18'),
(39, 10, 'Balas komentar 1', 65, 38, '2022-03-27 20:13:40', '2022-03-27 20:13:40'),
(40, 10, 'Balas lagi', 65, 39, '2022-03-27 20:13:53', '2022-03-27 20:13:53'),
(41, 9, 'balas tes', 65, 38, '2022-03-27 20:14:19', '2022-03-27 20:14:19'),
(42, 9, 'balas', 65, 41, '2022-03-27 20:14:31', '2022-03-27 20:14:31'),
(43, 10, 'tes', 58, 0, '2022-03-29 03:57:17', '2022-03-29 03:57:17'),
(44, 10, 'tes balas1', 58, 43, '2022-03-29 03:57:24', '2022-03-29 03:57:24'),
(45, 10, 'tes balas 2', 58, 44, '2022-03-29 03:57:31', '2022-03-29 03:57:31'),
(46, 10, 'balas lagi', 58, 44, '2022-03-29 03:57:41', '2022-03-29 03:57:41'),
(47, 9, 'Ohh gitu', 62, 36, '2022-03-29 04:18:22', '2022-03-29 04:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_line` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic_line` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`id`, `nama_line`, `pic_line`, `created_at`, `updated_at`) VALUES
(1, 'Line 1', 3, '2022-01-04 21:14:00', '2022-01-06 01:37:00'),
(2, 'Line 2', 3, '2022-01-04 21:14:00', '2022-01-06 01:37:58'),
(3, 'Line 3', 5, '2022-01-04 21:16:00', '2022-01-04 21:16:00'),
(4, 'Line 4', 5, '2022-01-04 21:16:00', '2022-01-04 21:16:00'),
(5, 'Line 5', 5, '2022-01-04 21:16:00', '2022-01-04 21:16:00'),
(6, 'Line 6', 3, '2022-01-04 21:16:00', '2022-01-04 21:16:00'),
(7, 'Line 7', 3, '2022-01-04 21:16:00', '2022-01-04 21:16:00'),
(8, 'Line 8', 3, '2022-01-04 21:16:00', '2022-01-04 21:16:00'),
(9, 'Line 9', 5, '2022-01-04 21:17:00', '2022-01-04 21:17:00'),
(10, 'Bending Plant 1', 4, '2022-01-04 21:17:00', '2022-01-06 01:56:11'),
(11, 'Bending Plant 2', 4, '2022-01-04 21:17:00', '2022-01-04 21:17:00'),
(12, 'Seamer', 4, '2022-01-04 21:18:00', '2022-01-04 21:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `line_pic`
--

CREATE TABLE `line_pic` (
  `line_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-01-04 19:03:37', '2022-01-04 19:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-01-04 19:03:37', '2022-01-04 19:03:37', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 5, '2022-01-04 19:03:37', '2022-01-12 18:52:34', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 14, 1, '2022-01-04 19:03:37', '2022-01-05 00:50:12', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 14, 2, '2022-01-04 19:03:37', '2022-01-05 00:50:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2022-01-04 19:03:37', '2022-01-12 18:52:42', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-01-04 19:03:37', '2022-01-05 00:49:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-01-04 19:03:37', '2022-01-05 00:49:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-01-04 19:03:37', '2022-01-05 00:49:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-01-04 19:03:37', '2022-01-05 00:49:37', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2022-01-04 19:03:37', '2022-01-12 18:52:37', 'voyager.settings.index', NULL),
(11, 1, 'Bagian', '', '_self', 'voyager-people', NULL, 14, 3, '2022-01-04 20:23:18', '2022-01-05 00:50:18', 'voyager.bagian.index', NULL),
(12, 1, 'Line', '', '_self', 'voyager-compass', NULL, 14, 4, '2022-01-04 21:11:10', '2022-01-05 00:50:18', 'voyager.line.index', NULL),
(13, 1, 'Suppliers', '', '_self', 'voyager-bag', NULL, 14, 5, '2022-01-04 21:23:47', '2022-01-05 00:50:18', 'voyager.supplier.index', NULL),
(14, 1, 'Web Asakai', '', '_self', 'voyager-file-text', '#000000', NULL, 2, '2022-01-05 00:49:26', '2022-01-05 00:50:05', NULL, ''),
(15, 1, 'Problem', '', '_self', 'voyager-warning', NULL, NULL, 3, '2022-01-05 01:41:03', '2022-01-12 18:52:42', 'voyager.problem.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_03_11_024547_producs', 2),
(26, '2022_03_14_023443_comment', 3),
(27, '2022_03_14_023443_komentar', 4),
(28, '2022_03_14_023443_Komentar', 5),
(29, '2022_03_18_063335_komentar2', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(2, 'browse_bread', NULL, '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(3, 'browse_database', NULL, '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(4, 'browse_media', NULL, '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(5, 'browse_compass', NULL, '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(6, 'browse_menus', 'menus', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(7, 'read_menus', 'menus', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(8, 'edit_menus', 'menus', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(9, 'add_menus', 'menus', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(10, 'delete_menus', 'menus', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(11, 'browse_roles', 'roles', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(12, 'read_roles', 'roles', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(13, 'edit_roles', 'roles', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(14, 'add_roles', 'roles', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(15, 'delete_roles', 'roles', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(16, 'browse_users', 'users', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(17, 'read_users', 'users', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(18, 'edit_users', 'users', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(19, 'add_users', 'users', '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(20, 'delete_users', 'users', '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(21, 'browse_settings', 'settings', '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(22, 'read_settings', 'settings', '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(23, 'edit_settings', 'settings', '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(24, 'add_settings', 'settings', '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(25, 'delete_settings', 'settings', '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(26, 'browse_bagian', 'bagian', '2022-01-04 20:23:18', '2022-01-04 20:23:18'),
(27, 'read_bagian', 'bagian', '2022-01-04 20:23:18', '2022-01-04 20:23:18'),
(28, 'edit_bagian', 'bagian', '2022-01-04 20:23:18', '2022-01-04 20:23:18'),
(29, 'add_bagian', 'bagian', '2022-01-04 20:23:18', '2022-01-04 20:23:18'),
(30, 'delete_bagian', 'bagian', '2022-01-04 20:23:18', '2022-01-04 20:23:18'),
(31, 'browse_line', 'line', '2022-01-04 21:11:10', '2022-01-04 21:11:10'),
(32, 'read_line', 'line', '2022-01-04 21:11:10', '2022-01-04 21:11:10'),
(33, 'edit_line', 'line', '2022-01-04 21:11:10', '2022-01-04 21:11:10'),
(34, 'add_line', 'line', '2022-01-04 21:11:10', '2022-01-04 21:11:10'),
(35, 'delete_line', 'line', '2022-01-04 21:11:10', '2022-01-04 21:11:10'),
(36, 'browse_supplier', 'supplier', '2022-01-04 21:23:47', '2022-01-04 21:23:47'),
(37, 'read_supplier', 'supplier', '2022-01-04 21:23:47', '2022-01-04 21:23:47'),
(38, 'edit_supplier', 'supplier', '2022-01-04 21:23:47', '2022-01-04 21:23:47'),
(39, 'add_supplier', 'supplier', '2022-01-04 21:23:47', '2022-01-04 21:23:47'),
(40, 'delete_supplier', 'supplier', '2022-01-04 21:23:47', '2022-01-04 21:23:47'),
(41, 'browse_problem', 'problem', '2022-01-05 01:41:03', '2022-01-05 01:41:03'),
(42, 'read_problem', 'problem', '2022-01-05 01:41:03', '2022-01-05 01:41:03'),
(43, 'edit_problem', 'problem', '2022-01-05 01:41:03', '2022-01-05 01:41:03'),
(44, 'add_problem', 'problem', '2022-01-05 01:41:03', '2022-01-05 01:41:03'),
(45, 'delete_problem', 'problem', '2022-01-05 01:41:03', '2022-01-05 01:41:03'),
(46, 'browse_comment', 'comment', '2022-01-13 21:11:02', '2022-01-13 21:11:02'),
(47, 'read_comment', 'comment', '2022-01-13 21:11:02', '2022-01-13 21:11:02'),
(48, 'edit_comment', 'comment', '2022-01-13 21:11:02', '2022-01-13 21:11:02'),
(49, 'add_comment', 'comment', '2022-01-13 21:11:02', '2022-01-13 21:11:02'),
(50, 'delete_comment', 'comment', '2022-01-13 21:11:02', '2022-01-13 21:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(41, 3),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `line_id` int(10) UNSIGNED NOT NULL,
  `pic_id` int(10) UNSIGNED DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `foto_masalah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kondisi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `tindakan_pencegahan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yokoten` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repetitive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`id`, `user_id`, `line_id`, `pic_id`, `supplier_id`, `foto_masalah`, `kondisi`, `quantity`, `tindakan_pencegahan`, `yokoten`, `note`, `repetitive`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `nama_produk`, `created_by_user_id`) VALUES
(9, 1, 1, NULL, NULL, 'problem/January2022/1wz4WNR0eflGp9TBXm22.png', 'Diameter pipa besar, sehingga tidak bisa masuk ke dalam FlexTube', 1, NULL, NULL, NULL, 'baru', 'open', '2022-01-24 00:23:00', '2022-01-24 00:23:00', 'admin', 'admin', 'PIPE FR, EXH', NULL),
(10, 1, 4, NULL, NULL, 'problem/January2022/KtFZHPHVFGnYjEbVJ8MT.png', 'Bentuk spinning tidak stabil Diameter lubang kecil Permukaan bergelombang', 2, NULL, NULL, NULL, 'baru', 'open', '2022-01-24 00:29:08', '2022-01-24 00:29:08', 'admin', 'admin', 'D05', NULL),
(11, 1, 1, NULL, NULL, 'problem/January2022/47q0FSaLZkaIIn6IBP9k.png', 'Tidak masuk ke jig leak test Ketinggian pipa pada manifold berbeda Bagian bending pada pipa menjadi rata', 1, NULL, NULL, NULL, 'baru', 'open', '2022-01-24 00:30:03', '2022-01-24 00:30:03', 'admin', 'admin', 'Pipe 2504', NULL),
(13, 2, 1, NULL, NULL, 'problem/January2022/qbbH41aQyblYgeBZTTxb.png', 'Diameter pipa besar, sehingga tidak bisa masuk ke dalam FlexTube', 1, NULL, NULL, NULL, 'baru', 'open', '2022-01-30 23:37:41', '2022-01-30 23:37:41', 'Amrullah', 'Amrullah', 'Pipe 2504', NULL),
(14, 2, 4, NULL, NULL, 'problem/January2022/n63277XXwevzWJH8f1vx.png', 'Bentuk spinning tidak stabil Diameter lubang kecil Permukaan bergelombang', 2, NULL, NULL, NULL, 'baru', 'open', '2022-01-31 00:58:22', '2022-01-31 00:58:22', 'Amrullah', 'Amrullah', 'D05', NULL),
(16, 2, 2, NULL, NULL, 'problem/February2022/zZ753DjYoc4DG3wg0J6o.jpg', 'Kunci', 1, NULL, NULL, NULL, 'baru', 'open', '2022-02-02 02:15:09', '2022-02-02 02:15:09', 'Amrullah', 'Amrullah', 'Test', NULL),
(17, 2, 1, NULL, NULL, 'problem/February2022/g0ry1Ilmu6z4kT9t9X25.png', 'sedikit bagus', 1, NULL, NULL, NULL, 'baru', 'open', '2022-02-06 19:22:28', '2022-02-06 19:22:28', 'Amrullah', 'Amrullah', 'produk 2weel', NULL),
(18, 10, 2, NULL, NULL, NULL, 'Diameter pipa besar, sehingga tidak bisa masuk ke dalam FlexTube', 1, NULL, NULL, NULL, 'baru', 'open', '2022-02-09 01:10:00', '2022-02-09 01:10:00', 'Ahmad Haidar', 'Ahmad Haidar', 'PIPE FR, EXH', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_problem` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_id` int(10) NOT NULL,
  `supplier` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyebab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanganan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_problem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penanganan` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan_pencegahan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yokoten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_penanganan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `user_id`, `nama_produk`, `tgl_problem`, `line_id`, `supplier`, `foto`, `penyebab`, `penanganan`, `pic_problem`, `tgl_penanganan`, `tindakan_pencegahan`, `yokoten`, `note`, `pic_penanganan`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(53, 8, 'kenalpot motor crf 150', '2022-03-25', 4, NULL, 'ss.png', 'mesin rusak', NULL, 'sanfd', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-03-24 23:26:58', '2022-03-25 01:48:41'),
(54, 8, 'Kenalpot motor honda', '2022-03-25', 2, NULL, '16481900293354723457715082876864.jpg', 'Mesin trabel', NULL, 'Jeje', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-24 23:34:10', '2022-03-24 23:34:10'),
(55, 8, 'kenalpot motor crf 1000', '2022-03-31', 2, 'KEYENCE', 'ss.png', 'mesin rusak', NULL, 'sanfd', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-03-25 00:30:40', '2022-03-28 23:17:01'),
(56, 7, 'pipe exx bz430', '2022-03-24', 9, NULL, '18-1.png', 'welding tmbus', NULL, 'Marjuki', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-25 00:45:52', '2022-03-25 00:45:52'),
(57, 6, 'pipa bending 3 scratch', '2022-03-24', 11, NULL, '18-3.png', 'dies haus', NULL, 'enjun', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-25 01:02:40', '2022-03-25 01:02:40'),
(58, 6, 'pipa outlet oval', '2022-03-25', 11, NULL, '18-2.png', 'proses cutting', NULL, 'Enjun', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-25 01:16:05', '2022-03-25 01:16:05'),
(59, 5, 'bracket D31', '2022-03-24', 5, NULL, '3.jpg', 'spot nugget NG', NULL, 'muhidin', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-25 01:27:19', '2022-03-25 01:27:19'),
(60, 5, 'Bracket D55', '2022-01-24', 5, NULL, 'JIG SPOT PSR414_67403.png', 'sudut NG', NULL, 'muhidin', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-25 01:29:28', '2022-03-28 00:31:21'),
(61, 4, 'Problem 1', '2022-03-24', 7, NULL, '67431_BZ220_F_REV1.jpg', 'penyebab 1', NULL, 'arifin', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-03-25 01:47:40', '2022-03-27 19:53:32'),
(62, 4, 'Problem 2', '2022-03-25', 7, NULL, '67443_BZ200_F_REV1_FILLET -- unfolded.jpg', 'sebab 1', NULL, 'arifin', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-25 01:48:27', '2022-03-25 01:48:27'),
(63, 4, 'problem 3', '2022-03-23', 8, NULL, '67461_BZ110_F_REV1_FILLET -- unfolded.jpg', 'seebab 1', NULL, 'arifin', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-25 01:49:07', '2022-03-25 01:49:07'),
(66, 2, 'produk 2weel', '2022-01-23', 11, NULL, '18-2.png', 'tes', NULL, 'PE', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-27 20:09:25', '2022-03-27 23:43:14'),
(68, 10, 'kenalpot motor crf 150', '2020-02-28', 4, NULL, 'ss.png', 'mesin rusak', NULL, 'haidar', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-28 00:01:02', '2022-03-28 18:27:26'),
(69, 10, 'kenalpot motor crf 1000', '2022-02-28', 2, NULL, 'ss2.png', 'mesin rusak', NULL, 'haidar', '2022-03-30', NULL, NULL, NULL, NULL, 1, NULL, '2022-03-28 17:56:27', '2022-03-29 02:14:48'),
(70, 10, 'plat baja', '2022-02-28', 3, NULL, 'ss2.png', 'mesin rusak', NULL, 'haidar', '2022-03-31', NULL, NULL, NULL, NULL, 1, NULL, '2022-03-28 18:44:03', '2022-03-29 02:12:44'),
(72, 10, 'plat baja mobil saja', '2022-03-29', 8, NULL, 'ss2.png', 'mesin rusak', NULL, 'haidar', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-29 02:29:17', '2022-03-29 02:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(2, 'user', 'Normal User', '2022-01-04 19:03:37', '2022-01-04 19:03:37'),
(3, 'management', 'Management', '2022-01-12 01:54:35', '2022-01-12 01:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Web Asakai SDI', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Multi Tenant - Comment - V4', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/March2022/9uuRTPCWmwIuWGlv2dtG.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/March2022/Fn7SfM7jI8cql3cUFKS8.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Web Asakai SDI', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Multi Tenant - Comment - v4', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/January2022/HD74s2FU2mv2b6F9qxr0.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/January2022/WpRLivPERyUJL7JEyEPF.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `kode_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `kode_supplier`, `nama_supplier`, `created_at`, `updated_at`) VALUES
(1, '50002', 'DOKKA KLINIK', NULL, NULL),
(2, '50003', 'PT. TOYOTA TSHUSHO INDONESIA', NULL, NULL),
(3, '50004', 'RESINDA HOTEL KARAWANG', NULL, NULL),
(4, '50005', 'PT. HONDA PROSPECT MOTOR', NULL, NULL),
(5, '50006', 'CV. MULTI TEHNIK EQUIPMENT', NULL, NULL),
(6, '50009', 'CV. BUANA GRAPHICS', NULL, NULL),
(7, '50012', 'PT. BENUA GLOBALINDO', NULL, NULL),
(8, '50013', 'PT. ELECTRA JAYA SEMESTA', NULL, NULL),
(9, '50985', 'PT. MULTI ANDALAN SEJATI', NULL, NULL),
(10, '50986', 'UTAMA RACKINDO SEMESTA', NULL, NULL),
(11, '50989', 'CV. WIDYA MANDIRI', NULL, NULL),
(12, 'ADM', 'PT. Astra Daihatsu Motor', NULL, NULL),
(13, 'I0001', 'SANKEI GIKEN KOGYO', NULL, NULL),
(14, 'I0002', 'SATO ACE', NULL, NULL),
(15, 'I0003', 'IBIDEN', NULL, NULL),
(16, 'I0004', 'NITIGURA', NULL, NULL),
(17, 'I0005', 'KEYENCE', NULL, NULL),
(18, 'I0006', 'SHIZUOKA KEN', NULL, NULL),
(19, 'I0007', 'LUXURIANCE ENTERPRISE', NULL, NULL),
(20, 'I0008', 'ITO CO LTD', NULL, NULL),
(21, 'I0009', 'MARUKA MACHINERY CO LTD', NULL, NULL),
(22, 'I0010', 'HANWA NAGOYA', NULL, NULL),
(23, 'I0011', 'KYOUEI KOGYO CO. LTD', NULL, NULL),
(24, 'I0012', 'SANKEI GIKEN KOGYO CO LTD', NULL, NULL),
(25, 'I0013', 'KYORITSU CO LTD', NULL, NULL),
(26, 'I0014', 'SANKEI GIKEN KOGYO CO LTD', NULL, NULL),
(27, 'I0015', 'SATO METAL TRADING CO LTD', NULL, NULL),
(28, 'I0016', 'OILES (THAILAND) CO. LTD.', NULL, NULL),
(29, 'I0017', 'SANKEI SUMMIT (THAILAND) CO', NULL, NULL),
(30, 'I0018', 'JIUH KEI INDUSTRIAL CO LTD', NULL, NULL),
(31, 'I0019', 'SOCO MACHINERY CO.,LTD', NULL, NULL),
(32, 'I0020', 'NAGAI GIKEN (THAILAND).CO.LT', NULL, NULL),
(33, 'I0021', 'SANKEI GIKEN KOGYO CO LTD', NULL, NULL),
(34, 'I0022', 'AUTOMOTIVE INDUSTRIES SDN BD', NULL, NULL),
(35, 'I0023', 'MITSUCHI CORPORATION', NULL, NULL),
(36, 'I0024', 'DIMAS PRIAGUNG AGENCY', NULL, NULL),
(37, 'I0025', 'CATALER CORPORATION', NULL, NULL),
(38, 'I0026', 'MIC CO, LTC', NULL, NULL),
(39, 'L0001', 'JFE', NULL, NULL),
(40, 'L0002', 'PT. HSSI', NULL, NULL),
(41, 'L0003', 'SHOWA', NULL, NULL),
(42, 'L0004', 'PT. SEBASTIAN JAYA METAL', NULL, NULL),
(43, 'L0005', 'PT. SEC INDONESIA', NULL, NULL),
(44, 'L0007', 'PT. KREASI PRESISI METALINDO', NULL, NULL),
(45, 'L0008', 'PT. TIMUR MEGAH STEEL', NULL, NULL),
(46, 'L0009', 'PT. TOSAMA ABADI', NULL, NULL),
(47, 'L0010', 'PT. MANDIRI PANCA PRIMA', NULL, NULL),
(48, 'L0011', 'PT. IWATANI IGII', NULL, NULL),
(49, 'L0013', 'PT. UNGGUL SEMESTA', NULL, NULL),
(50, 'L0015', 'AOYAMA INA', NULL, NULL),
(51, 'L0016', 'CV. PEDOMAN JAYA', NULL, NULL),
(52, 'L0017', 'VERTUS OPTIMA CONSULTANT', NULL, NULL),
(53, 'L0018', 'PT. ASTRA DAIHATSU MOTOR', NULL, NULL),
(54, 'L0019', 'CV. HARGO MANDIRI', NULL, NULL),
(55, 'L0020', 'PT. KAWAN LAMA SEJAHTERA', NULL, NULL),
(56, 'L0023', 'PT. INDO KOMPRESIGMA', NULL, NULL),
(57, 'L0025', 'CV. KITA UTAMA', NULL, NULL),
(58, 'L0028', 'PT. TRIDAYA INDAH 2 BLOK B10', NULL, NULL),
(59, 'L0033', 'PT. HARAPAN ANANG & BAKRIE S', NULL, NULL),
(60, 'L0041', 'PT. ASTRA INTERNATIONAL TBK', NULL, NULL),
(61, 'L0042', 'PT. ADI SARANA ARMADA', NULL, NULL),
(62, 'L0043', 'PT. NIPPON EXPRESS INDONESIA', NULL, NULL),
(63, 'L0045', 'PT. IRIS SISTEM INFORINDO', NULL, NULL),
(64, 'L0048', 'PT. WAHANA DISTRIBUSINDO IND', NULL, NULL),
(65, 'L0050', 'PT. SENTANA MITRA KUALITA', NULL, NULL),
(66, 'L0055', 'PT. RODA HAMERINDO JAYA', NULL, NULL),
(67, 'L0056', 'PT. SURYA INDO PRIMA', NULL, NULL),
(68, 'L0057', 'PT. ANUGERAH AGUNG ABADI', NULL, NULL),
(69, 'L0061', 'PT. DHARMA POLIMETAL', NULL, NULL),
(70, 'L0067', 'PT. ADIBUANA SURYA PERKASA', NULL, NULL),
(71, 'L0069', 'PT. DWIPILAR SINERGI UTAMA', NULL, NULL),
(72, 'L0070', 'PT. BUANA ARTA TECHSINDO', NULL, NULL),
(73, 'L0071', 'CV. NAKAYOSHI PUTRA SEJAHTER', NULL, NULL),
(74, 'L0072', 'CHIYODA', NULL, NULL),
(75, 'L0073', 'CV. INDORAYA', NULL, NULL),
(76, 'L0075', 'PT. BAHANA MITRA LESTARI', NULL, NULL),
(77, 'L0076', 'PT. YAKIN MAJU SENTOSA', NULL, NULL),
(78, 'L0079', 'PT. PRIDA DENIA TEKNINDO', NULL, NULL),
(79, 'L0081', 'PT. ASTRA INTERNATIONAL', NULL, NULL),
(80, 'L0084', 'PT.PLN', NULL, NULL),
(81, 'L0087', 'PT. BIROTIKA SEMESTA', NULL, NULL),
(82, 'L0089', 'PT. OERLIKON BALZERS ARTODA INDONESIA', NULL, NULL),
(83, 'L0092', 'PT. BALINA AGUNG PERKASA', NULL, NULL),
(84, 'L0105', 'PT. HANWA INDONESIA', NULL, NULL),
(85, 'L0107', 'PT. ADRINUSA ESATAMA', NULL, NULL),
(86, 'L0108', 'CV. MITRA PENSI PRATAMA', NULL, NULL),
(87, 'L0113', 'PT. NATHANS CITRA KENCANA', NULL, NULL),
(88, 'L0115', 'CV. KARUNIA MAS SERVICE', NULL, NULL),
(89, 'L0117', 'PT. INDRAGRAHA NUSAPLASINDO', NULL, NULL),
(90, 'L0129', 'PT. DINDA ARKAN RAYA', NULL, NULL),
(91, 'L0132', 'PT. SUMBERTAMA JAYA TEHNIK', NULL, NULL),
(92, 'L0134', 'PT. MORY INDUSTRIES INDONESIA', NULL, NULL),
(93, 'L0136', 'PT. SHOWA KATOU INDONESIA', NULL, NULL),
(94, 'L0141', 'SOMAGEDE INDONESIA,PT', NULL, NULL),
(95, 'L0146', 'PT. DHARMA PRECISION TOOLS', NULL, NULL),
(96, 'L0147', 'PT. NITIGURA INDONESIA', NULL, NULL),
(97, 'L0149', 'PT PERSADA SILVER', NULL, NULL),
(98, 'L0150', 'PT. RC UNGGUL DAIHEN INDONESIA', NULL, NULL),
(99, 'L0151', 'PT. RYOGAI INDONESIA', NULL, NULL),
(100, 'L0152', 'CV. DANADIPA HARAPAN SENTOSA', NULL, NULL),
(101, 'L0153', 'PT. PUTRA ALAM TEKNOLOGI', NULL, NULL),
(102, 'L0156', 'PT. Keyence Indonesia', NULL, NULL),
(103, 'L0158', 'PT. ASAHI TECH SERVICE IND', NULL, NULL),
(104, 'L0160', 'PT. FUJILLOY INDONESIA', NULL, NULL),
(105, 'L0161', 'PT. MARUKA INDONESIA', NULL, NULL),
(106, 'L0162', 'PT. RUKUN SEJAHTERA TEKNIK', NULL, NULL),
(107, 'L0165', 'PT. INP', NULL, NULL),
(108, 'L0167', 'CV. BUANA SINERGI ENGINEER', NULL, NULL),
(109, 'L0168', 'PT. JSSI', NULL, NULL),
(110, 'L0169', 'PT. TRIPUTRA MULIA SUKSES', NULL, NULL),
(111, 'L0170', 'PT. PARAMETRIK PILAR UTAMA', NULL, NULL),
(112, 'L0171', 'PT. MEITOKU WADAYAMA IND', NULL, NULL),
(113, 'L0172', 'SINAR ABADI JAYA', NULL, NULL),
(114, 'L0173', 'PT. HERROS SOLUTECH', NULL, NULL),
(115, 'L0174', 'PT. CITRA MEDIA TEKNOLOGI', NULL, NULL),
(116, 'L0175', 'PT. YONTOMO SUKSES ABADI', NULL, NULL),
(117, 'L0176', 'PT. FST PANDU INDONESIA', NULL, NULL),
(118, 'L0177', 'PT. MARUICHI INDONESIA', NULL, NULL),
(119, 'L0178', 'PT. SUGIURA INDONESIA', NULL, NULL),
(120, 'L0180', 'PT. CALTESYS INDONESIA', NULL, NULL),
(121, 'L0181', 'PT. SERAYA PERKASA MUTUTAMA', NULL, NULL),
(122, 'L0182', 'PT. UNIJOINT INDUSTRIES', NULL, NULL),
(123, 'L0183', 'PT. MMM', NULL, NULL),
(124, 'L0184', 'PT. BIDARA SAMPURNA', NULL, NULL),
(125, 'L0185', 'PT.YOGYA PRESISI TEKNIKATAMA', NULL, NULL),
(126, 'L0186', 'PT. MEGAH LESTARI PACKINDO', NULL, NULL),
(127, 'L0187', 'PT. ITOCHU INDONESIA', NULL, NULL),
(128, 'L0189', 'PT. ZIKRA DAYA UTAMA', NULL, NULL),
(129, 'L0190', 'PT. SUMA ADIKARYA CEMERLANG', NULL, NULL),
(130, 'L0191', 'PT. HISADA INDONESIA', NULL, NULL),
(131, 'L0192', 'PT. FUJIGIKEN INDONESIA', NULL, NULL),
(132, 'L0193', 'CAHAYA TEHNIK', NULL, NULL),
(133, 'L0194', 'PT. HYMAN DWI PUTRA', NULL, NULL),
(134, 'L0196', 'PT. TRISTAR PRIMA TANGGUH', NULL, NULL),
(135, 'L0197', 'PT. HESINDO SUMBER KIMIA', NULL, NULL),
(136, 'L0198', 'PT. SMART MITRA SOLUTIONS', NULL, NULL),
(137, 'L0199', 'PT. GRAKINDO MAJU SUKSES', NULL, NULL),
(138, 'L0200', 'PT. SARANA UTAMA MITRAANDALA', NULL, NULL),
(139, 'L0201', 'PT. KAWAN LAMA MULTIWELDINDO', NULL, NULL),
(140, 'L0202', 'UNITED STEEL CENTRE IND', NULL, NULL),
(141, 'L0203', 'PT. MYOUNG MOON INDONESIA', NULL, NULL),
(142, 'L0204', 'PT. GEMALA SARANA UPAYA', NULL, NULL),
(143, 'L0205', 'PT. SUTINDO RAYA MULIA', NULL, NULL),
(144, 'L0206', 'PT. RALIM ARTHA MAKMUR', NULL, NULL),
(145, 'L0207', 'PT. HASHIMOTO ENGINEERIN IND', NULL, NULL),
(146, 'L0209', 'SANKEI HAMAMATSU', NULL, NULL),
(147, 'L0210', 'KRISBOW INDONESIA, PT', NULL, NULL),
(148, 'L0211', 'PT. MARUHACHI INDONESIA', NULL, NULL),
(149, 'L0212', 'PT. MULYA KENCANA STEEL', NULL, NULL),
(150, 'L0213', 'PT. YUTAKA MANUFACTURING IND', NULL, NULL),
(151, 'L0214', 'PT. PARTPRESISI KAWAN GEMI', NULL, NULL),
(152, 'L0215', 'PT. PAROS DIAN WIJAYA', NULL, NULL),
(153, 'L0216', 'PT. MANDALA LOGAM UTAMA', NULL, NULL),
(154, 'L0217', 'PT. TRIMITRA INTI GEMILANG', NULL, NULL),
(155, 'L0218', 'PT. MOLDEN PATRA SEJAHTERA', NULL, NULL),
(156, 'L0219', 'PT. JAN MAKMUR INDONESIA', NULL, NULL),
(157, 'L0220', 'PT. TRIMURI KARYA CIPTA', NULL, NULL),
(158, 'L0221', 'PT. MATCO PRIMA INDONESIA', NULL, NULL),
(159, 'L0222', 'PT. ABDI JUANG INVESTAMA', NULL, NULL),
(160, 'L0223', 'PT. SUPER STEEL KARAWANG', NULL, NULL),
(161, 'L0224', 'PT. 3M INDONESIA', NULL, NULL),
(162, 'L0225', 'PT. HONDA TRADING INDONESIA', NULL, NULL),
(163, 'L0226', 'PT. ESKA MANDIRI TEKNIKTAMA', NULL, NULL),
(164, 'L0227', 'PT. LASER METAL MANDIRI', NULL, NULL),
(165, 'L0228', 'PT. OKAYA INDONESIA', NULL, NULL),
(166, 'L0229', 'PT. ONE HEART SOLUTION', NULL, NULL),
(167, 'L0230', 'PT. STEEL CENTER INDONESIA', NULL, NULL),
(168, 'L0231', 'CV.METROLOGY GLOBAL SERVICES', NULL, NULL),
(169, 'L0232', 'PT. INDOPRIMA GEMILANG', NULL, NULL),
(170, 'L0233', 'PT. TELESINDO PRATAMA', NULL, NULL),
(171, 'L0234', 'PT. ASABA METAL INDUSTRI', NULL, NULL),
(172, 'L0235', 'PT. JINDAL STAINLESS IND', NULL, NULL),
(173, 'L0236', 'PT. INTECH INSTRUMENTS', NULL, NULL),
(174, 'L0237', 'PT. BUANA ABADI SEJAHTERA', NULL, NULL),
(175, 'L0238', 'PT. PRATISTHA INDO SOLUTION', NULL, NULL),
(176, 'L0239', 'PT. SENTRAL SISTEM CONSUL', NULL, NULL),
(177, 'L0240', 'PT. SAKURA MITRA PRESISI', NULL, NULL),
(178, 'L0241', 'PT. ANUGRAH PUTRA KENCANA', NULL, NULL),
(179, 'L0242', 'PT. WIBAWA TERANG MUKTI', NULL, NULL),
(180, 'L0243', 'PT. PANANJUNG ANUGRAH SOL', NULL, NULL),
(181, 'L0244', 'PT. NACHI TOKIWA INDONESIA', NULL, NULL),
(182, 'L0245', 'PT. TUNGGAL JAYA TEKNIK', NULL, NULL),
(183, 'L0246', 'ADISHA, PT', NULL, NULL),
(184, 'L0247', 'GALILEO INDONESIA, PT', NULL, NULL),
(185, 'L0248', 'CENTRAL PNEUMATIC IND. PT', NULL, NULL),
(186, 'L0249', 'SADEREX PUTRA PERKASA,CV', NULL, NULL),
(187, 'L0250', 'SMC AUTOMATION INDONESIA, PT', NULL, NULL),
(188, 'L0251', 'MARUHIDE INDONESIA, PT', NULL, NULL),
(189, 'L0252', 'GEMILANG MULIATAMA, CV', NULL, NULL),
(190, 'L0253', 'ADHY TAMA CIPTA KREASI PT', NULL, NULL),
(191, 'L0254', 'INDOJAPAN STEEL CENTRE, PT', NULL, NULL),
(192, 'L0255', 'DHARMA MEDIPRO METAL, PT', NULL, NULL),
(193, 'L0256', 'ASTRA OTOPART TBK, PT', NULL, NULL),
(194, 'L0257', 'DENKO WAHANA SAKTI, PT', NULL, NULL),
(195, 'L0258', 'TOP ONE PLASTINDO, PT', NULL, NULL),
(196, 'L0259', 'SINAR WAJA', NULL, NULL),
(197, 'L0260', 'GAMAKO EKAKARSA', NULL, NULL),
(198, 'L0261', 'MATHOTECH PRECISION IND., PT', NULL, NULL),
(199, 'L0262', 'INDOBOLT JAYA MAKMUR,PT', NULL, NULL),
(200, 'L0263', 'WIDYA MESINDO RAYA, PT', NULL, NULL),
(201, 'L0264', 'PANDU PUTRA PERSADA,PT', NULL, NULL),
(202, 'L0265', 'SINAR MUTIARA CAKRABUANA, PT', NULL, NULL),
(203, 'L0266', 'PT INDO CWA', NULL, NULL),
(204, 'L0267', 'RADIANT JAYA BERSAMA', NULL, NULL),
(205, 'L0268', 'ALAM LESTARI UNGGUL, PT', NULL, NULL),
(206, 'L0269', 'ELASTOMER NUSINDO,PT', NULL, NULL),
(207, 'L0270', 'SERVATEK ANUGERAH EKSAKTA,PT', NULL, NULL),
(208, 'L0271', 'IWATA BOLT INDONESIA,PT', NULL, NULL),
(209, 'L0272', 'Trikandi Metta Presisi, PT.', NULL, NULL),
(210, 'L0273', 'OTANO MULTI MESINDO, PT', NULL, NULL),
(211, 'L0274', 'DYCOM ENGINEERING, PT', NULL, NULL),
(212, 'L0275', 'RAYA GEMILANG MANDIRI, PT', NULL, NULL),
(213, 'L0276', 'ABADI BARU TEKNIKATAMA, PT', NULL, NULL),
(214, 'L0277', 'BELTINDO, CV', NULL, NULL),
(215, 'L0278', 'CATALER INDONESIA, PT', NULL, NULL),
(216, 'L0279', 'FAJAR CHAYA CEMERLANG, PT', NULL, NULL),
(217, 'L0280', 'TOYOTA TSUSHO INDONESIA, PT', NULL, NULL),
(218, 'L0281', 'PT. ANDALIRA CIPTA ABADI', NULL, NULL),
(219, 'L0282', 'AMCO MULTITECH, PT', NULL, NULL),
(220, 'L0283', 'SENUIN HADAFA, PT', NULL, NULL),
(221, 'L0284', 'TIGER SASH INDONESIA, PT', NULL, NULL),
(222, 'L0285', 'INTERTEK UTAMA SERVICE,PT', NULL, NULL),
(223, 'L0286', 'BERKAH TEKNIK MANDIRI,CV', NULL, NULL),
(224, 'L0287', 'TEKMA PRESITAMA, PT', NULL, NULL),
(225, 'L0288', 'BUNYAMIN INOVASI TEKNIK PT.', NULL, NULL),
(226, 'L0289', 'PT WITAN PRESISI INDONESIA', NULL, NULL),
(227, 'L0290', 'TAIKISHA MANUFACTURNG IND,PT', NULL, NULL),
(228, 'L0291', 'UNGGUL TEKNOS INDONESIA,PT', NULL, NULL),
(229, 'L0292', 'ZARIRANDA JAYA ABADI, PT', NULL, NULL),
(230, 'L0293', 'SAGATEKNINDO SEJATI PT', NULL, NULL),
(231, 'L0294', 'JATI MANDIRI INTI PRESISI,CV', NULL, NULL),
(232, 'L0295', 'DAYA GUNA LANCAR, PT', NULL, NULL),
(233, 'L1028', 'CITRA GRAND HOTEL', NULL, NULL),
(234, 'L1030', 'TELKOMSEL', NULL, NULL),
(235, 'L1035', 'CHIO MEDICAL CENTER', NULL, NULL),
(236, 'L1038', 'PT. ASTRAGRAPHIA', NULL, NULL),
(237, 'L1040', 'PT. ADIBUANA SURYAPERKASA', NULL, NULL),
(238, 'L1044', 'CV. MANDIRI ADHI SENTOSA', NULL, NULL),
(239, 'L1046', 'UD. DWI TUNGGAL', NULL, NULL),
(240, 'L1050', 'CV. DYFFA CATERING', NULL, NULL),
(241, 'L1054', 'PT. SUMISHO GLOBAL LOGISTICS', NULL, NULL),
(242, 'L1055', 'CV. SYSTEMA LOGISTICS', NULL, NULL),
(243, 'L1057', 'PT. HARMONY SISTEM', NULL, NULL),
(244, 'L1059', 'PT. RAYSPID INDONESIA', NULL, NULL),
(245, 'L1061', 'ALASHAR TAILOR', NULL, NULL),
(246, 'L1064', 'TOKO KUE TEH NENG', NULL, NULL),
(247, 'L1067', 'CV. RULLY', NULL, NULL),
(248, 'L1084', 'CV. CNR ANUGRAH UTAMA', NULL, NULL),
(249, 'L1088', 'CV. DOEWA WARNA', NULL, NULL),
(250, 'L1101', 'PT. AMANAH KESEJAHTERAAN BER', NULL, NULL),
(251, 'L1102', 'BIZ NET', NULL, NULL),
(252, 'L1109', 'CV. VISI JAYA BERSAMA', NULL, NULL),
(253, 'L1111', 'PT. BRENSON CITRA ABADI', NULL, NULL),
(254, 'L1113', 'PT NISSIN TRANSPORT IND', NULL, NULL),
(255, 'L1114', 'PT. ROLLINDO GRAHATAMA', NULL, NULL),
(256, 'L1115', 'PT. FORTA LARESE', NULL, NULL),
(257, 'L1116', 'CV. PIDO BUSANA', NULL, NULL),
(258, 'L1117', 'PT. SARANA CIPTA UNGGUL', NULL, NULL),
(259, 'L1118', 'PT. SUN PAINT INDONESIA', NULL, NULL),
(260, 'L1120', 'PT. VEPRO NUSANTARA', NULL, NULL),
(261, 'L1121', 'PT. BEST LOGISTICS SERVICE I', NULL, NULL),
(262, 'L1122', 'PT. KAPPA KONSULTAN UTAMA', NULL, NULL),
(263, 'L1123', 'PT. MHB INDONESIA', NULL, NULL),
(264, 'L1125', 'THEA THEO STATIONARY', NULL, NULL),
(265, 'L1126', 'KEMEN KEUANGAN REPUBLIK IND', NULL, NULL),
(266, 'L1127', 'PT. MEDIALAB INDONESIA', NULL, NULL),
(267, 'L1128', 'PT. ASURANSI MSIG INDONESIA', NULL, NULL),
(268, 'L1129', 'PT. SISTEMA TRANS NUSANTARA', NULL, NULL),
(269, 'L1130', 'PT. TRIPUTRA INVESTINDO ARYA', NULL, NULL),
(270, 'L1131', 'PT. MALACCA TRUST FINANCE', NULL, NULL),
(271, 'L1133', 'PT. SEJAHTERA DAMAI BERKARIS', NULL, NULL),
(272, 'L1134', 'PT. CITRA LANGGENG SENTOSA', NULL, NULL),
(273, 'L1135', 'PT. HOME CENTER INDONESIA', NULL, NULL),
(274, 'L1136', 'AZIRA FLORIST', NULL, NULL),
(275, 'L1137', 'PURWANTORO,SUNGKORO&SURJA', NULL, NULL),
(276, 'L1138', 'CV. JANITA CATERING', NULL, NULL),
(277, 'L1139', 'CV. SYNERGI TEKHNIK MANDIRI', NULL, NULL),
(278, 'L1140', 'CV. CANDI ISMOYO JATI', NULL, NULL),
(279, 'L1141', 'PT. WILKEN INTERNATIONAL', NULL, NULL),
(280, 'L1142', 'PT. PANDU DEWANATA GEMILANG', NULL, NULL),
(281, 'L1143', 'PT. PUSACO INTERNATIONAL', NULL, NULL),
(282, 'L1144', 'CV. RIFRESS', NULL, NULL),
(283, 'L1145', 'CV. CITRA UTAMA', NULL, NULL),
(284, 'L1147', 'JAKARTA TRAVEL SERVICE', NULL, NULL),
(285, 'L1148', 'PT. INDONESIA SIMON', NULL, NULL),
(286, 'L1149', 'PT. SARANA MITRA LUAS', NULL, NULL),
(287, 'L1150', 'PT. NIKI FOUR', NULL, NULL),
(288, 'L1151', 'CITRA ARDHITA MEDIFARMA', NULL, NULL),
(289, 'L1152', 'PT. METROLINK KOMPUDATA', NULL, NULL),
(290, 'L1153', 'PT. DHARMA SETIA CONSULTANT', NULL, NULL),
(291, 'L1154', 'PT. TUNAS MULTI TECH', NULL, NULL),
(292, 'L1155', 'PT. TIRTAMARDIKA RAHARJA', NULL, NULL),
(293, 'L1156', 'PT. NOBEL ANUGRAH SUKSES', NULL, NULL),
(294, 'L1157', 'PT. PRIMA PRAKASA COATING', NULL, NULL),
(295, 'L1158', 'MERCURE HOTEL', NULL, NULL),
(296, 'L1159', 'DPPKAD KAB. KARAWANG', NULL, NULL),
(297, 'L1160', 'PT. IKHTIYAR KARYA PUTRA', NULL, NULL),
(298, 'L1161', 'PT ERAKOMP INFONUSA', NULL, NULL),
(299, 'L1162', 'PT METROLINK KOMPUDATA', NULL, NULL),
(300, 'L1163', 'PT MITRALAB BUANA', NULL, NULL),
(301, 'L1164', 'TOKO SINGAPORE', NULL, NULL),
(302, 'L1165', 'PT ERVAN PRIMA ABADI', NULL, NULL),
(303, 'L1166', 'PT CAKRAWALA MULTINIAGA', NULL, NULL),
(304, 'L1167', 'CV RETRO PRIMA KALAPETONG', NULL, NULL),
(305, 'L1168', 'PT ZEUS COMPONENT INDONESIA', NULL, NULL),
(306, 'L1169', 'PT BINA KOMUNIKA ASIATAMA', NULL, NULL),
(307, 'L1170', 'PT. SERTIFIKASI PROFESI INDO', NULL, NULL),
(308, 'L1171', 'PT ERAKOMP INFONUSA', NULL, NULL),
(309, 'L1172', 'CITRA ARDHITA MEDIFARMA', NULL, NULL),
(310, 'L1173', 'PT REPEX PERDANA INTERNATION', NULL, NULL),
(311, 'L1174', 'PT MALIGI PERMATA INDUSTRIAL', NULL, NULL),
(312, 'L1175', 'PT WILMAN MEUBELINDO', NULL, NULL),
(313, 'L1176', 'PT QAD ASIA INDONESIA', NULL, NULL),
(314, 'L1177', 'CV AHMAD PILAR', NULL, NULL),
(315, 'L1178', 'PT BINA BUSANA INTERNUSA', NULL, NULL),
(316, 'L1179', 'PT SRI BERKAH INTERNASIONAL', NULL, NULL),
(317, 'L1180', 'PT META PRIMA ABADI', NULL, NULL),
(318, 'L1181', 'PT TRIPUTRA INVESTINDO ARYA', NULL, NULL),
(319, 'L1182', 'PT ALAM PERMATA NUSANTARA', NULL, NULL),
(320, 'L1183', 'CV. MULTI TEKNIK EQUIPMENT', NULL, NULL),
(321, 'L1184', 'PT MITSUBISHI UFJ LEASE & FI', NULL, NULL),
(322, 'L1185', 'PT ASURANSI MITRA ASIA', NULL, NULL),
(323, 'L1186', 'PT ENVISION', NULL, NULL),
(324, 'L1187', 'NUSANTARA SECOM INFOTECH', NULL, NULL),
(325, 'L1188', 'PT. GARDA ANGKASA JAYA', NULL, NULL),
(326, 'L1189', 'PT. MANDIRI PRATAMA INTILOGA', NULL, NULL),
(327, 'L1190', 'GIAMM', NULL, NULL),
(328, 'L1191', 'PT. DWIDAYA WORLD WIDE', NULL, NULL),
(329, 'L1192', 'WM GLOBAL CONSULTING', NULL, NULL),
(330, 'L1193', 'CV Mitra Distribusindo Selar', NULL, NULL),
(331, 'L1194', 'Klinik Dokter Sander B', NULL, NULL),
(332, 'L1195', 'PT. TIRTAMARTANDIKA RAHARJA', NULL, NULL),
(333, 'L1196', 'PT TUV RHEINLAND INDONESIA', NULL, NULL),
(334, 'L1197', 'PT SUZUKI INDOMOBIL MOTOR', NULL, NULL),
(335, 'L1198', 'PT INILED INDONESIA INDUSTRI', NULL, NULL),
(336, 'L1199', 'PT TNT SKYPARK INTER EXPRESS', NULL, NULL),
(337, 'L1200', 'BRATACHEM', NULL, NULL),
(338, 'L1201', 'PT. BINTANG ABADI ANGKASA', NULL, NULL),
(339, 'L1202', 'CV. LANCAR JAYA', NULL, NULL),
(340, 'L1203', 'PT. DHARMA POLIPLAST', NULL, NULL),
(341, 'L1204', 'Jaya Sakti Notebook', NULL, NULL),
(342, 'L1205', 'CV. PRATAMA MANDIRI', NULL, NULL),
(343, 'L1206', 'CV. LANCAR JAYA', NULL, NULL),
(344, 'L1207', 'PT FT GROUP INDONESIA', NULL, NULL),
(345, 'L1208', 'PT SHARP ELECTRONISC INDONES', NULL, NULL),
(346, 'L1209', 'PT. INTI CIPTA SOLUSINDO', NULL, NULL),
(347, 'L1300', 'TOKO BESI BAJA INDAH', NULL, NULL),
(348, 'L1301', 'PT Asuransi Intra Asia', NULL, NULL),
(349, 'L1302', 'PT. Asteria Riksa Indonesia', NULL, NULL),
(350, 'L1303', 'PT. INTAN MADIRI', NULL, NULL),
(351, 'L1304', 'PT. RANAJAYA DIPA HITA', NULL, NULL),
(352, 'L1305', 'PT AZ TECS INDONESIA', NULL, NULL),
(353, 'L1306', 'RS. Permata Keluarga', NULL, NULL),
(354, 'L1307', 'PT BERKAH HIKARI ALISHA', NULL, NULL),
(355, 'L1308', 'PT KAWASAKI MOTOR INDONESIA', NULL, NULL),
(356, 'L1309', 'TREE PARK', NULL, NULL),
(357, 'L1310', 'PT. ABDITAMA TEKNOLOGI INDO', NULL, NULL),
(358, 'L1311', 'PT. PANDULIMA HYDROMATIC', NULL, NULL),
(359, 'L1312', 'PT. MODU SYSTEM INDONESIA', NULL, NULL),
(360, 'L1313', 'CV. MUTIARA HARDWARE', NULL, NULL),
(361, 'L1314', 'RS HERMINA KARAWANG', NULL, NULL),
(362, 'L1315', 'PT.SUGIMURA CHEMICAL IND', NULL, NULL),
(363, 'L1316', 'PT KARUNIA ELEKTRIK', NULL, NULL),
(364, 'L1317', 'PT ETICON REKAYASA TEKNIK', NULL, NULL),
(365, 'L1318', 'PT SRIBERKAH INTERNASIONAL', NULL, NULL),
(366, 'L1319', 'BINA POTENSIA INDONESIA', NULL, NULL),
(367, 'L1320', 'PT KOMPRESOR ENERGI NUSANTAR', NULL, NULL),
(368, 'L1400', 'PT TRAFOINDO PRIMA PERKASA', NULL, NULL),
(369, 'L1401', 'PT. SAGA HIKARITEKNINDO SEIA', NULL, NULL),
(370, 'L1402', 'PT. CIHANJUANG ERA GLOBAL', NULL, NULL),
(371, 'L1403', 'PT MAPAL INDONESIA', NULL, NULL),
(372, 'L1404', 'PT ASIA TALENTA MANDIRI', NULL, NULL),
(373, 'L1405', 'PT BUANA TUNGGUL', NULL, NULL),
(374, 'L1406', 'CV. Sukses Mulia Solusindo', NULL, NULL),
(375, 'L1407', 'PT. INDIRA BERKAT SEJAHTERA', NULL, NULL),
(376, 'L1408', 'PT ABADI BARU TEKNIKATAMA', NULL, NULL),
(377, 'L1410', 'PT ANDHIKA MITRA TEKNIK', NULL, NULL),
(378, 'L1412', 'PT.Ranajaya Dipta Himaa', NULL, NULL),
(379, 'L50979', 'WIBRA ELECTRIC', NULL, NULL),
(380, 'L50980', 'PT ASTRA GRAPHIA TBK', NULL, NULL),
(381, 'L9999', 'Sankei Dharma Indonesia', NULL, NULL),
(382, 'L1321', 'PT. ASTRA HONDA MOTOR', NULL, NULL),
(383, 'L1409', 'PT. YOGYA PRESISI TEHNIKATAM', NULL, NULL),
(384, 'L1411', 'PT. INDIRA BERKAT SEJAHTERA', NULL, NULL),
(385, 'L1413', 'PT. ELECTRA JAYA SEMESTA', NULL, NULL),
(386, 'L1414', 'PT. MITSUBISHI HC CAPITAL', NULL, NULL),
(387, 'L1415', 'PT. PRATAMAEKA BIGCO IND', NULL, NULL),
(388, 'L1416', 'PT. MITSUI KINZOKU CATALYSTS', NULL, NULL),
(389, 'L1417', 'KAP TANUBRATA SUTANTO FAHMI', NULL, NULL),
(390, 'L1418', 'PT. Jayaindo Abadi Makmur', NULL, NULL),
(391, 'L1419', 'SMARTFREN', NULL, NULL),
(392, 'L1420', 'PT AM/NS INDONESINULLA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bagian_id` int(10) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `bagian_id`, `nik`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/January2022/cuh0508AHiVDbufayOIn.png', NULL, '$2y$10$zgnYEethG8aAD0qyG8gR/eYlmayJVgfJMy4h4nXVNBAYbe4I.wmCS', NULL, '{\"locale\":\"en\"}', '2022-01-04 19:04:02', '2022-01-04 19:26:48', 0, ''),
(2, 1, 'Amrullah', 'amrullah@sankei-dharma.com', 'users/January2022/LAE8XWHLGMHVmXlwWW6v.png', NULL, '$2y$10$rp2Y8UVT.yTN6yX2aVzgA.FgTrMxYUVRnd59aixJC8WYmHM7XGvD2', NULL, '{\"locale\":\"en\"}', '2022-01-04 19:07:15', '2022-01-06 01:26:10', 7, '190/1216'),
(3, 2, 'Dedi Irawan', 'dedi.irawan@sankei-dharma.com', 'users/January2022/FEF23dBMDRIxFOWz4aJB.png', NULL, '$2y$10$AIRWmT3K1KtJW4KR7MGaYOJRh5Nt8HogXmFFSw447XR6.2j..yFUe', NULL, '{\"locale\":\"en\"}', '2022-01-04 20:30:20', '2022-01-06 01:23:47', 2, '015/0212'),
(4, 2, 'Arifin', 'arifin@sankei-dharma.co.id', 'users/January2022/I7Sbh4HYQlfjWOhUtno2.png', NULL, '$2y$10$yIRs6Yk57GpohCA9jmM89O3f7XRYnGSPph3xgSBFHJfYL7zHfMPwe', NULL, '{\"locale\":\"en\"}', '2022-01-06 01:25:25', '2022-03-25 01:44:10', 2, '018/0212'),
(5, 2, 'Muhidin', 'muhidin@sankei-dharma.co.id', 'users/January2022/NaUeGEjHkJbhcU2tPFml.png', NULL, '$2y$10$gcYiUpiiXiBCP3Pa4A4q9O5yqFNABNRZAJHcl99yIOvuVM.oavWmS', NULL, '{\"locale\":\"en\"}', '2022-01-06 01:27:36', '2022-03-25 01:19:07', 2, '024/0412'),
(6, 2, 'Enjun Junaedi', 'enjun.junaedi@sankei-dharma.co.id', 'users/January2022/FPN9uuh8gLrqLFGqXPNG.png', NULL, '$2y$10$E2Uk6kjKqVhAvIsl0fJxD.1Q6VHKVwZ4HmuB7Jo.CtLJjhNf3vhGm', NULL, '{\"locale\":\"en\"}', '2022-01-06 01:29:47', '2022-03-25 00:59:41', 2, '056/0913'),
(7, 2, 'Marjuki', 'marjuki@sankei-dharma.co.id', 'users/January2022/VSOLQCP2gaE0Gv2GgoGK.png', NULL, '$2y$10$s8pV.77KKRI4O5BwOnbHtuWa8ZdAia.kSTvE7P7auVO25/Iz1oUZa', NULL, '{\"locale\":\"en\"}', '2022-01-06 01:31:02', '2022-03-23 19:46:07', 2, '073/0414'),
(8, 2, 'User', 'user@gmail.com', 'users/default.png', NULL, '$2y$10$qv9G2quRdIo8Oke5Xi99zOKznkJszZdqOTMlPHAWeIuolhjCYzBme', NULL, '{\"locale\":\"en\"}', '2022-01-12 02:05:20', '2022-03-24 18:13:00', 3, '1234'),
(9, 3, 'Management', 'management@gmail.com', 'users/default.png', NULL, '$2y$10$tXFPiUYr4A7/0/DhJ.sNjOGosg1lW/G.wwo8gZwmf7d.EmiHCDgRC', NULL, '{\"locale\":\"en\"}', '2022-01-12 02:10:03', '2022-03-25 00:36:08', 3, '123456'),
(10, 1, 'Ahmad Haidar', 'Haidar@sankei-dharma.com', 'users/March2022/KqhCrnJV6p8TZTrBPamP.jpeg', NULL, '$2y$10$gw26bmYyYmOY2ILv0CkoF.NFIasGWR32WFp6ibK0fIWxqwwQMi8.u', NULL, '{\"locale\":\"en\"}', '2022-03-08 20:56:05', '2022-03-21 21:45:24', 7, '3204/0222');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bagian_nama_bagian_unique` (`nama_bagian`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `line_nama_line_unique` (`nama_line`);

--
-- Indexes for table `line_pic`
--
ALTER TABLE `line_pic`
  ADD KEY `line_pic_line_id_index` (`line_id`),
  ADD KEY `line_pic_user_id_index` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_kode_supplier_unique` (`kode_supplier`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `line`
--
ALTER TABLE `line`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
