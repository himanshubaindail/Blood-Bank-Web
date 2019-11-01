-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2018 at 07:57 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `sex` text NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` char(250) DEFAULT NULL,
  `dob` text NOT NULL,
  `bg` varchar(3) NOT NULL,
  `donated` float NOT NULL DEFAULT '0',
  `last` text,
  `photo` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `password`, `name`, `sex`, `contact`, `address`, `dob`, `bg`, `donated`, `last`, `photo`) VALUES
(1, 'shyam', 'Shyam Srivastava', 'Male', 9897965412, 'Mathura', '1996-11-22', 'B+', 0, NULL, NULL),
(2, '2017-11-03', 'aesthugchjkml', 'Male', 7894561230, 'estufgchm,.', '2017-11-03', 'B+', 1, '2017-11-16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reciever`
--

CREATE TABLE `reciever` (
  `id` int(11) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT 'password',
  `name` text NOT NULL,
  `sex` text NOT NULL,
  `contact` decimal(10,0) NOT NULL,
  `address` char(250) DEFAULT NULL,
  `dob` date NOT NULL,
  `bg` text NOT NULL,
  `recieved` float NOT NULL DEFAULT '0',
  `last` text,
  `photo` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `bloodgroup` varchar(4) NOT NULL,
  `bloodstock` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`bloodgroup`, `bloodstock`) VALUES
('A+', 0),
('A-', 0),
('B+', 9),
('B-', 0.5),
('O+', 0),
('O-', 6),
('AB+', 2.5),
('AB-', 1.2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD UNIQUE KEY `id_4` (`id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `contact_2` (`contact`),
  ADD UNIQUE KEY `contact_3` (`contact`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `reciever`
--
ALTER TABLE `reciever`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `contact_2` (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reciever`
--
ALTER TABLE `reciever`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
