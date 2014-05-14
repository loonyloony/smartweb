-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2013 at 05:42 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartweb_marketingonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_search`
--

CREATE TABLE IF NOT EXISTS `advance_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objtype` varchar(20) NOT NULL,
  `objid` varchar(50) NOT NULL,
  `rootcontent` longtext NOT NULL,
  `escapecontent` longtext NOT NULL,
  `alt_image` longtext NOT NULL,
  `others` longtext NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `rootcontent` (`rootcontent`),
  FULLTEXT KEY `escapecontent` (`escapecontent`),
  FULLTEXT KEY `alt_image` (`alt_image`),
  FULLTEXT KEY `others` (`others`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
