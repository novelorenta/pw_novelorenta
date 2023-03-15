-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 04:58 PM
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
-- Database: `tugas4`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `pk` int(11) DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a`
--

INSERT INTO `a` (`pk`, `value`) VALUES
(1, 'FOX'),
(2, 'COP'),
(3, 'TAXI'),
(6, 'WASHINGTON'),
(7, 'DELL'),
(5, 'ARIZONA'),
(4, 'LINCOLN'),
(10, 'LUCENT');

-- --------------------------------------------------------

--
-- Table structure for table `b`
--

CREATE TABLE `b` (
  `pk` int(11) DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `b`
--

INSERT INTO `b` (`pk`, `value`) VALUES
(1, 'TROT'),
(2, 'CAR'),
(3, 'CAB'),
(6, 'MONUMENT'),
(7, 'PC'),
(8, 'MICROSOFT'),
(9, 'APPLE'),
(11, 'SCOTCH');

-- --------------------------------------------------------

--
-- Table structure for table `tablea`
--

CREATE TABLE `tablea` (
  `pk` int(11) NOT NULL,
  `value` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tablea`
--

INSERT INTO `tablea` (`pk`, `value`) VALUES
(1, 'FOX'),
(2, 'COP');

-- --------------------------------------------------------

--
-- Table structure for table `tableb`
--

CREATE TABLE `tableb` (
  `pk` int(11) DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tablea`
--
ALTER TABLE `tablea`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `tableb`
--
ALTER TABLE `tableb`
  ADD KEY `pk` (`pk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tableb`
--
ALTER TABLE `tableb`
  ADD CONSTRAINT `tableb_ibfk_1` FOREIGN KEY (`pk`) REFERENCES `tablea` (`pk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
