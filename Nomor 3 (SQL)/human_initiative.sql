-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 12:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `human_initiative`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_phone`, `branch_email`, `created_at`, `updated_at`) VALUES
(1, 'Human Initiative Jakarta', 'Jl. Kramat Raya No. 164, RT.1/RW.1, Kramat, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10450', '021-3928899', 'HumanInitiativeJakarta@gmail.com', NULL, NULL),
(2, 'Human Initiative Bandung', 'Jl. Cihampelas No. 160, Cipaganti, Kec. Coblong, Kota Bandung, Jawa Barat 40131', '022-2032654', 'HumanInitiativeBandung@gmail.com', NULL, NULL),
(3, 'Human Initiative Surabaya', 'Jl. Raya Darmo Permai III No. 1, Pradahkalikendal, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60226', '031-5678899', 'HumanInitiativeSurabaya@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` bigint(20) UNSIGNED NOT NULL,
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `donation_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `donor_id`, `branch_id`, `donation_date`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-09-11', 1000000, NULL, NULL),
(2, 1, 1, '2021-09-12', 1000000, NULL, NULL),
(3, 1, 1, '2021-09-13', 1000000, NULL, NULL),
(4, 2, 2, '2021-09-11', 2000000, NULL, NULL),
(5, 3, 3, '2021-09-11', 3000000, NULL, NULL),
(6, 1, 1, '2021-10-11', 1000000, NULL, NULL),
(7, 2, 2, '2021-11-11', 2000000, NULL, NULL),
(8, 3, 3, '2021-12-11', 3000000, NULL, NULL),
(9, 3, 3, '2021-12-21', 3000000, NULL, NULL),
(10, 3, 1, '2021-01-21', 3000000, NULL, NULL),
(11, 3, 2, '2021-02-21', 3000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `donor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `donor_name`, `donor_address`, `donor_phone`, `donor_email`, `created_at`, `updated_at`) VALUES
(1, 'Rizky Ramadhan', 'Jl. Kramat Raya No. 164, RT.1/RW.1, Kramat, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10450', '081234567890', 'RizkyRamadhan@gmail.com', NULL, NULL),
(2, 'Nuni Nurjanah', 'Jl. Cihampelas No. 160, Cipaganti, Kec. Coblong, Kota Bandung, Jawa Barat 40131', '081234567890', 'Nuni@gmail.com', NULL, NULL),
(3, 'Roby Wijaya', 'Jl. Raya Darmo Permai III No. 1, Pradahkalikendal, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60226', '081234567890', 'RobyWijaya@gmail.com', NULL, NULL);

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
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2023_09_11_094440_donation', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `donation_donor_id_foreign` (`donor_id`),
  ADD KEY `donation_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `donation_donor_id_foreign` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
