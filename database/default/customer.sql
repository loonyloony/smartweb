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
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `siteid` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `firstname` varchar(200) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fax` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `salt` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cart` text CHARACTER SET utf8 NOT NULL,
  `wishlist` text CHARACTER SET utf8 NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `addressid` int(11) NOT NULL,
  `ip` int(50) NOT NULL,
  `status` int(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `activecode` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  `account` varchar(50) NOT NULL,
  `updated_date` datetime NOT NULL,
  `added_date` datetime NOT NULL,
  `bonus_point` double NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customer_group_id`, `siteid`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `addressid`, `ip`, `status`, `approved`, `token`, `activecode`, `date_added`, `account`, `updated_date`, `added_date`, `bonus_point`) VALUES
(1, 0, 'en', 'thanh', 'dat', 'thanh_dat952@yahoo.com', '0123456789', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, 0, 0, 1, 1, 'c4ca4238a0b923820dcc509a6f75849b', 'ljm2RoHPKt', '0000-00-00 00:00:00', '', '2013-07-05 10:24:43', '2013-07-05 10:24:43', 0),
(9, 0, 'default', 'thanh dat', 'null', 'tranthanhdat.it@gmail.com', '0123456789', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, 0, 0, 0, 0, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'OHThXNjK74', '0000-00-00 00:00:00', '', '2013-09-05 16:04:52', '2013-09-05 16:04:52', 0),
(8, 0, 'default', 'thanh dat', 'null', 'thanh_dat952ss@yahoo.com', '012345678', '', 'fcea920f7412b5da7be0cf42b8c93759', '', '', '', 0, 0, 0, 0, 0, 'c9f0f895fb98ab9159f51fd0297e236d', 'xLZ0wYRjs9', '0000-00-00 00:00:00', '', '2013-09-05 16:04:11', '2013-09-05 16:04:11', 0),
(7, 0, 'en', 'gdsa gs', 'gads gsda', 'dat.tran@elifepartners.com', 'g sa gdsa', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, 0, 192168, 1, 0, '8f14e45fceea167a5a36dedd4bea2543', 'GOeGuAbF1s', '0000-00-00 00:00:00', '', '2013-07-05 10:47:52', '2013-07-05 10:47:52', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
