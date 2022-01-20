-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 08:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `sno` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`sno`, `firstName`, `lastName`, `companyName`, `email`) VALUES
(1, 'puggy', 'black', 'PitBull', 'msg@j.ads'),
(2, 'tonosuka', 'dalmation', 'circus', 'abc@la.domain'),
(3, 'pawMate', 'puggy', 'PitBull', 'pawMate@d.m'),
(4, 'wsq', '', 'qwqwq', 'qwqq@s.s'),
(5, 'asas', 'deed', 'CatDog', 'abc@la.domain'),
(6, 'asas', 'deed', 'CatDog', 'abc@la.domain'),
(7, 'asasd', 'asx', 'zzzzc', 'msg@j.ads'),
(8, 'asasd', 'asx', 'zzzzc', 'msg@j.ads'),
(9, 'bruce', 'wayne', 'Wayne Industries', 'BruceWayne@wayne.ent'),
(10, 'Manish', 'Verma', 'manni.pvt.ltd', 'manni@gmail.com'),
(11, 'fagaus', 'haus', 'gilbert.gane', 'asdfas@g.n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
