-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2022 at 05:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdl`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_author` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `author_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `title`, `first_name`, `last_name`, `department`, `organization`, `email`, `about_author`, `status`, `author_photo`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', 'umesh', 'Kumar', 'backend', 'hackerkernel', 'umesh@gmail.com', 'Hii I am umesh kumar', 1, '16590560988298.png', '2022-07-28 19:24:58', '2022-07-28 19:24:58'),
(2, 'Mr.', 'Mohad', 'Avesh', 'Journalist', 'MNNIT Allahabad', 'mohad@gmail.com', 'This is moad avesh', 1, '16590562388551.jpg', '2022-07-28 19:27:18', '2022-07-28 19:27:18'),
(3, 'Mr.', 'Rajeev', 'Shreevastav', 'Journalist', 'IIT Rurkee', 'rajeev@gmail.com', 'dfdfdfd', 1, '16590563125455.jpg', '2022-07-28 19:28:32', '2022-07-28 19:28:32'),
(4, 'Mr.', 'Triyambak', 'Tiwari', 'backend', 'MNNIT Allahabad', 'triyambak@gmail.com', 'This is triyambak', 1, '16590563908961.jpg', '2022-07-28 19:29:50', '2022-07-28 19:29:50'),
(5, 'Mr.', 'Santosh', 'John', 'Accountant', 'MNNIT Allahabad', 'santosh@gmail.com', 'dfdfd', 1, '16590564719090.jpg', '2022-07-28 19:31:11', '2022-07-28 19:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `doi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_book` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `open_access` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `total_downloads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_title`, `book_type`, `isbn`, `month`, `year`, `doi`, `about_book`, `keywords`, `cover_photo`, `full_doc`, `status`, `open_access`, `created_at`, `updated_at`, `slug`, `total_reads`, `total_downloads`, `unique_id`) VALUES
(1, 'Book Title One', '2', 'dfdf', '2', 1999, 'sdsd', '<p>xzxz</p>', 'dfdfd', '16594540104047.jpg', '16594540105837.pdf', 1, 1, '2022-08-02 09:56:50', '2022-08-03 21:58:40', 'book-title-one', 0, 0, NULL),
(2, 'Book Title One', '1', 'dfdf', '2', 1999, 'sdsd', '<p>xzxz</p>', 'ffdfd', '16594540615391.jpg', '16594540613089.pdf', 1, 1, '2022-08-02 09:57:41', '2022-08-02 09:57:41', 'book-title-one-1', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

CREATE TABLE `book_authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commons`
--

CREATE TABLE `commons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commons`
--

INSERT INTO `commons` (`id`, `name`, `value`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'visitors', '1003', NULL, NULL, '2022-09-02 22:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `volume_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `issue_name`, `month`, `status`, `volume_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'January', 1, 2, '2022-07-28 19:34:10', '2022-07-28 19:34:10'),
(2, '2', 'Febuary', 1, 2, '2022-07-28 19:34:37', '2022-07-28 19:34:37'),
(3, '3', 'march', 1, 2, '2022-07-28 19:34:54', '2022-07-28 19:34:54'),
(4, '1', 'January', 1, 3, '2022-07-28 19:38:55', '2022-07-28 19:38:55'),
(5, '2', 'Febuary', 1, 3, '2022-07-28 19:39:13', '2022-07-28 19:39:13'),
(6, '3', 'march', 1, 3, '2022-07-28 19:39:31', '2022-07-28 19:39:31'),
(7, '1', 'January', 1, 4, '2022-07-28 19:40:07', '2022-07-28 19:40:07'),
(8, '2', 'Febuary', 1, 4, '2022-07-28 19:40:23', '2022-07-28 19:40:23'),
(9, '3', 'march', 1, 4, '2022-07-28 19:40:38', '2022-07-28 19:40:38'),
(10, '1', 'January', 1, 5, '2022-07-28 19:41:12', '2022-07-28 19:41:12'),
(11, '2', 'Febuary', 1, 5, '2022-07-28 19:41:31', '2022-07-28 19:41:44'),
(12, '3', 'march', 1, 5, '2022-07-28 19:42:06', '2022-07-28 19:42:06'),
(13, '1', 'January', 1, 6, '2022-07-28 19:46:18', '2022-07-28 19:46:18'),
(14, '2', 'Febuary', 1, 6, '2022-07-28 19:46:32', '2022-07-28 19:46:32'),
(15, '3', 'march', 1, 6, '2022-07-28 19:46:46', '2022-07-28 19:46:46'),
(16, '1', 'January', 1, 7, '2022-07-28 19:47:08', '2022-07-28 19:47:08'),
(17, '2', 'Febuary', 1, 7, '2022-07-28 19:49:46', '2022-07-28 19:49:46'),
(18, '3', 'march', 1, 7, '2022-07-28 19:50:01', '2022-07-28 19:50:01'),
(19, '1', 'January', 1, 8, '2022-07-28 19:50:25', '2022-07-28 19:50:25'),
(20, '2', 'Febuary', 1, 8, '2022-07-28 19:50:39', '2022-07-28 19:50:39'),
(21, '3', 'march', 1, 8, '2022-07-28 19:50:52', '2022-07-28 19:50:52'),
(22, '1', 'January', 1, 11, '2022-07-28 19:52:40', '2022-07-28 19:52:40'),
(23, '2', 'Febuary', 1, 11, '2022-07-28 19:52:57', '2022-07-28 19:52:57'),
(24, '3', 'march', 1, 11, '2022-07-28 19:53:18', '2022-07-28 19:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `journal_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `journal_title`, `status`, `created_at`, `updated_at`, `slug`, `journal_url`, `unique_id`) VALUES
(1, 'Mazedan Computer Engineering Transactions', 1, '2022-07-28 19:32:12', '2022-07-28 19:32:12', 'mazedan-computer-engineering-transactions', 'www.google.com', NULL),
(2, 'Journal test two', 1, '2022-07-28 19:36:16', '2022-08-04 22:34:47', 'journal-test-two', 'www.google.com', 'JTT'),
(3, 'journal test three', 1, '2022-07-28 19:36:37', '2022-07-28 19:36:37', 'journal-test-three', 'www.google.com', NULL),
(4, 'journal test four', 1, '2022-07-28 19:37:01', '2022-07-28 19:37:01', 'journal-test-four', 'www.google.com', NULL),
(5, 'journal test five', 1, '2022-07-28 19:37:25', '2022-08-04 20:06:17', 'journal-test-five', 'www.google.com', 'JTF');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2022_06_16_002954_create_journals_table', 1),
(19, '2022_06_16_005939_create_volumes_table', 1),
(20, '2022_06_16_010023_create_issues_table', 1),
(21, '2022_06_17_023320_create_authors_table', 1),
(22, '2022_06_26_045248_create_proceedings_table', 1),
(23, '2022_06_26_091653_create_proceeding_writers_table', 1),
(24, '2022_07_03_074746_create_proceeding_editors_table', 1),
(25, '2022_07_04_034811_create_books_table', 1),
(26, '2022_07_04_034946_create_book_authors_table', 1),
(27, '2022_07_05_031309_add_column_slug_to_books_table', 1),
(28, '2022_07_05_161858_add_column_journal_url_to_journals_table', 1),
(29, '2022_07_05_164723_create_publish_articles_table', 1),
(30, '2022_07_07_021022_create_publish_article_authors_table', 1),
(31, '2022_07_12_182816_add_column_added_by_to_publish_articles_table', 1),
(32, '2022_07_22_031911_create_types_table', 1),
(33, '2022_07_23_184926_add_column_unique_id_to_proceedings_table', 1),
(34, '2022_08_13_051633_create_commons_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proceedings`
--

CREATE TABLE `proceedings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proceeding_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `doi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_proceeding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `open_access` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `total_downloads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proceedings`
--

INSERT INTO `proceedings` (`id`, `proceeding_title`, `book_type`, `isbn`, `month`, `year`, `doi`, `about_proceeding`, `keywords`, `cover_photo`, `full_doc`, `status`, `open_access`, `created_at`, `updated_at`, `slug`, `total_reads`, `total_downloads`, `unique_id`) VALUES
(1, 'Proceeding test one', '7', '12345678', '1', 2021, 'fgfgf', 'dfdfdf', 'dfdfd', '16591511686679.jpg', '16591511686151.pdf', 1, 1, '2022-07-29 21:49:28', '2022-07-29 21:49:28', 'proceeding-test-one', 0, 0, 'EBSPTO21'),
(2, 'Proceeding Title Example Two', '8', '1123333', '1', 2020, 'dsdsd', 'fdfdfd', 'dfdf', '16594533795704.jpg', '16594533795890.pdf', 1, 1, '2022-08-02 09:46:19', '2022-08-02 09:46:19', 'proceeding-title-example-two', 0, 0, 'CPPTET20');

-- --------------------------------------------------------

--
-- Table structure for table `proceeding_editors`
--

CREATE TABLE `proceeding_editors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proceeding_id` bigint(20) UNSIGNED NOT NULL,
  `editor_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proceeding_editors`
--

INSERT INTO `proceeding_editors` (`id`, `proceeding_id`, `editor_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, '2022-07-29 21:49:28', '2022-07-29 21:49:28'),
(2, 1, 1, NULL, '2022-07-29 21:49:28', '2022-07-29 21:49:28'),
(3, 1, 2, NULL, '2022-07-29 21:49:28', '2022-07-29 21:49:28'),
(4, 2, 2, NULL, '2022-08-02 09:46:19', '2022-08-02 09:46:19'),
(5, 2, 3, NULL, '2022-08-02 09:46:19', '2022-08-02 09:46:19'),
(6, 2, 4, NULL, '2022-08-02 09:46:19', '2022-08-02 09:46:19'),
(7, 2, 5, NULL, '2022-08-02 09:46:19', '2022-08-02 09:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `publish_articles`
--

CREATE TABLE `publish_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_to` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `volume_id` bigint(20) UNSIGNED DEFAULT NULL,
  `issue_id` bigint(20) UNSIGNED DEFAULT NULL,
  `chapter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paper_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_author` bigint(20) UNSIGNED DEFAULT NULL,
  `abstract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_type` tinyint(4) DEFAULT NULL,
  `open_access` tinyint(4) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `total_downloads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publish_articles`
--

INSERT INTO `publish_articles` (`id`, `title`, `slug`, `submit_to`, `type`, `status`, `volume_id`, `issue_id`, `chapter`, `doi`, `citation`, `paper_id`, `page_from`, `page_to`, `main_author`, `abstract`, `keywords`, `references`, `article_type`, `open_access`, `file`, `total_reads`, `total_downloads`, `created_at`, `updated_at`, `added_by`) VALUES
(1, 'publish journal aritcal test first', 'publish-journal-aritcal-test-first', 2, 'journal', 1, 3, 4, NULL, '12345', '7hhty56', 'JTT.1.1.001', '1', '15', 2, '<p>this is test</p>', 'journal artical, first journal artical', '<p>rtrtrtr</p>', 1, 1, '16590608207745.pdf', 0, 0, '2022-07-28 20:43:40', '2022-07-28 20:43:40', NULL),
(2, 'Performance improvement of light vehicle suspension system under variable operating conditions', 'performance-improvement-of-light-vehicle-suspension-system-under-variable-operating-conditions', 1, 'thesis', 1, NULL, NULL, NULL, NULL, NULL, 'DT001', NULL, NULL, 2, 'cxcxcx', 'xcxcc', NULL, 11, 1, NULL, 0, 0, '2022-07-29 22:06:48', '2022-07-29 22:08:10', NULL),
(3, 'Book Title One', 'book-title-one', 2, 'book', 1, NULL, NULL, NULL, NULL, NULL, 'BBTO99', NULL, NULL, 2, '<p>xzxz</p>', 'ffdfd', NULL, NULL, 1, NULL, 0, 0, '2022-08-03 11:41:48', '2022-08-03 12:50:33', NULL),
(4, 'Book Title Two', 'book-title-two', 1, 'book', 1, NULL, NULL, NULL, NULL, NULL, 'BBTT99', NULL, NULL, 4, '<p>dfdfdf</p>', 'dfdfd', NULL, NULL, 1, NULL, 0, 0, '2022-08-03 12:52:03', '2022-08-03 21:58:40', 1),
(5, 'oke', 'oke', 1, 'journal', 1, 2, 1, NULL, '34', '99', 'MCET.2.1.001', '1', '11', 4, '<p>k</p>', 'okk', '<p>okk</p>', 1, 1, '16608465734932.pdf', 0, 0, '2022-08-18 12:46:13', '2022-08-18 12:46:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publish_article_authors`
--

CREATE TABLE `publish_article_authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publish_article_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publish_article_authors`
--

INSERT INTO `publish_article_authors` (`id`, `publish_article_id`, `author_id`, `type`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 1, '2022-07-28 20:43:40', '2022-07-28 20:43:40'),
(2, 1, 2, NULL, 2, '2022-07-28 20:43:40', '2022-07-28 20:43:40'),
(3, 1, 3, NULL, 3, '2022-07-28 20:43:40', '2022-07-28 20:43:40'),
(19, 2, 1, NULL, 1, '2022-08-03 10:19:35', '2022-08-03 10:19:35'),
(20, 2, 2, NULL, 2, '2022-08-03 10:19:35', '2022-08-03 10:19:35'),
(21, 2, 3, NULL, 3, '2022-08-03 10:19:35', '2022-08-03 10:19:35'),
(22, 2, 4, NULL, 4, '2022-08-03 10:19:35', '2022-08-03 10:19:35'),
(26, 3, 2, NULL, 1, '2022-08-03 12:50:33', '2022-08-03 12:50:33'),
(27, 3, 3, NULL, 2, '2022-08-03 12:50:33', '2022-08-03 12:50:33'),
(28, 3, 4, NULL, 3, '2022-08-03 12:50:33', '2022-08-03 12:50:33'),
(41, 4, 2, NULL, 1, '2022-08-03 21:58:40', '2022-08-03 21:58:40'),
(42, 4, 3, NULL, 2, '2022-08-03 21:58:40', '2022-08-03 21:58:40'),
(43, 4, 4, NULL, 3, '2022-08-03 21:58:40', '2022-08-03 21:58:40'),
(44, 5, 4, NULL, 1, '2022-08-18 12:46:13', '2022-08-18 12:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `theses`
--

CREATE TABLE `theses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thesis_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `doi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_thesis` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `open_access` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `total_downloads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theses`
--

INSERT INTO `theses` (`id`, `thesis_title`, `organization`, `organization_url`, `type`, `isbn`, `month`, `year`, `doi`, `about_thesis`, `keywords`, `cover_photo`, `full_doc`, `status`, `open_access`, `created_at`, `updated_at`, `slug`, `total_reads`, `total_downloads`, `unique_id`) VALUES
(1, NULL, 'MNNIT Allahabad', 'https://www.google.co.in/', NULL, '12345678', '1', 2021, 'fgfgf', NULL, NULL, '16591522082454.png', '16591522087149.pdf', 1, NULL, '2022-07-29 22:06:48', '2022-07-29 22:06:48', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thesis_authors`
--

CREATE TABLE `thesis_authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thesis_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Journal Article', 'publish_article', NULL, NULL),
(2, 'Conference Paper', 'publish_article', NULL, NULL),
(3, 'Book chapter', 'publish_article', NULL, NULL),
(4, 'Edited Book', 'publish_article', NULL, NULL),
(5, 'Masters Thesis', 'publish_article', NULL, NULL),
(6, ' Doctoral Thesis', 'publish_article', NULL, NULL),
(7, 'Edited Book Series', 'proceeding', NULL, NULL),
(8, 'Conference proceeding', 'proceeding', NULL, NULL),
(9, 'Text Book', 'book', NULL, NULL),
(10, 'E-Book', 'book', NULL, NULL),
(11, 'Doctorial Thesis', 'thesis', NULL, NULL),
(12, 'Masters Thesis', 'thesis', NULL, NULL),
(13, 'UG Dissertation', 'thesis', NULL, NULL),
(14, 'Journal Article', 'publish_article', NULL, NULL),
(15, 'Conference Paper', 'publish_article', NULL, NULL),
(16, 'Book chapter', 'publish_article', NULL, NULL),
(17, 'Edited Book', 'publish_article', NULL, NULL),
(18, 'Masters Thesis', 'publish_article', NULL, NULL),
(19, ' Doctoral Thesis', 'publish_article', NULL, NULL),
(20, 'Edited Book Series', 'proceeding', NULL, NULL),
(21, 'Conference proceeding', 'proceeding', NULL, NULL),
(22, 'Text Book', 'book', NULL, NULL),
(23, 'E-Book', 'book', NULL, NULL),
(24, 'Doctorial Thesis', 'thesis', NULL, NULL),
(25, 'Masters Thesis', 'thesis', NULL, NULL),
(26, 'UG Dissertation', 'thesis', NULL, NULL),
(27, 'Journal Article', 'publish_article', NULL, NULL),
(28, 'Conference Paper', 'publish_article', NULL, NULL),
(29, 'Book chapter', 'publish_article', NULL, NULL),
(30, 'Edited Book', 'publish_article', NULL, NULL),
(31, 'Masters Thesis', 'publish_article', NULL, NULL),
(32, ' Doctoral Thesis', 'publish_article', NULL, NULL),
(33, 'Edited Book Series', 'proceeding', NULL, NULL),
(34, 'Conference proceeding', 'proceeding', NULL, NULL),
(35, 'Text Book', 'book', NULL, NULL),
(36, 'E-Book', 'book', NULL, NULL),
(37, 'Doctorial Thesis', 'thesis', NULL, NULL),
(38, 'Masters Thesis', 'thesis', NULL, NULL),
(39, 'UG Dissertation', 'thesis', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=> Editorial manager (Full Rights),2=>Assistant (Limited Rights)',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin bhai', 'admin@gmail.com', NULL, '$2y$10$9CsrIncS706kfxCpCwdcFOjJLixjvHxN21pl0jcNx9rbOJ7J0POWK', 2, NULL, '2022-07-28 19:23:05', '2022-07-28 19:23:05'),
(2, 'umesh', 'umesh@gmail.com', NULL, '$2y$10$U0wMLBU/Wg5en6B19l6lmuRWV0zzF/ZMoQjF4B8KK4HBBfo50YR0.', 2, NULL, '2022-08-07 11:17:14', '2022-08-07 11:17:14'),
(3, 'Test', 'test@gmail.com', NULL, '$2y$10$Ll40GOX0wjljaSjVx7zyo.gjxM3jwLk.v3/vR.AU.1Sv8/3lQbXd2', 2, NULL, '2022-08-18 12:43:29', '2022-08-18 12:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `volume_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `journal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `volume_name`, `year`, `status`, `journal_id`, `created_at`, `updated_at`) VALUES
(1, '1', 2022, 1, 1, '2022-07-28 19:32:33', '2022-07-28 19:32:33'),
(2, '2', 2022, 1, 1, '2022-07-28 19:32:58', '2022-07-28 19:33:21'),
(3, '1', 2021, 1, 2, '2022-07-28 19:37:52', '2022-07-28 19:37:52'),
(4, '2', 2022, 1, 2, '2022-07-28 19:38:13', '2022-07-28 19:38:13'),
(5, '3', 2019, 1, 2, '2022-07-28 19:38:36', '2022-07-28 19:38:36'),
(6, '1', 2019, 1, 3, '2022-07-28 19:43:29', '2022-07-28 19:43:29'),
(7, '2', 2020, 1, 3, '2022-07-28 19:44:09', '2022-07-28 19:45:48'),
(8, '3', 2021, 2, 3, '2022-07-28 19:45:32', '2022-07-28 19:45:32'),
(9, '1', 2019, 1, 4, '2022-07-28 19:51:31', '2022-07-28 19:51:31'),
(10, '2', 2020, 1, 4, '2022-07-28 19:51:45', '2022-07-28 19:51:45'),
(11, '3', 2021, 2, 4, '2022-07-28 19:52:05', '2022-07-28 19:52:05'),
(12, '1', 2022, 1, 5, '2022-07-28 19:53:53', '2022-07-28 19:53:53'),
(13, '2', 2019, 1, 5, '2022-07-28 19:54:11', '2022-07-28 19:54:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Indexes for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commons`
--
ALTER TABLE `commons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `journals_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `proceedings`
--
ALTER TABLE `proceedings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proceedings_slug_unique` (`slug`);

--
-- Indexes for table `proceeding_editors`
--
ALTER TABLE `proceeding_editors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publish_articles`
--
ALTER TABLE `publish_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publish_article_authors`
--
ALTER TABLE `publish_article_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theses`
--
ALTER TABLE `theses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `theses_slug_unique` (`slug`);

--
-- Indexes for table `thesis_authors`
--
ALTER TABLE `thesis_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_authors`
--
ALTER TABLE `book_authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commons`
--
ALTER TABLE `commons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proceedings`
--
ALTER TABLE `proceedings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proceeding_editors`
--
ALTER TABLE `proceeding_editors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `publish_articles`
--
ALTER TABLE `publish_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publish_article_authors`
--
ALTER TABLE `publish_article_authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `theses`
--
ALTER TABLE `theses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thesis_authors`
--
ALTER TABLE `thesis_authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
