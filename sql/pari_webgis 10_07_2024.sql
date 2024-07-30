-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 03:32 PM
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
(2, 3);

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
(104, '::1', 'ukasahhayata@gmail.com', 1, '2024-07-10 13:32:37', 1);

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
(10, 'SIMAKSI', '7:00 - 21:00', 'Rp20.000/malam', 'Wisata Buatan', '-5.8551884', '106.622443', 'Biaya retribusi Rp20.000/hari oleh pemda setempat bagi yang berkemah, digunakan untuk perawatan fasilitas di Pantai pasir perawan.', '1720020748_0f1a17db1a4cdc038699.png'),
(12, 'Tenda Camping', '24 Jam', 'Rp40.000/malam', 'Wisata Buatan', '-5.855001711692463', '106.62374675273895', 'Biaya untuk sewa tenda berkisar antara Rp40.000-Rp.80.000/malam termasuk pasang dan bongkar.', '1720022513_a0b6bae180e745cacb3b.jpg'),
(13, 'Spot Area Camping', '24 Jam', 'Rp20.000 (biaya SIMAKSI)', 'Wisata Alam', '-5.854980365959458', '106.62335515022279', 'Area camping Pantai Pasir Perawan. Lingkungan di spot camping ini sangat sejuk dan bersih sehingga nyaman untuk melakukan aktivitas camping di area ini.', '1720022733_2b52f8a0f92878851f52.jpg'),
(14, 'Pantai Pasir Perawan Hammock', '24 Jam', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.855012384558667', '106.62182092666626', 'Anda bisa menikmati pemandangan sunset sambil bersantai di Hammock. Area Hammock ini tidak dikenakan biaya.', '1720023290_8885509b72634dca985f.jpg'),
(15, 'Spot Mangrove Pantai Pasir Perawan', '24 Jam', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.853955769816094', '106.62282407283784', 'Spot mangrove di Pulau Pari menawarkan keindahan hutan bakau yang asri, cocok untuk ekowisata.', '1720023517_b2ff1c2519f71848cd11.jpg'),
(16, 'Spot Volly Pantai Pasir Perawan', '16:00 - 18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.85487363', '106.6224753', 'Kegiatan Volly biasanya dilakukan pada sore hari oleh para wisatawan pulau pari.', '1720023843_ef7de871058d1209ae26.jpg'),
(17, 'Sewa Sepeda', '8:00 – 18:00', 'Rp20.000 – Rp150.000', 'Wisata Buatan', '-5.856816', '106.62149', 'Sepeda biasa: Rp20.000/hari, Sepeda Listrik: Rp100.000/hari, Sepeda Motor: Rp150.000/hari', '1720024561_e7bc2c57745e908ee0e2.jpg'),
(18, 'HomeStay Kenzi', '24 Jam', 'Rp600.000 – Rp.700.000', 'Wisata Buatan', '-5.8568908', '106.621397', 'Rp600.000: 1 Kamar, 1 AC, 1 Kamar Mandi. Rp700.000: 2 Kamar, 2 AC, Kamar Mandi. (085691565415)', '1720025119_3290c2b16ddd2eb55ef1.jpg'),
(19, 'Spot Snorkelling', '10:00 -13:00', '-', 'Wisata Alam', '-5.861223958086444', '106.62078022956848', 'Biaya untuk melakukan snorkelling di Pulau Pari sangat beragam tergantung penyedia jasa. Paling murah Rp35.000 untuk sewa alat 1 set per orang. Disini dapat menikmati pemandangan terumbu karang dan ikan bawah laut yang indah.', '1720029695_2a199db0b43f31ffb789.jpg'),
(20, 'View Spot Snorkelling', '10:00 -13:00', '-', 'Wisata Alam', '-5.861021175849379', '106.62099480628969', 'Pemandangan bawah laut snorkelling di Pulau Pari.', '1720029743_a571d53869cd1c6feb02.jpg'),
(21, 'Banana Boat', '10:00 -14:00', 'Rp35.000/orang', 'Wisata Alam', '-5.86120261259128', '106.62044763565063', 'Water sport banana boat ditarik menggunakan JetSki, Biaya 35.000/orang selama 15 menit.', '1720030808_e9caa969b5aa1c517db4.jpeg'),
(22, 'Sewa Banana Boat Dayung', '9:00 -18:00', 'Rp60.000/Jam', 'Wisata Buatan', '-5.854742894624744', '106.62226349115373', 'Banana boat dayung maximal 3 orang durasi 1 jam yang berlokasi Pantai Pasir Perawan.', '1720030564_f11abc4fc6806713f883.jpg'),
(23, 'Spot Banana Boat Dayung', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.854025143572584', '106.62194430828096', 'Spot area untuk watersport Banana Boat Dayung', '1720030733_5ac9db6202daf58017cc.jpg'),
(24, 'Spot Sunset Pantai Pasir Perawan', '17:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.85494301092473', '106.62168681621552', 'Spot sunset di Pulau Pari yang berada di Pantai Pasir Perawan.', '1720030883_3bc5aa9eb9cb94e93d8c.jpg'),
(25, 'Star Beach', '9:00 -18:00', 'Rp2.500/orang (biaya masuk pantai)', 'Wisata Alam', '-5.863006304052779', '106.61236345767976', 'Pantai Bintang di Pulau Pari terkenal dengan keberlimpahan bintang lautnya yang mempesona. Jika ingin berkunjung sangat direkomendasikan pada saat sore hari karena air sedang surut sehingga kita dapat lebih jelas melihat bintang laut di pantai bintang ini.', '1720031251_4e89d37856ea28b1a0a5.jpg'),
(26, 'Star Beach Hammock', '9:00 -18:00', 'Rp2.500/orang (biaya masuk)', 'Wisata Buatan', '-5.86289157237309', '106.61241978406909', 'Spot area bersantai di Pantai Bintang', '1720031343_d166bc292ca21dafcd13.jpg'),
(27, 'Tugu Star Beach', '9:00 -18:00', 'Rp2.500/orang (biaya masuk)', 'Wisata Buatan', '-5.863027649478962', '106.61246538162233', 'Tugu Pantai Bintang yang menjadi simbol area pantai.', '1720031577_aa0e56153cb91169196f.jpg'),
(28, 'Pantai Pasir Perawan', '9:00 -18:00', 'Rp5.000/orang (biaya masuk)', 'Wisata Alam', '-5.8552044961153715', '106.62249952554704', 'Pintu masuk area Pantai Pasir Perawan. Biaya masuk Rp5.000/orang untuk melakukan beragam aktivitas di sekitar area pantai mulai dari watersport, bersantai, berenang, dan menikmati wisata kuliner yang ada. Setiap pukul 18:00 akan terdengar suara sirine sebagai tanda bahwa waktu kunjungan di perairan pantai ini telah berakhir.', '1720031753_d852bc82872ed067b2fe.jpg'),
(29, 'Spot Ayunan Pantai Pasir Perawan', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Buatan', '-5.854211919028058', '106.62287771701814', 'Di pantai pasir perawan terdapat ayunan yang dapat kalian gunakan untuk bersantai menikmati keindahan Pantai.', '1720032253_811b082db7621ee1771e.jpg'),
(30, 'Area Berenang Dangkal', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.854414703737598', '106.62250757217407', 'Spot berenang ini memiliki kedalaman kurang dari 0,5m - 1 m', '1720033164_e62a122691651609e7cf.jpg'),
(31, 'Area Berenang Dalam', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.854131872411929', '106.62253975868225', 'Spot berenang ini memiliki kedalaman lebih dari 1,5m', '1720033230_da441e1b71dedcc429c7.jpg'),
(32, 'Area Berenang Dalam', '9:00 -18:00', 'Rp5.000/orang (biaya masuk pantai)', 'Wisata Alam', '-5.854275956312707', '106.62284553050996', 'Spot berenang ini memiliki kedalaman kurang lebih 1,5m', '1720033524_7cc728bd00542dcc4797.jpeg');

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
(1, 'ukasahhayata@gmail.com', 'ukasahhayata', NULL, 'default.svg', '$2y$10$VN.hIAdS36lhlJU9BHYqpuJTbeAPUtsBImEfnY2GzcFCf6tTfnOYG', NULL, NULL, NULL, '7887302b33a2dcabbd6ab79f20d7d89f', NULL, NULL, 1, 0, '2023-10-22 09:29:49', '2023-10-22 09:29:49', NULL),
(2, 'alia@mail.com', 'alia', NULL, 'default.svg', '$2y$10$y794tjDFcjD1Vosurdagj.0M6eLbpbXxNkFDlfc80s/bbUM/Xri3C', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-22 09:32:23', '2023-10-22 09:32:23', NULL),
(3, 'budi@mail.com', 'budi', NULL, 'default.svg', '$2y$10$3C5BtIm3ydzeWSqum5qdHuM2wH9h2ntW6ImyDWn1uFdLOeCjgHfs.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-25 05:43:26', '2023-10-25 05:43:26', NULL);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
