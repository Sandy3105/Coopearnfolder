-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 16, 2022 at 12:23 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coop_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `select_cp` varchar(50) NOT NULL,
  `SerialNo` varchar(50) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Denomination` int NOT NULL,
  `quantity` int NOT NULL,
  `exp_date` date NOT NULL,
  `dealerBenefit` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `select_cp`, `SerialNo`, `ProductName`, `Denomination`, `quantity`, `exp_date`, `dealerBenefit`) VALUES
(1, 'Cash coupon', 'FYFYJF5686HJVFG', 'Item', 10, 20, '2022-05-25', 5),
(2, 'Point coupon', 'NJHGVR4564564564', 'Ice cream', 20, 200, '2025-03-10', 1000),
(3, 'Point coupon', 'FEWF454564DSF', 'DONT KNOW', 10, 500, '2023-12-12', 50),
(4, 'Cash coupon', 'HDJEF4578NJHF15', 'PRODUCT5', 10, 400, '2023-08-30', 5),
(5, 'Cash coupon', 'HDJEF4578NJHF15', 'PRODUCT5', 10, 400, '2023-08-30', 5),
(6, 'Cash coupon', 'HDJEF4578NJHF15', 'PRODUCT5', 10, 400, '2023-08-30', 5),
(7, 'Point coupon', 'vgfghvjhhjv4534', 'prod4', 20, 500, '2022-05-13', 0),
(8, 'Point coupon', 'VFDGR454D', '', 100, 5, '2023-06-23', 20),
(9, 'Point coupon', 'VFDGR454D', '', 100, 5, '2023-06-23', 20),
(10, 'Point coupon', 'VFDGR454D', '', 100, 5, '2023-06-23', 20),
(11, 'Point coupon', 'VFDGR454D', '', 100, 5, '2023-06-23', 20),
(12, 'Point coupon', 'VFDGR454D', '', 100, 5, '2023-06-23', 20),
(13, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20),
(14, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20),
(15, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20),
(16, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20),
(17, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20),
(18, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20),
(19, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20),
(20, 'Cash coupon', 'frgr4s5gs4', '', 20, 5, '2023-02-23', 20);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `userEmail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `firstName`, `lastName`, `companyName`, `userEmail`, `userPassword`) VALUES
(2, 'Sandeep', '', 'Coopearn pvt. ltd.', 'smsunnythefunny@gmail.com', 'sandy@1234'),
(12, 'vicky', 'kaushal', 'vicky ptv ltd.', 'vicky123@gmail.com', 'vicky@123#'),
(5, 'rohit', 'kumar', 'rohit&sons', 'rohit@gmail.com', '12345'),
(6, 'rahul', 'sharma', 'rahulpvt', 'rahul@yahoo.nic.in', 'rahu123'),
(7, 'Ironman', '', 'Stark industries', 'robert@stark.com', 'iron123'),
(8, 'sunil', 'kumar', 'suniltiles', 'sunil@yahoo.com', '48ccc87cd7afb85704a63e8d5953d326'),
(9, 'sandy', 'sharma', 'coopearn', 'sandy123@gmail.com', 'sandy@123'),
(10, 'Aparichit', '', 'sins&company', 'aparichit@sins.com', 'qwerty'),
(11, 'first', 'last', 'company', 'email@gmail.com', 'password');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
