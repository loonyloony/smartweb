-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2013 at 06:00 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartweb_mstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE IF NOT EXISTS `site` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(30) NOT NULL,
  `slogan` text NOT NULL,
  `logo` text NOT NULL,
  `symbol` text NOT NULL,
  `imageyahoo` text NOT NULL,
  `imageskype` text NOT NULL,
  `currency` varchar(20) NOT NULL,
  `contactemail` text NOT NULL,
  `sitename` varchar(100) NOT NULL,
  `siteurl` text NOT NULL,
  `language` varchar(20) NOT NULL,
  `pagetopic` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `googleanalytics` text NOT NULL,
  `skinid` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `exchange_point` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `siteid`, `slogan`, `logo`, `symbol`, `imageyahoo`, `imageskype`, `currency`, `contactemail`, `sitename`, `siteurl`, `language`, `pagetopic`, `description`, `keywords`, `googleanalytics`, `skinid`, `status`, `exchange_point`) VALUES
(1, 'default', 'Cổng thông tin mua bán', 'upload/logo (1).png', 'upload/logo (1).png', '', '', 'vnd, usd', 'dat.tran@elifepartners.com', 'M-Store', 'http://www.mstore.com/', 'en', '', '', '', '', 'mstore', 'Active', 1000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
