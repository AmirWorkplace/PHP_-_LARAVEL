-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 07:39 AM
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
-- Database: `multiphpprojects`
--

-- --------------------------------------------------------

--
-- Table structure for table `like_history`
--

CREATE TABLE `like_history` (
  `like_id` bigint(20) NOT NULL,
  `like_user_id` bigint(20) NOT NULL,
  `like_username` varchar(255) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `like_history`
--

INSERT INTO `like_history` (`like_id`, `like_user_id`, `like_username`, `post_id`) VALUES
(1, 10, 'MD AmirAli', 1),
(2, 10, 'MD AmirAli', 2),
(3, 10, 'MD AmirAli', 2),
(4, 10, 'MD AmirAli', 2),
(5, 10, 'MD AmirAli', 2),
(6, 10, 'MD AmirAli', 2),
(7, 10, 'MD AmirAli', 2),
(8, 10, 'MD AmirAli', 2),
(9, 10, 'MD AmirAli', 2),
(10, 10, 'MD AmirAli', 1),
(11, 12, 'Amir Ali78', 1),
(12, 12, 'Amir Ali78', 1),
(13, 12, 'Amir Ali78', 2),
(14, 12, 'Amir Ali78', 2),
(15, 12, 'Amir Ali78', 1),
(16, 14, 'Syed Amir Ali (Apon)', 1),
(17, 14, 'Syed Amir Ali (Apon)', 1),
(18, 14, 'Syed Amir Ali (Apon)', 1),
(19, 14, 'Syed Amir Ali (Apon)', 1),
(20, 14, 'Syed Amir Ali (Apon)', 1),
(21, 14, 'Syed Amir Ali (Apon)', 1),
(22, 14, 'Syed Amir Ali (Apon)', 1),
(23, 14, 'Syed Amir Ali (Apon)', 1),
(24, 14, 'Syed Amir Ali (Apon)', 1),
(25, 14, 'Syed Amir Ali (Apon)', 1),
(26, 14, 'Syed Amir Ali (Apon)', 1),
(27, 14, 'Syed Amir Ali (Apon)', 1),
(28, 14, 'Syed Amir Ali (Apon)', 1),
(29, 14, 'Syed Amir Ali (Apon)', 1),
(30, 14, 'Syed Amir Ali (Apon)', 1),
(31, 14, 'Syed Amir Ali (Apon)', 1),
(32, 14, 'Syed Amir Ali (Apon)', 1),
(33, 14, 'Syed Amir Ali (Apon)', 1),
(34, 14, 'Syed Amir Ali (Apon)', 1),
(35, 14, 'Syed Amir Ali (Apon)', 1),
(36, 14, 'Syed Amir Ali (Apon)', 1),
(37, 14, 'Syed Amir Ali (Apon)', 1),
(38, 14, 'Syed Amir Ali (Apon)', 1),
(39, 14, 'Syed Amir Ali (Apon)', 1),
(40, 14, 'Syed Amir Ali (Apon)', 1),
(41, 15, 'Amir Alir', 3),
(42, 15, 'Amir Alir', 4),
(43, 15, 'Amir Alir', 4),
(44, 15, 'Amir Alir', 1),
(45, 15, 'Amir Alir', 1),
(46, 15, 'Amir Alir', 1),
(47, 15, 'Amir Alir', 1),
(48, 15, 'Amir Alir', 1),
(49, 15, 'Amir Alir', 1),
(50, 15, 'Amir Alir', 1),
(51, 15, 'Amir Alir', 1),
(52, 15, 'Amir Alir', 1),
(53, 15, 'Amir Alir', 1),
(54, 15, 'Amir Alir', 1),
(55, 15, 'Amir Alir', 1),
(56, 15, 'Amir Alir', 1),
(57, 15, 'Amir Alir', 1),
(58, 15, 'Amir Alir', 1),
(59, 15, 'Amir Alir', 1),
(60, 15, 'Amir Alir', 1),
(61, 15, 'Amir Alir', 1),
(62, 15, 'Amir Alir', 1),
(63, 15, 'Amir Alir', 1),
(64, 15, 'Amir Alir', 5),
(65, 15, 'Amir Alir', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` text NOT NULL,
  `created-at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created-at`) VALUES
(3, 'Amir Ali', 'sywmohammadamir@gmail.com', '123456', 'user', '2022-05-26 04:26:14'),
(8, 'Abdul Kuddus', 'abdulkuddus@gmail.com', 'a123456', 'user', '2022-05-26 07:41:42'),
(9, 'sabbir', 'skas12450@me.com', 'skas12450', 'user', '2022-05-26 08:36:40'),
(10, 'MD AmirAli', 'ameerali300400@gmail.com', 'a1a2a3', 'admin', '2022-06-06 01:18:24'),
(11, 'MD Amir', 'amiirralli300400@gmail.com', '1111111', 'user', '2022-05-29 10:15:36'),
(12, 'Amir Ali78', 'amir@gmail.com', '123456', 'user', '2022-05-30 00:08:37'),
(13, 'Amir Ali Apon', 'Me@gmail.com', '123456', 'admin', '2022-06-06 01:22:17'),
(14, 'Syed Amir Ali (Apon)', 'me1@gmail.com', 'me1@gmail', 'user', '2022-06-07 03:15:57'),
(15, 'Amir Alir', 'amirali1@gmail.com', '123', 'user', '2022-06-18 02:43:30'),
(16, 'Apon', 'vcbac@gmail.com', '11111', '', '2022-06-18 03:22:55'),
(17, 'Amir Alii', 'sywmohammadamir01@gmail.com', '123', '', '2022-06-18 03:25:51'),
(18, 'amir Mia', 'sywghjfmohammadamir@gmail.com', '12021', 'user', '2022-06-18 03:33:44'),
(19, 'Amir 1', 'xyzc@gmail.com', 'aaaaa1', 'user', '2022-06-18 03:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `userpost`
--

CREATE TABLE `userpost` (
  `post_id` bigint(20) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_user_id` bigint(20) NOT NULL,
  `post_user_name` varchar(255) NOT NULL,
  `post_like_count` int(255) NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userpost`
--

INSERT INTO `userpost` (`post_id`, `post_title`, `post_content`, `post_user_id`, `post_user_name`, `post_like_count`, `post_url`, `post_date`) VALUES
(1, 'Next Try!', 'অনেক কষ্টের পর সম্ভবত সম্ভব হয়েছে!\r\n', 14, 'Syed Amir Ali (Apon)', 50, '', '07-06-2022 02-06-57'),
(2, 'First Try!', 'প্রথম চেষ্টায় সফল হতে পারলাম নাহ!', 14, 'Syed Amir Ali (Apon)', 10, '', '07-06-2022 02-06-18'),
(3, 'New ID', 'আরেকটা আইডি দিয়ে টেস্ট করলাম!', 10, 'MD AmirAli', 1, '', '07-06-2022 02-06-38'),
(4, 'First Try!', 'My first Try of PHP Website build Query send is successfull or....................', 10, 'MD AmirAli', 2, '', '08-06-2022 06-06-07'),
(5, 'Check Like ', 'One id give onlu one likes.......................................... ............................. ............................. ............................ ............................... ................................. .......................... ....................... .............................. ............................ ......................... .................. ................. .............................. ............................ ................. ........................ ...................................... .......................... ....................... ............................ ................... ............................................. .................... .............................. ....................!', 15, 'Amir Alir', 1, '', '18-06-2022 05-06-34'),
(6, 'what', '', 15, 'Amir Alir', 0, '', '18-06-2022 05-06-25'),
(7, 'whatsuiifl', 'no........................', 15, 'Amir Alir', 0, '', '18-06-2022 05-06-25'),
(8, '', 'sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsksdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk sdfgfnbvfdslkjhgdsfgbdsk ', 15, 'Amir Alir', 1, '', '18-06-2022 05-06-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `like_history`
--
ALTER TABLE `like_history`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpost`
--
ALTER TABLE `userpost`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `like_history`
--
ALTER TABLE `like_history`
  MODIFY `like_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `userpost`
--
ALTER TABLE `userpost`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
