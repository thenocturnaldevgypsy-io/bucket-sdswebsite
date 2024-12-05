-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2015 at 07:43 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `strato_inhouse_officialweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_msg_private`
--

CREATE TABLE IF NOT EXISTS `tbl_msg_private` (
  `mp_pKey` int(100) NOT NULL,
  `mp_Sender` text NOT NULL,
  `mp_Email` text NOT NULL,
  `mp_URL` varchar(250) NOT NULL,
  `mp_Number` varchar(20) NOT NULL,
  `mp_Body` text NOT NULL,
  `mp_IPAdd` text NOT NULL,
  `mp_Country` text NOT NULL,
  `mp_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_msg_private`
--
ALTER TABLE `tbl_msg_private`
  ADD PRIMARY KEY (`mp_pKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_msg_private`
--
ALTER TABLE `tbl_msg_private`
  MODIFY `mp_pKey` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
