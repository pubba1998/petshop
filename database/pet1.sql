-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table petstore.animals
CREATE TABLE IF NOT EXISTS `animals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `animals_id` int(11) NOT NULL,
  `animals_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.animals: ~4 rows (approximately)
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
REPLACE INTO `animals` (`id`, `animals_id`, `animals_name`, `created_at`, `updated_at`) VALUES
	(74, 1, 'Cat', '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(75, 2, 'Dog', '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(76, 3, 'Bird', '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(77, 4, 'Fish', '2022-09-20 05:20:11', '2022-09-20 05:20:11');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;

-- Dumping structure for table petstore.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.customers: ~6 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `customers_id`, `customers_name`, `customers_email`, `customers_phone`, `created_at`, `updated_at`) VALUES
	(82, 1, 'Pubudu', 'coolpubba@gmail.com', 2041755, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(83, 2, 'Dasun', 'dasun@gmail.com', 22747442, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(84, 3, 'Shara', 'shara@icloud.com', 1231321, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(85, 4, 'Ricky', 'riccy@gmail.com', 3214654, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(86, 5, 'Sahan', 'sahan@facebook.com', 64204712, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(87, 6, 'Kanthi', 'kanthi@ms.com', 3214654, '2022-09-20 05:20:11', '2022-09-20 05:20:11');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table petstore.deliveries
CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.deliveries: ~1 rows (approximately)
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
REPLACE INTO `deliveries` (`id`, `delivery_id`, `order_id`, `delivery_address`, `created_at`, `updated_at`) VALUES
	(10, 1, 1, '23 ggg street', '2022-09-20 05:20:11', '2022-09-20 05:20:11');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;

-- Dumping structure for table petstore.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table petstore.institutions
CREATE TABLE IF NOT EXISTS `institutions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.institutions: ~0 rows (approximately)
/*!40000 ALTER TABLE `institutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutions` ENABLE KEYS */;

-- Dumping structure for table petstore.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Items_id` int(11) NOT NULL,
  `Items_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Items_quantity` int(11) NOT NULL,
  `Items_price` int(11) NOT NULL,
  `animals_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.items: ~16 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
REPLACE INTO `items` (`id`, `Items_id`, `Items_name`, `Items_quantity`, `Items_price`, `animals_id`, `created_at`, `updated_at`) VALUES
	(145, 1, 'Whiskas', 1, 30, 1, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(146, 2, 'Drools', 1, 20, 1, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(147, 3, 'Meow Mix', 1, 20, 1, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(148, 4, 'One', 1, 30, 1, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(149, 5, 'Bakers', 1, 30, 2, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(150, 6, 'Adult Dog', 1, 20, 2, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(151, 7, 'Wilderness', 1, 20, 2, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(152, 8, 'Baby Blue', 1, 25, 2, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(153, 9, 'Wild Bird', 1, 25, 3, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(154, 10, 'Bonanza', 1, 15, 3, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(155, 11, 'Peckish', 1, 15, 3, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(156, 12, 'Mazuri', 1, 15, 3, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(157, 13, 'Chi Fish Food', 1, 5, 4, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(158, 14, 'Diomands', 1, 20, 4, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(159, 13, 'Tera Bits', 1, 20, 4, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(160, 13, 'Goald Fish', 1, 15, 4, '2022-09-20 05:20:11', '2022-09-20 05:20:11');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table petstore.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_09_11_104035_create_institutions_table', 1),
	(6, '2022_09_11_104314_create_animals_table', 1),
	(7, '2022_09_11_104423_create_customers_table', 1),
	(8, '2022_09_11_104451_create_deliveries_table', 1),
	(9, '2022_09_11_104506_create_items_table', 1),
	(10, '2022_09_11_104526_create_orders_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table petstore.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.orders: ~4 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
REPLACE INTO `orders` (`id`, `order_id`, `customers_id`, `items_id`, `created_at`, `updated_at`) VALUES
	(25, 1, 4, 6, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(26, 2, 2, 2, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(27, 1, 2, 5, '2022-09-20 05:20:11', '2022-09-20 05:20:11'),
	(28, 1, 3, 3, '2022-09-20 05:20:11', '2022-09-20 05:20:11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table petstore.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table petstore.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table petstore.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table petstore.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
