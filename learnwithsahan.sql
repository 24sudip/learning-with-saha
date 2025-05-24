-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 04:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnwithsahan`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_items`
--

CREATE TABLE `about_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `video` longtext DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_items`
--

INSERT INTO `about_items` (`id`, `thumbnail`, `title`, `slug`, `short_description`, `video`, `long_description`, `created_at`, `updated_at`) VALUES
(2, 'images/about-item/58705-20250216062617blog-1.jpg', 'Why Choose Endoscopic Surgery?', 'why-choose-endoscopic-surgery', 'Endoscopic spine surgery is the safe and effective alternative to the all types of open back surgery that often invoke fear in patients.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tDwrC_hscZA?si=xW5KdbjVCY-oamKa\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen allow-same-origin></iframe>', '<h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-weight: 700; font-size: 20px; transition: 0.3s ease-out; font-family: Hind, sans-serif; color: rgb(14, 17, 51);\">Advantages Of Transforaminal Endoscopic Spine Surgery</h4><ul class=\"quicktech-advantages\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">No Stitches and No Scar</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">No General / Spinal Anaesthesia</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">Minimal blood loss</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">One Day Hospital Stay</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">Safe &amp; Effective</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">Predictable outcome &amp; Cost</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">Minimum or no collateral damage to other structures i.e Muscle and tissue are dilated rather than being cut when accessing the disc.</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">Return back to work much earlier than conventional spine surgery</li><li style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; font-size: 18px; list-style: disc !important;\">Almost all pathologies in Lumbar Spine can be treated</li></ul>', '2025-02-16 00:26:17', '2025-02-16 02:48:00'),
(3, 'images/about-item/41054-20250216063115blog-3.jpg', 'Why Choose Us?', 'why-choose-us', 'CESS-SHOT’s mission is to provide outstanding and compassionate non-operative and operative care using the least invasive treatments.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tDwrC_hscZA?si=xW5KdbjVCY-oamKa\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen allow-same-origin></iframe>', '<div class=\"row\" style=\"margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x)/ -2); margin-bottom: 0px; margin-left: calc(var(--bs-gutter-x)/ -2); padding: 0px; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><div class=\"col-lg-12\" style=\"margin-top: var(--bs-gutter-y); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: calc(var(--bs-gutter-x)/ 2); padding-bottom: 0px; padding-left: calc(var(--bs-gutter-x)/ 2); flex-basis: auto; width: 1200px;\"><h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-weight: 700; font-size: 20px; transition: 0.3s ease-out; font-family: Hind, sans-serif; color: rgb(14, 17, 51);\">Safe and Effective Alternative to open surgery</h4></div></div><div class=\"row gap\" style=\"margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x)/ -2); margin-bottom: 30px; margin-left: calc(var(--bs-gutter-x)/ -2); padding: 0px; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; row-gap: 20px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><div class=\"col-lg-12\" style=\"margin-top: var(--bs-gutter-y); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: calc(var(--bs-gutter-x)/ 2); padding-bottom: 0px; padding-left: calc(var(--bs-gutter-x)/ 2); flex-basis: auto; width: 1200px;\"><div class=\"quicktech-about-text\" style=\"margin: 0px; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; font-family: Hind, sans-serif; line-height: 26px;\">Dr. Chandra is a Qualified Orthopedic Surgeon who specializes (Fellowship Trained) in diagnosing and treating the causes of back pain and sciatica from painful degenerative conditions of the lumbar spine, particularly herniated discs, bulging discs with annular tears, Lateral &amp; foraminal stenosis. The technique he uses has proven to be very effective in relieving both back and leg pain. Dr. Girish Datar can target and visualize the pain generator with an endoscope, using imaging as a guide&amp; confirming the source of pain with diagnostic and therapeutic injections. He is among the first to use endoscopically guided lasers in spine in India.<br style=\"margin: 0px; padding: 0px;\">Lateral &amp; foraminal stenosis. The technique he uses has proven to be very effective in relieving both back and leg pain. Dr. Girish Datar can target and visualize the pain generator with an endoscope, using imaging as a guide&amp; confirming the source of pain with diagnostic and therapeutic injections. He is among the first to use endoscopically guided lasers in spine in Bangladesh.</p></div></div></div>', '2025-02-16 00:31:15', '2025-02-16 02:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `about_tabs`
--

CREATE TABLE `about_tabs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_photo` varchar(255) DEFAULT NULL,
  `about_text` longtext DEFAULT NULL,
  `educational` longtext DEFAULT NULL,
  `work_profile` longtext DEFAULT NULL,
  `academic` longtext DEFAULT NULL,
  `achievements` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_tabs`
--

INSERT INTO `about_tabs` (`id`, `about_photo`, `about_text`, `educational`, `work_profile`, `academic`, `achievements`, `created_at`, `updated_at`) VALUES
(1, 'images/about-tab/83822-20250216051641about.jpg', '<p><span style=\"color: rgb(109, 110, 117); font-family: Hind, sans-serif;\">Dr. Chandra is a Qualified Orthopedic Surgeon who specializes (Fellowship Trained) in diagnosing and treating the causes of back pain and sciatica from painful degenerative conditions of the lumbar spine, particularly herniated discs, bulging discs with annular tears, Lateral &amp; foraminal stenosis. The technique he uses has proven to be very effective in relieving both back and leg pain. Dr. Girish Datar can target and visualize the pain generator with an endoscope, using imaging as a guide&amp; confirming the source of pain with diagnostic and therapeutic injections. He is among the first to use endoscopically guided lasers in spine in India.</span><br style=\"margin: 0px; padding: 0px; color: rgb(109, 110, 117); font-family: Hind, sans-serif;\"><span style=\"color: rgb(109, 110, 117); font-family: Hind, sans-serif;\">Lateral &amp; foraminal stenosis. The technique he uses has proven to be very effective in relieving both back and leg pain. Dr. Girish Datar can target and visualize the pain generator with an endoscope, using imaging as a guide&amp; confirming the source of pain with diagnostic and therapeutic injections. He is among the first to use endoscopically guided lasers in spine in Bangladesh.</span></p>', '<p><span style=\"color: rgb(31, 31, 31); font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">Ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content lorem. ih</span></p>', '<p><span style=\"color: rgb(31, 31, 31); font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">Isa dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content lorem ipsum.&nbsp; hfyy</span></p>', '<p><span style=\"color: rgb(31, 31, 31); font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">Dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content.</span></p>', '<p><span style=\"color: rgb(31, 31, 31); font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">Or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content.</span></p>', '2025-02-13 00:00:32', '2025-02-15 23:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `adcategories`
--

CREATE TABLE `adcategories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adcategories`
--

INSERT INTO `adcategories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HajajaFront Banner', 1, '2024-06-11 21:40:30', '2024-06-30 01:32:17'),
(2, 'Success Banner', 1, '2024-06-11 21:44:06', '2024-06-11 21:44:06'),
(4, 'App Banner', 1, '2024-06-12 04:08:48', '2024-06-12 22:09:33'),
(5, 'Aut eu ipsum quis ve', 0, '2025-03-10 00:01:57', '2025-03-10 00:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `phone`, `email`, `password`, `image`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', '01844590333', 'quickAdmin@gmail.com', '$2y$10$54NkthtSHuZ7JuH5nUO12e5P4YjGEvPIcZLWLYHXc.Fd2MQYKGfPe', 'image', 'address', 1, NULL, '2024-06-30 01:24:32'),
(3, 2, 'Shishir', '01789456123', 'shishir@gmail.com', '$2y$12$BSYFzNCmL55A2DdLQyZBHOza/Ejt0sVpxgvpnEbJQyQvHgpN1Gxr2', 'images/admin/1802911675340304.jpg', 'Mirpur-1, USA', 1, '2024-06-26 02:29:19', '2024-06-26 02:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `adcategory_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `adcategory_id`, `title`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Premium course', 'images/ads/1823206214643598.jpg', 'https://birdembd.org/', 1, '2024-06-11 22:59:09', '2025-02-05 02:42:20'),
(2, 1, 'Free course', 'images/ads/1823206223150744.jpg', 'https://www.apollohospitals.com/', 1, '2024-06-11 23:36:32', '2025-02-05 02:42:28'),
(3, 2, 'Success 1', 'images/ads/1823196162092630.jpg', '#', 1, '2024-06-11 23:47:17', '2025-02-05 00:02:33'),
(4, 2, 'Success 2', 'images/ads/1823196170797433.jpg', '#', 1, '2024-06-11 23:47:20', '2025-02-05 00:02:41'),
(5, 2, 'Success 3', 'images/ads/1823196179255733.jpg', '#', 1, '2024-06-11 23:47:24', '2025-02-05 00:02:49'),
(6, 4, 'App banenr', 'images/ads/1813969183797631.png', '#', 1, '2024-06-12 04:09:13', '2024-10-26 03:43:41'),
(7, 2, 'ad', 'images/ads/1823196220483417.jpg', '#', 1, '2024-10-29 11:45:16', '2025-02-05 00:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile_banking` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `profession` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `percentage` int(10) UNSIGNED DEFAULT NULL,
  `validity` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliates`
--

INSERT INTO `affiliates` (`id`, `name`, `email`, `password`, `phone`, `mobile_banking`, `gender`, `dob`, `profession`, `institution`, `department`, `address`, `image`, `status`, `percentage`, `validity`, `created_at`, `updated_at`) VALUES
(1, 'aff 1', 'fsd.ramjan@gmail.com', '$2y$10$PfxSk61e76AgtQt279sbjO1F/X6Wul6IqR7KLDCh50d3zjMPRhR0u', '321654987', '3698745', 'Male', '2002-12-30', 'Teacher', 'School name', 'Math', 'address', 'images/affiliate/1752396740625398.png', 1, NULL, NULL, '2022-12-13 11:36:25', '2022-12-16 12:49:18'),
(4, 'gg', 'ggg@gmail.com', '$2y$10$PfxSk61e76AgtQt279sbjO1F/X6Wul6IqR7KLDCh50d3zjMPRhR0u', '0177128210444', '1', '1', '2023-01-05', 'gg', 'gg', 'gg', 'gg', NULL, 1, 2, 17, '2023-01-04 23:36:36', '2023-01-25 12:53:55'),
(7, 'Ash1', 'ashraf@gmail.com', '$2y$10$sQDOuUydWc3r826vNbDD6uYKUEuZU4bJo4/hlYKxrzX0vUPijXf7q', '01555555555', '3698745', 'Male', '2002-12-30', 'Teacher', 'School name', 'Math', 'address', 'images/affiliate/1757712060341023.jpg', 1, 4, 17, '2023-02-13 17:37:08', '2023-02-13 17:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_click_counts`
--

CREATE TABLE `affiliate_click_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` bigint(20) UNSIGNED NOT NULL,
  `click` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliate_click_counts`
--

INSERT INTO `affiliate_click_counts` (`id`, `affiliate_id`, `click`, `created_at`, `updated_at`) VALUES
(1, 4, 5, '2023-01-25 14:25:46', '2023-01-25 14:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image1` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image2` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `additional_text` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image1`, `image2`, `additional_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'নিয়ে আসুন, নতুন কিছু সম্ভাবনা আপনার শিক্ষা যাত্রায়!', 'শিক্ষার মাধ্যমে আপনার সম্ভাবনাকে Unlock করুন!', 'frontend/img/uploads/1801554219548293.jpg', 'frontend/img/uploads/edu2.jpg', 'আপনার ভবিষ্যৎ, “নির্মাণ হবে নিজেকে গড়ার মধ্য দিয়েই', 1, '2024-06-11 06:53:40', '2024-10-24 00:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `billing_infos`
--

CREATE TABLE `billing_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `upzilla` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_infos`
--

INSERT INTO `billing_infos` (`id`, `student_id`, `course_id`, `country`, `division`, `district`, `upzilla`, `address`, `apartment`, `notes`, `created_at`, `updated_at`) VALUES
(1, 19, 110, 'Sri-Lanka', 'Rerum laboris dolore', 'Eaque in Nam obcaeca', 'Cumque dolor nostrum', 'Quam dignissimos ut', 'Laborum Incidunt a', 'Voluptatibus delenit', '2025-03-09 02:43:31', '2025-03-09 02:43:31'),
(2, 19, 111, 'Bangladesh', 'Hic qui repudiandae', 'Molestiae sit ut om', 'Eum doloribus volupt', 'Tempor libero Nam vo', 'Rerum voluptatem vel', 'Magni vero molestiae', '2025-03-09 04:02:46', '2025-03-09 04:02:46'),
(3, 20, 111, 'Bangladesh', 'Non qui voluptas ali', 'Ex suscipit omnis re', 'Tempor occaecat reru', 'Nemo vel reiciendis', 'Aliquam velit offici', 'Delectus debitis ni', '2025-03-11 21:35:49', '2025-03-11 21:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image`, `banner`, `status`, `created_at`, `updated_at`) VALUES
(1, 'পাবলিক এডুকেশনে গ্লোবাল লার্নিং এর চ্যালেঞ্জ', '<div class=\"blog__text mb-40\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 27px; margin-left: 0px; padding: 0px; transition: all 0.3s ease-out 0s; font-size: 18px; color: rgb(83, 84, 91); line-height: 28px;\">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে। মানুষকে দেখতে হল খুব ছোটো, কিন্তু সেটা একটা কৌশল মাত্র। এবারকার জীবযাত্রার পালায় বিপুলতাকে করা হল বহুলতায় পরিণত। মহাকায় জন্তু ছিল প্রকাণ্ড একলা, মানুষ হল দূরপ্রসারিত অনেক।</p></div><div class=\"blog__quote grey-bg mb-45 p-relative fix\" style=\"margin: 0px 0px 45px; padding: 40px 50px; overflow: hidden; position: relative; background: rgb(243, 244, 248); border-radius: 4px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><img class=\"quote\" src=\"http://127.0.0.1:8000/assets/frontend/img/blog/quote-1.png\" alt=\"\" style=\"margin: 0px; padding: 0px; transition: all 0.3s ease-out 0s; position: absolute; bottom: -34px; right: 50px;\"><blockquote style=\"margin: 0px; padding: 0px;\"><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; transition: all 0.3s ease-out 0s; font-size: 24px; color: rgb(14, 17, 51); line-height: 1.3;\">মানুষকে দেখতে হল খুব ছোটো, কিন্তু সেটা একটা কৌশল মাত্র। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য।</p><h4 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 30px; font-size: 20px; transition: all 0.3s ease-out 0s; font-family: Hind, sans-serif; color: rgb(14, 17, 51); position: relative;\">চেরিস কলিন্স</h4></blockquote></div><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: all 0.3s ease-out 0s; font-family: Bangla, Arial, sans-serif; font-size: 20px; color: rgb(109, 110, 117); line-height: 26px;\">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে। মানুষকে দেখতে হল খুব ছোটো, কিন্তু সেটা একটা কৌশল মাত্র। এবারকার জীবযাত্রার পালায় বিপুলতাকে করা হল বহুলতায় পরিণত। মহাকায় জন্তু ছিল প্রকাণ্ড একলা, মানুষ হল দূরপ্রসারিত অনেক।</p><div class=\"blog__link mb-35\" style=\"margin: 0px 0px 35px; padding: 0px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: all 0.3s ease-out 0s; font-size: 26px; color: rgb(14, 17, 51); line-height: 1.4;\">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে। মানুষকে দেখতে হল খুব ছোটো, কিন্তু সেটা একটা কৌশল মাত্র। এবারকার জীবযাত্রার পালায় বিপুলতাকে করা হল বহুলতায় পরিণত। মহাকায় জন্তু ছিল প্রকাণ্ড একলা, মানুষ হল দূরপ্রসারিত অনেক।</p></div><div class=\"blog__img w-img mb-45\" style=\"margin: 0px 0px 45px; padding: 0px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><img src=\"http://127.0.0.1:8000/assets/frontend/img/blog/big/blog-big-1.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; transition: all 0.3s ease-out 0s; width: 736px; border-radius: 6px;\"></div><div class=\"blog__text mb-40\" style=\"margin: 0px 0px 40px; padding: 0px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif;\"><h3 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding: 0px; font-weight: 700; font-size: 30px; transition: all 0.3s ease-out 0s; font-family: Hind, sans-serif; color: rgb(14, 17, 51);\">নিজেকে এমন ভাবে তৈরি কর যেন কোন খারাপ পরিস্থিতিতে ও মাথা নিচু করতে না হয়</h3><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 27px; margin-left: 0px; padding: 0px; transition: all 0.3s ease-out 0s; font-size: 18px; color: rgb(83, 84, 91); line-height: 28px;\">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে। মানুষকে দেখতে হল খুব ছোটো, কিন্তু সেটা একটা কৌশল মাত্র। এবারকার জীবযাত্রার পালায় বিপুলতাকে করা হল বহুলতায় পরিণত। মহাকায় জন্তু ছিল প্রকাণ্ড একলা, মানুষ হল দূরপ্রসারিত অনেক।</p><div><br></div></div>', 'images/blogs/1797644501709300.jpg', 'images/blogs/1797644501782579.jpg', 1, '2024-04-28 23:05:36', '2024-04-28 23:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `favourite` tinyint(1) NOT NULL DEFAULT 1,
  `front_page` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `icon`, `favourite`, `front_page`, `status`, `created_at`, `updated_at`) VALUES
(0, 'লাইভ ক্লাস', 'images/category/1813797785606070.png', 'Find & Download Live Class.', NULL, 0, 0, 0, '2024-06-09 22:48:05', '2025-02-04 23:01:12'),
(1, 'SSC/HSC Science', 'images/category/1813798510378931.png', 'সকল কিছুই ডেটার উপর নির্ভরশীল', NULL, 0, 0, 0, '2022-11-27 10:17:41', '2025-02-04 23:01:15'),
(2, 'SSC/HSC Commerce', 'images/category/1813798925445124.png', 'You know what!!', NULL, 0, 0, 0, '2024-04-27 23:06:26', '2025-02-04 23:01:18'),
(3, 'এস এস সি', 'images/category/1801727211768931.jpg', 'অনলাইন ব্যাচের লাইব্রেরীতে থাকছে সব বিষয়ের অধ্যায়-ভিত্তিক প্রশ্ন অনুশীলনের সুযোগ।', NULL, 0, 0, 0, '2024-06-13 00:42:47', '2025-02-04 23:01:21'),
(4, 'IELTS', 'images/category/1814276294904353.png', 'Academic IELTS এবং General Training IELTS', NULL, 0, 0, 0, '2024-06-25 21:51:45', '2025-02-04 23:01:25'),
(5, 'daza@mailinator.com', 'images/category/1802901834897471.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto ratione numquam, vero nemo maiores velit. Accusamus dolor consectetur, repellat quisquam pariatur explicabo eligendi, laudantium doloribus dicta, voluptas magnam hic modi? Quidem error repudiandae deleniti similique impedit, perspiciatis, tempore sapiente debitis deserunt suscipit quasi ducimus, ipsam recusandae dolore aliquam dolor? Qui?', NULL, 0, 0, 0, '2024-06-25 23:52:54', '2024-12-04 00:43:51'),
(6, 'Class 1', 'images/category/1805978381447950.jpeg', 'আপনার পছন্দের কোর্সটি বেছে নিন আর দক্ষতা অর্জন করে হয়ে উঠুন স্বাবলম্বী।', NULL, 0, 0, 0, '2024-07-29 22:53:18', '2025-02-04 23:01:29'),
(7, 'Computer Science', 'images/category/1806811444656633.jpg', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate.', NULL, 0, 0, 0, '2024-08-08 09:34:29', '2025-02-04 23:01:32'),
(8, 'Medical', 'images/category/1823191470922282.jpg', 'Medical', NULL, 0, 0, 1, '2024-09-03 10:07:41', '2025-02-04 22:47:59'),
(9, 'SSC Commerce', 'images/category/1814277583186264.png', 'বাণিজ্য বিষয়ক এক প্ল্যাটফর্ম।', NULL, 0, 0, 0, '2024-10-29 12:59:40', '2025-02-04 23:01:40'),
(10, 'Live Class', 'images/category/1817418121524374.png', 'test', NULL, 0, 0, 0, '2024-12-03 05:23:04', '2025-02-04 23:01:43'),
(11, 'Forensic Department', 'images/category/1817490939336005.png', 'Forensic Department', NULL, 1, 1, 1, '2024-12-04 00:40:29', '2025-02-04 22:52:06'),
(12, 'বিজ্ঞান বিভাগ', 'images/category/1817491843588780.png', 'খুব শীঘ্রই আসছে!', NULL, 1, 0, 0, '2024-12-04 00:54:51', '2025-02-04 23:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'science', 'images/category/1757966903600083.png', 1, '2022-11-27 10:40:58', '2023-02-16 13:11:25'),
(2, 5, 'Physics', 'images/childcategory/1801727498984587.jpg', 1, '2024-06-13 00:47:21', '2024-06-13 00:47:21'),
(3, 5, 'Chemistry', 'images/childcategory/1801727507193006.jpg', 1, '2024-06-13 00:47:28', '2024-06-13 00:47:28'),
(4, 5, 'Biology', 'images/childcategory/1801727518111966.jpg', 1, '2024-06-13 00:47:39', '2024-06-13 00:47:39'),
(5, 5, 'Higher math', 'images/childcategory/1801727527834794.jpg', 1, '2024-06-13 00:47:48', '2024-06-13 00:47:48'),
(6, 7, 'Accounting', 'images/childcategory/1805721712308982.jpg', 1, '2024-07-27 02:53:39', '2024-07-27 02:53:39'),
(7, 12, 'AI Child Category', 'images/childcategory/1806811565860729.jpg', 1, '2024-08-08 09:36:24', '2024-08-08 09:36:24'),
(8, 14, 'Test Forensic 1', 'images/childcategory/1817492569911703.png', 1, '2024-12-04 01:06:24', '2025-02-04 23:05:56'),
(9, 14, 'Test Forensic 2', 'images/childcategory/1817492628200394.png', 1, '2024-12-04 01:07:19', '2025-02-04 23:07:57'),
(10, 15, 'Test Forensic 1', 'images/childcategory/1817492666896349.png', 1, '2024-12-04 01:07:56', '2025-02-04 23:11:31'),
(11, 15, 'Test Forensic 2', 'images/childcategory/1817492686523613.png', 1, '2024-12-04 01:08:15', '2025-02-04 23:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `childsubcategories`
--

CREATE TABLE `childsubcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childsubcategories`
--

INSERT INTO `childsubcategories` (`id`, `childcategory_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'dsd', 'images/childsubcategory/1750669262554867.png', 0, '2022-11-27 10:58:32', '2024-08-08 09:32:38'),
(2, 6, 'Accounting 1st Paper', 'images/childsubcategory/1805721768115109.png', 0, '2024-07-27 02:54:32', '2024-08-08 09:32:42'),
(3, 6, 'Accounting 1st Paper', 'images/childsubcategory/1805721880582267.png', 0, '2024-07-27 02:56:20', '2024-08-08 09:32:45'),
(4, 6, 'Accounting 2nd Paper', 'images/childsubcategory/1805721976277527.jpg', 0, '2024-07-27 02:57:51', '2024-08-08 09:32:47'),
(5, 7, 'AI Sub Child Category', 'images/childsubcategory/1806811588719064.jpg', 1, '2024-08-08 09:36:46', '2024-08-08 09:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `company_infos`
--

CREATE TABLE `company_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `phone_three` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `app_logo` varchar(255) DEFAULT NULL,
  `app_link` text DEFAULT NULL,
  `footer_text` varchar(250) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_infos`
--

INSERT INTO `company_infos` (`id`, `name`, `about`, `address`, `email`, `phone_one`, `phone_two`, `phone_three`, `logo`, `favicon`, `app_logo`, `app_link`, `footer_text`, `facebook`, `youtube`, `linkedin`, `pinterest`, `twitter`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'Doctor Portfolio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'demo@gmail.com', '+8801718429680', '+8801718429680', '+8801718429680', 'images/site/1823036363830413.png', 'images/site/1823036363835027.png', 'images/site/1823036363839210.png', '#', '🏠 | Shah Ali Plaza (Level 9), Lift-8, Plot 913, Mirpur-10, Dhaka-1216, Bangladesh', '#', '#', '#', '#', '#', '#', NULL, '2025-02-05 00:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Deborah Everett', '+1 (413) 522-3202', NULL, NULL, '2025-02-12 03:00:40', '2025-02-12 03:00:40'),
(3, 'Hayden Horn', '+1 (535) 263-5774', 'Quidem velit suscipi', 'Id id recusandae L', '2025-02-12 21:30:45', '2025-02-12 21:30:45'),
(4, 'TestShishir', '01862131292', 'Test', 'test address', '2025-02-13 05:35:00', '2025-02-13 05:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_date` date NOT NULL,
  `coupon_type` int(10) UNSIGNED NOT NULL,
  `coupon_discount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `coupon_date`, `coupon_type`, `coupon_discount`, `created_at`, `updated_at`) VALUES
(2, 'ALIF30', '2025-05-26', 1, 30, '2024-05-05 00:08:43', '2024-05-05 00:08:43'),
(3, 'Sudip24', '2025-03-27', 2, 240, '2025-03-06 03:24:21', '2025-03-06 03:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `childsubcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `enrolled` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED DEFAULT NULL,
  `old_price` int(10) UNSIGNED DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `revenue` int(11) NOT NULL DEFAULT 0,
  `instructor_commision` int(11) NOT NULL DEFAULT 0 COMMENT 'percentage',
  `commision_amount` int(11) NOT NULL DEFAULT 0,
  `commision_due` int(11) NOT NULL DEFAULT 0,
  `commision_paid` int(11) NOT NULL DEFAULT 0,
  `commision_paystatus` int(11) DEFAULT NULL COMMENT 'null=unpaid,\r\n0=requested,\r\n1=paid',
  `thumbnil_image` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `details_file` varchar(255) DEFAULT NULL,
  `certificate_image` varchar(250) DEFAULT NULL,
  `certificate_text` text DEFAULT NULL,
  `zoom_link` text DEFAULT NULL,
  `zoom_password` varchar(255) DEFAULT NULL,
  `zoom_video` varchar(255) DEFAULT NULL,
  `embed_video` varchar(200) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `common` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `subcategory_id`, `childcategory_id`, `childsubcategory_id`, `enrolled`, `name`, `price`, `discount`, `old_price`, `discount_price`, `revenue`, `instructor_commision`, `commision_amount`, `commision_due`, `commision_paid`, `commision_paystatus`, `thumbnil_image`, `details`, `details_file`, `certificate_image`, `certificate_text`, `zoom_link`, `zoom_password`, `zoom_video`, `embed_video`, `status`, `trending`, `featured`, `favorite`, `common`, `created_at`, `updated_at`) VALUES
(84, 2, 0, 3, NULL, NULL, 0, 'Live Course (Online)', 22500, 10, 25000, 2500, 0, 0, 0, 0, 0, NULL, 'images/course/1801451107158662.jpg', '<p>live course starting at this point</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-06-09 23:34:13', '2024-06-23 23:05:54'),
(85, 2, 0, 3, NULL, NULL, 0, 'Math 101', 1000, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'images/course/1801540600127923.jpg', '<p>Course details</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-06-10 23:16:40', '2024-06-10 23:16:40'),
(86, 11, 0, 3, NULL, NULL, 0, 'Instructor Live Course', 15000, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 'images/course/1801542892657068.jpg', '<p>details</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-06-10 23:53:06', '2024-06-25 05:51:45'),
(95, 15, 3, 7, NULL, NULL, 3, 'Elements of Accounting (হিসাববিজ্ঞানের উপাদান)', 2375, 5, 2500, 125, 6768, 5, 357, 0, 357, 1, 'images/courses/1813998551623300.png', '<p><span style=\"color: rgb(163, 163, 163); font-family: __Inter_36bd41, __Inter_Fallback_36bd41, __Noto_Sans_Bengali_08132e, __Noto_Sans_Bengali_Fallback_08132e, sans-serif; font-size: medium; white-space-collapse: preserve;\">ব্যবসায় শিক্ষা, বিজ্ঞান কিংবা মানবিক, এর নানাবিধ ব্যবহার থাকায় প্রায় সকল বিভাগের শিক্ষার্থীদেরকেই বিশ্ববিদ্যালয়ে এসে হিসাববিজ্ঞান পড়তে হয়। Financial Accounting এর বেসিক গড়ে তুলতে ও বিশ্ববিদ্যালয় জীবনের Accounting বিষয়ক কোর্সগুলোতে ভালো করতে আজই এনরোল করুন আমাদের এই ফ্রি Financial Accounting কোর্সটিতে।</span><br></p>', 'images/courses/1806812845448176.pdf', 'images/courses/certificate/1806812845447505.webp', '<p><span style=\"color: rgb(163, 163, 163); font-family: __Inter_36bd41, __Inter_Fallback_36bd41, __Noto_Sans_Bengali_08132e, __Noto_Sans_Bengali_Fallback_08132e, sans-serif; font-size: medium; white-space-collapse: preserve;\">ব্যবসায় শিক্ষা, বিজ্ঞান কিংবা মানবিক, এর নানাবিধ ব্যবহার থাকায় প্রায় সকল বিভাগের শিক্ষার্থীদেরকেই বিশ্ববিদ্যালয়ে এসে হিসাববিজ্ঞান পড়তে হয়।</span><br></p>', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-08-08 09:56:45', '2025-01-18 22:37:02'),
(96, 15, 3, 7, NULL, NULL, 8, 'Accounting 1st Paper', 2700, 10, 3000, 300, 19440, 10, 2160, 0, 2160, 1, 'images/course/1807102946154947.jpg', '<ul><li>Financial Accounting বিষয়ের বেসিক তৈরিতে গুরুত্বপূর্ণ সব টপিক</li><li>Transaction record, general journal ও ledger তৈরি, debit ও credit, এবং trial balance তৈরি করা।</li><li>Adjusting ও Closing Journal Entries, Inventory costing এবং Bank reconciliation statement তৈরি করা।</li><li>Financial Statements তৈরি ও ব্যবহার করা।</li></ul>', NULL, 'images/courses/certificate/1807102946159738.webp', '<ul><li>Financial Accounting বিষয়ের বেসিক তৈরিতে গুরুত্বপূর্ণ সব টপিক</li><li>Transaction record, general journal ও ledger তৈরি, debit ও credit, এবং trial balance তৈরি করা।</li><li>Adjusting ও Closing Journal Entries, Inventory costing এবং Bank reconciliation statement তৈরি করা।</li><li>Financial Statements তৈরি ও ব্যবহার করা।</li></ul>', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, '2024-08-11 14:47:46', '2025-01-18 22:37:02'),
(104, 16, 8, 13, NULL, NULL, 0, 'হিসাববিজ্ঞান ১ম পত্র', 1020, 15, 1200, 180, 0, 15, 0, 0, 0, NULL, 'images/course/1809172649580160.png', '<p>এসএসসি’র থেকে দ্বিগুনেরও বেশি অধ্যায় নিয়ে তৈরি এইচএসসি পরীক্ষার সিলেবাস। এইচএসসি পরীক্ষায় কাঙ্খিত ভাল ফলাফল অর্জণ করতে ১ম এবং ২য় পত্র দুটিতেই দরকার সমান প্রস্ততি। উভয় পত্রে নিজের দখলই প্রমাণ করবে তোমার একশোতে একশো প্রস্ততি। সঠিক পরিকল্পনা আর কার্যকরী রুটিনের সাথে চমৎকার ইন্টারেক্টিভ লাইভ ক্লাসের মাধ্যমে উভয় পত্রের প্রিপারেশন নিয়ে নাও টেন মিনিট স্কুলের HSC 2025 অনলাইন ব্যাচের সাথে।<br></p>', 'images/courses/1809172649581160.pdf', NULL, '<p>কোর্সটি সফলভাবে শেষ করলে আপনার জন্য আছে সার্টিফিকেট যা আপনি</p><ol><li>আপনার সিভিতে যোগ করতে পারবেন</li><li>লিংকডইন প্রোফাইলে সরাসরি শেয়ার করতে পারবেন</li><li>ফেসবুকে এক ক্লিকেই শেয়ার করতে পারবেন</li></ol>', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-09-03 11:04:49', '2024-09-03 11:06:22'),
(105, 15, 8, 13, NULL, NULL, 0, 'হিসাববিজ্ঞান ১ম পত্র', 1350, 10, 1500, 150, 0, 0, 0, 0, 0, 1, 'images/courses/1813501522604351.png', '<h5><font color=\"#000000\"><b><span style=\"\" segoe=\"\" ui\";\"=\"\">﻿</span><span style=\"\" segoe=\"\" ui=\"\" symbol\";\"=\"\">﻿</span>এই কোর্সটি বিশেষভাবে ৯ম থেকে ১২শ শ্রেণির শিক্ষার্থীদের জন্য তৈরি করা হয়েছে, </b></font></h5><pre><font color=\"#636363\">যাতে তারা অ্যাকাউন্টিং-এর ভিত্তি ভালোভাবে রপ্ত করতে পারে এবং পারদর্শী হতে পারে।&nbsp;</font></pre><pre><font color=\"#636363\"><span style=\"font-size: 1rem;\">এখানে সহজভাবে ডেবিট-ক্রেডিট, জাবেদা, খতিয়ান, আর্থিক বিবরণী প্রভৃতি </span></font></pre><pre><font color=\"#636363\"><span style=\"font-size: 1rem;\">মূল বিষয়গুলো শেখানো হবে। এই কোর্সের মাধ্যমে শিক্ষার্থীরা একাউন্টিং-এর </span></font></pre><pre><font color=\"#636363\"><span style=\"font-size: 1rem;\">ভিত্তি মজবুত করতে পারবে, যা তাদের একাডেমিক এবং বাস্তব জীবনে কাজে আসবে।</span></font></pre><pre><br></pre><p><br></p>', 'images/courses/1809339165168196.pdf', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-09-05 07:11:31', '2025-01-18 22:37:02'),
(106, 16, 2, 2, NULL, NULL, 0, 'হিসাববিজ্ঞান (Basic to Advance)', 100, 90, 1000, 900, 0, 90, 0, 0, 0, NULL, 'images/course/1813799611320251.png', '<p>এই কোর্সটি বিশেষভাবে ৯ম থেকে ১২শ শ্রেণির শিক্ষার্থীদের জন্য তৈরি করা হয়েছে, যাতে তারা অ্যাকাউন্টিং-এর ভিত্তি ভালোভাবে রপ্ত করতে পারে এবং পারদর্শী হতে পারে। <span style=\"font-size: 1rem;\">এখানে সহজভাবে ডেবিট-ক্রেডিট, জাবেদা, খতিয়ান, আর্থিক বিবরণী প্রভৃতি মূল বিষয়গুলো শেখানো হবে। এই কোর্সের মাধ্যমে শিক্ষার্থীরা একাউন্টিং-এর ভিত্তি মজবুত করতে পারবে, যা তাদের একাডেমিক এবং বাস্তব জীবনে কাজে আসবে।</span></p><p><span style=\"font-size: 1rem;\"><br></span></p><p><span style=\"font-size: 1rem;\"><br></span></p>', 'images/courses/1813799611321242.pdf', NULL, '<p>ঘক্সহহ</p>', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-10-24 06:48:24', '2024-10-29 06:34:17'),
(107, 16, 11, 14, NULL, NULL, 10, 'Netter Atlas of Human Anatomy', 0, 100, 1500, 1500, 0, 95, 0, 0, 0, NULL, 'images/courses/1823206179793305.jpg', '<h3></h3><p><font style=\"\" color=\"#424242\"><span style=\"font-family: \"Arial Black\";\">﻿</span><span style=\"font-family: \"Arial Black\";\">﻿</span><span style=\"font-family: \"Arial Black\";\">স্বপ্নের A+ নম্বর অর্জনের জন্য আমাদের কোর্সে স্বাগতম! আমরা প্রস্তুত করেছি SSC/HSC ২০২৫ ব্যাচের জন্য বিশেষভাবে ডিজাইন করা একটি কোর্স যা ব্যবসায় শিক্ষা বিভাগের হিসাববিজ্ঞান এবং ফিন্যান্স, ব্যাংকিং ও বিমা সহ অন্য বিষয়গুলোকে কেন্দ্র করে তৈরি। আমাদের উদ্দেশ্য হলো, শিক্ষার্থীদের জন্য সঠিক গাইডলাইন ও সহযোগিতা প্রদান করা যাতে তারা এই গুরুত্বপূর্ণ বিষয়ে দক্ষতা অর্জন করতেপারে।</span></font></p><p><img src=\"data:image/png;base64,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\" data-filename=\"Untitled design (10).png\" style=\"width: 40px;\"><span class=\"OYPEnA font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none\" style=\"font-kerning: none;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">এই কোর্সে যা যা থাকছে:</font></span></span><font color=\"#000000\"></font></p><table class=\"table table-bordered\"><tbody><tr><td><font color=\"#000000\"> </font><img src=\"data:image/png;base64,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\" data-filename=\"12.png\" style=\"width: 33.7222px; height: 33.7222px;\"> ২ টি বিষয় পড়ানো হবে।<font color=\"#000000\"><br></font></td></tr><tr><td><font color=\"#000000\"> </font><img src=\"data:image/png;base64,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\" data-filename=\"Untitled design (12).png\" style=\"color: rgb(0, 0, 0); font-size: 1rem; background-color: transparent; width: 32.7222px; height: 32.7222px;\"> ৫০+ অ্যানিমেটেড ভিডিয়ো।<font color=\"#000000\"><br></font></td></tr><tr><td><font color=\"#000000\"> </font><img src=\"data:image/png;base64,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\" data-filename=\"Untitled design (13).png\" style=\"color: rgb(0, 0, 0); font-size: 1rem; background-color: transparent; width: 32.7222px; height: 32.7222px;\"> সাব্জেক্টভিত্তিক ২-৩ ঘণ্টার ক্লাস।<font color=\"#000000\"><br></font></td></tr><tr><td><font color=\"#000000\"> </font><img src=\"data:image/png;base64,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\" data-filename=\"Untitled design (14).png\" style=\"color: rgb(0, 0, 0); font-size: 1rem; background-color: transparent; width: 33.7222px; height: 33.7222px;\"> অধ্যায়ভিত্তিক MCQ পরীক্ষা। <font color=\"#000000\"><br></font></td></tr><tr><td><font color=\"#000000\"> </font><img src=\"data:image/png;base64,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\" data-filename=\"Untitled design (11).png\" style=\"color: rgb(0, 0, 0); width: 33.7222px; height: 33.7222px;\"> প্রতি সপ্তাহে ৪টি লাইভ ক্লাস নেয়া হবে।  <font color=\"#000000\"><br></font></td></tr><tr><td><font color=\"#000000\"> </font><img src=\"data:image/png;base64,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\" data-filename=\"Untitled design (16).png\" style=\"color: rgb(0, 0, 0); width: 33.7222px; height: 33.7222px;\"> প্রত্যেক অধ্যায় থেকে ৫-১০টি সৃজনশীল প্রশ্ন সমাধান করানো হবে।<font color=\"#000000\"><br></font></td></tr></tbody></table><p><img src=\"data:image/png;base64,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\" data-filename=\"Untitled design (10).png\" style=\"width: 40px;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">লক্ষ্যঃ</font></span></p><table class=\"table table-bordered\"><tbody><tr><td><ul><li><span class=\"OYPEnA font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none\" style=\"font-kerning: none;\"><font color=\"#000000\" style=\"\">এই কোর্সের লক্ষ্য হল Accounting-এর বেসিক থেকে অ্যাডভান্স লেভেল শেখানো, যাতে শিক্ষার্থীরা একাডেমিক ও বাস্তব জীবনে সফল হতে পারে।</font><br></span></li></ul></td></tr></tbody></table><p><br></p>', NULL, 'images/courses/certificate/1814251904198696.png', '<p><br></p>', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2024-10-29 05:30:14', '2025-02-06 00:15:24'),
(108, 15, 11, 14, NULL, NULL, 2, 'Medical Embryology', 4750, 5, 5000, 250, 9500, 0, 0, 0, 0, NULL, 'images/courses/1823206164865841.jpg', '<p><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">স্বপ্নের A+ নম্বর অর্জনের জন্য আমাদের কোর্সে স্বাগতম! আমরা প্রস্তুত করেছি SSC/HSC ২০২৫ ব্যাচের জন্য বিশেষভাবে ডিজাইন করা একটি কোর্স যা ব্যবসায় শিক্ষা বিভাগের হিসাববিজ্ঞান এবং ফিন্যান্স, ব্যাংকিং ও বিমা সহ অন্য বিষয়গুলোকে কেন্দ্র করে তৈরি। আমাদের উদ্দেশ্য হলো, শিক্ষার্থীদের জন্য সঠিক গাইডলাইন ও সহযোগিতা প্রদান করা যাতে তারা এই গুরুত্বপূর্ণ বিষয়ে দক্ষতা অর্জন করতেপারে।</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2025-01-13 22:15:48', '2025-02-06 00:15:24'),
(109, 15, 11, 14, NULL, NULL, 2, 'Snells Clinical Anatomy', 2940, 2, 3000, 60, 5880, 0, 0, 0, 0, NULL, 'images/courses/1823206151445957.jpg', '<p><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">স্বপ্নের A+ নম্বর অর্জনের জন্য আমাদের কোর্সে স্বাগতম! আমরা প্রস্তুত করেছি SSC/HSC ২০২৫ ব্যাচের জন্য বিশেষভাবে ডিজাইন করা একটি কোর্স যা ব্যবসায় শিক্ষা বিভাগের হিসাববিজ্ঞান এবং ফিন্যান্স, ব্যাংকিং ও বিমা সহ অন্য বিষয়গুলোকে কেন্দ্র করে তৈরি। আমাদের উদ্দেশ্য হলো, শিক্ষার্থীদের জন্য সঠিক গাইডলাইন ও সহযোগিতা প্রদান করা যাতে তারা এই গুরুত্বপূর্ণ বিষয়ে দক্ষতা অর্জন করতেপারে।</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2025-01-13 22:16:33', '2025-02-06 00:15:24'),
(110, 15, 11, 14, NULL, NULL, 2, 'Essentials of Human Anatomy', 3705, 5, 3900, 195, 7410, 0, 0, 0, 0, NULL, 'images/courses/1823206140977718.jpg', '<p><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">স্বপ্নের A+ নম্বর অর্জনের জন্য আমাদের কোর্সে স্বাগতম! আমরা প্রস্তুত করেছি SSC/HSC ২০২৫ ব্যাচের জন্য বিশেষভাবে ডিজাইন করা একটি কোর্স যা ব্যবসায় শিক্ষা বিভাগের হিসাববিজ্ঞান এবং ফিন্যান্স, ব্যাংকিং ও বিমা সহ অন্য বিষয়গুলোকে কেন্দ্র করে তৈরি। আমাদের উদ্দেশ্য হলো, শিক্ষার্থীদের জন্য সঠিক গাইডলাইন ও সহযোগিতা প্রদান করা যাতে তারা এই গুরুত্বপূর্ণ বিষয়ে দক্ষতা অর্জন করতেপারে।</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2025-01-13 22:17:00', '2025-02-06 00:15:24'),
(111, 15, 11, 14, NULL, NULL, 0, 'Essentials of Forensic Medicine & Toxicology', 19737, 7, 21222, 1485, 0, 0, 0, 0, 0, NULL, 'images/courses/1823206130873623.jpg', '<p><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">﻿</span><span arial=\"\" black\";\"=\"\" style=\"margin: 0px; padding: 0px; transition: 0.3s ease-out; color: rgb(66, 66, 66); font-family: Hind, sans-serif;\">স্বপ্নের A+ নম্বর অর্জনের জন্য আমাদের কোর্সে স্বাগতম! আমরা প্রস্তুত করেছি SSC/HSC ২০২৫ ব্যাচের জন্য বিশেষভাবে ডিজাইন করা একটি কোর্স যা ব্যবসায় শিক্ষা বিভাগের হিসাববিজ্ঞান এবং ফিন্যান্স, ব্যাংকিং ও বিমা সহ অন্য বিষয়গুলোকে কেন্দ্র করে তৈরি। আমাদের উদ্দেশ্য হলো, শিক্ষার্থীদের জন্য সঠিক গাইডলাইন ও সহযোগিতা প্রদান করা যাতে তারা এই গুরুত্বপূর্ণ বিষয়ে দক্ষতা অর্জন করতেপারে।</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2025-01-13 22:17:29', '2025-02-05 02:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `cv_achievements`
--

CREATE TABLE `cv_achievements` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cv_achievements`
--

INSERT INTO `cv_achievements` (`id`, `resume_id`, `name`, `details`, `link`, `created_at`, `updated_at`) VALUES
(2, 1, 'New Project', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', '#', '2024-06-08 21:44:54', '2024-06-08 21:46:11'),
(3, 5, 'Test', 'Test', 'Test', '2024-09-05 06:25:39', '2024-09-05 06:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `cv_education`
--

CREATE TABLE `cv_education` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `degree` varchar(150) NOT NULL,
  `study` varchar(100) NOT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cv_education`
--

INSERT INTO `cv_education` (`id`, `resume_id`, `institute`, `degree`, `study`, `grade`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Haragach M/L High School', 'SSC', 'Science', '5.00', '2009-01-01', '2015-12-31', '2024-06-05 21:50:26', '2024-06-05 22:20:37'),
(2, 1, 'Collectorate School & College, Rangpur', 'HSC', 'Science', '5.00', '2015-06-01', '2017-04-30', '2024-06-05 22:02:58', '2024-06-05 22:02:58'),
(4, 1, 'American International University-Bangladesh', 'BSc.', 'CSE', '3.75', '2018-05-20', '2022-12-20', '2024-06-05 23:54:08', '2024-06-08 22:05:55'),
(5, 5, 'Test', 'Test', 'Test', 'Test', '2024-09-11', '2024-09-24', '2024-09-05 06:24:58', '2024-09-05 06:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `cv_interests`
--

CREATE TABLE `cv_interests` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cv_interests`
--

INSERT INTO `cv_interests` (`id`, `resume_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Photography', '2024-06-06 00:05:07', '2024-06-06 00:05:07'),
(2, 1, 'Travelling', '2024-06-06 00:05:20', '2024-06-06 00:05:20'),
(3, 1, 'Bike Riding', '2024-06-06 00:05:30', '2024-06-06 00:05:30'),
(4, 1, 'sleeping', '2024-08-25 11:09:33', '2024-08-25 11:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `cv_languages`
--

CREATE TABLE `cv_languages` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` tinytext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cv_languages`
--

INSERT INTO `cv_languages` (`id`, `resume_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bangla', '2024-06-06 06:46:56', '2024-06-06 00:46:56'),
(2, 1, 'English', '2024-06-06 06:47:53', '2024-06-06 00:47:53'),
(3, 1, 'tamil', '2024-08-25 11:08:43', '2024-08-25 11:08:43'),
(4, 1, 'russian', '2024-08-25 11:08:52', '2024-08-25 11:08:52'),
(5, 1, 'german', '2024-08-25 11:09:12', '2024-08-25 11:09:12'),
(6, 1, 'spanish', '2024-08-25 11:09:21', '2024-08-25 11:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `cv_references`
--

CREATE TABLE `cv_references` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cv_references`
--

INSERT INTO `cv_references` (`id`, `resume_id`, `name`, `designation`, `phone`, `email`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tanveer Ahmed', 'Proffessor', NULL, 'tanvir@aiub.edu', NULL, '2024-06-08 23:22:33', '2024-06-08 23:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `cv_skills`
--

CREATE TABLE `cv_skills` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cv_skills`
--

INSERT INTO `cv_skills` (`id`, `resume_id`, `name`, `details`, `level`, `created_at`, `updated_at`) VALUES
(1, 1, 'C#', NULL, 70, '2024-06-05 22:55:17', '2024-06-06 03:47:42'),
(2, 1, 'HTML', NULL, 90, '2024-06-05 22:56:14', '2024-06-06 00:55:07'),
(3, 1, 'PHP', NULL, 75, '2024-06-05 22:56:27', '2024-06-06 00:55:35'),
(4, 1, 'Laravel', NULL, 88, '2024-06-05 22:56:40', '2024-06-06 00:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `cv_socials`
--

CREATE TABLE `cv_socials` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `link` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cv_socials`
--

INSERT INTO `cv_socials` (`id`, `resume_id`, `name`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'Facebook', 'fab fa-facebook-square', 'stephen@facebook', '2024-06-08 22:29:40', '2024-06-08 22:39:27'),
(2, 1, 'Twitter', 'fab fa-twitter-square', 'stephen@twitter', '2024-06-08 22:30:18', '2024-06-08 22:39:38'),
(3, 1, 'YouTube', 'fab fa-youtube', 'stephen@youtube', '2024-06-08 22:31:01', '2024-06-08 22:39:45'),
(4, 1, 'LinkedIn', 'fab fa-linkedin', 'stephen@linkedin', '2024-06-08 22:31:44', '2024-06-08 22:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `ebooks`
--

CREATE TABLE `ebooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `buy` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebooks`
--

INSERT INTO `ebooks` (`id`, `photo`, `title`, `description`, `price`, `buy`, `level`, `created_at`, `updated_at`) VALUES
(2, '/images/ebook/57482379-1741684695bannn.jpg', 'Facilis ut deleniti', 'Non qui dolorum opti', '453', 'Paid', 'Beginner', '2025-03-11 03:18:15', '2025-03-11 03:18:15'),
(3, '/images/ebook/79434808-1741684776coursedetails.png', 'Cum dolor pariatur', 'Elit commodi dolor', '20', 'Paid', 'Advanced', '2025-03-11 03:19:36', '2025-03-11 03:19:36'),
(4, '/images/ebook/945717245-1741684820ban-img.png', 'Tempor architecto om', 'Autem est dolore et', '103', 'Free', 'Beginner', '2025-03-11 03:20:20', '2025-03-11 03:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `current_video` int(11) DEFAULT NULL,
  `module_completed` int(11) NOT NULL DEFAULT 1,
  `certification` tinyint(1) NOT NULL DEFAULT 0,
  `certificateNo` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `student_id`, `course_id`, `current_video`, `module_completed`, `certification`, `certificateNo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 13, NULL, 1, 0, NULL, 1, '2024-05-06 22:54:53', '2024-05-21 03:28:30'),
(2, 1, 79, 3, 2, 0, NULL, 1, '2024-05-06 22:54:53', '2024-07-07 23:31:48'),
(3, 1, 15, NULL, 1, 0, NULL, 1, '2024-05-06 23:07:30', '2024-05-06 23:07:30'),
(4, 1, 20, NULL, 1, 0, NULL, 1, '2024-05-06 23:12:27', '2024-05-06 23:12:27'),
(5, 1, 80, 32, 3, 1, 'asdf', 1, '2024-05-26 00:01:34', '2024-08-15 06:57:19'),
(6, 1, 84, NULL, 1, 0, NULL, 1, '2024-06-10 00:25:17', '2024-06-10 00:25:17'),
(7, 3, 80, NULL, 1, 0, NULL, 1, '2024-06-23 23:42:12', '2024-06-23 23:42:12'),
(8, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-24 22:00:52', '2024-06-24 22:00:52'),
(9, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-24 22:05:41', '2024-06-24 22:05:41'),
(10, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-24 22:06:23', '2024-06-24 22:06:23'),
(11, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-24 22:09:27', '2024-06-24 22:09:27'),
(12, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-25 02:37:48', '2024-06-25 02:37:48'),
(13, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-25 05:39:49', '2024-06-25 05:39:49'),
(14, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-25 05:42:49', '2024-06-25 05:42:49'),
(15, 1, 88, NULL, 1, 0, NULL, 1, '2024-06-25 05:59:18', '2024-06-25 05:59:18'),
(16, 5, 11, NULL, 1, 0, NULL, 1, '2024-06-25 21:59:33', '2024-06-25 21:59:33'),
(17, 6, 89, 122, 1, 0, NULL, 1, '2024-06-25 22:25:03', '2024-10-24 02:17:43'),
(18, 5, 11, NULL, 1, 0, NULL, 1, '2024-06-26 00:10:16', '2024-06-26 00:10:16'),
(19, 5, 88, NULL, 1, 0, NULL, 1, '2024-06-26 00:10:17', '2024-06-26 00:10:17'),
(20, 6, 89, NULL, 1, 0, NULL, 1, '2024-06-29 23:46:26', '2024-06-29 23:46:26'),
(21, 6, 87, NULL, 1, 0, NULL, 1, '2024-06-29 23:58:59', '2024-06-29 23:58:59'),
(22, 1, 89, 121, 2, 1, 'LMS27653', 1, '2024-07-28 03:58:57', '2024-08-19 09:47:37'),
(23, 6, 95, 125, 2, 1, 'LMS64019', 1, '2024-08-08 11:04:58', '2025-02-04 23:39:36'),
(24, 6, 96, 134, 1, 0, NULL, 1, '2024-08-11 15:00:39', '2025-01-12 03:49:48'),
(25, 6, 95, NULL, 1, 0, NULL, 1, '2024-08-27 06:19:23', '2024-08-27 06:19:23'),
(26, 6, 96, NULL, 1, 0, NULL, 1, '2024-08-28 08:50:02', '2024-08-28 08:50:02'),
(27, 6, 89, NULL, 1, 0, NULL, 1, '2024-08-28 08:50:02', '2024-08-28 08:50:02'),
(28, 6, 95, NULL, 1, 0, NULL, 1, '2024-08-28 08:52:28', '2024-08-28 08:52:28'),
(29, 1, 87, NULL, 1, 0, NULL, 1, '2024-08-29 06:31:58', '2024-08-29 06:31:58'),
(30, 1, 89, NULL, 1, 0, NULL, 1, '2024-08-29 06:40:25', '2024-08-29 06:40:25'),
(31, 1, 89, NULL, 1, 0, NULL, 1, '2024-08-29 06:47:34', '2024-08-29 06:47:34'),
(32, 6, 96, NULL, 1, 0, NULL, 1, '2024-08-29 06:51:00', '2024-08-29 06:51:00'),
(33, 6, 11, NULL, 1, 0, NULL, 1, '2024-08-29 06:52:03', '2024-08-29 06:52:03'),
(34, 6, 88, NULL, 1, 0, NULL, 1, '2024-08-29 06:52:03', '2024-08-29 06:52:03'),
(35, 1, 87, NULL, 1, 0, NULL, 1, '2024-08-29 06:52:46', '2024-08-29 06:52:46'),
(36, 1, 97, NULL, 1, 0, NULL, 1, '2024-08-29 06:54:50', '2024-08-29 06:54:50'),
(37, 1, 97, NULL, 1, 0, NULL, 1, '2024-08-29 06:54:53', '2024-08-29 06:54:53'),
(38, 1, 89, NULL, 1, 0, NULL, 1, '2024-08-29 06:55:36', '2024-08-29 06:55:36'),
(39, 1, 89, NULL, 1, 0, NULL, 1, '2024-08-29 06:55:38', '2024-08-29 06:55:38'),
(40, 1, 87, NULL, 1, 0, NULL, 1, '2024-08-29 06:57:44', '2024-08-29 06:57:44'),
(41, 1, 96, NULL, 1, 0, NULL, 1, '2024-08-29 06:57:59', '2024-08-29 06:57:59'),
(42, 1, 96, NULL, 1, 0, NULL, 1, '2024-08-29 06:58:16', '2024-08-29 06:58:16'),
(43, 1, 96, NULL, 1, 0, NULL, 1, '2024-08-29 06:58:30', '2024-08-29 06:58:30'),
(44, 1, 87, NULL, 1, 0, NULL, 1, '2024-08-29 07:00:37', '2024-08-29 07:00:37'),
(45, 1, 88, NULL, 1, 0, NULL, 1, '2024-08-29 07:01:07', '2024-08-29 07:01:07'),
(46, 1, 87, NULL, 1, 0, NULL, 1, '2024-08-29 07:01:28', '2024-08-29 07:01:28'),
(47, 1, 87, NULL, 1, 0, NULL, 1, '2024-08-29 07:01:43', '2024-08-29 07:01:43'),
(48, 1, 88, NULL, 1, 0, NULL, 1, '2024-08-29 10:00:08', '2024-08-29 10:00:08'),
(49, 6, 96, NULL, 1, 0, NULL, 1, '2024-09-02 12:22:35', '2024-09-02 12:22:35'),
(50, 6, 96, NULL, 1, 0, NULL, 1, '2024-10-23 04:06:40', '2024-10-23 04:06:40'),
(51, 6, 107, 71, 2, 0, 'LMS15716', 1, '2024-11-05 00:28:45', '2025-01-28 03:21:38'),
(52, 6, 107, NULL, 1, 0, NULL, 1, '2024-11-12 07:19:38', '2024-11-12 07:19:38'),
(53, 6, 107, NULL, 1, 0, NULL, 1, '2024-12-04 08:06:42', '2024-12-04 08:06:42'),
(54, 6, 107, NULL, 1, 0, NULL, 1, '2024-12-21 21:02:37', '2024-12-21 21:02:37'),
(55, 6, 107, NULL, 1, 0, NULL, 1, '2025-01-14 01:34:51', '2025-01-14 01:34:51'),
(56, 6, 107, NULL, 1, 0, NULL, 1, '2025-01-28 03:31:32', '2025-01-28 03:31:32'),
(57, 6, 107, NULL, 1, 0, NULL, 1, '2025-01-28 05:19:13', '2025-01-28 05:19:13'),
(58, 17, 107, 146, 2, 0, 'LMS41960', 1, '2025-01-28 09:18:44', '2025-01-28 09:27:03'),
(59, 6, 107, NULL, 1, 0, NULL, 1, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(60, 6, 110, NULL, 1, 0, NULL, 1, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(61, 6, 108, NULL, 1, 0, NULL, 1, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(62, 6, 109, NULL, 1, 0, NULL, 1, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(63, 18, 108, NULL, 1, 0, NULL, 1, '2025-02-06 00:15:24', '2025-02-06 00:15:24'),
(64, 18, 110, NULL, 1, 0, NULL, 1, '2025-02-06 00:15:24', '2025-02-06 00:15:24'),
(65, 18, 109, NULL, 1, 0, NULL, 1, '2025-02-06 00:15:24', '2025-02-06 00:15:24'),
(66, 18, 107, NULL, 1, 0, NULL, 1, '2025-02-06 00:15:24', '2025-02-06 00:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `image`, `date`, `time`, `location`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ডিজিটাল ট্রান্সফর্ম কনফারেন্স', '<p><span style=\"color: rgb(83, 84, 91); font-family: Bangla, Arial, sans-serif; font-size: 20px;\">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে।</span><br></p>', 'images/events/1797568209890015.jpg', '2024-05-01', '12:00 am - 2:30 pm', 'নিউ ইয়ার্ক', 1, '2024-04-28 02:57:13', '2024-04-28 03:11:55'),
(2, 'হিসাববিজ্ঞান কোর্স - বেসিক থেকে অ্যাডভান্সড', '<p></p><div class=\"events__allow mb-40\" style=\"box-sizing: border-box; margin: 0px 0px 40px; padding: 0px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div><p></p><div class=\"events__details mb-35\" style=\"box-sizing: border-box; margin: 0px 0px 35px; padding: 0px; color: rgb(109, 110, 117); font-family: Bangla, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 28px; padding: 0px; transition: 0.3s ease-out;\"><font face=\"Bangla, Arial, sans-serif\"><span style=\"font-weight: bolder;\">ইভেন্টের বিবরণ:</span></font></h4><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">তুমি কি হিসাববিজ্ঞানের ধারণা নিয়ে দ্বিধায় থাকো?</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">ডেবিট আর ক্রেডিট কি এখনও জটিল মনে হয়?</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">তাহলে তোমার জন্য আমরা নিয়ে এসেছি \"হিসাববিজ্ঞান কোর্স - বেসিক থেকে অ্যাডভান্সড\"।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><h4 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 28px; padding: 0px; transition: 0.3s ease-out;\"><font face=\"Bangla, Arial, sans-serif\"><span style=\"font-weight: bolder;\">SSC এবং HSC শিক্ষার্থীদের জন্য বিশেষভাবে তৈরি এই কোর্সে:</span></font></h4><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">সহজ উদাহরণের মাধ্যমে ডেবিট, ক্রেডিট, এবং অ্যাকাউন্টিংয়ের মূল ধারণা শেখানো হবে।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">পুরো সিলেবাস কাভার করে শিক্ষার্থীদের একাডেমিক ও প্র্যাকটিক্যাল দক্ষতা গড়ে তোলা হবে।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><h4 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 28px; padding: 0px; transition: 0.3s ease-out;\"><font face=\"Bangla, Arial, sans-serif\"><span style=\"font-weight: bolder;\">কোর্সের বিশেষ বৈশিষ্ট্য:</span></font></h4><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><span style=\"font-weight: bolder;\">লাইভ ক্লাস:</span> </font><span style=\"font-size: 1rem;\">প্রতি সপ্তাহে ২টি লাইভ ক্লাস, যেখানে শিক্ষার্থীরা সরাসরি প্রশ্ন করতে পারবে এবং দ্বিধা নিরসন করতে পারবে।</span></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><span style=\"font-size: 1rem;\"><span style=\"font-weight: bolder;\">অ্যানিমেটেড শিক্ষা ভিডিও:</span> </span><span style=\"font-size: 1rem;\">জটিল বিষয়গুলো সহজে বুঝতে অ্যানিমেটেড ভিডিওর মাধ্যমে শিক্ষার্থীদের শেখানো হবে।</span></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><span style=\"font-weight: bolder;\">অধ্যায়ভিত্তিক MCQ পরীক্ষা:</span> </font><span style=\"font-size: 1rem;\">প্রতিটি অধ্যায় শেষে MCQ পরীক্ষা নেওয়া হবে, যাতে শিক্ষার্থীরা নিজের প্রস্তুতি যাচাই করতে পারে।</span></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><span style=\"font-weight: bolder;\">সৃজনশীল প্রশ্ন সমাধান:</span> </font><span style=\"font-size: 1rem;\">অধ্যায়ভিত্তিক ৫-১০টি সৃজনশীল প্রশ্নের সমাধান শেখানো হবে।</span></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><span style=\"font-size: 1rem;\"><span style=\"font-weight: bolder;\">ম্যাথমেটিক্যাল MCQ কৌশল:</span> </span><span style=\"font-size: 1rem;\">MCQ উত্তর করার সহজ কৌশল শেখানো হবে, যা পরীক্ষায় সময় বাঁচাতে সাহায্য করবে।</span></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">স্মার্ট ক্লাস নোট:</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">প্রতিটি অধ্যায়ের জন্য স্মার্ট ক্লাস নোট প্রদান করা হবে, যাতে শিক্ষার্থীরা গুরুত্বপূর্ণ পয়েন্টগুলো সহজে মনে রাখতে পারে।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">পরীক্ষার প্রস্তুতির দিকনির্দেশনা:</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">৩ মাসে SSC পরীক্ষার জন্য পূর্ণ প্রস্তুতির ব্যবস্থা থাকবে।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">ইভেন্টের উদ্দেশ্য:</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">শিক্ষার্থীদের ব্যবসায়িক ভাষা হিসেবে হিসাববিজ্ঞানে পারদর্শী করা।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">পরীক্ষায় ভালো ফলাফলের জন্য শিক্ষার্থীদের প্রস্তুত করা।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">ব্যাংকিং ও ব্যবসায়িক জীবনের জন্য একটি শক্ত ভিত্তি তৈরি করা।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">রেজিস্ট্রেশন ফি:</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">আগামী ১৫ দিনের মধ্যে ফ্রি এনরোলমেন্ট।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">কোর্সে কীভাবে যুক্ত হবেন?</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">ফেসবুক পেজে মেসেজ করুন।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">সরাসরি কল করুন: ০১৩১৬৫৫১২৫৪।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">Easy Learn Campus ওয়েবসাইটে গিয়ে এনরোল করুন।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">বিশেষ অফার:</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">এ কোর্সের প্রথম ৫০ জন অংশগ্রহণকারী পাবেন বিশেষ প্রস্তুতিমূলক গাইডলাইন।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">শিক্ষার্থীদের জন্য বার্তা:</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">তোমাদের জন্য তৈরি করা হয়েছে এমন একটি কোর্স, যা তোমাকে হিসাববিজ্ঞানের ভয় কাটিয়ে দক্ষ এবং আত্মবিশ্বাসী করে তুলবে।</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\"><br></font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">এখনই রেজিস্ট্রেশন করো এবং তোমার সাফল্যের যাত্রা শুরু করো!</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><font face=\"Bangla, Arial, sans-serif\">লাইক, কমেন্ট এবং শেয়ার করে সবার মাঝে ছড়িয়ে দাও!</font></p><p class=\"bn-normal\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(83, 84, 91); font-size: 20px; padding: 0px; transition: 0.3s ease-out; line-height: 28px;\"><br></p></div>', 'images/events/1797569206743091.jpg', '2024-12-10', '12:00 am - 2:30 pm', 'Easy Learn Campus (অনলাইন প্ল্যাটফর্ম)', 1, '2024-04-28 03:13:04', '2024-12-04 05:24:04'),
(3, 'Test', '<p>fhdhdjdfhjdgj</p>', 'images/events/1817506498659546.png', '1220-01-10', '10120', '12', 0, '2024-12-04 04:47:47', '2024-12-04 04:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `timer` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `course_id`, `instructor_id`, `name`, `slug`, `timer`, `status`, `created_at`, `updated_at`) VALUES
(1, 80, 11, 'First test', 'first-test', '60', 1, '2024-04-29 02:17:00', '2024-04-29 02:27:58');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `course_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 100, 'How do Spiderman learn English?', 'Nothing to say', 1, '2024-08-13 10:24:44', '2024-08-13 10:24:44'),
(2, 100, 'Question 2', 'Answer 2', 1, '2024-08-13 10:24:44', '2024-08-13 10:24:44'),
(3, 100, 'Question 1', 'Answer  1', 1, '2024-08-13 10:24:44', '2024-08-13 10:24:44'),
(4, 101, 'How do Spiderman learn English?', 'Nothing to say', 1, '2024-08-13 10:26:20', '2024-08-13 10:26:20'),
(5, 101, 'Question 3', 'Answer 3', 1, '2024-08-13 10:26:20', '2024-08-13 11:31:42'),
(6, 101, 'Question 2', 'Answer 2', 1, '2024-08-13 10:26:20', '2024-08-13 10:26:20'),
(7, 101, 'Question 1', 'Answer  1', 1, '2024-08-13 10:26:20', '2024-08-13 10:26:20'),
(9, 101, 'New Question', 'New Answer', 1, '2024-08-13 11:36:23', '2024-08-13 11:36:23'),
(11, 102, 'dcvsad', 'sfdvsa', 1, '2024-09-03 10:34:44', '2024-09-03 10:34:44'),
(12, 103, 'কোর্সটি কিভাবে কিনবো?', '১. কোর্সটি কিনুন\' বাটনে ক্লিক করুন ২. শুরু করুন\' বাটনে ক্লিক করুন ৩. আপনার ফোন নম্বর বা ইমেইল দিয়ে লগ-ইন করুন ৪. লগ-ইন করা হয়ে গেলে \'এগিয়ে যান\' বাটনে ক্লিক করুন ৫. আপনার পছন্দের পেমেন্ট মাধ্যমটি বেছে নিন এবং \'পেমেন্ট করুন\' বাটনে ক্লিক করুন ৬. বিকাশ ব্যবহার করে পেমেন্ট করলে বিকাশ নম্বারটি ভবিষ্যৎ পেমেন্টের জন্য সেইভ করে রাখতে পারেন ৭. পেমেন্ট সম্পন্ন করার পর \'কোর্স শুরু করুন\' বাটনে ক্লিক করলে সরাসরি আপনি কোর্সটি শুরু করতে পারবেন ৮. আপনার কেনা কোর্সটি আপনার প্রোফাইলের \'আমার কোর্সসমূহ\' সেকশনে দেখতে পাবেন', 1, '2024-09-03 11:02:34', '2024-09-03 11:02:34'),
(13, 104, 'কোর্সটি কিভাবে কিনবো?', '১. কোর্সটি কিনুন\' বাটনে ক্লিক করুন ২. শুরু করুন\' বাটনে ক্লিক করুন ৩. আপনার ফোন নম্বর বা ইমেইল দিয়ে লগ-ইন করুন ৪. লগ-ইন করা হয়ে গেলে \'এগিয়ে যান\' বাটনে ক্লিক করুন ৫. আপনার পছন্দের পেমেন্ট মাধ্যমটি বেছে নিন এবং \'পেমেন্ট করুন\' বাটনে ক্লিক করুন ৬. বিকাশ ব্যবহার করে পেমেন্ট করলে বিকাশ নম্বারটি ভবিষ্যৎ পেমেন্টের জন্য সেইভ করে রাখতে পারেন ৭. পেমেন্ট সম্পন্ন করার পর \'কোর্স শুরু করুন\' বাটনে ক্লিক করলে সরাসরি আপনি কোর্সটি শুরু করতে পারবেন ৮. আপনার কেনা কোর্সটি আপনার প্রোফাইলের \'আমার কোর্সসমূহ\' সেকশনে দেখতে পাবেন', 1, '2024-09-03 11:04:49', '2024-09-03 11:04:49'),
(14, 104, 'কোর্সটি কিভাবে কিনবো?', '১. কোর্সটি কিনুন\' বাটনে ক্লিক করুন ২. শুরু করুন\' বাটনে ক্লিক করুন ৩. আপনার ফোন নম্বর বা ইমেইল দিয়ে লগ-ইন করুন ৪. লগ-ইন করা হয়ে গেলে \'এগিয়ে যান\' বাটনে ক্লিক করুন ৫. আপনার পছন্দের পেমেন্ট মাধ্যমটি বেছে নিন এবং \'পেমেন্ট করুন\' বাটনে ক্লিক করুন ৬. বিকাশ ব্যবহার করে পেমেন্ট করলে বিকাশ নম্বারটি ভবিষ্যৎ পেমেন্টের জন্য সেইভ করে রাখতে পারেন ৭. পেমেন্ট সম্পন্ন করার পর \'কোর্স শুরু করুন\' বাটনে ক্লিক করলে সরাসরি আপনি কোর্সটি শুরু করতে পারবেন ৮. আপনার কেনা কোর্সটি আপনার প্রোফাইলের \'আমার কোর্সসমূহ\' সেকশনে দেখতে পাবেন', 1, '2024-09-03 11:06:22', '2024-09-03 11:06:22'),
(15, 104, 'কোর্সটি কিভাবে কিনবো?', '১. কোর্সটি কিনুন\' বাটনে ক্লিক করুন ২. শুরু করুন\' বাটনে ক্লিক করুন ৩. আপনার ফোন নম্বর বা ইমেইল দিয়ে লগ-ইন করুন ৪. লগ-ইন করা হয়ে গেলে \'এগিয়ে যান\' বাটনে ক্লিক করুন ৫. আপনার পছন্দের পেমেন্ট মাধ্যমটি বেছে নিন এবং \'পেমেন্ট করুন\' বাটনে ক্লিক করুন ৬. বিকাশ ব্যবহার করে পেমেন্ট করলে বিকাশ নম্বারটি ভবিষ্যৎ পেমেন্টের জন্য সেইভ করে রাখতে পারেন ৭. পেমেন্ট সম্পন্ন করার পর \'কোর্স শুরু করুন\' বাটনে ক্লিক করলে সরাসরি আপনি কোর্সটি শুরু করতে পারবেন ৮. আপনার কেনা কোর্সটি আপনার প্রোফাইলের \'আমার কোর্সসমূহ\' সেকশনে দেখতে পাবেন', 1, '2024-09-03 11:06:22', '2024-09-03 11:06:22'),
(16, 106, 'কোর্সটি কিভাবে কিনবো?', '১. কোর্সটি কিনুন\' বাটনে ক্লিক করুন ২. শুরু করুন\' বাটনে ক্লিক করুন ৩. আপনার ফোন নম্বর বা ইমেইল দিয়ে লগ-ইন করুন ৪. লগ-ইন করা হয়ে গেলে \'এগিয়ে যান\' বাটনে ক্লিক করুন ৫. আপনার পছন্দের পেমেন্ট মাধ্যমটি বেছে নিন এবং \'পেমেন্ট করুন\' বাটনে ক্লিক করুন ৬. বিকাশ ব্যবহার করে পেমেন্ট করলে বিকাশ নম্বারটি ভবিষ্যৎ পেমেন্টের জন্য সেইভ করে রাখতে পারেন ৭. পেমেন্ট সম্পন্ন করার পর \'কোর্স শুরু করুন\' বাটনে ক্লিক করলে সরাসরি আপনি কোর্সটি শুরু করতে পারবেন ৮. আপনার কেনা কোর্সটি আপনার প্রোফাইলের \'আমার কোর্সসমূহ\' সেকশনে দেখতে পাবেন', 1, '2024-10-24 06:48:24', '2024-10-24 06:48:24'),
(17, 105, 'Test', '>>কোর্সটি কিনুন\' বাটনে ক্লিক করুন >>শুরু করুন\' বাটনে ক্লিক করুন >>আপনার ফোন নম্বর বা ইমেইল দিয়ে লগ-ইন করুন >>লগ-ইন করা হয়ে গেলে \'এগিয়ে যান\' বাটনে ক্লিক করুন >>আপনার পছন্দের পেমেন্ট মাধ্যমটি বেছে নিন এবং \'পেমেন্ট করুন\' বাটনে ক্লিক করুন >>বিকাশ ব্যবহার করে পেমেন্ট করলে বিকাশ নম্বারটি ভবিষ্যৎ পেমেন্টের জন্য সেইভ করে রাখতে পারেন >>পেমেন্ট সম্পন্ন করার পর \'কোর্স শুরু করুন\' বাটনে ক্লিক করলে সরাসরি আপনি কোর্সটি শুরু করতে পারবেন >>আপনার কেনা কোর্সটি আপনার প্রোফাইলের \'আমার কোর্সসমূহ\' সেকশনে দেখতে পাবেন', 1, '2024-10-24 07:14:46', '2024-10-24 07:14:46'),
(18, 107, 'কোর্সটি কি SSC ও HSC সিলেবাস কভার করে', '- হ্যাঁ, কোর্সটি SSC এবং HSC উভয়ের সম্পূর্ণ সিলেবাস কভার করে।', 1, '2024-10-29 05:30:14', '2024-10-29 05:30:14'),
(19, 107, 'আর্থিক বিবরণী থেকে সৃজনশীল প্রশ্নের উত্তর দেয়ার কৌশল কী?', '- পরীক্ষার নির্ধারিত সময়ের মধ্যে আর্থিক বিবরণী থেকে ২টি সৃজনশীল প্রশ্নের উত্তর দিতে পরিকল্পিতভাবে বিষয়গুলো বিশ্লেষণ ও প্রয়োগ করা শেখানো হবে।', 1, '2024-10-29 05:30:14', '2024-10-29 05:30:14'),
(20, 107, 'ডেবিট-ক্রেডিট, জাবেদা, খতিয়ান কিভাবে শেখানো হবে?', '- এই বিষয়গুলো সহজভাবে উদাহরণসহ ব্যাখ্যা করা হবে, যাতে শিক্ষার্থীরা সহজে বুঝতে পারে।', 1, '2024-10-29 05:30:14', '2024-10-29 05:30:14'),
(21, 107, 'SSC শিক্ষার্থীরা HSC লাইভ ক্লাসের ভিডিও রেকর্ড দেখতে পারবে?', '- হ্যাঁ, SSC শিক্ষার্থীরা পরবর্তী HSC লাইভ ক্লাসের ভিডিও রেকর্ড দেখার সুযোগ পাবে।', 1, '2024-10-29 05:30:14', '2024-10-29 05:30:14'),
(22, 107, 'সৃজনশীল প্রশ্নের সমাধান ও MCQ উত্তর দেওয়ার কৌশল কীভাবে শেখানো হবে?', '- সৃজনশীল প্রশ্নের ৫-১০টি সমাধান এবং গাণিতিক MCQ উত্তর করার কৌশল ধাপে ধাপে শেখানো হবে, যাতে সহজে মনে রাখা যায়।', 1, '2024-10-29 05:30:14', '2024-10-29 05:30:14'),
(23, 107, 'কোর্সটি কিনলে HSC ভিডিও ও লাইভ ক্লাসের রেকর্ড দেখতে পারবে কি?', '- হ্যাঁ, কোর্সটি কিনলে SSC শিক্ষার্থীরা HSC-এর সব ভিডিও ও লাইভ ক্লাসের রেকর্ড দেখতে পারবে।', 1, '2024-10-29 05:30:14', '2024-10-29 05:30:14'),
(24, 107, 'কোর্সটি শেষ করলে কোন ধারণাগুলি আয়ত্ত করতে পারবে?', '- কোর্সটি শেষ করলে শিক্ষার্থীরা হিসাববিজ্ঞান ও ফিন্যান্সের বিভিন্ন গুরুত্বপূর্ণ ধারণাগুলি যেমন ডেবিট-ক্রেডিট, জাবেদা, খতিয়ান, ও আর্থিক বিবরণী আয়ত্ত করতে সক্ষম হবে।', 1, '2024-10-29 05:30:14', '2024-10-29 05:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bio` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile_banking` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `profession` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `email`, `bio`, `password`, `phone`, `mobile_banking`, `gender`, `dob`, `image`, `profession`, `institution`, `department`, `address`, `youtube_link`, `about`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Md Hafiz Al Foisal', 'quicktech.foisal@gmail.com', 'জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে।', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '01798032828', '0147896325', 'Male', '2022-11-01', 'frontend/img/teacher/teacher-1.jpg', 'Software Engineer', 'Quicktech IT', 'Web', 'Mirpur 10, Dhaka - 1216', 'Sent your demo class (Youtube video link)', '', 1, '2022-11-28 11:52:48', '2022-11-28 11:52:48'),
(2, 'inst 1', 'ins1@gmail.com', 'জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে।', '$2y$10$S7IpAKXSMNVmkBQ6SQ4YXuSXweh0nr013nOM6Kuy6.E/3cBw22jQi', '321654987', '3698745', 'Male', '2002-12-30', 'frontend/img/teacher/teacher-2.jpg', 'Teacher', 'School name', 'Math', 'address', 'link', '', 1, '2022-12-13 11:03:25', '2022-12-29 04:17:21'),
(3, 'Fsd', 'fsd.ramjan@gmail.com', NULL, '$2y$10$UUJPxdpDXY8JmH5uorBdg.Q/vEI4GSGYNuaPVmgJ/R1btBf.FLnfS', '01771282104', '01771282104', 'Male', '2002-12-30', 'frontend/img/teacher/teacher-3.jpg', 'Teacher', 'School name', 'Math', 'address', 'link', '', 1, '2022-12-19 03:15:32', '2023-01-18 00:50:37'),
(5, 'gg', 'ggggggg@gmail.com', NULL, '$2y$10$L1Yr6VUaUpOrvGiC5FVN.ugQ9XCDFCBB/psNBtG54yF3D4NBh57oW', '123456', '1', '1', '2023-01-05', 'frontend/img/teacher/teacher-4.jpg', 'gg', 'gg', 'gg', 'gg', 'gg', '', 1, '2023-01-04 23:37:18', '2023-01-04 23:37:18'),
(6, 'gggg', 'gggg@gmail.com', NULL, '$2y$10$3X1Gs0T8iFFh6OXyQ5ibSeojPy.cmJfNazODv8jGTTqgSGraAfGFS', '43434', '34324324', '1', '2023-01-05', 'frontend/img/teacher/teacher-5.jpg', 'gg', 'gg', 'ggg', 'ggg', 'ggg', '', 1, '2023-01-04 23:39:49', '2023-01-04 23:39:49'),
(7, 'ggg', 'gg', NULL, '$2y$10$LUkVT2saGWWI6KFRVRNScexxLzMUPtaKBf4R79I0nNd152wiTmZDm', '5435435', '545454', '1', '2023-01-05', 'frontend/img/teacher/teacher-6.jpg', '545f', 'fgfgg', 'gfgf', 'gg', 'gg', '', 1, '2023-01-04 23:40:54', '2023-01-04 23:40:54'),
(8, 'ggg', 'ggggg', NULL, '$2y$10$ZPY3pSQ1/9jk48xB0ZCuZ.rso7ph8kJXysCrx9DJH.7Uz/K33oYW.', '54', '54', '1', '2023-01-05', 'frontend/img/teacher/teacher-8.jpg', 'gfgfgf', 'gfgfgf', 'gffgfg', 'fgfg', 'gfgf', '', 1, '2023-01-04 23:41:19', '2023-01-04 23:41:19'),
(9, 'inst 1', 'ins111q@gmail.com', NULL, '$2y$10$ORCrODX.zH94fqQOsZOOoeiPi3PVoKlLL..rSKuQmua7V.igiMxiC', '32165498711', '3698745', 'Male', '2002-12-30', 'frontend/img/teacher/teacher-7.jpg', 'Teacher', 'School name', 'Math', 'address', 'link', NULL, 0, '2023-02-12 17:50:19', '2023-02-20 11:28:54'),
(10, 'inst 1', 'ashraf@gmail.com', NULL, '$2y$10$QiKVro.uyHrKGBFH8Z2xMe5kY/9Zs5APDRXkdM7ReG6AL2DFtEqL2', '01521411111', '3698745', 'Male', '2002-12-30', NULL, 'Teacher', 'School name', 'Math', 'address', 'link', NULL, 1, '2023-02-13 11:12:45', '2023-02-13 11:12:45'),
(11, 'Rana Bepari', 'quickInstructor@gmail.com', NULL, '$2y$10$54NkthtSHuZ7JuH5nUO12e5P4YjGEvPIcZLWLYHXc.Fd2MQYKGfPe', '01844590333', 'bKash', 'male', '2024-03-05', NULL, 'Developer', 'QuickTech IT', 'Web', 'Mirpur 10', '', 'This is Rana', 1, '2024-03-31 04:58:00', '2024-03-31 04:58:00'),
(14, 'Test', 'test2@gmail.com', NULL, '$2y$12$4oRak9Qx2K9Ss5QXMB6jZehfD.PV734eQxRbioKDOpfiy.muYRs7y', '01770900471', NULL, 'Male', '1997-12-01', 'images/instructor/1802740258190529.jpg', 'SE', 'test institute', 'CSE', 'Khilkhet, Dhaka', NULL, NULL, 1, '2024-06-24 04:42:51', '2024-06-24 05:04:52'),
(15, 'Shishir Banik', 'kartikbanikshishir@gmail.com', NULL, '$2y$12$lPddHJgUGmpV1Vso3Lc/VOTQeaf9Ka095.fg9TRZtMZlWqrNj4xe2', '01862131292', NULL, 'Male', '1998-09-18', 'images/instructor/1803256062864702.jpg', 'Teacher', 'Govt Haraganga College', 'ICT', 'Shah Ali Plaza (Level 9), Lift-8, Plot 913, Mirpur-10, Dhaka 1216, Bangladesh.', NULL, NULL, 1, '2024-06-29 21:43:13', '2024-06-29 21:43:13'),
(16, 'Borshon Paul', 'quickAdmin@gmail.com', NULL, '$2y$12$JvkAcW9FiiQLDas2PoUoIO8L8UagDiS6tCMH335BAthYHwmv/L/bK', '01316551254', NULL, 'Male', '2000-04-04', 'images/instructor/1809169324629552.png', 'Teacher', 'Easy Learn Campus', 'Accounting', 'Sreemangal-3210\r\nMoulvibazar, Sylhet, Bangladesh', NULL, NULL, 1, '2024-09-03 10:11:59', '2024-09-03 10:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `module_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'First lesson', NULL, NULL, 1, '2024-05-08 23:34:57', '2024-05-08 23:42:16'),
(2, 2, 'Second lesson', NULL, NULL, 1, '2024-05-08 23:36:36', '2024-05-08 23:36:36'),
(39, 21, 'Income Statement', 'From Basic Data Entry to Advanced Calculations to Data Analysis Take the \"Microsoft Excel\" Course.  Enroll today at a discount of Tk 200', NULL, 1, '2024-08-08 10:22:47', '2024-08-08 10:22:47'),
(40, 21, 'Definition of Accounting', 'From Basic Data Entry to Advanced Calculations to Data Analysis Take the \"Microsoft Excel\" Course.  Enroll today at a discount of Tk 200', NULL, 1, '2024-08-08 10:22:47', '2024-08-08 10:22:47'),
(41, 21, 'Elements of Accounting', 'From Basic Data Entry to Advanced Calculations to Data Analysis Take the \"Microsoft Excel\" Course.  Enroll today at a discount of Tk 200', NULL, 1, '2024-08-08 10:22:47', '2024-08-08 10:22:47'),
(43, 23, 'বাংলা', 'বাংলা', NULL, 1, '2024-08-11 14:51:45', '2024-10-28 13:17:26'),
(44, 23, 'Lesson-2', 'Lesson-2', NULL, 1, '2024-08-11 14:54:04', '2024-10-24 07:34:56'),
(45, 23, 'Lesson-3', 'Lesson-3', NULL, 1, '2024-08-11 14:54:04', '2024-10-24 07:35:22'),
(53, 24, 'Elementary Discussion', 'Elementary Discussion', NULL, 1, '2024-08-11 15:10:58', '2024-08-11 15:10:58'),
(54, 24, 'Prepaid Expense', 'Prepaid Expense', NULL, 1, '2024-08-11 15:10:58', '2024-08-11 15:10:58'),
(55, 24, 'Unearned Revenue', 'Unearned Revenue', NULL, 1, '2024-08-11 15:10:58', '2024-08-11 15:10:58'),
(56, 24, 'Accrued Revenue and Accrued Expense', 'Accrued Revenue and Accrued Expense', NULL, 1, '2024-08-11 15:10:58', '2024-08-11 15:10:58'),
(57, 28, 'Test', 'Test', NULL, 1, '2024-09-05 07:12:40', '2024-09-05 07:12:40'),
(58, 28, 'Test', 'Test', NULL, 1, '2024-09-05 07:12:40', '2024-09-05 07:12:40'),
(59, 29, 'resr', 'Test', NULL, 1, '2024-10-24 06:57:00', '2024-10-24 06:57:00'),
(60, 29, 'Test', 'T', NULL, 1, '2024-10-24 06:57:09', '2024-10-24 06:57:09'),
(61, 30, 'i) হিসাববিজ্ঞান কাকে বলে', 'হিসাববিজ্ঞান কাকে বলে', NULL, 1, '2024-10-29 06:20:04', '2024-10-29 06:23:41'),
(62, 30, 'ii) ঘটনা ও লেনদেন', 'ঘটনা ও লেনদেন', NULL, 1, '2024-10-29 06:23:33', '2024-10-29 06:23:33'),
(63, 30, 'iii) প্রমান্য দলিল পত্রাদি', 'প্রমান্য দলিল পত্রাদি', NULL, 1, '2024-10-29 06:24:35', '2024-10-29 06:25:23'),
(64, 30, 'iv) হিসাব ও হিসাবের শ্রেনিবিভাগ', 'হিসাব ও হিসাবের শ্রেনিবিভাগ', NULL, 1, '2024-10-29 06:25:42', '2024-10-29 06:25:42'),
(65, 31, 'i) দুতরফা দাখিলা পদ্ধতির', 'দুতরফা দাখিলা পদ্ধতির', NULL, 1, '2024-10-29 06:45:32', '2024-10-29 06:45:32'),
(66, 31, 'ii) হিসাব চক্র', 'হিসাব চক্র', NULL, 1, '2024-10-29 06:46:27', '2024-10-29 06:46:27'),
(67, 31, 'iii)এক তরফা দাখিলা পদ্ধতি', 'এক তরফা দাখিলা পদ্ধতি', NULL, 1, '2024-10-29 06:46:37', '2024-10-29 06:46:37'),
(68, 31, 'iv) বাট্টা ও বাট্টার প্রকারভেদ', 'বাট্টা ও বাট্টার প্রকারভেদ', NULL, 1, '2024-10-29 06:46:48', '2024-10-29 06:46:48'),
(69, 31, 'v) মূলধন ও মুনাফা জাতীয় লেনদেন', 'মূলধন ও মুনাফা জাতীয় লেনদেন', NULL, 1, '2024-10-29 06:46:59', '2024-10-29 06:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `liveclasses`
--

CREATE TABLE `liveclasses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `link` varchar(250) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `liveclasses`
--

INSERT INTO `liveclasses` (`id`, `name`, `description`, `link`, `instructor_id`, `course_id`, `scheduled_at`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Class 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eos in\r\n                                    incidunt\r\n                                    laudantium ratione, sed veritatis?', '#', 2, 79, '2024-05-27 10:03:45', '2 Hours', '2024-05-26 04:05:57', '2024-05-26 00:10:05'),
(2, 'Class 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eos in\r\n                                    incidunt\r\n                                    laudantium ratione, sed veritatis?', '#', 2, 79, '2024-05-28 10:03:45', '2 Hours', '2024-05-26 04:05:57', '2024-05-26 00:10:25'),
(3, 'Live class 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eos in incidunt laudantium ratione, sed veritatis?', 'https://www.instagram.com/trendy_kraftz_/', 2, 79, '2024-05-30 01:54:00', '1 Hour', '2024-05-25 23:54:49', '2024-05-25 23:54:49'),
(4, 'Sudden Class', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eos in incidunt laudantium ratione, sed veritatis?', '#', 11, 80, '2024-05-26 17:00:00', '1 Hour', '2024-05-26 00:00:21', '2024-05-26 02:56:41'),
(5, 'New Class', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eos in\r\n                                    incidunt\r\n                                    laudantium ratione, sed veritatis?', '#', 11, 80, '2024-05-30 14:57:00', NULL, '2024-05-26 02:58:14', '2024-05-26 02:58:14'),
(6, 'Test Live Class', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to', 'https://www.facebook.com/login.php?next=https%3A%2F%2Fwww.facebook.com%2Flive%2Fproducer', 11, 89, '2024-07-01 00:00:00', '120', '2024-06-29 23:15:43', '2024-06-29 23:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `mcq`
--

CREATE TABLE `mcq` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `childcategory_id` int(11) NOT NULL,
  `childsubcategory_id` int(11) NOT NULL,
  `syllabus` varchar(255) NOT NULL,
  `enrolled` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  `thumbnil_image` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `details_file` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated-at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_options`
--

CREATE TABLE `mcq_options` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `mcq_ques_id` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  `isAnswer` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mcq_options`
--

INSERT INTO `mcq_options` (`id`, `quiz_id`, `mcq_ques_id`, `option`, `isAnswer`, `created_at`, `updated_at`) VALUES
(5, 66, 4, 'Option 1', 0, '2024-05-15 03:58:02', '2024-05-15 05:00:24'),
(6, 66, 4, 'Option 2', 0, '2024-05-15 03:58:02', '2024-05-15 05:00:24'),
(7, 66, 4, 'Option 3', 1, '2024-05-15 03:58:02', '2024-05-15 05:00:24'),
(8, 66, 4, 'Option 4', 0, '2024-05-15 03:58:02', '2024-05-15 05:00:24'),
(9, 66, 5, 'SpiderMan 1', 0, '2024-05-15 04:07:56', '2024-05-15 05:01:16'),
(10, 66, 5, 'SpiderMan 2', 0, '2024-05-15 04:07:56', '2024-05-15 05:01:16'),
(11, 66, 5, 'Spiderman far from Home', 1, '2024-05-15 04:07:56', '2024-05-15 05:01:16'),
(12, 66, 5, 'Spiderman Homecoming', 0, '2024-05-15 04:07:56', '2024-05-15 05:01:16'),
(13, 67, 6, 'Option 1', 0, '2024-05-26 08:27:47', '2024-05-26 08:29:04'),
(14, 67, 6, 'Option 2', 1, '2024-05-26 08:27:47', '2024-05-26 08:29:04'),
(15, 67, 6, 'Option 3', 0, '2024-05-26 08:27:47', '2024-05-26 08:29:04'),
(16, 67, 6, 'Option 4', 0, '2024-05-26 08:27:47', '2024-05-26 08:29:04'),
(17, 66, 7, 'First option', 0, '2024-05-27 08:41:40', '2024-05-27 08:41:40'),
(18, 66, 7, 'Second option', 0, '2024-05-27 08:41:40', '2024-05-27 08:41:40'),
(19, 66, 7, 'Third option', 0, '2024-05-27 08:41:40', '2024-05-27 08:41:40'),
(20, 66, 7, 'Last option', 1, '2024-05-27 08:41:40', '2024-05-27 08:41:40'),
(21, 68, 8, 'Option 1', 1, '2024-06-23 10:36:28', '2024-06-23 10:36:28'),
(22, 68, 8, 'Option 2', 0, '2024-06-23 10:36:28', '2024-06-23 10:36:28'),
(23, 68, 8, 'Option 3', 0, '2024-06-23 10:36:28', '2024-06-23 10:36:28'),
(24, 68, 8, 'Option 4', 0, '2024-06-23 10:36:28', '2024-06-23 10:36:28'),
(25, 69, 9, 'option1', 0, '2024-06-26 08:56:03', '2024-06-26 08:56:03'),
(26, 69, 9, 'option2', 0, '2024-06-26 08:56:04', '2024-06-26 08:56:04'),
(27, 69, 9, 'option3', 1, '2024-06-26 08:56:04', '2024-06-26 08:56:04'),
(28, 69, 9, 'option4', 0, '2024-06-26 08:56:04', '2024-06-26 08:56:04'),
(29, 69, 12, 'ছাগল-কাণ্ডে আলোচিত মতিউর রহমান', 0, '2024-06-26 09:13:53', '2024-06-26 09:13:53'),
(30, 69, 12, 'ছাগল-কাণ্ডে আলোচিত মতিউর রহমান', 0, '2024-06-26 09:13:53', '2024-06-26 09:13:53'),
(31, 69, 12, 'ছাগল-কাণ্ডে মতিউর রহমান', 1, '2024-06-26 09:13:53', '2024-06-26 09:13:53'),
(32, 69, 12, 'ছাগল-কাণ্ডে আলোচিত মতিউর রহমান', 0, '2024-06-26 09:13:53', '2024-06-26 09:13:53'),
(37, 33, 14, 'Option 1', 0, '2024-07-28 10:00:49', '2024-07-28 10:00:49'),
(38, 33, 14, 'Option 2', 0, '2024-07-28 10:00:49', '2024-07-28 10:00:49'),
(39, 33, 14, 'Option 3', 1, '2024-07-28 10:00:49', '2024-07-28 10:00:49'),
(40, 33, 14, 'Option 4', 0, '2024-07-28 10:00:49', '2024-07-28 10:00:49'),
(41, 70, 15, 'Mango', 0, '2024-07-30 06:21:46', '2024-07-30 06:21:46'),
(42, 70, 15, 'Jackfruit', 1, '2024-07-30 06:21:46', '2024-07-30 06:21:46'),
(43, 70, 15, 'Pappy', 0, '2024-07-30 06:21:46', '2024-07-30 06:21:46'),
(44, 70, 15, 'Apple', 0, '2024-07-30 06:21:46', '2024-07-30 06:21:46'),
(45, 70, 16, 'Magpie', 1, '2024-07-30 06:22:37', '2024-07-30 06:22:37'),
(46, 70, 16, 'peigon', 0, '2024-07-30 06:22:37', '2024-07-30 06:22:37'),
(47, 70, 16, 'Crow', 0, '2024-07-30 06:22:37', '2024-07-30 06:22:37'),
(48, 70, 16, 'Perrot', 0, '2024-07-30 06:22:37', '2024-07-30 06:22:37'),
(49, 70, 17, 'Dog', 0, '2024-07-30 06:23:13', '2024-07-30 06:23:13'),
(50, 70, 17, 'Cat', 0, '2024-07-30 06:23:13', '2024-07-30 06:23:13'),
(51, 70, 17, 'Tiger', 1, '2024-07-30 06:23:13', '2024-07-30 06:23:13'),
(52, 70, 17, 'Fox', 0, '2024-07-30 06:23:13', '2024-07-30 06:23:13'),
(53, 71, 18, 'Mango', 0, '2024-08-08 10:37:12', '2024-08-08 10:37:12'),
(54, 71, 18, 'Jackfruit', 1, '2024-08-08 10:37:12', '2024-08-08 10:37:12'),
(55, 71, 18, 'Banana', 0, '2024-08-08 10:37:12', '2024-08-08 10:37:12'),
(56, 71, 18, 'Apple', 0, '2024-08-08 10:37:12', '2024-08-08 10:37:12'),
(57, 71, 19, 'Magpie', 1, '2024-08-08 10:37:45', '2024-08-08 10:37:45'),
(58, 71, 19, 'Crow', 0, '2024-08-08 10:37:45', '2024-08-08 10:37:45'),
(59, 71, 19, 'Pegion', 0, '2024-08-08 10:37:45', '2024-08-08 10:37:45'),
(60, 71, 19, 'Perrot', 0, '2024-08-08 10:37:45', '2024-08-08 10:37:45'),
(61, 72, 20, 'Mango', 0, '2024-08-08 10:38:53', '2024-08-08 10:38:53'),
(62, 72, 20, 'Apple', 0, '2024-08-08 10:38:53', '2024-08-08 10:38:53'),
(63, 72, 20, 'Jackfruit', 1, '2024-08-08 10:38:53', '2024-08-08 10:38:53'),
(64, 72, 20, 'Banana', 0, '2024-08-08 10:38:53', '2024-08-08 10:38:53'),
(65, 72, 21, 'Dog', 0, '2024-08-08 10:39:29', '2024-08-08 10:39:29'),
(66, 72, 21, 'Cat', 0, '2024-08-08 10:39:29', '2024-08-08 10:39:29'),
(67, 72, 21, 'Fox', 0, '2024-08-08 10:39:29', '2024-08-08 10:39:29'),
(68, 72, 21, 'Tiger', 1, '2024-08-08 10:39:29', '2024-08-08 10:39:29'),
(69, 74, 22, 'Mango', 0, '2024-08-08 10:42:36', '2024-08-08 10:42:36'),
(70, 74, 22, 'Banana', 0, '2024-08-08 10:42:36', '2024-08-08 10:42:36'),
(71, 74, 22, 'Jackfruit', 1, '2024-08-08 10:42:36', '2024-08-08 10:42:36'),
(72, 74, 22, 'Apple', 0, '2024-08-08 10:42:36', '2024-08-08 10:42:36'),
(73, 74, 23, 'Crow', 0, '2024-08-08 10:43:05', '2024-08-08 10:43:05'),
(74, 74, 23, 'Perrot', 0, '2024-08-08 10:43:05', '2024-08-08 10:43:05'),
(75, 74, 23, 'Salik', 0, '2024-08-08 10:43:05', '2024-08-08 10:43:05'),
(76, 74, 23, 'Magpie', 1, '2024-08-08 10:43:05', '2024-08-08 10:43:05'),
(77, 75, 24, 'Hoyes', 0, '2024-08-11 14:57:23', '2024-08-11 14:57:23'),
(78, 75, 24, 'House', 1, '2024-08-11 14:57:23', '2024-08-11 14:57:23'),
(79, 75, 24, 'houus', 0, '2024-08-11 14:57:23', '2024-08-11 14:57:23'),
(80, 75, 24, 'hows', 0, '2024-08-11 14:57:23', '2024-08-11 14:57:23'),
(81, 76, 25, 'পাওনাদার/প্রদেয়', 0, '2024-10-29 12:40:22', '2024-10-29 12:40:22'),
(82, 76, 25, 'বিক্রয়ের উদ্দেশ্যে ক্রয়', 1, '2024-10-29 12:40:22', '2024-10-29 12:40:22'),
(83, 76, 25, 'ব্যবহারের উদ্দেশ্যে ক্রয়', 0, '2024-10-29 12:40:22', '2024-10-29 12:40:22'),
(84, 76, 25, 'সমীকরণের উপর প্রভাব', 0, '2024-10-29 12:40:22', '2024-10-29 12:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_questions`
--

CREATE TABLE `mcq_questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `answer` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mcq_questions`
--

INSERT INTO `mcq_questions` (`id`, `quiz_id`, `question`, `image`, `answer`, `created_at`, `updated_at`) VALUES
(4, 66, 'This is new question??', NULL, 3, '2024-05-15 03:58:02', '2024-05-15 05:00:24'),
(5, 66, 'What Spiderman do you like??', 'images/questions/1799090157163514.jpg', 3, '2024-05-15 04:07:55', '2024-05-15 05:01:16'),
(6, 67, 'This is new question??', NULL, 2, '2024-05-26 08:27:46', '2024-05-26 08:29:04'),
(7, 66, 'New Question', NULL, 4, '2024-05-27 08:41:40', '2024-05-27 08:41:40'),
(8, 68, 'This is new question??', NULL, 1, '2024-06-23 10:36:28', '2024-06-23 10:36:28'),
(9, 69, 'Question1', NULL, 3, '2024-06-26 08:56:03', '2024-06-26 08:56:03'),
(12, 69, 'ছাগল-কাণ্ডে আলোচিত মতিউর রহমান', 'images/questions/1802914479039024.jpg', 3, '2024-06-26 09:13:53', '2024-06-26 09:13:53'),
(14, 33, 'This is new question??', NULL, 3, '2024-07-28 10:00:49', '2024-07-28 10:00:49'),
(15, 70, 'বাংলাদেশের জাতীয় ফলের নাম কী?', NULL, 2, '2024-07-30 06:21:46', '2024-07-30 06:21:46'),
(16, 70, 'What is the name of national bird in Bangladesh?', NULL, 1, '2024-07-30 06:22:37', '2024-07-30 06:22:37'),
(17, 70, 'What is the name of national animal in Bangladesh?', NULL, 3, '2024-07-30 06:23:13', '2024-07-30 06:23:13'),
(18, 71, 'What is the name of the national fruit of Bangladesh?', 'images/questions/1806815390534882.jpg', 2, '2024-08-08 10:37:12', '2024-08-08 10:37:12'),
(19, 71, 'What is the name of the national bird of Bangladesh?', NULL, 1, '2024-08-08 10:37:45', '2024-08-08 10:37:45'),
(20, 72, 'What is the name of the national fruit of Bangladesh?', NULL, 3, '2024-08-08 10:38:53', '2024-08-08 10:38:53'),
(21, 72, 'What is the name of the national animel of Bangladesh?', NULL, 4, '2024-08-08 10:39:29', '2024-08-08 10:39:29'),
(22, 74, 'What is the name of the national fruit of Bangladesh?', NULL, 3, '2024-08-08 10:42:36', '2024-08-08 10:42:36'),
(23, 74, 'What is the name of the national bird of Bangladesh?', NULL, 4, '2024-08-08 10:43:05', '2024-08-08 10:43:05'),
(24, 75, 'What is the correct spelling of House?', 'images/questions/1807103551136486.jpg', 2, '2024-08-11 14:57:23', '2024-08-11 14:57:23'),
(25, 76, 'হিসাব সমীকরণের উপর প্রভাব, ব্যবহারের উদ্দেশ্যে ক্রয়, বিক্রয়ের উদ্দেশ্যে ক্রয়, দেনাদার/প্রাপ্য, পাওনাদার/প্রদেয়।', NULL, 2, '2024-10-29 12:40:22', '2024-10-29 12:40:22');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_10_091106_create_roles_table', 1),
(6, '2022_11_10_091341_create_admins_table', 1),
(7, '2022_11_10_093938_create_company_infos_table', 1),
(8, '2022_11_10_094117_create_pages_table', 1),
(9, '2022_11_13_092427_create_categories_table', 1),
(10, '2022_11_13_092941_create_subcategories_table', 1),
(11, '2022_11_13_093222_create_childcategories_table', 1),
(12, '2022_11_13_093629_create_childsubcategories_table', 1),
(13, '2022_11_28_162459_create_instructors_table', 2),
(14, '2022_12_04_162515_create_courses_table', 3),
(15, '2022_12_04_162605_create_quizzes_table', 3),
(16, '2022_12_04_162606_create_quiz_options_table', 3),
(17, '2022_12_04_162624_create_writtens_table', 3),
(18, '2022_12_04_163626_create_videos_table', 3),
(19, '2022_12_04_163652_create_authors_table', 3),
(20, '2022_12_13_172833_create_affiliates_table', 4),
(21, '2014_10_12_000000_create_users_table', 5),
(24, '2022_12_16_140325_create_orders_table', 6),
(25, '2022_12_16_140351_create_order_details_table', 6),
(26, '2022_12_16_153747_create_coupons_table', 7),
(27, '2022_12_16_155046_create_wishlists_table', 8),
(28, '2023_01_21_201318_create_rating_reviews_table', 9),
(29, '2023_01_25_191427_create_share_links_table', 10),
(30, '2023_01_25_201703_create_affiliate_click_counts_table', 11),
(31, '2014_10_12_100000_create_password_reset_tokens_table', 12),
(32, '2025_02_12_083834_create_contacts_table', 13),
(33, '2025_02_12_084902_create_multi_images_table', 14),
(34, '2025_02_12_092019_create_sliders_table', 15),
(36, '2025_02_12_115340_create_about_tabs_table', 16),
(38, '2025_02_13_075545_create_about_items_table', 17),
(39, '2025_03_09_062636_create_billing_infos_table', 18),
(40, '2025_03_10_051051_create_podcasts_table', 19),
(41, '2025_03_11_060522_create_ebooks_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `image` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active,\r\n0=inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `course_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(21, 95, 'Basic Accounting', 'Learn investment tips and tricks in Stock Market, Mutual Fund, DPS, FDR, Savings etc from \"Personal Finance\" course.', NULL, 1, '2024-08-08 10:14:49', '2024-08-08 10:14:49'),
(23, 96, '১. হিসাববিজ্ঞান পরিচিতি', '১. হিসাববিজ্ঞান পরিচিতি', NULL, 1, '2024-08-11 14:49:58', '2024-10-24 07:35:55'),
(24, 96, 'দ্বিতীয় অধ্যায় (হিসাবের বইসমূহ)', 'দ্বিতীয় অধ্যায় (হিসাবের বইসমূহ)', NULL, 1, '2024-08-11 14:49:58', '2024-10-24 07:18:49'),
(25, 96, 'Worksheet & Statement', 'Worksheet & Statement', NULL, 1, '2024-08-11 14:49:58', '2024-08-11 14:49:58'),
(26, 96, 'Inventory Costing', 'Inventory Costing', NULL, 1, '2024-08-11 14:49:58', '2024-08-11 14:49:58'),
(27, 96, 'Financial Statement', 'Financial Statement', NULL, 1, '2024-08-11 14:49:59', '2024-08-11 14:49:59'),
(28, 105, 'Test', 'Test', NULL, 1, '2024-09-05 07:11:53', '2024-09-05 07:11:53'),
(29, 106, 'Chapter-1', 'কোর্সে যুক্ত হও এবং একাউন্টিং নিয়ে ভয় দূর করো!', NULL, 1, '2024-10-24 06:54:40', '2024-10-24 06:55:16'),
(30, 107, '১. হিসাববিজ্ঞান পরিচিতি', '১. হিসাববিজ্ঞান পরিচিতি', NULL, 1, '2024-10-29 06:14:14', '2024-10-29 06:17:24'),
(31, 107, '২. হিসাবের বই সমূহ', '২. হিসাবের বই সমূহ', NULL, 1, '2024-10-29 06:14:34', '2024-10-29 06:14:34'),
(35, 107, '৩. ব্যাংকিং সমন্বয় বিবরণী', '৩. ব্যাংকিং সমন্বয় বিবরণী', NULL, 1, '2024-10-29 06:16:23', '2024-10-29 06:16:47'),
(36, 107, '৪. রেওয়ামিল', '৪. রেওয়ামিল', NULL, 1, '2024-10-29 06:17:01', '2024-10-29 06:17:01'),
(37, 107, '৫. প্রাপ্য হিসাবসমূহের হিসাবসংরক্ষণ', '৫. প্রাপ্য হিসাবসমূহের হিসাবসংরক্ষণ', NULL, 1, '2024-10-29 06:17:15', '2024-10-29 06:17:15'),
(38, 107, '৬. কার্যপত্র', '৬. কার্যপত্র', NULL, 1, '2024-10-29 06:17:41', '2024-10-29 06:17:41'),
(39, 107, '৭. দৃশ্যমান এবং অদৃশ্যমান সম্পদের হিসাবরক্ষন', 'দৃশ্যমান এবং অদৃশ্যমান সম্পদের হিসাবরক্ষন', NULL, 1, '2024-10-29 06:17:56', '2024-10-29 06:17:56'),
(40, 107, '৮. আর্থিক বিবরণী', 'আর্থিক বিবরণী', NULL, 1, '2024-10-29 06:18:07', '2024-10-29 06:18:07'),
(41, 107, '৯. পণ্যের ক্রয়মূল্য, উৎপাদন ব্যায় ও বিক্রয়মূল্য', 'পণ্যের ক্রয়মূল্য, উৎপাদন ব্যায় ও বিক্রয়মূল্য', NULL, 1, '2024-10-29 06:18:25', '2024-10-29 06:19:10'),
(42, 107, '১১. পারিবারিক ও আত্মকর্মসংস্থানমূলক উদ্যোগের হিসাব', 'পারিবারিক ও আত্মকর্মসংস্থানমূলক উদ্যোগের হিসাব', NULL, 1, '2024-10-29 06:19:19', '2024-10-29 06:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `contact_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(3, 3, 'images/contact/28538-20250213033045blog-1.jpg', '2025-02-12 21:30:45', '2025-02-12 21:30:45'),
(4, 3, 'images/contact/20570-20250213033045blog-2.jpg', '2025-02-12 21:30:45', '2025-02-12 21:30:45'),
(5, 3, 'images/contact/59852-20250213033045blog-3.jpg', '2025-02-12 21:30:45', '2025-02-12 21:30:45'),
(6, 4, 'images/contact/53763-20250213113500blog-3.jpg', '2025-02-13 05:35:00', '2025-02-13 05:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `sent_to` int(11) NOT NULL COMMENT '0=all, 1=instructors, 2=students',
  `course_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `sent_to`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'No Live Class Tomorrow', '<p>Due To Heavy Rainfall&nbsp;<br><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;<br></span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;<br></span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;<br></span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span><span style=\"font-size: 1rem;\">Due To Heavy Rainfall&nbsp;</span></p>', 0, 89, 1, '2024-07-14 21:58:31', '2024-07-25 00:58:31'),
(2, 'New Notice for Instructor', '<p>Notice in Testing period</p>', 1, NULL, 1, '2024-07-14 21:59:29', '2024-07-14 22:07:20'),
(3, 'New Notice for Students', '<p>Notice in Testing period</p>', 2, NULL, 1, '2024-07-14 21:59:44', '2024-07-14 22:07:44'),
(4, 'New Notice for Instructor', '<p>Notice in Testing period</p>', 1, 89, 1, '2024-07-14 22:00:10', '2024-07-25 00:22:55'),
(5, 'New Notice for Students', '<p>Notice in Testing period</p>', 2, 89, 1, '2024-07-14 22:00:29', '2024-07-25 00:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `discount` bigint(20) UNSIGNED DEFAULT 0,
  `coupon_code` varchar(50) DEFAULT NULL,
  `subtotal` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(250) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `student_id`, `total`, `discount`, `coupon_code`, `subtotal`, `note`, `payment_method`, `created_at`, `updated_at`) VALUES
(43, 1, 90, 10, '0', 100, NULL, 'Bkash', '2023-02-16 11:42:09', '2023-02-16 11:42:09'),
(44, 1, 1100, 1100, 'ALIF50', 2200, NULL, NULL, '2024-05-06 22:54:53', '2024-05-06 22:54:53'),
(45, 1, 100, 1100, 'ALIF50', 1200, NULL, NULL, '2024-05-06 23:07:30', '2024-05-06 23:07:30'),
(46, 1, 5656, NULL, NULL, 5656, NULL, NULL, '2024-05-06 23:12:27', '2024-05-06 23:12:27'),
(47, 1, 1000, NULL, NULL, 1000, NULL, NULL, '2024-05-26 00:01:33', '2024-05-26 00:01:33'),
(48, 1, 25000, NULL, NULL, 25000, NULL, NULL, '2024-06-10 00:25:17', '2024-06-10 00:25:17'),
(51, 3, 1000, NULL, NULL, 1000, NULL, NULL, '2024-06-23 23:42:12', '2024-06-23 23:42:12'),
(52, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-24 22:00:52', '2024-06-24 22:00:52'),
(53, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-24 22:05:41', '2024-06-24 22:05:41'),
(54, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-24 22:06:23', '2024-06-24 22:06:23'),
(55, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-24 22:09:27', '2024-06-24 22:09:27'),
(56, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-25 02:37:48', '2024-06-25 02:37:48'),
(57, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-25 05:39:49', '2024-06-25 05:39:49'),
(58, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-25 05:42:49', '2024-06-25 05:42:49'),
(59, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-06-25 05:59:18', '2024-06-25 05:59:18'),
(60, 5, 5656, NULL, NULL, 5656, NULL, NULL, '2024-06-25 21:59:33', '2024-06-25 21:59:33'),
(61, 6, 3600, NULL, NULL, 3600, NULL, NULL, '2024-06-25 22:25:03', '2024-06-25 22:25:03'),
(62, 5, 6106, NULL, NULL, 6106, NULL, NULL, '2024-06-26 00:10:16', '2024-06-26 00:10:16'),
(63, 6, 3600, NULL, NULL, 3600, NULL, NULL, '2024-06-29 23:46:26', '2024-06-29 23:46:26'),
(64, 6, 20000, NULL, NULL, 20000, NULL, NULL, '2024-06-29 23:58:59', '2024-06-29 23:58:59'),
(65, 1, 3600, NULL, NULL, 3600, NULL, NULL, '2024-07-28 03:58:57', '2024-07-28 03:58:57'),
(66, 6, 2375, NULL, NULL, 2375, NULL, NULL, '2024-08-08 11:04:58', '2024-08-08 11:04:58'),
(67, 6, 2700, NULL, NULL, 2700, NULL, NULL, '2024-08-11 15:00:39', '2024-08-11 15:00:39'),
(68, 6, 2375, NULL, NULL, 2375, NULL, NULL, '2024-08-27 06:19:23', '2024-08-27 06:19:23'),
(69, 6, 6300, NULL, NULL, 6300, NULL, NULL, '2024-08-28 08:50:02', '2024-08-28 08:50:02'),
(70, 6, 2375, NULL, NULL, 2375, NULL, NULL, '2024-08-28 08:52:28', '2024-08-28 08:52:28'),
(71, 1, 20000, NULL, NULL, 20000, NULL, NULL, '2024-08-29 06:31:58', '2024-08-29 06:31:58'),
(72, 1, 3600, NULL, NULL, 3600, NULL, NULL, '2024-08-29 06:40:25', '2024-08-29 06:40:25'),
(73, 1, 3600, NULL, NULL, 3600, NULL, NULL, '2024-08-29 06:47:34', '2024-08-29 06:47:34'),
(74, 6, 2700, NULL, NULL, 2700, NULL, NULL, '2024-08-29 06:51:00', '2024-08-29 06:51:00'),
(75, 6, 6106, NULL, NULL, 6106, NULL, NULL, '2024-08-29 06:52:03', '2024-08-29 06:52:03'),
(76, 1, 20000, NULL, NULL, 20000, NULL, NULL, '2024-08-29 06:52:46', '2024-08-29 06:52:46'),
(77, 1, 1000, NULL, NULL, 1000, NULL, NULL, '2024-08-29 06:54:49', '2024-08-29 06:54:49'),
(78, 1, 1000, NULL, NULL, 1000, NULL, NULL, '2024-08-29 06:54:52', '2024-08-29 06:54:52'),
(79, 1, 3600, NULL, NULL, 3600, NULL, NULL, '2024-08-29 06:55:36', '2024-08-29 06:55:36'),
(80, 1, 3600, NULL, NULL, 3600, NULL, NULL, '2024-08-29 06:55:38', '2024-08-29 06:55:38'),
(81, 1, 20000, NULL, NULL, 20000, NULL, NULL, '2024-08-29 06:57:44', '2024-08-29 06:57:44'),
(82, 1, 2700, NULL, NULL, 2700, NULL, NULL, '2024-08-29 06:57:59', '2024-08-29 06:57:59'),
(83, 1, 2700, NULL, NULL, 2700, NULL, NULL, '2024-08-29 06:58:16', '2024-08-29 06:58:16'),
(84, 1, 2700, NULL, NULL, 2700, NULL, NULL, '2024-08-29 06:58:29', '2024-08-29 06:58:29'),
(85, 1, 20000, NULL, NULL, 20000, NULL, NULL, '2024-08-29 07:00:36', '2024-08-29 07:00:36'),
(86, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-08-29 07:01:07', '2024-08-29 07:01:07'),
(87, 1, 20000, NULL, NULL, 20000, NULL, NULL, '2024-08-29 07:01:28', '2024-08-29 07:01:28'),
(88, 1, 20000, NULL, NULL, 20000, NULL, NULL, '2024-08-29 07:01:43', '2024-08-29 07:01:43'),
(89, 1, 450, NULL, NULL, 450, NULL, NULL, '2024-08-29 10:00:08', '2024-08-29 10:00:08'),
(90, 6, 2700, NULL, NULL, 2700, NULL, NULL, '2024-09-02 12:22:35', '2024-09-02 12:22:35'),
(91, 6, 2700, NULL, NULL, 2700, NULL, NULL, '2024-10-23 04:06:40', '2024-10-23 04:06:40'),
(92, 6, 0, NULL, NULL, 0, NULL, NULL, '2024-11-05 00:28:45', '2024-11-05 00:28:45'),
(93, 6, 0, NULL, NULL, 0, NULL, NULL, '2024-11-12 07:19:37', '2024-11-12 07:19:37'),
(94, 6, 0, NULL, NULL, 0, NULL, NULL, '2024-12-04 08:06:42', '2024-12-04 08:06:42'),
(95, 6, 0, NULL, NULL, 0, NULL, NULL, '2024-12-21 21:02:37', '2024-12-21 21:02:37'),
(96, 6, 0, NULL, NULL, 0, NULL, NULL, '2025-01-14 01:34:51', '2025-01-14 01:34:51'),
(97, 6, 0, NULL, NULL, 0, NULL, NULL, '2025-01-28 03:31:32', '2025-01-28 03:31:32'),
(98, 6, 0, NULL, NULL, 0, NULL, NULL, '2025-01-28 05:19:13', '2025-01-28 05:19:13'),
(99, 17, 0, NULL, NULL, 0, NULL, NULL, '2025-01-28 09:18:44', '2025-01-28 09:18:44'),
(100, 6, 11395, NULL, NULL, 11395, NULL, NULL, '2025-02-04 23:49:17', '2025-02-04 23:49:17'),
(101, 18, 11395, NULL, NULL, 11395, NULL, NULL, '2025-02-06 00:15:24', '2025-02-06 00:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `affiliate_percentage` int(10) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `affiliate_id`, `affiliate_percentage`, `course_id`, `price`, `created_at`, `updated_at`) VALUES
(21, 43, NULL, NULL, 78, 100, '2023-02-16 11:42:09', '2023-02-16 11:42:09'),
(22, 44, NULL, NULL, 13, 1200, '2024-05-06 22:54:53', '2024-05-06 22:54:53'),
(23, 44, NULL, NULL, 79, 1000, '2024-05-06 22:54:53', '2024-05-06 22:54:53'),
(24, 45, NULL, NULL, 15, 1200, '2024-05-06 23:07:30', '2024-05-06 23:07:30'),
(25, 46, NULL, NULL, 20, 5656, '2024-05-06 23:12:27', '2024-05-06 23:12:27'),
(26, 47, NULL, NULL, 80, 1000, '2024-05-26 00:01:34', '2024-05-26 00:01:34'),
(27, 48, NULL, NULL, 84, 25000, '2024-06-10 00:25:17', '2024-06-10 00:25:17'),
(28, 51, NULL, NULL, 80, 1000, '2024-06-23 23:42:12', '2024-06-23 23:42:12'),
(29, 52, NULL, NULL, 88, 450, '2024-06-24 22:00:52', '2024-06-24 22:00:52'),
(30, 53, NULL, NULL, 88, 450, '2024-06-24 22:05:41', '2024-06-24 22:05:41'),
(31, 54, NULL, NULL, 88, 450, '2024-06-24 22:06:23', '2024-06-24 22:06:23'),
(32, 55, NULL, NULL, 88, 450, '2024-06-24 22:09:27', '2024-06-24 22:09:27'),
(33, 56, NULL, NULL, 88, 450, '2024-06-25 02:37:48', '2024-06-25 02:37:48'),
(34, 57, NULL, NULL, 88, 450, '2024-06-25 05:39:49', '2024-06-25 05:39:49'),
(35, 58, NULL, NULL, 88, 450, '2024-06-25 05:42:49', '2024-06-25 05:42:49'),
(36, 59, NULL, NULL, 88, 450, '2024-06-25 05:59:18', '2024-06-25 05:59:18'),
(37, 60, NULL, NULL, 11, 5656, '2024-06-25 21:59:33', '2024-06-25 21:59:33'),
(38, 61, NULL, NULL, 89, 3600, '2024-06-25 22:25:03', '2024-06-25 22:25:03'),
(39, 62, NULL, NULL, 11, 5656, '2024-06-26 00:10:16', '2024-06-26 00:10:16'),
(40, 62, NULL, NULL, 88, 450, '2024-06-26 00:10:17', '2024-06-26 00:10:17'),
(41, 63, NULL, NULL, 89, 3600, '2024-06-29 23:46:26', '2024-06-29 23:46:26'),
(42, 64, NULL, NULL, 87, 20000, '2024-06-29 23:58:59', '2024-06-29 23:58:59'),
(43, 65, NULL, NULL, 89, 3600, '2024-07-28 03:58:57', '2024-07-28 03:58:57'),
(44, 66, NULL, NULL, 95, 2375, '2024-08-08 11:04:58', '2024-08-08 11:04:58'),
(45, 67, NULL, NULL, 96, 2700, '2024-08-11 15:00:39', '2024-08-11 15:00:39'),
(46, 68, NULL, NULL, 95, 2375, '2024-08-27 06:19:23', '2024-08-27 06:19:23'),
(47, 69, NULL, NULL, 96, 2700, '2024-08-28 08:50:02', '2024-08-28 08:50:02'),
(48, 69, NULL, NULL, 89, 3600, '2024-08-28 08:50:02', '2024-08-28 08:50:02'),
(49, 70, NULL, NULL, 95, 2375, '2024-08-28 08:52:28', '2024-08-28 08:52:28'),
(50, 71, NULL, NULL, 87, 20000, '2024-08-29 06:31:58', '2024-08-29 06:31:58'),
(51, 72, NULL, NULL, 89, 3600, '2024-08-29 06:40:25', '2024-08-29 06:40:25'),
(52, 73, NULL, NULL, 89, 3600, '2024-08-29 06:47:34', '2024-08-29 06:47:34'),
(53, 74, NULL, NULL, 96, 2700, '2024-08-29 06:51:00', '2024-08-29 06:51:00'),
(54, 75, NULL, NULL, 11, 5656, '2024-08-29 06:52:03', '2024-08-29 06:52:03'),
(55, 75, NULL, NULL, 88, 450, '2024-08-29 06:52:03', '2024-08-29 06:52:03'),
(56, 76, NULL, NULL, 87, 20000, '2024-08-29 06:52:46', '2024-08-29 06:52:46'),
(57, 77, NULL, NULL, 97, 1000, '2024-08-29 06:54:49', '2024-08-29 06:54:49'),
(58, 78, NULL, NULL, 97, 1000, '2024-08-29 06:54:52', '2024-08-29 06:54:52'),
(59, 79, NULL, NULL, 89, 3600, '2024-08-29 06:55:36', '2024-08-29 06:55:36'),
(60, 80, NULL, NULL, 89, 3600, '2024-08-29 06:55:38', '2024-08-29 06:55:38'),
(61, 81, NULL, NULL, 87, 20000, '2024-08-29 06:57:44', '2024-08-29 06:57:44'),
(62, 82, NULL, NULL, 96, 2700, '2024-08-29 06:57:59', '2024-08-29 06:57:59'),
(63, 83, NULL, NULL, 96, 2700, '2024-08-29 06:58:16', '2024-08-29 06:58:16'),
(64, 84, NULL, NULL, 96, 2700, '2024-08-29 06:58:30', '2024-08-29 06:58:30'),
(65, 85, NULL, NULL, 87, 20000, '2024-08-29 07:00:37', '2024-08-29 07:00:37'),
(66, 86, NULL, NULL, 88, 450, '2024-08-29 07:01:07', '2024-08-29 07:01:07'),
(67, 87, NULL, NULL, 87, 20000, '2024-08-29 07:01:28', '2024-08-29 07:01:28'),
(68, 88, NULL, NULL, 87, 20000, '2024-08-29 07:01:43', '2024-08-29 07:01:43'),
(69, 89, NULL, NULL, 88, 450, '2024-08-29 10:00:08', '2024-08-29 10:00:08'),
(70, 90, NULL, NULL, 96, 2700, '2024-09-02 12:22:35', '2024-09-02 12:22:35'),
(71, 91, NULL, NULL, 96, 2700, '2024-10-23 04:06:40', '2024-10-23 04:06:40'),
(72, 92, NULL, NULL, 107, 0, '2024-11-05 00:28:45', '2024-11-05 00:28:45'),
(73, 93, NULL, NULL, 107, 0, '2024-11-12 07:19:38', '2024-11-12 07:19:38'),
(74, 94, NULL, NULL, 107, 0, '2024-12-04 08:06:42', '2024-12-04 08:06:42'),
(75, 95, NULL, NULL, 107, 0, '2024-12-21 21:02:37', '2024-12-21 21:02:37'),
(76, 96, NULL, NULL, 107, 0, '2025-01-14 01:34:51', '2025-01-14 01:34:51'),
(77, 97, NULL, NULL, 107, 0, '2025-01-28 03:31:32', '2025-01-28 03:31:32'),
(78, 98, NULL, NULL, 107, 0, '2025-01-28 05:19:13', '2025-01-28 05:19:13'),
(79, 99, NULL, NULL, 107, 0, '2025-01-28 09:18:44', '2025-01-28 09:18:44'),
(80, 100, NULL, NULL, 107, 0, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(81, 100, NULL, NULL, 110, 3705, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(82, 100, NULL, NULL, 108, 4750, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(83, 100, NULL, NULL, 109, 2940, '2025-02-04 23:49:18', '2025-02-04 23:49:18'),
(84, 101, NULL, NULL, 108, 4750, '2025-02-06 00:15:24', '2025-02-06 00:15:24'),
(85, 101, NULL, NULL, 110, 3705, '2025-02-06 00:15:24', '2025-02-06 00:15:24'),
(86, 101, NULL, NULL, 109, 2940, '2025-02-06 00:15:24', '2025-02-06 00:15:24'),
(87, 101, NULL, NULL, 107, 0, '2025-02-06 00:15:24', '2025-02-06 00:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Spider Man', '<p>asdfasdf</p>', 0, '2024-10-27 03:59:36', '2024-10-28 09:17:20'),
(2, 'এস এস সি', '<p>Test</p>', 0, '2024-10-28 09:09:58', '2024-10-28 09:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `lession_id` int(11) NOT NULL,
  `pdf` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id`, `lession_id`, `pdf`, `status`, `created_at`, `updated_at`) VALUES
(13, 40, 'pdf/lessons/Definition of Accounting1807079666398522.pdf', 1, '2024-08-11 06:45:20.000000', '2024-08-11 08:37:45.000000'),
(14, 40, 'pdf/lessons/Definition of Accounting1807078966797587.pdf', 0, '2024-08-11 06:48:50.000000', '2024-08-11 08:26:38.000000'),
(15, 43, 'pdf/lessons/Elements of Accounting1807103677823433.pdf', 1, '2024-08-11 14:59:24.000000', '2024-08-11 14:59:24.000000'),
(16, 53, 'pdf/lessons/Elementary Discussion1807104616611333.pdf', 1, '2024-08-11 15:14:19.000000', '2024-08-11 15:14:19.000000');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(44, 'App\\Models\\User', 1, 'userAuthToken', '99aa91ca616fa7543530d97496a5a4ac72249c1b9942a36f8e05bc6f5e0911cf', '[\"*\"]', '2023-01-04 23:51:13', NULL, '2022-12-19 03:58:38', '2023-01-04 23:51:13'),
(45, 'App\\Models\\Instructor', 2, 'authToken', '2e0ad71a339f9b2f5d0f62fa78ebd7dd2e8a3ef3d21f9a0a5fd7f6d01d5d7b39', '[\"*\"]', '2022-12-20 01:09:32', NULL, '2022-12-19 04:13:27', '2022-12-20 01:09:32'),
(47, 'App\\Models\\User', 1, 'userAuthToken', '07ec2638ea7d5bababb35f84b79e2faf2df507c8711b14f1cc606729014d0458', '[\"*\"]', NULL, NULL, '2022-12-19 21:20:05', '2022-12-19 21:20:05'),
(50, 'App\\Models\\User', 1, 'userAuthToken', '991b3e0ab44bbe55d81473df1c8459f9c95a3b137a539455b9c38863decb0852', '[\"*\"]', '2022-12-20 04:23:54', NULL, '2022-12-20 04:23:28', '2022-12-20 04:23:54'),
(51, 'App\\Models\\User', 1, 'userAuthToken', '14a499e99ecb73b00c7ce6b20b28f6321cdac78f39df2ec49810f8e7587c4a46', '[\"*\"]', NULL, NULL, '2022-12-21 22:20:13', '2022-12-21 22:20:13'),
(52, 'App\\Models\\Instructor', 2, 'authToken', 'e85521f2523be4cee6c5966a11cc59623487b4b3829a04daac1e065e3b9b0729', '[\"*\"]', NULL, NULL, '2022-12-21 23:46:31', '2022-12-21 23:46:31'),
(54, 'App\\Models\\Instructor', 2, 'authToken', 'b5f94dd1074a18da2e60e0e3fbb2f5c91ef088baa2a5d784d6145d52aa0ccaf5', '[\"*\"]', '2022-12-26 05:15:38', NULL, '2022-12-25 21:13:47', '2022-12-26 05:15:38'),
(55, 'App\\Models\\Instructor', 2, 'authToken', '2883f1abd50694ca9a2fb6fba0b50d9f5e49852a0de47f43d1937c8dba3c3656', '[\"*\"]', '2022-12-29 05:56:38', NULL, '2022-12-25 21:41:45', '2022-12-29 05:56:38'),
(59, 'App\\Models\\User', 1, 'userAuthToken', 'e86ce9fad59fa2f30c6074ad0d298d48405606e279cd68c6b34b032af86db7b2', '[\"*\"]', '2023-01-04 23:18:04', NULL, '2023-01-04 04:31:23', '2023-01-04 23:18:04'),
(60, 'App\\Models\\User', 2, 'userAuthToken', '317a653dbcf9a92fd99041bcf2e9a1a2eb65ec584ab0c71b8729ded639466f5c', '[\"*\"]', '2023-01-15 00:17:17', NULL, '2023-01-04 23:49:50', '2023-01-15 00:17:17'),
(62, 'App\\Models\\User', 1, 'userAuthToken', 'a445a518f94efd054c4e673188a55e761c19f157d33fdaa8ce1d0dc7bee9e6a8', '[\"*\"]', '2023-01-15 05:43:41', NULL, '2023-01-15 03:22:43', '2023-01-15 05:43:41'),
(64, 'App\\Models\\User', 1, 'userAuthToken', 'afdb47ceaeca5ac185dda6dfd7e0d7c50ba7df2fc215cab518dc58e4536c795a', '[\"*\"]', '2023-01-16 03:38:54', NULL, '2023-01-15 06:00:43', '2023-01-16 03:38:54'),
(68, 'App\\Models\\User', 1, 'userAuthToken', '10b68a4b401b69766a039ec1d8763e6e59ed2b5ffdcab58564c5f06e38273912', '[\"*\"]', '2023-01-18 00:27:29', NULL, '2023-01-18 00:27:26', '2023-01-18 00:27:29'),
(79, 'App\\Models\\Instructor', 1, 'authToken', 'befe2bdf4131f65138006a4499751e9eabd1d598eef8137dd530019298b7b5b7', '[\"*\"]', '2023-01-22 09:58:35', NULL, '2023-01-22 09:18:47', '2023-01-22 09:58:35'),
(83, 'App\\Models\\User', 1, 'userAuthToken', '2cf54ea81b4a4aa7e8b39cf5480dacee9bde350dc91eef0d2618ec75790ad7e7', '[\"*\"]', '2023-01-25 13:53:30', NULL, '2023-01-25 13:52:03', '2023-01-25 13:53:30'),
(84, 'App\\Models\\User', 1, 'userAuthToken', '074846458f85b68c3a9b23b6c02b08b3b462b6a01da4c9da1914783e8d8cc368', '[\"*\"]', '2023-01-25 13:55:05', NULL, '2023-01-25 13:54:47', '2023-01-25 13:55:05'),
(85, 'App\\Models\\Affiliate', 4, 'affAuthToken', '96706f9e4183ecefc3aa0e7955cd333491a5c0bfa6f6d64091922c9df9566d00', '[\"*\"]', '2023-01-25 14:42:09', NULL, '2023-01-25 14:41:15', '2023-01-25 14:42:09'),
(86, 'App\\Models\\User', 1, 'userAuthToken', '36185a0dd1c738b43f13bd4c805febcf2b82c7ab2be646ce0a68a78fd692c312', '[\"*\"]', '2023-02-16 11:09:58', NULL, '2023-02-05 12:42:37', '2023-02-16 11:09:58'),
(90, 'App\\Models\\User', 1, 'userAuthToken', '41289785c21b5f0837df3dc36a0f92b88b78b4740ddddf177f684acd25f3e7f4', '[\"*\"]', '2023-02-08 13:38:11', NULL, '2023-02-08 12:12:30', '2023-02-08 13:38:11'),
(91, 'App\\Models\\Instructor', 9, 'authToken', '4f726850c377f85b0a1e57324788bab17ac7e4325a284c99168cbb7724828e77', '[\"*\"]', '2023-02-26 13:09:27', NULL, '2023-02-12 17:52:23', '2023-02-26 13:09:27'),
(94, 'App\\Models\\User', 1, 'userAuthToken', 'cf358cc806c384acbe356de2f5916131bd58599ebeb33b2c0340ccb8b4f3efc5', '[\"*\"]', '2023-02-18 18:16:16', NULL, '2023-02-13 13:08:16', '2023-02-18 18:16:16'),
(95, 'App\\Models\\User', 1, 'userAuthToken', 'e71ae517e2950b9016c155d2bc378c8b247036c368a75e271e73dc8157224e5e', '[\"*\"]', NULL, NULL, '2023-02-13 16:10:40', '2023-02-13 16:10:40'),
(100, 'App\\Models\\Affiliate', 1, 'affAuthToken', '17a06272790b15773fd49191ba5526ec3bebf9c6ff01f1ff4bb87f1826dcc205', '[\"*\"]', NULL, NULL, '2023-02-13 17:41:29', '2023-02-13 17:41:29'),
(105, 'App\\Models\\User', 1, 'userAuthToken', '828c160388b6af9ea6e06122da76422f0d7158b0b7e93e466966c3f86b7f03c9', '[\"*\"]', NULL, NULL, '2023-02-13 18:51:00', '2023-02-13 18:51:00'),
(106, 'App\\Models\\User', 1, 'userAuthToken', '40f47614badb88c100962777f2beffb08377a5b3cc891c5964168a68b708a736', '[\"*\"]', '2023-02-14 12:02:28', NULL, '2023-02-14 11:56:00', '2023-02-14 12:02:28'),
(107, 'App\\Models\\User', 1, 'userAuthToken', 'dca229b8aec14d053d522f652a3837afb4ce0739423c7018917aab7105dade4c', '[\"*\"]', '2023-02-14 11:59:36', NULL, '2023-02-14 11:59:34', '2023-02-14 11:59:36'),
(108, 'App\\Models\\User', 1, 'userAuthToken', 'dca59ebcc71719e1c70bd0365bef1fa76409b9684473700d086a5d40708efd55', '[\"*\"]', '2023-02-16 10:44:54', NULL, '2023-02-14 12:00:17', '2023-02-16 10:44:54'),
(110, 'App\\Models\\User', 1, 'userAuthToken', 'ad4e8c7d58a8cca148f4f06fddfda5e8d1276d85c5e05ac5c69e4f721a97a7a2', '[\"*\"]', '2023-02-14 17:47:41', NULL, '2023-02-14 15:59:56', '2023-02-14 17:47:41'),
(111, 'App\\Models\\User', 1, 'userAuthToken', '0e23f1762bf60578d81238db2f967bcd05a164ca8b3d01552970087324024b8a', '[\"*\"]', '2023-02-16 11:16:28', NULL, '2023-02-14 16:24:44', '2023-02-16 11:16:28'),
(114, 'App\\Models\\Instructor', 3, 'authToken', 'da2e5fa982db2fd333c1fd6850ebd4736950bb98273a3856f7698a72cfcefc4c', '[\"*\"]', '2023-02-14 18:58:58', NULL, '2023-02-14 18:55:31', '2023-02-14 18:58:58'),
(121, 'App\\Models\\User', 1, 'userAuthToken', '28b2ed1c7ae687ef04a3068eca7a3b7c9e70981b2d4682877f183b739e9f1a33', '[\"*\"]', '2023-02-15 16:57:04', NULL, '2023-02-15 11:40:24', '2023-02-15 16:57:04'),
(125, 'App\\Models\\User', 1, 'userAuthToken', 'fbb66a8bc6d4c1edb7381b864a9550f489a39c1a047b3cb2ba492d3622fbd888', '[\"*\"]', NULL, NULL, '2023-02-15 14:03:52', '2023-02-15 14:03:52'),
(127, 'App\\Models\\User', 1, 'userAuthToken', '3f3780e8c8dcebf98e8b0b75da4031f14cf3305db2251e3d1435d2e80ce77d1c', '[\"*\"]', NULL, NULL, '2023-02-15 14:05:55', '2023-02-15 14:05:55'),
(128, 'App\\Models\\User', 1, 'userAuthToken', '81860542abda3c7a69a35013750a6f031884ecd44d2ec6e1a0132253a24df680', '[\"*\"]', NULL, NULL, '2023-02-15 14:06:03', '2023-02-15 14:06:03'),
(131, 'App\\Models\\Affiliate', 7, 'affAuthToken', '023ca3eb6acf79546ffc71fcf62bf1b5ccc49430f1f61ddb1a7e214606e215dc', '[\"*\"]', NULL, NULL, '2023-02-15 14:06:16', '2023-02-15 14:06:16'),
(132, 'App\\Models\\User', 1, 'userAuthToken', '812ec2052db2e489e0faf53bddee4a695a62a608d01cdfbab498021dbc21b8f7', '[\"*\"]', NULL, NULL, '2023-02-15 16:21:55', '2023-02-15 16:21:55'),
(133, 'App\\Models\\User', 1, 'userAuthToken', '909a9e5a4f9bce74a62c404217a5c1ff3344cb6670fcd6f161cc095cda275e4c', '[\"*\"]', NULL, NULL, '2023-02-15 16:22:01', '2023-02-15 16:22:01'),
(134, 'App\\Models\\User', 1, 'userAuthToken', '7f4c447381a9b5e64c97c8e08b2af16e299231c7b74593308339bfa358189f2a', '[\"*\"]', NULL, NULL, '2023-02-15 16:22:06', '2023-02-15 16:22:06'),
(135, 'App\\Models\\User', 1, 'userAuthToken', '344b2e7d3203692ad91faa2856ce6ea0b4c066f44092beb39ff793b75a29f78b', '[\"*\"]', '2023-02-16 14:06:35', NULL, '2023-02-15 16:22:41', '2023-02-16 14:06:35'),
(138, 'App\\Models\\User', 1, 'userAuthToken', '6618722083e75ce0917b8be1158b0ca75d1fcb66311246fde915b3f0feb52f22', '[\"*\"]', '2023-02-16 11:19:42', NULL, '2023-02-16 11:14:30', '2023-02-16 11:19:42'),
(140, 'App\\Models\\User', 1, 'userAuthToken', '01964e45cd4300cd0ff97761854920c730c11968fedb34f2e7fc47ae1874bfe0', '[\"*\"]', '2023-02-16 14:06:54', NULL, '2023-02-16 14:03:54', '2023-02-16 14:06:54'),
(141, 'App\\Models\\User', 1, 'userAuthToken', 'e6f6cf100bc10ee448137e8f4b9d0a16a67f8d068b4537da1ec72e6005e75978', '[\"*\"]', '2023-02-19 11:16:10', NULL, '2023-02-16 14:07:57', '2023-02-19 11:16:10'),
(143, 'App\\Models\\User', 1, 'userAuthToken', 'e7e8ad7df3e091f14ac1c4f8edfc0536e0910f550701bcc196c0ba26fc3df633', '[\"*\"]', '2023-02-19 18:40:08', NULL, '2023-02-19 11:44:35', '2023-02-19 18:40:08'),
(144, 'App\\Models\\User', 1, 'userAuthToken', 'b4b71b0fd22aaccbd0180e11d1233e56036e8880fd16300e9129540365217be2', '[\"*\"]', '2023-02-23 17:51:47', NULL, '2023-02-20 10:44:01', '2023-02-23 17:51:47'),
(152, 'App\\Models\\Instructor', 10, 'authToken', '889b666d80a8099d0d53649e74580271e715022e8c951ee8b1102687f3ebb24c', '[\"*\"]', '2023-02-26 19:11:40', NULL, '2023-02-25 12:13:45', '2023-02-26 19:11:40'),
(153, 'App\\Models\\User', 32, 'userAuthToken', '289588be4110c9222c76140d181b1139d1076cc597b6e367fa28de5b83ed23c6', '[\"*\"]', '2023-03-16 22:38:39', NULL, '2023-03-07 17:11:01', '2023-03-16 22:38:39'),
(154, 'App\\Models\\User', 32, 'userAuthToken', '155371d169637df3d2a5b6e00b5296518514dce783c08c51f312b3c5904134b3', '[\"*\"]', '2023-04-08 12:02:16', NULL, '2023-04-08 11:58:11', '2023-04-08 12:02:16'),
(155, 'App\\Models\\User', 32, 'userAuthToken', '66e0fbd43c1d99b4f5b2740584960a0520155bc897fc8da00760e235c9a97828', '[\"*\"]', '2023-04-08 12:04:47', NULL, '2023-04-08 12:04:45', '2023-04-08 12:04:47'),
(156, 'App\\Models\\User', 34, 'userAuthToken', '4bc91c5456cf810fb0f64dd31245a816f8f9c40b45c1e9c8a5f1b0425aecfd8c', '[\"*\"]', '2023-05-06 16:36:50', NULL, '2023-05-06 14:05:17', '2023-05-06 16:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`id`, `photo`, `title`, `audio`, `description`, `created_at`, `updated_at`) VALUES
(2, '/images/podcast/432948271-1741597606ad1.jpg', 'Nostrum aliquip qui', '/images/podcast/820642532-1741597606How Do I Get A Band 9 in IELTS Speaking_ [9DTyINOeY-Y].mp3', 'Amet magna amet la', '2025-03-10 03:06:46', '2025-03-10 03:06:46'),
(3, '/images/podcast/954964390-1741597672podcast.jpg', 'Sint quia officia an', '/images/podcast/1038420834-1741597672How Do I Get A Band 9 in IELTS Speaking_ [9DTyINOeY-Y].mp3', 'Reprehenderit sunt', '2025-03-10 03:07:52', '2025-03-10 03:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`id`, `user_id`, `course_id`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 1, 1, 2, NULL, NULL),
(3, 1, 1, 3, '2023-02-14 09:14:16', '2023-02-14 09:14:16'),
(4, 1, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 1, 1, NULL, NULL),
(7, 1, 1, 4, '2023-02-14 09:17:23', '2023-02-14 09:17:23'),
(9, 1, 1, 5, '2023-02-14 09:18:10', '2023-02-14 09:18:10'),
(10, 1, 64, 1, '2023-02-14 09:59:47', '2023-02-14 09:59:47'),
(11, 1, 64, 2, '2023-02-14 10:21:53', '2023-02-14 10:21:53'),
(12, 1, 64, 3, '2023-02-14 10:22:09', '2023-02-14 10:22:09'),
(17, 1, 64, 4, '2023-02-14 10:37:26', '2023-02-14 10:37:26'),
(19, 1, 64, 5, '2023-02-14 10:38:02', '2023-02-14 10:38:02'),
(21, 1, 64, 6, '2023-02-14 10:55:46', '2023-02-14 10:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `promovideos`
--

CREATE TABLE `promovideos` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `promovideos`
--

INSERT INTO `promovideos` (`id`, `title`, `description`, `video`, `link`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Forensic video analysis', '<p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">Forensic video analysis has been used in a variety of high profile cases, international disagreements, and conflict zones.</span></p>', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/LYz3ezghHYY\" title=\"What is Forensic Science?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '#', 1, '2024-06-12 03:51:01', '2025-02-04 23:41:33'),
(7, 'Open Heart Surgery', '<div><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">\"I Think Her Mother Loves Me\" was the first single from the album; a remixed, slightly poppier version was released.&nbsp;</span></div>', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/6gWPbbUBPGg\" title=\"Oliver&#39;s First Visit to the Dentist and Other Health Stories\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '#', 1, '2024-06-12 03:51:02', '2025-02-04 23:46:10'),
(8, 'Echocardiogram (Echo)', '<p><span style=\"color: rgb(34, 35, 40); font-family: Montserrat, &quot;Helvetica Neue&quot;, Arial, sans-serif;\">An echocardiogram (echo) uses high frequency sound waves (ultrasound) to make pictures of your heart.&nbsp;</span></p>', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/Kirg2GuESsE\" title=\"Echocardiogram (Echo)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '#', 1, '2024-06-12 03:58:26', '2025-02-04 23:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `quizsubmits`
--

CREATE TABLE `quizsubmits` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `totalquestion` int(11) NOT NULL,
  `rightanswer` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quizsubmits`
--

INSERT INTO `quizsubmits` (`id`, `student_id`, `quiz_id`, `totalquestion`, `rightanswer`, `created_at`, `updated_at`) VALUES
(72, 1, 66, 3, 1, '2024-06-23 03:27:24', '2024-06-23 03:27:24'),
(73, 1, 67, 1, 0, '2024-06-23 04:34:14', '2024-06-23 04:34:14'),
(74, 1, 68, 1, 1, '2024-06-23 04:36:43', '2024-06-23 04:36:43'),
(75, 6, 69, 2, 0, '2024-06-29 23:20:46', '2024-06-29 23:20:46'),
(76, 1, 69, 2, 0, '2024-07-28 03:59:23', '2024-07-28 03:59:23'),
(77, 1, 33, 1, 1, '2024-07-28 04:01:05', '2024-07-28 04:01:05'),
(78, 6, 71, 2, 2, '2024-08-11 06:20:45', '2024-08-11 06:20:45'),
(79, 6, 72, 2, 2, '2024-08-11 06:21:14', '2024-08-11 06:21:14'),
(80, 6, 74, 2, 2, '2024-08-28 08:34:55', '2024-08-28 08:34:55'),
(81, 6, 76, 1, 1, '2024-12-05 03:40:03', '2024-12-05 03:40:03'),
(82, 17, 76, 1, 1, '2025-01-28 09:22:10', '2025-01-28 09:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `quizsubmit_answers`
--

CREATE TABLE `quizsubmit_answers` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `right_option` int(11) NOT NULL,
  `isRight` tinyint(1) NOT NULL,
  `submit_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quizsubmit_answers`
--

INSERT INTO `quizsubmit_answers` (`id`, `student_id`, `quiz_id`, `question_id`, `option_id`, `right_option`, `isRight`, `submit_id`, `created_at`, `updated_at`) VALUES
(194, 1, 66, 4, 7, 7, 1, 72, '2024-06-23 03:27:24', '2024-06-23 03:27:24'),
(195, 1, 66, 7, 19, 20, 0, 72, '2024-06-23 03:27:24', '2024-06-23 03:27:24'),
(196, 1, 67, 6, 15, 14, 0, 73, '2024-06-23 04:34:14', '2024-06-23 04:34:14'),
(197, 1, 68, 8, 21, 21, 1, 74, '2024-06-23 04:36:43', '2024-06-23 04:36:43'),
(198, 6, 69, 9, 25, 27, 0, 75, '2024-06-29 23:20:46', '2024-06-29 23:20:46'),
(199, 1, 69, 9, 26, 27, 0, 76, '2024-07-28 03:59:23', '2024-07-28 03:59:23'),
(200, 1, 69, 12, 29, 31, 0, 76, '2024-07-28 03:59:23', '2024-07-28 03:59:23'),
(201, 1, 33, 14, 39, 39, 1, 77, '2024-07-28 04:01:05', '2024-07-28 04:01:05'),
(202, 6, 71, 18, 54, 54, 1, 78, '2024-08-11 06:20:45', '2024-08-11 06:20:45'),
(203, 6, 71, 19, 57, 57, 1, 78, '2024-08-11 06:20:45', '2024-08-11 06:20:45'),
(204, 6, 72, 20, 63, 63, 1, 79, '2024-08-11 06:21:14', '2024-08-11 06:21:14'),
(205, 6, 72, 21, 68, 68, 1, 79, '2024-08-11 06:21:14', '2024-08-11 06:21:14'),
(206, 6, 74, 22, 71, 71, 1, 80, '2024-08-28 08:34:55', '2024-08-28 08:34:55'),
(207, 6, 74, 23, 76, 76, 1, 80, '2024-08-28 08:34:55', '2024-08-28 08:34:55'),
(208, 6, 76, 25, 82, 82, 1, 81, '2024-12-05 03:40:03', '2024-12-05 03:40:03'),
(209, 17, 76, 25, 82, 82, 1, 82, '2025-01-28 09:22:10', '2025-01-28 09:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `timer` varchar(10) DEFAULT NULL,
  `answered` tinyint(1) NOT NULL DEFAULT 0,
  `points` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `lesson_id`, `name`, `slug`, `timer`, `answered`, `points`, `created_at`, `updated_at`) VALUES
(6, 5, 'Q5155', NULL, NULL, 0, 2, '2022-12-14 12:24:47', '2022-12-15 12:51:09'),
(7, 5, 'Q51', NULL, NULL, 0, 1, '2022-12-19 03:18:21', '2022-12-19 03:18:21'),
(8, 5, 'Q51', NULL, NULL, 0, 1, '2022-12-30 21:43:14', '2022-12-30 21:43:14'),
(11, 27, 'Q51', NULL, NULL, 0, 1, '2023-01-16 23:25:08', '2023-01-16 23:25:08'),
(12, 0, 'ABCD', NULL, NULL, 0, 1, '2023-01-17 03:53:26', '2023-01-17 03:53:26'),
(42, 5, 'Q51', NULL, NULL, 0, 1, '2023-02-13 16:31:39', '2023-02-13 16:31:39'),
(52, 78, 'Flutter', 'Dart', 'C', 0, 1, '2023-02-20 11:29:44', '2023-02-26 19:11:40'),
(58, 78, 'Flutter ?', 'AA', 'A', 0, 1, '2023-02-26 18:28:58', '2023-02-26 18:35:44'),
(59, 78, 'What is Flutter?', 'AAA', 'B', 0, 1, '2023-02-26 18:37:47', '2023-02-26 18:37:47'),
(61, NULL, 'First quiz', NULL, NULL, 0, 1, '2024-04-29 03:00:34', '2024-04-29 03:00:34'),
(62, NULL, 'First quiz', NULL, NULL, 0, 1, '2024-04-29 03:02:23', '2024-04-29 03:02:23'),
(63, NULL, 'Second quiz', NULL, NULL, 0, 1, '2024-04-29 03:24:24', '2024-04-29 03:24:24'),
(64, NULL, 'Another quiz', NULL, NULL, 0, 1, '2024-04-29 03:37:19', '2024-04-29 03:37:19'),
(71, 39, 'Quiz', NULL, '10', 0, 1, '2024-08-08 10:35:27', '2024-08-08 10:35:27'),
(72, 39, 'Quiz 2', NULL, '10', 0, 1, '2024-08-08 10:35:27', '2024-08-08 10:35:27'),
(74, 40, 'Second Quiz', NULL, '15', 0, 1, '2024-08-08 10:41:58', '2024-08-08 10:41:58'),
(75, 43, 'Quiz 1', NULL, '10', 0, 1, '2024-08-11 14:56:51', '2024-08-11 14:56:51'),
(76, 61, '১. হিসাববিজ্ঞান পরিচিতি', NULL, '১০', 0, 1, '2024-10-29 06:39:02', '2024-10-29 06:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) NOT NULL,
  `isAnswer` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_options`
--

INSERT INTO `quiz_options` (`id`, `quiz_id`, `option`, `isAnswer`, `created_at`, `updated_at`) VALUES
(9, 6, 'vn vnv nvn vn 111355', 0, '2022-12-14 12:24:47', '2022-12-15 12:51:09'),
(10, 6, 'vn vnv 123113555555', 0, '2022-12-14 12:24:47', '2022-12-15 12:51:09'),
(11, 6, 'v vn 1113555555', 0, '2022-12-14 12:24:47', '2022-12-15 12:51:09'),
(12, 6, 'vn vnv n5555555', 1, '2022-12-14 12:24:47', '2022-12-15 12:51:09'),
(13, 7, 'vn vnv nvn vn 1113', 1, '2022-12-19 03:18:21', '2022-12-19 03:18:21'),
(14, 7, 'vn vnv 123113', 0, '2022-12-19 03:18:21', '2022-12-19 03:18:21'),
(15, 7, 'v vn 1113', 0, '2022-12-19 03:18:21', '2022-12-19 03:18:21'),
(16, 7, 'vn vnv n', 0, '2022-12-19 03:18:21', '2022-12-19 03:18:21'),
(17, 8, 'vn vnv nvn vn 1113', 1, '2022-12-30 21:43:14', '2022-12-30 21:43:14'),
(18, 8, 'vn vnv 123113', 0, '2022-12-30 21:43:14', '2022-12-30 21:43:14'),
(19, 8, 'v vn 1113', 0, '2022-12-30 21:43:14', '2022-12-30 21:43:14'),
(20, 8, 'vn vnv n', 0, '2022-12-30 21:43:14', '2022-12-30 21:43:14'),
(29, 11, 'vn vnv nvn vn 1113', 1, '2023-01-16 23:25:08', '2023-01-16 23:25:08'),
(30, 11, 'vn vnv 123113', 0, '2023-01-16 23:25:08', '2023-01-16 23:25:08'),
(31, 11, 'v vn 1113', 0, '2023-01-16 23:25:08', '2023-01-16 23:25:08'),
(32, 11, 'vn vnv n', 0, '2023-01-16 23:25:08', '2023-01-16 23:25:08'),
(33, 12, 'Lorem 1', 1, '2023-01-17 03:53:26', '2023-01-17 03:53:26'),
(34, 12, 'Lorem 2', 0, '2023-01-17 03:53:26', '2023-01-17 03:53:26'),
(35, 12, 'Lorem 3', 0, '2023-01-17 03:53:26', '2023-01-17 03:53:26'),
(36, 12, 'Lorem 4', 0, '2023-01-17 03:53:26', '2023-01-17 03:53:26'),
(153, 42, 'vn vnv nvn vn 1113', 1, '2023-02-13 16:31:39', '2023-02-13 16:31:39'),
(154, 42, 'vn vnv 123113', 0, '2023-02-13 16:31:39', '2023-02-13 16:31:39'),
(155, 42, 'v vn 1113', 0, '2023-02-13 16:31:39', '2023-02-13 16:31:39'),
(156, 42, 'vn vnv n', 0, '2023-02-13 16:31:39', '2023-02-13 16:31:39'),
(193, 52, 'Go', 0, '2023-02-20 11:29:44', '2023-02-26 17:41:47'),
(194, 52, 'Java', 0, '2023-02-20 11:29:44', '2023-02-26 17:41:47'),
(195, 52, 'Dart', 0, '2023-02-20 11:29:44', '2023-02-26 17:41:07'),
(196, 52, 'React', 0, '2023-02-20 11:29:44', '2023-02-26 18:26:11'),
(217, 58, 'AA', 0, '2023-02-26 18:28:58', '2023-02-26 18:34:50'),
(218, 58, 'AAAA', 0, '2023-02-26 18:28:58', '2023-02-26 18:28:58'),
(219, 58, 'AAAAA', 0, '2023-02-26 18:28:58', '2023-02-26 18:28:58'),
(220, 58, 'AAAAAA', 0, '2023-02-26 18:28:58', '2023-02-26 18:28:58'),
(221, 59, 'AA', 1, '2023-02-26 18:37:47', '2023-02-26 18:37:47'),
(222, 59, 'AAA', 0, '2023-02-26 18:37:48', '2023-02-26 18:37:48'),
(223, 59, 'AAAAA', 0, '2023-02-26 18:37:48', '2023-02-26 18:37:48'),
(224, 59, 'A', 0, '2023-02-26 18:37:48', '2023-02-26 18:37:48'),
(225, 61, 'Item 2', 0, '2024-04-29 03:00:34', '2024-04-29 03:00:34'),
(226, 61, 'Item 1', 1, '2024-04-29 03:00:34', '2024-04-29 03:00:34'),
(227, 62, 'item 1', 0, '2024-04-29 03:02:23', '2024-04-29 03:02:23'),
(228, 62, 'Item 2', 1, '2024-04-29 03:02:23', '2024-04-29 03:02:23'),
(229, 63, 'Item 1', 0, '2024-04-29 03:24:24', '2024-04-29 03:24:24'),
(230, 63, 'Item 2', 1, '2024-04-29 03:24:24', '2024-04-29 03:24:24'),
(231, 64, 'Item 1', 0, '2024-04-29 03:37:19', '2024-04-29 03:37:19'),
(232, 64, 'Item 2', 1, '2024-04-29 03:37:19', '2024-04-29 03:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `rating_reviews`
--

CREATE TABLE `rating_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `review` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_reviews`
--

INSERT INTO `rating_reviews` (`id`, `student_id`, `course_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 4, 'Average course', 1, '2023-02-13 13:09:46', '2023-02-13 13:55:44'),
(5, 2, 78, 5, 'abc', 1, NULL, NULL),
(6, 10, 78, 4, 'def', 1, NULL, NULL),
(16, 1, 78, 3, 'gg', 0, '2023-02-19 11:15:56', '2023-02-19 11:16:10'),
(20, 1, 80, 5, 'Best learning resource I think.', 1, '2024-06-26 23:29:04', '2024-06-26 23:29:04'),
(25, 1, 80, 5, 'Best learning resource I think.', 1, '2024-06-26 23:29:04', '2024-06-26 23:29:04'),
(26, 1, 80, 5, 'Best learning resource I think.', 1, '2024-06-26 23:29:04', '2024-06-26 23:29:04'),
(27, 1, 80, 3, 'Best learning resource I think.', 1, '2024-06-26 23:29:04', '2024-06-26 23:29:04'),
(28, 6, 95, 4, 'Nice Course', 1, '2024-08-28 08:42:14', '2024-08-28 08:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `student_id`, `title`, `designation`, `summary`, `created_at`, `updated_at`) VALUES
(1, 1, 'Spider Man 2.0', 'Avenger Superhero', 'Name is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2024-06-05 03:06:23', '2024-08-25 11:10:51'),
(2, 3, NULL, NULL, NULL, '2024-06-23 05:43:44', '2024-06-23 05:43:44'),
(3, 4, NULL, NULL, NULL, '2024-06-24 00:44:59', '2024-06-24 00:44:59'),
(4, 5, NULL, NULL, NULL, '2024-06-25 21:45:44', '2024-06-25 21:45:44'),
(5, 6, 'test', NULL, 'https://meet.google.com/sac-mxqd-xhp?pli=1', '2024-06-25 22:17:52', '2024-09-05 06:24:00'),
(7, 9, NULL, NULL, NULL, '2024-06-29 22:10:52', '2024-06-29 22:10:52'),
(9, 11, NULL, NULL, NULL, '2024-07-01 21:34:13', '2024-07-01 21:34:13'),
(10, 12, NULL, NULL, NULL, '2024-07-01 21:47:58', '2024-07-01 21:47:58'),
(11, 13, NULL, NULL, NULL, '2024-07-01 22:50:31', '2024-07-01 22:50:31'),
(12, 14, NULL, NULL, NULL, '2024-09-03 09:49:17', '2024-09-03 09:49:17'),
(13, 15, NULL, NULL, NULL, '2024-09-04 09:24:17', '2024-09-04 09:24:17'),
(14, 16, NULL, NULL, NULL, '2024-12-03 06:09:58', '2024-12-03 06:09:58'),
(15, 17, NULL, NULL, NULL, '2025-01-28 09:17:05', '2025-01-28 09:17:05'),
(16, 18, NULL, NULL, NULL, '2025-02-06 00:11:32', '2025-02-06 00:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `review_replies`
--

CREATE TABLE `review_replies` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `reply` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review_replies`
--

INSERT INTO `review_replies` (`id`, `review_id`, `student_id`, `instructor_id`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(1, 20, 1, NULL, 'This is reply from Student', 1, '2024-07-10 05:42:08', '2024-07-10 05:42:08'),
(2, 20, NULL, 0, 'This is reply from Instructor', 1, '2024-07-10 05:42:08', '2024-07-10 05:42:08'),
(3, 20, NULL, 11, 'Hello', 1, '2024-07-10 00:33:13', '2024-07-10 00:33:13'),
(4, 20, NULL, 11, 'Hii \r\nhello', 1, '2024-07-10 00:33:32', '2024-07-10 00:33:32'),
(5, 20, 1, NULL, 'Test reply', 1, '2024-07-10 02:42:35', '2024-07-10 02:42:35'),
(6, 20, 1, NULL, 'Reply again', 1, '2024-07-10 02:42:50', '2024-07-10 02:42:50'),
(7, 20, NULL, 11, 'Hello how are you?', 1, '2024-07-10 02:51:19', '2024-07-10 02:51:19'),
(8, 20, 1, NULL, 'I\'m fine. You can do the rest work', 1, '2024-07-10 02:52:23', '2024-07-10 02:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Editior', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `share_links`
--

CREATE TABLE `share_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `shareable_link` varchar(255) NOT NULL,
  `validity` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_links`
--

INSERT INTO `share_links` (`id`, `affiliate_id`, `course_id`, `shareable_link`, `validity`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Y045E173BC', '2023-01-30', '2023-01-25 13:34:34', '2023-01-25 13:34:34'),
(2, 7, 1, 'N86J3UTCHZ', '2023-02-20', '2023-02-15 11:14:45', '2023-02-15 11:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo_name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'images/sliders/58261-202502121120352-h.484.DVz3Gka2ovXA4T83uj2nQoH9x6DhuPnDCpwivZ7D.jpg', 'Active', '2025-02-12 05:19:52', '2025-02-12 05:20:35'),
(3, 'images/sliders/46386-20250212112148gettyimages-1495878326-640x640.jpg', 'Active', '2025-02-12 05:21:48', '2025-02-12 05:21:48'),
(4, 'images/sliders/60480-20250212112404istockphoto-537268840-612x612.jpg', 'Active', '2025-02-12 05:24:04', '2025-02-12 05:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `studentbenefits`
--

CREATE TABLE `studentbenefits` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studentbenefits`
--

INSERT INTO `studentbenefits` (`id`, `title`, `description`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(2, 'লাইভ ও রেকর্ডেড ক্লাস:', 'শিক্ষার্থীরা লাইভ ক্লাসের মাধ্যমে শিক্ষকদের সঙ্গে সরাসরি ইন্টারঅ্যাক্ট করতে পারে, অথবা রেকর্ডেড ক্লাস থেকে যেকোনো সময় শেখার সুবিধা পায়।', 'images/promotions/1817493794756251.png', NULL, 1, '2024-06-12 23:53:20', '2024-12-04 01:45:53'),
(3, 'অ্যানিমেটেড শিক্ষা ভিডিও:', 'আমরা অ্যানিমেটেড ভিডিও ব্যবহার করি, যা শিক্ষার্থীদের জটিল বিষয়গুলো সহজভাবে বুঝতে সাহায্য করে এবং পড়াশোনাকে আরও আকর্ষণীয় করে তোলে।', 'images/promotions/1817494289546762.png', NULL, 1, '2024-06-12 23:53:49', '2024-12-04 01:46:11'),
(4, 'MCQ অনুশীলন পরীক্ষা:', 'শিক্ষার্থীরা বিভিন্ন MCQ অনুশীলন পরীক্ষার মাধ্যমে নিজেদের প্রস্তুতি যাচাই করতে পারে এবং পরীক্ষার স্ট্রাটেজি ঠিক করতে সহায়তা পায়।', 'images/promotions/1817494484960047.png', NULL, 1, '2024-06-12 23:53:50', '2024-12-04 01:46:24'),
(5, 'ক্লাস নোট:', 'কোর্সের ক্লাস নোট শিক্ষার্থীদের পড়াশোনা করার সময় গুরুত্বপূর্ণ তথ্য এবং মূল পয়েন্টগুলো সংক্ষেপে সংগ্রহ করতে সাহায্য করে, যাতে তারা কোন গুরুত্বপূর্ণ বিষয় মিস না করে এবং সহজে প্রস্তুতি নিতে পারে।', 'images/promotions/1817505382995853.png', NULL, 1, '2024-06-12 23:53:50', '2024-12-04 04:30:03'),
(6, '২৪/৭ অ্যাক্সেস:', 'আপনার সুবিধামতো সময়ের মধ্যে প্ল্যাটফর্মে লগইন করে কোর্স অ্যাক্সেস করুন এবং যে কোনো সময় পড়াশোনা করতে থাকুন।', 'images/promotions/1817505612288712.png', NULL, 1, '2024-06-12 23:53:52', '2024-12-04 04:33:42'),
(7, 'কোর্স প্রগ্রেস ট্র্যাকিং:', 'আপনি আপনার শেখার অগ্রগতি এবং পূর্ণতা সম্পর্কে বিস্তারিত তথ্য পাবেন।', 'images/promotions/1817505555036389.png', NULL, 1, '2024-06-12 23:53:53', '2024-12-04 04:32:47'),
(8, 'অ্যাসাইনমেন্ট এবং কুইজ:', 'কোর্সের সাথে দেওয়া হয় অ্যাসাইনমেন্ট এবং কুইজ, যা শিক্ষার্থীদের সক্ষমতা যাচাই করতে সাহায্য করবে।', 'images/promotions/1817505764361036.png', NULL, 1, '2024-12-04 01:50:15', '2024-12-04 04:36:07'),
(9, 'প্রস্তুতি সেশন:', 'শিক্ষার্থীরা আসন্ন পরীক্ষার জন্য বিশেষ প্রস্তুতি সেশন, টিপস এবং প্র্যাকটিস কুইজগুলো পাবে, যাতে তারা সহজেই প্রস্তুত হতে পারে।', 'images/promotions/1817505996918032.png', NULL, 1, '2024-12-04 01:50:46', '2024-12-04 04:39:49'),
(10, 'চ্যাট সাপোর্ট:', 'শিক্ষার্থীরা ফোরামে এবং চ্যাটে প্রশ্ন করতে পারে এবং দ্রুত সহায়তা পেতে পারে।', 'images/promotions/1817506134344212.png', NULL, 1, '2024-12-04 01:51:10', '2024-12-04 04:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `verifyToken` varchar(20) DEFAULT NULL,
  `passresetToken` int(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `blood` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `phone`, `email`, `address`, `image`, `password`, `verifyToken`, `passresetToken`, `gender`, `religion`, `blood`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ALif', '01770900478', 'alif@gmail.com', 'H#39, R#16\r\nNikunjo-2, Dhaka', 'images/student/1798466675066340.jpg', '$2y$10$STL2cnz87pWvEuw/oRM.7OWJqrPqHGs/xQgfqNLpW2fb9B/AnzAvS', '1', 1, 'Male', 'Islam', 'A+', 1, '2024-05-05 02:39:35', '2024-07-13 23:35:45'),
(3, 'Utsho', NULL, 'utsho@gmail.com', NULL, 'images/student/1802652169348770.jpg', '$2y$12$WPTfvr6Cozkoy.4xv6rK6.KGrkZe7NBDDAOMXBlZL87aSj/Mglft.', NULL, NULL, NULL, NULL, NULL, 1, '2024-06-23 05:43:44', '2024-06-23 05:44:35'),
(4, 'ALif1', '01770900471', 'alif1@gmail.com', NULL, NULL, '$2y$12$6Ql9y9SrwM24ZfD7LNMTZ.nnJcaGsHuz7dFRRxxkE7VZWFzAahXn6', '1', NULL, NULL, NULL, NULL, 1, '2024-06-24 00:44:57', '2024-06-24 02:52:19'),
(5, 'User', '01571767287', 'user@gmail.com', NULL, NULL, '$2y$12$CENe3LRFipKUd0ZeSDnyMenaYBXgKRSRCtMKJZklUmnOcS3Cp7vQe', '1', NULL, NULL, NULL, NULL, 1, '2024-06-25 21:45:44', '2024-06-25 21:46:19'),
(6, 'Kartik banik shishir', '01862131292', 'kartikbanikshishir@gmail.com', 'Shah Ali Plaza (Level 9), Lift-8, Plot 913, Mirpur-10, Dhaka 1216, Bangladesh.', 'images/student/1802895964462824.jpg', '$2y$12$V35c.b7W.qrR1f9zNzWVY.RuZoG3mPSx1pLC2VVyy4kQ3HOB1tZJq', '1', NULL, 'Female', 'Hindu', 'O+', 1, '2024-06-25 22:17:52', '2024-10-27 05:35:19'),
(9, 'Alif Shahriar Utsho', NULL, 'utsho.aiub@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocKsUboie8if-XRm1IvrlvU5qQukwWNWH3V9F4_B4US16N1ctvw=s96-c', NULL, '1', NULL, NULL, NULL, NULL, 1, '2024-06-29 22:10:52', '2024-06-29 22:10:52'),
(11, 'Amin Mahmud Saif', NULL, 'saifmahmud727@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocJ1TZIklEyezJWycyE1pYICVElifrfd4o0h6S6y_jo3LD-Nyis9jw=s96-c', NULL, '1', NULL, NULL, NULL, NULL, 1, '2024-07-01 21:34:13', '2024-07-01 21:34:13'),
(12, 'Shishir Banik', NULL, 'quicktech.shishirbanik@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocKDO_uRL1zzWFWy2snkjXjuNnXy1vAd1rfuWrSYVYaJ0e5J2K4=s96-c', NULL, '1', NULL, NULL, NULL, NULL, 1, '2024-07-01 21:47:58', '2024-07-01 21:47:58'),
(13, 'Sabah Raad', NULL, 'raadsabah71@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocJazYTra-KurPEAx_QUdEA9TwI04kGEaBRQ9DxI8uymKMfYyVOLgg=s96-c', NULL, '1', NULL, NULL, NULL, NULL, 1, '2024-07-01 22:50:31', '2024-07-01 22:50:31'),
(14, 'BorShon paul', '01316551254', 'shukrajitpaul@gmail.com', NULL, NULL, '$2y$12$AUk2vl/OT1CaWu4FZfIUcunYU04dMvvBvH5hlt.GkGWeSncOvR2PC', '6940', NULL, NULL, NULL, NULL, 1, '2024-09-03 09:49:17', '2024-09-03 09:49:17'),
(15, 'Borshon Paul', NULL, 'borshonpaul15@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocKK5FVK01jGfxnDehjciX93JhUqg_NJxNwnwiYELtfNk4Q-IgTN=s96-c', NULL, '1', NULL, NULL, NULL, NULL, 1, '2024-09-04 09:24:17', '2024-09-04 09:24:17'),
(16, 'B N\' M Kicks', NULL, 'bnmkicks.official@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocIbqxo62zWTrQbGuhE_Elg-O4-Q38VPhqxrsD2jpY4ujbXb0g=s96-c', NULL, '1', NULL, NULL, NULL, NULL, 1, '2024-12-03 06:09:58', '2024-12-03 06:09:58'),
(17, 'Tajul Islam', NULL, 'tajul2853@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocLQXOFZ_iK5dywQJQQTFuwSCTCbJjK2fC9qLr4FX4DeMoI-NA=s96-c', NULL, '1', NULL, NULL, NULL, NULL, 1, '2025-01-28 09:17:05', '2025-01-28 09:17:05'),
(18, 'nadim', '01720299987', 'nadimquicktech@gmail.com', NULL, NULL, '$2y$12$IWs2VA1gA6Et/Kg2xcM.uuDJ592bQ/0qWCLES9Bc44aQjtr5HaImO', '1', NULL, NULL, NULL, NULL, 1, '2025-02-06 00:11:32', '2025-02-06 00:11:57'),
(19, 'Janna Monroe', '+1 (697) 799-4753', 'tebinuxumy@mailinator.com', 'Quam dignissimos ut', NULL, '$2y$12$k2SS6MNG9faFJG2JyJPLm.61EUtK.HDuVMYhF/kRXS7WLDRMEmoIm', NULL, NULL, NULL, NULL, NULL, 1, '2025-03-09 02:43:31', '2025-03-09 02:43:31'),
(20, 'Thane Noel', '+1 (188) 219-5689', 'coqibec@mailinator.com', 'Nemo vel reiciendis', NULL, '$2y$12$RTZZeRfM9loD/aT0T.geTOIRLLnCueKsb.XeXKaADvrQS8ByzowSe', NULL, NULL, NULL, NULL, NULL, 1, '2025-03-11 21:35:49', '2025-03-11 21:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'sub calss 123', 'images/category/1757966886192048.png', 0, '2022-11-27 10:34:13', '2025-02-04 23:08:41'),
(2, 8, 'Test Forensic 1', 'images/category/1813799087047281.png', 1, '2024-04-28 00:09:22', '2025-02-04 23:02:34'),
(3, 0, 'Online', 'images/subcategory/1801448753402435.jpg', 0, '2024-06-09 22:56:48', '2025-02-04 23:08:49'),
(4, 0, 'Offline', 'images/subcategory/1801448767545392.jpg', 0, '2024-06-09 22:57:01', '2025-02-04 23:08:53'),
(5, 3, 'HSC Science', 'images/subcategory/1801727300532261.jpg', 0, '2024-06-13 00:44:11', '2025-02-04 23:08:56'),
(6, 3, 'HSC Arts', 'images/subcategory/1801727306990373.jpg', 0, '2024-06-13 00:44:17', '2025-02-04 23:09:00'),
(7, 3, 'HSC Commerce', 'images/subcategory/1801727315669582.jpg', 0, '2024-06-13 00:44:26', '2025-02-04 23:09:04'),
(8, 3, 'HSC ICT', 'images/subcategory/1801727342050917.jpg', 0, '2024-06-13 00:44:51', '2025-02-04 23:09:08'),
(9, 3, 'HSC English', 'images/subcategory/1801727345230817.jpg', 0, '2024-06-13 00:44:54', '2025-02-04 23:09:12'),
(10, 4, 'IELTS Sub Category', 'images/subcategory/1802894242284674.png', 0, '2024-06-25 21:52:14', '2025-02-04 23:09:16'),
(11, 6, 'Bangla 1st Paper', 'images/subcategory/1805978583753308.jpeg', 0, '2024-07-29 22:56:31', '2025-02-04 23:09:21'),
(12, 7, 'AI Sub CAtegory', 'images/subcategory/1806811522166680.jpg', 0, '2024-08-08 09:35:43', '2025-02-04 23:09:24'),
(13, 8, 'হিসাববিজ্ঞান ১ম পত্র', 'images/subcategory/1809169181293543.png', 0, '2024-09-03 10:09:42', '2025-02-04 23:09:28'),
(14, 11, 'Medical', 'images/subcategory/1817492403710951.png', 1, '2024-12-04 01:03:45', '2025-02-04 22:53:29'),
(15, 11, 'Medical 2', 'images/subcategory/1817492425698805.png', 1, '2024-12-04 01:04:06', '2025-02-04 23:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `description` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `student_id`, `course_id`, `instructor_id`, `subject`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 79, 2, 'Appointment', 'a fads ads', 1, '2024-07-14 00:38:18', '2024-07-14 00:38:18'),
(2, 1, 79, 2, 'Consultation', 'Need to clear the first module', 0, '2024-07-14 00:52:11', '2024-07-14 00:52:11'),
(3, 1, 80, 11, 'Consultation', 'Need to consult about a topic of First Lesson', 1, '2024-07-14 02:39:16', '2024-07-14 02:52:16'),
(4, 1, 80, 11, 'Appointment', 'Please arrange a zoom meeting to resole an topic', 1, '2024-07-14 02:48:31', '2024-07-14 02:52:39'),
(5, 6, 89, 11, 'Test', 'test', 0, '2024-07-16 04:01:38', '2024-07-16 04:01:38'),
(6, 6, 87, 2, 'dewd', 'ed', 0, '2024-09-26 04:44:31', '2024-09-26 04:44:31'),
(7, 6, 107, 16, 'Test', 'test', 0, '2024-11-12 00:04:41', '2024-11-12 00:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `certificate_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `certificate_name`, `email`, `password`, `district`, `institute`, `mobile`, `image`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Foisal A', 'Md Hafiz Al Foisal', 'user1@gmail.com', '$2y$10$PfxSk61e76AgtQt279sbjO1F/X6Wul6IqR7KLDCh50d3zjMPRhR0u', 'Satkhira', 'ABC', '0147896325', 'images/user/1752389351427354.png', NULL, NULL, '2022-12-16 09:31:32', '2022-12-19 04:07:02'),
(2, 'Fsd Ramjan', 'Fsd Ramjan', 'abcd@gmail.com', '$2y$10$QoNoVoPAacoeBCKvLmw49.9uFGV83l0/Bm48iad/7/s.kgxmqu0Zm', 'Your district name', 'Your institute name', '+8801789123456', 'images/user/1754972513869622.jpg', NULL, NULL, '2022-12-19 00:58:38', '2023-01-13 22:56:52'),
(4, 'aff 1', NULL, 'fsd.ramjans@gmail.com', '$2y$10$b5OFkYoCux8tLPQnSPvXb.qfJRyP4dPefA25D76qIGNzmXTxT5q3S', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 01:00:04', '2022-12-19 01:00:04'),
(7, 'aff 1', NULL, 'fsd.ramjanss@gmail.com', '$2y$10$nb.LxYLf6sBBS.6OwGtuyuD1wgM/ykvU9Ld4Jc3T5xPY0o10S9qjm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 01:01:02', '2022-12-19 01:01:02'),
(8, 'aff 1', NULL, 'fsd.ramjsanss@gmail.com', '$2y$10$3wFmgZMF.XTFMlMTpGcEauU3LdEyFVGqvYxrjUSQvY3jLwmL4mIG6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 01:01:09', '2022-12-19 01:01:09'),
(10, 'aff 1', NULL, 'fsd.ramjsangss@gmail.com', '$2y$10$VAIB4JBTdacFSw7uSoOWNONkyjyBof.9JRQxGcR8/Dtim3zyewNfK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 03:03:57', '2022-12-19 03:03:57'),
(19, 'Fsd', NULL, 'fsd.ramjaaaan@gmail.com', '$2y$10$JLdyfHHVK3N1HRqrviv17ediD1TClBHHamq587uUeBLgwzmjICXCW', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 04:58:11', '2022-12-19 04:58:11'),
(21, 'Fsd', NULL, 'fsd.ramjaaaana@gmail.com', '$2y$10$znLNlBHqHm75WvDzXyCOk.cJz9hc/2BNDg66DR/zsUeGjATpWkacO', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 04:59:51', '2022-12-19 04:59:51'),
(22, 'Fsddd', NULL, 'sdsfdsffdd@gmail.com', '$2y$10$qruGi7WEtLG/BrXyWGA9GuP1dAzJU9RQqukqJ1o6RQp7U8LGiG8K.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 05:02:23', '2022-12-19 05:02:23'),
(26, 'Fsddd', NULL, 'sdsfdsffssdd@gmail.com', '$2y$10$JyyV3DvQ6KYOz8H0iAYsVOUpgeNNfcIxbjvbnSp5UBj/CeSDB9Qry', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 05:04:40', '2022-12-19 05:04:40'),
(27, 'ggggg', NULL, 'gggg', '$2y$10$9EJwRzUUirSUbc6iBhaqj.RSrzgRfNClE14idkxZDGeCuwVbzw6g6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 05:10:28', '2022-12-19 05:10:28'),
(28, 'ggg', NULL, 'ggggg', '$2y$10$gDYhm/XyrQRh/b80SNHe9OekokbL.RaD5117OePZt/Tkpo9zNYTIy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 05:11:37', '2022-12-19 05:11:37'),
(29, 'gg', NULL, 'ggg', '$2y$10$cTIyz.jkU7AaLVx3gFb9HeVvb.i0rSiu3KWQKEJyFDInR942h3gBe', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 05:29:07', '2022-12-19 05:29:07'),
(31, 'user1', NULL, 'user3@gmail.com', '$2y$10$qJ697kEoy9vqATHxDkJqiuzwWm3aybtdDO6qx70X3TdQBJWHUrV02', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 14:04:35', '2023-02-15 14:04:35'),
(32, 'James Rana', NULL, 'quicktech10rana@gmail.com', '$2y$10$KuDckXZUGG4QZDFrCWkPFecLms1/Lp31KA/nJDrVqsOHa4RTSQGJq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 17:10:40', '2023-03-07 17:10:40'),
(33, 'Md Didarul', NULL, 'didarulalampapel@gmail', '$2y$10$VL.S5XbcXY6SlcfYZXN.D.N3lNMYF58jI9r/1GuDYSfGwvB8pwfMG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04 12:24:07', '2023-04-04 12:24:07'),
(34, 'Amin', NULL, 'saifmahmud727@gmail.com', '$2y$10$ARSxyih0LG6/BKPse1HgieFWthupcPHadeOFeXfRu17UOTYcjoFum', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 14:05:06', '2023-05-06 14:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `lesson_id`, `name`, `link`, `duration`, `image`, `free`, `status`, `created_at`, `updated_at`) VALUES
(43, 34, 'vn vnv nvn vn 111', 'http://son.example/ffd', '2.3 Hours', '/images/video/1674402904.mp4', 0, 1, '2023-01-22 09:55:04', '2023-01-22 09:55:04'),
(44, 34, 'vn vnv nvn vn 222', 'http://son.example/ffd', '2.3 Hours', '/images/video/1674402904.mp4', 0, 1, '2023-01-22 09:55:04', '2023-01-22 09:55:04'),
(45, 35, 'vn vnv nvn vn 111', 'http://son.example/ffd', '2.3 Hours', '/images/video/1674403115.png', 0, 1, '2023-01-22 09:58:35', '2023-01-22 09:58:35'),
(46, 35, 'vn vnv nvn vn 222', 'http://son.example/ffd', '2.3 Hours', '/images/video/1674403115.png', 0, 1, '2023-01-22 09:58:35', '2023-01-22 09:58:35'),
(47, 50, 'vn vnv nvn vn 111', 'http://son.example/ffd', '2.3 Hours', '/images/course/1675761381.png', 0, 1, '2023-02-07 16:16:21', '2023-02-07 16:16:21'),
(48, 50, 'vn vnv nvn vn 222', 'http://son.example/ffd', '2.3 Hours', '/images/course/1675761381.png', 0, 1, '2023-02-07 16:16:21', '2023-02-07 16:16:21'),
(52, 54, 'vn vnv nvn vn 222', 'http://son.example/ffd', '2.3 Hours', '/images/course/1675764773.png', 0, 1, '2023-02-07 17:12:53', '2023-02-07 17:12:53'),
(53, 55, 'vn vnv nvn vn 111', 'http://son.example/ffd', '2.3 Hours', '/images/course/1675767001.png', 0, 1, '2023-02-07 17:50:01', '2023-02-07 17:50:01'),
(54, 55, 'vn vnv nvn vn 222', 'http://son.example/ffd', '2.3 Hours', '/images/course/1675767001.png', 0, 1, '2023-02-07 17:50:01', '2023-02-07 17:50:01'),
(55, 56, 'vn vnv nvn vn 111', 'http://son.example/ffd', '2.3 Hours', '/images/course/1675771542.png', 0, 1, '2023-02-07 19:05:42', '2023-02-07 19:05:42'),
(56, 56, 'vn vnv nvn vn 222', 'http://son.example/ffd', '2.3 Hours', '/images/course/1675771542.png', 0, 1, '2023-02-07 19:05:42', '2023-02-07 19:05:42'),
(57, 62, 'লেনদেন ও ঘটনার ধারণা, লেনদেনের প্রধান শর্ত বা বৈশিষ্ট্য, হিসাব সমীকরণের পরিচিতি (A=L+OE)।', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/OtQmlzdvyRE\" title=\"হিসাববিজ্ঞানের পরিচিতি (Basic Accounting Part-1)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:03:45', NULL, 1, 1, '2023-02-13 12:25:07', '2024-12-04 06:06:04'),
(58, 62, 'হিসাব সমীকরণের উপর প্রভাব, ব্যবহারের উদ্দেশ্যে ক্রয়, বিক্রয়ের উদ্দেশ্যে ক্রয়, দেনাদার/প্রাপ্য, পাওনাদার/প্রদেয়।', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/OtQmlzdvyRE\" title=\"হিসাববিজ্ঞানের পরিচিতি (Basic Accounting Part-1)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:04:15', NULL, 1, 1, '2023-02-13 12:25:07', '2024-12-04 06:06:12'),
(71, 65, 'দুতরফা দাখিলা পদ্ধতির ধারণা ও ডেবিট/ক্রেডিট,  ডেবিট/ক্রেডিট নির্ণয়ের,  দুতরফা দাখিলা পদ্ধতির মূলনীতি ও বৈশিষ্ট্য।', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:03:45', NULL, 1, 1, '2023-02-15 12:47:58', '2024-10-29 06:47:38'),
(74, 66, 'হিসাব চক্র', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:03:45', NULL, 0, 1, '2023-02-15 12:50:07', '2024-10-29 06:48:14'),
(77, 67, 'এক তরফা দাখিলা পদ্ধতি', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:03:45', NULL, 0, 1, '2023-02-15 16:21:26', '2024-10-29 06:48:39'),
(78, 67, 'Video 2', 'https://www.example.com/video2', '00:04:15', '/images/video/1676452886.png', 0, 1, '2023-02-15 16:21:26', '2023-02-15 16:21:26'),
(79, 67, 'Video 3', 'https://www.example.com/video3', '00:05:30', '/images/video/1676452886.png', 0, 1, '2023-02-15 16:21:26', '2023-02-15 16:21:26'),
(83, 69, 'মূলধন ও মুনাফা জাতীয় লেনদেন', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:03:45', NULL, 0, 1, '2023-02-15 16:54:34', '2024-10-29 06:50:01'),
(84, 69, 'বিলম্বিত মুনাফা জাতীয় ব্যয়', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:04:15', NULL, 0, 1, '2023-02-15 16:54:34', '2024-10-29 06:50:21'),
(85, 69, 'মূলধন ও মুনাফা জাতীয় হিসাবের তালিকা', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '00:05:30', NULL, 0, 1, '2023-02-15 16:54:34', '2024-10-29 06:50:36'),
(86, 70, 'Video 1', 'https://www.example.com/video1', '00:03:45', '/images/video/1676455001.png', 0, 1, '2023-02-15 16:56:41', '2023-02-15 16:56:41'),
(87, 70, 'Video 2', 'https://www.example.com/video2', '00:04:15', '/images/video/1676455001.png', 0, 1, '2023-02-15 16:56:41', '2023-02-15 16:56:41'),
(88, 70, 'Video 3', 'https://www.example.com/video3', '00:05:30', '/images/video/1676455001.png', 0, 1, '2023-02-15 16:56:41', '2023-02-15 16:56:41'),
(89, 71, 'Video 1', 'https://www.example.com/video1', '00:03:45', '/images/video/1676455106.png', 0, 1, '2023-02-15 16:58:26', '2023-02-15 16:58:26'),
(90, 71, 'Video 2', 'https://www.example.com/video2', '00:04:15', '/images/video/1676455106.png', 0, 1, '2023-02-15 16:58:26', '2023-02-15 16:58:26'),
(91, 71, 'Video 3', 'https://www.example.com/video3', '00:05:30', '/images/video/1676455106.png', 0, 1, '2023-02-15 16:58:26', '2023-02-15 16:58:26'),
(92, 72, 'Video 1', 'https://www.example.com/video1', '00:03:45', '/images/video/1676455113.png', 0, 1, '2023-02-15 16:58:33', '2023-02-15 16:58:33'),
(93, 72, 'Video 2', 'https://www.example.com/video2', '00:04:15', '/images/video/1676455113.png', 0, 1, '2023-02-15 16:58:33', '2023-02-15 16:58:33'),
(94, 72, 'Video 3', 'https://www.example.com/video3', '00:05:30', '/images/video/1676455113.png', 0, 1, '2023-02-15 16:58:33', '2023-02-15 16:58:33'),
(95, 73, 'Video 1', 'https://www.example.com/video1', '00:03:45', '/images/video/1676455201.png', 0, 1, '2023-02-15 17:00:01', '2023-02-15 17:00:01'),
(96, 73, 'Video 2', 'https://www.example.com/video2', '00:04:15', '/images/video/1676455201.png', 0, 1, '2023-02-15 17:00:01', '2023-02-15 17:00:01'),
(97, 73, 'Video 3', 'https://www.example.com/video3', '00:05:30', '/images/video/1676455201.png', 0, 1, '2023-02-15 17:00:01', '2023-02-15 17:00:01'),
(98, 74, 'Video 1', 'https://www.example.com/video1', '00:03:45', '/images/video/1676458522.png', 0, 1, '2023-02-15 17:55:22', '2023-02-15 17:55:22'),
(99, 74, 'Video 2', 'https://www.example.com/video2', '00:04:15', '/images/video/1676458522.png', 0, 1, '2023-02-15 17:55:22', '2023-02-15 17:55:22'),
(100, 74, 'Video 3', 'https://www.example.com/video3', '00:05:30', '/images/video/1676458522.png', 0, 1, '2023-02-15 17:55:22', '2023-02-15 17:55:22'),
(103, 77, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 1', 'https://www.youtube.com/watch?v=Ao-6N8AHbu4&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8', '00:03:45', '/images/video/1676518361.png', 0, 1, '2023-02-16 10:32:41', '2023-02-16 10:32:41'),
(104, 77, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 2', 'https://www.youtube.com/watch?v=UhwZ_H0wAC0&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8&index=2', '00:04:15', '/images/video/1676518361.png', 0, 1, '2023-02-16 10:32:41', '2023-02-16 10:32:41'),
(105, 77, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 3', 'https://www.youtube.com/watch?v=4XQtX5UcfbM&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8&index=3', '00:05:30', '/images/video/1676518361.png', 0, 1, '2023-02-16 10:32:41', '2023-02-16 10:32:41'),
(106, 78, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 1', 'https://www.youtube.com/watch?v=Ao-6N8AHbu4&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8', '00:03:45', '/images/video/1676518380.png', 0, 1, '2023-02-16 10:33:00', '2023-02-16 10:33:00'),
(107, 78, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 2', 'https://www.youtube.com/watch?v=UhwZ_H0wAC0&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8&index=2', '00:04:15', '/images/video/1676518380.png', 0, 1, '2023-02-16 10:33:00', '2023-02-16 10:33:00'),
(108, 78, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 3', 'https://www.youtube.com/watch?v=4XQtX5UcfbM&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8&index=3', '00:05:30', '/images/video/1676518380.png', 0, 1, '2023-02-16 10:33:00', '2023-02-16 10:33:00'),
(109, 78, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 1', 'https://www.youtube.com/watch?v=Ao-6N8AHbu4&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8', '00:54:45', '/images/video/1676529926.png', 0, 1, '2023-02-16 13:45:26', '2023-02-16 13:45:26'),
(110, 78, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 2', 'https://www.youtube.com/watch?v=UhwZ_H0wAC0&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8&index=2', '00:44:15', '/images/video/1676529926.png', 0, 1, '2023-02-16 13:45:26', '2023-02-16 13:45:26'),
(111, 78, '৫ম শ্রেণি বাংলা | প্রাথমিক বৃত্তি পরীক্ষা সাজেশন ২০২২ | Primary Scholarship Exam 3', 'https://www.youtube.com/watch?v=4XQtX5UcfbM&list=PLuaHF6yUT-72PCi9tRT7Q7Pml_RQwaHJ8&index=3', '00:30:30', '/images/video/1676529926.png', 0, 1, '2023-02-16 13:45:26', '2023-02-16 13:45:26'),
(112, 78, 'HSC\'22 ফাইনাল রিভিশন LIVE | Bangla 1st Paper', 'https://www.youtube.com/watch?v=8vTM8-7LtMg&list=PLuaHF6yUT-72Hh-w8FAFCFyFZ5gts3oUy', '03:05:35', '/images/video/1676540225.png', 0, 1, '2023-02-16 16:37:05', '2023-02-16 16:37:05'),
(113, 79, 'new video', 'https://www.youtube.com/watch?v=8vTM8-7LtMg&list=PLuaHF6yUT-72Hh-w8FAFCFyFZ5gts3oUy', '10', 'frontend/img/course/course-1.jpg', 0, 1, '2024-04-28 00:19:46', '2024-04-28 00:19:46'),
(114, 80, 'new video', '#', '10', NULL, 0, 1, '2024-04-29 02:15:03', '2024-04-29 02:15:03'),
(125, 39, 'Introduction', '<iframe width=\"759\" height=\"427\" src=\"https://www.youtube.com/embed/ABjCVTBnO_U\" title=\"What is Accounting?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 1, 1, '2024-08-08 10:27:16', '2024-08-11 08:30:09'),
(127, 39, 'Adjusting Entries', '<iframe width=\"759\" height=\"427\" src=\"https://www.youtube.com/embed/ABjCVTBnO_U\" title=\"What is Accounting?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-08-08 10:45:31', '2024-08-08 10:46:43'),
(128, 39, 'Elementary Discussion (সমন্বয় জাবেদা)', '<iframe width=\"759\" height=\"427\" src=\"https://www.youtube.com/embed/ABjCVTBnO_U\" title=\"What is Accounting?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-08-08 10:46:02', '2024-08-08 10:46:49'),
(129, 39, 'Prepaid Expense (অগ্রিম ব্যয় সমন্বয়)', '<iframe width=\"759\" height=\"427\" src=\"https://www.youtube.com/embed/ABjCVTBnO_U\" title=\"What is Accounting?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-08-08 10:46:25', '2024-08-08 10:46:55'),
(130, 40, 'Inventory Costing', '<iframe width=\"759\" height=\"427\" src=\"https://www.youtube.com/embed/ABjCVTBnO_U\" title=\"What is Accounting?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 1, 1, '2024-08-08 10:58:46', '2024-08-11 08:31:30'),
(131, 40, 'Financial Statements', '<iframe width=\"759\" height=\"427\" src=\"https://www.youtube.com/embed/ABjCVTBnO_U\" title=\"What is Accounting?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-08-08 10:58:46', '2024-08-08 10:58:46'),
(132, 40, 'Adjusting Entries', '<iframe width=\"759\" height=\"427\" src=\"https://www.youtube.com/embed/ABjCVTBnO_U\" title=\"What is Accounting?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-08-08 10:58:46', '2024-08-08 10:58:46'),
(134, 43, 'হিসাববিজ্ঞানের উৎপত্তি ও ক্রমবিকাশ, হিসাববিজ্ঞান কাকে বলে, হিসাব বিজ্ঞান প্রক্রিয়া ও হিসাব তথ্যের ব্যবহারকারী।', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/bG963a00ZvM\" title=\"Introduction to Accounting\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 1, 1, '2024-08-11 14:55:45', '2024-10-24 07:04:47'),
(136, 53, 'Test Video 2', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/5tkA2LSOKpM\" title=\"The 5 best online teaching platforms for virtual learning\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 1, 1, '2024-08-11 15:12:03', '2024-08-11 15:12:09'),
(137, 53, 'Test Video 3', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/5tkA2LSOKpM\" title=\"The 5 best online teaching platforms for virtual learning\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-08-11 15:12:03', '2024-08-11 15:12:03'),
(138, 53, 'Test Video 4', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/5tkA2LSOKpM\" title=\"The 5 best online teaching platforms for virtual learning\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-08-11 15:12:03', '2024-08-11 15:12:03'),
(139, 53, 'Test Video 5', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/ReM0CvvE1gs\" title=\"Class 1 Bangla - ১ম শ্রেণি বাংলা | আমার পরিচয় | পাঠ ১, ২, ৩\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 1, 1, '2024-08-11 15:12:03', '2024-08-11 15:12:17'),
(140, 44, 'লেনদেন ও ঘটনা,  লেনদেনের প্রধান শর্ত বা বৈশিষ্ট্য, হিসাব সমীকরণের পরিচিতি (A=L+OE),  হিসাব সমীকরণের উপর প্রভাব, ব্যবহারের উদ্দেশ্যে ক্রয়, বিক্রয়ের উদ্দেশ্যে ক্রয়, দেনাদার/প্রাপ্য, পাওনাদার/প্রদেয়।', '<iframe width=\"966\" height=\"522\" src=\"https://www.youtube.com/embed/d-IwBrLt2aI\" title=\"Arshinogor | আরশীনগর  | Saif Zohan | Lalon Geeti | Folk Studio Bangla 2024\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-10-24 07:07:31', '2024-10-24 07:11:04'),
(141, 45, '*প্রমান্য দলিল পত্রাদি (চালান, ভাউচার, ক্যাশমেমো, ডেবিট নোট, ক্রেডিট নোট)', '<iframe width=\"966\" height=\"522\" src=\"https://www.youtube.com/embed/d-IwBrLt2aI\" title=\"Arshinogor | আরশীনগর  | Saif Zohan | Lalon Geeti | Folk Studio Bangla 2024\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-10-24 07:08:46', '2024-10-24 07:08:46'),
(142, 61, 'হিসাববিজ্ঞানের উৎপত্তি ও ক্রমবিকাশ, হিসাববিজ্ঞান কাকে বলে ও হিসাব বিজ্ঞান প্রক্রিয়া, হিসাব তথ্যের ব্যবহারকারী', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/OtQmlzdvyRE\" title=\"হিসাববিজ্ঞানের পরিচিতি (Basic Accounting Part-1)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 1, 1, '2024-10-29 06:21:32', '2024-12-04 06:05:54'),
(143, 63, 'চালান, ভাউচার, ক্যাশমেমো, ডেবিট নোট, ক্রেডিট নোট)', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-10-29 06:42:48', '2024-10-29 06:42:48'),
(144, 64, 'হিসাবের ছক (T-ছক বা সনাতন ছক, চলমান জের বা আধুনিক ছক)', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-10-29 06:43:22', '2024-10-29 06:43:22'),
(145, 64, 'সনাতন পদ্ধতি, আধুনিক পদ্ধতি বা সমীকরণ পদ্ধতি', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-10-29 06:43:46', '2024-10-29 06:43:46'),
(146, 68, 'কারবারি বাট্টা ও নগদ বাট্টার ধারণা', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/dikjQueenWo\" title=\"How to make Vox style Map Animation in Capcut\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, NULL, 0, 1, '2024-10-29 06:49:18', '2024-10-29 06:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `weekschedules`
--

CREATE TABLE `weekschedules` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `weekday` varchar(50) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `location` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `weekschedules`
--

INSERT INTO `weekschedules` (`id`, `course_id`, `title`, `weekday`, `start_time`, `end_time`, `location`, `created_at`, `updated_at`) VALUES
(1, 84, 'Theory', 'SUN', '11:00:00', '13:00:00', '#', '2024-06-10 06:16:37', '2024-06-10 22:26:58'),
(2, 84, 'Lab', 'TUE', '14:00:00', '17:00:00', NULL, '2024-06-10 06:16:37', '2024-06-10 06:16:37'),
(3, 84, 'Theory', 'MON', '14:00:00', '16:00:00', '#', '2024-06-10 22:43:33', '2024-06-10 22:44:49'),
(4, 85, 'Theory', 'MON', '02:00:00', '04:00:00', NULL, '2024-06-10 23:18:41', '2024-06-10 23:18:41'),
(5, 85, 'Lab', 'WED', '02:00:00', '05:00:00', '#', '2024-06-10 23:18:59', '2024-06-10 23:18:59'),
(6, 86, 'Throry', 'MON', '14:00:00', '16:00:00', '#', '2024-06-10 23:54:22', '2024-06-10 23:55:25'),
(7, 86, 'Lab', 'WED', '14:00:00', '17:00:00', NULL, '2024-06-10 23:54:43', '2024-06-10 23:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '2023-01-14 00:05:13', '2023-01-14 00:05:13'),
(4, 2, 1, '2023-01-14 00:40:45', '2023-01-14 00:40:45'),
(5, 2, 1, '2023-01-14 00:40:46', '2023-01-14 00:40:46'),
(6, 2, 1, '2023-01-14 00:40:48', '2023-01-14 00:40:48'),
(7, 2, 1999, '2023-01-14 00:40:53', '2023-01-14 00:40:53'),
(8, 2, 1999, '2023-01-14 00:40:55', '2023-01-14 00:40:55'),
(9, 2, 1999999, '2023-01-14 00:40:57', '2023-01-14 00:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `writtens`
--

CREATE TABLE `writtens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writtens`
--

INSERT INTO `writtens` (`id`, `instructor_id`, `course_id`, `name`, `answer`, `points`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'q 51555555', 'qn51555555', 11, NULL, '2022-12-10 03:46:06', '2023-02-07 17:45:42'),
(2, 1, 4, 'qwe', 'sdadsads', 2, NULL, '2022-12-10 03:46:06', '2022-12-10 03:46:06'),
(3, 2, 5, 'q 51555555', 'qn51555555', 11, NULL, '2022-12-14 12:14:07', '2022-12-15 12:39:49'),
(4, 2, 5, 'q 512', 'qn512', 1, NULL, '2022-12-14 12:14:07', '2022-12-14 12:14:07'),
(5, 2, 5, 'q 51555555', 'qn51555555', 11, NULL, '2022-12-19 03:17:33', '2023-01-18 05:16:55'),
(6, 2, 5, 'q 512', 'qn512', 1, NULL, '2022-12-19 03:17:33', '2022-12-19 03:17:33'),
(14, 3, 17, 'gg', 'gggg', 1, NULL, '2023-01-18 21:37:33', '2023-01-18 21:37:33'),
(15, 3, 17, 'gg', 'gggg', 1, NULL, '2023-01-18 21:37:36', '2023-01-18 21:37:36'),
(16, 3, 17, 'gg', 'gggg', 1, NULL, '2023-01-18 21:37:37', '2023-01-18 21:37:37'),
(17, 3, 17, 'gg', 'gggg', 1, NULL, '2023-01-18 21:37:38', '2023-01-18 21:37:38'),
(18, 3, 17, 'gg', 'gggg', 1, NULL, '2023-01-18 21:37:43', '2023-01-18 21:37:43'),
(22, 3, 17, 'g', 'g', 1, NULL, '2023-01-18 21:38:35', '2023-01-18 21:38:35'),
(24, 3, 29, 'gg', 'gg', 1, NULL, '2023-01-18 22:21:04', '2023-01-18 22:21:04'),
(25, 3, 29, 'gg', 'gg', 1, NULL, '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(28, 9, 5, 'q 51', 'qn51', 1, NULL, '2023-02-18 12:35:43', '2023-02-18 12:35:43'),
(29, 9, 5, 'q 512', 'qn512', 1, NULL, '2023-02-18 12:35:43', '2023-02-18 12:35:43'),
(30, 9, 78, 'q 51gg', 'g', 1, NULL, '2023-02-18 12:35:55', '2023-02-26 13:57:40'),
(31, 9, 78, 'q 512', 'gg', 1, NULL, '2023-02-18 12:35:55', '2023-02-26 13:53:20'),
(33, 9, 78, 'What is Bangladeshi currency name?', 'Taka', 1, 'images/written/1758872750181433.png', '2023-02-26 13:09:27', '2023-02-26 14:11:49'),
(36, 10, 78, 'gg', 'gg', 1, 'images/written/1758875913086418.jpg', '2023-02-26 13:59:44', '2023-02-26 13:59:44'),
(37, 10, 78, 'gg', 'gg', 1, 'images/written/1758877168839604.pdf', '2023-02-26 14:19:41', '2023-02-26 14:19:41'),
(38, 10, 78, 'g', 'g', 1, 'images/written/1758882532632287.pdf', '2023-02-26 15:44:56', '2023-02-26 15:44:56'),
(39, 10, 78, 'gg', 'gg', 1, 'images/written/1758882614337825.pdf', '2023-02-26 15:46:14', '2023-02-26 15:46:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_items`
--
ALTER TABLE `about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_tabs`
--
ALTER TABLE `about_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adcategories`
--
ALTER TABLE `adcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_role_id_foreign` (`role_id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliates_email_unique` (`email`),
  ADD UNIQUE KEY `affiliates_phone_unique` (`phone`);

--
-- Indexes for table `affiliate_click_counts`
--
ALTER TABLE `affiliate_click_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_instructor_id_foreign` (`instructor_id`),
  ADD KEY `authors_course_id_foreign` (`course_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_infos`
--
ALTER TABLE `billing_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `childsubcategories`
--
ALTER TABLE `childsubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childsubcategories_childcategory_id_foreign` (`childcategory_id`);

--
-- Indexes for table `company_infos`
--
ALTER TABLE `company_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `cv_achievements`
--
ALTER TABLE `cv_achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_education`
--
ALTER TABLE `cv_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_interests`
--
ALTER TABLE `cv_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_languages`
--
ALTER TABLE `cv_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_references`
--
ALTER TABLE `cv_references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_skills`
--
ALTER TABLE `cv_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_socials`
--
ALTER TABLE `cv_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_email_unique` (`email`),
  ADD UNIQUE KEY `instructors_phone_unique` (`phone`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liveclasses`
--
ALTER TABLE `liveclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq`
--
ALTER TABLE `mcq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_options`
--
ALTER TABLE `mcq_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`student_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`course_id`,`video_id`);

--
-- Indexes for table `promovideos`
--
ALTER TABLE `promovideos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizsubmits`
--
ALTER TABLE `quizsubmits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizsubmit_answers`
--
ALTER TABLE `quizsubmit_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_options_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_replies`
--
ALTER TABLE `review_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_links`
--
ALTER TABLE `share_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentbenefits`
--
ALTER TABLE `studentbenefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekschedules`
--
ALTER TABLE `weekschedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writtens`
--
ALTER TABLE `writtens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writtens_instructor_id_foreign` (`instructor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_items`
--
ALTER TABLE `about_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `about_tabs`
--
ALTER TABLE `about_tabs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adcategories`
--
ALTER TABLE `adcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `affiliate_click_counts`
--
ALTER TABLE `affiliate_click_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billing_infos`
--
ALTER TABLE `billing_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `childsubcategories`
--
ALTER TABLE `childsubcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company_infos`
--
ALTER TABLE `company_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `cv_achievements`
--
ALTER TABLE `cv_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cv_education`
--
ALTER TABLE `cv_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cv_interests`
--
ALTER TABLE `cv_interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cv_languages`
--
ALTER TABLE `cv_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cv_references`
--
ALTER TABLE `cv_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cv_skills`
--
ALTER TABLE `cv_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cv_socials`
--
ALTER TABLE `cv_socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `liveclasses`
--
ALTER TABLE `liveclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mcq`
--
ALTER TABLE `mcq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_options`
--
ALTER TABLE `mcq_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `promovideos`
--
ALTER TABLE `promovideos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quizsubmits`
--
ALTER TABLE `quizsubmits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `quizsubmit_answers`
--
ALTER TABLE `quizsubmit_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `review_replies`
--
ALTER TABLE `review_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `share_links`
--
ALTER TABLE `share_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studentbenefits`
--
ALTER TABLE `studentbenefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `weekschedules`
--
ALTER TABLE `weekschedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `writtens`
--
ALTER TABLE `writtens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `authors_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`);

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `childsubcategories`
--
ALTER TABLE `childsubcategories`
  ADD CONSTRAINT `childsubcategories_childcategory_id_foreign` FOREIGN KEY (`childcategory_id`) REFERENCES `childcategories` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD CONSTRAINT `quiz_options_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `writtens`
--
ALTER TABLE `writtens`
  ADD CONSTRAINT `writtens_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
