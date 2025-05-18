-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 01:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `adminname`, `password`, `created_at`) VALUES
(1, 'admin.2@gmail.com', 'admin.2@gmail.com', '$2y$10$H8bDQBPPV0BIiTazoMvkO.hcNRk1LlxrG.PM2yGTnD/MxFdr8Yr0O', '2023-05-23 13:24:32'),
(2, 'admin.new@gmail.com', 'admin.new@gmail.com', '$2y$10$rYDJ1NXf8J2XfIaBE19qXukxNAXYTZCj/ouyvzx5eLVIFYvlC4cCS', '2023-05-23 14:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `show_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `show_id`, `user_id`, `user_name`, `created_at`) VALUES
(1, 'Competently create functionalized mindshare rather than cross-platform sources. Completely engage ', 1, 1, 'moha123@gmail.com', '2023-05-17 10:32:26'),
(2, 'Conveniently aggregate ethical vortals via alternative internal or \"organic\" sources. Quickly utilize clicks-', 2, 1, 'moha123@gmail.com', '2023-05-17 10:32:26'),
(4, 'this is an awesome show', 1, 1, 'moha123@gmail.com', '2023-05-21 10:17:50'),
(5, 'here is another comment and this is a great anime', 1, 1, 'moha123@gmail.com', '2023-05-21 10:19:17'),
(6, 'new comment', 1, 1, 'moha123@gmail.com', '2023-05-21 13:10:47'),
(7, 'here is a new comment once a gain', 1, 1, 'moha123@gmail.com', '2023-05-21 13:14:47'),
(12, 'there is a new comment form me', 1, 1, 'moha123@gmail.com', '2023-05-21 13:30:55'),
(13, 'there is a comment form the details page', 1, 1, 'moha123@gmail.com', '2023-05-21 13:31:48'),
(14, 'there is a new comment fot the show with only 2 views', 2, 1, 'moha123@gmail.com', '2023-05-21 13:32:43'),
(15, 'this is an amazing show', 2, 2, 'MOhamed Hassan', '2023-05-24 11:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(10) NOT NULL,
  `video` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `show_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `video`, `thumbnail`, `show_id`, `name`, `created_at`) VALUES
(1, '1.mp4', 'anime-watch.jpg', 1, '1', '2023-05-21 11:15:49'),
(2, '2.mp4', 'anime-watch.jpg', 1, '2', '2023-05-21 11:15:49'),
(4, '2.mp4', 'anime-watch.jpg', 2, '1', '2023-05-21 11:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(10) NOT NULL,
  `show_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`id`, `show_id`, `user_id`, `created_at`) VALUES
(8, 1, 2, '2023-05-24 11:03:45'),
(9, 2, 2, '2023-05-24 11:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`) VALUES
(1, 'Action', '2023-05-20 11:25:03'),
(2, 'Adventure', '2023-05-20 11:25:03'),
(3, 'Magic', '2023-05-20 11:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `studios` varchar(200) NOT NULL,
  `date_aired` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `quality` varchar(200) NOT NULL,
  `num_available` int(10) NOT NULL,
  `num_total` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `title`, `image`, `description`, `type`, `studios`, `date_aired`, `status`, `genre`, `duration`, `quality`, `num_available`, `num_total`, `created_at`) VALUES
(1, 'The Seven Deadly Sins: Wrath of the Gods', 'hero-1.jpg', 'Intrinsicly aggregate functional infomediaries with customized best practices. Competently expedite ', 'TV Series', 'Lerche', ' Oct 02, 2019 to ?', 'Airing', 'Action', ' 24 min/ep', 'HD', 2, 99, '2023-05-17 09:29:01'),
(2, 'Gintama Movie 2: Kanketsu-hen - Yorozuya yo Eien', 'anime_girl_cute.jpg', 'Completely engage team building synergy via ', ' TV Series', 'Lerche', 'Oct 02, 2019 to ?', 'Airing', 'Adventure', ' 30 min/ep', 'HD', 1, 100, '2023-05-17 09:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'moha123@gmail.com', 'moha123@gmail.com', '$2y$10$7hjDDHlCfpYYbQp8dVpOR.vUEVkAMsgoTNi1ls2HkNoREjA2vttMK', '2023-05-16 09:56:22'),
(2, 'user.2@gmial.com', 'MOhamed Hassan', '$2y$10$H8bDQBPPV0BIiTazoMvkO.hcNRk1LlxrG.PM2yGTnD/MxFdr8Yr0O', '2023-05-22 09:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `show_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `user_id`, `show_id`, `created_at`) VALUES
(6, 1, 2, '2023-05-22 09:51:49'),
(7, 1, 1, '2023-05-22 09:51:49'),
(8, 2, 1, '2023-05-22 10:00:00'),
(11, 2, 2, '2023-05-24 11:39:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
