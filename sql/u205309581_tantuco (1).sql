-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2025 at 05:23 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u205309581_tantuco`
--

-- --------------------------------------------------------

--
-- Table structure for table `b2b_address`
--

CREATE TABLE `b2b_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `full_address` text DEFAULT NULL,
  `address_notes` text DEFAULT NULL,
  `delivery_address_lat` decimal(10,7) DEFAULT NULL,
  `delivery_address_lng` decimal(10,7) DEFAULT NULL,
  `status` enum('inactive','active') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b2b_address`
--

INSERT INTO `b2b_address` (`id`, `user_id`, `street`, `barangay`, `city`, `province`, `zip_code`, `full_address`, `address_notes`, `delivery_address_lat`, `delivery_address_lng`, `status`, `created_at`, `updated_at`) VALUES
(8, 40, 'Maharlika Highway', 'Poblacion 4', 'Sariaya', 'Quezon', '4322', 'Maharlika Highway, Poblacion 4, Sariaya, Quezon, 4322', 'Inner Power HARDWARE', 13.9644720, 121.5292397, 'active', '2025-11-07 17:38:15', '2025-11-07 17:38:15'),
(9, 41, 'Valderas St', 'Poblacion 2', 'Sariaya', 'Quezon', '4322', 'Valderas St, Poblacion 2, Sariaya, Quezon, 4322', 'PnL Hardware and Construction Supply', 13.9644918, 121.5268964, 'active', '2025-11-07 18:32:37', '2025-11-07 18:32:37'),
(10, 39, 'Mangilag Sur', 'Maharlika', 'Candelaria', 'Quezon', '4323', 'Mangilag Sur, Maharlika, Candelaria, Quezon, 4323', 'Asian Valley Hardware', 13.9310451, 121.4522161, 'active', '2025-11-07 19:22:37', '2025-11-07 19:22:37'),
(11, 42, 'purok 7', 'concepcion Palasan', 'Sariaya', 'Quezon', '4322', 'purok 7, concepcion Palasan, Sariaya, Quezon, 4322', 'Perez-Magboo Hardware', 13.9313782, 121.4697335, 'active', '2025-11-07 21:15:59', '2025-11-07 21:15:59'),
(12, 43, 'purok 7', 'Flores Concepcion', 'Sariaya', 'Quezon', '4322', 'purok 7, Flores Concepcion, Sariaya, Quezon, 4322', 'John & Ken Trading', 13.9288950, 121.4635928, 'active', '2025-11-07 21:39:58', '2025-11-07 21:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `b2b_details`
--

CREATE TABLE `b2b_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `certificate_registration` varchar(255) NOT NULL,
  `business_permit` varchar(255) NOT NULL,
  `business_name` varchar(100) DEFAULT NULL,
  `tin_number` varchar(20) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `status` enum('approved','rejected') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b2b_details`
--

INSERT INTO `b2b_details` (`id`, `user_id`, `certificate_registration`, `business_permit`, `business_name`, `tin_number`, `contact_number`, `contact_person`, `contact_person_number`, `status`, `created_at`, `updated_at`) VALUES
(10, 39, 'assets/upload/requirements/certificate_39_1762017408.pdf', 'assets/upload/requirements/permit_39_1762017408.pdf', 'Asian Valley Trading INC.', '010-158-742-000', '09123456789', 'Fu Shi Yu', '0912 345 6789', 'approved', '2025-11-01 17:16:48', '2025-11-07 19:10:41'),
(11, 40, 'assets/upload/requirements/certificate_40_1762018577.pdf', 'assets/upload/requirements/permit_40_1762018577.pdf', 'Inner Power Hardware & General Merchandise', '170-385-798-000', '09123456789', 'Wilfredo Remojo Manongsong', '0912 345 6789', 'approved', '2025-11-01 17:36:17', '2025-11-04 17:29:03'),
(12, 41, 'assets/upload/requirements/certificate_41_1762018962.pdf', 'assets/upload/requirements/permit_41_1762018962.pdf', 'PNL Hardware and Construction Supply', '111-528-078-000', '09123456789', 'Melchor Remojo Manongsong', '0912 345 6789', 'approved', '2025-11-01 17:42:42', '2025-11-07 18:28:11'),
(13, 42, 'assets/upload/requirements/certificate_42_1762520930.pdf', 'assets/upload/requirements/permit_42_1762520930.pdf', 'Perez-Magboo Hardware', '987-654-321-000', '09547822071', 'Perez Magboo', '0954 782 2071', 'approved', '2025-11-07 21:06:50', '2025-11-07 21:08:54'),
(14, 43, 'assets/upload/requirements/certificate_43_1762522460.pdf', 'assets/upload/requirements/permit_43_1762522460.pdf', 'John & Ken Hardware', '412-344-431-000', '09615839822', 'John Ken', '0961 583 9822', 'approved', '2025-11-07 21:34:20', '2025-11-07 21:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `account_number` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `image`, `account_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Gcash', 'assets/upload/bank/1762509781_690dc3d5616c3.jpg', '09178882096', '2025-11-07 18:03:01', '2025-11-07 18:03:01', NULL),
(4, 'BDO', 'assets/upload/bank/1762515311_690dd96f2e403.png', '008810000078', '2025-11-07 18:05:20', '2025-11-07 19:36:11', '2025-11-07 19:36:11'),
(5, 'BDO', 'assets/upload/bank/1762515466_690dda0a003bf.png', '008810000078', '2025-11-07 19:36:23', '2025-11-07 19:37:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cement & Concrete', NULL, 'Includes cement, blocks, and concrete materials.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL),
(2, 'Steel & Metal Works', NULL, 'Steel rebars and other structural metals.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL),
(3, 'Wood & Boards', NULL, 'Plywood, lumber, and board materials.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL),
(4, 'Roofing Materials', NULL, 'Corrugated sheets and roofing accessories.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL),
(5, 'Plumbing', NULL, 'Pipes and fittings for water systems.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL),
(6, 'Electrical', NULL, 'Electrical wires, tapes, and tools.', 1, '2025-07-06 02:40:29', '2025-11-07 21:10:06', '2025-11-07 21:10:06'),
(7, 'Paint & Finishing', NULL, 'Paints, coatings, and finishing products.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL),
(8, 'Hardware & Fixtures', NULL, 'Handles, knobs, locks, and similar items.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL),
(9, 'Tools', NULL, 'Manual tools used in construction or repair.', 1, '2025-07-06 02:40:29', '2025-07-06 02:40:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_phone` text DEFAULT NULL,
  `company_tel` varchar(30) DEFAULT NULL,
  `company_telefax` varchar(30) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_vat_reg` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_settings`
--

INSERT INTO `company_settings` (`id`, `company_logo`, `company_email`, `company_phone`, `company_tel`, `company_telefax`, `company_address`, `company_vat_reg`, `created_at`, `updated_at`) VALUES
(1, 'assets/upload/1759400911_Group 1000004820.png', 'tantucoconstruction@gmail.com', '(042)525-8888', '(042) 525-8888 / 717-02551', '(042) 525-8188', 'Barangay Balubal, Sariaya, 4322, Quezon Province', '005-345-069-000', NULL, '2025-07-09 11:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `credit_partial_payments`
--

CREATE TABLE `credit_partial_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `amount_to_pay` decimal(10,2) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `status` enum('pending','unpaid','paid','overdue','reject') NOT NULL DEFAULT 'pending',
  `proof_payment` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `approved_at` date DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_partial_payments`
--

INSERT INTO `credit_partial_payments` (`id`, `purchase_request_id`, `bank_id`, `paid_amount`, `due_date`, `amount_to_pay`, `paid_date`, `status`, `proof_payment`, `reference_number`, `approved_at`, `approved_by`, `notes`, `created_at`, `updated_at`) VALUES
(21, 41, 3, 20706.80, '2025-11-14', 20706.80, '2025-11-07', 'paid', 'assets/upload/proofpayment/payment_1762519203.png', '6871 932 505810', '2025-11-07', 27, NULL, '2025-11-07 20:29:06', '2025-11-07 20:40:22'),
(22, 41, NULL, 0.00, '2025-11-21', 20706.80, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, '2025-11-07 20:29:06', '2025-11-07 20:29:06'),
(23, 41, NULL, 0.00, '2025-11-28', 20706.80, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, '2025-11-07 20:29:06', '2025-11-07 20:29:06'),
(24, 41, NULL, 0.00, '2025-12-05', 20706.80, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, '2025-11-07 20:29:06', '2025-11-07 20:29:06'),
(25, 42, 3, 25345.00, '2025-11-14', 25345.00, '2025-11-07', 'paid', 'assets/upload/proofpayment/payment_1762520377.png', '4034 421 135122', '2025-11-07', 27, NULL, '2025-11-07 20:54:13', '2025-11-07 20:59:59'),
(26, 42, NULL, 0.00, '2025-11-21', 25345.00, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, '2025-11-07 20:54:13', '2025-11-07 20:54:13'),
(27, 42, NULL, 0.00, '2025-11-28', 25345.00, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, '2025-11-07 20:54:13', '2025-11-07 20:54:13'),
(28, 42, NULL, 0.00, '2025-12-05', 25345.00, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, '2025-11-07 20:54:13', '2025-11-07 20:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `credit_payments`
--

CREATE TABLE `credit_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_date` date NOT NULL,
  `paid_date` date DEFAULT NULL,
  `status` enum('pending','unpaid','paid','overdue','reject') NOT NULL DEFAULT 'pending',
  `proof_payment` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `approved_at` date DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_payments`
--

INSERT INTO `credit_payments` (`id`, `purchase_request_id`, `bank_id`, `paid_amount`, `due_date`, `paid_date`, `status`, `proof_payment`, `reference_number`, `approved_at`, `approved_by`, `notes`, `created_at`, `updated_at`) VALUES
(7, 43, 3, 85178.40, '2025-12-07', '2025-11-07', 'paid', 'assets/upload/proofpayment/payment_1762519963.png', '4034 421 141955', '2025-11-07', 27, 'fake', '2025-11-07 20:45:54', '2025-11-07 20:53:03'),
(8, 44, 3, 39647.20, '2025-12-07', '2025-11-07', 'paid', 'assets/upload/proofpayment/payment_1762522102.png', '4034 431 155131', '2025-11-07', 27, NULL, '2025-11-07 21:17:40', '2025-11-07 21:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_rider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tracking_number` varchar(255) DEFAULT NULL,
  `status` enum('pending','assigned','on_the_way','delivered','cancelled','returned','refunded') NOT NULL DEFAULT 'pending',
  `delivery_date` timestamp NULL DEFAULT NULL,
  `proof_delivery` varchar(255) DEFAULT NULL,
  `delivery_remarks` text DEFAULT NULL,
  `sales_invoice_flg` int(11) NOT NULL DEFAULT 0,
  `delivery_latitude` decimal(10,7) NOT NULL DEFAULT 13.9650150,
  `delivery_longitude` decimal(10,7) NOT NULL DEFAULT 121.5306920,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `order_id`, `delivery_rider_id`, `quantity`, `tracking_number`, `status`, `delivery_date`, `proof_delivery`, `delivery_remarks`, `sales_invoice_flg`, `delivery_latitude`, `delivery_longitude`, `created_at`, `updated_at`) VALUES
(36, 36, 36, 200, 'A407920D-2A61-426D-A333-E0890CA71C04', 'delivered', '2025-11-07 20:32:09', 'assets/upload/proof_690de6c99338f.png', NULL, 1, 13.9650150, 121.5306920, '2025-11-07 20:29:37', '2025-11-07 20:32:32'),
(37, 37, 37, 300, '639E69AD-849C-4ADC-8E60-7CB8E3DF837F', 'delivered', '2025-11-07 20:47:43', 'assets/upload/proof_690dea6f3942a.png', NULL, 1, 13.9650150, 121.5306920, '2025-11-07 20:46:07', '2025-11-07 20:48:12'),
(38, 38, 38, 350, 'AAF8EDF1-0FDA-4E21-9A50-E648311E1649', 'delivered', '2025-11-07 20:55:06', 'assets/upload/proof_690dec2ae2dbb.png', NULL, 1, 13.9650150, 121.5306920, '2025-11-07 20:54:15', '2025-11-07 20:55:18'),
(39, 39, 38, 190, 'C428409C-B65A-4474-9742-DC8473F85195', 'delivered', '2025-11-07 21:24:20', 'assets/upload/proof_690df3048948e.png', NULL, 1, 13.9650150, 121.5306920, '2025-11-07 21:17:53', '2025-11-07 21:24:29'),
(40, 40, 36, 70, 'D1B57E7C-8C46-4EB2-8B03-06C5629794D0', 'delivered', '2025-11-07 21:47:44', 'assets/upload/proof_690df880e4aeb.png', NULL, 1, 13.9650150, 121.5306920, '2025-11-07 21:40:44', '2025-11-07 21:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `logged_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_ratings`
--

CREATE TABLE `delivery_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_ratings`
--

INSERT INTO `delivery_ratings` (`id`, `delivery_id`, `rating`, `feedback`, `created_at`, `updated_at`) VALUES
(3, 40, 5, 'Mabilis at maingat si Kuya! Walang problema sa pag-deliver, kumpleto at maayos ang dating ng mga materyales. Salamat!', '2025-11-07 21:51:53', '2025-11-07 21:51:53');

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
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out') NOT NULL,
  `quantity` int(11) NOT NULL,
  `reason` enum('restock','sold','returned','damaged','stock update','other') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `type`, `quantity`, `reason`, `created_at`, `updated_at`) VALUES
(16, 21, 'in', 1000, 'restock', '2025-11-07 16:59:03', '2025-11-07 16:59:03'),
(17, 21, 'in', 1000, 'restock', '2025-11-07 16:59:13', '2025-11-07 16:59:13'),
(18, 22, 'in', 1000, 'restock', '2025-11-07 16:59:43', '2025-11-07 16:59:43'),
(19, 22, 'in', 500, 'restock', '2025-11-07 16:59:52', '2025-11-07 16:59:52'),
(20, 23, 'in', 200, 'restock', '2025-11-07 17:00:18', '2025-11-07 17:00:18'),
(21, 23, 'in', 800, 'restock', '2025-11-07 17:00:29', '2025-11-07 17:00:29'),
(22, 16, 'in', 2000, 'restock', '2025-11-07 17:01:21', '2025-11-07 17:01:21'),
(23, 16, 'in', 1000, 'restock', '2025-11-07 17:01:29', '2025-11-07 17:01:29'),
(24, 16, 'in', 1000, 'restock', '2025-11-07 17:01:37', '2025-11-07 17:01:37'),
(25, 24, 'in', 500, 'restock', '2025-11-07 17:01:58', '2025-11-07 17:01:58'),
(26, 24, 'in', 1000, 'restock', '2025-11-07 17:02:08', '2025-11-07 17:02:08'),
(27, 25, 'in', 1000, 'restock', '2025-11-07 17:02:26', '2025-11-07 17:02:26'),
(28, 25, 'in', 500, 'restock', '2025-11-07 17:02:37', '2025-11-07 17:02:37'),
(29, 26, 'in', 1000, 'restock', '2025-11-07 17:02:51', '2025-11-07 17:02:51'),
(30, 26, 'in', 1000, 'restock', '2025-11-07 17:02:59', '2025-11-07 17:02:59'),
(31, 17, 'in', 1000, 'restock', '2025-11-07 17:03:24', '2025-11-07 17:03:24'),
(32, 17, 'in', 1000, 'restock', '2025-11-07 17:03:32', '2025-11-07 17:03:32'),
(33, 17, 'in', 500, 'restock', '2025-11-07 17:03:46', '2025-11-07 17:03:46'),
(34, 17, 'in', 250, 'restock', '2025-11-07 17:03:57', '2025-11-07 17:03:57'),
(35, 17, 'in', 250, 'restock', '2025-11-07 17:04:05', '2025-11-07 17:04:05'),
(36, 19, 'in', 1000, 'restock', '2025-11-07 17:04:42', '2025-11-07 17:04:42'),
(37, 19, 'in', 2000, 'restock', '2025-11-07 17:05:04', '2025-11-07 17:05:04'),
(38, 19, 'in', 2000, 'restock', '2025-11-07 17:05:13', '2025-11-07 17:05:13'),
(39, 20, 'in', 1000, 'restock', '2025-11-07 17:05:27', '2025-11-07 17:05:27'),
(41, 27, 'in', 500, 'restock', '2025-11-07 17:06:12', '2025-11-07 17:06:12'),
(42, 27, 'in', 500, 'restock', '2025-11-07 17:06:22', '2025-11-07 17:06:22'),
(43, 27, 'in', 500, 'restock', '2025-11-07 17:06:33', '2025-11-07 17:06:33'),
(44, 27, 'in', 500, 'restock', '2025-11-07 17:06:46', '2025-11-07 17:06:46'),
(45, 28, 'in', 350, 'restock', '2025-11-07 17:07:17', '2025-11-07 17:07:17'),
(46, 28, 'in', 350, 'restock', '2025-11-07 17:07:25', '2025-11-07 17:07:25'),
(47, 29, 'in', 450, 'restock', '2025-11-07 17:07:38', '2025-11-07 17:07:38'),
(48, 29, 'in', 450, 'restock', '2025-11-07 17:07:45', '2025-11-07 17:07:45'),
(49, 30, 'in', 2000, 'restock', '2025-11-07 17:08:11', '2025-11-07 17:08:11'),
(50, 31, 'in', 1000, 'restock', '2025-11-07 17:08:23', '2025-11-07 17:08:23'),
(51, 31, 'in', 800, 'restock', '2025-11-07 17:08:31', '2025-11-07 17:08:31'),
(52, 32, 'in', 500, 'restock', '2025-11-07 17:09:00', '2025-11-07 17:09:00'),
(53, 32, 'in', 1000, 'restock', '2025-11-07 17:09:11', '2025-11-07 17:09:11'),
(54, 34, 'in', 1200, 'restock', '2025-11-07 17:09:25', '2025-11-07 17:09:25'),
(55, 35, 'in', 1000, 'restock', '2025-11-07 17:09:39', '2025-11-07 17:09:39'),
(56, 33, 'in', 600, 'restock', '2025-11-07 17:10:11', '2025-11-07 17:10:11'),
(57, 33, 'in', 600, 'restock', '2025-11-07 17:10:25', '2025-11-07 17:10:25'),
(58, 37, 'in', 100, 'restock', '2025-11-07 17:11:19', '2025-11-07 17:11:19'),
(59, 37, 'in', 100, 'restock', '2025-11-07 17:12:16', '2025-11-07 17:12:16'),
(60, 37, 'in', 50, 'restock', '2025-11-07 17:12:33', '2025-11-07 17:12:33'),
(61, 36, 'in', 400, 'restock', '2025-11-07 17:13:33', '2025-11-07 17:13:33'),
(62, 36, 'in', 400, 'restock', '2025-11-07 17:13:42', '2025-11-07 17:13:42'),
(63, 41, 'in', 100, 'restock', '2025-11-07 17:14:00', '2025-11-07 17:14:00'),
(64, 41, 'in', 150, 'restock', '2025-11-07 17:14:13', '2025-11-07 17:14:13'),
(65, 18, 'in', 600, 'restock', '2025-11-07 17:14:40', '2025-11-07 17:14:40'),
(66, 40, 'in', 200, 'restock', '2025-11-07 17:15:08', '2025-11-07 17:15:08'),
(67, 44, 'in', 600, 'restock', '2025-11-07 17:16:05', '2025-11-07 17:16:05'),
(68, 44, 'in', 400, 'restock', '2025-11-07 17:16:13', '2025-11-07 17:16:13'),
(69, 43, 'in', 300, 'restock', '2025-11-07 17:16:33', '2025-11-07 17:16:33'),
(70, 38, 'in', 1000, 'restock', '2025-11-07 17:17:22', '2025-11-07 17:17:22'),
(71, 38, 'in', 500, 'restock', '2025-11-07 17:17:33', '2025-11-07 17:17:33'),
(72, 39, 'in', 500, 'restock', '2025-11-07 17:17:57', '2025-11-07 17:17:57'),
(73, 19, 'out', 100, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(74, 20, 'out', 50, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(75, 26, 'out', 20, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(76, 25, 'out', 10, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(77, 24, 'out', 20, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(78, 30, 'out', 10, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(79, 29, 'out', 40, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(80, 34, 'out', 50, '', '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(81, 44, 'out', 50, '', '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(82, 38, 'out', 20, '', '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(83, 17, 'out', 100, '', '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(84, 19, 'out', 30, '', '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(85, 16, 'out', 50, '', '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(86, 17, 'out', 200, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(87, 20, 'out', 100, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(88, 16, 'out', 100, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(89, 25, 'out', 50, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(90, 24, 'out', 50, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(91, 31, 'out', 50, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(92, 30, 'out', 20, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(93, 26, 'out', 30, '', '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(94, 16, 'out', 100, '', '2025-11-07 20:16:57', '2025-11-07 20:16:57'),
(95, 16, 'out', 50, '', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(96, 19, 'out', 20, '', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(97, 20, 'out', 20, '', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(98, 24, 'out', 50, '', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(99, 25, 'out', 40, '', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(100, 28, 'out', 40, '', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(101, 16, 'out', 50, '', '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(102, 19, 'out', 30, '', '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(103, 20, 'out', 20, '', '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(104, 26, 'out', 20, '', '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(105, 25, 'out', 10, '', '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(106, 24, 'out', 10, '', '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(107, 28, 'out', 60, '', '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(108, 20, 'out', 100, '', '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(109, 19, 'out', 100, '', '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(110, 24, 'out', 50, '', '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(111, 26, 'out', 50, '', '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(112, 25, 'out', 50, '', '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(113, 17, 'out', 250, '', '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(114, 29, 'out', 10, '', '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(115, 32, 'out', 20, '', '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(116, 34, 'out', 20, '', '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(117, 18, 'out', 100, '', '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(118, 21, 'out', 10, '', '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(119, 22, 'out', 10, '', '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(120, 17, 'out', 50, '', '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(121, 27, 'out', 20, '', '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(122, 16, 'out', 20, '', '2025-11-07 21:40:03', '2025-11-07 21:40:03'),
(123, 19, 'out', 20, '', '2025-11-07 21:40:03', '2025-11-07 21:40:03'),
(124, 39, 'out', 20, '', '2025-11-07 21:40:03', '2025-11-07 21:40:03'),
(125, 41, 'out', 10, '', '2025-11-07 21:40:03', '2025-11-07 21:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `manual_email_order`
--

CREATE TABLE `manual_email_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_type` varchar(20) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_phone_number` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `purchase_request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`purchase_request`)),
  `remarks` text DEFAULT NULL,
  `delivery_fee` int(11) DEFAULT 0,
  `status` enum('pending','waiting','approve','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `text` text DEFAULT NULL,
  `is_file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_06_225508_create_company_settings_table', 1),
(6, '2024_09_01_075226_create_b2b_details_table', 1),
(7, '2024_10_03_113319_create_terms_conditions_table', 1),
(8, '2025_06_21_135400_create_categories_table', 1),
(9, '2025_06_21_135453_create_products_table', 1),
(10, '2025_06_21_140752_create_product_images_table', 1),
(11, '2025_06_21_140757_create_inventories_table', 1),
(12, '2025_06_21_233529_add_expiry_date_to_products_table', 1),
(13, '2025_06_22_004215_create_b2b_address_table', 1),
(14, '2025_06_22_004301_create_orders_table', 1),
(15, '2025_06_22_004327_create_order_items_table', 1),
(16, '2025_06_22_004359_create_deliveries_table', 1),
(17, '2025_07_01_014724_create_banks_table', 1),
(18, '2025_07_01_014725_create_purchase_requests_table', 1),
(19, '2025_07_01_014835_create_purchase_request_items_table', 1),
(20, '2025_07_05_190918_create_delivery_histories_table', 1),
(21, '2025_07_06_170246_create_user_logs_table', 1),
(22, '2025_07_06_231655_create_messages_table', 1),
(23, '2025_07_08_073237_create_notifications_table', 1),
(28, '2025_07_11_024508_create_delivery_ratings_table', 3),
(31, '2025_07_12_141102_create_credit_payments_table', 4),
(32, '2025_08_08_212910_create_paid_payments_table', 4),
(33, '2025_08_08_212934_credit_partial_payments_table', 4),
(34, '2025_08_10_081210_create_manual_email_order_table', 5),
(35, '2025_08_23_194117_create_product_ratings_table', 6),
(36, '2025_07_10_203040_create_purchase_request_returns', 7),
(37, '2025_07_10_203153_create_purchase_request_refunds', 8),
(38, '2025_10_18_162115_create_stock_batches_table', 9),
(39, '2025_10_19_024148_create_pr_reserve_stocks_table', 10),
(40, '2025_10_19_035438_create_stock_movements_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Recipient user',
  `type` varchar(255) NOT NULL COMMENT 'purchase_request, delivery, etc',
  `message` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:17', '2025-11-07 17:30:17'),
(2, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:17', '2025-11-07 17:30:17'),
(3, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:17', '2025-11-07 17:30:17'),
(4, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:17', '2025-11-07 17:30:17'),
(5, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:17', '2025-11-07 17:30:17'),
(6, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:25', '2025-11-07 17:30:25'),
(7, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:25', '2025-11-07 17:30:25'),
(8, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:25', '2025-11-07 17:30:25'),
(9, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:25', '2025-11-07 17:30:25'),
(10, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:25', '2025-11-07 17:30:25'),
(11, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:40', '2025-11-07 17:30:40'),
(12, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:40', '2025-11-07 17:30:40'),
(13, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:40', '2025-11-07 17:30:40'),
(14, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:40', '2025-11-07 17:30:40'),
(15, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:30:40', '2025-11-07 17:30:40'),
(16, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:31:02', '2025-11-07 17:31:02'),
(17, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:31:02', '2025-11-07 17:31:02'),
(18, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:31:02', '2025-11-07 17:31:02'),
(19, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:31:02', '2025-11-07 17:31:02'),
(20, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:31:02', '2025-11-07 17:31:02'),
(21, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:28', '2025-11-07 17:32:28'),
(22, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:28', '2025-11-07 17:32:28'),
(23, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:28', '2025-11-07 17:32:28'),
(24, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:28', '2025-11-07 17:32:28'),
(25, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:28', '2025-11-07 17:32:28'),
(26, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:36', '2025-11-07 17:32:36'),
(27, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:36', '2025-11-07 17:32:36'),
(28, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:36', '2025-11-07 17:32:36'),
(29, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:36', '2025-11-07 17:32:36'),
(30, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:36', '2025-11-07 17:32:36'),
(31, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:43', '2025-11-07 17:32:43'),
(32, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:43', '2025-11-07 17:32:43'),
(33, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:43', '2025-11-07 17:32:43'),
(34, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:43', '2025-11-07 17:32:43'),
(35, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:43', '2025-11-07 17:32:43'),
(36, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:56', '2025-11-07 17:32:56'),
(37, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:56', '2025-11-07 17:32:56'),
(38, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:56', '2025-11-07 17:32:56'),
(39, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:56', '2025-11-07 17:32:56'),
(40, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:32:56', '2025-11-07 17:32:56'),
(41, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:05', '2025-11-07 17:33:05'),
(42, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:05', '2025-11-07 17:33:05'),
(43, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:05', '2025-11-07 17:33:05'),
(44, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:05', '2025-11-07 17:33:05'),
(45, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:05', '2025-11-07 17:33:05'),
(46, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:18', '2025-11-07 17:33:18'),
(47, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:18', '2025-11-07 17:33:18'),
(48, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:18', '2025-11-07 17:33:18'),
(49, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:18', '2025-11-07 17:33:18'),
(50, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 17:33:18', '2025-11-07 17:33:18'),
(51, 40, 'quotation_sent', 'A quotation has been sent for your purchase request #36. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 17:41:00', '2025-11-07 17:41:00'),
(52, 1, 'purchase_request', 'PO #36 submitted by Inner Power with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 17:44:27', '2025-11-07 17:44:27'),
(53, 26, 'purchase_request', 'PO #36 submitted by Inner Power with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 17:44:27', '2025-11-07 17:44:27'),
(54, 40, 'order', 'Your submitted PO has been processed. A sales order #REF 36-690DC16D1C16C was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?32\">Visit Link</a>', NULL, '2025-11-07 17:52:45', '2025-11-07 17:52:45'),
(55, 36, 'assignment', 'You have been assigned to deliver order #REF 36-690DC16D1C16C. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 17:52:57', '2025-11-07 17:52:57'),
(56, 40, 'delivery', 'Your order #REF 36-690DC16D1C16C is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 17:52:57', '2025-11-07 17:52:57'),
(57, 40, 'delivery', 'Your order #REF 36-690DC16D1C16C is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/32\">Visit Link</a>', NULL, '2025-11-07 17:53:15', '2025-11-07 17:53:15'),
(58, 40, 'delivery', 'Your order #REF 36-690DC16D1C16C has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 17:58:13', '2025-11-07 17:58:13'),
(59, 27, 'payment_submission', 'Inner Power has submitted a Partial payment for Purchase Request #36. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 18:13:41', '2025-11-07 18:13:41'),
(60, 40, 'payment_rejected', 'Your payment for your purchase request <strong>#36</strong> with the reference number <strong>4034 421 141955</strong> has been rejected. <br><strong>Reason:</strong> fake<br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 18:17:54', '2025-11-07 18:17:54'),
(61, 27, 'payment_submission', 'Inner Power has submitted a Partial payment for Purchase Request #36. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 18:18:55', '2025-11-07 18:18:55'),
(62, 40, 'payment_approved', 'Your partial payment for purchase request <strong>#36</strong> with the reference number <strong>4034 421 141955</strong> of amount <strong>₱21,437.60</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 18:20:21', '2025-11-07 18:20:21'),
(63, 41, 'Business Requirements', 'Your business requirements have been approved. You can now proceed with purchases.', NULL, '2025-11-07 18:28:11', '2025-11-07 18:28:11'),
(64, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:19', '2025-11-07 18:28:19'),
(65, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:19', '2025-11-07 18:28:19'),
(66, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:19', '2025-11-07 18:28:19'),
(67, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:19', '2025-11-07 18:28:19'),
(68, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:19', '2025-11-07 18:28:19'),
(69, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:32', '2025-11-07 18:28:32'),
(70, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:32', '2025-11-07 18:28:32'),
(71, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:32', '2025-11-07 18:28:32'),
(72, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:32', '2025-11-07 18:28:32'),
(73, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:28:32', '2025-11-07 18:28:32'),
(74, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:00', '2025-11-07 18:29:00'),
(75, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:00', '2025-11-07 18:29:00'),
(76, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:00', '2025-11-07 18:29:00'),
(77, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:00', '2025-11-07 18:29:00'),
(78, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:00', '2025-11-07 18:29:00'),
(79, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:12', '2025-11-07 18:29:12'),
(80, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:12', '2025-11-07 18:29:12'),
(81, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:12', '2025-11-07 18:29:12'),
(82, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:12', '2025-11-07 18:29:12'),
(83, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:29:12', '2025-11-07 18:29:12'),
(84, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:33:10', '2025-11-07 18:33:10'),
(85, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:33:10', '2025-11-07 18:33:10'),
(86, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:33:10', '2025-11-07 18:33:10'),
(87, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:33:10', '2025-11-07 18:33:10'),
(88, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 18:33:10', '2025-11-07 18:33:10'),
(89, 41, 'quotation_sent', 'A quotation has been sent for your purchase request #37. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 18:33:52', '2025-11-07 18:33:52'),
(90, 1, 'purchase_request', 'PO #37 submitted by PNL Hardware with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 18:34:19', '2025-11-07 18:34:19'),
(91, 26, 'purchase_request', 'PO #37 submitted by PNL Hardware with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 18:34:19', '2025-11-07 18:34:19'),
(92, 41, 'order', 'Your submitted PO has been processed. A sales order #REF 37-690DCB35F38B9 was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?33\">Visit Link</a>', NULL, '2025-11-07 18:34:30', '2025-11-07 18:34:30'),
(93, 37, 'assignment', 'You have been assigned to deliver order #REF 37-690DCB35F38B9. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 18:34:44', '2025-11-07 18:34:44'),
(94, 41, 'delivery', 'Your order #REF 37-690DCB35F38B9 is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 18:34:44', '2025-11-07 18:34:44'),
(95, 41, 'delivery', 'Your order #REF 37-690DCB35F38B9 is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/33\">Visit Link</a>', NULL, '2025-11-07 18:36:23', '2025-11-07 18:36:23'),
(96, 41, 'delivery', 'Your order #REF 37-690DCB35F38B9 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 18:42:43', '2025-11-07 18:42:43'),
(97, 27, 'payment_submission', 'PNL Hardware has submitted a Partial payment for Purchase Request #37. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 18:57:13', '2025-11-07 18:57:13'),
(98, 27, 'payment_submission', 'PNL Hardware has submitted a Partial payment for Purchase Request #37. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 19:04:10', '2025-11-07 19:04:10'),
(99, 41, 'payment_approved', 'Your partial payment for purchase request <strong>#37</strong> with the reference number <strong>6871 932 505810</strong> of amount <strong>₱18,791.60</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 19:04:37', '2025-11-07 19:04:37'),
(100, 27, 'payment_submission', 'Inner Power has submitted a Partial payment for Purchase Request #36. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 19:08:41', '2025-11-07 19:08:41'),
(101, 40, 'payment_approved', 'Your partial payment for purchase request <strong>#36</strong> with the reference number <strong>4034 421 141955</strong> of amount <strong>₱21,437.60</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 19:09:08', '2025-11-07 19:09:08'),
(102, 39, 'Business Requirements', 'Your business requirements have been approved. You can now proceed with purchases.', NULL, '2025-11-07 19:10:41', '2025-11-07 19:10:41'),
(103, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:10:56', '2025-11-07 19:10:56'),
(104, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:10:56', '2025-11-07 19:10:56'),
(105, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:10:56', '2025-11-07 19:10:56'),
(106, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:10:56', '2025-11-07 19:10:56'),
(107, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:10:56', '2025-11-07 19:10:56'),
(108, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:04', '2025-11-07 19:11:04'),
(109, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:04', '2025-11-07 19:11:04'),
(110, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:04', '2025-11-07 19:11:04'),
(111, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:04', '2025-11-07 19:11:04'),
(112, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:04', '2025-11-07 19:11:04'),
(113, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:07', '2025-11-07 19:11:07'),
(114, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:07', '2025-11-07 19:11:07'),
(115, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:07', '2025-11-07 19:11:07'),
(116, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:07', '2025-11-07 19:11:07'),
(117, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:07', '2025-11-07 19:11:07'),
(118, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:19', '2025-11-07 19:11:19'),
(119, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:19', '2025-11-07 19:11:19'),
(120, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:19', '2025-11-07 19:11:19'),
(121, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:19', '2025-11-07 19:11:19'),
(122, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:19', '2025-11-07 19:11:19'),
(123, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:27', '2025-11-07 19:11:27'),
(124, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:27', '2025-11-07 19:11:27'),
(125, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:27', '2025-11-07 19:11:27'),
(126, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:27', '2025-11-07 19:11:27'),
(127, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:27', '2025-11-07 19:11:27'),
(128, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:30', '2025-11-07 19:11:30'),
(129, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:30', '2025-11-07 19:11:30'),
(130, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:30', '2025-11-07 19:11:30'),
(131, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:30', '2025-11-07 19:11:30'),
(132, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:30', '2025-11-07 19:11:30'),
(133, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:34', '2025-11-07 19:11:34'),
(134, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:34', '2025-11-07 19:11:34'),
(135, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:34', '2025-11-07 19:11:34'),
(136, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:34', '2025-11-07 19:11:34'),
(137, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:34', '2025-11-07 19:11:34'),
(138, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:42', '2025-11-07 19:11:42'),
(139, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:42', '2025-11-07 19:11:42'),
(140, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:42', '2025-11-07 19:11:42'),
(141, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:42', '2025-11-07 19:11:42'),
(142, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 19:11:42', '2025-11-07 19:11:42'),
(143, 39, 'quotation_sent', 'A quotation has been sent for your purchase request #38. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 19:23:17', '2025-11-07 19:23:17'),
(144, 1, 'purchase_request', 'PO #38 submitted by Asian Valley with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 19:23:38', '2025-11-07 19:23:38'),
(145, 26, 'purchase_request', 'PO #38 submitted by Asian Valley with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 19:23:38', '2025-11-07 19:23:38'),
(146, 39, 'order', 'Your submitted PO has been processed. A sales order #REF 38-690DD6E6476F6 was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?34\">Visit Link</a>', NULL, '2025-11-07 19:24:22', '2025-11-07 19:24:22'),
(147, 38, 'assignment', 'You have been assigned to deliver order #REF 38-690DD6E6476F6. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 19:24:32', '2025-11-07 19:24:32'),
(148, 39, 'delivery', 'Your order #REF 38-690DD6E6476F6 is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 19:24:32', '2025-11-07 19:24:32'),
(149, 39, 'delivery', 'Your order #REF 38-690DD6E6476F6 is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/34\">Visit Link</a>', NULL, '2025-11-07 19:24:36', '2025-11-07 19:24:36'),
(150, 39, 'delivery', 'Your order #REF 38-690DD6E6476F6 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 19:27:02', '2025-11-07 19:27:02'),
(151, 27, 'payment_submission', 'Asian Valley has submitted a Straight payment for Purchase Request #38. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 19:54:08', '2025-11-07 19:54:08'),
(152, 39, 'payment_approved', 'Your payment for purchase request <strong>#38</strong> with the reference number <strong>300041988883</strong> of amount <strong>₱178,883.20</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 19:54:27', '2025-11-07 19:54:27'),
(153, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:16:49', '2025-11-07 20:16:49'),
(154, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:16:49', '2025-11-07 20:16:49'),
(155, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:16:49', '2025-11-07 20:16:49'),
(156, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:16:49', '2025-11-07 20:16:49'),
(157, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:16:49', '2025-11-07 20:16:49'),
(158, 40, 'quotation_sent', 'A quotation has been sent for your purchase request #39. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 20:17:08', '2025-11-07 20:17:08'),
(159, 1, 'purchase_request', 'PO #39 submitted by Inner Power with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:17:26', '2025-11-07 20:17:26'),
(160, 26, 'purchase_request', 'PO #39 submitted by Inner Power with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:17:26', '2025-11-07 20:17:26'),
(161, 40, 'order', 'Your submitted PO has been processed. A sales order #REF 39-690DE36F2EBD9 was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?35\">Visit Link</a>', NULL, '2025-11-07 20:17:51', '2025-11-07 20:17:51'),
(162, 36, 'assignment', 'You have been assigned to deliver order #REF 39-690DE36F2EBD9. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 20:17:56', '2025-11-07 20:17:56'),
(163, 40, 'delivery', 'Your order #REF 39-690DE36F2EBD9 is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:17:56', '2025-11-07 20:17:56'),
(164, 40, 'delivery', 'Your order #REF 39-690DE36F2EBD9 is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/35\">Visit Link</a>', NULL, '2025-11-07 20:18:13', '2025-11-07 20:18:13'),
(165, 40, 'delivery', 'Your order #REF 39-690DE36F2EBD9 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:18:35', '2025-11-07 20:18:35'),
(166, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:33', '2025-11-07 20:24:33'),
(167, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:33', '2025-11-07 20:24:33'),
(168, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:33', '2025-11-07 20:24:33'),
(169, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:33', '2025-11-07 20:24:33'),
(170, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:33', '2025-11-07 20:24:33'),
(171, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:39', '2025-11-07 20:24:39'),
(172, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:39', '2025-11-07 20:24:39'),
(173, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:39', '2025-11-07 20:24:39'),
(174, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:39', '2025-11-07 20:24:39'),
(175, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:39', '2025-11-07 20:24:39'),
(176, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:47', '2025-11-07 20:24:47'),
(177, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:47', '2025-11-07 20:24:47'),
(178, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:47', '2025-11-07 20:24:47'),
(179, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:47', '2025-11-07 20:24:47'),
(180, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:24:47', '2025-11-07 20:24:47'),
(181, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:03', '2025-11-07 20:25:03'),
(182, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:03', '2025-11-07 20:25:03'),
(183, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:03', '2025-11-07 20:25:03'),
(184, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:03', '2025-11-07 20:25:03'),
(185, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:03', '2025-11-07 20:25:03'),
(186, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:07', '2025-11-07 20:25:07'),
(187, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:07', '2025-11-07 20:25:07'),
(188, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:07', '2025-11-07 20:25:07'),
(189, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:07', '2025-11-07 20:25:07'),
(190, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:07', '2025-11-07 20:25:07'),
(191, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:10', '2025-11-07 20:25:10'),
(192, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:10', '2025-11-07 20:25:10'),
(193, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:10', '2025-11-07 20:25:10'),
(194, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:10', '2025-11-07 20:25:10'),
(195, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:10', '2025-11-07 20:25:10'),
(196, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:18', '2025-11-07 20:25:18'),
(197, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:18', '2025-11-07 20:25:18'),
(198, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:18', '2025-11-07 20:25:18'),
(199, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:18', '2025-11-07 20:25:18'),
(200, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:25:18', '2025-11-07 20:25:18'),
(201, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:41', '2025-11-07 20:27:41'),
(202, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:41', '2025-11-07 20:27:41'),
(203, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:41', '2025-11-07 20:27:41'),
(204, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:41', '2025-11-07 20:27:41'),
(205, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:41', '2025-11-07 20:27:41'),
(206, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:44', '2025-11-07 20:27:44'),
(207, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:44', '2025-11-07 20:27:44'),
(208, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:44', '2025-11-07 20:27:44'),
(209, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:44', '2025-11-07 20:27:44'),
(210, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:44', '2025-11-07 20:27:44'),
(211, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:48', '2025-11-07 20:27:48'),
(212, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:48', '2025-11-07 20:27:48'),
(213, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:48', '2025-11-07 20:27:48'),
(214, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:48', '2025-11-07 20:27:48'),
(215, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:48', '2025-11-07 20:27:48'),
(216, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:53', '2025-11-07 20:27:53'),
(217, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:53', '2025-11-07 20:27:53'),
(218, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:53', '2025-11-07 20:27:53'),
(219, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:53', '2025-11-07 20:27:53'),
(220, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:53', '2025-11-07 20:27:53'),
(221, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:56', '2025-11-07 20:27:56');
INSERT INTO `notifications` (`id`, `user_id`, `type`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(222, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:56', '2025-11-07 20:27:56'),
(223, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:56', '2025-11-07 20:27:56'),
(224, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:56', '2025-11-07 20:27:56'),
(225, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:56', '2025-11-07 20:27:56'),
(226, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:59', '2025-11-07 20:27:59'),
(227, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:59', '2025-11-07 20:27:59'),
(228, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:59', '2025-11-07 20:27:59'),
(229, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:59', '2025-11-07 20:27:59'),
(230, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:27:59', '2025-11-07 20:27:59'),
(231, 27, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:28:08', '2025-11-07 20:28:08'),
(232, 28, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:28:08', '2025-11-07 20:28:08'),
(233, 29, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:28:08', '2025-11-07 20:28:08'),
(234, 30, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:28:08', '2025-11-07 20:28:08'),
(235, 31, 'purchase_request', 'A new purchase request has been updated by Inner Power. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:28:08', '2025-11-07 20:28:08'),
(236, 40, 'quotation_sent', 'A quotation has been sent for your purchase request #41. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 20:28:52', '2025-11-07 20:28:52'),
(237, 1, 'purchase_request', 'PO #41 submitted by Inner Power with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:29:06', '2025-11-07 20:29:06'),
(238, 26, 'purchase_request', 'PO #41 submitted by Inner Power with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:29:06', '2025-11-07 20:29:06'),
(239, 40, 'order', 'Your submitted PO has been processed. A sales order #REF 41-690DE6318FAE6 was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?36\">Visit Link</a>', NULL, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(240, 36, 'assignment', 'You have been assigned to deliver order #REF 41-690DE6318FAE6. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 20:29:55', '2025-11-07 20:29:55'),
(241, 40, 'delivery', 'Your order #REF 41-690DE6318FAE6 is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:29:55', '2025-11-07 20:29:55'),
(242, 40, 'delivery', 'Your order #REF 41-690DE6318FAE6 is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/36\">Visit Link</a>', NULL, '2025-11-07 20:30:00', '2025-11-07 20:30:00'),
(243, 40, 'delivery', 'Your order #REF 41-690DE6318FAE6 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:32:09', '2025-11-07 20:32:09'),
(244, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:44', '2025-11-07 20:32:44'),
(245, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:44', '2025-11-07 20:32:44'),
(246, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:44', '2025-11-07 20:32:44'),
(247, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:44', '2025-11-07 20:32:44'),
(248, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:44', '2025-11-07 20:32:44'),
(249, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:53', '2025-11-07 20:32:53'),
(250, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:53', '2025-11-07 20:32:53'),
(251, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:53', '2025-11-07 20:32:53'),
(252, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:53', '2025-11-07 20:32:53'),
(253, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:32:53', '2025-11-07 20:32:53'),
(254, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:08', '2025-11-07 20:33:08'),
(255, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:08', '2025-11-07 20:33:08'),
(256, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:08', '2025-11-07 20:33:08'),
(257, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:08', '2025-11-07 20:33:08'),
(258, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:08', '2025-11-07 20:33:08'),
(259, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:22', '2025-11-07 20:33:22'),
(260, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:22', '2025-11-07 20:33:22'),
(261, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:22', '2025-11-07 20:33:22'),
(262, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:22', '2025-11-07 20:33:22'),
(263, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:22', '2025-11-07 20:33:22'),
(264, 27, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:30', '2025-11-07 20:33:30'),
(265, 28, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:30', '2025-11-07 20:33:30'),
(266, 29, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:30', '2025-11-07 20:33:30'),
(267, 30, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:30', '2025-11-07 20:33:30'),
(268, 31, 'purchase_request', 'A new purchase request has been updated by PNL Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:33:30', '2025-11-07 20:33:30'),
(269, 27, 'payment_submission', 'Inner Power has submitted a Partial payment for Purchase Request #41. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 20:40:03', '2025-11-07 20:40:03'),
(270, 40, 'payment_approved', 'Your partial payment for purchase request <strong>#41</strong> with the reference number <strong>6871 932 505810</strong> of amount <strong>₱20,706.80</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 20:40:22', '2025-11-07 20:40:22'),
(271, 41, 'quotation_sent', 'A quotation has been sent for your purchase request #42. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 20:43:27', '2025-11-07 20:43:27'),
(272, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:43:57', '2025-11-07 20:43:57'),
(273, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:43:57', '2025-11-07 20:43:57'),
(274, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:43:57', '2025-11-07 20:43:57'),
(275, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:43:57', '2025-11-07 20:43:57'),
(276, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:43:57', '2025-11-07 20:43:57'),
(277, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:19', '2025-11-07 20:44:19'),
(278, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:19', '2025-11-07 20:44:19'),
(279, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:19', '2025-11-07 20:44:19'),
(280, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:19', '2025-11-07 20:44:19'),
(281, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:19', '2025-11-07 20:44:19'),
(282, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:31', '2025-11-07 20:44:31'),
(283, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:31', '2025-11-07 20:44:31'),
(284, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:31', '2025-11-07 20:44:31'),
(285, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:31', '2025-11-07 20:44:31'),
(286, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:31', '2025-11-07 20:44:31'),
(287, 27, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:34', '2025-11-07 20:44:34'),
(288, 28, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:34', '2025-11-07 20:44:34'),
(289, 29, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:34', '2025-11-07 20:44:34'),
(290, 30, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:34', '2025-11-07 20:44:34'),
(291, 31, 'purchase_request', 'A new purchase request has been updated by Asian Valley. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 20:44:34', '2025-11-07 20:44:34'),
(292, 39, 'quotation_sent', 'A quotation has been sent for your purchase request #43. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 20:45:17', '2025-11-07 20:45:17'),
(293, 1, 'purchase_request', 'PO #43 submitted by Asian Valley with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:45:54', '2025-11-07 20:45:54'),
(294, 26, 'purchase_request', 'PO #43 submitted by Asian Valley with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:45:54', '2025-11-07 20:45:54'),
(295, 39, 'order', 'Your submitted PO has been processed. A sales order #REF 43-690DEA0FE8125 was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?37\">Visit Link</a>', NULL, '2025-11-07 20:46:07', '2025-11-07 20:46:07'),
(296, 37, 'assignment', 'You have been assigned to deliver order #REF 43-690DEA0FE8125. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 20:46:20', '2025-11-07 20:46:20'),
(297, 39, 'delivery', 'Your order #REF 43-690DEA0FE8125 is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:46:20', '2025-11-07 20:46:20'),
(298, 39, 'delivery', 'Your order #REF 43-690DEA0FE8125 is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/37\">Visit Link</a>', NULL, '2025-11-07 20:47:19', '2025-11-07 20:47:19'),
(299, 39, 'delivery', 'Your order #REF 43-690DEA0FE8125 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:47:43', '2025-11-07 20:47:43'),
(300, 27, 'payment_submission', 'Asian Valley has submitted a Straight payment for Purchase Request #43. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 20:51:22', '2025-11-07 20:51:22'),
(301, 39, 'payment_rejected', 'Your payment for your purchase request <strong>#43</strong> with the reference number <strong>4034 421 141955</strong> has been rejected. <br><strong>Reason:</strong> fake<br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 20:52:30', '2025-11-07 20:52:30'),
(302, 27, 'payment_submission', 'Asian Valley has submitted a Straight payment for Purchase Request #43. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 20:52:43', '2025-11-07 20:52:43'),
(303, 39, 'payment_approved', 'Your payment for purchase request <strong>#43</strong> with the reference number <strong>4034 421 141955</strong> of amount <strong>₱85,178.40</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 20:53:03', '2025-11-07 20:53:03'),
(304, 1, 'purchase_request', 'PO #42 submitted by PNL Hardware with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:54:13', '2025-11-07 20:54:13'),
(305, 26, 'purchase_request', 'PO #42 submitted by PNL Hardware with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 20:54:13', '2025-11-07 20:54:13'),
(306, 41, 'order', 'Your submitted PO has been processed. A sales order #REF 42-690DEBF7A9BA8 was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?38\">Visit Link</a>', NULL, '2025-11-07 20:54:15', '2025-11-07 20:54:15'),
(307, 38, 'assignment', 'You have been assigned to deliver order #REF 42-690DEBF7A9BA8. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 20:54:23', '2025-11-07 20:54:23'),
(308, 41, 'delivery', 'Your order #REF 42-690DEBF7A9BA8 is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:54:23', '2025-11-07 20:54:23'),
(309, 41, 'delivery', 'Your order #REF 42-690DEBF7A9BA8 is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/38\">Visit Link</a>', NULL, '2025-11-07 20:54:42', '2025-11-07 20:54:42'),
(310, 41, 'delivery', 'Your order #REF 42-690DEBF7A9BA8 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 20:55:06', '2025-11-07 20:55:06'),
(311, 27, 'payment_submission', 'PNL Hardware has submitted a Partial payment for Purchase Request #42. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 20:59:37', '2025-11-07 20:59:37'),
(312, 41, 'payment_approved', 'Your partial payment for purchase request <strong>#42</strong> with the reference number <strong>4034 421 135122</strong> of amount <strong>₱25,345.00</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 20:59:59', '2025-11-07 20:59:59'),
(313, 42, 'Business Requirements', 'Your submitted business requirements need revision. Please check and resubmit.', NULL, '2025-11-07 21:07:31', '2025-11-07 21:07:31'),
(314, 42, 'Business Requirements', 'Your business requirements have been approved. You can now proceed with purchases.', NULL, '2025-11-07 21:08:54', '2025-11-07 21:08:54'),
(315, 27, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:14', '2025-11-07 21:16:14'),
(316, 28, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:14', '2025-11-07 21:16:14'),
(317, 29, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:14', '2025-11-07 21:16:14'),
(318, 30, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:14', '2025-11-07 21:16:14'),
(319, 31, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:14', '2025-11-07 21:16:14'),
(320, 27, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:18', '2025-11-07 21:16:18'),
(321, 28, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:18', '2025-11-07 21:16:18'),
(322, 29, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:18', '2025-11-07 21:16:18'),
(323, 30, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:18', '2025-11-07 21:16:18'),
(324, 31, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:18', '2025-11-07 21:16:18'),
(325, 27, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:25', '2025-11-07 21:16:25'),
(326, 28, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:25', '2025-11-07 21:16:25'),
(327, 29, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:25', '2025-11-07 21:16:25'),
(328, 30, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:25', '2025-11-07 21:16:25'),
(329, 31, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:25', '2025-11-07 21:16:25'),
(330, 27, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:33', '2025-11-07 21:16:33'),
(331, 28, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:33', '2025-11-07 21:16:33'),
(332, 29, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:33', '2025-11-07 21:16:33'),
(333, 30, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:33', '2025-11-07 21:16:33'),
(334, 31, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:33', '2025-11-07 21:16:33'),
(335, 27, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:36', '2025-11-07 21:16:36'),
(336, 28, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:36', '2025-11-07 21:16:36'),
(337, 29, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:36', '2025-11-07 21:16:36'),
(338, 30, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:36', '2025-11-07 21:16:36'),
(339, 31, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:36', '2025-11-07 21:16:36'),
(340, 27, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:48', '2025-11-07 21:16:48'),
(341, 28, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:48', '2025-11-07 21:16:48'),
(342, 29, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:48', '2025-11-07 21:16:48'),
(343, 30, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:48', '2025-11-07 21:16:48'),
(344, 31, 'purchase_request', 'A new purchase request has been updated by Perez-Magboo Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:16:48', '2025-11-07 21:16:48'),
(345, 42, 'quotation_sent', 'A quotation has been sent for your purchase request #44. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 21:17:17', '2025-11-07 21:17:17'),
(346, 1, 'purchase_request', 'PO #44 submitted by Perez-Magboo Hardware with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 21:17:40', '2025-11-07 21:17:40'),
(347, 26, 'purchase_request', 'PO #44 submitted by Perez-Magboo Hardware with (Pay Later) - Total: ₱0.00', NULL, '2025-11-07 21:17:40', '2025-11-07 21:17:40'),
(348, 42, 'order', 'Your submitted PO has been processed. A sales order #REF 44-690DF18176F1A was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?39\">Visit Link</a>', NULL, '2025-11-07 21:17:53', '2025-11-07 21:17:53'),
(349, 38, 'assignment', 'You have been assigned to deliver order #REF 44-690DF18176F1A. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 21:18:07', '2025-11-07 21:18:07'),
(350, 42, 'delivery', 'Your order #REF 44-690DF18176F1A is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 21:18:07', '2025-11-07 21:18:07'),
(351, 42, 'delivery', 'Your order #REF 44-690DF18176F1A is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/39\">Visit Link</a>', NULL, '2025-11-07 21:18:12', '2025-11-07 21:18:12'),
(352, 42, 'delivery', 'Your order #REF 44-690DF18176F1A has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 21:24:20', '2025-11-07 21:24:20'),
(353, 27, 'payment_submission', 'Perez-Magboo Hardware has submitted a Straight payment for Purchase Request #44. Please review the payment details. <br><a href=\"https://tantuco-ctc.store/salesofficer/paylater/all\">Visit</a>', NULL, '2025-11-07 21:28:22', '2025-11-07 21:28:22'),
(354, 42, 'payment_approved', 'Your payment for purchase request <strong>#44</strong> with the reference number <strong>4034 431 155131</strong> of amount <strong>₱39,647.20</strong> has been approved. <br><a href=\"https://tantuco-ctc.store/b2b/purchase/credit\">Visit Link</a>', NULL, '2025-11-07 21:29:07', '2025-11-07 21:29:07'),
(355, 43, 'Business Requirements', 'Your business requirements have been approved. You can now proceed with purchases.', NULL, '2025-11-07 21:34:27', '2025-11-07 21:34:27'),
(356, 27, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:34:58', '2025-11-07 21:34:58'),
(357, 28, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:34:58', '2025-11-07 21:34:58'),
(358, 29, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:34:58', '2025-11-07 21:34:58'),
(359, 30, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:34:58', '2025-11-07 21:34:58'),
(360, 31, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:34:58', '2025-11-07 21:34:58'),
(361, 27, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:04', '2025-11-07 21:35:04'),
(362, 28, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:04', '2025-11-07 21:35:04'),
(363, 29, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:04', '2025-11-07 21:35:04'),
(364, 30, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:04', '2025-11-07 21:35:04'),
(365, 31, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:04', '2025-11-07 21:35:04'),
(366, 27, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:32', '2025-11-07 21:35:32'),
(367, 28, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:32', '2025-11-07 21:35:32'),
(368, 29, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:32', '2025-11-07 21:35:32'),
(369, 30, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:32', '2025-11-07 21:35:32'),
(370, 31, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:32', '2025-11-07 21:35:32'),
(371, 27, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:43', '2025-11-07 21:35:43'),
(372, 28, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:43', '2025-11-07 21:35:43'),
(373, 29, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:43', '2025-11-07 21:35:43'),
(374, 30, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:43', '2025-11-07 21:35:43'),
(375, 31, 'purchase_request', 'A new purchase request has been updated by John & Ken Hardware. <br><a href=\"https://tantuco-ctc.store/salesofficer/purchase-requests/all\">Visit</a>', NULL, '2025-11-07 21:35:43', '2025-11-07 21:35:43'),
(376, 43, 'quotation_sent', 'A quotation has been sent for your purchase request #45. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review\">Visit Link</a>', NULL, '2025-11-07 21:40:22', '2025-11-07 21:40:22'),
(377, 1, 'purchase_request', 'A PO (ID: 45) was submitted by John & Ken Hardware with (Pay Now). <a href=\"https://tantuco-ctc.store/home?45\" class=\'d-none\'>Visit Link</a>', NULL, '2025-11-07 21:40:35', '2025-11-07 21:40:35'),
(378, 26, 'purchase_request', 'A PO (ID: 45) was submitted by John & Ken Hardware with (Pay Now). <a href=\"https://tantuco-ctc.store/home?45\" class=\'d-none\'>Visit Link</a>', NULL, '2025-11-07 21:40:35', '2025-11-07 21:40:35'),
(379, 43, 'order', 'Your submitted PO has been processed. A sales order #REF 45-690DF6DC3E8D1 was created. <br><a href=\"https://tantuco-ctc.store/b2b/quotations/review?40\">Visit Link</a>', NULL, '2025-11-07 21:40:44', '2025-11-07 21:40:44'),
(380, 36, 'assignment', 'You have been assigned to deliver order #REF 45-690DF6DC3E8D1. <br><a href=\"https://tantuco-ctc.store/home\">Visit Link</a>', NULL, '2025-11-07 21:40:53', '2025-11-07 21:40:53'),
(381, 43, 'delivery', 'Your order #REF 45-690DF6DC3E8D1 is now assigned for delivery. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 21:40:53', '2025-11-07 21:40:53'),
(382, 43, 'delivery', 'Your order #REF 45-690DF6DC3E8D1 is now on the way. <br><a href=\"https://tantuco-ctc.store/b2b/delivery/track/40\">Visit Link</a>', NULL, '2025-11-07 21:41:10', '2025-11-07 21:41:10'),
(383, 43, 'delivery', 'Your order #REF 45-690DF6DC3E8D1 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 21:41:24', '2025-11-07 21:41:24'),
(384, 43, 'delivery', 'Your order #REF 45-690DF6DC3E8D1 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 21:46:46', '2025-11-07 21:46:46'),
(385, 43, 'delivery', 'Your order #REF 45-690DF6DC3E8D1 has been delivered. <br><a href=\"https://tantuco-ctc.store/b2b/delivery\">Visit Link</a>', NULL, '2025-11-07 21:47:44', '2025-11-07 21:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `b2b_address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ordered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_number`, `total_amount`, `b2b_address_id`, `ordered_at`, `created_at`, `updated_at`) VALUES
(36, 40, 'REF 41-690DE6318FAE6', 76467.80, 8, '2025-11-07 20:29:37', '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(37, 39, 'REF 43-690DEA0FE8125', 77328.10, 10, '2025-11-07 20:46:07', '2025-11-07 20:46:07', '2025-11-07 20:46:07'),
(38, 41, 'REF 42-690DEBF7A9BA8', 94342.00, 9, '2025-11-07 20:54:15', '2025-11-07 20:54:15', '2025-11-07 20:54:15'),
(39, 42, 'REF 44-690DF18176F1A', 35341.40, 11, '2025-11-07 21:17:53', '2025-11-07 21:17:53', '2025-11-07 21:17:53'),
(40, 43, 'REF 45-690DF6DC3E8D1', 15194.90, 12, '2025-11-07 21:40:44', '2025-11-07 21:40:44', '2025-11-07 21:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `subtotal`, `created_at`, `updated_at`) VALUES
(56, 36, 16, 50, 204.21, 10210.50, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(57, 36, 19, 30, 143.16, 4294.80, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(58, 36, 20, 20, 358.95, 7179.00, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(59, 36, 26, 20, 439.47, 8789.40, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(60, 36, 25, 10, 277.89, 2778.90, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(61, 36, 24, 10, 165.26, 1652.60, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(62, 36, 28, 60, 692.71, 41562.60, '2025-11-07 20:29:37', '2025-11-07 20:29:37'),
(63, 37, 17, 250, 221.05, 55262.50, '2025-11-07 20:46:07', '2025-11-07 20:46:07'),
(64, 37, 29, 10, 514.58, 5145.80, '2025-11-07 20:46:07', '2025-11-07 20:46:07'),
(65, 37, 32, 20, 685.57, 13711.40, '2025-11-07 20:46:07', '2025-11-07 20:46:07'),
(66, 37, 34, 20, 160.42, 3208.40, '2025-11-07 20:46:07', '2025-11-07 20:46:07'),
(67, 38, 20, 100, 358.95, 35895.00, '2025-11-07 20:54:15', '2025-11-07 20:54:15'),
(68, 38, 19, 100, 143.16, 14316.00, '2025-11-07 20:54:15', '2025-11-07 20:54:15'),
(69, 38, 24, 50, 165.26, 8263.00, '2025-11-07 20:54:15', '2025-11-07 20:54:15'),
(70, 38, 26, 50, 439.47, 21973.50, '2025-11-07 20:54:15', '2025-11-07 20:54:15'),
(71, 38, 25, 50, 277.89, 13894.50, '2025-11-07 20:54:15', '2025-11-07 20:54:15'),
(72, 39, 18, 100, 97.94, 9794.00, '2025-11-07 21:17:53', '2025-11-07 21:17:53'),
(73, 39, 21, 10, 83.51, 835.10, '2025-11-07 21:17:53', '2025-11-07 21:17:53'),
(74, 39, 22, 10, 81.44, 814.40, '2025-11-07 21:17:53', '2025-11-07 21:17:53'),
(75, 39, 17, 50, 221.05, 11052.50, '2025-11-07 21:17:53', '2025-11-07 21:17:53'),
(76, 39, 27, 20, 642.27, 12845.40, '2025-11-07 21:17:53', '2025-11-07 21:17:53'),
(77, 40, 16, 20, 204.21, 4084.20, '2025-11-07 21:40:44', '2025-11-07 21:40:44'),
(78, 40, 19, 20, 143.16, 2863.20, '2025-11-07 21:40:44', '2025-11-07 21:40:44'),
(79, 40, 39, 20, 51.55, 1031.00, '2025-11-07 21:40:44', '2025-11-07 21:40:44'),
(80, 40, 41, 10, 721.65, 7216.50, '2025-11-07 21:40:44', '2025-11-07 21:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `paid_payments`
--

CREATE TABLE `paid_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `paid_date` date DEFAULT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `proof_payment` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `approved_at` date DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('superadmin@example.com', '$2y$10$k6arU1/lzH2WYUMLn9zKcuV.FLULdSSWoGoFDoA7WN4iTLC57sp9K', '2025-07-20 05:17:41');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` int(5) NOT NULL DEFAULT 0,
  `discounted_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `expiry_date` date DEFAULT NULL,
  `maximum_stock` int(11) DEFAULT 0,
  `critical_stock_level` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `sku`, `description`, `price`, `discount`, `discounted_price`, `expiry_date`, `maximum_stock`, `critical_stock_level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 2, 'Deformed Bar 12mm', 'SKU-68F4F185D114F', 'Ribbed steel reinforcing bar used for concrete reinforcement.\r\n#bakal #rebar #deformedbar', 204.21, 5, 194.00, NULL, 4000, 800, '2025-10-19 14:11:17', '2025-11-07 16:48:48', NULL),
(17, 1, 'Fortune Cement', 'SKU-68F4F209DB049', 'High-quality Portland cement for general construction such as foundations, slabs, and concrete structures.\r\n\r\n#semento #cement', 221.05, 5, 210.00, NULL, 3000, 600, '2025-10-19 14:13:29', '2025-11-07 16:52:47', NULL),
(18, 2, 'Tie Wire #16', 'SKU-68F4F241CA35A', 'Durable black annealed steel wire used for tying rebar, fencing, and general construction work. It’s flexible, easy to twist, and strong enough to hold materials securely in place. Ideal for reinforcing steel in concrete projects and other binding applications.', 97.94, 3, 95.00, NULL, 600, 120, '2025-10-19 14:14:25', '2025-11-07 16:58:12', NULL),
(19, 2, 'Deformed Bar 10mm', 'SKU-68F4F386159B8', 'Ribbed steel reinforcing bar used for concrete reinforcement.\r\n#bakal #rebar #deformedbar', 143.16, 5, 136.00, NULL, 5000, 1000, '2025-10-19 14:19:50', '2025-11-07 16:48:25', NULL),
(20, 2, 'Deformed Bar 16mm', 'SKU-68F4F42F89FBC', 'Ribbed steel reinforcing bar used for concrete reinforcement.\r\n#bakal #rebar #deformedbar', 358.95, 5, 341.00, NULL, 3000, 600, '2025-10-19 14:22:39', '2025-11-07 16:51:05', NULL),
(21, 2, 'Common Nail #2', 'SKU-68F4F46C0346E', 'Standard steel nail for fastening wood and other materials. Sizes: #2, #3, #4.\r\n#pako #nail #construction (variety tags: #uno #dos #tres #quatro', 83.51, 3, 81.00, NULL, 2000, 400, '2025-10-19 14:23:40', '2025-11-07 16:49:48', NULL),
(22, 2, 'Common Nail #3', 'SKU-68F4F48E27F1F', 'Standard steel nail for fastening wood and other materials. Sizes: #2, #3, #4.\r\n #pako #nail #construction (variety tags: #uno #dos #tres #quatro', 81.44, 3, 79.00, NULL, 1500, 300, '2025-10-19 14:24:14', '2025-11-07 16:50:15', NULL),
(23, 2, 'Common Nail #4', 'SKU-68F4F4ABB559A', 'Standard steel nail for fastening wood and other materials. Sizes: #2, #3, #4.\r\n #pako #nail #construction (variety tags: #uno #dos #tres #quatro', 80.41, 3, 78.00, NULL, 1000, 200, '2025-10-19 14:24:43', '2025-11-07 16:50:41', NULL),
(24, 2, 'Flat Bar 1/4x1', 'SKU-68F4F4C8BB0ED', 'Rectangular steel bar for frames, braces, and support structures.\r\n #flatbar #bakal #steelbar', 165.26, 5, 157.00, NULL, 1500, 300, '2025-10-19 14:25:12', '2025-11-07 16:51:48', NULL),
(25, 2, 'Flat Bar 3/8x1', 'SKU-68F4F4E763132', 'Rectangular steel bar for frames, braces, and support structures. Sizes: 1/4x1, 3/8x1, 1/2x1 inch.\r\n#flatbar #bakal #steelbar', 277.89, 5, 264.00, '0000-00-00', 1500, 300, '2025-10-19 14:25:43', '2025-11-07 16:52:16', NULL),
(26, 2, 'Flat Bar 1/2x1', 'SKU-68F4F50463E76', 'Rectangular steel bar for frames, braces, and support structures. Sizes: 1/4x1, 3/8x1, 1/2x1 inch.\r\n#flatbar #bakal #steelbar', 439.47, 5, 417.50, NULL, 2000, 400, '2025-10-19 14:26:12', '2025-11-07 16:51:24', NULL),
(27, 7, 'Boysen - Flat Latex White  Gallon', 'SKU-68F4F5219AF78', 'High-quality water-based paint with a smooth, non-gloss finish. Ideal for interior walls and ceilings, providing a clean and elegant look. Easy to apply, quick-drying, and washable for long-lasting beauty. Perfect for residential and commercial use.', 642.27, 3, 623.00, NULL, 2000, 400, '2025-10-19 14:26:41', '2025-11-07 16:45:21', NULL),
(28, 2, 'Angle Bar 3.5mm x 2\"', 'SKU-68F4F550EBC9E', 'L-shaped steel bar for structural supports, brackets, and framing.\r\n#anglebar #bakal #steel', 692.71, 4, 665.00, NULL, 700, 150, '2025-10-19 14:27:28', '2025-11-07 16:46:13', NULL),
(29, 2, 'Angle Bar 3.5mm x 1 1/2', 'SKU-68F4F56D34D63', 'L-shaped steel bar for structural supports, brackets, and framing.\r\n#anglebar #bakal #steel', 514.58, 4, 494.00, NULL, 900, 200, '2025-10-19 14:27:57', '2025-11-07 16:44:35', NULL),
(30, 2, 'GI Pipe #1/2  540', 'SKU-68F4F5F856610', 'Galvanized iron pipe for water lines, fences, and structural applications. Sizes: #1/2, #3/4, #1, #1 1/2 (540).\r\n#GIpipes #tubongbakal #plumbing', 353.61, 3, 343.00, NULL, 2000, 400, '2025-10-19 14:30:16', '2025-11-07 16:54:26', NULL),
(31, 2, 'GI Pipe #3/4  540', 'SKU-68F4F61D98886', 'Galvanized iron pipe for water lines, fences, and structural applications. \r\n#GIpipes #tubongbakal #plumbing', 444.33, 3, 431.00, NULL, 1800, 360, '2025-10-19 14:30:53', '2025-11-07 16:54:46', NULL),
(32, 2, 'GI Pipe #1 (540)', 'SKU-68F4F683B852D', 'Galvanized iron pipe for water lines, fences, and structural applications. Sizes: #1/2, #3/4, #1, #1 1/2 (540).\r\n#GIpipes #tubongbakal #plumbing', 685.57, 3, 665.00, NULL, 1500, 300, '2025-10-19 14:32:35', '2025-11-07 16:54:02', NULL),
(33, 2, 'GI Pipe  #1 1/2 (540)', 'SKU-68F4F6A48E2C4', 'Galvanized iron pipe for water lines, fences, and structural applications.\r\n#GIpipes #tubongbakal #plumbing', 1107.22, 3, 1074.00, NULL, 1200, 240, '2025-10-19 14:33:08', '2025-11-07 16:53:38', NULL),
(34, 2, 'Plain Bar 10mm', 'SKU-68F4F6BC51D6C', 'A smooth, round steel bar commonly used in construction and fabrication. Unlike deformed bars, it has no ridges, making it ideal for applications requiring easy bending, welding, or forming. Perfect for light reinforcement, grills, gates, and general structural use.', 160.42, 4, 154.00, NULL, 1200, 200, '2025-10-19 14:33:32', '2025-11-07 16:55:31', NULL),
(35, 2, 'Plain Bar 12mm', 'SKU-68F4F6D618D88', 'A smooth, round steel bar commonly used in construction and fabrication. Unlike deformed bars, it has no ridges, making it ideal for applications requiring easy bending, welding, or forming. Perfect for light reinforcement, grills, gates, and general structural use.', 208.33, 4, 200.00, NULL, 1000, 180, '2025-10-19 14:33:58', '2025-11-07 16:55:49', NULL),
(36, 2, 'Plain Bar 16mm', 'SKU-68F4F6F0906ED', 'A smooth, round steel bar commonly used in construction and fabrication. Unlike deformed bars, it has no ridges, making it ideal for applications requiring easy bending, welding, or forming. Perfect for light reinforcement, grills, gates, and general structural use.', 318.75, 4, 306.00, NULL, 800, 150, '2025-10-19 14:34:24', '2025-11-07 16:56:08', NULL),
(37, 7, 'Masonry Putty Gallon', 'SKU-68F4F73D99C95', 'Ready-to-use filler for smoothing and patching concrete or masonry surfaces before painting.\r\n#masilya #masonryputty #construction', 302.08, 4, 290.00, NULL, 250, 40, '2025-10-19 14:35:41', '2025-11-07 16:55:06', NULL),
(38, 7, 'Boysen - Quick Drying Enamel White Gallon', 'SKU-68F4F8190CE2A', 'Boysen Quick Drying Enamel, white, for wood and metal surfaces.\r\n#pintura #QDE #Boysen', 826.80, 3, 802.00, NULL, 1500, 300, '2025-10-19 14:39:21', '2025-11-07 16:47:55', NULL),
(39, 7, 'Sandpaper #100 (per feet)', 'SKU-68F4F84713A88', 'Abrasive sandpaper (#100) for smoothing wood or metal surfaces, sold per foot.\r\n #liha #sandpaper #kiskis #papel', 51.55, 3, 50.00, NULL, 1000, 200, '2025-10-19 14:40:07', '2025-11-07 16:56:33', NULL),
(40, 8, 'Tamsi #300', 'SKU-68F4F932C1564', 'Small plastic tie / plastic strap used for tying, bundling, or fastening.               \r\n#tamsi #pantali #plastictie #plasticstrap #pantali', 412.37, 3, 400.00, NULL, 200, 40, '2025-10-19 14:44:02', '2025-11-07 16:57:53', NULL),
(41, 8, 'Stikwel', 'SKU-68F4F9C5B42E8', 'Strong construction adhesive for bonding wood, concrete, tiles, and other materials.\r\n#pandikit #Stikwel #constructionadhesive', 721.65, 3, 700.00, NULL, 250, 50, '2025-10-19 14:46:29', '2025-11-07 16:57:25', NULL),
(43, 8, 'Sealant', 'SKU-68F4FF99105E0', 'Multipurpose sealing compound for filling gaps and preventing leaks in construction joints.\r\n#sealant #construction #tagas', 206.19, 3, 200.00, NULL, 300, 60, '2025-10-19 15:11:21', '2025-11-07 16:57:01', NULL),
(44, 2, 'Angle Bar  3.5mm x 1', 'SKU-68F501530CD8E', 'L-shaped steel bar for structural supports, brackets, and framing.', 317.53, 3, 308.00, NULL, 1000, 200, '2025-10-19 15:18:43', '2025-11-07 16:43:49', NULL),
(46, 7, 'Davies Sun & Rain – Choco Brown 4Liters', 'SKU-690DCD6F8BECA', 'DAVIES® Sun & Rain’s 100% Acrylic Technology.\r\nProtects your home from all these weather elements. Provides 2X Dirt Pick-up Resistance that makes your walls look brighter and cleaner for a longer period of time. You will experience virtually no paint odor before and after painting. Safe for you and your family.', 720.00, 3, 698.40, NULL, 100, 20, '2025-10-19 18:43:59', '2025-11-07 19:13:41', NULL),
(47, 7, 'Davies Sun & Rain – Winter Morning 1Liter', 'SKU-690DD12AB5B3F', 'DAVIES® Sun & Rain’s 100% Acrylic Technology. \r\nProtects your home from all these weather elements. Provides 2X Dirt Pick-up Resistance that makes your walls look brighter and cleaner for a longer period of time. You will experience virtually no paint odor before and after painting. Safe for you and your family.', 350.00, 3, 339.50, NULL, 100, 20, '2025-10-19 18:59:54', '2025-11-07 19:15:57', NULL),
(48, 7, 'Davies Sun & Rain – Black 4Liter', 'SKU-690DD1E89A4AF', 'DAVIES® Sun & Rain’s 100% Acrylic Technology. \r\nProtects your home from all these weather elements. Provides 2X Dirt Pick-up Resistance that makes your walls look brighter and cleaner for a longer period of time. You will experience virtually no paint odor before and after painting. Safe for you and your family.', 655.00, 3, 635.35, NULL, 100, 20, '2025-10-19 19:03:04', '2025-11-07 19:12:15', NULL),
(49, 7, 'Davies Sun & Rain – Choco Brown 1Liter', 'SKU-690DD2736A487', 'DAVIES® Sun & Rain’s 100% Acrylic Technology.\r\nProtects your home from all these weather elements. Provides 2X Dirt Pick-up Resistance that makes your walls look brighter and cleaner for a longer period of time. You will experience virtually no paint odor before and after painting. Safe for you and your family.', 310.00, 3, 300.70, NULL, 100, 20, '2025-10-19 19:05:23', '2025-11-07 19:13:28', NULL),
(50, 7, 'Davies Sun & Rain – Black 1Liter', 'SKU-690DD2A1D929B', 'DAVIES® Sun & Rain’s 100% Acrylic Technology \r\nProtects your home from all these weather elements. Provides 2X Dirt Pick-up Resistance that makes your walls look brighter and cleaner for a longer period of time. You will experience virtually no paint odor before and after painting. Safe for you and your family.', 350.00, 3, 339.50, NULL, 100, 20, '2025-10-19 19:06:09', '2025-11-07 21:08:51', NULL),
(51, 4, 'Long-Span Red - 8Ft', 'SKU-690DE2DA061ED', 'Durable 13ft Long Span Roofing Sheet — perfect for homes, warehouses, and other structures! 💪 Made with high-quality materials for long-lasting protection against heat and rain while giving your roof a sleek, clean look. 🏠✨', 900.00, 5, 855.00, NULL, 200, 20, '2025-10-19 20:15:22', '2025-11-07 20:44:09', NULL),
(52, 4, 'Long-Span Blue - 20Ft', 'SKU-690DE3A022C07', 'Durable 20ft Long Span Roofing Sheet — perfect for homes, warehouses, and other structures! 💪 Made with high-quality materials for long-lasting protection against heat and rain while giving your roof a sleek, clean look. 🏠✨', 1700.00, 5, 1615.00, NULL, 200, 20, '2025-10-19 20:18:40', '2025-11-07 20:19:12', NULL),
(53, 4, 'Long-Span Blue - 12Ft', 'SKU-690DEAFFC2D3C', 'Durable 13ft Long Span Roofing Sheet — perfect for homes, warehouses, and other structures! 💪 Made with high-quality materials for long-lasting protection against heat and rain while giving your roof a sleek, clean look. 🏠✨', 1100.00, 5, 1045.00, NULL, 200, 20, '2025-10-19 20:50:07', '2025-11-07 20:55:45', NULL),
(54, 4, 'Long-Span Blue - 8Ft', 'SKU-690DEB2E7289D', 'Durable 13ft Long Span Roofing Sheet — perfect for homes, warehouses, and other structures! 💪 Made with high-quality materials for long-lasting protection against heat and rain while giving your roof a sleek, clean look. 🏠✨', 900.00, 5, 855.00, NULL, 200, 20, '2025-10-19 20:50:54', '2025-11-07 20:55:57', NULL),
(55, 4, 'Long-Span Red - 20Ft', 'SKU-690DEB63B5ED2', 'Durable 13ft Long Span Roofing Sheet — perfect for homes, warehouses, and other structures! 💪 Made with high-quality materials for long-lasting protection against heat and rain while giving your roof a sleek, clean look. 🏠✨', 1700.00, 5, 1615.00, NULL, 200, 20, '2025-10-19 20:51:47', '2025-11-07 20:56:18', NULL),
(56, 4, 'Long-Span Red - 12Ft', 'SKU-690DEBA470E28', 'Durable 13ft Long Span Roofing Sheet — perfect for homes, warehouses, and other structures! 💪 Made with high-quality materials for long-lasting protection against heat and rain while giving your roof a sleek, clean look. 🏠✨', 1100.00, 5, 1045.00, NULL, 200, 20, '2025-10-19 20:52:52', '2025-11-07 20:56:08', NULL),
(57, 8, 'Amerilock Door Lock Set - Handle Style', 'SKU-690DF312371EB', 'Introducing the Amerilock Durable Stainless Steel Door Knob Lock Set! 🏠🔒  Key Features: - Durable Stainless Steel: Built to last, this lock set ensures enhanced security and longevity for your doors. - Adjustable Backset: Fits doors with a thickness of 1 3/8\" to 1 3/4\" and offers adjustable backsets of 2 3/8\" or 2 3/4\" for versatile installation. - Easy Installation: Designed for hassle-free setup, making it a perfect choice for both home and commercial use.', 350.00, 5, 332.50, NULL, 100, 20, '2025-10-19 21:24:34', '2025-11-07 21:26:35', NULL),
(58, 8, 'Amerilock Door Lock Set - Silver Round', 'SKU-690DF3BCC784E', 'Introducing the Amerilock Durable Stainless Steel Door Knob Lock Set! 🏠🔒  Key Features: - Durable Stainless Steel: Built to last, this lock set ensures enhanced security and longevity for your doors. - Adjustable Backset: Fits doors with a thickness of 1 3/8\" to 1 3/4\" and offers adjustable backsets of 2 3/8\" or 2 3/4\" for versatile installation. - Easy Installation: Designed for hassle-free setup, making it a perfect choice for both home and commercial use.', 250.00, 3, 242.50, NULL, 100, 20, '2025-10-19 21:27:24', '2025-11-07 21:29:16', NULL),
(59, 8, 'Amerilock Door Lock Set - Silver', 'SKU-690DF45C66FD6', 'Introducing the Amerilock Durable Stainless Steel Door Knob Lock Set! 🏠🔒  Key Features: - Durable Stainless Steel: Built to last, this lock set ensures enhanced security and longevity for your doors. - Adjustable Backset: Fits doors with a thickness of 1 3/8\" to 1 3/4\" and offers adjustable backsets of 2 3/8\" or 2 3/4\" for versatile installation. - Easy Installation: Designed for hassle-free setup, making it a perfect choice for both home and commercial use.', 250.00, 3, 242.50, NULL, 100, 20, '2025-10-19 21:30:04', '2025-11-07 21:30:15', NULL),
(60, 4, 'Insulation Foam Double Sided 5mm - 3 meters', 'SKU-690DF7CFDCF3B', 'Insulation Foam Double Sided Polyethylene PE Foam Wrap — available in 5mm thickness and sold per meter. 🏠 Perfect for roof, wall, floor, and air duct insulation, it’s made from high-quality polyethylene foam that’s flexible, durable, foil-laminated, adhesive-backed, and fire-retardant — providing excellent heat protection and energy efficiency!', 180.00, 4, 172.80, NULL, 100, 20, '2025-10-19 21:44:47', '2025-11-07 21:52:47', NULL),
(61, 1, 'Eagle Cement - 40kg', 'SKU-690E025D00AF0', 'Eagle Cement delivers reliable quality and flexibility, allowing engineers to adjust concrete properties based on their specific strength and workability needs. Perfect for normal to high-strength and high-performance concrete applications, ensuring durability and superior construction results.', 210.00, 5, 199.50, NULL, 1000, 20, '2025-10-19 22:29:49', '2025-11-07 22:30:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `main_image_path` text DEFAULT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `main_image_path`, `is_main`, `created_at`, `updated_at`) VALUES
(27, 44, 'assets/upload/products/1760889230_I-00016.jpg', NULL, 1, '2025-10-19 15:53:50', '2025-11-07 16:43:49'),
(28, 29, 'assets/upload/products/1760889243_I-00017.jpg', NULL, 1, '2025-10-19 15:54:03', '2025-11-07 16:44:35'),
(29, 28, 'assets/upload/products/1760889303_I-00011-300x300.jpg', NULL, 1, '2025-10-19 15:55:03', '2025-11-07 16:46:13'),
(30, 27, 'assets/upload/products/1760889419_ed806276a74fb70c75a393ce9957a85e.jpg', NULL, 1, '2025-10-19 15:56:59', '2025-11-07 16:45:21'),
(31, 38, 'assets/upload/products/1760889493_B00600P.jpg', NULL, 1, '2025-10-19 15:58:13', '2025-11-07 16:47:55'),
(32, 21, 'assets/upload/products/1760889535_1df5bd0ae77b96254c215a5bd71a5457.png_720x720q80.png', NULL, 1, '2025-10-19 15:58:55', '2025-11-07 16:49:48'),
(33, 22, 'assets/upload/products/1760889586_41kRW2JX6PL.jpg', NULL, 1, '2025-10-19 15:59:46', '2025-11-07 16:50:15'),
(34, 23, 'assets/upload/products/1760889628_41sKyajcviL._UF1000,1000_QL80_.jpg', NULL, 1, '2025-10-19 16:00:28', '2025-11-07 16:50:41'),
(35, 19, 'assets/upload/products/1760889726_Mild-Steel-Deformed-Bars.jpg', NULL, 1, '2025-10-19 16:02:06', '2025-11-07 16:48:25'),
(36, 16, 'assets/upload/products/1760889757_reinforcing-bar-for-concrete.jpg', NULL, 1, '2025-10-19 16:02:37', '2025-11-07 16:48:48'),
(37, 20, 'assets/upload/products/1760889882_1642047908.1280.1280__16099.1642047967.1280.1280__95249.jpg', NULL, 1, '2025-10-19 16:04:42', '2025-11-07 16:51:05'),
(38, 26, 'assets/upload/products/1760889978_stainless-steel-flat-bar.jpg', NULL, 1, '2025-10-19 16:06:18', '2025-11-07 16:51:24'),
(39, 24, 'assets/upload/products/1760890127_stainless-steel-flat-bar (1).jpg', NULL, 1, '2025-10-19 16:08:47', '2025-11-07 16:51:48'),
(40, 25, 'assets/upload/products/1760890190_hero-flats-1.jpg', NULL, 1, '2025-10-19 16:09:50', '2025-11-07 16:52:16'),
(41, 17, 'assets/upload/products/1760890326_538186966_1218655416950914_5330574923170834165_n.jpg', NULL, 1, '2025-10-19 16:12:06', '2025-11-07 16:52:47'),
(42, 33, 'assets/upload/products/1760890459_I-00916.jpg', NULL, 1, '2025-10-19 16:14:19', '2025-11-07 16:53:38'),
(43, 31, 'assets/upload/products/1760890595_132_500_500.jpg', NULL, 1, '2025-10-19 16:16:35', '2025-11-07 16:54:46'),
(44, 30, 'assets/upload/products/1760890633_galvanized_iron_gi_pipe_12.jpg', NULL, 1, '2025-10-19 16:17:13', '2025-11-07 16:54:26'),
(45, 32, 'assets/upload/products/1760890837_127_500_500.jpg', NULL, 1, '2025-10-19 16:20:37', '2025-11-07 16:54:02'),
(46, 37, 'assets/upload/products/1760890914_2a5aab0347aeaa80b6f7e44528664c1d.jpg_720x720q80.jpg', NULL, 1, '2025-10-19 16:21:54', '2025-11-07 16:55:06'),
(47, 34, 'assets/upload/products/1760891078_prb.jpg', NULL, 1, '2025-10-19 16:24:38', '2025-11-07 16:55:31'),
(48, 35, 'assets/upload/products/1760891269_666b924413303836b27cb6910bebc3f5.jpg', NULL, 1, '2025-10-19 16:27:49', '2025-11-07 16:55:49'),
(49, 36, 'assets/upload/products/1760891410_503505533_1314601540673020_4323229523660663356_n.jpg', NULL, 1, '2025-10-19 16:30:10', '2025-11-07 16:56:08'),
(50, 39, 'assets/upload/products/1760891463_71iGm9P9zKL._AC_SL1200_.jpg', NULL, 1, '2025-10-19 16:31:03', '2025-11-07 16:56:33'),
(51, 43, 'assets/upload/products/1760891636_ph-11134207-7r990-lmzj6m7i39ip77.jpg', NULL, 1, '2025-10-19 16:33:56', '2025-11-07 16:57:01'),
(52, 41, 'assets/upload/products/1760891693_HW0945.jpg', NULL, 1, '2025-10-19 16:34:53', '2025-11-07 16:57:25'),
(53, 40, 'assets/upload/products/1760891781_ph-11134207-7ras8-m53qu05az4we1b.jpg', NULL, 1, '2025-10-19 16:36:21', '2025-11-07 16:57:53'),
(54, 18, 'assets/upload/products/1760891820_BMTIEWIRE1633KL.jpg', NULL, 1, '2025-10-19 16:37:00', '2025-11-07 16:58:12'),
(56, 46, 'assets/upload/products/1762512239_Choco.png', NULL, 1, '2025-11-07 18:43:59', '2025-11-07 19:13:41'),
(57, 46, 'assets/upload/products/1762512239_Picture2.jpg', NULL, 0, '2025-11-07 18:43:59', '2025-11-07 19:13:41'),
(62, 49, 'assets/upload/products/1762513523_Picture1.jpg', NULL, 0, '2025-11-07 19:05:23', '2025-11-07 19:13:28'),
(63, 49, 'assets/upload/products/1762513523_Picture2.jpg', NULL, 1, '2025-11-07 19:05:23', '2025-11-07 19:13:28'),
(68, 48, 'assets/upload/products/1762513989_Black.jpg', NULL, 0, '2025-11-07 19:13:09', '2025-11-07 19:13:09'),
(69, 48, 'assets/upload/products/1762513989_Picture2.jpg', NULL, 1, '2025-11-07 19:13:09', '2025-11-07 19:13:09'),
(70, 47, 'assets/upload/products/1762514157_Picture2.jpg', NULL, 0, '2025-11-07 19:15:57', '2025-11-07 19:15:57'),
(71, 47, 'assets/upload/products/1762514157_Picture1.jpg', NULL, 1, '2025-11-07 19:15:57', '2025-11-07 19:15:57'),
(73, 52, 'assets/upload/products/1762517920_Longspan.webp', NULL, 1, '2025-11-07 20:18:40', '2025-11-07 20:19:12'),
(77, 51, 'assets/upload/products/1762519449_REd.webp', NULL, 1, '2025-11-07 20:44:09', '2025-11-07 20:44:09'),
(78, 53, 'assets/upload/products/1762519807_Longspan.webp', NULL, 1, '2025-11-07 20:50:07', '2025-11-07 20:55:45'),
(79, 54, 'assets/upload/products/1762519854_Longspan.webp', NULL, 1, '2025-11-07 20:50:54', '2025-11-07 20:55:57'),
(80, 55, 'assets/upload/products/1762519907_REd.webp', NULL, 1, '2025-11-07 20:51:47', '2025-11-07 20:56:18'),
(81, 56, 'assets/upload/products/1762519972_REd.webp', NULL, 1, '2025-11-07 20:52:52', '2025-11-07 20:56:08'),
(89, 50, 'assets/upload/products/1762520931_Picture3.jpg', NULL, 0, '2025-11-07 21:08:51', '2025-11-07 21:08:51'),
(91, 57, 'assets/upload/products/1762521995_style4.png', NULL, 1, '2025-11-07 21:26:35', '2025-11-07 21:26:35'),
(94, 58, 'assets/upload/products/1762522156_style2.png', NULL, 1, '2025-11-07 21:29:16', '2025-11-07 21:29:16'),
(95, 59, 'assets/upload/products/1762522204_style3.png', NULL, 1, '2025-11-07 21:30:04', '2025-11-07 21:30:15'),
(97, 60, 'assets/upload/products/1762523567_insulation.webp', NULL, 1, '2025-11-07 21:52:47', '2025-11-07 21:52:47'),
(98, 61, 'assets/upload/products/1762525789_I-BAG-OF-EAGLE-CEMENT.jpg', NULL, 1, '2025-11-07 22:29:49', '2025-11-07 22:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL COMMENT '1 to 5 stars',
  `review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(4, 16, 43, 5, 'Maganda ang kalidad at pulido ang pagkakagawa ng mga bakal!', '2025-11-07 21:51:53', '2025-11-07 21:51:53'),
(5, 19, 43, 5, 'Matibay at pareho ang haba. Siguradong tatagal ang pag gagamitan nito.', '2025-11-07 21:51:53', '2025-11-07 21:51:53'),
(6, 39, 43, 5, 'Mabisa! Nakakatulong talaga sa pagpapakinis ng kahoy at bakal. Mura pero de-kalidad.', '2025-11-07 21:51:53', '2025-11-07 21:51:53'),
(7, 41, 43, 5, 'Sobrang lakas ng kapit! Ito talaga ang pinakamagandang pandikit para sa mga kahoy. Recommended!', '2025-11-07 21:51:53', '2025-11-07 21:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `pr_reserve_stocks`
--

CREATE TABLE `pr_reserve_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pr_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Purchase Request ID',
  `product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Product ID',
  `qty` int(11) NOT NULL DEFAULT 0 COMMENT 'Reserved Quantity',
  `status` enum('pending','approved','cancelled','returned','completed') NOT NULL DEFAULT 'pending' COMMENT 'Reserve stock status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pr_reserve_stocks`
--

INSERT INTO `pr_reserve_stocks` (`id`, `pr_id`, `product_id`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(9, 36, 19, 100, 'completed', '2025-11-07 17:39:03', '2025-11-07 17:58:13'),
(10, 36, 20, 50, 'approved', '2025-11-07 17:39:03', '2025-11-07 17:41:00'),
(11, 36, 26, 20, 'approved', '2025-11-07 17:39:03', '2025-11-07 17:41:00'),
(12, 36, 25, 10, 'approved', '2025-11-07 17:39:03', '2025-11-07 17:41:00'),
(13, 36, 24, 20, 'approved', '2025-11-07 17:39:03', '2025-11-07 17:41:00'),
(14, 36, 30, 10, 'approved', '2025-11-07 17:39:03', '2025-11-07 17:41:00'),
(15, 36, 29, 40, 'approved', '2025-11-07 17:39:03', '2025-11-07 17:41:00'),
(16, 36, 34, 50, 'approved', '2025-11-07 17:39:03', '2025-11-07 17:41:00'),
(17, 37, 44, 50, 'completed', '2025-11-07 18:33:38', '2025-11-07 18:42:43'),
(18, 37, 38, 20, 'approved', '2025-11-07 18:33:38', '2025-11-07 18:33:52'),
(19, 37, 17, 100, 'approved', '2025-11-07 18:33:38', '2025-11-07 18:33:52'),
(20, 37, 19, 30, 'approved', '2025-11-07 18:33:38', '2025-11-07 18:33:52'),
(21, 37, 16, 50, 'approved', '2025-11-07 18:33:38', '2025-11-07 18:33:52'),
(22, 38, 17, 200, 'completed', '2025-11-07 19:22:43', '2025-11-07 19:27:02'),
(23, 38, 20, 100, 'approved', '2025-11-07 19:22:43', '2025-11-07 19:23:17'),
(24, 38, 16, 100, 'approved', '2025-11-07 19:22:43', '2025-11-07 19:23:17'),
(25, 38, 25, 50, 'approved', '2025-11-07 19:22:43', '2025-11-07 19:23:17'),
(26, 38, 24, 50, 'approved', '2025-11-07 19:22:43', '2025-11-07 19:23:17'),
(27, 38, 31, 50, 'approved', '2025-11-07 19:22:43', '2025-11-07 19:23:17'),
(28, 38, 30, 20, 'approved', '2025-11-07 19:22:43', '2025-11-07 19:23:17'),
(29, 38, 26, 30, 'approved', '2025-11-07 19:22:43', '2025-11-07 19:23:17'),
(30, 39, 16, 100, 'completed', '2025-11-07 20:16:57', '2025-11-07 20:18:35'),
(31, 40, 16, 50, 'pending', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(32, 40, 19, 20, 'pending', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(33, 40, 20, 20, 'pending', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(34, 40, 24, 50, 'pending', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(35, 40, 25, 40, 'pending', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(36, 40, 28, 40, 'pending', '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(37, 41, 16, 50, 'completed', '2025-11-07 20:28:24', '2025-11-07 20:32:09'),
(38, 41, 19, 30, 'approved', '2025-11-07 20:28:24', '2025-11-07 20:28:52'),
(39, 41, 20, 20, 'approved', '2025-11-07 20:28:24', '2025-11-07 20:28:52'),
(40, 41, 26, 20, 'approved', '2025-11-07 20:28:24', '2025-11-07 20:28:52'),
(41, 41, 25, 10, 'approved', '2025-11-07 20:28:24', '2025-11-07 20:28:52'),
(42, 41, 24, 10, 'approved', '2025-11-07 20:28:24', '2025-11-07 20:28:52'),
(43, 41, 28, 60, 'approved', '2025-11-07 20:28:24', '2025-11-07 20:28:52'),
(44, 42, 20, 100, 'completed', '2025-11-07 20:37:30', '2025-11-07 20:55:06'),
(45, 42, 19, 100, 'approved', '2025-11-07 20:37:30', '2025-11-07 20:43:27'),
(46, 42, 24, 50, 'approved', '2025-11-07 20:37:30', '2025-11-07 20:43:27'),
(47, 42, 26, 50, 'approved', '2025-11-07 20:37:30', '2025-11-07 20:43:27'),
(48, 42, 25, 50, 'approved', '2025-11-07 20:37:30', '2025-11-07 20:43:27'),
(49, 43, 17, 250, 'completed', '2025-11-07 20:44:59', '2025-11-07 20:47:43'),
(50, 43, 29, 10, 'approved', '2025-11-07 20:44:59', '2025-11-07 20:45:17'),
(51, 43, 32, 20, 'approved', '2025-11-07 20:44:59', '2025-11-07 20:45:17'),
(52, 43, 34, 20, 'approved', '2025-11-07 20:44:59', '2025-11-07 20:45:17'),
(53, 44, 18, 100, 'completed', '2025-11-07 21:17:01', '2025-11-07 21:24:20'),
(54, 44, 21, 10, 'approved', '2025-11-07 21:17:01', '2025-11-07 21:17:17'),
(55, 44, 22, 10, 'approved', '2025-11-07 21:17:01', '2025-11-07 21:17:17'),
(56, 44, 17, 50, 'approved', '2025-11-07 21:17:01', '2025-11-07 21:17:17'),
(57, 44, 27, 20, 'approved', '2025-11-07 21:17:01', '2025-11-07 21:17:17'),
(58, 45, 16, 20, 'completed', '2025-11-07 21:40:03', '2025-11-07 21:41:24'),
(59, 45, 19, 20, 'approved', '2025-11-07 21:40:03', '2025-11-07 21:40:22'),
(60, 45, 39, 20, 'approved', '2025-11-07 21:40:03', '2025-11-07 21:40:22'),
(61, 45, 41, 10, 'approved', '2025-11-07 21:40:03', '2025-11-07 21:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_requests`
--

CREATE TABLE `purchase_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_uuid` varchar(20) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `prepared_by_id` int(11) DEFAULT NULL,
  `status` enum('pending','quotation_sent','po_submitted','so_created','delivery_in_progress','delivered','invoice_sent','cancelled','returned','refunded','reject_quotation') DEFAULT NULL,
  `vat` int(11) DEFAULT 12,
  `b2b_delivery_date` date DEFAULT NULL,
  `delivery_fee` decimal(10,2) DEFAULT NULL,
  `credit` int(1) NOT NULL DEFAULT 0,
  `credit_amount` decimal(10,2) DEFAULT NULL,
  `credit_payment_type` varchar(20) DEFAULT NULL,
  `payment_method` enum('pay_now','pay_later') DEFAULT NULL,
  `cod_flg` tinyint(1) NOT NULL DEFAULT 0,
  `pr_remarks` text DEFAULT NULL,
  `pr_remarks_cancel` text DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_requests`
--

INSERT INTO `purchase_requests` (`id`, `transaction_uuid`, `customer_id`, `prepared_by_id`, `status`, `vat`, `b2b_delivery_date`, `delivery_fee`, `credit`, `credit_amount`, `credit_payment_type`, `payment_method`, `cod_flg`, `pr_remarks`, `pr_remarks_cancel`, `date_issued`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, NULL, 40, 27, 'invoice_sent', 12, NULL, 1000.00, 1, 82827.20, 'Partial Payment', 'pay_later', 0, NULL, NULL, '2025-11-07', '2025-11-07 20:27:41', '2025-11-07 20:32:32', NULL),
(42, NULL, 41, 27, 'invoice_sent', 12, NULL, 1000.00, 1, 101380.00, 'Partial Payment', 'pay_later', 0, NULL, NULL, '2025-11-07', '2025-11-07 20:32:44', '2025-11-07 20:55:18', NULL),
(43, NULL, 39, 27, 'invoice_sent', 12, NULL, 2500.00, 1, 85178.40, 'Straight Payment', 'pay_later', 0, NULL, NULL, '2025-11-07', '2025-11-07 20:43:57', '2025-11-07 20:48:12', NULL),
(44, NULL, 42, 27, 'invoice_sent', 12, NULL, 1500.00, 1, 39647.20, 'Straight Payment', 'pay_later', 0, NULL, NULL, '2025-11-07', '2025-11-07 21:16:14', '2025-11-07 21:24:29', NULL),
(45, NULL, 43, 27, 'invoice_sent', 12, NULL, 1500.00, 0, NULL, NULL, 'pay_now', 1, NULL, NULL, '2025-11-07', '2025-11-07 21:34:58', '2025-11-07 22:52:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request_items`
--

CREATE TABLE `purchase_request_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_request_items`
--

INSERT INTO `purchase_request_items` (`id`, `purchase_request_id`, `product_id`, `quantity`, `unit_price`, `subtotal`, `created_at`, `updated_at`) VALUES
(65, 41, 16, 50, 194.00, 9700.00, '2025-11-07 20:27:41', '2025-11-07 20:28:24'),
(66, 41, 19, 30, 136.00, 4080.00, '2025-11-07 20:27:44', '2025-11-07 20:28:24'),
(67, 41, 20, 20, 341.00, 6820.00, '2025-11-07 20:27:48', '2025-11-07 20:28:24'),
(68, 41, 26, 20, 417.50, 8350.00, '2025-11-07 20:27:53', '2025-11-07 20:28:24'),
(69, 41, 25, 10, 264.00, 2640.00, '2025-11-07 20:27:56', '2025-11-07 20:28:24'),
(70, 41, 24, 10, 157.00, 1570.00, '2025-11-07 20:27:59', '2025-11-07 20:28:24'),
(71, 41, 28, 60, 665.00, 39900.00, '2025-11-07 20:28:08', '2025-11-07 20:28:24'),
(72, 42, 20, 100, 341.00, 34100.00, '2025-11-07 20:32:44', '2025-11-07 20:37:30'),
(73, 42, 19, 100, 136.00, 13600.00, '2025-11-07 20:32:53', '2025-11-07 20:37:30'),
(74, 42, 24, 50, 157.00, 7850.00, '2025-11-07 20:33:08', '2025-11-07 20:37:30'),
(75, 42, 26, 50, 417.50, 20875.00, '2025-11-07 20:33:22', '2025-11-07 20:37:30'),
(76, 42, 25, 50, 264.00, 13200.00, '2025-11-07 20:33:30', '2025-11-07 20:37:30'),
(77, 43, 17, 250, 210.00, 52500.00, '2025-11-07 20:43:57', '2025-11-07 20:44:59'),
(78, 43, 29, 10, 494.00, 4940.00, '2025-11-07 20:44:19', '2025-11-07 20:44:59'),
(79, 43, 32, 20, 665.00, 13300.00, '2025-11-07 20:44:31', '2025-11-07 20:44:59'),
(80, 43, 34, 20, 154.00, 3080.00, '2025-11-07 20:44:34', '2025-11-07 20:44:59'),
(81, 44, 18, 100, 95.00, 9500.00, '2025-11-07 21:16:14', '2025-11-07 21:17:01'),
(82, 44, 21, 10, 81.00, 810.00, '2025-11-07 21:16:25', '2025-11-07 21:17:01'),
(83, 44, 22, 10, 79.00, 790.00, '2025-11-07 21:16:33', '2025-11-07 21:17:01'),
(84, 44, 17, 50, 210.00, 10500.00, '2025-11-07 21:16:36', '2025-11-07 21:17:01'),
(85, 44, 27, 20, 623.00, 12460.00, '2025-11-07 21:16:48', '2025-11-07 21:17:01'),
(86, 45, 16, 20, 194.00, 3880.00, '2025-11-07 21:34:58', '2025-11-07 21:40:03'),
(87, 45, 19, 20, 136.00, 2720.00, '2025-11-07 21:35:04', '2025-11-07 21:40:03'),
(88, 45, 39, 20, 50.00, 1000.00, '2025-11-07 21:35:32', '2025-11-07 21:40:03'),
(89, 45, 41, 10, 700.00, 7000.00, '2025-11-07 21:35:43', '2025-11-07 21:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request_refunds`
--

CREATE TABLE `purchase_request_refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_item_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `admin_response` text DEFAULT NULL,
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request_returns`
--

CREATE TABLE `purchase_request_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_item_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `admin_response` text DEFAULT NULL,
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_batches`
--

CREATE TABLE `stock_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `remaining_quantity` int(11) NOT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `received_date` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `batch` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_batches`
--

INSERT INTO `stock_batches` (`id`, `product_id`, `inventory_id`, `quantity`, `remaining_quantity`, `cost_price`, `received_date`, `expiry_date`, `note`, `batch`, `created_at`, `updated_at`) VALUES
(64, 21, 16, 1000, 990, 83.51, '2025-11-07 16:59:03', NULL, 'restock', 1, '2025-11-07 16:59:03', '2025-11-07 21:17:01'),
(65, 21, 17, 1000, 1000, 83.51, '2025-11-07 16:59:13', NULL, 'restock', 2, '2025-11-07 16:59:13', '2025-11-07 16:59:13'),
(66, 22, 18, 1000, 990, 81.44, '2025-11-07 16:59:43', NULL, 'restock', 1, '2025-11-07 16:59:43', '2025-11-07 21:17:01'),
(67, 22, 19, 500, 500, 81.44, '2025-11-07 16:59:52', NULL, 'restock', 2, '2025-11-07 16:59:52', '2025-11-07 16:59:52'),
(68, 23, 20, 200, 200, 80.41, '2025-11-07 17:00:18', NULL, 'restock', 1, '2025-11-07 17:00:18', '2025-11-07 17:00:18'),
(69, 23, 21, 800, 800, 80.41, '2025-11-07 17:00:29', NULL, 'restock', 2, '2025-11-07 17:00:29', '2025-11-07 17:00:29'),
(70, 16, 22, 2000, 1630, 204.21, '2025-11-07 17:01:21', NULL, 'restock', 1, '2025-11-07 17:01:21', '2025-11-07 21:40:03'),
(71, 16, 23, 1000, 1000, 204.21, '2025-11-07 17:01:29', NULL, 'restock', 2, '2025-11-07 17:01:29', '2025-11-07 17:01:29'),
(72, 16, 24, 1000, 1000, 204.21, '2025-11-07 17:01:37', NULL, 'restock', 3, '2025-11-07 17:01:37', '2025-11-07 17:01:37'),
(73, 24, 25, 500, 320, 165.26, '2025-11-07 17:01:58', NULL, 'restock', 1, '2025-11-07 17:01:58', '2025-11-07 20:37:30'),
(74, 24, 26, 1000, 1000, 165.26, '2025-11-07 17:02:08', NULL, 'restock', 2, '2025-11-07 17:02:08', '2025-11-07 17:02:08'),
(75, 25, 27, 1000, 840, 277.89, '2025-11-07 17:02:26', NULL, 'restock', 1, '2025-11-07 17:02:26', '2025-11-07 20:37:30'),
(76, 25, 28, 500, 500, 277.89, '2025-11-07 17:02:37', NULL, 'restock', 2, '2025-11-07 17:02:37', '2025-11-07 17:02:37'),
(77, 26, 29, 1000, 880, 439.47, '2025-11-07 17:02:51', NULL, 'restock', 1, '2025-11-07 17:02:51', '2025-11-07 20:37:30'),
(78, 26, 30, 1000, 1000, 439.47, '2025-11-07 17:02:59', NULL, 'restock', 2, '2025-11-07 17:02:59', '2025-11-07 17:02:59'),
(79, 17, 31, 1000, 400, 221.05, '2025-11-07 17:03:24', NULL, 'restock', 1, '2025-11-07 17:03:24', '2025-11-07 21:17:01'),
(80, 17, 32, 1000, 1000, 221.05, '2025-11-07 17:03:32', NULL, 'restock', 2, '2025-11-07 17:03:32', '2025-11-07 17:03:32'),
(81, 17, 33, 500, 500, 221.05, '2025-11-07 17:03:46', NULL, 'restock', 3, '2025-11-07 17:03:46', '2025-11-07 17:03:46'),
(82, 17, 34, 250, 250, 221.05, '2025-11-07 17:03:57', NULL, 'restock', 4, '2025-11-07 17:03:57', '2025-11-07 17:03:57'),
(83, 17, 35, 250, 250, 221.05, '2025-11-07 17:04:05', NULL, 'restock', 5, '2025-11-07 17:04:05', '2025-11-07 17:04:05'),
(84, 19, 36, 1000, 700, 143.16, '2025-11-07 17:04:42', NULL, 'restock', 1, '2025-11-07 17:04:42', '2025-11-07 21:40:03'),
(85, 19, 37, 2000, 2000, 143.16, '2025-11-07 17:05:04', NULL, 'restock', 2, '2025-11-07 17:05:04', '2025-11-07 17:05:04'),
(86, 19, 38, 2000, 2000, 143.16, '2025-11-07 17:05:13', NULL, 'restock', 3, '2025-11-07 17:05:13', '2025-11-07 17:05:13'),
(87, 20, 39, 1000, 710, 358.95, '2025-11-07 17:05:27', NULL, 'restock', 1, '2025-11-07 17:05:27', '2025-11-07 20:37:30'),
(89, 27, 41, 500, 480, 642.27, '2025-11-07 17:06:12', NULL, 'restock', 1, '2025-11-07 17:06:12', '2025-11-07 21:17:01'),
(90, 27, 42, 500, 500, 642.27, '2025-11-07 17:06:22', NULL, 'restock', 2, '2025-11-07 17:06:22', '2025-11-07 17:06:22'),
(91, 27, 43, 500, 500, 642.27, '2025-11-07 17:06:33', NULL, 'restock', 3, '2025-11-07 17:06:33', '2025-11-07 17:06:33'),
(92, 27, 44, 500, 500, 642.27, '2025-11-07 17:06:46', NULL, 'restock', 4, '2025-11-07 17:06:46', '2025-11-07 17:06:46'),
(93, 28, 45, 350, 250, 692.71, '2025-11-07 17:07:17', NULL, 'restock', 1, '2025-11-07 17:07:17', '2025-11-07 20:28:24'),
(94, 28, 46, 350, 350, 692.71, '2025-11-07 17:07:25', NULL, 'restock', 2, '2025-11-07 17:07:25', '2025-11-07 17:07:25'),
(95, 29, 47, 450, 400, 514.58, '2025-11-07 17:07:38', NULL, 'restock', 1, '2025-11-07 17:07:38', '2025-11-07 20:44:59'),
(96, 29, 48, 450, 450, 514.58, '2025-11-07 17:07:45', NULL, 'restock', 2, '2025-11-07 17:07:45', '2025-11-07 17:07:45'),
(97, 30, 49, 2000, 1970, 353.61, '2025-11-07 17:08:11', NULL, 'restock', 1, '2025-11-07 17:08:11', '2025-11-07 19:22:43'),
(98, 31, 50, 1000, 950, 444.33, '2025-11-07 17:08:23', NULL, 'restock', 1, '2025-11-07 17:08:23', '2025-11-07 19:22:43'),
(99, 31, 51, 800, 800, 444.33, '2025-11-07 17:08:31', NULL, 'restock', 2, '2025-11-07 17:08:31', '2025-11-07 17:08:31'),
(100, 32, 52, 500, 480, 685.57, '2025-11-07 17:09:00', NULL, 'restock', 1, '2025-11-07 17:09:00', '2025-11-07 20:44:59'),
(101, 32, 53, 1000, 1000, 685.57, '2025-11-07 17:09:11', NULL, 'restock', 2, '2025-11-07 17:09:11', '2025-11-07 17:09:11'),
(102, 34, 54, 1200, 1130, 160.42, '2025-11-07 17:09:25', NULL, 'restock', 1, '2025-11-07 17:09:25', '2025-11-07 20:44:59'),
(103, 35, 55, 1000, 1000, 208.33, '2025-11-07 17:09:39', NULL, 'restock', 1, '2025-11-07 17:09:39', '2025-11-07 17:09:39'),
(104, 33, 56, 600, 600, 1107.22, '2025-11-07 17:10:11', NULL, 'restock', 1, '2025-11-07 17:10:11', '2025-11-07 17:10:11'),
(105, 33, 57, 600, 600, 1107.22, '2025-11-07 17:10:25', NULL, 'restock', 2, '2025-11-07 17:10:25', '2025-11-07 17:10:25'),
(106, 37, 58, 100, 100, 302.08, '2025-11-07 17:11:19', NULL, 'restock', 1, '2025-11-07 17:11:19', '2025-11-07 17:11:19'),
(107, 37, 59, 100, 100, 302.08, '2025-11-07 17:12:16', NULL, 'restock', 2, '2025-11-07 17:12:16', '2025-11-07 17:12:16'),
(108, 37, 60, 50, 50, 302.08, '2025-11-07 17:12:33', NULL, 'restock', 3, '2025-11-07 17:12:33', '2025-11-07 17:12:33'),
(109, 36, 61, 400, 400, 318.75, '2025-11-07 17:13:33', NULL, 'restock', 1, '2025-11-07 17:13:33', '2025-11-07 17:13:33'),
(110, 36, 62, 400, 400, 318.75, '2025-11-07 17:13:42', NULL, 'restock', 2, '2025-11-07 17:13:42', '2025-11-07 17:13:42'),
(111, 41, 63, 100, 90, 721.65, '2025-11-07 17:14:00', NULL, 'restock', 1, '2025-11-07 17:14:00', '2025-11-07 21:40:03'),
(112, 41, 64, 150, 150, 721.65, '2025-11-07 17:14:13', NULL, 'restock', 2, '2025-11-07 17:14:13', '2025-11-07 17:14:13'),
(113, 18, 65, 600, 500, 97.94, '2025-11-07 17:14:40', NULL, 'restock', 1, '2025-11-07 17:14:40', '2025-11-07 21:17:01'),
(114, 40, 66, 200, 200, 412.37, '2025-11-07 17:15:08', NULL, 'restock', 1, '2025-11-07 17:15:08', '2025-11-07 17:15:08'),
(115, 44, 67, 600, 550, 317.53, '2025-11-07 17:16:05', NULL, 'restock', 1, '2025-11-07 17:16:05', '2025-11-07 18:33:38'),
(116, 44, 68, 400, 400, 317.53, '2025-11-07 17:16:13', NULL, 'restock', 2, '2025-11-07 17:16:13', '2025-11-07 17:16:13'),
(117, 43, 69, 300, 300, 206.19, '2025-11-07 17:16:33', NULL, 'restock', 1, '2025-11-07 17:16:33', '2025-11-07 17:16:33'),
(118, 38, 70, 1000, 980, 826.80, '2025-11-07 17:17:22', NULL, 'restock', 1, '2025-11-07 17:17:22', '2025-11-07 18:33:38'),
(119, 38, 71, 500, 500, 826.80, '2025-11-07 17:17:33', NULL, 'restock', 2, '2025-11-07 17:17:33', '2025-11-07 17:17:33'),
(120, 39, 72, 500, 480, 51.55, '2025-11-07 17:17:57', NULL, 'restock', 1, '2025-11-07 17:17:57', '2025-11-07 21:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('in','out') DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_movements`
--

INSERT INTO `stock_movements` (`id`, `product_id`, `batch_id`, `type`, `quantity`, `reference`, `created_at`, `updated_at`) VALUES
(248, 21, 64, 'in', 1000, 'restock', '2025-11-07 16:59:03', '2025-11-07 16:59:03'),
(249, 21, 65, 'in', 1000, 'restock', '2025-11-07 16:59:13', '2025-11-07 16:59:13'),
(250, 22, 66, 'in', 1000, 'restock', '2025-11-07 16:59:43', '2025-11-07 16:59:43'),
(251, 22, 67, 'in', 500, 'restock', '2025-11-07 16:59:52', '2025-11-07 16:59:52'),
(252, 23, 68, 'in', 200, 'restock', '2025-11-07 17:00:18', '2025-11-07 17:00:18'),
(253, 23, 69, 'in', 800, 'restock', '2025-11-07 17:00:29', '2025-11-07 17:00:29'),
(254, 16, 70, 'in', 2000, 'restock', '2025-11-07 17:01:21', '2025-11-07 17:01:21'),
(255, 16, 71, 'in', 1000, 'restock', '2025-11-07 17:01:29', '2025-11-07 17:01:29'),
(256, 16, 72, 'in', 1000, 'restock', '2025-11-07 17:01:37', '2025-11-07 17:01:37'),
(257, 24, 73, 'in', 500, 'restock', '2025-11-07 17:01:58', '2025-11-07 17:01:58'),
(258, 24, 74, 'in', 1000, 'restock', '2025-11-07 17:02:08', '2025-11-07 17:02:08'),
(259, 25, 75, 'in', 1000, 'restock', '2025-11-07 17:02:26', '2025-11-07 17:02:26'),
(260, 25, 76, 'in', 500, 'restock', '2025-11-07 17:02:37', '2025-11-07 17:02:37'),
(261, 26, 77, 'in', 1000, 'restock', '2025-11-07 17:02:51', '2025-11-07 17:02:51'),
(262, 26, 78, 'in', 1000, 'restock', '2025-11-07 17:02:59', '2025-11-07 17:02:59'),
(263, 17, 79, 'in', 1000, 'restock', '2025-11-07 17:03:24', '2025-11-07 17:03:24'),
(264, 17, 80, 'in', 1000, 'restock', '2025-11-07 17:03:32', '2025-11-07 17:03:32'),
(265, 17, 81, 'in', 500, 'restock', '2025-11-07 17:03:46', '2025-11-07 17:03:46'),
(266, 17, 82, 'in', 250, 'restock', '2025-11-07 17:03:57', '2025-11-07 17:03:57'),
(267, 17, 83, 'in', 250, 'restock', '2025-11-07 17:04:05', '2025-11-07 17:04:05'),
(268, 19, 84, 'in', 1000, 'restock', '2025-11-07 17:04:42', '2025-11-07 17:04:42'),
(269, 19, 85, 'in', 2000, 'restock', '2025-11-07 17:05:04', '2025-11-07 17:05:04'),
(270, 19, 86, 'in', 2000, 'restock', '2025-11-07 17:05:13', '2025-11-07 17:05:13'),
(271, 20, 87, 'in', 1000, 'restock', '2025-11-07 17:05:27', '2025-11-07 17:05:27'),
(273, 27, 89, 'in', 500, 'restock', '2025-11-07 17:06:12', '2025-11-07 17:06:12'),
(274, 27, 90, 'in', 500, 'restock', '2025-11-07 17:06:22', '2025-11-07 17:06:22'),
(275, 27, 91, 'in', 500, 'restock', '2025-11-07 17:06:33', '2025-11-07 17:06:33'),
(276, 27, 92, 'in', 500, 'restock', '2025-11-07 17:06:46', '2025-11-07 17:06:46'),
(277, 28, 93, 'in', 350, 'restock', '2025-11-07 17:07:17', '2025-11-07 17:07:17'),
(278, 28, 94, 'in', 350, 'restock', '2025-11-07 17:07:25', '2025-11-07 17:07:25'),
(279, 29, 95, 'in', 450, 'restock', '2025-11-07 17:07:38', '2025-11-07 17:07:38'),
(280, 29, 96, 'in', 450, 'restock', '2025-11-07 17:07:45', '2025-11-07 17:07:45'),
(281, 30, 97, 'in', 2000, 'restock', '2025-11-07 17:08:11', '2025-11-07 17:08:11'),
(282, 31, 98, 'in', 1000, 'restock', '2025-11-07 17:08:23', '2025-11-07 17:08:23'),
(283, 31, 99, 'in', 800, 'restock', '2025-11-07 17:08:31', '2025-11-07 17:08:31'),
(284, 32, 100, 'in', 500, 'restock', '2025-11-07 17:09:00', '2025-11-07 17:09:00'),
(285, 32, 101, 'in', 1000, 'restock', '2025-11-07 17:09:11', '2025-11-07 17:09:11'),
(286, 34, 102, 'in', 1200, 'restock', '2025-11-07 17:09:25', '2025-11-07 17:09:25'),
(287, 35, 103, 'in', 1000, 'restock', '2025-11-07 17:09:39', '2025-11-07 17:09:39'),
(288, 33, 104, 'in', 600, 'restock', '2025-11-07 17:10:11', '2025-11-07 17:10:11'),
(289, 33, 105, 'in', 600, 'restock', '2025-11-07 17:10:25', '2025-11-07 17:10:25'),
(290, 37, 106, 'in', 100, 'restock', '2025-11-07 17:11:19', '2025-11-07 17:11:19'),
(291, 37, 107, 'in', 100, 'restock', '2025-11-07 17:12:16', '2025-11-07 17:12:16'),
(292, 37, 108, 'in', 50, 'restock', '2025-11-07 17:12:33', '2025-11-07 17:12:33'),
(293, 36, 109, 'in', 400, 'restock', '2025-11-07 17:13:33', '2025-11-07 17:13:33'),
(294, 36, 110, 'in', 400, 'restock', '2025-11-07 17:13:42', '2025-11-07 17:13:42'),
(295, 41, 111, 'in', 100, 'restock', '2025-11-07 17:14:00', '2025-11-07 17:14:00'),
(296, 41, 112, 'in', 150, 'restock', '2025-11-07 17:14:13', '2025-11-07 17:14:13'),
(297, 18, 113, 'in', 600, 'restock', '2025-11-07 17:14:40', '2025-11-07 17:14:40'),
(298, 40, 114, 'in', 200, 'restock', '2025-11-07 17:15:08', '2025-11-07 17:15:08'),
(299, 44, 115, 'in', 600, 'restock', '2025-11-07 17:16:05', '2025-11-07 17:16:05'),
(300, 44, 116, 'in', 400, 'restock', '2025-11-07 17:16:13', '2025-11-07 17:16:13'),
(301, 43, 117, 'in', 300, 'restock', '2025-11-07 17:16:33', '2025-11-07 17:16:33'),
(302, 38, 118, 'in', 1000, 'restock', '2025-11-07 17:17:22', '2025-11-07 17:17:22'),
(303, 38, 119, 'in', 500, 'restock', '2025-11-07 17:17:33', '2025-11-07 17:17:33'),
(304, 39, 120, 'in', 500, 'restock', '2025-11-07 17:17:57', '2025-11-07 17:17:57'),
(305, 19, 84, 'out', 100, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(306, 20, 87, 'out', 50, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(307, 26, 77, 'out', 20, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(308, 25, 75, 'out', 10, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(309, 24, 73, 'out', 20, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(310, 30, 97, 'out', 10, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(311, 29, 95, 'out', 40, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(312, 34, 102, 'out', 50, NULL, '2025-11-07 17:39:03', '2025-11-07 17:39:03'),
(313, 44, 115, 'out', 50, NULL, '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(314, 38, 118, 'out', 20, NULL, '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(315, 17, 79, 'out', 100, NULL, '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(316, 19, 84, 'out', 30, NULL, '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(317, 16, 70, 'out', 50, NULL, '2025-11-07 18:33:38', '2025-11-07 18:33:38'),
(318, 17, 79, 'out', 200, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(319, 20, 87, 'out', 100, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(320, 16, 70, 'out', 100, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(321, 25, 75, 'out', 50, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(322, 24, 73, 'out', 50, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(323, 31, 98, 'out', 50, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(324, 30, 97, 'out', 20, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(325, 26, 77, 'out', 30, NULL, '2025-11-07 19:22:43', '2025-11-07 19:22:43'),
(326, 16, 70, 'out', 100, NULL, '2025-11-07 20:16:57', '2025-11-07 20:16:57'),
(327, 16, 70, 'out', 50, NULL, '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(328, 19, 84, 'out', 20, NULL, '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(329, 20, 87, 'out', 20, NULL, '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(330, 24, 73, 'out', 50, NULL, '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(331, 25, 75, 'out', 40, NULL, '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(332, 28, 93, 'out', 40, NULL, '2025-11-07 20:25:31', '2025-11-07 20:25:31'),
(333, 16, 70, 'out', 50, NULL, '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(334, 19, 84, 'out', 30, NULL, '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(335, 20, 87, 'out', 20, NULL, '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(336, 26, 77, 'out', 20, NULL, '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(337, 25, 75, 'out', 10, NULL, '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(338, 24, 73, 'out', 10, NULL, '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(339, 28, 93, 'out', 60, NULL, '2025-11-07 20:28:24', '2025-11-07 20:28:24'),
(340, 20, 87, 'out', 100, NULL, '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(341, 19, 84, 'out', 100, NULL, '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(342, 24, 73, 'out', 50, NULL, '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(343, 26, 77, 'out', 50, NULL, '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(344, 25, 75, 'out', 50, NULL, '2025-11-07 20:37:30', '2025-11-07 20:37:30'),
(345, 17, 79, 'out', 250, NULL, '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(346, 29, 95, 'out', 10, NULL, '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(347, 32, 100, 'out', 20, NULL, '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(348, 34, 102, 'out', 20, NULL, '2025-11-07 20:44:59', '2025-11-07 20:44:59'),
(349, 18, 113, 'out', 100, NULL, '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(350, 21, 64, 'out', 10, NULL, '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(351, 22, 66, 'out', 10, NULL, '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(352, 17, 79, 'out', 50, NULL, '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(353, 27, 89, 'out', 20, NULL, '2025-11-07 21:17:01', '2025-11-07 21:17:01'),
(354, 16, 70, 'out', 20, NULL, '2025-11-07 21:40:03', '2025-11-07 21:40:03'),
(355, 19, 84, 'out', 20, NULL, '2025-11-07 21:40:03', '2025-11-07 21:40:03'),
(356, 39, 120, 'out', 20, NULL, '2025-11-07 21:40:03', '2025-11-07 21:40:03'),
(357, 41, 111, 'out', 10, NULL, '2025-11-07 21:40:03', '2025-11-07 21:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `content_type`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Terms', '<h5 data-start=\"231\" data-end=\"271\">🧾 <strong data-start=\"237\" data-end=\"271\">Tantuco CTC - Terms of Service</strong></h5>\n<h6 data-start=\"273\" data-end=\"299\">1. Acceptance of Terms</h3>\n<p data-start=\"300\" data-end=\"440\">By accessing or using Tantuco CTC\'s website, services, or purchasing any hardware products, you agree to be bound by these Terms of Service.</p>\n<h6 data-start=\"442\" data-end=\"470\">2. User Responsibilities</h3>\n<ul data-start=\"471\" data-end=\"649\">\n<li data-start=\"471\" data-end=\"545\">\n<p data-start=\"473\" data-end=\"545\">You must be at least 18 years old to use our services or place an order.</p>\n</li>\n<li data-start=\"546\" data-end=\"649\">\n<p data-start=\"548\" data-end=\"649\">You agree to provide accurate, up-to-date, and complete information during registration and checkout.</p>\n</li>\n</ul>\n<h6 data-start=\"651\" data-end=\"674\">3. Account Security</h3>\n<ul data-start=\"675\" data-end=\"839\">\n<li data-start=\"675\" data-end=\"761\">\n<p data-start=\"677\" data-end=\"761\">You are responsible for maintaining the confidentiality of your account credentials.</p>\n</li>\n<li data-start=\"762\" data-end=\"839\">\n<p data-start=\"764\" data-end=\"839\">You agree to notify us immediately of any unauthorized use of your account.</p>\n</li>\n</ul>\n<h6 data-start=\"841\" data-end=\"869\">4. Intellectual Property</h3>\n<ul data-start=\"870\" data-end=\"992\">\n<li data-start=\"870\" data-end=\"992\">\n<p data-start=\"872\" data-end=\"992\">All website content (logos, product images, text) is the property of Tantuco CTC and may not be used without permission.</p>\n</li>\n</ul>\n<h6 data-start=\"994\" data-end=\"1014\">5. Governing Law</h3>\n<ul data-start=\"1015\" data-end=\"1093\">\n<li data-start=\"1015\" data-end=\"1093\">\n<p data-start=\"1017\" data-end=\"1093\">These terms are governed by the laws of the <strong data-start=\"1061\" data-end=\"1092\">Republic of the Philippines</strong>.</p>\n</li>\n</ul>', '2025-07-08 04:03:51', '2025-07-12 02:46:32', NULL),
(2, 'Condition', '<h5 data-start=\"1100\" data-end=\"1142\">⚖️ <strong data-start=\"1106\" data-end=\"1142\">Tantuco CTC - Conditions of Sale</strong></h5>\r\n<h6 data-start=\"1144\" data-end=\"1170\">1. Product Information</h6>\r\n<ul data-start=\"1171\" data-end=\"1377\">\r\n<li data-start=\"1171\" data-end=\"1270\">\r\n<p data-start=\"1173\" data-end=\"1270\">We strive to provide accurate product descriptions, but actual product details may vary slightly.</p>\r\n</li>\r\n<li data-start=\"1271\" data-end=\"1377\">\r\n<p data-start=\"1273\" data-end=\"1377\">All product prices are in <strong data-start=\"1299\" data-end=\"1323\">Philippine Pesos (₱)</strong> and include applicable taxes unless otherwise stated.</p>\r\n</li>\r\n</ul>\r\n<h6 data-start=\"1379\" data-end=\"1404\">2. Order Confirmation</h6>\r\n<ul data-start=\"1405\" data-end=\"1589\">\r\n<li data-start=\"1405\" data-end=\"1489\">\r\n<p data-start=\"1407\" data-end=\"1489\">An order is considered confirmed only after full payment is received and verified.</p>\r\n</li>\r\n<li data-start=\"1490\" data-end=\"1589\">\r\n<p data-start=\"1492\" data-end=\"1589\">We reserve the right to cancel any order due to stock issues, pricing errors, or suspected fraud.</p>\r\n</li>\r\n</ul>\r\n<h6 data-start=\"1591\" data-end=\"1613\">3. Payment Methods</h6>\r\n<ul data-start=\"1614\" data-end=\"1699\">\r\n<li data-start=\"1614\" data-end=\"1699\">\r\n<p data-start=\"1616\" data-end=\"1699\">We accept <strong data-start=\"1626\" data-end=\"1656\">cash, GCash, bank transfer</strong>, or <strong data-start=\"1661\" data-end=\"1698\">approved business credit accounts</strong>.</p>\r\n</li>\r\n</ul>\r\n<h6 data-start=\"1701\" data-end=\"1716\">4. Delivery</h6>\r\n<ul data-start=\"1717\" data-end=\"1869\">\r\n<li data-start=\"1717\" data-end=\"1767\">\r\n<p data-start=\"1719\" data-end=\"1767\">Deliveries are made within select service areas.</p>\r\n</li>\r\n<li data-start=\"1768\" data-end=\"1869\">\r\n<p data-start=\"1770\" data-end=\"1869\">Delivery lead time is usually <strong data-start=\"1800\" data-end=\"1821\">1&ndash;5 business days</strong> depending on product availability and location.</p>\r\n</li>\r\n</ul>', '2025-07-08 04:04:01', '2025-10-23 14:57:53', NULL),
(3, 'Policy', '<h5 data-start=\"1876\" data-end=\"1924\">🔁 <strong data-start=\"1882\" data-end=\"1924\">Tantuco CTC - Return &amp; Exchange Policy</strong></h5>\n<p data-start=\"1926\" data-end=\"2019\">We want you to be satisfied with your purchase. Please review our return and exchange policy:</p>\n<h6 data-start=\"2021\" data-end=\"2054\">✅ <strong data-start=\"2027\" data-end=\"2054\">Eligibility for Returns</strong></h6>\n<ul data-start=\"2055\" data-end=\"2262\">\n<li data-start=\"2055\" data-end=\"2127\">\n<p data-start=\"2057\" data-end=\"2127\">Products must be returned within <strong data-start=\"2090\" data-end=\"2100\">7 days</strong> from the date of delivery.</p>\n</li>\n<li data-start=\"2128\" data-end=\"2262\">\n<p data-start=\"2130\" data-end=\"2144\">Items must be:</p>\n<ul data-start=\"2147\" data-end=\"2262\">\n<li data-start=\"2147\" data-end=\"2174\">\n<p data-start=\"2149\" data-end=\"2174\">In <strong data-start=\"2152\" data-end=\"2174\">original condition</strong></p>\n</li>\n<li data-start=\"2177\" data-end=\"2203\">\n<p data-start=\"2179\" data-end=\"2203\"><strong data-start=\"2179\" data-end=\"2203\">Unused and undamaged</strong></p>\n</li>\n<li data-start=\"2206\" data-end=\"2262\">\n<p data-start=\"2208\" data-end=\"2262\">In <strong data-start=\"2211\" data-end=\"2233\">original packaging</strong> with all accessories/manuals</p>\n</li>\n</ul>\n</li>\n</ul>\n<h6 data-start=\"2264\" data-end=\"2303\">❌ <strong data-start=\"2270\" data-end=\"2303\">Items Not Eligible for Return</strong></h6>\n<ul data-start=\"2304\" data-end=\"2416\">\n<li data-start=\"2304\" data-end=\"2344\">\n<p data-start=\"2306\" data-end=\"2344\">Custom-built or special-order hardware</p>\n</li>\n<li data-start=\"2345\" data-end=\"2384\">\n<p data-start=\"2347\" data-end=\"2384\">Used tools, equipment, or power tools</p>\n</li>\n<li data-start=\"2385\" data-end=\"2416\">\n<p data-start=\"2387\" data-end=\"2416\">Clearance or final sale items</p>\n</li>\n</ul>\n<h6 data-start=\"2418\" data-end=\"2443\">🔄 <strong data-start=\"2425\" data-end=\"2443\">Return Process</strong></h6>\n<ol data-start=\"2444\" data-end=\"2743\">\n<li data-start=\"2444\" data-end=\"2516\">\n<p data-start=\"2447\" data-end=\"2516\"><strong data-start=\"2447\" data-end=\"2460\">Notify us</strong> via email or phone within 7 days of receiving the item.</p>\n</li>\n<li data-start=\"2517\" data-end=\"2598\">\n<p data-start=\"2520\" data-end=\"2598\">Bring the item to our store or request a pickup (subject to approval and fee).</p>\n</li>\n<li data-start=\"2599\" data-end=\"2743\">\n<p data-start=\"2602\" data-end=\"2633\">Upon inspection, we will issue:</p>\n<ul data-start=\"2637\" data-end=\"2743\">\n<li data-start=\"2637\" data-end=\"2658\">\n<p data-start=\"2639\" data-end=\"2658\">A <strong data-start=\"2641\" data-end=\"2656\">replacement</strong></p>\n</li>\n<li data-start=\"2662\" data-end=\"2686\">\n<p data-start=\"2664\" data-end=\"2686\"><strong data-start=\"2664\" data-end=\"2680\">Store credit</strong>, or</p>\n</li>\n<li data-start=\"2690\" data-end=\"2743\">\n<p data-start=\"2692\" data-end=\"2743\">A <strong data-start=\"2694\" data-end=\"2720\">full or partial refund</strong>, depending on the case</p>\n</li>\n</ul>\n</li>\n</ol>\n<h6 data-start=\"2745\" data-end=\"2782\">⚠️ <strong data-start=\"2752\" data-end=\"2782\">Damaged or Defective Items</strong></h6>\n<ul data-start=\"2783\" data-end=\"2963\">\n<li data-start=\"2783\" data-end=\"2869\">\n<p data-start=\"2785\" data-end=\"2869\">If your item is <strong data-start=\"2801\" data-end=\"2825\">damaged upon arrival</strong>, notify us within <strong data-start=\"2844\" data-end=\"2856\">48 hours</strong> with photos.</p>\n</li>\n<li data-start=\"2870\" data-end=\"2963\">\n<p data-start=\"2872\" data-end=\"2963\">Defective items under <strong data-start=\"2894\" data-end=\"2919\">manufacturer warranty</strong> will follow the supplier&rsquo;s service process.</p>\n</li>\n</ul>', '2025-07-08 04:04:01', '2025-07-12 02:47:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `force_password_change` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role` enum('b2b','deliveryrider','salesofficer','superadmin') NOT NULL DEFAULT 'b2b',
  `otp_code` varchar(255) DEFAULT NULL,
  `otp_expire` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `about` text DEFAULT NULL,
  `credit_limit` decimal(10,2) DEFAULT 300000.00,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile`, `username`, `email`, `email_verified_at`, `password`, `force_password_change`, `created_by_admin`, `role`, `otp_code`, `otp_expire`, `status`, `about`, `credit_limit`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lalaine De Jesus', 'assets/upload/profiles/1762012987_1759400911_Group 1000004820.png', 'SA1', 'tantuco@gmail.com', '2025-07-09 11:33:35', '$2y$10$fpHuUdg4vFV0l.s4fzQFp.AkYcvwwJb1pGIknFNmAg.kKHv.omTNy', 0, 0, 'superadmin', '733006', '2025-07-09 11:42:49', 1, NULL, NULL, NULL, '2025-07-09 11:29:00', '2025-11-01 16:03:07', NULL),
(4, 'John B2B', 'assets/upload/profiles/1752172600_68700838af669.jpg', 'b2b', 'b2b@example.com', '2025-07-09 23:05:05', '$2y$10$fpHuUdg4vFV0l.s4fzQFp.AkYcvwwJb1pGIknFNmAg.kKHv.omTNy', 0, 0, 'b2b', '960918', '2025-07-09 23:14:10', 1, 'Im Seller', 277556.00, NULL, '2025-07-09 11:29:00', '2025-11-01 15:39:02', NULL),
(26, 'Allysa De Jesus', NULL, 'SA2', 'tantuco.ad@gmail.com', '2025-07-09 11:33:35', '$2y$10$fpHuUdg4vFV0l.s4fzQFp.AkYcvwwJb1pGIknFNmAg.kKHv.omTNy', 0, 0, 'superadmin', '733006', '2025-07-09 11:42:49', 1, NULL, NULL, NULL, '2025-11-01 14:48:43', '2025-11-01 14:48:43', NULL),
(27, 'Maribel Luces', NULL, 'AS1', 'tantuco.sales1@gmail.com', '2025-07-09 23:09:39', '$2y$10$lQBpIfaVKcZOhUkfNKqNCef1tDZ968unqOvi6OAZvxq1DkbhIX3AW', 0, 0, 'salesofficer', '123456', '2025-07-09 23:18:37', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(28, 'Juvy Pizarra', NULL, 'AS2', 'tantuco.sales2@gmail.com', '2025-07-09 23:09:39', '$2y$10$lQBpIfaVKcZOhUkfNKqNCef1tDZ968unqOvi6OAZvxq1DkbhIX3AW', 0, 0, 'salesofficer', '123456', '2025-07-09 23:18:37', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(29, 'Clemencia Martinez', NULL, 'AS3', 'tantuco.sales3@gmail.com', '2025-07-09 23:09:39', '$2y$10$lQBpIfaVKcZOhUkfNKqNCef1tDZ968unqOvi6OAZvxq1DkbhIX3AW', 0, 0, 'salesofficer', '123456', '2025-07-09 23:18:37', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(30, 'Sarah Oblifias', NULL, 'AS4', 'tantuco.sales4@gmail.com', '2025-07-09 23:09:39', '$2y$10$lQBpIfaVKcZOhUkfNKqNCef1tDZ968unqOvi6OAZvxq1DkbhIX3AW', 0, 0, 'salesofficer', '123456', '2025-07-09 23:18:37', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(31, 'Aileen Lorena', NULL, 'AS5', 'tantuco.sales5@gmail.com', '2025-07-09 23:09:39', '$2y$10$lQBpIfaVKcZOhUkfNKqNCef1tDZ968unqOvi6OAZvxq1DkbhIX3AW', 0, 0, 'salesofficer', '123456', '2025-07-09 23:18:37', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(36, 'Jimmy Javid', NULL, 'D1', 'tantuco.driver1@gmail.com', '2025-07-09 23:49:40', '$2y$10$0LUNUv/HDZ5kbz35U3Akju8ygpt79fMey.U3kXrt.Y2BgXGbsaOUi', 0, 0, 'deliveryrider', '237579', '2025-07-09 23:59:16', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(37, 'Jayson De Chavez', NULL, 'D2', 'tantuco.driver2@gmail.com', '2025-07-09 23:49:40', '$2y$10$0LUNUv/HDZ5kbz35U3Akju8ygpt79fMey.U3kXrt.Y2BgXGbsaOUi', 0, 0, 'deliveryrider', '237579', '2025-07-09 23:59:16', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(38, 'Rodel Dimayuga', NULL, 'D3', 'tantuco.driver3@gmail.com', '2025-07-09 23:49:40', '$2y$10$0LUNUv/HDZ5kbz35U3Akju8ygpt79fMey.U3kXrt.Y2BgXGbsaOUi', 0, 0, 'deliveryrider', '237579', '2025-07-09 23:59:16', 1, NULL, NULL, NULL, '2025-11-01 11:29:00', '2025-11-01 11:29:00', NULL),
(39, 'Asian Valley', NULL, 'asian_valley', 'asianvalley@gmail.com', '2025-11-01 16:56:55', '$2y$10$8zPDmwo/z6A3/SuDvFf41epwsnkyc9u5z5B3VzXkgO3hGFCmyrbQC', 0, 0, 'b2b', '441720', '2025-11-01 17:06:14', 1, NULL, 300000.00, NULL, '2025-11-01 16:56:14', '2025-11-07 20:53:03', NULL),
(40, 'Inner Power', 'assets/upload/profiles/1762503054_690da98e700db.jpg', 'inner_power', 'innerpower@gmail.com', '2025-11-01 17:33:44', '$2y$10$OCIuJZqRmuwP88nSDPgIseOr3hn0.x6PQWFgYWYfmWqGpa47CYTiu', 0, 0, 'b2b', '868426', '2025-11-01 17:43:07', 1, 'Hardware and Retail Store of Construction and Consumer Products', 237879.60, NULL, '2025-11-01 17:33:07', '2025-11-07 20:40:22', NULL),
(41, 'PNL Hardware', NULL, 'pnl', 'pnlhardware@gmail.com', '2025-11-01 17:38:38', '$2y$10$52gqLtDHM63MAa8WZNpZTeirSttZJguUXOLVYMeKU4AWwRJFuo3gS', 0, 0, 'b2b', '403534', '2025-11-01 17:48:12', 1, NULL, 223965.00, NULL, '2025-11-01 17:38:11', '2025-11-07 20:59:59', NULL),
(42, 'Perez-Magboo Hardware', NULL, 'perez', 'perezmagboo@gmail.com', '2025-11-01 17:38:38', '$2y$10$52gqLtDHM63MAa8WZNpZTeirSttZJguUXOLVYMeKU4AWwRJFuo3gS', 0, 0, 'b2b', '403531', '2025-11-01 17:48:12', 1, NULL, 300000.00, NULL, '2025-11-01 17:38:11', '2025-11-07 21:29:07', NULL),
(43, 'John & Ken Hardware', NULL, 'John Ken', 'johnken@gmail.com', '2025-11-01 17:38:38', '$2y$10$52gqLtDHM63MAa8WZNpZTeirSttZJguUXOLVYMeKU4AWwRJFuo3gS', 0, 0, 'b2b', '403540', '2025-11-01 17:48:12', 1, NULL, 300000.00, NULL, '2025-11-01 17:38:11', '2025-11-07 21:29:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(255) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `logged_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `event`, `ip_address`, `user_agent`, `logged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 15:58:40', NULL, NULL),
(2, 2, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 16:00:54', NULL, NULL),
(3, 1, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 16:18:38', NULL, NULL),
(4, 4, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 16:55:17', NULL, NULL),
(5, 39, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 17:18:17', NULL, NULL),
(6, 40, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 17:36:49', NULL, NULL),
(7, 4, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 17:50:21', NULL, NULL),
(8, 27, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-01 17:52:54', NULL, NULL),
(9, 40, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 17:04:10', NULL, NULL),
(10, 27, 'logout', '110.54.190.148', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '2025-11-06 22:16:14', NULL, NULL),
(11, 27, 'logout', '110.54.190.148', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '2025-11-06 23:05:31', NULL, NULL),
(12, 27, 'logout', '139.135.200.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-07 00:32:35', NULL, NULL),
(13, 40, 'logout', '139.135.200.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 18:27:02', NULL, NULL),
(14, 36, 'logout', '139.135.200.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 18:35:03', NULL, NULL),
(15, 41, 'logout', '139.135.200.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 19:04:49', NULL, NULL),
(16, 40, 'logout', '139.135.200.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 19:09:41', NULL, NULL),
(17, 39, 'logout', '139.135.200.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 19:54:38', NULL, NULL),
(18, 38, 'logout', '139.135.200.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 20:18:00', NULL, NULL),
(19, 40, 'logout', '136.158.67.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 20:26:43', NULL, NULL),
(20, 40, 'logout', '139.135.200.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 20:43:30', NULL, NULL),
(21, 36, 'logout', '139.135.200.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 20:46:23', NULL, NULL),
(22, 39, 'logout', '139.135.200.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 20:53:26', NULL, NULL),
(23, 37, 'logout', '139.135.200.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 20:54:27', NULL, NULL),
(24, 41, 'logout', '139.135.200.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 21:03:21', NULL, NULL),
(25, 42, 'logout', '139.135.200.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 21:30:12', NULL, NULL),
(26, 38, 'logout', '139.135.200.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 21:40:57', NULL, NULL),
(27, 26, 'logout', '216.247.85.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 22:45:52', NULL, NULL),
(28, 40, 'logout', '216.247.85.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-08 01:04:35', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b2b_address`
--
ALTER TABLE `b2b_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b2b_address_user_id_foreign` (`user_id`);

--
-- Indexes for table `b2b_details`
--
ALTER TABLE `b2b_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b2b_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_partial_payments`
--
ALTER TABLE `credit_partial_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_partial_payments_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `credit_partial_payments_bank_id_foreign` (`bank_id`);

--
-- Indexes for table `credit_payments`
--
ALTER TABLE `credit_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_payments_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `credit_payments_bank_id_foreign` (`bank_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_order_id_foreign` (`order_id`),
  ADD KEY `deliveries_delivery_rider_id_foreign` (`delivery_rider_id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_histories_delivery_id_foreign` (`delivery_id`);

--
-- Indexes for table `delivery_ratings`
--
ALTER TABLE `delivery_ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_ratings_delivery_id_unique` (`delivery_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_product_id_foreign` (`product_id`);

--
-- Indexes for table `manual_email_order`
--
ALTER TABLE `manual_email_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_b2b_address_id_foreign` (`b2b_address_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `paid_payments`
--
ALTER TABLE `paid_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paid_payments_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `paid_payments_bank_id_foreign` (`bank_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_ratings_product_id_user_id_unique` (`product_id`,`user_id`),
  ADD KEY `product_ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `pr_reserve_stocks`
--
ALTER TABLE `pr_reserve_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pr_reserve_stocks_pr_id_index` (`pr_id`),
  ADD KEY `pr_reserve_stocks_product_id_index` (`product_id`);

--
-- Indexes for table `purchase_requests`
--
ALTER TABLE `purchase_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_requests_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `purchase_request_items`
--
ALTER TABLE `purchase_request_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_request_items_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `purchase_request_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_request_refunds`
--
ALTER TABLE `purchase_request_refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_request_refunds_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `purchase_request_refunds_purchase_request_item_id_foreign` (`purchase_request_item_id`),
  ADD KEY `purchase_request_refunds_product_id_foreign` (`product_id`),
  ADD KEY `purchase_request_refunds_processed_by_foreign` (`processed_by`);

--
-- Indexes for table `purchase_request_returns`
--
ALTER TABLE `purchase_request_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_request_returns_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `purchase_request_returns_purchase_request_item_id_foreign` (`purchase_request_item_id`),
  ADD KEY `purchase_request_returns_product_id_foreign` (`product_id`),
  ADD KEY `purchase_request_returns_processed_by_foreign` (`processed_by`);

--
-- Indexes for table `stock_batches`
--
ALTER TABLE `stock_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_batches_product_id_foreign` (`product_id`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_movements_product_id_foreign` (`product_id`),
  ADD KEY `stock_movements_batch_id_foreign` (`batch_id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_logs_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `b2b_address`
--
ALTER TABLE `b2b_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `b2b_details`
--
ALTER TABLE `b2b_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credit_partial_payments`
--
ALTER TABLE `credit_partial_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `credit_payments`
--
ALTER TABLE `credit_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_ratings`
--
ALTER TABLE `delivery_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `manual_email_order`
--
ALTER TABLE `manual_email_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `paid_payments`
--
ALTER TABLE `paid_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pr_reserve_stocks`
--
ALTER TABLE `pr_reserve_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `purchase_requests`
--
ALTER TABLE `purchase_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `purchase_request_items`
--
ALTER TABLE `purchase_request_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `purchase_request_refunds`
--
ALTER TABLE `purchase_request_refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_request_returns`
--
ALTER TABLE `purchase_request_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_batches`
--
ALTER TABLE `stock_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `b2b_address`
--
ALTER TABLE `b2b_address`
  ADD CONSTRAINT `b2b_address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `b2b_details`
--
ALTER TABLE `b2b_details`
  ADD CONSTRAINT `b2b_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
