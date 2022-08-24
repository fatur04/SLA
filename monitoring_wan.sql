-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 08:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring_wan`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_site`
--

CREATE TABLE `all_site` (
  `id_site` int(11) NOT NULL,
  `site` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `isp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_site`
--

INSERT INTO `all_site` (`id_site`, `site`, `ip`, `isp`) VALUES
(1, 'ABK2_LIMA', '103.130.5.66', 'PRIMACOM'),
(2, 'ABKL_LIMA', '103.130.5.74', 'PRIMACOM'),
(3, 'ABKL_TLKM', '36.67.18.226', 'PRIMACOM'),
(4, 'ABMS_ISAT', '114.6.241.194', 'PRIMACOM'),
(5, 'ABMS_TLKM', '36.67.115.83', 'PRIMACOM'),
(6, 'ADRO_ISAT', '114.6.54.117', 'INDOSAT'),
(7, 'AREM_TLKM', '36.66.233.10', 'TELKOM'),
(8, 'ASMI_TBTK', '36.92.74.3', 'TELKOM'),
(9, 'ASMI_THJK', '36.89.122.231', 'TELKOM'),
(10, 'ASMI_TQNT', '36.66.239.213', 'TELKOM'),
(11, 'ASMI_VSAT', '192.168.183.2', ''),
(12, 'BAYA_LIMA', '103.130.5.90', 'TELKOM'),
(13, 'BAYA_MORA', '103.135.212.122', 'OXCYGEN'),
(14, 'BBS2_TLKM', '36.95.63.2', 'TELKOM'),
(15, 'BBS2_ISAT', '114.5.125.82', 'INDOSAT'),
(16, 'BBSO_ISAT', '114.5.125.114', 'INDOSAT'),
(17, 'BBSO_TLKM', '36.66.229.234', 'TELKOM'),
(18, 'BEKB_LM_PE', '103.130.5.227', 'LINTASMAYA'),
(19, 'BEKB_LM_PU', '103.130.4.131', 'LINTASMAYA'),
(20, 'BPOP_ISAT', '114.5.124.211', 'INDOSAT'),
(21, 'BPOP_TLKM', '36.66.232.98', 'PRIMACOM'),
(22, 'BRCB_LIMA', '103.130.7.58', 'LINTASMAYA'),
(23, 'BRCB_TLKM', '36.92.217.154', 'TELKOM'),
(24, 'BRCG_XL', '121.52.64.50', 'XL'),
(25, 'CILE_IFTE', '103.164.110.45', 'IFORTE'),
(26, 'CILE_PAMD', '103.166.5.93', 'LINKNET'),
(27, 'CILI_IFTE', '103.164.110.170', 'IFORTE'),
(28, 'CILI_PAMD', '103.166.5.98', 'LINKNET'),
(29, 'CILI_PAMS', '103.166.4.98', 'LINKNET'),
(30, 'EPAS_VSAT', '192.168.186.2', ''),
(31, 'ERKA_ISAT', '114.5.125.178', 'INDOSAT'),
(32, 'ERKA_TLKM', '36.94.135.146', 'PRIMACOM'),
(33, 'INDO_ISAT', '114.5.124.226', 'INDOSAT'),
(34, 'INDO_TLKM', '36.67.17.90', 'PRIMACOM'),
(35, 'JIEP_IFTE', '202.51.116.106', 'IFORTE'),
(36, 'JIEP_PAMD', '103.166.5.51', 'LINKNET'),
(37, 'KIDE_SNC', '203.80.14.218', 'SATNET'),
(38, 'KIDE_TLKM', '36.66.230.146', 'PRIMACOM'),
(39, 'KIDE_MORA', '103.135.212.130', 'OXCYGEN'),
(40, 'KPCB_LIMA', '103.160.150.74', 'LINTASMAYA'),
(41, 'KPCB_MKN', '203.153.124.202', 'MKN'),
(42, 'KPCS_LIMA', '103.119.116.18', 'LINTASMAYA'),
(43, 'KPCS_SNC', '203.80.9.90', 'SATNET'),
(44, 'MTBU_ICON', '103.94.124.154', 'PRIMACOM'),
(45, 'MTBU_TLKM', '36.66.47.186', 'PRIMACOM'),
(46, 'PIM_TLKM', '180.250.196.252', 'TELKOM'),
(47, 'PPSO_TLKM', '36.66.231.61', ''),
(48, 'PSR_ISAT', '114.6.81.114', 'PRIMACOM'),
(49, 'PSR_TLKM', '36.66.234.11', 'PRIMACOM'),
(50, 'PUCB_TLKMS  ', '10.2.179.121', 'PAMA'),
(51, 'SEIK_LIMA', '103.130.5.154', ''),
(52, 'SMMS_TBTK', '36.92.74.22', 'TELKOM'),
(53, 'SMMS_THJK', '36.89.122.240', 'TELKOM');

-- --------------------------------------------------------

--
-- Table structure for table `hitung_sla`
--

CREATE TABLE `hitung_sla` (
  `id_hitung` int(11) NOT NULL,
  `id_sla` int(11) DEFAULT NULL,
  `id_site` int(11) NOT NULL,
  `avaibility` float DEFAULT NULL,
  `hasil_persen` float DEFAULT NULL,
  `maint` float DEFAULT NULL,
  `persen` float DEFAULT NULL,
  `total_jam` float DEFAULT NULL,
  `bulan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hitung_sla`
--

INSERT INTO `hitung_sla` (`id_hitung`, `id_sla`, `id_site`, `avaibility`, `hasil_persen`, `maint`, `persen`, `total_jam`, `bulan`) VALUES
(1, 1, 33, 734.85, 98.77, 9.15, 1.23, 744, '2021-12'),
(2, 2, 45, 741.18, 99.62, 2.82, 0.38, 744, '2021-12'),
(3, 3, 4, 743.7, 99.96, 0.3, 0.04, 744, '2021-12'),
(4, 4, 33, 738.08, 99.2, 5.92, 0.8, 744, '2021-12'),
(5, 5, 21, 740.13, 99.48, 3.87, 0.52, 744, '2021-12'),
(6, 6, 10, 739.83, 99.44, 4.17, 0.56, 744, '2021-12'),
(7, 7, 33, 741.52, 99.67, 2.48, 0.33, 744, '2021-12'),
(8, 9, 38, 742.67, 99.82, 1.33, 0.18, 744, '2021-12'),
(9, 31, 48, 743, 99.87, 1, 0.13, 744, '2021-12'),
(10, 8, 39, 552.92, 74.32, 191.08, 25.68, 744, '2021-12'),
(11, 39, 34, 733, 98.52, 11, 1.48, 744, '2021-12');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2021_11_15_022700_create_sessions_table', 2),
(7, '2020_05_21_100000_create_teams_table', 3),
(8, '2020_05_21_200000_create_team_user_table', 3),
(9, '2020_05_21_300000_create_team_invitations_table', 3);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vpUJIrcAsBlUbZb9VC3Ya5MeCqfLWgyl7gjrOGUi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaXBGbjJkMFpienh3SzhURlVMMnI5ekpIU01ROW9IeVdPRWk4dnZTOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVwb3J0c2xhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJElkVXRkMnFLUGtLR3l6U1BmNVZzNU9RT1VNUFJnZnpvNlAydlhSM1VsR3JWc3ZQbXhkNlE2IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRJZFV0ZDJxS1BrS0d5elNQZjVWczVPUU9VTVBSZ2Z6bzZQMnZYUjNVbEdyVnN2UG14ZDZRNiI7fQ==', 1639031767);

-- --------------------------------------------------------

--
-- Table structure for table `sla`
--

CREATE TABLE `sla` (
  `id` int(11) NOT NULL,
  `nama_site` varchar(100) NOT NULL,
  `tiket` varchar(100) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `mulai_now` timestamp NULL DEFAULT NULL,
  `mulai` timestamp NULL DEFAULT NULL,
  `end_now` timestamp NULL DEFAULT NULL,
  `akhir` timestamp NULL DEFAULT NULL,
  `hours` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sla`
--

INSERT INTO `sla` (`id`, `nama_site`, `tiket`, `problem`, `status`, `mulai_now`, `mulai`, `end_now`, `akhir`, `hours`) VALUES
(1, '33', 'SR# 00052789', 'Link down impact radio ptp Customer >< BTS degraded due to radio interference', '2', '2021-11-25 00:54:51', '2021-11-01 02:00:00', '2021-12-08 03:45:54', '2021-11-01 11:09:00', 9.15),
(2, '45', 'INC- 76258', 'Down', '2', '2021-11-25 00:57:00', '2021-11-04 11:48:00', '2021-12-08 03:46:53', '2021-11-04 14:37:00', 2.82),
(3, '4', 'INC-76286', 'Intermitten', '2', '2021-11-25 00:59:01', '2021-11-05 06:47:00', '2021-12-08 03:47:28', '2021-11-05 07:05:00', 0.3),
(4, '33', 'SR# 00055967', 'FO Cut KM 26.511 from Loajanan at segment Loajanan - Handil due to Drainage', '2', '2021-11-25 01:00:18', '2021-11-04 08:30:00', '2021-12-08 03:48:18', '2021-11-04 14:25:00', 5.92),
(5, '21', 'INC-76427', 'Down', '2', '2021-11-25 01:01:23', '2021-11-09 13:08:00', '2021-12-08 03:48:46', '2021-11-09 17:00:00', 3.87),
(6, '10', 'SR# 00055967', 'Intermittent', '2', '2021-11-25 01:03:47', '2021-11-17 13:00:00', '2021-12-08 03:50:00', '2021-11-17 17:10:00', 4.17),
(7, '33', 'SR#00067461', 'Down', '2', '2021-11-25 01:07:51', '2021-11-17 08:35:00', '2021-12-08 03:51:39', '2021-11-17 11:04:00', 2.48),
(8, '39', 'ENT-21112322', 'Radio down terkena petir', '2', '2021-11-25 04:37:49', '2021-11-23 08:25:00', '2021-12-08 03:54:20', '2021-12-01 07:30:00', 191.08),
(9, '38', 'INC-76963', 'Down', '2', '2021-11-29 07:03:27', '2021-11-25 05:45:00', '2021-12-08 03:52:24', '2021-11-25 07:05:00', 1.33),
(31, '48', 'INC-77172', 'Down', '2', '2021-11-30 07:38:09', '2021-11-30 06:30:00', '2021-12-08 03:52:58', '2021-11-30 07:30:00', 1),
(32, '24', '8300339236', 'Down PAMA BRCG yang terindikasi faulty', '1', '2021-12-01 00:11:06', '2021-09-28 05:00:00', NULL, NULL, 0),
(39, '34', 'INC 77199', 'Down', '2', '2021-12-02 02:58:32', '2021-12-01 11:45:00', '2021-12-08 03:55:29', '2021-12-01 22:45:00', 11);

-- --------------------------------------------------------

--
-- Table structure for table `sla_internal`
--

CREATE TABLE `sla_internal` (
  `id` int(11) NOT NULL,
  `nama_site` varchar(100) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `mulai_now` timestamp NULL DEFAULT NULL,
  `mulai` timestamp NULL DEFAULT NULL,
  `end_now` timestamp NULL DEFAULT NULL,
  `akhir` timestamp NULL DEFAULT NULL,
  `hours` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sla_internal`
--

INSERT INTO `sla_internal` (`id`, `nama_site`, `problem`, `status`, `mulai_now`, `mulai`, `end_now`, `akhir`, `hours`) VALUES
(3, '19', 'intermittent', '2', '2021-11-29 07:16:00', '2021-11-18 05:00:00', NULL, '2021-11-18 11:00:00', 6),
(4, '4', 'Down, perbaikan genset', '2', '2021-11-30 01:14:17', '2021-11-30 00:45:00', '2021-12-01 01:32:38', '2021-11-30 10:50:00', 10.08),
(5, '5', 'down, Perbaikan Genset', '2', '2021-11-30 01:15:22', '2021-11-30 00:45:00', '2021-12-01 01:32:20', '2021-11-30 10:50:00', 10.08),
(8, '46', 'down, Listrik padam', '2', '2021-12-01 01:30:05', '2021-12-01 00:40:00', '2021-12-01 23:38:41', '2021-12-01 23:11:00', 22.52),
(9, '8', 'down,', '2', '2021-12-01 03:24:11', '2021-11-30 14:00:00', '2021-12-01 06:52:52', '2021-12-01 06:40:00', 16.67),
(10, '9', 'down', '2', '2021-12-01 03:24:40', '2021-11-30 14:00:00', '2021-12-01 06:53:16', '2021-12-01 06:30:00', 16.5),
(11, '46', 'DOWN, LISTRIK PADAM', '2', '2021-12-06 14:12:09', '2021-12-06 06:40:00', '2021-12-06 14:12:09', '2021-12-06 09:00:00', 2.33);

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `id_date` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `jumlah_hari` varchar(100) NOT NULL,
  `jam_oprasional` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`id_date`, `bulan`, `date`, `jumlah_hari`, `jam_oprasional`) VALUES
(1, 'January-2021', '2021-01', '31', '744'),
(2, 'February-2021', '2021-02', '28', '672'),
(3, 'March-2021', '2021-03', '31', '744'),
(4, 'April-2021', '2021-04', '30', '720'),
(5, 'May-2021', '2021-05', '31', '744'),
(6, 'June-2021', '2021-06', '30', '720'),
(7, 'July-2021', '2021-07', '31', '744'),
(8, 'August-2021', '2021-08', '31', '744'),
(9, 'September-2021', '2021-09', '30', '720'),
(10, 'October-2021', '2021-10', '31', '744'),
(11, 'November-2021', '2021-11', '30', '720'),
(12, 'December-2021', '2021-12', '31', '744'),
(13, 'January-2022', '2022-01', '31', '744'),
(14, 'February-2022', '2022-02', '28', '672'),
(15, 'March-2022', '2022-03', '31', '744'),
(16, 'April-2022', '2022-04', '30', '720'),
(17, 'May-2022', '2022-05', '31', '744'),
(18, 'June-2022', '2022-06', '30', '720'),
(19, 'July-2022', '2022-07', '31', '744'),
(20, 'August-2022', '2022-08', '31', '744'),
(21, 'September-2022', '2022-09', '30', '720'),
(22, 'October-2022', '2022-10', '31', '744'),
(23, 'November-2022', '2022-11', '30', '720'),
(24, 'December-2022', '2022-12', '31', '744'),
(25, 'January-2023', '2023-01', '31', '744'),
(26, 'February-2023', '2023-02', '28', '672'),
(27, 'March-2023', '2023-03', '31', '744'),
(28, 'April-2023', '2023-04', '30', '720'),
(29, 'May-2023', '2023-05', '31', '744'),
(30, 'June-2023', '2023-06', '30', '720'),
(31, 'July-2023', '2023-07', '31', '744'),
(32, 'August-2023', '2023-08', '31', '744'),
(33, 'September-2023', '2023-09', '30', '720'),
(34, 'October-2023', '2023-10', '31', '744'),
(35, 'November-2023', '2023-11', '30', '720'),
(36, 'December-2023', '2023-12', '31', '744'),
(37, 'January-2024', '2024-01', '31', '744'),
(38, 'February-2024', '2024-02', '29', '696'),
(39, 'March-2024', '2024-03', '31', '744'),
(40, 'April-2024', '2024-04', '30', '720'),
(41, 'May-2024', '2024-05', '31', '744'),
(42, 'June-2024', '2024-06', '30', '720'),
(43, 'July-2024', '2024-07', '31', '744'),
(44, 'August-2024', '2024-08', '31', '744'),
(45, 'September-2024', '2024-09', '30', '720'),
(46, 'October-2024', '2024-10', '31', '744'),
(47, 'November-2024', '2024-11', '30', '720'),
(48, 'December-2024', '2024-12', '31', '744'),
(49, 'January-2025', '2025-01', '31', '744'),
(50, 'February-2025', '2025-02', '28', '672'),
(51, 'March-2025', '2025-03', '31', '744'),
(52, 'April-2025', '2025-04', '30', '720'),
(53, 'May-2025', '2025-05', '31', '744'),
(54, 'June-2025', '2025-06', '30', '720'),
(55, 'July-2025', '2025-07', '31', '744'),
(56, 'August-2025', '2025-08', '31', '744'),
(57, 'September-2025', '2025-09', '30', '720'),
(58, 'October-2025', '2025-10', '31', '744'),
(59, 'November-2025', '2025-11', '30', '720'),
(60, 'December-2025', '2025-12', '31', '744'),
(61, 'January-2026', '2026-01', '31', '744'),
(62, 'February-2026', '2026-02', '28', '672'),
(63, 'March-2026', '2026-03', '31', '744'),
(64, 'April-2026', '2026-04', '30', '720'),
(65, 'May-2026', '2026-05', '31', '744'),
(66, 'June-2026', '2026-06', '30', '720'),
(67, 'July-2026', '2026-07', '31', '744'),
(68, 'August-2026', '2026-08', '31', '744'),
(69, 'September-2026', '2026-09', '30', '720'),
(70, 'October-2026', '2026-10', '31', '744'),
(71, 'November-2026', '2026-11', '30', '720'),
(72, 'December-2026', '2026-12', '31', '744'),
(73, 'January-2027', '2027-01', '31', '744'),
(74, 'February-2027', '2027-02', '28', '672'),
(75, 'March-2027', '2027-03', '31', '744'),
(76, 'April-2027', '2027-04', '30', '720'),
(77, 'May-2027', '2027-05', '31', '744'),
(78, 'June-2027', '2027-06', '30', '720'),
(79, 'July-2027', '2027-07', '31', '744'),
(80, 'August-2027', '2027-08', '31', '744'),
(81, 'September-2027', '2027-09', '30', '720'),
(82, 'October-2027', '2027-10', '31', '744'),
(83, 'November-2027', '2027-11', '30', '720'),
(84, 'December-2027', '2027-12', '31', '744'),
(85, 'January-2028', '2028-01', '31', '744'),
(86, 'February-2028', '2028-02', '29', '696'),
(87, 'March-2028', '2028-03', '31', '744'),
(88, 'April-2028', '2028-04', '30', '720'),
(89, 'May-2028', '2028-05', '31', '744'),
(90, 'June-2028', '2028-06', '30', '720'),
(91, 'July-2028', '2028-07', '31', '744'),
(92, 'August-2028', '2028-08', '31', '744'),
(93, 'September-2028', '2028-09', '30', '720'),
(94, 'October-2028', '2028-10', '31', '744'),
(95, 'November-2028', '2028-11', '30', '720'),
(96, 'December-2028', '2028-12', '31', '744'),
(97, 'January-2029', '2029-01', '31', '744'),
(98, 'February-2029', '2029-02', '28', '672'),
(99, 'March-2029', '2029-03', '31', '744'),
(100, 'April-2029', '2029-04', '30', '720'),
(101, 'May-2029', '2029-05', '31', '744'),
(102, 'June-2029', '2029-06', '30', '720'),
(103, 'July-2029', '2029-07', '31', '744'),
(104, 'August-2029', '2029-08', '31', '744'),
(105, 'September-2029', '2029-09', '30', '720'),
(106, 'October-2029', '2029-10', '31', '744'),
(107, 'November-2029', '2029-11', '30', '720'),
(108, 'December-2029', '2029-12', '31', '744'),
(109, 'January-2030', '2030-01', '31', '744'),
(110, 'February-2030', '2030-02', '28', '672'),
(111, 'March-2030', '2030-03', '31', '744'),
(112, 'April-2030', '2030-04', '30', '720'),
(113, 'May-2030', '2030-05', '31', '744'),
(114, 'June-2030', '2030-06', '30', '720'),
(115, 'July-2030', '2030-07', '31', '744'),
(116, 'August-2030', '2030-08', '31', '744'),
(117, 'September-2030', '2030-09', '30', '720'),
(118, 'October-2030', '2030-10', '31', '744'),
(119, 'November-2030', '2030-11', '30', '720'),
(120, 'December-2030', '2030-12', '31', '744'),
(121, 'January-2031', '2031-01', '31', '744'),
(122, 'February-2031', '2031-02', '28', '672'),
(123, 'March-2031', '2031-03', '31', '744'),
(124, 'April-2031', '2031-04', '30', '720'),
(125, 'May-2031', '2031-05', '31', '744'),
(126, 'June-2031', '2031-06', '30', '720'),
(127, 'July-2031', '2031-07', '31', '744'),
(128, 'August-2031', '2031-08', '31', '744'),
(129, 'September-2031', '2031-09', '30', '720'),
(130, 'October-2031', '2031-10', '31', '744'),
(131, 'November-2031', '2031-11', '30', '720'),
(132, 'December-2031', '2031-12', '31', '744'),
(133, 'January-2032', '2032-01', '31', '744'),
(134, 'February-2032', '2032-02', '29', '696'),
(135, 'March-2032', '2032-03', '31', '744'),
(136, 'April-2032', '2032-04', '30', '720'),
(137, 'May-2032', '2032-05', '31', '744'),
(138, 'June-2032', '2032-06', '30', '720'),
(139, 'July-2032', '2032-07', '31', '744'),
(140, 'August-2032', '2032-08', '31', '744'),
(141, 'September-2032', '2032-09', '30', '720'),
(142, 'October-2032', '2032-10', '31', '744'),
(143, 'November-2032', '2032-11', '30', '720'),
(144, 'December-2032', '2032-12', '31', '744'),
(145, 'January-2033', '2033-01', '31', '744'),
(146, 'February-2033', '2033-02', '28', '672'),
(147, 'March-2033', '2033-03', '31', '744'),
(148, 'April-2033', '2033-04', '30', '720'),
(149, 'May-2033', '2033-05', '31', '744'),
(150, 'June-2033', '2033-06', '30', '720'),
(151, 'July-2033', '2033-07', '31', '744'),
(152, 'August-2033', '2033-08', '31', '744'),
(153, 'September-2033', '2033-09', '30', '720'),
(154, 'October-2033', '2033-10', '31', '744'),
(155, 'November-2033', '2033-11', '30', '720'),
(156, 'December-2033', '2033-12', '31', '744'),
(157, 'January-2034', '2034-01', '31', '744'),
(158, 'February-2034', '2034-02', '28', '672'),
(159, 'March-2034', '2034-03', '31', '744'),
(160, 'April-2034', '2034-04', '30', '720'),
(161, 'May-2034', '2034-05', '31', '744'),
(162, 'June-2034', '2034-06', '30', '720'),
(163, 'July-2034', '2034-07', '31', '744'),
(164, 'August-2034', '2034-08', '31', '744'),
(165, 'September-2034', '2034-09', '30', '720'),
(166, 'October-2034', '2034-10', '31', '744'),
(167, 'November-2034', '2034-11', '30', '720'),
(168, 'December-2034', '2034-12', '31', '744'),
(169, 'January-2035', '2035-01', '31', '744'),
(170, 'February-2035', '2035-02', '28', '672'),
(171, 'March-2035', '2035-03', '31', '744'),
(172, 'April-2035', '2035-04', '30', '720'),
(173, 'May-2035', '2035-05', '31', '744'),
(174, 'June-2035', '2035-06', '30', '720'),
(175, 'July-2035', '2035-07', '31', '744'),
(176, 'August-2035', '2035-08', '31', '744'),
(177, 'September-2035', '2035-09', '30', '720'),
(178, 'October-2035', '2035-10', '31', '744'),
(179, 'November-2035', '2035-11', '30', '720'),
(180, 'December-2035', '2035-12', '31', '744'),
(181, 'January-2036', '2036-01', '31', '744'),
(182, 'February-2036', '2036-02', '29', '696'),
(183, 'March-2036', '2036-03', '31', '744'),
(184, 'April-2036', '2036-04', '30', '720'),
(185, 'May-2036', '2036-05', '31', '744'),
(186, 'June-2036', '2036-06', '30', '720'),
(187, 'July-2036', '2036-07', '31', '744'),
(188, 'August-2036', '2036-08', '31', '744'),
(189, 'September-2036', '2036-09', '30', '720'),
(190, 'October-2036', '2036-10', '31', '744'),
(191, 'November-2036', '2036-11', '30', '720'),
(192, 'December-2036', '2036-12', '31', '744'),
(193, 'January-2037', '2037-01', '31', '744'),
(194, 'February-2037', '2037-02', '28', '672'),
(195, 'March-2037', '2037-03', '31', '744'),
(196, 'April-2037', '2037-04', '30', '720'),
(197, 'May-2037', '2037-05', '31', '744'),
(198, 'June-2037', '2037-06', '30', '720'),
(199, 'July-2037', '2037-07', '31', '744'),
(200, 'August-2037', '2037-08', '31', '744'),
(201, 'September-2037', '2037-09', '30', '720'),
(202, 'October-2037', '2037-10', '31', '744'),
(203, 'November-2037', '2037-11', '30', '720'),
(204, 'December-2037', '2037-12', '31', '744'),
(205, 'January-2038', '2038-01', '31', '744'),
(206, 'February-2038', '2038-02', '28', '672'),
(207, 'March-2038', '2038-03', '31', '744'),
(208, 'April-2038', '2038-04', '30', '720'),
(209, 'May-2038', '2038-05', '31', '744'),
(210, 'June-2038', '2038-06', '30', '720'),
(211, 'July-2038', '2038-07', '31', '744'),
(212, 'August-2038', '2038-08', '31', '744'),
(213, 'September-2038', '2038-09', '30', '720'),
(214, 'October-2038', '2038-10', '31', '744'),
(215, 'November-2038', '2038-11', '30', '720'),
(216, 'December-2038', '2038-12', '31', '744'),
(217, 'January-2039', '2039-01', '31', '744'),
(218, 'February-2039', '2039-02', '28', '672'),
(219, 'March-2039', '2039-03', '31', '744'),
(220, 'April-2039', '2039-04', '30', '720'),
(221, 'May-2039', '2039-05', '31', '744'),
(222, 'June-2039', '2039-06', '30', '720'),
(223, 'July-2039', '2039-07', '31', '744'),
(224, 'August-2039', '2039-08', '31', '744'),
(225, 'September-2039', '2039-09', '30', '720'),
(226, 'October-2039', '2039-10', '31', '744'),
(227, 'November-2039', '2039-11', '30', '720'),
(228, 'December-2039', '2039-12', '31', '744'),
(229, 'January-2040', '2040-01', '31', '744'),
(230, 'February-2040', '2040-02', '29', '696'),
(231, 'March-2040', '2040-03', '31', '744'),
(232, 'April-2040', '2040-04', '30', '720'),
(233, 'May-2040', '2040-05', '31', '744'),
(234, 'June-2040', '2040-06', '30', '720'),
(235, 'July-2040', '2040-07', '31', '744'),
(236, 'August-2040', '2040-08', '31', '744'),
(237, 'September-2040', '2040-09', '30', '720'),
(238, 'October-2040', '2040-10', '31', '744'),
(239, 'November-2040', '2040-11', '30', '720'),
(240, 'December-2040', '2040-12', '31', '744'),
(241, 'January-2041', '2041-01', '31', '744'),
(242, 'February-2041', '2041-02', '28', '672'),
(243, 'March-2041', '2041-03', '31', '744'),
(244, 'April-2041', '2041-04', '30', '720'),
(245, 'May-2041', '2041-05', '31', '744'),
(246, 'June-2041', '2041-06', '30', '720'),
(247, 'July-2041', '2041-07', '31', '744'),
(248, 'August-2041', '2041-08', '31', '744'),
(249, 'September-2041', '2041-09', '30', '720'),
(250, 'October-2041', '2041-10', '31', '744'),
(251, 'November-2041', '2041-11', '30', '720'),
(252, 'December-2041', '2041-12', '31', '744'),
(253, 'January-2042', '2042-01', '31', '744'),
(254, 'February-2042', '2042-02', '28', '672'),
(255, 'March-2042', '2042-03', '31', '744'),
(256, 'April-2042', '2042-04', '30', '720'),
(257, 'May-2042', '2042-05', '31', '744'),
(258, 'June-2042', '2042-06', '30', '720'),
(259, 'July-2042', '2042-07', '31', '744'),
(260, 'August-2042', '2042-08', '31', '744'),
(261, 'September-2042', '2042-09', '30', '720'),
(262, 'October-2042', '2042-10', '31', '744'),
(263, 'November-2042', '2042-11', '30', '720'),
(264, 'December-2042', '2042-12', '31', '744');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$IdUtd2qKPkKGyzSPf5Vs5OQOUMPRgfzo6P2vXR3UlGrVsvPmxd6Q6', NULL, NULL, NULL, '2021-11-14 19:59:47', '2021-11-14 19:59:47'),
(6, 'Yqin', 'ainul.yaqin@pamapersada.com', NULL, '$2y$10$ejEizwhNC.HOqRNudSxbb.Djg56mw9sonQTv2w3sMBv7EFVHlDp0i', NULL, NULL, '8C2IcjkaslHZyGfVmtmAYJtdBFGbYWcQmevNDwkw3N2jwrIUthEWGxDo25n2', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_site`
--
ALTER TABLE `all_site`
  ADD PRIMARY KEY (`id_site`);

--
-- Indexes for table `hitung_sla`
--
ALTER TABLE `hitung_sla`
  ADD PRIMARY KEY (`id_hitung`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sla`
--
ALTER TABLE `sla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sla_internal`
--
ALTER TABLE `sla_internal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `summary`
--
ALTER TABLE `summary`
  ADD PRIMARY KEY (`id_date`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

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
-- AUTO_INCREMENT for table `all_site`
--
ALTER TABLE `all_site`
  MODIFY `id_site` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `hitung_sla`
--
ALTER TABLE `hitung_sla`
  MODIFY `id_hitung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sla`
--
ALTER TABLE `sla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sla_internal`
--
ALTER TABLE `sla_internal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `summary`
--
ALTER TABLE `summary`
  MODIFY `id_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
