-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2015 at 07:57 PM
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
-- Table structure for table `tbl_site_visitor`
--

CREATE TABLE IF NOT EXISTS `tbl_site_visitor` (
  `sv_pKey` int(100) NOT NULL,
  `sv_IPAdd` text NOT NULL,
  `sv_Country` text NOT NULL,
  `sv_Browser` text NOT NULL,
  `sv_Date` varchar(50) NOT NULL,
  `sv_Time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_site_visitor`
--
ALTER TABLE `tbl_site_visitor`
  ADD PRIMARY KEY (`sv_pKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_site_visitor`
--
ALTER TABLE `tbl_site_visitor`
  MODIFY `sv_pKey` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
