-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2013 at 06:01 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartweb_hatomex`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(20) NOT NULL,
  `orderdate` datetime NOT NULL,
  `userid` varchar(50) NOT NULL,
  `customername` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `total` double NOT NULL,
  `point` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `orderid`, `orderdate`, `userid`, `customername`, `address`, `email`, `phone`, `status`, `comment`, `total`, `point`) VALUES
(1, '1379668671', '2013-09-20 16:17:51', '', 'Đỗ Nguyễn Khoa Học', '477 Lạc Long Quân Phường 5, Quận 11, Tp Hồ Chí Minh', 'hoc.do@elifepartners.com', '0932 125 898', 'active', '', 330000, 0),
(2, '1379669172', '2013-09-20 16:26:12', '', 'Đỗ Nguyễn Khoa Học', '477 Lạc Long Quân phường 5 quận 11 Tp Hồ Chí Minh', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 180000, 0),
(3, '1380693225', '2013-10-02 12:53:45', '', 'Đỗ Nguyễn Khoa Học', 'akfjadjfkadsjfkldsjafkjasdkfjdskfjkl', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 161700, 0),
(4, '1380693677', '2013-10-02 13:01:17', '', 'Phạm Đắc Lân', '128/15 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Phú', 'lan.pham@elifepartners.com', '0123456789', 'pending', '', 383700, 0),
(5, '1380713521', '2013-10-02 18:32:01', '', 'Tran Lang Hoang Hac', '32 Nguyen Thai Hoc, My Binh, Long Xuyen, An Giang', 'hac0284@gmail.com', '0937280284', 'pending', '', 300000, 0),
(6, '1380857084', '2013-10-04 10:24:44', '', 'đỗ nguyễn khoa học', '477 abc', 'hoc.do@elifepartners.com', '093456789', 'pending', '', 1250000, 0),
(7, '1381804726', '2013-10-15 09:38:46', '', 'Đỗ Nguyễn Khoa Học', '128/15 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Phú', 'hoc.do@elifepartners.com', '0932125898', 'pending', '', 733700, 0),
(8, '1381805549', '2013-10-15 09:52:29', '', 'Đỗ Nguyễn Khoa Học', '128/15 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Phú', 'hoc.do@elifepartners.com', '0932125898', 'pending', '', 1275800, 0),
(9, '1383901461', '2013-11-08 16:04:21', '', 'Đỗ Nguyễn Khoa Học', 'jfjgcff', 'das@elifepartners.com', '0932 125 898', 'active', '', 11833000, 5555),
(10, '1383902183', '2013-11-08 16:16:23', '', 'Đỗ Nguyễn Khoa Học', 'fdas gdsag sad', 'hoc.do@elifepartners.com', '0932 125 898', 'active', '', 554000, 50),
(11, '1383902312', '2013-11-08 16:18:32', '', 'Đỗ Nguyễn Khoa Học', 'dfsa gdsa', 'hoc.do@elifepartners.com', '0932 125 898', 'cancel', '', 554000, 554);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
