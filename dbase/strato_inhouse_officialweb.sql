-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2015 at 07:54 PM
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
-- Table structure for table `tbl_email_subscriber`
--

CREATE TABLE IF NOT EXISTS `tbl_email_subscriber` (
  `es_pKey` int(100) NOT NULL,
  `es_Fullname` varchar(250) NOT NULL,
  `es_Email` varchar(250) NOT NULL,
  `es_URL` varchar(250) DEFAULT NULL,
  `es_Active` tinyint(1) NOT NULL,
  `es_IPAdd` varchar(25) NOT NULL,
  `es_Country` text NOT NULL,
  `es_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_visitor`
--

CREATE TABLE IF NOT EXISTS `tbl_portfolio_visitor` (
  `pv_pKey` int(100) NOT NULL,
  `pv_IPAdd` text NOT NULL,
  `pv_Country` text NOT NULL,
  `pv_Browser` text NOT NULL,
  `pv_Date` varchar(50) NOT NULL,
  `pv_Time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seo`
--

CREATE TABLE IF NOT EXISTS `tbl_seo` (
  `pKey` int(1) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL,
  `header` text NOT NULL,
  `subheader` text NOT NULL,
  `started` varchar(50) NOT NULL,
  `copyright` text NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_seo`
--

INSERT INTO `tbl_seo` (`pKey`, `title`, `description`, `keyword`, `header`, `subheader`, `started`, `copyright`, `version`) VALUES
(1, 'Strato Data Solutions', 'We are a young, progressive and innovative IT solution provider flowing with fresh ideas and creative energy with their own area of expertise who believe in innovation and inspired to bring impact in the community - whether it''s local, national and international; specializing in custom business application development, web design and development, mobile application development, graphic design and fabrication, IT infrastructure and networking consultancy and support, computer systems, printer, hardware parts and peripheral reselling.', 'strato, strato data, strato data solutions, data solutions, calamba, calamba laguna, cabuyao, cabuyao laguna, system, systems, solution, consultancy, web, web design, web development, business, accounting, mobile, .net, c#, vb.net, android, healthcare application, healthcare application solutions, hospital management system, graphic design, fabrication, windows desktop development,computer networking, network, solutions, visual studio', 'Strato Data Solutions is a young, progressive and innovative IT solution provider flowing with fresh ideas and creative energy with their own area of expertise who believe in innovation and inspired to bring impact in the community - whether it''s local, national and international; specializing in custom business application development, web design and development, mobile application development, graphic design and fabrication, IT infrastructure and networking consultancy and support, computer systems, printer, hardware parts and peripheral reselling.', 'We have one great vision in mind - to be known for providing creative yet practical out-of-the-box concepts solutions that set apart the good from the great and cost effective for our clients'' needs: to give them the best service possible, whether for large, as well as small to medium organizations.', 'January 20, 2015', 'All contents and images displayed in this site are copyright © by Strato Data Solutions unless stated otherwise. As for the case studies, copyright is secured automatically when the work is created. The rest are owned by their respected owners.', '1.0');

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
-- Indexes for table `tbl_email_subscriber`
--
ALTER TABLE `tbl_email_subscriber`
  ADD PRIMARY KEY (`es_pKey`);

--
-- Indexes for table `tbl_msg_private`
--
ALTER TABLE `tbl_msg_private`
  ADD PRIMARY KEY (`mp_pKey`);

--
-- Indexes for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  ADD PRIMARY KEY (`pKey`);

--
-- Indexes for table `tbl_site_visitor`
--
ALTER TABLE `tbl_site_visitor`
  ADD PRIMARY KEY (`sv_pKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_email_subscriber`
--
ALTER TABLE `tbl_email_subscriber`
  MODIFY `es_pKey` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_msg_private`
--
ALTER TABLE `tbl_msg_private`
  MODIFY `mp_pKey` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  MODIFY `pKey` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_site_visitor`
--
ALTER TABLE `tbl_site_visitor`
  MODIFY `sv_pKey` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
