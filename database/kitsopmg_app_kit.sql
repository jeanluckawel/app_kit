-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2026 at 03:17 AM
-- Server version: 11.4.10-MariaDB-cll-lve-log
-- PHP Version: 8.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitsopmg_app_kit`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `number` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `province` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `emergency_phone` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `employee_id`, `number`, `city`, `province`, `phone`, `email`, `emergency_phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAM_KIT001', '26', 'Av.shiko/Q. jolie site', 'Lualaba', '+243975675139', 'helmuthbarry5@gmail.com', '+243895280627', '2026-02-09 00:04:32', '2026-02-09 00:04:32', NULL),
(2, 'KAM_KIT002', '894', 'Av.kamina/Q.industriel', 'Lualaba', '+243818834084', 'Isaac22msiri@gmail.com', '+243998842527', '2026-02-09 17:18:40', '2026-02-09 17:18:40', NULL),
(3, 'KAM_KIT003', NULL, 'Av.ir minda/Q.jolie site', 'Lualaba', '+243977007776', 'mwendkeren611@gmail.com', '+243995865323', '2026-02-09 20:44:09', '2026-02-09 20:44:09', NULL),
(4, 'KAM_KIT004', NULL, 'Av.kisumbili/Q.jolie site', 'Lualaba', '+243994066689', NULL, '+243997681717', '2026-02-09 23:04:51', '2026-02-09 23:04:51', NULL),
(5, 'KAM_KIT005', '2044', 'Av.mangi/Q.kamanyola', 'Lualaba', '+243973100361', 'esaiekitungwakahenga@gmail.com', '+243843291937', '2026-02-10 11:25:11', '2026-02-10 11:25:11', NULL),
(6, 'KAM_KIT006', '26', 'Av.shiko/Q. jolie site', 'Lualaba', '+243977043047', NULL, '+243971665250', '2026-02-10 11:39:20', '2026-02-10 11:39:20', NULL),
(7, 'KAM_KIT007', '32', 'Av.kabongo/ville lubumbashi', 'haut katanga', '+243906032796', NULL, '+243819713052', '2026-02-10 11:58:24', '2026-02-10 11:58:24', NULL),
(8, 'KAM_KIT008', NULL, 'Av.tshokwe/Q.kabila', 'Lualaba', '+243970695049', 'pascalpc021@gmail.com', NULL, '2026-02-10 12:11:41', '2026-02-10 12:11:41', NULL),
(9, 'KAM_KIT009', '1765', 'Av.ldk2/Q.industriel', 'Lualaba', '+243976177217', NULL, '+243826579251', '2026-02-10 13:10:01', '2026-02-10 13:10:01', NULL),
(10, 'KAM_KIT011', NULL, 'Av.ir minda/Q. jolie site', 'Lualaba', '+243827444418', 'dieudomuteb026@gmail.com', '+243974414118', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(11, 'KAM_KIT010', NULL, 'Av.ir minda/Q. jolie site', 'Lualaba', '+243827444418', 'dieudomuteb026@gmail.com', '+243974414118', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(12, 'KAM_KIT012', NULL, 'Av.ir minda/Q. jolie site', 'Lualaba', '+243827444418', 'dieudomuteb026@gmail.com', '+243974414118', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(13, 'KAM_KIT013', NULL, 'Av.ir minda/Q. jolie site', 'Lualaba', '+243827444418', 'dieudomuteb026@gmail.com', '+243974414118', '2026-02-10 20:54:30', '2026-02-10 20:54:30', NULL),
(14, 'KAM_KIT014', NULL, 'Av.shiko/Q.jolie site', 'Lualaba', '+243999166126', 'mulumbamanasse99@gmail.com', '+243974572055', '2026-02-10 21:10:37', '2026-02-10 21:10:37', NULL),
(15, 'KAM_KIT015', NULL, 'Av.pcr/Q.jolie site', 'Lualaba', '+243974720787', NULL, '+243994042022', '2026-02-11 19:34:38', '2026-02-11 19:34:38', NULL),
(16, 'KAM_KIT016', '102', 'Av.soke/Q.jolie site', 'Lualaba', '+243990168141', 'makongad4@gmail.com', '+243973555275', '2026-02-11 19:52:17', '2026-02-11 19:52:17', NULL),
(17, 'KAM_KIT017', '54', 'Av.chemin public/Q.rva', 'Lualaba', '+243971313527', 'jeancybanzamulopwe@gmail.com', '+243824112135', '2026-02-11 20:29:55', '2026-02-11 20:29:55', NULL),
(18, 'KAM_KIT018', NULL, 'Av.hpk/Q.bay pass', 'Lualaba', '+243977250362', 'lupasaberlick@gmail.com', '+243854407638', '2026-02-11 20:46:08', '2026-02-11 20:46:08', NULL),
(19, 'KAM_KIT019', NULL, 'Av.procureur/Q.jolie cite', 'Lualaba', '+243995571450', NULL, NULL, '2026-02-11 20:59:38', '2026-02-11 20:59:38', NULL),
(20, 'KAM_KIT020', '6B', 'Av.kongolo/gcm luilu', 'Lualaba', '+243816119698', 'kayongguelord@gmail.com', '+243990403762', '2026-02-11 21:17:17', '2026-02-11 21:17:17', NULL),
(21, 'KAM_KIT021', NULL, 'Av.jean marie kaseya/Q.golf istm', 'Lualaba', '+243975334845', NULL, NULL, '2026-02-11 22:24:32', '2026-02-11 22:24:32', NULL),
(22, 'KAM_KIT022', '68', 'Av.Macon/cgm luilu', 'Lualaba', '+243992884363', NULL, NULL, '2026-02-12 11:31:35', '2026-02-12 11:31:35', NULL),
(23, 'KAM_KIT023', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-13 11:35:40', '2026-02-13 11:35:40', NULL),
(24, 'KAM_KIT023', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-13 11:46:06', '2026-02-13 11:46:06', NULL),
(25, 'KAM_KIT023', '45', 'Manika', 'Lualaba', '0990387188', NULL, NULL, '2026-02-26 16:30:15', '2026-02-26 16:30:15', NULL),
(26, 'KAM_KIT027', '45', 'Manika', 'Lualaba', '0990387188', 'jeanpaultshunza2@gmail.com', NULL, '2026-02-26 16:30:16', '2026-03-03 14:19:29', NULL),
(27, 'KAM_KIT028', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26 18:34:27', '2026-02-26 18:34:27', NULL),
(28, 'KAM_KIT029', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26 18:35:26', '2026-02-26 18:35:26', NULL),
(29, 'KAM_KIT030', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26 18:39:37', '2026-02-26 18:39:37', NULL),
(30, 'KAM_KIT031', '875', 'Manika', 'Lualaba', '+243970481924', 'robinkampinga@gmail.com', '+243816495947', '2026-02-26 18:55:09', '2026-02-26 18:55:09', NULL),
(31, 'KAM_KIT032', '875', 'Manika', 'Lualaba', '+243970481924', 'robinkampinga@gmail.com', '+243816495947', '2026-02-26 18:55:09', '2026-02-26 18:55:09', NULL),
(32, 'KAM_KIT033', NULL, 'Chiko', 'Lualaba', '+243974336923', NULL, '+24381649547', '2026-02-26 19:03:37', '2026-02-26 19:03:37', NULL),
(33, 'KAM_KIT034', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26 19:41:12', '2026-02-26 19:41:12', NULL),
(34, 'KAM_KIT035', '31', 'Av.lualaba/Cite.manika', 'Lualaba', '+243974390799', NULL, NULL, '2026-02-27 18:47:50', '2026-02-27 18:47:50', NULL),
(35, 'KAM_KIT036', '10', 'Av.ungu Ngandu', 'Lualaba', '+243973861634', NULL, NULL, '2026-02-27 19:49:20', '2026-02-27 19:49:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:63:{i:0;a:4:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:1;a:4:{s:1:\"a\";s:1:\"2\";s:1:\"b\";s:15:\"employee_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:2;a:4:{s:1:\"a\";s:1:\"3\";s:1:\"b\";s:14:\"employee_store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:3;a:4:{s:1:\"a\";s:1:\"4\";s:1:\"b\";s:13:\"employee_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:4;a:4:{s:1:\"a\";s:1:\"5\";s:1:\"b\";s:13:\"employee_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:5;a:4:{s:1:\"a\";s:1:\"6\";s:1:\"b\";s:13:\"employee_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:6;a:4:{s:1:\"a\";s:1:\"7\";s:1:\"b\";s:16:\"employee_disable\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:7;a:4:{s:1:\"a\";s:1:\"8\";s:1:\"b\";s:15:\"employee_import\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:8;a:4:{s:1:\"a\";s:1:\"9\";s:1:\"b\";s:15:\"employee_export\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:9;a:4:{s:1:\"a\";s:2:\"10\";s:1:\"b\";s:15:\"employee_search\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:10;a:4:{s:1:\"a\";s:2:\"11\";s:1:\"b\";s:12:\"employee_cdd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:11;a:4:{s:1:\"a\";s:2:\"12\";s:1:\"b\";s:12:\"employee_cdi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:12;a:4:{s:1:\"a\";s:2:\"13\";s:1:\"b\";s:21:\"employee_contract_end\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:13;a:4:{s:1:\"a\";s:2:\"14\";s:1:\"b\";s:20:\"employee_certificate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:14;a:4:{s:1:\"a\";s:2:\"15\";s:1:\"b\";s:16:\"employee_address\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:15;a:4:{s:1:\"a\";s:2:\"16\";s:1:\"b\";s:14:\"employee_photo\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:16;a:4:{s:1:\"a\";s:2:\"17\";s:1:\"b\";s:16:\"employee_company\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:17;a:4:{s:1:\"a\";s:2:\"18\";s:1:\"b\";s:17:\"employee_children\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:18;a:4:{s:1:\"a\";s:2:\"19\";s:1:\"b\";s:19:\"employee_dependants\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:19;a:4:{s:1:\"a\";s:2:\"20\";s:1:\"b\";s:18:\"employee_emergency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:20;a:4:{s:1:\"a\";s:2:\"21\";s:1:\"b\";s:15:\"employee_salary\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:21;a:4:{s:1:\"a\";s:2:\"22\";s:1:\"b\";s:13:\"customer_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:22;a:4:{s:1:\"a\";s:2:\"23\";s:1:\"b\";s:15:\"customer_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:23;a:4:{s:1:\"a\";s:2:\"24\";s:1:\"b\";s:14:\"customer_store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:24;a:4:{s:1:\"a\";s:2:\"25\";s:1:\"b\";s:13:\"customer_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:25;a:4:{s:1:\"a\";s:2:\"26\";s:1:\"b\";s:15:\"customer_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:26;a:4:{s:1:\"a\";s:2:\"27\";s:1:\"b\";s:15:\"customer_search\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:27;a:4:{s:1:\"a\";s:2:\"28\";s:1:\"b\";s:17:\"invoice_statement\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:28;a:4:{s:1:\"a\";s:2:\"29\";s:1:\"b\";s:14:\"invoice_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:29;a:4:{s:1:\"a\";s:2:\"30\";s:1:\"b\";s:13:\"invoice_store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:30;a:4:{s:1:\"a\";s:2:\"31\";s:1:\"b\";s:12:\"invoice_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:31;a:4:{s:1:\"a\";s:2:\"32\";s:1:\"b\";s:12:\"invoice_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:32;a:4:{s:1:\"a\";s:2:\"33\";s:1:\"b\";s:14:\"invoice_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:33;a:4:{s:1:\"a\";s:2:\"34\";s:1:\"b\";s:21:\"invoice_search_number\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:34;a:4:{s:1:\"a\";s:2:\"35\";s:1:\"b\";s:9:\"user_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:35;a:4:{s:1:\"a\";s:2:\"36\";s:1:\"b\";s:11:\"user_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:36;a:4:{s:1:\"a\";s:2:\"37\";s:1:\"b\";s:10:\"user_store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:37;a:4:{s:1:\"a\";s:2:\"38\";s:1:\"b\";s:9:\"user_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:38;a:4:{s:1:\"a\";s:2:\"39\";s:1:\"b\";s:11:\"user_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:39;a:4:{s:1:\"a\";s:2:\"40\";s:1:\"b\";s:11:\"user_search\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:40;a:4:{s:1:\"a\";s:2:\"41\";s:1:\"b\";s:23:\"user_update_permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:41;a:4:{s:1:\"a\";s:2:\"42\";s:1:\"b\";s:9:\"role_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:42;a:4:{s:1:\"a\";s:2:\"43\";s:1:\"b\";s:11:\"role_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:43;a:4:{s:1:\"a\";s:2:\"44\";s:1:\"b\";s:10:\"role_store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:44;a:4:{s:1:\"a\";s:2:\"45\";s:1:\"b\";s:9:\"role_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:45;a:4:{s:1:\"a\";s:2:\"46\";s:1:\"b\";s:11:\"role_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:46;a:4:{s:1:\"a\";s:2:\"47\";s:1:\"b\";s:12:\"payroll_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:47;a:4:{s:1:\"a\";s:2:\"48\";s:1:\"b\";s:14:\"payroll_search\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:48;a:4:{s:1:\"a\";s:2:\"49\";s:1:\"b\";s:14:\"payroll_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:49;a:4:{s:1:\"a\";s:2:\"50\";s:1:\"b\";s:13:\"payroll_store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:50;a:4:{s:1:\"a\";s:2:\"51\";s:1:\"b\";s:12:\"payroll_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:51;a:4:{s:1:\"a\";s:2:\"52\";s:1:\"b\";s:12:\"payroll_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:52;a:4:{s:1:\"a\";s:2:\"53\";s:1:\"b\";s:15:\"payroll_history\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:53;a:4:{s:1:\"a\";s:2:\"54\";s:1:\"b\";s:14:\"payroll_export\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:54;a:4:{s:1:\"a\";s:2:\"55\";s:1:\"b\";s:19:\"payroll_export_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:55;a:4:{s:1:\"a\";s:2:\"56\";s:1:\"b\";s:12:\"expense_type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:56;a:4:{s:1:\"a\";s:2:\"57\";s:1:\"b\";s:14:\"expense_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:57;a:4:{s:1:\"a\";s:2:\"58\";s:1:\"b\";s:12:\"expense_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:58;a:4:{s:1:\"a\";s:2:\"59\";s:1:\"b\";s:15:\"expense_history\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:59;a:4:{s:1:\"a\";s:2:\"60\";s:1:\"b\";s:17:\"perception_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:60;a:4:{s:1:\"a\";s:2:\"61\";s:1:\"b\";s:18:\"perception_history\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:61;a:4:{s:1:\"a\";s:2:\"62\";s:1:\"b\";s:15:\"perception_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:62;a:4:{s:1:\"a\";s:2:\"63\";s:1:\"b\";s:15:\"language_switch\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";s:1:\"5\";s:1:\"b\";s:4:\"Test\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";s:1:\"2\";s:1:\"b\";s:3:\"drh\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";s:1:\"3\";s:1:\"b\";s:5:\"clerk\";s:1:\"c\";s:3:\"web\";}}}', 1781273040);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `childrens`
--

CREATE TABLE `childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `full_name` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childrens`
--

INSERT INTO `childrens` (`id`, `employee_id`, `full_name`, `date_of_birth`, `gender`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAM_KIT001', 'Soraya Ilunga Kalumba', '2012-08-01', 'F', '2026-02-09 00:04:32', '2026-05-01 15:23:48', NULL),
(2, 'KAM_KIT002', 'Thaliana Kayembe mubemba', '2023-09-18', 'F', '2026-02-09 17:18:40', '2026-05-01 15:27:13', NULL),
(3, 'KAM_KIT004', 'Stephanel Kabuya numbi', '2024-12-18', 'F', '2026-02-09 23:04:51', '2026-05-01 15:30:42', NULL),
(4, 'KAM_KIT004', 'Elveil Kuzo kalumbu', '2026-01-31', 'F', '2026-02-09 23:04:51', '2026-05-01 15:30:42', NULL),
(5, 'KAM_KIT005', 'Philipe Kahenga sangwa', '2019-08-17', 'M', '2026-02-10 11:25:11', '2026-05-01 15:47:48', NULL),
(6, 'KAM_KIT005', 'Jael Faila ngungwa', '2022-03-16', 'F', '2026-02-10 11:25:11', '2026-05-01 15:47:48', NULL),
(7, 'KAM_KIT006', 'Odilon Lenge wa monga', '2019-07-25', 'M', '2026-02-10 11:39:20', '2026-05-01 15:47:23', NULL),
(8, 'KAM_KIT006', 'Ibrahim Kalenga wa kayumba', '2024-07-28', 'M', '2026-02-10 11:39:20', '2026-05-01 15:47:23', NULL),
(9, 'KAM_KIT007', 'Chadrack Mashimango', NULL, 'M', '2026-02-10 11:58:24', '2026-06-11 18:24:01', NULL),
(10, 'KAM_KIT007', 'Miracle Mashimango', NULL, 'M', '2026-02-10 11:58:24', '2026-06-11 18:24:01', NULL),
(11, 'KAM_KIT007', 'Michael Mashimango', NULL, 'M', '2026-02-10 11:58:24', '2026-06-11 18:24:01', NULL),
(12, 'KAM_KIT007', 'Meschack Mashimango', NULL, 'M', '2026-02-10 11:58:24', '2026-06-11 18:24:01', NULL),
(13, 'KAM_KIT007', 'Raphael Mashimango', NULL, 'M', '2026-02-10 11:58:24', '2026-06-11 18:24:01', NULL),
(14, 'KAM_KIT008', 'Justin Mahuwa  mwanga', '2006-05-10', 'M', '2026-02-10 12:11:41', '2026-06-11 18:23:39', NULL),
(15, 'KAM_KIT009', 'Pelague Kalong disash', '2008-05-16', 'F', '2026-02-10 13:10:01', '2026-06-11 18:23:02', NULL),
(16, 'KAM_KIT009', 'Mardalie Kadang disash', '2010-06-16', 'F', '2026-02-10 13:10:01', '2026-06-11 18:23:02', NULL),
(17, 'KAM_KIT009', 'Pendelie Laish disash', NULL, 'M', '2026-02-10 13:10:01', '2026-06-11 18:23:02', NULL),
(18, 'KAM_KIT009', 'Elpida Kasil disash', '2018-11-10', 'F', '2026-02-10 13:10:01', '2026-06-11 18:23:02', NULL),
(19, 'KAM_KIT011', NULL, NULL, NULL, '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(20, 'KAM_KIT010', NULL, NULL, NULL, '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(21, 'KAM_KIT012', NULL, NULL, NULL, '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(22, 'KAM_KIT013', NULL, NULL, NULL, '2026-02-10 20:54:30', '2026-06-11 18:22:21', NULL),
(23, 'KAM_KIT014', NULL, NULL, NULL, '2026-02-10 21:10:37', '2026-06-11 18:20:44', NULL),
(24, 'KAM_KIT015', NULL, NULL, NULL, '2026-02-11 19:34:38', '2026-06-11 18:19:53', NULL),
(25, 'KAM_KIT016', 'Leanna Kuzo kalumbu', '2024-05-23', 'F', '2026-02-11 19:52:17', '2026-06-11 18:13:11', NULL),
(26, 'KAM_KIT017', NULL, NULL, NULL, '2026-02-11 20:29:55', '2026-06-11 18:12:02', NULL),
(27, 'KAM_KIT018', 'Roy Mujinga lupasa', '2023-05-01', 'M', '2026-02-11 20:46:08', '2026-06-11 18:11:20', NULL),
(28, 'KAM_KIT018', 'Ramiel Kaiji tshimwishi', '2025-02-19', 'M', '2026-02-11 20:46:08', '2026-06-11 18:11:20', NULL),
(29, 'KAM_KIT019', 'Nsenga Ntambwe', '2023-07-20', 'F', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(30, 'KAM_KIT019', 'Il est temps Ntambwe tengeneza', '2024-03-13', 'M', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(31, 'KAM_KIT019', 'Plamedie Ntambwe fenzea', '2025-01-11', 'F', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(32, 'KAM_KIT020', 'Ligth Muhongo', '2012-02-23', 'M', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(33, 'KAM_KIT020', 'Asnath Kona', '2013-12-13', 'F', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(34, 'KAM_KIT020', 'Saphnath Musambu', '2016-04-20', 'M', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(35, 'KAM_KIT020', 'Xavier Mujinga', '2018-06-02', 'M', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(36, 'KAM_KIT020', 'Asael Ndaya', '2020-05-31', 'F', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(37, 'KAM_KIT020', 'Soraya Ilunga', '2021-11-23', 'M', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(38, 'KAM_KIT020', 'Samuella Kona', '2024-07-26', 'M', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(39, 'KAM_KIT021', 'Chris Bora', '2019-03-18', 'M', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(40, 'KAM_KIT022', 'John Mafu nguji', '2021-05-12', 'M', '2026-02-12 11:31:35', '2026-06-11 18:07:33', NULL),
(41, 'KAM_KIT022', 'Johane Mwema lunda', '2024-02-05', 'M', '2026-02-12 11:31:35', '2026-06-11 18:07:33', NULL),
(42, 'KAM_KIT022', 'Joakim Tshisola sakisa', '2026-01-05', 'M', '2026-02-12 11:31:35', '2026-06-11 18:07:33', NULL),
(43, 'KAM_KIT023', NULL, NULL, NULL, '2026-02-13 11:35:40', '2026-02-19 19:10:17', NULL),
(44, 'KAM_KIT023', NULL, NULL, NULL, '2026-02-13 11:46:06', '2026-02-19 19:10:17', NULL),
(45, 'KAM_KIT031', 'Thania Kahemba', '2023-11-10', 'F', '2026-02-26 18:55:09', '2026-02-26 19:06:36', NULL),
(46, 'KAM_KIT031', 'Thalia', '2023-11-10', 'F', '2026-02-26 18:55:09', '2026-02-26 19:06:36', NULL),
(47, 'KAM_KIT032', 'Thania Kahemba', '2023-11-10', 'F', '2026-02-26 18:55:09', '2026-02-26 19:12:04', NULL),
(48, 'KAM_KIT032', 'Thalia', '2023-11-10', 'F', '2026-02-26 18:55:09', '2026-02-26 19:12:04', NULL),
(49, 'KAM_KIT033', 'Consilia Monga', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(50, 'KAM_KIT033', 'Tharesse Ngoy', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(51, 'KAM_KIT033', 'Tharline Kapemba', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(52, 'KAM_KIT033', 'Thaecia Kamwanya', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(53, 'KAM_KIT033', 'Tharmel Tumb', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(54, 'KAM_KIT033', 'Tharael Ngoie', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(55, 'KAM_KIT033', 'Tharcisse Kazadi', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(56, 'KAM_KIT033', 'Thareck Kazadi', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(57, 'KAM_KIT033', 'Tharciel Kuzo', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(58, 'KAM_KIT033', 'Tharssaint Kazadi', NULL, NULL, '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(59, 'KAM_KIT035', 'Samy Mbelenge', '2002-06-21', 'M', '2026-02-27 18:47:50', '2026-06-11 18:05:20', NULL),
(60, 'KAM_KIT035', 'Melissa Yav', '2023-11-14', 'F', '2026-02-27 18:47:50', '2026-06-11 18:05:20', NULL),
(61, 'KAM_KIT036', 'Damel Kabadi', '2025-01-03', 'M', '2026-02-27 19:49:20', '2026-02-27 19:55:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `job_title` varchar(191) DEFAULT NULL,
  `department` varchar(191) DEFAULT NULL,
  `section` varchar(191) DEFAULT NULL,
  `contract_type` enum('CDI','CDD','Stage','Consultant') DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `end_contract_date` date DEFAULT NULL,
  `work_location` varchar(191) DEFAULT NULL,
  `supervisor` varchar(191) DEFAULT NULL,
  `employee_type` enum('Full Time','Part Time') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `employee_id`, `job_title`, `department`, `section`, `contract_type`, `hire_date`, `end_contract_date`, `work_location`, `supervisor`, `employee_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAM_KIT001', NULL, '2', NULL, 'CDD', '2026-02-01', '2026-04-30', 'Office', 'HR Manager', 'Full Time', '2026-02-09 00:04:32', '2026-05-01 15:20:02', NULL),
(2, 'KAM_KIT002', NULL, '4', NULL, 'CDD', '2026-02-01', '2026-04-30', 'Site', 'HR Manager', 'Full Time', '2026-02-09 17:18:40', '2026-05-01 15:27:13', NULL),
(3, 'KAM_KIT004', NULL, '4', NULL, 'CDD', '2026-02-01', '2026-04-30', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-09 23:04:51', '2026-05-01 15:30:42', NULL),
(4, 'KAM_KIT003', NULL, '4', NULL, 'CDD', '2026-02-01', '2026-04-30', 'Site', 'HR Manager', 'Full Time', '2026-02-09 23:06:18', '2026-05-01 15:29:36', NULL),
(5, 'KAM_KIT005', NULL, '4', NULL, 'CDD', '2026-02-01', '2026-04-30', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-10 11:25:11', '2026-05-01 15:47:48', NULL),
(6, 'KAM_KIT006', NULL, '4', NULL, 'CDD', '2026-02-01', '2026-04-30', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-10 11:39:20', '2026-05-01 15:47:23', NULL),
(7, 'KAM_KIT007', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'Site Manager', 'Full Time', '2026-02-10 11:58:24', '2026-06-11 18:24:01', NULL),
(8, 'KAM_KIT008', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-10 12:11:41', '2026-06-11 18:23:39', NULL),
(9, 'KAM_KIT009', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-10 13:10:01', '2026-06-11 18:23:02', NULL),
(10, 'KAM_KIT011', NULL, NULL, NULL, 'CDD', '2026-02-01', '2026-05-31', 'Kolwezi Garage', 'NELLY KUZO', 'Full Time', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(11, 'KAM_KIT010', NULL, NULL, NULL, 'CDD', '2026-02-01', '2026-05-31', 'Kolwezi Garage', 'NELLY KUZO', 'Full Time', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(12, 'KAM_KIT012', NULL, NULL, NULL, 'CDD', '2026-02-01', '2026-05-31', 'Kolwezi Garage', 'NELLY KUZO', 'Full Time', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(13, 'KAM_KIT013', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-10 20:54:30', '2026-06-11 18:22:21', NULL),
(14, 'KAM_KIT014', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-10 21:10:37', '2026-06-11 18:20:44', NULL),
(15, 'KAM_KIT015', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-11 19:34:38', '2026-06-11 18:19:53', NULL),
(16, 'KAM_KIT016', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-11 19:52:17', '2026-06-11 18:13:11', NULL),
(17, 'KAM_KIT017', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-11 20:29:55', '2026-06-11 18:12:02', NULL),
(18, 'KAM_KIT018', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-11 20:46:08', '2026-06-11 18:11:20', NULL),
(19, 'KAM_KIT019', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(20, 'KAM_KIT020', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(21, 'KAM_KIT021', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'Site Manager', 'Full Time', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(22, 'KAM_KIT022', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Site', 'HR Manager', 'Full Time', '2026-02-12 11:31:35', '2026-06-11 18:07:33', NULL),
(23, 'KAM_KIT023', NULL, NULL, NULL, 'CDI', '2026-02-19', NULL, 'Site', 'HR Manager', 'Part Time', '2026-02-13 11:35:40', '2026-02-19 19:10:17', NULL),
(24, 'KAM_KIT023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-13 11:46:06', '2026-02-13 11:46:06', NULL),
(25, 'KAM_KIT023', NULL, '2', NULL, 'CDD', NULL, NULL, 'Kolwezi', 'Nelly Kuzo', 'Full Time', '2026-02-26 16:30:15', '2026-02-26 16:30:15', NULL),
(26, 'KAM_KIT027', NULL, '2', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Office', 'HR Manager', 'Full Time', '2026-02-26 16:30:16', '2026-06-11 18:07:00', NULL),
(27, 'KAM_KIT028', NULL, '4', '11', 'CDD', NULL, NULL, 'Site', NULL, 'Full Time', '2026-02-26 18:34:27', '2026-02-26 18:34:27', NULL),
(28, 'KAM_KIT029', '21', '4', '11', 'CDD', '2026-02-01', NULL, 'Hybrid', 'HR Manager', 'Full Time', '2026-02-26 18:35:26', '2026-02-26 18:35:26', NULL),
(29, 'KAM_KIT030', NULL, NULL, NULL, 'CDD', '2026-02-01', '2026-05-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-26 18:39:02', '2026-02-26 19:13:27', NULL),
(30, 'KAM_KIT031', '6', '1', '3', 'CDD', '2026-02-01', '2026-05-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-26 18:55:09', '2026-02-26 19:06:36', NULL),
(31, 'KAM_KIT032', NULL, NULL, NULL, 'CDD', '2026-02-01', '2026-05-31', 'Office', 'HR Manager', 'Full Time', '2026-02-26 18:55:09', '2026-02-26 19:11:42', NULL),
(32, 'KAM_KIT033', NULL, NULL, NULL, 'CDD', '2026-02-01', '2026-05-31', 'Site', 'Site Manager', 'Full Time', '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(33, 'KAM_KIT034', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-26 19:40:02', '2026-06-11 18:05:48', NULL),
(34, 'KAM_KIT036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-27 19:55:28', '2026-02-27 19:55:28', NULL),
(35, 'KAM_KIT035', NULL, '4', NULL, 'CDD', '2026-05-01', '2026-07-31', 'Hybrid', 'HR Manager', 'Full Time', '2026-02-27 19:56:28', '2026-06-11 18:05:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `id_nat` varchar(191) DEFAULT NULL,
  `rccm` varchar(191) DEFAULT NULL,
  `nif` varchar(191) DEFAULT NULL,
  `province` varchar(191) DEFAULT NULL,
  `ville` varchar(191) DEFAULT NULL,
  `commune` varchar(191) DEFAULT NULL,
  `quartier` varchar(191) DEFAULT NULL,
  `avenue` varchar(191) DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `telephone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `id_nat`, `rccm`, `nif`, `province`, `ville`, `commune`, `quartier`, `avenue`, `numero`, `telephone`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAMOA COPPER SA', '05-B0500-N37233JJ', '14-B-1683', 'A0901048A', 'Lualaba', 'Kolwezi', 'Manika', 'Joli-Site', 'Route Likasi', '2404', '00243 977 333 977', 'contact@kamoacopper.com', '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Finance', NULL, '2026-02-08 17:50:14', '2026-02-08 17:50:14'),
(2, 'Human Resources', NULL, '2026-02-08 17:50:14', '2026-02-08 17:50:14'),
(3, 'IT', NULL, '2026-02-08 17:50:14', '2026-02-08 17:50:14'),
(4, 'Operations', NULL, '2026-02-08 17:50:14', '2026-02-08 17:50:14'),
(5, 'Marketing', NULL, '2026-02-08 17:50:14', '2026-02-08 17:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `dependants`
--

CREATE TABLE `dependants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `full_name` varchar(191) DEFAULT NULL,
  `relationship` enum('Father','Mother','Spouse','Brother','Sister','Mr','Mrs','Dr') DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dependants`
--

INSERT INTO `dependants` (`id`, `employee_id`, `full_name`, `relationship`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAM_KIT001', 'Dieudonnée Ilunga ngoie', 'Father', '+243895280627', 'Q/luilu', '2026-02-09 00:04:32', '2026-05-01 15:23:48', NULL),
(2, 'KAM_KIT001', 'Chantal Ilunga monga', 'Mother', '+243827909385', 'Q/luilu', '2026-02-09 00:04:32', '2026-05-01 15:23:48', NULL),
(3, 'KAM_KIT002', 'Victor Kayembe munongo', 'Father', NULL, 'Q/luilu', '2026-02-09 17:18:40', '2026-05-01 15:27:13', NULL),
(4, 'KAM_KIT002', 'Marie Kalumbu kayembe', 'Mother', NULL, 'Q/luilu', '2026-02-09 17:18:40', '2026-05-01 15:27:13', NULL),
(5, 'KAM_KIT004', 'Laurent Shebele kaputa', 'Brother', NULL, 'Av.kisumbili/Q.jolie site', '2026-02-09 23:04:51', '2026-05-01 15:30:42', NULL),
(6, 'KAM_KIT005', 'Festus Kahenga', 'Father', '+243993622296', 'Av.mangi/Q.kamanyola', '2026-02-10 11:25:11', '2026-05-01 15:47:48', NULL),
(7, 'KAM_KIT005', 'Virginie Nkogolo', 'Mother', '+243812241858', 'Av.mangi/Q.kamanyola', '2026-02-10 11:25:11', '2026-05-01 15:47:48', NULL),
(8, 'KAM_KIT006', 'Dieudonné Ilunga ngoie', 'Father', '+243895280627', 'Cite gcm luilu', '2026-02-10 11:39:20', '2026-05-01 15:47:23', NULL),
(9, 'KAM_KIT006', 'Chantal Ilunga monga', 'Mother', '+243827909385', 'Cite gcm luilu', '2026-02-10 11:39:20', '2026-05-01 15:47:23', NULL),
(10, 'KAM_KIT006', 'Willy Kitwa kalenga', 'Father', '+243820362232', 'Av.mukumbi/Q.golf istm', '2026-02-10 11:44:38', '2026-05-01 15:47:23', NULL),
(11, 'KAM_KIT006', 'Germene Twite kishiko', 'Mother', '+243973675110', 'Av.mukumbi/Q.golf istm', '2026-02-10 11:44:38', '2026-05-01 15:47:23', NULL),
(12, 'KAM_KIT007', 'Christelle Mapenzi', 'Sister', '+243896962155', NULL, '2026-02-10 11:58:24', '2026-06-11 18:24:01', NULL),
(13, 'KAM_KIT008', 'Melodie Tshingwela tshamwna', 'Father', '+243990003712', 'Av.tshokwe/Q.kabila', '2026-02-10 12:11:41', '2026-06-11 18:23:39', NULL),
(14, 'KAM_KIT008', 'Rosette Mujinga kasongo', 'Mother', NULL, 'Av.tshokwe/Q.kabila', '2026-02-10 12:11:41', '2026-06-11 18:23:39', NULL),
(15, 'KAM_KIT008', 'Dimercia Zangilo esperence', 'Sister', NULL, 'Av.tshokwe/Q.kabila', '2026-02-10 12:18:38', '2026-06-11 18:23:39', NULL),
(16, 'KAM_KIT008', 'Loren Tshilika tambwe', 'Sister', NULL, 'Av.tshokwe/Q.kabila', '2026-02-10 12:18:38', '2026-06-11 18:23:39', NULL),
(17, 'KAM_KIT008', 'Chancel Kafutshi mwangala', 'Sister', NULL, 'Av.tshokwe/Q.kabila', '2026-02-10 12:18:38', '2026-06-11 18:23:39', NULL),
(18, 'KAM_KIT009', 'Nene Kalong kayakez', 'Mother', '+243995474747', 'Av.ldk2/Q.industriel', '2026-02-10 13:10:01', '2026-06-11 18:23:02', NULL),
(19, 'KAM_KIT009', 'Daniel disash malau', 'Father', '+243998230027', 'Av.ldk2/Q.industriel', '2026-02-10 13:10:01', '2026-06-11 18:23:02', NULL),
(20, 'KAM_KIT011', NULL, NULL, NULL, NULL, '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(21, 'KAM_KIT010', NULL, NULL, NULL, NULL, '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(22, 'KAM_KIT012', NULL, NULL, NULL, NULL, '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(23, 'KAM_KIT013', NULL, NULL, NULL, NULL, '2026-02-10 20:54:30', '2026-06-11 18:22:21', NULL),
(24, 'KAM_KIT014', NULL, NULL, NULL, NULL, '2026-02-10 21:10:37', '2026-06-11 18:20:44', NULL),
(25, 'KAM_KIT015', 'Divine Kanama kona', 'Sister', NULL, 'Av.pcr/Q.jolie site', '2026-02-11 19:34:38', '2026-06-11 18:19:53', NULL),
(26, 'KAM_KIT015', 'Asnath Kalumbu mahina', 'Sister', NULL, 'Av.pcr/Q.jolie site', '2026-02-11 19:34:38', '2026-06-11 18:19:53', NULL),
(27, 'KAM_KIT016', 'Plamedie Musoye', 'Sister', NULL, 'Av.soke/Q.jolie site', '2026-02-11 19:52:17', '2026-06-11 18:13:11', NULL),
(28, 'KAM_KIT016', 'Aimée Mufuka', 'Sister', '+243986363146', 'Av.soke/Q.jolie site', '2026-02-11 19:52:17', '2026-06-11 18:13:11', NULL),
(29, 'KAM_KIT017', 'Esperance Lunda', 'Sister', '+243978839576', 'Av.lubumbashi/cite diur', '2026-02-11 20:29:55', '2026-06-11 18:12:02', NULL),
(30, 'KAM_KIT017', 'Jesken Ngoy', 'Brother', '+243974996204', 'Av.lubumbashi/cite diur', '2026-02-11 20:29:55', '2026-06-11 18:12:02', NULL),
(31, 'KAM_KIT018', 'Lajoie Masela karaj', 'Sister', '+243973329622', 'Av.hpk/Q.bay pass', '2026-02-11 20:46:08', '2026-06-11 18:11:20', NULL),
(32, 'KAM_KIT018', 'Paulin Mujinga lupasa', 'Father', '+243849830820', 'Av.hpk/Q.bay pass', '2026-02-11 20:46:08', '2026-06-11 18:11:20', NULL),
(33, 'KAM_KIT018', 'Rachel Kalumbu kanam', 'Mother', '+243814408223', 'Av.hpk/Q.bay pass', '2026-02-11 20:46:08', '2026-06-11 18:11:20', NULL),
(34, 'KAM_KIT019', 'Josiel Kahinda mwadi', 'Sister', NULL, 'Av.procureur/Q.jolie cite', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(35, 'KAM_KIT019', 'Belmira Kakung ifan', 'Sister', NULL, 'Av.procureur/Q.jolie cite', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(36, 'KAM_KIT019', 'Sarif Ntambwe ndaya', 'Sister', NULL, 'Av.procureur/Q.jolie cite', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(37, 'KAM_KIT019', 'Lora Pezo kutoma', 'Sister', NULL, 'Av.mjg/Q.latin', '2026-02-11 20:59:38', '2026-06-11 18:09:40', NULL),
(38, 'KAM_KIT020', 'Tegra Biyai', 'Brother', '+243975379542', 'Av.kongolo/gcm luilu', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(39, 'KAM_KIT020', 'Theo Musambu', 'Father', '+243810662974', 'Av.du comerce/gcm luilu', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(40, 'KAM_KIT020', 'Elene kainda', 'Mother', '+243810662974', 'Av.du comerce/gcm luilu', '2026-02-11 21:17:17', '2026-06-11 18:09:04', NULL),
(41, 'KAM_KIT021', 'Alain Bora', 'Brother', NULL, 'Av.jean marie kaseya/Q.golf istm', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(42, 'KAM_KIT021', 'Michou Kavul', 'Brother', NULL, 'Av.jean marie kaseya/Q.golf istm', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(43, 'KAM_KIT021', 'Wilson Kitwa', 'Brother', NULL, 'Av.jean marie kaseya/Q.golf istm', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(44, 'KAM_KIT021', 'Jenny Kavul', 'Sister', NULL, 'Av.jean marie kaseya/Q.golf istm', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(45, 'KAM_KIT021', 'Tresor Yumba', 'Brother', NULL, 'Av.jean marie kaseya/Q.golf istm', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(46, 'KAM_KIT021', 'Nicole Mandeline', 'Sister', NULL, 'Av.jean marie kaseya/Q.golf istm', '2026-02-11 22:24:32', '2026-06-11 18:08:34', NULL),
(47, 'KAM_KIT022', NULL, NULL, NULL, NULL, '2026-02-12 11:31:35', '2026-06-11 18:07:33', NULL),
(48, 'KAM_KIT023', NULL, NULL, NULL, NULL, '2026-02-13 11:35:40', '2026-02-19 19:10:17', NULL),
(49, 'KAM_KIT023', NULL, NULL, NULL, NULL, '2026-02-13 11:46:06', '2026-02-19 19:10:17', NULL),
(50, 'KAM_KIT036', 'Farida Caler', 'Spouse', '+243976262990', 'Av.ungu Ngandu', '2026-02-27 19:49:20', '2026-02-27 19:55:28', NULL),
(51, 'KAM_KIT036', 'Kabadi Nyembo', 'Father', NULL, NULL, '2026-02-27 19:55:28', '2026-02-27 19:55:28', NULL),
(52, 'KAM_KIT036', 'Mikombe Ilunga', 'Mother', NULL, NULL, '2026-02-27 19:55:28', '2026-02-27 19:55:28', NULL),
(53, 'KAM_KIT036', 'Mimi', 'Mrs', NULL, NULL, '2026-02-27 19:55:28', '2026-02-27 19:55:28', NULL),
(54, 'KAM_KIT036', 'Josée Sapalo', 'Mr', NULL, NULL, '2026-02-27 19:55:28', '2026-02-27 19:55:28', NULL),
(55, 'KAM_KIT016', 'Lea Kayinda', 'Spouse', NULL, NULL, '2026-02-27 19:59:33', '2026-06-11 18:13:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emergencies`
--

CREATE TABLE `emergencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `relationship` enum('Father','Mother','Spouse','Brother','Sister','Mr','Mrs','Dr') DEFAULT NULL,
  `full_name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergencies`
--

INSERT INTO `emergencies` (`id`, `employee_id`, `relationship`, `full_name`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAM_KIT001', 'Father', 'Oscar Kitobo', '+243816495947', 'Av.shiko/Q. jolie site', '2026-02-09 00:04:32', '2026-02-09 00:04:32', NULL),
(2, 'KAM_KIT002', 'Brother', 'Victor Kayembe munongo', '+243998842527', 'Q.musompo', '2026-02-09 17:18:40', '2026-02-09 17:18:40', NULL),
(3, 'KAM_KIT004', 'Spouse', 'Marlene Ngoza kaputa yav', '+243997681717', 'Av.kisumbili/Q.jolie site', '2026-02-09 23:04:51', '2026-02-09 23:04:51', NULL),
(4, 'KAM_KIT003', NULL, NULL, NULL, NULL, '2026-02-09 23:06:18', '2026-02-09 23:06:18', NULL),
(5, 'KAM_KIT005', 'Brother', 'Duglas Kitungwa muyahudi', '+243998324888', 'Av.mangi/Q.kamanyola', '2026-02-10 11:25:11', '2026-02-10 11:25:11', NULL),
(6, 'KAM_KIT006', 'Spouse', 'Marlene Twite kishiko', '+243994374442', 'Av.mukumbi/Q.golf istm', '2026-02-10 11:39:20', '2026-02-10 11:39:20', NULL),
(7, 'KAM_KIT007', 'Spouse', 'Mapenzi Kibakuli', '+243855875510', 'Av.kabongo/ville lubumbashi', '2026-02-10 11:58:24', '2026-02-10 11:58:24', NULL),
(8, 'KAM_KIT008', 'Father', 'Melodie Tshingwela tshamwna', '+243990003712', 'Av.tshokwe/Q.kabila', '2026-02-10 12:11:41', '2026-02-10 12:11:41', NULL),
(9, 'KAM_KIT009', 'Father', 'Daniel disash malau', '+243998230027', 'Av.ldk2/Q.industriel', '2026-02-10 13:10:01', '2026-02-10 13:10:01', NULL),
(10, 'KAM_KIT011', 'Brother', 'Raphael Ntambwe', '+243995323586', 'Av.ir minda/Q. jolie site', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(11, 'KAM_KIT010', 'Brother', 'Raphael Ntambwe', '+243995323586', 'Av.ir minda/Q. jolie site', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(12, 'KAM_KIT012', 'Brother', 'Raphael Ntambwe', '+243995323586', 'Av.ir minda/Q. jolie site', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(13, 'KAM_KIT013', 'Brother', 'Raphael Ntambwe', '+243995323586', 'Av.ir minda/Q. jolie site', '2026-02-10 20:54:30', '2026-02-10 20:54:30', NULL),
(14, 'KAM_KIT014', 'Sister', 'Thilda Mulumba', '+243857929771', NULL, '2026-02-10 21:10:37', '2026-02-10 21:10:37', NULL),
(15, 'KAM_KIT015', 'Mother', 'Marie claire Kazal', '+243994042022', 'Av.pcr/Q.jolie site', '2026-02-11 19:34:38', '2026-02-11 19:34:38', NULL),
(16, 'KAM_KIT016', 'Brother', 'Junior Mutunda', '+243973555275', 'Av.bay pass', '2026-02-11 19:52:17', '2026-02-11 19:52:17', NULL),
(17, 'KAM_KIT017', 'Brother', 'Francis Banza', '+243976383472', 'Av.chemin public/Q.rva', '2026-02-11 20:29:55', '2026-02-11 20:29:55', NULL),
(18, 'KAM_KIT018', 'Spouse', 'Miriam Tshisola titila', '+243976423323', 'Av.hpk/Q.bay pass', '2026-02-11 20:46:08', '2026-02-11 20:46:08', NULL),
(19, 'KAM_KIT019', 'Spouse', 'Fifi Ntambwe tuliya', '+243999108944', 'Av.procureur/Q.jolie cite', '2026-02-11 20:59:38', '2026-02-11 20:59:38', NULL),
(20, 'KAM_KIT020', 'Spouse', 'Adele Kabedi', '+243991883350', 'Av.kongolo/gcm luilu', '2026-02-11 21:17:17', '2026-02-11 21:17:17', NULL),
(21, 'KAM_KIT021', 'Spouse', 'Rachel Nsenga', '+243973350935', 'Av.jean marie kaseya/Q.golf istm', '2026-02-11 22:24:32', '2026-02-11 22:24:32', NULL),
(22, 'KAM_KIT022', 'Spouse', 'Syntiche kamina', '+243976415222', 'Av.Macon/cgm luilu', '2026-02-12 11:31:35', '2026-02-12 11:31:35', NULL),
(23, 'KAM_KIT023', NULL, NULL, NULL, NULL, '2026-02-19 19:06:10', '2026-02-19 19:06:10', NULL),
(24, 'KAM_KIT028', NULL, NULL, NULL, NULL, '2026-02-26 18:34:27', '2026-02-26 18:34:27', NULL),
(25, 'KAM_KIT029', NULL, NULL, NULL, NULL, '2026-02-26 18:35:26', '2026-02-26 18:35:26', NULL),
(26, 'KAM_KIT027', NULL, NULL, NULL, NULL, '2026-02-26 18:36:33', '2026-02-26 18:36:33', NULL),
(27, 'KAM_KIT030', NULL, NULL, NULL, NULL, '2026-02-26 18:39:37', '2026-02-26 18:39:37', NULL),
(28, 'KAM_KIT032', NULL, NULL, NULL, NULL, '2026-02-26 18:55:51', '2026-02-26 18:55:51', NULL),
(29, 'KAM_KIT033', NULL, NULL, NULL, NULL, '2026-02-26 19:04:22', '2026-02-26 19:04:22', NULL),
(30, 'KAM_KIT031', NULL, NULL, NULL, NULL, '2026-02-26 19:06:36', '2026-02-26 19:06:36', NULL),
(31, 'KAM_KIT034', NULL, NULL, NULL, NULL, '2026-02-26 19:41:12', '2026-02-26 19:41:12', NULL),
(32, 'KAM_KIT035', 'Spouse', 'Sarah Mbabi', NULL, NULL, '2026-02-27 18:47:50', '2026-02-27 18:47:50', NULL),
(33, 'KAM_KIT036', 'Spouse', 'Farida Caler', '0976262990', 'Av.ungu Ngandu', '2026-02-27 19:49:20', '2026-02-27 19:49:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `middle_name` varchar(191) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `number_card` varchar(191) DEFAULT NULL,
  `pays` varchar(191) DEFAULT NULL,
  `marital_status` enum('single','married','divorced','widowed') DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `first_name`, `last_name`, `middle_name`, `gender`, `date_of_birth`, `number_card`, `pays`, `marital_status`, `photo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAM_KIT001', 'Helmuth', 'Ngoie', 'Ilunga', 'M', '2001-09-30', '33734533565', 'Democratic Republic of the Congo', 'single', NULL, 1, '2026-02-09 00:04:32', '2026-02-09 00:04:32', NULL),
(2, 'KAM_KIT002', 'Isaac', 'Kabamba', 'Msiri', 'M', '1999-06-28', '33759330077', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-09 17:18:40', '2026-02-09 17:18:40', NULL),
(3, 'KAM_KIT003', 'Keren', 'Tshilomb', 'Mwend', 'F', '1996-11-06', '33746144291', 'Democratic Republic of the Congo', 'single', NULL, 1, '2026-02-09 20:44:09', '2026-02-09 20:44:09', NULL),
(4, 'KAM_KIT004', 'Bonheur', 'Mukaz', 'Yav', 'M', '1995-12-12', '33741138063', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-09 23:04:51', '2026-02-09 23:04:51', NULL),
(5, 'KAM_KIT005', 'Esaie', 'Kitungwa', 'Kahenga', 'M', '1995-05-25', '33721325606', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-10 11:25:11', '2026-02-10 11:25:11', NULL),
(6, 'KAM_KIT006', 'Micehl', 'Nduwa', 'Naweji', 'M', '1992-01-01', '3363709209', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-10 11:39:20', '2026-02-10 11:39:20', NULL),
(7, 'KAM_KIT007', 'Gloire', 'Runyambo', 'Mahindano', 'M', '1982-01-01', '33675112547', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-10 11:58:24', '2026-02-10 11:58:24', NULL),
(8, 'KAM_KIT008', 'Pascal', 'Tshahawa', 'Munwisa', 'M', '1996-12-04', '33753735877', 'Democratic Republic of the Congo', 'single', NULL, 1, '2026-02-10 12:11:41', '2026-02-10 12:11:41', NULL),
(9, 'KAM_KIT009', 'Keren', 'Kapalang', 'Kang', 'F', '2000-06-30', '33736112016', 'Democratic Republic of the Congo', 'single', NULL, 1, '2026-02-10 13:10:01', '2026-02-10 13:10:01', NULL),
(26, 'KAM_KIT023', 'Jean Paul', 'Tshunza', 'Lubambala', 'M', '1988-06-16', 'Nn3376398746', 'Democratic Republic Of The Congo', 'married', NULL, 0, '2026-02-26 16:30:15', '2026-02-26 16:31:11', NULL),
(27, 'KAM_KIT027', 'Jean Paul', 'Tshunza', 'Lubambala', 'M', '1988-06-16', 'Nn3376398746', NULL, 'married', NULL, 1, '2026-02-26 16:30:16', '2026-02-26 18:36:33', NULL),
(30, 'KAM_KIT030', 'Charly', 'Baluba', 'Mbedi', 'M', '1994-08-07', '3334655799', NULL, 'married', NULL, 0, '2026-02-26 18:39:02', '2026-02-27 18:42:11', NULL),
(28, 'KAM_KIT028', 'Charly', 'Baluba', 'Mbedi', 'M', '1994-08-07', 'Nn3386231568', NULL, 'married', NULL, 0, '2026-02-26 18:28:39', '2026-02-26 18:34:28', NULL),
(13, 'KAM_KIT013', 'Dieudonnée', 'Muteb', 'Ifand', 'M', '1997-12-27', '33756334604', 'Democratic Republic of the Congo', 'single', NULL, 1, '2026-02-10 20:54:30', '2026-02-10 20:54:47', NULL),
(14, 'KAM_KIT014', 'Manasse', 'Ngala Mulume', 'Mulumba', 'M', '2003-04-12', '33743747304', 'Democratic Republic of the Congo', 'single', NULL, 1, '2026-02-10 21:10:37', '2026-02-10 21:10:37', NULL),
(15, 'KAM_KIT015', 'Pierclo', 'Kalumbu', 'Yuma', 'M', '2005-10-28', '33735552403', 'Democratic Republic of the Congo', 'single', NULL, 1, '2026-02-11 19:34:38', '2026-02-11 19:34:38', NULL),
(16, 'KAM_KIT016', 'Djo', 'Kadjata', 'Makonga', 'M', '1997-07-05', '33746721634', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-11 19:52:17', '2026-02-11 19:52:17', NULL),
(17, 'KAM_KIT017', 'Jeancy', 'Banza', 'Mulopwe', 'M', '1997-10-24', '33746132933', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-11 20:29:55', '2026-02-11 20:29:55', NULL),
(18, 'KAM_KIT018', 'Berlick', 'Mujinga', 'Lupasa', 'M', '1996-01-15', '33746122721', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-11 20:46:08', '2026-02-11 20:46:08', NULL),
(19, 'KAM_KIT019', 'Nathan', 'Ngosa', 'Musindi', 'M', '1992-09-15', '33740511887', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-11 20:59:38', '2026-02-11 20:59:38', NULL),
(20, 'KAM_KIT020', 'Guelord', 'Kayong', 'Kabey', 'M', '1985-08-18', '35810417189', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-11 21:17:17', '2026-02-11 21:17:17', NULL),
(21, 'KAM_KIT021', 'Jean', 'Mwenda', 'Bwaya', 'M', '1993-08-01', '33761315171', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-11 22:24:32', '2026-02-11 22:24:32', NULL),
(22, 'KAM_KIT022', 'Alpha', 'Tshibanda', 'Yenge', 'M', '1993-02-16', '33733328205', 'Democratic Republic of the Congo', 'married', NULL, 1, '2026-02-12 11:31:35', '2026-02-12 11:31:35', NULL),
(29, 'KAM_KIT029', 'Charly', 'Baluba', 'Mbedi', 'M', '1994-08-07', 'Nn3386231568', NULL, 'married', NULL, 0, '2026-02-26 18:28:41', '2026-02-26 18:35:26', NULL),
(31, 'KAM_KIT031', 'Robin', 'Kasongo', 'Kampinga', 'M', '2000-01-22', '33764113669', NULL, 'single', NULL, 0, '2026-02-26 18:55:09', '2026-02-26 19:43:17', NULL),
(32, 'KAM_KIT032', 'Robin', 'Kasongo', 'Kampinga', 'M', '2000-01-22', '33764113669', NULL, 'single', NULL, 1, '2026-02-26 18:55:09', '2026-02-26 18:55:51', NULL),
(33, 'KAM_KIT033', 'Nelly', 'Kuzo', 'Kalumbu', 'M', '1982-11-18', '33744528211', NULL, 'married', NULL, 1, '2026-02-26 19:03:37', '2026-02-26 19:04:22', NULL),
(34, 'KAM_KIT034', 'Kishiko', 'Nyembo', 'David', 'M', '1996-07-07', 'Nn333457894', NULL, 'married', NULL, 1, '2026-02-26 19:40:02', '2026-02-26 19:41:12', NULL),
(35, 'KAM_KIT035', 'Charly', 'Baluba', 'Mbedi', 'M', '1994-08-07', '3373973242', NULL, 'married', NULL, 1, '2026-02-27 18:47:50', '2026-02-27 19:56:27', NULL),
(36, 'KAM_KIT036', 'David', 'Kishiko', 'Nyembo', 'M', '1996-07-07', '33744919581', NULL, 'married', NULL, 1, '2026-02-27 19:49:20', '2026-02-27 19:55:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(191) NOT NULL,
  `expense_type_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `file` varchar(191) DEFAULT NULL,
  `currency` enum('USD','CDF') NOT NULL,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user`, `expense_type_id`, `description`, `amount`, `file`, `currency`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin ', 1, 'OLJHGVGFCY', 200.00, NULL, 'USD', 'EXP202600001', '2026-04-20 20:55:57', '2026-04-20 20:55:57', NULL),
(2, 'Admin ', 1, 'Farine', 500.00, NULL, 'USD', 'EXP202600002', '2026-04-27 20:48:11', '2026-04-27 20:48:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense__types`
--

CREATE TABLE `expense__types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense__types`
--

INSERT INTO `expense__types` (`id`, `name`, `description`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FARINE', NULL, 'EXP20260420165515', '2026-04-20 20:55:15', '2026-04-20 20:55:15', NULL),
(2, 'PARFUM', NULL, 'EXP20260420165651', '2026-04-20 20:56:51', '2026-04-20 20:56:51', NULL),
(3, 'BALLAIS', 'Baillais', 'EXP20260427164717', '2026-04-27 20:47:17', '2026-04-27 20:47:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `po` varchar(191) DEFAULT NULL,
  `numero_invoice` varchar(191) DEFAULT NULL,
  `description` varchar(191) NOT NULL,
  `unite` varchar(191) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `nb_jours` int(11) NOT NULL DEFAULT 1,
  `pu` decimal(10,2) NOT NULL,
  `pt_jours` decimal(10,2) NOT NULL,
  `pt_mois` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`id`, `name`, `section_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Accountant', 1, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(2, 'Senior Accountant', 1, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(3, 'Auditor', 2, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(4, 'Senior Auditor', 2, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(5, 'Payroll Officer', 3, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(6, 'Payroll Manager', 3, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(7, 'Recruiter', 4, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(8, 'Recruitment Manager', 4, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(9, 'Trainer', 5, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(10, 'HR Trainer', 5, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(11, 'HR Officer', 6, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(12, 'HR Specialist', 6, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(13, 'Developer', 7, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(14, 'Senior Developer', 7, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(15, 'IT Support', 8, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(16, 'Helpdesk Technician', 8, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(17, 'Network Engineer', 9, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(18, 'Network Admin', 9, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(19, 'Logistics Officer', 10, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(20, 'Logistics Manager', 10, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(21, 'Production Operator', 11, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(22, 'Production Supervisor', 11, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(23, 'Maintenance Technician', 12, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(24, 'Maintenance Manager', 12, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(25, 'Marketing Assistant', 13, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(26, 'Advertising Manager', 13, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(27, 'Social Media Manager', 14, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(28, 'Content Creator', 14, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(29, 'Market Analyst', 15, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(30, 'Research Manager', 15, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 2),
(3, '0001_01_01_000002_create_jobs_table', 3),
(4, '2026_01_22_063021_create_employees_table', 4),
(5, '2026_01_22_063623_create_addresses_table', 5),
(6, '2026_01_22_064506_create_companies_table', 6),
(7, '2026_01_22_064658_create_childrens_table', 7),
(8, '2026_01_22_064923_create_dependants_table', 8),
(9, '2026_01_22_065025_create_emergencies_table', 9),
(10, '2026_01_22_070419_create_salaries_table', 10),
(11, '2026_01_25_133926_create_customers_table', 11),
(12, '2026_01_25_152807_create_invoices_table', 12),
(13, '2026_01_26_051608_create_permission_tables', 13),
(14, '2026_01_31_120158_create_payrolls_table', 14),
(15, '2026_02_03_062413_create_expense__types_table', 15),
(16, '2026_02_03_070718_create_perceptions_table', 16),
(17, '2026_02_03_105321_create_expenses_table', 17),
(18, '2026_02_03_171722_create_departments_table', 18),
(19, '2026_02_03_171812_create_sections_table', 19),
(20, '2026_02_03_171848_create_job_titles_table', 20),
(21, '2026_02_12_145855_create_notifications_table', 21),
(22, '2026_02_20_073218_create_quick_pays_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `data` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `data`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : TEST TEST\"}', 0, '2026-02-13 11:35:40', '2026-02-13 11:35:40'),
(2, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Test Test\"}', 0, '2026-02-13 11:46:06', '2026-02-13 11:46:06'),
(3, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Gretta Mamba\"}', 0, '2026-02-19 19:04:29', '2026-02-19 19:04:29'),
(4, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Jean Paul Tshunza\"}', 0, '2026-02-26 16:30:15', '2026-02-26 16:30:15'),
(5, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Jean Paul Tshunza\"}', 0, '2026-02-26 16:30:16', '2026-02-26 16:30:16'),
(6, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Charly Baluba\"}', 0, '2026-02-26 18:28:39', '2026-02-26 18:28:39'),
(7, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Charly Baluba\"}', 0, '2026-02-26 18:28:41', '2026-02-26 18:28:41'),
(8, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Charly Baluba\"}', 0, '2026-02-26 18:39:02', '2026-02-26 18:39:02'),
(9, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Robin Kasongo\"}', 0, '2026-02-26 18:55:09', '2026-02-26 18:55:09'),
(10, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Robin Kasongo\"}', 0, '2026-02-26 18:55:09', '2026-02-26 18:55:09'),
(11, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Nelly Kuzo\"}', 0, '2026-02-26 19:03:37', '2026-02-26 19:03:37'),
(12, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Kishiko Nyembo\"}', 0, '2026-02-26 19:40:02', '2026-02-26 19:40:02'),
(13, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : Charly Baluba\"}', 0, '2026-02-27 18:47:50', '2026-02-27 18:47:50'),
(14, 1, 'employee', '{\"message\":\"Nouvel employ\\u00e9 ajout\\u00e9 : David Kishiko\"}', 0, '2026-02-27 19:49:20', '2026-02-27 19:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `employee_id` varchar(191) NOT NULL,
  `exchange_rate` decimal(15,2) NOT NULL DEFAULT 2800.00,
  `period` int(11) DEFAULT NULL,
  `basic_usd` decimal(15,2) DEFAULT 0.00,
  `tax_dependants` int(11) DEFAULT 0,
  `worked_days` int(11) DEFAULT 0,
  `baremic_salary` decimal(15,2) DEFAULT 0.00,
  `sick_days` int(11) DEFAULT 0,
  `accommodation_allowance` decimal(15,2) DEFAULT 0.00,
  `ot_hours_30` decimal(8,2) DEFAULT 0.00,
  `ot_hours_60` decimal(8,2) DEFAULT 0.00,
  `ot_hours_100` decimal(8,2) DEFAULT 0.00,
  `total_earnings` decimal(15,2) DEFAULT 0.00,
  `inss_5` decimal(15,2) DEFAULT 0.00,
  `monthly_ipr` decimal(15,2) DEFAULT 0.00,
  `ipr_rate` decimal(5,2) DEFAULT 0.00,
  `net` decimal(15,2) DEFAULT 0.00,
  `net_usd` decimal(15,2) DEFAULT 0.00,
  `cnss_13` decimal(15,2) DEFAULT 0.00,
  `inpp_2` decimal(15,2) DEFAULT 0.00,
  `onem_02` decimal(15,2) DEFAULT 0.00,
  `total_taxes_cdf` decimal(15,2) DEFAULT 0.00,
  `kitservice_royalties` decimal(15,2) DEFAULT 0.00,
  `inss_tax_base` decimal(15,2) DEFAULT 0.00,
  `ipr_tax_base` decimal(15,2) DEFAULT 0.00,
  `annual_ipr_tax_base` decimal(15,2) DEFAULT 0.00,
  `tranche2` decimal(15,2) DEFAULT 0.00,
  `tranche3` decimal(15,2) DEFAULT 0.00,
  `tranche_gt3` decimal(15,2) DEFAULT 0.00,
  `payment_date` date DEFAULT NULL,
  `status` enum('pending','paid') DEFAULT 'pending',
  `reference` varchar(191) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `start_date` varchar(191) NOT NULL,
  `end_date` varchar(191) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perceptions`
--

CREATE TABLE `perceptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `file` varchar(191) DEFAULT NULL,
  `currency` enum('USD','CDF') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perceptions`
--

INSERT INTO `perceptions` (`id`, `name`, `amount`, `file`, `currency`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FARINE', 1000.00, NULL, 'USD', '2026-04-20 20:53:20', '2026-04-20 20:53:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(2, 'employee_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(3, 'employee_store', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(4, 'employee_list', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(5, 'employee_view', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(6, 'employee_edit', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(7, 'employee_disable', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(8, 'employee_import', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(9, 'employee_export', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(10, 'employee_search', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(11, 'employee_cdd', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(12, 'employee_cdi', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(13, 'employee_contract_end', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(14, 'employee_certificate', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(15, 'employee_address', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(16, 'employee_photo', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(17, 'employee_company', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(18, 'employee_children', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(19, 'employee_dependants', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(20, 'employee_emergency', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(21, 'employee_salary', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(22, 'customer_list', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(23, 'customer_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(24, 'customer_store', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(25, 'customer_edit', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(26, 'customer_delete', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(27, 'customer_search', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(28, 'invoice_statement', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(29, 'invoice_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(30, 'invoice_store', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(31, 'invoice_view', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(32, 'invoice_edit', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(33, 'invoice_delete', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(34, 'invoice_search_number', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(35, 'user_list', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(36, 'user_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(37, 'user_store', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(38, 'user_edit', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(39, 'user_delete', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(40, 'user_search', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(41, 'user_update_permissions', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(42, 'role_list', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(43, 'role_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(44, 'role_store', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(45, 'role_edit', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(46, 'role_delete', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(47, 'payroll_list', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(48, 'payroll_search', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(49, 'payroll_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(50, 'payroll_store', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(51, 'payroll_edit', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(52, 'payroll_view', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(53, 'payroll_history', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(54, 'payroll_export', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(55, 'payroll_export_view', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(56, 'expense_type', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(57, 'expense_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(58, 'expense_list', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(59, 'expense_history', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(60, 'perception_create', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(61, 'perception_history', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(62, 'perception_list', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(63, 'language_switch', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `quick_pays`
--

CREATE TABLE `quick_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `exchange_rate` decimal(15,2) NOT NULL,
  `period` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL DEFAULT 2026,
  `day_sick` int(11) NOT NULL DEFAULT 0,
  `sick` decimal(15,2) NOT NULL DEFAULT 0.00,
  `day_overtime` int(11) NOT NULL DEFAULT 0,
  `overtime` decimal(15,2) NOT NULL DEFAULT 0.00,
  `day_work` int(11) NOT NULL DEFAULT 0,
  `work` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_pays`
--

INSERT INTO `quick_pays` (`id`, `employee_id`, `exchange_rate`, `period`, `year`, `day_sick`, `sick`, `day_overtime`, `overtime`, `day_work`, `work`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'KAM_KIT001', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 14:27:38', '2026-02-26 14:27:38', NULL),
(8, 'KAM_KIT002', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:05:33', '2026-02-26 16:05:33', NULL),
(9, 'KAM_KIT003', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-02-26 16:06:27', '2026-02-26 16:06:27', NULL),
(10, 'KAM_KIT004', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:32:57', '2026-02-26 16:32:57', NULL),
(11, 'KAM_KIT005', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:33:47', '2026-02-26 16:33:47', NULL),
(12, 'KAM_KIT006', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-02-26 16:35:01', '2026-02-26 16:35:01', NULL),
(13, 'KAM_KIT019', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:36:56', '2026-02-26 16:36:56', NULL),
(14, 'KAM_KIT007', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-02-26 16:38:01', '2026-02-26 16:38:01', NULL),
(15, 'KAM_KIT017', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:38:49', '2026-02-26 16:38:49', NULL),
(16, 'KAM_KIT022', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:41:45', '2026-02-26 16:41:45', NULL),
(17, 'KAM_KIT008', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-02-26 16:42:23', '2026-02-26 16:42:23', NULL),
(18, 'KAM_KIT009', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 200.00, '2026-02-26 16:43:03', '2026-02-26 16:43:03', NULL),
(19, 'KAM_KIT013', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:43:50', '2026-02-26 16:43:50', NULL),
(20, 'KAM_KIT014', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:45:04', '2026-02-26 16:45:04', NULL),
(21, 'KAM_KIT015', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:46:13', '2026-02-26 16:46:13', NULL),
(22, 'KAM_KIT021', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-02-26 16:47:25', '2026-02-26 16:47:25', NULL),
(23, 'KAM_KIT016', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-02-26 16:48:34', '2026-02-26 16:48:34', NULL),
(24, 'KAM_KIT018', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-02-26 16:50:38', '2026-02-26 16:50:38', NULL),
(25, 'KAM_KIT020', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-02-26 16:51:23', '2026-02-26 16:51:23', NULL),
(26, 'KAM_KIT027', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-02-26 17:11:04', '2026-02-26 17:11:04', NULL),
(27, 'KAM_KIT030', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 0, 0.00, '2026-02-26 19:14:26', '2026-02-26 19:14:26', NULL),
(28, 'KAM_KIT032', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-02-26 19:16:26', '2026-02-26 19:16:26', NULL),
(29, 'KAM_KIT033', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-02-26 19:19:54', '2026-02-26 19:19:54', NULL),
(30, 'KAM_KIT034', 2500.00, 2, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-02-26 19:42:31', '2026-02-26 19:42:31', NULL),
(31, 'KAM_KIT007', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-03-07 19:56:36', '2026-03-07 19:56:36', NULL),
(32, 'KAM_KIT027', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-03-28 11:26:07', '2026-03-28 11:26:07', NULL),
(33, 'KAM_KIT003', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-03-28 11:27:04', '2026-03-28 11:27:04', NULL),
(34, 'KAM_KIT001', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:27:28', '2026-03-28 11:27:28', NULL),
(35, 'KAM_KIT002', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:27:50', '2026-03-28 11:27:50', NULL),
(36, 'KAM_KIT004', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:28:27', '2026-03-28 11:28:27', NULL),
(37, 'KAM_KIT005', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:28:52', '2026-03-28 11:28:52', NULL),
(38, 'KAM_KIT006', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-03-28 11:29:37', '2026-03-28 11:29:37', NULL),
(39, 'KAM_KIT007', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-03-28 11:30:08', '2026-03-28 11:30:08', NULL),
(40, 'KAM_KIT008', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-03-28 11:30:40', '2026-03-28 11:30:40', NULL),
(41, 'KAM_KIT009', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 200.00, '2026-03-28 11:31:55', '2026-03-28 11:31:55', NULL),
(42, 'KAM_KIT013', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:32:30', '2026-03-28 11:32:30', NULL),
(43, 'KAM_KIT014', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:33:03', '2026-03-28 11:33:03', NULL),
(44, 'KAM_KIT015', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:33:39', '2026-03-28 11:33:39', NULL),
(45, 'KAM_KIT016', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-03-28 11:36:19', '2026-03-28 11:36:19', NULL),
(46, 'KAM_KIT017', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:36:55', '2026-03-28 11:36:55', NULL),
(47, 'KAM_KIT018', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-03-28 11:37:36', '2026-03-28 11:37:36', NULL),
(48, 'KAM_KIT019', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:40:03', '2026-03-28 11:40:03', NULL),
(49, 'KAM_KIT020', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:41:24', '2026-03-28 11:41:24', NULL),
(50, 'KAM_KIT021', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-03-28 11:41:56', '2026-03-28 11:41:56', NULL),
(51, 'KAM_KIT022', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-03-28 11:42:58', '2026-03-28 11:42:58', NULL),
(52, 'KAM_KIT032', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-03-28 11:43:27', '2026-03-28 11:43:27', NULL),
(53, 'KAM_KIT033', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-03-28 11:44:08', '2026-03-28 11:44:08', NULL),
(54, 'KAM_KIT034', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-03-28 11:45:02', '2026-03-28 11:45:02', NULL),
(55, 'KAM_KIT035', 2500.00, 3, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-03-28 20:58:35', '2026-03-28 20:58:35', NULL),
(56, 'KAM_KIT001', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 11:59:40', '2026-04-24 11:59:40', NULL),
(57, 'KAM_KIT002', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:00:56', '2026-04-24 12:00:56', NULL),
(58, 'KAM_KIT003', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-04-24 12:01:25', '2026-04-24 12:01:25', NULL),
(59, 'KAM_KIT004', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:01:58', '2026-04-24 12:01:58', NULL),
(60, 'KAM_KIT005', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:02:19', '2026-04-24 12:02:19', NULL),
(61, 'KAM_KIT006', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-04-24 12:02:41', '2026-04-24 12:02:41', NULL),
(62, 'KAM_KIT008', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-04-24 12:03:00', '2026-04-24 12:03:00', NULL),
(63, 'KAM_KIT009', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 200.00, '2026-04-24 12:03:22', '2026-04-24 12:03:22', NULL),
(64, 'KAM_KIT027', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-04-24 12:03:48', '2026-04-24 12:03:48', NULL),
(65, 'KAM_KIT013', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:04:29', '2026-04-24 12:04:29', NULL),
(66, 'KAM_KIT014', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:04:50', '2026-04-24 12:04:50', NULL),
(67, 'KAM_KIT015', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:05:31', '2026-04-24 12:05:31', NULL),
(68, 'KAM_KIT016', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-04-24 12:05:52', '2026-04-24 12:05:52', NULL),
(69, 'KAM_KIT017', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:06:12', '2026-04-24 12:06:12', NULL),
(70, 'KAM_KIT018', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-04-24 12:06:34', '2026-04-24 12:06:34', NULL),
(71, 'KAM_KIT019', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:07:02', '2026-04-24 12:07:02', NULL),
(72, 'KAM_KIT020', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:07:27', '2026-04-24 12:07:27', NULL),
(73, 'KAM_KIT021', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-04-24 12:07:57', '2026-04-24 12:07:57', NULL),
(74, 'KAM_KIT022', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-04-24 12:08:20', '2026-04-24 12:08:20', NULL),
(75, 'KAM_KIT032', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-04-24 12:08:46', '2026-04-24 12:08:46', NULL),
(76, 'KAM_KIT033', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-04-24 12:09:08', '2026-04-24 12:09:08', NULL),
(77, 'KAM_KIT034', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-04-24 12:09:33', '2026-04-24 12:09:33', NULL),
(78, 'KAM_KIT035', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-04-24 12:10:05', '2026-04-24 12:10:05', NULL),
(79, 'KAM_KIT036', 2500.00, 4, 2026, 0, 0.00, 0, 0.00, 22, 0.00, '2026-04-24 12:10:57', '2026-04-24 12:10:57', NULL),
(80, 'KAM_KIT001', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:15:00', '2026-05-25 17:15:00', NULL),
(81, 'KAM_KIT002', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:15:22', '2026-05-25 17:15:22', NULL),
(82, 'KAM_KIT003', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-05-25 17:15:46', '2026-05-25 17:15:46', NULL),
(83, 'KAM_KIT004', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:16:16', '2026-05-25 17:16:16', NULL),
(84, 'KAM_KIT005', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:19:12', '2026-05-25 17:19:12', NULL),
(85, 'KAM_KIT006', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-05-25 17:19:33', '2026-05-25 17:19:33', NULL),
(86, 'KAM_KIT007', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-05-25 17:19:54', '2026-05-25 17:19:54', NULL),
(87, 'KAM_KIT008', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-05-25 17:20:23', '2026-05-25 17:20:23', NULL),
(88, 'KAM_KIT009', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 200.00, '2026-05-25 17:20:48', '2026-05-25 17:20:48', NULL),
(89, 'KAM_KIT027', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-05-25 17:21:23', '2026-05-25 17:21:23', NULL),
(90, 'KAM_KIT014', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:21:46', '2026-05-25 17:21:46', NULL),
(91, 'KAM_KIT015', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:22:08', '2026-05-25 17:22:08', NULL),
(92, 'KAM_KIT016', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-05-25 17:22:31', '2026-05-25 17:22:31', NULL),
(93, 'KAM_KIT017', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:23:03', '2026-05-25 17:23:03', NULL),
(94, 'KAM_KIT018', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-05-25 17:23:27', '2026-05-25 17:23:27', NULL),
(95, 'KAM_KIT019', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:23:48', '2026-05-25 17:23:48', NULL),
(96, 'KAM_KIT020', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:24:38', '2026-05-25 17:24:38', NULL),
(97, 'KAM_KIT021', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 400.00, '2026-05-25 17:25:01', '2026-05-25 17:25:01', NULL),
(98, 'KAM_KIT022', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 250.00, '2026-05-25 17:25:31', '2026-05-25 17:25:31', NULL),
(99, 'KAM_KIT032', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 350.00, '2026-05-25 17:26:01', '2026-05-25 17:26:01', NULL),
(100, 'KAM_KIT033', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 500.00, '2026-05-25 17:26:21', '2026-05-25 17:26:21', NULL),
(101, 'KAM_KIT034', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-05-25 17:26:43', '2026-05-25 17:26:43', NULL),
(102, 'KAM_KIT035', 2500.00, 5, 2026, 0, 0.00, 0, 0.00, 22, 300.00, '2026-05-25 17:27:12', '2026-05-25 17:27:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(2, 'drh', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(3, 'clerk', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(4, 'none', 'web', '2026-02-08 17:50:13', '2026-02-08 17:50:13'),
(5, 'Test', 'web', '2026-02-25 18:20:41', '2026-02-25 18:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 1),
(2, 5),
(3, 1),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(5, 5),
(6, 1),
(6, 5),
(7, 1),
(7, 5),
(8, 1),
(8, 5),
(9, 1),
(9, 5),
(10, 1),
(10, 5),
(11, 1),
(11, 5),
(12, 1),
(12, 5),
(13, 1),
(13, 5),
(14, 1),
(14, 5),
(15, 1),
(15, 5),
(16, 1),
(16, 5),
(17, 1),
(17, 5),
(18, 1),
(18, 5),
(19, 1),
(19, 5),
(20, 1),
(20, 5),
(21, 1),
(21, 5),
(22, 1),
(22, 5),
(23, 1),
(23, 5),
(24, 1),
(24, 5),
(25, 1),
(25, 5),
(26, 1),
(26, 5),
(27, 1),
(27, 5),
(28, 1),
(28, 5),
(29, 1),
(29, 5),
(30, 1),
(30, 5),
(31, 1),
(31, 5),
(32, 1),
(32, 5),
(33, 1),
(33, 5),
(34, 1),
(34, 5),
(35, 1),
(35, 5),
(36, 1),
(36, 5),
(37, 1),
(37, 5),
(38, 1),
(38, 5),
(39, 1),
(39, 5),
(40, 1),
(40, 5),
(41, 1),
(41, 5),
(42, 1),
(42, 5),
(43, 1),
(43, 5),
(44, 1),
(44, 5),
(45, 1),
(45, 5),
(46, 1),
(46, 5),
(47, 1),
(47, 5),
(48, 1),
(48, 5),
(49, 1),
(49, 5),
(50, 1),
(50, 5),
(51, 1),
(51, 5),
(52, 1),
(52, 5),
(53, 1),
(53, 5),
(54, 1),
(54, 5),
(55, 1),
(55, 5),
(56, 1),
(56, 5),
(57, 1),
(57, 5),
(58, 1),
(58, 5),
(59, 1),
(59, 5),
(60, 1),
(60, 5),
(61, 1),
(61, 5),
(62, 1),
(62, 5),
(63, 1),
(63, 2),
(63, 3),
(63, 5);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) NOT NULL,
  `base_salary` decimal(15,2) DEFAULT 0.00,
  `category` varchar(191) DEFAULT NULL,
  `echelon` varchar(191) DEFAULT NULL,
  `currency` enum('USD','CDF') DEFAULT 'USD',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `employee_id`, `base_salary`, `category`, `echelon`, `currency`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KAM_KIT001', 250.00, 'B2', 'V', 'USD', '2026-02-09 00:04:32', '2026-05-01 15:20:02', NULL),
(2, 'KAM_KIT002', 250.00, 'B1', 'IV', 'USD', '2026-02-09 17:18:40', '2026-02-25 13:15:34', NULL),
(3, 'KAM_KIT004', 250.00, 'B2', 'V', 'USD', '2026-02-09 23:04:51', '2026-02-25 13:14:43', NULL),
(4, 'KAM_KIT003', 350.00, 'C1', 'IX', 'USD', '2026-02-09 23:06:18', '2026-02-25 13:15:07', NULL),
(5, 'KAM_KIT005', 250.00, 'B1', 'IV', 'USD', '2026-02-10 11:25:11', '2026-02-25 13:12:51', NULL),
(6, 'KAM_KIT006', 300.00, 'B2', 'V', 'USD', '2026-02-10 11:39:20', '2026-02-25 13:14:24', NULL),
(7, 'KAM_KIT007', 400.00, 'C1', 'IX', 'USD', '2026-02-10 11:58:24', '2026-02-25 13:13:56', NULL),
(8, 'KAM_KIT008', 300.00, 'B2', 'V', 'USD', '2026-02-10 12:11:41', '2026-02-25 13:13:36', NULL),
(9, 'KAM_KIT009', 200.00, 'B1', 'IV', 'USD', '2026-02-10 13:10:01', '2026-02-25 13:04:15', NULL),
(10, 'KAM_KIT011', 0.00, NULL, NULL, 'USD', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(11, 'KAM_KIT010', 0.00, NULL, NULL, 'USD', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(12, 'KAM_KIT012', 0.00, NULL, NULL, 'USD', '2026-02-10 20:54:29', '2026-02-10 20:54:29', NULL),
(13, 'KAM_KIT013', 250.00, 'B1', 'IV', 'USD', '2026-02-10 20:54:30', '2026-02-25 13:03:24', NULL),
(14, 'KAM_KIT014', 250.00, 'B1', 'IV', 'USD', '2026-02-10 21:10:37', '2026-02-25 13:02:36', NULL),
(15, 'KAM_KIT015', 250.00, NULL, NULL, 'USD', '2026-02-11 19:34:38', '2026-02-25 13:02:02', NULL),
(16, 'KAM_KIT016', 300.00, 'B2', 'V', 'USD', '2026-02-11 19:52:17', '2026-02-25 13:01:19', NULL),
(17, 'KAM_KIT017', 250.00, 'B1', 'IV', 'USD', '2026-02-11 20:29:55', '2026-02-25 13:00:47', NULL),
(18, 'KAM_KIT018', 300.00, 'B2', 'V', 'USD', '2026-02-11 20:46:08', '2026-02-25 12:59:46', NULL),
(19, 'KAM_KIT019', 250.00, 'B1', 'IV', 'USD', '2026-02-11 20:59:38', '2026-02-25 12:59:05', NULL),
(20, 'KAM_KIT020', 250.00, 'B1', 'IV', 'USD', '2026-02-11 21:17:17', '2026-02-25 12:58:27', NULL),
(21, 'KAM_KIT021', 400.00, 'C1', 'IX', 'USD', '2026-02-11 22:24:32', '2026-03-28 21:13:38', NULL),
(22, 'KAM_KIT022', 250.00, 'B1', 'IV', 'USD', '2026-02-12 11:31:35', '2026-05-01 15:37:24', NULL),
(23, 'KAM_KIT023', 2500.00, 'C1', 'II', 'USD', '2026-02-13 11:35:40', '2026-02-19 19:10:17', NULL),
(24, 'KAM_KIT023', 0.00, NULL, NULL, 'USD', '2026-02-13 11:46:06', '2026-02-13 11:46:06', NULL),
(25, 'KAM_KIT023', 0.00, NULL, NULL, 'USD', '2026-02-19 19:04:29', '2026-02-19 19:04:29', NULL),
(26, 'KAM_KIT023', 500.00, NULL, NULL, 'USD', '2026-02-26 16:30:15', '2026-02-26 16:30:15', NULL),
(27, 'KAM_KIT027', 500.00, NULL, NULL, 'USD', '2026-02-26 16:30:16', '2026-02-26 16:30:16', NULL),
(28, 'KAM_KIT028', 0.00, NULL, NULL, 'USD', '2026-02-26 18:28:39', '2026-02-26 18:28:39', NULL),
(29, 'KAM_KIT029', 0.00, NULL, NULL, 'USD', '2026-02-26 18:28:41', '2026-02-26 18:28:41', NULL),
(30, 'KAM_KIT030', 300.00, NULL, NULL, 'USD', '2026-02-26 18:39:02', '2026-02-26 19:13:27', NULL),
(31, 'KAM_KIT031', 0.00, NULL, NULL, 'USD', '2026-02-26 18:55:09', '2026-02-26 18:55:09', NULL),
(32, 'KAM_KIT032', 350.00, NULL, NULL, 'USD', '2026-02-26 18:55:09', '2026-02-26 19:12:04', NULL),
(33, 'KAM_KIT033', 500.00, NULL, NULL, 'USD', '2026-02-26 19:03:37', '2026-02-26 19:12:45', NULL),
(34, 'KAM_KIT034', 300.00, NULL, NULL, 'USD', '2026-02-26 19:40:02', '2026-02-26 19:40:02', NULL),
(35, 'KAM_KIT035', 300.00, 'B1', 'IV', 'USD', '2026-02-27 18:47:50', '2026-03-28 12:13:21', NULL),
(36, 'KAM_KIT036', 0.00, NULL, NULL, 'USD', '2026-02-27 19:49:20', '2026-02-27 19:49:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `department_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Accounting', 1, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(2, 'Audit', 1, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(3, 'Payroll', 1, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(4, 'Recruitment', 2, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(5, 'Training', 2, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(6, 'Employee Relations', 2, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(7, 'Development', 3, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(8, 'Support', 3, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(9, 'Network', 3, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(10, 'Logistics', 4, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(11, 'Production', 4, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(12, 'Maintenance', 4, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(13, 'Advertising', 5, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(14, 'Social Media', 5, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL),
(15, 'Research', 5, '2026-02-08 17:50:14', '2026-02-08 17:50:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KUkjMYB1LJfqZ0LX1PGUcCFmCw8F3ZOfbZZ1IOyU', 1, '98.98.100.214', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNzd5MldIb3AzMjA1ODdhdmtTbHU2dmpmMkEyeUJ0clIwb283TkthZiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjQ0OiJodHRwczovL2FwcC5raXQtc2VydmljZXMub3JnL2VtcGxveWVlL2NyZWF0ZSI7czo1OiJyb3V0ZSI7czoxNToiZW1wbG95ZWUuY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1781246746);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin ', 'admin@kit-services.org', NULL, '$2y$12$TYmqFYqPaG8exSuNNRoxB.gFanXz8I6kUof2rkI2E/EKm.c2mXEiy', 'JjZ15zIYL6JEDwKcSXJTTMSFTJsDSaazmvfjTbTvXutXr2mHrMZ2vs2ZGMlh', '2026-02-08 17:50:14', '2026-02-08 17:50:14'),
(2, 'DRH ', 'drh@kit-services.org', NULL, '$2y$12$QkTfZuFsThxTo83A3SGErevW.RTM9LhLiXuHPJ1ROquvdTdy/s4V.', NULL, '2026-02-08 17:50:14', '2026-02-08 17:50:14'),
(3, 'Clerk ', 'clerk@kit-services.org', NULL, '$2y$12$hpZV79v36k/GEYjZOVWxKOqiIXnKz2wuwXlUXHy5x4dMYcATtOaNu', NULL, '2026-02-08 17:50:14', '2026-02-08 17:50:14'),
(4, 'Test', 'test@kit-services.org', NULL, '$2y$12$LX2w94IyLrQ30G6l6lOZWengaiagkNLuw9FCyGd1RTSguevUWUsgm', NULL, '2026-02-25 18:21:27', '2026-02-25 18:21:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_employee_id_index` (`employee_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `childrens`
--
ALTER TABLE `childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childrens_employee_id_index` (`employee_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_employee_id_index` (`employee_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `dependants`
--
ALTER TABLE `dependants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dependants_employee_id_index` (`employee_id`);

--
-- Indexes for table `emergencies`
--
ALTER TABLE `emergencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emergencies_employee_id_index` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_employee_id_unique` (`employee_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expenses_code_unique` (`code`),
  ADD KEY `expenses_expense_type_id_foreign` (`expense_type_id`);

--
-- Indexes for table `expense__types`
--
ALTER TABLE `expense__types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`),
  ADD KEY `invoices_numero_invoice_index` (`numero_invoice`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_titles_section_id_foreign` (`section_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD UNIQUE KEY `payrolls_employee_id_start_date_end_date_unique` (`employee_id`,`start_date`,`end_date`) USING HASH,
  ADD KEY `payrolls_employee_id_index` (`employee_id`);

--
-- Indexes for table `perceptions`
--
ALTER TABLE `perceptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING HASH;

--
-- Indexes for table `quick_pays`
--
ALTER TABLE `quick_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quick_pays_employee_id_index` (`employee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING HASH;

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_employee_id_index` (`employee_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_department_id_foreign` (`department_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `childrens`
--
ALTER TABLE `childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dependants`
--
ALTER TABLE `dependants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `emergencies`
--
ALTER TABLE `emergencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense__types`
--
ALTER TABLE `expense__types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `perceptions`
--
ALTER TABLE `perceptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `quick_pays`
--
ALTER TABLE `quick_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
