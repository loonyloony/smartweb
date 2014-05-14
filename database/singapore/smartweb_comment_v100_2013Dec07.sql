-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2013 at 04:06 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartweb_sgp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `subject` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `commentdate` datetime NOT NULL,
  `mediaid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `objtype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `receiveuser` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `level`, `subject`, `description`, `commentdate`, `mediaid`, `status`, `userid`, `objtype`, `receiveuser`) VALUES
(1, 0, 'gdasgdsa', 'g dsagdsa gas', '2013-12-06 12:27:18', '5', '', 0, 'propertyproduct', 0),
(2, 0, 'fds dsag dsag sad', 'gdsa gds gds', '2013-12-06 12:28:31', '5', '', 4, 'propertyproduct', 0),
(3, 0, 're: fds dsag dsag sad', 'test thu xem sao nao', '2013-12-06 14:43:20', '5', '', 4, 'propertyproduct', 0),
(4, 0, 're: re: fds dsag dsag sad', 'gdsa gsa ga hfa', '2013-12-06 14:48:38', '5', '', 4, 'propertyproduct', 0),
(5, 0, 're: re: re: fds dsag dsag sad', 'gd sa gsah sa', '2013-12-06 14:48:47', '5', '', 4, 'propertyproduct', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
