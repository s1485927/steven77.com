-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 05:41 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `steven_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `mail_received`
--

CREATE TABLE `mail_received` (
  `item_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `date_received` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mail_received`
--

INSERT INTO `mail_received` (`item_id`, `customer_id`, `item_description`, `date_received`) VALUES
('003', 'c001', 'new', 'test 3'),
('i001', 'c001', 'test', '01/03/2019'),
('i002', 'c001', 'testing', '01/04/2020'),
('i004', 'c002', 'new item', ''),
('i005', 'c005', 'new item', '21/04/2021');

-- --------------------------------------------------------

--
-- Table structure for table `post_box`
--

CREATE TABLE `post_box` (
  `customer_id` varchar(100) NOT NULL,
  `pin` varchar(4) NOT NULL,
  `given_name` varchar(100) NOT NULL,
  `family_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_box`
--

INSERT INTO `post_box` (`customer_id`, `pin`, `given_name`, `family_name`) VALUES
('c001', '1234', 'steven', 'ramsamy'),
('c002', '2345', 'princeley', 'Duva Pentiah'),
('c003', '1234', 'steven', 'ramsamy pillay'),
('c004', '2345', 'kersley', 'sandy ramsamy'),
('c005', '1234', 'john', 'travolta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mail_received`
--
ALTER TABLE `mail_received`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `post_box`
--
ALTER TABLE `post_box`
  ADD PRIMARY KEY (`customer_id`(10)),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mail_received`
--
ALTER TABLE `mail_received`
  ADD CONSTRAINT `mail_received_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `post_box` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
