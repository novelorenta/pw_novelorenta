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
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artis_id` varchar(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artis_id`, `first_name`, `last_name`) VALUES
('1', 'thomas', 'black'),
('2', 'kare ', 'smith'),
('3', 'katali', 'wein'),
('4', 'francesco', 'benel');

-- --------------------------------------------------------

--
-- Table structure for table `colector`
--

CREATE TABLE `colector` (
  `colector_id` varchar(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colector`
--

INSERT INTO `colector` (`colector_id`, `first_name`, `last_name`) VALUES
('101', 'brandon', 'cooper'),
('102', 'laura', 'fisher'),
('103', 'christina', 'buffet'),
('104', 'steve', 'stevenson');

-- --------------------------------------------------------

--
-- Table structure for table `painting`
--

CREATE TABLE `painting` (
  `painting_id` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `artis_id` varchar(5) NOT NULL,
  `listprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `painting`
--

INSERT INTO `painting` (`painting_id`, `name`, `artis_id`, `listprice`) VALUES
('11', 'micele', '1', 10000),
('12', 'sunshine', '1', 70000),
('13', 'prety woman', '2', 29000),
('14', 'tukiman ', '2', 23000),
('15', 'barove', '3', 25000),
('16', 'cool patelion', '3', 500000),
('17', 'brangko', '3', 5000),
('18', 'akaashi', '4', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id_sales` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `painting_id` varchar(5) NOT NULL,
  `artis_id` varchar(5) NOT NULL,
  `colector_id` varchar(5) NOT NULL,
  `sales_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id_sales`, `date`, `painting_id`, `artis_id`, `colector_id`, `sales_price`) VALUES
('1001', '2021-11-01', '13', '2', '104', 250000),
('1002', '2021-11-10', '14', '2', '102', 230000),
('1003', '2021-11-10', '11', '1', '102', 10000),
('1004', '2021-11-15', '16', '3', '103', 400000),
('1005', '2021-11-22', '15', '3', '103', 20000),
('1006', '2021-11-22', '17', '3', '103', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artis_id`);

--
-- Indexes for table `colector`
--
ALTER TABLE `colector`
  ADD PRIMARY KEY (`colector_id`);

--
-- Indexes for table `painting`
--
ALTER TABLE `painting`
  ADD PRIMARY KEY (`painting_id`),
  ADD KEY `artis_id` (`artis_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sales`),
  ADD KEY `artis_id` (`artis_id`),
  ADD KEY `painting_id` (`painting_id`),
  ADD KEY `colector_id` (`colector_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `painting`
--
ALTER TABLE `painting`
  ADD CONSTRAINT `painting_ibfk_1` FOREIGN KEY (`artis_id`) REFERENCES `artist` (`artis_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`artis_id`) REFERENCES `artist` (`artis_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`painting_id`) REFERENCES `painting` (`painting_id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`colector_id`) REFERENCES `colector` (`colector_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
