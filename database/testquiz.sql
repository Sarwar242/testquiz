-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2023 at 08:06 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `question_id`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 'aopt1', 1, 0, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(2, 'aopt2', 1, 1, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(3, 'aopt3', 1, 0, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(4, 'bopt1', 2, 1, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(5, 'bopt2', 2, 0, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(6, 'bopt3', 2, 0, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(7, 'copt1', 3, 1, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(8, 'copt2', 3, 0, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(9, 'copt3', 3, 0, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(10, 'aopt1', 4, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(11, 'aopt2', 4, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(12, 'aopt3', 4, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(13, 'bopt1', 5, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(14, 'bopt2', 5, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(15, 'bopt3', 5, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(16, 'copt1', 6, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(17, 'copt2', 6, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(18, 'copt3', 6, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(19, 'aopt1', 7, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(20, 'aopt2', 7, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(21, 'aopt3', 7, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(22, 'bopt1', 8, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(23, 'bopt2', 8, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(24, 'bopt3', 8, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(25, 'copt1', 9, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(26, 'copt2', 9, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(27, 'copt3', 9, 0, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(28, 'aopt1', 10, 0, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(29, 'aopt2', 10, 1, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(30, 'aopt3', 10, 0, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(31, 'bopt1', 11, 1, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(32, 'bopt2', 11, 0, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(33, 'bopt3', 11, 0, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(34, 'copt1', 12, 1, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(35, 'copt2', 12, 0, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(36, 'copt3', 12, 0, '2023-02-22 12:08:13', '2023-02-22 12:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_22_045623_create_quizzes_table', 1),
(6, '2023_02_22_045642_create_questions_table', 1),
(7, '2023_02_22_045716_create_answers_table', 1),
(8, '2023_02_22_045805_create_tests_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` bigint UNSIGNED NOT NULL,
  `is_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `quiz_id`, `is_mandatory`, `created_at`, `updated_at`) VALUES
(1, 'example-question1?', 1, 1, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(2, 'example-question2?', 1, 1, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(3, 'example-question3?', 1, 1, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(4, 'example-question1?', 2, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(5, 'example-question2?', 2, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(6, 'example-question3?', 2, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(7, 'example-question1?', 3, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(8, 'example-question2?', 3, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(9, 'example-question3?', 3, 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(10, 'example-question1?', 4, 1, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(11, 'example-question2?', 4, 1, '2023-02-22 12:08:13', '2023-02-22 12:08:13'),
(12, 'example-question3?', 4, 1, '2023-02-22 12:08:13', '2023-02-22 12:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `description`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'test quiz', 'Not available', 1, '2023-02-22 12:08:10', '2023-02-22 12:08:10'),
(2, 'test quiz', 'Not available', 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(3, 'test quiz', 'Not available', 1, '2023-02-22 12:08:12', '2023-02-22 12:08:12'),
(4, 'test quiz', 'Not available', 1, '2023-02-22 12:08:13', '2023-02-22 12:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(3,2) DEFAULT NULL,
  `correct_answer` int DEFAULT NULL,
  `total_answer` int DEFAULT NULL,
  `quiz_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `user_name`, `rating`, `correct_answer`, `total_answer`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 'Sarwar', 4.50, 0, 3, 1, '2023-02-22 12:57:25', '2023-02-22 12:57:25'),
(2, 'Sarwar', 4.50, 1, 3, 1, '2023-02-22 12:57:49', '2023-02-22 12:57:49'),
(3, 'Sarwar', 4.50, 2, 3, 1, '2023-02-22 12:57:59', '2023-02-22 12:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
