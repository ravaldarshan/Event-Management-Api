-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2024 at 04:27 AM
-- Server version: 8.2.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_management_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
CREATE TABLE IF NOT EXISTS `attendees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendees_user_id_foreign` (`user_id`),
  KEY `attendees_event_id_foreign` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`id`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(2, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(3, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(4, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(5, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(6, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(7, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(8, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(9, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(10, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(11, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(12, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(13, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(14, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(15, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(16, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(17, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(18, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(19, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(20, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(21, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(22, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(23, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(24, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(25, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(26, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(27, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(28, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(29, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(30, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(31, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(32, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(33, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(34, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(35, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(36, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(37, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(38, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(39, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(40, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(41, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(42, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(43, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(44, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(45, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(46, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(47, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(48, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(49, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(50, 1, 1, '2024-05-28 22:57:20', '2024-05-28 22:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `description`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fugit quia quia velit.', 'Est sed qui accusantium animi ut ut sit. Deleniti est sunt perferendis sit quo. Minima vero porro impedit quis et error et.', '2024-06-02 18:26:03', '2024-06-05 15:55:52', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(2, 1, 'Nostrum eveniet qui necessitatibus autem inventore.', 'Officia eaque in ducimus ut numquam odio sit. Qui vel corrupti architecto sed. Vero voluptates sapiente aut dolore et repellat ut.', '2024-06-04 05:11:30', '2024-06-05 17:17:06', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(3, 1, 'Provident aliquam sunt facere autem veniam dolores cumque.', 'Fugit inventore et voluptas sunt. Soluta rerum eaque fugit sit saepe. Nobis aut ut sit consectetur reiciendis autem nostrum sit. Voluptas explicabo reiciendis molestiae non culpa ipsam quis. In ea maxime numquam autem quia amet.', '2024-06-01 03:33:29', '2024-06-11 02:05:40', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(4, 1, 'Sit facere quas autem.', 'Quibusdam inventore ut veritatis facilis dolores est. Sit placeat ducimus rem est dolor distinctio hic. Quaerat omnis eligendi dolor. Est sapiente eos odit.', '2024-06-02 22:34:17', '2024-06-07 20:28:09', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(5, 1, 'Tempora saepe accusamus placeat.', 'Debitis doloribus consequatur quibusdam. Hic quas fuga quae modi qui. Mollitia consequatur culpa in qui. Dicta et ducimus consequatur ea. Omnis soluta quo sequi iure pariatur nemo et.', '2024-06-04 08:05:06', '2024-06-11 04:38:09', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(6, 1, 'Placeat exercitationem possimus ex.', 'Dolorem laudantium voluptas nam quasi atque. Dolores cumque nihil deleniti commodi. Cum dolorum voluptatem sed excepturi non vel. Dignissimos et nam perspiciatis sequi et ea temporibus.', '2024-05-29 10:15:13', '2024-06-09 02:21:49', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(7, 1, 'Nihil eaque dignissimos ipsum minima iusto.', 'Est velit temporibus facilis tempore quod id consequatur. Veritatis nemo iusto sunt alias. Iure error excepturi ut occaecati enim sapiente qui. Soluta aliquam earum id sit.', '2024-06-03 09:02:10', '2024-06-12 02:23:13', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(8, 1, 'Quos incidunt illum nulla veritatis odit id maxime molestias.', 'Praesentium dicta dolorem fugiat expedita sit. Provident maxime exercitationem dolores ea quod omnis. Et eos tenetur et. Rerum explicabo sed neque recusandae. Deserunt voluptas et unde fugiat modi ut.', '2024-06-01 13:32:59', '2024-06-09 16:09:14', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(9, 1, 'Molestias harum qui cumque ratione.', 'Vitae inventore voluptas quam iste aut. Fugit ipsam earum sint. Dolorum eos mollitia qui adipisci repellat aut.', '2024-06-03 17:47:45', '2024-06-06 21:24:20', '2024-05-28 22:57:20', '2024-05-28 22:57:20'),
(10, 1, 'Dolorem iusto et enim velit et laudantium praesentium.', 'Exercitationem commodi est explicabo aperiam. Sit omnis quia maiores dolores quia recusandae. Est vel enim et. Odio et sapiente ut ut.', '2024-06-03 04:52:53', '2024-06-11 14:00:25', '2024-05-28 22:57:20', '2024-05-28 22:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_27_152839_create_personal_access_tokens_table', 1),
(5, '2024_05_27_153423_create_events_table', 1),
(6, '2024_05_27_153445_create_attendees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
