-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 02, 2018 at 03:43 PM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discuss_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_session`
--

CREATE TABLE `ci_session` (
  `id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ci_session`
--

INSERT INTO `ci_session` (`id`, `ip_address`, `user_agent`, `last_activity`, `data`, `timestamp`) VALUES
('pn6jltfil8vt6g9nggn01m4rm4v66vgi', '127.0.0.1', NULL, 0, '__ci_last_regenerate|i:1538304795;usr_id|s:1:\"4\";usr_email|s:15:\"admin@gmail.com\";logged_in|b:1;', '0000-00-00 00:00:00'),
('b1tfqu27u1pj6j0g3h2ccrb6qkl356s6', '127.0.0.1', NULL, 0, '__ci_last_regenerate|i:1538304795;usr_id|s:1:\"4\";usr_email|s:15:\"admin@gmail.com\";logged_in|b:1;', '0000-00-00 00:00:00'),
('5lnfetfioqbpsq7jm5gisb4c7oe6q5dk', '127.0.0.1', NULL, 0, '__ci_last_regenerate|i:1538466759;usr_id|s:1:\"4\";usr_email|s:15:\"admin@gmail.com\";logged_in|b:1;', '0000-00-00 00:00:00'),
('g3hjhnhgaqfg3d4vobttrli7932jtmov', '127.0.0.1', NULL, 0, '__ci_last_regenerate|i:1538482885;usr_id|s:1:\"4\";usr_email|s:15:\"admin@gmail.com\";logged_in|b:1;', '0000-00-00 00:00:00'),
('ujvm9rdlr52kfft0v5mdivdenmi6rcih', '127.0.0.1', NULL, 0, '__ci_last_regenerate|i:1538482885;usr_id|s:1:\"4\";usr_email|s:15:\"admin@gmail.com\";logged_in|b:1;', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cm_id` int(11) NOT NULL,
  `ds_id` int(11) NOT NULL,
  `cm_body` text NOT NULL,
  `cm_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `cm_is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cm_id`, `ds_id`, `cm_body`, `cm_created_at`, `id`, `cm_is_active`) VALUES
(5, 7, 'test answer desc', '2018-10-02 11:13:06', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `ds_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ds_title` varchar(255) NOT NULL,
  `ds_body` text NOT NULL,
  `ds_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ds_is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`ds_id`, `id`, `ds_title`, `ds_body`, `ds_created_at`, `ds_is_active`) VALUES
(7, 5, 'test question desc', 'test question desc', '2018-10-02 11:12:10', 1),
(8, 9, 'test answer desc', 'test answer desc', '2018-10-02 11:14:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `email` varchar(125) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `hash`, `email`, `role`) VALUES
(1, 'qwerwe', '7fdff6bfe8db9ace8889b0923d009a5db80cf127', 'werwer@gmail.com', 1),
(2, 'qwerwe', '75d4cff7058d4b96200391c62f11c1a9bce5ff34', 'dasdasgadg@gmail.com', 1),
(3, 'vbnvbn', 'fc6e017d92e34a08130c0de473adc92b538731e8', 'hvbnj@gsdfg.sdfg', 1),
(4, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@gmail.com', 2),
(5, 'test question 1', 'a8f41c3928d10ab551f24c4e7d67888da77231bd', 'test@gmail.com', 1),
(6, 'test ansver 3333', 'c3f99499c6e762d1fcfa4f66d8a69237f82dfe72', 'testansver333@gmail.com', 1),
(7, 'sdfsdf', '4337cc1f057541e4393a6ead92002720b8f1062a', 'sdfdsf@bgsd.com', 1),
(8, 'test ansver 1', '8ddbb707b953d5ab200a3398f23a97baaa9b6033', 'testansver@gmail.com', 1),
(9, 'test question 2', '0efd360b92757403bcb11ae8c8ac529a808e3322', 'test23@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_session`
--
ALTER TABLE `ci_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
