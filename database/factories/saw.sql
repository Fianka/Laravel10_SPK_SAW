-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 09:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_10_041202_create_tb_alternatif_table', 1),
(6, '2024_07_10_041203_create_tb_kriteria_table', 1),
(7, '2024_07_10_041203_create_tb_nilai_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `id_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`id_alternatif`, `nama_alternatif`, `created_at`, `updated_at`) VALUES
('A01', 'Warung Makan Sederhana', NULL, '2024-07-10 04:43:41'),
('A02', 'Wijikopi', NULL, '2024-07-10 04:43:41'),
('A03', 'Bengkel Motor Hoki Jaya', NULL, '2024-07-10 04:43:41'),
('A04', 'Usaha Pengrajin Batik Bengle', '2024-07-10 04:41:16', '2024-07-10 04:41:16'),
('A05', 'Tahu Aci Jawara', '2024-07-10 04:41:16', '2024-07-10 04:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL,
  `atribut` varchar(16) NOT NULL,
  `bobot` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `nama_kriteria`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
('C01', 'Usia UMKM (Tahun)', 'Cost', 2.5, NULL, NULL),
('C02', 'Laba Usaha (x10000 Rp/Bln)', 'Benefit', 1.5, NULL, NULL),
('C03', 'Minat pasar terhadap produk atau layanan (1-5)', 'Benefit', 3, NULL, NULL),
('C04', 'Legalitas Usaha (Ada izin usaha=5, Belum ada izin usaha=2)', 'Benefit', 2.5, NULL, NULL),
('C05', 'Rencana Pengajuan Dana (x10000 Rp)', 'Cost', 0.5, '2024-07-10 04:46:47', '2024-07-10 04:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` bigint(20) UNSIGNED NOT NULL,
  `id_alternatif` varchar(16) NOT NULL,
  `id_kriteria` varchar(16) NOT NULL,
  `nilai` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `id_alternatif`, `id_kriteria`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'A01', 'C01', 10, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(2, 'A02', 'C01', 5, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(3, 'A03', 'C01', 9, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(4, 'A04', 'C01', 18, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(5, 'A05', 'C01', 3, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(6, 'A01', 'C02', 850, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(7, 'A02', 'C02', 500, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(8, 'A03', 'C02', 1500, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(9, 'A04', 'C02', 350, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(10, 'A05', 'C02', 450, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(11, 'A01', 'C03', 5, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(12, 'A02', 'C03', 4, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(13, 'A03', 'C03', 5, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(14, 'A04', 'C03', 3, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(15, 'A05', 'C03', 3, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(16, 'A01', 'C04', 5, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(17, 'A02', 'C04', 5, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(18, 'A03', 'C04', 5, '2024-07-10 06:18:33', '2024-07-10 06:18:33'),
(19, 'A04', 'C04', 5, '2024-07-10 06:18:34', '2024-07-10 06:18:34'),
(20, 'A05', 'C04', 2, '2024-07-10 06:18:34', '2024-07-10 06:18:34'),
(21, 'A01', 'C05', 700, '2024-07-10 06:18:34', '2024-07-10 06:18:34'),
(22, 'A02', 'C05', 2500, '2024-07-10 06:18:34', '2024-07-10 06:18:34'),
(23, 'A03', 'C05', 1500, '2024-07-10 06:18:34', '2024-07-10 06:18:34'),
(24, 'A04', 'C05', 1000, '2024-07-10 06:18:34', '2024-07-10 06:18:34'),
(25, 'A05', 'C05', 500, '2024-07-10 06:18:34', '2024-07-10 06:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
