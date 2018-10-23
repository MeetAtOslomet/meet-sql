use meet
-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 23, 2018 at 11:07 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meet`
--

-- --------------------------------------------------------

--
-- Table structure for table `activation_key`
--

CREATE TABLE `activation_key` (
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `activationKey` int(4) NOT NULL COMMENT 'Key to compare'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activation_key`
--

INSERT INTO `activation_key` (`username`, `activationKey`) VALUES
('s306386', 4123),
('s326311', 4321);

-- --------------------------------------------------------

--
-- Table structure for table `auth_users`
--

CREATE TABLE `auth_users` (
  `id` int(8) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Student number or employee number or name',
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'is already hashed with SHA265',
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_generated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_users`
--

INSERT INTO `auth_users` (`id`, `username`, `password`, `valid`, `token`, `token_generated`) VALUES
(1, 'Admin', 'c0aba0c3f3fdc55050e59b7eb596605d000d41e0625328b7e87c65336b000a15', 1, NULL, '2018-10-20 22:03:58'),
(2, 'test', NULL, 0, NULL, '2018-10-15 09:47:16'),
(3, 'Brage', 'c0aba0c3f3fdc55050e59b7eb596605d000d41e0625328b7e87c65336b000a15', 1, 'c88b5d307bd212a09bcab25f14bb80f6c8f681baf05f383ba77f00db9a74a2ff', '2018-10-15 08:54:09'),
(4, 'Admin2', NULL, 0, NULL, NULL),
(10, 's326311', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1, 'f8eaf3519e252a8278c35275e1f5d1e07b761b9c08dccbb30a05f217350c2246', NULL),
(11, 's306386', '0ceec16c3d3170168bd3acfd48748d95eb98992c15399cd9a495ec2212f71bc2', 1, '2daca9a2938f0494f621878d8a4a01f3a0a624f6f456740122a1f364227e241e', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activation_key`
--
ALTER TABLE `activation_key`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `auth_users`
--
ALTER TABLE `auth_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_users`
--
ALTER TABLE `auth_users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
