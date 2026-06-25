-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2026 at 10:42 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creativedesignbd_ecommerce2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_analytics_settings`
--

CREATE TABLE `ads_analytics_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `access_token` text DEFAULT NULL,
  `ad_account_id` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `app_secret` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `extra_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra_config`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(61, 9, 'public/uploads/banner/17734330641770955015176744200617660708454.png', '#', 1, '2026-03-13 20:17:44', '2026-03-13 20:17:44'),
(62, 9, 'public/uploads/banner/17734330841770955015176744200617660708454.png', '#', 1, '2026-03-13 20:18:04', '2026-03-13 20:18:04'),
(63, 10, 'public/uploads/banner/1773433114177095492517674419631766070753app-2.jpg', '#', 1, '2026-03-13 20:18:34', '2026-03-13 20:18:34'),
(64, 11, 'public/uploads/banner/1773433150177095490417674418701766070615tv.jpg', '#', 1, '2026-03-13 20:19:10', '2026-03-13 20:19:10'),
(65, 6, 'public/uploads/banner/177343319217709548571767441718176607125756_1763462883573-website-slider-desktop-width-1920-pixel-x-height-550-pixel-with-gp-offerjpg.jpg', '#', 1, '2026-03-13 20:19:52', '2026-03-13 20:19:52'),
(66, 6, 'public/uploads/banner/177343320617709548811767441711176607124756_1763461498249-whatsapp-image-2025-11-18-at-32940-pm-1jpeg.jpg', '#', 1, '2026-03-13 20:20:06', '2026-03-13 20:20:06'),
(67, 1, 'public/uploads/banner/177343324917709547741767433914176607004817653416188.jpg', '#', 1, '2026-03-13 20:20:49', '2026-03-13 20:20:49'),
(68, 1, 'public/uploads/banner/1773433261177095483417674415021766070034176534166610.png', '#', 1, '2026-03-13 20:21:01', '2026-03-13 20:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2026-01-21 08:11:36'),
(5, 'Slider Bottom Ads (425X212px)', 1, '2023-11-19 04:36:08', '2026-01-21 08:11:30'),
(6, 'Footer Top Ads', 1, '2023-11-19 05:25:46', '2026-01-21 08:11:25'),
(7, 'Campaign', 1, '2024-07-06 15:42:31', '2026-01-21 08:11:19'),
(8, 'Customer Review', 1, '2024-11-07 10:19:17', '2026-01-21 08:11:12'),
(9, 'Hotdeals Baner', 1, '2025-02-23 09:34:40', '2026-01-21 08:10:58'),
(10, 'Home Ads', 1, '2025-02-23 09:47:22', '2026-01-21 08:10:52'),
(11, 'Home Ads 2', 1, '2025-02-23 09:51:07', '2026-01-21 08:10:27'),
(12, 'home', 1, '2025-11-27 14:03:05', '2026-01-21 08:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `short_description`, `description`, `image`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ব্লুকাট লেন্স চোখের জন্য কতটা উপকারী', 'blukat-lens-cokher-jnz-ktta-upkaree-1765860174', 'ব্লুকাট লেন্স এমন এক বিশেষ ধরনের চশমার লেন্স, এচা ডিজিটাল স্ক্রিন, যেমন মোবাইল, কম্পিউটার, টেলিভিশন এবং ট্যাবলেট থেকে নির্গত নীল আলো (ব্লু লাইট) প্রতিরোধ করতে সাহায্য করে। নীল আলো দৃশ্যমান আলো একটি অংশ।যার তরঙ্গ দৈর্ঘ্য সাধারণত ৩৮০ থেকে ৫০০ ন্যানোমিটারের মধ্যে থাকে। কিন্তু এটা চোখ ও মস্তিষ্কের জন্য আরামদায়ক নয়।বরং নীল আলোর কিছু ক্ষতিকর প্রভাব আছে।', 'ব্লুকাট লেন্স এমন এক বিশেষ ধরনের চশমার লেন্স, এচা ডিজিটাল স্ক্রিন, যেমন মোবাইল, কম্পিউটার, টেলিভিশন এবং ট্যাবলেট থেকে নির্গত নীল আলো (ব্লু লাইট) প্রতিরোধ করতে সাহায্য করে। নীল আলো দৃশ্যমান আলো একটি অংশ।যার তরঙ্গ দৈর্ঘ্য সাধারণত ৩৮০ থেকে ৫০০ ন্যানোমিটারের মধ্যে থাকে। কিন্তু এটা চোখ ও মস্তিষ্কের জন্য আরামদায়ক নয়।বরং নীল আলোর কিছু ক্ষতিকর প্রভাব আছে।\r\n\r\nডিজিটাল ডিভাইস অতিরিক্ত ব্যবহারের ফলে নীল আলো আমাদের চোখে সরাসরি প্রভাব ফেলে। এই আলো দীর্ঘক্ষণ চোখে পড়লে চোখের ক্লান্তি, শুষ্কতা, ও ঝাপসা দেখার সমস্যা হতে পারে। এই আলো মেলাটোনিন নামের হরমোনের ক্ষরণে বাধা দেয়।ফলে ঘুমের জন্য ব্যাঘাত ঘটে।\r\n\r\nগবেষণায় দেখা গেছে, নীল আলো দীর্ঘ সময় ধরে চোখে পড়লে রেটিনার কোষ ক্ষতিগ্রস্ত হতে পারে, যা ভবিষ্যতে দৃষ্টিশক্তি ক্ষতিগ্রস্ত করার আশঙ্কা বাড়ায়।\r\n\r\nব্লুকাট লেন্স এই সমস্যাগুলো প্রতিরোধে সাহায্য করতে পারে।এই লেন্স ডিজিটাল স্ক্রিন থেকে আসা অতিরিক্ত নীল আলো প্রতিরোধ করে চোখকে আরাম দেয়।\r\n\r\nনীল আলোর কারণে রেটিনায় যে ক্ষতি হতে পারে, তা অনেকাংশে রোধ করে ব্লুকাট লেন্স।\r\n\r\nরাতে চোখে নীল আলো কম পড়লে ঘুমের জন্য প্রয়োজনীয় মেলাটোনিন হরমোন সঠিকভাবে কাজ করতে পারে। ব্লুকাট লেন্সের চশমা দেখতে আধুনিক এবং স্টাইলিশ। ফলে তরুণ প্রজন্মের কাছেও এটা জনপ্রিয়।ব্লুকাট লেন্সের অনেক উপকারিতা থাকলেও এটি সবার জন্য আবশ্যক নয়।যদি আপনার কাজ ডিজিটাল স্ক্রিনে বেশি সময় ধরে হয়, তাহলে এটা আপনার জন্য উপকারী। তবে যারা ডিজিটাল স্ক্রিন কম ব্যবহার করেন, তাদের জন্য সাধারণ লেন্সই যথেষ্ট।\r\n\r\nব্লুকাট লেন্সের দাম সাধারণ লেন্সের তুলনায় একটু বেশি। তবে এটি একটি দীর্ঘমেয়াদে আপনার জন্য সাশ্রয়। একটু বেশি দামে হলেও ব্লুকটার লেন্স কিনে ব্যবহার করুন। তাতে চোখের সুরক্ষা অনেকটাই নিশ্চিত হবে এবং চোখের চিকিৎসায় ব্যয় কমে যাবে।\r\n\r\nসূত্র: হাউ ইট ওয়ার্কস', 'uploads/blogs/1765860174.webp', 134, 1, '2025-12-15 17:46:08', '2026-04-01 15:31:07'),
(2, 'কম দামে বড় পর্দার নতুন ফাইভ-জি স্মার্টফোন বাজারে', 'km-dame-br-prdar-ntun-faiv-ji-smartfon-bajare-1765860339', 'দেশের বাজারে শক্তিশালী ব্যাটারিযুক্ত নতুন মডেলের ফাইভ-জি স্মার্টফোন এনেছে টেকনো। ‘স্পার্ক ৪০ ফাইভ–জি’ মডেলের বাজেট–সাশ্রয়ী এই ফোনে ৬ হাজার মিলিঅ্যাম্পিয়ারের ব্যাটারির পাশাপাশি ১৮ ওয়াটের ফাস্ট চার্জিং প্রযুক্তি থাকায় দ্রুত চার্জ করা যায়। ফলে ফোনের চার্জ শেষ হওয়া নিয়ে চিন্তা করতে হয় না। গতকাল শনিবার এক সংবাদ বিজ্ঞপ্তিতে এ তথ্য জানিয়েছে টেকনো বাংলাদেশ।', 'দেশের বাজারে শক্তিশালী ব্যাটারিযুক্ত নতুন মডেলের ফাইভ-জি স্মার্টফোন এনেছে টেকনো। ‘স্পার্ক ৪০ ফাইভ–জি’ মডেলের বাজেট–সাশ্রয়ী এই ফোনে ৬ হাজার মিলিঅ্যাম্পিয়ারের ব্যাটারির পাশাপাশি ১৮ ওয়াটের ফাস্ট চার্জিং প্রযুক্তি থাকায় দ্রুত চার্জ করা যায়। ফলে ফোনের চার্জ শেষ হওয়া নিয়ে চিন্তা করতে হয় না। গতকাল শনিবার এক সংবাদ বিজ্ঞপ্তিতে এ তথ্য জানিয়েছে টেকনো বাংলাদেশ। \r\n\r\nসংবাদ বিজ্ঞপ্তিতে বলা হয়েছে, ৬.৭৫ ইঞ্চি এইচডি প্লাস পর্দার ফোনটিতে ৪ গিগাবাইট র‍্যাম রয়েছে, যা ৮ গিগাবাইট পর্যন্ত বাড়ানো যায়। ১২৮ গিগাবাইট ধারণক্ষমতার ফোনটিতে মিডিয়াটেক ডায়মেনসিটি ৬৪০০ ফাইভ–জি প্লাস প্রসেসর থাকায় একসঙ্গে একাধিক কাজ দ্রুত করা যায়। ফোনটির পর্দার রিফ্রেশ রেট ১২০ হার্টজ হওয়ায় পর্দায় উন্নত রেজল্যুশনের ছবি ও ভিডিও দেখা যায়। \r\nএ ছাড়া আইপি৬৪ রেটিংযুক্ত ওয়াটার অ্যান্ড ডাস্ট রেজিস্ট্যান্স–সুবিধা থাকায় ফোনটি পানিতে নষ্ট হয় না। এমনকি ধুলাও জমে না। ফোনটিতে টেকনোর ভয়েস অ্যাসিস্ট্যান্ট ‘আস্ক এলা’ যুক্ত থাকায় মুখের কথায় বিভিন্ন কাজ করা যায়। \r\nফোনটির পেছনে ফ্ল্যাশযুক্ত ৫০ মেগাপিক্সেলের ক্যামেরা রয়েছে। সেলফি তোলার জন্য রয়েছে ৫ মেগাপিক্সেলের ক্যামেরা। ফলে কম আলোতে ভালো মানের ছবি তোলা যায়। ডিটিএস সাউন্ড সিস্টেম ও আইআর রিমোট কন্ট্রোল সুবিধার ফোনটি দিয়ে বিভিন্ন ইলেকট্রনিক যন্ত্রও নিয়ন্ত্রণ করা সম্ভব। স্বয়ংক্রিয়ভাবে বার্তা লেখা, অনুবাদ ও অনলাইনে তথ্য খোঁজার জন্য ফোনটিতে রয়েছে এআই রাইটিং, এআই সার্চ ও এআই ট্রান্সলেট টুল। \r\nএআই প্রযুক্তি কাজে লাগিয়ে স্বয়ংক্রিয়ভাবে ছবি ও ভিডিও সম্পাদনা করতে সক্ষম ফোনটির দাম ধরা হয়েছে ১৬ হাজার ৯৯৯ টাকা (ভ্যাট ছাড়া)।', 'uploads/blogs/1765860339.jpg', 130, 1, '2025-12-15 18:21:03', '2026-04-01 15:30:46'),
(6, 'iPhone 17 Pro Max: স্টোরেজের সাথে দামও বাড়তে পারে', 'iphone-17-pro-max-storejer-sathe-damoo-barte-pare-1770882457', 'অ্যাপল আইফোন ১৭ সিরিজের দাম নিয়ে নতুন তথ্য ফাঁস হয়েছে। সেপ্টেম্বর ৯-এ ‘অ্যা-ড্রপিং’ ইভেন্টে এই ফোন উন্মোচনের কথা রয়েছে। আইফোন ১৭ প্রো মডেলের দাম কিছুটা বাড়তে পারে, তবে বেস স্টোরেজও বাড়বে।জেপি মরগ্যানের একটি রিসার্চ নোট অনুসারে এই তথ্য জানা গেছে।', '<p><span style=\"color: rgb(29, 29, 31); font-family: Roboto, sans-serif;\">অ্যাপল আইফোন ১৭ সিরিজের দাম নিয়ে নতুন তথ্য ফাঁস হয়েছে। সেপ্টেম্বর ৯-এ ‘অ্যা-ড্রপিং’ ইভেন্টে এই ফোন উন্মোচনের কথা রয়েছে। আইফোন ১৭ প্রো মডেলের দাম কিছুটা বাড়তে পারে, তবে বেস স্টোরেজও বাড়বে।জেপি মরগ্যানের একটি রিসার্চ নোট অনুসারে এই তথ্য জানা গেছে। আইফোন ১৭ প্রো-এর ১২৮জিবি ভেরিয়েন্ট বন্ধ করে ২৫৬জিবি দিয়ে শুরু হবে। এটি দাম বাড়ার মূল কারণ। আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড। আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড। আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড।আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড।</span></p>', 'uploads/blogs/1770882457.jpg', 40, 1, '2026-02-12 07:47:37', '2026-04-01 15:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(18, 'RFL', 'rfl', 'public/uploads/brand/1763623615-rfl-logo-png_seeklogo-250040.webp', 1, '2025-11-20 07:26:55', '2025-11-20 07:26:55'),
(19, 'Samsung', 'lotus-herbal', 'public/uploads/brand/1765817698-images.webp', 1, '2025-12-11 11:29:24', '2025-12-15 16:54:58'),
(20, 'LG', 'lg', 'public/uploads/brand/1765817784-lg_symbol.svg.webp', 1, '2025-12-15 16:56:25', '2025-12-15 16:56:25'),
(21, 'Apple', 'apple', 'public/uploads/brand/1765817842-apple_logo_grey.svg.webp', 1, '2025-12-15 16:57:22', '2025-12-15 16:57:22'),
(22, 'Symphony', 'symphony', 'public/uploads/brand/1765817905-symphony_logo.webp', 1, '2025-12-15 16:58:25', '2025-12-15 16:58:25'),
(23, 'Pran', 'pran', 'public/uploads/brand/1765817987-screenshot_1.webp', 1, '2025-12-15 16:59:47', '2025-12-15 16:59:47'),
(24, 'Meril', 'meril', 'public/uploads/brand/1765818120-89d3708ca6d1c9581bdb42f378fefe0b92.png', 1, '2025-12-15 17:02:00', '2025-12-15 17:02:00'),
(25, 'Gigabyte', 'gigabyte', 'public/uploads/brand/1765818173-gigabyte-logo.webp', 1, '2025-12-15 17:02:55', '2025-12-15 17:02:55'),
(26, 'Walton', 'walton', 'public/uploads/brand/1765818240-walton_group_logo.webp', 1, '2025-12-15 17:04:00', '2025-12-15 17:04:00'),
(27, 'Teer', 'teer', 'public/uploads/brand/1765818411-2021-12-13-61b6e83dd4cf0.webp', 1, '2025-12-15 17:06:51', '2025-12-15 17:06:51'),
(28, 'Jiver Sadh', 'jiver-sadh', 'public/uploads/brand/1765818574-fa6e45217130135.y3jvccwymtawlde2ndismcwymjg.webp', 1, '2025-12-15 17:09:34', '2025-12-15 17:09:34'),
(29, '7 UP', '7-up', 'public/uploads/brand/1765818630-7up-logo-2010-768x432-2.webp', 1, '2025-12-15 17:10:30', '2025-12-15 17:10:30'),
(30, 'Konka', 'konka', 'public/uploads/brand/1766001728-konka-logo-png_seeklogo-350032.webp', 1, '2025-12-17 20:02:08', '2025-12-17 20:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `banner_title` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` datetime DEFAULT current_timestamp(),
  `top_title_1` varchar(255) DEFAULT 'হোম ডেলিভারি ফ্রি',
  `top_title_2` varchar(255) DEFAULT '৩ দিনের জন্য প্রযোজ্য',
  `heading_1` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `feature_1` varchar(255) DEFAULT '১০০% কালার গ্যারান্টি',
  `feature_2` varchar(255) DEFAULT '১০০% কোয়ালিটিফুল',
  `heading_2` varchar(255) DEFAULT 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা',
  `heading_3` varchar(255) DEFAULT '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”',
  `heading_4` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `note` varchar(255) DEFAULT 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।',
  `billing_details` varchar(255) DEFAULT 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `banner_title`, `video`, `banner`, `slug`, `short_description`, `description`, `review`, `product_id`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`, `deadline`, `top_title_1`, `top_title_2`, `heading_1`, `feature_1`, `feature_2`, `heading_2`, `heading_3`, `heading_4`, `note`, `billing_details`) VALUES
(17, 'ইরানি খাটি চাকের মধু', '78888888888888', 'sSdTLLtpPRE', 'public/uploads/campaign/1773038223-screenshot_1.png', 'irani-khati-caker-mdhu', '<p>khjjjjjjjjjjjj</p>', '<p>jhkkkkkkkkkk</p>', '5', 180, 'public/uploads/campaign/1773030072-screenshot_1.webp', 'public/uploads/campaign/1773030073-screenshot_1.webp', 'public/uploads/campaign/1773030073-screenshot_1.webp', '1', '2026-03-09 04:21:13', '2026-03-09 06:37:03', '2027-03-09 10:23:18', '78787878787878787878787878', '৩ দিনের জন্য প্রযোজ্য', '4555555555555555555555555', '১০০% কালার গ্যারান্টি', '১০০% কোয়ালিটিফুল', 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা', '54444444444444', '4555555555555', '455555555555555', '7555555555555');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_product`
--

CREATE TABLE `campaign_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_product`
--

INSERT INTO `campaign_product` (`id`, `campaign_id`, `product_id`, `created_at`, `updated_at`) VALUES
(18, 13, 184, NULL, NULL),
(19, 13, 185, NULL, NULL),
(20, 13, 186, NULL, NULL),
(21, 13, 183, NULL, NULL),
(22, 25, 181, NULL, NULL),
(23, 25, 183, NULL, NULL),
(24, 17, 181, NULL, NULL),
(25, 17, 183, NULL, NULL),
(26, 17, 184, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_reviews`
--

INSERT INTO `campaign_reviews` (`id`, `image`, `campaign_id`, `created_at`, `updated_at`) VALUES
(23, 'public/uploads/campaign/1736442274-2024-07-16-6696757bd2081.jpg', 13, '2025-01-10 07:04:34', '2025-01-10 07:04:34'),
(24, 'public/uploads/campaign/1745390545-ghee2.jpg', 16, '2025-04-23 06:42:25', '2025-04-23 06:42:25'),
(25, 'public/uploads/campaign/1761911162-492402168_1227969512667315_4207845130642128120_n.jpg', 17, '2025-10-31 11:46:02', '2025-10-31 11:46:02'),
(26, 'public/uploads/campaign/1763476953-2.jpg', 18, '2025-11-18 14:42:33', '2025-11-18 14:42:33'),
(27, 'public/uploads/campaign/1764604947-fa9b72660bb97b6fcf19d87b3976f862.jpg', 19, '2025-12-01 16:02:27', '2025-12-01 16:02:27'),
(28, 'public/uploads/campaign/1773030073-screenshot_1.png', 17, '2026-03-09 04:21:13', '2026-03-09 04:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `icon` varchar(255) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `icon`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`, `meta_keyword`) VALUES
(19, 0, 'TV & Monitor', 'tv-&-monitor', 'public/uploads/category/1773432503-1770953958-1767432776-pngtree-smart-android-tv-png-image_16548885.webp', 'public/uploads/category/1773432508-icon-1770953963-icon-1767432780-icon-60416.webp', NULL, NULL, 1, 1, '2025-10-03 13:35:21', '2026-03-13 20:08:28', NULL),
(20, 0, 'Fridege & AC', 'fridege-&-ac', 'public/uploads/category/1773432542-1770954010-1767432955-pngtree-air-conditioner-png-png-image_13328969.webp', 'public/uploads/category/1773432543-icon-1770954011-icon-1767432956-icon-810203.webp', NULL, NULL, 1, 1, '2025-10-03 13:35:50', '2026-03-13 20:09:03', NULL),
(21, 0, 'Laptop & Desktop', 'laptop-&-desktop', 'public/uploads/category/1773432586-1770954056-1767433978-1766067445-1764938707-1762889017-1760731045-1740307427-gaming-computer-png-image.webp', 'public/uploads/category/1773432586-icon-1770954057-icon-1767433171-icon-tv.webp', 'Beauty', NULL, 0, 1, '2025-10-03 13:39:36', '2026-03-13 20:39:58', NULL),
(22, 0, 'Airbuds Items', 'airbuds-items', 'public/uploads/category/1773432629-1770954090-1767433405-pngtree-effortless-elegance-elevating-your-audio-experience-with-black-wireless-earbuds-sets-png-image_12597748.webp', 'public/uploads/category/1773432629-icon-1770954090-icon-1767433405-icon-airbuds-gmqq1oyor1npn4d1lrbgpe.webp', NULL, NULL, 0, 1, '2025-10-03 13:40:26', '2026-03-13 20:10:29', NULL),
(23, 0, 'Android Mobile', 'android-mobile', 'public/uploads/category/1773432669-1770954123-1767433567-pngtree-latest-model-mobile-phone-png-image_18745332.webp', 'public/uploads/category/1773432673-icon-1770954126-icon-1767433570-icon-pngtree-android-mobile-frame-vector-png-image_11738345.webp', NULL, NULL, 1, 1, '2025-10-03 13:40:53', '2026-03-13 20:11:13', NULL),
(24, 0, 'Smart Watch', 'smart-watch', 'public/uploads/category/1773432713-1770954176-1767433704-pngtree-smart-watch-png-image_18808764.webp', 'public/uploads/category/1773432717-icon-1770954179-icon-1767433708-icon-1764786836-icon-617654.webp', NULL, NULL, 0, 1, '2025-10-03 13:41:37', '2026-03-13 20:11:57', NULL),
(25, 0, 'Power bank', 'power-bank', 'public/uploads/category/1773432765-1770954302-1767433864-pb436_blue_01.webp', 'public/uploads/category/1773432765-icon-1770954302-icon-1767433865-icon-2533396.webp', NULL, NULL, 0, 1, '2025-10-03 13:42:28', '2026-03-13 20:12:46', NULL),
(26, 0, 'Air Coller', 'air-coller', 'public/uploads/category/1773432810-1770954367-1767434092-pngtree-air-cooler-model-png-image_18746967.webp', 'public/uploads/category/1773432814-icon-1770954370-icon-1767434096-icon-1670673.webp', NULL, NULL, 0, 1, '2025-10-03 13:42:58', '2026-03-13 20:13:34', NULL),
(27, 0, 'Air Coller', 'air-coller', 'public/uploads/category/1773432831-1770954367-1767434092-pngtree-air-cooler-model-png-image_18746967.webp', 'public/uploads/category/1773432836-icon-1770954370-icon-1767434096-icon-1670673.webp', NULL, NULL, 0, 1, '2025-10-03 13:43:19', '2026-03-13 20:13:56', NULL),
(36, 0, 'Washing Machine', 'washing-machine', 'public/uploads/category/1773432875-1770954433-1767434202-pngtree-modern-white-washing-machine-on-a-transparent-background-isolated-png-image_20269437.webp', 'public/uploads/category/1773432879-icon-1770954437-icon-1767434206-icon-3238630.webp', NULL, NULL, 0, 1, '2025-12-03 17:14:55', '2026-03-13 20:22:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `childcategoryName`, `slug`, `subcategory_id`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(153, 'TV Adaptor', 'tv-adaptor', 61, NULL, NULL, 1, '2025-11-18 17:34:05', '2025-11-18 17:34:05'),
(154, 'Shirt', 'shirt', 61, NULL, NULL, 1, '2025-11-20 07:32:02', '2026-01-21 15:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2025-10-06 08:09:37'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#ffffff', '1', '2023-11-03 06:18:44', '2023-11-03 06:18:52'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2025-12-16 05:04:34'),
(74, 'Off White', '#f5f5f5', '1', '2024-11-10 04:46:40', '2024-11-10 04:46:40'),
(75, 'Golden Black', '#d9811c', '1', '2025-11-20 07:27:26', '2025-11-28 04:39:40'),
(76, 'Black Golden', '#a20707', '1', '2025-11-28 04:40:00', '2025-11-28 04:40:00'),
(77, 'Nayeem Golden', '#dfb234', '1', '2025-11-28 04:40:31', '2025-11-28 04:40:31'),
(78, 'Titanium Silver', '#68cfe8', '1', '2025-12-15 07:18:58', '2025-12-15 07:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `status` enum('pending','processing','resolved') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `whatsapp` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `whatsapp`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '01849832178', 'info@creativedesign.com.bd', '01849832178', '01849832178', 'info@creativedesign.com.bd', 'House: Munshi Bari,Beside Nayar Hat High School,Borobari,Lalmonir Hat', '#', 1, '2023-01-22 10:35:29', '2025-12-18 11:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Unread, 1=Read',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `full_name`, `mobile`, `email`, `subject`, `details`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Roki ahamedkhd', '01623984965', 'rokiahamed192@gmail.com', 'apnader product koto', 'hi isr', 0, '2026-02-14 06:49:24', '2026-02-14 06:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('flat','percent') NOT NULL DEFAULT 'flat',
  `value` decimal(10,2) NOT NULL,
  `min_purchase` decimal(10,2) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `min_purchase`, `valid_from`, `valid_to`, `status`, `created_at`, `updated_at`) VALUES
(3, 'codedell', 'flat', 1000.00, 1.00, '2025-11-11', '2025-11-22', 1, '2025-11-16 16:39:14', '2025-11-16 16:40:16'),
(4, '0010', 'percent', 6.00, NULL, NULL, NULL, 1, '2025-11-18 12:51:24', '2025-11-18 12:51:24'),
(5, '৫০%Off', 'percent', 100.00, 200.00, '2025-11-19', '2025-11-19', 1, '2025-11-19 03:50:32', '2025-11-19 03:50:32'),
(6, '545454', 'percent', 5.00, 50.00, '2025-11-19', '2025-12-25', 1, '2025-11-20 07:35:04', '2025-12-09 07:42:52'),
(7, 'OKGOOD', 'flat', 50.00, NULL, '2025-12-11', '2025-12-12', 1, '2025-12-11 03:08:25', '2025-12-11 03:08:25'),
(8, '23553812781', 'flat', 10.00, 30.00, '2025-12-17', '2027-03-10', 1, '2025-12-17 16:03:10', '2026-02-12 06:00:20'),
(9, 'Boss', 'percent', 100.00, 20.00, '2025-12-18', '2026-05-01', 1, '2025-12-18 15:22:25', '2026-02-12 06:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `webhook_url` varchar(255) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `client_id`, `client_secret`, `username`, `password`, `url`, `token`, `webhook_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', 'foaixka4f013nviz3ldrv0ofekpmd9dq', '0tcsft2ua7i7whuov7kceozz', NULL, NULL, NULL, NULL, 'https://portal.packzy.com/api/v1/create_order', 'asdfdsfdsafdsf', NULL, '1', '2024-02-06 11:29:46', '2026-01-26 17:42:27'),
(2, 'pathao', '', '', '9wdLZvwajP', 'W7zvvVNdVbU9vAlmrFk83EnbogvT7jplcfRaBnoC', 'creativedesign.com.bd@gmail.com', 'RAshid7575@$#bd', 'https://api-hermes.pathao.com/aladdin', 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIyOTE2NjUiLCJhdWQiOlsiOTk2NiJdLCJleHAiOjE3NzcyMjYxODUsIm5iZiI6MTc2OTQ1MDE4NSwiaWF0IjoxNzY5NDUwMTg1LCJqdGkiOiJlYTNkODkyMmFkZjM1Y2FiZWUwYzA5ZmVhYTYwNDAzNGFjMjNiN2QwMGIyZmNhYzIwMjcxMWJiMGRjZDhhNWI4IiwibWVyY2hhbnRfaWQiOiJHUmI0UlJCVmVCIiwic2NvcGVzIjpbXX0.Dp3uGyVtDCSyu3z2_9zOf4xEoS7OhhSeXxTTbCxrKGujiQL_mURVyxis7f2AZXXx95qIblj3NGseTXT31Ca5oIFPOzzDjn7H1Wy5GMkOrSAH5AzCGW2DIWr3PI_GBsFbVSGtlyPSecZIjNH9ZnoUnsPx7d8BHCkJqNDV6fCRCez_lHEecT-VhYJyJtXYNyWeHgcJVWnUgZNpJH_xEvf7ywXgpWMJsnkL_wOjaWaiAR9X919q5y2IjYVmXdvvJRBz2-tfAshDXCVMmGEEF6zlRV_ASm5eCVnPOkpHmdPFCpPXMEadpBdtKg6HM30wmpK-XrdN3pIyg6g_j6r-ysbp2mclcEJjGLL5iBPzVvLEv65y3-t6yOSDaZwMn8MjD0IgKVlNpCiZfEt_KY5eGhgnUkOFESVqu3WXaB_pwdktGao8e3zxPX9LlV3aPS2IjdnsMZEAGpcPm8jXLB1OCmwHsrLNXWYGE7zGPv3UjbU1NTBVApM5jFIDFkiSlqrTa4L-uwV6aT1Kz9RNnGKR8HRzy8qSUEWKgy_hHl8hCSNqyszvZ2IJbSqiDUXSvapjqzH_yWsJDDxFuS0BvB92bBzTBnCWInGxztFlP9ZqlJ0YQPAxF3q6YRVndj4r_gf3Oq4zD3cujzVfOUrYmI6V0Q18yDc1neLc4uTh-5wWKOuibkM', NULL, '1', '2024-02-06 11:29:46', '2026-01-26 17:56:25'),
(3, 'redx', NULL, NULL, NULL, NULL, NULL, NULL, 'https://openapi.redx.com.bd/v1.0.0-beta', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMDM2MTY1IiwiaWF0IjoxNzcwNjM3NjY3LCJpc3MiOiJqOHVqOGdaMjNCTFBnZnNCNzFNUnh2bTh6aGhlZjk5RyIsInNob3BfaWQiOjEwMzYxNjUsInVzZXJfaWQiOjEwNzg1Mzg5fQ.Y4IEZbeVMaC8cYdxodM3duMSvyyDlGgJSmfemf1Uhgk', 'http://localhost/api/redx/webhook', '1', '2026-02-09 11:26:09', '2026-02-09 11:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Order procedure', 'order-procedure', 'Order procedure', 'Elite Design', 1, '2023-10-04 07:02:30', '2025-12-12 12:51:46'),
(3, 'Delivery Rules', 'delivery-rules', 'Delivery Rules', '<p>Elite Design</p>', 1, '2023-10-04 07:03:00', '2025-01-10 02:57:30'),
(5, 'Return Policy', 'return-policy', 'Return Policy', 'Elite Design', 1, '2023-10-04 07:03:42', '2025-12-12 12:51:42'),
(9, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', '<p>Privacy Policy</p>', 1, '2025-12-12 12:54:35', '2025-12-12 12:54:35'),
(10, 'Terms & Conditions', 'terms-&-conditions', 'Terms & Conditions', '<p>Terms &amp; Conditions</p>', 1, '2025-12-12 12:55:23', '2025-12-12 12:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `cron_job_settings`
--

CREATE TABLE `cron_job_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_key` varchar(80) NOT NULL,
  `job_title` varchar(150) NOT NULL,
  `job_description` text DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `frequency_minutes` smallint(5) UNSIGNED NOT NULL DEFAULT 10,
  `order_limit` smallint(5) UNSIGNED NOT NULL DEFAULT 50,
  `last_run_at` timestamp NULL DEFAULT NULL,
  `last_run_status` varchar(20) DEFAULT NULL,
  `last_run_result` text DEFAULT NULL,
  `last_updated_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_failed_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_job_settings`
--

INSERT INTO `cron_job_settings` (`id`, `job_key`, `job_title`, `job_description`, `is_enabled`, `frequency_minutes`, `order_limit`, `last_run_at`, `last_run_status`, `last_run_result`, `last_updated_count`, `last_failed_count`, `created_at`, `updated_at`) VALUES
(1, 'courier_status_sync', 'কুরিয়ার স্ট্যাটাস সিঙ্ক', 'Pathao, Steadfast ও RedX কুরিয়ার থেকে অর্ডার স্ট্যাটাস স্বয়ংক্রিয়ভাবে আপডেট করে।', 1, 10, 50, NULL, NULL, NULL, 0, 0, '2026-03-09 11:24:07', '2026-03-09 11:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(286, 'Jononi Madical Hall', 'jononi-madical-hall-1', '01775457008', 'info@talentsedu2.com', 'Dhaka', 15, 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 1, '7003', 'public/uploads/customer/1769582411-imagesjfif', '$2y$10$5hlt7h29YFZ8zm..vJfd7ug3gY4TmXUVamzgYHEte1X63GX95AwwO', NULL, 'active', '2025-11-28 18:31:21', '2026-01-28 07:17:15'),
(287, 'Demo', 'Demo', '01716535565', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$N5HJYVpdamz9x4BPgVMCXecthtrUsvN8SW11m9bngzb2v.fqvHCai', NULL, 'active', '2025-11-29 06:09:56', '2025-11-29 06:09:56'),
(288, 'MONIRA AKTER', 'monira-akter', '01837363637', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9yqPJVTXXwqncMYoSZxOP.pLKChMwnaJkKn8tGylaTbDN17JoMsFW', NULL, 'active', '2025-11-29 14:36:07', '2025-11-29 14:36:07'),
(289, 'MONIRA AKTER', 'monira-akter', '01826536372', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5V4R1yXwFlhRKBvADTMpeOT9k/69VFFz1H.FPCqQMIOueXYNOcuja', NULL, 'active', '2025-11-29 14:37:06', '2025-11-29 14:37:06'),
(290, 'MONIRA AKTER', 'monira-akter-1602', '01', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HLUoUs8Uq1jn6IZUAXlk5eLkPpQkKn5kIoSHRWS5XamvMLoER1eIy', NULL, 'active', '2025-11-29 14:40:23', '2025-11-29 14:40:23'),
(291, 'Rifat Islam', 'rifat-islam', '01608572489', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pkE2O3djxFS2cHGFfklFRerUvpKzg9hlIC622nAXL6VOUpljOwmXu', NULL, 'active', '2025-11-29 16:55:05', '2025-11-29 16:55:05'),
(292, 'International Academy For Talents School', 'international-academy-for-talents-school', '01896314508', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Yl1DFUo2vflA2s.HzQ5LfeoiZE2rZ2Lv.6x.l0MBoDaexYWfW5nbC', NULL, 'active', '2025-11-29 19:11:56', '2025-11-29 19:11:56'),
(293, 'Md Fazle Rabbi', 'Md Fazle Rabbi', '01332373527', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z8jh5lN1YFzyhsUNe0Zr8O4Hy2rW23DO2qVa4IBYSOzOtMwE2NDMa', NULL, 'active', '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(294, 'Test', 'test', '01711223344', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2k85HnwudOj0ANR6AsU9zeV5oXumT759/iOoXHnDZo/BgMiPl0AXO', NULL, 'active', '2025-11-30 11:54:03', '2025-11-30 11:54:03'),
(296, 'Rihan Mahamud', 'rihan-mahamud', '01922737378', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bBTrPGXE5Nx9Zzd8PxPKUe/xfs1UJsKTaR4TZaRhGE/ezco5jWo7G', NULL, 'active', '2025-11-30 17:51:40', '2025-11-30 17:51:40'),
(297, 'HriDoY MahaDi', 'HriDoY MahaDi', '01857568287', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vA9uoFoL.YxKwSriYQ587.UiSHmjdwZaJj10hX8Te.ZgCA.XZeBla', NULL, 'active', '2025-11-30 19:13:45', '2025-11-30 19:13:45'),
(298, 'Trial', 'trial', '01712345678', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nWx1MqSP4Pps5HSIJa1CNuvnZNk1MP6nsTVe1DUFfvQ4bZWmr2KKe', NULL, 'active', '2025-12-01 04:03:56', '2025-12-01 04:03:56'),
(299, 'MD NAyeem', 'md-nayeem', '01907797147', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$n/NJW/U1E./sZytGVqRpIezWcdVxp5hnDnWrxw4CvXXV..c1A5x5q', NULL, 'active', '2025-12-01 06:44:24', '2025-12-01 06:44:24'),
(300, 'Trial', 'trial-7144', '017123', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XIC7XNhtZ4QFSBhfGmSz1O164mifEs7aEheQbJ4cVehBfAB9v7JnS', NULL, 'active', '2025-12-01 06:46:54', '2025-12-01 06:46:54'),
(301, 'Alex Johnson', 'alex-johnson', '06051946238', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uWXsZdGfZ2VEyjB/CzrDXODAdCitUxUvoXwn.YghJnFVMLpn71LZW', NULL, 'active', '2025-12-01 11:24:15', '2025-12-01 11:24:15'),
(302, 'Jahangir Alam', 'jahangir-alam', '01674082566', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B.AKFlgGM9rSNWDxIYqHZ.57FraDHHvQEYwigl5E898hfMNqz.y46', NULL, 'active', '2025-12-01 14:51:51', '2025-12-01 14:51:51'),
(303, 'Ummah Islamic Institute', 'ummah-islamic-institute', '01782295954', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$VqZwQzt5/6nN3zWVJa.tzecr7vkQkOP/zUaB/d97gCb/oMsaG7MKG', NULL, 'active', '2025-12-03 10:53:06', '2025-12-03 10:53:06'),
(304, 'Md Abu kalam', 'md-abu-kalam', '01977667849', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4OBBj/Yv3Jb8Af/J8mMWEuyVVS9l5DHXG4rB9GeeuLtgeUvU3y.E.', NULL, 'active', '2025-12-04 12:30:32', '2025-12-04 12:30:32'),
(305, 'sixdeveloper', 'sixdeveloper', '01780418641', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Dol.lLbltO09KYOO2TkT9OZO5MFJ5bYVO2nVAeiv6j3ocr0AHg0rC', NULL, 'active', '2025-12-04 16:40:12', '2025-12-04 16:40:12'),
(306, 'Redwan Ahmed', 'redwan-ahmed', '01327949940', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sF.61D/QiovZAvnMbL.TjOMwtNXW37YY8m0ayrj1K9pf.rVmUPdxa', NULL, 'inactive', '2025-12-04 23:37:10', '2025-12-23 15:41:51'),
(307, 'Engineering Lab', 'engineering-lab', '01796825863', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3ggtbJlB.Yfi7zlnB0s.SeMzgUsWCEmKh7naYq1m1mxjgKcqtNRKi', NULL, 'active', '2025-12-04 23:37:39', '2025-12-04 23:37:39'),
(308, 'Jakir Hosain', 'jakir-hosain', '01403130512', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9Xzxg9R2w.8QqhW6qW7jsOmSnOuE6RjShTwwuiTEUJ.kpY80tD7Km', NULL, 'active', '2025-12-04 23:38:42', '2025-12-04 23:38:42'),
(309, 'Jononi Madical Hall', 'jononi-madical-hall-1283', '01915711407', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4qIeoQjn7J1mnO09jHPIB.Y92FPU/c7ya3v3Q.0lFeEtZ69049GVi', NULL, 'active', '2025-12-05 05:49:03', '2025-12-05 05:49:03'),
(310, 'kjhh', 'kjhh', '01264555858', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H/wMwyE5Fxmo5VoqAqwtVua6tWZ0XStBgeoJ1C1M4U9fh/91FpIxW', NULL, 'active', '2025-12-05 12:51:10', '2025-12-05 12:51:10'),
(311, 'hafizur', 'hafizur', '01689102055', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yRyE1jfLGsdcImFOv8XyAukE1WkYw63rNNmDYay3dgk45CIpjH2.K', NULL, 'active', '2025-12-05 14:36:05', '2025-12-05 14:36:05'),
(312, 'md shohidul islam', 'md-shohidul-islam', '01938282000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$i2EL1gNBRbRaoMlmGbcPj.JM2OkTNz4OGmZsV011od8kcSwFkJIfO', NULL, 'active', '2025-12-05 15:29:51', '2025-12-05 15:29:51'),
(313, 'Manik Mahmud', 'manik-mahmud', '01407679839', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$v24KvIp8JwJrnrJ7LIPzFe6J/megBWm4UJ5TP8a0Inscdv40j4FYi', NULL, 'active', '2025-12-05 17:05:40', '2025-12-05 17:05:40'),
(314, 'Karul', 'Karul', '01975198438', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hC91fRSVm2tt/KQJu9UV3eW3qBVI5oIkyr59xJQy8lRIXbkGOQ0Aq', NULL, 'active', '2025-12-05 17:37:46', '2025-12-05 17:37:46'),
(315, 'Md Mirajul Islam', 'md-mirajul-islam-6538', '01996811842', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FlPI1MrY/PCnlufNcz7E5.d9lgKOsn2hBWi9ScoIzFlPO2zZjYusO', NULL, 'active', '2025-12-05 20:28:07', '2025-12-05 20:28:07'),
(316, 'MD ALIASGUR', 'md-aliasgur', '01830107179', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zriHXNxRzL7L..yIubm.Q.tU0/shIcDQYxpwiZDyZpNBHIUjJ0eu2', NULL, 'active', '2025-12-06 07:09:42', '2025-12-06 07:09:42'),
(317, 'Elite Design', 'elite-design', '01614628005', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$amaWjU3oIEQqT/A9lMBIa.ehAOCuAXI/0d7tMPXtk9i64bNwJQkb.', NULL, 'active', '2025-12-06 07:29:04', '2025-12-06 07:29:04'),
(318, 'Hrittik', 'hrittik', '01816547642', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8UnbT9i/qiOwzRSLqCNZnu1o3Lj6NebYvtr1/TTOkIxtuMSZv5BGG', NULL, 'active', '2025-12-06 09:37:35', '2025-12-06 09:37:35'),
(319, 'MD RUBEL MIA', 'MD RUBEL MIA', '01728666634', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NK8ncqUPSbidXNAxCfodXuN2YPZt8NXJOK82LsIfcoXRuhxjN4ZvW', NULL, 'active', '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(320, 'MD SABBIR AHAMMED SHAON', 'MD SABBIR AHAMMED SHAON', '01400881103', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$o6s5DItkmtS.R4iFL/3Yf.6N7TsfoEfGjy/SyQmifACZadT/ylk8.', NULL, 'active', '2025-12-06 12:32:52', '2025-12-06 12:32:52'),
(321, 'Asif', 'asif', '01325896025', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mx5mTo0t1QOsAKGWTbkuR.X71FoD3VnuR8U0a1ChZygyB7QC4.EH2', NULL, 'active', '2025-12-07 09:20:17', '2025-12-07 09:20:17'),
(322, 'Roni patwary', 'roni-patwary', '01854958294', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qyyecORi3Zf/U0cRUUaZIuSOTm1pzMsYOx7f3WBZCnYQtAG.Xt1sW', NULL, 'active', '2025-12-07 15:12:32', '2025-12-07 15:12:32'),
(323, 'Salman', 'salman', '01754203991', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rkOHQjCG7BAZNPFgcJRA.uVHu8YCC8ubqdHC9MRmiBO4Dnb6nERF6', NULL, 'active', '2025-12-07 18:10:58', '2025-12-07 18:10:58'),
(324, 'Salman', 'salman-324', '01847412117', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ce.jcdbcWuBaKmkzQn/ZEeXrA6h6bV.JwQRkV.U1a7e4/W7hEl2lW', NULL, 'active', '2025-12-07 18:21:26', '2025-12-07 18:21:26'),
(325, 'Salman', 'Salman', '01754203921', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ROw0lJ4vjS4LqnFgnmWJq.OtdKFVIZuOmdX3hAim15HPs/bT7UIEy', NULL, 'active', '2025-12-08 18:38:23', '2025-12-08 18:38:23'),
(326, 'SALMAN AHMED', 'SALMAN AHMED', '01741247114', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WUC1.gJT6M3MmAr1yhHioO4NlHrN6cJ9T73Hn25XEikZLyiZFEl1u', NULL, 'active', '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(327, 'Seykot Mia', 'seykot-mia', '01729151544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$W7JSoWNwb4DAYB3ywOae3eO093coP4L3qeBhDiTAR6LidRwuBzTl6', NULL, 'active', '2025-12-09 15:16:52', '2025-12-09 15:16:52'),
(328, 'st tv', 'st-tv', '01935090672', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fBzP.iXut5N6y32tD.5ueuvWrzh3TLElb8G4Swc2ej/YHOb3BeV9S', NULL, 'active', '2025-12-09 17:29:01', '2025-12-09 17:29:01'),
(329, 'Fake', 'fake', '01911111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FwkoV4Q2Vw4FYj4utMYaP.IKHKknM3Hjpoen5TSjhLPssZSKBszhm', NULL, 'active', '2025-12-10 07:24:31', '2025-12-10 07:24:31'),
(330, 'sohag minarul', 'sohag-minarul', '01733199222', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7iyk6mPQrvYQy7CF298x0ukjKysVxBtaq6gP.10P7Xgl/hjXxPJvS', NULL, 'active', '2025-12-10 07:25:06', '2025-12-10 07:25:06'),
(331, 'Shshshhd', 'shshshhd', '01843367191', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$D6KZgxe80tKG.fFMq4B65OzLiGmqH/MJpWMqGO66.aAdW.iJWsCYq', NULL, 'active', '2025-12-10 07:25:38', '2025-12-10 07:25:38'),
(332, 'Abir Group', 'abir-group', '01506760729', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uFHkujlZOIyvvU.334g5NO2ocsyEBEyE049KSPWIgs/9MNL6ED.4C', NULL, 'active', '2025-12-10 08:08:46', '2025-12-10 08:08:46'),
(333, 'farabi', 'farabi-333', '01923323339', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Heb65HMXN1oTPbOD8XoJFO5P2z00BOpPqh1r2KVGaeSRUj486zlsu', NULL, 'active', '2025-12-10 08:11:47', '2025-12-10 08:11:47'),
(334, 'Abdulahad1', 'abdulahad1', '01883709761', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$m7IIBTpCsLd4MzJQb191du/4dij2Z9pkWyfG1XR5rIN9Twdlc2.2m', NULL, 'active', '2025-12-10 08:45:35', '2025-12-10 08:45:35'),
(335, 'MD Saiful Islam', 'md-saiful-islam', '01611369868', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RBoTHrIIOMyteUO7yZoAG.pkOcYvqEWAdsDodJEUn0JWQtHisZKKW', NULL, 'active', '2025-12-10 10:06:47', '2025-12-10 10:06:47'),
(336, 'Hasan', 'hasan', '01700000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I2qSFObPd1aR4LjSsvK8ye.o.JZobixtIDaRD5G4D6Hppx0ypRJxK', NULL, 'active', '2025-12-10 10:28:14', '2025-12-10 10:28:14'),
(337, 'Tff', 'tff', '01666666666', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5jOmpxN2ch9jk0cT/2v30.Mg1Y2LiG93PLzpyrVHoJ/pD4uVKxBcG', NULL, 'active', '2025-12-10 10:42:37', '2025-12-10 10:42:37'),
(338, 'Shuvo Pal', 'shuvo-pal', '01636235525', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NURDBzaydzYAiUDFD.J0P.4jbMqQKcj17Vp0aYx7DsBI1QraO1SN6', NULL, 'active', '2025-12-10 11:51:43', '2025-12-10 11:51:43'),
(339, 'Fff', 'fff', '01312031302', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tPukPQ8DGiZvh6u8hTlqEecQ6esBBVLwnkafMwxXGTpTwnMsfZXie', NULL, 'active', '2025-12-10 12:11:20', '2025-12-10 12:11:20'),
(340, 'gdfhf', 'gdfhf', '01765489632', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cC4MnyIpG087ij2fd9iCXOMYm7Vxg3gX9OKaFjZj7CldJtscZYune', NULL, 'active', '2025-12-10 13:27:23', '2025-12-10 13:27:23'),
(341, 'জয়নাল দিনাজপুর', 'jznal-dinajpur', '01745598060', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Rw31k7mFUCoUkeRL9jNEFeu1t5dDyBdjrsjI/qEpoc/kQZMkBse2u', NULL, 'active', '2025-12-10 13:28:43', '2025-12-10 13:28:43'),
(342, 'athj h.', 'athj-h', '01731535353', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$r9RYdtSUsA3lMWstmk61g.iZ//sDO5q1bkUoWYTIi6BgCKDMYR4F2', NULL, 'active', '2025-12-10 13:51:53', '2025-12-10 13:51:53'),
(343, 'Mahedi', 'mahedi', '01827744456', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qax9O59nCr.rG6ztiQy4hOX/mDFhA.UZrX/n9TCs8jjQgW8/FtHDG', NULL, 'active', '2025-12-10 14:35:38', '2025-12-10 14:35:38'),
(344, 'Jjj', 'jjj', '01776689893', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$SJ2Xk.hEOr2PKX2EDEv3zuJOvhqdIP.e.wRDUGg0zsO8kQz84o/v6', NULL, 'active', '2025-12-10 17:33:36', '2025-12-10 17:33:36'),
(345, 'Test', 'test-345', '01682862358', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$79XGpsMq7WWQfjPCz9N8lOwowHtp68OwnBkYrbyVLkgbdQ4.0PSnm', NULL, 'active', '2025-12-10 17:41:34', '2025-12-10 17:41:34'),
(346, 'Raju', 'raju', '01797328888', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vyrzjuDspjkW.un0HniVtudK9Xc0UL8AccygPR93LaIbdmwvBnrF2', NULL, 'active', '2025-12-10 17:46:27', '2025-12-10 17:46:27'),
(347, 'Md. Yasin', 'Md. Yasin', '01683189893', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/yfAd3SaWmxr.1r2ppfSruGbFXbkvnXZZST8X1Jgo8sHbnCicz4N6', NULL, 'active', '2025-12-10 19:35:51', '2025-12-10 19:35:51'),
(348, 'Md', 'md', '01707796801', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3lDquYfuvv7S3rhpPrUheuSPQEygkDUreYE5I1Hu3kBSLZMivNPoW', NULL, 'active', '2025-12-10 23:29:31', '2025-12-10 23:29:31'),
(351, 'Sabbir Hasan', 'sabbir-hasan', '01777362239', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B202XgDVSG3g0va2Cb2umOjFH6lsO8ECXbC8.xsCt5YWu/UKNAsS6', NULL, 'active', '2025-12-11 03:09:18', '2025-12-11 03:09:18'),
(352, 'Sabbir Hasan', 'sabbir-hasan-352', '01410362239', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oXCsXGXNUCpmk9w..XrYSO9c7J2xz3Bp7vrr.gES6XV/hk2XZzgB.', NULL, 'active', '2025-12-11 03:50:13', '2025-12-11 03:50:13'),
(353, 'ABU RAIHAN', 'ABU RAIHAN', '01856272010', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GR9nx28Lbrwpn6s1sINgo.QhjKxKyHkbbUJ2zUjZPuLGz9D5aUYwG', NULL, 'active', '2025-12-11 04:15:08', '2025-12-11 04:15:08'),
(354, 'ABU RAIHAN', 'ABU RAIHAN', '01726848661', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.bH.QU7G98P7KAK3vzMGZuNt2XeI6qk0HOUTrG4Oxz4gtkCF2mXp.', NULL, 'active', '2025-12-11 04:15:54', '2025-12-11 04:15:54'),
(355, 'md hafiz', 'md hafiz', '017111555444', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jPzLAYKmRJyDMCpCpANtCefjs0hnXU9UuYoKMmZHNEs4NkTO89TnK', NULL, 'active', '2025-12-11 07:55:48', '2025-12-11 07:55:48'),
(356, 'SH Masum', 'sh-masum', '01407892308', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Y5PgsU.i54pec26vMaYGbOTEhHN90zR8zy9XSEOjV89GUHqG.3oyq', NULL, 'active', '2025-12-11 11:48:19', '2025-12-11 11:48:19'),
(357, 'S', 's', '01853444416', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$IiH8qjP57Rb7ptuYRRRiDOgeypCwlDKOk2PR9vB5I8hQCkL59ZUHO', NULL, 'active', '2025-12-11 13:38:59', '2025-12-11 13:38:59'),
(358, 'tt', 'tt', '01748500728', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kcXjXg3rGVKIJ8d/m8AVY.HI6r7waTyc1IbOCTfTOeVYhJnlsYteK', NULL, 'active', '2025-12-11 18:34:56', '2025-12-11 18:34:56'),
(359, 'আআআআআআ', 'aaaaaa', '01624252801', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8fMMZLSs.P2VYYzimveic.uLBOac5yvZJzYTG2ID7w.ChZLbGc23m', NULL, 'active', '2025-12-11 18:44:12', '2025-12-11 18:44:12'),
(360, 'vbbzx', 'vbbzx', '01788323334', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RXCwn.Y.XPrl6eep1mfGlOmsGv5Y/2kOWKDIB1EzcsI.RlqDRGSju', NULL, 'active', '2025-12-11 18:46:08', '2025-12-11 18:46:08'),
(361, 'erty', 'erty-361', '12345678900000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4fAbhsy.uSbUFJksXZlimeLH7ijkBmTjf4IwP7/RqTiDfcObLK5ei', NULL, 'active', '2025-12-11 18:47:59', '2025-12-11 18:47:59'),
(362, 'erty', 'erty-362', '1212121212', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/w1nKm1/LHNZGTghBvHHX.TiygcL2yzPnP.aV86R/aEzwCmTk8LGS', NULL, 'active', '2025-12-11 18:48:26', '2025-12-11 18:48:26'),
(363, 'Hello', 'hello', '01755566515', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$D3k8KiJiYMG7hKP5o/Ia3uKGWyst0VYbi8y1cvbCDGpqyEAxAlpy.', NULL, 'active', '2025-12-12 04:48:57', '2025-12-12 04:48:57'),
(364, 'Jononi Madical Hall', 'jononi-madical-hall', '01515636035', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Pri/2CMVKWyzxWln7wga9ODDan35SIvWvyjTIC/xLUrnU2vUrKY4a', NULL, 'active', '2025-12-12 09:33:05', '2025-12-12 09:33:05'),
(365, 'Jakir Hosain', 'jakir-hosain', '01712778345', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zRfK7FXvF1EYZAiF9mP1Lu/Aru.FEQanVbChYj/CN5f2cXpyV9Z9y', NULL, 'active', '2025-12-12 09:33:54', '2025-12-12 09:33:54'),
(366, 'Md Sabuj', 'md-sabuj', '01923443872', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HSrhu2R3rKSiTiFCZGewoOekG8NGm6FdHe46lVn7sbpPjKRALetMa', NULL, 'active', '2025-12-12 11:49:24', '2025-12-12 11:49:24'),
(367, 'Md Nahidur Rahman', 'md-nahidur-rahman', '01305069550', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DaCq669u.442lmzYT5lYkeW.idWe3C6D1ftBYaJtg1boPZoPbme3O', NULL, 'active', '2025-12-15 03:30:47', '2025-12-15 03:30:47'),
(368, 'Mahedi Hasan', 'mahedi-hasan', '01711190908', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z4cyi/U/lenxS0Y9H2AIfOZle9wsrAZMEvpjIpxrRxzs/RkZQ8m1e', NULL, 'active', '2025-12-16 06:57:00', '2025-12-16 06:57:00'),
(369, 'BIPLOB HOSSEN', 'biplob-hossen-369', '01711337542', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nIhM/I9NQjjQ9nXECXL1nu9IZgepS.rYkWVjZDU1aTR6cdhARNwoe', NULL, 'active', '2025-12-16 07:24:33', '2025-12-16 07:24:33'),
(370, 'test', 'test', '01712853860', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EOY2U5g6MVIW20P9b0XiK.doaqUavR5.IjOs2koQY5DPJq4PrMxyq', NULL, 'active', '2025-12-16 08:53:00', '2025-12-16 08:53:00'),
(371, 'test', 'test', '01751339255', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8Jwntb1KUx4vwWyVSeUNG.TwyMjSc8x8KobST/VOE3IzXp0E7CGta', NULL, 'active', '2025-12-16 08:53:53', '2025-12-16 08:53:53'),
(372, 'vzvz', 'vzvz', '01525252525', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$etvYoiEPu0DTmAe2VSpKWO4E4bhsr2XRGZri9uD5kgbnQMZ4O0Djq', NULL, 'active', '2025-12-16 19:18:18', '2025-12-16 19:18:18'),
(373, 'Sohan Ahmed', 'sohan-ahmed', '01717126955', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TYR73KU3Ip3nr2V58U3ms.FL9fXmnqq/rRPFrsxeXDbe2Y6TIK0Ku', NULL, 'active', '2025-12-17 05:05:18', '2025-12-17 05:05:18'),
(374, 'six Developer', 'six-developer', '01865659586', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$xQf.PqEyVKR00x97m91wKugkMp2ppq.2/fn.ib.vAucKINcIrXoq6', NULL, 'active', '2025-12-17 11:06:01', '2025-12-17 11:06:01'),
(375, 'six Developer', 'six-developer', '01837765957', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LrbeMyMwFaX1.9mlGjksWOOdfROWrGyodpglOqe6mrWMdD5.nJCpW', NULL, 'active', '2025-12-17 13:20:37', '2025-12-17 13:20:37'),
(376, 'top me', 'top-me-9981', '01837765958', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1YsRYQti.rjTymwvYXbTX.lJoCngp26sj634g6IlVWxvQHKJYCbXa', NULL, 'active', '2025-12-17 16:27:30', '2025-12-17 16:27:30'),
(377, 'Chief Executive Officer', 'chief-executive-officer', '01994444121', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B0SWtLF2Fpt7H6KFvqXj/O64R7WJkVT7ARIf1BhB0BAjX6vPWS2.i', NULL, 'active', '2025-12-18 09:13:31', '2025-12-18 09:13:31'),
(378, 'HAVAÀ', 'havaa', '01940782677', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dQ9KasfHP0bmqDQuY.ujZOMuCwedzAguftmV/alPCw.a4jNNYV1fO', NULL, 'active', '2025-12-18 10:02:21', '2025-12-18 10:02:21'),
(379, 'Jdj', 'Jdj', '01882565034', NULL, NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$6Kf.oOoXut3H2I6cSUw5qOS8gPcbVwf90SCzo05sS0qBOgVS.dAWi', NULL, 'active', '2025-12-18 17:36:41', '2026-01-20 12:22:21'),
(380, 'Akteruzzaman', 'akteruzzaman', '01302606371', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hV6A36Mdlttg4kD8WIbaJOqtgvhHSIjhoy/zYql7MUSZzPLExZKbm', NULL, 'active', '2025-12-18 18:02:12', '2025-12-18 18:02:12'),
(381, 'sfsa', 'sfsa', '01712876543', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EfT5L4FNd3ACF6i.vqBi9.6enJPBSJmlCq7qBEnZV.272bOJLyaKO', NULL, 'active', '2025-12-18 19:53:15', '2025-12-18 19:53:15'),
(382, 'Ok', 'ok', '01548455862', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QMKnuG0/a1dLPsTyes/USejZ5gonxHkJSTtPIUHJego/0HSyn4lH2', NULL, 'active', '2025-12-19 18:09:44', '2025-12-19 18:09:44'),
(383, 'এক', 'ek', '01716831091', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8jUVQzGgvQ7A.v.TepqzeO.KJkUGpuUrSvTuqpITZfqlhUUOreb5C', NULL, 'active', '2025-12-19 19:15:21', '2025-12-19 19:15:21'),
(384, 'Okm', 'okm', '01768909604', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gF2UpJAq9LgwcX2oLKsfUewrZVZ.HgkClJTXkWJo9jwbJyyjlm1MC', NULL, 'active', '2025-12-19 19:16:53', '2025-12-19 19:16:53'),
(385, 'RA DEVELOPER', 'ra-developer', '01759183699', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qI/eoybWynis/xwAUm0YjePH1VzUArUnoErpNkkT6dmmHIFSoapV2', NULL, 'active', '2025-12-21 11:33:05', '2025-12-21 11:33:05'),
(386, 'Jack', 'Jack', '01965905440', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2k8pg4JrXfWti8kqDu771.JvTld0dZ//bwuCKMV/j4qO7GKxNwjfy', NULL, 'active', '2025-12-22 10:42:38', '2025-12-22 10:42:38'),
(387, 'Ocinto Hasan', 'Ocinto Hasan', '01315833288', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yG5o9C16bZ4Gzes1izgBDOjvNkwSPGKe5cYNNUyrqMABRjoo.UuC6', NULL, 'active', '2025-12-23 09:14:44', '2025-12-23 09:14:44'),
(388, 'Safwan Vai', 'safwan-vai', '01965283919', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kAXcmIDV9qIMa.N.tksXge9C0erSH.Zl6MpPZWp.wde8EbOOfVpnq', NULL, 'active', '2025-12-23 17:53:26', '2025-12-23 17:53:26'),
(389, 'Atiqur Rahman', 'atiqur-rahman', '01727367721', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4AmWMcCGUf5nfYXe1KgB6u9qG/QEXY60auSuGS4kj5Ob5aW.6NDUK', NULL, 'active', '2025-12-24 15:03:57', '2025-12-24 15:03:57'),
(390, 'Mst. Ayesha Khatun', 'mst-ayesha-khatun', '01744321899', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gQ9RW9Tu.xDPXGSXDy.vbelQoPIWt0RxqiwCcxnek/pfr.1ffCj5m', NULL, 'active', '2025-12-24 16:40:55', '2025-12-24 16:40:55'),
(391, 'Mst. Ayesha Khatun', 'mst-ayesha-khatun', '01738987654', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iCE1d0kW9xuZwWsJruCnwudwI11TUl1fVkJ42gRASzONZ.cH.FUJK', NULL, 'active', '2025-12-24 16:52:42', '2025-12-24 16:52:42'),
(392, 'Mst. Ayesha Khatun', 'mst-ayesha-khatun', '01486548876', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$eXJa6.Pbqzn4L/OtdXkaX.nVavmXkH4nYpY9mhN1GArJ6Ccx8.giG', NULL, 'active', '2025-12-24 17:15:00', '2025-12-24 17:15:00'),
(394, 'Declan Peck', 'Declan Peck', '71', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cYBkTlCMLcvasAuPCyRhOeEF6ZMgWDtThbtDN5e5f.ThfFMfIh7va', NULL, 'active', '2025-12-24 18:48:52', '2025-12-24 18:48:52'),
(395, 'Md Riazul Islam', 'Md Riazul Islam', '01722754100', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$v.meV6.gZQslPq7P8yjbYeUHtIqRHkCNBC3ryLhuyZjtGMvEfPfyC', NULL, 'active', '2025-12-24 18:49:58', '2025-12-24 18:49:58'),
(396, 'Atiqur Rahman', 'Atiqur Rahman', '01552344042', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H/KpqYjgxCjGsrB.Ic70Z.AA7C8yDxF10wcNcNZPnQcl9N4BcS5vy', NULL, 'active', '2025-12-25 14:20:08', '2025-12-25 14:20:08'),
(397, 'Quinlan Carey', 'Quinlan Carey', '15', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WlPw/XYESwmODYcsP8ErZ.dS3nKHOsgKu7UefeJwsnS7iJ57hljc6', NULL, 'active', '2025-12-25 17:09:49', '2025-12-25 17:09:49'),
(398, 'Ehsan Shop', 'ehsan-shop', '01625322952', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vZeygCVhFN4NTZLd1sJwherMsacZee2hbU/c4ToKkPk.jkN3jlUQW', NULL, 'active', '2025-12-26 11:20:56', '2025-12-26 11:20:56'),
(399, 'Sagar Karmakar', 'sagar-karmakar', '01790089914', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yDMrZxPTFXZCRl/clhMnJuuIlCbY.KqW7o7GJgYJv/MN4dwma.8ua', NULL, 'active', '2025-12-26 11:32:14', '2025-12-26 11:32:14'),
(400, 'Uwu', 'uwu', '01876263626', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AlORPBXiST2Y5sX95TuqIuupMbkGiqqi1R0BqcF3Rs8GXm9r4A7ze', NULL, 'active', '2025-12-26 11:43:39', '2025-12-26 11:43:39'),
(401, 'sljhdblkahsb', 'sljhdblkahsb', '01924496733', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I5c9e2G8dQYB3Fg07wWjx..TBNJdPVtIqWtOeLLD3WI9cDgJXilWG', NULL, 'active', '2025-12-26 16:21:50', '2025-12-26 16:21:50'),
(402, 'Ghj', 'ghj', '01701084800', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ufBgChE9rCUSwHYUp95FX.G1GzEupwP9jP3VMu2r/jeOV5O5cYFy.', NULL, 'active', '2025-12-26 16:22:51', '2025-12-26 16:22:51'),
(403, 'The', 'the-403', '01777777777', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$SM1ymlRGnME3Y4ZAp7F8BOoozUDYnomhierctp1GvT4NaBYXfgRdu', NULL, 'active', '2025-12-26 16:59:33', '2025-12-26 16:59:33'),
(404, 'iiiiiiiiiiiii', 'iiiiiiiiiiiii', '01923457890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JpFG.B1WDANCsYfn2JDXiOojhp1x88rf2jFbMgKkoaasvHf8j4PfW', NULL, 'active', '2025-12-26 17:14:07', '2025-12-26 17:14:07'),
(405, 'Obaidullah Asif', 'obaidullah-asif-405', '01615090576', NULL, NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$lCzEEb7nU4mcidL6FIViWuMzGv.Ds8gfUWlSZpaHYSLEtnhKQankW', NULL, 'active', '2025-12-26 18:55:03', '2025-12-26 18:56:26'),
(406, 'Munna', 'munna', '01764975379', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z2DE5xIsl4cAUcxiR1m9p.uLohz/9LuetSUA2mE9O5TtIlntuAvqO', NULL, 'active', '2025-12-26 19:22:34', '2025-12-26 19:22:34'),
(407, 'M', 'm', '01234567890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QywPtLbX6OErmGvwvBGkd.AQQrZdsEXxFO02EJEvOtMssseRjJHXK', NULL, 'active', '2025-12-27 07:03:26', '2025-12-27 07:03:26'),
(408, 'H', 'h-408', '12345678901', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TBLuBMUzAytMLjWuz5TnKuC5BTsEJwuZIg6/qaj/Ip11sQayxi2dS', NULL, 'active', '2025-12-27 07:14:18', '2025-12-27 07:14:18'),
(409, 'SOYEB AHMED', 'soyeb-ahmed', '01716638449', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/ML4vn9fDBS1pR/DINQQO.0kMLKqRsmbtA/AGVwtnZBCXLrnIDYpO', NULL, 'active', '2025-12-27 08:46:50', '2025-12-27 08:46:50'),
(410, 'Soyeb', 'soyeb-410', '4949499', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$BRFfahfdxunSsHl8GMwDv.1v9q/RZaPYoGmISd1qiCu.YCP6xbxpS', NULL, 'active', '2025-12-27 08:48:04', '2025-12-27 08:48:04'),
(411, 'Soyeb', 'soyeb-411', '1', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2nHDTVose.Wid6ngh5HsLuPX2ot7eTfly4E7IuP5pgVstLuo71g1K', NULL, 'active', '2025-12-27 08:48:20', '2025-12-27 08:48:20'),
(412, 'MONIRA AKTER', 'monira-akter', '01829228373', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JNlwOR8q0k3P86Zyu1ysbOgVPOXCMHD.vzzhbWjiwX3q0awUnjK0e', NULL, 'active', '2025-12-27 13:12:16', '2025-12-27 13:12:16'),
(413, 'Salauddin', 'salauddin-413', '01834128589', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$50x9mYtLwQxj4G/mYfJOF.lvb4DQoYMRHuKypFk3BSACpDJ/9jJCm', NULL, 'active', '2025-12-28 05:55:06', '2025-12-28 05:55:06'),
(414, 'Mohammad Rafiq', 'mohammad-rafiq', '01301142757', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fGbchNKHxWolHm42pJfyou2p5FxS0At6A8iId45gIL2LOoWUvtEMm', NULL, 'active', '2025-12-28 11:49:05', '2025-12-28 11:49:05'),
(415, '^&', '', '01784321234', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EBL2g2zMOL1n4ij2hF..7OMKc28EaKZDrOkqfMfeONQ90clZb2vSW', NULL, 'active', '2025-12-30 18:14:27', '2025-12-30 18:14:27'),
(416, 'বল', 'bl', '01828736847', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WYUiql0QXkelJgI2ArmpCeCDa/nT.Z2kEz2FR6NBgA4qpsbk6ExKq', NULL, 'active', '2025-12-31 10:54:47', '2025-12-31 10:54:47'),
(417, '55', '55', '01831753418', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8KBN8rV.DwNaqAua.dJtHuq2PKI7QOgJt7vlu6F0aauCPNEm2cwNa', NULL, 'active', '2026-01-01 18:50:57', '2026-01-01 18:50:57'),
(418, 'MD Nayeem Hossain', 'md-nayeem-hossain-418', '01876685711', NULL, NULL, NULL, NULL, 1, '4155', 'public/uploads/default/user.png', '$2y$10$dCkObHzNSey6QQR1B2vrn.njRwxc5e7rj90yWrn22JGGZRjOw9Po6', NULL, 'active', '2026-01-02 16:54:54', '2026-01-25 16:46:41'),
(420, 'Md Khaleda zia', 'md-khaleda-zia-9618', '01875952626', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sCRhFMvKyWGnLgdwcttrb.aWKNDmTtWB22jjXjEpzJlRGegieiLhW', NULL, 'active', '2026-01-03 06:38:20', '2026-01-03 06:38:20'),
(421, 'Akib Sheikh', 'akib-sheikh', '01956416000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$eXAkz7i0rcrDUHQmzsj.i.iBLh75xlA5g.Ck.UR0L7evGFcYJcXnK', NULL, 'active', '2026-01-03 15:55:53', '2026-01-03 15:55:53'),
(422, 'MD EMRAN HOSSAIN', 'md-emran-hossain', '01400510003', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wS9RcDagvEcjfnGrj/JULexDC6R26cJ0Y4H3cYIwF7WtF9GTOX3hK', NULL, 'active', '2026-01-04 12:37:47', '2026-01-04 12:37:47'),
(423, 'wali', 'wali-423', '01403948130', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rAxdbRiee4v2p9CqTzEpBuXwWRCykeBegbJrAL0RE0aYy/E4GPX7S', NULL, 'active', '2026-01-04 13:08:12', '2026-01-04 13:08:12'),
(424, '‍্যফফথফথ', 'zffthfth', '01785454646', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LfJIuC1NYBRRSimcG5rmSOHxqVWnpciRit5dYDiKJFiGn9cK2IQkC', NULL, 'active', '2026-01-04 16:11:12', '2026-01-04 16:11:12'),
(425, '‍্যফফথফথ', 'zffthfth-1308', '0178545464', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kkOj3tiaEPw.G7i1GkPWzuEAHmN9Jyp4Wu0m/3XalrclF/YKbbb6m', NULL, 'active', '2026-01-04 16:55:01', '2026-01-04 16:55:01'),
(426, 'Md Rabby', 'md-rabby', '01851523633', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$c7Jx5v5UkktBHAYnJO8HS.8QqObKhVTOX3k2IIxH9eDs1RAH1WMmu', NULL, 'active', '2026-01-04 22:21:30', '2026-01-04 22:21:30'),
(427, 'Trial', 'trial', '01717255063', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yFL485bjb7oGoeCdnNpyB.uxNqdHxSXIWYOi8zd1Kwy3c5uoMcRBS', NULL, 'active', '2026-01-05 07:28:45', '2026-01-05 07:28:45'),
(428, 'dfhdf', 'dfhdf', '01712030609', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$upTL6c8qb5iBMh51w3q70OhS45wH.m4m840nmXLa4DiXqKix5dwlu', NULL, 'active', '2026-01-05 12:25:02', '2026-01-05 12:25:02'),
(429, 'demo Login', 'demo-login-429', '01715963574', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5n0XVm5t1z8//VwQn6NcB.tBxWe8i16Q9cNDF1l.ML.9kUqPGbkBK', NULL, 'active', '2026-01-06 02:40:51', '2026-01-06 02:40:51'),
(430, 'Premium Course', 'premium-course', '01719624260', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zyJjL5iLKGrwxeMaWdq1JeMeNDTAil0tZrYpmt7JekZsMZYzQBsx2', NULL, 'active', '2026-01-06 10:53:32', '2026-01-06 10:53:32'),
(431, 'Bappy Hossein', 'bappy-hossein', '01880182900', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I2lsCDeYnarDiH9SrkLI1O/lVB.Hli57ytA8aBOggZJj2Pd49Kcfm', NULL, 'active', '2026-01-07 10:06:24', '2026-01-07 10:06:24'),
(432, 'test', 'test-432', '01711223355', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$PyjM5PkkSPyklsElwUBKjOm7qkNiB/M6jO5qK08JWRmP54M1Vy.hK', NULL, 'active', '2026-01-10 13:12:04', '2026-01-10 13:12:04'),
(433, 'MONIRA AKTER', 'monira-akter', '01862553535', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fymZI6YkIlneVjjAlqclHeN1mCRifH3dCY.VDNvZjgapa1dAySGAi', NULL, 'active', '2026-01-10 19:43:07', '2026-01-10 19:43:07'),
(434, 'Alam Munshi', 'alam-munshi', '01784721645', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.bRMYszSJsT1/zHghXLX9.kgWaAS3L8OhsXI.KA/RjtA.II3xzWwO', NULL, 'active', '2026-01-11 14:19:52', '2026-01-11 14:19:52'),
(435, 'Alam Munshi', 'alam-munshi', '01783425679', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WdIX8x5va4n0P/AaLUxlj.I8fZQc1p4dFWrNH5LYnnRyxBxP9VY3m', NULL, 'active', '2026-01-12 14:21:50', '2026-01-12 14:21:50'),
(436, 'Kawsar ahamed', 'kawsar-ahamed', '01613543031', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$f.G/8ieMI0msBIDVfso3fevpF2/vIcLZ0aU4dYjSYkV1c.lvYnlD2', NULL, 'active', '2026-01-13 05:39:44', '2026-01-13 05:39:44'),
(437, 'Tedt', 'tedt', '01683067989', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$d1RliYHW08BAG6I8dJ/gt.3mQwENWeLJ9PXekkVgyIurfhkKVqe7.', NULL, 'active', '2026-01-14 06:11:59', '2026-01-14 06:11:59'),
(438, 'test', 'test', '01611458555', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GqZa6ZoTh577OOIhazgbCeYNmKILyWfA9reVKss2km9kXI8F7A.Lu', NULL, 'active', '2026-01-14 13:43:50', '2026-01-14 13:43:50'),
(439, 'Md Ashikullah', 'md-ashikullah', '01866192222', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Dx27kCP7ppgZY5vcIG.LV.069HWc3wboKxFjJHBXts5k1bWoQKYWK', NULL, 'active', '2026-01-15 07:55:11', '2026-01-15 07:55:11'),
(440, 'bijoy raj', 'bijoy-raj', '01840816044', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JzJGogLpeFh3pwITr2enhOdeGfldmA06J0zcTGA.SBjSdiCKzl1Q.', NULL, 'active', '2026-01-15 17:32:40', '2026-01-15 17:32:40'),
(441, 'Test', 'test', '01857568283', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mT9KqAMqcLhNjeA.KJMWNe36MLp4HGlVSkFCTVnURFXJLeIRVGR9.', NULL, 'active', '2026-01-15 19:19:11', '2026-01-15 19:19:11'),
(442, 'MONIRA AKTER', 'monira-akter-1458', '00000000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$heR4N1EPqwJGr.LGEJ3/J.cn.MHtOuZDLTTTgpfwLnEcgAGd7yoZu', NULL, 'active', '2026-01-15 19:34:42', '2026-01-15 19:34:42'),
(443, 'সানি ভূঁইয়া', 'sani-vuunniza-443', '01949623631', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$orn94MsoKztOz8hoSsD3BOv8YwBbgen3OTpXUwd7DW.z0mRSuKnDy', NULL, 'active', '2026-01-16 09:49:50', '2026-01-16 09:49:50'),
(444, 'সানি ভূঁইয়া', 'sani-vuunniza-444', '01626342604', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ap7FhhrNBeSyjEiMfvSwTeGp8GiAWcGtUbJIsYlDFlsLFIPH4uCsK', NULL, 'active', '2026-01-16 10:43:19', '2026-01-16 10:43:19'),
(445, 'Md. Noman', 'md-noman', '01626548039', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$olzkOE.7qUBc0DxGhG1XLuMRA8BXYNcwx3Rw.nmSQ.9JksVHUDYJ.', NULL, 'active', '2026-01-17 01:59:08', '2026-01-17 01:59:08'),
(446, 'rewr', 'rewr-446', '987987987', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7XdFsw9y8E9bP3ORArOnIeGnUWPI0VTjYWirnjVBWYaGGxjPtc78m', NULL, 'active', '2026-01-17 07:07:13', '2026-01-17 07:07:13'),
(447, 'MD SHOJIEB HASAN', 'md-shojieb-hasan', '01906528776', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vBqujw02MuZvwsdH5UqJPeyx9HUqHPD..4wOcqeljhUoFefAUgdvC', NULL, 'active', '2026-01-17 10:32:23', '2026-01-17 10:32:23'),
(448, 'MD SHOJIEB HASAN', 'md-shojieb-hasan', '01771840026', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3/kNLR49nNI25o6TKOhi7uTJvCswUdBc1ZJ.6fV49WJezG.IOi3fC', NULL, 'active', '2026-01-17 11:15:24', '2026-01-17 11:15:24'),
(449, 'Ibrahim Fashion', 'ibrahim-fashion-449', '01540033544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H/Q3udXDkKAnhb4XqO0mmeDFQJFdiNaFr1Xz7NMGdKzvUFEIBfC4G', NULL, 'active', '2026-01-17 13:25:51', '2026-01-17 13:25:51'),
(450, 'Md Tajul Islam', 'md-tajul-islam', '01568619196', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uGYMm9d5uQhRzjdbgfiD.O20x1KO9tpAquej7gJ0qQwNzfXCXllpC', NULL, 'active', '2026-01-18 10:44:39', '2026-01-18 10:44:39'),
(451, 'Yyyyuuu', 'yyyyuuu', '01622017884', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Em7mvtGOJBUpUG0.LtkzsOKeF3xlXumQtJTbZlOLh0f67wW52X98K', NULL, 'active', '2026-01-18 16:50:41', '2026-01-18 16:50:41'),
(452, 'Oliur Rahman', 'oliur-rahman', '01303325510', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lbpJLGN0JH2aZ7vyF8orgug.7DJpnBjq6yx4wUr7FdlG8B0rZjk3q', NULL, 'active', '2026-01-19 04:51:51', '2026-01-19 04:51:51'),
(453, 'Md Ripon', 'md-ripon', '01601424748', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$N4Ls9Ej4M88FUv1IT05QKOG3/xYeUOHKMoKEjCmjK0Q1zW7oNzEVe', NULL, 'active', '2026-01-19 05:49:57', '2026-01-19 05:49:57'),
(454, 'AL MAMUN', 'al-mamun', '01740775584', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AdB06/GdbxqroeCcefjTTu1PW0wz44vFtp4kyXU9KqgmxkTJ6InRO', NULL, 'active', '2026-01-19 08:29:46', '2026-01-19 08:29:46'),
(455, 'Testy', 'testy', '01976629061', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aYR9gQWmRAaeZ/6M3CsGVeEsAKknixsmhgcHgpaizpODXNsknCMXu', NULL, 'active', '2026-01-19 10:42:48', '2026-01-19 10:42:48'),
(456, 'Gjjbv', 'gjjbv', '01877137291', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iaKECQb38D8aFBmuSTFkaO8pFTmIg1rj8dKz/S2T56GCeDaQTFNEy', NULL, 'active', '2026-01-19 10:44:03', '2026-01-19 10:44:03'),
(457, 'Md Abdul Rashid', 'md-abdul-rashid-457', '01875952727', 'okibkhan4205445@gmail.com', NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DAiE/NjtoGTP3V62.THGBe/BpvMUhAIhPiSqxrPGq/xfC298isHlW', NULL, 'active', '2026-01-20 17:08:30', '2026-01-20 17:08:30'),
(458, 'Md Riazul Islam', 'md-riazul-islam-2176', '07757408797', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ckxg2OVlsb5OWpwamHdnS.GOkvN.M/tKmXHWzpTfhR5x1a2A5pa/W', NULL, 'active', '2026-01-21 17:34:25', '2026-01-21 17:34:25'),
(459, 'MONIRA AKTER', 'MONIRA AKTER', '01918943429', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$k8wM5ud5Wk87BJt6qGUbsOniafkB4ODxzUjvg63KAdRKUlfaFRTh6', NULL, 'active', '2026-01-22 12:57:22', '2026-01-22 12:57:22'),
(460, 'MONIRA AKTER', 'monira-akter', '01825428578', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$YZw935tiUZORJLgyQG.kC.DoQSHsyvjB8fOw6gKamYZ/XdTVtEb4W', NULL, 'active', '2026-01-22 14:38:57', '2026-01-22 14:38:57'),
(461, 'MONIRA AKTER', 'monira-akter', '01837373637', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$OPVCeFWcpJpCfekSxnIVf.3SCn1OLeFNqE8Z4TSbnOk9JjTKq6FBW', NULL, 'active', '2026-01-22 18:26:46', '2026-01-22 18:26:46'),
(462, 'Md Nayeem Hossain', 'md-nayeem-hossain-462', '01631843149', 'info.elitedesign.com.bd@gmail.com', NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$fWiM.mFXxsgAh87XrqoereNopyUG15//Jvu9WaC9PWWTaar2BwDxO', NULL, 'active', '2026-01-24 05:28:31', '2026-01-25 17:12:27'),
(463, 'Md Kahled', 'md-kahled-463', '01875952627', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aorTZ/.ZFY9tb.4il99LJehKQIlkhzxMQNF/CpeXu9eZnkg4jiT16', NULL, 'active', '2026-01-26 13:09:21', '2026-01-26 13:09:21'),
(464, 'MD ABDULLAH AL MAMUN', 'md-abdullah-al-mamun', '01788145577', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JFKJCPw8Ayr2Yjcv.NxHtuzF3WD3US9soBz3GDuxhwTD8QN9fFIiS', NULL, 'active', '2026-02-11 15:10:29', '2026-02-11 15:10:29'),
(465, 'Md kuddus ali', 'md-kuddus-ali-465', '01876685722', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$P74km502BdDqCbwweOSzZ.w7deAVd.f4eJnOFdJGigapIBQL9371e', NULL, 'active', '2026-02-12 07:20:03', '2026-02-12 07:20:03'),
(466, 'Faysal Mahamud', 'faysal-mahamud', '01811212974', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CjfZHyTobkDdelYkIRYPHuARN6c/byoBxLWhtidWw93g5.7RJ8Pka', NULL, 'active', '2026-02-13 06:38:53', '2026-02-13 06:38:53'),
(467, 'Jarir Ahmed', 'jarir-ahmed', '01615406040', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NQFeVm7eG8WLgs7BZ5koi.svTnZ9QTogVALega7hHre42LV2PCm7W', NULL, 'active', '2026-02-13 09:28:02', '2026-02-13 09:28:02'),
(468, 'Ruhul Amln', 'ruhul-amln', '0183800616', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$llmFmsI34S0UJeS57uwCYezY7BfKsNR4j7JbTDrsEKE9sEPJrjxNC', NULL, 'active', '2026-02-14 02:59:23', '2026-02-14 02:59:23'),
(469, 'Roke Mia', 'roke-mia', '01623984965', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ynEFoKgqpPD3frEW5yvS2uZIOztyIVNeDJYgnKsNILPZZKYmKHCUi', NULL, 'active', '2026-02-14 06:46:11', '2026-02-14 06:46:11'),
(470, 'Md Shakib Khan', 'md-shakib-khan', '01588596378', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Gu.W.m7nsKGk3/9Agt177.3nX62pE4cx54JKMGbi4tQyNY1ckOBTa', NULL, 'active', '2026-02-15 05:23:59', '2026-02-15 05:23:59'),
(471, 'Bla Bla', 'bla-bla', '01888888888', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iAHpsnyB0osR/DHSEJQTyOLG1oEIb01e0PARv5vcCU5Ssvn5s31Wa', NULL, 'active', '2026-02-16 07:47:21', '2026-02-16 07:47:21'),
(472, 'md saiful islam shawon', 'md-saiful-islam-shawon', '01636427720', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZlbnsALww3kfsLjSwm9NruM3vLkRsrki/5.kalrwvvy3o60hWkcfS', NULL, 'active', '2026-02-16 18:21:29', '2026-02-16 18:21:29'),
(473, 'Abir Ahmed Anik', 'abir-ahmed-anik', '01934066781', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RMd5XcNmKRxx.OVV.UVJ5.BQmgiDJTZlK5JqjMG4rkD/XrgdDHBtK', NULL, 'active', '2026-02-16 20:57:55', '2026-02-16 20:57:55'),
(474, 'Redwan Ahmed', 'redwan-ahmed-474', '01327949941', 'vorarkhonthotrw@gmail.com', NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wmPgz1W9GWCyHiCilQUSpezxm51qoUjgGS11yHO4zk8HI2Rnr9fYG', NULL, 'active', '2026-02-17 11:23:36', '2026-02-17 11:23:36'),
(475, 'israfil hossen', 'israfil-hossen', '01775997119', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LCVVx6aCUcJEiw5aBKy9Nu343x1gYYKSpLBaKcelrq8cXJtwNyRmG', NULL, 'active', '2026-02-18 08:09:32', '2026-02-18 08:09:32'),
(476, 'Nayeem 12', 'nayeem-12', '01907797146', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7.0lteLCsRS2XaDCjK0a1.k4WrGYJIjDDQasajnaFfNP/YbIX7yg6', NULL, 'active', '2026-02-18 09:29:39', '2026-02-18 09:29:39'),
(477, 'রসসককক', 'rsskkk', '01738338857', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kuw.SIyY3h2fm1ykkHZPIetERwk7r.INViOaPRmDLugDfAGedZDOC', NULL, 'active', '2026-02-19 11:40:29', '2026-02-19 11:40:29'),
(478, 'SAIFUL ISLAM MOLLA', 'saiful-islam-molla', '01749121571', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$topgWypnNDB9Hd.QRxRZo.kqhEMLdjDkb5ntqdMZaV9g72ZINQhj2', NULL, 'active', '2026-02-19 12:47:43', '2026-02-19 12:47:43'),
(479, 'dfsasdf', 'dfsasdf', '01715550406', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aMhbTLGlNJayjjF.kQmPg.oXDpaady/CfdEw6CH.8CcxywALMwgRq', NULL, 'active', '2026-02-19 15:18:50', '2026-02-19 15:18:50'),
(480, 'md roton', 'md-roton', '01945236536', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/8Z3gtOdak6RvSOmDL2HD.U2s3ZPx7zJplKiFbk2RuR/ffwPBOh5O', NULL, 'active', '2026-02-21 05:08:50', '2026-02-21 05:08:50'),
(481, 'Mahmudul', 'mahmudul', '01912107221', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$KMJRms7x8WHwTEyLMcT7CekVf42drSUU3zNyb/CeH3ZZbWMcdQNRG', NULL, 'active', '2026-02-21 09:15:31', '2026-02-21 09:15:31'),
(482, 'dfbdfb', 'dfbdfb', '01711223366', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QfOLPriV6oVwZa6e8V45U.09t8ZeggNfEc30pGFq/Ql4EDJa9Zzua', NULL, 'active', '2026-02-22 06:46:38', '2026-02-22 06:46:38'),
(483, 'Sjdbbh', 'sjdbbh', '01865262585', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fyviRHAcOndFdJVLQPFo9.qqW6bZMptNjCHRvDRQjMCdMO8WTHWcK', NULL, 'active', '2026-02-22 07:27:38', '2026-02-22 07:27:38'),
(484, 'মমমম', 'mmmm', '01580444012', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ekSX30QdYeeSjadedrRdAO5zFZwKnJqLS6XZ67xT35IAvwjYlFFBS', NULL, 'active', '2026-02-23 14:37:00', '2026-02-23 14:37:00'),
(485, 'khan', 'khan', '01811873244', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1fYoHqlrIaXpqC9nMrYliOjcPa2RywfsnZMaHxJsd3jofZjY76S2S', NULL, 'active', '2026-02-23 16:56:25', '2026-02-23 16:56:25'),
(486, 'মোঃ রাকিবুল হাসান', 'mo-rakibul-hasan', '01795568841', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.YQxVJO3lcUOGv8SR4VTPeyLazzC/MTQI5jgQjvA8SoPa25sHvpbi', NULL, 'active', '2026-02-23 17:50:22', '2026-02-23 17:50:22'),
(487, 'Gddhhb', 'gddhhb', '01897971573', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aQcEcplaYxGo3mITuGcuROBwG.MayMqlaQLm7c6wVDKe/Z7dcDvJK', NULL, 'active', '2026-02-23 22:45:56', '2026-02-23 22:45:56'),
(488, 'Md Faruk', 'md-faruk', '01607773445', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$r5IwyL72q2igioyZ0iGZPu3WBtk6e1tVKxf.GrOySZyvz.n0s5SLi', NULL, 'active', '2026-02-24 07:52:00', '2026-02-24 07:52:00'),
(489, 'Md Faruk', 'md-faruk', '01607958348', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZX8gsEMIggIYbZsi/9sdq.5sajetZNpyoDpJm2hCe2fY9kAZHufbe', NULL, 'active', '2026-02-24 07:53:40', '2026-02-24 07:53:40'),
(490, 'Rashedul Hassan', 'rashedul-hassan', '07183354232', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CVN9ZKeI0rACPzrCgjwAnelhIdRdE2NCGhZuoO6b3YSdW1IpWsIKi', NULL, 'active', '2026-02-26 15:39:35', '2026-02-26 15:39:35'),
(491, 'Ali Akbar', 'ali-akbar', '01837023812', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zUkFYkF4QSJs6NZop7lm2Ogr042HssMt7i4U1jaf/pbuW1dslNmxO', NULL, 'active', '2026-02-27 17:56:23', '2026-02-27 17:56:23'),
(492, 'জ্ঞজ্ঞগ', 'jngjngg', '01645544444', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MqbB4xkQkMdcJUuuWSt1tuyVXq/tyCbyYi0oZOEdCtog5KQIU9/iC', NULL, 'active', '2026-03-01 00:02:56', '2026-03-01 00:02:56'),
(493, 'ewqrewqr', 'ewqrewqr', '01000000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GiUujtKO3581IW.ie3118ehO0lwLzDsTKNPZSsV17vlzn62Ri5M3a', NULL, 'active', '2026-03-02 08:58:18', '2026-03-02 08:58:18'),
(494, 'Md Tajmul Haque', 'md-tajmul-haque', '01614022171', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ONx40patZGUX13FdyTUbmu94qHB6RsIIwPg94qFS9tCl83abYW8kS', NULL, 'active', '2026-03-02 17:29:33', '2026-03-02 17:29:33');
INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(495, 'Rasel Hossain', 'rasel-hossain-495', '01344977993', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Awuv/O6uAD3.kiOWn3IDpONruN8M3ZSAVNP/VCgn1l.mh/eb3S01G', NULL, 'active', '2026-03-06 13:04:22', '2026-03-06 13:04:22'),
(496, 'Party Wear Long Gown', 'party-wear-long-gown', '01301549757', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$SGLoGgVVxCjd3olMKPW/2.lW4l113h6W4tLbe6KbVOmcOfixy6EDm', NULL, 'active', '2026-03-07 09:08:44', '2026-03-07 09:08:44'),
(497, 'test', 'test', '01788877489', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FSot1DaH52uCyRCFHLNBQ.w5dSUjWC3fM2Bt0sPT2qzdA14ZcRGvi', NULL, 'active', '2026-03-07 11:26:34', '2026-03-07 11:26:34'),
(498, 'Ummah Islamic Institute', 'ummah-islamic-institute-498', '01782295951', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$IQxTbMh/mRkXOWqjgAskVexxwTMuj2O1yu3MIUoF/vWMMAkf1EEY6', NULL, 'active', '2026-03-07 13:52:08', '2026-03-07 13:52:08'),
(499, 'Md Kader Ali', 'md-kader-ali-499', '01305069555', 'vorarkhontho5454@gmail.com', NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3QHYNuhV0IjJQJeWMooO9.BkVdw/0sojIAAIdxMl5BIzbaMRkG2o.', NULL, 'active', '2026-03-10 11:17:21', '2026-03-10 11:17:21'),
(500, 'Amimul Islam', 'amimul-islam', '01951693473', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4bCytnYEoXiveQvuTOf12O7.qFVco0gQKRitYvI.ds6xMY0BvCTzG', NULL, 'active', '2026-03-14 03:11:29', '2026-03-14 03:11:29'),
(501, 'Ms', 'ms', '01975029988', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aPSR4xeZMYqbvw0XPSXsKeqz0YcCEX1OZr5C82swJPE4rHJP6oudm', NULL, 'active', '2026-03-15 18:16:02', '2026-03-15 18:16:02'),
(502, 'MD MONIRUL ISLAM', 'md-monirul-islam', '01753545077', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qhx8Z.Lq4D4.ZN4p/i7D2OfHULaKGE4L6370OYyASxk1DBw8/6.6e', NULL, 'active', '2026-03-16 09:22:29', '2026-03-16 09:22:29'),
(503, 'hjjj', 'hjjj', '01865416489', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XXrSd67nNbcdxP1vTgq50eyw.OxGJiey/UCNfBhfbpsg3A3676.h2', NULL, 'active', '2026-03-16 17:14:10', '2026-03-16 17:14:10'),
(504, 'Redwan Ahmed', 'redwan-ahmed-504', '018589899', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$UA2dHlg4riiJGFvKLPOdTOP8DyTECTA6o/DQLhWIDWW96B41GRYT.', NULL, 'active', '2026-03-22 05:53:50', '2026-03-22 05:53:50'),
(505, 'maruf hossen', 'maruf-hossen', '01612985269', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TiuGdcdaeQdvoz5cygdte.DkvZ07NMTXVCJVSLmVYoA5gjc0wE82y', NULL, 'active', '2026-03-24 11:33:40', '2026-03-24 11:33:40'),
(506, 'uzzal', 'uzzal', '01401421440', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qBAjQmPAEzuSPeKE4WT0ieXmovLJzVWtf6eYsl0BXWl3Ec9sZYtwK', NULL, 'active', '2026-03-25 10:13:28', '2026-03-25 10:13:28'),
(507, 'Hhh', 'hhh', '01778976890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oRyTsFwXZyc6RonbHpNNeex0YPJwEosgma9eIRE97.JBVLhJh1gby', NULL, 'active', '2026-03-27 08:41:24', '2026-03-27 08:41:24'),
(508, 'রফাG', 'rfag', '01715434544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cy.gzZ66l1CeCxd.7GTiaeJUILkUseqSxjLAoNZIRJ7zpOct1cNH2', NULL, 'active', '2026-03-28 18:46:06', '2026-03-28 18:46:06'),
(509, 'টগত', 'tgt', '01745454544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$G.TvupU6izjxnfwXhzzTbe6CkLmZYiOcL./O.hPdgqj1oaqlAEDiK', NULL, 'active', '2026-03-28 18:47:39', '2026-03-28 18:47:39'),
(510, 'Azmun Kariya', 'azmun-kariya', '01743561738', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GBRUq6X6caUTfkupQauhCOGwF8KDpcXPy12Rpq81PzbH3dR24DqE6', NULL, 'active', '2026-03-30 08:47:24', '2026-03-30 08:47:24'),
(511, 'Soab Aaron', 'soab-aaron', '01736340382', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$01eL4WrXm68kIfoMqZ3KgeaT6uboi2KI0rzyPKONSz.WZbE06suJu', NULL, 'active', '2026-03-31 14:40:52', '2026-03-31 14:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `digital_downloads`
--

CREATE TABLE `digital_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(100) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `remaining_downloads` int(11) DEFAULT 0,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `digital_downloads`
--

INSERT INTO `digital_downloads` (`id`, `order_id`, `product_id`, `customer_id`, `token`, `file_path`, `remaining_downloads`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 644, 205, 303, '6bcf4ffd-22c8-41b9-a395-dbfbe6b99e2c', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 5, '2025-12-10 16:53:09', '2025-12-03 10:53:09', '2025-12-03 10:53:09'),
(2, 645, 205, 303, 'a55f77c2-e8e6-478d-94d7-94d2afe0812c', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 2, '2025-12-10 17:52:54', '2025-12-03 11:52:54', '2025-12-03 12:21:02'),
(3, 646, 205, 286, '312969b6-0493-4fce-b3de-f6a1b0824140', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 2, '2025-12-10 18:23:28', '2025-12-03 12:23:28', '2025-12-03 12:37:21'),
(4, 691, 209, 286, '941dcef8-b969-4ac0-a322-d5951448e525', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 4, '2025-12-17 10:17:33', '2025-12-10 04:17:33', '2025-12-10 04:17:35'),
(5, 702, 208, 337, '548a96cd-e548-470d-b5fa-562dd2e3c4e3', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 3, '2025-12-17 16:43:28', '2025-12-10 10:43:28', '2025-12-10 10:43:46'),
(6, 710, 208, 345, 'd13797b6-d560-48e1-aa00-fa27cd9cdb17', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2025-12-17 23:42:50', '2025-12-10 17:42:50', '2025-12-10 17:43:01'),
(7, 710, 209, 345, '14437734-2be7-4ca2-b955-42fd0b274c59', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 5, '2025-12-17 23:42:50', '2025-12-10 17:42:50', '2025-12-10 17:42:50'),
(8, 711, 208, 294, 'e4075b08-255d-40a9-b82a-f9ff71e97240', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 5, '2025-12-17 23:45:14', '2025-12-10 17:45:14', '2025-12-10 17:45:14'),
(9, 724, 208, 359, '3b4f312e-aed4-4a0b-91c9-3d170b43dace', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2025-12-19 00:44:57', '2025-12-11 18:44:57', '2025-12-11 18:45:04'),
(10, 732, 209, 368, '477a58fc-5e3f-46ef-bc3e-f2ad90b7b1ab', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 5, '2025-12-23 12:57:24', '2025-12-16 06:57:24', '2025-12-16 06:57:24'),
(11, 735, 208, 370, '23bd777a-6b60-46ee-85eb-32d1f5c84fe8', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 5, '2025-12-23 14:53:16', '2025-12-16 08:53:16', '2025-12-16 08:53:16'),
(12, 821, 209, 367, '2e290eef-0a9f-4792-bba6-45c220ca2e7c', 'digital-products/0P7bq4FAE31BpJ8mlFHAJBSPvuYQh7ZXZzqjVnSj.zip', 4, '2026-01-08 22:09:33', '2026-01-01 16:09:33', '2026-01-01 16:09:40'),
(13, 824, 209, 308, '86d17c2f-63c4-49d5-892f-6911df1c99a4', 'digital-products/0P7bq4FAE31BpJ8mlFHAJBSPvuYQh7ZXZzqjVnSj.zip', 4, '2026-01-08 22:31:12', '2026-01-01 16:31:12', '2026-01-01 16:36:27'),
(14, 828, 209, 367, 'e1d4798c-4306-4c91-ab2d-61ad85f85e8e', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-08 22:41:35', '2026-01-01 16:41:35', '2026-01-01 16:41:38'),
(15, 831, 209, 286, '3a46b9cb-f1f5-4a2f-b74a-86acb5df6c9e', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-08 23:02:17', '2026-01-01 17:02:17', '2026-01-01 17:04:53'),
(16, 836, 209, 286, 'H6Y6y8PHsPTgfgkThgYnNegCf04CqysATDwPOctbskZMBhNwYhPrevkXR4I3gbmx', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9998, NULL, '2026-01-01 18:52:47', '2026-01-01 18:53:00'),
(17, 839, 209, 286, '82140d0e-6d25-4a11-8ec2-48e5057742b3', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 01:03:31', '2026-01-01 19:03:31', '2026-01-01 19:03:31'),
(18, 844, 209, 286, '2e776b74-2a22-4f6f-b5a3-cd6ff5559406', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 01:28:06', '2026-01-01 19:28:06', '2026-01-01 19:28:18'),
(19, 848, 209, 286, '8e13750b-4337-4ff0-a2b5-0df906bb76c3', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 10:19:13', '2026-01-02 04:19:13', '2026-01-02 04:19:17'),
(20, 851, 209, 286, 'KhrtStkvrEtQjcoEsAZeuLxgNVBK3q2eOaJvr8oQWsidSYI4Vo1Aix0gJSNW68wz', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9998, NULL, '2026-01-02 04:43:05', '2026-01-02 04:43:10'),
(21, 852, 208, 286, 'CuAHAzKg50wF8voF9b6U6XlmYGPQ0QVV8WwbXkXrb1Eyxx5i5todpM6KEl8yIqQq', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9998, NULL, '2026-01-02 05:47:05', '2026-01-02 05:47:11'),
(22, 853, 209, 286, '89cc3c2a-c0f3-4d93-8bb0-33e0739f246b', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 11:48:45', '2026-01-02 05:48:45', '2026-01-02 05:48:45'),
(23, 860, 209, 286, 'IMvQZ6hoxHg4QT0Cp6Jdgl9Ck2Np3uubOrpgrkEmJa0PFOg2XneYiQF00SlfBLgc', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-02 06:23:14', '2026-01-02 06:23:14'),
(24, 862, 208, 286, 'kTFIvZBjBsaqwfWeuGeKH9j1T4fApRcSurGz1oDsUZqOTF7i8B73ktsopvyZENoT', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 06:30:09', '2026-01-02 06:30:09'),
(25, 863, 209, 286, '5ae70656-d2d9-4273-8dbd-784d218fc4f9', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 12:35:44', '2026-01-02 06:35:44', '2026-01-02 06:35:44'),
(26, 864, 209, 286, 'joK6p1C7SDcRfM7DaXbQHYWOoXl6L4gTIerwPDOjOTqHO4h4vhgNr0kxF6gCnhGD', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-02 06:36:50', '2026-01-02 06:36:50'),
(27, 865, 208, 286, 'FLgNhNL7E4onoSaBgNOUM1mHfCpOBnbIAKBuP9gQe5KdXoGQJW4xynU3J3hC1nAg', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 06:47:51', '2026-01-02 06:47:51'),
(28, 867, 209, 286, '237Vv7XkzvemJfuc1AA3oLhq8Xo8okFEnfnLVQzV7nblDp2QavwizySze81YHloI', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9998, NULL, '2026-01-02 06:49:47', '2026-01-02 06:49:51'),
(29, 868, 208, 286, 'j9I9gsYn5XkwG9Cj8zMsKzw6M6JNXyF1yidmTUqKV8RtJ2IRlmHO60bMr8pVNTdk', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 06:50:33', '2026-01-02 06:50:33'),
(30, 870, 209, 286, 'f41241dc-4eb3-4ff2-bd1e-a725c21dbd3e', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 12:54:36', '2026-01-02 06:54:36', '2026-01-02 06:54:44'),
(31, 877, 208, 286, 'NZvWLDDeLruZDPgif1Bd0OuPl2PqkH888TpAVFoAr9pQr8IdrNpNGjHRcSqC3RE0', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 07:10:01', '2026-01-02 07:10:01'),
(32, 878, 209, 286, 'a8433085-0e65-4ddd-a83a-c909c675491d', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 13:11:11', '2026-01-02 07:11:11', '2026-01-02 07:11:11'),
(33, 887, 208, 286, 'CKlP7jEfM3cWOpMqAZqeXsRXDG91iaiYzIYWN67CbiZMiERKLokKmnd7lkaD1xd9', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9998, NULL, '2026-01-02 07:36:45', '2026-01-02 07:36:51'),
(34, 890, 209, 286, '90848097-097b-43c5-9c6b-6f575e233335', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 13:39:45', '2026-01-02 07:39:45', '2026-01-02 07:39:45'),
(35, 900, 209, 286, 'afb5c264-9eec-40b3-bd48-237fceef23a0', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 14:06:23', '2026-01-02 08:06:23', '2026-01-02 08:06:27'),
(36, 901, 208, 286, 'QmVbS9RhQV5y37HEvW2ZkjRSt6eHtQhtLAaHd3ijGKz7hitKM0n7NWPNDzOZhyCh', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 08:07:54', '2026-01-02 08:07:54'),
(37, 909, 209, 286, 'd5eb72b0-e59f-43d3-aca6-a8d849b14565', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 3, '2026-01-09 14:37:30', '2026-01-02 08:37:30', '2026-01-02 08:38:55'),
(38, 913, 209, 286, 'zXIjeSmgbXD5GLcZq0i8BFvQ9LlRqM2uv2Gr2orv7cVMb2bM6FNRt4mgNhiHCd3Z', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-02 08:42:57', '2026-01-02 08:42:57'),
(39, 914, 209, 286, '3b4607af-73a1-4441-8a73-296bef00a2a1', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 14:44:19', '2026-01-02 08:44:19', '2026-01-02 09:47:57'),
(40, 925, 209, 286, '1c66d152-5abc-4114-8987-53f2ebf204e6', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 17:51:53', '2026-01-02 11:51:53', '2026-01-02 11:52:05'),
(41, 926, 208, 286, 'TFPLFHpqQuQSBB9Dfoi34ASgOgssAfwt94ypBeYZENcrYjVhvDL7FLpuH0taAqYN', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 11:52:47', '2026-01-02 11:52:47'),
(42, 948, 209, 286, '9b749b14-b5ee-45e0-aac5-846747d3ef4c', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-10 13:10:51', '2026-01-03 07:10:51', '2026-01-03 07:10:57'),
(43, 949, 208, 286, 'cpukagB3I0cvd3tLAKTpPAVncJuQW6hctfJO0fIJAqPENKQzm7uho0RteeC65Wcr', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-03 07:11:33', '2026-01-03 07:11:33'),
(44, 958, 208, 308, '24f1edcf-f7f4-4d7d-8c6b-a22c2aa66a67', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2026-01-12 00:54:13', '2026-01-04 18:54:13', '2026-01-04 18:54:42'),
(45, 1008, 219, 307, 'AGLh9n2CPhlp678Tm97sux01C1yLpn2z7Z2PRT0pD6kzkn1p3n1iJiDpJczCgUnF', 'default_file', 9999, NULL, '2026-01-20 15:02:05', '2026-01-20 15:02:05'),
(46, 1014, 209, 458, 'ODOLfCkbdwkuACmPII4NlHUOHq11JWbSQlYiNqT3TyfACVLs7uWjXoD7vxum0oQh', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-22 04:58:27', '2026-01-22 04:58:27'),
(47, 1022, 221, 286, 'cktGJdUx8p90izhL51McGq2LpSerQqOBF05p0JOqG65fntofVbxPJ0BJQimagj9F', 'default_file', 9998, NULL, '2026-01-23 18:55:56', '2026-01-28 06:48:01'),
(48, 1025, 198, 292, '30MfPC2l2t7Qf1Dw5XARmQT9TD9ZywqUAkid2OqMcmei4cerE3FdDo0Rp1580oiP', 'default_file', 9999, NULL, '2026-01-24 13:25:19', '2026-01-24 13:25:19'),
(49, 1042, 209, 309, '89d30ff0-9fac-4518-89ff-aac4256dc823', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-02-01 21:00:10', '2026-01-25 15:00:10', '2026-01-25 15:00:13'),
(50, 1069, 208, 286, '74fc6760-f4d2-44d9-8f56-a7e215afe53c', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2026-02-04 12:57:38', '2026-01-28 06:57:38', '2026-01-28 06:57:47'),
(51, 1129, 208, 367, '1915d3cb-e781-4224-8d21-1a4299a7251a', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2026-03-03 12:03:17', '2026-02-24 06:03:17', '2026-02-24 06:03:22'),
(52, 1145, 227, 303, '5TN0K36le7qGV2yLycLw9iOQQRXhrRD1LU9bECzHGQMDhkiO5DS385JtyZtPgAqg', 'default_file', 9999, NULL, '2026-03-10 12:30:30', '2026-03-10 12:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_pixels`
--

INSERT INTO `ecom_pixels` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3, '1415716802873882', 1, '2024-11-19 19:00:59', '2026-02-23 06:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `employee_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `basic_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `address` text DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive','terminated') NOT NULL DEFAULT 'active',
  `notes` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `employee_id`, `name`, `email`, `phone`, `designation`, `department`, `joining_date`, `basic_salary`, `address`, `nid`, `bank_name`, `bank_account`, `status`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 17, 'EMP-06242', 'Jakir Hosain', 'vorarkhontho@gmail.com', '01403130512', 'চেয়ারম্যান', 'it', '2026-01-23', 8500.00, 'এস এম আলমগীর চেরাগালি, টঙ্গি\r\nBoro Bari, Noayar Hat', '766656', 'nbnbvbnv', '7777777', 'active', 'hgnhgj', 1, '2026-01-23 16:35:44', '2026-01-23 16:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `status` enum('present','absent','late','half_day','holiday') NOT NULL DEFAULT 'present',
  `notes` text DEFAULT NULL,
  `marked_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `attendance_date`, `check_in`, `check_out`, `status`, `notes`, `marked_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-01-23', '10:37:00', '22:38:00', 'present', 'hgghj', 1, '2026-01-23 16:38:08', '2026-01-23 16:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `employee_bonuses`
--

CREATE TABLE `employee_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `bonus_type` varchar(255) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `salary_month` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','paid') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` enum('sick','casual','annual','emergency','maternity','paternity','unpaid') NOT NULL DEFAULT 'casual',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_days` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `admin_note` text DEFAULT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_type`, `start_date`, `end_date`, `total_days`, `reason`, `status`, `admin_note`, `approved_by`, `approved_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'sick', '2026-01-23', '2026-01-23', 1, 'hbbmn', 'pending', NULL, NULL, NULL, 1, '2026-01-23 16:38:25', '2026-01-23 16:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `salary_month` varchar(255) NOT NULL,
  `total_days` int(11) NOT NULL,
  `present_days` int(11) NOT NULL DEFAULT 0,
  `absent_days` int(11) NOT NULL DEFAULT 0,
  `leave_days` int(11) NOT NULL DEFAULT 0,
  `working_days` int(11) NOT NULL DEFAULT 0,
  `basic_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `allowance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `deduction` decimal(14,2) NOT NULL DEFAULT 0.00,
  `bonus` decimal(14,2) NOT NULL DEFAULT 0.00,
  `overtime` decimal(14,2) NOT NULL DEFAULT 0.00,
  `gross_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `net_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `status` enum('pending','calculated','paid') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `calculated_by` int(10) UNSIGNED DEFAULT NULL,
  `calculated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salaries`
--

INSERT INTO `employee_salaries` (`id`, `employee_id`, `salary_month`, `total_days`, `present_days`, `absent_days`, `leave_days`, `working_days`, `basic_salary`, `allowance`, `deduction`, `bonus`, `overtime`, `gross_salary`, `net_salary`, `status`, `notes`, `calculated_by`, `calculated_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-01', 31, 1, 0, 0, 1, 8500.00, 0.00, 0.00, 0.00, 0.00, 274.19, 274.19, 'calculated', NULL, 1, '2026-01-23 16:38:36', '2026-01-23 16:38:36', '2026-01-23 16:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payments`
--

CREATE TABLE `employee_salary_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `salary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payment_month` varchar(255) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `payment_method` enum('cash','bank_transfer','bkash','nagad','rocket','check') NOT NULL DEFAULT 'bank_transfer',
  `transaction_id` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('pending','paid','failed') NOT NULL DEFAULT 'pending',
  `paid_by` int(10) UNSIGNED DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `expense_date` date NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `title`, `amount`, `expense_date`, `category`, `note`, `fund_transaction_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'চা খরচ', 300.00, '2026-02-11', 'সুধু চা বিল', 'সুধু চা বিল', 69, 1, NULL, '2026-02-11 12:12:13', '2026-02-11 12:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `expense_logs`
--

CREATE TABLE `expense_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` enum('edit','delete') NOT NULL,
  `old_title` varchar(255) DEFAULT NULL,
  `new_title` varchar(255) DEFAULT NULL,
  `old_amount` decimal(15,2) DEFAULT NULL,
  `new_amount` decimal(15,2) DEFAULT NULL,
  `old_expense_date` date DEFAULT NULL,
  `new_expense_date` date DEFAULT NULL,
  `old_category` varchar(255) DEFAULT NULL,
  `new_category` varchar(255) DEFAULT NULL,
  `old_note` text DEFAULT NULL,
  `new_note` text DEFAULT NULL,
  `fund_balance_before` decimal(15,2) NOT NULL,
  `fund_balance_after` decimal(15,2) NOT NULL,
  `description` text DEFAULT NULL,
  `performed_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_logs`
--

INSERT INTO `expense_logs` (`id`, `expense_id`, `action`, `old_title`, `new_title`, `old_amount`, `new_amount`, `old_expense_date`, `new_expense_date`, `old_category`, `new_category`, `old_note`, `new_note`, `fund_balance_before`, `fund_balance_after`, `description`, `performed_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'delete', 'ভাত খেয়েছি', NULL, 300.00, NULL, '2025-11-26', NULL, 'অফিস খরচ', NULL, 'ভাত খেয়েছি', NULL, -37089.00, -36789.00, 'Expense deleted: \'ভাত খেয়েছি\' (300.00). Fund balance changed from -37089 to -36789 (+300)', 1, '2026-01-21 18:29:53', '2026-01-21 18:29:53'),
(2, NULL, 'delete', 'চা খরচ', NULL, 100.00, NULL, '2025-11-26', NULL, 'অফিস খরচ', NULL, 'চা খেয়েছি', NULL, 66101.00, 66201.00, 'Expense deleted: \'চা খরচ\' (100.00). Fund balance changed from 66101 to 66201 (+100)', 1, '2026-02-11 12:08:22', '2026-02-11 12:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_capi_settings`
--

CREATE TABLE `facebook_capi_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pixel_id` varchar(255) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `test_event_code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_capi_settings`
--

INSERT INTO `facebook_capi_settings` (`id`, `pixel_id`, `access_token`, `test_event_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '1755255695877942', 'EAAPgtn2UmeYBQjQMSr5kTHYQKUZAgpHcoqVmLrmodqt7dDBnQfPUxMzZA3PJD647sKQ770qc9raen9o6AimSCPgiIQCanfOUwfW96D1Jm3qcr0fugZB0Kn3KB9Sbo06YlkEdwK9GwMRNJF8MkVbW4f2NunKZBCDA0DAcqlLUgb4DMIBfAx3AU8J16qiKVAZDZD', NULL, 1, '2026-01-27 09:08:35', '2026-02-23 06:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_page_settings`
--

CREATE TABLE `facebook_page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` varchar(255) DEFAULT NULL,
  `page_access_token` text DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `auto_post_new_products` tinyint(1) NOT NULL DEFAULT 0,
  `post_template` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_page_settings`
--

INSERT INTO `facebook_page_settings` (`id`, `page_id`, `page_access_token`, `page_name`, `auto_post_new_products`, `post_template`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 0, NULL, '2026-03-14 04:03:28', '2026-03-14 04:03:28');

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
-- Table structure for table `fund_transactions`
--

CREATE TABLE `fund_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `direction` enum('in','out') NOT NULL,
  `source` varchar(50) NOT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `note` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund_transactions`
--

INSERT INTO `fund_transactions` (`id`, `direction`, `source`, `source_id`, `amount`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'in', 'sale', 531, 190.00, 'Order complete (#48079) via process page', 1, NULL, '2025-11-25 16:37:07', '2025-11-25 16:37:07'),
(2, 'in', 'manual_add', NULL, 1000.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, NULL, '2025-11-25 17:25:40', '2025-11-25 17:25:40'),
(3, 'out', 'withdraw', NULL, 200.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, NULL, '2025-11-25 17:25:53', '2025-11-25 17:25:53'),
(4, 'in', 'sale', 535, 190.00, 'Order complete (#79768) via process page', 1, NULL, '2025-11-25 17:26:24', '2025-11-25 17:26:24'),
(5, 'out', 'withdraw', NULL, 400.00, 'বাংলাদেশ', 1, NULL, '2025-11-25 18:23:23', '2025-11-25 18:23:23'),
(6, 'in', 'manual_add', NULL, 800.00, 'বাংলাদেশ', 1, NULL, '2025-11-25 18:23:33', '2025-11-25 18:23:33'),
(7, 'in', 'sale', 534, 190.00, 'Order complete (#92038) via process page', 1, NULL, '2025-11-25 18:32:19', '2025-11-25 18:32:19'),
(9, 'out', 'supplier_payment', 1, 200.00, 'Purchase payment: PUR-1764103831', 1, NULL, '2025-11-25 20:51:00', '2025-11-25 20:51:00'),
(10, 'out', 'supplier_payment', 2, 100.00, 'Due payment for purchase: PUR-1764103831', 1, NULL, '2025-11-25 20:51:49', '2025-11-25 20:51:49'),
(11, 'out', 'supplier_payment', 3, 200.00, 'Due payment for purchase: PUR-1764103831', 1, NULL, '2025-11-25 20:53:07', '2025-11-25 20:53:07'),
(12, 'in', 'sale', 532, 310.00, 'Order complete (#67341) via process page', 1, NULL, '2025-11-25 21:46:45', '2025-11-25 21:46:45'),
(13, 'in', 'sale', 536, 184.00, 'Order complete (#30891) via process page', 1, NULL, '2025-11-25 21:50:45', '2025-11-25 21:50:45'),
(14, 'in', 'sale', 537, 234.00, 'Order complete (#23292) via process page', 1, NULL, '2025-11-25 21:54:30', '2025-11-25 21:54:30'),
(16, 'in', 'sale', 562, 2670.00, 'Order complete (#42872) via process page', 1, NULL, '2025-11-26 07:48:52', '2025-11-26 07:48:52'),
(17, 'in', 'sale', 562, 2600.00, 'Order complete (#42872) via process page', 1, NULL, '2025-11-26 07:53:38', '2025-11-26 07:53:38'),
(18, 'in', 'sale', 563, 240.00, 'Order complete (#33453) via process page', 1, NULL, '2025-11-26 09:26:03', '2025-11-26 09:26:03'),
(19, 'out', 'withdraw', NULL, 100.00, 'Rate', 1, NULL, '2025-11-26 17:25:59', '2025-11-26 17:25:59'),
(20, 'in', 'manual_add', NULL, 120.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, NULL, '2025-11-26 17:26:20', '2025-11-26 17:26:20'),
(21, 'in', 'sale', 587, 190.00, 'Order complete (#52269) via process page', 1, NULL, '2025-11-27 18:58:44', '2025-11-27 18:58:44'),
(22, 'in', 'sale', 597, 1200.00, 'Order complete (#37424) via process page', 1, NULL, '2025-11-28 05:03:52', '2025-11-28 05:03:52'),
(23, 'in', 'sale', 598, 120.00, 'Order complete (#78217) via process page', 1, NULL, '2025-11-28 05:41:30', '2025-11-28 05:41:30'),
(24, 'in', 'sale', 599, 1270.00, 'Order complete (#87237) via process page', 1, NULL, '2025-11-28 05:42:30', '2025-11-28 05:42:30'),
(25, 'in', 'sale', 607, 3900.00, 'Order complete (#55183) via process page', 1, NULL, '2025-11-28 09:28:56', '2025-11-28 09:28:56'),
(26, 'in', 'sale', 609, 1270.00, 'Order complete (#76609) via process page', 1, NULL, '2025-11-28 10:17:16', '2025-11-28 10:17:16'),
(27, 'in', 'sale', 612, 1270.00, 'Order complete (#56605) via process page', 1, NULL, '2025-11-28 10:22:07', '2025-11-28 10:22:07'),
(28, 'in', 'sale', 612, 1200.00, 'Order complete (#56605) via process page', 1, NULL, '2025-11-28 10:22:35', '2025-11-28 10:22:35'),
(29, 'in', 'sale', 634, 6520.00, 'Order complete (#98366) via process page', 1, NULL, '2025-11-30 02:28:43', '2025-11-30 02:28:43'),
(30, 'in', 'sale', 643, 2670.00, 'Order complete (#44844) via process page', 1, NULL, '2025-12-01 19:13:03', '2025-12-01 19:13:03'),
(31, 'in', 'manual_add', NULL, 1000.00, NULL, 1, NULL, '2025-12-05 13:21:57', '2025-12-05 13:21:57'),
(32, 'in', 'manual_add', NULL, 500.00, NULL, 1, NULL, '2025-12-05 13:22:03', '2025-12-05 13:22:03'),
(33, 'out', 'withdraw', NULL, 1000.00, NULL, 1, NULL, '2025-12-05 13:22:12', '2025-12-05 13:22:12'),
(34, 'in', 'sale', 675, 1970.00, 'Order complete (#14082) via process page', 1, NULL, '2025-12-06 13:57:14', '2025-12-06 13:57:14'),
(35, 'in', 'sale', 714, 12070.00, 'Order complete (#67191)', 1, NULL, '2025-12-11 02:55:01', '2025-12-11 02:55:01'),
(36, 'out', 'supplier_payment', 4, 1000.00, 'Purchase payment: PUR-1765430839', 1, NULL, '2025-12-11 05:28:10', '2025-12-11 05:28:10'),
(37, 'in', 'manual_add', NULL, 5323.00, '4222', 1, NULL, '2025-12-11 05:46:35', '2025-12-11 05:46:35'),
(38, 'out', 'withdraw', NULL, 2000.00, NULL, 1, NULL, '2025-12-11 12:40:55', '2025-12-11 12:40:55'),
(39, 'out', 'supplier_payment', 5, 800.00, 'Due payment: PUR-1765430839', 1, NULL, '2025-12-13 13:34:30', '2025-12-13 13:34:30'),
(40, 'in', 'sale', 729, 10070.00, 'Order complete (#70206) via process page', 1, NULL, '2025-12-14 15:19:25', '2025-12-14 15:19:25'),
(41, 'in', 'sale', 727, 200.00, 'Order complete (#69327) via process page', 1, NULL, '2025-12-14 15:19:50', '2025-12-14 15:19:50'),
(42, 'in', 'sale', 722, 150.00, 'Order complete (#89035) via process page', 1, NULL, '2025-12-14 15:20:01', '2025-12-14 15:20:01'),
(43, 'out', 'supplier_payment', 6, 200.00, 'Due payment: PUR-1764103831', 1, NULL, '2025-12-15 07:12:12', '2025-12-15 07:12:12'),
(44, 'in', 'sale', 734, 0.00, 'Order complete (#22732) via process page', 1, NULL, '2025-12-16 07:27:58', '2025-12-16 07:27:58'),
(45, 'in', 'sale', 744, 320.00, 'Order complete (#89908) via process page', 1, NULL, '2025-12-17 17:44:15', '2025-12-17 17:44:15'),
(46, 'in', 'sale', 750, 0.00, 'Order complete (#87630) via process page', 13, NULL, '2025-12-18 15:27:29', '2025-12-18 15:27:29'),
(47, 'in', 'sale', 753, 10070.00, 'Order complete (#27662)', 1, NULL, '2025-12-18 18:04:07', '2025-12-18 18:04:07'),
(48, 'in', 'sale', 758, 0.00, 'Order complete (#33965) via process page', 13, NULL, '2025-12-19 09:10:27', '2025-12-19 09:10:27'),
(49, 'in', 'sale', 757, 1100.00, 'Order complete (#50427) via process page', 13, NULL, '2025-12-19 09:13:07', '2025-12-19 09:13:07'),
(50, 'out', 'supplier_payment', 7, 5000.00, 'Purchase payment: PUR-1766135846', 13, NULL, '2025-12-19 09:18:17', '2025-12-19 09:18:17'),
(51, 'out', 'supplier_payment', 8, 19300.00, 'Due payment: PUR-1764103831', 13, NULL, '2025-12-19 09:19:17', '2025-12-19 09:19:17'),
(52, 'out', 'supplier_payment', 9, 61200.00, 'Due payment: PUR-1765430839', 13, NULL, '2025-12-19 09:19:27', '2025-12-19 09:19:27'),
(54, 'out', 'supplier_payment', 11, 16000.00, 'Due payment: PUR-1766135846', 13, 1, '2025-12-19 09:20:02', '2026-01-21 18:20:21'),
(58, 'in', 'sale', 1020, 130.00, 'Order complete (#15643)', 1, NULL, '2026-01-22 18:48:04', '2026-01-22 18:48:04'),
(59, 'in', 'sale', 1022, 570.00, 'Order complete (#35907) via process page', 1, NULL, '2026-01-23 18:56:04', '2026-01-23 18:56:04'),
(60, 'in', 'vendor_commission', 1022, 50.00, 'Vendor commission from Order #35907 - Product: Jononi Madical Hall', 1, NULL, '2026-01-23 18:56:04', '2026-01-23 18:56:04'),
(61, 'in', 'sale', 1025, 190.00, 'Order complete (#62375) via process page', 1, NULL, '2026-01-24 13:25:29', '2026-01-24 13:25:29'),
(62, 'in', 'sale', 1042, 2200.00, 'Order complete (#96718) via process page', 1, NULL, '2026-01-25 15:03:40', '2026-01-25 15:03:40'),
(63, 'in', 'manual_add', NULL, 100000.00, NULL, 1, NULL, '2026-01-25 15:58:55', '2026-01-25 15:58:55'),
(64, 'out', 'reseller_withdrawal', 2, 170.00, 'Reseller withdrawal approved - Creative Shoper - Amount: ৳170.00', 1, NULL, '2026-01-25 15:59:15', '2026-01-25 15:59:15'),
(65, 'in', 'sale', 1043, 970.00, 'Order complete (#13771) via process page', 1, NULL, '2026-01-26 09:59:22', '2026-01-26 09:59:22'),
(66, 'in', 'vendor_commission', 1043, 90.00, 'Vendor commission from Order #13771 - Product: 3 in 1 Travel Pillow Set', 1, NULL, '2026-01-26 09:59:22', '2026-01-26 09:59:22'),
(67, 'out', 'refund', 2, 500.00, 'Refund approved for Order #35907 - Refund ID: REF-91843', 1, NULL, '2026-01-26 18:24:26', '2026-01-26 18:24:26'),
(68, 'out', 'refund', 1, 740.00, 'Refund approved for Order #28117 - Refund ID: REF-23874', 1, NULL, '2026-01-26 18:28:51', '2026-01-26 18:28:51'),
(69, 'out', 'expense', 3, 300.00, 'Expense: চা খরচ - সুধু চা বিল', 1, NULL, '2026-02-11 12:12:13', '2026-02-11 12:12:13'),
(70, 'in', 'sale', 1141, 1420.00, 'Order complete (#65067)', 1, NULL, '2026-03-06 13:19:32', '2026-03-06 13:19:32'),
(71, 'in', 'sale', 1140, 10570.00, 'Order complete (#69923)', 1, NULL, '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(72, 'in', 'vendor_commission', 1140, 1050.00, 'Vendor commission from Order #69923 - Product: Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 1, NULL, '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(73, 'in', 'sale', 1139, 2670.00, 'Order complete (#63481)', 1, NULL, '2026-03-06 13:44:01', '2026-03-06 13:44:01'),
(74, 'in', 'sale', 1141, 1420.00, 'Order complete (#65067)', 1, NULL, '2026-03-07 05:29:49', '2026-03-07 05:29:49'),
(75, 'in', 'sale', 1145, 870.00, 'Order complete (#73104) via process page', 1, NULL, '2026-03-10 12:30:51', '2026-03-10 12:30:51'),
(76, 'in', 'vendor_commission', 1145, 80.00, 'Vendor commission from Order #73104 - Product: Paragon Brown Egg 1 Dozen (Bundle of 3)', 1, NULL, '2026-03-10 12:30:51', '2026-03-10 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `fund_transaction_logs`
--

CREATE TABLE `fund_transaction_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` enum('edit','delete') NOT NULL,
  `old_direction` enum('in','out') DEFAULT NULL,
  `new_direction` enum('in','out') DEFAULT NULL,
  `old_amount` decimal(15,2) DEFAULT NULL,
  `new_amount` decimal(15,2) DEFAULT NULL,
  `balance_before` decimal(15,2) NOT NULL,
  `balance_after` decimal(15,2) NOT NULL,
  `old_note` varchar(255) DEFAULT NULL,
  `new_note` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `performed_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_transaction_logs`
--

INSERT INTO `fund_transaction_logs` (`id`, `fund_transaction_id`, `action`, `old_direction`, `new_direction`, `old_amount`, `new_amount`, `balance_before`, `balance_after`, `old_note`, `new_note`, `description`, `performed_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'delete', 'in', NULL, 71.00, NULL, -38018.00, -38089.00, 'Order complete (#45153) via process page', NULL, 'Transaction deleted: in 71.00. Balance changed from -38018 to -38089 (-71)', 1, '2026-01-21 18:17:24', '2026-01-21 18:17:24'),
(2, 54, 'edit', 'out', 'out', 17000.00, 16000.00, -38089.00, -37089.00, 'Due payment: PUR-1766135846', 'Due payment: PUR-1766135846', 'Amount changed from 17000.00 to 16000 (-1000). Balance changed from -38089 to -37089 (+1000)', 1, '2026-01-21 18:20:21', '2026-01-21 18:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hot_deal_end_date` date DEFAULT NULL,
  `flash_sale_end_date` date DEFAULT NULL,
  `top_headline` text DEFAULT NULL,
  `checkout_note` text DEFAULT NULL,
  `order_policy` text DEFAULT NULL,
  `show_all_products` int(11) NOT NULL DEFAULT 1,
  `show_category_wise_products` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL,
  `demo_mode` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Enabled, 0=Disabled',
  `reseller_enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Enabled, 0=Disabled',
  `reseller_deposit_min` decimal(14,2) DEFAULT 100.00,
  `reseller_deposit_max` decimal(14,2) DEFAULT 1000000.00,
  `reseller_wallet_min_balance` decimal(14,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `og_baner` varchar(255) DEFAULT NULL,
  `fraud_api_key` longtext DEFAULT NULL,
  `duplicate_order_api_key` varchar(255) DEFAULT NULL,
  `fraud_secret_key` longtext DEFAULT NULL,
  `facebook_page_username` text DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secodery_color` varchar(255) DEFAULT NULL,
  `footer_color` varchar(255) DEFAULT NULL,
  `copyright_color` varchar(255) DEFAULT NULL,
  `order_limit_time` int(11) DEFAULT 48 COMMENT 'Hours',
  `order_limit_qty` int(11) DEFAULT 2 COMMENT 'Quantity Limit',
  `footer_about_text` text DEFAULT NULL,
  `google_play_link` varchar(255) DEFAULT NULL,
  `app_store_link` varchar(255) DEFAULT NULL,
  `update_api_url` varchar(255) DEFAULT NULL,
  `update_script_name` varchar(100) DEFAULT NULL,
  `app_version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `hot_deal_end_date`, `flash_sale_end_date`, `top_headline`, `checkout_note`, `order_policy`, `show_all_products`, `show_category_wise_products`, `status`, `demo_mode`, `vendor_enabled`, `reseller_enabled`, `reseller_deposit_min`, `reseller_deposit_max`, `reseller_wallet_min_balance`, `created_at`, `updated_at`, `og_baner`, `fraud_api_key`, `duplicate_order_api_key`, `fraud_secret_key`, `facebook_page_username`, `primary_color`, `secodery_color`, `footer_color`, `copyright_color`, `order_limit_time`, `order_limit_qty`, `footer_about_text`, `google_play_link`, `app_store_link`, `update_api_url`, `update_script_name`, `app_version`) VALUES
(2, 'VISION Mart', 'public/uploads/settings/1773432373-1770954584-1767435463-footer-logo.webp', 'public/uploads/settings/1773432374-1770954584-1767435463-logo.webp', 'public/uploads/settings/1773432374-1770954585-1767431051-vision-favicon-(1).webp', NULL, '<b>sadf</b>', '2027-11-10', '2027-11-09', 'VISION Mart অনলাইন শপে আপনাকে স্বাগতম ||\r\nঅনলাইনে আস্থা ও বিশ্বস্ততার সাথে  সারা বাংলাদেশে হোম ডেলিভারী দিয়ে থাকি\r\nঅর্ডার করতে অগ্রিম টাকা দিতে হবে না\r\nএ্যাডভান্স বিকাশ পেমেন্টে ৫% ডিসকাউন্ট\r\n৩-৫ দিনে সারাদেশে হোম ডেলিভারী দেওয়া হয়\r\nক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে\r\nধন্যবাদ', '<p class=\"text-danger\" style=\"color: rgb(241, 85, 108) !important;\">বিঃদ্রঃ- দয়া করে ১০০% নিশ্চিত হয়ে অর্ডার করবেন। ছবি এবং বর্ণনার সাথে পণ্যের মিল থাকা সত্যেও আপনি পণ্য গ্রহন করতে না চাইলে, কুরিয়ার চার্জ ১২০ টাকা কুরিয়ার ডেলিভারি ম্যানকে প্রদান করে পণ্য সাথে সাথে রিটার্ন করবেন। অযথা অর্ডার করা থেকে বিরত থাকুন, কারন আপনার মোবাইল নাম্বার, এড্রেস এবং ডিভাইস আইপি নাম্বার দেখা যায় ।</p><p class=\"text-danger\" style=\"color: rgb(241, 85, 108) !important;\"><span style=\"font-weight: bolder;\">একই ডেলিভারি চার্জে আরো প্রোডাক্ট নিতে&nbsp;<a href=\"http://localhost/shop\" style=\"color: blue;\">ক্লিক করুন</a></span></p>', '<div><div><span style=\"font-weight: bolder; background-color: rgb(255, 255, 0);\">বিক্রিত পণ্য ফেরত নেয়া হয় না তবে নিন্ম লিখিত ক্ষেত্রে পণ্য সার্ভিসিং পন্য পরিবর্তন বা মুল্য ফেরত প্রযোজ্য।</span></div><ul><li>আপনার যত প্রশ্ন আছে তা বর্ননার সাথে মিলিয়ে অথবা আমাদের কাছ থেকে জেনে পন্য অর্ডার করুন।</li><li>ছবি এবং বর্ণনার সাথে পন্যের মিল থাকলে পণ্য ফেরত নেয়া হবে না ।</li><li>তবে আপনি চাইলে আপনার গ্রহন করা পন্যের সম মুল্যের বা বেশি মুল্যের পণ্য নিতে পারবেন (যে টাকা বেশি হবে তা প্রদান করতে হবে ) । কম মুল্যের পণ্য নেয়া যাবে না ।</li><li>পণ্য আনা নেয়ার খরচ আপনাকে দিতে হবে।</li><li>যে সকল পন্যে ওয়ারেন্টি আছে তার ওয়ারেন্টি সার্ভিস আমরা প্রদান করবো। তবে কিছু কিছু ক্ষেত্রে পন্যের ব্রান্ড আপনাকে সার্ভিস প্রদান করবে তবে সে ক্ষেত্রে আপনার নিকটস্থ সার্ভিস পয়েন্ট থেকে সার্ভিস নিতে পারবেন।</li><li>পণ্য সার্ভিস করতে যাওয়া আসা বা পাঠানো এবং রিটার্ন করার খরজ আপনাকে বহন করতে হবে।</li><li>১০০% নিশ্চিত হয়ে অর্ডার করুন, কোন কিছু জানার থাকলে কল করুন। Hotline :&nbsp; +8801849832178</li></ul></div>', 1, 1, 1, 0, 1, 1, 100.00, 1000000.00, 10000.00, '2023-01-21 12:01:07', '2026-03-13 20:06:14', 'public/uploads/settings/1773432374-1770954584-17674415021766070034176534166610.webp', 'YtqHDyODWXlRF3RFv5bsmzp4K5eCBb6SEdjcXfg02WdAGTkjUeMVzqKB1CuV', NULL, 'fdf354a50117f96f470c21e09c357a1f92708ab25e059bc3', 'official.creativedesign', '#be0318', '#000000', '#131a22', '#000000', 24, 100, 'Your digital partner for business. We believe in quality and customer satisfaction.', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.creativedesign.com.bd', 'Gadgetbd', '9.0');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(4, 'GTM-TTDNCP8L', 1, '2026-03-09 11:06:43', '2026-03-09 11:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `incomplete_orders`
--

CREATE TABLE `incomplete_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`items`)),
  `product_image` varchar(255) DEFAULT NULL,
  `product_link` varchar(255) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomplete_orders`
--

INSERT INTO `incomplete_orders` (`id`, `name`, `phone`, `address`, `items`, `product_image`, `product_link`, `total_amount`, `created_at`, `updated_at`) VALUES
(830, 'Md jemi', '01858989394', 'cfggfgfhhg', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', NULL, NULL, 250.00, '2026-01-07 17:35:51', '2026-01-07 17:35:51'),
(838, 'AHAMMED IMTIAZ', '01717692557', 'Handial Chatmohar', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', NULL, NULL, 130.00, '2026-01-09 01:50:10', '2026-01-09 01:50:10'),
(839, 'AHAMMED IMTIAZ', '01717692557', 'Handial Chatmohar', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', NULL, NULL, 250.00, '2026-01-09 01:50:14', '2026-01-09 01:50:14'),
(840, 'AHAMMED IMTIAZ', '01717692557', 'Handial Chatmohar', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', NULL, NULL, 200.00, '2026-01-09 01:50:24', '2026-01-09 01:50:24'),
(841, 'AHAMMED IMTIAZ', '01717692557', 'Handial Chatmohar', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', NULL, NULL, 250.00, '2026-01-09 01:50:28', '2026-01-09 01:50:28'),
(902, 'আল মামুন', '01740775584', 'কাঁচকুড়া শিক্ষা কমপ্লেক্স, কাঁচকুড়া, উত্তরখান, ঢাকা-১২৩০।', '[{\"id\":181,\"name\":\"JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports\",\"qty\":1,\"price\":2600,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1759501963-1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp\",\"link\":\"#\"},{\"id\":181,\"name\":\"JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports\",\"qty\":1,\"price\":2600,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1759501963-1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp\",\"link\":\"#\"},{\"id\":217,\"name\":\"TV Box\",\"qty\":1,\"price\":2200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1766668528-tvb.png\",\"link\":\"#\"}]', NULL, NULL, 7400.00, '2026-01-19 09:23:34', '2026-01-19 09:23:34'),
(903, 'আল মামুন', '01740775584', 'কাঁচকুড়া শিক্ষা কমপ্লেক্স, কাঁচকুড়া, উত্তরখান, ঢাকা-১২৩০।', '[{\"id\":181,\"name\":\"JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports\",\"qty\":1,\"price\":2600,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1759501963-1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp\",\"link\":\"#\"},{\"id\":181,\"name\":\"JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports\",\"qty\":1,\"price\":2600,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1759501963-1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp\",\"link\":\"#\"},{\"id\":217,\"name\":\"TV Box\",\"qty\":1,\"price\":2200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1766668528-tvb.png\",\"link\":\"#\"}]', NULL, NULL, 7470.00, '2026-01-19 09:23:38', '2026-01-19 09:23:38'),
(929, 'test', '01611458555', 'test', '[{\"id\":210,\"name\":\"Samsung A0724\",\"qty\":1,\"price\":1,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', NULL, NULL, 71.00, '2026-01-22 14:23:38', '2026-01-22 14:23:38'),
(932, 'MONIRA AKTER', '01', 'Modhumita Road', '[{\"id\":220,\"name\":\"The only reason\",\"qty\":1,\"price\":2877,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1769092647-img_2323.jpeg\",\"link\":\"#\"}]', NULL, NULL, 2877.00, '2026-01-22 14:41:36', '2026-01-22 14:41:36'),
(934, 'Voice Of islamd', '01825428578', 'Dsaredr', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', NULL, NULL, 130.00, '2026-01-22 16:06:01', '2026-01-22 16:06:01'),
(935, 'Voice Of islamd', '01825428578', 'Dsaredr', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', NULL, NULL, 200.00, '2026-01-22 16:06:04', '2026-01-22 16:06:04'),
(937, 'MONIRA AKTER', '0', 'Modhumita Road', '[{\"id\":220,\"name\":\"The only reason\",\"qty\":1,\"price\":2877,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1769092647-img_2323.jpeg\",\"link\":\"#\"}]', NULL, NULL, 2877.00, '2026-01-22 18:26:38', '2026-01-22 18:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ip_blocks`
--

INSERT INTO `ip_blocks` (`id`, `ip_no`, `reason`, `created_at`, `updated_at`) VALUES
(9, '37.111.228.119', 'ফেইক অর্ডার', '2026-01-26 17:39:18', '2026-01-26 17:39:18');

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
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(28, '2023_01_11_114621_create_products_table', 10),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29),
(80, '2025_10_02_000001_add_fraud_and_courier_rates_to_orders_table', 30),
(81, '2025_10_02_191959_add_courier_and_fraud_rates_to_orders_table', 31),
(82, '2026_01_20_131201_create_vendors_table', 32),
(83, '2026_01_20_131657_add_vendor_id_to_products_table', 32),
(84, '2026_01_20_140555_add_vendor_id_to_users_table', 32),
(85, '2026_01_20_142857_add_image_default_to_users_table', 33),
(86, '2026_01_20_150134_add_approval_status_to_products_table', 34),
(87, '2026_01_21_100000_add_vendor_commission_to_vendors_table', 35),
(88, '2026_01_21_100100_add_vendor_commission_fields_to_order_details_table', 35),
(89, '2026_01_21_100200_create_vendor_wallets_table', 35),
(90, '2026_01_21_100300_create_vendor_wallet_transactions_table', 35),
(91, '2026_01_21_100400_create_vendor_withdrawals_table', 35),
(92, '2026_01_20_210934_add_verification_fields_to_vendors_table', 36),
(93, '2026_01_20_212001_add_self_image_to_vendors_table', 37),
(94, '2026_01_20_224953_add_role_and_reseller_fields', 38),
(95, '2026_01_20_225329_add_shop_name_to_users_table', 38),
(96, '2026_01_20_230134_add_wallet_balance_to_users_table', 38),
(97, '2026_01_21_000057_create_reseller_withdrawals_table', 39),
(98, '2026_01_21_001318_add_verification_fields_to_users_table', 40),
(99, '2026_01_21_195356_add_duplicate_order_api_key_to_general_settings_table', 41),
(100, '2026_01_21_195534_add_duplicate_order_fields_to_orders_table', 42),
(101, '2026_01_21_232100_add_vendor_reseller_enable_fields_to_general_settings_table', 43),
(102, '2026_01_21_234656_add_updated_by_to_fund_transactions_table', 44),
(106, '2026_01_21_235207_create_fund_transaction_logs_table', 45),
(107, '2026_01_22_002402_create_expense_logs_table', 46),
(108, '2026_01_22_003142_create_purchase_logs_table', 47),
(109, '2026_01_23_204354_create_employees_table', 48),
(110, '2026_01_23_204359_create_employee_attendances_table', 49),
(111, '2026_01_23_204404_create_employee_leaves_table', 50),
(112, '2026_01_23_204409_create_employee_salaries_table', 51),
(113, '2026_01_23_204414_create_employee_bonuses_table', 52),
(114, '2026_01_23_204419_create_employee_salary_payments_table', 53),
(115, '2026_01_23_163010_add_wholesale_fields_to_products_table', 54),
(116, '2026_01_23_164530_create_product_wholesale_prices_table', 55),
(117, '2026_01_23_172635_add_max_quantity_to_product_wholesale_prices_table', 56),
(118, '2026_01_23_173102_add_stock_to_product_wholesale_prices_table', 57),
(119, '2026_01_23_152426_create_refunds_table', 58),
(120, '2026_01_23_160817_add_vendor_id_to_refunds_table', 59),
(121, '2026_01_23_161428_create_wholesale_products_table', 60),
(122, '2026_01_23_210502_add_foreign_keys_to_employees_table', 60),
(123, '2026_01_24_000000_add_reseller_wallet_credited_to_orders_table', 60),
(124, '2026_01_25_223527_add_forgot_field_to_vendors_table', 61),
(125, '2025_01_27_000000_add_client_fields_to_courierapis_table', 62),
(126, '2025_01_27_000001_add_username_password_to_courierapis_table', 63),
(127, '2025_01_27_000002_add_courier_fields_to_orders_table', 64),
(128, '2026_01_27_130254_add_aamarpay_payment_gateway_entry', 65),
(129, '2026_01_27_133417_add_free_delivery_to_products_table', 66),
(130, '2026_01_27_000000_create_facebook_capi_settings_table', 67),
(131, '2026_01_31_000000_add_footer_about_text_to_general_settings_table', 68),
(132, '2026_01_31_000001_create_newsletter_subscribers_table', 69),
(133, '2026_01_31_000002_add_app_store_links_to_general_settings_table', 70),
(135, '2026_02_09_172327_add_webhook_url_to_courierapis_table', 71),
(136, '2026_02_09_200000_create_versions_table', 72),
(137, '2026_02_11_000000_add_demo_mode_to_general_settings_table', 73),
(138, '2026_02_11_000000_add_script_update_fields_to_general_settings_table', 74),
(139, '2026_02_09_210000_create_carts_table', 75),
(140, '2026_03_07_183029_create_stolen_reports_table', 76),
(141, '2026_03_07_202001_create_tiktok_pixels_table', 77),
(142, '2026_03_07_204138_add_color_size_to_productimages_table', 78),
(143, '2026_03_07_231001_add_index_to_productimages_for_product_details', 79),
(144, '2026_03_07_120000_add_page_builder_to_campaigns_table', 80),
(145, '2026_03_07_210000_add_date_column_to_campaigns_table', 81),
(146, '2026_03_07_220000_add_review_and_legacy_columns_to_campaigns_table', 82),
(147, '2026_03_09_000001_create_cron_job_settings_table', 83),
(148, '2026_03_09_100000_add_video_upload_to_products_table', 84),
(149, '2026_03_10_000001_create_reseller_deposits_table', 85),
(150, '2026_03_10_000002_add_reseller_deposit_settings_to_general_settings', 86),
(151, '2026_03_10_000003_create_reseller_wallet_transactions_table', 87),
(152, '2026_03_10_000004_add_reseller_wallet_min_balance_to_general_settings', 88),
(153, '2026_03_11_000001_create_reseller_landing_pages_table', 89),
(154, '2026_03_11_000002_create_reseller_landing_products_table', 90),
(155, '2026_03_11_000003_add_unique_to_reseller_landing_products', 90),
(156, '2026_03_12_000001_add_social_newsletter_to_reseller_landing_pages', 91),
(157, '2026_03_12_000002_create_reseller_landing_newsletter_subscribers_table', 92),
(158, '2026_03_12_100000_add_favicon_to_reseller_landing_pages', 93),
(159, '2026_03_12_110000_add_scrolling_text_to_reseller_landing_pages', 94),
(160, '2026_03_12_120000_create_reseller_landing_contact_messages_table', 95),
(161, '2026_03_12_130000_add_tracking_pixels_to_reseller_landing_pages', 96),
(162, '2026_03_11_120000_create_ads_analytics_settings_table', 97),
(163, '2026_03_11_150000_create_facebook_page_settings_table', 98),
(164, '2026_03_11_150001_add_facebook_posted_at_to_products_table', 98);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 28),
(5, 'App\\Models\\Customer', 457),
(5, 'App\\Models\\Customer', 462),
(5, 'App\\Models\\Customer', 463),
(5, 'App\\Models\\Customer', 465),
(5, 'App\\Models\\Customer', 474),
(5, 'App\\Models\\Customer', 495),
(5, 'App\\Models\\Customer', 498),
(5, 'App\\Models\\Customer', 499),
(5, 'App\\Models\\Customer', 504),
(6, 'App\\Models\\User', 20),
(6, 'App\\Models\\User', 27),
(6, 'App\\Models\\User', 29),
(8, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=unsubscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'okibkhan420@gmail.com', 1, '2026-01-31 15:15:30', '2026-01-31 15:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `consignment_id` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `reseller_profit` decimal(14,2) DEFAULT NULL,
  `customer_payable_amount` decimal(14,2) DEFAULT NULL,
  `reseller_wallet_credited` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Whether reseller wallet has been credited for this order',
  `discount` int(11) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `courier_type` varchar(255) DEFAULT NULL COMMENT 'pathao, steadfast, redx, etc',
  `courier_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Consignment ID or Tracking ID from courier',
  `courier_sent_at` timestamp NULL DEFAULT NULL COMMENT 'When order was sent to courier',
  `fraud_success` int(11) NOT NULL DEFAULT 0,
  `fraud_cancel` int(11) NOT NULL DEFAULT 0,
  `fraud_rate` double DEFAULT NULL,
  `pathao_success` int(11) NOT NULL DEFAULT 0,
  `pathao_cancel` int(11) NOT NULL DEFAULT 0,
  `pathao_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `redx_success` int(11) NOT NULL DEFAULT 0,
  `redx_cancel` int(11) NOT NULL DEFAULT 0,
  `redx_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `steadfast_success` int(11) NOT NULL DEFAULT 0,
  `steadfast_cancel` int(11) NOT NULL DEFAULT 0,
  `steadfast_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `is_duplicate_order` tinyint(4) NOT NULL DEFAULT 0,
  `duplicate_order_count` int(11) NOT NULL DEFAULT 0,
  `duplicate_order_rate` decimal(5,2) DEFAULT NULL,
  `last_duplicate_order_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT 'unpaid',
  `payment_gateway` varchar(100) DEFAULT NULL,
  `advance_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `order_note` text DEFAULT NULL,
  `delivery_charge_deducted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `consignment_id`, `amount`, `reseller_profit`, `customer_payable_amount`, `reseller_wallet_credited`, `discount`, `coupon_code`, `shipping_charge`, `customer_id`, `ip_address`, `admin_note`, `order_status`, `courier_type`, `courier_tracking_id`, `courier_sent_at`, `fraud_success`, `fraud_cancel`, `fraud_rate`, `pathao_success`, `pathao_cancel`, `pathao_rate`, `redx_success`, `redx_cancel`, `redx_rate`, `steadfast_success`, `steadfast_cancel`, `steadfast_rate`, `is_duplicate_order`, `duplicate_order_count`, `duplicate_order_rate`, `last_duplicate_order_date`, `user_id`, `note`, `created_at`, `updated_at`, `payment_status`, `payment_gateway`, `advance_amount`, `order_note`, `delivery_charge_deducted`) VALUES
(1096, '51743', NULL, 1360, NULL, NULL, 0, 10, NULL, 70, 303, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-12 07:16:32', '2026-02-12 07:16:32', 'unpaid', NULL, 0.00, NULL, 0),
(1097, '52271', NULL, 200, NULL, NULL, 0, 0, NULL, 70, 367, '::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-12 07:17:30', '2026-02-12 07:17:30', 'pending', NULL, 0.00, NULL, 0),
(1098, '29195', NULL, 240, NULL, NULL, 0, 10, '23553812781', 120, 465, '::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-12 07:34:49', '2026-02-12 07:34:49', 'pending', NULL, 0.00, 'hjjhjh', 0),
(1099, '63975', '219518076', 1420, NULL, NULL, 0, 0, NULL, 120, 466, '45.250.229.34', NULL, 5, 'steadfast', '219518076', '2026-02-16 20:10:15', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-13 06:38:53', '2026-02-16 20:10:15', 'pending', 'aamarpay', 0.00, NULL, 0),
(1100, '97260', '219518075', 2270, NULL, NULL, 0, 0, NULL, 70, 467, '103.86.198.153', NULL, 5, 'steadfast', '219518075', '2026-02-16 20:10:15', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-13 09:28:02', '2026-02-16 20:10:15', 'pending', NULL, 0.00, 'No', 0),
(1101, '18406', NULL, 3, NULL, NULL, 0, 0, NULL, 0, 468, '37.111.232.120', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-14 02:59:23', '2026-02-14 02:59:24', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1102, '63826', NULL, 3, NULL, NULL, 0, 0, NULL, 0, 468, '37.111.232.120', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-14 03:01:37', '2026-02-14 03:01:37', 'pending', NULL, 0.00, NULL, 0),
(1103, '64620', '219518073', 6570, NULL, NULL, 0, 0, NULL, 70, 469, '103.121.106.160', NULL, 5, 'steadfast', '219518073', '2026-02-16 20:10:14', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-14 06:46:11', '2026-02-16 20:10:14', 'pending', NULL, 0.00, 'delevery jeno tar tary hoi ji sir', 0),
(1104, '64755', '219518072', 2790, NULL, NULL, 0, 0, NULL, 70, 470, '103.144.42.64', NULL, 5, 'steadfast', '219518072', '2026-02-16 20:10:14', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-15 05:23:59', '2026-02-16 20:10:14', 'pending', NULL, 0.00, 'Valo Hobe Nebo NA hole Nebo Na', 0),
(1105, '44040', '219518071', 1370, NULL, NULL, 0, 0, NULL, 70, 471, '103.130.175.53', NULL, 5, 'steadfast', '219518071', '2026-02-16 20:10:14', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-16 07:47:21', '2026-02-16 20:10:14', 'pending', NULL, 0.00, NULL, 0),
(1106, '40836', '219518070', 1070, NULL, NULL, 0, 0, NULL, 70, 306, '37.111.253.24', NULL, 5, 'steadfast', '219518070', '2026-02-16 20:10:13', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-16 11:05:38', '2026-02-16 20:10:13', 'pending', NULL, 0.00, NULL, 0),
(1107, '52852', '219518069', 200, NULL, NULL, 0, 0, NULL, 70, 317, '37.111.253.24', NULL, 5, 'steadfast', '219518069', '2026-02-16 20:10:13', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-16 15:46:09', '2026-02-16 20:10:13', 'pending', NULL, 0.00, 'hjgjghjh', 0),
(1108, '94314', '26A217TU1BXMIH', 10570, NULL, NULL, 0, 0, NULL, 70, 472, '103.72.212.137', NULL, 5, 'redx', '26A217TU1BXMIH', '2026-02-17 04:34:50', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-16 18:21:29', '2026-02-17 04:34:50', 'pending', NULL, 0.00, NULL, 0),
(1109, '97300', '26A218WE1BY3HY', 2670, NULL, NULL, 0, 0, NULL, 70, 473, '103.158.158.36', NULL, 5, 'redx', '26A218WE1BY3HY', '2026-02-18 06:22:36', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-16 20:57:55', '2026-02-18 06:22:36', 'pending', NULL, 0.00, NULL, 0),
(1110, '64798', '219939329', 870, 3200.00, 4070.00, 0, 0, NULL, 70, 367, '37.111.253.24', NULL, 5, 'steadfast', '219939329', '2026-02-18 06:38:46', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, 20, NULL, '2026-02-17 18:34:10', '2026-02-18 06:38:46', 'pending', NULL, 0.00, 'jhhjhjhj', 0),
(1111, '12877', NULL, 2720, NULL, NULL, 0, 0, NULL, 120, 475, '203.202.254.246', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, 'fgujhfgj', '2026-02-18 08:09:32', '2026-02-18 08:09:32', 'pending', NULL, 0.00, NULL, 0),
(1112, '42249', NULL, 200, NULL, NULL, 0, 0, NULL, 70, 476, '37.111.253.24', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-18 09:29:39', '2026-02-18 09:29:39', 'pending', NULL, 0.00, NULL, 0),
(1113, '81706', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 476, '37.111.253.24', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-18 09:30:32', '2026-02-18 09:30:32', 'pending', NULL, 0.00, NULL, 0),
(1114, '26635', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 477, '103.153.199.23', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-19 11:40:29', '2026-02-19 11:40:29', 'pending', NULL, 0.00, NULL, 0),
(1115, '28678', NULL, 5320, NULL, NULL, 0, 0, NULL, 120, 478, '103.113.17.5', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-19 12:47:43', '2026-02-19 12:47:43', 'pending', NULL, 0.00, NULL, 0),
(1116, '64465', '220953574', 10570, NULL, NULL, 0, 0, NULL, 70, 479, '203.190.9.51', NULL, 5, 'steadfast', '220953574', '2026-02-20 19:03:41', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-19 15:18:50', '2026-02-20 19:03:41', 'pending', NULL, 0.00, 'fdsafa', 0),
(1117, '41280', NULL, 190, NULL, NULL, 0, 0, NULL, 70, 480, '103.155.118.58', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-21 05:08:50', '2026-02-21 05:08:50', 'pending', NULL, 0.00, 'h', 0),
(1118, '81700', '221175785', 71, NULL, NULL, 0, 0, NULL, 70, 481, '103.60.175.65', NULL, 5, 'steadfast', '221175785', '2026-02-21 11:22:13', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-21 09:15:31', '2026-02-21 11:22:13', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1119, '26367', '26A221SA1BZAYU', 71, NULL, NULL, 0, 0, NULL, 70, 481, '103.60.175.65', NULL, 5, 'redx', '26A221SA1BZAYU', '2026-02-21 11:21:29', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-21 09:17:21', '2026-02-21 11:21:29', 'failed', 'aamarpay', 0.00, NULL, 0),
(1120, '69029', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 482, '118.179.3.57', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-22 06:46:38', '2026-02-22 06:46:38', 'pending', NULL, 0.00, 'dfbfd', 0),
(1121, '48834', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 483, '2404:1c40:1c4:38d5:1896:549b:aa23:b844', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-22 07:27:38', '2026-02-22 07:27:38', 'pending', NULL, 0.00, 'Hi', 0),
(1122, '43348', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 307, '37.111.253.24', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-23 06:46:00', '2026-02-23 06:46:00', 'pending', NULL, 0.00, NULL, 0),
(1123, '29948', NULL, 11920, NULL, NULL, 0, 0, NULL, 120, 307, '37.111.253.24', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-23 06:52:02', '2026-02-23 06:52:02', 'pending', NULL, 0.00, NULL, 0),
(1124, '38555', NULL, 10570, NULL, NULL, 0, 0, NULL, 70, 307, '37.111.253.24', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-23 06:56:11', '2026-02-23 06:56:11', 'pending', NULL, 0.00, 'গফগফ', 0),
(1125, '51386', '223906728', 2440, NULL, NULL, 0, 0, NULL, 120, 484, '103.230.107.13', NULL, 5, 'steadfast', '223906728', '2026-02-27 19:48:33', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-23 14:37:00', '2026-02-27 19:48:33', 'pending', NULL, 0.00, 'ািািসবাব', 0),
(1126, '76696', '223906727', 2270, NULL, NULL, 0, 0, NULL, 70, 485, '103.164.254.209', NULL, 5, 'steadfast', '223906727', '2026-02-27 19:48:33', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-23 16:56:25', '2026-02-27 19:48:33', 'pending', NULL, 0.00, NULL, 0),
(1127, '13989', '223906726', 121, NULL, NULL, 0, 0, NULL, 120, 486, '103.87.251.58', NULL, 5, 'steadfast', '223906726', '2026-02-27 19:48:33', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-23 17:50:22', '2026-02-27 19:48:33', 'pending', NULL, 0.00, NULL, 0),
(1128, '73103', '223906725', 1270, NULL, NULL, 0, 0, NULL, 70, 487, '59.152.7.39', NULL, 5, 'steadfast', '223906725', '2026-02-27 19:48:32', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-23 22:45:56', '2026-02-27 19:48:32', 'pending', NULL, 0.00, NULL, 0),
(1129, '83488', '223906724', 1300, NULL, NULL, 0, 0, NULL, 0, 367, '37.111.253.24', NULL, 5, 'steadfast', '223906724', '2026-02-27 19:48:32', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-24 06:02:57', '2026-02-27 19:48:32', 'paid', 'uddoktapay', 0.00, NULL, 0),
(1130, '80106', '223906723', 2670, NULL, NULL, 0, 0, NULL, 70, 488, '103.171.233.65', NULL, 5, 'steadfast', '223906723', '2026-02-27 19:48:32', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-24 07:52:00', '2026-02-27 19:48:32', 'pending', NULL, 0.00, NULL, 0),
(1131, '87286', '223906722', 2470, NULL, NULL, 0, 0, NULL, 70, 489, '103.171.233.65', NULL, 5, 'steadfast', '223906722', '2026-02-27 19:48:32', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-24 07:53:40', '2026-02-27 19:48:32', 'pending', NULL, 0.00, NULL, 0),
(1132, '28781', '223906721', 570, NULL, NULL, 0, 0, NULL, 70, 489, '103.171.233.65', NULL, 5, 'steadfast', '223906721', '2026-02-27 19:48:31', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-24 09:20:36', '2026-02-27 19:48:31', 'pending', NULL, 0.00, NULL, 0),
(1133, '51357', NULL, 720, NULL, NULL, 0, 0, NULL, 120, 490, '103.164.254.209', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-02-26 15:39:35', '2026-02-26 15:39:35', 'pending', NULL, 0.00, NULL, 0),
(1134, '19513', '223906720', 6670, NULL, NULL, 0, 0, NULL, 70, 491, '103.171.36.76', NULL, 2, 'steadfast', '223906720', '2026-02-27 19:48:31', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, 25, NULL, '2026-02-27 17:56:23', '2026-03-06 13:18:41', 'pending', NULL, 0.00, 'ss', 0),
(1135, '83135', NULL, 190, NULL, NULL, 0, 0, NULL, 70, 492, '43.255.23.5', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-01 00:02:56', '2026-03-01 00:02:56', 'pending', NULL, 0.00, 'Cc', 0),
(1136, '15896', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 490, '103.164.254.209', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-01 08:09:22', '2026-03-01 08:09:22', 'pending', NULL, 0.00, NULL, 0),
(1137, '40190', NULL, 2670, NULL, NULL, 0, 0, NULL, 70, 493, '103.143.237.133', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, 'etwetewtrt', '2026-03-02 08:58:18', '2026-03-02 08:58:18', 'pending', NULL, 0.00, NULL, 0),
(1138, '39112', NULL, 71, NULL, NULL, 0, 0, NULL, 70, 494, '2404:1c40:1c0:458f:1899:10ea:e0ad:2e0d', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-02 17:29:33', '2026-03-02 17:29:34', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1139, '63481', NULL, 2670, NULL, NULL, 0, 0, NULL, 70, 494, '2404:1c40:1c0:458f:1899:10ea:e0ad:2e0d', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-02 17:30:21', '2026-03-06 13:44:01', 'pending', NULL, 0.00, NULL, 0),
(1140, '69923', NULL, 10570, NULL, NULL, 0, 0, NULL, 70, 294, '103.197.153.203', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-03 22:45:37', '2026-03-06 13:43:15', 'paid', 'aamarpay', 0.00, NULL, 0),
(1141, '65067', NULL, 1420, NULL, NULL, 0, 0, NULL, 120, 495, '103.202.222.108', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-06 13:05:03', '2026-03-07 05:29:49', 'pending', NULL, 0.00, NULL, 0),
(1142, '36381', NULL, 3970, NULL, NULL, 0, 0, NULL, 70, 496, '103.180.113.84', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-07 09:08:44', '2026-03-07 09:08:44', 'pending', NULL, 0.00, 'chgf nd', 0),
(1143, '26739', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 497, '180.149.234.17', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-07 11:26:34', '2026-03-07 11:26:34', 'pending', NULL, 0.00, NULL, 0),
(1144, '37578', NULL, 2320, NULL, NULL, 0, 0, NULL, 120, 303, '::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-07 17:41:07', '2026-03-07 17:41:25', 'paid', 'uddoktapay', 0.00, NULL, 0),
(1145, '73104', '229142332', 920, 200.00, 1070.00, 1, 0, NULL, 120, 303, '::1', NULL, 5, 'steadfast', '229142332', '2026-03-10 12:39:54', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, 29, NULL, '2026-03-10 11:44:28', '2026-03-10 12:39:54', 'paid', NULL, 0.00, 'hello', 0),
(1146, '37088', NULL, 970, NULL, 970.00, 0, 0, NULL, 70, 317, '::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, 20, NULL, '2026-03-10 17:36:33', '2026-03-10 17:36:33', 'pending', NULL, 0.00, NULL, 0),
(1147, '99119', NULL, 1370, 300.00, 1370.00, 0, 0, NULL, 70, 303, '::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, 20, NULL, '2026-03-10 17:38:33', '2026-03-10 17:38:33', 'pending', NULL, 0.00, 'hghghg', 0),
(1148, '73899', NULL, 12620, NULL, NULL, 0, 0, NULL, 120, 500, '103.109.238.232', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-14 03:11:29', '2026-03-14 03:11:29', 'pending', NULL, 0.00, NULL, 0),
(1149, '85375', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 501, '2401:1900:81af:2657::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-15 18:16:02', '2026-03-15 18:16:02', 'pending', NULL, 0.00, NULL, 0),
(1150, '18704', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 502, '103.234.203.1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-16 09:22:29', '2026-03-16 09:22:29', 'pending', NULL, 0.00, NULL, 0),
(1151, '23444', NULL, 2320, NULL, NULL, 0, 0, NULL, 120, 503, '160.187.117.185', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-16 17:14:10', '2026-03-16 17:14:10', 'pending', NULL, 0.00, NULL, 0),
(1152, '65264', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 501, '2401:1900:80c5:80ff::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-23 09:45:00', '2026-03-23 09:45:00', 'pending', NULL, 0.00, 'ঘগ', 0),
(1153, '70962', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 505, '202.181.19.238', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-24 11:33:40', '2026-03-24 11:33:40', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1154, '64844', NULL, 1270, NULL, NULL, 0, 0, NULL, 70, 505, '202.181.19.238', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-24 11:34:51', '2026-03-24 11:34:51', 'pending', NULL, 0.00, NULL, 0),
(1155, '50245', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 505, '202.181.19.238', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-24 11:35:30', '2026-03-24 11:35:30', 'pending', 'aamarpay', 0.00, NULL, 0),
(1156, '52985', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 506, '2401:1900:1090:e5f::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-25 10:13:28', '2026-03-25 10:13:28', 'pending', NULL, 0.00, NULL, 0),
(1157, '23095', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 507, '165.101.132.43', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-27 08:41:24', '2026-03-27 08:41:24', 'pending', NULL, 0.00, NULL, 0),
(1158, '62531', NULL, 2320, NULL, NULL, 0, 0, NULL, 120, 508, '36.50.74.7', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-28 18:46:06', '2026-03-28 18:46:06', 'pending', NULL, 0.00, 'ফG', 0),
(1159, '65006', NULL, 2320, NULL, NULL, 0, 0, NULL, 120, 509, '36.50.74.7', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-28 18:47:39', '2026-03-28 18:47:39', 'pending', NULL, 0.00, NULL, 0),
(1160, '92432', NULL, 4470, NULL, NULL, 0, 0, NULL, 70, 510, '37.111.194.163', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-30 08:47:24', '2026-03-30 08:47:24', 'pending', NULL, 0.00, NULL, 0),
(1161, '42725', NULL, 2270, NULL, NULL, 0, 0, NULL, 70, 511, '120.89.66.53', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-31 14:40:52', '2026-03-31 14:40:52', 'pending', NULL, 0.00, NULL, 0),
(1162, '78388', NULL, 10920, NULL, NULL, 0, 0, NULL, 70, 439, '116.204.228.157', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-31 21:01:28', '2026-03-31 21:01:28', 'pending', NULL, 0.00, 'আমার লাগবে 120', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `commission_rate` decimal(5,2) DEFAULT NULL,
  `admin_commission` decimal(12,2) NOT NULL DEFAULT 0.00,
  `vendor_earning` decimal(12,2) NOT NULL DEFAULT 0.00,
  `vendor_paid_at` timestamp NULL DEFAULT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `variant_price_id` int(11) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `vendor_id`, `product_name`, `purchase_price`, `sale_price`, `commission_rate`, `admin_commission`, `vendor_earning`, `vendor_paid_at`, `product_discount`, `product_size`, `variant_price_id`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(1344, 1096, 201, NULL, 'Cotton Narrow Fit Pajama for Men White Color', 0, 1300, NULL, 0.00, 0.00, NULL, 0, '6', NULL, '36', 1, '2026-02-12 07:16:32', '2026-02-12 07:16:32'),
(1345, 1097, 201, NULL, 'Cotton Narrow Fit Pajama for Men White Color', 100, 130, NULL, 0.00, 0.00, NULL, 0, '8', 373, '36', 1, '2026-02-12 07:17:30', '2026-02-12 07:17:30'),
(1346, 1098, 201, NULL, 'Cotton Narrow Fit Pajama for Men White Color', 100, 130, NULL, 0.00, 0.00, NULL, 0, '8', 373, '36', 1, '2026-02-12 07:34:49', '2026-02-12 07:34:49'),
(1347, 1099, 201, NULL, 'Cotton Narrow Fit Pajama for Men White Color', 100, 1300, NULL, 0.00, 0.00, NULL, 0, '9', NULL, '35', 1, '2026-02-13 06:38:53', '2026-02-13 06:38:53'),
(1348, 1100, 227, NULL, 'Paragon Brown Egg 1 Dozen (Bundle of 3)', 500, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-13 09:28:02', '2026-02-13 09:28:02'),
(1349, 1101, 209, NULL, 'Premium Membership (Digital Product & Agency Business)', 1200, 3, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-14 02:59:23', '2026-02-14 02:59:23'),
(1350, 1102, 209, NULL, 'Premium Membership (Digital Product & Agency Business)', 1200, 3, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-14 03:01:37', '2026-02-14 03:01:37'),
(1351, 1103, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 5, '2026-02-14 06:46:11', '2026-02-14 06:46:11'),
(1352, 1104, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-15 05:23:59', '2026-02-15 05:23:59'),
(1353, 1104, 199, NULL, 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 100, 120, NULL, 0.00, 0.00, NULL, 0, '7', 367, '35', 1, '2026-02-15 05:23:59', '2026-02-15 05:23:59'),
(1354, 1105, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-16 07:47:21', '2026-02-16 07:47:21'),
(1355, 1106, 221, NULL, 'Jononi Madical Hall', 300, 500, NULL, 0.00, 0.00, NULL, 0, NULL, 348, NULL, 1, '2026-02-16 11:05:38', '2026-02-16 11:05:38'),
(1356, 1106, 221, NULL, 'Jononi Madical Hall', 300, 500, NULL, 0.00, 0.00, NULL, 0, '6', 348, '35', 1, '2026-02-16 11:05:38', '2026-02-16 11:05:38'),
(1357, 1107, 201, NULL, 'Cotton Narrow Fit Pajama for Men White Color', 100, 130, NULL, 0.00, 0.00, NULL, 0, '8', 373, '36', 1, '2026-02-16 15:46:09', '2026-02-16 15:46:09'),
(1358, 1108, 225, NULL, 'Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 2000, 10500, NULL, 0.00, 0.00, NULL, 0, '23', 392, NULL, 1, '2026-02-16 18:21:29', '2026-02-16 18:21:29'),
(1359, 1109, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-16 20:57:55', '2026-02-16 20:57:55'),
(1360, 1110, 227, NULL, 'Paragon Brown Egg 1 Dozen (Bundle of 3)', 500, 800, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-17 18:34:10', '2026-02-17 18:34:10'),
(1361, 1111, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-18 08:09:32', '2026-02-18 08:09:32'),
(1362, 1112, 201, NULL, 'Cotton Narrow Fit Pajama for Men White Color', 100, 130, NULL, 0.00, 0.00, NULL, 0, '8', 373, '36', 1, '2026-02-18 09:29:39', '2026-02-18 09:29:39'),
(1363, 1113, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-18 09:30:33', '2026-02-18 09:30:33'),
(1364, 1114, 196, NULL, 'Radiance Glow Face Serum', 100, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-19 11:40:29', '2026-02-19 11:40:29'),
(1365, 1115, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-19 12:47:43', '2026-02-19 12:47:43'),
(1366, 1115, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-19 12:47:43', '2026-02-19 12:47:43'),
(1367, 1116, 225, NULL, 'Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 2000, 10500, NULL, 0.00, 0.00, NULL, 0, NULL, 392, NULL, 1, '2026-02-19 15:18:50', '2026-02-19 15:18:50'),
(1368, 1117, 200, NULL, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 120, NULL, 0.00, 0.00, NULL, 0, NULL, 365, NULL, 1, '2026-02-21 05:08:50', '2026-02-21 05:08:50'),
(1369, 1118, 210, NULL, 'Samsung A0724', 5000, 1, NULL, 0.00, 0.00, NULL, 0, NULL, 314, NULL, 1, '2026-02-21 09:15:31', '2026-02-21 09:15:31'),
(1370, 1119, 210, NULL, 'Samsung A0724', 5000, 1, NULL, 0.00, 0.00, NULL, 0, NULL, 314, NULL, 1, '2026-02-21 09:17:21', '2026-02-21 09:17:21'),
(1371, 1120, 217, NULL, 'TV Box', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-22 06:46:38', '2026-02-22 06:46:38'),
(1372, 1121, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-22 07:27:38', '2026-02-22 07:27:38'),
(1373, 1122, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-23 06:46:00', '2026-02-23 06:46:00'),
(1374, 1123, 225, NULL, 'Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 2000, 10500, NULL, 0.00, 0.00, NULL, 0, NULL, 392, NULL, 1, '2026-02-23 06:52:02', '2026-02-23 06:52:02'),
(1375, 1123, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-23 06:52:02', '2026-02-23 06:52:02'),
(1376, 1124, 225, NULL, 'Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 2000, 10500, NULL, 0.00, 0.00, NULL, 0, NULL, 392, NULL, 1, '2026-02-23 06:56:11', '2026-02-23 06:56:11'),
(1377, 1125, 217, NULL, 'TV Box', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-23 14:37:00', '2026-02-23 14:37:00'),
(1378, 1125, 198, NULL, 'Premium Cotton Full Sleeve Casual Shirt For Men', 100, 120, NULL, 0.00, 0.00, NULL, 0, NULL, 370, NULL, 1, '2026-02-23 14:37:00', '2026-02-23 14:37:00'),
(1379, 1126, 227, NULL, 'Paragon Brown Egg 1 Dozen (Bundle of 3)', 500, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-23 16:56:25', '2026-02-23 16:56:25'),
(1380, 1127, 210, NULL, 'Samsung A0724', 5000, 1, NULL, 0.00, 0.00, NULL, 0, NULL, 314, NULL, 1, '2026-02-23 17:50:22', '2026-02-23 17:50:22'),
(1381, 1128, 197, NULL, 'Herbal Green Tea Face Wash', 999, 1200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-23 22:45:56', '2026-02-23 22:45:56'),
(1382, 1129, 208, NULL, 'CanvaProOwner (500 Member Add)', 1050, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-24 06:02:57', '2026-02-24 06:02:57'),
(1383, 1130, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 2, '2026-02-24 07:52:00', '2026-02-24 07:52:00'),
(1384, 1131, 224, NULL, 'New collection Hit western dress two piece Tops For Women', 500, 1200, NULL, 0.00, 0.00, NULL, 0, '7', 385, '35', 2, '2026-02-24 07:53:40', '2026-02-24 07:53:40'),
(1385, 1132, 221, NULL, 'Jononi Madical Hall', 300, 500, NULL, 0.00, 0.00, NULL, 0, '8', 350, '35', 1, '2026-02-24 09:20:36', '2026-02-24 09:20:36'),
(1386, 1133, 223, NULL, 'HTC AT-538 Hair And Beard Trimmer For Men', 300, 600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-02-26 15:39:35', '2026-02-26 15:39:35'),
(1387, 1134, 227, NULL, 'Paragon Brown Egg 1 Dozen (Bundle of 3)', 500, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 3, '2026-02-27 17:56:23', '2026-02-27 17:56:23'),
(1388, 1135, 200, NULL, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 120, NULL, 0.00, 0.00, NULL, 0, NULL, 365, NULL, 1, '2026-03-01 00:02:56', '2026-03-01 00:02:56'),
(1389, 1136, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-01 08:09:22', '2026-03-01 08:09:22'),
(1390, 1137, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-02 08:58:18', '2026-03-02 08:58:18'),
(1391, 1138, 210, NULL, 'Samsung A0724', 5000, 1, NULL, 0.00, 0.00, NULL, 0, NULL, 314, NULL, 1, '2026-03-02 17:29:33', '2026-03-02 17:29:33'),
(1392, 1139, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-02 17:30:21', '2026-03-02 17:30:21'),
(1393, 1140, 225, 10, 'Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 2000, 10500, 10.00, 1050.00, 9450.00, '2026-03-06 13:43:15', 0, '23', 392, NULL, 1, '2026-03-03 22:45:37', '2026-03-06 13:43:15'),
(1394, 1141, 201, NULL, 'Cotton Narrow Fit Pajama for Men White Color', 100, 1300, NULL, 0.00, 0.00, NULL, 0, '8', NULL, '35', 1, '2026-03-06 13:05:03', '2026-03-06 13:05:03'),
(1395, 1142, 181, NULL, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-07 09:08:44', '2026-03-07 09:08:44'),
(1396, 1142, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-07 09:08:44', '2026-03-07 09:08:44'),
(1397, 1143, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-07 11:26:34', '2026-03-07 11:26:34'),
(1398, 1144, 217, NULL, 'TV Box', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-07 17:41:07', '2026-03-07 17:41:07'),
(1399, 1145, 227, 12, 'Paragon Brown Egg 1 Dozen (Bundle of 3)', 500, 800, 10.00, 80.00, 720.00, '2026-03-10 12:30:51', 0, NULL, NULL, NULL, 1, '2026-03-10 11:44:28', '2026-03-10 12:30:51'),
(1400, 1146, 222, NULL, '3 in 1 Travel Pillow Set', 500, 900, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-10 17:36:33', '2026-03-10 17:36:33'),
(1401, 1147, 200, NULL, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-10 17:38:33', '2026-03-10 17:38:33'),
(1402, 1148, 235, NULL, 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 1200, 12500, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-14 03:11:29', '2026-03-14 03:11:29'),
(1403, 1149, 242, NULL, 'M10 tws Wireless Earphone Touch Bluetooth Earplug In Ear Stereo Sport Headsets cvc8.0 Digital Display Black Good If With No Reduction Headphones', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-15 18:16:02', '2026-03-15 18:16:02'),
(1404, 1150, 242, NULL, 'M10 tws Wireless Earphone Touch Bluetooth Earplug In Ear Stereo Sport Headsets cvc8.0 Digital Display Black Good If With No Reduction Headphones', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-16 09:22:29', '2026-03-16 09:22:29'),
(1405, 1151, 244, NULL, 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 1200, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-16 17:14:10', '2026-03-16 17:14:10'),
(1406, 1152, 244, NULL, 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 1200, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-23 09:45:00', '2026-03-23 09:45:00'),
(1407, 1153, 226, NULL, 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 2000, 1300, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-24 11:33:40', '2026-03-24 11:33:40'),
(1408, 1154, 224, NULL, 'New collection Hit western dress two piece Tops For Women', 500, 1200, NULL, 0.00, 0.00, NULL, 0, NULL, 384, NULL, 1, '2026-03-24 11:34:51', '2026-03-24 11:34:51'),
(1409, 1155, 242, NULL, 'M10 tws Wireless Earphone Touch Bluetooth Earplug In Ear Stereo Sport Headsets cvc8.0 Digital Display Black Good If With No Reduction Headphones', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-24 11:35:30', '2026-03-24 11:35:30'),
(1410, 1156, 241, NULL, '895B TWS Headphones Earphone Bluetooth-compatible 5.3 Earbuds Touch Control Stereo Bass Headphone LED Digital Display 5.4 Wireless Earphone multycolour', 5000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-25 10:13:28', '2026-03-25 10:13:28'),
(1411, 1157, 243, NULL, 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-27 08:41:24', '2026-03-27 08:41:24'),
(1412, 1158, 243, NULL, 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 2000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-28 18:46:06', '2026-03-28 18:46:06'),
(1413, 1159, 239, NULL, 'Vision 32\" LED TV Q10S Google TV', 5000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-28 18:47:39', '2026-03-28 18:47:39'),
(1414, 1160, 239, NULL, 'Vision 32\" LED TV Q10S Google TV', 5000, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-30 08:47:24', '2026-03-30 08:47:24'),
(1415, 1160, 244, NULL, 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 1200, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-30 08:47:24', '2026-03-30 08:47:24'),
(1416, 1161, 244, NULL, 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 1200, 2200, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-31 14:40:52', '2026-03-31 14:40:52'),
(1417, 1162, 237, NULL, 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 5000, 600, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-31 21:01:28', '2026-03-31 21:01:28'),
(1418, 1162, 238, NULL, 'Vision 32\" Z30 Smart LED Optima Google TV', 1200, 10250, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-31 21:01:28', '2026-03-31 21:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(5, 'In Courier', 'in-courier', '0', '2023-08-15 11:31:56', '2025-11-18 18:05:34'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(8, 'Unpaid', 'unpaid', '1', '2024-07-06 17:47:36', '2024-07-06 17:47:36'),
(11, 'Cancelled', 'cancelled', '0', '2025-11-24 04:42:36', '2025-12-11 04:53:25');

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
('creativedesign.com.bd@gmail.com', '$2y$10$Vf/zd29X37nMtyPpSMqabu2Ww8VRSv90i9MISajzGPXp5OFaR5Mu2', '2025-11-10 07:59:11'),
('info@creativedesign.com.bd', '$2y$10$wV0ieC6q6/3JqPT4YH2rk.ZBap5GmgTzoNEL8sdbbNx0InJIJ0tpK', '2025-12-24 12:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(76, 76, 23, 1070, NULL, NULL, 'Cash On Delivery', 'pending', '2024-11-09 06:15:34', '2024-11-09 06:15:34'),
(1081, 1096, 303, 1360, NULL, NULL, 'Cash On Delivery', 'pending', '2026-02-12 07:16:32', '2026-02-12 07:16:32'),
(1082, 1097, 367, 200, NULL, NULL, 'cod', 'pending', '2026-02-12 07:17:30', '2026-02-12 07:17:30'),
(1083, 1098, 465, 240, NULL, NULL, 'cod', 'pending', '2026-02-12 07:34:49', '2026-02-12 07:34:49'),
(1084, 1099, 466, 0, NULL, NULL, 'aamarpay', 'pending', '2026-02-13 06:38:53', '2026-02-13 06:38:53'),
(1085, 1100, 467, 2270, NULL, NULL, 'cod', 'pending', '2026-02-13 09:28:02', '2026-02-13 09:28:02'),
(1086, 1101, 468, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-02-14 02:59:23', '2026-02-14 02:59:23'),
(1087, 1102, 468, 0, NULL, NULL, 'shurjopay', 'pending', '2026-02-14 03:01:37', '2026-02-14 03:01:37'),
(1088, 1103, 469, 6570, NULL, NULL, 'cod', 'pending', '2026-02-14 06:46:11', '2026-02-14 06:46:11'),
(1089, 1104, 470, 2790, NULL, NULL, 'cod', 'pending', '2026-02-15 05:23:59', '2026-02-15 05:23:59'),
(1090, 1105, 471, 0, NULL, NULL, 'bkash', 'pending', '2026-02-16 07:47:21', '2026-02-16 07:47:21'),
(1091, 1106, 306, 1070, NULL, NULL, 'cod', 'pending', '2026-02-16 11:05:38', '2026-02-16 11:05:38'),
(1092, 1107, 317, 200, NULL, NULL, 'cod', 'pending', '2026-02-16 15:46:09', '2026-02-16 15:46:09'),
(1093, 1108, 472, 10570, NULL, NULL, 'cod', 'pending', '2026-02-16 18:21:29', '2026-02-16 18:21:29'),
(1094, 1109, 473, 0, NULL, NULL, 'bkash', 'pending', '2026-02-16 20:57:55', '2026-02-16 20:57:55'),
(1095, 1110, 367, 4070, NULL, NULL, 'cod', 'pending', '2026-02-17 18:34:10', '2026-02-17 18:34:10'),
(1096, 1111, 475, 2720, NULL, NULL, 'cod', 'pending', '2026-02-18 08:09:32', '2026-02-18 08:09:32'),
(1097, 1112, 476, 200, NULL, NULL, 'cod', 'pending', '2026-02-18 09:29:39', '2026-02-18 09:29:39'),
(1098, 1113, 476, 1370, NULL, NULL, 'cod', 'pending', '2026-02-18 09:30:33', '2026-02-18 09:30:33'),
(1099, 1114, 477, 0, NULL, NULL, 'bkash', 'pending', '2026-02-19 11:40:29', '2026-02-19 11:40:29'),
(1100, 1115, 478, 5320, NULL, NULL, 'cod', 'pending', '2026-02-19 12:47:43', '2026-02-19 12:47:43'),
(1101, 1116, 479, 10570, NULL, NULL, 'cod', 'pending', '2026-02-19 15:18:50', '2026-02-19 15:18:50'),
(1102, 1117, 480, 0, NULL, NULL, 'bkash', 'pending', '2026-02-21 05:08:50', '2026-02-21 05:08:50'),
(1103, 1118, 481, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-02-21 09:15:31', '2026-02-21 09:15:31'),
(1104, 1119, 481, 0, NULL, NULL, 'aamarpay', 'pending', '2026-02-21 09:17:21', '2026-02-21 09:17:21'),
(1105, 1120, 482, 0, NULL, NULL, 'bkash', 'pending', '2026-02-22 06:46:38', '2026-02-22 06:46:38'),
(1106, 1121, 483, 0, NULL, NULL, 'bkash', 'pending', '2026-02-22 07:27:38', '2026-02-22 07:27:38'),
(1107, 1122, 307, 1370, NULL, NULL, 'cod', 'pending', '2026-02-23 06:46:00', '2026-02-23 06:46:00'),
(1108, 1123, 307, 11920, NULL, NULL, 'cod', 'pending', '2026-02-23 06:52:02', '2026-02-23 06:52:02'),
(1109, 1124, 307, 10570, NULL, NULL, 'cod', 'pending', '2026-02-23 06:56:11', '2026-02-23 06:56:11'),
(1110, 1125, 484, 0, NULL, NULL, 'shurjopay', 'pending', '2026-02-23 14:37:00', '2026-02-23 14:37:00'),
(1111, 1126, 485, 2270, NULL, NULL, 'cod', 'pending', '2026-02-23 16:56:25', '2026-02-23 16:56:25'),
(1112, 1127, 486, 121, NULL, NULL, 'cod', 'pending', '2026-02-23 17:50:22', '2026-02-23 17:50:22'),
(1113, 1128, 487, 0, NULL, NULL, 'bkash', 'pending', '2026-02-23 22:45:56', '2026-02-23 22:45:56'),
(1114, 1129, 367, 1300, NULL, NULL, 'uddoktapay', 'paid', '2026-02-24 06:02:57', '2026-02-24 06:03:17'),
(1115, 1130, 488, 2670, NULL, NULL, 'cod', 'pending', '2026-02-24 07:52:00', '2026-02-24 07:52:00'),
(1116, 1131, 489, 2470, NULL, NULL, 'cod', 'pending', '2026-02-24 07:53:40', '2026-02-24 07:53:40'),
(1117, 1132, 489, 570, NULL, NULL, 'cod', 'pending', '2026-02-24 09:20:36', '2026-02-24 09:20:36'),
(1118, 1133, 490, 720, NULL, NULL, 'cod', 'pending', '2026-02-26 15:39:35', '2026-02-26 15:39:35'),
(1119, 1134, 491, 6670, NULL, NULL, 'cod', 'pending', '2026-02-27 17:56:23', '2026-02-27 17:56:23'),
(1120, 1135, 492, 190, NULL, NULL, 'cod', 'pending', '2026-03-01 00:02:56', '2026-03-01 00:02:56'),
(1121, 1136, 490, 0, NULL, NULL, 'bkash', 'pending', '2026-03-01 08:09:22', '2026-03-01 08:09:22'),
(1122, 1137, 493, 2670, NULL, NULL, 'cod', 'pending', '2026-03-02 08:58:18', '2026-03-02 08:58:18'),
(1123, 1138, 494, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-03-02 17:29:33', '2026-03-02 17:29:33'),
(1124, 1139, 494, 0, NULL, NULL, 'bkash', 'pending', '2026-03-02 17:30:21', '2026-03-02 17:30:21'),
(1125, 1140, 294, 10570, 'AAM1772577939103141', '01711223344', 'aamarpay', 'paid', '2026-03-03 22:45:37', '2026-03-03 22:46:34'),
(1126, 1141, 495, 1420, NULL, NULL, 'cod', 'pending', '2026-03-06 13:05:03', '2026-03-06 13:05:03'),
(1127, 1142, 496, 3970, NULL, NULL, 'cod', 'pending', '2026-03-07 09:08:44', '2026-03-07 09:08:44'),
(1128, 1143, 497, 1370, NULL, NULL, 'cod', 'pending', '2026-03-07 11:26:34', '2026-03-07 11:26:34'),
(1129, 1144, 303, 2, NULL, NULL, 'uddoktapay', 'paid', '2026-03-07 17:41:07', '2026-03-07 17:41:25'),
(1130, 1145, 303, 1070, NULL, NULL, 'cod', 'paid', '2026-03-10 11:44:29', '2026-03-10 12:30:30'),
(1131, 1146, 317, 970, NULL, NULL, 'cod', 'pending', '2026-03-10 17:36:33', '2026-03-10 17:36:33'),
(1132, 1147, 303, 1370, NULL, NULL, 'cod', 'pending', '2026-03-10 17:38:33', '2026-03-10 17:38:33'),
(1133, 1148, 500, 12620, NULL, NULL, 'cod', 'pending', '2026-03-14 03:11:29', '2026-03-14 03:11:29'),
(1134, 1149, 501, 2270, NULL, NULL, 'cod', 'pending', '2026-03-15 18:16:02', '2026-03-15 18:16:02'),
(1135, 1150, 502, 2270, NULL, NULL, 'cod', 'pending', '2026-03-16 09:22:29', '2026-03-16 09:22:29'),
(1136, 1151, 503, 0, NULL, NULL, 'bkash', 'pending', '2026-03-16 17:14:10', '2026-03-16 17:14:10'),
(1137, 1152, 501, 2270, NULL, NULL, 'cod', 'pending', '2026-03-23 09:45:00', '2026-03-23 09:45:00'),
(1138, 1153, 505, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-03-24 11:33:40', '2026-03-24 11:33:40'),
(1139, 1154, 505, 0, NULL, NULL, 'shurjopay', 'pending', '2026-03-24 11:34:51', '2026-03-24 11:34:51'),
(1140, 1155, 505, 0, NULL, NULL, 'aamarpay', 'pending', '2026-03-24 11:35:30', '2026-03-24 11:35:30'),
(1141, 1156, 506, 0, NULL, NULL, 'bkash', 'pending', '2026-03-25 10:13:28', '2026-03-25 10:13:28'),
(1142, 1157, 507, 2270, NULL, NULL, 'cod', 'pending', '2026-03-27 08:41:24', '2026-03-27 08:41:24'),
(1143, 1158, 508, 0, NULL, NULL, 'bkash', 'pending', '2026-03-28 18:46:06', '2026-03-28 18:46:06'),
(1144, 1159, 509, 0, NULL, NULL, 'shurjopay', 'pending', '2026-03-28 18:47:39', '2026-03-28 18:47:39'),
(1145, 1160, 510, 0, NULL, NULL, 'bkash', 'pending', '2026-03-30 08:47:24', '2026-03-30 08:47:24'),
(1146, 1161, 511, 0, NULL, NULL, 'bkash', 'pending', '2026-03-31 14:40:52', '2026-03-31 14:40:52'),
(1147, 1162, 439, 10920, NULL, NULL, 'cod', 'pending', '2026-03-31 21:01:28', '2026-03-31 21:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', '4f6o0cjiki2rfm34kfdadl1eqq', '2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b', 'sandboxTokenizedUser02', 'sandboxTokenizedUser02@12345', 'https://tokenized.sandbox.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 1, '2024-02-06 11:29:46', '2026-01-02 09:53:08'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://ecommerce1.creativedesign.com.bdpayment-success', 'https://ecommerce1.creativedesign.com.bd/', 'NOK', 1, '2024-02-06 11:29:46', '2026-01-02 09:53:12'),
(3, 'uddoktapay', '982d381360a69d419689740d9f2e26ce36fb7a50', 'YOUR_UDDOKTAPAY_SECRET', NULL, NULL, 'https://sandbox.uddoktapay.com/api/checkout-v2', NULL, NULL, NULL, 1, '2025-11-06 18:37:36', '2026-01-04 14:17:21'),
(4, 'aamarpay', 'aamarpaytest', 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, 'https://sandbox.aamarpay.com/jsonpost.php', NULL, NULL, NULL, 1, '2026-01-27 07:04:47', '2026-01-27 07:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'admin', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'admin', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'admin', NULL, NULL),
(10, 'permission-create', 'admin', NULL, NULL),
(11, 'setting-delete', 'admin', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'admin', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'admin', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'admin', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'admin', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'admin', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'admin', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'admin', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'admin', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'admin', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'admin', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'admin', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'admin', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'admin', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'admin', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'admin', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'admin', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'admin', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'admin', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'admin', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'admin', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'admin', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'admin', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'admin', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'admin', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'admin', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'admin', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'admin', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'admin', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'admin', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'admin', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'admin', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'admin', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'admin', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'admin', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'admin', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'admin', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'admin', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'admin', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'admin', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'admin', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'admin', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'admin', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'admin', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'admin', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'admin', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'admin', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'admin', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'admin', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'admin', '2024-01-31 10:52:00', '2024-01-31 10:52:00'),
(81, 'order-create', 'web', '2026-01-21 13:24:09', '2026-01-21 13:24:09'),
(82, 'order-list', 'web', '2026-01-21 13:24:43', '2026-01-21 13:24:43'),
(83, 'order-edit', 'web', '2026-01-21 13:24:54', '2026-01-21 13:24:54'),
(84, 'order-list', 'admin', '2026-01-21 13:40:57', '2026-01-21 13:40:57'),
(85, 'order-edit', 'admin', '2026-01-21 13:41:08', '2026-01-21 13:41:08'),
(86, 'order-create', 'admin', '2026-01-21 13:41:22', '2026-01-21 13:41:22'),
(87, 'brand-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(88, 'brand-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(89, 'brand-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(90, 'size-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(91, 'size-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(92, 'size-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(93, 'product-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(94, 'vendor-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(95, 'vendor-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(96, 'vendor-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(97, 'vendor-verification', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(98, 'vendor-withdrawal', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(99, 'reseller-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(100, 'reseller-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(101, 'reseller-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(102, 'reseller-verification', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(103, 'reseller-withdrawal', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(104, 'customer-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(105, 'customer-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(106, 'customer-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(107, 'order-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(108, 'blog-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(109, 'blog-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(110, 'blog-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(111, 'blog-delete', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(112, 'campaign-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(113, 'campaign-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(114, 'coupon-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(115, 'coupon-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(116, 'coupon-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(117, 'coupon-delete', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(118, 'purchase-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(119, 'purchase-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(120, 'purchase-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(121, 'supplier-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(122, 'supplier-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(123, 'supplier-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(124, 'fund-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(125, 'fund-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(126, 'fund-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(127, 'expense-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(128, 'expense-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(129, 'expense-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(130, 'report-view', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(131, 'order-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(132, 'purchase-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(133, 'expense-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(134, 'stock-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(135, 'profit-loss-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(136, 'review-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(137, 'review-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(138, 'api-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(139, 'pixel-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(140, 'seo-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(141, 'sitemap-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(142, 'fraud-check', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(143, 'fraud-setting-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(144, 'fraud-setting-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(145, 'sms-send', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(146, 'email-setting-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(147, 'license-info', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(148, 'complaint-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(149, 'complaint-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(150, 'complaint-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(151, 'popup-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(152, 'popup-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09');

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
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `offer_end_text` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `image`, `title`, `description`, `offer_end_text`, `btn_text`, `link`, `status`, `created_at`, `updated_at`) VALUES
(4, 'uploads/popup/1774100681_69bea0c905e55.jpg', 'Promo Popup', NULL, NULL, NULL, 'https://www.creativedesign.com.bd/', 1, '2026-03-21 13:44:41', '2026-03-21 13:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 117, 32, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(11, 117, 35, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(12, 117, 39, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(13, 1, 36, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(14, 132, 32, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(15, 132, 36, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(16, 133, 36, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(17, 133, 49, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(18, 130, 35, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(19, 130, 36, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(20, 130, 39, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(21, 130, 48, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(22, 135, 35, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(23, 135, 36, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(24, 135, 39, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(25, 137, 35, '2024-11-08 14:54:47', '2024-11-08 14:54:47'),
(26, 139, 62, '2024-11-08 15:09:17', '2024-11-08 15:09:17'),
(27, 150, 62, '2024-11-08 16:59:22', '2024-11-08 16:59:22'),
(28, 156, 35, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(29, 156, 39, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(30, 155, 35, '2024-12-02 15:11:23', '2024-12-02 15:11:23'),
(31, 157, 40, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(32, 157, 44, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(33, 157, 51, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(34, 157, 62, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(35, 158, 36, '2024-12-05 15:43:20', '2024-12-05 15:43:20'),
(36, 179, 36, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(37, 179, 39, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(38, 179, 40, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(45, 182, 36, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(46, 182, 40, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(47, 182, 41, '2025-10-03 14:36:05', '2025-10-03 14:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `color_id`, `size_id`, `created_at`, `updated_at`) VALUES
(224, 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 159, NULL, NULL, '2025-01-10 04:06:35', '2025-01-10 04:06:35'),
(225, 'public/uploads/product/1736431699-2024-07-16-6696741839d29.jpg', 160, NULL, NULL, '2025-01-10 04:08:19', '2025-01-10 04:08:19'),
(226, 'public/uploads/product/1736431804-2024-07-16-66966f64be627.jpg', 161, NULL, NULL, '2025-01-10 04:10:04', '2025-01-10 04:10:04'),
(227, 'public/uploads/product/1736431896-2024-07-16-66966ee025159.jpg', 162, NULL, NULL, '2025-01-10 04:11:36', '2025-01-10 04:11:36'),
(228, 'public/uploads/product/1736432082-2024-07-15-6695b4dbdaf63.webp', 163, NULL, NULL, '2025-01-10 04:14:42', '2025-01-10 04:14:42'),
(229, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 164, NULL, NULL, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(230, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 165, NULL, NULL, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(232, 'public/uploads/product/1736437796-malai-400.webp', 167, NULL, NULL, '2025-01-10 05:49:56', '2025-01-10 05:49:56'),
(233, 'public/uploads/product/1736438047-ghee-175gm.webp', 168, NULL, NULL, '2025-01-10 05:54:07', '2025-01-10 05:54:07'),
(234, 'public/uploads/product/1736438310-peanut-butter-1.webp', 169, NULL, NULL, '2025-01-10 05:58:30', '2025-01-10 05:58:30'),
(235, 'public/uploads/product/1736438385-signatute-ghee.webp', 170, NULL, NULL, '2025-01-10 05:59:45', '2025-01-10 05:59:45'),
(236, 'public/uploads/product/1736438461-signatute-lacsa-semai.webp', 171, NULL, NULL, '2025-01-10 06:01:01', '2025-01-10 06:01:01'),
(237, 'public/uploads/product/1736438635-almond.webp', 172, NULL, NULL, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(238, 'public/uploads/product/1736438635-almond.webp', 173, NULL, NULL, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(239, 'public/uploads/product/1736438717-mariyamdates.webp', 174, NULL, NULL, '2025-01-10 06:05:17', '2025-01-10 06:05:17'),
(242, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 177, NULL, NULL, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(243, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 178, NULL, NULL, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(244, 'public/uploads/product/1743836769-screenshot_1.png', 176, NULL, NULL, '2025-04-05 07:06:09', '2025-04-05 07:06:09'),
(247, 'public/uploads/product/1743836818-screenshot_3.png', 166, NULL, NULL, '2025-04-05 07:06:58', '2025-04-05 07:06:58'),
(248, 'public/uploads/product/1759480696-khaas-food-ajwa-dates-খাস-ফুড-আজওয়া-খেজুর.webp', 175, NULL, NULL, '2025-10-03 08:38:16', '2025-10-03 08:38:16'),
(249, 'public/uploads/product/1759499529-61nhot+9ffl.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(250, 'public/uploads/product/1759499529-e32a9939dc1030151c1e0168b9dc1fa5.jpg_720x720q80.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(251, 'public/uploads/product/1759499529-e32a9939dc1030151c1e0168b9dc1fa5.jpg_720x720q80.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(252, 'public/uploads/product/1759499529-b5a9b2b56e61cee18211068aeec6e4af.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(253, 'public/uploads/product/1759501857-1740310249-80910-ugreen-ge.webp', 180, NULL, NULL, '2025-10-03 14:30:57', '2025-10-03 14:30:57'),
(254, 'public/uploads/product/1759501963-1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 181, NULL, NULL, '2025-10-03 14:32:43', '2025-10-03 14:32:43'),
(255, 'public/uploads/product/1759502165-1757776999-81c9ripib0l._uy1000_.webp', 182, NULL, NULL, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(256, 'public/uploads/product/1759502255-1757777751-thofeb23-03549.webp', 183, NULL, NULL, '2025-10-03 14:37:35', '2025-10-03 14:37:35'),
(257, 'public/uploads/product/1759502330-1757778001-screenshot-at-sep-13-21-39-24.webp', 184, NULL, NULL, '2025-10-03 14:38:50', '2025-10-03 14:38:50'),
(258, 'public/uploads/product/1759503396-1757779801-istockphoto-121111860-612x612.webp', 185, NULL, NULL, '2025-10-03 14:56:36', '2025-10-03 14:56:36'),
(259, 'public/uploads/product/1759503464-1757779231-mustard-oil-100percent-organic-wooden-cold-pressed-and-double-filtered-1000ml-oil-in-reusable-glass-bottle-kachi-ghani-satopradhan-1-32290742599906.webp', 186, NULL, NULL, '2025-10-03 14:57:44', '2025-10-03 14:57:44'),
(260, 'public/uploads/product/1759503555-1757778250-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-0db57-405414.webp', 187, NULL, NULL, '2025-10-03 14:59:15', '2025-10-03 14:59:15'),
(261, 'public/uploads/product/1759503635-1757779000-71snyaacrzl.webp', 188, NULL, NULL, '2025-10-03 15:00:35', '2025-10-03 15:00:35'),
(262, 'public/uploads/product/1759652002-team2-3.jpg', 189, NULL, NULL, '2025-10-05 08:13:22', '2025-10-05 08:13:22'),
(263, 'public/uploads/product/1760772926-1.1.2_1.1.2.png', 190, NULL, NULL, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(264, 'public/uploads/product/1760772926-1.8.1_1.8.1.jpg', 190, NULL, NULL, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(265, 'public/uploads/product/1761559002-combo-offer.jpg', 191, NULL, NULL, '2025-10-27 09:56:42', '2025-10-27 09:56:42'),
(266, 'public/uploads/product/1762613230-573006044_122174016998393321_2773744375485586145_n.jpg', 193, NULL, NULL, '2025-11-08 14:47:10', '2025-11-08 14:47:10'),
(267, 'public/uploads/product/1762613341-573006044_122174016998393321_2773744375485586145_n.jpg', 194, NULL, NULL, '2025-11-08 14:49:01', '2025-11-08 14:49:01'),
(268, 'public/uploads/product/1762613517-555194582_779396224898995_8823853251691840155_n.jpeg', 195, NULL, NULL, '2025-11-08 14:51:57', '2025-11-08 14:51:57'),
(269, 'public/uploads/product/1762865984-183965129-origpic-8f5ac5.webp', 184, NULL, NULL, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(270, 'public/uploads/product/1762865984-images.jfif', 184, NULL, NULL, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(271, 'public/uploads/product/1762865984-images (1).jfif', 184, NULL, NULL, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(272, 'public/uploads/product/1762866138-images (1).jfif', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(273, 'public/uploads/product/1762866138-images.jfif', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(274, 'public/uploads/product/1762866138-premium-chiffon-hijab-heather-960585.webp', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(275, 'public/uploads/product/1762866138-premium-chiffon-hijab-taupe-841181.webp', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(276, 'public/uploads/product/1762866283-71e3c97a534922babe9192f4245deeb1.png_720x720q80.png', 186, NULL, NULL, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(277, 'public/uploads/product/1762866283-aci-pure-mustard-oil-1-ltr.jfif', 186, NULL, NULL, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(278, 'public/uploads/product/1762866283-giant_324301.png', 186, NULL, NULL, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(279, 'public/uploads/product/1762866408-fresh-green-vegetables-in-wicker-basket-photo.jpg', 185, NULL, NULL, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(280, 'public/uploads/product/1762866408-images.jfif', 185, NULL, NULL, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(281, 'public/uploads/product/1762866408-istockphoto-121111860-612x612.jpg', 185, NULL, NULL, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(282, 'public/uploads/product/1762866514-images.jfif', 180, NULL, NULL, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(283, 'public/uploads/product/1762866514-JOYROOM-JR-CL06-154W-Multi-Port-Car-Cigarette-Lighter-Car-Charger.jpg', 180, NULL, NULL, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(284, 'public/uploads/product/1762866514-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 180, NULL, NULL, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(285, 'public/uploads/product/1762866561-images.jfif', 181, NULL, NULL, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(286, 'public/uploads/product/1762866561-JOYROOM-JR-CL06-154W-Multi-Port-Car-Cigarette-Lighter-Car-Charger.jpg', 181, NULL, NULL, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(287, 'public/uploads/product/1762866561-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 181, NULL, NULL, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(288, 'public/uploads/product/1762867027-1759503555-1757778250-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-0db57-405414.webp', 196, NULL, NULL, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(289, 'public/uploads/product/1762867027-images-(1).jfif', 196, NULL, NULL, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(290, 'public/uploads/product/1762867027-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-41fba-405414.jpg', 196, NULL, NULL, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(291, 'public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(292, 'public/uploads/product/1762867269-images.jfif', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(293, 'public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(294, 'public/uploads/product/1762867269-61bjy+if0ks.jpg', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(295, 'public/uploads/product/1762867779-4e3bc358294ed154f3763ae25e84d91c.jpg', 198, NULL, NULL, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(296, 'public/uploads/product/1762867779-107f548c79d19e4b79ed268bd81cd58d.jpg_720x720q80.jpg', 198, NULL, NULL, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(297, 'public/uploads/product/1762867779-833aecc8c7a04d8a20a5fb3d846883ff.jpg_720x720q80.jpg', 198, NULL, NULL, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(298, 'public/uploads/product/1762868036-images.jfif', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(299, 'public/uploads/product/1762868036-4e3bc358294ed154f3763ae25e84d91c.jpg', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(300, 'public/uploads/product/1762868036-107f548c79d19e4b79ed268bd81cd58d.jpg_720x720q80.jpg', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(301, 'public/uploads/product/1762868036-833aecc8c7a04d8a20a5fb3d846883ff.jpg_720x720q80.jpg', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(302, 'public/uploads/product/1762868343-6b3a9e8c518630293a361e7da1762b48.jpg', 200, NULL, NULL, '2025-11-11 13:39:03', '2025-11-11 13:39:03'),
(303, 'public/uploads/product/1762868344-0e1e78da1b33be8787926bbfe26133de.jpg', 200, NULL, NULL, '2025-11-11 13:39:04', '2025-11-11 13:39:04'),
(304, 'public/uploads/product/1762868344-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', 200, NULL, NULL, '2025-11-11 13:39:04', '2025-11-11 13:39:04'),
(305, 'public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', 201, NULL, NULL, '2025-11-11 13:42:23', '2025-11-11 13:42:23'),
(308, 'public/uploads/product/1763312890-screenshot_10.png', 202, NULL, NULL, '2025-11-16 17:08:10', '2025-11-16 17:08:10'),
(309, 'public/uploads/product/1763569354-relax-tea-(linkedin-post).jpg', 203, NULL, NULL, '2025-11-19 16:22:34', '2025-11-19 16:22:34'),
(310, 'public/uploads/product/1763623545-images.jpg', 204, NULL, NULL, '2025-11-20 07:25:45', '2025-11-20 07:25:45'),
(311, 'public/uploads/product/1764306069-589211685_849235617694610_2829143546630379657_n.jpg', 205, NULL, NULL, '2025-11-28 05:01:09', '2025-11-28 05:01:09'),
(312, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.24_274e29a5.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(313, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.25_3370ce0c.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(314, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.21_04d389e9.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(315, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.23_30b7714c.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(317, 'public/uploads/product/1764766501-screenshot_1.png', 207, NULL, NULL, '2025-12-03 12:55:01', '2025-12-03 12:55:01'),
(318, 'public/uploads/product/1764788259-canva_31d.jpg2_.jpg', 208, NULL, NULL, '2025-12-03 18:57:39', '2025-12-03 18:57:39'),
(319, 'public/uploads/product/1764788491-premium-mebership.jpg', 209, NULL, NULL, '2025-12-03 19:01:31', '2025-12-03 19:01:31'),
(320, 'public/uploads/product/1764937354-a07-black.jpg', 210, NULL, NULL, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(321, 'public/uploads/product/1764937354-a07-silver.jpg', 210, NULL, NULL, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(322, 'public/uploads/product/1764937354-a07-black.jpg', 210, NULL, NULL, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(324, 'public/uploads/product/1765475488-error.png', 211, NULL, NULL, '2025-12-11 17:51:28', '2025-12-11 17:51:28'),
(325, 'public/uploads/product/1765480547-screenshot-(2).png', 212, NULL, NULL, '2025-12-11 19:15:47', '2025-12-11 19:15:47'),
(326, 'public/uploads/product/1765726910-fav.png', 213, NULL, NULL, '2025-12-14 15:41:50', '2025-12-14 15:41:50'),
(327, 'public/uploads/product/1765768036-fav.png', 214, NULL, NULL, '2025-12-15 03:07:16', '2025-12-15 03:07:16'),
(328, 'public/uploads/product/1765998955-12e1e27d08f3f31cafc625ed8f456c4b.jpg', 215, NULL, NULL, '2025-12-17 19:15:55', '2025-12-17 19:15:55'),
(329, 'public/uploads/product/1765999213-12e1e27d08f3f31cafc625ed8f456c4b.jpg', 216, NULL, NULL, '2025-12-17 19:20:13', '2025-12-17 19:20:13'),
(330, 'public/uploads/product/1766668528-tvb.png', 217, NULL, NULL, '2025-12-25 13:15:28', '2025-12-25 13:15:28'),
(331, 'public/uploads/product/1768899512-logo.jpeg', 218, NULL, NULL, '2026-01-20 08:58:32', '2026-01-20 08:58:32'),
(332, 'public/uploads/product/1768920278-logo.jpeg', 219, NULL, NULL, '2026-01-20 14:44:38', '2026-01-20 14:44:38'),
(333, 'public/uploads/product/1769092647-img_2323.jpeg', 220, NULL, NULL, '2026-01-22 14:37:27', '2026-01-22 14:37:27'),
(334, 'public/uploads/product/1769192911-5c9cf664fcdfd28efbdfb7a7ab0e397b.jpg_720x720q80.jpg', 221, NULL, NULL, '2026-01-23 18:28:31', '2026-01-23 18:28:31'),
(335, 'public/uploads/product/1769192911-8cf001f7113c8db5554f5563bee70594.jpg', 221, NULL, NULL, '2026-01-23 18:28:31', '2026-01-23 18:28:31'),
(336, 'public/uploads/product/1769192911-images-(1).jfif', 221, NULL, NULL, '2026-01-23 18:28:31', '2026-01-23 18:28:31'),
(337, 'public/uploads/product/1769416997-0653647_3-in-1-travel-pillow-set_400.webp', 222, NULL, NULL, '2026-01-26 08:43:17', '2026-01-26 08:43:17'),
(338, 'public/uploads/product/1769437447-1797da4d9a7a36afc04ec60ec10f8d0d.jpg_960x960q80.jpg_.webp', 223, NULL, NULL, '2026-01-26 14:24:07', '2026-01-26 14:24:07'),
(339, 'public/uploads/product/1769439539-9ff3e2671613d5b7fc84c6fcd96fd16d.jpg_720x720q80.jpg', 224, NULL, NULL, '2026-01-26 14:58:59', '2026-01-26 14:58:59'),
(340, 'public/uploads/product/1769440037-63902183a6b2048cf1f67d74a46db75f.png', 225, NULL, NULL, '2026-01-26 15:07:17', '2026-01-26 15:07:17'),
(341, 'public/uploads/product/1769440755-659851fd907b0485fe61bc0b621db51e.jpg', 226, NULL, NULL, '2026-01-26 15:19:15', '2026-01-26 15:19:15'),
(342, 'public/uploads/product/1769441207-f34d9f24050c32104713693f8c66c1be.jpg', 227, NULL, NULL, '2026-01-26 15:26:47', '2026-01-26 15:26:47'),
(343, 'public/uploads/product/1770100975-screenshot_1.png', 228, NULL, NULL, '2026-02-03 06:42:55', '2026-02-03 06:42:55'),
(344, 'public/uploads/product/1770101233-screenshot_1.png', 229, NULL, NULL, '2026-02-03 06:47:13', '2026-02-03 06:47:13'),
(345, 'public/uploads/product/1770896275-1765987350.jpg', 230, NULL, NULL, '2026-02-12 11:37:55', '2026-02-12 11:37:55'),
(349, 'public/uploads/product/1772902605-69ac58cd150fb-1762868543-0e1e78da1b33be8787926bbfe26133de.jpg', 201, 36, 8, '2026-03-07 16:56:45', '2026-03-07 16:56:45'),
(350, 'public/uploads/product/1772902605-69ac58cd1807e-1762868543-6b3a9e8c518630293a361e7da1762b48.jpg', 201, 35, 7, '2026-03-07 16:56:45', '2026-03-07 16:56:45'),
(351, 'public/uploads/product/1772902605-69ac58cd19a6a-images.jfif', 201, 40, 9, '2026-03-07 16:56:45', '2026-03-07 16:56:45'),
(352, 'public/uploads/product/1773433601-1770956532-1767435120-71f4b180-b0b1-40c6-b45a-c24b997aa312.png', 231, NULL, NULL, '2026-03-13 20:26:41', '2026-03-13 20:26:41'),
(353, 'public/uploads/product/1773433656-1770956842-1767435757-1712389032j1bgv.webp', 232, NULL, NULL, '2026-03-13 20:27:36', '2026-03-13 20:27:36'),
(354, 'public/uploads/product/1773433727-1770957108-1767436127-walton-orbit-y72-arctic-blue-official-image-(1).webp', 233, NULL, NULL, '2026-03-13 20:28:47', '2026-03-13 20:28:47'),
(355, 'public/uploads/product/1773433783-1770957288-1767436312-xanon-x1-ultra_id1-364x364.jpg', 234, NULL, NULL, '2026-03-13 20:29:43', '2026-03-13 20:29:43'),
(356, 'public/uploads/product/1773433848-1770957538-1767436742-vsn65qled_pq1_galaxy_pro_800x800pxl_trly-4s.jpg.png', 235, NULL, NULL, '2026-03-13 20:30:48', '2026-03-13 20:30:48'),
(357, 'public/uploads/product/1773433903-1770957940-1767436742-vsn65qled_pq1_galaxy_pro_800x800pxl_trly-4s.jpg.png', 236, NULL, NULL, '2026-03-13 20:31:43', '2026-03-13 20:31:43'),
(358, 'public/uploads/product/1773433955-1770958176-1767436742-vsn65qled_pq1_galaxy_pro_800x800pxl_trly-4s.jpg.png', 237, NULL, NULL, '2026-03-13 20:32:35', '2026-03-13 20:32:35'),
(359, 'public/uploads/product/1773434008-1770958350-1767438577-google_tv_1.jpg.png', 238, NULL, NULL, '2026-03-13 20:33:28', '2026-03-13 20:33:28'),
(360, 'public/uploads/product/1773434061-1770958512-1767438894-web-image--2_atdg-d5.jpg.png', 239, NULL, NULL, '2026-03-13 20:34:21', '2026-03-13 20:34:21'),
(361, 'public/uploads/product/1773434133-1770958637-1767440969-images.jfif', 240, NULL, NULL, '2026-03-13 20:35:33', '2026-03-13 20:35:33'),
(362, 'public/uploads/product/1773434191-1770958637-1767440969-images.jfif', 241, NULL, NULL, '2026-03-13 20:36:31', '2026-03-13 20:36:31'),
(363, 'public/uploads/product/1773434256-1770959550-1767441247-1caca4b9c31bbfebdf3622831dd3c9ec.png_960x960q80.png_.webp', 242, NULL, NULL, '2026-03-13 20:37:36', '2026-03-13 20:37:36'),
(364, 'public/uploads/product/1773434322-1770959635-1767441358-ef4e07f03cb788bed122e72e02c94818.jpg_720x720q80.jpg', 243, NULL, NULL, '2026-03-13 20:38:42', '2026-03-13 20:38:42'),
(365, 'public/uploads/product/1773434371-1770959635-1767441358-ef4e07f03cb788bed122e72e02c94818.jpg_720x720q80.jpg', 244, NULL, NULL, '2026-03-13 20:39:31', '2026-03-13 20:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type` enum('physical','digital') NOT NULL DEFAULT 'physical',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `reseller_price` decimal(14,2) DEFAULT NULL,
  `is_wholesale` tinyint(4) NOT NULL DEFAULT 0,
  `wholesale_price` decimal(14,2) DEFAULT NULL,
  `min_wholesale_quantity` int(11) NOT NULL DEFAULT 1,
  `advance_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `ratting` float(2,1) NOT NULL DEFAULT 0.0,
  `stock` int(11) NOT NULL,
  `is_digital` tinyint(1) NOT NULL DEFAULT 0,
  `free_delivery` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `digital_file` varchar(255) DEFAULT NULL,
  `download_limit` int(11) DEFAULT NULL,
  `download_expire_days` int(11) DEFAULT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `pro_video_type` varchar(20) DEFAULT NULL,
  `pro_video_path` varchar(300) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `flashsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `facebook_posted_at` timestamp NULL DEFAULT NULL,
  `approval_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'approved',
  `sold` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(221, 'physical', 'Jononi Madical Hall', 'jononi-madical-hall-221', 20, 64, NULL, 18, 7, 'P0221', 300, 400, 350, NULL, 1, NULL, 1, 0.00, 1.0, 95, 0, 0, NULL, NULL, NULL, 'PCS', '1PsU4WXJC00', NULL, NULL, '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type:&nbsp;Solid Bandana&nbsp;</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Material: Cotton</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Absorption moisture</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Sweat-wicking and anti-UV</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">COOL DESIGN &amp; MULTI-FUNCTIONAL USE</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Black</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">They can use as a neck gaiter, head wrap, face scarf, balaclava, beanie, sweatband, or bandana etc</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">All patterns on the bandana face masks are originally designed in Fashion style and they will make you look distinctive and cool</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Our neck gaiter has more than 13 different dress ways.</li></ul>', 'Jononi Madical Hall', 'Product Type:&nbsp;Solid Bandana&nbsp;Material: CottonAbsorption moistureSweat-wicking and anti-UVCOOL DESIGN &amp; MULTI-FUNCTIONAL USEColor: BlackThey can use...', '', 'public/uploads/product/1769192911-5c9cf664fcdfd28efbdfb7a7ab0e397b.jpg_720x720q80.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', '10', NULL, '2026-01-23 18:28:31', '2026-02-24 09:20:36'),
(222, 'physical', '3 in 1 Travel Pillow Set', '3-in-1-travel-pillow-set-222', 26, NULL, NULL, NULL, 7, 'P0222', 500, 800, 900, 900.00, 0, NULL, 1, 0.00, 0.0, 96, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i3.1c372807qx0RoM\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of 3 in 1 Travel Pillow Set</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul data-spm-anchor-id=\"0.0.0.i11.2c217463CP6cLo\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Productdetails</li><li data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.1c372807qx0RoM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Soft surface material</li><li data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i4.1c372807qx0RoM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Perfect for car plane or other travel</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Fashionable beautiful and comfortable</li><li data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i5.1c372807qx0RoM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Soft form-fitting ear plugs</li><li data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.1c372807qx0RoM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Effectively reduce noise</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Convenient to carry</li><li data-spm-anchor-id=\"0.0.0.i12.2c217463CP6cLo\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Package includes:</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">U Shape Pillow</li><li data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i2.1c372807qx0RoM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Eyes Mask</li><li data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i3.1c372807qx0RoM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Ear Plug</li></ul></div></div></div>', '3 in 1 Travel Pillow Set', 'Product details of 3 in 1 Travel Pillow SetProductdetailsSoft surface materialPerfect for car plane or other travelFashionable beautiful and comfortableSoft for...', '', 'public/uploads/product/1769416997-0653647_3-in-1-travel-pillow-set_400.webp', 1, 1, 0, NULL, 1, NULL, 'approved', '10', NULL, '2026-01-26 08:43:17', '2026-03-10 17:36:33'),
(223, 'physical', 'HTC AT-538 Hair And Beard Trimmer For Men', 'htc-at-538-hair-and-beard-trimmer-for-men-223', 26, NULL, NULL, 19, 8, 'P0223', 300, 500, 600, NULL, 0, NULL, 1, 0.00, 1.0, 9993, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.61512850B2EHux\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of HTC AT-538 Hair And Beard Trimmer For Men</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden;\"><li data-spm-anchor-id=\"0.0.0.i9.29747463T40DXF\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid; column-span: all;\">• HTC AT-538 Hair And Beard Trimmer for Men.<br style=\"margin: 0px; padding: 0px;\">• Perfect for shaving and grooming.<br style=\"margin: 0px; padding: 0px;\">• Suitable for hair and beard trimming.<br style=\"margin: 0px; padding: 0px;\">• High-quality and durable product.<br style=\"margin: 0px; padding: 0px;\">• Easy to use and maintain.<br style=\"margin: 0px; padding: 0px;\">• Ideal for men\'s personal care.<br style=\"margin: 0px; padding: 0px;\">• From the Health &amp; Beauty category.<br style=\"margin: 0px; padding: 0px;\">• Part of the Shaving &amp; Grooming section.<br style=\"margin: 0px; padding: 0px;\">• Trimmers, Groomers &amp; Clippers subcategory.</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><p data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.61512850B2EHux\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Introducing the HTC AT-538 Hair and Beard Trimmer for Men, the perfect tool for achieving a well-groomed look. This trimmer is designed to provide a comfortable and precise trimming experience, making it easy to maintain your hair and beard. With its sleek design and durable construction, this trimmer is built to last. The trimmer is perfect for men\'s grooming needs and is ideal for use at home or on the go. Whether you\'re looking to trim your beard or style your hair, the HTC AT-538 Hair and Beard Trimmer is the perfect tool for the job.</p></div></div></div>', 'HTC AT-538 Hair And Beard Trimmer For Men', 'Product details of HTC AT-538 Hair And Beard Trimmer For Men• HTC AT-538 Hair And Beard Trimmer for Men.• Perfect for shaving and grooming.• Suitable for hair a...', '', 'public/uploads/product/1769437447-1797da4d9a7a36afc04ec60ec10f8d0d.jpg_960x960q80.jpg_.webp', 1, 1, 0, NULL, 1, NULL, 'approved', '2', NULL, '2026-01-26 14:24:07', '2026-02-26 15:39:35'),
(224, 'physical', 'New collection Hit western dress two piece Tops For Women', 'new-collection-hit-western-dress-two-piece-tops-for-women-224', 20, NULL, NULL, 19, 9, 'P0224', 500, 2500, 2200, 900.00, 0, NULL, 1, 0.00, 1.0, 9993, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces; line-height: 1.7;\"><span data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.50b578ad4DlPIA\" style=\"margin: 0px; padding: 0px;\">মোস্ট ডিমান্ডিং ওয়েস্টিন ড্রেস টু পিস </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">শার্ট প্যান্ট বাটার সিল্ক </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">শার্ট লম্বা ৪২ ইঞ্চি </span></p><p data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.50b578ad4DlPIA\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">প্যান্ট&nbsp;লম্বা&nbsp;৩৮&nbsp;ইঞ্চি</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px; list-style-position: initial; list-style-image: initial; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; white-space-collapse: break-spaces;\"><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">আমরা একটি প্রসিদ্ধ Brand থেকে এই পণ্যগুলো sale করছি, আমরা সব সময় আমাদের প্রোডাক্টের গুণগতমান অক্ষুন্ন রাখতে কাজ করছদক্ষ কারিগরদের দ্বারা পণ্যগুলো প্রস্তুত করি, তাই আমাদের প্রতিটি পণ্যর ফিনিশিং খুবই ভালো মানের হয়ে থাকেআমাদের প্রতিটি পন্য ছবির সাথে মিলবে কে প্রস্তুত করা হয়। তাই আপনারা নির্ভরযোগ্য ভাবে অর্ডার করতে পারেন । ছবির অনুরূপ</span></div></li></ul>', 'New collection Hit western dress two piece Tops For Women', 'মোস্ট ডিমান্ডিং ওয়েস্টিন ড্রেস টু পিস শার্ট প্যান্ট বাটার সিল্ক শার্ট লম্বা ৪২ ইঞ্চি প্যান্ট&nbsp;লম্বা&nbsp;৩৮&nbsp;ইঞ্চিআমরা একটি প্রসিদ্ধ Brand থেকে এই পণ্য...', '', 'public/uploads/product/1769439539-9ff3e2671613d5b7fc84c6fcd96fd16d.jpg_720x720q80.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', '2', NULL, '2026-01-26 14:58:59', '2026-03-24 11:34:51'),
(225, 'physical', 'Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 'intel-dual-core-desktop-computer-full-setup-|-customizable-4-8gb-ram,-120gb-ssd,-500gb-1tb-hdd-&-monitor-|-affordable-budget-office-&-gaming-pc-windows-10-pro-2025-225', 22, NULL, NULL, 20, 10, 'P0225', 2000, 12000, 10250, 1000.00, 0, NULL, 1, 0.00, 1.0, 92, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.456f6f184yXPhb\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD &amp; Monitor | Affordable Budget Office &amp; Gaming PC Windows 10 Pro 2025</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px; white-space-collapse: break-spaces;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 16px; padding: 0px; list-style-position: initial; list-style-image: initial; overflow: hidden;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Monitor: 17/19/22 inch (Any China Brand; actual monitor may differ from images). Choosing \"No Monitor Only CPU\" means you\'ll receive only the CPU</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Processor: Intel Pentium Dual-Core E5700, 3.00 GHz or Higher</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">RAM: 4/8GB</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">SSD: 120GB WD/Seagate/Toshiba/Hitachi/Samsung (or Other Brands) </span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">HDD (Hard Disk): 500/1000GB (1TB) WD/Seagate/Toshiba/Hitachi/Samsung (or Other Brands) </span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Graphics: Intel HD Built-in Shared</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Motherboard Brand: Intel/Gigabyte/Foxcon/Esonic/Speed Or Any Other Brand</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Motherboard Chipset: Intel</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Casing: GIGASONIC/OVO/STAR SONIC/NJ (Casing can be different from the given pictures) </span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power Supply: ATX 500w or Higher</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Operating System: Upto Windows 10 Pro Free DOS</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.456f6f184yXPhb\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Warranty: 5 Years Service Warranty (Excluding Casing, Power Supply, Cooling Fan, Keyboard, Mouse and Cables)</span></div></li></ul></article></div></div></div>', 'Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 'Product details of Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD &amp; Monitor | Affordable Budget Office &amp;...', '', 'public/uploads/product/1769440037-63902183a6b2048cf1f67d74a46db75f.png', 1, 1, 0, NULL, 1, NULL, 'approved', '2', NULL, '2026-01-26 15:07:17', '2026-03-03 22:45:37'),
(226, 'physical', 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 'achillea-two-tone-vintage-jacquard-paisley-pashmina-shawl-wrap-scarf-for-woman-muticolor-226', 20, NULL, NULL, 21, 11, 'P0226', 2000, 12000, 1300, 900.00, 0, NULL, 1, 0.00, 1.0, 9982, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px; list-style-position: initial; list-style-image: initial; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; white-space-collapse: break-spaces;\"><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; color: rgb(15, 17, 17); font-size: 10.5pt;\">Blend of silk, fine viscose and acrylic. Soft silky feel fabric. Dimensions: APPROX. 28\"W x 78\"L including fringes (3\" fringe tassels on each end). Weight: 6 oz.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.6bc64e44qq1VFP\" style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; color: rgb(15, 17, 17); font-size: 10.5pt;\">Ideal as a wrap for a wedding or evening event and great as a warm scarf during cold weather. Perfect for chilly evenings or air-conditioned places (office, church, airplane, theater, restaurant, supermarket and cruise travel). Cozy and perfect to wear to raves, shows or festivals.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; color: rgb(15, 17, 17); font-size: 10.5pt;\">The elegant paisley pashmina can be worn as a wrap with a evening dress, or paired with a sweater for a casual weekend look. Great for many different occasions from casual summer nights to formal elegant weddings.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; color: rgb(15, 17, 17); font-size: 10.5pt;\">So versatile, great as a stole, a wrap, a cover-up or a large scarf. It\'s also used as bridesmaid shawl and wedding shower gift so you can stay within your budget yet enjoy the elegance and beauty of pashmina shawls.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.6bc64e44qq1VFP\" style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; color: rgb(15, 17, 17); font-size: 10.5pt;\">Gentle cycle or hand wash in cold water. Wash individually. Squeeze gently and do not twist. Hang to dry or dry flat.</span></div></li></ul>', 'Achillea Two Tone Vintage Jacquard Paisley Pashmina Shawl Wrap Scarf for woman muticolor', 'Blend of silk, fine viscose and acrylic. Soft silky feel fabric. Dimensions: APPROX. 28\"W x 78\"L including fringes (3\" fringe tassels on each end). Weight: 6 oz...', '', 'public/uploads/product/1769440755-659851fd907b0485fe61bc0b621db51e.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', '2', NULL, '2026-01-26 15:19:15', '2026-03-24 11:33:40'),
(227, 'physical', 'Paragon Brown Egg 1 Dozen (Bundle of 3)', 'paragon-brown-egg-1-dozen-(bundle-of-3)-227', 23, NULL, NULL, 21, 12, 'P0227', 500, 2500, 2200, 800.00, 0, NULL, 1, 0.00, 1.0, 9992, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<p><span style=\"color: rgb(33, 37, 41); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces;\">Quantity: 12 pcs x 3= 36 pcs Natural – Antibiotic-free – No harmful substances – Safe. Certification: ISO 22000, GMP, HACCP, 100% HALAL.</span><span style=\"color: rgb(33, 37, 41); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces;\">Quantity: 12 pcs x 3= 36 pcs Natural – Antibiotic-free – No harmful substances – Safe. Certification: ISO 22000, GMP, HACCP, 100% HALAL.</span><span style=\"color: rgb(33, 37, 41); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces;\">Quantity: 12 pcs x 3= 36 pcs Natural – Antibiotic-free – No harmful substances – Safe. Certification: ISO 22000, GMP, HACCP, 100% HALAL.</span><span style=\"color: rgb(33, 37, 41); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space-collapse: break-spaces;\">Quantity: 12 pcs x 3= 36 pcs Natural – Antibiotic-free – No harmful substances – Safe. Certification: ISO 22000, GMP, HACCP, 100% HALAL.</span></p>', 'Paragon Brown Egg 1 Dozen (Bundle of 3)', 'Quantity: 12 pcs x 3= 36 pcs Natural – Antibiotic-free – No harmful substances – Safe. Certification: ISO 22000, GMP, HACCP, 100% HALAL.Quantity: 12 pcs x 3= 36...', '', 'public/uploads/product/1769441207-f34d9f24050c32104713693f8c66c1be.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', '2', NULL, '2026-01-26 15:26:47', '2026-03-10 11:44:29'),
(231, 'physical', 'zenx 2', 'zenx-2-228', 23, NULL, NULL, 19, NULL, 'P0228', 1200, 3500, 4500, 600.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<table class=\"spec-grp-tbl\" style=\"width: 908.5px; color: rgb(93, 93, 93); font-size: 15px; font-family: Roboto, sans-serif; background-color: rgba(255, 255, 255, 0.85);\"><tbody><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Camera Setup</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">Dual</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Resolution</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">52 MP, f/2.2, Primary Camera, 2 MP, Camera</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Autofocus</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-check-circle-fill text-success\" viewBox=\"0 0 16 16\"><path d=\"M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z\"></path></svg>&nbsp;Yes</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Flash</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-check-circle-fill text-success\" viewBox=\"0 0 16 16\"><path d=\"M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z\"></path></svg>&nbsp;LED Flash</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Image Resolution</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">7200 x 7200 pixels</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Settings</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">Exposure compensation, ISO control</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Zoom</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">Digital Zoom</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Shooting Modes</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">Continuous Shooting, High Dynamic Range mode (HDR)</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Aperture</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">f/2.2</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Camera Features</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">Auto Flash, Face detection, Touch to focus</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Video Recording</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">1920x1080</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 226.875px; background-color: rgba(226, 226, 226, 0.13); padding: 7px 10px !important;\">Video FPS</td><td class=\"td2 ss\" style=\"border-width: 0px; border-style: initial; border-color: initial; width: 680.625px; padding: 7px 10px !important;\">30 fps</td></tr></tbody></table>', 'zenx 2', 'Camera SetupDualResolution52 MP, f/2.2, Primary Camera, 2 MP, CameraAutofocus&nbsp;YesFlash&nbsp;LED FlashImage Resolution7200 x 7200 pixelsSettingsExposure com...', '', 'public/uploads/product/1773433601-1770956532-1767435120-71f4b180-b0b1-40c6-b45a-c24b997aa312.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:26:41', '2026-03-13 20:26:41'),
(232, 'physical', 'NEXG N76', 'nexg-n76-232', 23, NULL, NULL, NULL, NULL, 'P0232', 14500, 25500, 22000, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<div class=\"header bg-white border-bottom p-2\" style=\"color: rgb(98, 98, 98); font-family: Roboto, sans-serif; font-size: 16px; border-bottom: 1px solid rgb(222, 226, 230) !important; padding: 0.5rem !important; background-color: rgb(255, 255, 255) !important;\"><h2 class=\"foswald mb-0 h6 foswald\" style=\"margin-top: 0px; line-height: 1.2; color: rgb(34, 34, 117); font-size: 1rem; margin-bottom: 0px !important; font-family: Oswald, sans-serif !important;\">Walton NEXG N76 Price in Bangladesh 2024 &amp; Release Date</h2></div><div class=\"product-specs-tbl cbg-white p-2\" style=\"color: rgb(98, 98, 98); font-family: Roboto, sans-serif; font-size: 16px; padding: 0.5rem !important; background-color: rgba(255, 255, 255, 0.85) !important;\"><div class=\"specs-group\" style=\"border-radius: 5px; overflow: hidden;\"><table class=\"table m-0\" style=\"--ct-table-striped-color: #6c757d; --ct-table-striped-bg: #f3f7f9; --ct-table-active-color: #6c757d; --ct-table-active-bg: #f3f7f9; --ct-table-hover-color: #6c757d; --ct-table-hover-bg: #f3f7f9; width: 1095px; color: rgb(93, 93, 93); border-color: rgb(222, 226, 230); --ct-table-group-separator-color: #dee2e6; --ct-table-caption-color: #98a6ad; --bs-table-bg: transparent; --bs-table-accent-bg: transparent; --bs-table-striped-color: #212529; --bs-table-striped-bg: rgba(0, 0, 0, 0.05); --bs-table-active-color: #212529; --bs-table-active-bg: rgba(0, 0, 0, 0.1); --bs-table-hover-color: #212529; --bs-table-hover-bg: rgba(0, 0, 0, 0.075); font-size: 15px;\"><tbody style=\"border-width: 1px;\"><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Name</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">Walton NEXG N76</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Official Price</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">BDT. 14,499</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Release Date</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">25-Dec-2025</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Market Status</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">In Stock</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Variant</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">RAM: 8GB + ROM: 128GB</td></tr></tbody></table></div></div>', 'NEXG N76', 'Walton NEXG N76 Price in Bangladesh 2024 &amp; Release DateNameWalton NEXG N76Official PriceBDT. 14,499Release Date25-Dec-2025Market StatusIn StockVariantRAM: 8...', '', 'public/uploads/product/1773433656-1770956842-1767435757-1712389032j1bgv.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:27:36', '2026-03-13 20:27:36'),
(233, 'physical', 'ORBIT Y72', 'orbit-y72-233', 23, NULL, NULL, 21, NULL, 'P0233', 12500, 16500, 18500, 1000.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', '238sSRw_tHw', 'youtube', NULL, '<div class=\"header bg-white border-bottom p-2\" style=\"color: rgb(98, 98, 98); font-family: Roboto, sans-serif; font-size: 16px; border-bottom: 1px solid rgb(222, 226, 230) !important; padding: 0.5rem !important; background-color: rgb(255, 255, 255) !important;\"><h2 class=\"foswald mb-0 h6 foswald\" style=\"margin-top: 0px; line-height: 1.2; color: rgb(34, 34, 117); font-size: 1rem; margin-bottom: 0px !important; font-family: Oswald, sans-serif !important;\">Walton Orbit Y72 Price in Bangladesh 2024 &amp; Release Date</h2></div><div class=\"product-specs-tbl cbg-white p-2\" style=\"color: rgb(98, 98, 98); font-family: Roboto, sans-serif; font-size: 16px; padding: 0.5rem !important; background-color: rgba(255, 255, 255, 0.85) !important;\"><div class=\"specs-group\" style=\"border-radius: 5px; overflow: hidden;\"><table class=\"table m-0\" style=\"--ct-table-striped-color: #6c757d; --ct-table-striped-bg: #f3f7f9; --ct-table-active-color: #6c757d; --ct-table-active-bg: #f3f7f9; --ct-table-hover-color: #6c757d; --ct-table-hover-bg: #f3f7f9; width: 1095px; color: rgb(93, 93, 93); border-color: rgb(222, 226, 230); --ct-table-group-separator-color: #dee2e6; --ct-table-caption-color: #98a6ad; --bs-table-bg: transparent; --bs-table-accent-bg: transparent; --bs-table-striped-color: #212529; --bs-table-striped-bg: rgba(0, 0, 0, 0.05); --bs-table-active-color: #212529; --bs-table-active-bg: rgba(0, 0, 0, 0.1); --bs-table-hover-color: #212529; --bs-table-hover-bg: rgba(0, 0, 0, 0.075); font-size: 15px;\"><tbody style=\"border-width: 1px;\"><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Name</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">Walton Orbit Y72</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Official Price</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">BDT. 10,999</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Release Date</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">10-Dec-2025</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Market Status</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">In Stock</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Variant</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">RAM: 4GB + ROM: 64GB</td></tr></tbody></table></div></div>', 'ORBIT Y72', 'Walton Orbit Y72 Price in Bangladesh 2024 &amp; Release DateNameWalton Orbit Y72Official PriceBDT. 10,999Release Date10-Dec-2025Market StatusIn StockVariantRAM:...', '', 'public/uploads/product/1773433727-1770957108-1767436127-walton-orbit-y72-arctic-blue-official-image-(1).webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:28:47', '2026-03-13 20:28:47'),
(234, 'physical', 'XANON X1 ULTRA', 'xanon-x1-ultra-234', 23, NULL, NULL, 19, NULL, 'P0234', 500, 1200, 600, 1000.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<div class=\"header bg-white border-bottom p-2\" style=\"color: rgb(98, 98, 98); font-family: Roboto, sans-serif; font-size: 16px; border-bottom: 1px solid rgb(222, 226, 230) !important; padding: 0.5rem !important; background-color: rgb(255, 255, 255) !important;\"><h2 class=\"foswald mb-0 h6 foswald\" style=\"margin-top: 0px; line-height: 1.2; color: rgb(34, 34, 117); font-size: 1rem; margin-bottom: 0px !important; font-family: Oswald, sans-serif !important;\">Walton XANON X1 Ultra Price in Bangladesh 2024 &amp; Release Date</h2></div><div class=\"product-specs-tbl cbg-white p-2\" style=\"color: rgb(98, 98, 98); font-family: Roboto, sans-serif; font-size: 16px; padding: 0.5rem !important; background-color: rgba(255, 255, 255, 0.85) !important;\"><div class=\"specs-group\" style=\"border-radius: 5px; overflow: hidden;\"><table class=\"table m-0\" style=\"--ct-table-striped-color: #6c757d; --ct-table-striped-bg: #f3f7f9; --ct-table-active-color: #6c757d; --ct-table-active-bg: #f3f7f9; --ct-table-hover-color: #6c757d; --ct-table-hover-bg: #f3f7f9; width: 1095px; color: rgb(93, 93, 93); border-color: rgb(222, 226, 230); --ct-table-group-separator-color: #dee2e6; --ct-table-caption-color: #98a6ad; --bs-table-bg: transparent; --bs-table-accent-bg: transparent; --bs-table-striped-color: #212529; --bs-table-striped-bg: rgba(0, 0, 0, 0.05); --bs-table-active-color: #212529; --bs-table-active-bg: rgba(0, 0, 0, 0.1); --bs-table-hover-color: #212529; --bs-table-hover-bg: rgba(0, 0, 0, 0.075); font-size: 15px;\"><tbody style=\"border-width: 1px;\"><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Name</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">Walton XANON X1 Ultra</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Official Price</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">BDT. 17,999</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Release Date</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">19-Aug-2025</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Market Status</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">In Stock</td></tr><tr style=\"border-width: 1px; border-color: rgba(240, 240, 240, 0.94); border-image: initial;\"><td class=\"td1\" style=\"border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(226, 226, 226, 0.13); box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 273.5px; padding: 7px 10px !important;\">Variant</td><td class=\"td2\" style=\"border-width: 0px; border-style: initial; border-color: initial; box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 9999px inset; width: 820.5px; padding: 7px 10px !important;\">RAM: 6GB + ROM: 128GB</td></tr></tbody></table></div></div>', 'XANON X1 ULTRA', 'Walton XANON X1 Ultra Price in Bangladesh 2024 &amp; Release DateNameWalton XANON X1 UltraOfficial PriceBDT. 17,999Release Date19-Aug-2025Market StatusIn StockV...', '', 'public/uploads/product/1773433783-1770957288-1767436312-xanon-x1-ultra_id1-364x364.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:29:43', '2026-03-13 20:29:43');
INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(235, 'physical', 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 'vision-65\"-qled-tv-google-android-4k-pq1-galaxy-pro-235', 19, NULL, NULL, 21, NULL, 'P0235', 1200, 24500, 12500, 800.00, 0, NULL, 1, 0.00, 0.0, 9999, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\"><span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit; color: rgb(31, 73, 125); font-family: &quot;Times New Roman&quot;, serif;\">VISION</span><span style=\"box-sizing: inherit; color: black; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;32\" LED TV P20 Prime<br style=\"box-sizing: inherit;\"></span></span>item Code : 874084<br style=\"box-sizing: inherit;\">1. Bezel less Classy outlook.</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">2. 2*8 Watt speaker with excellent sound</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">3. ADS Panel technology, Normally black, Transmissive</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">4. Panel Type: DLED</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">5. Contrast ratio 1200:1</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">6. Brightness-180 cd/m2</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">7. Resolution : 1366 x 768</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">8. 16.7 Million Color depth</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">9. 2xUSB &amp; 2xHDMI supported</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">10. Backlight Adjustment Facility</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">11. Noise Reduction Facility</span></span></div><div><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\"><br></span></span></div>', 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 'VISION&nbsp;32\" LED TV P20 Primeitem Code : 8740841. Bezel less Classy outlook.2. 2*8 Watt speaker with excellent sound3. ADS Panel technology, Normally black,...', '', 'public/uploads/product/1773433848-1770957538-1767436742-vsn65qled_pq1_galaxy_pro_800x800pxl_trly-4s.jpg.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:30:48', '2026-03-14 03:11:29'),
(236, 'physical', 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 'vision-65\"-qled-tv-google-android-4k-pq1-galaxy-pro-236', 19, NULL, NULL, 20, NULL, 'P0236', 5000, 12000, 10250, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\"><span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit; color: rgb(31, 73, 125); font-family: &quot;Times New Roman&quot;, serif;\">VISION</span><span style=\"box-sizing: inherit; color: black; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;32\" LED TV P20 Prime<br style=\"box-sizing: inherit;\"></span></span>item Code : 874084<br style=\"box-sizing: inherit;\">1. Bezel less Classy outlook.</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">2. 2*8 Watt speaker with excellent sound</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">3. ADS Panel technology, Normally black, Transmissive</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">4. Panel Type: DLED</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">5. Contrast ratio 1200:1</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">6. Brightness-180 cd/m2</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">7. Resolution : 1366 x 768</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">8. 16.7 Million Color depth</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">9. 2xUSB &amp; 2xHDMI supported</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">10. Backlight Adjustment Facility</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">11. Noise Reduction Facility</span></span></div><div><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\"><br></span></span></div>', 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 'VISION&nbsp;32\" LED TV P20 Primeitem Code : 8740841. Bezel less Classy outlook.2. 2*8 Watt speaker with excellent sound3. ADS Panel technology, Normally black,...', '', 'public/uploads/product/1773433903-1770957940-1767436742-vsn65qled_pq1_galaxy_pro_800x800pxl_trly-4s.jpg.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:31:43', '2026-03-13 20:31:43'),
(237, 'physical', 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 'vision-65\"-qled-tv-google-android-4k-pq1-galaxy-pro-237', 19, NULL, NULL, 22, NULL, 'P0237', 5000, 1200, 600, 900.00, 0, NULL, 1, 0.00, 0.0, 9999, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\"><span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit; color: rgb(31, 73, 125); font-family: &quot;Times New Roman&quot;, serif;\">VISION</span><span style=\"box-sizing: inherit; color: black; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;32\" LED TV P20 Prime<br style=\"box-sizing: inherit;\"></span></span>item Code : 874084<br style=\"box-sizing: inherit;\">1. Bezel less Classy outlook.</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">2. 2*8 Watt speaker with excellent sound</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">3. ADS Panel technology, Normally black, Transmissive</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">4. Panel Type: DLED</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">5. Contrast ratio 1200:1</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">6. Brightness-180 cd/m2</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">7. Resolution : 1366 x 768</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">8. 16.7 Million Color depth</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">9. 2xUSB &amp; 2xHDMI supported</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">10. Backlight Adjustment Facility</span></span></div><div style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 13px;\"><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\">11. Noise Reduction Facility</span></span></div><div><span style=\"box-sizing: inherit; font-family: Calibri, sans-serif; font-size: medium;\"><span style=\"box-sizing: inherit; font-family: Tahoma, sans-serif; font-size: small;\"><br></span></span></div>', 'VISION 65\" QLED TV Google Android 4K PQ1 Galaxy Pro', 'VISION&nbsp;32\" LED TV P20 Primeitem Code : 8740841. Bezel less Classy outlook.2. 2*8 Watt speaker with excellent sound3. ADS Panel technology, Normally black,...', '', 'public/uploads/product/1773433955-1770958176-1767436742-vsn65qled_pq1_galaxy_pro_800x800pxl_trly-4s.jpg.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:32:35', '2026-03-31 21:01:28'),
(238, 'physical', 'Vision 32\" Z30 Smart LED Optima Google TV', 'vision-32\"-z30-smart-led-optima-google-tv-238', 19, NULL, NULL, 21, NULL, 'P0238', 1200, 12000, 10250, 900.00, 0, NULL, 1, 0.00, 0.0, 9999, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<table style=\"width: 1056.8px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-spacing: 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; color: rgb(30, 30, 30); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><tbody style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td colspan=\"2\" style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\"><strong style=\"font-weight: bold; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">BASIC SPECIFICATIONS:</strong></p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">&nbsp;</p></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td rowspan=\"7\" style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">&nbsp;</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">TV category</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Smart TV</p></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Operating System</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Google TV (Android 14)</p></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Voice Control</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Yes</p></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">App Store</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Google Play Store</p></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">AI System</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Yes, Google Assistant</p></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Smart Share</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Google Chrome-cast, Built-In</p></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Preinstalled App</p></td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 6px 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; line-height: 1.45;\">Google Play /Netflix/ Youtube/ Prime Video/LiveTV/Media player / Help manual</p></td></tr></tbody></table>', 'Vision 32\" Z30 Smart LED Optima Google TV', 'BASIC SPECIFICATIONS:&nbsp;&nbsp;TV categorySmart TVOperating SystemGoogle TV (Android 14)Voice ControlYesApp StoreGoogle Play StoreAI SystemYes, Google Assista...', '', 'public/uploads/product/1773434008-1770958350-1767438577-google_tv_1.jpg.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:33:28', '2026-03-31 21:01:28'),
(239, 'physical', 'Vision 32\" LED TV Q10S Google TV', 'vision-32\"-led-tv-q10s-google-tv-239', 19, NULL, NULL, 22, NULL, 'P0239', 5000, 2500, 2200, 1000.00, 0, NULL, 1, 0.00, 0.0, 9998, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<table style=\"width: 1056.8px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-spacing: 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; color: rgb(30, 30, 30); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><tbody style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Product Name : VISION 32\" QLED Google TV Q10s</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Item Code : 751348</td></tr></tbody></table><table style=\"width: 1056.8px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-spacing: 0px; scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent; color: rgb(30, 30, 30); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><tbody style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">SPECIFICATION</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">PANEL</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Panel Maker</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">LG</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Display Type</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">QLED</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Aspect Ratio</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">16:9</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Resolution&nbsp;&nbsp;</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">1366*768</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Brightness</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">220 typ</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Contrast</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">1200:1</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Viewing Angle&nbsp;&nbsp;&nbsp;</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">178°* 178°</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Display Colors</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">16.7M</td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\"><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">Response Time</td><td style=\"padding-right: 5px; padding-left: 5px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); scrollbar-width: thin; scrollbar-color: rgb(162, 162, 162) transparent;\">8ms</td></tr></tbody></table>', 'Vision 32\" LED TV Q10S Google TV', 'Product Name : VISION 32\" QLED Google TV Q10sItem Code : 751348SPECIFICATIONPANELPanel MakerLGDisplay TypeQLEDAspect Ratio16:9Resolution&nbsp;&nbsp;1366*768Brig...', '', 'public/uploads/product/1773434061-1770958512-1767438894-web-image--2_atdg-d5.jpg.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:34:21', '2026-03-30 08:47:24');
INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(240, 'physical', 'Wireless Earbuds A9 Pro Touch Screen ANC Wireless Earphones - TWS Noise-Cancelling Earbuds, Bluetooth 5.3, Long Battery Life, HiFi Sound Quality', 'wireless-earbuds-a9-pro-touch-screen-anc-wireless-earphones---tws-noise-cancelling-earbuds,-bluetooth-5.3,-long-battery-life,-hifi-sound-quality-240', 22, NULL, NULL, 21, NULL, 'P0240', 500, 1200, 10250, 1000.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 16px; white-space-collapse: break-spaces; list-style-position: initial; list-style-image: initial; overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i6.156362951urV3x\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 52px; color: rgb(33, 33, 33); font-size: 16px; font-family: Roboto-Medium; padding: 0px 24px; letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Wireless Earbuds A9 Pro Touch Screen ANC Wireless Earphones - TWS Noise-Cancelling Earbuds, Bluetooth 5.3, Long Battery Life, HiFi Sound Quality</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px;\"><ul style=\"padding: 0px; margin-right: 0px; margin-left: 16px; list-style-position: initial; list-style-image: initial; overflow: hidden;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Product name: A9 Pro</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Smart screen control: can control photo taking/music playback/song switching/volume control/noise reduction transparency/switching/language switching/short video control/etc.</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Charging box battery capacity: 600mAh</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Earphone battery capacity: 30mA</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Play time: total play time 36 hours/single earphone 5 hours</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Thousand yuan sound quality: support HiFi sound quality</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Support noise reduction: ANC 35dB</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Support earphone touch control</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Support personalized spatial audio</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Color: White/Black</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">1. Bluetooth version: 5.4 【 Two Ear Call 】</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">2. Support protocols: A2DP/AVRCP/HFP/HID/AVCTP/AVDTP, and SPP</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">3. Response frequency: 20-20000Hz</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">4. Speaker unit: Φ F13 titanium composite film, 32 Ω± 15%, 7.118 ± 3DB 5mW</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">5. Microphone: 2718 silicon-42 ± 3dB</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.156362951urV3x\" style=\"margin: 0px; padding: 0px;\">6. Charging input standard: Contact point, DC4.75-5.25V/600MAH</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">7. Battery type: 3.7V polymer battery 500mAh with protective plate (3C fast charging battery), earphone battery 30mAh</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">8. Charging time: 1 hour</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">9. Headphone working time: Tested to play continuously at 100% volume for approximately 5.5 hours</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Single product bare machine weight: 62.5g</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div><span style=\"margin: 0px; padding: 0px;\"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.601d1e80KLuCG9\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 52px; color: rgb(33, 33, 33); font-size: 16px; font-family: Roboto-Medium; white-space: nowrap; padding: 0px 24px; overflow: hidden; text-overflow: ellipsis; height: 52px; background: rgb(250, 250, 250);\">Product details of 895B TWS Headphones Earphone Bluetooth-compatible 5.3 Earbuds Touch Control Stereo Bass Headphone LED Digital Display 5.4 Wireless Earphone multycolour</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"white-space-collapse: collapse; margin: 0px; padding: 0px; position: relative; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.601d1e80KLuCG9\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px; white-space-collapse: break-spaces;\"><ul style=\"padding: 0px; margin-right: 0px; margin-left: 16px; list-style-position: initial; list-style-image: initial; overflow: hidden;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">895B TWS Headphones Earphone Bluetooth-compatible 5.3 Waterproof Headset with Mic for Xiaomi iPhone Earbuds</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Hign-concerned Chemical:None</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Material:Plastic</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Category:Earphones &amp; Headphones</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Hign-concerned Chemical:None</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Material:Plastic</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Category:Earphones &amp; Headphones</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Charging Method:WireLess</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Total Harmonic Distortion:10%</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Impedance Range:up to 32 Ω</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Bluetooth Version:5.3</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Package List:User Manual,Charging case,Charging Cable</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Features:With Microphone</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Codecs:none</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">With Microphone:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Is wireless:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Resistance:32Ω</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Line Length:0m</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Frequency Response Range:20 - 20000Hz</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Sensitivity:123dB</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Plug Type:none</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Function:For Mobile Phone</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Active Noise-Cancellation:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Volume Control:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Control Button:No</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Vocalism Principle:Balanced Armature</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Wireless Type:bluetooth</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Communication:WireLess</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Style:In-ear</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Origin:Mainland China</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Brand Name:ZONGJI</span></div></li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">895B TWS Headphones Earphone Bluetooth-compatible 5.3 Waterproof Headset with Mic for Xiaomi iPhone Earbuds\r\n</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">• Long Endurance :&nbsp;Enjoy uninterrupted music with the 895B in-ear Bluetooth headset\'s impressive long endurance feature.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">• Real :&nbsp;The real wireless feature of the 895B in-ear Bluetooth headset allows for freedom of movement during activities.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.601d1e80KLuCG9\" style=\"margin: 0px; padding: 0px;\">• In-Ear Design :&nbsp;The in-ear design of the 895B ensures comfortable wear during long runs, providing secure and stable fit.</span></p></article></div></div></div></span></div></li></ul></article></div></div></div></ul>', 'Wireless Earbuds A9 Pro Touch Screen ANC Wireless Earphones - TWS Noise-Cancelling Earbuds, Bluetooth 5.3, Long Battery Life, HiFi Sound Quality', 'Product details of Wireless Earbuds A9 Pro Touch Screen ANC Wireless Earphones - TWS Noise-Cancelling Earbuds, Bluetooth 5.3, Long Battery Life, HiFi Sound Qual...', '', 'public/uploads/product/1773434133-1770958637-1767440969-images.jfif', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:35:33', '2026-03-13 20:35:33'),
(241, 'physical', '895B TWS Headphones Earphone Bluetooth-compatible 5.3 Earbuds Touch Control Stereo Bass Headphone LED Digital Display 5.4 Wireless Earphone multycolour', '895b-tws-headphones-earphone-bluetooth-compatible-5.3-earbuds-touch-control-stereo-bass-headphone-led-digital-display-5.4-wireless-earphone-multycolour-241', 22, NULL, NULL, 19, NULL, 'P0241', 5000, 1200, 2200, 1000.00, 0, NULL, 1, 0.00, 0.0, 9999, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.601d1e80KLuCG9\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 52px; color: rgb(33, 33, 33); font-size: 16px; font-family: Roboto-Medium; text-wrap-mode: nowrap; padding: 0px 24px; overflow: hidden; text-overflow: ellipsis; height: 52px; background: rgb(250, 250, 250);\">Product details of 895B TWS Headphones Earphone Bluetooth-compatible 5.3 Earbuds Touch Control Stereo Bass Headphone LED Digital Display 5.4 Wireless Earphone multycolour</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.601d1e80KLuCG9\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px; white-space-collapse: break-spaces;\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 16px; list-style-position: initial; list-style-image: initial; overflow: hidden;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">895B TWS Headphones Earphone Bluetooth-compatible 5.3 Waterproof Headset with Mic for Xiaomi iPhone Earbuds</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Hign-concerned Chemical:None</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Material:Plastic</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Category:Earphones &amp; Headphones</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Hign-concerned Chemical:None</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Material:Plastic</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Category:Earphones &amp; Headphones</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Charging Method:WireLess</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Total Harmonic Distortion:10%</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Impedance Range:up to 32 Ω</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Bluetooth Version:5.3</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Package List:User Manual,Charging case,Charging Cable</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Features:With Microphone</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Codecs:none</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">With Microphone:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Is wireless:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Resistance:32Ω</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Line Length:0m</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Frequency Response Range:20 - 20000Hz</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Sensitivity:123dB</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Plug Type:none</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Function:For Mobile Phone</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Active Noise-Cancellation:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Volume Control:Yes</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Control Button:No</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Vocalism Principle:Balanced Armature</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Wireless Type:bluetooth</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Communication:WireLess</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Style:In-ear</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Origin:Mainland China</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Brand Name:ZONGJI</span></div></li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">895B TWS Headphones Earphone Bluetooth-compatible 5.3 Waterproof Headset with Mic for Xiaomi iPhone Earbuds\r\n</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">• Long Endurance :&nbsp;Enjoy uninterrupted music with the 895B in-ear Bluetooth headset\'s impressive long endurance feature.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">• Real :&nbsp;The real wireless feature of the 895B in-ear Bluetooth headset allows for freedom of movement during activities.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.601d1e80KLuCG9\" style=\"margin: 0px; padding: 0px;\">• In-Ear Design :&nbsp;The in-ear design of the 895B ensures comfortable wear during long runs, providing secure and stable fit.</span></p></article></div></div></div>', '895B TWS Headphones Earphone Bluetooth-compatible 5.3 Earbuds Touch Control Stereo Bass Headphone LED Digital Display 5.4 Wireless Earphone multycolour', 'Product details of 895B TWS Headphones Earphone Bluetooth-compatible 5.3 Earbuds Touch Control Stereo Bass Headphone LED Digital Display 5.4 Wireless Earphone m...', '', 'public/uploads/product/1773434191-1770958637-1767440969-images.jfif', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:36:31', '2026-03-25 10:13:28'),
(242, 'physical', 'M10 tws Wireless Earphone Touch Bluetooth Earplug In Ear Stereo Sport Headsets cvc8.0 Digital Display Black Good If With No Reduction Headphones', 'm10-tws-wireless-earphone-touch-bluetooth-earplug-in-ear-stereo-sport-headsets-cvc8.0-digital-display-black-good-if-with-no-reduction-headphones-242', 22, NULL, NULL, 19, NULL, 'P0242', 2000, 1200, 2200, 900.00, 0, NULL, 1, 0.00, 0.0, 9997, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.688e39c5oVtXaJ\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 52px; color: rgb(33, 33, 33); font-size: 16px; font-family: Roboto-Medium; text-wrap-mode: nowrap; padding: 0px 24px; overflow: hidden; text-overflow: ellipsis; height: 52px; background: rgb(250, 250, 250);\">Product details of M10 tws Wireless Earphone Touch Bluetooth Earplug In Ear Stereo Sport Headsets cvc8.0 Digital Display Black Good If With No Reduction Headphones</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px; white-space-collapse: break-spaces;\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 16px; list-style-position: initial; list-style-image: initial; overflow: hidden;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Highlight:</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Bluetooth 5.1 Technology&amp; Easy Pairing: Adopting the most advanced Bluetooth 5.1 technology. VEHOP C8 Support HSP, HFP, A2DP, AVRCP. Pick up two headsets from the charging case and they will pair to each other automatically, then only one step easily enter mobile phone Bluetooth setting to pair the earbuds, which provides in-call stereo sound. Also own fast and stable transmission without tangling.</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Massive 3500 MAH Smart Charging Case/POWERBANK】: Adopts the premium case to protect your wireless earbuds and looks fashionable. With the individual LED display on the case can help check the power of L/R earbuds and charging case at any time. The wireless Bluetooth earbuds deliver 6hrs listening time and 3.5hrs talk time on a single charge, a total of 200hrs playtime with massive 2000 MAH charging case/POWERBANK You can also CHARGE YOUR PHONE</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">HD sound quality: Using CVC8.0 and DSP dual noise reduction technology, binaural calls are as clear as face-to-face talks. HiFi high-fidelity sound effect: dynamic unit design, good audio analysis, no distortion of details, excellent immersive listening experience.</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">SIRI Voice Assistant: Long press for 2 seconds to call the voice assistant, which is convenient and quick to talk with your personal assistant. Check the weather, ask for navigation, make a phone call.</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">3D touch: The headset has a built-in high-sensitivity touch panel, which can intelligently recognize your intentions by lightly touching and quickly completing a variety of operations.</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">IPX7 waterproof and sweatproof: You can also wear it in the bath, and the multi-process design of the head and body effectively prevents sweat from damaging the components. Applicable products: smart matching phones, tablets (compatible with Android/iOS and other systems)</span></div></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">High-definition LED display power: LED digital power display, the remaining power of the charging compartment is clear at a glance, avoiding the embarrassment of sudden loss of power! Applicable products: smart matching phones, tablets (compatible with Android/iOS and other systems) Applicable products: smart matching phones, tablets (compatible with Android/iOS and other systems)</span></div></li></ul></article></div></div></div>', 'M10 tws Wireless Earphone Touch Bluetooth Earplug In Ear Stereo Sport Headsets cvc8.0 Digital Display Black Good If With No Reduction Headphones', 'Product details of M10 tws Wireless Earphone Touch Bluetooth Earplug In Ear Stereo Sport Headsets cvc8.0 Digital Display Black Good If With No Reduction Headpho...', '', 'public/uploads/product/1773434256-1770959550-1767441247-1caca4b9c31bbfebdf3622831dd3c9ec.png_960x960q80.png_.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:37:36', '2026-03-24 11:35:30'),
(243, 'physical', 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 'm10-tws-wireless-earphone-touch-bluetooth-earplugs-in-ear-stereo-sport-headsets-cvc8.0-noise-reduction-headphones-with-digital-display---bulotooth-headphone---bluetooth-headphone-243', 22, NULL, NULL, 18, NULL, 'P0243', 2000, 12000, 2200, 900.00, 0, NULL, 1, 0.00, 0.0, 9998, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.6caa384fnFrKyD\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 52px; color: rgb(33, 33, 33); font-size: 16px; font-family: Roboto-Medium; text-wrap-mode: nowrap; padding: 0px 24px; overflow: hidden; text-overflow: ellipsis; height: 52px; background: rgb(250, 250, 250);\">Product details of M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; overflow: hidden;\"><li data-spm-anchor-id=\"0.0.0.i4.3dc07463krmXZR\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Using CVC8.0 digital noise reduction technology</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The latest TWS binaural stereo stereo Bluetooth headset with the 5.1 chip gives you very efficient wireless performance.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The 5.1 chip manages battery life very well It adopts Bluetooth V5.1 chip, 10m connection distance, stable performance, high transmission, low consumption and strong compatibility.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Ergonomically designed for a more comfortable fit on the auricle.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The two-ear split design allows the single ear to be used separately, equivalent to two independent Bluetooth headsets.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The charging compartment can be used as a mobile phone stand, portable mobile phone stand, support horizontal and vertical placement</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Watch live broadcasts and movies without the need to purchase an additional mobile phone stand.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">IPX7 waterproof and sweatproof</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Exercise without sweat Binaural separation designs ingle and binaural free cutover</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Subvert the traditional host to connect vice headphones ,dual host</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The left and right ears ,of the channel are free to use. Strong compatibility, IOS/Android universal, one-button control, simple and stylish.</li></ul><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; overflow: hidden;\"></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><h2 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 29px; color: rgb(34, 34, 117); font-size: 16px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Newest M10 TWS Digital Indicator True Wireless Earbud In Bangladesh</span></h2><p data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.6caa384fnFrKyD\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Looking for the newest and most affordable true wireless earbuds on the market? Look no further than Newest M10 TWS! These earbuds are packed with features and are available at an unbeatable price. With a warranty, you can be confident that your purchase is protected. Get your M10 TWS today!<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">the newest M10 TWS Digital Indicator True Wireless Earbuds are available in Bangladesh. Get the original products at the most affordable price only at BDSHOP.COM<em style=\"margin: 0px; padding: 0px;\">&nbsp;</em>and enjoy the quality with the promise of the best customer service in Bangladesh.</p></div></div></div>', 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 'Product details of M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulo...', '', 'public/uploads/product/1773434322-1770959635-1767441358-ef4e07f03cb788bed122e72e02c94818.jpg_720x720q80.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:38:42', '2026-03-28 18:46:06');
INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(244, 'physical', 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 'm10-tws-wireless-earphone-touch-bluetooth-earplugs-in-ear-stereo-sport-headsets-cvc8.0-noise-reduction-headphones-with-digital-display---bulotooth-headphone---bluetooth-headphone-244', 22, NULL, NULL, 22, NULL, 'P0244', 1200, 2500, 2200, 1000.00, 0, NULL, 1, 0.00, 0.0, 9996, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.6caa384fnFrKyD\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 52px; color: rgb(33, 33, 33); font-size: 16px; font-family: Roboto-Medium; text-wrap-mode: nowrap; padding: 0px 24px; overflow: hidden; text-overflow: ellipsis; height: 52px; background: rgb(250, 250, 250);\">Product details of M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; overflow: hidden;\"><li data-spm-anchor-id=\"0.0.0.i4.3dc07463krmXZR\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Using CVC8.0 digital noise reduction technology</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The latest TWS binaural stereo stereo Bluetooth headset with the 5.1 chip gives you very efficient wireless performance.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The 5.1 chip manages battery life very well It adopts Bluetooth V5.1 chip, 10m connection distance, stable performance, high transmission, low consumption and strong compatibility.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Ergonomically designed for a more comfortable fit on the auricle.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The two-ear split design allows the single ear to be used separately, equivalent to two independent Bluetooth headsets.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The charging compartment can be used as a mobile phone stand, portable mobile phone stand, support horizontal and vertical placement</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Watch live broadcasts and movies without the need to purchase an additional mobile phone stand.</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">IPX7 waterproof and sweatproof</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Exercise without sweat Binaural separation designs ingle and binaural free cutover</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Subvert the traditional host to connect vice headphones ,dual host</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">The left and right ears ,of the channel are free to use. Strong compatibility, IOS/Android universal, one-button control, simple and stylish.</li></ul><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; overflow: hidden;\"></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><h2 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 29px; color: rgb(34, 34, 117); font-size: 16px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Newest M10 TWS Digital Indicator True Wireless Earbud In Bangladesh</span></h2><p data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.6caa384fnFrKyD\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Looking for the newest and most affordable true wireless earbuds on the market? Look no further than Newest M10 TWS! These earbuds are packed with features and are available at an unbeatable price. With a warranty, you can be confident that your purchase is protected. Get your M10 TWS today!<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">the newest M10 TWS Digital Indicator True Wireless Earbuds are available in Bangladesh. Get the original products at the most affordable price only at BDSHOP.COM<em style=\"margin: 0px; padding: 0px;\">&nbsp;</em>and enjoy the quality with the promise of the best customer service in Bangladesh.</p></div></div></div>', 'M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulotooth Headphone - Bluetooth Headphone', 'Product details of M10 Tws Wireless Earphone Touch Bluetooth Earplugs In-Ear Stereo Sport Headsets Cvc8.0 Noise Reduction Headphones With Digital Display - Bulo...', '', 'public/uploads/product/1773434371-1770959635-1767441358-ef4e07f03cb788bed122e72e02c94818.jpg_720x720q80.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-13 20:39:31', '2026-03-31 14:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 117, 6, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(21, 117, 7, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(22, 117, 8, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(23, 117, 9, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(24, 1, 10, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(25, 132, 7, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(26, 132, 8, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(27, 133, 6, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(28, 133, 8, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(29, 130, 6, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(30, 130, 8, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(31, 130, 9, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(32, 135, 6, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(33, 135, 7, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(34, 135, 8, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(35, 135, 9, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(36, 135, 10, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(39, 157, 7, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(40, 157, 8, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(41, 157, 9, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(42, 157, 10, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(43, 158, 7, '2024-12-05 15:43:20', '2024-12-05 15:43:20'),
(44, 179, 6, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(45, 179, 8, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(46, 179, 9, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(53, 182, 7, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(54, 182, 8, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(55, 182, 9, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(64, 190, 6, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(65, 190, 9, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(66, 190, 10, '2025-10-18 07:35:26', '2025-10-18 07:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_prices`
--

CREATE TABLE `product_variant_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `sku` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_prices`
--

INSERT INTO `product_variant_prices` (`id`, `product_id`, `color_id`, `size_id`, `price`, `stock`, `sku`) VALUES
(348, 221, 35, 6, 500.00, 100, NULL),
(349, 221, 35, 7, 500.00, 100, NULL),
(350, 221, 35, 8, 500.00, 100, NULL),
(351, 221, 35, 9, 500.00, 100, NULL),
(384, 224, 35, 6, 1200.00, 1000, NULL),
(385, 224, 35, 7, 1200.00, 1000, NULL),
(386, 224, 35, 8, 1200.00, 1000, NULL),
(387, 224, 35, 9, 1200.00, 1000, NULL),
(388, 224, 36, 6, 600.00, 800, NULL),
(389, 224, 36, 7, 600.00, 800, NULL),
(390, 224, 36, 8, 600.00, 800, NULL),
(391, 224, 36, 10, 600.00, 800, NULL),
(392, 225, NULL, 23, 10500.00, 1000, NULL),
(393, 225, NULL, 24, 10500.00, 1000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_wholesale_prices`
--

CREATE TABLE `product_wholesale_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `max_quantity` int(11) DEFAULT NULL,
  `wholesale_price` decimal(14,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wholesale_prices`
--

INSERT INTO `product_wholesale_prices` (`id`, `product_id`, `min_quantity`, `max_quantity`, `wholesale_price`, `stock`, `created_at`, `updated_at`) VALUES
(7, 221, 5, 10, 450.00, 100, '2026-01-23 18:28:31', '2026-01-23 18:28:31'),
(8, 221, 11, 20, 650.00, 200, '2026-01-23 18:28:31', '2026-01-23 18:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `total_qty` int(11) NOT NULL DEFAULT 0,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'completed',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `invoice_no`, `purchase_date`, `total_qty`, `subtotal`, `discount`, `shipping_cost`, `grand_total`, `paid_amount`, `due_amount`, `note`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'PUR-1764103831', '2025-11-26', 200, 20000.00, 0.00, 0.00, 20000.00, 20000.00, 0.00, 'hellio', 'completed', 1, '2025-11-25 20:51:00', '2025-12-19 09:19:17'),
(2, 2, 'PUR-1765430839', '2025-12-11', 1, 63000.00, 50.00, 50.00, 63000.00, 63000.00, 0.00, 'h ii', 'completed', 1, '2025-12-11 05:28:10', '2025-12-19 09:19:27'),
(4, 3, 'PUR-1766135846', '2025-12-19', 21, 22050.00, 0.00, 50.00, 22100.00, 22000.00, 100.00, NULL, 'completed', 13, '2025-12-19 09:18:17', '2025-12-19 09:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_price_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `unit_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `line_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `returned_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_logs`
--

CREATE TABLE `purchase_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` enum('edit','delete') NOT NULL,
  `old_invoice_no` varchar(255) DEFAULT NULL,
  `new_invoice_no` varchar(255) DEFAULT NULL,
  `old_purchase_date` date DEFAULT NULL,
  `new_purchase_date` date DEFAULT NULL,
  `old_paid_amount` decimal(15,2) DEFAULT NULL,
  `new_paid_amount` decimal(15,2) DEFAULT NULL,
  `old_grand_total` decimal(15,2) DEFAULT NULL,
  `new_grand_total` decimal(15,2) DEFAULT NULL,
  `old_note` text DEFAULT NULL,
  `new_note` text DEFAULT NULL,
  `fund_balance_before` decimal(15,2) NOT NULL,
  `fund_balance_after` decimal(15,2) NOT NULL,
  `description` text DEFAULT NULL,
  `performed_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_logs`
--

INSERT INTO `purchase_logs` (`id`, `purchase_id`, `action`, `old_invoice_no`, `new_invoice_no`, `old_purchase_date`, `new_purchase_date`, `old_paid_amount`, `new_paid_amount`, `old_grand_total`, `new_grand_total`, `old_note`, `new_note`, `fund_balance_before`, `fund_balance_after`, `description`, `performed_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'delete', 'PUR-1765782672', NULL, '2025-12-15', NULL, 100.00, NULL, 100.00, NULL, NULL, NULL, -36789.00, -36689.00, 'Purchase deleted: Invoice \'PUR-1765782672\' (Paid: 100.00, Total: 100.00). Fund balance changed from -36789 to -36689 (+100)', 1, '2026-01-21 18:39:41', '2026-01-21 18:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` varchar(255) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `shipping_charge` decimal(14,2) NOT NULL DEFAULT 0.00,
  `reason` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `status` enum('pending','approved','rejected','processed') NOT NULL DEFAULT 'pending',
  `refund_method` enum('original_payment','bkash','nagad','bank','manual') NOT NULL DEFAULT 'original_payment',
  `refund_account` varchar(255) DEFAULT NULL,
  `refund_account_name` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `processed_by` int(10) UNSIGNED DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_deposits`
--

CREATE TABLE `reseller_deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL DEFAULT 'uddoktapay',
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_deposits`
--

INSERT INTO `reseller_deposits` (`id`, `user_id`, `amount`, `payment_gateway`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 29, 500.00, 'uddoktapay', '5445545456', 'completed', '2026-03-10 11:22:08', '2026-03-10 11:22:38'),
(2, 29, 1000.00, 'uddoktapay', '1511515444', 'completed', '2026-03-10 11:27:41', '2026-03-10 11:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_contact_messages`
--

CREATE TABLE `reseller_landing_contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reseller_landing_page_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_newsletter_subscribers`
--

CREATE TABLE `reseller_landing_newsletter_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reseller_landing_page_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_landing_newsletter_subscribers`
--

INSERT INTO `reseller_landing_newsletter_subscribers` (`id`, `reseller_landing_page_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'okibkhan420@gmail.com', '2026-03-11 11:44:00', '2026-03-11 11:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_pages`
--

CREATE TABLE `reseller_landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) NOT NULL,
  `custom_domain` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `scrolling_text` text DEFAULT NULL,
  `slider_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`slider_images`)),
  `banner_image` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `whatsapp_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `facebook_pixel_id` varchar(50) DEFAULT NULL,
  `gtm_id` varchar(50) DEFAULT NULL,
  `tiktok_pixel_id` varchar(50) DEFAULT NULL,
  `facebook_capi_access_token` text DEFAULT NULL,
  `show_newsletter_footer` tinyint(1) NOT NULL DEFAULT 1,
  `show_social_footer` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_landing_pages`
--

INSERT INTO `reseller_landing_pages` (`id`, `user_id`, `slug`, `custom_domain`, `logo`, `title`, `tagline`, `scrolling_text`, `slider_images`, `banner_image`, `favicon`, `phone`, `email`, `address`, `facebook_url`, `twitter_url`, `whatsapp_url`, `youtube_url`, `instagram_url`, `facebook_pixel_id`, `gtm_id`, `tiktok_pixel_id`, `facebook_capi_access_token`, `show_newsletter_footer`, `show_social_footer`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 20, 'creative-shoper', 'creativeshoper.com', 'public/uploads/reseller/landing/20/logo.1773157416.webp', 'Creative Shoper', 'আপনার বিশ্বস্ত পার্টনার', 'Gadget BD অনলাইন শপে আপনাকে স্বাগতম || অনলাইনে আস্থা ও বিশ্বস্ততার সাথে  সারা বাংলাদেশে হোম ডেলিভারী দিয়ে থাকি অর্ডার করতে অগ্রিম টাকা দিতে হবে না এ্যাডভান্স বিকাশ পেমেন্টে ৫% ডিসকাউন্ট ৩-৫ দিনে সারাদেশে হোম ডেলিভারী দেওয়া হয় ক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে ধন্যবাদ', '[\"public\\/uploads\\/reseller\\/landing\\/20\\/slider_0.1773157419.webp\"]', 'public/uploads/reseller/landing/20/banner.1773157417.webp', 'public/uploads/reseller/landing/20/favicon.1773229738.webp', '01775457008', 'info@creativeshoper.com', 'House no 23, Road no 15, Section 3, Uttara C/A, Dhaka, 1230', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', NULL, NULL, NULL, NULL, 1, 1, 1, '2026-03-10 15:41:03', '2026-03-11 12:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_products`
--

CREATE TABLE `reseller_landing_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reseller_landing_page_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `custom_price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_landing_products`
--

INSERT INTO `reseller_landing_products` (`id`, `reseller_landing_page_id`, `product_id`, `custom_price`, `created_at`, `updated_at`) VALUES
(5, 1, 222, 900.00, '2026-03-11 11:19:04', '2026-03-11 11:19:04'),
(6, 1, 226, 1300.00, '2026-03-11 11:22:05', '2026-03-11 11:22:05'),
(7, 1, 225, 10250.00, '2026-03-11 11:24:33', '2026-03-11 11:24:33'),
(11, 1, 227, 2200.00, '2026-03-11 11:24:48', '2026-03-11 11:24:48'),
(15, 1, 224, 2200.00, '2026-03-11 11:25:05', '2026-03-11 11:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_wallet_transactions`
--

CREATE TABLE `reseller_wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `balance_after` decimal(14,2) DEFAULT NULL,
  `reference_type` varchar(50) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_wallet_transactions`
--

INSERT INTO `reseller_wallet_transactions` (`id`, `user_id`, `type`, `amount`, `balance_after`, `reference_type`, `reference_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 29, 'order_profit', 200.00, 1700.00, 'Order', 1145, 'অর্ডার #73104 প্রফিট', '2026-03-10 12:30:51', '2026-03-10 12:30:51'),
(2, 20, 'withdrawal', -170.00, 6010.00, 'ResellerWithdrawal', 3, 'উইথড্র রিকুয়েস্ট #3', '2026-03-10 15:10:53', '2026-03-10 15:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_withdrawals`
--

CREATE TABLE `reseller_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `charge` decimal(14,2) NOT NULL DEFAULT 0.00,
  `payout_method` varchar(255) NOT NULL DEFAULT 'manual',
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_note` text DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_withdrawals`
--

INSERT INTO `reseller_withdrawals` (`id`, `user_id`, `amount`, `charge`, `payout_method`, `account_name`, `account_number`, `note`, `status`, `admin_note`, `processed_at`, `created_at`, `updated_at`) VALUES
(1, 20, 1000.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'hello', 'rejected', 'nn', '2026-01-25 15:59:46', '2026-01-25 15:57:40', '2026-01-25 15:59:46'),
(2, 20, 170.00, 0.00, 'nagad', 'Md Nazrul Islam', '01775457008', 'gghhg', 'approved', 'done last 7008', '2026-01-25 15:59:15', '2026-01-25 15:57:53', '2026-01-25 15:59:15'),
(3, 20, 170.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'hh', 'pending', NULL, NULL, '2026-03-10 15:10:53', '2026-03-10 15:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Jononi Madical Hall', 'info@dhakacoaching.com', '5', '\"আমি এই প্যান্টটি কিনেছি এবং আমার অভিজ্ঞতা বেশ ভালো।', 201, 215, 'active', '2025-11-11 13:49:23', '2025-11-11 14:11:46'),
(12, 'Jononi Madical Hall', 'N / A', '5', 'প্যান্টটি পরতে খুবই আরামদায়ক (comfortable)। ফিটিং (fitting) একদম পারফেক্ট।', 201, 215, 'active', '2025-11-11 14:32:28', '2025-11-11 14:32:56'),
(13, 'Jononi Madical Hall', 'info@dhakacoaching.com', '5', 'সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 215, 'active', '2025-11-11 14:33:32', '2025-11-11 14:50:29'),
(14, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 213, 'active', '2025-11-11 14:52:32', '2025-11-11 14:52:32'),
(15, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 213, 'active', '2025-11-11 14:52:32', '2025-11-11 14:52:32'),
(16, 'Md Abdul Aziz', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 197, 214, 'active', '2025-11-11 14:53:57', '2025-11-11 14:53:57'),
(17, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 181, 213, 'active', '2025-11-11 14:54:11', '2025-11-11 14:54:11'),
(18, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 183, 215, 'active', '2025-11-11 14:54:25', '2025-11-11 14:54:25'),
(19, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 184, 215, 'active', '2025-11-11 14:54:39', '2025-11-11 14:54:39'),
(20, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 184, 215, 'active', '2025-11-11 14:54:39', '2025-11-11 14:54:39'),
(21, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 185, 215, 'active', '2025-11-11 14:54:52', '2025-11-11 14:54:52'),
(22, 'Jakir Hosain', 'N / A', '4', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 186, 213, 'active', '2025-11-11 14:55:06', '2025-11-11 14:55:06'),
(23, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 196, 215, 'active', '2025-11-11 14:55:21', '2025-11-11 14:55:21'),
(24, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 196, 215, 'active', '2025-11-11 14:55:21', '2025-11-11 14:55:21'),
(29, 'Jononi Madical Hall', 'okibkhan420@gmail.com', '5', 'hhbkjbbjkbjbk', 180, 286, 'active', '2026-01-21 16:10:24', '2026-01-21 16:13:06'),
(30, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good Selller', 221, 286, 'active', '2026-01-26 09:44:02', '2026-01-26 09:44:35'),
(31, 'Jononi Madical Hall', 'info@talentsedu2.com', '4', 'Good Product', 227, 286, 'active', '2026-01-26 15:29:17', '2026-01-26 15:30:55'),
(32, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Nice', 226, 286, 'active', '2026-01-26 15:29:42', '2026-01-26 15:30:57'),
(33, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good', 225, 286, 'active', '2026-01-26 15:33:58', '2026-01-26 15:34:38'),
(34, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good', 224, 286, 'active', '2026-01-26 15:34:13', '2026-01-26 15:34:40'),
(35, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good', 223, 286, 'active', '2026-01-26 15:34:30', '2026-01-26 15:34:42'),
(36, 'Redwan Ahmed', 'N / A', '5', 'Best items', 241, 504, 'pending', '2026-03-22 05:54:35', '2026-03-22 05:54:35'),
(37, 'Redwan Ahmed', 'N / A', '5', '018589899', 227, 504, 'pending', '2026-03-22 05:54:54', '2026-03-22 05:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(3, 'Salesman', 'admin', '2025-12-12 12:04:01', '2025-12-16 13:50:23'),
(4, 'vendor', 'admin', '2026-01-20 08:15:22', '2026-01-20 08:15:22'),
(5, 'customer', 'customer', '2026-01-20 08:15:22', '2026-01-20 08:15:22'),
(6, 'reseller', 'admin', '2026-01-20 17:08:30', '2026-01-20 17:08:30'),
(8, 'Super Viser', 'admin', '2026-01-21 13:10:27', '2026-01-21 13:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 8),
(2, 1),
(2, 3),
(2, 8),
(3, 1),
(3, 3),
(3, 8),
(4, 1),
(4, 3),
(4, 8),
(5, 1),
(5, 3),
(5, 8),
(6, 1),
(6, 3),
(6, 8),
(7, 1),
(7, 3),
(7, 8),
(8, 1),
(8, 3),
(8, 8),
(9, 1),
(9, 3),
(9, 8),
(10, 1),
(10, 3),
(10, 8),
(11, 1),
(11, 3),
(11, 8),
(12, 1),
(12, 3),
(12, 8),
(13, 1),
(13, 3),
(13, 8),
(14, 1),
(14, 3),
(14, 8),
(15, 1),
(15, 3),
(15, 8),
(16, 1),
(16, 3),
(16, 8),
(17, 1),
(17, 3),
(17, 8),
(18, 1),
(18, 3),
(18, 8),
(19, 1),
(19, 3),
(19, 8),
(20, 1),
(20, 3),
(20, 8),
(21, 1),
(21, 3),
(21, 8),
(22, 1),
(22, 3),
(22, 8),
(23, 1),
(23, 3),
(23, 8),
(24, 1),
(24, 3),
(24, 8),
(25, 1),
(25, 3),
(25, 8),
(26, 1),
(26, 3),
(26, 8),
(27, 1),
(27, 3),
(27, 8),
(28, 1),
(28, 3),
(28, 8),
(29, 1),
(29, 3),
(29, 8),
(30, 1),
(30, 3),
(30, 8),
(31, 1),
(31, 3),
(31, 8),
(32, 1),
(32, 3),
(32, 8),
(33, 1),
(33, 3),
(33, 8),
(34, 1),
(34, 3),
(34, 8),
(35, 1),
(35, 3),
(35, 8),
(36, 1),
(36, 3),
(36, 8),
(37, 1),
(37, 3),
(37, 8),
(38, 1),
(38, 3),
(38, 8),
(39, 1),
(39, 3),
(39, 8),
(40, 1),
(40, 3),
(40, 8),
(41, 1),
(41, 3),
(41, 8),
(42, 1),
(42, 3),
(42, 8),
(43, 1),
(43, 3),
(43, 8),
(44, 1),
(44, 3),
(44, 8),
(49, 1),
(49, 3),
(49, 8),
(50, 1),
(50, 3),
(50, 8),
(51, 1),
(51, 3),
(51, 8),
(52, 1),
(52, 3),
(52, 8),
(53, 1),
(53, 3),
(53, 8),
(54, 1),
(54, 3),
(54, 8),
(55, 1),
(55, 3),
(55, 8),
(56, 1),
(56, 3),
(56, 8),
(69, 1),
(69, 3),
(69, 8),
(70, 1),
(70, 3),
(70, 8),
(71, 1),
(71, 3),
(71, 8),
(72, 1),
(72, 3),
(72, 8),
(73, 1),
(73, 3),
(73, 8),
(74, 1),
(74, 3),
(74, 8),
(75, 1),
(75, 3),
(75, 8),
(76, 1),
(76, 3),
(76, 8),
(84, 8),
(85, 8),
(86, 8),
(87, 8),
(88, 8),
(89, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 8),
(94, 8),
(95, 8),
(96, 8),
(97, 8),
(98, 8),
(99, 8),
(100, 8),
(101, 8),
(102, 8),
(103, 8),
(104, 8),
(105, 8),
(106, 8),
(107, 8),
(108, 8),
(109, 8),
(110, 8),
(111, 8),
(112, 8),
(113, 8),
(114, 8),
(115, 8),
(116, 8),
(117, 8),
(118, 8),
(119, 8),
(120, 8),
(121, 8),
(122, 8),
(123, 8),
(124, 8),
(125, 8),
(126, 8),
(127, 8),
(128, 8),
(129, 8),
(130, 8),
(131, 8),
(132, 8),
(133, 8),
(134, 8),
(135, 8),
(136, 8),
(137, 8),
(138, 8),
(139, 8),
(140, 8),
(141, 8),
(142, 8),
(143, 8),
(144, 8),
(145, 8),
(146, 8),
(147, 8),
(148, 8),
(149, 8),
(150, 8),
(151, 8),
(152, 8);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_tags` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `search_console_verification` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `meta_title`, `meta_tags`, `meta_description`, `search_console_verification`, `created_at`, `updated_at`) VALUES
(1, 'Gadget BD | Best Laravel Ecommerce Website', 'Gadget BD, Online Shopping Bangladesh, Best Ecommerce Website, Laravel Shopping Cart, Electronics Shop BD, Buy Gadgets Online, Mobile Accessories, Smartwatch Price in BD, Original Products, Tech Shop Bangladesh, Fast Delivery Ecommerce.', 'Gadget BD বাংলাদেশের অন্যতম সেরা লারাভেল ভিত্তিক ই-কমার্স প্ল্যাটফর্ম। আমাদের এখানে পাবেন লেটেস্ট স্মার্টফোন, গ্যাজেট, ল্যাপটপ এবং অরিজিনাল টেক অ্যাক্সেসরিজ। সুলভ মূল্য, দ্রুত ডেলিভারি এবং চমৎকার ইউজার এক্সপেরিয়েন্সের জন্য আজই আমাদের সাইট ভিজিট করুন।', NULL, '2025-11-07 21:11:35', '2025-12-23 13:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(1084, 1096, 303, 'Ummah Islamic Institute', '01782295954', 'ঠিকানা : শায়েখ সুপার মার্কেট, দুর্গাপুর, উলিপুর, কুড়িগ্রাম।', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-12 07:16:32', '2026-02-12 07:16:32'),
(1085, 1097, 367, 'Md Nahidur Rahman', '01305069550', 'কচুয়া বাজার মেইন রোড, বাগেরহাট।', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-12 07:17:30', '2026-02-12 07:17:30'),
(1086, 1098, 465, 'Md kuddus ali', '01876685722', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-12 07:34:49', '2026-02-12 07:34:49'),
(1087, 1099, 466, 'Faysal Mahamud', '01811212974', 'Hatkhola Road, Tikatuli, Dhaka-1203.', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-13 06:38:53', '2026-02-13 06:38:53'),
(1088, 1100, 467, 'Jarir Ahmed', '01615406040', 'Talaimari', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-13 09:28:02', '2026-02-13 09:28:02'),
(1089, 1101, 468, 'Ruhul Amln', '0183800616', 'Barishal', 'Digital / Free Shipping', '2026-02-14 02:59:23', '2026-02-14 02:59:23'),
(1090, 1102, 468, 'MD Hasan Mia', '0183800616', 'Barishal', 'Digital / Free Shipping', '2026-02-14 03:01:37', '2026-02-14 03:01:37'),
(1091, 1103, 469, 'Roke Mia', '01623984965', 'SHIBALOY,MANIKGONJ', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-14 06:46:11', '2026-02-14 06:46:11'),
(1092, 1104, 470, 'Md Shakib Khan', '01588596378', 'Dhaka Gulisthan Brct Counter', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-15 05:23:59', '2026-02-15 05:23:59'),
(1093, 1105, 471, 'Bla Bla', '01888888888', 'Black ship', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-16 07:47:21', '2026-02-16 07:47:21'),
(1094, 1106, 306, 'Redwan Ahmed', '01327949940', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-16 11:05:38', '2026-02-16 11:05:38'),
(1095, 1107, 317, 'Elite Design', '01614628005', 'Mudhur More, RK Road, Kurigram', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-16 15:46:09', '2026-02-16 15:46:09'),
(1096, 1108, 472, 'md saiful islam shawon', '01636427720', 'h-30, r-2, mirpur-1,dhaka-1216', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-16 18:21:29', '2026-02-16 18:21:29'),
(1097, 1109, 473, 'Abir Ahmed Anik', '01934066781', 'Cbb', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-16 20:57:55', '2026-02-16 20:57:55'),
(1098, 1110, 367, 'Md Nahidur Rahman', '01305069550', 'কচুয়া বাজার মেইন রোড, বাগেরহাট।', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-17 18:34:10', '2026-02-17 18:34:10'),
(1099, 1111, 475, 'israfil hossen', '01775997119', 'OLD DEPZ Savar Dhaka\r\nবাইপাইল, সাভার ঢাকা,', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-18 08:09:32', '2026-02-18 08:09:32'),
(1100, 1112, 476, 'Nayeem 12', '01907797146', 'Mirpur 14', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-18 09:29:39', '2026-02-18 09:29:39'),
(1101, 1113, 476, 'Nayeem 12', '01907797146', 'Mirpur 14', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-18 09:30:33', '2026-02-18 09:30:33'),
(1102, 1114, 477, 'রসসককক', '01738338857', 'hjjkkbi ibj', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-19 11:40:29', '2026-02-19 11:40:29'),
(1103, 1115, 478, 'SAIFUL ISLAM MOLLA', '01749121571', 'Hugli', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-19 12:47:43', '2026-02-19 12:47:43'),
(1104, 1116, 479, 'dfsasdf', '01715550406', 'sdfsdf', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-19 15:18:50', '2026-02-19 15:18:50'),
(1105, 1117, 480, 'md roton', '01945236536', 'jhgh', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-21 05:08:50', '2026-02-21 05:08:50'),
(1106, 1118, 481, 'Mahmudul', '01912107221', '128/2, Purba Tejturi Bazar, Karwanbazar, Dhaka.', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-21 09:15:31', '2026-02-21 09:15:31'),
(1107, 1119, 481, 'Mahmudul', '01912107221', '128/2, Purba Tejturi Bazar, Karwanbazar, Dhaka.', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-21 09:17:21', '2026-02-21 09:17:21'),
(1108, 1120, 482, 'dfbdfb', '01711223366', 'bdfbdf', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-22 06:46:38', '2026-02-22 06:46:38'),
(1109, 1121, 483, 'Sjdbbh', '01865262585', 'Daka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-22 07:27:38', '2026-02-22 07:27:38'),
(1110, 1122, 307, 'Engineering Lab', '01796825863', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-23 06:46:00', '2026-02-23 06:46:00'),
(1111, 1123, 307, 'Engineering Lab', '01796825863', 'Dhaka, Bangladesh', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-23 06:52:02', '2026-02-23 06:52:02'),
(1112, 1124, 307, 'Engineering Lab', '01796825863', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-23 06:56:11', '2026-02-23 06:56:11'),
(1113, 1125, 484, 'মমমম', '01580444012', '৫৪৫৪৫৪', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-23 14:37:00', '2026-02-23 14:37:00'),
(1114, 1126, 485, 'khan', '01811873244', 'comilla', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-23 16:56:25', '2026-02-23 16:56:25'),
(1115, 1127, 486, 'মোঃ রাকিবুল হাসান', '01795568841', 'সুনামগঞ্জ জেলা ধর্মপাশা থানার দেওলা গ্রামের বাজারে', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-23 17:50:22', '2026-02-23 17:50:22'),
(1116, 1128, 487, 'Gddhhb', '01897971573', '4448', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-23 22:45:56', '2026-02-23 22:45:56'),
(1117, 1129, 367, 'Md Nahidur Rahman', '01305069550', 'কচুয়া বাজার মেইন রোড, বাগেরহাট।', 'Digital / Free Shipping', '2026-02-24 06:02:57', '2026-02-24 06:02:57'),
(1118, 1130, 488, 'Md Faruk', '01607773445', 'Harbang Chakaria Coxbazar', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-24 07:52:00', '2026-02-24 07:52:00'),
(1119, 1131, 489, 'Md Faruk', '01607958348', 'Brahmanbaria Nabinagar darilapang', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-24 07:53:40', '2026-02-24 07:53:40'),
(1120, 1132, 489, 'Md Faruk', '01607958348', 'Brahmanbaria Nabinagar darilapang', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-24 09:20:36', '2026-02-24 09:20:36'),
(1121, 1133, 490, 'Rashedul Hassan', '07183354232', 'Agrabad', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-02-26 15:39:35', '2026-02-26 15:39:35'),
(1122, 1134, 491, 'Ali Akbar', '01837023812', 'ss', 'ঢাকার ভিতরে ৭০ টাকা', '2026-02-27 17:56:23', '2026-02-27 17:56:23'),
(1123, 1135, 492, 'জ্ঞজ্ঞগ', '01645544444', 'bondubazar', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-01 00:02:56', '2026-03-01 00:02:56'),
(1124, 1136, 490, 'Rashedul Hassan', '07183354232', 'Agrabad', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-01 08:09:22', '2026-03-01 08:09:22'),
(1125, 1137, 493, 'ewqrewqr', '01000000000', 'ewrewrtwe', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-02 08:58:18', '2026-03-02 08:58:18'),
(1126, 1138, 494, 'Md Tajmul Haque', '01614022171', 'Thakurgaon - Nekmand - Pirganj - Birganj Road', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-02 17:29:33', '2026-03-02 17:29:33'),
(1127, 1139, 494, 'Md Tajmul Haque', '01614022171', 'Thakurgaon - Nekmand - Pirganj - Birganj Road', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-02 17:30:21', '2026-03-02 17:30:21'),
(1128, 1140, 294, 'Test', '01711223344', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-03 22:45:37', '2026-03-03 22:45:37'),
(1129, 1141, 495, 'Rasel Hossain', '01344977993', 'Pabna', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-03-06 13:05:03', '2026-03-06 13:05:03'),
(1130, 1142, 496, 'Party Wear Long Gown', '01301549757', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-07 09:08:44', '2026-03-07 09:08:44'),
(1131, 1143, 497, 'test', '01788877489', 'test', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-07 11:26:34', '2026-03-07 11:26:34'),
(1132, 1144, 303, 'Ummah Islamic Institute', '01782295954', 'ঠিকানা : শায়েখ সুপার মার্কেট, দুর্গাপুর, উলিপুর, কুড়িগ্রাম।', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-03-07 17:41:07', '2026-03-07 17:41:07'),
(1133, 1145, 303, 'Ummah Islamic Institute', '01782295954', 'ঠিকানা : শায়েখ সুপার মার্কেট, দুর্গাপুর, উলিপুর, কুড়িগ্রাম।', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-03-10 11:44:29', '2026-03-10 12:30:52'),
(1134, 1146, 317, 'Elite Design', '01614628005', 'Mudhur More, RK Road, Kurigram', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-10 17:36:33', '2026-03-10 17:36:33'),
(1135, 1147, 303, 'Ummah Islamic Institute', '01782295954', 'ঠিকানা : শায়েখ সুপার মার্কেট, দুর্গাপুর, উলিপুর, কুড়িগ্রাম।\r\nঠিকানা : শায়েখ সুপার মার্কেট, দুর্গাপুর, উলিপুর, কুড়িগ্রাম।', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-10 17:38:33', '2026-03-10 17:38:33'),
(1136, 1148, 500, 'Amimul Islam', '01951693473', 'Jhinaigati', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-03-14 03:11:29', '2026-03-14 03:11:29'),
(1137, 1149, 501, 'Ms', '01975029988', 'Dndnnsdn', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-15 18:16:02', '2026-03-15 18:16:02'),
(1138, 1150, 502, 'MD MONIRUL ISLAM', '01753545077', 'CHAR MOHENDROPUR', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-16 09:22:29', '2026-03-16 09:22:29'),
(1139, 1151, 503, 'hjjj', '01865416489', 'jjjjh', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-03-16 17:14:10', '2026-03-16 17:14:10'),
(1140, 1152, 501, 'MD HARUN', '01975029988', 'Aral Bazar', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-23 09:45:00', '2026-03-23 09:45:00'),
(1141, 1153, 505, 'maruf hossen', '01612985269', 'DOCTOR IMAM UDDINER BARI PURBO DEBIPUR,NIAZPUR NOAKHALI,SADAR,NOAKHALI', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-24 11:33:40', '2026-03-24 11:33:40'),
(1142, 1154, 505, 'maruf hossen', '01612985269', 'DOCTOR IMAM UDDINER BARI PURBO DEBIPUR,NIAZPUR NOAKHALI,SADAR,NOAKHALI', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-24 11:34:51', '2026-03-24 11:34:51'),
(1143, 1155, 505, 'maruf hossen', '01612985269', 'DOCTOR IMAM UDDINER BARI PURBO DEBIPUR,NIAZPUR NOAKHALI,SADAR,NOAKHALI', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-24 11:35:30', '2026-03-24 11:35:30'),
(1144, 1156, 506, 'uzzal', '01401421440', 'jkgsg', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-25 10:13:28', '2026-03-25 10:13:28'),
(1145, 1157, 507, 'Hhh', '01778976890', 'Vvvv', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-27 08:41:24', '2026-03-27 08:41:24'),
(1146, 1158, 508, 'রফাG', '01715434544', 'জিইয়ু', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-03-28 18:46:06', '2026-03-28 18:46:06'),
(1147, 1159, 509, 'টগত', '01745454544', 'টগত', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-03-28 18:47:39', '2026-03-28 18:47:39'),
(1148, 1160, 510, 'Azmun Kariya', '01743561738', 'South', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-30 08:47:24', '2026-03-30 08:47:24'),
(1149, 1161, 511, 'Soab Aaron', '01736340382', 'Dhaka Mirpur', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-31 14:40:52', '2026-03-31 14:40:52'),
(1150, 1162, 439, 'Md Ashikullah', '01866192222', 'Dhaka Gulistan', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-31 21:01:28', '2026-03-31 21:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকার ভিতরে ৭০ টাকা', 70, '1', '2023-08-04 10:34:54', '2026-01-03 06:38:55'),
(2, 'ঢাকার বাহিরে  ১২০ টাকা', 120, '1', '2023-08-04 10:35:57', '2025-12-26 05:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '12 Inchi', '1', '2024-02-05 09:39:19', '2024-11-10 04:43:12'),
(12, '10 Inchi', '1', '2024-02-05 09:39:25', '2024-11-10 04:42:40'),
(13, '8.5 Inch', '1', '2024-02-05 09:39:30', '2024-11-10 04:42:17'),
(14, '20 mm', '1', '2024-02-05 09:39:34', '2024-11-10 04:41:48'),
(15, '22 mm', '1', '2024-02-05 09:39:39', '2024-11-10 04:41:35'),
(17, '500gm', '1', '2025-11-19 16:19:07', '2025-11-19 16:19:07'),
(18, '250gm', '1', '2025-11-19 16:19:14', '2025-11-19 16:19:14'),
(19, '1 kg', '1', '2025-11-19 16:19:18', '2025-11-19 16:19:18'),
(20, '2kg', '1', '2025-11-19 16:19:31', '2025-11-19 16:19:31'),
(21, '12 month to 5 years', '1', '2025-11-20 07:27:48', '2025-11-20 07:27:48'),
(22, '1 to 5 years', '1', '2025-11-28 04:40:57', '2025-11-28 04:40:57'),
(23, 'RAM 4GB', '1', '2025-12-07 09:30:13', '2025-12-07 09:30:13'),
(24, 'RAM 6GB', '1', '2025-12-07 09:30:22', '2025-12-07 09:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_phone_list` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`, `admin_phone_list`) VALUES
(1, 'https://www.creativedesign.com.bd/api/smsapi', 'YtqHDyODWXlRF3RFv5bsmzp4K5eCBb6SEdjcXfg02WdAGTkjUeMVzqKB1CuV', '#', '1', '1', '1', '1', '2024-02-06 11:29:46', '2026-01-31 10:39:19', '01825428578');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/official.elitedesign', '#0b0f89', 1, '2023-02-12 11:32:20', '2025-01-10 02:51:01'),
(3, 'Official Mail', 'fab fa-twitter', 'https://www.facebook.com/official.elitedesign', '#c53302', 1, '2023-02-14 03:29:41', '2025-01-10 02:51:34'),
(4, 'Whatsapp', 'fab fa-whatsapp', '01775457008', '#5ca314', 1, '2024-11-10 06:36:32', '2025-01-10 02:51:46'),
(5, 'youtube.com', 'fab fa-youtube', 'https://www.youtube.com/@eHatBazarLive/videos', '#ff0000', 1, '2024-11-10 06:37:34', '2025-11-12 10:51:50'),
(6, 'Instagram', 'fab fa-instagram', 'https://web.facebook.com/official.creativedesign', '#000000', 1, '2024-11-10 14:52:24', '2026-02-09 11:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `stolen_reports`
--

CREATE TABLE `stolen_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `license_key` varchar(100) DEFAULT NULL,
  `status` enum('pending','reviewed') NOT NULL DEFAULT 'pending',
  `reported_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(60, 'Smart Lamp & Lights', 'smart-lamp-&-lights', 19, NULL, NULL, NULL, 1, '2025-10-03 13:45:11', '2025-10-03 13:45:11'),
(61, 'TV & Monitor', 'tv-&-monitor', 19, NULL, NULL, NULL, 1, '2025-10-03 13:45:31', '2025-10-03 13:45:31'),
(62, 'Laptop', 'laptop', 19, NULL, NULL, NULL, 1, '2025-10-28 19:04:55', '2025-10-28 19:04:55'),
(64, 'Shirt', 'shirt', 20, NULL, NULL, NULL, 1, '2025-11-11 13:21:55', '2025-11-11 13:21:55'),
(65, 'Pant', 'pant', 20, NULL, NULL, NULL, 1, '2025-11-11 13:22:07', '2025-11-11 13:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `opening_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_due` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `address`, `opening_balance`, `current_due`, `created_at`, `updated_at`) VALUES
(1, 'Redwan Ahmed', '01327949940', 'creativedesign.com.bd@gmail.com', 'Dhaka, Bangladesh\r\nBoro Bari, Noayar Hat', 0.00, 0.00, '2025-11-25 20:49:16', '2026-01-21 18:39:41'),
(2, 'a', '1', '1@gmail.com', '1', 0.00, 0.00, '2025-12-11 02:43:36', '2025-12-19 09:19:27'),
(3, 'Biplob Hossen', '01711337542', 'biplobadsagency@gmail.com', 'Sherpur', 0.00, 100.00, '2025-12-19 09:17:24', '2025-12-19 09:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_date` date NOT NULL,
  `method` varchar(50) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_payments`
--

INSERT INTO `supplier_payments` (`id`, `supplier_id`, `purchase_id`, `amount`, `payment_date`, `method`, `note`, `fund_transaction_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 200.00, '2025-11-26', 'fund', 'Initial payment', 9, 1, '2025-11-25 20:51:00', '2025-11-25 20:51:00'),
(2, 1, 1, 100.00, '2025-11-26', 'fund', NULL, 10, 1, '2025-11-25 20:51:49', '2025-11-25 20:51:49'),
(3, 1, 1, 200.00, '2025-11-26', 'fund', NULL, 11, 1, '2025-11-25 20:53:07', '2025-11-25 20:53:07'),
(4, 2, 2, 1000.00, '2025-12-11', 'fund', 'Initial payment', 36, 1, '2025-12-11 05:28:10', '2025-12-11 05:28:10'),
(5, 2, 2, 800.00, '2025-12-13', 'fund', NULL, 39, 1, '2025-12-13 13:34:30', '2025-12-13 13:34:30'),
(6, 1, 1, 200.00, '2025-12-25', 'fund', NULL, 43, 1, '2025-12-15 07:12:12', '2025-12-15 07:12:12'),
(7, 3, 4, 5000.00, '2025-12-19', 'fund', 'Initial payment', 50, 13, '2025-12-19 09:18:17', '2025-12-19 09:18:17'),
(8, 1, 1, 19300.00, '2025-12-19', 'fund', NULL, 51, 13, '2025-12-19 09:19:17', '2025-12-19 09:19:17'),
(9, 2, 2, 61200.00, '2025-12-19', 'fund', NULL, 52, 13, '2025-12-19 09:19:27', '2025-12-19 09:19:27'),
(11, 3, 4, 17000.00, '2025-12-19', 'fund', NULL, 54, 13, '2025-12-19 09:20:02', '2025-12-19 09:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `tiktok_pixels`
--

CREATE TABLE `tiktok_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/default/user.png',
  `status` tinyint(4) DEFAULT 0,
  `role` enum('admin','vendor','reseller','customer') NOT NULL DEFAULT 'customer',
  `wallet_balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `verification_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `voter_id_front` varchar(255) DEFAULT NULL,
  `voter_id_back` varchar(255) DEFAULT NULL,
  `self_image` varchar(255) DEFAULT NULL,
  `verification_note` text DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `shop_name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `role`, `wallet_balance`, `verification_status`, `voter_id_front`, `voter_id_back`, `self_image`, `verification_note`, `verified_at`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'info@creativedesign.com.bd', '2024-11-21 15:43:10', '$2y$10$2rts1eGcYEIdEXQx2C.ZoO3enPJ6HYSe8ljvxaYIu/GNe31gyy2gm', 'V9bJG737uIJAl8u4LA0Yn8XNz5hFHwnGttOJXuasEfey2w2OfcPrHkQkZJm9', 'public/uploads/users/1736271519-defualt.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-04 16:48:38'),
(17, 'Jononi Madical Hall', NULL, 'info@abmicbd.com', NULL, '$2y$10$nrd1sPXp8GnXELrVhESFW.UrnJGelLENLmsrU4Z7DvPmuuzUHto6i', 'w8FRTweGQif9ZCoIeVs16t384XZjXydCoqXVl5pyRQZMSO9iQfV2CAiVpV7c', 'public/uploads/users/1768988830-logo.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-21 09:47:11', '2026-01-21 09:51:43'),
(19, 'Md Nazrul Islam', NULL, 'nazrul@creativedesign.com.bd', NULL, '$2y$10$xji0e9Iwj2HOPSsUJxg4yu2yrHfvd.zN7B6AVkc/Au/GZvci0VoWC', NULL, 'public/uploads/user/1769187994-profile-images.jfif', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 7, '2026-01-23 16:58:26', '2026-01-25 17:02:37'),
(20, 'Md Nayeem Hossain', 'Creative Shoper', 'info.elitedesign.com.bd@gmail.com', NULL, '$2y$10$PyeMR5iF43Ceeamt9zRaxub8gEa4KhkAFHFbeG8zJNnmlh5MQ621a', NULL, 'public/uploads/reseller/profile/1769234296-reseller-profile-20.webp', 1, 'reseller', 6010.00, 'approved', 'public/uploads/reseller/verification/1769232510-voter-front-6974587e367c3.webp', 'public/uploads/reseller/verification/1769232511-voter-back-6974587f33351.webp', 'public/uploads/reseller/verification/1769232511-self-6974587f48c51.webp', 'approved', '2026-01-24 06:17:42', NULL, '2026-01-24 05:28:31', '2026-03-10 15:10:53'),
(21, 'Eco Bazar', NULL, 'ecoshop@gmail.com', NULL, '$2y$10$ooCY2BCz.iPZc6RmCgf/telWeFaSNobAzjyJLd8NkbZ8aiaL0ssty', NULL, 'public/uploads/user/1769437168-profile-images.jfif', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 8, '2026-01-26 14:18:49', '2026-01-26 14:19:28'),
(22, 'Super Me', NULL, 'info@666abmicbd.com', NULL, '$2y$10$yYEVluT54uhQpyt4P.qYvO79wyGtnVZg5.XovODi0CgqlbiSQn096', NULL, 'public/uploads/user/1769439347-profile-images (1).png', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 9, '2026-01-26 14:55:20', '2026-01-26 14:55:47'),
(23, 'Tech Vai', NULL, 'techvai@gmail.com', NULL, '$2y$10$St/qVyc45ka9Pz3izENdGOI3r8UxHYx6j9ZKxh6y5f/EHul.rCE8u', NULL, 'public/uploads/user/1769439805-profile-0653647_3-in-1-travel-pillow-set_400.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 10, '2026-01-26 15:02:55', '2026-01-26 15:03:25'),
(24, 'My Shoper', NULL, 'info@talentsed4u.com', NULL, '$2y$10$IGo6Va6T2Xcl889SnOFu9.z3J98FfTzTR.YFLPG/fz7oHJcGfaTZ2', NULL, 'public/uploads/user/1769440468-profile-0653647_3-in-1-travel-pillow-set_400.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 11, '2026-01-26 15:13:48', '2026-01-26 15:14:28'),
(25, 'Shopno', NULL, 'shopnoshop@gmail.com', NULL, '$2y$10$KcIncUQd0QmNs7x4C6BeXeGIJvhXEW2e3oHpf7KynIo8Q3PTJDPFO', NULL, 'public/uploads/user/1769441027-profile-unnamed.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 12, '2026-01-26 15:23:23', '2026-01-26 15:23:47'),
(26, 'MD ABDULLAH ALL MAMAUN', NULL, 'mabdullahbd77@gmail.com', NULL, '$2y$10$aIKe/QwzzPE44a1SXrlZF.0p2PT.miPAZ8aNmviqK6cpKsGpszSDC', NULL, 'public/uploads/default/user.png', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 13, '2026-02-13 09:13:28', '2026-02-13 09:13:28'),
(27, 'Redwan Ahmed', 'Hdhhsh', 'vorarkhonthotrw@gmail.com', NULL, '$2y$10$l9nX30DN0U88U3YQY/CwPeZ7Pt0W9kKoURWo8PLAc8DVV6bP8YaX.', NULL, 'public/uploads/default/user.png', 1, 'reseller', 0.00, 'pending', 'public/uploads/reseller/verification/1771327415-voter-front-69944fb78e0b9.webp', 'public/uploads/reseller/verification/1771327415-voter-back-69944fb7ad268.webp', 'public/uploads/reseller/verification/1771327415-self-69944fb7c9f0e.webp', NULL, NULL, NULL, '2026-02-17 11:23:35', '2026-02-17 11:23:35'),
(28, 'Henry Henry', NULL, 'hasanshahadat712@gmail.com', NULL, '$2y$10$SPeT.f6ACSVuRla.8Fsy5./TFxs6kHc51dYle3QWrQWvtH9B9Ctie', NULL, 'public/uploads/default/user.png', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 14, '2026-03-01 12:12:52', '2026-03-01 12:12:52'),
(29, 'Md Kader Ali', 'Bangladesh', 'vorarkhontho5454@gmail.com', NULL, '$2y$10$txYRF8c5iSsAdKKdCX6np.MPUR7WQ32XTGuSlgyHfXXVa8FveR8kC', NULL, 'public/uploads/default/user.png', 1, 'reseller', 1700.00, 'approved', 'public/uploads/reseller/verification/1773141440-voter-front-69affdc0872d7.webp', 'public/uploads/reseller/verification/1773141441-voter-back-69affdc121131.webp', 'public/uploads/reseller/verification/1773141441-self-69affdc12abea.webp', NULL, '2026-03-10 11:20:38', NULL, '2026-03-10 11:17:21', '2026-03-10 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `forgot` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `verification_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `voter_id_front` varchar(255) DEFAULT NULL,
  `voter_id_back` varchar(255) DEFAULT NULL,
  `self_image` varchar(255) DEFAULT NULL,
  `verification_note` text DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `commission_rate` decimal(5,2) NOT NULL DEFAULT 10.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `shop_name`, `slug`, `owner_name`, `email`, `phone`, `forgot`, `address`, `logo`, `banner`, `status`, `verification_status`, `voter_id_front`, `voter_id_back`, `self_image`, `verification_note`, `verified_at`, `commission_rate`, `created_at`, `updated_at`) VALUES
(7, 'Bangla Mart', 'bangla-mart', 'Md Nazrul Islam', 'nazrul@creativedesign.com.bd', '01870829343', '1', 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 'public/uploads/vendor/logo/1769188012-logo-240673652_3835680819990661_8991696992032477091_n.jpg', 'public/uploads/vendor/banner/1769188022-banner-494526150_1215032290662968_4467841498774900556_n.jpg', 1, 'approved', 'public/uploads/vendor/verification/1769187690-voter-front-7.webp', 'public/uploads/vendor/verification/1769187691-voter-back-7.webp', 'public/uploads/vendor/verification/1769187691-self-7.webp', 'Good', '2026-01-23 17:03:05', 10.00, '2026-01-23 16:58:26', '2026-01-25 17:15:41'),
(8, 'Eco Shop', 'eco-shop', 'Eco Bazar', 'ecoshop@gmail.com', '01915711409', NULL, 'AL TAZER RAHMAN ROAD, CHARNOABAD, BHOLA SADAR, BHOLA, BANGLADESH', 'public/uploads/vendor/logo/1769437147-logo-unnamed.png', 'public/uploads/vendor/banner/1769437147-banner-Screenshot_7.png', 1, 'approved', 'public/uploads/vendor/verification/1769437195-voter-front-8.webp', 'public/uploads/vendor/verification/1769437195-voter-back-8.webp', 'public/uploads/vendor/verification/1769437196-self-8.webp', NULL, '2026-01-26 14:21:03', 10.00, '2026-01-26 14:18:49', '2026-01-26 14:21:03'),
(9, 'Super Me', 'super-me', 'Super Me', 'info@666abmicbd.com', '01721261979', NULL, 'House no 23, Road no 15, Section 3, Uttara C/A, Dhaka, 1230', 'public/uploads/vendor/logo/1769439340-logo-images (1).png', 'public/uploads/vendor/banner/1769439340-banner-Screenshot_9.png', 1, 'approved', 'public/uploads/vendor/verification/1769439364-voter-front-9.webp', 'public/uploads/vendor/verification/1769439364-voter-back-9.webp', 'public/uploads/vendor/verification/1769439365-self-9.webp', NULL, '2026-01-26 14:56:25', 10.00, '2026-01-26 14:55:20', '2026-01-26 14:56:25'),
(10, 'Amar Tech', 'amar-tech', 'Tech Vai', 'techvai@gmail.com', '01896314504', NULL, 'Mudhur More, RK Road, Kurigram', 'public/uploads/vendor/logo/1769439789-logo-images (2).jfif', 'public/uploads/vendor/banner/1769439789-banner-SteelSeries-Landing-Page-Banner-(1920x700)-All-Products-1920x700.jpg', 1, 'approved', 'public/uploads/vendor/verification/1769439825-voter-front-10.webp', 'public/uploads/vendor/verification/1769439825-voter-back-10.webp', 'public/uploads/vendor/verification/1769439825-self-10.webp', NULL, '2026-01-26 15:04:05', 10.00, '2026-01-26 15:02:55', '2026-01-26 15:04:05'),
(11, 'My Shoper', 'my-shoper', 'My Shoper', 'info@talentsed4u.com', '01721261970', NULL, 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 'public/uploads/vendor/logo/1769440460-logo-Screenshot_10.png', 'public/uploads/vendor/banner/1769440460-banner-Screenshot_11.png', 1, 'approved', 'public/uploads/vendor/verification/1769440487-voter-front-11.webp', 'public/uploads/vendor/verification/1769440487-voter-back-11.webp', 'public/uploads/vendor/verification/1769440488-self-11.webp', NULL, '2026-01-26 15:15:09', 10.00, '2026-01-26 15:13:48', '2026-01-26 15:15:09'),
(12, 'Shapno', 'shapno', 'Shopno', 'shopnoshop@gmail.com', '01305069555', NULL, 'Dhaka, Bangladesh\r\nBoro Bari, Noayar Hat', 'public/uploads/vendor/logo/1769441017-logo-unnamed.webp', 'public/uploads/vendor/banner/1769441017-banner-Main banner (1).png', 1, 'approved', 'public/uploads/vendor/verification/1769441043-voter-front-12.webp', 'public/uploads/vendor/verification/1769441043-voter-back-12.webp', 'public/uploads/vendor/verification/1769441044-self-12.webp', NULL, '2026-01-26 15:24:29', 10.00, '2026-01-26 15:23:23', '2026-01-26 15:24:29'),
(13, 'ecombd', 'ecombd,top', 'MD ABDULLAH ALL MAMAUN', 'mabdullahbd77@gmail.com', '01788145575', NULL, 'Sonapukur Chairman Para', NULL, NULL, 1, 'pending', NULL, NULL, NULL, NULL, NULL, 10.00, '2026-02-13 09:13:28', '2026-02-13 09:13:28'),
(14, 'Fason', 'fason', 'Henry Henry', 'hasanshahadat712@gmail.com', '01325765213', NULL, 'Daka', 'uploads/vendor/logo/bANoc7c77TWXm5DK3LZ30SY8JdmlyEe0iHKWXBnK.jpg', 'uploads/vendor/banner/TTPtzVGiIDLIZWpnEhwzG4xwlSm1w7kAeIy6tzAO.jpg', 1, 'pending', NULL, NULL, NULL, NULL, NULL, 10.00, '2026-03-01 12:12:51', '2026-03-01 12:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_wallets`
--

CREATE TABLE `vendor_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `total_earned` decimal(14,2) NOT NULL DEFAULT 0.00,
  `total_withdrawn` decimal(14,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_wallets`
--

INSERT INTO `vendor_wallets` (`id`, `vendor_id`, `balance`, `total_earned`, `total_withdrawn`, `created_at`, `updated_at`) VALUES
(7, 7, 560.00, 1260.00, 0.00, '2026-01-23 18:56:04', '2026-01-26 10:24:06'),
(8, 10, 9450.00, 9450.00, 0.00, '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(9, 12, 720.00, 720.00, 0.00, '2026-03-10 12:30:51', '2026-03-10 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_wallet_transactions`
--

CREATE TABLE `vendor_wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'completed',
  `amount` decimal(14,2) NOT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_wallet_transactions`
--

INSERT INTO `vendor_wallet_transactions` (`id`, `vendor_id`, `type`, `status`, `amount`, `source_type`, `source_id`, `note`, `created_at`, `updated_at`) VALUES
(5, 7, 'earning', 'completed', 450.00, 'order', 1268, 'Order #35907 item earning', '2026-01-23 18:56:04', '2026-01-23 18:56:04'),
(6, 7, 'withdraw', 'pending', 100.00, 'withdraw', 4, 'Withdraw request pending approval', '2026-01-23 19:06:21', '2026-01-23 19:06:21'),
(7, 7, 'earning', 'completed', 810.00, 'order', 1292, 'Order #13771 item earning', '2026-01-26 09:59:22', '2026-01-26 09:59:22'),
(8, 7, 'withdraw', 'pending', 500.00, 'withdraw', 5, 'Withdraw request pending approval', '2026-01-26 10:16:39', '2026-01-26 10:16:39'),
(9, 7, 'withdraw', 'pending', 100.00, 'withdraw', 6, 'Withdraw request pending approval', '2026-01-26 10:24:06', '2026-01-26 10:24:06'),
(10, 10, 'earning', 'completed', 9450.00, 'order', 1393, 'Order #69923 item earning', '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(11, 12, 'earning', 'completed', 720.00, 'order', 1399, 'Order #73104 item earning', '2026-03-10 12:30:51', '2026-03-10 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_withdrawals`
--

CREATE TABLE `vendor_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `charge` decimal(14,2) NOT NULL DEFAULT 0.00,
  `payout_method` varchar(255) NOT NULL DEFAULT 'manual',
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_note` text DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_withdrawals`
--

INSERT INTO `vendor_withdrawals` (`id`, `vendor_id`, `amount`, `charge`, `payout_method`, `account_name`, `account_number`, `note`, `status`, `admin_note`, `processed_at`, `created_at`, `updated_at`) VALUES
(4, 7, 100.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'need Urjent', 'pending', NULL, NULL, '2026-01-23 19:06:21', '2026-01-23 19:06:21'),
(5, 7, 500.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'jhkkhjkhj', 'pending', NULL, NULL, '2026-01-26 10:16:39', '2026-01-26 10:16:39'),
(6, 7, 100.00, 0.00, 'nagad', 'Md Nazrul Islam', '01775457008', 'vbnvbnn', 'pending', NULL, NULL, '2026-01-26 10:24:06', '2026-01-26 10:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(20) NOT NULL,
  `release_date` date NOT NULL,
  `changelog` text DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `requires_migration` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_products`
--

CREATE TABLE `wholesale_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `purchase_price` decimal(14,2) NOT NULL,
  `wholesale_price` decimal(14,2) NOT NULL,
  `retail_price` decimal(14,2) DEFAULT NULL,
  `min_quantity` int(11) NOT NULL DEFAULT 1,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `approval_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `feature_product` tinyint(4) NOT NULL DEFAULT 0,
  `unit` varchar(255) NOT NULL DEFAULT 'piece',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_product_images`
--

CREATE TABLE `wholesale_product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wholesale_product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_analytics_settings`
--
ALTER TABLE `ads_analytics_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_job_settings`
--
ALTER TABLE `cron_job_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cron_job_settings_job_key_unique` (`job_key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_downloads`
--
ALTER TABLE `digital_downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `digital_downloads_token_unique` (`token`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_employee_id_unique` (`employee_id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_employee_id_index` (`employee_id`),
  ADD KEY `employees_user_id_index` (`user_id`),
  ADD KEY `employees_status_index` (`status`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_attendances_employee_id_attendance_date_unique` (`employee_id`,`attendance_date`),
  ADD KEY `employee_attendances_attendance_date_index` (`attendance_date`),
  ADD KEY `employee_attendances_status_index` (`status`);

--
-- Indexes for table `employee_bonuses`
--
ALTER TABLE `employee_bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_bonuses_employee_id_index` (`employee_id`),
  ADD KEY `employee_bonuses_status_index` (`status`),
  ADD KEY `employee_bonuses_salary_month_index` (`salary_month`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_leaves_employee_id_index` (`employee_id`),
  ADD KEY `employee_leaves_status_index` (`status`),
  ADD KEY `employee_leaves_start_date_index` (`start_date`),
  ADD KEY `employee_leaves_end_date_index` (`end_date`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_salaries_employee_id_salary_month_unique` (`employee_id`,`salary_month`),
  ADD KEY `employee_salaries_salary_month_index` (`salary_month`),
  ADD KEY `employee_salaries_status_index` (`status`);

--
-- Indexes for table `employee_salary_payments`
--
ALTER TABLE `employee_salary_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_salary_payments_payment_id_unique` (`payment_id`),
  ADD KEY `employee_salary_payments_salary_id_foreign` (`salary_id`),
  ADD KEY `employee_salary_payments_employee_id_index` (`employee_id`),
  ADD KEY `employee_salary_payments_payment_month_index` (`payment_month`),
  ADD KEY `employee_salary_payments_status_index` (`status`),
  ADD KEY `employee_salary_payments_payment_date_index` (`payment_date`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_fund_transaction_id_index` (`fund_transaction_id`);

--
-- Indexes for table `expense_logs`
--
ALTER TABLE `expense_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_logs_expense_id_index` (`expense_id`),
  ADD KEY `expense_logs_action_index` (`action`),
  ADD KEY `expense_logs_performed_by_index` (`performed_by`),
  ADD KEY `expense_logs_created_at_index` (`created_at`);

--
-- Indexes for table `facebook_capi_settings`
--
ALTER TABLE `facebook_capi_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_page_settings`
--
ALTER TABLE `facebook_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fund_transactions`
--
ALTER TABLE `fund_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_transaction_logs`
--
ALTER TABLE `fund_transaction_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fund_transaction_logs_fund_transaction_id_index` (`fund_transaction_id`),
  ADD KEY `fund_transaction_logs_action_index` (`action`),
  ADD KEY `fund_transaction_logs_performed_by_index` (`performed_by`),
  ADD KEY `fund_transaction_logs_created_at_index` (`created_at`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomplete_orders`
--
ALTER TABLE `incomplete_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletter_subscribers_email_unique` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productimages_product_id_color_id_size_id_index` (`product_id`,`color_id`,`size_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product` (`product_id`),
  ADD KEY `fk_color` (`color_id`),
  ADD KEY `fk_size` (`size_id`);

--
-- Indexes for table `product_wholesale_prices`
--
ALTER TABLE `product_wholesale_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wholesale_prices_product_id_index` (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_items_variant_price_id_foreign` (`variant_price_id`);

--
-- Indexes for table `purchase_logs`
--
ALTER TABLE `purchase_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_logs_purchase_id_index` (`purchase_id`),
  ADD KEY `purchase_logs_action_index` (`action`),
  ADD KEY `purchase_logs_performed_by_index` (`performed_by`),
  ADD KEY `purchase_logs_created_at_index` (`created_at`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `refunds_refund_id_unique` (`refund_id`),
  ADD KEY `refunds_order_id_index` (`order_id`),
  ADD KEY `refunds_customer_id_index` (`customer_id`),
  ADD KEY `refunds_status_index` (`status`),
  ADD KEY `refunds_vendor_id_index` (`vendor_id`);

--
-- Indexes for table `reseller_deposits`
--
ALTER TABLE `reseller_deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseller_deposits_user_id_foreign` (`user_id`);

--
-- Indexes for table `reseller_landing_contact_messages`
--
ALTER TABLE `reseller_landing_contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlc_landing_fk` (`reseller_landing_page_id`);

--
-- Indexes for table `reseller_landing_newsletter_subscribers`
--
ALTER TABLE `reseller_landing_newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_newsletter_landing_fk` (`reseller_landing_page_id`);

--
-- Indexes for table `reseller_landing_pages`
--
ALTER TABLE `reseller_landing_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reseller_landing_pages_slug_unique` (`slug`),
  ADD KEY `reseller_landing_pages_slug_index` (`slug`),
  ADD KEY `reseller_landing_pages_user_id_index` (`user_id`);

--
-- Indexes for table `reseller_landing_products`
--
ALTER TABLE `reseller_landing_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rlp_product_unique` (`reseller_landing_page_id`,`product_id`),
  ADD KEY `reseller_landing_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `reseller_wallet_transactions`
--
ALTER TABLE `reseller_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseller_wallet_transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `reseller_withdrawals`
--
ALTER TABLE `reseller_withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseller_withdrawals_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stolen_reports`
--
ALTER TABLE `stolen_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stolen_reports_domain_index` (`domain`),
  ADD KEY `stolen_reports_status_index` (`status`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_payments_supplier_id_foreign` (`supplier_id`),
  ADD KEY `supplier_payments_purchase_id_foreign` (`purchase_id`),
  ADD KEY `supplier_payments_fund_transaction_id_foreign` (`fund_transaction_id`);

--
-- Indexes for table `tiktok_pixels`
--
ALTER TABLE `tiktok_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendor_wallets`
--
ALTER TABLE `vendor_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_wallets_vendor_id_unique` (`vendor_id`);

--
-- Indexes for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_wallet_transactions_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `vendor_withdrawals`
--
ALTER TABLE `vendor_withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_withdrawals_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `versions_version_unique` (`version`);

--
-- Indexes for table `wholesale_products`
--
ALTER TABLE `wholesale_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wholesale_products_slug_unique` (`slug`),
  ADD UNIQUE KEY `wholesale_products_product_code_unique` (`product_code`),
  ADD KEY `wholesale_products_category_id_index` (`category_id`),
  ADD KEY `wholesale_products_vendor_id_index` (`vendor_id`),
  ADD KEY `wholesale_products_status_index` (`status`),
  ADD KEY `wholesale_products_approval_status_index` (`approval_status`);

--
-- Indexes for table `wholesale_product_images`
--
ALTER TABLE `wholesale_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wholesale_product_images_wholesale_product_id_foreign` (`wholesale_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_analytics_settings`
--
ALTER TABLE `ads_analytics_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `campaign_product`
--
ALTER TABLE `campaign_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cron_job_settings`
--
ALTER TABLE `cron_job_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `digital_downloads`
--
ALTER TABLE `digital_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_bonuses`
--
ALTER TABLE `employee_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salary_payments`
--
ALTER TABLE `employee_salary_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_logs`
--
ALTER TABLE `expense_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facebook_capi_settings`
--
ALTER TABLE `facebook_capi_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facebook_page_settings`
--
ALTER TABLE `facebook_page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fund_transactions`
--
ALTER TABLE `fund_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `fund_transaction_logs`
--
ALTER TABLE `fund_transaction_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `incomplete_orders`
--
ALTER TABLE `incomplete_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1163;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1419;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1148;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `product_wholesale_prices`
--
ALTER TABLE `product_wholesale_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_logs`
--
ALTER TABLE `purchase_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reseller_deposits`
--
ALTER TABLE `reseller_deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reseller_landing_contact_messages`
--
ALTER TABLE `reseller_landing_contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_landing_newsletter_subscribers`
--
ALTER TABLE `reseller_landing_newsletter_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reseller_landing_pages`
--
ALTER TABLE `reseller_landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reseller_landing_products`
--
ALTER TABLE `reseller_landing_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reseller_wallet_transactions`
--
ALTER TABLE `reseller_wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reseller_withdrawals`
--
ALTER TABLE `reseller_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1151;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stolen_reports`
--
ALTER TABLE `stolen_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tiktok_pixels`
--
ALTER TABLE `tiktok_pixels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vendor_wallets`
--
ALTER TABLE `vendor_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor_withdrawals`
--
ALTER TABLE `vendor_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wholesale_products`
--
ALTER TABLE `wholesale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wholesale_product_images`
--
ALTER TABLE `wholesale_product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD CONSTRAINT `employee_attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_bonuses`
--
ALTER TABLE `employee_bonuses`
  ADD CONSTRAINT `employee_bonuses_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD CONSTRAINT `employee_leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD CONSTRAINT `employee_salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_salary_payments`
--
ALTER TABLE `employee_salary_payments`
  ADD CONSTRAINT `employee_salary_payments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_salary_payments_salary_id_foreign` FOREIGN KEY (`salary_id`) REFERENCES `employee_salaries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `expense_logs`
--
ALTER TABLE `expense_logs`
  ADD CONSTRAINT `expense_logs_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `fund_transaction_logs`
--
ALTER TABLE `fund_transaction_logs`
  ADD CONSTRAINT `fund_transaction_logs_fund_transaction_id_foreign` FOREIGN KEY (`fund_transaction_id`) REFERENCES `fund_transactions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD CONSTRAINT `fk_color` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_size` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_wholesale_prices`
--
ALTER TABLE `product_wholesale_prices`
  ADD CONSTRAINT `product_wholesale_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_variant_price_id_foreign` FOREIGN KEY (`variant_price_id`) REFERENCES `product_variant_prices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_logs`
--
ALTER TABLE `purchase_logs`
  ADD CONSTRAINT `purchase_logs_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refunds_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reseller_deposits`
--
ALTER TABLE `reseller_deposits`
  ADD CONSTRAINT `reseller_deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_contact_messages`
--
ALTER TABLE `reseller_landing_contact_messages`
  ADD CONSTRAINT `rlc_landing_fk` FOREIGN KEY (`reseller_landing_page_id`) REFERENCES `reseller_landing_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_newsletter_subscribers`
--
ALTER TABLE `reseller_landing_newsletter_subscribers`
  ADD CONSTRAINT `rlp_newsletter_landing_fk` FOREIGN KEY (`reseller_landing_page_id`) REFERENCES `reseller_landing_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_pages`
--
ALTER TABLE `reseller_landing_pages`
  ADD CONSTRAINT `reseller_landing_pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_products`
--
ALTER TABLE `reseller_landing_products`
  ADD CONSTRAINT `reseller_landing_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reseller_landing_products_reseller_landing_page_id_foreign` FOREIGN KEY (`reseller_landing_page_id`) REFERENCES `reseller_landing_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_wallet_transactions`
--
ALTER TABLE `reseller_wallet_transactions`
  ADD CONSTRAINT `reseller_wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_withdrawals`
--
ALTER TABLE `reseller_withdrawals`
  ADD CONSTRAINT `reseller_withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD CONSTRAINT `supplier_payments_fund_transaction_id_foreign` FOREIGN KEY (`fund_transaction_id`) REFERENCES `fund_transactions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `supplier_payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `supplier_payments_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vendor_wallets`
--
ALTER TABLE `vendor_wallets`
  ADD CONSTRAINT `vendor_wallets_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  ADD CONSTRAINT `vendor_wallet_transactions_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_withdrawals`
--
ALTER TABLE `vendor_withdrawals`
  ADD CONSTRAINT `vendor_withdrawals_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wholesale_products`
--
ALTER TABLE `wholesale_products`
  ADD CONSTRAINT `wholesale_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wholesale_products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wholesale_product_images`
--
ALTER TABLE `wholesale_product_images`
  ADD CONSTRAINT `wholesale_product_images_wholesale_product_id_foreign` FOREIGN KEY (`wholesale_product_id`) REFERENCES `wholesale_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
