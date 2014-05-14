-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2013 at 12:08 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartweb_fanhanghieu`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `siteid` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `account` varchar(250) NOT NULL,
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
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `point` double NOT NULL,
  `identification` varchar(100) NOT NULL,
  `issuedate` datetime NOT NULL,
  `address` varchar(100) NOT NULL,
  `birthdate` datetime NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `completed_profile` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customer_group_id`, `siteid`, `account`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `addressid`, `ip`, `status`, `approved`, `token`, `activecode`, `added_date`, `updated_date`, `point`, `identification`, `issuedate`, `address`, `birthdate`, `birthplace`, `completed_profile`, `gender`) VALUES
(1, 0, 'default', '', 'Đỗ', 'Nguyễn Khoa Học', 'hoc.do@elifepartners.com', '0932 125 898', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, 0, 0, 1, 1, 'c4ca4238a0b923820dcc509a6f75849b', '', '2013-09-20 12:11:48', '2013-09-20 12:11:48', 1000, '250824549', '2013-11-03 00:00:00', 'ho chi minh fsdafdsa', '2013-11-09 00:00:00', '', 0, 'female');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
