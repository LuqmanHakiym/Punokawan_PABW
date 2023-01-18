-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2022 pada 04.54
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsim`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
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
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin keseluruhan'),
(2, 'radiologi', 'admin radiologi'),
(3, 'laborat', 'admin laboratorium'),
(4, 'dokter', 'admin dokter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 15),
(2, 16),
(3, 17),
(4, 19),
(4, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
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
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'anandfack', NULL, '2021-10-08 05:43:26', 0),
(2, '::1', 'anand', 5, '2021-10-08 05:43:33', 0),
(3, '::1', 'anand', 5, '2021-10-08 05:44:02', 0),
(4, '::1', 'anand', 6, '2021-10-08 05:45:02', 0),
(5, '::1', 'budi@gmail.com', 12, '2021-10-08 07:12:13', 1),
(6, '::1', 'budi@gmail.com', 12, '2021-10-08 20:04:11', 1),
(7, '::1', 'admin@admin.com', 13, '2021-10-08 20:41:45', 1),
(8, '::1', 'admin@admin.com', 13, '2021-10-08 20:47:34', 1),
(9, '::1', 'admin@admin.com', 13, '2021-10-09 01:02:37', 1),
(10, '::1', 'budi', NULL, '2021-10-10 20:10:41', 0),
(11, '::1', 'admin@admin.com', 13, '2021-10-10 20:10:47', 1),
(12, '::1', 'anandfirdausyah45@gmail.com', 14, '2021-10-10 20:12:54', 1),
(13, '::1', 'admin@admin.com', 13, '2021-10-11 20:13:52', 1),
(14, '::1', 'admin@admin.com', 13, '2021-10-11 23:44:50', 1),
(15, '::1', 'admin@admin.com', 15, '2021-10-11 23:46:02', 1),
(16, '192.168.0.190', 'admin@admin.com', 15, '2021-10-11 23:47:11', 1),
(17, '192.168.0.190', 'admin@admin.com', 15, '2021-10-12 20:35:54', 1),
(18, '192.168.0.190', 'admin@admin.com', 15, '2021-10-13 20:16:35', 1),
(19, '192.168.0.190', 'admin@admin.com', 15, '2021-10-13 22:58:58', 1),
(20, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 01:20:04', 1),
(21, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 01:20:08', 1),
(22, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 01:20:21', 1),
(23, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 01:20:53', 1),
(24, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 01:21:08', 1),
(25, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 01:23:16', 1),
(26, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 01:23:24', 1),
(27, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 01:24:29', 1),
(28, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 01:24:54', 1),
(29, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 01:28:25', 1),
(30, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 01:29:57', 1),
(31, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 01:30:07', 1),
(32, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 01:30:45', 1),
(33, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 01:31:20', 1),
(34, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 01:32:55', 1),
(35, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 01:33:05', 1),
(36, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 01:33:14', 1),
(37, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 01:35:09', 1),
(38, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 02:03:48', 1),
(39, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 02:05:36', 1),
(40, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 02:08:02', 1),
(41, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 02:10:46', 1),
(42, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 02:11:01', 1),
(43, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 02:15:23', 1),
(44, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 20:06:55', 1),
(45, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 20:07:30', 1),
(46, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 20:26:30', 1),
(47, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 20:40:55', 1),
(48, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 20:45:28', 1),
(49, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 20:45:39', 1),
(50, '192.168.0.190', 'tuti@tuti.com', 18, '2021-10-14 20:50:35', 1),
(51, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 21:00:06', 1),
(52, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 21:00:26', 1),
(53, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 21:15:25', 1),
(54, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 21:15:49', 1),
(55, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 21:17:03', 1),
(56, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 21:17:15', 1),
(57, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-14 21:17:34', 1),
(58, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 21:18:10', 1),
(59, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 21:19:15', 1),
(60, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 21:20:00', 1),
(61, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 21:21:46', 1),
(62, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 21:29:56', 1),
(63, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-14 22:10:31', 1),
(64, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-14 22:11:06', 1),
(65, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-14 22:11:46', 1),
(66, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-14 22:13:33', 1),
(67, '192.168.0.190', 'dokter1@dokter.com', 20, '2021-10-14 22:16:06', 1),
(68, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-14 22:16:25', 1),
(69, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-14 22:33:11', 1),
(70, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-14 23:12:49', 1),
(71, '192.168.0.190', 'admin@admin.com', 15, '2021-10-14 23:14:51', 1),
(72, '192.168.0.2', 'admin@admin.com', 15, '2021-10-14 23:19:00', 1),
(73, '192.168.0.2', 'laborat', NULL, '2021-10-14 23:19:42', 0),
(74, '192.168.0.2', 'dokter@dokter.com', 19, '2021-10-14 23:19:57', 1),
(75, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-15 00:24:36', 1),
(76, '192.168.0.190', 'admin@admin.com', 15, '2021-10-15 00:24:47', 1),
(77, '192.168.0.190', 'admin@admin.com', 15, '2021-10-15 20:03:16', 1),
(78, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-15 20:07:08', 1),
(79, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-15 20:07:22', 1),
(80, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-15 20:07:35', 1),
(81, '192.168.0.190', 'tuti@tuti.com', 18, '2021-10-15 20:09:35', 1),
(82, '192.168.0.190', 'admin@admin.com', 15, '2021-10-15 20:15:09', 1),
(83, '192.168.0.190', 'admin@admin.com', 15, '2021-10-15 20:46:33', 1),
(84, '192.168.0.95', 'admin@admin.com', 15, '2021-10-15 20:47:09', 1),
(85, '192.168.0.190', 'admin@admin.com', 15, '2021-10-15 21:19:41', 1),
(86, '192.168.0.190', 'admin@admin.com', 15, '2021-10-17 20:27:00', 1),
(87, '192.168.0.190', 'admin@admin.com', 15, '2021-10-17 22:30:58', 1),
(88, '192.168.0.190', 'admin@admin.com', 15, '2021-10-18 01:49:13', 1),
(89, '192.168.0.190', 'admin@admin.com', 15, '2021-10-20 20:08:25', 1),
(90, '192.168.0.190', 'admin@admin.com', 15, '2021-10-21 01:47:34', 1),
(91, '192.168.0.190', 'admin@admin.com', 15, '2021-10-21 03:27:31', 1),
(92, '192.168.0.190', 'admin@admin.com', 15, '2021-10-21 21:05:23', 1),
(93, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-22 00:37:06', 1),
(94, '192.168.0.190', 'admin@admin.com', 15, '2021-10-22 00:38:48', 1),
(95, '192.168.0.190', 'admin@admin.com', 15, '2021-10-22 20:15:42', 1),
(96, '192.168.0.190', 'admin@admin.com', 15, '2021-10-22 23:08:52', 1),
(97, '192.168.0.190', 'admin@admin.com', 15, '2021-10-24 21:31:40', 1),
(98, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-24 21:49:48', 1),
(99, '192.168.0.190', 'radiologi@radiologi.com', 16, '2021-10-24 22:20:48', 1),
(100, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-24 22:28:57', 1),
(101, '192.168.0.190', 'admin@admin.com', 15, '2021-10-24 22:56:36', 1),
(102, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2021-10-24 22:56:51', 1),
(103, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-24 22:57:02', 1),
(104, '192.168.0.190', 'admin@admin.com', 15, '2021-10-24 23:11:08', 1),
(105, '192.168.0.190', 'admin@admin.com', 15, '2021-10-25 01:17:46', 1),
(106, '192.168.0.190', 'admin@admin.com', 15, '2021-10-25 20:09:17', 1),
(107, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-25 20:11:04', 1),
(108, '192.168.0.190', 'admin@admin.com', 15, '2021-10-25 20:12:18', 1),
(109, '192.168.0.190', 'admin@admin.com', 15, '2021-10-25 20:14:54', 1),
(110, '192.168.0.190', 'dokter@dokter.com', 19, '2021-10-25 20:15:43', 1),
(111, '192.168.0.190', 'admin@admin.com', 15, '2021-10-25 20:17:16', 1),
(112, '192.168.0.190', 'admin@admin.com', 15, '2021-10-26 02:34:02', 1),
(113, '192.168.0.190', 'admin@admin.com', 15, '2021-10-27 00:58:14', 1),
(114, '192.168.0.190', 'admin@admin.com', 15, '2021-10-28 23:11:15', 1),
(115, '192.168.0.83', 'admin@admin.com', 15, '2021-10-28 23:13:00', 1),
(116, '192.168.0.83', 'dokter@dokter.com', 19, '2021-10-28 23:15:21', 1),
(117, '192.168.0.83', 'radiologi@radiologi.com', 16, '2021-10-28 23:16:21', 1),
(118, '192.168.0.83', 'admin@admin.com', 15, '2021-10-28 23:17:12', 1),
(119, '192.168.0.190', 'admin@admin.com', 15, '2021-10-29 20:07:17', 1),
(120, '192.168.0.190', 'admin@admin.com', 15, '2021-11-01 01:42:01', 1),
(121, '192.168.0.190', 'dokter@dokter.com', 19, '2021-11-01 21:20:21', 1),
(122, '192.168.0.190', 'dokter@dokter.com', 19, '2021-11-01 21:20:30', 1),
(123, '192.168.0.190', 'dokter@dokter.com', 19, '2021-11-01 21:23:12', 1),
(124, '192.168.0.190', 'admin@admin.com', 15, '2021-11-01 21:27:48', 1),
(125, '192.168.0.190', 'dokter@dokter.com', 19, '2021-11-02 00:55:12', 1),
(126, '192.168.0.190', 'admin@admin.com', 15, '2021-11-12 20:39:28', 1),
(127, '192.168.0.190', 'admin@admin.com', 15, '2021-11-15 00:01:39', 1),
(128, '192.168.0.190', 'admin@admin.com', 15, '2022-01-04 21:50:23', 1),
(129, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2022-01-04 21:50:55', 1),
(130, '192.168.0.190', 'laboratorium@laboratorium.com', 17, '2022-01-04 21:51:55', 1),
(131, '192.168.0.190', 'admin@admin.com', 15, '2022-01-04 21:52:48', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-all', 'manage all'),
(2, 'manage-radiologi', 'manage radiologi'),
(3, 'manage-laboratorium', 'manage laboratorium'),
(4, 'manage-pasien', 'manage pasien');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
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
-- Struktur dari tabel `auth_tokens`
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
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kesimpulan`
--

CREATE TABLE `kesimpulan` (
  `ID_KESIMPULAN` int(11) NOT NULL,
  `ID_PASIEN` int(11) NOT NULL,
  `PEMERIKSAAN_FISIK` varchar(255) NOT NULL,
  `FOTO_THORAX` varchar(255) NOT NULL,
  `LABORATORIUM` varchar(255) NOT NULL,
  `SARAN` varchar(255) NOT NULL,
  `IMT` varchar(255) NOT NULL,
  `TATALAKSANA` varchar(255) NOT NULL,
  `SLUG` varchar(255) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kesimpulan`
--

INSERT INTO `kesimpulan` (`ID_KESIMPULAN`, `ID_PASIEN`, `PEMERIKSAAN_FISIK`, `FOTO_THORAX`, `LABORATORIUM`, `SARAN`, `IMT`, `TATALAKSANA`, `SLUG`, `CREATED_AT`, `UPDATED_AT`) VALUES
(6, 36, 'ab', 'b', 'b', 'b', 'b', 'b', '', '2021-10-12 02:26:37', '2021-10-12 02:26:49'),
(7, 35, 'ANAND FIRDAUSYAH ARRAZAQ', 'asfasfasf', 'asfasfasf', 'asfasfasf', 'asfasfasf', 'asfasfaasf', '', '2021-10-25 02:44:17', '2021-10-25 02:44:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laborat`
--

CREATE TABLE `laborat` (
  `ID_LABORAT` int(11) NOT NULL,
  `ID_PASIEN` int(11) NOT NULL,
  `ID_MASTERLAB` int(11) NOT NULL,
  `SLUG_LAB` varchar(100) NOT NULL,
  `HASIL_LAB` varchar(100) NOT NULL,
  `BIAYA_LAB` decimal(25,0) NOT NULL,
  `KESIMPULAN_LAB` varchar(255) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laborat`
--

INSERT INTO `laborat` (`ID_LABORAT`, `ID_PASIEN`, `ID_MASTERLAB`, `SLUG_LAB`, `HASIL_LAB`, `BIAYA_LAB`, `KESIMPULAN_LAB`, `CREATED_AT`, `UPDATED_AT`) VALUES
(26, 41, 6, '', 'aa', '0', '', '2021-10-28 23:24:08', '2021-10-28 23:24:08'),
(27, 41, 6, '', 'llll', '0', '', '2021-11-01 01:43:28', '2021-11-01 01:43:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_lab`
--

CREATE TABLE `master_lab` (
  `ID_MASTERLAB` int(11) NOT NULL,
  `TIPE_PERIKSA_LAB` varchar(255) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_lab`
--

INSERT INTO `master_lab` (`ID_MASTERLAB`, `TIPE_PERIKSA_LAB`, `CREATED_AT`, `UPDATED_AT`) VALUES
(6, 'Cek darah', '2021-10-28 23:23:52', '2021-10-28 23:23:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_rad`
--

CREATE TABLE `master_rad` (
  `ID_MASTERRAD` int(11) NOT NULL,
  `TIPE_PERIKSA_RAD` varchar(255) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_rad`
--

INSERT INTO `master_rad` (`ID_MASTERRAD`, `TIPE_PERIKSA_RAD`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'master', '2021-10-13 01:06:41', '2021-10-13 01:06:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
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
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1633688687, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `ID_PASIEN` int(11) NOT NULL,
  `NO_RM` varchar(50) NOT NULL,
  `NAMA_PASIEN` varchar(50) NOT NULL,
  `SLUG` varchar(255) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL DEFAULT current_timestamp(),
  `JENIS_KELAMIN` varchar(15) NOT NULL,
  `PERUSAHAAN` varchar(255) NOT NULL,
  `NIK` varchar(255) NOT NULL,
  `DEPARTEMEN` varchar(255) NOT NULL,
  `BAGIAN` varchar(255) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`ID_PASIEN`, `NO_RM`, `NAMA_PASIEN`, `SLUG`, `TANGGAL_LAHIR`, `JENIS_KELAMIN`, `PERUSAHAAN`, `NIK`, `DEPARTEMEN`, `BAGIAN`, `CREATED_AT`, `UPDATED_AT`) VALUES
(41, '12.12.12', 'ANAND FIRDAUSYAH', '', '2021-10-29', 'L/22', 'pt. bumi mulya', '3578080302990001', 'abc', 'staff', '2021-10-28 23:19:12', '2021-10-28 23:19:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periksa`
--

CREATE TABLE `periksa` (
  `ID_PERIKSA` int(11) NOT NULL,
  `ID-PASIEN` int(11) NOT NULL,
  `BATUK_DARAH` varchar(255) NOT NULL,
  `KENCING_BATU` varchar(255) NOT NULL,
  `HEPATITIS` varchar(255) NOT NULL,
  `HERNIA` varchar(255) NOT NULL,
  `HIPERTENSI` varchar(255) NOT NULL,
  `HEMORROID` varchar(255) NOT NULL,
  `DIABETES` varchar(255) NOT NULL,
  `TINGGI_BADAN` varchar(255) NOT NULL,
  `BERAT_BADAN` varchar(255) NOT NULL,
  `NADI` varchar(255) NOT NULL,
  `TEKANAN_DARAH` varchar(255) NOT NULL,
  `VISUS` varchar(255) NOT NULL,
  `BUTA_WARNA` varchar(255) NOT NULL,
  `JULING` varchar(255) NOT NULL,
  `KELAINAN_MATA_LAIN` varchar(255) NOT NULL,
  `TELINGA_LUAR` varchar(255) NOT NULL,
  `TELINGA_TENGAH` varchar(255) NOT NULL,
  `GIGI` varchar(255) NOT NULL,
  `PARU` varchar(255) NOT NULL,
  `JANTUNG` varchar(255) NOT NULL,
  `HATI` varchar(255) NOT NULL,
  `LIMPA` varchar(255) NOT NULL,
  `EKSTRIMITAS` varchar(255) NOT NULL,
  `KESEIMBANGAN` varchar(255) NOT NULL,
  `EXIM` varchar(255) NOT NULL,
  `DERMATITIS` varchar(255) NOT NULL,
  `SLUG` varchar(255) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `periksa`
--

INSERT INTO `periksa` (`ID_PERIKSA`, `ID-PASIEN`, `BATUK_DARAH`, `KENCING_BATU`, `HEPATITIS`, `HERNIA`, `HIPERTENSI`, `HEMORROID`, `DIABETES`, `TINGGI_BADAN`, `BERAT_BADAN`, `NADI`, `TEKANAN_DARAH`, `VISUS`, `BUTA_WARNA`, `JULING`, `KELAINAN_MATA_LAIN`, `TELINGA_LUAR`, `TELINGA_TENGAH`, `GIGI`, `PARU`, `JANTUNG`, `HATI`, `LIMPA`, `EKSTRIMITAS`, `KESEIMBANGAN`, `EXIM`, `DERMATITIS`, `SLUG`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 34, 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', '', '2021-06-24 21:27:37', '2021-06-24 21:27:37'),
(2, 35, 'asfasfasf', 'adfgasdg', 'asdg', 'd', 'k', 'i', 'ni', 'ni', 'as', 'kojno', 'no', 'no', 'n', 'kk', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'kk', '', '2021-07-28 00:59:43', '2021-10-22 02:40:42'),
(4, 38, 'sqq', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', '', '2021-10-22 02:41:06', '2021-10-22 02:41:19'),
(5, 41, 'q', 'q', 'q', 'q', 'q', 'q', 'qqq', 'qqq', 'qq', 'q', 'q', 'q', 'q', 'qq', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'qq', 'q', 'q', '', '2021-10-28 23:21:23', '2021-10-28 23:21:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `radiologi`
--

CREATE TABLE `radiologi` (
  `ID_RADIOLOGI` int(11) NOT NULL,
  `ID_PASIEN` int(11) NOT NULL,
  `ID_MASTERRAD` int(11) NOT NULL,
  `SLUG_RAD` varchar(100) NOT NULL,
  `HASIL_RAD` varchar(100) NOT NULL,
  `BIAYA_RAD` decimal(25,0) NOT NULL,
  `KESIMPULAN_RAD` varchar(255) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 'anandfirdausyah45@gmail.com', 'anand', NULL, 'default.svg', '$2y$10$HdwNFRGve4d7SKilqqBpqOE1w603jUNwFqA1nUd7EiNJd4u24dr6W', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-10 20:12:43', '2021-10-10 20:12:43', NULL),
(15, 'admin@admin.com', 'admin', NULL, 'default.svg', '$2y$10$umIRhB1bxuckNKS1NFtiVu4zDSfKU0Tw2fGw8U.Bqe7viYksxgL5a', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-11 23:45:53', '2021-10-11 23:45:53', NULL),
(16, 'radiologi@radiologi.com', 'radiologi', NULL, 'default.svg', '$2y$10$Q/Tqz6rLSCq/jPClhHMl2OrOdAxlsJS7L/hEfFDmQVIOMmM1/c.5.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-14 01:19:38', '2021-10-14 01:19:38', NULL),
(17, 'laboratorium@laboratorium.com', 'laboratorium', NULL, 'default.svg', '$2y$10$AzCOO5QEie98lj9hUTQJGOWB3rb5nSsdBnVS3EYB83y063t1aMHEy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-14 01:20:00', '2021-10-14 01:20:00', NULL),
(18, 'tuti@tuti.com', 'tuti', NULL, 'default.svg', '$2y$10$RoheljT5lDetAR5Uvfs5CeufWjWB/ubcDsdZaiVNmvI/oeJpvuNgG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-14 20:50:29', '2021-10-14 20:50:29', NULL),
(19, 'dokter@dokter.com', 'dokter', NULL, 'default.svg', '$2y$10$uMusTWkq3wgnWZfrQ1bR8Ou.IhWxH52OZ3Tkc4KEXe/HVBl/IU38i', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-14 22:10:25', '2021-10-14 22:10:25', NULL),
(20, 'dokter1@dokter.com', 'dokter1', NULL, 'default.svg', '$2y$10$iqBABHU2D2syhcBW3EKQzOfcD6vHPNA8pNw8PbLl1tZ8OUwoxJime', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-14 22:15:05', '2021-10-14 22:15:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `kesimpulan`
--
ALTER TABLE `kesimpulan`
  ADD PRIMARY KEY (`ID_KESIMPULAN`),
  ADD KEY `ID_PASIEN` (`ID_PASIEN`);

--
-- Indeks untuk tabel `laborat`
--
ALTER TABLE `laborat`
  ADD PRIMARY KEY (`ID_LABORAT`),
  ADD KEY `ID_PASIEN` (`ID_PASIEN`),
  ADD KEY `ID_MASTERLAB` (`ID_MASTERLAB`);

--
-- Indeks untuk tabel `master_lab`
--
ALTER TABLE `master_lab`
  ADD PRIMARY KEY (`ID_MASTERLAB`);

--
-- Indeks untuk tabel `master_rad`
--
ALTER TABLE `master_rad`
  ADD PRIMARY KEY (`ID_MASTERRAD`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`ID_PASIEN`);

--
-- Indeks untuk tabel `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`ID_PERIKSA`),
  ADD KEY `ID-PASIEN` (`ID-PASIEN`);

--
-- Indeks untuk tabel `radiologi`
--
ALTER TABLE `radiologi`
  ADD PRIMARY KEY (`ID_RADIOLOGI`),
  ADD KEY `ID_PASIEN` (`ID_PASIEN`),
  ADD KEY `ID_MASTERRAD` (`ID_MASTERRAD`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kesimpulan`
--
ALTER TABLE `kesimpulan`
  MODIFY `ID_KESIMPULAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `laborat`
--
ALTER TABLE `laborat`
  MODIFY `ID_LABORAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `master_lab`
--
ALTER TABLE `master_lab`
  MODIFY `ID_MASTERLAB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_rad`
--
ALTER TABLE `master_rad`
  MODIFY `ID_MASTERRAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `ID_PASIEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `periksa`
--
ALTER TABLE `periksa`
  MODIFY `ID_PERIKSA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `radiologi`
--
ALTER TABLE `radiologi`
  MODIFY `ID_RADIOLOGI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `laborat`
--
ALTER TABLE `laborat`
  ADD CONSTRAINT `laborat_ibfk_1` FOREIGN KEY (`ID_PASIEN`) REFERENCES `pasien` (`ID_PASIEN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `radiologi`
--
ALTER TABLE `radiologi`
  ADD CONSTRAINT `radiologi_ibfk_1` FOREIGN KEY (`ID_PASIEN`) REFERENCES `pasien` (`ID_PASIEN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
