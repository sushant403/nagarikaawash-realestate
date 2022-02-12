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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"location\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\"]', NULL, NULL),
(11, 'payment_bank_transfer_status', '1', NULL, NULL),
(12, 'payment_stripe_name', 'Pay online via Stripe', NULL, NULL),
(13, 'payment_stripe_description', 'Payment with Stripe', NULL, NULL),
(14, 'payment_stripe_client_id', 'pk_test_51JGbXaLmHOfJnFasFfg5ksgorTTlnnqt8RzdrT1qIjqg5sGcVK3fNWBZu1OZ84ndCI4fo0Bdm7TL1yLfiC6e7nF700hBjwxbKa', NULL, NULL),
(15, 'payment_stripe_secret', 'sk_test_51JGbXaLmHOfJnFasntP9rqE8wZ0qghWeMKcdlQphvMNo7C2sVaTFgRcjlnof8XVBRZspgVk7ctO62QlY10E8rHNT002pnOk3VI', NULL, NULL),
(16, 'payment_stripe_status', '1', NULL, NULL),
(17, 'payment_paypal_name', 'Pay online via PayPal', NULL, NULL),
(18, 'payment_paypal_description', 'Payment with PayPal', NULL, NULL),
(19, 'payment_paypal_client_id', 'AZlbcwqaPAMIZ27JGOMRYrkWlMdvylKDgoNwS6rzww4_Q2naixJ9KwoOgDdhkwXBro7yTxKOV1hADDMO', NULL, NULL),
(20, 'payment_paypal_secret', 'EG7289O15aSq5bT_XLY0VhA0slkme6rlKTBp0Z1KyGY-cJoq7kPIxAvDbpVd8npd_-jBHcnYuMjF9CV3', NULL, NULL),
(21, 'payment_paypal_status', '1', NULL, NULL),
(22, 'real_estate_square_unit', 'ft2', NULL, NULL),
(23, 'real_estate_convert_money_to_text_enabled', '0', NULL, NULL),
(24, 'real_estate_thousands_separator', ',', NULL, NULL),
(25, 'real_estate_decimal_separator', '.', NULL, NULL),
(26, 'real_estate_enabled_register', '1', NULL, NULL),
(27, 'verify_account_email', '1', NULL, NULL),
(28, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(29, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(30, 'permalink-botble-location-models-city', 'city', NULL, NULL),
(31, 'real_estate_review_enabled', '1', NULL, NULL),
(32, 'real_estate_review_fields', '[[{\"key\":\"field\",\"value\":\"service\"}],[{\"key\":\"field\",\"value\":\"value\"}],[{\"key\":\"field\",\"value\":\"location\"}],[{\"key\":\"field\",\"value\":\"cleanliness\"}]]', NULL, NULL),
(86, 'theme-nagarikaawash-bedroom', '[[{\"key\":\"key\",\"value\":\"1\"},{\"key\":\"value\",\"value\":\"1\"}],[{\"key\":\"key\",\"value\":\"2\"},{\"key\":\"value\",\"value\":\"2\"}],[{\"key\":\"key\",\"value\":\"3\"},{\"key\":\"value\",\"value\":\"3\"}],[{\"key\":\"key\",\"value\":\"4\"},{\"key\":\"value\",\"value\":\"4\"}],[{\"key\":\"key\",\"value\":\"5\"},{\"key\":\"value\",\"value\":\"5\"}]]', NULL, NULL),
(87, 'theme-vi-nagarikaawash-bedroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(88, 'theme-nagarikaawash-bathroom', '[[{\"key\":\"key\",\"value\":\"1\"},{\"key\":\"value\",\"value\":\"1\"}],[{\"key\":\"key\",\"value\":\"2\"},{\"key\":\"value\",\"value\":\"2\"}],[{\"key\":\"key\",\"value\":\"3\"},{\"key\":\"value\",\"value\":\"3\"}],[{\"key\":\"key\",\"value\":\"4\"},{\"key\":\"value\",\"value\":\"4\"}],[{\"key\":\"key\",\"value\":\"5\"},{\"key\":\"value\",\"value\":\"5\"}]]', NULL, NULL),
(89, 'theme-vi-nagarikaawash-bathroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(90, 'language_hide_default', '1', NULL, NULL),
(91, 'language_switcher_display', 'list', NULL, NULL),
(92, 'language_display', 'all', NULL, NULL),
(93, 'language_hide_languages', '[]', NULL, NULL),
(94, 'media_random_hash', '5b23356d20e578ae0915a41b3b8a738c', NULL, NULL),
(117, 'show_admin_bar', '1', NULL, NULL),
(118, 'theme', 'nagarikaawash', NULL, NULL),
(119, 'admin_logo', 'nagarik-side.png', NULL, NULL),
(120, 'admin_favicon', 'nagarik-square-01.png', NULL, NULL),
(121, 'theme-nagarikaawash-skin', 'yellow-skin', NULL, NULL),
(122, 'theme-nagarikaawash-font_heading', 'Noto Sans', NULL, NULL),
(123, 'theme-nagarikaawash-font_body', 'Jost', NULL, NULL),
(124, 'theme-nagarikaawash-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, NULL),
(125, 'theme-nagarikaawash-cookie_consent_learn_more_url', 'https://nagarikaawash.com/cookie-policy', NULL, NULL),
(126, 'theme-nagarikaawash-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(127, 'theme-nagarikaawash-copyright', '©2022. All rights reserved by Nagarik Aawash Real Estate.', NULL, NULL),
(128, 'theme-nagarikaawash-homepage_id', '1', NULL, NULL),
(129, 'theme-nagarikaawash-blog_page_id', '12', NULL, NULL),
(130, 'theme-nagarikaawash-logo', 'nagarik-side.png', NULL, NULL),
(131, 'theme-nagarikaawash-favicon', 'nagarik-square-01.png', NULL, NULL),
(132, 'theme-nagarikaawash-logo_white', 'nagarik-side.png', NULL, NULL),
(133, 'theme-nagarikaawash-img_loading', 'nagarik-square-01.png', NULL, NULL),
(134, 'theme-nagarikaawash-properties_page_layout', 'full', NULL, NULL),
(135, 'theme-nagarikaawash-property_header_layout', 'layout-1', NULL, NULL),
(136, 'theme-nagarikaawash-site_title', 'Nagarik Aawash Real Estate - Nepal\'s Dream Home Land', NULL, NULL),
(137, 'theme-nagarikaawash-seo_description', 'Nagarik Aawash Real Estate - Nepal\'s Dream Home Land', NULL, NULL),
(138, 'theme-nagarikaawash-seo_og_image', 'screenshot.png', NULL, NULL),
(139, 'theme-nagarikaawash-address', 'Kathmandu, Bagmati, Nepal', NULL, NULL),
(140, 'theme-nagarikaawash-hotline', '+977 9803834168', NULL, NULL),
(141, 'theme-nagarikaawash-email', 'contact@nagarikaawash.com', NULL, NULL),
(142, 'theme-nagarikaawash-about-us', 'Nagarik Aawash Real Estate - Nepal\'s Dream Home Land', NULL, NULL),
(143, 'theme-nagarikaawash-vi-skin', 'blue-skin', NULL, NULL),
(144, 'theme-nagarikaawash-vi-font_heading', 'Montserrat', NULL, NULL),
(145, 'theme-nagarikaawash-vi-font_body', 'Montserrat', NULL, NULL),
(146, 'theme-nagarikaawash-vi-copyright', '©2022 Nagarik Aawash. Tất cả quyền đã được bảo hộ bởi TheSky9.', NULL, NULL),
(147, 'theme-nagarikaawash-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(148, 'theme-nagarikaawash-vi-cookie_consent_learn_more_url', 'http://localhost/cookie-policy', NULL, NULL),
(149, 'theme-nagarikaawash-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(150, 'theme-nagarikaawash-vi-homepage_id', '1', NULL, NULL),
(151, 'theme-nagarikaawash-vi-blog_page_id', '28', NULL, NULL),
(152, 'theme-nagarikaawash-vi-logo', 'general/logo.png', NULL, NULL),
(153, 'theme-nagarikaawash-vi-logo_white', 'general/logo-light.png', NULL, NULL),
(154, 'theme-nagarikaawash-vi-img_loading', 'general/img-loading.jpg', NULL, NULL),
(155, 'theme-nagarikaawash-vi-properties_page_layout', 'full', NULL, NULL),
(156, 'theme-nagarikaawash-vi-property_header_layout', 'layout-1', NULL, NULL),
(157, 'theme-nagarikaawash-vi-site_title', 'Nagarik Aawash - Laravel Real Estate Multilingual Syste', NULL, NULL),
(158, 'theme-nagarikaawash-vi-seo_description', 'Nagarik Aawash is a premium real estate related websites build on Laravel. With an advanced admin dashboard that will help you create a local or global real-estate directory site.', NULL, NULL),
(159, 'theme-nagarikaawash-vi-seo_og_image', 'general/screenshot.png', NULL, NULL),
(160, 'theme-nagarikaawash-vi-address', 'Collins Street West, Victoria 8007, Australia.', NULL, NULL),
(161, 'theme-nagarikaawash-vi-hotline', '+1 246-345-0695', NULL, NULL),
(162, 'theme-nagarikaawash-vi-email', 'info@example.com', NULL, NULL),
(163, 'theme-nagarikaawash-vi-about-us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL),
(164, 'theme-nagarikaawash-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ti-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ti-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ti-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"ti-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"ti-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]', NULL, NULL),
(165, 'theme-vi-nagarikaawash-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ti-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ti-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ti-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"ti-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"ti-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]', NULL, NULL),
(166, 'theme-nagarikaawash-min_price', '[[{\"key\":\"key\",\"value\":\"500\"},{\"key\":\"value\",\"value\":\"500\"}],[{\"key\":\"key\",\"value\":\"1000\"},{\"key\":\"value\",\"value\":\"1000\"}],[{\"key\":\"key\",\"value\":\"2000\"},{\"key\":\"value\",\"value\":\"2000\"}],[{\"key\":\"key\",\"value\":\"5000\"},{\"key\":\"value\",\"value\":\"5000\"}],[{\"key\":\"key\",\"value\":\"10000\"},{\"key\":\"value\",\"value\":\"10000\"}]]', NULL, NULL),
(167, 'theme-vi-nagarikaawash-min_price', '[[{\"key\":\"label\",\"value\":500},{\"key\":\"value\",\"value\":500}],[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}]]', NULL, NULL),
(168, 'theme-nagarikaawash-max_price', '[[{\"key\":\"key\",\"value\":\"1000\"},{\"key\":\"value\",\"value\":\"1000\"}],[{\"key\":\"key\",\"value\":\"2000\"},{\"key\":\"value\",\"value\":\"2000\"}],[{\"key\":\"key\",\"value\":\"5000\"},{\"key\":\"value\",\"value\":\"5000\"}],[{\"key\":\"key\",\"value\":\"10000\"},{\"key\":\"value\",\"value\":\"10000\"}],[{\"key\":\"key\",\"value\":\"50000\"},{\"key\":\"value\",\"value\":\"50000\"}]]', NULL, NULL),
(169, 'theme-vi-nagarikaawash-max_price', '[[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}],[{\"key\":\"label\",\"value\":50000},{\"key\":\"value\",\"value\":50000}]]', NULL, NULL),
(174, 'admin_email', '[]', NULL, NULL),
(175, 'time_zone', 'Asia/Kathmandu', NULL, NULL),
(176, 'locale_direction', 'ltr', NULL, NULL),
(177, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(178, 'login_screen_backgrounds', '[]', NULL, NULL),
(179, 'admin_title', 'Nagarik Aawash Real Estate', NULL, NULL),
(180, 'rich_editor', 'ckeditor', NULL, NULL),
(181, 'enable_change_admin_theme', '0', NULL, NULL),
(182, 'enable_cache', '0', NULL, NULL),
(183, 'cache_time', '10', NULL, NULL),
(184, 'cache_admin_menu_enable', '0', NULL, NULL),
(185, 'google_site_verification', '', NULL, NULL),
(186, 'cache_time_site_map', '3600', NULL, NULL),
(187, 'google_analytics', '', NULL, NULL),
(188, 'analytics_view_id', '', NULL, NULL),
(189, 'analytics_service_account_credentials', '', NULL, NULL),
(190, 'newsletter_mailchimp_api_key', '', NULL, NULL),
(191, 'newsletter_mailchimp_list_id', '', NULL, NULL),
(192, 'newsletter_sendgrid_api_key', '', NULL, NULL),
(193, 'newsletter_sendgrid_list_id', '', NULL, NULL),
(194, 'enable_captcha', '0', NULL, NULL),
(195, 'captcha_type', 'v2', NULL, NULL),
(196, 'captcha_hide_badge', '0', NULL, NULL),
(197, 'captcha_site_key', '', NULL, NULL),
(198, 'captcha_secret', '', NULL, NULL),
(199, 'simple_slider_using_assets', '1', NULL, NULL),
(200, 'locale', 'en', NULL, NULL),
(201, 'default_admin_theme', 'light', NULL, NULL),
(202, 'admin_locale_direction', 'ltr', NULL, NULL),
(203, 'licensed_to', 'nagarikaawash', NULL, NULL),
(204, 'default_payment_method', 'bank_transfer', NULL, NULL),
(205, 'real_estate_enable_auto_detect_visitor_currency', '0', NULL, NULL),
(206, 'currencies_is_default', '0', NULL, NULL),
(207, 'real_estate_enable_credits_system', '0', NULL, NULL),
(208, 'enable_post_approval', '1', NULL, NULL),
(209, 'property_expired_after_days', '45', NULL, NULL),
(210, 'theme-nagarikaawash-show_site_name', '1', NULL, NULL),
(211, 'theme-nagarikaawash-seo_title', 'Nagarik Aawash Real Estate - Nepal\'s Dream Home Land', NULL, NULL),
(212, 'theme-nagarikaawash-preloader_enabled', 'no', NULL, NULL),
(213, 'theme-nagarikaawash-enable_sticky_header', 'yes', NULL, NULL),
(214, 'theme-nagarikaawash-show_map_on_properties_page', 'no', NULL, NULL),
(215, 'theme-nagarikaawash-number_of_featured_cities', '10', NULL, NULL),
(216, 'theme-nagarikaawash-number_of_properties_for_sale', '8', NULL, NULL),
(217, 'theme-nagarikaawash-number_of_properties_for_rent', '8', NULL, NULL),
(218, 'theme-nagarikaawash-number_of_properties_per_page', '15', NULL, NULL),
(219, 'theme-nagarikaawash-number_of_related_properties', '8', NULL, NULL),
(220, 'theme-nagarikaawash-number_of_recently_viewed_properties', '3', NULL, NULL),
(221, 'theme-nagarikaawash-home_banner_description', '', NULL, NULL),
(222, 'theme-nagarikaawash-home_banner', 'bg.webp', NULL, NULL),
(223, 'theme-nagarikaawash-properties_description', 'Find your dream home at Nagar Aawash Real Estate', NULL, NULL),
(224, 'theme-nagarikaawash-number_of_posts_in_a_category', '12', NULL, NULL),
(225, 'theme-nagarikaawash-number_of_posts_in_a_tag', '12', NULL, NULL),
(226, 'theme-nagarikaawash-cookie_consent_enable', 'no', NULL, NULL),
(227, 'theme-nagarikaawash-cookie_consent_style', 'full-width', NULL, NULL),
(228, 'theme-nagarikaawash-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(229, 'theme-nagarikaawash-cookie_consent_background_color', '#000000', NULL, NULL),
(230, 'theme-nagarikaawash-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(231, 'theme-nagarikaawash-cookie_consent_max_width', '1170', NULL, NULL),
(232, 'media_driver', 'public', NULL, NULL),
(233, 'media_aws_access_key_id', '', NULL, NULL),
(234, 'media_aws_secret_key', '', NULL, NULL),
(235, 'media_aws_default_region', '', NULL, NULL),
(236, 'media_aws_bucket', '', NULL, NULL),
(237, 'media_aws_url', '', NULL, NULL),
(238, 'media_aws_endpoint', '', NULL, NULL),
(239, 'media_do_spaces_access_key_id', '', NULL, NULL),
(240, 'media_do_spaces_secret_key', '', NULL, NULL),
(241, 'media_do_spaces_default_region', '', NULL, NULL),
(242, 'media_do_spaces_bucket', '', NULL, NULL),
(243, 'media_do_spaces_endpoint', '', NULL, NULL),
(244, 'media_do_spaces_cdn_enabled', '0', NULL, NULL),
(245, 'media_do_spaces_cdn_custom_domain', '', NULL, NULL),
(246, 'media_wasabi_access_key_id', '', NULL, NULL),
(247, 'media_wasabi_secret_key', '', NULL, NULL),
(248, 'media_wasabi_default_region', '', NULL, NULL),
(249, 'media_wasabi_bucket', '', NULL, NULL),
(250, 'media_wasabi_root', '/', NULL, NULL),
(251, 'media_bunnycdn_hostname', '', NULL, NULL),
(252, 'media_bunnycdn_zone', '', NULL, NULL),
(253, 'media_bunnycdn_key', '', NULL, NULL),
(254, 'media_bunnycdn_region', '', NULL, NULL),
(255, 'media_turn_off_automatic_url_translation_into_latin', '0', NULL, NULL),
(256, 'media_default_placeholder_image', '', NULL, NULL),
(257, 'media_chunk_enabled', '0', NULL, NULL),
(258, 'media_chunk_size', '1048576', NULL, NULL),
(259, 'media_max_file_size', '1048576', NULL, NULL),
(260, 'media_watermark_enabled', '0', NULL, NULL),
(261, 'media_watermark_source', 'nagarik-square-01.png', NULL, NULL),
(262, 'media_watermark_size', '10', NULL, NULL),
(263, 'watermark_opacity', '70', NULL, NULL),
(264, 'media_watermark_position', 'bottom-right', NULL, NULL),
(265, 'watermark_position_x', '10', NULL, NULL),
(266, 'watermark_position_y', '10', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
