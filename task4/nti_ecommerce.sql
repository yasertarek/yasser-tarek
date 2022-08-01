-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 05:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nti_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `regions_id` bigint(20) UNSIGNED NOT NULL,
  `building` varchar(32) NOT NULL,
  `floor` varchar(32) NOT NULL,
  `flat` varchar(32) NOT NULL,
  `street` varchar(32) NOT NULL,
  `notes` varchar(32) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `users_id`, `regions_id`, `building`, `floor`, `flat`, `street`, `notes`, `type`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '9', '6', '3', 'شارع المروة', 'بجوار القرية الاوليمبية', '', '2022-07-31 21:33:31', NULL),
(2, 1, 2, '25', '6', '15', 'شارع الحصري', 'بجوار مسجد الحصري', '', '2022-07-31 21:34:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0 => female, 1 => male',
  `image` varchar(128) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `verification_code` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(32) NOT NULL,
  `name_en` varchar(32) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `image` varchar(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name_ar`, `name_en`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'سامسونج', 'Samsung', 1, 'samsung.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(2, 'ديل', 'DELL', 1, 'dell.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(3, 'لينوفو', 'Lenovo', 1, 'lenovo.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(4, 'ابل', 'apple', 1, 'apple.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(5, 'oppo', 'oppo', 1, 'oppo.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(6, 'lg', 'lg', 1, 'lg.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(7, 'HP', 'HP', 1, 'hp.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06'),
(8, 'ASUS', 'ASUS', 1, 'asus.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06'),
(9, 'سامسونج', 'Samsung', 1, 'samsung.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(10, 'ديل', 'DELL', 1, 'dell.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(11, 'لينوفو', 'Lenovo', 1, 'lenovo.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(12, 'ابل', 'apple', 1, 'apple.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(13, 'oppo', 'oppo', 1, 'oppo.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(14, 'lg', 'lg', 1, 'lg.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(15, 'HP', 'HP', 1, 'hp.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06'),
(16, 'ASUS', 'ASUS', 1, 'asus.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06'),
(17, 'سامسونج', 'Samsung', 1, 'samsung.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(18, 'ديل', 'DELL', 1, 'dell.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(19, 'لينوفو', 'Lenovo', 1, 'lenovo.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(20, 'ابل', 'apple', 1, 'apple.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(21, 'oppo', 'oppo', 1, 'oppo.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(22, 'lg', 'lg', 1, 'lg.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(23, 'HP', 'HP', 1, 'hp.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06'),
(24, 'ASUS', 'ASUS', 1, 'asus.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06'),
(25, 'سامسونج', 'Samsung', 1, 'samsung.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(26, 'ديل', 'DELL', 1, 'dell.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(27, 'لينوفو', 'Lenovo', 1, 'lenovo.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(28, 'ابل', 'apple', 1, 'apple.png', '2021-11-18 07:10:26', '2021-11-18 07:10:26'),
(29, 'oppo', 'oppo', 1, 'oppo.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(30, 'lg', 'lg', 1, 'lg.png', '2021-11-24 02:57:47', '2021-11-24 02:57:47'),
(31, 'HP', 'HP', 1, 'hp.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06'),
(32, 'ASUS', 'ASUS', 1, 'asus.png', '2022-02-23 07:24:06', '2022-02-23 07:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(32) NOT NULL,
  `name_en` varchar(32) NOT NULL,
  `image` varchar(128) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ادوات كهربائية', 'electorinics', 'default.jpg', 1, '2021-11-17 08:05:23', '2021-11-17 08:10:48'),
(2, 'مطبخ', 'kitchen', 'default.jpg', 1, '2021-11-18 07:54:51', '2021-11-18 07:54:51'),
(3, 'سوبرماركت', 'supermarket', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47'),
(4, 'موضة وازياء', 'fashion', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47'),
(5, 'ادوات كهربائية', 'electorinics', 'default.jpg', 1, '2021-11-17 08:05:23', '2021-11-17 08:10:48'),
(6, 'مطبخ', 'kitchen', 'default.jpg', 1, '2021-11-18 07:54:51', '2021-11-18 07:54:51'),
(7, 'سوبرماركت', 'supermarket', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47'),
(8, 'موضة وازياء', 'fashion', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47'),
(9, 'ادوات كهربائية', 'electorinics', 'default.jpg', 1, '2021-11-17 08:05:23', '2021-11-17 08:10:48'),
(10, 'مطبخ', 'kitchen', 'default.jpg', 1, '2021-11-18 07:54:51', '2021-11-18 07:54:51'),
(11, 'سوبرماركت', 'supermarket', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47'),
(12, 'موضة وازياء', 'fashion', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47'),
(13, 'ادوات كهربائية', 'electorinics', 'default.jpg', 1, '2021-11-17 08:05:23', '2021-11-17 08:10:48'),
(14, 'مطبخ', 'kitchen', 'default.jpg', 1, '2021-11-18 07:54:51', '2021-11-18 07:54:51'),
(15, 'سوبرماركت', 'supermarket', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47'),
(16, 'موضة وازياء', 'fashion', 'default.jpg', 1, '2022-02-23 05:26:47', '2022-02-23 05:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(32) NOT NULL,
  `name_en` varchar(32) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'المنصورة', 'Mansoura', 1, '2022-07-31 21:14:25', NULL),
(2, 'القاهرة', 'Cairo', 1, '2022-07-31 21:14:25', NULL),
(3, 'الاسكندرية', 'Alexandria', 1, '2022-07-31 21:22:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `discount` decimal(6,2) NOT NULL,
  `discount_type` varchar(8) NOT NULL,
  `mini_order_price` decimal(8,2) NOT NULL,
  `max_usage_count_per_user` smallint(6) UNSIGNED NOT NULL,
  `max_usage_count` smallint(6) UNSIGNED NOT NULL,
  `code` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `status`, `start_at`, `end_at`, `discount`, `discount_type`, `mini_order_price`, `max_usage_count_per_user`, `max_usage_count`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-01 21:38:39', '2022-08-31 21:38:39', '25.00', '%', '1000.00', 1, 50, 639526, '2022-07-31 21:40:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favs`
--

CREATE TABLE `favs` (
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(32) NOT NULL,
  `title_en` varchar(32) NOT NULL,
  `image` varchar(128) NOT NULL,
  `discount` decimal(6,2) NOT NULL,
  `discount_type` varchar(8) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offer_product`
--

CREATE TABLE `offer_product` (
  `offers_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `price_after_discount` decimal(8,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addresses_id` bigint(20) UNSIGNED NOT NULL,
  `coupons_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` varchar(255) NOT NULL,
  `total_price` decimal(8,2) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `payment_methods` varchar(32) NOT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `addresses_id`, `coupons_id`, `notes`, `total_price`, `status`, `delivered_at`, `payment_methods`, `number`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '', '15000.00', 1, '2022-07-08 21:36:10', 'MasterCard', 1, '2022-07-31 21:38:44', NULL),
(2, 2, 1, '', '25000.00', 1, NULL, 'MasterCard', 123321, '2022-07-31 21:41:48', NULL),
(3, 2, 1, '', '30000.00', 1, NULL, 'MasterCard', 987789, '2022-07-31 21:42:55', NULL),
(4, 1, 1, '', '45000.00', 1, '2022-07-25 21:41:58', 'Visa', 567876, '2022-07-31 21:42:55', NULL),
(5, 1, 1, '', '20000.00', 1, NULL, 'MasterCard', 548712, '2022-07-31 21:44:16', NULL),
(6, 2, NULL, '', '5000.00', 1, '2022-07-27 21:43:11', 'Cash', 655543, '2022-07-31 21:44:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `orders_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` smallint(6) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`orders_id`, `products_id`, `quantity`) VALUES
(4, 20, 1),
(4, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brands_id` bigint(20) UNSIGNED NOT NULL,
  `subcategories_id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(32) NOT NULL,
  `name_en` varchar(32) NOT NULL,
  `image` varchar(128) NOT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL,
  `code` bigint(20) UNSIGNED NOT NULL,
  `details_ar` varchar(32) NOT NULL,
  `details_en` varchar(32) NOT NULL,
  `quantity` smallint(4) UNSIGNED NOT NULL DEFAULT 1,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brands_id`, `subcategories_id`, `name_ar`, `name_en`, `image`, `price`, `code`, `details_ar`, `details_en`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(15, 1, 1, 'لابتوب', 'laptop', 'dell.jpg', '250.00', 12345, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 1, 1, '2021-11-18 07:13:16', '2021-11-29 05:33:02'),
(16, 1, 2, 'a 50', 'a 50', 'a50.jpg', '4000.00', 321244, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 1, 0, '2021-11-18 07:13:16', '2022-07-23 11:51:08'),
(17, 1, 4, 'tv 55 inch', 'tv 55 inch', 'tv55.jpg', '10000.00', 55525, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 1, 1, '2021-11-18 07:13:16', '2022-07-23 11:51:15'),
(18, 4, 1, 'MacBook PRo', 'MacBook PRo', 'mac.jpg', '40000.00', 52524, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 2, 1, '2021-09-22 02:07:40', '2022-07-23 11:51:27'),
(19, 1, 2, 's21', 's21', 's21.jpg', '15000.00', 123213, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 10, 1, '2021-09-22 02:07:40', '2022-07-23 11:51:31'),
(20, 4, 2, 'iphone 13', 'iphone 13', 'iphone13.jpg', '25000.00', 12525, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 20, 1, '2021-09-22 02:07:40', '2022-07-23 11:51:49'),
(21, 5, 2, 'Reno 6', 'Reno 6', 'reno.jpg', '10000.00', 4444, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 5, 1, '2021-09-22 02:07:40', '2022-07-23 11:51:58'),
(22, 3, 1, 'Lenovo Lapttop', 'Lenovo Lapttop', 'lenovo.jpg', '17000.00', 7754, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 1, 1, '2021-09-22 02:07:40', '2022-07-23 11:52:05'),
(23, 2, 1, 'Dell Laptop', 'Dell Laptop', 'dell.jpg', '20000.00', 42424, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 0, 1, '2021-09-22 02:07:40', '2022-07-23 11:52:11'),
(24, 6, 4, 'Lg TV', 'Lg TV', 'lg.jpg', '12000.00', 5545, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 3, 1, '2021-09-22 02:07:40', '2022-07-23 11:52:22'),
(25, 1, 4, 'Samsung Tv', 'Samsung Tv', 'samsung.jpg', '15000.00', 7777, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 7, 1, '2021-09-22 02:07:40', '2022-07-23 11:52:28'),
(26, 0, 5, 'Chepsi', 'Chepsi', 'chepsi.jpg', '10.00', 4247, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 0, 1, '2021-09-22 02:07:40', '2022-07-23 11:52:51'),
(27, 1, 2, 'سامسونج 70', 'samsung a70', 'a50.jpg', '2500.00', 29112021, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'Lorem Ipsum is simply dummy text', 5, 1, '2021-11-29 04:21:36', '2022-07-23 11:52:57'),
(28, 0, 7, 'جبنة فيتا', 'feta cheese', 'feta.png', '5.00', 1100, 'تفاصيل', 'description', 100, 1, '2022-02-23 07:11:17', '2022-07-23 11:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_spec`
--

CREATE TABLE `product_spec` (
  `specs_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cities_id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(32) NOT NULL,
  `name_en` varchar(32) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `cities_id`, `name_ar`, `name_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'عين شمس', 'Ain Shams', 1, '2022-07-31 21:21:00', NULL),
(2, 2, 'المرج', 'El Marg', 1, '2022-07-31 21:21:00', NULL),
(3, 1, 'حي الجامعة', 'Hy El-Gamaa', 1, '2022-07-31 21:27:44', NULL),
(4, 1, 'المشاية السفلية', 'lower treadmill', 1, '2022-07-31 21:27:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rate` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specs`
--

INSERT INTO `specs` (`id`, `name`) VALUES
(1, 'color'),
(2, 'storage'),
(3, 'ram'),
(4, 'weight'),
(5, 'size'),
(6, 'screen'),
(7, 'made in'),
(8, 'width'),
(9, 'flavor'),
(10, 'camera');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(32) NOT NULL,
  `name_en` varchar(32) NOT NULL,
  `image` varchar(128) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `categories_id`, `name_ar`, `name_en`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'لابتوبات', 'laptops', 'default.png', 1, '2021-11-18 07:09:38', '2021-11-24 02:54:39'),
(2, 1, 'موبايلات', 'mobiles', 'default.png', 1, '2021-11-18 07:09:38', '2021-11-18 07:09:38'),
(3, 1, 'كمبيوتر', 'desktop', 'default.png', 1, '2021-11-18 07:09:38', '2021-11-18 07:09:38'),
(4, 1, 'تلفزيونات', 'tv', 'default.png', 1, '2021-11-18 07:13:41', '2021-11-18 07:13:41'),
(5, 3, 'شيبسي', 'chepsi', 'default.png', 1, '2021-11-24 02:56:26', '2021-11-24 02:56:26'),
(6, 4, 'ادوات تجميل', 'makeup', '1.png', 1, '2022-02-23 05:28:06', '2022-02-23 05:28:06'),
(7, 3, 'جبن', 'cheese', 'cheese.png', 1, '2022-02-23 07:11:01', '2022-02-23 07:11:01'),
(8, 0, 'العاب اطفال', 'toys', '1', 0, '2022-07-23 11:31:39', '2022-07-27 08:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0 => female, 1 => male',
  `image` varchar(128) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `verification_code` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `image`, `phone`, `email`, `password`, `verification_code`, `email_verified_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad', 'Ahmed', 1, '', '01232567892', 'mohammadahmed@blabla.com', '123p@$$word', NULL, NULL, 1, '2022-07-31 21:30:01', NULL),
(2, 'Yasser', 'Tarek', 1, '', '01011250164', 'yasertarek420@gmail.com', '963p@$$word', NULL, NULL, 1, '2022-07-31 21:31:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `regions_id` (`regions_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `verification_code` (`verification_code`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`users_id`,`products_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `favs`
--
ALTER TABLE `favs`
  ADD PRIMARY KEY (`users_id`,`products_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD PRIMARY KEY (`offers_id`,`products_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `addresses_id` (`addresses_id`),
  ADD KEY `coupons_id` (`coupons_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`products_id`,`orders_id`),
  ADD KEY `orders_id` (`orders_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `brands_id` (`brands_id`),
  ADD KEY `subcategories_id` (`subcategories_id`);

--
-- Indexes for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD PRIMARY KEY (`specs_id`,`products_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `cities_id` (`cities_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD KEY `users_id` (`users_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `verification_code` (`verification_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `addresses_ibfk_2` FOREIGN KEY (`regions_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `favs`
--
ALTER TABLE `favs`
  ADD CONSTRAINT `favs_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favs_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD CONSTRAINT `offer_product_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `offer_product_ibfk_2` FOREIGN KEY (`offers_id`) REFERENCES `offers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`addresses_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`coupons_id`) REFERENCES `coupons` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brands_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subcategories_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD CONSTRAINT `product_spec_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_spec_ibfk_2` FOREIGN KEY (`specs_id`) REFERENCES `specs` (`id`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
