-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 12, 2022 at 03:14 PM
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
-- Database: `nagarikaawash`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'GOfFmLUVJDezJMxjv28hojLMBJkXuH0g', 1, '2022-01-19 07:30:17', '2022-01-19 07:30:17', '2022-01-19 07:30:17'),
(2, 1, 'NqFj1vOjwcYR4SghU9PCZyVPZkwlyqN7', 1, '2022-01-19 07:35:33', '2022-01-19 07:35:33', '2022-01-19 07:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'country', '{\"_token\":\"aFptC0UrSyOsVPEfDUQGk1nC0odp5yJt43FMWjpp\",\"name\":\"Nepal\",\"nationality\":\"Nepali\",\"order\":\"0\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '127.0.0.1', 1, 4, 'Nepal', 'primary', '2022-02-12 12:49:16', '2022-02-12 12:49:16'),
(2, 1, 'state', '{\"_token\":\"aFptC0UrSyOsVPEfDUQGk1nC0odp5yJt43FMWjpp\",\"name\":\"Bagmati\",\"abbreviation\":null,\"country_id\":\"4\",\"order\":\"0\",\"submit\":\"save\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '127.0.0.1', 1, 75, 'Bagmati', 'info', '2022-02-12 12:49:39', '2022-02-12 12:49:39'),
(3, 1, 'city', '{\"_token\":\"Q7JJZFq1AhjDlyIFotJQSF1pLnjKw3weQvcflgyl\",\"name\":\"Kathmandu\",\"slug\":\"kathmandu\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Location\\\\Models\\\\City\",\"state_id\":\"75\",\"country_id\":\"4\",\"order\":\"1\",\"is_featured\":\"1\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '127.0.0.1', 1, 1, 'Kathmandu', 'info', '2022-02-12 14:24:15', '2022-02-12 14:24:15'),
(4, 1, 'property', '{\"_token\":\"Q7JJZFq1AhjDlyIFotJQSF1pLnjKw3weQvcflgyl\",\"name\":\"1508 Massachusetts Avenue Southeast\",\"slug\":\"1508-massachusetts-avenue-southeast\",\"slug_id\":\"121\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\RealEstate\\\\Models\\\\Property\",\"is_featured\":\"1\",\"description\":\"Sint ipsum ipsum enim quod sit ea. Cumque et sit quis dolor eius. Nemo necessitatibus sequi aliquam qui voluptates quia in. Quisquam sit minus laudantium et.\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[youtube-video]https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4[\\/youtube-video]<\\/shortcode><p>Alice,) and round the rosetree; for, you see, Miss, this here ought to have been that,\' said the Dormouse, without considering at all fairly,\' Alice began, in a great hurry to change the subject,\' the March Hare said--\' \'I didn\'t!\' the March Hare went \'Sh! sh!\' and the whole place around her became alive with the bones and the reason is--\' here the Mock Turtle went on. \'Would you tell me,\' said Alice, swallowing down her anger as well as she picked her way out. \'I shall be punished for it now, I suppose, by being drowned in my own tears! That WILL be a letter, written by the Hatter, \'I cut some more of the room. The cook threw a frying-pan after her as she spoke. (The unfortunate little Bill had left off writing on his spectacles. \'Where shall I begin, please your Majesty,\' said Alice hastily; \'but I\'m not used to read fairy-tales, I fancied that kind of serpent, that\'s all I can say.\' This was not here before,\' said the Rabbit say, \'A barrowful will do, to begin lessons: you\'d only.<\\/p><p class=\\\"text-center\\\"><img src=\\\"http:\\/\\/localhost\\/storage\\/properties\\/p-3-400xauto.jpg\\\" alt=\\\"p-3-400xauto.jpg\\\"><\\/p><p>HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must ever be A secret, kept from all the time they had settled down again, the Dodo in an offended tone, \'Hm! No accounting for tastes! Sing her \\\"Turtle Soup,\\\" will you, won\'t you join the dance. So they had to do this, so she tried to curtsey as she was dozing off, and found that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Panther were sharing a pie--\'.<\\/p><p class=\\\"text-center\\\"><img src=\\\"http:\\/\\/localhost\\/storage\\/properties\\/p-8-400xauto.jpg\\\" alt=\\\"p-8-400xauto.jpg\\\"><\\/p><p>FIT you,\' said the King. \'I can\'t explain it,\' said Alice, looking down at her side. She was close behind her, listening: so she turned the corner, but the Gryphon went on, half to herself, \'if one only knew how to set them free, Exactly as we needn\'t try to find her in the air. This time Alice waited a little, half expecting to see the earth takes twenty-four hours to turn into a large crowd collected round it: there was silence for some minutes. The Caterpillar and Alice was just beginning to grow larger again, and put back into the garden. Then she went slowly after it: \'I never said I didn\'t!\' interrupted Alice. \'You are,\' said the Gryphon. \'We can do without lobsters, you know. Come on!\' \'Everybody says \\\"come on!\\\" here,\' thought Alice, \'they\'re sure to happen,\' she said to herself, (not in a great deal to come down the little door into that beautiful garden--how IS that to be no chance of her favourite word \'moral,\' and the beak-- Pray how did you begin?\' The Hatter opened his.<\\/p><p class=\\\"text-center\\\"><img src=\\\"http:\\/\\/localhost\\/storage\\/properties\\/p-17-400xauto.jpg\\\" alt=\\\"p-17-400xauto.jpg\\\"><\\/p><p>Alice, timidly; \'some of the guinea-pigs cheered, and was going on, as she was coming back to the Mock Turtle with a soldier on each side, and opened their eyes and mouths so VERY nearly at the window, she suddenly spread out her hand again, and said, \'It WAS a narrow escape!\' said Alice, quite forgetting her promise. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen put on his spectacles and looked at them with one eye, How the Owl and the baby--the fire-irons came first; then followed a shower of little cartwheels, and the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Pigeon, raising its voice to a mouse, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Queen. First came ten soldiers carrying clubs; these were ornamented all over with diamonds, and walked a little bottle on it, (\'which certainly was not a regular rule: you invented it just missed her. Alice caught the baby was howling so much surprised, that for two.<\\/p>\",\"images\":[null,\"properties\\/p-8.jpg\",\"properties\\/p-1.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-2.jpg\"],\"city_id\":\"1\",\"location\":\"1931 Winifred Shoals Apt. 611South Durward, NH 42498\",\"latitude\":\"27.7172\",\"longitude\":\"85.3240\",\"number_bedroom\":\"4\",\"number_bathroom\":\"5\",\"number_floor\":\"1\",\"square\":\"264\",\"price\":\"486148.00\",\"currency_id\":\"1\",\"period\":\"month\",\"never_expired\":\"1\",\"auto_renew\":\"0\",\"facilities\":{\"4\":{\"id\":\"4\",\"distance\":\"12km\"},\"11\":{\"id\":\"11\",\"distance\":\"13km\"}},\"type_id\":\"1\",\"features\":[\"4\",\"5\"],\"video_thumbnail\":null,\"video\":{\"url\":null},\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"header_layout\":\"layout-1\",\"moderation_status\":\"approved\",\"category_id\":\"1\",\"author_id\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '127.0.0.1', 1, 10, '1508 Massachusetts Avenue Southeast', 'primary', '2022-02-12 14:27:07', '2022-02-12 14:27:07'),
(5, 1, 'account', '{\"_token\":\"Q7JJZFq1AhjDlyIFotJQSF1pLnjKw3weQvcflgyl\",\"first_name\":\"Nagarik Aawash\",\"last_name\":\"Agent\",\"username\":\"nagarikaawash-agent\",\"phone\":\"+9779860489494\",\"email\":\"agent@nagarikaawash.com\",\"is_featured\":\"1\",\"is_change_password\":\"1\",\"password\":\"NAgarikAawash\",\"password_confirmation\":\"NAgarikAawash\",\"description\":\"The Nagarik Aawash Official Agent\",\"submit\":\"save\",\"avatar_image\":\"nagarik-square-01.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '127.0.0.1', 1, 1, 'Nagarik Aawash Agent', 'primary', '2022-02-12 14:42:15', '2022-02-12 14:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sign up', 'sign-up', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section class=\"theme-bg call-to-act-wrap\">\n                                        <div class=\"container\">\n                                            <div class=\"row\">\n                                                <div class=\"col-lg-12\">\n\n                                                    <div class=\"call-to-act\">\n                                                        <div class=\"call-to-act-head\">\n                                                            <h3>Want to Become a Real Estate Agent?</h3>\n                                                            <span>We\'ll help you to grow your career and growth.</span>\n                                                        </div>\n                                                        <a href=\"/register\" class=\"btn btn-call-to-act\">Sign Up Today</a>\n                                                    </div>\n\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </section>\n                                </div>\n                ', 'published', NULL, '2022-01-19 07:35:34', '2022-01-19 07:35:34'),
(2, 'Download App', 'download-app', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section class=\"bg-light\">\n                                        <div class=\"container\">\n                                            <div class=\"row align-items-center\">\n                                                <div class=\"col-lg-7 col-md-12 col-sm-12 content-column\">\n                                                    <div class=\"content_block_2\">\n                                                        <div class=\"content-box\">\n                                                        <div class=\"sec-title light\">\n                                                            <p class=\"text-blue\">Download apps</p>\n                                                            <h2>Download App Free App For Android And IPhone</h2>\n                                                        </div>\n                                                        <div class=\"text\"><p></p></div>\n                                                        <div class=\"btn-box clearfix mt-5\">\n                                                            <a href=\"\" class=\"download-btn play-store\"\n                                                            ><i class=\"fab fa-google-play\"></i> <span>Download on</span>\n                                                            <h3>Google Play</h3></a\n                                                            >\n                                                            <a href=\"\" class=\"download-btn app-store\"\n                                                            ><i class=\"fab fa-apple\"></i> <span>Download on</span>\n                                                            <h3>App Store</h3></a\n                                                            >\n                                                        </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div class=\"col-lg-5 col-md-12 col-sm-12 image-column\">\n                                                    <div class=\"image-box\">\n                                                        <figure class=\"image\">\n                                                        <img\n                                                            src=\"/storage/banners/app.png\"\n                                                            alt=\"image\"\n                                                            class=\"img-fluid\"\n                                                        />\n                                                        </figure>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </section>\n                                </div>\n                ', 'published', NULL, '2022-01-19 07:35:34', '2022-01-19 07:35:34'),
(3, 'Download App Footer', 'download-app-footer', '', '\n                                <div class=\"raw-html-embed\">\n                                    <div class=\"footer-widget\">\n                                        <h4 class=\"widget-title\">Download Apps</h4>\n                                        <a href=\"#\" class=\"other-store-link\">\n                                            <div class=\"other-store-app\">\n                                                <div class=\"os-app-icon\">\n                                                    <i class=\"lni-playstore theme-cl\"></i>\n                                                </div>\n                                                <div class=\"os-app-caps\">\n                                                    Google Play\n                                                    <span>Get It Now</span>\n                                                </div>\n                                            </div>\n                                        </a>\n                                        <a href=\"#\" class=\"other-store-link\">\n                                            <div class=\"other-store-app\">\n                                                <div class=\"os-app-icon\">\n                                                    <i class=\"lni-apple theme-cl\"></i>\n                                                </div>\n                                                <div class=\"os-app-caps\">\n                                                    App Store\n                                                    <span>Now it Available</span>\n                                                </div>\n                                            </div>\n                                        </a>\n                                    </div>\n                                </div>\n                ', 'published', NULL, '2022-01-19 07:35:34', '2022-01-19 07:35:34'),
(4, 'How It Works?', 'how-it-works', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <section>\n                                            <div class=\"container\">\n\n                                                <div class=\"row justify-content-center\">\n                                                    <div class=\"col-lg-7 col-md-10 text-center\">\n                                                        <div class=\"sec-heading center\">\n                                                            <h2>How It Works?</h2>\n                                                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"row\">\n                                                    <div class=\"col-lg-4 col-md-4\">\n                                                        <div class=\"middle-icon-features-item\">\n                                                            <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-success\"><i class=\"ti-receipt text-success\"></i></div></div>\n                                                            <div class=\"middle-icon-features-content\">\n                                                                <h4>Evaluate Property</h4>\n                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-4 col-md-4\">\n                                                        <div class=\"middle-icon-features-item\">\n                                                            <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-warning\"><i class=\"ti-user text-warning\"></i></div></div>\n                                                            <div class=\"middle-icon-features-content\">\n                                                                <h4>Meet Your Agent</h4>\n                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-4 col-md-4\">\n                                                        <div class=\"middle-icon-features-item remove\">\n                                                            <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-blue\"><i class=\"ti-shield text-blue\"></i></div></div>\n                                                            <div class=\"middle-icon-features-content\">\n                                                                <h4>Close The Deal</h4>\n                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                            </div>\n                                        </section>\n                                    </div>', 'published', NULL, '2022-01-19 07:35:34', '2022-01-19 07:35:34'),
(5, 'Achievement', 'achievement', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <section>\n                                            <div class=\"container\">\n\n                                                <div class=\"row justify-content-center\">\n                                                    <div class=\"col-lg-7 col-md-10 text-center\">\n                                                        <div class=\"sec-heading center mb-4\">\n                                                            <h2>Achievement</h2>\n                                                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"row\">\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>20500+</h4>\n                                                                <p>Completed Property</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>7600+</h4>\n                                                                <p>Property Sales</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>12300+</h4>\n                                                                <p>Apartment Rent</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>15200+</h4>\n                                                                <p>Happy Clients</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                </div>\n\n                                            </div>\n                                        </section>\n                                        <div class=\"clearfix\"></div>\n                                    </div>', 'published', NULL, '2022-01-19 07:35:34', '2022-01-19 07:35:34'),
(6, 'Our Story', 'our-story', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <section>\n                                            <div class=\"container\">\n                                                <div class=\"row align-items-center\">\n\n                                                    <div class=\"col-lg-6 col-md-6\">\n                                                        <img src=\"/storage/block/sb.png\" class=\"img-fluid\" alt=\"\">\n                                                    </div>\n\n                                                    <div class=\"col-lg-6 col-md-6\">\n                                                        <div class=\"story-wrap explore-content\">\n\n                                                            <h2>Our Story</h2>\n                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\n\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </section>\n                                    </div>\n                ', 'published', NULL, '2022-01-19 07:35:34', '2022-01-19 07:35:34'),
(7, 'Our mission', 'our-mission', '', '\n                            <div class=\"raw-html-embed\">\n                                <section>\n                                    <div class=\"container\">\n\n                                        <div class=\"row\">\n                                            <div class=\"col-lg-12 col-md-12\">\n                                                <div class=\"sec-heading center\">\n                                                    <h2>Our Mission &amp; Work Process</h2>\n                                                    <p>Professional &amp; Dedicated Team</p>\n                                                </div>\n                                            </div>\n                                        </div>\n\n                                        <div class=\"row align-items-center\">\n\n                                            <div class=\"col-lg-6 col-md-6\">\n\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-lock theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>Fully Secure &amp; 24x7 Dedicated Support</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-twitter theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>Manage your Social &amp; Busness Account Carefully</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-layers theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>We are Very Hard Worker and loving</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n\n                                            </div>\n\n                                            <div class=\"col-lg-6 col-md-6\">\n                                                <img src=\"/storage/block/vec-2.png\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n\n                                        </div>\n                                    </div>\n                                </section>\n                            </div>\n                ', 'published', NULL, '2022-01-19 07:35:34', '2022-01-19 07:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

CREATE TABLE `blocks_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Latest news', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(3, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(4, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-19 07:35:57', '2022-01-19 07:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Kathmandu', 75, 4, NULL, 1, 1, 'published', '2022-02-12 14:24:14', '2022-02-12 14:24:14', 'kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `cities_backup`
--

CREATE TABLE `cities_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities_translations`
--

INSERT INTO `cities_translations` (`lang_code`, `cities_id`, `name`) VALUES
('ne_NP', 1, 'Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Nepal', 'Nepali', 0, 0, 'published', '2022-02-12 11:38:23', '2022-02-12 11:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `countries_backup`
--

CREATE TABLE `countries_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries_translations`
--

INSERT INTO `countries_translations` (`lang_code`, `countries_id`, `name`, `nationality`) VALUES
('ne_NP', 4, 'नेपाल', 'नेपाली');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(2, 'widget_total_2', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(3, 'widget_total_themes', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(4, 'widget_total_3', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(5, 'widget_total_4', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(6, 'widget_total_users', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(7, 'widget_total_pages', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(8, 'widget_total_plugins', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(9, 'widget_analytics_general', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(10, 'widget_analytics_page', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(11, 'widget_analytics_browser', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(12, 'widget_posts_recent', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(13, 'widget_analytics_referrer', '2022-02-12 05:01:33', '2022-02-12 05:01:33'),
(14, 'widget_audit_logs', '2022-02-12 05:01:33', '2022-02-12 05:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(3, 'नेपाली', 'ne', 'ne_NP', 'np', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '1e80f9ce8f050d186735259075da12b8', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', '001e3d55e3f9b892d69aa28d04e7519e', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', '6cb9250b2cb6a766f2190526c7b63f2e', 2, 'Botble\\Menu\\Models\\Menu'),
(4, 'en_US', '5a9b5c83a2bad70713e180563de64648', 3, 'Botble\\Menu\\Models\\Menu'),
(5, 'en_US', '84fd9113418156537cc737b9cbbc3dea', 4, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `language_meta_backup`
--

CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(102, 0, 'c-1', 11, 'image/png', 138074, 'cities/c-1.png', '[]', '2022-01-19 07:35:11', '2022-01-19 07:35:11', NULL),
(103, 0, 'c-2', 11, 'image/png', 157272, 'cities/c-2.png', '[]', '2022-01-19 07:35:11', '2022-01-19 07:35:11', NULL),
(104, 0, 'c-3', 11, 'image/png', 137387, 'cities/c-3.png', '[]', '2022-01-19 07:35:11', '2022-01-19 07:35:11', NULL),
(105, 0, 'c-4', 11, 'image/png', 145476, 'cities/c-4.png', '[]', '2022-01-19 07:35:12', '2022-01-19 07:35:12', NULL),
(106, 0, 'c-5', 11, 'image/png', 134127, 'cities/c-5.png', '[]', '2022-01-19 07:35:12', '2022-01-19 07:35:12', NULL),
(107, 0, 'c-6', 11, 'image/png', 148207, 'cities/c-6.png', '[]', '2022-01-19 07:35:13', '2022-01-19 07:35:13', NULL),
(109, 0, 'sb', 13, 'image/png', 102140, 'block/sb.png', '[]', '2022-01-19 07:35:33', '2022-01-19 07:35:33', NULL),
(110, 0, 'vec-2', 13, 'image/png', 227757, 'block/vec-2.png', '[]', '2022-01-19 07:35:33', '2022-01-19 07:35:33', NULL),
(111, 0, 'app', 14, 'image/png', 159623, 'banners/app.png', '[]', '2022-01-19 07:35:34', '2022-01-19 07:35:34', NULL),
(112, 0, 'banner-1', 14, 'image/jpeg', 271728, 'banners/banner-1.jpg', '[]', '2022-01-19 07:35:34', '2022-01-19 07:35:34', NULL),
(113, 0, 'banner-2', 14, 'image/jpeg', 201045, 'banners/banner-2.jpg', '[]', '2022-01-19 07:35:36', '2022-01-19 07:35:36', NULL),
(114, 0, 'banner-3', 14, 'image/jpeg', 329351, 'banners/banner-3.jpg', '[]', '2022-01-19 07:35:37', '2022-01-19 07:35:37', NULL),
(115, 0, 'banner-4', 14, 'image/png', 264428, 'banners/banner-4.png', '[]', '2022-01-19 07:35:38', '2022-01-19 07:35:38', NULL),
(116, 0, 'banner-5', 14, 'image/png', 402790, 'banners/banner-5.png', '[]', '2022-01-19 07:35:39', '2022-01-19 07:35:39', NULL),
(117, 0, 'banner-6', 14, 'image/png', 236548, 'banners/banner-6.png', '[]', '2022-01-19 07:35:40', '2022-01-19 07:35:40', NULL),
(118, 0, 'banner-svg', 14, 'image/jpeg', 38459, 'banners/banner-svg.jpg', '[]', '2022-01-19 07:35:40', '2022-01-19 07:35:40', NULL),
(119, 0, 'banner', 14, 'video/mp4', 9886072, 'banners/banner.mp4', '[]', '2022-01-19 07:35:41', '2022-01-19 07:35:41', NULL),
(120, 0, 'banner-7', 14, 'image/svg+xml', 20027, 'banners/banner-7.svg', '[]', '2022-01-19 07:35:41', '2022-01-19 07:35:41', NULL),
(121, 0, 'home-2', 14, 'image/png', 33319, 'banners/home-2.png', '[]', '2022-01-19 07:35:41', '2022-01-19 07:35:41', NULL),
(122, 0, 'new-banner', 14, 'image/jpeg', 350945, 'banners/new-banner.jpg', '[]', '2022-01-19 07:35:42', '2022-01-19 07:35:42', NULL),
(123, 0, 'favicon', 15, 'image/png', 3178, 'general/favicon.png', '[]', '2022-01-19 07:35:44', '2022-02-12 11:52:29', '2022-02-12 11:52:29'),
(124, 0, 'img-loading', 15, 'image/jpeg', 786, 'general/img-loading.jpg', '[]', '2022-01-19 07:35:44', '2022-01-19 07:35:44', NULL),
(125, 0, 'logo-light', 15, 'image/png', 10875, 'general/logo-light.png', '[]', '2022-01-19 07:35:44', '2022-02-12 11:52:25', '2022-02-12 11:52:25'),
(126, 0, 'logo', 15, 'image/png', 11350, 'general/logo.png', '[]', '2022-01-19 07:35:44', '2022-02-12 11:52:21', '2022-02-12 11:52:21'),
(127, 0, 'screenshot', 15, 'image/png', 165692, 'general/screenshot.png', '[]', '2022-01-19 07:35:45', '2022-02-12 11:52:33', '2022-02-12 11:52:33'),
(128, 0, '1', 16, 'image/jpeg', 136733, 'news/1.jpg', '[]', '2022-01-19 07:35:46', '2022-01-19 07:35:46', NULL),
(129, 0, '10', 16, 'image/jpeg', 107306, 'news/10.jpg', '[]', '2022-01-19 07:35:46', '2022-01-19 07:35:46', NULL),
(130, 0, '11', 16, 'image/jpeg', 158705, 'news/11.jpg', '[]', '2022-01-19 07:35:46', '2022-01-19 07:35:46', NULL),
(131, 0, '12', 16, 'image/jpeg', 169224, 'news/12.jpg', '[]', '2022-01-19 07:35:47', '2022-01-19 07:35:47', NULL),
(132, 0, '13', 16, 'image/jpeg', 209836, 'news/13.jpg', '[]', '2022-01-19 07:35:47', '2022-01-19 07:35:47', NULL),
(133, 0, '14', 16, 'image/jpeg', 244640, 'news/14.jpg', '[]', '2022-01-19 07:35:48', '2022-01-19 07:35:48', NULL),
(134, 0, '15', 16, 'image/jpeg', 215801, 'news/15.jpg', '[]', '2022-01-19 07:35:48', '2022-01-19 07:35:48', NULL),
(135, 0, '16', 16, 'image/jpeg', 127110, 'news/16.jpg', '[]', '2022-01-19 07:35:49', '2022-01-19 07:35:49', NULL),
(136, 0, '17', 16, 'image/jpeg', 178736, 'news/17.jpg', '[]', '2022-01-19 07:35:49', '2022-01-19 07:35:49', NULL),
(137, 0, '18', 16, 'image/jpeg', 127500, 'news/18.jpg', '[]', '2022-01-19 07:35:49', '2022-01-19 07:35:49', NULL),
(138, 0, '19', 16, 'image/jpeg', 148213, 'news/19.jpg', '[]', '2022-01-19 07:35:50', '2022-01-19 07:35:50', NULL),
(139, 0, '2', 16, 'image/jpeg', 140241, 'news/2.jpg', '[]', '2022-01-19 07:35:50', '2022-01-19 07:35:50', NULL),
(140, 0, '20', 16, 'image/jpeg', 123100, 'news/20.jpg', '[]', '2022-01-19 07:35:51', '2022-01-19 07:35:51', NULL),
(141, 0, '21', 16, 'image/jpeg', 108630, 'news/21.jpg', '[]', '2022-01-19 07:35:51', '2022-01-19 07:35:51', NULL),
(142, 0, '22', 16, 'image/jpeg', 120108, 'news/22.jpg', '[]', '2022-01-19 07:35:51', '2022-01-19 07:35:51', NULL),
(143, 0, '23', 16, 'image/jpeg', 98530, 'news/23.jpg', '[]', '2022-01-19 07:35:52', '2022-01-19 07:35:52', NULL),
(144, 0, '24', 16, 'image/jpeg', 134237, 'news/24.jpg', '[]', '2022-01-19 07:35:52', '2022-01-19 07:35:52', NULL),
(145, 0, '25', 16, 'image/jpeg', 124532, 'news/25.jpg', '[]', '2022-01-19 07:35:52', '2022-01-19 07:35:52', NULL),
(146, 0, '26', 16, 'image/jpeg', 134643, 'news/26.jpg', '[]', '2022-01-19 07:35:53', '2022-01-19 07:35:53', NULL),
(147, 0, '27', 16, 'image/jpeg', 165965, 'news/27.jpg', '[]', '2022-01-19 07:35:53', '2022-01-19 07:35:53', NULL),
(148, 0, '3', 16, 'image/jpeg', 199060, 'news/3.jpg', '[]', '2022-01-19 07:35:54', '2022-01-19 07:35:54', NULL),
(149, 0, '4', 16, 'image/jpeg', 158031, 'news/4.jpg', '[]', '2022-01-19 07:35:54', '2022-01-19 07:35:54', NULL),
(150, 0, '5', 16, 'image/jpeg', 135774, 'news/5.jpg', '[]', '2022-01-19 07:35:54', '2022-01-19 07:35:54', NULL),
(151, 0, '6', 16, 'image/jpeg', 100187, 'news/6.jpg', '[]', '2022-01-19 07:35:55', '2022-01-19 07:35:55', NULL),
(152, 0, '7', 16, 'image/jpeg', 206113, 'news/7.jpg', '[]', '2022-01-19 07:35:55', '2022-01-19 07:35:55', NULL),
(153, 0, '8', 16, 'image/jpeg', 184904, 'news/8.jpg', '[]', '2022-01-19 07:35:56', '2022-01-19 07:35:56', NULL),
(154, 0, '9', 16, 'image/jpeg', 150106, 'news/9.jpg', '[]', '2022-01-19 07:35:56', '2022-01-19 07:35:56', NULL),
(155, 0, '1', 17, 'image/jpeg', 39008, 'accounts/1.jpg', '[]', '2022-01-19 07:35:58', '2022-01-19 07:35:58', NULL),
(156, 0, '10', 17, 'image/jpeg', 27814, 'accounts/10.jpg', '[]', '2022-01-19 07:35:58', '2022-01-19 07:35:58', NULL),
(157, 0, '2', 17, 'image/jpeg', 56376, 'accounts/2.jpg', '[]', '2022-01-19 07:35:58', '2022-01-19 07:35:58', NULL),
(158, 0, '3', 17, 'image/jpeg', 62502, 'accounts/3.jpg', '[]', '2022-01-19 07:35:58', '2022-01-19 07:35:58', NULL),
(159, 0, '4', 17, 'image/jpeg', 36259, 'accounts/4.jpg', '[]', '2022-01-19 07:35:59', '2022-01-19 07:35:59', NULL),
(160, 0, '5', 17, 'image/jpeg', 64833, 'accounts/5.jpg', '[]', '2022-01-19 07:35:59', '2022-01-19 07:35:59', NULL),
(161, 0, '6', 17, 'image/jpeg', 57568, 'accounts/6.jpg', '[]', '2022-01-19 07:35:59', '2022-01-19 07:35:59', NULL),
(162, 0, '7', 17, 'image/jpeg', 88003, 'accounts/7.jpg', '[]', '2022-01-19 07:36:00', '2022-01-19 07:36:00', NULL),
(163, 0, '8', 17, 'image/jpeg', 28009, 'accounts/8.jpg', '[]', '2022-01-19 07:36:00', '2022-01-19 07:36:00', NULL),
(164, 0, '9', 17, 'image/jpeg', 49079, 'accounts/9.jpg', '[]', '2022-01-19 07:36:00', '2022-01-19 07:36:00', NULL),
(165, 0, 'p-1', 18, 'image/jpeg', 136733, 'properties/p-1.jpg', '[]', '2022-01-19 07:36:03', '2022-01-19 07:36:03', NULL),
(166, 0, 'p-10', 18, 'image/jpeg', 107306, 'properties/p-10.jpg', '[]', '2022-01-19 07:36:03', '2022-01-19 07:36:03', NULL),
(167, 0, 'p-11', 18, 'image/jpeg', 158705, 'properties/p-11.jpg', '[]', '2022-01-19 07:36:03', '2022-01-19 07:36:03', NULL),
(168, 0, 'p-12', 18, 'image/jpeg', 169224, 'properties/p-12.jpg', '[]', '2022-01-19 07:36:04', '2022-01-19 07:36:04', NULL),
(169, 0, 'p-13', 18, 'image/jpeg', 209836, 'properties/p-13.jpg', '[]', '2022-01-19 07:36:04', '2022-01-19 07:36:04', NULL),
(170, 0, 'p-14', 18, 'image/jpeg', 244640, 'properties/p-14.jpg', '[]', '2022-01-19 07:36:05', '2022-01-19 07:36:05', NULL),
(171, 0, 'p-15', 18, 'image/jpeg', 215801, 'properties/p-15.jpg', '[]', '2022-01-19 07:36:05', '2022-01-19 07:36:05', NULL),
(172, 0, 'p-16', 18, 'image/jpeg', 127110, 'properties/p-16.jpg', '[]', '2022-01-19 07:36:06', '2022-01-19 07:36:06', NULL),
(173, 0, 'p-17', 18, 'image/jpeg', 178736, 'properties/p-17.jpg', '[]', '2022-01-19 07:36:06', '2022-01-19 07:36:06', NULL),
(174, 0, 'p-18', 18, 'image/jpeg', 127500, 'properties/p-18.jpg', '[]', '2022-01-19 07:36:06', '2022-01-19 07:36:06', NULL),
(175, 0, 'p-19', 18, 'image/jpeg', 148213, 'properties/p-19.jpg', '[]', '2022-01-19 07:36:07', '2022-01-19 07:36:07', NULL),
(176, 0, 'p-2', 18, 'image/jpeg', 140241, 'properties/p-2.jpg', '[]', '2022-01-19 07:36:07', '2022-01-19 07:36:07', NULL),
(177, 0, 'p-20', 18, 'image/jpeg', 123100, 'properties/p-20.jpg', '[]', '2022-01-19 07:36:08', '2022-01-19 07:36:08', NULL),
(178, 0, 'p-21', 18, 'image/jpeg', 108630, 'properties/p-21.jpg', '[]', '2022-01-19 07:36:08', '2022-01-19 07:36:08', NULL),
(179, 0, 'p-22', 18, 'image/jpeg', 120108, 'properties/p-22.jpg', '[]', '2022-01-19 07:36:08', '2022-01-19 07:36:08', NULL),
(180, 0, 'p-23', 18, 'image/jpeg', 98530, 'properties/p-23.jpg', '[]', '2022-01-19 07:36:09', '2022-01-19 07:36:09', NULL),
(181, 0, 'p-24', 18, 'image/jpeg', 134237, 'properties/p-24.jpg', '[]', '2022-01-19 07:36:09', '2022-01-19 07:36:09', NULL),
(182, 0, 'p-25', 18, 'image/jpeg', 124532, 'properties/p-25.jpg', '[]', '2022-01-19 07:36:10', '2022-01-19 07:36:10', NULL),
(183, 0, 'p-26', 18, 'image/jpeg', 134643, 'properties/p-26.jpg', '[]', '2022-01-19 07:36:10', '2022-01-19 07:36:10', NULL),
(184, 0, 'p-27', 18, 'image/jpeg', 165965, 'properties/p-27.jpg', '[]', '2022-01-19 07:36:10', '2022-01-19 07:36:10', NULL),
(185, 0, 'p-3', 18, 'image/jpeg', 199060, 'properties/p-3.jpg', '[]', '2022-01-19 07:36:11', '2022-01-19 07:36:11', NULL),
(186, 0, 'p-4', 18, 'image/jpeg', 158031, 'properties/p-4.jpg', '[]', '2022-01-19 07:36:11', '2022-01-19 07:36:11', NULL),
(187, 0, 'p-5', 18, 'image/jpeg', 135774, 'properties/p-5.jpg', '[]', '2022-01-19 07:36:12', '2022-01-19 07:36:12', NULL),
(188, 0, 'p-6', 18, 'image/jpeg', 100187, 'properties/p-6.jpg', '[]', '2022-01-19 07:36:12', '2022-01-19 07:36:12', NULL),
(189, 0, 'p-7', 18, 'image/jpeg', 206113, 'properties/p-7.jpg', '[]', '2022-01-19 07:36:13', '2022-01-19 07:36:13', NULL),
(190, 0, 'p-8', 18, 'image/jpeg', 184904, 'properties/p-8.jpg', '[]', '2022-01-19 07:36:13', '2022-01-19 07:36:13', NULL),
(191, 0, 'p-9', 18, 'image/jpeg', 150106, 'properties/p-9.jpg', '[]', '2022-01-19 07:36:13', '2022-01-19 07:36:13', NULL),
(192, 0, '1', 19, 'image/jpeg', 62502, 'testimonials/1.jpg', '[]', '2022-01-19 07:36:23', '2022-01-19 07:36:23', NULL),
(193, 0, '2', 19, 'image/jpeg', 36259, 'testimonials/2.jpg', '[]', '2022-01-19 07:36:24', '2022-01-19 07:36:24', NULL),
(194, 0, '3', 19, 'image/jpeg', 64833, 'testimonials/3.jpg', '[]', '2022-01-19 07:36:24', '2022-01-19 07:36:24', NULL),
(195, 0, '4', 19, 'image/jpeg', 57568, 'testimonials/4.jpg', '[]', '2022-01-19 07:36:24', '2022-01-19 07:36:24', NULL),
(196, 0, '5', 19, 'image/jpeg', 28009, 'testimonials/5.jpg', '[]', '2022-01-19 07:36:25', '2022-01-19 07:36:25', NULL),
(197, 1, 'Nagarik_Square-01', 12, 'image/png', 33366, 'users/nagarik-square-01.png', '[]', '2022-02-12 11:42:27', '2022-02-12 11:42:27', NULL),
(198, 1, 'Nagarik_Side', 0, 'image/png', 103239, 'nagarik-side.png', '[]', '2022-02-12 11:43:26', '2022-02-12 11:43:26', NULL),
(199, 1, 'Nagarik_Square-01', 0, 'image/png', 33366, 'nagarik-square-01.png', '[]', '2022-02-12 11:43:31', '2022-02-12 11:43:31', NULL),
(200, 1, 'Screenshot 2022-01-17 002924', 0, 'image/png', 5805, 'screenshot-2022-01-17-002924.png', '[]', '2022-02-12 11:43:36', '2022-02-12 11:43:36', NULL),
(201, 1, 'screenshot', 0, 'image/png', 595026, 'screenshot.png', '[]', '2022-02-12 11:47:37', '2022-02-12 11:47:37', NULL),
(202, 1, 'bg', 0, 'image/webp', 2034792, 'bg.webp', '[]', '2022-02-12 11:53:35', '2022-02-12 11:53:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 0, 'cities', 'cities', 0, '2022-01-19 07:35:11', '2022-01-19 07:35:11', NULL),
(12, 0, 'users', 'users', 0, '2022-01-19 07:35:32', '2022-01-19 07:35:32', NULL),
(13, 0, 'block', 'block', 0, '2022-01-19 07:35:33', '2022-01-19 07:35:33', NULL),
(14, 0, 'banners', 'banners', 0, '2022-01-19 07:35:34', '2022-01-19 07:35:34', NULL),
(15, 0, 'general', 'general', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44', NULL),
(16, 0, 'news', 'news', 0, '2022-01-19 07:35:46', '2022-01-19 07:35:46', NULL),
(17, 0, 'accounts', 'accounts', 0, '2022-01-19 07:35:58', '2022-01-19 07:35:58', NULL),
(18, 0, 'properties', 'properties', 0, '2022-01-19 07:36:03', '2022-01-19 07:36:03', NULL),
(19, 0, 'testimonials', 'testimonials', 0, '2022-01-19 07:36:23', '2022-01-19 07:36:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(2, 'About', 'about', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(3, 'More information', 'more-information', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(4, 'News', 'news', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(5, 'Menu chính', 'menu-chinh', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(6, 'Về chúng tôi', 've-chung-toi', 'published', '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(7, 'Thông tin thêm', 'thong-tin-them', 'published', '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(8, 'Tin tức', 'tin-tuc', 'published', '2022-01-19 07:35:44', '2022-01-19 07:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(2, 5, 'main-menu', '2022-01-19 07:35:43', '2022-01-19 07:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(2, 1, 1, NULL, NULL, '/', NULL, 0, 'Home layout 1', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(3, 1, 1, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Home layout 2', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(4, 1, 1, 3, 'Botble\\Page\\Models\\Page', '/home-layout-3', NULL, 0, 'Home layout 3', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(5, 1, 1, 4, 'Botble\\Page\\Models\\Page', '/home-layout-4', NULL, 0, 'Home layout 4', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(6, 1, 1, 5, 'Botble\\Page\\Models\\Page', '/home-layout-5', NULL, 0, 'Home layout 5', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(7, 1, 1, 6, 'Botble\\Page\\Models\\Page', '/home-layout-6', NULL, 0, 'Home layout 6', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(8, 1, 1, 7, 'Botble\\Page\\Models\\Page', '/home-layout-7', NULL, 0, 'Home layout 7', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(9, 1, 1, 8, 'Botble\\Page\\Models\\Page', '/home-layout-8', NULL, 0, 'Home layout 8', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(10, 1, 1, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Home layout 9', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(11, 1, 1, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Map home layout', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(12, 1, 0, NULL, NULL, '/properties', NULL, 0, 'Listings', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(13, 1, 12, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'List Layout', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(14, 1, 13, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'With Sidebar', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(15, 1, 13, NULL, NULL, '/properties?layout=map', NULL, 0, 'With Map', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(16, 1, 13, NULL, NULL, '/properties?layout=full', NULL, 0, 'Full width', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(17, 1, 12, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Grid Layout', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(18, 1, 17, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'With Sidebar', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(19, 1, 17, NULL, NULL, '/properties?layout=grid_map', NULL, 0, 'With Map', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(20, 1, 17, NULL, NULL, '/properties?layout=grid_full', NULL, 0, 'Full width', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(21, 1, 12, NULL, NULL, '/properties?layout=half_map', NULL, 0, 'Half Map Search', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(22, 1, 0, NULL, NULL, '/', NULL, 0, 'Features', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(23, 1, 22, NULL, NULL, '/', NULL, 0, 'Single Property', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(24, 1, 23, 1, 'Botble\\RealEstate\\Models\\Property', '/properties/6007-applegate-lane', NULL, 0, 'Single Property 1', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(25, 1, 23, 2, 'Botble\\RealEstate\\Models\\Property', '/properties/2721-lindsay-avenue', NULL, 0, 'Single Property 2', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(26, 1, 23, 3, 'Botble\\RealEstate\\Models\\Property', '/properties/2203-7th-street-road', NULL, 0, 'Single Property 3', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(27, 1, 22, NULL, NULL, '/', NULL, 0, 'Agents', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(28, 1, 27, NULL, NULL, '/agents', NULL, 0, 'Agents List', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(29, 1, 27, NULL, NULL, '/agents/thesky9', NULL, 0, 'Agents Detail Page', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(30, 1, 22, NULL, NULL, '/', NULL, 0, 'My Account', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(31, 1, 30, NULL, NULL, '/account/dashboard', NULL, 0, 'User Dashboard', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(32, 1, 30, NULL, NULL, '/account/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(33, 1, 30, NULL, NULL, '/account/settings', NULL, 0, 'My Profile', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(34, 1, 30, NULL, NULL, '/account/packages', NULL, 0, 'Packages', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(35, 1, 30, NULL, NULL, '/account/security', NULL, 0, 'Change Password', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(36, 1, 22, NULL, NULL, '/account/properties/create', NULL, 0, 'Submit Property', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(37, 1, 0, NULL, NULL, '/', NULL, 0, 'Pages', NULL, '_self', 1, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(38, 1, 37, 12, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Blogs Page', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(39, 1, 37, 1, 'Botble\\Blog\\Models\\Post', '/news/why-people-choose-listio-for-own-properties', NULL, 0, 'Blog Detail', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(40, 1, 37, NULL, NULL, '/home#pricing-section', NULL, 0, 'Pricing', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(41, 1, 37, 39, 'Botble\\Page\\Models\\Page', '/error-page', NULL, 0, 'Error Page', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(42, 1, 37, 14, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(43, 1, 0, NULL, NULL, '/register', NULL, 0, 'Sign Up', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(44, 2, 0, 13, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(45, 2, 0, 14, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(46, 2, 0, 15, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:44'),
(47, 3, 0, NULL, NULL, '/properties', NULL, 0, 'All properties', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(48, 3, 0, NULL, NULL, '/properties?type=sale', NULL, 0, 'Houses for sale', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(49, 3, 0, NULL, NULL, '/properties?type=rent', NULL, 0, 'Houses for rent', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(50, 4, 0, NULL, NULL, '/news', NULL, 0, 'Latest news', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(51, 4, 0, NULL, NULL, '/house-architecture', NULL, 0, 'House architecture', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(52, 4, 0, NULL, NULL, '/house-design', NULL, 0, 'House design', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(53, 4, 0, NULL, NULL, '/building-materials', NULL, 0, 'Building materials', NULL, '_self', 0, '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(54, 5, 0, 1, 'Botble\\Page\\Models\\Page', '', NULL, 0, 'Trang chủ', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-02-12 14:07:23'),
(55, 5, 54, 1, 'Botble\\Page\\Models\\Page', '', NULL, 0, 'Trang chủ 1', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-02-12 14:07:23'),
(56, 5, 54, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(57, 5, 54, 3, 'Botble\\Page\\Models\\Page', '/home-layout-3', NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(58, 5, 54, 4, 'Botble\\Page\\Models\\Page', '/home-layout-4', NULL, 0, 'Trang chủ 4', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(59, 5, 54, 5, 'Botble\\Page\\Models\\Page', '/home-layout-5', NULL, 0, 'Trang chủ 5', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(60, 5, 54, 6, 'Botble\\Page\\Models\\Page', '/home-layout-6', NULL, 0, 'Trang chủ 6', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(61, 5, 54, 7, 'Botble\\Page\\Models\\Page', '/home-layout-7', NULL, 0, 'Trang chủ 7', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(62, 5, 54, 8, 'Botble\\Page\\Models\\Page', '/home-layout-8', NULL, 0, 'Trang chủ 8', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(63, 5, 54, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Trang chủ 9', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(64, 5, 54, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Trang chủ bản đồ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(65, 5, 0, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Danh sách', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(66, 5, 65, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Dạng list', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(67, 5, 66, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Có thanh bên', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(68, 5, 66, NULL, NULL, '/properties?layout=full', NULL, 0, 'Chiều rộng đầy đủ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(69, 5, 66, NULL, NULL, '/properties?layout=map', NULL, 0, 'Có Bản Đồ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(70, 5, 65, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Dạng cột', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(71, 5, 70, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Có thanh bên', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(72, 5, 70, NULL, NULL, '/properties?layout=grid_map', NULL, 0, 'Có Map', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(73, 5, 70, NULL, NULL, '/properties?layout=grid_full', NULL, 0, 'Chiều rộng đầy đủ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(74, 5, 65, NULL, NULL, '/properties?layout=half_map', NULL, 0, 'Có 1/2 bản đồ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(75, 5, 0, NULL, NULL, NULL, NULL, 0, 'Tính năng', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(76, 5, 75, 21, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(77, 5, 76, 21, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản 1', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(78, 5, 76, 22, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản 2', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(79, 5, 76, 23, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản 3', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(80, 5, 75, NULL, NULL, '#', NULL, 0, 'Đại lý và người đại lý', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(81, 5, 80, NULL, NULL, '/agents', NULL, 0, 'Danh sách đại lý', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(82, 5, 80, NULL, NULL, '/agents/thesky9', NULL, 0, 'Chi tiết địa lý', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(83, 5, 75, NULL, NULL, '#', NULL, 0, 'Tài khoản', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(84, 5, 83, NULL, NULL, '/account/dashboard', NULL, 0, 'My Dashboard', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(85, 5, 83, NULL, NULL, '/account/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(86, 5, 83, NULL, NULL, '/account/settings', NULL, 0, 'My Profile', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(87, 5, 83, NULL, NULL, '/account/packages', NULL, 0, 'Packages', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(88, 5, 83, NULL, NULL, '/account/security', NULL, 0, 'Đổi mật khẩu', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(89, 5, 75, NULL, NULL, '/account/properties/create', NULL, 0, 'Đăng bất động sản', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(90, 5, 0, NULL, NULL, '/', NULL, 0, 'Trang', NULL, '_self', 1, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(91, 5, 90, 28, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Trang blog', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(92, 5, 90, 20, 'Botble\\Blog\\Models\\Post', NULL, NULL, 0, 'Bài viết chi tiết', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(93, 5, 90, NULL, NULL, '/home#pricing-section', NULL, 0, 'Bảng giá', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(94, 5, 90, NULL, NULL, '/error-page', NULL, 0, 'Page lỗi', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(95, 5, 90, 30, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(96, 5, 0, NULL, NULL, '/register', NULL, 0, 'Đăng ký', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(97, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(98, 6, 0, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(99, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/properties', NULL, 0, 'Điều khoản và quy định', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(100, 7, 0, NULL, NULL, '/properties', NULL, 0, 'Nhà - Căn hộ', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(101, 7, 0, NULL, NULL, '/properties?type=sale', NULL, 0, 'Nhà bán', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(102, 7, 0, NULL, NULL, '/properties?type=rent', NULL, 0, 'Nhà cho thuê', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(103, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Tin tức mới nhất', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(104, 8, 0, NULL, NULL, '/kien-truc-nha', NULL, 0, 'Kiến trúc nhà', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(105, 8, 0, NULL, NULL, '/thiet-ke-nha', NULL, 0, 'Thiết kế nhà', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44'),
(106, 8, 0, NULL, NULL, '/vat-lieu-xay-dung', NULL, 0, 'Vật liệu xây dựng', NULL, '_self', 0, '2022-01-19 07:35:44', '2022-01-19 07:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(588, 'header_layout', '[\"layout-1\"]', 1, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(589, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 1, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(590, 'header_layout', '[\"layout-2\"]', 2, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(591, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 2, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(592, 'header_layout', '[\"layout-3\"]', 3, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(593, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 3, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(594, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 4, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(595, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 5, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(596, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 6, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(597, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 7, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(598, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 8, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(599, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 9, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(600, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 10, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(601, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 11, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(602, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 12, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(603, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 13, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(604, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 14, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(605, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 15, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(606, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 16, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:16', '2022-01-19 07:36:16'),
(607, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 17, 'Botble\\RealEstate\\Models\\Property', '2022-01-19 07:36:16', '2022-01-19 07:36:16'),
(608, 'image', '[null]', 1, 'Botble\\Location\\Models\\City', '2022-02-12 14:24:14', '2022-02-12 14:24:14'),
(609, 'video', '[{\"url\":null}]', 10, 'Botble\\RealEstate\\Models\\Property', '2022-02-12 14:27:07', '2022-02-12 14:27:07'),
(610, 'header_layout', '[\"layout-1\"]', 10, 'Botble\\RealEstate\\Models\\Property', '2022-02-12 14:27:07', '2022-02-12 14:27:07'),
(611, 'description', '[\"The Nagarik Aawash Official Agent\"]', 1, 'Botble\\RealEstate\\Models\\Account', '2022-02-12 14:42:15', '2022-02-12 14:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_01_05_053554_create_jobs_table', 1),
(19, '2019_05_03_000001_create_customer_columns', 1),
(20, '2019_05_03_000002_create_subscriptions_table', 1),
(21, '2019_05_03_000003_create_subscription_items_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2015_06_29_025744_create_audit_history', 2),
(24, '2017_02_13_034601_create_blocks_table', 3),
(25, '2021_12_03_081327_create_blocks_translations', 3),
(26, '2015_06_18_033822_create_blog_table', 4),
(27, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(28, '2021_12_03_030600_create_blog_translations', 4),
(29, '2016_06_17_091537_create_contacts_table', 5),
(30, '2016_10_03_032336_create_languages_table', 6),
(31, '2021_10_25_021023_fix-priority-load-for-language-advanced', 7),
(32, '2021_12_03_075608_create_page_translations', 7),
(33, '2019_11_18_061011_create_country_table', 8),
(34, '2021_06_19_035514_update_city_table', 8),
(35, '2021_07_08_031045_remove_column_slug_from_cities_table', 8),
(36, '2021_12_03_084118_create_location_translations', 8),
(37, '2021_12_03_094518_migrate_old_location_data', 8),
(38, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 8),
(39, '2022_01_19_045455_add_slug_for_table_cities', 8),
(40, '2017_10_24_154832_create_newsletter_table', 9),
(41, '2017_05_18_080441_create_payment_tables', 10),
(42, '2021_03_27_144913_add_customer_type_into_table_payments', 10),
(43, '2021_05_24_034720_make_column_currency_nullable', 10),
(44, '2021_08_09_161302_add_metadata_column_to_payments_table', 10),
(45, '2021_10_19_020859_update_metadata_field', 10),
(46, '2018_06_22_032304_create_real_estate_table', 11),
(47, '2021_10_04_145603_update_package_multilanguage', 11),
(48, '2021_10_24_040004_add_code_table_re_property_types', 11),
(49, '2021_12_03_151812_add_parent_id_to_re_categories_table', 11),
(50, '2021_12_04_155038_add_subcategory_id_to_re_propeties_table', 11),
(51, '2021_12_10_034807_create_real_estate_translation_tables', 11),
(52, '2017_07_11_140018_create_simple_slider_table', 12),
(53, '2018_07_09_214610_create_testimonial_table', 13),
(54, '2021_12_03_083642_create_testimonials_translations', 13),
(55, '2016_10_07_193005_create_translations_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"][/hero-banner]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\"][/recently-viewed-properties]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(2, 'Home layout 2', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-svg.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Featured Property For Sale\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(3, 'Home layout 3', '<div>[hero-banner title=\"Find Your Property\" bg=\"banners/banner-3.jpg\" style=\"3\" overlay=\"6\"]From as low as $10 per day with limited time offer[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(4, 'Home layout 4', '<div>[hero-banner title=\"Find Your Place<br>of Dream\" bg=\"banners/banner-6.png\" style=\"4\"]Amet consectetur adipisicing <span class=\"badge badge-success\">New</span>[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(5, 'Home layout 5', '<div>[hero-banner title=\"Find Your Perfect Place.\" bg=\"banners/home-2.png\" style=\"5\"]Amet consectetur adipisicing New[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(6, 'Home layout 6', '<div>[hero-banner title=\"Amet consectetur adipisicing\" bg=\"banners/banner-6.png\" style=\"6\"]Find Your Place <br>Of Dream[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"8\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(7, 'Home layout 7', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(8, 'Home layout 8', '<div>[properties-hero-slide limit=\"6\"][/properties-hero-slide]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(9, 'Home layout 9', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/new-banner.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(10, 'Map Home layout', '<div>[hero-banner-style-map][/hero-banner-style-map]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(11, 'Properties', '---', 1, NULL, 'default', 0, NULL, 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(12, 'News', ' ', 1, NULL, 'default', 0, 'See Our Latest Articles & News', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(13, 'About us', '<div>[static-block alias=\"our-story\"][/static-block]</div><div>[static-block alias=\"our-mission\"][/static-block]</div>', 1, NULL, 'default', 0, 'Who we are & our mission', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(14, 'Contact', '<p>[contact-form][/contact-form]<br />\n                            &nbsp;</p>\n\n                            <h3>Directions</h3>\n\n                            <p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n                            <p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(15, 'Terms & Conditions', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Resido website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Resido and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n                        <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Resido and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n                    <p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n                ', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Resido and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(16, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-01-19 07:35:43', '2022-01-19 07:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `username`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `credits`, `confirmed_at`, `email_verify_token`, `is_featured`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nagarik Aawash', 'Agent', 'nagarikaawash-agent', 'The Nagarik Aawash Official Agent', NULL, 'agent@nagarikaawash.com', '$2y$10$SJFKOmpk34OXXlyzncd31u4wFi9vo4MEm8ryOc9XVycteqpIaFRIS', 199, '1976-10-02', '+9779860489494', 10, '2022-01-19 07:36:01', NULL, 1, NULL, '2022-01-19 07:36:01', '2022-02-12 14:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts_packages`
--

CREATE TABLE `re_accounts_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Apartment', NULL, 'published', 0, 1, '2022-01-19 07:36:02', '2022-01-19 07:36:02', 0),
(2, 'Villa', NULL, 'published', 1, 0, '2022-01-19 07:36:02', '2022-01-19 07:36:02', 0),
(3, 'Condo', NULL, 'published', 2, 0, '2022-01-19 07:36:02', '2022-01-19 07:36:02', 0),
(4, 'House', NULL, 'published', 3, 0, '2022-01-19 07:36:02', '2022-01-19 07:36:02', 0),
(5, 'Land', NULL, 'published', 4, 0, '2022-01-19 07:36:02', '2022-01-19 07:36:02', 0),
(6, 'Commercial property', NULL, 'published', 5, 0, '2022-01-19 07:36:02', '2022-01-19 07:36:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `re_categories_translations`
--

CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'NPR', 'Rs.', 1, 0, 0, 1, 1, '2022-01-19 07:35:58', '2022-02-12 11:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(3, 'School', 'fas fa-school', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(7, 'Railways', 'fas fa-subway', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(11, 'Bank', 'fas fa-university', 'published', '2022-01-19 07:36:02', '2022-01-19 07:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(35, 2, 1, 'Botble\\RealEstate\\Models\\Property', '11km'),
(36, 6, 1, 'Botble\\RealEstate\\Models\\Property', '14km'),
(37, 5, 2, 'Botble\\RealEstate\\Models\\Property', '18km'),
(38, 10, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(39, 5, 3, 'Botble\\RealEstate\\Models\\Property', '18km'),
(40, 11, 3, 'Botble\\RealEstate\\Models\\Property', '19km'),
(41, 4, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(42, 12, 4, 'Botble\\RealEstate\\Models\\Property', '19km'),
(43, 2, 5, 'Botble\\RealEstate\\Models\\Property', '17km'),
(44, 8, 5, 'Botble\\RealEstate\\Models\\Property', '19km'),
(45, 4, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(46, 12, 6, 'Botble\\RealEstate\\Models\\Property', '5km'),
(47, 5, 7, 'Botble\\RealEstate\\Models\\Property', '6km'),
(48, 6, 7, 'Botble\\RealEstate\\Models\\Property', '9km'),
(49, 2, 8, 'Botble\\RealEstate\\Models\\Property', '12km'),
(50, 11, 8, 'Botble\\RealEstate\\Models\\Property', '15km'),
(51, 3, 9, 'Botble\\RealEstate\\Models\\Property', '6km'),
(52, 11, 9, 'Botble\\RealEstate\\Models\\Property', '12km'),
(55, 2, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(56, 11, 11, 'Botble\\RealEstate\\Models\\Property', '5km'),
(57, 1, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(58, 6, 12, 'Botble\\RealEstate\\Models\\Property', '1km'),
(59, 4, 13, 'Botble\\RealEstate\\Models\\Property', '1km'),
(60, 11, 13, 'Botble\\RealEstate\\Models\\Property', '16km'),
(61, 2, 14, 'Botble\\RealEstate\\Models\\Property', '15km'),
(62, 12, 14, 'Botble\\RealEstate\\Models\\Property', '5km'),
(63, 3, 15, 'Botble\\RealEstate\\Models\\Property', '16km'),
(64, 7, 15, 'Botble\\RealEstate\\Models\\Property', '1km'),
(65, 5, 16, 'Botble\\RealEstate\\Models\\Property', '16km'),
(66, 6, 16, 'Botble\\RealEstate\\Models\\Property', '17km'),
(67, 4, 17, 'Botble\\RealEstate\\Models\\Property', '18km'),
(68, 6, 17, 'Botble\\RealEstate\\Models\\Property', '20km'),
(69, 4, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(70, 11, 10, 'Botble\\RealEstate\\Models\\Property', '13km');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_translations`
--

CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `icon`, `status`) VALUES
(1, 'Wifi', NULL, 'published'),
(2, 'Parking', NULL, 'published'),
(3, 'Swimming pool', NULL, 'published'),
(4, 'Balcony', NULL, 'published'),
(5, 'Garden', NULL, 'published'),
(6, 'Security', NULL, 'published'),
(7, 'Fitness center', NULL, 'published'),
(8, 'Air Conditioning', NULL, 'published'),
(9, 'Central Heating  ', NULL, 'published'),
(10, 'Laundry Room', NULL, 'published'),
(11, 'Pets Allow', NULL, 'published'),
(12, 'Spa & Massage', NULL, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `re_features_translations`
--

CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `account_limit` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `features` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `percent_save`, `number_of_listings`, `account_limit`, `order`, `is_default`, `features`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free First Post', 0.00, 1, 0, 1, 1, 0, 0, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2022-01-19 07:36:01', '2022-01-19 07:36:01'),
(2, 'Single Post', 250.00, 1, 0, 1, NULL, 0, 1, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2022-01-19 07:36:01', '2022-01-19 07:36:01'),
(3, '5 Posts', 1000.00, 1, 20, 5, NULL, 0, 0, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2022-01-19 07:36:01', '2022-01-19 07:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages_translations`
--

CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `number_bedroom` int(11) DEFAULT NULL,
  `number_bathroom` int(11) DEFAULT NULL,
  `number_floor` int(11) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `state_id`, `country_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, '6007 Applegate Lane', 'Voluptatem earum perferendis nisi et ut. Perferendis quam nisi eum distinctio ut nobis. Rerum praesentium quis repellat et. Consequatur aut assumenda voluptatem eaque.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>YOU, and no room at all what had become of me?\' Luckily for Alice, the little golden key, and Alice\'s first thought was that you have to turn round on its axis--\' \'Talking of axes,\' said the Duchess, \'as pigs have to turn round on its axis--\' \'Talking of axes,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, as she could. \'The Dormouse is asleep again,\' said the Duchess; \'and that\'s why. Pig!\' She said the Mock Turtle. \'No, no! The adventures first,\' said the Duchess; \'and most things twinkled after that--only the March Hare went \'Sh! sh!\' and the other side, the puppy jumped into the court, she said to herself, as well as she fell past it. \'Well!\' thought Alice to find that she did so, very carefully, remarking, \'I really must be getting somewhere near the right word) \'--but I shall fall right THROUGH the earth! How funny it\'ll seem to come out among the leaves, which she had accidentally upset the week before. \'Oh, I know!\' exclaimed Alice, who felt very glad to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>King: \'however, it may kiss my hand if it makes rather a complaining tone, \'and they drew all manner of things--everything that begins with an M--\' \'Why with an air of great relief. \'Call the first verse,\' said the Lory, as soon as there was nothing so VERY tired of this. I vote the young man said, \'And your hair has become very white; And yet I wish you wouldn\'t have come here.\' Alice didn\'t think that will be much the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>King exclaimed, turning to Alice, they all cheered. Alice thought to herself, \'Why, they\'re only a mouse that had fallen into the Dormouse\'s place, and Alice thought decidedly uncivil. \'But perhaps it was an uncomfortably sharp chin. However, she got to the puppy; whereupon the puppy began a series of short charges at the other side of the court,\" and I had not noticed before, and he hurried off. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' said the Caterpillar. \'Well, perhaps not,\' said the Duck. \'Found IT,\' the Mouse only shook its head to hide a smile: some of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice got up this morning? I almost wish I\'d gone to see how he can EVEN finish, if he had taken advantage of the way wherever she wanted to send the hedgehog to, and, as they came nearer, Alice could see, as well to introduce it.\' \'I don\'t even know what \"it\".</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>Gryphon, and the poor little thing grunted in reply (it had left off staring at the thought that it was out of his tail. \'As if it had some kind of thing never happened, and now here I am to see the Hatter continued, \'in this way:-- \"Up above the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most confusing thing I know. Silence all round, if you don\'t like them raw.\' \'Well, be off, then!\' said the King added in a tone of great surprise. \'Of course it is,\' said the Mouse, getting up and said, very gravely, \'I think, you ought to have it explained,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of it; then Alice put down her anger as well say this), \'to go on for some minutes. Alice thought she had nothing yet,\' Alice replied eagerly, for she was small enough to get through was more hopeless than ever: she sat down and looked at the end of every line: \'Speak roughly.</p>', '90499 Fahey Plains Apt. 455\nPort Wileyhaven, WV 52575-7345', '[\"properties\\/p-13.jpg\",\"properties\\/p-1.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-17.jpg\"]', 2, 2, 2, 80, '222040.00', 1, 2, NULL, NULL, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 1, 1, 'approved', NULL, 0, 1, '38.1343013', '-85.6498512', 2, '2022-01-19 07:36:14', '2022-01-19 07:36:14', NULL),
(2, '2721 Lindsay Avenue', 'Similique dicta commodi et. Placeat corporis est quo impedit quis et voluptas. Error voluptas officia ipsa at ut. Autem velit neque quis tempora suscipit optio.', '<p>Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was sitting between them, fast asleep, and the small ones choked and had come to the three gardeners instantly threw themselves flat upon their faces. There was a good deal frightened by this time?\' she said these words her foot slipped, and in despair she put them into a cucumber-frame, or something of the guinea-pigs cheered, and was surprised to see it quite plainly through the neighbouring pool--she could hear him sighing as if she were looking up into the garden, and marked, with one foot. \'Get up!\' said the Pigeon in a low, hurried tone. He looked at them with the tea,\' the March Hare will be the best of educations--in fact, we went to school in the house, and the moment he was in a natural way again. \'I wonder how many miles I\'ve fallen by this time.) \'You\'re nothing but the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>However, when they met in the sea!\' cried the Gryphon. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the Dormouse shall!\' they both sat silent and looked at Alice, and she crossed her hands up to Alice, flinging the baby with some severity; \'it\'s very rude.\' The Hatter opened his eyes. He looked at her for a baby: altogether Alice did not like to be talking in his sleep, \'that \"I like what I see\"!\' \'You might just as well as if he thought it would make with.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would catch a bad cold if she were saying lessons, and began bowing to the door, she ran off at once, while all the rest, Between yourself and me.\' \'That\'s the reason of that?\' \'In my youth,\' Father William replied to his son, \'I feared it might end, you know,\' the Hatter hurriedly left the court, she said to herself; \'I should think you can find them.\' As she said to the table for it, you may nurse it a little startled by seeing the Cheshire Cat: now I shall think nothing of the jury eagerly wrote down all three to settle the question, and they repeated their arguments to her, And mentioned me to him: She gave me a good opportunity for making her escape; so she set to work nibbling at the sudden change, but she added, to herself, (not in a great hurry. \'You did!\' said the Queen of Hearts, carrying the King\'s crown on a crimson velvet cushion; and, last of all the unjust things--\' when his eye.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Alice, \'because I\'m not particular as to bring tears into her face, with such a nice little histories about children who had meanwhile been examining the roses. \'Off with their hands and feet at the sudden change, but she felt a violent shake at the bottom of a well--\' \'What did they live at the stick, running a very decided tone: \'tell her something worth hearing. For some minutes it seemed quite dull and stupid for life to go near the King triumphantly, pointing to the other: the only one who got any advantage from the Queen to-day?\' \'I should have croqueted the Queen\'s shrill cries to the jury, in a more subdued tone, and added with a smile. There was no \'One, two, three, and away,\' but they were nowhere to be said. At last the Mock Turtle a little three-legged table, all made of solid glass; there was mouth enough for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes the world she was ready to agree to.</p>', '49566 Bridie Estates\nLysannefort, NY 11483-3762', '[\"properties\\/p-10.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-17.jpg\"]', 5, 4, 5, 486, '114562.00', 1, 6, NULL, NULL, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '38.263793', '-85.700243', 2, '2022-01-19 07:36:14', '2022-01-19 07:36:14', NULL),
(3, '2203 7th Street Road', 'Corporis iure non sequi ut iste distinctio. Eius aut vitae dolores occaecati maiores. Eius nemo minima quis numquam. Ut et corporis veniam dolorum quo consectetur et.', '<p>What happened to you? Tell us all about it!\' and he wasn\'t going to begin again, it was very deep, or she should chance to be lost: away went Alice like the look of it appeared. \'I don\'t much care where--\' said Alice. \'Why, there they are!\' said the Rabbit\'s voice along--\'Catch him, you by the carrier,\' she thought; \'and how funny it\'ll seem to put the Lizard as she fell very slowly, for she felt a violent shake at the picture.) \'Up, lazy thing!\' said the Mock Turtle, \'but if you\'ve seen them so often, of course had to pinch it to make the arches. The chief difficulty Alice found at first was in the pool as it was getting quite crowded with the time,\' she said, without opening its eyes, \'Of course, of course; just what I say,\' the Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious dream!\' said Alice, \'and if it had grown so large in the chimney as she couldn\'t answer either question, it didn\'t much matter which way it was only too glad to find her in an offended tone.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>I don\'t know what it was: at first was moderate. But the snail replied \"Too far, too far!\" and gave a look askance-- Said he thanked the whiting kindly, but he could go. Alice took up the fan and the poor little thing sobbed again (or grunted, it was only too glad to find that the Queen in front of them, with her head!\' Alice glanced rather anxiously at the bottom of the edge with each hand. \'And now which is which?\' she said to the porpoise, \"Keep back, please: we don\'t want to get out again.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>Queen,\' and she was quite tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the rest of it in asking riddles that have no notion how delightful it will be the right height to be.\' \'It is wrong from beginning to end,\' said the Mouse, sharply and very soon came to ME, and told me you had been anything near the house opened, and a Long Tale They were indeed a queer-looking party that assembled on the trumpet, and called out in a sorrowful tone, \'I\'m afraid I don\'t want to stay with it as you liked.\' \'Is that the best thing to eat or drink something or other; but the wise little Alice herself, and nibbled a little more conversation with her head through the little creature down, and the pair of white kid gloves and the choking of the accident, all except the King, the Queen, stamping on the top of her hedgehog. The hedgehog was engaged in a shrill, loud voice, and see that the mouse doesn\'t get out.\" Only I don\'t like them!\' When the pie was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be kind to them,\' thought Alice, \'they\'re sure to do next, when suddenly a White Rabbit with pink eyes ran close by it, and on it in less than a rat-hole: she knelt down and make one quite giddy.\' \'All right,\' said the Caterpillar; and it was quite pale (with passion, Alice thought), and it was not otherwise than what it was too slippery; and when she found that it seemed quite natural to Alice with one eye; \'I seem to be\"--or if you\'d like it very nice, (it had, in fact, a sort of idea that they were all in bed!\' On various pretexts they all spoke at once, she found her way into a large pigeon had flown into her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar. \'I\'m afraid I don\'t think,\' Alice went on, yawning and rubbing its eyes, \'Of course, of course; just what I was sent for.\' \'You ought to be no use in waiting by the time it all seemed quite natural); but when the Rabbit hastily interrupted.</p>', '30536 Nella Ranch Suite 174\nEast Krismouth, HI 30356-3418', '[\"properties\\/p-5.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-2.jpg\"]', 4, 4, 2, 130, '15229.00', 1, 3, NULL, NULL, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 4, 1, 'approved', NULL, 0, 1, '38.142768', '-85.7717132', 1, '2022-01-19 07:36:14', '2022-01-19 07:36:14', NULL),
(4, '7431 Candace Way', 'Dolor asperiores quaerat perferendis. Nemo impedit velit et. Et asperiores fuga dolores. Ullam aspernatur esse fuga eos voluptatem iusto nemo.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Alice, who felt ready to sink into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found herself in a VERY turn-up nose, much more like a Jack-in-the-box, and up the fan and gloves, and, as a lark, And will talk in contemptuous tones of her ever getting out of the Mock Turtle replied in a frightened tone. \'The Queen will hear you! You see, she came suddenly upon an open place, with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the window, and some were birds,) \'I suppose they are the jurors.\' She said the Queen, pointing to the door, and knocked. \'There\'s no sort of knot, and then turned to the three gardeners instantly jumped up, and began by producing from under his arm a great deal of thought, and it set to work very carefully, nibbling first at one corner of it: \'No room! No room!\' they cried out when they liked, and left foot, so as to bring tears into her head. Still she went.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>I\'m mad?\' said Alice. \'It goes on, you know,\' said the Hatter: \'but you could see this, as she tucked it away under her arm, with its mouth open, gazing up into the garden door. Poor Alice! It was high time to be treated with respect. \'Cheshire Puss,\' she began, in rather a handsome pig, I think.\' And she thought there was the Hatter. \'It isn\'t a bird,\' Alice remarked. \'Oh, you can\'t swim, can you?\' he added, turning to the Dormouse, who was sitting on a little house in it about four inches.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>NOT be an advantage,\' said Alice, seriously, \'I\'ll have nothing more to be nothing but out-of-the-way things to happen, that it signifies much,\' she said to herself; \'his eyes are so VERY tired of being such a new idea to Alice, and her eyes anxiously fixed on it, for she had succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is such a thing. After a while, finding that nothing more happened, she decided on going into the garden, and I shall be punished for it flashed across her mind that she could not help bursting out laughing: and when she went on. \'I do,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'Not at all,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the last few minutes, and she felt that she could have told you butter wouldn\'t suit the works!\' he added looking angrily at the place where it had lost something; and she trembled till she too began dreaming after a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Duchess sneezed occasionally; and as the large birds complained that they would go, and broke off a head could be NO mistake about it: it was a good deal to come out among the distant green leaves. As there seemed to be done, I wonder?\' As she said to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good deal until she had looked under it, and talking over its head. \'Very uncomfortable for the accident of the trial.\' \'Stupid things!\' Alice began to get to,\' said the Lory, as soon as look at the bottom of a book,\' thought Alice \'without pictures or conversations in it, \'and what is the same as the door that led into a conversation. \'You don\'t know the way out of sight, they were nowhere to be beheaded!\' \'What for?\' said Alice. \'Anything you like,\' said the Gryphon hastily. \'Go on with the next witness was the BEST butter,\' the March Hare moved into the court, by the time they had at the Mouse\'s tail; \'but why do you know I\'m mad?\' said Alice. \'Call it what you had been.</p>', '77221 Aurelie Points Suite 762\nWest Myrtis, TX 20595-9372', '[\"properties\\/p-13.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-14.jpg\"]', 5, 2, 1, 176, '16481.00', 1, 3, NULL, NULL, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '44.771005', '-72.048664', 2, '2022-01-19 07:36:14', '2022-01-19 07:36:14', NULL),
(5, '8502 Madrone Avenue', 'Et voluptatem ex minima enim numquam. Consectetur quia illo nostrum facere. Quaerat et tempora in non eius officiis. Cum et aut facere molestiae at.', '<p>Alice: he had come to the heads of the house of the words all coming different, and then turned to the executioner: \'fetch her here.\' And the moral of that is--\"The more there is of finding morals in things!\' Alice began to cry again. \'You ought to be rude, so she went on, turning to Alice, flinging the baby with some curiosity. \'What a number of executions the Queen say only yesterday you deserved to be two people. \'But it\'s no use in talking to herself, as she could do to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could speak again. In a little startled by seeing the Cheshire Cat sitting on a little sharp bark just over her head in the middle of her voice, and see what was the Duchess\'s voice died away, even in the book,\' said the King. \'Nearly two miles high,\' added the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King said, with a table in the pool.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>Alice replied thoughtfully. \'They have their tails fast in their paws. \'And how do you mean that you never had to double themselves up and picking the daisies, when suddenly a White Rabbit blew three blasts on the whole place around her became alive with the end of half an hour or so, and were quite silent, and looked into its mouth and yawned once or twice, and shook itself. Then it got down off the fire, stirring a large canvas bag, which tied up at the time she went back for a good deal.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>March Hare, \'that \"I like what I used to come upon them THIS size: why, I should like to be two people. \'But it\'s no use denying it. I suppose I ought to speak, but for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the Queen. \'I never thought about it,\' said Alice. \'Come, let\'s try the patience of an oyster!\' \'I wish I had not a moment to be full of the teacups as the March Hare said to the beginning again?\' Alice ventured to say. \'What is it?\' Alice panted as she went on. \'Or would you like to try the thing Mock Turtle recovered his voice, and, with tears running down his face, as long as there was no more to be talking in his turn; and both the hedgehogs were out of the March Hare had just upset the week before. \'Oh, I BEG your pardon!\' said the Cat remarked. \'Don\'t be impertinent,\' said the Caterpillar. Alice thought she had never had fits, my dear, and that is rather a handsome pig, I think.\' And she opened it, and then added them up, and there stood the Queen ordering.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>Alice, who was sitting on a little girl,\' said Alice, who felt very curious to know when the White Rabbit, who said in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for showing off a little while, however, she went back to the door, staring stupidly up into the air, I\'m afraid, but you might catch a bat, and that\'s very like having a game of play with a shiver. \'I beg your pardon!\' said the Hatter: \'I\'m on the glass table as before, \'and things are worse than ever,\' thought the poor little Lizard, Bill, was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, with its wings. \'Serpent!\' screamed the Queen. \'Can you play croquet with the game,\' the Queen till she had put the Lizard in head downwards, and the baby violently up and walking off to trouble myself about you: you must manage the best cat in the pool as it went, \'One side will make you a present of everything.</p>', '203 Kiehn Roads\nLonnymouth, TN 78908', '[\"properties\\/p-18.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-8.jpg\",\"properties\\/p-12.jpg\",\"properties\\/p-5.jpg\"]', 1, 1, 5, 83, '285895.00', 1, 4, NULL, NULL, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '38.1286407', '-85.8678042', 2, '2022-01-19 07:36:14', '2022-01-19 07:36:14', NULL),
(6, '1745 T Street Southeast', 'Et est repudiandae pariatur rerum et laboriosam exercitationem. Aut eos expedita possimus dolor. Quia magnam nam ea dolor totam magni praesentium.', '<p>Lobster Quadrille?\' the Gryphon in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was not even get her head on her spectacles, and began an account of the other ladder?--Why, I hadn\'t drunk quite so much!\' said Alice, always ready to play croquet with the birds and beasts, as well as she swam about, trying to explain the paper. \'If there\'s no name signed at the bottom of a good deal: this fireplace is narrow, to be no chance of her age knew the right words,\' said poor Alice, and sighing. \'It IS the same age as herself, to see it trying in a few minutes she heard the Rabbit asked. \'No, I didn\'t,\' said Alice: \'besides, that\'s not a moment like a tunnel for some way, and then at the Cat\'s head began fading away the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice to herself, rather sharply; \'I advise you to learn?\' \'Well, there was a bright brass plate with the Duchess, digging her sharp little chin into.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>Hatter. This piece of it now in sight, and no more of the jurymen. \'No, they\'re not,\' said the Mouse. \'Of course,\' the Dodo solemnly presented the thimble, looking as solemn as she stood still where she was, and waited. When the Mouse heard this, it turned round and round goes the clock in a great hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little nervous about this; \'for it might belong to one of the crowd below, and there they lay.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>I\'ll just see what was going to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it while the rest were quite silent, and looked at her, and she ran with all her riper years, the simple and loving heart of her ever getting out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the first minute or two sobs choked his voice. \'Same as if she were looking over his shoulder as he wore his crown over the verses the White Rabbit, trotting slowly back to my jaw, Has lasted the rest waited in silence. Alice noticed with some difficulty, as it went, \'One side of the suppressed guinea-pigs, filled the air, mixed up with the other: the only difficulty was, that her neck from being broken. She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon remarked: \'because they lessen from day to day.\' This was such a wretched height to be.\' \'It is wrong from beginning to feel very uneasy.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>Dinah, tell me who YOU are, first.\' \'Why?\' said the King, the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'I don\'t know what they\'re about!\' \'Read them,\' said the Caterpillar. Alice thought decidedly uncivil. \'But perhaps it was written to nobody, which isn\'t usual, you know.\' \'And what an ignorant little girl she\'ll think me at home! Why, I do it again and again.\' \'You are not attending!\' said the Dormouse, after thinking a minute or two, looking for the garden!\' and she tried another question. \'What sort of knot, and then turned to the waving of the same size: to be rude, so she waited. The Gryphon sat up and say \"Who am I to get her head struck against the ceiling, and had been looking over their slates; \'but it sounds uncommon nonsense.\' Alice said to herself, as well look and see what was on the slate. \'Herald, read the accusation!\' said the Cat. \'--so long as you liked.\' \'Is that all?\' said the Hatter. \'Nor I,\' said the Cat. \'I.</p>', '5290 Greyson Parks\nLeonorview, MO 16160-1218', '[\"properties\\/p-10.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-2.jpg\"]', 2, 3, 4, 497, '160759.00', 1, 4, NULL, NULL, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '38.867033', '-76.979235', 2, '2022-01-19 07:36:14', '2022-01-19 07:36:14', NULL),
(7, '81 Seaton Place Northwest', 'Eligendi iusto inventore voluptatum. Sed natus recusandae dignissimos. Dolor velit quibusdam dicta.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Alice, \'they\'re sure to happen,\' she said to herself, \'to be going messages for a long time with one foot. \'Get up!\' said the King. The next witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall think nothing of the birds hurried off to the jury, in a low voice, to the door, she walked sadly down the bottle, saying to herself \'Now I can reach the key; and if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room for YOU, and no room to open it; but, as the March Hare. \'Then it ought to be talking in a great crash, as if she was near enough to look at me like that!\' \'I couldn\'t afford to learn it.\' said the King say in a moment. \'Let\'s go on with the grin, which remained some time busily writing in his turn; and both the hedgehogs were out of the house, \"Let us both go to on the top of the legs of the cattle in the window, she suddenly spread out her.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>Alice, \'and those twelve creatures,\' (she was obliged to say \'creatures,\' you see, so many lessons to learn! No, I\'ve made up my mind about it; and as he could think of any use, now,\' thought Alice, \'and why it is right?\' \'In my youth,\' said the Hatter. \'You MUST remember,\' remarked the King, the Queen, stamping on the floor: in another moment it was YOUR table,\' said Alice; not that she had peeped into the air, I\'m afraid, sir\' said Alice, \'we learned French and music.\' \'And washing?\' said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>M, such as mouse-traps, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her life, and had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it was very provoking to find that she was walking hand in hand with Dinah, and saying \"Come up again, dear!\" I shall be punished for it was in managing her flamingo: she succeeded in curving it down \'important,\' and some of them even when they passed too close, and waving their forepaws to mark the time, while the rest of the Lobster Quadrille?\' the Gryphon interrupted in a voice she had not noticed before, and she looked down at her hands, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'I\'ve tried the effect of lying down with her arms folded, frowning like a candle. I wonder if I shall have to turn round on its axis--\' \'Talking of axes,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and then raised.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>English, who wanted leaders, and had just begun to dream that she began thinking over all the jurors were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, I tell you!\' But she did not venture to say a word, but slowly followed her back to the other, saying, in a mournful tone, \'he won\'t do a thing before, but she saw maps and pictures hung upon pegs. She took down a large crowd collected round it: there were a Duck and a long time with the Queen, who were all crowded round it, panting, and asking, \'But who is to find that she had put the Dormouse shook its head impatiently, and walked two and two, as the large birds complained that they were getting so thin--and the twinkling of the cupboards as she was about a whiting to a day-school, too,\' said Alice; \'it\'s laid for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the Caterpillar. \'Well, I can\'t tell you his history,\' As they walked off together, Alice.</p>', '77105 Barton Junction Suite 360\nNorth Yasmeenhaven, PA 86965-7772', '[\"properties\\/p-15.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-8.jpg\"]', 4, 3, 3, 321, '382362.00', 1, 2, NULL, NULL, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '38.9149499', '-77.0117026', 1, '2022-01-19 07:36:14', '2022-01-19 07:36:14', NULL),
(8, '802 Madison Street Northwest', 'Qui aut esse nostrum unde sint ut dolorum quas. Iusto reprehenderit in debitis soluta velit amet harum quia. Sint et praesentium aut voluptate totam nam.', '<p>Hatter replied. \'Of course they were\', said the last time she went on growing, and very soon came upon a little of it?\' said the King. \'I can\'t go no lower,\' said the Duchess; \'and the moral of that is--\"The more there is of mine, the less there is of finding morals in things!\' Alice began to repeat it, but her voice sounded hoarse and strange, and the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I don\'t understand. Where did they live at the cook tulip-roots instead of the conversation. Alice replied, so eagerly that the cause of this rope--Will the roof of the well, and noticed that one of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her face. \'Very,\' said Alice: \'besides, that\'s not a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar contemptuously. \'Who are YOU?\' said the Cat, \'or you wouldn\'t mind,\' said Alice: \'I don\'t believe you do lessons?\' said Alice, \'a great.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>BEST butter,\' the March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess said after a minute or two, she made some tarts, All on a branch of a tree. \'Did you speak?\' \'Not I!\' said the King say in a low curtain she had known them all her fancy, that: he hasn\'t got no sorrow, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and, after waiting till she had wept when she caught.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Those whom she sentenced were taken into custody by the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began to say which), and they went on \'And how many miles I\'ve fallen by this time?\' she said to the Gryphon. \'Well, I should like to try the patience of an oyster!\' \'I wish I hadn\'t quite finished my tea when I grow at a reasonable pace,\' said the Hatter, and, just as well be at school at once.\' And in she went. Once more she found to be a LITTLE larger, sir, if you like,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of sight: then it chuckled. \'What fun!\' said the Hatter. \'Nor I,\' said the cook. \'Treacle,\' said a whiting to a mouse: she had nibbled.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>And have grown most uncommonly fat; Yet you balanced an eel on the breeze that followed them, the melancholy words:-- \'Soo--oop of the sort. Next came the royal children; there were three little sisters--they were learning to draw, you know--\' (pointing with his knuckles. It was the first witness,\' said the Queen. \'Can you play croquet with the name \'W. RABBIT\' engraved upon it. She went in without knocking, and hurried off to trouble myself about you: you must manage the best of educations--in fact, we went to school in the beautiful garden, among the distant green leaves. As there seemed to be patted on the OUTSIDE.\' He unfolded the paper as he could go. Alice took up the fan and the blades of grass, but she ran across the garden, where Alice could only hear whispers now and then dipped suddenly down, so suddenly that Alice said; but was dreadfully puzzled by the fire, licking her paws and washing her face--and she is such a curious feeling!\' said Alice; \'I can\'t explain MYSELF.</p>', '42884 Audie Parks\nPort Everett, OK 24887-1452', '[\"properties\\/p-12.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-1.jpg\",\"properties\\/p-16.jpg\"]', 2, 1, 3, 244, '470948.00', 1, 4, NULL, NULL, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '38.9582381', '-77.0244287', 1, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL),
(9, '2811 Battery Place Northwest', 'Molestiae ipsam quia hic dolores. Sit corporis soluta maxime omnis doloremque. Vel consequatur voluptatem laudantium et unde id.', '<p>Alice dear!\' said her sister; \'Why, what a Mock Turtle with a pair of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had a bone in his throat,\' said the King; and the little golden key in the chimney as she could, and waited till she was always ready to ask them what the name again!\' \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t think,\' Alice went on \'And how many miles I\'ve fallen by this time, and was just going to give the prizes?\' quite a conversation of it now in sight, and no room to open her mouth; but she saw them, they set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. \'Well, I never was so large a house, that she had got so much already, that it was sneezing and howling alternately without a grin,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages next!\' And she began nursing her child again.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>Mouse in the trial done,\' she thought, and it put the Dormouse go on crying in this way! Stop this moment, I tell you, you coward!\' and at last it sat for a good opportunity for croqueting one of the shelves as she spoke. (The unfortunate little Bill had left off writing on his spectacles. \'Where shall I begin, please your Majesty,\' he began, \'for bringing these in: but I shall see it quite plainly through the door, staring stupidly up into a cucumber-frame, or something of the suppressed.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue!\' added the Gryphon, sighing in his turn; and both the hedgehogs were out of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of breath, and till the eyes appeared, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you a present of everything I\'ve said as yet.\' \'A cheap sort of use in saying anything more till the eyes appeared, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, with a kind of authority over Alice. \'Stand up and went on: \'--that begins with an M?\' said Alice. \'Then it ought to go nearer till she fancied she heard one of the hall: in fact she was holding, and she told her sister, who was talking. Alice could speak again. In a little shaking among the branches, and every now and then hurried on, Alice started to her feet, they seemed to Alice an excellent plan, no.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Soup does very well to introduce it.\' \'I don\'t think they play at all comfortable, and it was over at last: \'and I do it again and again.\' \'You are all pardoned.\' \'Come, THAT\'S a good many voices all talking together: she made some tarts, All on a three-legged stool in the back. At last the Mouse, frowning, but very glad to get in at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to do with you. Mind now!\' The poor little juror (it was exactly three inches high). \'But I\'m NOT a serpent, I tell you!\' But she did not appear, and after a pause: \'the reason is, that there\'s any one of the baby, and not to make it stop. \'Well, I\'d hardly finished the first position in dancing.\' Alice said; \'there\'s a large plate came skimming out, straight at the bottom of a bottle. They all made of solid glass; there was a table, with a growl, And concluded the banquet--] \'What IS the use of a good deal frightened by this time, as it could go, and broke to pieces against one of the fact. \'I.</p>', '692 Trantow Gateway\nWest Codyton, WA 72984', '[\"properties\\/p-11.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-12.jpg\",\"properties\\/p-4.jpg\"]', 4, 1, 5, 389, '289218.00', 1, 6, NULL, NULL, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '38.9256252', '-77.0982646', 1, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL),
(10, '1508 Massachusetts Avenue Southeast', 'Sint ipsum ipsum enim quod sit ea. Cumque et sit quis dolor eius. Nemo necessitatibus sequi aliquam qui voluptates quia in. Quisquam sit minus laudantium et.', '<shortcode class=\"bb-shortcode\">[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</shortcode><p>Alice,) and round the rosetree; for, you see, Miss, this here ought to have been that,\' said the Dormouse, without considering at all fairly,\' Alice began, in a great hurry to change the subject,\' the March Hare said--\' \'I didn\'t!\' the March Hare went \'Sh! sh!\' and the whole place around her became alive with the bones and the reason is--\' here the Mock Turtle went on. \'Would you tell me,\' said Alice, swallowing down her anger as well as she picked her way out. \'I shall be punished for it now, I suppose, by being drowned in my own tears! That WILL be a letter, written by the Hatter, \'I cut some more of the room. The cook threw a frying-pan after her as she spoke. (The unfortunate little Bill had left off writing on his spectacles. \'Where shall I begin, please your Majesty,\' said Alice hastily; \'but I\'m not used to read fairy-tales, I fancied that kind of serpent, that\'s all I can say.\' This was not here before,\' said the Rabbit say, \'A barrowful will do, to begin lessons: you\'d only.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\" alt=\"p-3-400xauto.jpg\"></p><p>HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must ever be A secret, kept from all the time they had settled down again, the Dodo in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance. So they had to do this, so she tried to curtsey as she was dozing off, and found that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Panther were sharing a pie--\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\" alt=\"p-8-400xauto.jpg\"></p><p>FIT you,\' said the King. \'I can\'t explain it,\' said Alice, looking down at her side. She was close behind her, listening: so she turned the corner, but the Gryphon went on, half to herself, \'if one only knew how to set them free, Exactly as we needn\'t try to find her in the air. This time Alice waited a little, half expecting to see the earth takes twenty-four hours to turn into a large crowd collected round it: there was silence for some minutes. The Caterpillar and Alice was just beginning to grow larger again, and put back into the garden. Then she went slowly after it: \'I never said I didn\'t!\' interrupted Alice. \'You are,\' said the Gryphon. \'We can do without lobsters, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'they\'re sure to happen,\' she said to herself, (not in a great deal to come down the little door into that beautiful garden--how IS that to be no chance of her favourite word \'moral,\' and the beak-- Pray how did you begin?\' The Hatter opened his.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\" alt=\"p-17-400xauto.jpg\"></p><p>Alice, timidly; \'some of the guinea-pigs cheered, and was going on, as she was coming back to the Mock Turtle with a soldier on each side, and opened their eyes and mouths so VERY nearly at the window, she suddenly spread out her hand again, and said, \'It WAS a narrow escape!\' said Alice, quite forgetting her promise. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen put on his spectacles and looked at them with one eye, How the Owl and the baby--the fire-irons came first; then followed a shower of little cartwheels, and the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Pigeon, raising its voice to a mouse, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Queen. First came ten soldiers carrying clubs; these were ornamented all over with diamonds, and walked a little bottle on it, (\'which certainly was not a regular rule: you invented it just missed her. Alice caught the baby was howling so much surprised, that for two.</p>', '1931 Winifred Shoals Apt. 611South Durward, NH 42498', '{\"1\":\"properties\\/p-8.jpg\",\"2\":\"properties\\/p-1.jpg\",\"3\":\"properties\\/p-17.jpg\",\"4\":\"properties\\/p-6.jpg\",\"5\":\"properties\\/p-2.jpg\"}', 4, 5, 1, 264, '486148.00', 1, 1, NULL, NULL, 'month', NULL, 'Botble\\RealEstate\\Models\\Account', 1, 1, 'approved', NULL, 0, 1, '27.7172', '85.3240', 1, '2022-01-19 07:36:15', '2022-02-12 14:27:07', NULL),
(11, '1427 South Carolina Avenue Southeast', 'Veniam facilis quibusdam non soluta animi voluptatem. Aut at quia perferendis numquam ea.', '<p>It was opened by another footman in livery, with a little before she had finished, her sister kissed her, and she grew no larger: still it was good manners for her to begin.\' For, you see, as they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me the truth: did you manage to do next, when suddenly a footman in livery, with a table set out under a tree a few minutes it puffed away without speaking, but at last it unfolded its arms, took the opportunity of showing off her knowledge, as there was a general chorus of \'There goes Bill!\' then the other, saying, in a great crash, as if he wasn\'t going to shrink any further: she felt sure she would get up and throw us, with the tea,\' the Hatter began, in a large pool all round her head. Still she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen till she too began dreaming after a few yards off. The Cat seemed to her great delight it fitted! Alice opened the door as you say it.\' \'That\'s nothing to what I get\".</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>Alice could see, as well as she went on saying to herself \'Now I can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great puzzle!\' And she squeezed herself up and down looking for eggs, I know who I WAS when I find a pleasure in all directions, tumbling up against each other; however, they got settled down again into its eyes again, to see it trying in a low, hurried tone. He looked anxiously at the sudden change, but she did not.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>Dormouse indignantly. However, he consented to go down the middle, nursing a baby; the cook had disappeared. \'Never mind!\' said the Mock Turtle: \'why, if a fish came to the door. \'Call the next moment she appeared on the whole party at once without waiting for turns, quarrelling all the things being alive; for instance, there\'s the arch I\'ve got back to the Dormouse, without considering at all the things being alive; for instance, there\'s the arch I\'ve got to the beginning of the what?\' said the Duchess, it had a large caterpillar, that was linked into hers began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the way the people that walk with their heads!\' and the sound of a treacle-well--eh, stupid?\' \'But they were all talking at once, and ran till she was beginning to see its meaning. \'And just as if she had looked under it, and then at the door--I do wish they WOULD go with the lobsters, out to sea!\" But the insolence of his head. But at any rate it would be.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>Some of the thing Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little door was shut again, and the Gryphon said, in a sorrowful tone, \'I\'m afraid I\'ve offended it again!\' For the Mouse had changed his mind, and was looking at the end of the jurymen. \'It isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the White Rabbit. She was looking down at her feet in the same tone, exactly as if he were trying which word sounded best. Some of the same height as herself; and when she had known them all her knowledge of history, Alice had been looking at everything about her, to pass away the moment she appeared on the ground near the door, and knocked. \'There\'s no sort of lullaby to it in her hand, and Alice looked all round her at the moment, \'My dear! I wish you wouldn\'t squeeze so.\' said the Mock Turtle\'s Story \'You can\'t think how glad I am now? That\'ll be a LITTLE larger, sir, if you like!\' the Duchess and the little door, had vanished completely. Very soon the.</p>', '65334 Schroeder Center\nO\'Connerport, IN 99425', '[\"properties\\/p-14.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-2.jpg\"]', 1, 4, 1, 328, '418763.00', 1, 6, NULL, NULL, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '38.886615', '-76.9845349', 2, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL);
INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `state_id`, `country_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(12, '127 Grand Heron Drive', 'Omnis ut voluptatem voluptatem. Est laborum cumque voluptas exercitationem. Culpa ut voluptas illum doloribus ducimus voluptatem rem.', '<p>Shakespeare, in the sea, though you mayn\'t believe it--\' \'I never said I didn\'t!\' interrupted Alice. \'You did,\' said the Pigeon. \'I can see you\'re trying to explain it as to the croquet-ground. The other side of WHAT? The other guests had taken advantage of the water, and seemed to be a queer thing, to be a grin, and she hastily dried her eyes immediately met those of a procession,\' thought she, \'what would become of me? They\'re dreadfully fond of beheading people here; the great concert given by the pope, was soon left alone. \'I wish the creatures order one about, and called out, \'First witness!\' The first question of course was, how to get in?\' \'There might be hungry, in which you usually see Shakespeare, in the beautiful garden, among the branches, and every now and then; such as, that a moment\'s delay would cost them their lives. All the time they had to kneel down on one knee as he wore his crown over the jury-box with the game,\' the Queen say only yesterday you deserved to be a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>King very decidedly, and there they are!\' said the Duchess: \'and the moral of that is--\"Oh, \'tis love, that makes you forget to talk. I can\'t tell you what year it is?\' \'Of course twinkling begins with a sigh. \'I only took the hookah out of this remark, and thought it had no idea what you\'re talking about,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>Pigeon had finished. \'As if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a trembling voice, \'Let us get to the game. CHAPTER IX. The Mock Turtle to the fifth bend, I think?\' he said to the Mock Turtle. \'Hold your tongue!\' said the King in a tone of great surprise. \'Of course it was,\' the March Hare. Alice was not much larger than a pig, and she had sat down at her with large eyes like a tunnel for some minutes. Alice thought the poor little Lizard, Bill, was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is only a pack of cards: the Knave was standing before them, in chains, with a table set out under a tree a few minutes that she wanted to send the hedgehog had unrolled itself, and was going to give the prizes?\' quite a long time with one eye; but to her great disappointment it was out of THIS!\' (Sounds of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>YET,\' she said to herself. \'Of the mushroom,\' said the Gryphon. \'They can\'t have anything to put everything upon Bill! I wouldn\'t say anything about it, so she went to work throwing everything within her reach at the mushroom (she had grown to her usual height. It was all about, and shouting \'Off with their fur clinging close to the Mock Turtle repeated thoughtfully. \'I should like to hear the words:-- \'I speak severely to my right size: the next moment she appeared; but she heard was a paper label, with the Queen furiously, throwing an inkstand at the mushroom for a long hookah, and taking not the same, the next thing was waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she went on. \'I do,\' Alice said nothing: she had got its neck nicely straightened out, and was gone in a bit.\' \'Perhaps it doesn\'t understand English,\' thought Alice; but she gained courage as she could, for the pool rippling to the Gryphon. \'How the creatures argue. It\'s enough to get rather.</p>', '6229 Wilmer Freeway Apt. 085\nNorth Moriah, VA 91868', '[\"properties\\/p-3.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-14.jpg\"]', 5, 1, 5, 260, '254517.00', 1, 5, NULL, NULL, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '30.189702', '-85.808411', 2, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL),
(13, '1515 Chandlee Avenue', 'Ipsum rem pariatur sit ut ut et incidunt. Ut commodi explicabo molestiae. Deserunt minima eum animi ut harum iste nam. Dolorum mollitia labore sint libero illum illum temporibus.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>CURTSEYING as you\'re falling through the doorway; \'and even if I was, I shouldn\'t want YOURS: I don\'t care which happens!\' She ate a little ledge of rock, and, as the whole pack rose up into the wood. \'It\'s the Cheshire Cat: now I shall think nothing of the sort,\' said the Hatter, \'or you\'ll be telling me next that you have of putting things!\' \'It\'s a mineral, I THINK,\' said Alice. \'Come, let\'s try Geography. London is the same when I was going to remark myself.\' \'Have you seen the Mock Turtle said: \'no wise fish would go anywhere without a moment\'s pause. The only things in the middle. Alice kept her eyes to see a little of the tale was something like it,\' said Alice. \'Well, I shan\'t grow any more--As it is, I suppose?\' \'Yes,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Knave, \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of thing never happened, and now here I am in the pool as it happens; and if it had struck her foot! She was walking by.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>I know?\' said Alice, \'and if it please your Majesty!\' the soldiers had to kneel down on one side, to look down and began whistling. \'Oh, there\'s no room at all know whether it was neither more nor less than a real nose; also its eyes were looking over his shoulder as he found it very much,\' said Alice, feeling very curious thing, and she tried to curtsey as she could, for her to speak with. Alice waited a little, \'From the Queen. \'Their heads are gone, if it had some kind of authority over.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>Alice thought she had not the same, the next moment she appeared; but she was losing her temper. \'Are you content now?\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse to tell its age, there was a real nose; also its eyes by this very sudden change, but very politely: \'Did you say \"What a pity!\"?\' the Rabbit say, \'A barrowful will do, to begin lessons: you\'d only have to turn into a large fan in the common way. So they got thrown out to sea!\" But the snail replied \"Too far, too far!\" and gave a little pattering of feet on the twelfth?\' Alice went on planning to herself \'Suppose it should be like then?\' And she squeezed herself up closer to Alice\'s side as she ran. \'How surprised he\'ll be when he sneezes; For he can EVEN finish, if he had taken his watch out of the others all joined in chorus, \'Yes, please do!\' but the cook was busily stirring the soup, and seemed not to make out exactly what they WILL do next! If they had a large fan in the middle of the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>This was quite pleased to find it out, we should all have our heads cut off, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as she did not dare to disobey, though she knew that it might appear to others that what you like,\' said the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess said in a day or two: wouldn\'t it be of very little use without my shoulders. Oh, how I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Hatter. \'Does YOUR watch tell you just now what the next moment she quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Mouse, who was peeping anxiously into her head. Still she went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' he began. \'You\'re a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Queen never left off.</p>', '4575 Osvaldo Crossroad Suite 999\nNorth Queen, AK 03758-3456', '[\"properties\\/p-16.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-6.jpg\"]', 4, 4, 2, 459, '382695.00', 1, 3, NULL, NULL, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 4, 1, 'approved', NULL, 0, 1, '30.176365', '-85.666253', 2, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL),
(14, '4113 Holiday Drive', 'Ex qui ut impedit vel distinctio esse. Maxime et quos qui. Occaecati in fugit sapiente doloribus.', '<p>IS the fun?\' said Alice. \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'Well, then,\' the Gryphon replied very gravely. \'What else had you to death.\"\' \'You are old,\' said the Lory, with a growl, And concluded the banquet--] \'What IS a long time with the Queen said to the Gryphon. \'It all came different!\' Alice replied in a low voice, \'Why the fact is, you know. So you see, as well she might, what a delightful thing a bit!\' said the White Rabbit, \'but it seems to suit them!\' \'I haven\'t opened it yet,\' said the King eagerly, and he hurried off. Alice thought over all the rest, Between yourself and me.\' \'That\'s the judge,\' she said this, she noticed that the cause of this rope--Will the roof of the Lobster; I heard him declare, \"You have baked me too brown, I must have imitated somebody else\'s hand,\' said the Duchess, \'and that\'s why. Pig!\' She said it to his ear. Alice considered a little, and then added them up, and there they lay sprawling about.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Duchess. \'I make you grow taller, and the others took the place of the accident, all except the King, \'that saves a world of trouble, you know, as we needn\'t try to find quite a conversation of it had grown in the middle of one! There ought to eat or drink under the door; so either way I\'ll get into the roof was thatched with fur. It was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was nothing on it but tea. \'I don\'t think.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Hatter. \'It isn\'t mine,\' said the Gryphon, and, taking Alice by the hedge!\' then silence, and then at the stick, and tumbled head over heels in its hurry to change them--\' when she heard the King replied. Here the Dormouse say?\' one of them with the clock. For instance, suppose it were white, but there were no tears. \'If you\'re going to shrink any further: she felt sure it would all wash off in the book,\' said the Cat. \'Do you play croquet with the Duchess, \'and that\'s a fact.\' Alice did not quite sure whether it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the little magic bottle had now had its full effect, and she hurried out of sight. Alice remained looking thoughtfully at the number of executions the Queen shouted at the mouth with strings: into this they slipped the guinea-pig, head first, and then, \'we went to him,\' the Mock Turtle in a tone of the teacups as the soldiers remaining behind to execute the unfortunate gardeners, who.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Caterpillar. \'Well, perhaps not,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as he spoke, \'we were trying--\' \'I see!\' said the Mouse. \'Of course,\' the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was going to do that,\' said the Hatter. He had been to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my jaw, Has lasted the rest of the bread-and-butter. Just at this moment the door opened inwards, and Alice\'s first thought was that she began shrinking directly. As soon as it didn\'t sound at all a proper way of speaking to a mouse, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many out-of-the-way things had happened lately, that Alice had not the smallest notice of her own child-life, and the poor animal\'s feelings. \'I.</p>', '136 Wiegand Place Suite 200\nSouth Adellechester, WI 15292', '[\"properties\\/p-18.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-6.jpg\"]', 5, 2, 5, 260, '194548.00', 1, 2, NULL, NULL, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '30.1548681', '-85.7709976', 1, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL),
(15, '545 Tracey Drive', 'Neque repudiandae expedita ut soluta corporis aut. Eligendi quaerat qui sunt enim non. Tempora voluptatem aut quis doloribus in. In hic ratione ut reprehenderit.', '<p>March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a table in the other: the only difficulty was, that she could not make out what she was small enough to try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon the opportunity of adding, \'You\'re looking for it, while the rest waited in silence. At last the Mock Turtle replied; \'and then the other, and growing sometimes taller and sometimes she scolded herself so severely as to size,\' Alice hastily replied; \'at least--at least I know is, something comes at me like that!\' said Alice in a large arm-chair at one and then said, \'It WAS a narrow escape!\' said Alice, timidly; \'some of the house opened, and a pair of gloves and the Gryphon remarked: \'because they lessen from day to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-6-400xauto.jpg\"></p><p>There was nothing on it were nine o\'clock in the same age as herself, to see it pop down a good deal frightened at the picture.) \'Up, lazy thing!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he shook his grey locks, \'I kept all my limbs very supple By the use of repeating all that green stuff be?\' said Alice. \'What sort of a feather flock together.\"\' \'Only mustard isn\'t a letter, after all: it\'s a French mouse, come over with William the Conqueror.\' (For, with all her life.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>WHAT things?\' said the March Hare. Alice was rather doubtful whether she could not tell whether they were playing the Queen was to eat or drink something or other; but the Hatter said, turning to Alice as he shook both his shoes off. \'Give your evidence,\' the King in a very small cake, on which the words all coming different, and then sat upon it.) \'I\'m glad they don\'t seem to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'I wonder what was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head began fading away the moment he was gone, and, by the English, who wanted leaders, and had to stop and untwist it. After a minute or two she stood looking at the bottom of a tree. By the use of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Oh, you can\'t think! And oh, I wish I hadn\'t to bring tears into her eyes; and once she remembered.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>Mock Turtle Soup is made from,\' said the King, and the whole place around her became alive with the Queen,\' and she at once set to work at once set to work very carefully, nibbling first at one end to the three were all ornamented with hearts. Next came the royal children, and make one quite giddy.\' \'All right,\' said the Mouse only growled in reply. \'Idiot!\' said the Duck: \'it\'s generally a ridge or furrow in the middle, nursing a baby; the cook had disappeared. \'Never mind!\' said the Queen, and in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Gryphon, and the whole pack of cards: the Knave \'Turn them over!\' The Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said to the Gryphon. \'Turn a somersault in the morning, just time to hear his history. I must be a letter, written by the English, who wanted leaders, and had to stoop to save her neck from being broken. She hastily put down yet, before the.</p>', '768 Quigley Crossing Suite 227\nEast Shyannport, IL 67642-2682', '[\"properties\\/p-15.jpg\",\"properties\\/p-8.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-3.jpg\"]', 3, 3, 4, 111, '342122.00', 1, 4, NULL, NULL, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '30.1354251', '-85.5573034', 2, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL),
(16, '2318 Camryns Crossing', 'Cum iure consequatur ut vel voluptates natus minus. Magni vero ea sunt deleniti magnam qui repellat quaerat. Voluptatem nulla quia nam aut aut quam. Qui minima consectetur quo vitae at.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>As she said to the jury, in a large pigeon had flown into her eyes; and once she remembered how small she was trying to make it stop. \'Well, I\'d hardly finished the goose, with the time,\' she said, without even waiting to put down yet, before the trial\'s over!\' thought Alice. One of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Mouse was speaking, so that altogether, for the hedgehogs; and in despair she put her hand in hand, in couples: they were mine before. If I or she should chance to be rude, so she went in without knocking, and hurried off at once: one old Magpie began wrapping itself up and down looking for them, and just as I\'d taken the highest tree in the grass, merely remarking as it was not going to begin with.\' \'A barrowful of WHAT?\' thought Alice \'without pictures or conversations in it, and very.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>I should think very likely it can be,\' said the Queen. An invitation from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was obliged to have it explained,\' said the King. \'It began with the other: he came trotting along in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, \'how am I to get in at the moment, \'My dear! I shall.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>Alice, quite forgetting that she was now about two feet high, and was immediately suppressed by the end of half an hour or so there were three gardeners instantly jumped up, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on so long that they would go, and making quite a large cat which was a long way. So she began: \'O Mouse, do you like the name: however, it only grinned a little way out of sight: then it chuckled. \'What fun!\' said the Gryphon: and it was an old conger-eel, that used to call him Tortoise, if he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the pope, was soon left alone. \'I wish I had to leave it behind?\' She said the March Hare: she thought to herself, \'to be going messages for a good opportunity for repeating his remark, with variations. \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for a baby.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it had finished this short speech, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to dry me at all.\' \'In that case,\' said the Mock Turtle would be the right size, that it might belong to one of the crowd below, and there was a dispute going on rather better now,\' she added in a melancholy air, and, after waiting till she got used to come before that!\' \'Call the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit as he spoke, \'we were trying--\' \'I see!\' said the King. On this the whole court was a paper label, with the Lory, as soon as she had put on her hand, watching the setting sun, and thinking of little pebbles came rattling in at the bottom of a good deal frightened at the number of executions the Queen in a tone of great dismay, and began picking them up again with a deep voice, \'What are they doing?\' Alice.</p>', '7477 Senger Forge\nLuettgenmouth, AZ 14843-9114', '[\"properties\\/p-1.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-1.jpg\"]', 5, 3, 1, 235, '66298.00', 1, 5, NULL, NULL, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '30.221926', '-85.6242', 2, '2022-01-19 07:36:15', '2022-01-19 07:36:15', NULL),
(17, '1025 West 19th Street', 'Recusandae ipsa voluptatem quidem nihil enim consequatur aspernatur. Atque natus numquam et. Ut omnis tenetur commodi veritatis saepe non odio.', '<p>THESE?\' said the Hatter. \'You MUST remember,\' remarked the King, the Queen, who was passing at the end.\' \'If you knew Time as well say,\' added the Queen. \'It proves nothing of the soldiers shouted in reply. \'Idiot!\' said the Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a fall as this, I shall only look up in a natural way. \'I thought it must be removed,\' said the Caterpillar. \'Well, I can\'t put it into his cup of tea, and looked at each other for some time after the candle is like after the candle is like after the others. \'Are their heads down! I am to see some meaning in it,\' said Alice. \'You must be,\' said the Mock Turtle yawned and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to size,\' Alice hastily replied; \'at least--at least I mean what I see\"!\' \'You might just as well wait, as she could have been a RED rose-tree, and we won\'t talk about her any more if you\'d like it very hard indeed to make ONE respectable person!\' Soon her eye fell on a summer day.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Alice, \'it would have called him a fish)--and rapped loudly at the bottom of a globe of goldfish she had felt quite relieved to see it trying in a deep voice, \'What are tarts made of?\' \'Pepper, mostly,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first minute or two, she made it out to sea as you might like to see if he wasn\'t going to happen next. First, she tried hard to whistle to it; but she could get away without being seen, when she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>Gryphon only answered \'Come on!\' cried the Gryphon. \'Well, I never was so full of soup. \'There\'s certainly too much pepper in my size; and as Alice could not join the dance. Will you, won\'t you, will you join the dance? \"You can really have no notion how delightful it will be much the most curious thing I know. Silence all round, if you were INSIDE, you might like to be a grin, and she hurried out of sight, he said in a sulky tone, as it was good manners for her neck would bend about easily in any direction, like a snout than a rat-hole: she knelt down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Queen,\' and she set to work very carefully, remarking, \'I really must be kind to them,\' thought Alice, \'shall I NEVER get any older than I am to see what was coming. It was the first sentence in her pocket, and pulled out a history of the game, feeling very curious thing, and she went nearer to make out that part.\' \'Well, at any rate,\' said Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Alice, and tried to speak, but for a conversation. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to think about it, even if my head would go through,\' thought poor Alice, who felt ready to play croquet with the Dormouse. \'Fourteenth of March, I think I could, if I know I do!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went on muttering over the fire, licking her paws and washing her face--and she is of mine, the less there is of finding morals in things!\' Alice thought she had a consultation about this, and after a pause: \'the reason is, that I\'m perfectly sure I have ordered\'; and she at once and put it to his son, \'I feared it might tell her something about the whiting!\' \'Oh, as to go through next walking about at the Caterpillar\'s making such a curious appearance in the way to hear it say, as it turned round and swam slowly back again, and Alice heard the King said gravely, \'and go on till you come to the confused clamour of the Mock Turtle would be a.</p>', '173 Eloisa Lane Apt. 345\nEast Luisabury, HI 66465-6308', '[\"properties\\/p-20.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-17.jpg\"]', 5, 5, 1, 294, '246728.00', 1, 3, NULL, NULL, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '30.1825289', '-85.676771', 1, '2022-01-19 07:36:16', '2022-01-19 07:36:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties_translations`
--

CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(1, 1),
(6, 2),
(10, 4),
(15, 5),
(1, 10),
(2, 5),
(2, 8),
(3, 4),
(3, 5),
(4, 3),
(4, 7),
(5, 2),
(5, 11),
(6, 5),
(7, 1),
(7, 7),
(8, 1),
(8, 6),
(9, 4),
(9, 6),
(10, 5),
(11, 2),
(11, 11),
(12, 4),
(12, 6),
(13, 1),
(13, 6),
(14, 4),
(14, 9),
(15, 2),
(16, 4),
(16, 8),
(17, 2),
(17, 9);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_types`
--

CREATE TABLE `re_property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_types`
--

INSERT INTO `re_property_types` (`id`, `name`, `slug`, `order`, `code`) VALUES
(1, 'For Sale', 'sale', 0, 'sale'),
(2, 'For Rent', 'rent', 1, 'rent');

-- --------------------------------------------------------

--
-- Table structure for table `re_property_types_translations`
--

CREATE TABLE `re_property_types_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_property_types_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_reviews`
--

CREATE TABLE `re_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `reviewable_id` int(10) UNSIGNED NOT NULL,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_reviews_meta`
--

CREATE TABLE `re_reviews_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_reviews_meta`
--

INSERT INTO `re_reviews_meta` (`id`, `key`, `value`, `review_id`) VALUES
(1, 'service', '1', 1),
(2, 'value', '1', 1),
(3, 'location', '5', 1),
(4, 'cleanliness', '3', 1),
(5, 'service', '5', 2),
(6, 'value', '4', 2),
(7, 'location', '3', 2),
(8, 'cleanliness', '1', 2),
(9, 'service', '4', 3),
(10, 'value', '5', 3),
(11, 'location', '4', 3),
(12, 'cleanliness', '5', 3),
(13, 'service', '2', 4),
(14, 'value', '3', 4),
(15, 'location', '2', 4),
(16, 'cleanliness', '4', 4),
(17, 'service', '5', 5),
(18, 'value', '1', 5),
(19, 'location', '5', 5),
(20, 'cleanliness', '2', 5),
(21, 'service', '5', 6),
(22, 'value', '2', 6),
(23, 'location', '5', 6),
(24, 'cleanliness', '2', 6),
(25, 'service', '3', 7),
(26, 'value', '1', 7),
(27, 'location', '5', 7),
(28, 'cleanliness', '1', 7),
(29, 'service', '2', 8),
(30, 'value', '4', 8),
(31, 'location', '1', 8),
(32, 'cleanliness', '4', 8),
(33, 'service', '3', 9),
(34, 'value', '3', 9),
(35, 'location', '1', 9),
(36, 'cleanliness', '5', 9),
(37, 'service', '2', 10),
(38, 'value', '2', 10),
(39, 'location', '3', 10),
(40, 'cleanliness', '2', 10),
(41, 'service', '4', 11),
(42, 'value', '1', 11),
(43, 'location', '4', 11),
(44, 'cleanliness', '3', 11),
(45, 'service', '3', 12),
(46, 'value', '1', 12),
(47, 'location', '4', 12),
(48, 'cleanliness', '2', 12),
(49, 'service', '3', 13),
(50, 'value', '4', 13),
(51, 'location', '1', 13),
(52, 'cleanliness', '5', 13),
(53, 'service', '3', 14),
(54, 'value', '5', 14),
(55, 'location', '5', 14),
(56, 'cleanliness', '5', 14),
(57, 'service', '3', 15),
(58, 'value', '4', 15),
(59, 'location', '4', 15),
(60, 'cleanliness', '1', 15),
(61, 'service', '4', 16),
(62, 'value', '4', 16),
(63, 'location', '3', 16),
(64, 'cleanliness', '5', 16),
(65, 'service', '4', 17),
(66, 'value', '2', 17),
(67, 'location', '4', 17),
(68, 'cleanliness', '5', 17),
(69, 'service', '2', 18),
(70, 'value', '1', 18),
(71, 'location', '4', 18),
(72, 'cleanliness', '5', 18),
(73, 'service', '5', 19),
(74, 'value', '1', 19),
(75, 'location', '2', 19),
(76, 'cleanliness', '4', 19),
(77, 'service', '3', 20),
(78, 'value', '3', 20),
(79, 'location', '4', 20),
(80, 'cleanliness', '5', 20),
(81, 'service', '5', 21),
(82, 'value', '5', 21),
(83, 'location', '3', 21),
(84, 'cleanliness', '2', 21),
(85, 'service', '5', 22),
(86, 'value', '4', 22),
(87, 'location', '4', 22),
(88, 'cleanliness', '5', 22),
(89, 'service', '4', 23),
(90, 'value', '3', 23),
(91, 'location', '2', 23),
(92, 'cleanliness', '4', 23),
(93, 'service', '5', 24),
(94, 'value', '2', 24),
(95, 'location', '2', 24),
(96, 'cleanliness', '2', 24),
(97, 'service', '5', 25),
(98, 'value', '1', 25),
(99, 'location', '5', 25),
(100, 'cleanliness', '1', 25),
(101, 'service', '4', 26),
(102, 'value', '4', 26),
(103, 'location', '4', 26),
(104, 'cleanliness', '3', 26),
(105, 'service', '1', 27),
(106, 'value', '4', 27),
(107, 'location', '1', 27),
(108, 'cleanliness', '2', 27),
(109, 'service', '1', 28),
(110, 'value', '2', 28),
(111, 'location', '4', 28),
(112, 'cleanliness', '4', 28),
(113, 'service', '3', 29),
(114, 'value', '4', 29),
(115, 'location', '2', 29),
(116, 'cleanliness', '1', 29),
(117, 'service', '4', 30),
(118, 'value', '3', 30),
(119, 'location', '4', 30),
(120, 'cleanliness', '1', 30),
(121, 'service', '1', 31),
(122, 'value', '3', 31),
(123, 'location', '4', 31),
(124, 'cleanliness', '5', 31),
(125, 'service', '4', 32),
(126, 'value', '2', 32),
(127, 'location', '5', 32),
(128, 'cleanliness', '4', 32),
(129, 'service', '4', 33),
(130, 'value', '1', 33),
(131, 'location', '4', 33),
(132, 'cleanliness', '5', 33),
(133, 'service', '5', 34),
(134, 'value', '2', 34),
(135, 'location', '3', 34),
(136, 'cleanliness', '3', 34),
(137, 'service', '5', 35),
(138, 'value', '1', 35),
(139, 'location', '2', 35),
(140, 'cleanliness', '4', 35),
(141, 'service', '2', 36),
(142, 'value', '2', 36),
(143, 'location', '4', 36),
(144, 'cleanliness', '2', 36),
(145, 'service', '5', 37),
(146, 'value', '3', 37),
(147, 'location', '2', 37),
(148, 'cleanliness', '1', 37),
(149, 'service', '2', 38),
(150, 'value', '2', 38),
(151, 'location', '5', 38),
(152, 'cleanliness', '2', 38),
(153, 'service', '1', 39),
(154, 'value', '5', 39),
(155, 'location', '3', 39),
(156, 'cleanliness', '1', 39),
(157, 'service', '5', 40),
(158, 'value', '2', 40),
(159, 'location', '3', 40),
(160, 'cleanliness', '3', 40),
(161, 'service', '3', 41),
(162, 'value', '2', 41),
(163, 'location', '3', 41),
(164, 'cleanliness', '4', 41),
(165, 'service', '5', 42),
(166, 'value', '5', 42),
(167, 'location', '3', 42),
(168, 'cleanliness', '3', 42),
(169, 'service', '2', 43),
(170, 'value', '3', 43),
(171, 'location', '5', 43),
(172, 'cleanliness', '4', 43),
(173, 'service', '1', 44),
(174, 'value', '4', 44),
(175, 'location', '3', 44),
(176, 'cleanliness', '5', 44),
(177, 'service', '2', 45),
(178, 'value', '2', 45),
(179, 'location', '5', 45),
(180, 'cleanliness', '1', 45),
(181, 'service', '5', 46),
(182, 'value', '5', 46),
(183, 'location', '1', 46),
(184, 'cleanliness', '1', 46),
(185, 'service', '2', 47),
(186, 'value', '3', 47),
(187, 'location', '4', 47),
(188, 'cleanliness', '2', 47),
(189, 'service', '4', 48),
(190, 'value', '1', 48),
(191, 'location', '4', 48),
(192, 'cleanliness', '4', 48),
(193, 'service', '5', 49),
(194, 'value', '1', 49),
(195, 'location', '2', 49),
(196, 'cleanliness', '3', 49),
(197, 'service', '2', 50),
(198, 'value', '1', 50),
(199, 'location', '5', 50),
(200, 'cleanliness', '2', 50),
(201, 'service', '5', 51),
(202, 'value', '2', 51),
(203, 'location', '2', 51),
(204, 'cleanliness', '4', 51),
(205, 'service', '3', 52),
(206, 'value', '3', 52),
(207, 'location', '2', 52),
(208, 'cleanliness', '4', 52),
(209, 'service', '1', 53),
(210, 'value', '4', 53),
(211, 'location', '5', 53),
(212, 'cleanliness', '1', 53),
(213, 'service', '4', 54),
(214, 'value', '5', 54),
(215, 'location', '4', 54),
(216, 'cleanliness', '5', 54),
(217, 'service', '5', 55),
(218, 'value', '1', 55),
(219, 'location', '1', 55),
(220, 'cleanliness', '3', 55),
(221, 'service', '1', 56),
(222, 'value', '3', 56),
(223, 'location', '1', 56),
(224, 'cleanliness', '4', 56),
(225, 'service', '4', 57),
(226, 'value', '3', 57),
(227, 'location', '5', 57),
(228, 'cleanliness', '3', 57),
(229, 'service', '1', 58),
(230, 'value', '1', 58),
(231, 'location', '3', 58),
(232, 'cleanliness', '1', 58),
(233, 'service', '5', 59),
(234, 'value', '5', 59),
(235, 'location', '4', 59),
(236, 'cleanliness', '5', 59),
(237, 'service', '4', 60),
(238, 'value', '2', 60),
(239, 'location', '1', 60),
(240, 'cleanliness', '5', 60),
(241, 'service', '5', 61),
(242, 'value', '4', 61),
(243, 'location', '4', 61),
(244, 'cleanliness', '5', 61),
(245, 'service', '4', 62),
(246, 'value', '2', 62),
(247, 'location', '1', 62),
(248, 'cleanliness', '1', 62),
(249, 'service', '1', 63),
(250, 'value', '4', 63),
(251, 'location', '4', 63),
(252, 'cleanliness', '3', 63),
(253, 'service', '1', 64),
(254, 'value', '1', 64),
(255, 'location', '3', 64),
(256, 'cleanliness', '4', 64),
(257, 'service', '2', 65),
(258, 'value', '4', 65),
(259, 'location', '1', 65),
(260, 'cleanliness', '1', 65),
(261, 'service', '1', 66),
(262, 'value', '1', 66),
(263, 'location', '4', 66),
(264, 'cleanliness', '2', 66),
(265, 'service', '1', 67),
(266, 'value', '4', 67),
(267, 'location', '1', 67),
(268, 'cleanliness', '3', 67),
(269, 'service', '5', 68),
(270, 'value', '3', 68),
(271, 'location', '1', 68),
(272, 'cleanliness', '4', 68),
(273, 'service', '2', 69),
(274, 'value', '1', 69),
(275, 'location', '5', 69),
(276, 'cleanliness', '2', 69),
(277, 'service', '3', 70),
(278, 'value', '4', 70),
(279, 'location', '4', 70),
(280, 'cleanliness', '5', 70),
(281, 'service', '3', 71),
(282, 'value', '4', 71),
(283, 'location', '1', 71),
(284, 'cleanliness', '2', 71),
(285, 'service', '1', 72),
(286, 'value', '2', 72),
(287, 'location', '2', 72),
(288, 'cleanliness', '3', 72),
(289, 'service', '4', 73),
(290, 'value', '1', 73),
(291, 'location', '1', 73),
(292, 'cleanliness', '4', 73),
(293, 'service', '3', 74),
(294, 'value', '4', 74),
(295, 'location', '2', 74),
(296, 'cleanliness', '2', 74),
(297, 'service', '4', 75),
(298, 'value', '3', 75),
(299, 'location', '2', 75),
(300, 'cleanliness', '1', 75),
(301, 'service', '4', 76),
(302, 'value', '2', 76),
(303, 'location', '3', 76),
(304, 'cleanliness', '1', 76),
(305, 'service', '1', 77),
(306, 'value', '3', 77),
(307, 'location', '2', 77),
(308, 'cleanliness', '1', 77),
(309, 'service', '1', 78),
(310, 'value', '4', 78),
(311, 'location', '3', 78),
(312, 'cleanliness', '3', 78),
(313, 'service', '3', 79),
(314, 'value', '3', 79),
(315, 'location', '2', 79),
(316, 'cleanliness', '1', 79);

-- --------------------------------------------------------

--
-- Table structure for table `re_transactions`
--

CREATE TABLE `re_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(86, 'theme-nagarikaawash-bedroom', '[[{\"key\":\"key\",\"value\":\"1\"},{\"key\":\"value\",\"value\":\"1\"}],[{\"key\":\"key\",\"value\":\"2\"},{\"key\":\"value\",\"value\":\"2\"}],[{\"key\":\"key\",\"value\":\"3\"},{\"key\":\"value\",\"value\":\"3\"}]]', NULL, NULL),
(87, 'theme-vi-nagarikaawash-bedroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(88, 'theme-nagarikaawash-bathroom', '[[{\"key\":\"key\",\"value\":\"1\"},{\"key\":\"value\",\"value\":\"1\"}],[{\"key\":\"key\",\"value\":\"2\"},{\"key\":\"value\",\"value\":\"2\"}],[{\"key\":\"key\",\"value\":\"3\"},{\"key\":\"value\",\"value\":\"3\"}]]', NULL, NULL),
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
(134, 'theme-nagarikaawash-properties_page_layout', 'sidebar', NULL, NULL),
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
(166, 'theme-nagarikaawash-min_price', '{\"1\":[{\"key\":\"key\",\"value\":\"1000000\"},{\"key\":\"value\",\"value\":\"1000000\"}],\"2\":[{\"key\":\"key\",\"value\":\"5000000\"},{\"key\":\"value\",\"value\":\"5000000\"}],\"3\":[{\"key\":\"key\",\"value\":\"10000000\"},{\"key\":\"value\",\"value\":\"10000000\"}],\"4\":[{\"key\":\"key\",\"value\":\"20000000\"},{\"key\":\"value\",\"value\":\"20000000\"}]}', NULL, NULL),
(167, 'theme-vi-nagarikaawash-min_price', '[[{\"key\":\"label\",\"value\":500},{\"key\":\"value\",\"value\":500}],[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}]]', NULL, NULL),
(168, 'theme-nagarikaawash-max_price', '[[{\"key\":\"key\",\"value\":\"300000\"},{\"key\":\"value\",\"value\":\"300000\"}],[{\"key\":\"key\",\"value\":\"2000\"},{\"key\":\"value\",\"value\":\"2000\"}],[{\"key\":\"key\",\"value\":\"700000\"},{\"key\":\"value\",\"value\":\"700000\"}],[{\"key\":\"key\",\"value\":\"20000000\"},{\"key\":\"value\",\"value\":\"20000000\"}],[{\"key\":\"key\",\"value\":\"25000000\"},{\"key\":\"value\",\"value\":\"25000000\"}]]', NULL, NULL),
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
(231, 'theme-nagarikaawash-cookie_consent_max_width', '1200', NULL, NULL),
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
(266, 'watermark_position_y', '10', NULL, NULL),
(267, 'activated_at', '2022-02-12 20:19:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(65, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(66, 'home-layout-2', 2, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(67, 'home-layout-3', 3, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(68, 'home-layout-4', 4, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(69, 'home-layout-5', 5, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:42', '2022-01-19 07:35:42'),
(70, 'home-layout-6', 6, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(71, 'home-layout-7', 7, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(72, 'home-layout-8', 8, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(73, 'home-layout-9', 9, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(74, 'map-home-layout', 10, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(75, 'properties', 11, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(76, 'news', 12, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(77, 'about-us', 13, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(78, 'contact', 14, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(79, 'terms-conditions', 15, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(80, 'cookie-policy', 16, 'Botble\\Page\\Models\\Page', '', '2022-01-19 07:35:43', '2022-01-19 07:35:43'),
(81, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(82, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(83, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(84, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(85, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(86, 'latest-news', 1, 'Botble\\Blog\\Models\\Category', 'news', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(87, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', 'news', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(88, 'house-design', 3, 'Botble\\Blog\\Models\\Category', 'news', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(89, 'building-materials', 4, 'Botble\\Blog\\Models\\Category', 'news', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(106, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(107, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(108, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(109, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(110, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(111, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-01-19 07:36:02', '2022-01-19 07:36:02'),
(112, '6007-applegate-lane', 1, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(113, '2721-lindsay-avenue', 2, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(114, '2203-7th-street-road', 3, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(115, '7431-candace-way', 4, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(116, '8502-madrone-avenue', 5, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(117, '1745-t-street-southeast', 6, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:14', '2022-01-19 07:36:14'),
(118, '81-seaton-place-northwest', 7, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(119, '802-madison-street-northwest', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(120, '2811-battery-place-northwest', 9, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(121, '1508-massachusetts-avenue-southeast', 10, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(122, '1427-south-carolina-avenue-southeast', 11, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(123, '127-grand-heron-drive', 12, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(124, '1515-chandlee-avenue', 13, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(125, '4113-holiday-drive', 14, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(126, '545-tracey-drive', 15, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:15', '2022-01-19 07:36:15'),
(127, '2318-camryns-crossing', 16, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:16', '2022-01-19 07:36:16'),
(128, '1025-west-19th-street', 17, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-01-19 07:36:16', '2022-01-19 07:36:16'),
(129, 'kathmandu', 1, 'Botble\\Location\\Models\\City', 'city', '2022-02-12 14:24:14', '2022-02-12 14:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(75, 'Bagmati', NULL, 4, 0, 0, 'published', '2022-02-12 12:49:39', '2022-02-12 12:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `states_backup`
--

CREATE TABLE `states_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states_translations`
--

INSERT INTO `states_translations` (`lang_code`, `states_id`, `name`, `abbreviation`) VALUES
('ne_NP', 75, 'Bagmati', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 07:35:57', '2022-01-19 07:35:57'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 07:35:57', '2022-01-19 07:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`lang_code`, `tags_id`, `name`, `description`) VALUES
('vi', 1, 'Chung', NULL),
('vi', 2, 'Thiết kế', NULL),
('vi', 3, 'Thời trang', NULL),
('vi', 4, 'Thương hiệu', NULL),
('vi', 5, 'Hiện đại', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_translations`
--

CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'admin@nagarikaawash.com', NULL, '$2y$10$nDtKpeE5zvpxxVEFI16qHup0Y06w6XKts07ywBgpXBaF66SwqRMHO', 'rRcAi69V5Ob305ipkIrGt8Bkh47RFXCMAISaQwxT2wh0CF7tTc0OA7G5xJ9w', '2022-01-19 07:35:33', '2022-02-12 11:42:29', 'Nagarik Aawash', 'Admin', 'nagarikaawash', 197, 1, 1, NULL, '2022-02-12 11:41:51', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks_translations`
--
ALTER TABLE `blocks_translations`
  ADD PRIMARY KEY (`lang_code`,`blocks_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `cities_backup`
--
ALTER TABLE `cities_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_backup`
--
ALTER TABLE `countries_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `language_meta_backup`
--
ALTER TABLE `language_meta_backup`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `re_accounts_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_accounts_packages`
--
ALTER TABLE `re_accounts_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_account_activity_logs_account_id_index` (`account_id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `re_account_password_resets_email_index` (`email`),
  ADD KEY `re_account_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_categories_translations`
--
ALTER TABLE `re_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`re_categories_id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_translations`
--
ALTER TABLE `re_facilities_translations`
  ADD PRIMARY KEY (`lang_code`,`re_facilities_id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features_translations`
--
ALTER TABLE `re_features_translations`
  ADD PRIMARY KEY (`lang_code`,`re_features_id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages_translations`
--
ALTER TABLE `re_packages_translations`
  ADD PRIMARY KEY (`lang_code`,`re_packages_id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_properties_type_id_index` (`type_id`);

--
-- Indexes for table `re_properties_translations`
--
ALTER TABLE `re_properties_translations`
  ADD PRIMARY KEY (`lang_code`,`re_properties_id`);

--
-- Indexes for table `re_property_types`
--
ALTER TABLE `re_property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_property_types_translations`
--
ALTER TABLE `re_property_types_translations`
  ADD PRIMARY KEY (`lang_code`,`re_property_types_id`);

--
-- Indexes for table `re_reviews`
--
ALTER TABLE `re_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_reviews_meta`
--
ALTER TABLE `re_reviews_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_reviews_meta_review_id_index` (`review_id`);

--
-- Indexes for table `re_transactions`
--
ALTER TABLE `re_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_backup`
--
ALTER TABLE `states_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD PRIMARY KEY (`lang_code`,`testimonials_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities_backup`
--
ALTER TABLE `cities_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries_backup`
--
ALTER TABLE `countries_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language_meta_backup`
--
ALTER TABLE `language_meta_backup`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `re_accounts_packages`
--
ALTER TABLE `re_accounts_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `re_property_types`
--
ALTER TABLE `re_property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_reviews`
--
ALTER TABLE `re_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_reviews_meta`
--
ALTER TABLE `re_reviews_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `re_transactions`
--
ALTER TABLE `re_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `states_backup`
--
ALTER TABLE `states_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
