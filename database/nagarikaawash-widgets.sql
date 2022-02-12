-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 12, 2022 at 01:45 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nagarik_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'ShortcodeWidget', 'footer_sidebar_1', 'nagarikaawash', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"sign-up\\\"][\\/static-block]\"}', NULL, NULL),
(2, 'CustomMenuWidget', 'footer_sidebar_2', 'nagarikaawash', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', NULL, NULL),
(3, 'CustomMenuWidget', 'footer_sidebar_2', 'nagarikaawash', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"MORE INFORMATION\",\"menu_id\":\"more-information\"}', NULL, NULL),
(4, 'CustomMenuWidget', 'footer_sidebar_2', 'nagarikaawash', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"NEWS\",\"menu_id\":\"news\"}', NULL, NULL),
(5, 'ShortcodeWidget', 'footer_sidebar_3', 'nagarikaawash', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"download-app-footer\\\"][\\/static-block]\"}', NULL, NULL),
(6, 'CategoriesWidget', 'primary_sidebar', 'nagarikaawash', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', NULL, NULL),
(7, 'RecentPostsWidget', 'primary_sidebar', 'nagarikaawash', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', NULL, NULL),
(8, 'FeaturedPropertiesWidget', 'primary_sidebar', 'nagarikaawash', 0, '{\"id\":\"FeaturedPropertiesWidget\",\"name\":\"Featured properties\",\"number_display\":\"5\"}', NULL, NULL),
(9, 'NewsletterWidget', 'footer_sidebar_3', 'nagarikaawash', 1, '{\"id\":\"NewsletterWidget\",\"name\":\"Subscribe\"}', NULL, NULL),
(10, 'ShortcodeWidget', 'footer_sidebar_1', 'nagarikaawash-vi', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"sign-up\\\"][\\/static-block]\"}', NULL, NULL),
(11, 'CustomMenuWidget', 'footer_sidebar_2', 'nagarikaawash-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"ve-chung-toi\"}', NULL, NULL),
(12, 'CustomMenuWidget', 'footer_sidebar_2', 'nagarikaawash-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"MORE INFORMATION\",\"menu_id\":\"thong-tin-them\"}', NULL, NULL),
(13, 'CustomMenuWidget', 'footer_sidebar_2', 'nagarikaawash-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"NEWS\",\"menu_id\":\"tin-tuc\"}', NULL, NULL),
(14, 'ShortcodeWidget', 'footer_sidebar_3', 'nagarikaawash-vi', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"download-app-footer\\\"][\\/static-block]\"}', NULL, NULL),
(15, 'CategoriesWidget', 'primary_sidebar', 'nagarikaawash-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Danh mục\"}', NULL, NULL),
(16, 'RecentPostsWidget', 'primary_sidebar', 'nagarikaawash-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Bài viết gần đây\",\"number_display\":\"5\"}', NULL, NULL),
(17, 'FeaturedPropertiesWidget', 'primary_sidebar', 'nagarikaawash-vi', 0, '{\"id\":\"FeaturedPropertiesWidget\",\"name\":\"Featured properties\",\"number_display\":\"5\"}', NULL, NULL),
(18, 'NewsletterWidget', 'footer_sidebar_3', 'nagarikaawash-vi', 1, '{\"id\":\"NewsletterWidget\",\"name\":\"Subscribe\"}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
