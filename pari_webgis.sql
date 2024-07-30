-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 04:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pari_webgis`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 09:32:32', 0),
(2, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 09:33:48', 0),
(3, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 09:34:27', 1),
(4, '::1', 'asda', NULL, '2023-10-22 10:05:10', 0),
(5, '::1', 'asdas', NULL, '2023-10-22 10:05:12', 0),
(6, '::1', 'alia', NULL, '2023-10-22 10:05:18', 0),
(7, '::1', 'alia@mail.com', 2, '2023-10-22 10:05:26', 1),
(8, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 10:06:11', 0),
(9, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 10:06:20', 0),
(10, '::1', 'alia', NULL, '2023-10-22 10:06:26', 0),
(11, '::1', 'alia@mail.com', 2, '2023-10-22 10:06:33', 1),
(12, '::1', 'alia', NULL, '2023-10-22 10:06:43', 0),
(13, '::1', 'alia@mail.com', 2, '2023-10-22 10:06:48', 1),
(14, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 10:06:53', 0),
(15, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 10:07:17', 1),
(16, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 10:09:36', 1),
(17, '::1', 'alia@mail.com', 2, '2023-10-22 10:09:43', 1),
(18, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 10:13:22', 1),
(19, '::1', 'alia@mail.com', 2, '2023-10-22 10:13:27', 1),
(20, '::1', 'ukasahhayata@gmail.com', NULL, '2023-10-22 10:14:05', 0),
(21, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 10:14:10', 1),
(22, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 13:24:01', 1),
(23, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 13:24:08', 1),
(24, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 14:01:05', 1),
(25, '::1', 'ukasahhayata@gmail.com', NULL, '2023-10-22 14:01:13', 0),
(26, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 14:01:18', 1),
(27, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-22 14:56:52', 1),
(28, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-24 10:47:19', 1),
(29, '::1', 'alia@mail.com', 2, '2023-10-25 05:36:07', 1),
(30, '::1', 'ukasah', NULL, '2023-10-25 05:36:13', 0),
(31, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 05:36:21', 1),
(32, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 05:47:03', 1),
(33, '::1', 'budi@mail.com', 3, '2023-10-25 05:47:11', 1),
(34, '::1', 'ukasah', NULL, '2023-10-25 05:52:41', 0),
(35, '::1', 'ukasahhayata@gmail.com', NULL, '2023-10-25 05:52:44', 0),
(36, '::1', 'ukasah', NULL, '2023-10-25 05:52:51', 0),
(37, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 05:52:57', 1),
(38, '::1', 'alia@mail.com', 2, '2023-10-25 05:53:04', 1),
(39, '::1', 'budi@mail.com', 3, '2023-10-25 05:53:14', 1),
(40, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 05:53:24', 1),
(41, '::1', 'alia@mail.com', 2, '2023-10-25 05:53:41', 1),
(42, '::1', 'alia@mail.com', 2, '2023-10-25 05:55:14', 1),
(43, '::1', 'budi@mail.com', 3, '2023-10-25 05:55:31', 1),
(44, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 05:55:45', 1),
(45, '::1', 'budi@mail.com', 3, '2023-10-25 05:57:46', 1),
(46, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 06:21:13', 1),
(47, '::1', 'budi@mail.com', 3, '2023-10-25 06:23:48', 1),
(48, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 12:57:55', 1),
(49, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 13:03:37', 1),
(50, '::1', 'budi@mail.com', 3, '2023-10-25 13:06:12', 1),
(51, '::1', 'budi@mail.com', 3, '2023-10-25 13:07:10', 1),
(52, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 13:07:19', 1),
(53, '::1', 'alia@mail.com', 2, '2023-10-25 15:02:01', 1),
(54, '::1', 'ukasahhayata@gmail.com', NULL, '2023-10-25 15:02:12', 0),
(55, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-25 15:02:16', 1),
(56, '::1', 'ukasahhayata@gmail.com', NULL, '2023-10-30 16:45:14', 0),
(57, '::1', 'ukasahhayata@gmail.com', NULL, '2023-10-30 16:45:20', 0),
(58, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-30 16:45:25', 1),
(59, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-30 16:45:37', 1),
(60, '::1', 'asd', NULL, '2023-10-30 16:45:40', 0),
(61, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-30 16:45:57', 1),
(62, '::1', 'asdas', NULL, '2023-10-30 16:46:05', 0),
(63, '::1', 'sdgsg', NULL, '2023-10-30 16:46:07', 0),
(64, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-30 16:46:12', 1),
(65, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-05 02:56:58', 1),
(66, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-05 09:43:33', 1),
(67, '::1', 'ukasahhayata@gmail.com', NULL, '2024-06-05 09:59:27', 0),
(68, '::1', 'ukasahhayata@gmail.com', NULL, '2024-06-05 09:59:32', 0),
(69, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-05 09:59:36', 1),
(70, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-06 01:31:41', 1),
(71, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-06 05:20:51', 1),
(72, '::1', 'ukasahhayata@gmail.com', NULL, '2024-06-06 05:35:01', 0),
(73, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-06 05:35:08', 1),
(74, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-06 06:07:18', 1),
(75, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-11 18:41:37', 1),
(76, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-12 04:50:46', 1),
(77, '::1', 'budi@mail.com', 3, '2024-06-12 04:51:07', 1),
(78, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-12 04:54:32', 1),
(79, '::1', 'budi@mail.com', 3, '2024-06-12 04:55:56', 1),
(80, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-12 07:17:51', 1),
(81, '::1', 'budi@mail.com', 3, '2024-06-12 07:35:22', 1),
(82, '::1', 'budi@mail.com', 3, '2024-06-13 10:11:19', 1),
(83, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-13 10:11:32', 1),
(84, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-19 12:06:50', 1),
(85, '::1', 'ukasahhayata@gmail.com', NULL, '2024-06-30 13:20:36', 0),
(86, '::1', 'ukasahhayata@gmail.com', 1, '2024-06-30 13:20:40', 1),
(87, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-01 13:18:56', 0),
(88, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-01 13:19:00', 1),
(89, '::1', 'budi@mail.com', 3, '2024-07-01 13:50:49', 1),
(90, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-01 13:53:38', 0),
(91, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-01 13:53:42', 0),
(92, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-01 13:53:47', 1),
(93, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-01 15:38:56', 1),
(94, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-01 17:44:34', 0),
(95, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-01 17:44:39', 0),
(96, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-01 17:44:43', 1),
(97, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-01 17:46:37', 1),
(98, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-01 17:47:40', 1),
(99, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-03 11:39:55', 1),
(100, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-03 15:13:02', 1),
(101, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-03 15:13:02', 1),
(102, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-03 16:16:54', 1),
(103, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-05 10:21:45', 1),
(104, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-10 13:32:37', 1),
(105, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-10 13:36:00', 1),
(106, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-10 15:37:02', 1),
(107, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 11:12:59', 1),
(108, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 16:24:48', 1),
(109, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 16:34:15', 1),
(110, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:35:39', 1),
(111, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-13 17:42:15', 0),
(112, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-13 17:42:19', 0),
(113, '::1', 'ukasahhayata@gmail.com', NULL, '2024-07-13 17:42:25', 0),
(114, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:42:34', 1),
(115, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:45:39', 1),
(116, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:48:35', 1),
(117, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:48:44', 1),
(118, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:49:33', 1),
(119, '::1', 'ukasahhayata', NULL, '2024-07-13 17:49:48', 0),
(120, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:49:52', 1),
(121, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:50:06', 1),
(122, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-13 17:50:19', 1),
(123, '::1', 'ukasahhayata', NULL, '2024-07-16 17:56:18', 0),
(124, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 17:56:22', 1),
(125, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 17:58:42', 1),
(126, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 17:59:48', 1),
(127, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 17:59:56', 1),
(128, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 18:07:51', 1),
(129, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 18:15:40', 1),
(130, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 18:17:27', 1),
(131, '::1', 'ukasahhayata', NULL, '2024-07-16 18:19:37', 0),
(132, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 18:19:40', 1),
(133, '::1', 'ukasahhayata', NULL, '2024-07-16 18:21:38', 0),
(134, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 19:27:34', 1),
(135, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 19:28:18', 1),
(136, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-16 20:07:22', 1),
(137, '::1', 'ukasahhayata', NULL, '2024-07-16 20:16:08', 0),
(138, '::1', 'ukasahhayata', NULL, '2024-07-17 04:29:55', 0),
(139, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-17 04:29:59', 1),
(140, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-17 13:04:44', 1),
(141, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-17 15:12:04', 1),
(142, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-17 20:06:28', 1),
(143, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-18 06:40:49', 1),
(144, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-19 06:09:29', 1),
(145, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-29 07:04:15', 1),
(146, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-29 07:13:11', 1),
(147, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-29 08:19:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage User\'s Profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1697961976, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id` int(11) NOT NULL,
  `nama_wisata` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `jam_operasi` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `harga_tiket` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `jenis_wisata` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `lat` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `long` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `deskripsi` text CHARACTER SET latin1 DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id`, `nama_wisata`, `jam_operasi`, `harga_tiket`, `jenis_wisata`, `lat`, `long`, `deskripsi`, `foto`) VALUES
(10, 'SIMAKSI', '7:00 - 21:00', 'Rp20.000/malam', 'Wisata Buatan', '-5.8551884', '106.622443', 'Biaya retribusi Rp20.000/hari oleh pemda setempat bagi yang berkemah, digunakan untuk perawatan fasilitas di Pantai Pasir Perawan.', '1720887030_c1a358004db7da2b6948.png'),
(12, 'Tenda Camping', '24 Jam', 'Rp40.000/malam', 'Wisata Buatan', '-5.855001711692463', '106.62374675273895', 'Biaya untuk sewa tenda berkisar antara Rp40.000-Rp.80.000/malam termasuk pasang dan bongkar. Biaya pasang hammock Rp25.000/malam.', '1720022513_a0b6bae180e745cacb3b.jpg'),
(13, 'Spot Area Camping', '24 Jam', 'Rp20.000 (biaya SIMAKSI)', 'Wisata Alam', '-5.854980', '106.62335', 'Area camping Pantai Pasir Perawan. Lingkungan di spot camping ini sangat sejuk dan bersih sehingga nyaman untuk melakukan aktivitas camping di area ini.', '1720022733_2b52f8a0f92878851f52.jpg'),
(14, 'Spot Hammock Pantai Pasir Perawan ', '24 Jam', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.855012', '106.62182', 'Anda bisa menikmati pemandangan sunset sambil bersantai di Hammock. Area Hammock ini tidak dikenakan biaya.', '1720023290_8885509b72634dca985f.jpg'),
(15, 'Spot Mangrove Pantai Pasir Perawan', '24 Jam', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.853955', '106.62282', 'Spot mangrove di Pulau Pari menawarkan keindahan hutan bakau yang asri, cocok untuk ekowisata.', '1720023517_b2ff1c2519f71848cd11.jpg'),
(16, 'Spot Volly Pantai Pasir Perawan', '16:00 - 18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.854873', '106.62247', 'Kegiatan Volly biasanya dilakukan pada sore hari oleh para wisatawan pulau pari.', '1720023843_ef7de871058d1209ae26.jpg'),
(17, 'Sewa Sepeda', '8:00 – 18:00', 'Rp20.000 – Rp150.000', 'Wisata Buatan', '-5.856816', '106.62149', 'Sepeda biasa: Rp20.000/hari, Sepeda Listrik: Rp100.000/hari, Sepeda Motor: Rp150.000/hari', '1720024561_e7bc2c57745e908ee0e2.jpg'),
(18, 'HomeStay Kenzi', '24 Jam', 'Rp600.000 – Rp.700.000', 'Wisata Buatan', '-5.856890', '106.62139', 'Rp600.000: 1 Kamar, 1 AC, 1 Kamar Mandi. Rp700.000: 2 Kamar, 2 AC, Kamar Mandi. (085691565415)', '1720025119_3290c2b16ddd2eb55ef1.jpg'),
(19, 'Spot Snorkelling', '10:00 -13:00', 'Rp100.000/orang', 'Wisata Alam', '-5.861223', '106.62078', 'Biaya untuk melakukan snorkelling di Pulau Pari sangat beragam tergantung penyedia jasa. Paling murah Rp100.000/orang termasuk alat dan kapal.', '1720029695_2a199db0b43f31ffb789.jpg'),
(20, 'View Spot Snorkelling', '10:00 -13:00', 'Rp100.000/orang', 'Wisata Alam', '-5.861021175849379', '106.62099480628969', 'Pemandangan bawah laut snorkelling di Pulau Pari.', '1720029743_a571d53869cd1c6feb02.jpg'),
(21, 'Banana Boat', '10:00 -14:00', 'Rp35.000/orang', 'Wisata Alam', '-5.861202', '106.62044', 'Water sport banana boat ditarik menggunakan JetSki, Biaya 35.000/orang selama 15 menit.', '1720030808_e9caa969b5aa1c517db4.jpeg'),
(22, 'Sewa Banana Boat Dayung', '9:00 -18:00', 'Rp60.000/Jam', 'Wisata Buatan', '-5.854742', '106.62226', 'Banana boat dayung dikenakan biaya Rp60.000 maximal 3 orang durasi 1 jam. Lokasi Pantai Pasir Perawan.', '1720030564_f11abc4fc6806713f883.jpg'),
(23, 'Spot Banana Boat Dayung', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.854430', '106.62226', 'Spot area untuk watersport Banana Boat Dayung', '1720030733_5ac9db6202daf58017cc.jpg'),
(24, 'Spot Sunset Pantai Pasir Perawan', '17:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.85494301092473', '106.62168681621552', 'Spot sunset di Pulau Pari yang berada di Pantai Pasir Perawan.', '1720030883_3bc5aa9eb9cb94e93d8c.jpg'),
(25, 'Star Beach', '9:00 -18:00', 'Rp2.500/orang (biaya masuk pantai)', 'Wisata Alam', '-5.86300', '106.6123', 'Pantai Bintang di Pulau Pari terkenal dengan keberlimpahan bintang lautnya yang mempesona. Jika ingin berkunjung sangat direkomendasikan pada saat sore hari karena air sedang surut sehingga kita dapat lebih jelas melihat bintang laut di pantai bintang ini.', '1720031251_4e89d37856ea28b1a0a5.jpg'),
(26, 'Star Beach Hammock', '9:00 -18:00', 'Rp2.500/orang (biaya masuk)', 'Wisata Buatan', '-5.86289157237309', '106.61241978406909', 'Spot area bersantai di Pantai Bintang', '1720031343_d166bc292ca21dafcd13.jpg'),
(27, 'Tugu Star Beach', '9:00 -18:00', 'Rp2.500/orang (biaya masuk)', 'Wisata Buatan', '-5.863027649478962', '106.61246538162233', 'Tugu Pantai Bintang yang menjadi simbol area pantai.', '1720031577_aa0e56153cb91169196f.jpg'),
(28, 'Pantai Pasir Perawan', '9:00 -18:00', 'Rp5.000/orang (biaya masuk)', 'Wisata Alam', '-5.8552044961153715', '106.62249952554704', 'Pintu masuk area Pantai Pasir Perawan. Biaya masuk Rp5.000/orang untuk melakukan beragam aktivitas di sekitar area pantai mulai dari watersport, bersantai, berenang, dan menikmati wisata kuliner yang ada. Setiap pukul 18:00 akan terdengar suara sirine sebagai tanda bahwa waktu kunjungan di perairan pantai ini telah berakhir.', '1720031753_d852bc82872ed067b2fe.jpg'),
(29, 'Spot Ayunan Pantai Pasir Perawan', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.854211919028058', '106.62287771701814', 'Di pantai pasir perawan terdapat ayunan yang dapat kalian gunakan untuk bersantai menikmati keindahan Pantai.', '1720032253_811b082db7621ee1771e.jpg'),
(30, 'Area Berenang Dangkal', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.854414703737598', '106.62250757217407', 'Spot berenang ini memiliki kedalaman kurang dari 0,5m - 1 m', '1720033164_e62a122691651609e7cf.jpg'),
(31, 'Area Berenang Dalam', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.854131872411929', '106.62253975868225', 'Spot berenang ini memiliki kedalaman lebih dari 1,5m', '1720033230_da441e1b71dedcc429c7.jpg'),
(32, 'Area Berenang Dalam', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.854275956312707', '106.62284553050996', 'Spot berenang ini memiliki kedalaman kurang lebih 1,5m', '1720033524_7cc728bd00542dcc4797.jpeg'),
(33, 'Pantai Kresek', '9:00 -18:00', 'Tanpa BIaya', 'Wisata Alam', '-5.8605782', '106.615844', 'Terletak di sisi Barat Daya dengan akses 7 menit dari dermaga, menawarkan pemandangan pohon pinus, spot foto pohon berbentuk hati, dan panorama laut ke Pulau Jawa. Meskipun terletak di depan rumah warga dan homestay, pantai ini tetap dapat dikunjungi asalkan pengunjung menghormati warga setempat.', '1720628907_5a269fa5a091e4e54017.jpg'),
(34, 'Pantai Rengge', '24 Jam', 'Donasi Sukarela', 'Wisata Alam', '-5.854425376615009', '106.63129448890687', 'Dari pos retribusi, pengunjung perlu menempuh jarak sekitar 800 meter melalui jalan setapak. Sangat disarankan untuk menyewa sepeda karena jarak yang lumayan jauh. Meskipun area ini terbatas dan kondisi pantainya kurang terjaga, pantai ini menawarkan keunggulan sebagai spot untuk menikmati sunrise, mangrove, dan berfoto. Beberapa pengunjung juga melakukan kegiatan berkemah di lokasi ini.', '1720629776_8cdf53b30a422990c938.jpg'),
(35, 'Warung Pantai Perawan', '8:00 - 21:00', '-', 'Wisata Buatan', '-5.855087', '106.62292', 'Warung ini menyediakan berbagai macam barang dan makanan. Selain itu, warung ini juga dilengkapi dengan fasilitas toilet (Rp5.000) dan stopkontak untuk mengisi daya perangkat. Pada hari weekend setiap warung di Pantai Perawan buka 24 jam.', '1720880079_a604aa2d4dd612c01efb.jpg'),
(36, 'Pos Retribusi Pantai Rengge', '24 Jam', 'Donasi Sukarela', 'Wisata Buatan', '-5.8557007', '106.623027', 'Pos retribusi untuk mengunjungi Pantai Rengge, dikenakan biaya donasi sukarela.', '1720880409_13b91a0d62fc36adb196.jpg'),
(37, 'Rumah Edukasi Mangrove', 'Tutup', 'Tanpa Biaya', 'Wisata Buatan', '-5.855796', '106.623516', 'Rumah Edukasi Mangrove bertujuan meningkatkan kesadaran, pendidikan, dan konservasi ekosistem mangrove. Fasilitas ini memberikan pengetahuan tentang pentingnya mangrove dalam menjaga keseimbangan ekosistem dan melindungi pantai.', '1720880601_e72a4de8f3306a60f9db.jpg'),
(38, 'Kebun Perempuan Nelayan', '7:00 - 15:00', 'Tanpa Biaya', 'Wisata Buatan', '-5.855578', '106.62362', 'Kebun Perempuan Nelayan merupakan binaan Suku Dinas Ketahanan Pangan, Kelautan dan Perikanan. Kebun ini mengaplikasikan metode hidroponik dalam penanaman sayuran, seperti sawi. Kebun tersebut dikelola oleh Kelompok Wanita Tani (KWT) Perempuan Nelayan Kelurahan Pulau Pari.', '1720880676_35a61aece8d2d7f9ec4d.jpg'),
(39, 'BRIN', '8:00 – 17:00', 'Tanpa Biaya', 'Wisata Buatan', '-5.862520', '106.61168', 'Lembaga Penelitian BRIN, sebelumnya dikenal sebagai LIPI, saat ini sedang dalam tahap renovasi.', '1720880858_2ba2edec082946450833.jpg'),
(40, 'Pantai LIPI', '6:00 – 21:00', 'Rp2.000', 'Wisata Alam', '-5.863129', '106.61035', 'Di area BRIN terdapat pantai yang dikenal sebagai Pantai LIPI, dan pengunjung dikenakan biaya retribusi sebesar 2000 rupiah. ', '1720880937_810ab8e5ba4bc4e5576c.png'),
(41, 'Spot Mangrove Pantai Rengge', '24 Jam', 'Tanpa Biaya', 'Wisata Alam', '-5.854718', '106.63099', 'PT Multi Guna Maritim mengadakan aksi penanaman 1.000 mangrove di Pantai Rengge sebagai upaya pelestarian lingkungan dan menciptakan keberlanjutan bagi Masyarakat.', '1720881202_2b3299822140e9b8d3cb.jpg'),
(42, 'Diving Organizer Pulau Pari', '8:00 – 17:00', 'Rp1.050.000/orang', 'Wisata Buatan', '-5.8589693', '106.618446', 'Diving Organizer menyediakan jasa untuk kegiatan diving dengan harga per orang sudah termasuk biaya kapal, alat, dan dive guide. Harga akan lebih murah untuk kelompok 2 atau 3 orang. Biaya dokumentasi bawah laut dikenakan tambahan Rp200.000.', '1720881309_9960e5b7d23b7b8a4b34.png'),
(43, 'Spot Diving', '8:00 – 11:00', 'Rp1.050.000/orang', 'Wisata Alam', '-5.864585', '106.61808', 'Spot diving di Pulau Pari memiliki kedalaman 15-20 meter dan terdapat terumbu karang jenis Pocillopora yang sangat indah di kedalaman laut.', '1720881613_abf705525ff4ba0b3e55.png'),
(44, 'Spot Sewa Bentor Pantai Perawan', '8:00 – 17:00', 'Rp7.000/orang', 'Wisata Buatan', '-5.8553058', '106.622588', 'Sekali perjalanan naik bentor pengunjung dikenakan biaya Rp7.000 untuk mengunjungi tiap pantai di Pulau Pari.', '1720883034_377cb2a554dec6dd69ec.png'),
(45, 'Homestay Pari Solata', '24 Jam', 'Rp400.000/malam', 'Wisata Buatan', '-5.8582569', '106.620061', 'Rp400.000: 1 Kamar, 1 Double Bed, AC, TV,  1 Kamar Mandi. Waktu check-out 12:00. (081285642906)', '1720883142_6d1a78f343567911fcf0.png'),
(46, 'Homestay Reyhan', '24 Jam', 'Rp500.000/malam', 'Wisata Buatan', '-5.8576272', '106.621225', 'Rp400.000: 1 Kamar, 1 Double Bed, AC, TV,  1 Kamar Mandi. Waktu check-out 11:00. (081285642906)', '1720883349_6775d7bdbd8564b7673f.png'),
(47, 'Homestay Putri Bungsu', '24 Jam', 'Rp550.000/malam', 'Wisata Buatan', '-5.8586464', '106.617583', 'Rp500.000: 1 Kamar, 2 Double Bed, AC, TV,  1 Kamar Mandi. Waktu check-out 11:00. (081285642906)', '1720883533_a26b31efbde83751ca88.png'),
(48, 'Homestay Mole', '24 Jam', 'Rp500.000/malam', 'Wisata Buatan', '-5.8574084', '106.619967', 'Rp500.000: 2 Kamar, 1 Double Bed, AC, TV,  1 Kamar Mandi. Waktu check-out 10:00. (081285642906)', '1720883659_6a7d9189a3810e4fab99.png'),
(49, 'Warung Makan', '7:00 – 17:00', 'Rp10.000 - Rp50.000', 'Wisata Buatan', '-5.858054', '106.62010', 'Warung makan ini menyediakan berbagai lauk dengan harga murah dan juga menawarkan layanan sewa sepeda.', '1720885472_b61d9415b5e33843ccac.jpg'),
(50, 'Tony Cafe', '6:00 – 23:59', 'Rp50.000 – Rp75.000', 'Wisata Buatan', '-5.8550123', '106.622164', 'Tony Café adalah restoran seafood yang terletak di Pantai Pasir Perawan. Meskipun harganya cukup mahal, rasanya enak dan hampir buka selama 24 jam.', '1720886229_bc329ca1a4bcf9491894.jpg'),
(51, 'Warung Pak Edo', '6:00 – 21:00', 'Rp20.000 – Rp75.000', 'Wisata Buatan', '-5.8550817581839905', '106.62265777587892', 'Warung Pak Edo menyediakan beberapa menu makanan sea food, selain itu disini juga menyediakan menu makan ayam bakar.', '1720886563_c4d1180aa9e36e0e68a8.jpg'),
(52, 'Spot Pemancingan', '24 Jam', 'Tanpa Biaya', 'Wisata Alam', '-5.858534', '106.62000', 'Tempat pemancingan ini berada dekat dengan dermaga. Ikan yang tersedia pada spot ini yaitu ikan swalayang. Alat dan pemancingan dapat sewa atau beli dekat dari lokasi pemancingan.', '1721247355_aba9bf7136d283bcc3a5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ukasahhayata@gmail.com', 'ukasahhayata', 'Muhammad Ukasah Hayata', 'default.svg', '$2y$10$VN.hIAdS36lhlJU9BHYqpuJTbeAPUtsBImEfnY2GzcFCf6tTfnOYG', NULL, NULL, NULL, '7887302b33a2dcabbd6ab79f20d7d89f', NULL, NULL, 1, 0, '2023-10-22 09:29:49', '2023-10-22 09:29:49', NULL),
(2, 'alia@mail.com', 'alia', 'Alia Tanoko', 'default.svg', '$2y$10$y794tjDFcjD1Vosurdagj.0M6eLbpbXxNkFDlfc80s/bbUM/Xri3C', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-22 09:32:23', '2023-10-22 09:32:23', NULL),
(3, 'budi@mail.com', 'budi', 'Budi Hernando Bani', 'default.svg', '$2y$10$3C5BtIm3ydzeWSqum5qdHuM2wH9h2ntW6ImyDWn1uFdLOeCjgHfs.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-25 05:43:26', '2023-10-25 05:43:26', NULL),
(4, 'Firmann@gmail.com', 'firmann', NULL, 'default.svg', '$2y$10$BTTjGI.tb1CR8WQgo2FNo.Pq6Jgz3GF1HCHAhohAtzmqY6PLrEgcq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-07-17 15:09:58', '2024-07-17 15:09:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
