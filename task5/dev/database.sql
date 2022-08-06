-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 12:33 PM
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
-- Database: `grandcontours`
--
CREATE DATABASE IF NOT EXISTS `grandcontours` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `grandcontours`;

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, 'إنّ التعبير شيء أساسي في أي لغة من لغات العالم، فهو ما يمنح الأفكار أهميتها، وهو الأداة التي تُخرج هذه الأفكار من العدم إلى الوجود ليعبّر بها الإنسان عن مكنونات \r\nنفسه وخباياها، والتعبير فنّ لغوي كأيّ مهارة يستطيع الإنسان اكتسابها وتطويرها بالتعلّم والتجريب، لا سيما أنّها مهارة ضرورية يحتاجها الفرد في شتى مراحل حياته.', NULL, '2021-11-26 19:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'anss rabie', 'admin@admin', '$2y$10$8te6X3.OXqrisFujkhfhmet.CVlVM5hbejrxJX3xZZZbtXsQqigPu', NULL, '2022-03-22 13:25:02'),
(2, 'Anss Rabie', 'anss.clash@gmail.com', '$2y$10$hn1Qr2BHQlPrC.mijNvQ8.00E1rT6HdMwimWCzGJbKESuFu679Q1i', NULL, '2021-12-06 10:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `descriptions`
--

CREATE TABLE `descriptions` (
  `id` int(11) NOT NULL,
  `text` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `descriptions`
--

INSERT INTO `descriptions` (`id`, `text`) VALUES
(1, NULL),
(2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(7, 'App\\User', 3),
(9, 'App\\User', 4),
(10, 'App\\User', 5),
(10, 'App\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `paragraphs`
--

CREATE TABLE `paragraphs` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paragraphs`
--

INSERT INTO `paragraphs` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Der Online-Innenarchitektur-Service für Privatkunden\r\nWe specialize in providing our customers with low cost and state of the art interior design services with the help of most powerfull modern softwares, which helps us to create realistic renderedimages or animation videos of any size architectural.\r\nProject or product beside the ability of bringing our interior design ideas into reality with the help of a highly skilled team specialized in drywall work and finishes .', NULL, '2022-03-30 00:33:10'),
(2, 'We design practical solutions that meet the goals of our customers, increase the value of the project .\r\nWe design practical solutions that meet the goals of our customers, increase the value of the project .', NULL, '2022-03-27 20:47:00'),
(3, 'Home decor products play a crucial role in setting up the mood and the environment of the space, which is why it isimportant to set up your interior space in line with what suits your character and personality.', NULL, '2022-03-21 18:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(30, 'anss.clash@gmail.com', 1, '4rHufRR0LHmNSqxgRFFHqXZI8OWslO45YwAXEYXLuwOO0Ren5h7PMlv99V3h', '2022-03-23 02:04:01', '2022-03-23 02:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'جميع الخدمات', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(2, 'أضافة خدمة Gips', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(3, 'أضافة خدمة Visual', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(4, 'أضافة خدمة 3D', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(5, 'جميع صور المتجر', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(6, 'أضافة صور جديدة للمتجر', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(7, 'نص WER SIND WIR', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(8, 'نص Our Vision', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(9, 'نص Explore Home', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(10, 'نص WAS BIETEN WIR AN', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(11, 'جهات الاتصال', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(12, 'التواصل الأجتماعي', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17'),
(13, 'اعدادات الموقع', 'web', '2022-03-21 21:47:17', '2022-03-21 21:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `type` varchar(40) DEFAULT 'service',
  `service_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `title` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `type`, `service_id`, `path`, `title`, `created_at`, `updated_at`) VALUES
(4, 'service', 7, 'services/yIpENkV7Z6DGFeHLK6yuUqLbQjWTgLmkzumGN6N4.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id officia, cupiditate nulla at labore consequuntur?', '2022-03-15 12:10:44', '2022-03-15 12:10:44'),
(5, 'service', 7, 'services/ETV3Y9koB8XNNfT9Yu3ysqt5RNVCRnYXb0513I4F.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id officia, cupiditate nulla at labore consequuntur?', '2022-03-15 12:10:44', '2022-03-15 12:10:44'),
(18, 'service', 12, 'services/pGI5GeiNvgHqs1PQpxa4tKFIN39gpjdU36uzW29o.png', 'about', '2022-03-15 12:23:37', '2022-03-15 12:23:37'),
(17, 'auben', 12, 'services/KyEHbQ0wNckJWDA5xzsCehzRPHt81ZriYe3dpvrC.png', NULL, '2022-03-15 12:23:37', '2022-03-15 15:37:50'),
(20, 'innen', 12, 'services/Y161JFdxmAWY0uvKadEJNTxp33TihqHLUxLHGg7y.png', NULL, '2022-03-15 15:37:44', '2022-03-15 15:37:44'),
(19, 'service', 7, 'services/32w0FrBB6bM6D3pWFKJUWRvuxJ2jQ9hO4Cu2fyZu.png', 'new', '2022-03-15 12:35:05', '2022-03-15 12:35:05'),
(21, 'innen', 13, 'services/DNPyospBceg9gq4ais8MBBkIy92nQA8WpBwEyvug.png', NULL, '2022-03-15 16:32:12', '2022-03-21 20:17:11'),
(22, 'auben', 13, 'services/i8WDcH2QHLs48NqtvzidxZfjnHQHL3mweMprX2Ge.png', NULL, '2022-03-15 16:32:12', '2022-03-21 20:16:55'),
(23, 'service', 13, 'services/qgGAffLmSnCX9Nruq9ZObGTbewtWnkbr0hakIM2R.png', 'a', '2022-03-15 16:32:12', '2022-03-15 16:32:12'),
(27, 'service', 16, 'services/peJPlxdsAaqXaMOKB1YA4ZmYLIOFVSCx31sBiXXm.png', 'details', '2022-03-15 16:46:25', '2022-03-15 16:46:25'),
(28, 'service', 16, 'services/v0mxcyw1BQCDyK1ge0aGCN5sKfmpdWysw9AXati9.png', 'details', '2022-03-15 16:46:25', '2022-03-15 16:46:25'),
(29, 'service', 17, 'services/zMcR9yoP9XBgnKWTCHJVvFxDdJL79a8qfhhExJib.png', 'a', '2022-03-17 12:18:06', '2022-03-17 12:18:06'),
(30, 'service', 17, 'services/VnISV1Sc2n474AEe4ZPBZhwLPD4CB84LSOsB0i3Z.png', 'a', '2022-03-17 12:18:06', '2022-03-17 12:18:06'),
(31, 'service', 17, 'services/fdsxuDoV45Y7tDX0TrdGGmkhB3WiXATC493Ko3bR.png', 'a', '2022-03-17 12:18:06', '2022-03-17 12:18:06'),
(32, 'service', 7, 'services/F7JcAcaWhWHEoy2YRPm4bPfNHu3gfveLxYcGBfx7.png', 'anss', '2022-03-20 15:50:23', '2022-03-20 15:50:23'),
(33, 'service', 16, 'services/8NkOs74w508YAHLs70g2E7U9MkX44CsSVm1l8IMN.png', 'anss visual', '2022-03-20 15:55:39', '2022-03-20 15:55:39'),
(71, 'innen', 13, 'services/zp2fXuMcN233QLQK5aQDfFyQSOOUWddns7kYFb7M.jpg', '123', '2022-03-30 01:12:50', '2022-03-30 01:12:50'),
(72, 'innen', 13, 'services/7f8ETeCWpcOxh9WHGxXjCPyOvtDNtBXVCX1Wkb1r.jpg', '123', '2022-03-30 01:12:50', '2022-03-30 01:12:50'),
(73, 'auben', 13, 'services/K38peDku3UTA1srCDjZVpQvQe1QLr3XAaGY6wQiZ.jpg', '123', '2022-03-30 01:12:50', '2022-03-30 01:12:50'),
(74, 'auben', 13, 'services/AQ1tv3DWVqfGPoTe3OFyEV6JdjXSnnYr4Z0cCAv9.jpg', '123', '2022-03-30 01:12:51', '2022-03-30 01:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2022-03-21 21:48:21', '2022-03-21 21:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `type` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `head_3d` text DEFAULT NULL,
  `first_head` text DEFAULT NULL,
  `second_head` text DEFAULT NULL,
  `innen` text DEFAULT NULL,
  `auben` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `status`, `type`, `name`, `head_3d`, `first_head`, `second_head`, `innen`, `auben`, `desc`, `created_at`, `updated_at`) VALUES
(7, 1, 'gips', 'Gips-Deko', NULL, 'Gips und Gipskartonplatten', 'Unser Entwurf , Unsere Ausführung', NULL, NULL, 'We create functional spaces and decorative elements with the help of gypsum boards.Gypsum boards are cost-effective, offer increased flexibility and they are easy to install as well which makes them, our top choice to work with. We specialize in decorating, dividing, creating new spaces, lighting, and painting, and ensure that our customers have a hassle-free experience.We provide customized interior design solutions, we listen to our customers and provide them with the whole layout, discuss it with themmake suitable changes if needed, and then proceed with the whole process.', '2022-03-15 12:10:44', '2022-03-23 02:29:03'),
(13, 1, 'visual', 'VISUALISIERUNG', NULL, NULL, NULL, 'With our high quality realistic rendering, you will be able to see your project from different angles befor the onstruction is evenscheduled ,we have the ability to simulate all kind of materials and every condition of lights and atmospheres to achieve any result that match with your needs or your budget', 'With our high quality realistic rendering, you will be able to see your project from different angles befor the onstruction is evenscheduled ,we have the ability to simulate all kind of materials and every condition of lights and atmospheres to achieve any result that match with your needs or your budget', NULL, '2022-03-15 16:32:12', '2022-03-21 19:01:41'),
(16, 1, '3d', 'andere 3d services', 'Idee Analyse , Diagrame und Produkten', NULL, NULL, NULL, NULL, NULL, '2022-03-15 16:46:25', '2022-03-20 15:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `path` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `status`, `path`, `title`, `created_at`, `updated_at`) VALUES
(4, 1, 'shop/jNtSyuIArfEvgEuCseS3htEKQFjcuUzoVuZ6MXeV.png', 'any thing', '2022-03-21 18:42:26', '2022-03-21 18:42:26'),
(2, 1, 'shop/TvYi9GgskTMbjQ7PVj7UaHrlrhoDU6YFHae65DTt.png', 'slider 2', '2022-03-20 18:39:14', '2022-03-21 18:51:02'),
(3, 1, 'shop/JahypJtgFXlghC0GD6TseM3JnbNIgmxY3pZELhev.png', 'slider 3', '2022-03-20 19:04:57', '2022-03-20 19:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `link`) VALUES
(1, 'Facebook', 'https://www.google.com/'),
(2, 'Twitter', 'https://www.google.com/'),
(3, 'Instagram', 'https://www.google.com/'),
(4, 'Linkedin', NULL),
(5, 'Skype', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'anss rabie', 'admin@admin.com', '$2y$10$rhGAwgH9sWFAKf/.fpkx6uq9WMiKhEd6C8wyNOtk.iCnZCPvrchtO', 1, '2022-03-21 21:48:21', '2022-03-22 13:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `was`
--

CREATE TABLE `was` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `marker` tinyint(4) NOT NULL DEFAULT 0,
  `text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `was`
--

INSERT INTO `was` (`id`, `status`, `marker`, `text`, `created_at`, `updated_at`) VALUES
(3, 1, 0, 'Designing or solving design problems simple and fast using our developed artistic vision and our experience in 3D modeling and design prinzips .', '2022-03-16 14:15:39', '2022-03-21 18:35:28'),
(4, 1, 0, 'High quality realistic visualisation let you see the project from different angels befor the construction is even scheduled .', '2022-03-16 14:16:21', '2022-03-16 14:16:21'),
(5, 1, 0, 'Drywall work including paint and wallpaper .', '2022-03-16 14:16:34', '2022-03-27 20:48:25'),
(11, 1, 1, 'Neu ! Home decor products in our shop', '2022-03-21 18:33:03', '2022-03-27 20:47:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `descriptions`
--
ALTER TABLE `descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `paragraphs`
--
ALTER TABLE `paragraphs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `was`
--
ALTER TABLE `was`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `descriptions`
--
ALTER TABLE `descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paragraphs`
--
ALTER TABLE `paragraphs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `was`
--
ALTER TABLE `was`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `nti_ecommerce`
--
CREATE DATABASE IF NOT EXISTS `nti_ecommerce` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `nti_ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `addresses` (`id`, `user_id`, `region_id`, `building`, `floor`, `flat`, `street`, `notes`, `type`, `created_at`, `updated_at`) VALUES
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
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
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price_after_discount` decimal(8,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
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

INSERT INTO `orders` (`id`, `address_id`, `coupon_id`, `notes`, `total_price`, `status`, `delivered_at`, `payment_methods`, `number`, `created_at`, `updated_at`) VALUES
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
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` smallint(6) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`) VALUES
(4, 15, 3),
(5, 15, 2),
(4, 20, 3),
(4, 23, 1),
(1, 27, 10);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `products` (`id`, `brand_id`, `subcategory_id`, `name_ar`, `name_en`, `image`, `price`, `code`, `details_ar`, `details_en`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
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
-- Stand-in structure for view `product_details`
-- (See below for the actual view)
--
CREATE TABLE `product_details` (
`id` bigint(20) unsigned
,`brand_id` bigint(20) unsigned
,`subcategory_id` bigint(20) unsigned
,`name_ar` varchar(32)
,`name_en` varchar(32)
,`image` varchar(128)
,`price` decimal(8,2) unsigned
,`code` bigint(20) unsigned
,`details_ar` varchar(32)
,`details_en` varchar(32)
,`quantity` smallint(4) unsigned
,`status` tinyint(1) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`category_id` bigint(20) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `product_spec`
--

CREATE TABLE `product_spec` (
  `spec_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(32) NOT NULL,
  `name_en` varchar(32) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `city_id`, `name_ar`, `name_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'عين شمس', 'Ain Shams', 1, '2022-07-31 21:21:00', NULL),
(2, 2, 'المرج', 'El Marg', 1, '2022-07-31 21:21:00', NULL),
(3, 1, 'حي الجامعة', 'Hy El-Gamaa', 1, '2022-07-31 21:27:44', NULL),
(4, 1, 'المشاية السفلية', 'lower treadmill', 1, '2022-07-31 21:27:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rate` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`user_id`, `product_id`, `comment`, `rate`, `created_at`, `updated_at`) VALUES
(1, 15, ' Cras aliquet lacus tellus, quis vestibulum dui convallis a. ', 2, '2022-08-05 12:53:46', NULL),
(3, 23, ' Phasellus accumsan, nisl non ultrices cursus, elit neque tincidunt quam, ut auctor quam sem vitae dolor. Pellentesque fermentum a purus eu eleifend.', 3, '2022-08-05 12:56:12', NULL),
(7, 16, ' Cras aliquet lacus tellus, quis vestibulum dui convallis a.', 3, '2022-08-05 12:54:53', NULL),
(7, 23, 'Pellentesque fermentum a purus eu eleifend.', 1, '2022-08-05 12:56:12', NULL),
(8, 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec fringilla lorem. Donec venenatis ultricies tellus nec dignissim.', 3, '2022-08-05 12:53:46', NULL),
(9, 15, 'Phasellus accumsan, nisl non ultrices cursus, elit neque tincidunt quam, ut auctor quam sem vitae dolor. Pellentesque fermentum a purus eu eleifend.', 5, '2022-08-05 12:54:53', NULL);

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
  `category_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `subcategories` (`id`, `category_id`, `name_ar`, `name_en`, `image`, `status`, `created_at`, `updated_at`) VALUES
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
  `password` varchar(255) NOT NULL,
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
(2, 'Yasser', 'Tarek', 1, '', '01011250164', 'yasertarek@test.com', '963p@$$word', NULL, NULL, 1, '2022-07-31 21:31:13', NULL),
(3, 'Mohammed', 'Tarek', 0, '', '01234567891', 'mohamedTarek@fakemail.com', '$2y$10$7FL83A3/XeCd7CNk72onaeKLIlb8DJfOBmJAUDN0X4ZwraPB8uOy2', 205613, NULL, 1, '2022-08-03 20:20:03', NULL),
(7, 'Yassir', 'Tarik', 0, '', '01098159753', 'yasertarek420@gmail.com', '$2y$10$unlVx0AexS2efeyEsxPTs.gwDgvEw0xIkv8YvmK.8lSMxZACzP7Iu', 590413, '2022-08-04 01:26:25', 1, '2022-08-04 01:22:51', NULL),
(8, 'Manar', 'Khalid', 0, '', '01536987157', 'manarkhalidelsakka@gmail.com', '$2y$10$ygAnPydDeryiFcmW1oe/Mep2L5NkPJY5Q51Ti.UdGH9kCXoyFFLH2', 833316, '2022-08-04 12:40:58', 1, '2022-08-04 12:40:38', NULL),
(9, 'Sohila', 'Khalid', 0, '', '01278951024', 'sohilakhalidelsakka@yahoo.com', '$2y$10$gs2Eubjv0VT8M4N0EBHqIez3qtojqL4tq3n0Jm6EW1eyBqzIz3eUm', 893772, '2022-08-04 13:22:29', 1, '2022-08-04 13:21:41', NULL);

-- --------------------------------------------------------

--
-- Structure for view `product_details`
--
DROP TABLE IF EXISTS `product_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_details`  AS SELECT `products`.`id` AS `id`, `products`.`brand_id` AS `brand_id`, `products`.`subcategory_id` AS `subcategory_id`, `products`.`name_ar` AS `name_ar`, `products`.`name_en` AS `name_en`, `products`.`image` AS `image`, `products`.`price` AS `price`, `products`.`code` AS `code`, `products`.`details_ar` AS `details_ar`, `products`.`details_en` AS `details_en`, `products`.`quantity` AS `quantity`, `products`.`status` AS `status`, `products`.`created_at` AS `created_at`, `products`.`updated_at` AS `updated_at`, `subcategories`.`category_id` AS `category_id` FROM (`products` left join `subcategories` on(`products`.`subcategory_id` = `subcategories`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `users_id` (`user_id`),
  ADD KEY `regions_id` (`region_id`);

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
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `products_id` (`product_id`);

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
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `products_id` (`product_id`);

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
  ADD PRIMARY KEY (`offer_id`,`product_id`),
  ADD KEY `products_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `addresses_id` (`address_id`),
  ADD KEY `coupons_id` (`coupon_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`product_id`,`order_id`),
  ADD KEY `orders_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `brands_id` (`brand_id`),
  ADD KEY `subcategories_id` (`subcategory_id`);

--
-- Indexes for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD PRIMARY KEY (`spec_id`,`product_id`),
  ADD KEY `products_id` (`product_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `cities_id` (`city_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `products_id` (`product_id`);

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
  ADD KEY `categories_id` (`category_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `addresses_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `favs`
--
ALTER TABLE `favs`
  ADD CONSTRAINT `favs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favs_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD CONSTRAINT `offer_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `offer_product_ibfk_2` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD CONSTRAINT `product_spec_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_spec_ibfk_2` FOREIGN KEY (`spec_id`) REFERENCES `specs` (`id`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"nti_ecommerce\",\"table\":\"product_details\"},{\"db\":\"nti_ecommerce\",\"table\":\"products\"},{\"db\":\"nti_ecommerce\",\"table\":\"subcategories\"},{\"db\":\"nti_ecommerce\",\"table\":\"categories\"},{\"db\":\"nti_ecommerce\",\"table\":\"brands\"},{\"db\":\"nti_ecommerce\",\"table\":\"reviews\"},{\"db\":\"nti_ecommerce\",\"table\":\"users\"},{\"db\":\"nti_ecommerce\",\"table\":\"product_spec\"},{\"db\":\"nti_ecommerce\",\"table\":\"addresses\"},{\"db\":\"nti_ecommerce\",\"table\":\"specs\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('nti_ecommerce', 'subcategories', 'name_ar');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'nti_ecommerce', 'products', '{\"sorted_col\":\"`products`.`price` ASC\"}', '2022-08-01 15:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-06 10:29:17', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":185}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
