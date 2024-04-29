-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 11:35 AM
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
-- Database: `ci4login`
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
(64, '::1', 'ukasahhayata@gmail.com', 1, '2023-10-30 16:46:12', 1);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
