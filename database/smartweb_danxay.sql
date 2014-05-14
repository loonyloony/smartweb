-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2013 at 03:06 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartweb_danxay`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon`
--

CREATE TABLE IF NOT EXISTS `addon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addonid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `moduleid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `areacode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `addon`
--

INSERT INTO `addon` (`id`, `addonid`, `moduleid`, `areacode`, `sortorder`) VALUES
(32, 'homesimpleslides', 'splash/homesimpleslides', 'sidebar', 1),
(31, 'catbanner', 'splash/catbanner', 'splash', 1),
(30, 'groupnews', 'sidebar/groupnews', 'sidebar', 1),
(29, 'subgroups', 'sidebar/subgroups', 'sidebar', 1),
(28, 'homeslider', 'splash/homeslider', 'splash', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_description`
--

CREATE TABLE IF NOT EXISTS `addon_description` (
  `addonid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `languageid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `addonname` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`addonid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addon_description`
--

INSERT INTO `addon_description` (`addonid`, `languageid`, `addonname`) VALUES
('catbanner', 'vn', 'Banner theo category'),
('promotionbox', 'vn', 'Box Khuyến mãi'),
('homeproduct', 'vn', 'home new product'),
('groupnews', 'en', 'Group news'),
('subgroups', 'vn', 'Menu con'),
('subgroups', 'en', 'Menu con'),
('groupnews', 'vn', 'Group news'),
('homeslider', 'en', 'Home Slider'),
('homeslider', 'vn', 'Banner 3D trang chủ'),
('catbanner', 'en', 'Banner by category'),
('homesimpleslides', 'vn', 'Bảo trợ bởi'),
('homesimpleslides', 'en', 'Sponsored By');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoryid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `categoryname` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `category`
--


-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `commentdate` datetime NOT NULL,
  `mediaid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `refersitemap` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `countryid` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address_format` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryid`, `countryname`, `iso_code_2`, `iso_code_3`, `address_format`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', ''),
(2, 'Albania', 'AL', 'ALB', ''),
(3, 'Algeria', 'DZ', 'DZA', ''),
(4, 'American Samoa', 'AS', 'ASM', ''),
(5, 'Andorra', 'AD', 'AND', ''),
(6, 'Angola', 'AO', 'AGO', ''),
(7, 'Anguilla', 'AI', 'AIA', ''),
(8, 'Antarctica', 'AQ', 'ATA', ''),
(9, 'Antigua and Barbuda', 'AG', 'ATG', ''),
(10, 'Argentina', 'AR', 'ARG', ''),
(11, 'Armenia', 'AM', 'ARM', ''),
(12, 'Aruba', 'AW', 'ABW', ''),
(13, 'Australia', 'AU', 'AUS', ''),
(14, 'Austria', 'AT', 'AUT', ''),
(15, 'Azerbaijan', 'AZ', 'AZE', ''),
(16, 'Bahamas', 'BS', 'BHS', ''),
(17, 'Bahrain', 'BH', 'BHR', ''),
(18, 'Bangladesh', 'BD', 'BGD', ''),
(19, 'Barbados', 'BB', 'BRB', ''),
(20, 'Belarus', 'BY', 'BLR', ''),
(21, 'Belgium', 'BE', 'BEL', ''),
(22, 'Belize', 'BZ', 'BLZ', ''),
(23, 'Benin', 'BJ', 'BEN', ''),
(24, 'Bermuda', 'BM', 'BMU', ''),
(25, 'Bhutan', 'BT', 'BTN', ''),
(26, 'Bolivia', 'BO', 'BOL', ''),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', ''),
(28, 'Botswana', 'BW', 'BWA', ''),
(29, 'Bouvet Island', 'BV', 'BVT', ''),
(30, 'Brazil', 'BR', 'BRA', ''),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', ''),
(32, 'Brunei Darussalam', 'BN', 'BRN', ''),
(33, 'Bulgaria', 'BG', 'BGR', ''),
(34, 'Burkina Faso', 'BF', 'BFA', ''),
(35, 'Burundi', 'BI', 'BDI', ''),
(36, 'Cambodia', 'KH', 'KHM', ''),
(37, 'Cameroon', 'CM', 'CMR', ''),
(38, 'Canada', 'CA', 'CAN', ''),
(39, 'Cape Verde', 'CV', 'CPV', ''),
(40, 'Cayman Islands', 'KY', 'CYM', ''),
(41, 'Central African Republic', 'CF', 'CAF', ''),
(42, 'Chad', 'TD', 'TCD', ''),
(43, 'Chile', 'CL', 'CHL', ''),
(44, 'China', 'CN', 'CHN', ''),
(45, 'Christmas Island', 'CX', 'CXR', ''),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', ''),
(47, 'Colombia', 'CO', 'COL', ''),
(48, 'Comoros', 'KM', 'COM', ''),
(49, 'Congo', 'CG', 'COG', ''),
(50, 'Cook Islands', 'CK', 'COK', ''),
(51, 'Costa Rica', 'CR', 'CRI', ''),
(52, 'Cote D''Ivoire', 'CI', 'CIV', ''),
(53, 'Croatia', 'HR', 'HRV', ''),
(54, 'Cuba', 'CU', 'CUB', ''),
(55, 'Cyprus', 'CY', 'CYP', ''),
(56, 'Czech Republic', 'CZ', 'CZE', ''),
(57, 'Denmark', 'DK', 'DNK', ''),
(58, 'Djibouti', 'DJ', 'DJI', ''),
(59, 'Dominica', 'DM', 'DMA', ''),
(60, 'Dominican Republic', 'DO', 'DOM', ''),
(61, 'East Timor', 'TP', 'TMP', ''),
(62, 'Ecuador', 'EC', 'ECU', ''),
(63, 'Egypt', 'EG', 'EGY', ''),
(64, 'El Salvador', 'SV', 'SLV', ''),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', ''),
(66, 'Eritrea', 'ER', 'ERI', ''),
(67, 'Estonia', 'EE', 'EST', ''),
(68, 'Ethiopia', 'ET', 'ETH', ''),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', ''),
(70, 'Faroe Islands', 'FO', 'FRO', ''),
(71, 'Fiji', 'FJ', 'FJI', ''),
(72, 'Finland', 'FI', 'FIN', ''),
(73, 'France', 'FR', 'FRA', ''),
(74, 'France, Metropolitan', 'FX', 'FXX', ''),
(75, 'French Guiana', 'GF', 'GUF', ''),
(76, 'French Polynesia', 'PF', 'PYF', ''),
(77, 'French Southern Territories', 'TF', 'ATF', ''),
(78, 'Gabon', 'GA', 'GAB', ''),
(79, 'Gambia', 'GM', 'GMB', ''),
(80, 'Georgia', 'GE', 'GEO', ''),
(81, 'Germany', 'DE', 'DEU', ''),
(82, 'Ghana', 'GH', 'GHA', ''),
(83, 'Gibraltar', 'GI', 'GIB', ''),
(84, 'Greece', 'GR', 'GRC', ''),
(85, 'Greenland', 'GL', 'GRL', ''),
(86, 'Grenada', 'GD', 'GRD', ''),
(87, 'Guadeloupe', 'GP', 'GLP', ''),
(88, 'Guam', 'GU', 'GUM', ''),
(89, 'Guatemala', 'GT', 'GTM', ''),
(90, 'Guinea', 'GN', 'GIN', ''),
(91, 'Guinea-bissau', 'GW', 'GNB', ''),
(92, 'Guyana', 'GY', 'GUY', ''),
(93, 'Haiti', 'HT', 'HTI', ''),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', ''),
(95, 'Honduras', 'HN', 'HND', ''),
(96, 'Hong Kong', 'HK', 'HKG', ''),
(97, 'Hungary', 'HU', 'HUN', ''),
(98, 'Iceland', 'IS', 'ISL', ''),
(99, 'India', 'IN', 'IND', ''),
(100, 'Indonesia', 'ID', 'IDN', ''),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', ''),
(102, 'Iraq', 'IQ', 'IRQ', ''),
(103, 'Ireland', 'IE', 'IRL', ''),
(104, 'Israel', 'IL', 'ISR', ''),
(105, 'Italy', 'IT', 'ITA', ''),
(106, 'Jamaica', 'JM', 'JAM', ''),
(107, 'Japan', 'JP', 'JPN', ''),
(108, 'Jordan', 'JO', 'JOR', ''),
(109, 'Kazakhstan', 'KZ', 'KAZ', ''),
(110, 'Kenya', 'KE', 'KEN', ''),
(111, 'Kiribati', 'KI', 'KIR', ''),
(112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', ''),
(113, 'Korea, Republic of', 'KR', 'KOR', ''),
(114, 'Kuwait', 'KW', 'KWT', ''),
(115, 'Kyrgyzstan', 'KG', 'KGZ', ''),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', ''),
(117, 'Latvia', 'LV', 'LVA', ''),
(118, 'Lebanon', 'LB', 'LBN', ''),
(119, 'Lesotho', 'LS', 'LSO', ''),
(120, 'Liberia', 'LR', 'LBR', ''),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', ''),
(122, 'Liechtenstein', 'LI', 'LIE', ''),
(123, 'Lithuania', 'LT', 'LTU', ''),
(124, 'Luxembourg', 'LU', 'LUX', ''),
(125, 'Macau', 'MO', 'MAC', ''),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', ''),
(127, 'Madagascar', 'MG', 'MDG', ''),
(128, 'Malawi', 'MW', 'MWI', ''),
(129, 'Malaysia', 'MY', 'MYS', ''),
(130, 'Maldives', 'MV', 'MDV', ''),
(131, 'Mali', 'ML', 'MLI', ''),
(132, 'Malta', 'MT', 'MLT', ''),
(133, 'Marshall Islands', 'MH', 'MHL', ''),
(134, 'Martinique', 'MQ', 'MTQ', ''),
(135, 'Mauritania', 'MR', 'MRT', ''),
(136, 'Mauritius', 'MU', 'MUS', ''),
(137, 'Mayotte', 'YT', 'MYT', ''),
(138, 'Mexico', 'MX', 'MEX', ''),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', ''),
(140, 'Moldova, Republic of', 'MD', 'MDA', ''),
(141, 'Monaco', 'MC', 'MCO', ''),
(142, 'Mongolia', 'MN', 'MNG', ''),
(143, 'Montserrat', 'MS', 'MSR', ''),
(144, 'Morocco', 'MA', 'MAR', ''),
(145, 'Mozambique', 'MZ', 'MOZ', ''),
(146, 'Myanmar', 'MM', 'MMR', ''),
(147, 'Namibia', 'NA', 'NAM', ''),
(148, 'Nauru', 'NR', 'NRU', ''),
(149, 'Nepal', 'NP', 'NPL', ''),
(150, 'Netherlands', 'NL', 'NLD', ''),
(151, 'Netherlands Antilles', 'AN', 'ANT', ''),
(152, 'New Caledonia', 'NC', 'NCL', ''),
(153, 'New Zealand', 'NZ', 'NZL', ''),
(154, 'Nicaragua', 'NI', 'NIC', ''),
(155, 'Niger', 'NE', 'NER', ''),
(156, 'Nigeria', 'NG', 'NGA', ''),
(157, 'Niue', 'NU', 'NIU', ''),
(158, 'Norfolk Island', 'NF', 'NFK', ''),
(159, 'Northern Mariana Islands', 'MP', 'MNP', ''),
(160, 'Norway', 'NO', 'NOR', ''),
(161, 'Oman', 'OM', 'OMN', ''),
(162, 'Pakistan', 'PK', 'PAK', ''),
(163, 'Palau', 'PW', 'PLW', ''),
(164, 'Panama', 'PA', 'PAN', ''),
(165, 'Papua New Guinea', 'PG', 'PNG', ''),
(166, 'Paraguay', 'PY', 'PRY', ''),
(167, 'Peru', 'PE', 'PER', ''),
(168, 'Philippines', 'PH', 'PHL', ''),
(169, 'Pitcairn', 'PN', 'PCN', ''),
(170, 'Poland', 'PL', 'POL', ''),
(171, 'Portugal', 'PT', 'PRT', ''),
(172, 'Puerto Rico', 'PR', 'PRI', ''),
(173, 'Qatar', 'QA', 'QAT', ''),
(174, 'Reunion', 'RE', 'REU', ''),
(175, 'Romania', 'RO', 'ROM', ''),
(176, 'Russian Federation', 'RU', 'RUS', ''),
(177, 'Rwanda', 'RW', 'RWA', ''),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', ''),
(179, 'Saint Lucia', 'LC', 'LCA', ''),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', ''),
(181, 'Samoa', 'WS', 'WSM', ''),
(182, 'San Marino', 'SM', 'SMR', ''),
(183, 'Sao Tome and Principe', 'ST', 'STP', ''),
(184, 'Saudi Arabia', 'SA', 'SAU', ''),
(185, 'Senegal', 'SN', 'SEN', ''),
(186, 'Seychelles', 'SC', 'SYC', ''),
(187, 'Sierra Leone', 'SL', 'SLE', ''),
(188, 'Singapore', 'SG', 'SGP', ''),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', ''),
(190, 'Slovenia', 'SI', 'SVN', ''),
(191, 'Solomon Islands', 'SB', 'SLB', ''),
(192, 'Somalia', 'SO', 'SOM', ''),
(193, 'South Africa', 'ZA', 'ZAF', ''),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', ''),
(195, 'Spain', 'ES', 'ESP', ''),
(196, 'Sri Lanka', 'LK', 'LKA', ''),
(197, 'St. Helena', 'SH', 'SHN', ''),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', ''),
(199, 'Sudan', 'SD', 'SDN', ''),
(200, 'Suriname', 'SR', 'SUR', ''),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', ''),
(202, 'Swaziland', 'SZ', 'SWZ', ''),
(203, 'Sweden', 'SE', 'SWE', ''),
(204, 'Switzerland', 'CH', 'CHE', ''),
(205, 'Syrian Arab Republic', 'SY', 'SYR', ''),
(206, 'Taiwan', 'TW', 'TWN', ''),
(207, 'Tajikistan', 'TJ', 'TJK', ''),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', ''),
(209, 'Thailand', 'TH', 'THA', ''),
(210, 'Togo', 'TG', 'TGO', ''),
(211, 'Tokelau', 'TK', 'TKL', ''),
(212, 'Tonga', 'TO', 'TON', ''),
(213, 'Trinidad and Tobago', 'TT', 'TTO', ''),
(214, 'Tunisia', 'TN', 'TUN', ''),
(215, 'Turkey', 'TR', 'TUR', ''),
(216, 'Turkmenistan', 'TM', 'TKM', ''),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', ''),
(218, 'Tuvalu', 'TV', 'TUV', ''),
(219, 'Uganda', 'UG', 'UGA', ''),
(220, 'Ukraine', 'UA', 'UKR', ''),
(221, 'United Arab Emirates', 'AE', 'ARE', ''),
(222, 'United Kingdom', 'GB', 'GBR', ''),
(223, 'United States', 'US', 'USA', ''),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', ''),
(225, 'Uruguay', 'UY', 'URY', ''),
(226, 'Uzbekistan', 'UZ', 'UZB', ''),
(227, 'Vanuatu', 'VU', 'VUT', ''),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', ''),
(229, 'Venezuela', 'VE', 'VEN', ''),
(230, 'Viet Nam', 'VN', 'VNM', ''),
(231, 'Virgin Islands (British)', 'VG', 'VGB', ''),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', ''),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', ''),
(234, 'Western Sahara', 'EH', 'ESH', ''),
(235, 'Yemen', 'YE', 'YEM', ''),
(236, 'Yugoslavia', 'YU', 'YUG', ''),
(237, 'Zaire', 'ZR', 'ZAR', ''),
(238, 'Zambia', 'ZM', 'ZMB', ''),
(239, 'Zimbabwe', 'ZW', 'ZWE', '');

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
  PRIMARY KEY (`customerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customer_group_id`, `siteid`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `addressid`, `ip`, `status`, `approved`, `token`, `activecode`, `date_added`, `account`, `updated_date`, `added_date`) VALUES
(1, 0, 'en', 'thanh', 'dat', 'thanh_dat952@yahoo.com', '0123456789', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, 0, 0, 1, 1, 'c4ca4238a0b923820dcc509a6f75849b', 'ljm2RoHPKt', '0000-00-00 00:00:00', '', '2013-07-05 10:24:43', '2013-07-05 10:24:43'),
(7, 0, 'en', 'gdsa gs', 'gads gsda', 'dat.tran@elifepartners.com', 'g sa gdsa', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, 0, 192168, 1, 0, '8f14e45fceea167a5a36dedd4bea2543', 'GOeGuAbF1s', '0000-00-00 00:00:00', '', '2013-07-05 10:47:52', '2013-07-05 10:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(30) NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_group_description`
--

CREATE TABLE IF NOT EXISTS `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `languageid` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_group_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_ip`
--

CREATE TABLE IF NOT EXISTS `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_ip`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_ip_blacklist`
--

CREATE TABLE IF NOT EXISTS `customer_ip_blacklist` (
  `customer_ip_blacklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ip_blacklist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_ip_blacklist`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_online`
--

CREATE TABLE IF NOT EXISTS `customer_online` (
  `customer_online_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_online_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_online`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_reward`
--

CREATE TABLE IF NOT EXISTS `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_reward`
--


-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dictionary`
--


-- --------------------------------------------------------

--
-- Table structure for table `dictionary_description`
--

CREATE TABLE IF NOT EXISTS `dictionary_description` (
  `id` int(11) NOT NULL,
  `language_id` varchar(50) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dictionary_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `elife_nhantin`
--

CREATE TABLE IF NOT EXISTS `elife_nhantin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaydangky` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `elife_nhantin`
--


-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `email`
--


-- --------------------------------------------------------

--
-- Table structure for table `email_description`
--

CREATE TABLE IF NOT EXISTS `email_description` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emailid` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `languageid` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `email_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `fileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `filetypeid` varchar(20) NOT NULL,
  `filename` text NOT NULL,
  `filepath` text,
  `fileparent` bigint(20) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `filesize` text NOT NULL,
  `extension` varchar(20) NOT NULL,
  `tagkeyword` varchar(20) NOT NULL,
  `activeby` varchar(50) NOT NULL,
  `activedate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `updatedby` varchar(50) NOT NULL,
  `deleteddate` datetime NOT NULL,
  `deletedby` varchar(50) NOT NULL,
  PRIMARY KEY (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `file`
--


-- --------------------------------------------------------

--
-- Table structure for table `filetype`
--

CREATE TABLE IF NOT EXISTS `filetype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filetypeid` varchar(20) NOT NULL,
  `listextension` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `filetype`
--

INSERT INTO `filetype` (`id`, `filetypeid`, `listextension`) VALUES
(1, 'image', 'jpg, jpeg, png, gif'),
(2, 'video', 'flv, mp4, dat, avi, wmv, mpeg'),
(12, 'any', '');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `languageid` varchar(50) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `languageid`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sortOrder`, `status`) VALUES
(1, 'vn', 'Việt Nam', 'vn', 'en_US.UTF-8,en_US,en-gb,vietnam', 'vn.png', 'vietnam', 'vietnam', 1, 1),
(2, 'en', 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'en.png', 'english', 'english', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE IF NOT EXISTS `layout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `layoutid` varchar(50) CHARACTER SET utf8 NOT NULL,
  `imagedemo` text COLLATE utf8_unicode_ci NOT NULL,
  `linkdemo` text COLLATE utf8_unicode_ci NOT NULL,
  `layouttype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sidebarleft` bigint(20) NOT NULL,
  `sidebarright` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`id`, `layoutid`, `imagedemo`, `linkdemo`, `layouttype`, `sidebarleft`, `sidebarright`) VALUES
(1, 'default', 'upload/elife_logo.png', 'http://localhost/demo/upload/', 'leftsidebar', 1, 0),
(2, 'homepage', '', '', 'nosidebar', 0, 0),
(12, 'group', '', '', 'nosidebar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `layout_dashboard`
--

CREATE TABLE IF NOT EXISTS `layout_dashboard` (
  `layoutid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `addonid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layout_dashboard`
--


-- --------------------------------------------------------

--
-- Table structure for table `layout_description`
--

CREATE TABLE IF NOT EXISTS `layout_description` (
  `layoutid` varchar(250) CHARACTER SET utf8 NOT NULL,
  `layoutname` text COLLATE utf8_unicode_ci NOT NULL,
  `languageid` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layout_description`
--

INSERT INTO `layout_description` (`layoutid`, `layoutname`, `languageid`) VALUES
('homepage', 'Homepage Layout', 'en'),
('default', 'Default Layout', 'en'),
('group_layout', 'Group Layout', 'en'),
('group_layout', 'Bố cục Grou[', 'vn'),
('homepage', 'Bố cục Trang chủ', 'vn'),
('default', 'Bố cục mặc định', 'vn'),
('group', 'Bố cục Group', 'vn'),
('group', 'Group Layout', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `layout_sidebar`
--

CREATE TABLE IF NOT EXISTS `layout_sidebar` (
  `layoutid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sidebarid` bigint(20) NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layout_sidebar`
--


-- --------------------------------------------------------

--
-- Table structure for table `layout_splash`
--

CREATE TABLE IF NOT EXISTS `layout_splash` (
  `layoutid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `addonid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layout_splash`
--

INSERT INTO `layout_splash` (`layoutid`, `addonid`, `sortorder`) VALUES
('homepage', 'homeslider', 1),
('default', 'catbanner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mediaid` varchar(50) NOT NULL,
  `mediaparent` varchar(50) NOT NULL,
  `mediatype` varchar(50) NOT NULL,
  `refersitemap` varchar(200) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `email` text NOT NULL,
  `languageid` varchar(100) NOT NULL,
  `summary` text NOT NULL,
  `description` longtext NOT NULL,
  `alias` text NOT NULL,
  `keyword` text NOT NULL,
  `meta_title` text NOT NULL,
  `metakeyword` text NOT NULL,
  `metadescription` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `imageid` bigint(20) NOT NULL,
  `imagepath` text NOT NULL,
  `fileid` bigint(20) NOT NULL,
  `filepath` text NOT NULL,
  `groupkeys` text NOT NULL,
  `colors` text NOT NULL,
  `viewcount` bigint(20) NOT NULL,
  `position` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `temp` text NOT NULL,
  `statusdate` datetime DEFAULT NULL,
  `statusby` varchar(50) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `author` (`author`),
  FULLTEXT KEY `source` (`source`),
  FULLTEXT KEY `medianame` (`title`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `summary` (`summary`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `mediaid`, `mediaparent`, `mediatype`, `refersitemap`, `userid`, `title`, `link`, `email`, `languageid`, `summary`, `description`, `alias`, `keyword`, `meta_title`, `metakeyword`, `metadescription`, `author`, `source`, `price`, `imageid`, `imagepath`, `fileid`, `filepath`, `groupkeys`, `colors`, `viewcount`, `position`, `status`, `temp`, `statusdate`, `statusby`, `updateddate`) VALUES
(1, 'default13765535781', '', 'media_news', '[165]', 'admin', 'Khám phá đời sống thiên nhiên rừng ngập mặn', '', '', 'vn', '&lt;p&gt;\r\n	fdas&lt;/p&gt;', '&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Untitled-2.jpg&quot; style=&quot;line-height: 1.67em; float: left; margin: 5px;&quot; /&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus. Sed odio est, auctor ac, sollicitudin in, consequat vitae, orci. Fusce id felis. Vivamus sollicitudin metus eget eros.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#003300;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Thế giới động vật hoang d&amp;atilde;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/dsa.jpg&quot; style=&quot;line-height: 1.67em; float: right; margin-left: 5px; margin-right: 5px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In posuere felis nec tortor. Pellentesque faucibus. Ut accumsan ultricies elit. Maecenas at justo id velit placerat molestie. Donec dictum lectus non odio. Cras a ante vitae enim iaculis aliquam. Mauris nunc quam, venenatis nec, euismod sit amet, egestas placerat, est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras id elit. Integer quis urna. Ut ante enim, dapibus malesuada, fringilla eu, condimentum quis, tellus. Aenean porttitor eros vel dolor. Don&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	ec convallis pede venenatis nibh. Duis quam. Nam eget lacus. Aliquam erat volutpat. Quisque dignissim congue leo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/fdsa.jpg&quot; style=&quot;line-height: 1.67em; margin-left: 5px; margin-right: 5px; float: left;&quot; /&gt;llentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In posuere felis nec tortor. Pellentesque faucibus. Ut accumsan ultricies elit. Maecenas at justo id velit placerat molestie. Donec dictum lectus non odio. Cras a ante vitae enim iaculis aliquam. Mauris nunc quam, venenatis nec, euismod sit amet, egestas placerat, est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras id elit. Integer quis urna. Ut ante enim, dapibus malesuada, fringilla eu, condimentum quis, tellus. Aenean porttitor eros vel dolor. Don&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	ec convallis pede venenatis nibh. Duis quam. Nam eget lacus. Aliquam erat volutpat. Quisque dignissim congue leo.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, 'upload/fdsa.jpg', 0, '', '', '', 21, 0, 'active', '', '2013-08-15 14:59:38', 'admin', '2013-08-16 12:31:58'),
(2, 'default13765535781', '', 'media_news', '[165]', 'admin', 'gsasda', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/fdsa.jpg', 0, '', '', '', 21, 0, 'active', '', '2013-08-15 14:59:39', 'admin', '2013-08-16 12:31:58'),
(3, 'default13765584851', '', 'media_news', '[165]', 'admin', 'Chinh phục núi chùa - Truy tìm dấu chân Phật', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/banner.jpg', 0, '', '', '', 2, 0, 'active', '', '2013-08-15 16:21:25', 'admin', '2013-08-16 12:12:43'),
(4, 'default13765584851', '', 'media_news', '[165]', 'admin', 'sad', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/banner.jpg', 0, '', '', '', 2, 0, 'active', '', '2013-08-15 16:21:25', 'admin', '2013-08-16 12:12:43'),
(5, 'default13765585671', '', 'media_news', '[165]', 'admin', 'Chèo thuyền Kayad - Chinh phục đường rừng quanh co', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/logo.png', 0, '', '', '', 5, 0, 'active', '', '2013-08-15 16:22:47', 'admin', '2013-08-16 12:15:35'),
(6, 'default13765585671', '', 'media_news', '[165]', 'admin', 'gdas', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/logo.png', 0, '', '', '', 5, 0, 'active', '', '2013-08-15 16:22:47', 'admin', '2013-08-16 12:15:35'),
(7, 'default13765586041', '', 'media_news', '[166]', 'admin', 'LỘI BÙN - SĂN HẢI SẢN', '', '', 'vn', '', '', 'loi-bun-san-hai-san', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 2, 0, 'active', '', '2013-08-15 16:23:24', 'admin', '2013-08-15 16:23:24'),
(8, 'default13765586041', '', 'media_news', '[166]', 'admin', 'fdsa', '', '', 'en', '', '', 'loi-bun-san-hai-san', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 2, 0, 'active', '', '2013-08-15 16:23:24', 'admin', '2013-08-15 16:23:24'),
(9, 'default13766288241', '', 'media_news', '[168]', 'admin', 'Phượt dần Xây Cần Giờ', '', '', 'vn', '', '', 'phuot-dan-xay', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 1, 0, 'active', '', '2013-08-16 11:53:44', 'admin', '2013-08-16 11:54:24'),
(10, 'default13766288241', '', 'media_news', '[168]', 'admin', 'phuot', '', '', 'en', '', '', 'phuot-dan-xay', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 1, 0, 'active', '', '2013-08-16 11:53:44', 'admin', '2013-08-16 11:54:24'),
(11, 'default13767164751', '', 'media_information', '[160]', 'admin', 'dan xay', '', '', 'vn', '', '&lt;form id=&quot;hochiminh&quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#000000;&quot;&gt;Chỉ c&amp;aacute;ch trung t&amp;acirc;m TP.HCM khoảng 50 km, huyện Cần Giờ nổi tiếng với rừng ngập mặn, biển v&amp;agrave; hải sản tươi sống rất th&amp;iacute;ch hợp cho những chuyến du lịch &amp;ldquo;bụi&amp;rdquo; v&amp;agrave;o ng&amp;agrave;y cuối tuần.&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Hai phương tiện đơn giản nhất để đi Cần Giờ l&amp;agrave; bằng xe bu&amp;yacute;t hoặc xe m&amp;aacute;y.&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#000000;&quot;&gt;&lt;strong&gt;Nếu đi bằng xe bu&amp;yacute;t, &lt;/strong&gt;&lt;/span&gt;từ chợ Bến Th&amp;agrave;nh bạn bắt tuyến xe bu&amp;yacute;t số &lt;span style=&quot;color:#000000;&quot;&gt;&lt;strong&gt;20&lt;/strong&gt;&lt;/span&gt; đi Nh&amp;agrave; B&amp;egrave;, xe sẽ dừng ở ngay đầu b&amp;ecirc;n n&amp;agrave;y của ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#000000;&quot;&gt;&lt;strong&gt;Nếu đi bằng xe m&amp;aacute;y,&lt;/strong&gt;&lt;/span&gt; Đường đi Cần Giờ kh&amp;aacute; đơn giản. Từ đại lộ Nguyễn Văn Linh, Quận 7 rẽ phải sang đường Huỳnh Tấn Ph&amp;aacute;t, thẳng đến cuối đường l&amp;agrave; ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh.&lt;/div&gt;\r\n&lt;/form&gt;\r\n&lt;form id=&quot;binhkhanh&quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#000000;&quot;&gt;Đến Ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh, bạn mua v&amp;eacute; qua ph&amp;agrave;, gi&amp;aacute; ph&amp;agrave; khoảng: 1.500 &amp;nbsp;đồng cho người đi bộ v&amp;agrave; 4.500 đồng cho xe m&amp;aacute;y.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Qua ph&amp;agrave; l&amp;agrave; đụng huyện Cần Giờ, bạn bắt tiếp một tuyến xe bu&amp;yacute;t nữa, hoặc đi xe m&amp;aacute;y th&amp;igrave; từ đ&amp;oacute; cứ chạy thẳng một đường l&amp;agrave; đến Cầu Dần X&amp;acirc;y, ngay ch&amp;acirc;n cầu l&amp;agrave; Khu du lịch sinh th&amp;aacute;i Rừng Ngập Mặn Dần X&amp;acirc;y.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Dần X&amp;acirc;y Mangrove Park được Unesco c&amp;ocirc;ng nhận l&amp;agrave; KDL c&amp;oacute; Rừng ngập mặn, Biển, N&amp;uacute;i đầu ti&amp;ecirc;n ở Việt Nam, cũng được xem l&amp;agrave; trung t&amp;acirc;m du lịch Cần Giờ, sau khi tham quan Dần X&amp;acirc;y Mangrove Park, bạn c&amp;oacute; thể gửi h&amp;agrave;nh l&amp;yacute; của m&amp;igrave;nh tại đ&amp;acirc;y để tiếp tục cuộc kh&amp;aacute;m ph&amp;aacute; c&amp;aacute;c địa điểm du lịch kh&amp;aacute;c của Cần Giờ.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/form&gt;\r\n&lt;form id=&quot;danxay&quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;Khu du lịch sinh th&amp;aacute;i Rừng Ngập Mặn Dần X&amp;acirc;y trực thuộc Ban Quản L&amp;yacute; Rừng Ngập Mặn Cần Giờ (UBND Huyện Cần Giờ) rộng đến 700 hecta, được Unesco c&amp;ocirc;ng nhận khu du lịch vừa c&amp;oacute; Rừng ngập mặn, vừa c&amp;oacute; Biển v&amp;agrave; N&amp;uacute;i, Khu dự trữ sinh quyển thế giới năm 2000, Dần X&amp;acirc;y Mangrove Park được xem l&amp;agrave; điiểm du lịch chiến lược, th&amp;uacute; vị v&amp;agrave; an to&amp;agrave;n.&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Khu du lịch Dần X&amp;acirc;y khai th&amp;aacute;c tối đa yếu tố thi&amp;ecirc;n nhi&amp;ecirc;n hoang d&amp;atilde;, với những hoạt động kh&amp;aacute;m ph&amp;aacute; th&amp;uacute; vị, ở đ&amp;acirc;y qu&amp;yacute; kh&amp;aacute;ch c&amp;oacute; thể thỏa sức h&amp;ograve;a m&amp;igrave;nh c&amp;ugrave;ng thi&amp;ecirc;n nhi&amp;ecirc;n dưới sự dẫn dắt của những người bảo vệ rừng, những hộ d&amp;acirc;n giữ rừng, những trải nghiệm c&amp;oacute; một kh&amp;ocirc;ng hai.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Qu&amp;yacute; kh&amp;aacute;ch thể tham khảo th&amp;ecirc;m tại &lt;a href=&quot;abc.html&quot;&gt;đ&amp;acirc;y&lt;/a&gt;.&lt;/div&gt;\r\n&lt;/form&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-08-17 12:14:35', 'admin', '2013-08-17 14:00:24'),
(12, 'default13767164751', '', 'media_information', '[160]', 'admin', 'can gio', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-08-17 12:14:36', 'admin', '2013-08-17 14:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `media_event`
--

CREATE TABLE IF NOT EXISTS `media_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mediaid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `startdate` date NOT NULL,
  `starthour` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `enddate` date NOT NULL,
  `endhour` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `media_event`
--


-- --------------------------------------------------------

--
-- Table structure for table `media_file`
--

CREATE TABLE IF NOT EXISTS `media_file` (
  `mediafileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `mediaid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fileid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `filepath` text COLLATE utf8_unicode_ci NOT NULL,
  `filetype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mediafileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `media_file`
--


-- --------------------------------------------------------

--
-- Table structure for table `media_file_description`
--

CREATE TABLE IF NOT EXISTS `media_file_description` (
  `mediafileid` int(11) NOT NULL,
  `languageid` varchar(11) NOT NULL,
  `mediaid` varchar(100) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`mediafileid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media_file_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `media_information`
--

CREATE TABLE IF NOT EXISTS `media_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mediaid` varchar(50) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldvalue` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `media_information`
--


-- --------------------------------------------------------

--
-- Table structure for table `media_log`
--

CREATE TABLE IF NOT EXISTS `media_log` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `mediaid` varchar(20) NOT NULL,
  `logdate` datetime NOT NULL,
  `logstatus` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `userip` varchar(50) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `media_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `messageid` varchar(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `attachment` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `senddate` datetime NOT NULL,
  `replyfrom` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message`
--


-- --------------------------------------------------------

--
-- Table structure for table `messagesend`
--

CREATE TABLE IF NOT EXISTS `messagesend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `messageid` varchar(20) NOT NULL,
  `username` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `senddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `messagesend`
--


-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `areacode` varchar(10) NOT NULL,
  `moduleid` char(50) NOT NULL,
  `modulecode` varchar(250) NOT NULL,
  `modulename` text,
  `moduletype` varchar(10) NOT NULL,
  `object` varchar(250) NOT NULL,
  `moduleparent` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `modulepath` text NOT NULL,
  `permission` text,
  `languageid` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `effectcode` bigint(20) NOT NULL,
  `asshown` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `areacode`, `moduleid`, `modulecode`, `modulename`, `moduletype`, `object`, `moduleparent`, `position`, `status`, `modulepath`, `permission`, `languageid`, `description`, `width`, `height`, `effectcode`, `asshown`) VALUES
(1, 'module', 'module/none', 'module/none', 'None', 'code', '', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(2, 'module', 'module/group', 'module/group', 'Group', 'code', '', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(3, 'module', 'module/groupfirst', 'module/groupfirst', 'Move to menu automatically', 'code', '', '', 2, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(4, 'module', 'module/homepage', 'module/homepage', 'Home Page', 'code', '', '', 3, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(5, 'module', 'module/information', 'module/information', 'Information', 'manage', 'media_information', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(6, 'module', 'module/news', 'module/news', 'News', 'manage', 'media_news', '', 4, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(7, 'module', 'module/gallery', 'module/gallery', 'Gallery', 'manage', 'media_gallery', '', 5, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(8, 'module', 'module/galleryalbum', 'module/galleryalbum', 'Gallery Album', 'manage', 'media_galleryalbum', '', 6, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(9, 'module', 'module/video', 'module/video', 'Video', 'manage', 'media_video', '', 7, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(10, 'module', 'module/videoalbum', 'module/videoalbum', 'Video Album', 'manage', 'media_videoalbum', '', 8, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(11, 'module', 'module/contact', 'module/contact', 'Contact', 'manage', 'media_contact', '', 9, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(12, 'module', 'module/contactmap', 'module/contactmap', 'Contact includes map', 'manage', 'media_contactmap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(13, 'module', 'module/download', 'module/download', 'Download', 'manage', 'media_download', '', 10, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(14, 'module', 'module/event', 'module/event', 'Event', 'manage', 'media_event', '', 11, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(15, 'module', 'module/link', 'module/link', 'Link', 'manage', 'sitemap', '', 12, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(16, 'module', 'module/product', 'module/product', 'Product', 'manage', 'product', '', 13, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(17, 'module', 'module/brochure', 'module/brochure', 'Post includes contact', 'manage', 'media_brochure', '', 14, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(18, 'module', 'module/brochurealbum', 'module/brochurealbum', 'Posts includes contact', 'manage', 'media_brochurealbum', '', 15, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(19, 'module', 'module/googlemap', 'module/googlemap', 'Google map', 'manage', 'media_googlemap', '', 16, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(20, 'module', 'module/faq', 'module/faq', 'Q&amp;A', 'manage', 'media_faq', '', 17, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(21, 'module', 'module/partners', 'module/partners', 'Partners', 'manage', 'media_partners', '', 18, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(22, 'sidebar', 'sidebar/supportonline', 'sidebar/supportonline', 'Support Online', 'manage', 'support', '', 19, 'Active', 'sidebar/supportonline', '[""]', 'en', '', 0, 0, 0, 'none'),
(23, 'sidebar', 'sidebar/search', 'sidebar/search', 'Search', 'code', '', '', 20, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(24, 'sidebar', 'sidebar/weblinks', 'sidebar/weblinks', 'Web links', 'manage', 'sitemap', '', 21, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(25, 'sidebar', 'sidebar/eventcalendar', 'sidebar/eventcalendar', 'Event Calendar', 'manage', 'media_event', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(26, 'sidebar', 'sidebar/webcounter', 'sidebar/webcounter', 'Web Counter', 'code', '', '', 22, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(27, 'sidebar', 'sidebar/sociallinks', 'sidebar/sociallinks', 'Social Links', 'manage', 'weblink', '', 23, 'Active', 'sidebar/banner', '[""]', 'en', '', 0, 0, 0, ''),
(28, 'sidebar', 'sidebar/videoplayer', 'sidebar/videoplayer', 'Video Player', 'refer', 'media_videoalbum', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(29, 'sidebar', 'sidebar/videoconnection', 'sidebar/videoconnection', 'Video Connection', 'refer', 'media_videoalbum', '', 24, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(30, 'sidebar', 'sidebar/servicescategories', 'sidebar/servicescategories', 'Services Categories', 'manage', 'sitemap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(31, 'sidebar', 'sidebar/productscategories', 'sidebar/productscategories', 'Products Categories', 'manage', 'sitemap', '', 26, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(32, 'sidebar', 'sidebar/banner', 'sidebar/banner', 'Banner', 'manage', 'media_banner', '', 27, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(33, 'sidebar', 'sidebar/newscollection', 'sidebar/newscollection', 'News Collection', 'manage', 'media_news', '', 28, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(34, 'sidebar', 'sidebar/newsmostviews', 'sidebar/newsmostviews', 'Most Viewed News', 'code', 'media_news', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(35, 'sidebar', 'sidebar/newshot', 'sidebar/newshot', 'Hot News', 'refer', 'media_news', '', 30, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(36, 'sidebar', 'sidebar/newarrivalproducts', 'sidebar/newarrivalproducts', 'New Arrival Products', 'code', 'product', '', 31, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(37, 'sidebar', 'sidebar/mostviewedproducts', 'sidebar/mostviewedproducts', 'Most Viewed Products', 'code', 'product', '', 32, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(38, 'sidebar', 'sidebar/hotproducts', 'sidebar/hostproducts', 'Hot Products', 'refer', 'product', '', 33, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(39, 'sidebar', 'sidebar/bestsellerproducts', 'sidebar/bestsellerproducts', 'Best Seller Products', 'code', 'product', '', 34, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(40, 'splash', 'splash/homeslider', 'splash/homeslider', 'Homepage Bigbanner', 'code', '', '', 35, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(41, 'splash', 'splash/homelinks', 'splash/homelinks', 'Home Links', 'code', '', '', 36, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(42, 'module', 'module/downloadalbum', 'module/downloadalbum', 'Download Album', 'code', 'media_download', '', 37, 'Active', '', '[""]', 'en', '', 0, 0, 0, ''),
(43, 'splash', 'splash/promotionbox', 'splash/promotionbox', 'Box Khuyến mãi', 'manage', 'weblink', '', 38, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, ''),
(44, 'splash', 'splash/edwinslider', 'splash/edwinslider', 'Edwin Slider', 'code', '', '', 39, 'Active', 'splash/edwinslider', '[""]', '', '', 0, 0, 0, 'none'),
(45, 'splash', 'splash/edwinbanner', 'splash/edwinbanner', 'Edwin Banner', 'manage', '', '', 40, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none'),
(46, 'splash', 'splash/edwinfadebanner', 'splash/edwinfadebanner', 'Edwin Fade Banner', 'manage', '', '', 41, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none'),
(48, 'splash', 'splash/custom', 'splash/custom', 'custom splash', 'code', '', '', 42, 'Active', '', '[""]', '', '', 0, 0, 0, 'none'),
(49, 'sidebar', 'splash/homesimpleslides', 'splash/homesimpleslides', 'homesimpleslides', 'manage', 'home slide', '', 43, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none'),
(50, 'splash', 'splash/threecolumnnewhomeproducts', 'splash/threecolumnnewhomeproducts', 'Three-Column New Home Products', 'code', '', '', 44, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(51, 'dashboard', 'dashboard/logoslides', 'dashboard/logoslides', 'Logo slides', 'manage', 'weblink', '', 45, 'Active', 'splash/logoslides', '[""]', 'en', '', 0, 0, 0, 'none'),
(52, 'sidebar', 'sidebar/threenewslides', 'sidebar/threenewslides', 'Sidebar Top 9 News', 'code', '', '', 46, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(53, 'dashboard', 'dashboard/footerbanner', 'dashboard/footerbanner', 'Dashboard Banners', 'manage', 'weblink', '', 47, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none'),
(54, 'module', 'module/groupsitemap', 'module/groupsitemap', 'Group Sitemap', 'code', '', '', 48, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(55, 'sidebar', 'sidebar/subgroups', 'sidebar/subgroups', 'sidebar sub menu', 'code', '', '', 49, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(56, 'sidebar', 'sidebar/email', 'sidebar/email', 'Received Email', 'manage', '', '', 50, 'Active', 'addon/receivedemail', '[""]', 'en', '', 0, 0, 0, 'none'),
(57, 'sidebar', 'sidebar/viewcart', 'sidebar/viewcart', 'View cart', 'code', '', '', 51, 'Active', 'sidebar/viewcart', '[""]', 'en', '', 0, 0, 0, 'none'),
(58, 'module', 'module/cart', 'module/cart', 'Shopping Cart', 'code', '', '', 52, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(59, 'sidebar', 'sidebar/sidebarnav', 'sidebar/sidebarnav', 'sidebar nav', 'manage', 'sidebarnav', '', 53, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none'),
(60, 'splash', 'splash/catbanner', 'splash/catbanner', 'Category Banner', 'manage', 'catbanner', '', 54, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none'),
(61, 'module', 'module/productbytag', 'module/productbytag', 'Product By Tag', 'code', '', '', 55, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(62, 'module', 'module/active', 'module/active', 'Active Customer', 'code', '', '', 56, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(63, 'splash', 'splash/hotproducttag', 'splash/hotproducttag', 'hot product tag', 'code', '', '', 57, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(64, 'module', 'product/manufacturer', 'product/manufacturer', 'manufacturer', 'manage', '', '', 58, 'Active', 'product/manufacturer', '[""]', 'en', '', 0, 0, 0, 'none'),
(65, 'module', 'module/sitemap', 'module/sitemap', 'Sitemap', 'code', '', '', 59, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(66, 'module', 'module/profile', 'module/profile', 'Profile', 'code', 'profile', '', 60, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(67, 'module', 'module/groupproduct', 'module/groupproduct', 'Group Product', 'code', 'groupproduct', '', 61, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(68, 'module', 'module/searchproduct', 'module/searchproduct', 'Product Search', 'code', '', '', 62, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(69, 'module', 'module/groupnews', 'module/groupnews', 'Group News', 'code', '', '', 63, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none'),
(70, 'sidebar', 'sidebar/groupnews', 'sidebar/groupnews', 'Group News', 'code', '', '', 64, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE IF NOT EXISTS `option` (
  `optionid` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY (`optionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `option`
--


-- --------------------------------------------------------

--
-- Table structure for table `option_description`
--

CREATE TABLE IF NOT EXISTS `option_description` (
  `optionid` bigint(20) NOT NULL,
  `languageid` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `option_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `option_value`
--

CREATE TABLE IF NOT EXISTS `option_value` (
  `option_value_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `optionid` bigint(20) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `option_value`
--


-- --------------------------------------------------------

--
-- Table structure for table `option_value_description`
--

CREATE TABLE IF NOT EXISTS `option_value_description` (
  `option_value_id` bigint(20) NOT NULL,
  `optionid` bigint(20) NOT NULL,
  `languageid` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `option_value_description`
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `order`
--


-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE IF NOT EXISTS `order_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(20) NOT NULL,
  `mediaid` varchar(20) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `subtotal` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `order_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE IF NOT EXISTS `plugin` (
  `plugin_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `moduleid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plugin_name` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`plugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `plugin`
--


-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productid` bigint(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `seo_url` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` double NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `manufacturerid` bigint(20) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `price` double NOT NULL,
  `saleoff` double NOT NULL,
  `subtract_stock` tinyint(1) NOT NULL,
  `points` int(11) NOT NULL,
  `tax_class_id` bigint(20) NOT NULL,
  `date_available_from` datetime NOT NULL,
  `date_available_to` datetime NOT NULL,
  `weight` double NOT NULL,
  `weight_class_id` bigint(20) NOT NULL,
  `length` double NOT NULL,
  `length_class_id` bigint(20) NOT NULL,
  `width` double NOT NULL,
  `minimum` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `viewed` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL,
  `sitemapid` bigint(20) NOT NULL,
  `height` double NOT NULL,
  `goodsstatus` text COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `statusby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_addon`
--

CREATE TABLE IF NOT EXISTS `product_addon` (
  `productid` bigint(20) NOT NULL,
  `addonid` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_addon`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE IF NOT EXISTS `product_attribute` (
  `product_attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_description`
--

CREATE TABLE IF NOT EXISTS `product_attribute_description` (
  `product_attribute_id` bigint(20) NOT NULL,
  `languageid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `productid` bigint(20) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_attribute_id`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_attribute_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

CREATE TABLE IF NOT EXISTS `product_description` (
  `productid` bigint(20) NOT NULL,
  `languageid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`productid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_discount`
--

CREATE TABLE IF NOT EXISTS `product_discount` (
  `product_discount_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `usertypeid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `price` double NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  PRIMARY KEY (`product_discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_discount`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_file`
--

CREATE TABLE IF NOT EXISTS `product_file` (
  `productfileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `filepath` text NOT NULL,
  PRIMARY KEY (`productfileid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `product_file`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_file_description`
--

CREATE TABLE IF NOT EXISTS `product_file_description` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `productfileid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `product_file_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `product_image_id` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_image`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_manufacturer`
--

CREATE TABLE IF NOT EXISTS `product_manufacturer` (
  `manufacturerid` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_url` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `link_direct` tinyint(1) NOT NULL,
  `sortorder` int(10) NOT NULL,
  `area` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manufacturerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_manufacturer`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_manufacturer_description`
--

CREATE TABLE IF NOT EXISTS `product_manufacturer_description` (
  `manufacturerid` bigint(20) NOT NULL,
  `languageid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_manufacturer_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE IF NOT EXISTS `product_option` (
  `product_option_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `option_value` text COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_option`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_option_value`
--

CREATE TABLE IF NOT EXISTS `product_option_value` (
  `product_option_value_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_option_id` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `option_value_id` bigint(20) NOT NULL,
  `option_value_name` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` double NOT NULL,
  `price_prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `points_prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `weight` double NOT NULL,
  `weight_prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_option_value`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_reward`
--

CREATE TABLE IF NOT EXISTS `product_reward` (
  `product_reward_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `customer_group_id` bigint(20) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_reward`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_site`
--

CREATE TABLE IF NOT EXISTS `product_site` (
  `productid` bigint(20) NOT NULL,
  `siteid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_site`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_special`
--

CREATE TABLE IF NOT EXISTS `product_special` (
  `product_special_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `usertypeid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `price` double NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  PRIMARY KEY (`product_special_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_special`
--


-- --------------------------------------------------------

--
-- Table structure for table `receivedemail`
--

CREATE TABLE IF NOT EXISTS `receivedemail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `registereddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `receivedemail`
--


-- --------------------------------------------------------

--
-- Table structure for table `sidebar`
--

CREATE TABLE IF NOT EXISTS `sidebar` (
  `sidebarid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sidebar_name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sidebarid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sidebar`
--

INSERT INTO `sidebar` (`sidebarid`, `sidebar_name`) VALUES
(1, 'sidebar left');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_addon`
--

CREATE TABLE IF NOT EXISTS `sidebar_addon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addonid` bigint(20) NOT NULL,
  `sidebarid` bigint(20) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `sidebar_addon`
--

INSERT INTO `sidebar_addon` (`id`, `addonid`, `sidebarid`, `sortorder`) VALUES
(33, 19, 5, 3),
(11, 14, 2, 3),
(10, 2, 2, 2),
(12, 16, 2, 1),
(40, 30, 1, 1),
(39, 32, 1, 2),
(32, 5, 5, 4),
(31, 27, 5, 1),
(34, 21, 5, 2);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `siteid`, `slogan`, `logo`, `symbol`, `imageyahoo`, `imageskype`, `currency`, `contactemail`, `sitename`, `siteurl`, `language`, `pagetopic`, `description`, `keywords`, `googleanalytics`, `skinid`, `status`) VALUES
(1, 'default', 'KDL Sinh Thái Rừng Ngập Mặn Dần Xây', 'upload/logo.png', 'upload/logo (1).png', '', '', 'vnd, usd', 'dat.tran@elifepartners.com', 'Dần Xây Mangrove', 'http://www.danxaymangrove.com/', 'vn,en', '', '', '', '', 'danxay', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemapid` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(30) NOT NULL,
  `sitemapparent` varchar(50) DEFAULT NULL,
  `seo_url` varchar(100) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `moduleid` varchar(100) DEFAULT NULL,
  `imageid` bigint(20) NOT NULL,
  `imagepath` text NOT NULL,
  `hyperlink` text NOT NULL,
  `top_mainmenu` tinyint(1) NOT NULL,
  `top_footermenu` tinyint(1) NOT NULL,
  `layoutid` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`sitemapid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `sitemap`
--

INSERT INTO `sitemap` (`sitemapid`, `siteid`, `sitemapparent`, `seo_url`, `position`, `moduleid`, `imageid`, `imagepath`, `hyperlink`, `top_mainmenu`, `top_footermenu`, `layoutid`, `status`) VALUES
(163, 'default', '', 'thong-tin-nghien-cuu', 5, 'module/none', 0, '', '', 1, 0, 'default', 1),
(134, 'default', '', 'trang-chu', 1, 'module/homepage', 0, '', '', 0, 0, 'homepage', 1),
(162, 'default', '', 'lap-ke-hoach-cho-chuyen-di', 4, 'module/information', 0, '', '', 1, 0, 'group', 1),
(160, 'default', '', 'kham-pha-dan-xay-can-gio', 2, 'module/information', 0, '', '', 1, 0, 'group', 1),
(161, 'default', '', 'hoat-dong-trai-nghiem', 3, 'module/groupnews', 0, '', '', 1, 0, 'group', 1),
(164, 'default', '', 'dia-chi-ho-tro', 6, 'module/none', 0, '', '', 1, 0, 'default', 1),
(165, 'default', '161', 'kham-pha', 6, 'module/news', 0, '', '', 0, 0, 'default', 1),
(166, 'default', '161', 'hoat-dong-giai-tri', 7, 'module/news', 0, '', '', 0, 0, 'default', 1),
(167, 'default', '161', 'trai-nghiem-nghi-duong', 8, 'module/news', 0, '', '', 0, 0, 'default', 1),
(168, 'default', '162', 'ke-hoach', 1, 'module/news', 0, '', '', 0, 0, 'default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sitemap_description`
--

CREATE TABLE IF NOT EXISTS `sitemap_description` (
  `sitemapid` int(11) NOT NULL,
  `languageid` varchar(50) NOT NULL,
  `sitemapname` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY (`sitemapid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitemap_description`
--

INSERT INTO `sitemap_description` (`sitemapid`, `languageid`, `sitemapname`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(168, 'vn', 'Kế hoạch', '', '', '', ''),
(166, 'en', 'Activities - Entertainment', '', '', '', ''),
(161, 'en', 'Activities &amp; Experiences', '', '', '', ''),
(162, 'vn', 'Lập Kế Hoạch&lt;br/&gt;Cho Chuyến Đi', '', '', '', ''),
(134, 'vn', 'Trang Chủ', '', '', '', ''),
(163, 'vn', 'Thông Tin &lt;br /&gt;&amp; Nghiên Cứu', '', '', '', ''),
(162, 'en', 'Planning for the Journey', '', '', '', ''),
(165, 'en', 'Discovery', '', '', '', ''),
(166, 'vn', 'Hoạt Động - Giải Trí', '', '', '', ''),
(134, 'en', 'Home', '', '', '', ''),
(160, 'vn', 'Khám Phá&lt;br /&gt;Dần Xây - Cần Giờ', '', '', '', ''),
(160, 'en', 'Explore Dan Xay - Can Gio', '', '', '', ''),
(161, 'vn', 'Hoạt Động&lt;br /&gt;&amp; Trải Nghiệm', '', '', '', ''),
(165, 'vn', 'Khám Phá', '', '', '', ''),
(164, 'en', 'Address &amp; Support', '', '', '', ''),
(164, 'vn', 'Địa Chỉ &lt;br/&gt;&amp; Hỗ Trợ', '', '', '', ''),
(163, 'en', 'Information &amp; Study', '', '', '', ''),
(167, 'en', 'Experience - Spa', '', '', '', ''),
(167, 'vn', 'Trải Nghiệm - Nghỉ Dưỡng', '', '', '', ''),
(168, 'en', 'Plan', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `supportid` bigint(20) NOT NULL AUTO_INCREMENT,
  `addonid` varchar(250) NOT NULL,
  `telephone` varchar(250) NOT NULL,
  `skype` text NOT NULL,
  `yahoo` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`supportid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `support`
--


-- --------------------------------------------------------

--
-- Table structure for table `support_description`
--

CREATE TABLE IF NOT EXISTS `support_description` (
  `supportid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`supportid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `sitemapid` bigint(20) NOT NULL,
  `key` text NOT NULL,
  `count` int(11) NOT NULL,
  `language` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `object` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `keyword` text NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`url_alias_id`, `object`, `value`, `keyword`) VALUES
(129, 'media', 'default13767164751', ''),
(79, 'product', '24', 'dfsa'),
(120, 'sitemap', '165', 'kham-pha'),
(116, 'sitemap', '161', 'hoat-dong-trai-nghiem'),
(115, 'sitemap', '160', 'kham-pha-dan-xay-can-gio'),
(121, 'sitemap', '166', 'hoat-dong-giai-tri'),
(119, 'sitemap', '164', 'dia-chi-ho-tro'),
(22, 'media', '1', ''),
(23, 'media', 'default13710278141', ''),
(24, 'media', '2', ''),
(25, 'media', '3', ''),
(26, 'media', '4', ''),
(87, 'sitemap', '134', 'trang-chu'),
(28, 'media', '5', ''),
(29, 'media', '6', ''),
(30, 'media', 'default13710308901', ''),
(31, 'media', 'default13710300171', ''),
(109, 'media', 'default13730824771', ''),
(107, 'media', 'default13730823821', ''),
(122, 'sitemap', '167', 'trai-nghiem-nghi-duong'),
(123, 'media', 'default13765535781', ''),
(124, 'media', 'default13765584851', ''),
(125, 'media', 'default13765585671', ''),
(126, 'media', 'default13765586041', 'loi-bun-san-hai-san'),
(127, 'sitemap', '168', 'ke-hoach'),
(128, 'media', 'default13766288241', 'phuot-dan-xay'),
(117, 'sitemap', '162', 'lap-ke-hoach-cho-chuyen-di'),
(118, 'sitemap', '163', 'thong-tin-nghien-cuu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(50) NOT NULL,
  `usertypeid` varchar(20) NOT NULL,
  `username` text,
  `password` text,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `imageid` bigint(20) NOT NULL,
  `imagepath` text NOT NULL,
  `address` text NOT NULL,
  `provincecity` text NOT NULL,
  `country` text NOT NULL,
  `birthday` datetime NOT NULL,
  `phone` text NOT NULL,
  `activedate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `deleteddate` datetime NOT NULL,
  `activeby` varchar(50) NOT NULL,
  `updatedby` varchar(50) NOT NULL,
  `deletedby` varchar(50) NOT NULL,
  `userip` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `usertypeid`, `username`, `password`, `fullname`, `email`, `status`, `imageid`, `imagepath`, `address`, `provincecity`, `country`, `birthday`, `phone`, `activedate`, `updateddate`, `deleteddate`, `activeby`, `updatedby`, `deletedby`, `userip`) VALUES
('admin', 'admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Ben Solutions', 'tuan.pham@ben-solution.com', 'active', 45, '', 'asdasda', 'dasdsdasd', 'asdas', '2013-07-03 00:00:00', '0906009096999', '2009-12-02 14:34:41', '2013-04-16 17:15:31', '2009-12-02 14:52:10', '123', '1', '', 'fe80::9482:d8b:ac3a:c468');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usertypeid` varchar(20) NOT NULL,
  `usertypename` text,
  `usertypeparent` varchar(20) NOT NULL,
  `permission` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `usertypeid`, `usertypename`, `usertypeparent`, `permission`) VALUES
(5, '0', 'User', '0', ''),
(8, '0', 'User', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE IF NOT EXISTS `user_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `fieldname` varchar(20) NOT NULL,
  `fieldvalue` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_information`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_saleoff`
--

CREATE TABLE IF NOT EXISTS `user_saleoff` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) NOT NULL,
  `parentproduct` bigint(20) NOT NULL,
  `customername` text COLLATE utf8_unicode_ci NOT NULL,
  `idcard` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `purchaseprice` double NOT NULL,
  `purchasedate` datetime NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `province` text COLLATE utf8_unicode_ci NOT NULL,
  `district` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_saleoff`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_stats`
--

CREATE TABLE IF NOT EXISTS `user_stats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `starttime` datetime NOT NULL,
  `sessionid` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5334 ;

--
-- Dumping data for table `user_stats`
--

INSERT INTO `user_stats` (`id`, `starttime`, `sessionid`, `username`, `ip`) VALUES
(5333, '2013-04-04 14:21:40', '9tuhirs32id9fuq4eegusk1p10', '', '58.186.183.206'),
(5331, '2013-04-04 14:19:33', 'eulepa2fg2jgc4s3jltvnhjqc1', '', '58.186.183.206'),
(5329, '2013-04-04 14:13:59', 'qvf5n0jimmlpe1bfrsgulo11t6', '', '199.21.99.114'),
(5330, '2013-04-04 14:18:02', 'nmr87ihmo2grbgl0uug4rft324', '', '58.186.183.206'),
(5332, '2013-04-04 14:20:16', 'bpjm0kpdkc57m18psbs6n3gcs7', '', '58.186.183.206');

-- --------------------------------------------------------

--
-- Table structure for table `webeemail`
--

CREATE TABLE IF NOT EXISTS `webeemail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthday` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `webeemail`
--

INSERT INTO `webeemail` (`id`, `account`, `password`, `firstname`, `lastname`, `address`, `telephone`, `gender`, `birthday`, `date_added`) VALUES
(3, 'dat.tran', 'e10adc3949ba59abbe56e057f20f883e', 'tran', 'dat', 'bao loc - lam dong', '0928578922', 'male', '1992-05-05 00:00:00', '2013-07-11 10:19:28'),
(4, 'dat.thanh', 'e10adc3949ba59abbe56e057f20f883e', 'thanh', 'dat', 'thanh dat', '0923456789', 'male', '1992-04-07 00:00:00', '2013-07-11 10:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `weblink`
--

CREATE TABLE IF NOT EXISTS `weblink` (
  `weblinkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `addonid` varchar(250) NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`weblinkid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `weblink`
--

INSERT INTO `weblink` (`weblinkid`, `addonid`, `link`, `image`, `sortorder`) VALUES
(3, 'sidebarnav', 'all', '', 2),
(2, 'sidebarnav', 'trang-chu', '', 1),
(4, 'homesimpleslides', 'abc.htm', 'upload/baotro1.jpg', 1),
(10, 'logoslides', 'abc', 'upload/Untitled-3_09.png', 1),
(11, 'logoslides', 'fdsa', 'upload/Untitled-3_03.png', 1),
(12, 'logoslides', 'gsad', 'upload/Untitled-3_04.png', 1),
(13, 'logoslides', 'fdsa', 'upload/Untitled-3_06.png', 1),
(14, 'logoslides', 'fdsa', 'upload/Untitled-3_07.png', 1),
(15, 'logoslides', 'fsda', 'upload/Untitled-3_05.png', 1),
(16, 'logoslides', 'fgsad', 'upload/Untitled-3_08.png', 1),
(21, 'homesimpleslides', 'fsad', 'upload/baotro1.jpg', 1),
(20, 'catbanner', 'abc.htm', 'upload/banner.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `weblink_description`
--

CREATE TABLE IF NOT EXISTS `weblink_description` (
  `weblinkid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`weblinkid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weblink_description`
--

INSERT INTO `weblink_description` (`weblinkid`, `languageid`, `title`, `description`) VALUES
(4, 'vn', 'quality coast', ''),
(21, 'en', 'fads', ''),
(21, 'vn', 'fsad', ''),
(10, 'en', 'abc', ''),
(11, 'en', 'fdsa', ''),
(12, 'en', 'sda', ''),
(13, 'en', 'fdsa', ''),
(14, 'en', 'fdsa', ''),
(15, 'en', 'fdsa', ''),
(16, 'en', 'fsad', ''),
(3, 'en', 'Information', '&lt;p&gt;\r\n	&lt;a href=&quot;about-us.html&quot;&gt;About Us&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Site Map&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;faqs.html&quot;&gt;FAQs&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;contact-us.html&quot;&gt;Contact Us&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;'),
(4, 'en', 'quality coast', ''),
(20, 'en', 'all', ''),
(20, 'vn', 'all', ''),
(2, 'en', 'Hot Topic', '&lt;p&gt;\r\n	&lt;a href=&quot;alcohol-drinks.html&quot;&gt;Alcohol drinks&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;spices-condiments.html&quot;&gt;Spices &amp;amp; Condiments&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;chocolate-deserts.html&quot;&gt;Chocolate &amp;amp; Deserts&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;premier-drinks.html&quot;&gt;Premier Drinks&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;olive-culinary-oils.html&quot;&gt;Olive and Culinary Oils&lt;/a&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
  `zoneid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL DEFAULT '',
  `zonename` varchar(32) NOT NULL,
  PRIMARY KEY (`zoneid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3842 ;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`zoneid`, `countryid`, `code`, `zonename`) VALUES
(1, 1, 'BDS', 'Badakhshan'),
(2, 1, 'BDG', 'Badghis'),
(3, 1, 'BGL', 'Baghlan'),
(4, 1, 'BAL', 'Balkh'),
(5, 1, 'BAM', 'Bamian'),
(6, 1, 'FRA', 'Farah'),
(7, 1, 'FYB', 'Faryab'),
(8, 1, 'GHA', 'Ghazni'),
(9, 1, 'GHO', 'Ghowr'),
(10, 1, 'HEL', 'Helmand'),
(11, 1, 'HER', 'Herat'),
(12, 1, 'JOW', 'Jowzjan'),
(13, 1, 'KAB', 'Kabul'),
(14, 1, 'KAN', 'Kandahar'),
(15, 1, 'KAP', 'Kapisa'),
(16, 1, 'KHO', 'Khost'),
(17, 1, 'KNR', 'Konar'),
(18, 1, 'KDZ', 'Kondoz'),
(19, 1, 'LAG', 'Laghman'),
(20, 1, 'LOW', 'Lowgar'),
(21, 1, 'NAN', 'Nangrahar'),
(22, 1, 'NIM', 'Nimruz'),
(23, 1, 'NUR', 'Nurestan'),
(24, 1, 'ORU', 'Oruzgan'),
(25, 1, 'PIA', 'Paktia'),
(26, 1, 'PKA', 'Paktika'),
(27, 1, 'PAR', 'Parwan'),
(28, 1, 'SAM', 'Samangan'),
(29, 1, 'SAR', 'Sar-e Pol'),
(30, 1, 'TAK', 'Takhar'),
(31, 1, 'WAR', 'Wardak'),
(32, 1, 'ZAB', 'Zabol'),
(33, 2, 'BR', 'Berat'),
(34, 2, 'BU', 'Bulqize'),
(35, 2, 'DL', 'Delvine'),
(36, 2, 'DV', 'Devoll'),
(37, 2, 'DI', 'Diber'),
(38, 2, 'DR', 'Durres'),
(39, 2, 'EL', 'Elbasan'),
(40, 2, 'ER', 'Kolonje'),
(41, 2, 'FR', 'Fier'),
(42, 2, 'GJ', 'Gjirokaster'),
(43, 2, 'GR', 'Gramsh'),
(44, 2, 'HA', 'Has'),
(45, 2, 'KA', 'Kavaje'),
(46, 2, 'KB', 'Kurbin'),
(47, 2, 'KC', 'Kucove'),
(48, 2, 'KO', 'Korce'),
(49, 2, 'KR', 'Kruje'),
(50, 2, 'KU', 'Kukes'),
(51, 2, 'LB', 'Librazhd'),
(52, 2, 'LE', 'Lezhe'),
(53, 2, 'LU', 'Lushnje'),
(54, 2, 'MM', 'Malesi e Madhe'),
(55, 2, 'MK', 'Mallakaster'),
(56, 2, 'MT', 'Mat'),
(57, 2, 'MR', 'Mirdite'),
(58, 2, 'PQ', 'Peqin'),
(59, 2, 'PR', 'Permet'),
(60, 2, 'PG', 'Pogradec'),
(61, 2, 'PU', 'Puke'),
(62, 2, 'SH', 'Shkoder'),
(63, 2, 'SK', 'Skrapar'),
(64, 2, 'SR', 'Sarande'),
(65, 2, 'TE', 'Tepelene'),
(66, 2, 'TP', 'Tropoje'),
(67, 2, 'TR', 'Tirane'),
(68, 2, 'VL', 'Vlore'),
(69, 3, 'ADR', 'Adrar'),
(70, 3, 'ADE', 'Ain Defla'),
(71, 3, 'ATE', 'Ain Temouchent'),
(72, 3, 'ALG', 'Alger'),
(73, 3, 'ANN', 'Annaba'),
(74, 3, 'BAT', 'Batna'),
(75, 3, 'BEC', 'Bechar'),
(76, 3, 'BEJ', 'Bejaia'),
(77, 3, 'BIS', 'Biskra'),
(78, 3, 'BLI', 'Blida'),
(79, 3, 'BBA', 'Bordj Bou Arreridj'),
(80, 3, 'BOA', 'Bouira'),
(81, 3, 'BMD', 'Boumerdes'),
(82, 3, 'CHL', 'Chlef'),
(83, 3, 'CON', 'Constantine'),
(84, 3, 'DJE', 'Djelfa'),
(85, 3, 'EBA', 'El Bayadh'),
(86, 3, 'EOU', 'El Oued'),
(87, 3, 'ETA', 'El Tarf'),
(88, 3, 'GHA', 'Ghardaia'),
(89, 3, 'GUE', 'Guelma'),
(90, 3, 'ILL', 'Illizi'),
(91, 3, 'JIJ', 'Jijel'),
(92, 3, 'KHE', 'Khenchela'),
(93, 3, 'LAG', 'Laghouat'),
(94, 3, 'MUA', 'Muaskar'),
(95, 3, 'MED', 'Medea'),
(96, 3, 'MIL', 'Mila'),
(97, 3, 'MOS', 'Mostaganem'),
(98, 3, 'MSI', 'M''Sila'),
(99, 3, 'NAA', 'Naama'),
(100, 3, 'ORA', 'Oran'),
(101, 3, 'OUA', 'Ouargla'),
(102, 3, 'OEB', 'Oum el-Bouaghi'),
(103, 3, 'REL', 'Relizane'),
(104, 3, 'SAI', 'Saida'),
(105, 3, 'SET', 'Setif'),
(106, 3, 'SBA', 'Sidi Bel Abbes'),
(107, 3, 'SKI', 'Skikda'),
(108, 3, 'SAH', 'Souk Ahras'),
(109, 3, 'TAM', 'Tamanghasset'),
(110, 3, 'TEB', 'Tebessa'),
(111, 3, 'TIA', 'Tiaret'),
(112, 3, 'TIN', 'Tindouf'),
(113, 3, 'TIP', 'Tipaza'),
(114, 3, 'TIS', 'Tissemsilt'),
(115, 3, 'TOU', 'Tizi Ouzou'),
(116, 3, 'TLE', 'Tlemcen'),
(117, 4, 'E', 'Eastern'),
(118, 4, 'M', 'Manu''a'),
(119, 4, 'R', 'Rose Island'),
(120, 4, 'S', 'Swains Island'),
(121, 4, 'W', 'Western'),
(122, 5, 'ALV', 'Andorra la Vella'),
(123, 5, 'CAN', 'Canillo'),
(124, 5, 'ENC', 'Encamp'),
(125, 5, 'ESE', 'Escaldes-Engordany'),
(126, 5, 'LMA', 'La Massana'),
(127, 5, 'ORD', 'Ordino'),
(128, 5, 'SJL', 'Sant Julia de Loria'),
(129, 6, 'BGO', 'Bengo'),
(130, 6, 'BGU', 'Benguela'),
(131, 6, 'BIE', 'Bie'),
(132, 6, 'CAB', 'Cabinda'),
(133, 6, 'CCU', 'Cuando-Cubango'),
(134, 6, 'CNO', 'Cuanza Norte'),
(135, 6, 'CUS', 'Cuanza Sul'),
(136, 6, 'CNN', 'Cunene'),
(137, 6, 'HUA', 'Huambo'),
(138, 6, 'HUI', 'Huila'),
(139, 6, 'LUA', 'Luanda'),
(140, 6, 'LNO', 'Lunda Norte'),
(141, 6, 'LSU', 'Lunda Sul'),
(142, 6, 'MAL', 'Malange'),
(143, 6, 'MOX', 'Moxico'),
(144, 6, 'NAM', 'Namibe'),
(145, 6, 'UIG', 'Uige'),
(146, 6, 'ZAI', 'Zaire'),
(147, 9, 'ASG', 'Saint George'),
(148, 9, 'ASJ', 'Saint John'),
(149, 9, 'ASM', 'Saint Mary'),
(150, 9, 'ASL', 'Saint Paul'),
(151, 9, 'ASR', 'Saint Peter'),
(152, 9, 'ASH', 'Saint Philip'),
(153, 9, 'BAR', 'Barbuda'),
(154, 9, 'RED', 'Redonda'),
(155, 10, 'AN', 'Antartida e Islas del Atlantico'),
(156, 10, 'BA', 'Buenos Aires'),
(157, 10, 'CA', 'Catamarca'),
(158, 10, 'CH', 'Chaco'),
(159, 10, 'CU', 'Chubut'),
(160, 10, 'CO', 'Cordoba'),
(161, 10, 'CR', 'Corrientes'),
(162, 10, 'DF', 'Distrito Federal'),
(163, 10, 'ER', 'Entre Rios'),
(164, 10, 'FO', 'Formosa'),
(165, 10, 'JU', 'Jujuy'),
(166, 10, 'LP', 'La Pampa'),
(167, 10, 'LR', 'La Rioja'),
(168, 10, 'ME', 'Mendoza'),
(169, 10, 'MI', 'Misiones'),
(170, 10, 'NE', 'Neuquen'),
(171, 10, 'RN', 'Rio Negro'),
(172, 10, 'SA', 'Salta'),
(173, 10, 'SJ', 'San Juan'),
(174, 10, 'SL', 'San Luis'),
(175, 10, 'SC', 'Santa Cruz'),
(176, 10, 'SF', 'Santa Fe'),
(177, 10, 'SD', 'Santiago del Estero'),
(178, 10, 'TF', 'Tierra del Fuego'),
(179, 10, 'TU', 'Tucuman'),
(180, 11, 'AGT', 'Aragatsotn'),
(181, 11, 'ARR', 'Ararat'),
(182, 11, 'ARM', 'Armavir'),
(183, 11, 'GEG', 'Geghark''unik'''),
(184, 11, 'KOT', 'Kotayk'''),
(185, 11, 'LOR', 'Lorri'),
(186, 11, 'SHI', 'Shirak'),
(187, 11, 'SYU', 'Syunik'''),
(188, 11, 'TAV', 'Tavush'),
(189, 11, 'VAY', 'Vayots'' Dzor'),
(190, 11, 'YER', 'Yerevan'),
(191, 13, 'ACT', 'Australian Capitol Territory'),
(192, 13, 'NSW', 'New South Wales'),
(193, 13, 'NT', 'Northern Territory'),
(194, 13, 'QLD', 'Queensland'),
(195, 13, 'SA', 'South Australia'),
(196, 13, 'TAS', 'Tasmania'),
(197, 13, 'VIC', 'Victoria'),
(198, 13, 'WA', 'Western Australia'),
(199, 14, 'BUR', 'Burgenland'),
(200, 14, 'KAR', 'KÃƒÆ’Ã‚Â¤rnten'),
(201, 14, 'NOS', 'NiederÃƒÆ’Ã‚Â¶sterreich'),
(202, 14, 'OOS', 'OberÃƒÆ’Ã‚Â¶sterreich'),
(203, 14, 'SAL', 'Salzburg'),
(204, 14, 'STE', 'Steiermark'),
(205, 14, 'TIR', 'Tirol'),
(206, 14, 'VOR', 'Vorarlberg'),
(207, 14, 'WIE', 'Wien'),
(208, 15, 'AB', 'Ali Bayramli'),
(209, 15, 'ABS', 'Abseron'),
(210, 15, 'AGC', 'AgcabAdi'),
(211, 15, 'AGM', 'Agdam'),
(212, 15, 'AGS', 'Agdas'),
(213, 15, 'AGA', 'Agstafa'),
(214, 15, 'AGU', 'Agsu'),
(215, 15, 'AST', 'Astara'),
(216, 15, 'BA', 'Baki'),
(217, 15, 'BAB', 'BabAk'),
(218, 15, 'BAL', 'BalakAn'),
(219, 15, 'BAR', 'BArdA'),
(220, 15, 'BEY', 'Beylaqan'),
(221, 15, 'BIL', 'Bilasuvar'),
(222, 15, 'CAB', 'Cabrayil'),
(223, 15, 'CAL', 'Calilabab'),
(224, 15, 'CUL', 'Culfa'),
(225, 15, 'DAS', 'Daskasan'),
(226, 15, 'DAV', 'Davaci'),
(227, 15, 'FUZ', 'Fuzuli'),
(228, 15, 'GA', 'Ganca'),
(229, 15, 'GAD', 'Gadabay'),
(230, 15, 'GOR', 'Goranboy'),
(231, 15, 'GOY', 'Goycay'),
(232, 15, 'HAC', 'Haciqabul'),
(233, 15, 'IMI', 'Imisli'),
(234, 15, 'ISM', 'Ismayilli'),
(235, 15, 'KAL', 'Kalbacar'),
(236, 15, 'KUR', 'Kurdamir'),
(237, 15, 'LA', 'Lankaran'),
(238, 15, 'LAC', 'Lacin'),
(239, 15, 'LAN', 'Lankaran'),
(240, 15, 'LER', 'Lerik'),
(241, 15, 'MAS', 'Masalli'),
(242, 15, 'MI', 'Mingacevir'),
(243, 15, 'NA', 'Naftalan'),
(244, 15, 'NEF', 'Neftcala'),
(245, 15, 'OGU', 'Oguz'),
(246, 15, 'ORD', 'Ordubad'),
(247, 15, 'QAB', 'Qabala'),
(248, 15, 'QAX', 'Qax'),
(249, 15, 'QAZ', 'Qazax'),
(250, 15, 'QOB', 'Qobustan'),
(251, 15, 'QBA', 'Quba'),
(252, 15, 'QBI', 'Qubadli'),
(253, 15, 'QUS', 'Qusar'),
(254, 15, 'SA', 'Saki'),
(255, 15, 'SAT', 'Saatli'),
(256, 15, 'SAB', 'Sabirabad'),
(257, 15, 'SAD', 'Sadarak'),
(258, 15, 'SAH', 'Sahbuz'),
(259, 15, 'SAK', 'Saki'),
(260, 15, 'SAL', 'Salyan'),
(261, 15, 'SM', 'Sumqayit'),
(262, 15, 'SMI', 'Samaxi'),
(263, 15, 'SKR', 'Samkir'),
(264, 15, 'SMX', 'Samux'),
(265, 15, 'SAR', 'Sarur'),
(266, 15, 'SIY', 'Siyazan'),
(267, 15, 'SS', 'Susa'),
(268, 15, 'SUS', 'Susa'),
(269, 15, 'TAR', 'Tartar'),
(270, 15, 'TOV', 'Tovuz'),
(271, 15, 'UCA', 'Ucar'),
(272, 15, 'XA', 'Xankandi'),
(273, 15, 'XAC', 'Xacmaz'),
(274, 15, 'XAN', 'Xanlar'),
(275, 15, 'XIZ', 'Xizi'),
(276, 15, 'XCI', 'Xocali'),
(277, 15, 'XVD', 'Xocavand'),
(278, 15, 'YAR', 'Yardimli'),
(279, 15, 'YEV', 'Yevlax'),
(280, 15, 'ZAN', 'Zangilan'),
(281, 15, 'ZAQ', 'Zaqatala'),
(282, 15, 'ZAR', 'Zardab'),
(283, 15, 'NX', 'Naxcivan'),
(284, 16, 'ACK', 'Acklins'),
(285, 16, 'BER', 'Berry Islands'),
(286, 16, 'BIM', 'Bimini'),
(287, 16, 'BLK', 'Black Point'),
(288, 16, 'CAT', 'Cat Island'),
(289, 16, 'CAB', 'Central Abaco'),
(290, 16, 'CAN', 'Central Andros'),
(291, 16, 'CEL', 'Central Eleuthera'),
(292, 16, 'FRE', 'City of Freeport'),
(293, 16, 'CRO', 'Crooked Island'),
(294, 16, 'EGB', 'East Grand Bahama'),
(295, 16, 'EXU', 'Exuma'),
(296, 16, 'GRD', 'Grand Cay'),
(297, 16, 'HAR', 'Harbour Island'),
(298, 16, 'HOP', 'Hope Town'),
(299, 16, 'INA', 'Inagua'),
(300, 16, 'LNG', 'Long Island'),
(301, 16, 'MAN', 'Mangrove Cay'),
(302, 16, 'MAY', 'Mayaguana'),
(303, 16, 'MOO', 'Moore''s Island'),
(304, 16, 'NAB', 'North Abaco'),
(305, 16, 'NAN', 'North Andros'),
(306, 16, 'NEL', 'North Eleuthera'),
(307, 16, 'RAG', 'Ragged Island'),
(308, 16, 'RUM', 'Rum Cay'),
(309, 16, 'SAL', 'San Salvador'),
(310, 16, 'SAB', 'South Abaco'),
(311, 16, 'SAN', 'South Andros'),
(312, 16, 'SEL', 'South Eleuthera'),
(313, 16, 'SWE', 'Spanish Wells'),
(314, 16, 'WGB', 'West Grand Bahama'),
(315, 17, 'CAP', 'Capital'),
(316, 17, 'CEN', 'Central'),
(317, 17, 'MUH', 'Muharraq'),
(318, 17, 'NOR', 'Northern'),
(319, 17, 'SOU', 'Southern'),
(320, 18, 'BAR', 'Barisal'),
(321, 18, 'CHI', 'Chittagong'),
(322, 18, 'DHA', 'Dhaka'),
(323, 18, 'KHU', 'Khulna'),
(324, 18, 'RAJ', 'Rajshahi'),
(325, 18, 'SYL', 'Sylhet'),
(326, 19, 'CC', 'Christ Church'),
(327, 19, 'AND', 'Saint Andrew'),
(328, 19, 'GEO', 'Saint George'),
(329, 19, 'JAM', 'Saint James'),
(330, 19, 'JOH', 'Saint John'),
(331, 19, 'JOS', 'Saint Joseph'),
(332, 19, 'LUC', 'Saint Lucy'),
(333, 19, 'MIC', 'Saint Michael'),
(334, 19, 'PET', 'Saint Peter'),
(335, 19, 'PHI', 'Saint Philip'),
(336, 19, 'THO', 'Saint Thomas'),
(337, 20, 'BR', 'Brestskaya (Brest)'),
(338, 20, 'HO', 'Homyel''skaya (Homyel'')'),
(339, 20, 'HM', 'Horad Minsk'),
(340, 20, 'HR', 'Hrodzyenskaya (Hrodna)'),
(341, 20, 'MA', 'Mahilyowskaya (Mahilyow)'),
(342, 20, 'MI', 'Minskaya'),
(343, 20, 'VI', 'Vitsyebskaya (Vitsyebsk)'),
(344, 21, 'VAN', 'Antwerpen'),
(345, 21, 'WBR', 'Brabant Wallon'),
(346, 21, 'WHT', 'Hainaut'),
(347, 21, 'WLG', 'Liege'),
(348, 21, 'VLI', 'Limburg'),
(349, 21, 'WLX', 'Luxembourg'),
(350, 21, 'WNA', 'Namur'),
(351, 21, 'VOV', 'Oost-Vlaanderen'),
(352, 21, 'VBR', 'Vlaams Brabant'),
(353, 21, 'VWV', 'West-Vlaanderen'),
(354, 22, 'BZ', 'Belize'),
(355, 22, 'CY', 'Cayo'),
(356, 22, 'CR', 'Corozal'),
(357, 22, 'OW', 'Orange Walk'),
(358, 22, 'SC', 'Stann Creek'),
(359, 22, 'TO', 'Toledo'),
(360, 23, 'AL', 'Alibori'),
(361, 23, 'AK', 'Atakora'),
(362, 23, 'AQ', 'Atlantique'),
(363, 23, 'BO', 'Borgou'),
(364, 23, 'CO', 'Collines'),
(365, 23, 'DO', 'Donga'),
(366, 23, 'KO', 'Kouffo'),
(367, 23, 'LI', 'Littoral'),
(368, 23, 'MO', 'Mono'),
(369, 23, 'OU', 'Oueme'),
(370, 23, 'PL', 'Plateau'),
(371, 23, 'ZO', 'Zou'),
(372, 24, 'DS', 'Devonshire'),
(373, 24, 'HC', 'Hamilton City'),
(374, 24, 'HA', 'Hamilton'),
(375, 24, 'PG', 'Paget'),
(376, 24, 'PB', 'Pembroke'),
(377, 24, 'GC', 'Saint George City'),
(378, 24, 'SG', 'Saint George''s'),
(379, 24, 'SA', 'Sandys'),
(380, 24, 'SM', 'Smith''s'),
(381, 24, 'SH', 'Southampton'),
(382, 24, 'WA', 'Warwick'),
(383, 25, 'BUM', 'Bumthang'),
(384, 25, 'CHU', 'Chukha'),
(385, 25, 'DAG', 'Dagana'),
(386, 25, 'GAS', 'Gasa'),
(387, 25, 'HAA', 'Haa'),
(388, 25, 'LHU', 'Lhuntse'),
(389, 25, 'MON', 'Mongar'),
(390, 25, 'PAR', 'Paro'),
(391, 25, 'PEM', 'Pemagatshel'),
(392, 25, 'PUN', 'Punakha'),
(393, 25, 'SJO', 'Samdrup Jongkhar'),
(394, 25, 'SAT', 'Samtse'),
(395, 25, 'SAR', 'Sarpang'),
(396, 25, 'THI', 'Thimphu'),
(397, 25, 'TRG', 'Trashigang'),
(398, 25, 'TRY', 'Trashiyangste'),
(399, 25, 'TRO', 'Trongsa'),
(400, 25, 'TSI', 'Tsirang'),
(401, 25, 'WPH', 'Wangdue Phodrang'),
(402, 25, 'ZHE', 'Zhemgang'),
(403, 26, 'BEN', 'Beni'),
(404, 26, 'CHU', 'Chuquisaca'),
(405, 26, 'COC', 'Cochabamba'),
(406, 26, 'LPZ', 'La Paz'),
(407, 26, 'ORU', 'Oruro'),
(408, 26, 'PAN', 'Pando'),
(409, 26, 'POT', 'Potosi'),
(410, 26, 'SCZ', 'Santa Cruz'),
(411, 26, 'TAR', 'Tarija'),
(412, 27, 'BRO', 'Brcko district'),
(413, 27, 'FUS', 'Unsko-Sanski Kanton'),
(414, 27, 'FPO', 'Posavski Kanton'),
(415, 27, 'FTU', 'Tuzlanski Kanton'),
(416, 27, 'FZE', 'Zenicko-Dobojski Kanton'),
(417, 27, 'FBP', 'Bosanskopodrinjski Kanton'),
(418, 27, 'FSB', 'Srednjebosanski Kanton'),
(419, 27, 'FHN', 'Hercegovacko-neretvanski Kanton'),
(420, 27, 'FZH', 'Zapadnohercegovacka Zupanija'),
(421, 27, 'FSA', 'Kanton Sarajevo'),
(422, 27, 'FZA', 'Zapadnobosanska'),
(423, 27, 'SBL', 'Banja Luka'),
(424, 27, 'SDO', 'Doboj'),
(425, 27, 'SBI', 'Bijeljina'),
(426, 27, 'SVL', 'Vlasenica'),
(427, 27, 'SSR', 'Sarajevo-Romanija or Sokolac'),
(428, 27, 'SFO', 'Foca'),
(429, 27, 'STR', 'Trebinje'),
(430, 28, 'CE', 'Central'),
(431, 28, 'GH', 'Ghanzi'),
(432, 28, 'KD', 'Kgalagadi'),
(433, 28, 'KT', 'Kgatleng'),
(434, 28, 'KW', 'Kweneng'),
(435, 28, 'NG', 'Ngamiland'),
(436, 28, 'NE', 'North East'),
(437, 28, 'NW', 'North West'),
(438, 28, 'SE', 'South East'),
(439, 28, 'SO', 'Southern'),
(440, 30, 'AC', 'Acre'),
(441, 30, 'AL', 'Alagoas'),
(442, 30, 'AP', 'Amapa'),
(443, 30, 'AM', 'Amazonas'),
(444, 30, 'BA', 'Bahia'),
(445, 30, 'CE', 'Ceara'),
(446, 30, 'DF', 'Distrito Federal'),
(447, 30, 'ES', 'Espirito Santo'),
(448, 30, 'GO', 'Goias'),
(449, 30, 'MA', 'Maranhao'),
(450, 30, 'MT', 'Mato Grosso'),
(451, 30, 'MS', 'Mato Grosso do Sul'),
(452, 30, 'MG', 'Minas Gerais'),
(453, 30, 'PA', 'Para'),
(454, 30, 'PB', 'Paraiba'),
(455, 30, 'PR', 'Parana'),
(456, 30, 'PE', 'Pernambuco'),
(457, 30, 'PI', 'Piaui'),
(458, 30, 'RJ', 'Rio de Janeiro'),
(459, 30, 'RN', 'Rio Grande do Norte'),
(460, 30, 'RS', 'Rio Grande do Sul'),
(461, 30, 'RO', 'Rondonia'),
(462, 30, 'RR', 'Roraima'),
(463, 30, 'SC', 'Santa Catarina'),
(464, 30, 'SP', 'Sao Paulo'),
(465, 30, 'SE', 'Sergipe'),
(466, 30, 'TO', 'Tocantins'),
(467, 31, 'PB', 'Peros Banhos'),
(468, 31, 'SI', 'Salomon Islands'),
(469, 31, 'NI', 'Nelsons Island'),
(470, 31, 'TB', 'Three Brothers'),
(471, 31, 'EA', 'Eagle Islands'),
(472, 31, 'DI', 'Danger Island'),
(473, 31, 'EG', 'Egmont Islands'),
(474, 31, 'DG', 'Diego Garcia'),
(475, 32, 'BEL', 'Belait'),
(476, 32, 'BRM', 'Brunei and Muara'),
(477, 32, 'TEM', 'Temburong'),
(478, 32, 'TUT', 'Tutong'),
(479, 33, '', 'Blagoevgrad'),
(480, 33, '', 'Burgas'),
(481, 33, '', 'Dobrich'),
(482, 33, '', 'Gabrovo'),
(483, 33, '', 'Haskovo'),
(484, 33, '', 'Kardjali'),
(485, 33, '', 'Kyustendil'),
(486, 33, '', 'Lovech'),
(487, 33, '', 'Montana'),
(488, 33, '', 'Pazardjik'),
(489, 33, '', 'Pernik'),
(490, 33, '', 'Pleven'),
(491, 33, '', 'Plovdiv'),
(492, 33, '', 'Razgrad'),
(493, 33, '', 'Shumen'),
(494, 33, '', 'Silistra'),
(495, 33, '', 'Sliven'),
(496, 33, '', 'Smolyan'),
(497, 33, '', 'Sofia'),
(498, 33, '', 'Sofia - town'),
(499, 33, '', 'Stara Zagora'),
(500, 33, '', 'Targovishte'),
(501, 33, '', 'Varna'),
(502, 33, '', 'Veliko Tarnovo'),
(503, 33, '', 'Vidin'),
(504, 33, '', 'Vratza'),
(505, 33, '', 'Yambol'),
(506, 34, 'BAL', 'Bale'),
(507, 34, 'BAM', 'Bam'),
(508, 34, 'BAN', 'Banwa'),
(509, 34, 'BAZ', 'Bazega'),
(510, 34, 'BOR', 'Bougouriba'),
(511, 34, 'BLG', 'Boulgou'),
(512, 34, 'BOK', 'Boulkiemde'),
(513, 34, 'COM', 'Comoe'),
(514, 34, 'GAN', 'Ganzourgou'),
(515, 34, 'GNA', 'Gnagna'),
(516, 34, 'GOU', 'Gourma'),
(517, 34, 'HOU', 'Houet'),
(518, 34, 'IOA', 'Ioba'),
(519, 34, 'KAD', 'Kadiogo'),
(520, 34, 'KEN', 'Kenedougou'),
(521, 34, 'KOD', 'Komondjari'),
(522, 34, 'KOP', 'Kompienga'),
(523, 34, 'KOS', 'Kossi'),
(524, 34, 'KOL', 'Koulpelogo'),
(525, 34, 'KOT', 'Kouritenga'),
(526, 34, 'KOW', 'Kourweogo'),
(527, 34, 'LER', 'Leraba'),
(528, 34, 'LOR', 'Loroum'),
(529, 34, 'MOU', 'Mouhoun'),
(530, 34, 'NAH', 'Nahouri'),
(531, 34, 'NAM', 'Namentenga'),
(532, 34, 'NAY', 'Nayala'),
(533, 34, 'NOU', 'Noumbiel'),
(534, 34, 'OUB', 'Oubritenga'),
(535, 34, 'OUD', 'Oudalan'),
(536, 34, 'PAS', 'Passore'),
(537, 34, 'PON', 'Poni'),
(538, 34, 'SAG', 'Sanguie'),
(539, 34, 'SAM', 'Sanmatenga'),
(540, 34, 'SEN', 'Seno'),
(541, 34, 'SIS', 'Sissili'),
(542, 34, 'SOM', 'Soum'),
(543, 34, 'SOR', 'Sourou'),
(544, 34, 'TAP', 'Tapoa'),
(545, 34, 'TUY', 'Tuy'),
(546, 34, 'YAG', 'Yagha'),
(547, 34, 'YAT', 'Yatenga'),
(548, 34, 'ZIR', 'Ziro'),
(549, 34, 'ZOD', 'Zondoma'),
(550, 34, 'ZOW', 'Zoundweogo'),
(551, 35, 'BB', 'Bubanza'),
(552, 35, 'BJ', 'Bujumbura'),
(553, 35, 'BR', 'Bururi'),
(554, 35, 'CA', 'Cankuzo'),
(555, 35, 'CI', 'Cibitoke'),
(556, 35, 'GI', 'Gitega'),
(557, 35, 'KR', 'Karuzi'),
(558, 35, 'KY', 'Kayanza'),
(559, 35, 'KI', 'Kirundo'),
(560, 35, 'MA', 'Makamba'),
(561, 35, 'MU', 'Muramvya'),
(562, 35, 'MY', 'Muyinga'),
(563, 35, 'MW', 'Mwaro'),
(564, 35, 'NG', 'Ngozi'),
(565, 35, 'RT', 'Rutana'),
(566, 35, 'RY', 'Ruyigi'),
(567, 36, 'PP', 'Phnom Penh'),
(568, 36, 'PS', 'Preah Seihanu (Kompong Som or Si'),
(569, 36, 'PA', 'Pailin'),
(570, 36, 'KB', 'Keb'),
(571, 36, 'BM', 'Banteay Meanchey'),
(572, 36, 'BA', 'Battambang'),
(573, 36, 'KM', 'Kampong Cham'),
(574, 36, 'KN', 'Kampong Chhnang'),
(575, 36, 'KU', 'Kampong Speu'),
(576, 36, 'KO', 'Kampong Som'),
(577, 36, 'KT', 'Kampong Thom'),
(578, 36, 'KP', 'Kampot'),
(579, 36, 'KL', 'Kandal'),
(580, 36, 'KK', 'Kaoh Kong'),
(581, 36, 'KR', 'Kratie'),
(582, 36, 'MK', 'Mondul Kiri'),
(583, 36, 'OM', 'Oddar Meancheay'),
(584, 36, 'PU', 'Pursat'),
(585, 36, 'PR', 'Preah Vihear'),
(586, 36, 'PG', 'Prey Veng'),
(587, 36, 'RK', 'Ratanak Kiri'),
(588, 36, 'SI', 'Siemreap'),
(589, 36, 'ST', 'Stung Treng'),
(590, 36, 'SR', 'Svay Rieng'),
(591, 36, 'TK', 'Takeo'),
(592, 37, 'ADA', 'Adamawa (Adamaoua)'),
(593, 37, 'CEN', 'Centre'),
(594, 37, 'EST', 'East (Est)'),
(595, 37, 'EXN', 'Extreme North (Extreme-Nord)'),
(596, 37, 'LIT', 'Littoral'),
(597, 37, 'NOR', 'North (Nord)'),
(598, 37, 'NOT', 'Northwest (Nord-Ouest)'),
(599, 37, 'OUE', 'West (Ouest)'),
(600, 37, 'SUD', 'South (Sud)'),
(601, 37, 'SOU', 'Southwest (Sud-Ouest).'),
(602, 38, 'AB', 'Alberta'),
(603, 38, 'BC', 'British Columbia'),
(604, 38, 'MB', 'Manitoba'),
(605, 38, 'NB', 'New Brunswick'),
(606, 38, 'NL', 'Newfoundland and Labrador'),
(607, 38, 'NT', 'Northwest Territories'),
(608, 38, 'NS', 'Nova Scotia'),
(609, 38, 'NU', 'Nunavut'),
(610, 38, 'ON', 'Ontario'),
(611, 38, 'PE', 'Prince Edward Island'),
(612, 38, 'QC', 'QuÃƒÆ’Ã‚Â©bec'),
(613, 38, 'SK', 'Saskatchewan'),
(614, 38, 'YT', 'Yukon Territory'),
(615, 39, 'BV', 'Boa Vista'),
(616, 39, 'BR', 'Brava'),
(617, 39, 'CS', 'Calheta de Sao Miguel'),
(618, 39, 'MA', 'Maio'),
(619, 39, 'MO', 'Mosteiros'),
(620, 39, 'PA', 'Paul'),
(621, 39, 'PN', 'Porto Novo'),
(622, 39, 'PR', 'Praia'),
(623, 39, 'RG', 'Ribeira Grande'),
(624, 39, 'SL', 'Sal'),
(625, 39, 'CA', 'Santa Catarina'),
(626, 39, 'CR', 'Santa Cruz'),
(627, 39, 'SD', 'Sao Domingos'),
(628, 39, 'SF', 'Sao Filipe'),
(629, 39, 'SN', 'Sao Nicolau'),
(630, 39, 'SV', 'Sao Vicente'),
(631, 39, 'TA', 'Tarrafal'),
(632, 40, 'CR', 'Creek'),
(633, 40, 'EA', 'Eastern'),
(634, 40, 'ML', 'Midland'),
(635, 40, 'ST', 'South Town'),
(636, 40, 'SP', 'Spot Bay'),
(637, 40, 'SK', 'Stake Bay'),
(638, 40, 'WD', 'West End'),
(639, 40, 'WN', 'Western'),
(640, 41, 'BBA', 'Bamingui-Bangoran'),
(641, 41, 'BKO', 'Basse-Kotto'),
(642, 41, 'HKO', 'Haute-Kotto'),
(643, 41, 'HMB', 'Haut-Mbomou'),
(644, 41, 'KEM', 'Kemo'),
(645, 41, 'LOB', 'Lobaye'),
(646, 41, 'MKD', 'MambÃƒÆ’Ã‚Â©re-KadÃƒÆ’Ã‚Â©ÃƒÆ’Ã‚'),
(647, 41, 'MBO', 'Mbomou'),
(648, 41, 'NMM', 'Nana-Mambere'),
(649, 41, 'OMP', 'Ombella-M''Poko'),
(650, 41, 'OUK', 'Ouaka'),
(651, 41, 'OUH', 'Ouham'),
(652, 41, 'OPE', 'Ouham-Pende'),
(653, 41, 'VAK', 'Vakaga'),
(654, 41, 'NGR', 'Nana-Grebizi'),
(655, 41, 'SMB', 'Sangha-Mbaere'),
(656, 41, 'BAN', 'Bangui'),
(657, 42, 'BA', 'Batha'),
(658, 42, 'BI', 'Biltine'),
(659, 42, 'BE', 'Borkou-Ennedi-Tibesti'),
(660, 42, 'CB', 'Chari-Baguirmi'),
(661, 42, 'GU', 'Guera'),
(662, 42, 'KA', 'Kanem'),
(663, 42, 'LA', 'Lac'),
(664, 42, 'LC', 'Logone Occidental'),
(665, 42, 'LR', 'Logone Oriental'),
(666, 42, 'MK', 'Mayo-Kebbi'),
(667, 42, 'MC', 'Moyen-Chari'),
(668, 42, 'OU', 'Ouaddai'),
(669, 42, 'SA', 'Salamat'),
(670, 42, 'TA', 'Tandjile'),
(671, 43, 'AI', 'Aisen del General Carlos Ibanez'),
(672, 43, 'AN', 'Antofagasta'),
(673, 43, 'AR', 'Araucania'),
(674, 43, 'AT', 'Atacama'),
(675, 43, 'BI', 'Bio-Bio'),
(676, 43, 'CO', 'Coquimbo'),
(677, 43, 'LI', 'Libertador General Bernardo O''Hi'),
(678, 43, 'LL', 'Los Lagos'),
(679, 43, 'MA', 'Magallanes y de la Antartica Chi'),
(680, 43, 'ML', 'Maule'),
(681, 43, 'RM', 'Region Metropolitana'),
(682, 43, 'TA', 'Tarapaca'),
(683, 43, 'VS', 'Valparaiso'),
(684, 44, 'AN', 'Anhui'),
(685, 44, 'BE', 'Beijing'),
(686, 44, 'CH', 'Chongqing'),
(687, 44, 'FU', 'Fujian'),
(688, 44, 'GA', 'Gansu'),
(689, 44, 'GU', 'Guangdong'),
(690, 44, 'GX', 'Guangxi'),
(691, 44, 'GZ', 'Guizhou'),
(692, 44, 'HA', 'Hainan'),
(693, 44, 'HB', 'Hebei'),
(694, 44, 'HL', 'Heilongjiang'),
(695, 44, 'HE', 'Henan'),
(696, 44, 'HK', 'Hong Kong'),
(697, 44, 'HU', 'Hubei'),
(698, 44, 'HN', 'Hunan'),
(699, 44, 'IM', 'Inner Mongolia'),
(700, 44, 'JI', 'Jiangsu'),
(701, 44, 'JX', 'Jiangxi'),
(702, 44, 'JL', 'Jilin'),
(703, 44, 'LI', 'Liaoning'),
(704, 44, 'MA', 'Macau'),
(705, 44, 'NI', 'Ningxia'),
(706, 44, 'SH', 'Shaanxi'),
(707, 44, 'SA', 'Shandong'),
(708, 44, 'SG', 'Shanghai'),
(709, 44, 'SX', 'Shanxi'),
(710, 44, 'SI', 'Sichuan'),
(711, 44, 'TI', 'Tianjin'),
(712, 44, 'XI', 'Xinjiang'),
(713, 44, 'YU', 'Yunnan'),
(714, 44, 'ZH', 'Zhejiang'),
(715, 46, 'D', 'Direction Island'),
(716, 46, 'H', 'Home Island'),
(717, 46, 'O', 'Horsburgh Island'),
(718, 46, 'S', 'South Island'),
(719, 46, 'W', 'West Island'),
(720, 47, 'AMZ', 'Amazonas'),
(721, 47, 'ANT', 'Antioquia'),
(722, 47, 'ARA', 'Arauca'),
(723, 47, 'ATL', 'Atlantico'),
(724, 47, 'BDC', 'Bogota D.C.'),
(725, 47, 'BOL', 'Bolivar'),
(726, 47, 'BOY', 'Boyaca'),
(727, 47, 'CAL', 'Caldas'),
(728, 47, 'CAQ', 'Caqueta'),
(729, 47, 'CAS', 'Casanare'),
(730, 47, 'CAU', 'Cauca'),
(731, 47, 'CES', 'Cesar'),
(732, 47, 'CHO', 'Choco'),
(733, 47, 'COR', 'Cordoba'),
(734, 47, 'CAM', 'Cundinamarca'),
(735, 47, 'GNA', 'Guainia'),
(736, 47, 'GJR', 'Guajira'),
(737, 47, 'GVR', 'Guaviare'),
(738, 47, 'HUI', 'Huila'),
(739, 47, 'MAG', 'Magdalena'),
(740, 47, 'MET', 'Meta'),
(741, 47, 'NAR', 'Narino'),
(742, 47, 'NDS', 'Norte de Santander'),
(743, 47, 'PUT', 'Putumayo'),
(744, 47, 'QUI', 'Quindio'),
(745, 47, 'RIS', 'Risaralda'),
(746, 47, 'SAP', 'San Andres y Providencia'),
(747, 47, 'SAN', 'Santander'),
(748, 47, 'SUC', 'Sucre'),
(749, 47, 'TOL', 'Tolima'),
(750, 47, 'VDC', 'Valle del Cauca'),
(751, 47, 'VAU', 'Vaupes'),
(752, 47, 'VIC', 'Vichada'),
(753, 48, 'G', 'Grande Comore'),
(754, 48, 'A', 'Anjouan'),
(755, 48, 'M', 'Moheli'),
(756, 49, 'BO', 'Bouenza'),
(757, 49, 'BR', 'Brazzaville'),
(758, 49, 'CU', 'Cuvette'),
(759, 49, 'CO', 'Cuvette-Ouest'),
(760, 49, 'KO', 'Kouilou'),
(761, 49, 'LE', 'Lekoumou'),
(762, 49, 'LI', 'Likouala'),
(763, 49, 'NI', 'Niari'),
(764, 49, 'PL', 'Plateaux'),
(765, 49, 'PO', 'Pool'),
(766, 49, 'SA', 'Sangha'),
(767, 50, 'PU', 'Pukapuka'),
(768, 50, 'RK', 'Rakahanga'),
(769, 50, 'MK', 'Manihiki'),
(770, 50, 'PE', 'Penrhyn'),
(771, 50, 'NI', 'Nassau Island'),
(772, 50, 'SU', 'Surwarrow'),
(773, 50, 'PA', 'Palmerston'),
(774, 50, 'AI', 'Aitutaki'),
(775, 50, 'MA', 'Manuae'),
(776, 50, 'TA', 'Takutea'),
(777, 50, 'MT', 'Mitiaro'),
(778, 50, 'AT', 'Atiu'),
(779, 50, 'MU', 'Mauke'),
(780, 50, 'RR', 'Rarotonga'),
(781, 50, 'MG', 'Mangaia'),
(782, 51, 'AL', 'Alajuela'),
(783, 51, 'CA', 'Cartago'),
(784, 51, 'GU', 'Guanacaste'),
(785, 51, 'HE', 'Heredia'),
(786, 51, 'LI', 'Limon'),
(787, 51, 'PU', 'Puntarenas'),
(788, 51, 'SJ', 'San Jose'),
(789, 52, 'ABE', 'Abengourou'),
(790, 52, 'ABI', 'Abidjan'),
(791, 52, 'ABO', 'Aboisso'),
(792, 52, 'ADI', 'Adiake'),
(793, 52, 'ADZ', 'Adzope'),
(794, 52, 'AGB', 'Agboville'),
(795, 52, 'AGN', 'Agnibilekrou'),
(796, 52, 'ALE', 'Alepe'),
(797, 52, 'BOC', 'Bocanda'),
(798, 52, 'BAN', 'Bangolo'),
(799, 52, 'BEO', 'Beoumi'),
(800, 52, 'BIA', 'Biankouma'),
(801, 52, 'BDK', 'Bondoukou'),
(802, 52, 'BGN', 'Bongouanou'),
(803, 52, 'BFL', 'Bouafle'),
(804, 52, 'BKE', 'Bouake'),
(805, 52, 'BNA', 'Bouna'),
(806, 52, 'BDL', 'Boundiali'),
(807, 52, 'DKL', 'Dabakala'),
(808, 52, 'DBU', 'Dabou'),
(809, 52, 'DAL', 'Daloa'),
(810, 52, 'DAN', 'Danane'),
(811, 52, 'DAO', 'Daoukro'),
(812, 52, 'DIM', 'Dimbokro'),
(813, 52, 'DIV', 'Divo'),
(814, 52, 'DUE', 'Duekoue'),
(815, 52, 'FER', 'Ferkessedougou'),
(816, 52, 'GAG', 'Gagnoa'),
(817, 52, 'GBA', 'Grand-Bassam'),
(818, 52, 'GLA', 'Grand-Lahou'),
(819, 52, 'GUI', 'Guiglo'),
(820, 52, 'ISS', 'Issia'),
(821, 52, 'JAC', 'Jacqueville'),
(822, 52, 'KAT', 'Katiola'),
(823, 52, 'KOR', 'Korhogo'),
(824, 52, 'LAK', 'Lakota'),
(825, 52, 'MAN', 'Man'),
(826, 52, 'MKN', 'Mankono'),
(827, 52, 'MBA', 'Mbahiakro'),
(828, 52, 'ODI', 'Odienne'),
(829, 52, 'OUM', 'Oume'),
(830, 52, 'SAK', 'Sakassou'),
(831, 52, 'SPE', 'San-Pedro'),
(832, 52, 'SAS', 'Sassandra'),
(833, 52, 'SEG', 'Seguela'),
(834, 52, 'SIN', 'Sinfra'),
(835, 52, 'SOU', 'Soubre'),
(836, 52, 'TAB', 'Tabou'),
(837, 52, 'TAN', 'Tanda'),
(838, 52, 'TIE', 'Tiebissou'),
(839, 52, 'TIN', 'Tingrela'),
(840, 52, 'TIA', 'Tiassale'),
(841, 52, 'TBA', 'Touba'),
(842, 52, 'TLP', 'Toulepleu'),
(843, 52, 'TMD', 'Toumodi'),
(844, 52, 'VAV', 'Vavoua'),
(845, 52, 'YAM', 'Yamoussoukro'),
(846, 52, 'ZUE', 'Zuenoula'),
(847, 53, 'BB', 'Bjelovar-Bilogora'),
(848, 53, 'CZ', 'City of Zagreb'),
(849, 53, 'DN', 'Dubrovnik-Neretva'),
(850, 53, 'IS', 'Istra'),
(851, 53, 'KA', 'Karlovac'),
(852, 53, 'KK', 'Koprivnica-Krizevci'),
(853, 53, 'KZ', 'Krapina-Zagorje'),
(854, 53, 'LS', 'Lika-Senj'),
(855, 53, 'ME', 'Medimurje'),
(856, 53, 'OB', 'Osijek-Baranja'),
(857, 53, 'PS', 'Pozega-Slavonia'),
(858, 53, 'PG', 'Primorje-Gorski Kotar'),
(859, 53, 'SI', 'Sibenik'),
(860, 53, 'SM', 'Sisak-Moslavina'),
(861, 53, 'SB', 'Slavonski Brod-Posavina'),
(862, 53, 'SD', 'Split-Dalmatia'),
(863, 53, 'VA', 'Varazdin'),
(864, 53, 'VP', 'Virovitica-Podravina'),
(865, 53, 'VS', 'Vukovar-Srijem'),
(866, 53, 'ZK', 'Zadar-Knin'),
(867, 53, 'ZA', 'Zagreb'),
(868, 54, 'CA', 'Camaguey'),
(869, 54, 'CD', 'Ciego de Avila'),
(870, 54, 'CI', 'Cienfuegos'),
(871, 54, 'CH', 'Ciudad de La Habana'),
(872, 54, 'GR', 'Granma'),
(873, 54, 'GU', 'Guantanamo'),
(874, 54, 'HO', 'Holguin'),
(875, 54, 'IJ', 'Isla de la Juventud'),
(876, 54, 'LH', 'La Habana'),
(877, 54, 'LT', 'Las Tunas'),
(878, 54, 'MA', 'Matanzas'),
(879, 54, 'PR', 'Pinar del Rio'),
(880, 54, 'SS', 'Sancti Spiritus'),
(881, 54, 'SC', 'Santiago de Cuba'),
(882, 54, 'VC', 'Villa Clara'),
(883, 55, 'F', 'Famagusta'),
(884, 55, 'K', 'Kyrenia'),
(885, 55, 'A', 'Larnaca'),
(886, 55, 'I', 'Limassol'),
(887, 55, 'N', 'Nicosia'),
(888, 55, 'P', 'Paphos'),
(889, 56, 'U', 'Ustecky'),
(890, 56, 'C', 'Jihocesky'),
(891, 56, 'B', 'Jihomoravsky'),
(892, 56, 'K', 'Karlovarsky'),
(893, 56, 'H', 'Kralovehradecky'),
(894, 56, 'L', 'Liberecky'),
(895, 56, 'T', 'Moravskoslezsky'),
(896, 56, 'M', 'Olomoucky'),
(897, 56, 'E', 'Pardubicky'),
(898, 56, 'P', 'Plzensky'),
(899, 56, 'A', 'Praha'),
(900, 56, 'S', 'Stredocesky'),
(901, 56, 'J', 'Vysocina'),
(902, 56, 'Z', 'Zlinsky'),
(903, 57, 'AR', 'Arhus'),
(904, 57, 'BH', 'Bornholm'),
(905, 57, 'CO', 'Copenhagen'),
(906, 57, 'FO', 'Faroe Islands'),
(907, 57, 'FR', 'Frederiksborg'),
(908, 57, 'FY', 'Fyn'),
(909, 57, 'KO', 'Kobenhavn'),
(910, 57, 'NO', 'Nordjylland'),
(911, 57, 'RI', 'Ribe'),
(912, 57, 'RK', 'Ringkobing'),
(913, 57, 'RO', 'Roskilde'),
(914, 57, 'SO', 'Sonderjylland'),
(915, 57, 'ST', 'Storstrom'),
(916, 57, 'VK', 'Vejle'),
(917, 57, 'VJ', 'VestjÃƒÆ’Ã‚Â¦lland'),
(918, 57, 'VB', 'Viborg'),
(919, 58, 'S', '''Ali Sabih'),
(920, 58, 'K', 'Dikhil'),
(921, 58, 'J', 'Djibouti'),
(922, 58, 'O', 'Obock'),
(923, 58, 'T', 'Tadjoura'),
(924, 59, 'AND', 'Saint Andrew Parish'),
(925, 59, 'DAV', 'Saint David Parish'),
(926, 59, 'GEO', 'Saint George Parish'),
(927, 59, 'JOH', 'Saint John Parish'),
(928, 59, 'JOS', 'Saint Joseph Parish'),
(929, 59, 'LUK', 'Saint Luke Parish'),
(930, 59, 'MAR', 'Saint Mark Parish'),
(931, 59, 'PAT', 'Saint Patrick Parish'),
(932, 59, 'PAU', 'Saint Paul Parish'),
(933, 59, 'PET', 'Saint Peter Parish'),
(934, 60, 'DN', 'Distrito Nacional'),
(935, 60, 'AZ', 'Azua'),
(936, 60, 'BC', 'Baoruco'),
(937, 60, 'BH', 'Barahona'),
(938, 60, 'DJ', 'Dajabon'),
(939, 60, 'DU', 'Duarte'),
(940, 60, 'EL', 'Elias Pina'),
(941, 60, 'SY', 'El Seybo'),
(942, 60, 'ET', 'Espaillat'),
(943, 60, 'HM', 'Hato Mayor'),
(944, 60, 'IN', 'Independencia'),
(945, 60, 'AL', 'La Altagracia'),
(946, 60, 'RO', 'La Romana'),
(947, 60, 'VE', 'La Vega'),
(948, 60, 'MT', 'Maria Trinidad Sanchez'),
(949, 60, 'MN', 'Monsenor Nouel'),
(950, 60, 'MC', 'Monte Cristi'),
(951, 60, 'MP', 'Monte Plata'),
(952, 60, 'PD', 'Pedernales'),
(953, 60, 'PR', 'Peravia (Bani)'),
(954, 60, 'PP', 'Puerto Plata'),
(955, 60, 'SL', 'Salcedo'),
(956, 60, 'SM', 'Samana'),
(957, 60, 'SH', 'Sanchez Ramirez'),
(958, 60, 'SC', 'San Cristobal'),
(959, 60, 'JO', 'San Jose de Ocoa'),
(960, 60, 'SJ', 'San Juan'),
(961, 60, 'PM', 'San Pedro de Macoris'),
(962, 60, 'SA', 'Santiago'),
(963, 60, 'ST', 'Santiago Rodriguez'),
(964, 60, 'SD', 'Santo Domingo'),
(965, 60, 'VA', 'Valverde'),
(966, 61, 'AL', 'Aileu'),
(967, 61, 'AN', 'Ainaro'),
(968, 61, 'BA', 'Baucau'),
(969, 61, 'BO', 'Bobonaro'),
(970, 61, 'CO', 'Cova Lima'),
(971, 61, 'DI', 'Dili'),
(972, 61, 'ER', 'Ermera'),
(973, 61, 'LA', 'Lautem'),
(974, 61, 'LI', 'Liquica'),
(975, 61, 'MT', 'Manatuto'),
(976, 61, 'MF', 'Manufahi'),
(977, 61, 'OE', 'Oecussi'),
(978, 61, 'VI', 'Viqueque'),
(979, 62, 'AZU', 'Azuay'),
(980, 62, 'BOL', 'Bolivar'),
(981, 62, 'CAN', 'CaÃƒÆ’Ã‚Â±ar'),
(982, 62, 'CAR', 'Carchi'),
(983, 62, 'CHI', 'Chimborazo'),
(984, 62, 'COT', 'Cotopaxi'),
(985, 62, 'EOR', 'El Oro'),
(986, 62, 'ESM', 'Esmeraldas'),
(987, 62, 'GPS', 'GalÃƒÆ’Ã‚Â¡pagos'),
(988, 62, 'GUA', 'Guayas'),
(989, 62, 'IMB', 'Imbabura'),
(990, 62, 'LOJ', 'Loja'),
(991, 62, 'LRO', 'Los Rios'),
(992, 62, 'MAN', 'ManabÃƒÆ’Ã‚Â­'),
(993, 62, 'MSA', 'Morona Santiago'),
(994, 62, 'NAP', 'Napo'),
(995, 62, 'ORE', 'Orellana'),
(996, 62, 'PAS', 'Pastaza'),
(997, 62, 'PIC', 'Pichincha'),
(998, 62, 'SUC', 'SucumbÃƒÆ’Ã‚Â­os'),
(999, 62, 'TUN', 'Tungurahua'),
(1000, 62, 'ZCH', 'Zamora Chinchipe'),
(1001, 63, 'DHY', 'Ad Daqahliyah'),
(1002, 63, 'BAM', 'Al Bahr al Ahmar'),
(1003, 63, 'BHY', 'Al Buhayrah'),
(1004, 63, 'FYM', 'Al Fayyum'),
(1005, 63, 'GBY', 'Al Gharbiyah'),
(1006, 63, 'IDR', 'Al Iskandariyah'),
(1007, 63, 'IML', 'Al Isma''iliyah'),
(1008, 63, 'JZH', 'Al Jizah'),
(1009, 63, 'MFY', 'Al Minufiyah'),
(1010, 63, 'MNY', 'Al Minya'),
(1011, 63, 'QHR', 'Al Qahirah'),
(1012, 63, 'QLY', 'Al Qalyubiyah'),
(1013, 63, 'WJD', 'Al Wadi al Jadid'),
(1014, 63, 'SHQ', 'Ash Sharqiyah'),
(1015, 63, 'SWY', 'As Suways'),
(1016, 63, 'ASW', 'Aswan'),
(1017, 63, 'ASY', 'Asyut'),
(1018, 63, 'BSW', 'Bani Suwayf'),
(1019, 63, 'BSD', 'Bur Sa''id'),
(1020, 63, 'DMY', 'Dumyat'),
(1021, 63, 'JNS', 'Janub Sina'''),
(1022, 63, 'KSH', 'Kafr ash Shaykh'),
(1023, 63, 'MAT', 'Matruh'),
(1024, 63, 'QIN', 'Qina'),
(1025, 63, 'SHS', 'Shamal Sina'''),
(1026, 63, 'SUH', 'Suhaj'),
(1027, 64, 'AH', 'Ahuachapan'),
(1028, 64, 'CA', 'Cabanas'),
(1029, 64, 'CH', 'Chalatenango'),
(1030, 64, 'CU', 'Cuscatlan'),
(1031, 64, 'LB', 'La Libertad'),
(1032, 64, 'PZ', 'La Paz'),
(1033, 64, 'UN', 'La Union'),
(1034, 64, 'MO', 'Morazan'),
(1035, 64, 'SM', 'San Miguel'),
(1036, 64, 'SS', 'San Salvador'),
(1037, 64, 'SV', 'San Vicente'),
(1038, 64, 'SA', 'Santa Ana'),
(1039, 64, 'SO', 'Sonsonate'),
(1040, 64, 'US', 'Usulutan'),
(1041, 65, 'AN', 'Provincia Annobon'),
(1042, 65, 'BN', 'Provincia Bioko Norte'),
(1043, 65, 'BS', 'Provincia Bioko Sur'),
(1044, 65, 'CS', 'Provincia Centro Sur'),
(1045, 65, 'KN', 'Provincia Kie-Ntem'),
(1046, 65, 'LI', 'Provincia Litoral'),
(1047, 65, 'WN', 'Provincia Wele-Nzas'),
(1048, 66, 'MA', 'Central (Maekel)'),
(1049, 66, 'KE', 'Anseba (Keren)'),
(1050, 66, 'DK', 'Southern Red Sea (Debub-Keih-Bah'),
(1051, 66, 'SK', 'Northern Red Sea (Semien-Keih-Ba'),
(1052, 66, 'DE', 'Southern (Debub)'),
(1053, 66, 'BR', 'Gash-Barka (Barentu)'),
(1054, 67, 'HA', 'Harjumaa (Tallinn)'),
(1055, 67, 'HI', 'Hiiumaa (Kardla)'),
(1056, 67, 'IV', 'Ida-Virumaa (Johvi)'),
(1057, 67, 'JA', 'Jarvamaa (Paide)'),
(1058, 67, 'JO', 'Jogevamaa (Jogeva)'),
(1059, 67, 'LV', 'Laane-Virumaa (Rakvere)'),
(1060, 67, 'LA', 'Laanemaa (Haapsalu)'),
(1061, 67, 'PA', 'Parnumaa (Parnu)'),
(1062, 67, 'PO', 'Polvamaa (Polva)'),
(1063, 67, 'RA', 'Raplamaa (Rapla)'),
(1064, 67, 'SA', 'Saaremaa (Kuessaare)'),
(1065, 67, 'TA', 'Tartumaa (Tartu)'),
(1066, 67, 'VA', 'Valgamaa (Valga)'),
(1067, 67, 'VI', 'Viljandimaa (Viljandi)'),
(1068, 67, 'VO', 'Vorumaa (Voru)'),
(1069, 68, 'AF', 'Afar'),
(1070, 68, 'AH', 'Amhara'),
(1071, 68, 'BG', 'Benishangul-Gumaz'),
(1072, 68, 'GB', 'Gambela'),
(1073, 68, 'HR', 'Hariai'),
(1074, 68, 'OR', 'Oromia'),
(1075, 68, 'SM', 'Somali'),
(1076, 68, 'SN', 'Southern Nations - Nationalities'),
(1077, 68, 'TG', 'Tigray'),
(1078, 68, 'AA', 'Addis Ababa'),
(1079, 68, 'DD', 'Dire Dawa'),
(1080, 71, 'C', 'Central Division'),
(1081, 71, 'N', 'Northern Division'),
(1082, 71, 'E', 'Eastern Division'),
(1083, 71, 'W', 'Western Division'),
(1084, 71, 'R', 'Rotuma'),
(1085, 72, 'AL', 'Ahvenanmaan Laani'),
(1086, 72, 'ES', 'Etela-Suomen Laani'),
(1087, 72, 'IS', 'Ita-Suomen Laani'),
(1088, 72, 'LS', 'Lansi-Suomen Laani'),
(1089, 72, 'LA', 'Lapin Lanani'),
(1090, 72, 'OU', 'Oulun Laani'),
(1091, 73, 'AL', 'Alsace'),
(1092, 73, 'AQ', 'Aquitaine'),
(1093, 73, 'AU', 'Auvergne'),
(1094, 73, 'BR', 'Brittany'),
(1095, 73, 'BU', 'Burgundy'),
(1096, 73, 'CE', 'Center Loire Valley'),
(1097, 73, 'CH', 'Champagne'),
(1098, 73, 'CO', 'Corse'),
(1099, 73, 'FR', 'France Comte'),
(1100, 73, 'LA', 'Languedoc Roussillon'),
(1101, 73, 'LI', 'Limousin'),
(1102, 73, 'LO', 'Lorraine'),
(1103, 73, 'MI', 'Midi Pyrenees'),
(1104, 73, 'NO', 'Nord Pas de Calais'),
(1105, 73, 'NR', 'Normandy'),
(1106, 73, 'PA', 'Paris / Ill de France'),
(1107, 73, 'PI', 'Picardie'),
(1108, 73, 'PO', 'Poitou Charente'),
(1109, 73, 'PR', 'Provence'),
(1110, 73, 'RH', 'Rhone Alps'),
(1111, 73, 'RI', 'Riviera'),
(1112, 73, 'WE', 'Western Loire Valley'),
(1113, 74, 'Et', 'Etranger'),
(1114, 74, '01', 'Ain'),
(1115, 74, '02', 'Aisne'),
(1116, 74, '03', 'Allier'),
(1117, 74, '04', 'Alpes de Haute Provence'),
(1118, 74, '05', 'Hautes-Alpes'),
(1119, 74, '06', 'Alpes Maritimes'),
(1120, 74, '07', 'ArdÃƒÆ’Ã‚Â¨che'),
(1121, 74, '08', 'Ardennes'),
(1122, 74, '09', 'AriÃƒÆ’Ã‚Â¨ge'),
(1123, 74, '10', 'Aube'),
(1124, 74, '11', 'Aude'),
(1125, 74, '12', 'Aveyron'),
(1126, 74, '13', 'Bouches du RhÃƒÆ’Ã‚Â´ne'),
(1127, 74, '14', 'Calvados'),
(1128, 74, '15', 'Cantal'),
(1129, 74, '16', 'Charente'),
(1130, 74, '17', 'Charente Maritime'),
(1131, 74, '18', 'Cher'),
(1132, 74, '19', 'CorrÃƒÆ’Ã‚Â¨ze'),
(1133, 74, '2A', 'Corse du Sud'),
(1134, 74, '2B', 'Haute Corse'),
(1135, 74, '21', 'CÃƒÆ’Ã‚Â´te d''or'),
(1136, 74, '22', 'CÃƒÆ’Ã‚Â´tes d''Armor'),
(1137, 74, '23', 'Creuse'),
(1138, 74, '24', 'Dordogne'),
(1139, 74, '25', 'Doubs'),
(1140, 74, '26', 'DrÃƒÆ’Ã‚Â´me'),
(1141, 74, '27', 'Eure'),
(1142, 74, '28', 'Eure et Loir'),
(1143, 74, '29', 'FinistÃƒÆ’Ã‚Â¨re'),
(1144, 74, '30', 'Gard'),
(1145, 74, '31', 'Haute Garonne'),
(1146, 74, '32', 'Gers'),
(1147, 74, '33', 'Gironde'),
(1148, 74, '34', 'HÃƒÆ’Ã‚Â©;rault'),
(1149, 74, '35', 'Ille et Vilaine'),
(1150, 74, '36', 'Indre'),
(1151, 74, '37', 'Indre et Loire'),
(1152, 74, '38', 'IsÃƒÆ’Ã‚Â©;re'),
(1153, 74, '39', 'Jura'),
(1154, 74, '40', 'Landes'),
(1155, 74, '41', 'Loir et Cher'),
(1156, 74, '42', 'Loire'),
(1157, 74, '43', 'Haute Loire'),
(1158, 74, '44', 'Loire Atlantique'),
(1159, 74, '45', 'Loiret'),
(1160, 74, '46', 'Lot'),
(1161, 74, '47', 'Lot et Garonne'),
(1162, 74, '48', 'LozÃƒÆ’Ã‚Â¨re'),
(1163, 74, '49', 'Maine et Loire'),
(1164, 74, '50', 'Manche'),
(1165, 74, '51', 'Marne'),
(1166, 74, '52', 'Haute Marne'),
(1167, 74, '53', 'Mayenne'),
(1168, 74, '54', 'Meurthe et Moselle'),
(1169, 74, '55', 'Meuse'),
(1170, 74, '56', 'Morbihan'),
(1171, 74, '57', 'Moselle'),
(1172, 74, '58', 'NiÃƒÆ’Ã‚Â¨vre'),
(1173, 74, '59', 'Nord'),
(1174, 74, '60', 'Oise'),
(1175, 74, '61', 'Orne'),
(1176, 74, '62', 'Pas de Calais'),
(1177, 74, '63', 'Puy de DÃƒÆ’Ã‚Â´me'),
(1178, 74, '64', 'PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es Atlantiqu'),
(1179, 74, '65', 'Hautes PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es'),
(1180, 74, '66', 'PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es Orientale'),
(1181, 74, '67', 'Bas Rhin'),
(1182, 74, '68', 'Haut Rhin'),
(1183, 74, '69', 'RhÃƒÆ’Ã‚Â´ne'),
(1184, 74, '70', 'Haute SaÃƒÆ’Ã‚Â´ne'),
(1185, 74, '71', 'SaÃƒÆ’Ã‚Â´ne et Loire'),
(1186, 74, '72', 'Sarthe'),
(1187, 74, '73', 'Savoie'),
(1188, 74, '74', 'Haute Savoie'),
(1189, 74, '75', 'Paris'),
(1190, 74, '76', 'Seine Maritime'),
(1191, 74, '77', 'Seine et Marne'),
(1192, 74, '78', 'Yvelines'),
(1193, 74, '79', 'Deux SÃƒÆ’Ã‚Â¨vres'),
(1194, 74, '80', 'Somme'),
(1195, 74, '81', 'Tarn'),
(1196, 74, '82', 'Tarn et Garonne'),
(1197, 74, '83', 'Var'),
(1198, 74, '84', 'Vaucluse'),
(1199, 74, '85', 'VendÃƒÆ’Ã‚Â©e'),
(1200, 74, '86', 'Vienne'),
(1201, 74, '87', 'Haute Vienne'),
(1202, 74, '88', 'Vosges'),
(1203, 74, '89', 'Yonne'),
(1204, 74, '90', 'Territoire de Belfort'),
(1205, 74, '91', 'Essonne'),
(1206, 74, '92', 'Hauts de Seine'),
(1207, 74, '93', 'Seine St-Denis'),
(1208, 74, '94', 'Val de Marne'),
(1209, 74, '95', 'Val d''Oise'),
(1210, 76, 'M', 'Archipel des Marquises'),
(1211, 76, 'T', 'Archipel des Tuamotu'),
(1212, 76, 'I', 'Archipel des Tubuai'),
(1213, 76, 'V', 'Iles du Vent'),
(1214, 76, 'S', 'Iles Sous-le-Vent'),
(1215, 77, 'C', 'Iles Crozet'),
(1216, 77, 'K', 'Iles Kerguelen'),
(1217, 77, 'A', 'Ile Amsterdam'),
(1218, 77, 'P', 'Ile Saint-Paul'),
(1219, 77, 'D', 'Adelie Land'),
(1220, 78, 'ES', 'Estuaire'),
(1221, 78, 'HO', 'Haut-Ogooue'),
(1222, 78, 'MO', 'Moyen-Ogooue'),
(1223, 78, 'NG', 'Ngounie'),
(1224, 78, 'NY', 'Nyanga'),
(1225, 78, 'OI', 'Ogooue-Ivindo'),
(1226, 78, 'OL', 'Ogooue-Lolo'),
(1227, 78, 'OM', 'Ogooue-Maritime'),
(1228, 78, 'WN', 'Woleu-Ntem'),
(1229, 79, 'BJ', 'Banjul'),
(1230, 79, 'BS', 'Basse'),
(1231, 79, 'BR', 'Brikama'),
(1232, 79, 'JA', 'Janjangbure'),
(1233, 79, 'KA', 'Kanifeng'),
(1234, 79, 'KE', 'Kerewan'),
(1235, 79, 'KU', 'Kuntaur'),
(1236, 79, 'MA', 'Mansakonko'),
(1237, 79, 'LR', 'Lower River'),
(1238, 79, 'CR', 'Central River'),
(1239, 79, 'NB', 'North Bank'),
(1240, 79, 'UR', 'Upper River'),
(1241, 79, 'WE', 'Western'),
(1242, 80, 'AB', 'Abkhazia'),
(1243, 80, 'AJ', 'Ajaria'),
(1244, 80, 'TB', 'Tbilisi'),
(1245, 80, 'GU', 'Guria'),
(1246, 80, 'IM', 'Imereti'),
(1247, 80, 'KA', 'Kakheti'),
(1248, 80, 'KK', 'Kvemo Kartli'),
(1249, 80, 'MM', 'Mtskheta-Mtianeti'),
(1250, 80, 'RL', 'Racha Lechkhumi and Kvemo Svanet'),
(1251, 80, 'SZ', 'Samegrelo-Zemo Svaneti'),
(1252, 80, 'SJ', 'Samtskhe-Javakheti'),
(1253, 80, 'SK', 'Shida Kartli'),
(1254, 81, 'BAW', 'Baden-WÃƒÆ’Ã‚Â¼rttemberg'),
(1255, 81, 'BAY', 'Bayern'),
(1256, 81, 'BER', 'Berlin'),
(1257, 81, 'BRG', 'Brandenburg'),
(1258, 81, 'BRE', 'Bremen'),
(1259, 81, 'HAM', 'Hamburg'),
(1260, 81, 'HES', 'Hessen'),
(1261, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(1262, 81, 'NDS', 'Niedersachsen'),
(1263, 81, 'NRW', 'Nordrhein-Westfalen'),
(1264, 81, 'RHE', 'Rheinland-Pfalz'),
(1265, 81, 'SAR', 'Saarland'),
(1266, 81, 'SAS', 'Sachsen'),
(1267, 81, 'SAC', 'Sachsen-Anhalt'),
(1268, 81, 'SCN', 'Schleswig-Holstein'),
(1269, 81, 'THE', 'ThÃƒÆ’Ã‚Â¼ringen'),
(1270, 82, 'AS', 'Ashanti Region'),
(1271, 82, 'BA', 'Brong-Ahafo Region'),
(1272, 82, 'CE', 'Central Region'),
(1273, 82, 'EA', 'Eastern Region'),
(1274, 82, 'GA', 'Greater Accra Region'),
(1275, 82, 'NO', 'Northern Region'),
(1276, 82, 'UE', 'Upper East Region'),
(1277, 82, 'UW', 'Upper West Region'),
(1278, 82, 'VO', 'Volta Region'),
(1279, 82, 'WE', 'Western Region'),
(1280, 84, 'AT', 'Attica'),
(1281, 84, 'CN', 'Central Greece'),
(1282, 84, 'CM', 'Central Macedonia'),
(1283, 84, 'CR', 'Crete'),
(1284, 84, 'EM', 'East Macedonia and Thrace'),
(1285, 84, 'EP', 'Epirus'),
(1286, 84, 'II', 'Ionian Islands'),
(1287, 84, 'NA', 'North Aegean'),
(1288, 84, 'PP', 'Peloponnesos'),
(1289, 84, 'SA', 'South Aegean'),
(1290, 84, 'TH', 'Thessaly'),
(1291, 84, 'WG', 'West Greece'),
(1292, 84, 'WM', 'West Macedonia'),
(1293, 85, 'A', 'Avannaa'),
(1294, 85, 'T', 'Tunu'),
(1295, 85, 'K', 'Kitaa'),
(1296, 86, 'A', 'Saint Andrew'),
(1297, 86, 'D', 'Saint David'),
(1298, 86, 'G', 'Saint George'),
(1299, 86, 'J', 'Saint John'),
(1300, 86, 'M', 'Saint Mark'),
(1301, 86, 'P', 'Saint Patrick'),
(1302, 86, 'C', 'Carriacou'),
(1303, 86, 'Q', 'Petit Martinique'),
(1304, 89, 'AV', 'Alta Verapaz'),
(1305, 89, 'BV', 'Baja Verapaz'),
(1306, 89, 'CM', 'Chimaltenango'),
(1307, 89, 'CQ', 'Chiquimula'),
(1308, 89, 'PE', 'El Peten'),
(1309, 89, 'PR', 'El Progreso'),
(1310, 89, 'QC', 'El Quiche'),
(1311, 89, 'ES', 'Escuintla'),
(1312, 89, 'GU', 'Guatemala'),
(1313, 89, 'HU', 'Huehuetenango'),
(1314, 89, 'IZ', 'Izabal'),
(1315, 89, 'JA', 'Jalapa'),
(1316, 89, 'JU', 'Jutiapa'),
(1317, 89, 'QZ', 'Quetzaltenango'),
(1318, 89, 'RE', 'Retalhuleu'),
(1319, 89, 'ST', 'Sacatepequez'),
(1320, 89, 'SM', 'San Marcos'),
(1321, 89, 'SR', 'Santa Rosa'),
(1322, 89, 'SO', 'Solola'),
(1323, 89, 'SU', 'Suchitepequez'),
(1324, 89, 'TO', 'Totonicapan'),
(1325, 89, 'ZA', 'Zacapa'),
(1326, 90, 'CNK', 'Conakry'),
(1327, 90, 'BYL', 'Beyla'),
(1328, 90, 'BFA', 'Boffa'),
(1329, 90, 'BOK', 'Boke'),
(1330, 90, 'COY', 'Coyah'),
(1331, 90, 'DBL', 'Dabola'),
(1332, 90, 'DLB', 'Dalaba'),
(1333, 90, 'DGR', 'Dinguiraye'),
(1334, 90, 'DBR', 'Dubreka'),
(1335, 90, 'FRN', 'Faranah'),
(1336, 90, 'FRC', 'Forecariah'),
(1337, 90, 'FRI', 'Fria'),
(1338, 90, 'GAO', 'Gaoual'),
(1339, 90, 'GCD', 'Gueckedou'),
(1340, 90, 'KNK', 'Kankan'),
(1341, 90, 'KRN', 'Kerouane'),
(1342, 90, 'KND', 'Kindia'),
(1343, 90, 'KSD', 'Kissidougou'),
(1344, 90, 'KBA', 'Koubia'),
(1345, 90, 'KDA', 'Koundara'),
(1346, 90, 'KRA', 'Kouroussa'),
(1347, 90, 'LAB', 'Labe'),
(1348, 90, 'LLM', 'Lelouma'),
(1349, 90, 'LOL', 'Lola'),
(1350, 90, 'MCT', 'Macenta'),
(1351, 90, 'MAL', 'Mali'),
(1352, 90, 'MAM', 'Mamou'),
(1353, 90, 'MAN', 'Mandiana'),
(1354, 90, 'NZR', 'Nzerekore'),
(1355, 90, 'PIT', 'Pita'),
(1356, 90, 'SIG', 'Siguiri'),
(1357, 90, 'TLM', 'Telimele'),
(1358, 90, 'TOG', 'Tougue'),
(1359, 90, 'YOM', 'Yomou'),
(1360, 91, 'BF', 'Bafata Region'),
(1361, 91, 'BB', 'Biombo Region'),
(1362, 91, 'BS', 'Bissau Region'),
(1363, 91, 'BL', 'Bolama Region'),
(1364, 91, 'CA', 'Cacheu Region'),
(1365, 91, 'GA', 'Gabu Region'),
(1366, 91, 'OI', 'Oio Region'),
(1367, 91, 'QU', 'Quinara Region'),
(1368, 91, 'TO', 'Tombali Region'),
(1369, 92, 'BW', 'Barima-Waini'),
(1370, 92, 'CM', 'Cuyuni-Mazaruni'),
(1371, 92, 'DM', 'Demerara-Mahaica'),
(1372, 92, 'EC', 'East Berbice-Corentyne'),
(1373, 92, 'EW', 'Essequibo Islands-West Demerara'),
(1374, 92, 'MB', 'Mahaica-Berbice'),
(1375, 92, 'PM', 'Pomeroon-Supenaam'),
(1376, 92, 'PI', 'Potaro-Siparuni'),
(1377, 92, 'UD', 'Upper Demerara-Berbice'),
(1378, 92, 'UT', 'Upper Takutu-Upper Essequibo'),
(1379, 93, 'AR', 'Artibonite'),
(1380, 93, 'CE', 'Centre'),
(1381, 93, 'GA', 'Grand''Anse'),
(1382, 93, 'ND', 'Nord'),
(1383, 93, 'NE', 'Nord-Est'),
(1384, 93, 'NO', 'Nord-Ouest'),
(1385, 93, 'OU', 'Ouest'),
(1386, 93, 'SD', 'Sud'),
(1387, 93, 'SE', 'Sud-Est'),
(1388, 94, 'F', 'Flat Island'),
(1389, 94, 'M', 'McDonald Island'),
(1390, 94, 'S', 'Shag Island'),
(1391, 94, 'H', 'Heard Island'),
(1392, 95, 'AT', 'Atlantida'),
(1393, 95, 'CH', 'Choluteca'),
(1394, 95, 'CL', 'Colon'),
(1395, 95, 'CM', 'Comayagua'),
(1396, 95, 'CP', 'Copan'),
(1397, 95, 'CR', 'Cortes'),
(1398, 95, 'PA', 'El Paraiso'),
(1399, 95, 'FM', 'Francisco Morazan'),
(1400, 95, 'GD', 'Gracias a Dios'),
(1401, 95, 'IN', 'Intibuca'),
(1402, 95, 'IB', 'Islas de la Bahia (Bay Islands)'),
(1403, 95, 'PZ', 'La Paz'),
(1404, 95, 'LE', 'Lempira'),
(1405, 95, 'OC', 'Ocotepeque'),
(1406, 95, 'OL', 'Olancho'),
(1407, 95, 'SB', 'Santa Barbara'),
(1408, 95, 'VA', 'Valle'),
(1409, 95, 'YO', 'Yoro'),
(1410, 96, 'HCW', 'Central and Western Hong Kong Is'),
(1411, 96, 'HEA', 'Eastern Hong Kong Island'),
(1412, 96, 'HSO', 'Southern Hong Kong Island'),
(1413, 96, 'HWC', 'Wan Chai Hong Kong Island'),
(1414, 96, 'KKC', 'Kowloon City Kowloon'),
(1415, 96, 'KKT', 'Kwun Tong Kowloon'),
(1416, 96, 'KSS', 'Sham Shui Po Kowloon'),
(1417, 96, 'KWT', 'Wong Tai Sin Kowloon'),
(1418, 96, 'KYT', 'Yau Tsim Mong Kowloon'),
(1419, 96, 'NIS', 'Islands New Territories'),
(1420, 96, 'NKT', 'Kwai Tsing New Territories'),
(1421, 96, 'NNO', 'North New Territories'),
(1422, 96, 'NSK', 'Sai Kung New Territories'),
(1423, 96, 'NST', 'Sha Tin New Territories'),
(1424, 96, 'NTP', 'Tai Po New Territories'),
(1425, 96, 'NTW', 'Tsuen Wan New Territories'),
(1426, 96, 'NTM', 'Tuen Mun New Territories'),
(1427, 96, 'NYL', 'Yuen Long New Territories'),
(1428, 97, 'BK', 'Bacs-Kiskun'),
(1429, 97, 'BA', 'Baranya'),
(1430, 97, 'BE', 'Bekes'),
(1431, 97, 'BS', 'Bekescsaba'),
(1432, 97, 'BZ', 'Borsod-Abauj-Zemplen'),
(1433, 97, 'BU', 'Budapest'),
(1434, 97, 'CS', 'Csongrad'),
(1435, 97, 'DE', 'Debrecen'),
(1436, 97, 'DU', 'Dunaujvaros'),
(1437, 97, 'EG', 'Eger'),
(1438, 97, 'FE', 'Fejer'),
(1439, 97, 'GY', 'Gyor'),
(1440, 97, 'GM', 'Gyor-Moson-Sopron'),
(1441, 97, 'HB', 'Hajdu-Bihar'),
(1442, 97, 'HE', 'Heves'),
(1443, 97, 'HO', 'Hodmezovasarhely'),
(1444, 97, 'JN', 'Jasz-Nagykun-Szolnok'),
(1445, 97, 'KA', 'Kaposvar'),
(1446, 97, 'KE', 'Kecskemet'),
(1447, 97, 'KO', 'Komarom-Esztergom'),
(1448, 97, 'MI', 'Miskolc'),
(1449, 97, 'NA', 'Nagykanizsa'),
(1450, 97, 'NO', 'Nograd'),
(1451, 97, 'NY', 'Nyiregyhaza'),
(1452, 97, 'PE', 'Pecs'),
(1453, 97, 'PS', 'Pest'),
(1454, 97, 'SO', 'Somogy'),
(1455, 97, 'SP', 'Sopron'),
(1456, 97, 'SS', 'Szabolcs-Szatmar-Bereg'),
(1457, 97, 'SZ', 'Szeged'),
(1458, 97, 'SE', 'Szekesfehervar'),
(1459, 97, 'SL', 'Szolnok'),
(1460, 97, 'SM', 'Szombathely'),
(1461, 97, 'TA', 'Tatabanya'),
(1462, 97, 'TO', 'Tolna'),
(1463, 97, 'VA', 'Vas'),
(1464, 97, 'VE', 'Veszprem'),
(1465, 97, 'ZA', 'Zala'),
(1466, 97, 'ZZ', 'Zalaegerszeg'),
(1467, 98, 'AL', 'Austurland'),
(1468, 98, 'HF', 'Hofuoborgarsvaeoi'),
(1469, 98, 'NE', 'Norourland eystra'),
(1470, 98, 'NV', 'Norourland vestra'),
(1471, 98, 'SL', 'Suourland'),
(1472, 98, 'SN', 'Suournes'),
(1473, 98, 'VF', 'Vestfiroir'),
(1474, 98, 'VL', 'Vesturland'),
(1475, 99, 'AN', 'Andaman and Nicobar Islands'),
(1476, 99, 'AP', 'Andhra Pradesh'),
(1477, 99, 'AR', 'Arunachal Pradesh'),
(1478, 99, 'AS', 'Assam'),
(1479, 99, 'BI', 'Bihar'),
(1480, 99, 'CH', 'Chandigarh'),
(1481, 99, 'DA', 'Dadra and Nagar Haveli'),
(1482, 99, 'DM', 'Daman and Diu'),
(1483, 99, 'DE', 'Delhi'),
(1484, 99, 'GO', 'Goa'),
(1485, 99, 'GU', 'Gujarat'),
(1486, 99, 'HA', 'Haryana'),
(1487, 99, 'HP', 'Himachal Pradesh'),
(1488, 99, 'JA', 'Jammu and Kashmir'),
(1489, 99, 'KA', 'Karnataka'),
(1490, 99, 'KE', 'Kerala'),
(1491, 99, 'LI', 'Lakshadweep Islands'),
(1492, 99, 'MP', 'Madhya Pradesh'),
(1493, 99, 'MA', 'Maharashtra'),
(1494, 99, 'MN', 'Manipur'),
(1495, 99, 'ME', 'Meghalaya'),
(1496, 99, 'MI', 'Mizoram'),
(1497, 99, 'NA', 'Nagaland'),
(1498, 99, 'OR', 'Orissa'),
(1499, 99, 'PO', 'Pondicherry'),
(1500, 99, 'PU', 'Punjab'),
(1501, 99, 'RA', 'Rajasthan'),
(1502, 99, 'SI', 'Sikkim'),
(1503, 99, 'TN', 'Tamil Nadu'),
(1504, 99, 'TR', 'Tripura'),
(1505, 99, 'UP', 'Uttar Pradesh'),
(1506, 99, 'WB', 'West Bengal'),
(1507, 100, 'AC', 'Aceh'),
(1508, 100, 'BA', 'Bali'),
(1509, 100, 'BT', 'Banten'),
(1510, 100, 'BE', 'Bengkulu'),
(1511, 100, 'BD', 'BoDeTaBek'),
(1512, 100, 'GO', 'Gorontalo'),
(1513, 100, 'JK', 'Jakarta Raya'),
(1514, 100, 'JA', 'Jambi'),
(1515, 100, 'JB', 'Jawa Barat'),
(1516, 100, 'JT', 'Jawa Tengah'),
(1517, 100, 'JI', 'Jawa Timur'),
(1518, 100, 'KB', 'Kalimantan Barat'),
(1519, 100, 'KS', 'Kalimantan Selatan'),
(1520, 100, 'KT', 'Kalimantan Tengah'),
(1521, 100, 'KI', 'Kalimantan Timur'),
(1522, 100, 'BB', 'Kepulauan Bangka Belitung'),
(1523, 100, 'LA', 'Lampung'),
(1524, 100, 'MA', 'Maluku'),
(1525, 100, 'MU', 'Maluku Utara'),
(1526, 100, 'NB', 'Nusa Tenggara Barat'),
(1527, 100, 'NT', 'Nusa Tenggara Timur'),
(1528, 100, 'PA', 'Papua'),
(1529, 100, 'RI', 'Riau'),
(1530, 100, 'SN', 'Sulawesi Selatan'),
(1531, 100, 'ST', 'Sulawesi Tengah'),
(1532, 100, 'SG', 'Sulawesi Tenggara'),
(1533, 100, 'SA', 'Sulawesi Utara'),
(1534, 100, 'SB', 'Sumatera Barat'),
(1535, 100, 'SS', 'Sumatera Selatan'),
(1536, 100, 'SU', 'Sumatera Utara'),
(1537, 100, 'YO', 'Yogyakarta'),
(1538, 101, 'TEH', 'Tehran'),
(1539, 101, 'QOM', 'Qom'),
(1540, 101, 'MKZ', 'Markazi'),
(1541, 101, 'QAZ', 'Qazvin'),
(1542, 101, 'GIL', 'Gilan'),
(1543, 101, 'ARD', 'Ardabil'),
(1544, 101, 'ZAN', 'Zanjan'),
(1545, 101, 'EAZ', 'East Azarbaijan'),
(1546, 101, 'WEZ', 'West Azarbaijan'),
(1547, 101, 'KRD', 'Kurdistan'),
(1548, 101, 'HMD', 'Hamadan'),
(1549, 101, 'KRM', 'Kermanshah'),
(1550, 101, 'ILM', 'Ilam'),
(1551, 101, 'LRS', 'Lorestan'),
(1552, 101, 'KZT', 'Khuzestan'),
(1553, 101, 'CMB', 'Chahar Mahaal and Bakhtiari'),
(1554, 101, 'KBA', 'Kohkiluyeh and Buyer Ahmad'),
(1555, 101, 'BSH', 'Bushehr'),
(1556, 101, 'FAR', 'Fars'),
(1557, 101, 'HRM', 'Hormozgan'),
(1558, 101, 'SBL', 'Sistan and Baluchistan'),
(1559, 101, 'KRB', 'Kerman'),
(1560, 101, 'YZD', 'Yazd'),
(1561, 101, 'EFH', 'Esfahan'),
(1562, 101, 'SMN', 'Semnan'),
(1563, 101, 'MZD', 'Mazandaran'),
(1564, 101, 'GLS', 'Golestan'),
(1565, 101, 'NKH', 'North Khorasan'),
(1566, 101, 'RKH', 'Razavi Khorasan'),
(1567, 101, 'SKH', 'South Khorasan'),
(1568, 102, 'BD', 'Baghdad'),
(1569, 102, 'SD', 'Salah ad Din'),
(1570, 102, 'DY', 'Diyala'),
(1571, 102, 'WS', 'Wasit'),
(1572, 102, 'MY', 'Maysan'),
(1573, 102, 'BA', 'Al Basrah'),
(1574, 102, 'DQ', 'Dhi Qar'),
(1575, 102, 'MU', 'Al Muthanna'),
(1576, 102, 'QA', 'Al Qadisyah'),
(1577, 102, 'BB', 'Babil'),
(1578, 102, 'KB', 'Al Karbala'),
(1579, 102, 'NJ', 'An Najaf'),
(1580, 102, 'AB', 'Al Anbar'),
(1581, 102, 'NN', 'Ninawa'),
(1582, 102, 'DH', 'Dahuk'),
(1583, 102, 'AL', 'Arbil'),
(1584, 102, 'TM', 'At Ta''mim'),
(1585, 102, 'SL', 'As Sulaymaniyah'),
(1586, 103, 'CA', 'Carlow'),
(1587, 103, 'CV', 'Cavan'),
(1588, 103, 'CL', 'Clare'),
(1589, 103, 'CO', 'Cork'),
(1590, 103, 'DO', 'Donegal'),
(1591, 103, 'DU', 'Dublin'),
(1592, 103, 'GA', 'Galway'),
(1593, 103, 'KE', 'Kerry'),
(1594, 103, 'KI', 'Kildare'),
(1595, 103, 'KL', 'Kilkenny'),
(1596, 103, 'LA', 'Laois'),
(1597, 103, 'LE', 'Leitrim'),
(1598, 103, 'LI', 'Limerick'),
(1599, 103, 'LO', 'Longford'),
(1600, 103, 'LU', 'Louth'),
(1601, 103, 'MA', 'Mayo'),
(1602, 103, 'ME', 'Meath'),
(1603, 103, 'MO', 'Monaghan'),
(1604, 103, 'OF', 'Offaly'),
(1605, 103, 'RO', 'Roscommon'),
(1606, 103, 'SL', 'Sligo'),
(1607, 103, 'TI', 'Tipperary'),
(1608, 103, 'WA', 'Waterford'),
(1609, 103, 'WE', 'Westmeath'),
(1610, 103, 'WX', 'Wexford'),
(1611, 103, 'WI', 'Wicklow'),
(1612, 104, 'BS', 'Be''er Sheva'),
(1613, 104, 'BH', 'Bika''at Hayarden'),
(1614, 104, 'EA', 'Eilat and Arava'),
(1615, 104, 'GA', 'Galil'),
(1616, 104, 'HA', 'Haifa'),
(1617, 104, 'JM', 'Jehuda Mountains'),
(1618, 104, 'JE', 'Jerusalem'),
(1619, 104, 'NE', 'Negev'),
(1620, 104, 'SE', 'Semaria'),
(1621, 104, 'SH', 'Sharon'),
(1622, 104, 'TA', 'Tel Aviv (Gosh Dan)'),
(1623, 105, 'AB', 'Abruzzo'),
(1624, 105, 'BA', 'Basilicata'),
(1625, 105, 'CA', 'Calabria'),
(1626, 105, 'CP', 'Campania'),
(1627, 105, 'ER', 'Emilia Romagna'),
(1628, 105, 'FV', 'Friuli-Venezia Giulia'),
(1629, 105, 'LA', 'Lazio (Latium & Rome)'),
(1630, 105, 'TM', 'Le Marche (The Marches)'),
(1631, 105, 'LI', 'Liguria'),
(1632, 105, 'LO', 'Lombardia (Lombardy)'),
(1633, 105, 'MO', 'Molise'),
(1634, 105, 'PI', 'Piemonte (Piedmont)'),
(1635, 105, 'AP', 'Puglia (Apulia)'),
(1636, 105, 'SA', 'Sardegna (Sardinia)'),
(1637, 105, 'SI', 'Sicilia (Sicily)'),
(1638, 105, 'TU', 'Toscana (Tuscany)'),
(1639, 105, 'TR', 'Trentino Alto Adige'),
(1640, 105, 'UM', 'Umbria'),
(1641, 105, 'VA', 'Val d''Aosta'),
(1642, 105, 'VE', 'Veneto'),
(1643, 106, 'CLA', 'Clarendon Parish'),
(1644, 106, 'HAN', 'Hanover Parish'),
(1645, 106, 'KIN', 'Kingston Parish'),
(1646, 106, 'MAN', 'Manchester Parish'),
(1647, 106, 'POR', 'Portland Parish'),
(1648, 106, 'AND', 'Saint Andrew Parish'),
(1649, 106, 'ANN', 'Saint Ann Parish'),
(1650, 106, 'CAT', 'Saint Catherine Parish'),
(1651, 106, 'ELI', 'Saint Elizabeth Parish'),
(1652, 106, 'JAM', 'Saint James Parish'),
(1653, 106, 'MAR', 'Saint Mary Parish'),
(1654, 106, 'THO', 'Saint Thomas Parish'),
(1655, 106, 'TRL', 'Trelawny Parish'),
(1656, 106, 'WML', 'Westmoreland Parish'),
(1657, 107, 'AI', 'Aichi'),
(1658, 107, 'AK', 'Akita'),
(1659, 107, 'AO', 'Aomori'),
(1660, 107, 'CH', 'Chiba'),
(1661, 107, 'EH', 'Ehime'),
(1662, 107, 'FK', 'Fukui'),
(1663, 107, 'FU', 'Fukuoka'),
(1664, 107, 'FS', 'Fukushima'),
(1665, 107, 'GI', 'Gifu'),
(1666, 107, 'GU', 'Gumma'),
(1667, 107, 'HI', 'Hiroshima'),
(1668, 107, 'HO', 'Hokkaido'),
(1669, 107, 'HY', 'Hyogo'),
(1670, 107, 'IB', 'Ibaraki'),
(1671, 107, 'IS', 'Ishikawa'),
(1672, 107, 'IW', 'Iwate');
INSERT INTO `zone` (`zoneid`, `countryid`, `code`, `zonename`) VALUES
(1673, 107, 'KA', 'Kagawa'),
(1674, 107, 'KG', 'Kagoshima'),
(1675, 107, 'KN', 'Kanagawa'),
(1676, 107, 'KO', 'Kochi'),
(1677, 107, 'KU', 'Kumamoto'),
(1678, 107, 'KY', 'Kyoto'),
(1679, 107, 'MI', 'Mie'),
(1680, 107, 'MY', 'Miyagi'),
(1681, 107, 'MZ', 'Miyazaki'),
(1682, 107, 'NA', 'Nagano'),
(1683, 107, 'NG', 'Nagasaki'),
(1684, 107, 'NR', 'Nara'),
(1685, 107, 'NI', 'Niigata'),
(1686, 107, 'OI', 'Oita'),
(1687, 107, 'OK', 'Okayama'),
(1688, 107, 'ON', 'Okinawa'),
(1689, 107, 'OS', 'Osaka'),
(1690, 107, 'SA', 'Saga'),
(1691, 107, 'SI', 'Saitama'),
(1692, 107, 'SH', 'Shiga'),
(1693, 107, 'SM', 'Shimane'),
(1694, 107, 'SZ', 'Shizuoka'),
(1695, 107, 'TO', 'Tochigi'),
(1696, 107, 'TS', 'Tokushima'),
(1697, 107, 'TK', 'Tokyo'),
(1698, 107, 'TT', 'Tottori'),
(1699, 107, 'TY', 'Toyama'),
(1700, 107, 'WA', 'Wakayama'),
(1701, 107, 'YA', 'Yamagata'),
(1702, 107, 'YM', 'Yamaguchi'),
(1703, 107, 'YN', 'Yamanashi'),
(1704, 108, 'AM', '''Amman'),
(1705, 108, 'AJ', 'Ajlun'),
(1706, 108, 'AA', 'Al ''Aqabah'),
(1707, 108, 'AB', 'Al Balqa'''),
(1708, 108, 'AK', 'Al Karak'),
(1709, 108, 'AL', 'Al Mafraq'),
(1710, 108, 'AT', 'At Tafilah'),
(1711, 108, 'AZ', 'Az Zarqa'''),
(1712, 108, 'IR', 'Irbid'),
(1713, 108, 'JA', 'Jarash'),
(1714, 108, 'MA', 'Ma''an'),
(1715, 108, 'MD', 'Madaba'),
(1716, 109, 'AL', 'Almaty'),
(1717, 109, 'AC', 'Almaty City'),
(1718, 109, 'AM', 'Aqmola'),
(1719, 109, 'AQ', 'Aqtobe'),
(1720, 109, 'AS', 'Astana City'),
(1721, 109, 'AT', 'Atyrau'),
(1722, 109, 'BA', 'Batys Qazaqstan'),
(1723, 109, 'BY', 'Bayqongyr City'),
(1724, 109, 'MA', 'Mangghystau'),
(1725, 109, 'ON', 'Ongtustik Qazaqstan'),
(1726, 109, 'PA', 'Pavlodar'),
(1727, 109, 'QA', 'Qaraghandy'),
(1728, 109, 'QO', 'Qostanay'),
(1729, 109, 'QY', 'Qyzylorda'),
(1730, 109, 'SH', 'Shyghys Qazaqstan'),
(1731, 109, 'SO', 'Soltustik Qazaqstan'),
(1732, 109, 'ZH', 'Zhambyl'),
(1733, 110, 'CE', 'Central'),
(1734, 110, 'CO', 'Coast'),
(1735, 110, 'EA', 'Eastern'),
(1736, 110, 'NA', 'Nairobi Area'),
(1737, 110, 'NE', 'North Eastern'),
(1738, 110, 'NY', 'Nyanza'),
(1739, 110, 'RV', 'Rift Valley'),
(1740, 110, 'WE', 'Western'),
(1741, 111, 'AG', 'Abaiang'),
(1742, 111, 'AM', 'Abemama'),
(1743, 111, 'AK', 'Aranuka'),
(1744, 111, 'AO', 'Arorae'),
(1745, 111, 'BA', 'Banaba'),
(1746, 111, 'BE', 'Beru'),
(1747, 111, 'bT', 'Butaritari'),
(1748, 111, 'KA', 'Kanton'),
(1749, 111, 'KR', 'Kiritimati'),
(1750, 111, 'KU', 'Kuria'),
(1751, 111, 'MI', 'Maiana'),
(1752, 111, 'MN', 'Makin'),
(1753, 111, 'ME', 'Marakei'),
(1754, 111, 'NI', 'Nikunau'),
(1755, 111, 'NO', 'Nonouti'),
(1756, 111, 'ON', 'Onotoa'),
(1757, 111, 'TT', 'Tabiteuea'),
(1758, 111, 'TR', 'Tabuaeran'),
(1759, 111, 'TM', 'Tamana'),
(1760, 111, 'TW', 'Tarawa'),
(1761, 111, 'TE', 'Teraina'),
(1762, 112, 'CHA', 'Chagang-do'),
(1763, 112, 'HAB', 'Hamgyong-bukto'),
(1764, 112, 'HAN', 'Hamgyong-namdo'),
(1765, 112, 'HWB', 'Hwanghae-bukto'),
(1766, 112, 'HWN', 'Hwanghae-namdo'),
(1767, 112, 'KAN', 'Kangwon-do'),
(1768, 112, 'PYB', 'P''yongan-bukto'),
(1769, 112, 'PYN', 'P''yongan-namdo'),
(1770, 112, 'YAN', 'Ryanggang-do (Yanggang-do)'),
(1771, 112, 'NAJ', 'Rason Directly Governed City'),
(1772, 112, 'PYO', 'P''yongyang Special City'),
(1773, 113, 'CO', 'Ch''ungch''ong-bukto'),
(1774, 113, 'CH', 'Ch''ungch''ong-namdo'),
(1775, 113, 'CD', 'Cheju-do'),
(1776, 113, 'CB', 'Cholla-bukto'),
(1777, 113, 'CN', 'Cholla-namdo'),
(1778, 113, 'IG', 'Inch''on-gwangyoksi'),
(1779, 113, 'KA', 'Kangwon-do'),
(1780, 113, 'KG', 'Kwangju-gwangyoksi'),
(1781, 113, 'KD', 'Kyonggi-do'),
(1782, 113, 'KB', 'Kyongsang-bukto'),
(1783, 113, 'KN', 'Kyongsang-namdo'),
(1784, 113, 'PG', 'Pusan-gwangyoksi'),
(1785, 113, 'SO', 'Soul-t''ukpyolsi'),
(1786, 113, 'TA', 'Taegu-gwangyoksi'),
(1787, 113, 'TG', 'Taejon-gwangyoksi'),
(1788, 114, 'AL', 'Al ''Asimah'),
(1789, 114, 'AA', 'Al Ahmadi'),
(1790, 114, 'AF', 'Al Farwaniyah'),
(1791, 114, 'AJ', 'Al Jahra'''),
(1792, 114, 'HA', 'Hawalli'),
(1793, 115, 'GB', 'Bishkek'),
(1794, 115, 'B', 'Batken'),
(1795, 115, 'C', 'Chu'),
(1796, 115, 'J', 'Jalal-Abad'),
(1797, 115, 'N', 'Naryn'),
(1798, 115, 'O', 'Osh'),
(1799, 115, 'T', 'Talas'),
(1800, 115, 'Y', 'Ysyk-Kol'),
(1801, 116, 'VT', 'Vientiane'),
(1802, 116, 'AT', 'Attapu'),
(1803, 116, 'BK', 'Bokeo'),
(1804, 116, 'BL', 'Bolikhamxai'),
(1805, 116, 'CH', 'Champasak'),
(1806, 116, 'HO', 'Houaphan'),
(1807, 116, 'KH', 'Khammouan'),
(1808, 116, 'LM', 'Louang Namtha'),
(1809, 116, 'LP', 'Louangphabang'),
(1810, 116, 'OU', 'Oudomxai'),
(1811, 116, 'PH', 'Phongsali'),
(1812, 116, 'SL', 'Salavan'),
(1813, 116, 'SV', 'Savannakhet'),
(1814, 116, 'VI', 'Vientiane'),
(1815, 116, 'XA', 'Xaignabouli'),
(1816, 116, 'XE', 'Xekong'),
(1817, 116, 'XI', 'Xiangkhoang'),
(1818, 116, 'XN', 'Xaisomboun'),
(1819, 117, 'AIZ', 'Aizkraukles Rajons'),
(1820, 117, 'ALU', 'Aluksnes Rajons'),
(1821, 117, 'BAL', 'Balvu Rajons'),
(1822, 117, 'BAU', 'Bauskas Rajons'),
(1823, 117, 'CES', 'Cesu Rajons'),
(1824, 117, 'DGR', 'Daugavpils Rajons'),
(1825, 117, 'DOB', 'Dobeles Rajons'),
(1826, 117, 'GUL', 'Gulbenes Rajons'),
(1827, 117, 'JEK', 'Jekabpils Rajons'),
(1828, 117, 'JGR', 'Jelgavas Rajons'),
(1829, 117, 'KRA', 'Kraslavas Rajons'),
(1830, 117, 'KUL', 'Kuldigas Rajons'),
(1831, 117, 'LPR', 'Liepajas Rajons'),
(1832, 117, 'LIM', 'Limbazu Rajons'),
(1833, 117, 'LUD', 'Ludzas Rajons'),
(1834, 117, 'MAD', 'Madonas Rajons'),
(1835, 117, 'OGR', 'Ogres Rajons'),
(1836, 117, 'PRE', 'Preilu Rajons'),
(1837, 117, 'RZR', 'Rezeknes Rajons'),
(1838, 117, 'RGR', 'Rigas Rajons'),
(1839, 117, 'SAL', 'Saldus Rajons'),
(1840, 117, 'TAL', 'Talsu Rajons'),
(1841, 117, 'TUK', 'Tukuma Rajons'),
(1842, 117, 'VLK', 'Valkas Rajons'),
(1843, 117, 'VLM', 'Valmieras Rajons'),
(1844, 117, 'VSR', 'Ventspils Rajons'),
(1845, 117, 'DGV', 'Daugavpils'),
(1846, 117, 'JGV', 'Jelgava'),
(1847, 117, 'JUR', 'Jurmala'),
(1848, 117, 'LPK', 'Liepaja'),
(1849, 117, 'RZK', 'Rezekne'),
(1850, 117, 'RGA', 'Riga'),
(1851, 117, 'VSL', 'Ventspils'),
(1852, 119, 'BE', 'Berea'),
(1853, 119, 'BB', 'Butha-Buthe'),
(1854, 119, 'LE', 'Leribe'),
(1855, 119, 'MF', 'Mafeteng'),
(1856, 119, 'MS', 'Maseru'),
(1857, 119, 'MH', 'Mohale''s Hoek'),
(1858, 119, 'MK', 'Mokhotlong'),
(1859, 119, 'QN', 'Qacha''s Nek'),
(1860, 119, 'QT', 'Quthing'),
(1861, 119, 'TT', 'Thaba-Tseka'),
(1862, 120, 'BI', 'Bomi'),
(1863, 120, 'BG', 'Bong'),
(1864, 120, 'GB', 'Grand Bassa'),
(1865, 120, 'CM', 'Grand Cape Mount'),
(1866, 120, 'GG', 'Grand Gedeh'),
(1867, 120, 'GK', 'Grand Kru'),
(1868, 120, 'LO', 'Lofa'),
(1869, 120, 'MG', 'Margibi'),
(1870, 120, 'ML', 'Maryland'),
(1871, 120, 'MS', 'Montserrado'),
(1872, 120, 'NB', 'Nimba'),
(1873, 120, 'RC', 'River Cess'),
(1874, 120, 'SN', 'Sinoe'),
(1875, 121, 'AJ', 'Ajdabiya'),
(1876, 121, 'AZ', 'Al ''Aziziyah'),
(1877, 121, 'FA', 'Al Fatih'),
(1878, 121, 'JA', 'Al Jabal al Akhdar'),
(1879, 121, 'JU', 'Al Jufrah'),
(1880, 121, 'KH', 'Al Khums'),
(1881, 121, 'KU', 'Al Kufrah'),
(1882, 121, 'NK', 'An Nuqat al Khams'),
(1883, 121, 'AS', 'Ash Shati'''),
(1884, 121, 'AW', 'Awbari'),
(1885, 121, 'ZA', 'Az Zawiyah'),
(1886, 121, 'BA', 'Banghazi'),
(1887, 121, 'DA', 'Darnah'),
(1888, 121, 'GD', 'Ghadamis'),
(1889, 121, 'GY', 'Gharyan'),
(1890, 121, 'MI', 'Misratah'),
(1891, 121, 'MZ', 'Murzuq'),
(1892, 121, 'SB', 'Sabha'),
(1893, 121, 'SW', 'Sawfajjin'),
(1894, 121, 'SU', 'Surt'),
(1895, 121, 'TL', 'Tarabulus (Tripoli)'),
(1896, 121, 'TH', 'Tarhunah'),
(1897, 121, 'TU', 'Tubruq'),
(1898, 121, 'YA', 'Yafran'),
(1899, 121, 'ZL', 'Zlitan'),
(1900, 122, 'V', 'Vaduz'),
(1901, 122, 'A', 'Schaan'),
(1902, 122, 'B', 'Balzers'),
(1903, 122, 'N', 'Triesen'),
(1904, 122, 'E', 'Eschen'),
(1905, 122, 'M', 'Mauren'),
(1906, 122, 'T', 'Triesenberg'),
(1907, 122, 'R', 'Ruggell'),
(1908, 122, 'G', 'Gamprin'),
(1909, 122, 'L', 'Schellenberg'),
(1910, 122, 'P', 'Planken'),
(1911, 123, 'AL', 'Alytus'),
(1912, 123, 'KA', 'Kaunas'),
(1913, 123, 'KL', 'Klaipeda'),
(1914, 123, 'MA', 'Marijampole'),
(1915, 123, 'PA', 'Panevezys'),
(1916, 123, 'SI', 'Siauliai'),
(1917, 123, 'TA', 'Taurage'),
(1918, 123, 'TE', 'Telsiai'),
(1919, 123, 'UT', 'Utena'),
(1920, 123, 'VI', 'Vilnius'),
(1921, 124, 'DD', 'Diekirch'),
(1922, 124, 'DC', 'Clervaux'),
(1923, 124, 'DR', 'Redange'),
(1924, 124, 'DV', 'Vianden'),
(1925, 124, 'DW', 'Wiltz'),
(1926, 124, 'GG', 'Grevenmacher'),
(1927, 124, 'GE', 'Echternach'),
(1928, 124, 'GR', 'Remich'),
(1929, 124, 'LL', 'Luxembourg'),
(1930, 124, 'LC', 'Capellen'),
(1931, 124, 'LE', 'Esch-sur-Alzette'),
(1932, 124, 'LM', 'Mersch'),
(1933, 125, 'OLF', 'Our Lady Fatima Parish'),
(1934, 125, 'ANT', 'St. Anthony Parish'),
(1935, 125, 'LAZ', 'St. Lazarus Parish'),
(1936, 125, 'CAT', 'Cathedral Parish'),
(1937, 125, 'LAW', 'St. Lawrence Parish'),
(1938, 127, 'AN', 'Antananarivo'),
(1939, 127, 'AS', 'Antsiranana'),
(1940, 127, 'FN', 'Fianarantsoa'),
(1941, 127, 'MJ', 'Mahajanga'),
(1942, 127, 'TM', 'Toamasina'),
(1943, 127, 'TL', 'Toliara'),
(1944, 128, 'BLK', 'Balaka'),
(1945, 128, 'BLT', 'Blantyre'),
(1946, 128, 'CKW', 'Chikwawa'),
(1947, 128, 'CRD', 'Chiradzulu'),
(1948, 128, 'CTP', 'Chitipa'),
(1949, 128, 'DDZ', 'Dedza'),
(1950, 128, 'DWA', 'Dowa'),
(1951, 128, 'KRG', 'Karonga'),
(1952, 128, 'KSG', 'Kasungu'),
(1953, 128, 'LKM', 'Likoma'),
(1954, 128, 'LLG', 'Lilongwe'),
(1955, 128, 'MCG', 'Machinga'),
(1956, 128, 'MGC', 'Mangochi'),
(1957, 128, 'MCH', 'Mchinji'),
(1958, 128, 'MLJ', 'Mulanje'),
(1959, 128, 'MWZ', 'Mwanza'),
(1960, 128, 'MZM', 'Mzimba'),
(1961, 128, 'NTU', 'Ntcheu'),
(1962, 128, 'NKB', 'Nkhata Bay'),
(1963, 128, 'NKH', 'Nkhotakota'),
(1964, 128, 'NSJ', 'Nsanje'),
(1965, 128, 'NTI', 'Ntchisi'),
(1966, 128, 'PHL', 'Phalombe'),
(1967, 128, 'RMP', 'Rumphi'),
(1968, 128, 'SLM', 'Salima'),
(1969, 128, 'THY', 'Thyolo'),
(1970, 128, 'ZBA', 'Zomba'),
(1971, 129, 'JO', 'Johor'),
(1972, 129, 'KE', 'Kedah'),
(1973, 129, 'KL', 'Kelantan'),
(1974, 129, 'LA', 'Labuan'),
(1975, 129, 'ME', 'Melaka'),
(1976, 129, 'NS', 'Negeri Sembilan'),
(1977, 129, 'PA', 'Pahang'),
(1978, 129, 'PE', 'Perak'),
(1979, 129, 'PR', 'Perlis'),
(1980, 129, 'PP', 'Pulau Pinang'),
(1981, 129, 'SA', 'Sabah'),
(1982, 129, 'SR', 'Sarawak'),
(1983, 129, 'SE', 'Selangor'),
(1984, 129, 'TE', 'Terengganu'),
(1985, 129, 'WP', 'Wilayah Persekutuan'),
(1986, 130, 'THU', 'Thiladhunmathi Uthuru'),
(1987, 130, 'THD', 'Thiladhunmathi Dhekunu'),
(1988, 130, 'MLU', 'Miladhunmadulu Uthuru'),
(1989, 130, 'MLD', 'Miladhunmadulu Dhekunu'),
(1990, 130, 'MAU', 'Maalhosmadulu Uthuru'),
(1991, 130, 'MAD', 'Maalhosmadulu Dhekunu'),
(1992, 130, 'FAA', 'Faadhippolhu'),
(1993, 130, 'MAA', 'Male Atoll'),
(1994, 130, 'AAU', 'Ari Atoll Uthuru'),
(1995, 130, 'AAD', 'Ari Atoll Dheknu'),
(1996, 130, 'FEA', 'Felidhe Atoll'),
(1997, 130, 'MUA', 'Mulaku Atoll'),
(1998, 130, 'NAU', 'Nilandhe Atoll Uthuru'),
(1999, 130, 'NAD', 'Nilandhe Atoll Dhekunu'),
(2000, 130, 'KLH', 'Kolhumadulu'),
(2001, 130, 'HDH', 'Hadhdhunmathi'),
(2002, 130, 'HAU', 'Huvadhu Atoll Uthuru'),
(2003, 130, 'HAD', 'Huvadhu Atoll Dhekunu'),
(2004, 130, 'FMU', 'Fua Mulaku'),
(2005, 130, 'ADD', 'Addu'),
(2006, 131, 'GA', 'Gao'),
(2007, 131, 'KY', 'Kayes'),
(2008, 131, 'KD', 'Kidal'),
(2009, 131, 'KL', 'Koulikoro'),
(2010, 131, 'MP', 'Mopti'),
(2011, 131, 'SG', 'Segou'),
(2012, 131, 'SK', 'Sikasso'),
(2013, 131, 'TB', 'Tombouctou'),
(2014, 131, 'CD', 'Bamako Capital District'),
(2015, 132, 'ATT', 'Attard'),
(2016, 132, 'BAL', 'Balzan'),
(2017, 132, 'BGU', 'Birgu'),
(2018, 132, 'BKK', 'Birkirkara'),
(2019, 132, 'BRZ', 'Birzebbuga'),
(2020, 132, 'BOR', 'Bormla'),
(2021, 132, 'DIN', 'Dingli'),
(2022, 132, 'FGU', 'Fgura'),
(2023, 132, 'FLO', 'Floriana'),
(2024, 132, 'GDJ', 'Gudja'),
(2025, 132, 'GZR', 'Gzira'),
(2026, 132, 'GRG', 'Gargur'),
(2027, 132, 'GXQ', 'Gaxaq'),
(2028, 132, 'HMR', 'Hamrun'),
(2029, 132, 'IKL', 'Iklin'),
(2030, 132, 'ISL', 'Isla'),
(2031, 132, 'KLK', 'Kalkara'),
(2032, 132, 'KRK', 'Kirkop'),
(2033, 132, 'LIJ', 'Lija'),
(2034, 132, 'LUQ', 'Luqa'),
(2035, 132, 'MRS', 'Marsa'),
(2036, 132, 'MKL', 'Marsaskala'),
(2037, 132, 'MXL', 'Marsaxlokk'),
(2038, 132, 'MDN', 'Mdina'),
(2039, 132, 'MEL', 'Melliea'),
(2040, 132, 'MGR', 'Mgarr'),
(2041, 132, 'MST', 'Mosta'),
(2042, 132, 'MQA', 'Mqabba'),
(2043, 132, 'MSI', 'Msida'),
(2044, 132, 'MTF', 'Mtarfa'),
(2045, 132, 'NAX', 'Naxxar'),
(2046, 132, 'PAO', 'Paola'),
(2047, 132, 'PEM', 'Pembroke'),
(2048, 132, 'PIE', 'Pieta'),
(2049, 132, 'QOR', 'Qormi'),
(2050, 132, 'QRE', 'Qrendi'),
(2051, 132, 'RAB', 'Rabat'),
(2052, 132, 'SAF', 'Safi'),
(2053, 132, 'SGI', 'San Giljan'),
(2054, 132, 'SLU', 'Santa Lucija'),
(2055, 132, 'SPB', 'San Pawl il-Bahar'),
(2056, 132, 'SGW', 'San Gwann'),
(2057, 132, 'SVE', 'Santa Venera'),
(2058, 132, 'SIG', 'Siggiewi'),
(2059, 132, 'SLM', 'Sliema'),
(2060, 132, 'SWQ', 'Swieqi'),
(2061, 132, 'TXB', 'Ta Xbiex'),
(2062, 132, 'TRX', 'Tarxien'),
(2063, 132, 'VLT', 'Valletta'),
(2064, 132, 'XGJ', 'Xgajra'),
(2065, 132, 'ZBR', 'Zabbar'),
(2066, 132, 'ZBG', 'Zebbug'),
(2067, 132, 'ZJT', 'Zejtun'),
(2068, 132, 'ZRQ', 'Zurrieq'),
(2069, 132, 'FNT', 'Fontana'),
(2070, 132, 'GHJ', 'Ghajnsielem'),
(2071, 132, 'GHR', 'Gharb'),
(2072, 132, 'GHS', 'Ghasri'),
(2073, 132, 'KRC', 'Kercem'),
(2074, 132, 'MUN', 'Munxar'),
(2075, 132, 'NAD', 'Nadur'),
(2076, 132, 'QAL', 'Qala'),
(2077, 132, 'VIC', 'Victoria'),
(2078, 132, 'SLA', 'San Lawrenz'),
(2079, 132, 'SNT', 'Sannat'),
(2080, 132, 'ZAG', 'Xagra'),
(2081, 132, 'XEW', 'Xewkija'),
(2082, 132, 'ZEB', 'Zebbug'),
(2083, 133, 'ALG', 'Ailinginae'),
(2084, 133, 'ALL', 'Ailinglaplap'),
(2085, 133, 'ALK', 'Ailuk'),
(2086, 133, 'ARN', 'Arno'),
(2087, 133, 'AUR', 'Aur'),
(2088, 133, 'BKR', 'Bikar'),
(2089, 133, 'BKN', 'Bikini'),
(2090, 133, 'BKK', 'Bokak'),
(2091, 133, 'EBN', 'Ebon'),
(2092, 133, 'ENT', 'Enewetak'),
(2093, 133, 'EKB', 'Erikub'),
(2094, 133, 'JBT', 'Jabat'),
(2095, 133, 'JLT', 'Jaluit'),
(2096, 133, 'JEM', 'Jemo'),
(2097, 133, 'KIL', 'Kili'),
(2098, 133, 'KWJ', 'Kwajalein'),
(2099, 133, 'LAE', 'Lae'),
(2100, 133, 'LIB', 'Lib'),
(2101, 133, 'LKP', 'Likiep'),
(2102, 133, 'MJR', 'Majuro'),
(2103, 133, 'MLP', 'Maloelap'),
(2104, 133, 'MJT', 'Mejit'),
(2105, 133, 'MIL', 'Mili'),
(2106, 133, 'NMK', 'Namorik'),
(2107, 133, 'NAM', 'Namu'),
(2108, 133, 'RGL', 'Rongelap'),
(2109, 133, 'RGK', 'Rongrik'),
(2110, 133, 'TOK', 'Toke'),
(2111, 133, 'UJA', 'Ujae'),
(2112, 133, 'UJL', 'Ujelang'),
(2113, 133, 'UTK', 'Utirik'),
(2114, 133, 'WTH', 'Wotho'),
(2115, 133, 'WTJ', 'Wotje'),
(2116, 135, 'AD', 'Adrar'),
(2117, 135, 'AS', 'Assaba'),
(2118, 135, 'BR', 'Brakna'),
(2119, 135, 'DN', 'Dakhlet Nouadhibou'),
(2120, 135, 'GO', 'Gorgol'),
(2121, 135, 'GM', 'Guidimaka'),
(2122, 135, 'HC', 'Hodh Ech Chargui'),
(2123, 135, 'HG', 'Hodh El Gharbi'),
(2124, 135, 'IN', 'Inchiri'),
(2125, 135, 'TA', 'Tagant'),
(2126, 135, 'TZ', 'Tiris Zemmour'),
(2127, 135, 'TR', 'Trarza'),
(2128, 135, 'NO', 'Nouakchott'),
(2129, 136, 'BR', 'Beau Bassin-Rose Hill'),
(2130, 136, 'CU', 'Curepipe'),
(2131, 136, 'PU', 'Port Louis'),
(2132, 136, 'QB', 'Quatre Bornes'),
(2133, 136, 'VP', 'Vacoas-Phoenix'),
(2134, 136, 'AG', 'Agalega Islands'),
(2135, 136, 'CC', 'Cargados Carajos Shoals (Saint B'),
(2136, 136, 'RO', 'Rodrigues'),
(2137, 136, 'BL', 'Black River'),
(2138, 136, 'FL', 'Flacq'),
(2139, 136, 'GP', 'Grand Port'),
(2140, 136, 'MO', 'Moka'),
(2141, 136, 'PA', 'Pamplemousses'),
(2142, 136, 'PW', 'Plaines Wilhems'),
(2143, 136, 'PL', 'Port Louis'),
(2144, 136, 'RR', 'Riviere du Rempart'),
(2145, 136, 'SA', 'Savanne'),
(2146, 138, 'BN', 'Baja California Norte'),
(2147, 138, 'BS', 'Baja California Sur'),
(2148, 138, 'CA', 'Campeche'),
(2149, 138, 'CI', 'Chiapas'),
(2150, 138, 'CH', 'Chihuahua'),
(2151, 138, 'CZ', 'Coahuila de Zaragoza'),
(2152, 138, 'CL', 'Colima'),
(2153, 138, 'DF', 'Distrito Federal'),
(2154, 138, 'DU', 'Durango'),
(2155, 138, 'GA', 'Guanajuato'),
(2156, 138, 'GE', 'Guerrero'),
(2157, 138, 'HI', 'Hidalgo'),
(2158, 138, 'JA', 'Jalisco'),
(2159, 138, 'ME', 'Mexico'),
(2160, 138, 'MI', 'Michoacan de Ocampo'),
(2161, 138, 'MO', 'Morelos'),
(2162, 138, 'NA', 'Nayarit'),
(2163, 138, 'NL', 'Nuevo Leon'),
(2164, 138, 'OA', 'Oaxaca'),
(2165, 138, 'PU', 'Puebla'),
(2166, 138, 'QA', 'Queretaro de Arteaga'),
(2167, 138, 'QR', 'Quintana Roo'),
(2168, 138, 'SA', 'San Luis Potosi'),
(2169, 138, 'SI', 'Sinaloa'),
(2170, 138, 'SO', 'Sonora'),
(2171, 138, 'TB', 'Tabasco'),
(2172, 138, 'TM', 'Tamaulipas'),
(2173, 138, 'TL', 'Tlaxcala'),
(2174, 138, 'VE', 'Veracruz-Llave'),
(2175, 138, 'YU', 'Yucatan'),
(2176, 138, 'ZA', 'Zacatecas'),
(2177, 139, 'C', 'Chuuk'),
(2178, 139, 'K', 'Kosrae'),
(2179, 139, 'P', 'Pohnpei'),
(2180, 139, 'Y', 'Yap'),
(2181, 140, 'GA', 'Gagauzia'),
(2182, 140, 'CU', 'Chisinau'),
(2183, 140, 'BA', 'Balti'),
(2184, 140, 'CA', 'Cahul'),
(2185, 140, 'ED', 'Edinet'),
(2186, 140, 'LA', 'Lapusna'),
(2187, 140, 'OR', 'Orhei'),
(2188, 140, 'SO', 'Soroca'),
(2189, 140, 'TI', 'Tighina'),
(2190, 140, 'UN', 'Ungheni'),
(2191, 140, 'SN', 'StÃƒÆ’Ã‚Â®nga Nistrului'),
(2192, 141, 'FV', 'Fontvieille'),
(2193, 141, 'LC', 'La Condamine'),
(2194, 141, 'MV', 'Monaco-Ville'),
(2195, 141, 'MC', 'Monte-Carlo'),
(2196, 142, '1', 'Ulanbaatar'),
(2197, 142, '035', 'Orhon'),
(2198, 142, '037', 'Darhan uul'),
(2199, 142, '039', 'Hentiy'),
(2200, 142, '041', 'Hovsgol'),
(2201, 142, '043', 'Hovd'),
(2202, 142, '046', 'Uvs'),
(2203, 142, '047', 'Tov'),
(2204, 142, '049', 'Selenge'),
(2205, 142, '051', 'Suhbaatar'),
(2206, 142, '053', 'Omnogovi'),
(2207, 142, '055', 'Ovorhangay'),
(2208, 142, '057', 'Dzavhan'),
(2209, 142, '059', 'DundgovL'),
(2210, 142, '061', 'Dornod'),
(2211, 142, '063', 'Dornogov'),
(2212, 142, '064', 'Govi-Sumber'),
(2213, 142, '065', 'Govi-Altay'),
(2214, 142, '067', 'Bulgan'),
(2215, 142, '069', 'Bayanhongor'),
(2216, 142, '071', 'Bayan-Olgiy'),
(2217, 142, '073', 'Arhangay'),
(2218, 143, 'A', 'Saint Anthony'),
(2219, 143, 'G', 'Saint Georges'),
(2220, 143, 'P', 'Saint Peter'),
(2221, 144, 'AGD', 'Agadir'),
(2222, 144, 'HOC', 'Al Hoceima'),
(2223, 144, 'AZI', 'Azilal'),
(2224, 144, 'BME', 'Beni Mellal'),
(2225, 144, 'BSL', 'Ben Slimane'),
(2226, 144, 'BLM', 'Boulemane'),
(2227, 144, 'CBL', 'Casablanca'),
(2228, 144, 'CHA', 'Chaouen'),
(2229, 144, 'EJA', 'El Jadida'),
(2230, 144, 'EKS', 'El Kelaa des Sraghna'),
(2231, 144, 'ERA', 'Er Rachidia'),
(2232, 144, 'ESS', 'Essaouira'),
(2233, 144, 'FES', 'Fes'),
(2234, 144, 'FIG', 'Figuig'),
(2235, 144, 'GLM', 'Guelmim'),
(2236, 144, 'IFR', 'Ifrane'),
(2237, 144, 'KEN', 'Kenitra'),
(2238, 144, 'KHM', 'Khemisset'),
(2239, 144, 'KHN', 'Khenifra'),
(2240, 144, 'KHO', 'Khouribga'),
(2241, 144, 'LYN', 'Laayoune'),
(2242, 144, 'LAR', 'Larache'),
(2243, 144, 'MRK', 'Marrakech'),
(2244, 144, 'MKN', 'Meknes'),
(2245, 144, 'NAD', 'Nador'),
(2246, 144, 'ORZ', 'Ouarzazate'),
(2247, 144, 'OUJ', 'Oujda'),
(2248, 144, 'RSA', 'Rabat-Sale'),
(2249, 144, 'SAF', 'Safi'),
(2250, 144, 'SET', 'Settat'),
(2251, 144, 'SKA', 'Sidi Kacem'),
(2252, 144, 'TGR', 'Tangier'),
(2253, 144, 'TAN', 'Tan-Tan'),
(2254, 144, 'TAO', 'Taounate'),
(2255, 144, 'TRD', 'Taroudannt'),
(2256, 144, 'TAT', 'Tata'),
(2257, 144, 'TAZ', 'Taza'),
(2258, 144, 'TET', 'Tetouan'),
(2259, 144, 'TIZ', 'Tiznit'),
(2260, 144, 'ADK', 'Ad Dakhla'),
(2261, 144, 'BJD', 'Boujdour'),
(2262, 144, 'ESM', 'Es Smara'),
(2263, 145, 'CD', 'Cabo Delgado'),
(2264, 145, 'GZ', 'Gaza'),
(2265, 145, 'IN', 'Inhambane'),
(2266, 145, 'MN', 'Manica'),
(2267, 145, 'MC', 'Maputo (city)'),
(2268, 145, 'MP', 'Maputo'),
(2269, 145, 'NA', 'Nampula'),
(2270, 145, 'NI', 'Niassa'),
(2271, 145, 'SO', 'Sofala'),
(2272, 145, 'TE', 'Tete'),
(2273, 145, 'ZA', 'Zambezia'),
(2274, 146, 'AY', 'Ayeyarwady'),
(2275, 146, 'BG', 'Bago'),
(2276, 146, 'MG', 'Magway'),
(2277, 146, 'MD', 'Mandalay'),
(2278, 146, 'SG', 'Sagaing'),
(2279, 146, 'TN', 'Tanintharyi'),
(2280, 146, 'YG', 'Yangon'),
(2281, 146, 'CH', 'Chin State'),
(2282, 146, 'KC', 'Kachin State'),
(2283, 146, 'KH', 'Kayah State'),
(2284, 146, 'KN', 'Kayin State'),
(2285, 146, 'MN', 'Mon State'),
(2286, 146, 'RK', 'Rakhine State'),
(2287, 146, 'SH', 'Shan State'),
(2288, 147, 'CA', 'Caprivi'),
(2289, 147, 'ER', 'Erongo'),
(2290, 147, 'HA', 'Hardap'),
(2291, 147, 'KR', 'Karas'),
(2292, 147, 'KV', 'Kavango'),
(2293, 147, 'KH', 'Khomas'),
(2294, 147, 'KU', 'Kunene'),
(2295, 147, 'OW', 'Ohangwena'),
(2296, 147, 'OK', 'Omaheke'),
(2297, 147, 'OT', 'Omusati'),
(2298, 147, 'ON', 'Oshana'),
(2299, 147, 'OO', 'Oshikoto'),
(2300, 147, 'OJ', 'Otjozondjupa'),
(2301, 148, 'AO', 'Aiwo'),
(2302, 148, 'AA', 'Anabar'),
(2303, 148, 'AT', 'Anetan'),
(2304, 148, 'AI', 'Anibare'),
(2305, 148, 'BA', 'Baiti'),
(2306, 148, 'BO', 'Boe'),
(2307, 148, 'BU', 'Buada'),
(2308, 148, 'DE', 'Denigomodu'),
(2309, 148, 'EW', 'Ewa'),
(2310, 148, 'IJ', 'Ijuw'),
(2311, 148, 'ME', 'Meneng'),
(2312, 148, 'NI', 'Nibok'),
(2313, 148, 'UA', 'Uaboe'),
(2314, 148, 'YA', 'Yaren'),
(2315, 149, 'BA', 'Bagmati'),
(2316, 149, 'BH', 'Bheri'),
(2317, 149, 'DH', 'Dhawalagiri'),
(2318, 149, 'GA', 'Gandaki'),
(2319, 149, 'JA', 'Janakpur'),
(2320, 149, 'KA', 'Karnali'),
(2321, 149, 'KO', 'Kosi'),
(2322, 149, 'LU', 'Lumbini'),
(2323, 149, 'MA', 'Mahakali'),
(2324, 149, 'ME', 'Mechi'),
(2325, 149, 'NA', 'Narayani'),
(2326, 149, 'RA', 'Rapti'),
(2327, 149, 'SA', 'Sagarmatha'),
(2328, 149, 'SE', 'Seti'),
(2329, 150, 'DR', 'Drenthe'),
(2330, 150, 'FL', 'Flevoland'),
(2331, 150, 'FR', 'Friesland'),
(2332, 150, 'GE', 'Gelderland'),
(2333, 150, 'GR', 'Groningen'),
(2334, 150, 'LI', 'Limburg'),
(2335, 150, 'NB', 'Noord Brabant'),
(2336, 150, 'NH', 'Noord Holland'),
(2337, 150, 'OV', 'Overijssel'),
(2338, 150, 'UT', 'Utrecht'),
(2339, 150, 'ZE', 'Zeeland'),
(2340, 150, 'ZH', 'Zuid Holland'),
(2341, 152, 'L', 'Iles Loyaute'),
(2342, 152, 'N', 'Nord'),
(2343, 152, 'S', 'Sud'),
(2344, 153, 'AUK', 'Auckland'),
(2345, 153, 'BOP', 'Bay of Plenty'),
(2346, 153, 'CAN', 'Canterbury'),
(2347, 153, 'COR', 'Coromandel'),
(2348, 153, 'GIS', 'Gisborne'),
(2349, 153, 'FIO', 'Fiordland'),
(2350, 153, 'HKB', 'Hawke''s Bay'),
(2351, 153, 'MBH', 'Marlborough'),
(2352, 153, 'MWT', 'Manawatu-Wanganui'),
(2353, 153, 'MCM', 'Mt Cook-Mackenzie'),
(2354, 153, 'NSN', 'Nelson'),
(2355, 153, 'NTL', 'Northland'),
(2356, 153, 'OTA', 'Otago'),
(2357, 153, 'STL', 'Southland'),
(2358, 153, 'TKI', 'Taranaki'),
(2359, 153, 'WGN', 'Wellington'),
(2360, 153, 'WKO', 'Waikato'),
(2361, 153, 'WAI', 'Wairprarapa'),
(2362, 153, 'WTC', 'West Coast'),
(2363, 154, 'AN', 'Atlantico Norte'),
(2364, 154, 'AS', 'Atlantico Sur'),
(2365, 154, 'BO', 'Boaco'),
(2366, 154, 'CA', 'Carazo'),
(2367, 154, 'CI', 'Chinandega'),
(2368, 154, 'CO', 'Chontales'),
(2369, 154, 'ES', 'Esteli'),
(2370, 154, 'GR', 'Granada'),
(2371, 154, 'JI', 'Jinotega'),
(2372, 154, 'LE', 'Leon'),
(2373, 154, 'MD', 'Madriz'),
(2374, 154, 'MN', 'Managua'),
(2375, 154, 'MS', 'Masaya'),
(2376, 154, 'MT', 'Matagalpa'),
(2377, 154, 'NS', 'Nuevo Segovia'),
(2378, 154, 'RS', 'Rio San Juan'),
(2379, 154, 'RI', 'Rivas'),
(2380, 155, 'AG', 'Agadez'),
(2381, 155, 'DF', 'Diffa'),
(2382, 155, 'DS', 'Dosso'),
(2383, 155, 'MA', 'Maradi'),
(2384, 155, 'NM', 'Niamey'),
(2385, 155, 'TH', 'Tahoua'),
(2386, 155, 'TL', 'Tillaberi'),
(2387, 155, 'ZD', 'Zinder'),
(2388, 156, 'AB', 'Abia'),
(2389, 156, 'CT', 'Abuja Federal Capital Territory'),
(2390, 156, 'AD', 'Adamawa'),
(2391, 156, 'AK', 'Akwa Ibom'),
(2392, 156, 'AN', 'Anambra'),
(2393, 156, 'BC', 'Bauchi'),
(2394, 156, 'BY', 'Bayelsa'),
(2395, 156, 'BN', 'Benue'),
(2396, 156, 'BO', 'Borno'),
(2397, 156, 'CR', 'Cross River'),
(2398, 156, 'DE', 'Delta'),
(2399, 156, 'EB', 'Ebonyi'),
(2400, 156, 'ED', 'Edo'),
(2401, 156, 'EK', 'Ekiti'),
(2402, 156, 'EN', 'Enugu'),
(2403, 156, 'GO', 'Gombe'),
(2404, 156, 'IM', 'Imo'),
(2405, 156, 'JI', 'Jigawa'),
(2406, 156, 'KD', 'Kaduna'),
(2407, 156, 'KN', 'Kano'),
(2408, 156, 'KT', 'Katsina'),
(2409, 156, 'KE', 'Kebbi'),
(2410, 156, 'KO', 'Kogi'),
(2411, 156, 'KW', 'Kwara'),
(2412, 156, 'LA', 'Lagos'),
(2413, 156, 'NA', 'Nassarawa'),
(2414, 156, 'NI', 'Niger'),
(2415, 156, 'OG', 'Ogun'),
(2416, 156, 'ONG', 'Ondo'),
(2417, 156, 'OS', 'Osun'),
(2418, 156, 'OY', 'Oyo'),
(2419, 156, 'PL', 'Plateau'),
(2420, 156, 'RI', 'Rivers'),
(2421, 156, 'SO', 'Sokoto'),
(2422, 156, 'TA', 'Taraba'),
(2423, 156, 'YO', 'Yobe'),
(2424, 156, 'ZA', 'Zamfara'),
(2425, 159, 'N', 'Northern Islands'),
(2426, 159, 'R', 'Rota'),
(2427, 159, 'S', 'Saipan'),
(2428, 159, 'T', 'Tinian'),
(2429, 160, 'AK', 'Akershus'),
(2430, 160, 'AA', 'Aust-Agder'),
(2431, 160, 'BU', 'Buskerud'),
(2432, 160, 'FM', 'Finnmark'),
(2433, 160, 'HM', 'Hedmark'),
(2434, 160, 'HL', 'Hordaland'),
(2435, 160, 'MR', 'More og Romdal'),
(2436, 160, 'NT', 'Nord-Trondelag'),
(2437, 160, 'NL', 'Nordland'),
(2438, 160, 'OF', 'Ostfold'),
(2439, 160, 'OP', 'Oppland'),
(2440, 160, 'OL', 'Oslo'),
(2441, 160, 'RL', 'Rogaland'),
(2442, 160, 'ST', 'Sor-Trondelag'),
(2443, 160, 'SJ', 'Sogn og Fjordane'),
(2444, 160, 'SV', 'Svalbard'),
(2445, 160, 'TM', 'Telemark'),
(2446, 160, 'TR', 'Troms'),
(2447, 160, 'VA', 'Vest-Agder'),
(2448, 160, 'VF', 'Vestfold'),
(2449, 161, 'DA', 'Ad Dakhiliyah'),
(2450, 161, 'BA', 'Al Batinah'),
(2451, 161, 'WU', 'Al Wusta'),
(2452, 161, 'SH', 'Ash Sharqiyah'),
(2453, 161, 'ZA', 'Az Zahirah'),
(2454, 161, 'MA', 'Masqat'),
(2455, 161, 'MU', 'Musandam'),
(2456, 161, 'ZU', 'Zufar'),
(2457, 162, 'B', 'Balochistan'),
(2458, 162, 'T', 'Federally Administered Tribal Ar'),
(2459, 162, 'I', 'Islamabad Capital Territory'),
(2460, 162, 'N', 'North-West Frontier'),
(2461, 162, 'P', 'Punjab'),
(2462, 162, 'S', 'Sindh'),
(2463, 163, 'AM', 'Aimeliik'),
(2464, 163, 'AR', 'Airai'),
(2465, 163, 'AN', 'Angaur'),
(2466, 163, 'HA', 'Hatohobei'),
(2467, 163, 'KA', 'Kayangel'),
(2468, 163, 'KO', 'Koror'),
(2469, 163, 'ME', 'Melekeok'),
(2470, 163, 'NA', 'Ngaraard'),
(2471, 163, 'NG', 'Ngarchelong'),
(2472, 163, 'ND', 'Ngardmau'),
(2473, 163, 'NT', 'Ngatpang'),
(2474, 163, 'NC', 'Ngchesar'),
(2475, 163, 'NR', 'Ngeremlengui'),
(2476, 163, 'NW', 'Ngiwal'),
(2477, 163, 'PE', 'Peleliu'),
(2478, 163, 'SO', 'Sonsorol'),
(2479, 164, 'BT', 'Bocas del Toro'),
(2480, 164, 'CH', 'Chiriqui'),
(2481, 164, 'CC', 'Cocle'),
(2482, 164, 'CL', 'Colon'),
(2483, 164, 'DA', 'Darien'),
(2484, 164, 'HE', 'Herrera'),
(2485, 164, 'LS', 'Los Santos'),
(2486, 164, 'PA', 'Panama'),
(2487, 164, 'SB', 'San Blas'),
(2488, 164, 'VG', 'Veraguas'),
(2489, 165, 'BV', 'Bougainville'),
(2490, 165, 'CE', 'Central'),
(2491, 165, 'CH', 'Chimbu'),
(2492, 165, 'EH', 'Eastern Highlands'),
(2493, 165, 'EB', 'East New Britain'),
(2494, 165, 'ES', 'East Sepik'),
(2495, 165, 'EN', 'Enga'),
(2496, 165, 'GU', 'Gulf'),
(2497, 165, 'MD', 'Madang'),
(2498, 165, 'MN', 'Manus'),
(2499, 165, 'MB', 'Milne Bay'),
(2500, 165, 'MR', 'Morobe'),
(2501, 165, 'NC', 'National Capital'),
(2502, 165, 'NI', 'New Ireland'),
(2503, 165, 'NO', 'Northern'),
(2504, 165, 'SA', 'Sandaun'),
(2505, 165, 'SH', 'Southern Highlands'),
(2506, 165, 'WE', 'Western'),
(2507, 165, 'WH', 'Western Highlands'),
(2508, 165, 'WB', 'West New Britain'),
(2509, 166, 'AG', 'Alto Paraguay'),
(2510, 166, 'AN', 'Alto Parana'),
(2511, 166, 'AM', 'Amambay'),
(2512, 166, 'AS', 'Asuncion'),
(2513, 166, 'BO', 'Boqueron'),
(2514, 166, 'CG', 'Caaguazu'),
(2515, 166, 'CZ', 'Caazapa'),
(2516, 166, 'CN', 'Canindeyu'),
(2517, 166, 'CE', 'Central'),
(2518, 166, 'CC', 'Concepcion'),
(2519, 166, 'CD', 'Cordillera'),
(2520, 166, 'GU', 'Guaira'),
(2521, 166, 'IT', 'Itapua'),
(2522, 166, 'MI', 'Misiones'),
(2523, 166, 'NE', 'Neembucu'),
(2524, 166, 'PA', 'Paraguari'),
(2525, 166, 'PH', 'Presidente Hayes'),
(2526, 166, 'SP', 'San Pedro'),
(2527, 167, 'AM', 'Amazonas'),
(2528, 167, 'AN', 'Ancash'),
(2529, 167, 'AP', 'Apurimac'),
(2530, 167, 'AR', 'Arequipa'),
(2531, 167, 'AY', 'Ayacucho'),
(2532, 167, 'CJ', 'Cajamarca'),
(2533, 167, 'CL', 'Callao'),
(2534, 167, 'CU', 'Cusco'),
(2535, 167, 'HV', 'Huancavelica'),
(2536, 167, 'HO', 'Huanuco'),
(2537, 167, 'IC', 'Ica'),
(2538, 167, 'JU', 'Junin'),
(2539, 167, 'LD', 'La Libertad'),
(2540, 167, 'LY', 'Lambayeque'),
(2541, 167, 'LI', 'Lima'),
(2542, 167, 'LO', 'Loreto'),
(2543, 167, 'MD', 'Madre de Dios'),
(2544, 167, 'MO', 'Moquegua'),
(2545, 167, 'PA', 'Pasco'),
(2546, 167, 'PI', 'Piura'),
(2547, 167, 'PU', 'Puno'),
(2548, 167, 'SM', 'San Martin'),
(2549, 167, 'TA', 'Tacna'),
(2550, 167, 'TU', 'Tumbes'),
(2551, 167, 'UC', 'Ucayali'),
(2552, 168, 'ABR', 'Abra'),
(2553, 168, 'ANO', 'Agusan del Norte'),
(2554, 168, 'ASU', 'Agusan del Sur'),
(2555, 168, 'AKL', 'Aklan'),
(2556, 168, 'ALB', 'Albay'),
(2557, 168, 'ANT', 'Antique'),
(2558, 168, 'APY', 'Apayao'),
(2559, 168, 'AUR', 'Aurora'),
(2560, 168, 'BAS', 'Basilan'),
(2561, 168, 'BTA', 'Bataan'),
(2562, 168, 'BTE', 'Batanes'),
(2563, 168, 'BTG', 'Batangas'),
(2564, 168, 'BLR', 'Biliran'),
(2565, 168, 'BEN', 'Benguet'),
(2566, 168, 'BOL', 'Bohol'),
(2567, 168, 'BUK', 'Bukidnon'),
(2568, 168, 'BUL', 'Bulacan'),
(2569, 168, 'CAG', 'Cagayan'),
(2570, 168, 'CNO', 'Camarines Norte'),
(2571, 168, 'CSU', 'Camarines Sur'),
(2572, 168, 'CAM', 'Camiguin'),
(2573, 168, 'CAP', 'Capiz'),
(2574, 168, 'CAT', 'Catanduanes'),
(2575, 168, 'CAV', 'Cavite'),
(2576, 168, 'CEB', 'Cebu'),
(2577, 168, 'CMP', 'Compostela'),
(2578, 168, 'DNO', 'Davao del Norte'),
(2579, 168, 'DSU', 'Davao del Sur'),
(2580, 168, 'DOR', 'Davao Oriental'),
(2581, 168, 'ESA', 'Eastern Samar'),
(2582, 168, 'GUI', 'Guimaras'),
(2583, 168, 'IFU', 'Ifugao'),
(2584, 168, 'INO', 'Ilocos Norte'),
(2585, 168, 'ISU', 'Ilocos Sur'),
(2586, 168, 'ILO', 'Iloilo'),
(2587, 168, 'ISA', 'Isabela'),
(2588, 168, 'KAL', 'Kalinga'),
(2589, 168, 'LAG', 'Laguna'),
(2590, 168, 'LNO', 'Lanao del Norte'),
(2591, 168, 'LSU', 'Lanao del Sur'),
(2592, 168, 'UNI', 'La Union'),
(2593, 168, 'LEY', 'Leyte'),
(2594, 168, 'MAG', 'Maguindanao'),
(2595, 168, 'MRN', 'Marinduque'),
(2596, 168, 'MSB', 'Masbate'),
(2597, 168, 'MIC', 'Mindoro Occidental'),
(2598, 168, 'MIR', 'Mindoro Oriental'),
(2599, 168, 'MSC', 'Misamis Occidental'),
(2600, 168, 'MOR', 'Misamis Oriental'),
(2601, 168, 'MOP', 'Mountain'),
(2602, 168, 'NOC', 'Negros Occidental'),
(2603, 168, 'NOR', 'Negros Oriental'),
(2604, 168, 'NCT', 'North Cotabato'),
(2605, 168, 'NSM', 'Northern Samar'),
(2606, 168, 'NEC', 'Nueva Ecija'),
(2607, 168, 'NVZ', 'Nueva Vizcaya'),
(2608, 168, 'PLW', 'Palawan'),
(2609, 168, 'PMP', 'Pampanga'),
(2610, 168, 'PNG', 'Pangasinan'),
(2611, 168, 'QZN', 'Quezon'),
(2612, 168, 'QRN', 'Quirino'),
(2613, 168, 'RIZ', 'Rizal'),
(2614, 168, 'ROM', 'Romblon'),
(2615, 168, 'SMR', 'Samar'),
(2616, 168, 'SRG', 'Sarangani'),
(2617, 168, 'SQJ', 'Siquijor'),
(2618, 168, 'SRS', 'Sorsogon'),
(2619, 168, 'SCO', 'South Cotabato'),
(2620, 168, 'SLE', 'Southern Leyte'),
(2621, 168, 'SKU', 'Sultan Kudarat'),
(2622, 168, 'SLU', 'Sulu'),
(2623, 168, 'SNO', 'Surigao del Norte'),
(2624, 168, 'SSU', 'Surigao del Sur'),
(2625, 168, 'TAR', 'Tarlac'),
(2626, 168, 'TAW', 'Tawi-Tawi'),
(2627, 168, 'ZBL', 'Zambales'),
(2628, 168, 'ZNO', 'Zamboanga del Norte'),
(2629, 168, 'ZSU', 'Zamboanga del Sur'),
(2630, 168, 'ZSI', 'Zamboanga Sibugay'),
(2631, 170, 'DO', 'Dolnoslaskie'),
(2632, 170, 'KP', 'Kujawsko-Pomorskie'),
(2633, 170, 'LO', 'Lodzkie'),
(2634, 170, 'LL', 'Lubelskie'),
(2635, 170, 'LU', 'Lubuskie'),
(2636, 170, 'ML', 'Malopolskie'),
(2637, 170, 'MZ', 'Mazowieckie'),
(2638, 170, 'OP', 'Opolskie'),
(2639, 170, 'PP', 'Podkarpackie'),
(2640, 170, 'PL', 'Podlaskie'),
(2641, 170, 'PM', 'Pomorskie'),
(2642, 170, 'SL', 'Slaskie'),
(2643, 170, 'SW', 'Swietokrzyskie'),
(2644, 170, 'WM', 'Warminsko-Mazurskie'),
(2645, 170, 'WP', 'Wielkopolskie'),
(2646, 170, 'ZA', 'Zachodniopomorskie'),
(2647, 198, 'P', 'Saint Pierre'),
(2648, 198, 'M', 'Miquelon'),
(2649, 171, 'AC', 'AÃƒÆ’Ã‚Â§ores'),
(2650, 171, 'AV', 'Aveiro'),
(2651, 171, 'BE', 'Beja'),
(2652, 171, 'BR', 'Braga'),
(2653, 171, 'BA', 'BraganÃƒÆ’Ã‚Â§a'),
(2654, 171, 'CB', 'Castelo Branco'),
(2655, 171, 'CO', 'Coimbra'),
(2656, 171, 'EV', 'ÃƒÆ’Ã‚Â©;vora'),
(2657, 171, 'FA', 'Faro'),
(2658, 171, 'GU', 'Guarda'),
(2659, 171, 'LE', 'Leiria'),
(2660, 171, 'LI', 'Lisboa'),
(2661, 171, 'ME', 'Madeira'),
(2662, 171, 'PO', 'Portalegre'),
(2663, 171, 'PR', 'Porto'),
(2664, 171, 'SA', 'SantarÃƒÆ’Ã‚Â©;m'),
(2665, 171, 'SE', 'SetÃƒÆ’Ã‚Âºbal'),
(2666, 171, 'VC', 'Viana do Castelo'),
(2667, 171, 'VR', 'Vila Real'),
(2668, 171, 'VI', 'Viseu'),
(2669, 173, 'DW', 'Ad Dawhah'),
(2670, 173, 'GW', 'Al Ghuwayriyah'),
(2671, 173, 'JM', 'Al Jumayliyah'),
(2672, 173, 'KR', 'Al Khawr'),
(2673, 173, 'WK', 'Al Wakrah'),
(2674, 173, 'RN', 'Ar Rayyan'),
(2675, 173, 'JB', 'Jarayan al Batinah'),
(2676, 173, 'MS', 'Madinat ash Shamal'),
(2677, 173, 'UD', 'Umm Sa''id'),
(2678, 173, 'UL', 'Umm Salal'),
(2679, 175, 'AB', 'Alba'),
(2680, 175, 'AR', 'Arad'),
(2681, 175, 'AG', 'Arges'),
(2682, 175, 'BC', 'Bacau'),
(2683, 175, 'BH', 'Bihor'),
(2684, 175, 'BN', 'Bistrita-Nasaud'),
(2685, 175, 'BT', 'Botosani'),
(2686, 175, 'BV', 'Brasov'),
(2687, 175, 'BR', 'Braila'),
(2688, 175, 'B', 'Bucuresti'),
(2689, 175, 'BZ', 'Buzau'),
(2690, 175, 'CS', 'Caras-Severin'),
(2691, 175, 'CL', 'Calarasi'),
(2692, 175, 'CJ', 'Cluj'),
(2693, 175, 'CT', 'Constanta'),
(2694, 175, 'CV', 'Covasna'),
(2695, 175, 'DB', 'Dimbovita'),
(2696, 175, 'DJ', 'Dolj'),
(2697, 175, 'GL', 'Galati'),
(2698, 175, 'GR', 'Giurgiu'),
(2699, 175, 'GJ', 'Gorj'),
(2700, 175, 'HR', 'Harghita'),
(2701, 175, 'HD', 'Hunedoara'),
(2702, 175, 'IL', 'Ialomita'),
(2703, 175, 'IS', 'Iasi'),
(2704, 175, 'IF', 'Ilfov'),
(2705, 175, 'MM', 'Maramures'),
(2706, 175, 'MH', 'Mehedinti'),
(2707, 175, 'MS', 'Mures'),
(2708, 175, 'NT', 'Neamt'),
(2709, 175, 'OT', 'Olt'),
(2710, 175, 'PH', 'Prahova'),
(2711, 175, 'SM', 'Satu-Mare'),
(2712, 175, 'SJ', 'Salaj'),
(2713, 175, 'SB', 'Sibiu'),
(2714, 175, 'SV', 'Suceava'),
(2715, 175, 'TR', 'Teleorman'),
(2716, 175, 'TM', 'Timis'),
(2717, 175, 'TL', 'Tulcea'),
(2718, 175, 'VS', 'Vaslui'),
(2719, 175, 'VL', 'Valcea'),
(2720, 175, 'VN', 'Vrancea'),
(2721, 176, 'AB', 'Abakan'),
(2722, 176, 'AG', 'Aginskoye'),
(2723, 176, 'AN', 'Anadyr'),
(2724, 176, 'AR', 'Arkahangelsk'),
(2725, 176, 'AS', 'Astrakhan'),
(2726, 176, 'BA', 'Barnaul'),
(2727, 176, 'BE', 'Belgorod'),
(2728, 176, 'BI', 'Birobidzhan'),
(2729, 176, 'BL', 'Blagoveshchensk'),
(2730, 176, 'BR', 'Bryansk'),
(2731, 176, 'CH', 'Cheboksary'),
(2732, 176, 'CL', 'Chelyabinsk'),
(2733, 176, 'CR', 'Cherkessk'),
(2734, 176, 'CI', 'Chita'),
(2735, 176, 'DU', 'Dudinka'),
(2736, 176, 'EL', 'Elista'),
(2737, 176, 'GO', 'Gomo-Altaysk'),
(2738, 176, 'GA', 'Gorno-Altaysk'),
(2739, 176, 'GR', 'Groznyy'),
(2740, 176, 'IR', 'Irkutsk'),
(2741, 176, 'IV', 'Ivanovo'),
(2742, 176, 'IZ', 'Izhevsk'),
(2743, 176, 'KA', 'Kalinigrad'),
(2744, 176, 'KL', 'Kaluga'),
(2745, 176, 'KS', 'Kasnodar'),
(2746, 176, 'KZ', 'Kazan'),
(2747, 176, 'KE', 'Kemerovo'),
(2748, 176, 'KH', 'Khabarovsk'),
(2749, 176, 'KM', 'Khanty-Mansiysk'),
(2750, 176, 'KO', 'Kostroma'),
(2751, 176, 'KR', 'Krasnodar'),
(2752, 176, 'KN', 'Krasnoyarsk'),
(2753, 176, 'KU', 'Kudymkar'),
(2754, 176, 'KG', 'Kurgan'),
(2755, 176, 'KK', 'Kursk'),
(2756, 176, 'KY', 'Kyzyl'),
(2757, 176, 'LI', 'Lipetsk'),
(2758, 176, 'MA', 'Magadan'),
(2759, 176, 'MK', 'Makhachkala'),
(2760, 176, 'MY', 'Maykop'),
(2761, 176, 'MO', 'Moscow'),
(2762, 176, 'MU', 'Murmansk'),
(2763, 176, 'NA', 'Nalchik'),
(2764, 176, 'NR', 'Naryan Mar'),
(2765, 176, 'NZ', 'Nazran'),
(2766, 176, 'NI', 'Nizhniy Novgorod'),
(2767, 176, 'NO', 'Novgorod'),
(2768, 176, 'NV', 'Novosibirsk'),
(2769, 176, 'OM', 'Omsk'),
(2770, 176, 'OR', 'Orel'),
(2771, 176, 'OE', 'Orenburg'),
(2772, 176, 'PA', 'Palana'),
(2773, 176, 'PE', 'Penza'),
(2774, 176, 'PR', 'Perm'),
(2775, 176, 'PK', 'Petropavlovsk-Kamchatskiy'),
(2776, 176, 'PT', 'Petrozavodsk'),
(2777, 176, 'PS', 'Pskov'),
(2778, 176, 'RO', 'Rostov-na-Donu'),
(2779, 176, 'RY', 'Ryazan'),
(2780, 176, 'SL', 'Salekhard'),
(2781, 176, 'SA', 'Samara'),
(2782, 176, 'SR', 'Saransk'),
(2783, 176, 'SV', 'Saratov'),
(2784, 176, 'SM', 'Smolensk'),
(2785, 176, 'SP', 'St. Petersburg'),
(2786, 176, 'ST', 'Stavropol'),
(2787, 176, 'SY', 'Syktyvkar'),
(2788, 176, 'TA', 'Tambov'),
(2789, 176, 'TO', 'Tomsk'),
(2790, 176, 'TU', 'Tula'),
(2791, 176, 'TR', 'Tura'),
(2792, 176, 'TV', 'Tver'),
(2793, 176, 'TY', 'Tyumen'),
(2794, 176, 'UF', 'Ufa'),
(2795, 176, 'UL', 'Ul''yanovsk'),
(2796, 176, 'UU', 'Ulan-Ude'),
(2797, 176, 'US', 'Ust''-Ordynskiy'),
(2798, 176, 'VL', 'Vladikavkaz'),
(2799, 176, 'VA', 'Vladimir'),
(2800, 176, 'VV', 'Vladivostok'),
(2801, 176, 'VG', 'Volgograd'),
(2802, 176, 'VD', 'Vologda'),
(2803, 176, 'VO', 'Voronezh'),
(2804, 176, 'VY', 'Vyatka'),
(2805, 176, 'YA', 'Yakutsk'),
(2806, 176, 'YR', 'Yaroslavl'),
(2807, 176, 'YE', 'Yekaterinburg'),
(2808, 176, 'YO', 'Yoshkar-Ola'),
(2809, 177, 'BU', 'Butare'),
(2810, 177, 'BY', 'Byumba'),
(2811, 177, 'CY', 'Cyangugu'),
(2812, 177, 'GK', 'Gikongoro'),
(2813, 177, 'GS', 'Gisenyi'),
(2814, 177, 'GT', 'Gitarama'),
(2815, 177, 'KG', 'Kibungo'),
(2816, 177, 'KY', 'Kibuye'),
(2817, 177, 'KR', 'Kigali Rurale'),
(2818, 177, 'KV', 'Kigali-ville'),
(2819, 177, 'RU', 'Ruhengeri'),
(2820, 177, 'UM', 'Umutara'),
(2821, 178, 'CCN', 'Christ Church Nichola Town'),
(2822, 178, 'SAS', 'Saint Anne Sandy Point'),
(2823, 178, 'SGB', 'Saint George Basseterre'),
(2824, 178, 'SGG', 'Saint George Gingerland'),
(2825, 178, 'SJW', 'Saint James Windward'),
(2826, 178, 'SJC', 'Saint John Capesterre'),
(2827, 178, 'SJF', 'Saint John Figtree'),
(2828, 178, 'SMC', 'Saint Mary Cayon'),
(2829, 178, 'CAP', 'Saint Paul Capesterre'),
(2830, 178, 'CHA', 'Saint Paul Charlestown'),
(2831, 178, 'SPB', 'Saint Peter Basseterre'),
(2832, 178, 'STL', 'Saint Thomas Lowland'),
(2833, 178, 'STM', 'Saint Thomas Middle Island'),
(2834, 178, 'TPP', 'Trinity Palmetto Point'),
(2835, 179, 'AR', 'Anse-la-Raye'),
(2836, 179, 'CA', 'Castries'),
(2837, 179, 'CH', 'Choiseul'),
(2838, 179, 'DA', 'Dauphin'),
(2839, 179, 'DE', 'Dennery'),
(2840, 179, 'GI', 'Gros-Islet'),
(2841, 179, 'LA', 'Laborie'),
(2842, 179, 'MI', 'Micoud'),
(2843, 179, 'PR', 'Praslin'),
(2844, 179, 'SO', 'Soufriere'),
(2845, 179, 'VF', 'Vieux-Fort'),
(2846, 180, 'C', 'Charlotte'),
(2847, 180, 'R', 'Grenadines'),
(2848, 180, 'A', 'Saint Andrew'),
(2849, 180, 'D', 'Saint David'),
(2850, 180, 'G', 'Saint George'),
(2851, 180, 'P', 'Saint Patrick'),
(2852, 181, 'AN', 'A''ana'),
(2853, 181, 'AI', 'Aiga-i-le-Tai'),
(2854, 181, 'AT', 'Atua'),
(2855, 181, 'FA', 'Fa''asaleleaga'),
(2856, 181, 'GE', 'Gaga''emauga'),
(2857, 181, 'GF', 'Gagaifomauga'),
(2858, 181, 'PA', 'Palauli'),
(2859, 181, 'SA', 'Satupa''itea'),
(2860, 181, 'TU', 'Tuamasaga'),
(2861, 181, 'VF', 'Va''a-o-Fonoti'),
(2862, 181, 'VS', 'Vaisigano'),
(2863, 182, 'AC', 'Acquaviva'),
(2864, 182, 'BM', 'Borgo Maggiore'),
(2865, 182, 'CH', 'Chiesanuova'),
(2866, 182, 'DO', 'Domagnano'),
(2867, 182, 'FA', 'Faetano'),
(2868, 182, 'FI', 'Fiorentino'),
(2869, 182, 'MO', 'Montegiardino'),
(2870, 182, 'SM', 'Citta di San Marino'),
(2871, 182, 'SE', 'Serravalle'),
(2872, 183, 'S', 'Sao Tome'),
(2873, 183, 'P', 'Principe'),
(2874, 184, 'BH', 'Al Bahah'),
(2875, 184, 'HS', 'Al Hudud ash Shamaliyah'),
(2876, 184, 'JF', 'Al Jawf'),
(2877, 184, 'MD', 'Al Madinah'),
(2878, 184, 'QS', 'Al Qasim'),
(2879, 184, 'RD', 'Ar Riyad'),
(2880, 184, 'AQ', 'Ash Sharqiyah (Eastern)'),
(2881, 184, 'AS', '''Asir'),
(2882, 184, 'HL', 'Ha''il'),
(2883, 184, 'JZ', 'Jizan'),
(2884, 184, 'ML', 'Makkah'),
(2885, 184, 'NR', 'Najran'),
(2886, 184, 'TB', 'Tabuk'),
(2887, 185, 'DA', 'Dakar'),
(2888, 185, 'DI', 'Diourbel'),
(2889, 185, 'FA', 'Fatick'),
(2890, 185, 'KA', 'Kaolack'),
(2891, 185, 'KO', 'Kolda'),
(2892, 185, 'LO', 'Louga'),
(2893, 185, 'MA', 'Matam'),
(2894, 185, 'SL', 'Saint-Louis'),
(2895, 185, 'TA', 'Tambacounda'),
(2896, 185, 'TH', 'Thies'),
(2897, 185, 'ZI', 'Ziguinchor'),
(2898, 186, 'AP', 'Anse aux Pins'),
(2899, 186, 'AB', 'Anse Boileau'),
(2900, 186, 'AE', 'Anse Etoile'),
(2901, 186, 'AL', 'Anse Louis'),
(2902, 186, 'AR', 'Anse Royale'),
(2903, 186, 'BL', 'Baie Lazare'),
(2904, 186, 'BS', 'Baie Sainte Anne'),
(2905, 186, 'BV', 'Beau Vallon'),
(2906, 186, 'BA', 'Bel Air'),
(2907, 186, 'BO', 'Bel Ombre'),
(2908, 186, 'CA', 'Cascade'),
(2909, 186, 'GL', 'Glacis'),
(2910, 186, 'GM', 'Grand'' Anse (on Mahe)'),
(2911, 186, 'GP', 'Grand'' Anse (on Praslin)'),
(2912, 186, 'DG', 'La Digue'),
(2913, 186, 'RA', 'La Riviere Anglaise'),
(2914, 186, 'MB', 'Mont Buxton'),
(2915, 186, 'MF', 'Mont Fleuri'),
(2916, 186, 'PL', 'Plaisance'),
(2917, 186, 'PR', 'Pointe La Rue'),
(2918, 186, 'PG', 'Port Glaud'),
(2919, 186, 'SL', 'Saint Louis'),
(2920, 186, 'TA', 'Takamaka'),
(2921, 187, 'E', 'Eastern'),
(2922, 187, 'N', 'Northern'),
(2923, 187, 'S', 'Southern'),
(2924, 187, 'W', 'Western'),
(2925, 189, 'BA', 'Banskobystricky'),
(2926, 189, 'BR', 'Bratislavsky'),
(2927, 189, 'KO', 'Kosicky'),
(2928, 189, 'NI', 'Nitriansky'),
(2929, 189, 'PR', 'Presovsky'),
(2930, 189, 'TC', 'Trenciansky'),
(2931, 189, 'TV', 'Trnavsky'),
(2932, 189, 'ZI', 'Zilinsky'),
(2933, 191, 'CE', 'Central'),
(2934, 191, 'CH', 'Choiseul'),
(2935, 191, 'GC', 'Guadalcanal'),
(2936, 191, 'HO', 'Honiara'),
(2937, 191, 'IS', 'Isabel'),
(2938, 191, 'MK', 'Makira'),
(2939, 191, 'ML', 'Malaita'),
(2940, 191, 'RB', 'Rennell and Bellona'),
(2941, 191, 'TM', 'Temotu'),
(2942, 191, 'WE', 'Western'),
(2943, 192, 'AW', 'Awdal'),
(2944, 192, 'BK', 'Bakool'),
(2945, 192, 'BN', 'Banaadir'),
(2946, 192, 'BR', 'Bari'),
(2947, 192, 'BY', 'Bay'),
(2948, 192, 'GA', 'Galguduud'),
(2949, 192, 'GE', 'Gedo'),
(2950, 192, 'HI', 'Hiiraan'),
(2951, 192, 'JD', 'Jubbada Dhexe'),
(2952, 192, 'JH', 'Jubbada Hoose'),
(2953, 192, 'MU', 'Mudug'),
(2954, 192, 'NU', 'Nugaal'),
(2955, 192, 'SA', 'Sanaag'),
(2956, 192, 'SD', 'Shabeellaha Dhexe'),
(2957, 192, 'SH', 'Shabeellaha Hoose'),
(2958, 192, 'SL', 'Sool'),
(2959, 192, 'TO', 'Togdheer'),
(2960, 192, 'WG', 'Woqooyi Galbeed'),
(2961, 193, 'EC', 'Eastern Cape'),
(2962, 193, 'FS', 'Free State'),
(2963, 193, 'GT', 'Gauteng'),
(2964, 193, 'KN', 'KwaZulu-Natal'),
(2965, 193, 'LP', 'Limpopo'),
(2966, 193, 'MP', 'Mpumalanga'),
(2967, 193, 'NW', 'North West'),
(2968, 193, 'NC', 'Northern Cape'),
(2969, 193, 'WC', 'Western Cape'),
(2970, 195, 'CA', 'A CoruÃƒÆ’Ã‚Â±a'),
(2971, 195, 'AL', 'ÃƒÆ’Ã‚Âlava'),
(2972, 195, 'AB', 'Albacete'),
(2973, 195, 'AC', 'Alicante'),
(2974, 195, 'AM', 'Almeria'),
(2975, 195, 'AS', 'Asturias'),
(2976, 195, 'AV', 'ÃƒÆ’Ã‚Âvila'),
(2977, 195, 'BJ', 'Badajoz'),
(2978, 195, 'IB', 'Baleares'),
(2979, 195, 'BA', 'Barcelona'),
(2980, 195, 'BU', 'Burgos'),
(2981, 195, 'CC', 'CÃƒÆ’Ã‚Â¡ceres'),
(2982, 195, 'CZ', 'CÃƒÆ’Ã‚Â¡diz'),
(2983, 195, 'CT', 'Cantabria'),
(2984, 195, 'CL', 'CastellÃƒÆ’Ã‚Â³n'),
(2985, 195, 'CE', 'Ceuta'),
(2986, 195, 'CR', 'Ciudad Real'),
(2987, 195, 'CD', 'CÃƒÆ’Ã‚Â³rdoba'),
(2988, 195, 'CU', 'Cuenca'),
(2989, 195, 'GI', 'Girona'),
(2990, 195, 'GD', 'Granada'),
(2991, 195, 'GJ', 'Guadalajara'),
(2992, 195, 'GP', 'GuipÃƒÆ’Ã‚Âºzcoa'),
(2993, 195, 'HL', 'Huelva'),
(2994, 195, 'HS', 'Huesca'),
(2995, 195, 'JN', 'JaÃƒÆ’Ã‚Â©n'),
(2996, 195, 'RJ', 'La Rioja'),
(2997, 195, 'PM', 'Las Palmas'),
(2998, 195, 'LE', 'Leon'),
(2999, 195, 'LL', 'Lleida'),
(3000, 195, 'LG', 'Lugo'),
(3001, 195, 'MD', 'Madrid'),
(3002, 195, 'MA', 'Malaga'),
(3003, 195, 'ML', 'Melilla'),
(3004, 195, 'MU', 'Murcia'),
(3005, 195, 'NV', 'Navarra'),
(3006, 195, 'OU', 'Ourense'),
(3007, 195, 'PL', 'Palencia'),
(3008, 195, 'PO', 'Pontevedra'),
(3009, 195, 'SL', 'Salamanca'),
(3010, 195, 'SC', 'Santa Cruz de Tenerife'),
(3011, 195, 'SG', 'Segovia'),
(3012, 195, 'SV', 'Sevilla'),
(3013, 195, 'SO', 'Soria'),
(3014, 195, 'TA', 'Tarragona'),
(3015, 195, 'TE', 'Teruel'),
(3016, 195, 'TO', 'Toledo'),
(3017, 195, 'VC', 'Valencia'),
(3018, 195, 'VD', 'Valladolid'),
(3019, 195, 'VZ', 'Vizcaya'),
(3020, 195, 'ZM', 'Zamora'),
(3021, 195, 'ZR', 'Zaragoza'),
(3022, 196, 'CE', 'Central'),
(3023, 196, 'EA', 'Eastern'),
(3024, 196, 'NC', 'North Central'),
(3025, 196, 'NO', 'Northern'),
(3026, 196, 'NW', 'North Western'),
(3027, 196, 'SA', 'Sabaragamuwa'),
(3028, 196, 'SO', 'Southern'),
(3029, 196, 'UV', 'Uva'),
(3030, 196, 'WE', 'Western'),
(3031, 197, 'A', 'Ascension'),
(3032, 197, 'S', 'Saint Helena'),
(3033, 197, 'T', 'Tristan da Cunha'),
(3034, 199, 'ANL', 'A''ali an Nil'),
(3035, 199, 'BAM', 'Al Bahr al Ahmar'),
(3036, 199, 'BRT', 'Al Buhayrat'),
(3037, 199, 'JZR', 'Al Jazirah'),
(3038, 199, 'KRT', 'Al Khartum'),
(3039, 199, 'QDR', 'Al Qadarif'),
(3040, 199, 'WDH', 'Al Wahdah'),
(3041, 199, 'ANB', 'An Nil al Abyad'),
(3042, 199, 'ANZ', 'An Nil al Azraq'),
(3043, 199, 'ASH', 'Ash Shamaliyah'),
(3044, 199, 'BJA', 'Bahr al Jabal'),
(3045, 199, 'GIS', 'Gharb al Istiwa''iyah'),
(3046, 199, 'GBG', 'Gharb Bahr al Ghazal'),
(3047, 199, 'GDA', 'Gharb Darfur'),
(3048, 199, 'GKU', 'Gharb Kurdufan'),
(3049, 199, 'JDA', 'Janub Darfur'),
(3050, 199, 'JKU', 'Janub Kurdufan'),
(3051, 199, 'JQL', 'Junqali'),
(3052, 199, 'KSL', 'Kassala'),
(3053, 199, 'NNL', 'Nahr an Nil'),
(3054, 199, 'SBG', 'Shamal Bahr al Ghazal'),
(3055, 199, 'SDA', 'Shamal Darfur'),
(3056, 199, 'SKU', 'Shamal Kurdufan'),
(3057, 199, 'SIS', 'Sharq al Istiwa''iyah'),
(3058, 199, 'SNR', 'Sinnar'),
(3059, 199, 'WRB', 'Warab'),
(3060, 200, 'BR', 'Brokopondo'),
(3061, 200, 'CM', 'Commewijne'),
(3062, 200, 'CR', 'Coronie'),
(3063, 200, 'MA', 'Marowijne'),
(3064, 200, 'NI', 'Nickerie'),
(3065, 200, 'PA', 'Para'),
(3066, 200, 'PM', 'Paramaribo'),
(3067, 200, 'SA', 'Saramacca'),
(3068, 200, 'SI', 'Sipaliwini'),
(3069, 200, 'WA', 'Wanica'),
(3070, 202, 'H', 'Hhohho'),
(3071, 202, 'L', 'Lubombo'),
(3072, 202, 'M', 'Manzini'),
(3073, 202, 'S', 'Shishelweni'),
(3074, 203, 'K', 'Blekinge'),
(3075, 203, 'W', 'Dalama'),
(3076, 203, 'X', 'GÃƒÆ’Ã‚Â¤vleborg'),
(3077, 203, 'I', 'Gotland'),
(3078, 203, 'N', 'Halland'),
(3079, 203, 'Z', 'JÃƒÆ’Ã‚Â¤mtland'),
(3080, 203, 'F', 'JÃƒÆ’Ã‚Â¶nkping'),
(3081, 203, 'H', 'Kalmar'),
(3082, 203, 'G', 'Kronoberg'),
(3083, 203, 'BD', 'Norrbotten'),
(3084, 203, 'T', 'ÃƒÆ’Ã¢â‚¬â€œrebro'),
(3085, 203, 'E', 'ÃƒÆ’Ã¢â‚¬â€œstergÃƒÆ’Ã‚Â¶tland'),
(3086, 203, 'M', 'SkÃƒÆ’Ã‚Â¥ne'),
(3087, 203, 'D', 'SÃƒÆ’Ã‚Â¶dermanland'),
(3088, 203, 'AB', 'Stockholm'),
(3089, 203, 'C', 'Uppsala'),
(3090, 203, 'S', 'VÃƒÆ’Ã‚Â¤rmland'),
(3091, 203, 'AC', 'VÃƒÆ’Ã‚Â¤sterbotten'),
(3092, 203, 'Y', 'VÃƒÆ’Ã‚Â¤sternorrland'),
(3093, 203, 'U', 'VÃƒÆ’Ã‚Â¤stmanland'),
(3094, 203, 'O', 'VÃƒÆ’Ã‚Â¤stra GÃƒÆ’Ã‚Â¶taland'),
(3095, 204, 'AG', 'Aargau'),
(3096, 204, 'AR', 'Appenzell Ausserrhoden'),
(3097, 204, 'AI', 'Appenzell Innerrhoden'),
(3098, 204, 'BS', 'Basel-Stadt'),
(3099, 204, 'BL', 'Basel-Landschaft'),
(3100, 204, 'BE', 'Bern'),
(3101, 204, 'FR', 'Fribourg'),
(3102, 204, 'GE', 'GenÃƒÆ’Ã‚Â¨ve'),
(3103, 204, 'GL', 'Glarus'),
(3104, 204, 'GR', 'GraubÃƒÆ’Ã‚Â¼nden'),
(3105, 204, 'JU', 'Jura'),
(3106, 204, 'LU', 'Luzern'),
(3107, 204, 'NE', 'NeuchÃƒÆ’Ã‚Â¢tel'),
(3108, 204, 'NW', 'Nidwald'),
(3109, 204, 'OW', 'Obwald'),
(3110, 204, 'SG', 'St. Gallen'),
(3111, 204, 'SH', 'Schaffhausen'),
(3112, 204, 'SZ', 'Schwyz'),
(3113, 204, 'SO', 'Solothurn'),
(3114, 204, 'TG', 'Thurgau'),
(3115, 204, 'TI', 'Ticino'),
(3116, 204, 'UR', 'Uri'),
(3117, 204, 'VS', 'Valais'),
(3118, 204, 'VD', 'Vaud'),
(3119, 204, 'ZG', 'Zug'),
(3120, 204, 'ZH', 'ZÃƒÆ’Ã‚Â¼rich'),
(3121, 205, 'HA', 'Al Hasakah'),
(3122, 205, 'LA', 'Al Ladhiqiyah'),
(3123, 205, 'QU', 'Al Qunaytirah'),
(3124, 205, 'RQ', 'Ar Raqqah'),
(3125, 205, 'SU', 'As Suwayda'),
(3126, 205, 'DA', 'Dara'),
(3127, 205, 'DZ', 'Dayr az Zawr'),
(3128, 205, 'DI', 'Dimashq'),
(3129, 205, 'HL', 'Halab'),
(3130, 205, 'HM', 'Hamah'),
(3131, 205, 'HI', 'Hims'),
(3132, 205, 'ID', 'Idlib'),
(3133, 205, 'RD', 'Rif Dimashq'),
(3134, 205, 'TA', 'Tartus'),
(3135, 206, 'CH', 'Chang-hua'),
(3136, 206, 'CI', 'Chia-i'),
(3137, 206, 'HS', 'Hsin-chu'),
(3138, 206, 'HL', 'Hua-lien'),
(3139, 206, 'IL', 'I-lan'),
(3140, 206, 'KH', 'Kao-hsiung county'),
(3141, 206, 'KM', 'Kin-men'),
(3142, 206, 'LC', 'Lien-chiang'),
(3143, 206, 'ML', 'Miao-li'),
(3144, 206, 'NT', 'Nan-t''ou'),
(3145, 206, 'PH', 'P''eng-hu'),
(3146, 206, 'PT', 'P''ing-tung'),
(3147, 206, 'TG', 'T''ai-chung'),
(3148, 206, 'TA', 'T''ai-nan'),
(3149, 206, 'TP', 'T''ai-pei county'),
(3150, 206, 'TT', 'T''ai-tung'),
(3151, 206, 'TY', 'T''ao-yuan'),
(3152, 206, 'YL', 'Yun-lin'),
(3153, 206, 'CC', 'Chia-i city'),
(3154, 206, 'CL', 'Chi-lung'),
(3155, 206, 'HC', 'Hsin-chu'),
(3156, 206, 'TH', 'T''ai-chung'),
(3157, 206, 'TN', 'T''ai-nan'),
(3158, 206, 'KC', 'Kao-hsiung city'),
(3159, 206, 'TC', 'T''ai-pei city'),
(3160, 207, 'GB', 'Gorno-Badakhstan'),
(3161, 207, 'KT', 'Khatlon'),
(3162, 207, 'SU', 'Sughd'),
(3163, 208, 'AR', 'Arusha'),
(3164, 208, 'DS', 'Dar es Salaam'),
(3165, 208, 'DO', 'Dodoma'),
(3166, 208, 'IR', 'Iringa'),
(3167, 208, 'KA', 'Kagera'),
(3168, 208, 'KI', 'Kigoma'),
(3169, 208, 'KJ', 'Kilimanjaro'),
(3170, 208, 'LN', 'Lindi'),
(3171, 208, 'MY', 'Manyara'),
(3172, 208, 'MR', 'Mara'),
(3173, 208, 'MB', 'Mbeya'),
(3174, 208, 'MO', 'Morogoro'),
(3175, 208, 'MT', 'Mtwara'),
(3176, 208, 'MW', 'Mwanza'),
(3177, 208, 'PN', 'Pemba North'),
(3178, 208, 'PS', 'Pemba South'),
(3179, 208, 'PW', 'Pwani'),
(3180, 208, 'RK', 'Rukwa'),
(3181, 208, 'RV', 'Ruvuma'),
(3182, 208, 'SH', 'Shinyanga'),
(3183, 208, 'SI', 'Singida'),
(3184, 208, 'TB', 'Tabora'),
(3185, 208, 'TN', 'Tanga'),
(3186, 208, 'ZC', 'Zanzibar Central/South'),
(3187, 208, 'ZN', 'Zanzibar North'),
(3188, 208, 'ZU', 'Zanzibar Urban/West'),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen'),
(3190, 209, 'Ang Thong', 'Ang Thong'),
(3191, 209, 'Ayutthaya', 'Ayutthaya'),
(3192, 209, 'Bangkok', 'Bangkok'),
(3193, 209, 'Buriram', 'Buriram'),
(3194, 209, 'Chachoengsao', 'Chachoengsao'),
(3195, 209, 'Chai Nat', 'Chai Nat'),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum'),
(3197, 209, 'Chanthaburi', 'Chanthaburi'),
(3198, 209, 'Chiang Mai', 'Chiang Mai'),
(3199, 209, 'Chiang Rai', 'Chiang Rai'),
(3200, 209, 'Chon Buri', 'Chon Buri'),
(3201, 209, 'Chumphon', 'Chumphon'),
(3202, 209, 'Kalasin', 'Kalasin'),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet'),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi'),
(3205, 209, 'Khon Kaen', 'Khon Kaen'),
(3206, 209, 'Krabi', 'Krabi'),
(3207, 209, 'Lampang', 'Lampang'),
(3208, 209, 'Lamphun', 'Lamphun'),
(3209, 209, 'Loei', 'Loei'),
(3210, 209, 'Lop Buri', 'Lop Buri'),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son'),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham'),
(3213, 209, 'Mukdahan', 'Mukdahan'),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok'),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom'),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom'),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima'),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan'),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat'),
(3220, 209, 'Nan', 'Nan'),
(3221, 209, 'Narathiwat', 'Narathiwat'),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu'),
(3223, 209, 'Nong Khai', 'Nong Khai'),
(3224, 209, 'Nonthaburi', 'Nonthaburi'),
(3225, 209, 'Pathum Thani', 'Pathum Thani'),
(3226, 209, 'Pattani', 'Pattani'),
(3227, 209, 'Phangnga', 'Phangnga'),
(3228, 209, 'Phatthalung', 'Phatthalung'),
(3229, 209, 'Phayao', 'Phayao'),
(3230, 209, 'Phetchabun', 'Phetchabun'),
(3231, 209, 'Phetchaburi', 'Phetchaburi'),
(3232, 209, 'Phichit', 'Phichit'),
(3233, 209, 'Phitsanulok', 'Phitsanulok'),
(3234, 209, 'Phrae', 'Phrae'),
(3235, 209, 'Phuket', 'Phuket'),
(3236, 209, 'Prachin Buri', 'Prachin Buri'),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan'),
(3238, 209, 'Ranong', 'Ranong'),
(3239, 209, 'Ratchaburi', 'Ratchaburi'),
(3240, 209, 'Rayong', 'Rayong'),
(3241, 209, 'Roi Et', 'Roi Et'),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo'),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon'),
(3244, 209, 'Samut Prakan', 'Samut Prakan'),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon'),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram'),
(3247, 209, 'Sara Buri', 'Sara Buri'),
(3248, 209, 'Satun', 'Satun'),
(3249, 209, 'Sing Buri', 'Sing Buri'),
(3250, 209, 'Sisaket', 'Sisaket'),
(3251, 209, 'Songkhla', 'Songkhla'),
(3252, 209, 'Sukhothai', 'Sukhothai'),
(3253, 209, 'Suphan Buri', 'Suphan Buri'),
(3254, 209, 'Surat Thani', 'Surat Thani'),
(3255, 209, 'Surin', 'Surin'),
(3256, 209, 'Tak', 'Tak'),
(3257, 209, 'Trang', 'Trang'),
(3258, 209, 'Trat', 'Trat'),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani'),
(3260, 209, 'Udon Thani', 'Udon Thani'),
(3261, 209, 'Uthai Thani', 'Uthai Thani'),
(3262, 209, 'Uttaradit', 'Uttaradit'),
(3263, 209, 'Yala', 'Yala'),
(3264, 209, 'Yasothon', 'Yasothon'),
(3265, 210, 'K', 'Kara'),
(3266, 210, 'P', 'Plateaux'),
(3267, 210, 'S', 'Savanes'),
(3268, 210, 'C', 'Centrale'),
(3269, 210, 'M', 'Maritime'),
(3270, 211, 'A', 'Atafu'),
(3271, 211, 'F', 'Fakaofo'),
(3272, 211, 'N', 'Nukunonu'),
(3273, 212, 'H', 'Ha''apai'),
(3274, 212, 'T', 'Tongatapu'),
(3275, 212, 'V', 'Vava''u'),
(3276, 213, 'CT', 'Couva/Tabaquite/Talparo'),
(3277, 213, 'DM', 'Diego Martin'),
(3278, 213, 'MR', 'Mayaro/Rio Claro'),
(3279, 213, 'PD', 'Penal/Debe'),
(3280, 213, 'PT', 'Princes Town'),
(3281, 213, 'SG', 'Sangre Grande'),
(3282, 213, 'SL', 'San Juan/Laventille'),
(3283, 213, 'SI', 'Siparia'),
(3284, 213, 'TP', 'Tunapuna/Piarco'),
(3285, 213, 'PS', 'Port of Spain'),
(3286, 213, 'SF', 'San Fernando'),
(3287, 213, 'AR', 'Arima'),
(3288, 213, 'PF', 'Point Fortin');
INSERT INTO `zone` (`zoneid`, `countryid`, `code`, `zonename`) VALUES
(3289, 213, 'CH', 'Chaguanas'),
(3290, 213, 'TO', 'Tobago'),
(3291, 214, 'AR', 'Ariana'),
(3292, 214, 'BJ', 'Beja'),
(3293, 214, 'BA', 'Ben Arous'),
(3294, 214, 'BI', 'Bizerte'),
(3295, 214, 'GB', 'Gabes'),
(3296, 214, 'GF', 'Gafsa'),
(3297, 214, 'JE', 'Jendouba'),
(3298, 214, 'KR', 'Kairouan'),
(3299, 214, 'KS', 'Kasserine'),
(3300, 214, 'KB', 'Kebili'),
(3301, 214, 'KF', 'Kef'),
(3302, 214, 'MH', 'Mahdia'),
(3303, 214, 'MN', 'Manouba'),
(3304, 214, 'ME', 'Medenine'),
(3305, 214, 'MO', 'Monastir'),
(3306, 214, 'NA', 'Nabeul'),
(3307, 214, 'SF', 'Sfax'),
(3308, 214, 'SD', 'Sidi'),
(3309, 214, 'SL', 'Siliana'),
(3310, 214, 'SO', 'Sousse'),
(3311, 214, 'TA', 'Tataouine'),
(3312, 214, 'TO', 'Tozeur'),
(3313, 214, 'TU', 'Tunis'),
(3314, 214, 'ZA', 'Zaghouan'),
(3315, 215, 'ADA', 'Adana'),
(3316, 215, 'ADI', 'Adiyaman'),
(3317, 215, 'AFY', 'Afyonkarahisar'),
(3318, 215, 'AGR', 'Agri'),
(3319, 215, 'AKS', 'Aksaray'),
(3320, 215, 'AMA', 'Amasya'),
(3321, 215, 'ANK', 'Ankara'),
(3322, 215, 'ANT', 'Antalya'),
(3323, 215, 'ARD', 'Ardahan'),
(3324, 215, 'ART', 'Artvin'),
(3325, 215, 'AYI', 'Aydin'),
(3326, 215, 'BAL', 'Balikesir'),
(3327, 215, 'BAR', 'Bartin'),
(3328, 215, 'BAT', 'Batman'),
(3329, 215, 'BAY', 'Bayburt'),
(3330, 215, 'BIL', 'Bilecik'),
(3331, 215, 'BIN', 'Bingol'),
(3332, 215, 'BIT', 'Bitlis'),
(3333, 215, 'BOL', 'Bolu'),
(3334, 215, 'BRD', 'Burdur'),
(3335, 215, 'BRS', 'Bursa'),
(3336, 215, 'CKL', 'Canakkale'),
(3337, 215, 'CKR', 'Cankiri'),
(3338, 215, 'COR', 'Corum'),
(3339, 215, 'DEN', 'Denizli'),
(3340, 215, 'DIY', 'Diyarbakir'),
(3341, 215, 'DUZ', 'Duzce'),
(3342, 215, 'EDI', 'Edirne'),
(3343, 215, 'ELA', 'Elazig'),
(3344, 215, 'EZC', 'Erzincan'),
(3345, 215, 'EZR', 'Erzurum'),
(3346, 215, 'ESK', 'Eskisehir'),
(3347, 215, 'GAZ', 'Gaziantep'),
(3348, 215, 'GIR', 'Giresun'),
(3349, 215, 'GMS', 'Gumushane'),
(3350, 215, 'HKR', 'Hakkari'),
(3351, 215, 'HTY', 'Hatay'),
(3352, 215, 'IGD', 'Igdir'),
(3353, 215, 'ISP', 'Isparta'),
(3354, 215, 'IST', 'Istanbul'),
(3355, 215, 'IZM', 'Izmir'),
(3356, 215, 'KAH', 'Kahramanmaras'),
(3357, 215, 'KRB', 'Karabuk'),
(3358, 215, 'KRM', 'Karaman'),
(3359, 215, 'KRS', 'Kars'),
(3360, 215, 'KAS', 'Kastamonu'),
(3361, 215, 'KAY', 'Kayseri'),
(3362, 215, 'KLS', 'Kilis'),
(3363, 215, 'KRK', 'Kirikkale'),
(3364, 215, 'KLR', 'Kirklareli'),
(3365, 215, 'KRH', 'Kirsehir'),
(3366, 215, 'KOC', 'Kocaeli'),
(3367, 215, 'KON', 'Konya'),
(3368, 215, 'KUT', 'Kutahya'),
(3369, 215, 'MAL', 'Malatya'),
(3370, 215, 'MAN', 'Manisa'),
(3371, 215, 'MAR', 'Mardin'),
(3372, 215, 'MER', 'Mersin'),
(3373, 215, 'MUG', 'Mugla'),
(3374, 215, 'MUS', 'Mus'),
(3375, 215, 'NEV', 'Nevsehir'),
(3376, 215, 'NIG', 'Nigde'),
(3377, 215, 'ORD', 'Ordu'),
(3378, 215, 'OSM', 'Osmaniye'),
(3379, 215, 'RIZ', 'Rize'),
(3380, 215, 'SAK', 'Sakarya'),
(3381, 215, 'SAM', 'Samsun'),
(3382, 215, 'SAN', 'Sanliurfa'),
(3383, 215, 'SII', 'Siirt'),
(3384, 215, 'SIN', 'Sinop'),
(3385, 215, 'SIR', 'Sirnak'),
(3386, 215, 'SIV', 'Sivas'),
(3387, 215, 'TEL', 'Tekirdag'),
(3388, 215, 'TOK', 'Tokat'),
(3389, 215, 'TRA', 'Trabzon'),
(3390, 215, 'TUN', 'Tunceli'),
(3391, 215, 'USK', 'Usak'),
(3392, 215, 'VAN', 'Van'),
(3393, 215, 'YAL', 'Yalova'),
(3394, 215, 'YOZ', 'Yozgat'),
(3395, 215, 'ZON', 'Zonguldak'),
(3396, 216, 'A', 'Ahal Welayaty'),
(3397, 216, 'B', 'Balkan Welayaty'),
(3398, 216, 'D', 'Dashhowuz Welayaty'),
(3399, 216, 'L', 'Lebap Welayaty'),
(3400, 216, 'M', 'Mary Welayaty'),
(3401, 217, 'AC', 'Ambergris Cays'),
(3402, 217, 'DC', 'Dellis Cay'),
(3403, 217, 'FC', 'French Cay'),
(3404, 217, 'LW', 'Little Water Cay'),
(3405, 217, 'RC', 'Parrot Cay'),
(3406, 217, 'PN', 'Pine Cay'),
(3407, 217, 'SL', 'Salt Cay'),
(3408, 217, 'GT', 'Grand Turk'),
(3409, 217, 'SC', 'South Caicos'),
(3410, 217, 'EC', 'East Caicos'),
(3411, 217, 'MC', 'Middle Caicos'),
(3412, 217, 'NC', 'North Caicos'),
(3413, 217, 'PR', 'Providenciales'),
(3414, 217, 'WC', 'West Caicos'),
(3415, 218, 'NMG', 'Nanumanga'),
(3416, 218, 'NLK', 'Niulakita'),
(3417, 218, 'NTO', 'Niutao'),
(3418, 218, 'FUN', 'Funafuti'),
(3419, 218, 'NME', 'Nanumea'),
(3420, 218, 'NUI', 'Nui'),
(3421, 218, 'NFT', 'Nukufetau'),
(3422, 218, 'NLL', 'Nukulaelae'),
(3423, 218, 'VAI', 'Vaitupu'),
(3424, 219, 'KAL', 'Kalangala'),
(3425, 219, 'KMP', 'Kampala'),
(3426, 219, 'KAY', 'Kayunga'),
(3427, 219, 'KIB', 'Kiboga'),
(3428, 219, 'LUW', 'Luwero'),
(3429, 219, 'MAS', 'Masaka'),
(3430, 219, 'MPI', 'Mpigi'),
(3431, 219, 'MUB', 'Mubende'),
(3432, 219, 'MUK', 'Mukono'),
(3433, 219, 'NKS', 'Nakasongola'),
(3434, 219, 'RAK', 'Rakai'),
(3435, 219, 'SEM', 'Sembabule'),
(3436, 219, 'WAK', 'Wakiso'),
(3437, 219, 'BUG', 'Bugiri'),
(3438, 219, 'BUS', 'Busia'),
(3439, 219, 'IGA', 'Iganga'),
(3440, 219, 'JIN', 'Jinja'),
(3441, 219, 'KAB', 'Kaberamaido'),
(3442, 219, 'KML', 'Kamuli'),
(3443, 219, 'KPC', 'Kapchorwa'),
(3444, 219, 'KTK', 'Katakwi'),
(3445, 219, 'KUM', 'Kumi'),
(3446, 219, 'MAY', 'Mayuge'),
(3447, 219, 'MBA', 'Mbale'),
(3448, 219, 'PAL', 'Pallisa'),
(3449, 219, 'SIR', 'Sironko'),
(3450, 219, 'SOR', 'Soroti'),
(3451, 219, 'TOR', 'Tororo'),
(3452, 219, 'ADJ', 'Adjumani'),
(3453, 219, 'APC', 'Apac'),
(3454, 219, 'ARU', 'Arua'),
(3455, 219, 'GUL', 'Gulu'),
(3456, 219, 'KIT', 'Kitgum'),
(3457, 219, 'KOT', 'Kotido'),
(3458, 219, 'LIR', 'Lira'),
(3459, 219, 'MRT', 'Moroto'),
(3460, 219, 'MOY', 'Moyo'),
(3461, 219, 'NAK', 'Nakapiripirit'),
(3462, 219, 'NEB', 'Nebbi'),
(3463, 219, 'PAD', 'Pader'),
(3464, 219, 'YUM', 'Yumbe'),
(3465, 219, 'BUN', 'Bundibugyo'),
(3466, 219, 'BSH', 'Bushenyi'),
(3467, 219, 'HOI', 'Hoima'),
(3468, 219, 'KBL', 'Kabale'),
(3469, 219, 'KAR', 'Kabarole'),
(3470, 219, 'KAM', 'Kamwenge'),
(3471, 219, 'KAN', 'Kanungu'),
(3472, 219, 'KAS', 'Kasese'),
(3473, 219, 'KBA', 'Kibaale'),
(3474, 219, 'KIS', 'Kisoro'),
(3475, 219, 'KYE', 'Kyenjojo'),
(3476, 219, 'MSN', 'Masindi'),
(3477, 219, 'MBR', 'Mbarara'),
(3478, 219, 'NTU', 'Ntungamo'),
(3479, 219, 'RUK', 'Rukungiri'),
(3480, 220, 'CK', 'Cherkasy'),
(3481, 220, 'CH', 'Chernihiv'),
(3482, 220, 'CV', 'Chernivtsi'),
(3483, 220, 'CR', 'Crimea'),
(3484, 220, 'DN', 'Dnipropetrovs''k'),
(3485, 220, 'DO', 'Donets''k'),
(3486, 220, 'IV', 'Ivano-Frankivs''k'),
(3487, 220, 'KL', 'Kharkiv Kherson'),
(3488, 220, 'KM', 'Khmel''nyts''kyy'),
(3489, 220, 'KR', 'Kirovohrad'),
(3490, 220, 'KV', 'Kiev'),
(3491, 220, 'KY', 'Kyyiv'),
(3492, 220, 'LU', 'Luhans''k'),
(3493, 220, 'LV', 'L''viv'),
(3494, 220, 'MY', 'Mykolayiv'),
(3495, 220, 'OD', 'Odesa'),
(3496, 220, 'PO', 'Poltava'),
(3497, 220, 'RI', 'Rivne'),
(3498, 220, 'SE', 'Sevastopol'),
(3499, 220, 'SU', 'Sumy'),
(3500, 220, 'TE', 'Ternopil'''),
(3501, 220, 'VI', 'Vinnytsya'),
(3502, 220, 'VO', 'Volyn'''),
(3503, 220, 'ZK', 'Zakarpattya'),
(3504, 220, 'ZA', 'Zaporizhzhya'),
(3505, 220, 'ZH', 'Zhytomyr'),
(3506, 221, 'AZ', 'Abu Zaby'),
(3507, 221, 'AJ', '''Ajman'),
(3508, 221, 'FU', 'Al Fujayrah'),
(3509, 221, 'SH', 'Ash Shariqah'),
(3510, 221, 'DU', 'Dubayy'),
(3511, 221, 'RK', 'R''as al Khaymah'),
(3512, 221, 'UQ', 'Umm al Qaywayn'),
(3513, 222, 'ABN', 'Aberdeen'),
(3514, 222, 'ABNS', 'Aberdeenshire'),
(3515, 222, 'ANG', 'Anglesey'),
(3516, 222, 'AGS', 'Angus'),
(3517, 222, 'ARY', 'Argyll and Bute'),
(3518, 222, 'BEDS', 'Bedfordshire'),
(3519, 222, 'BERKS', 'Berkshire'),
(3520, 222, 'BLA', 'Blaenau Gwent'),
(3521, 222, 'BRI', 'Bridgend'),
(3522, 222, 'BSTL', 'Bristol'),
(3523, 222, 'BUCKS', 'Buckinghamshire'),
(3524, 222, 'CAE', 'Caerphilly'),
(3525, 222, 'CAMBS', 'Cambridgeshire'),
(3526, 222, 'CDF', 'Cardiff'),
(3527, 222, 'CARM', 'Carmarthenshire'),
(3528, 222, 'CDGN', 'Ceredigion'),
(3529, 222, 'CHES', 'Cheshire'),
(3530, 222, 'CLACK', 'Clackmannanshire'),
(3531, 222, 'CON', 'Conwy'),
(3532, 222, 'CORN', 'Cornwall'),
(3533, 222, 'DNBG', 'Denbighshire'),
(3534, 222, 'DERBY', 'Derbyshire'),
(3535, 222, 'DVN', 'Devon'),
(3536, 222, 'DOR', 'Dorset'),
(3537, 222, 'DGL', 'Dumfries and Galloway'),
(3538, 222, 'DUND', 'Dundee'),
(3539, 222, 'DHM', 'Durham'),
(3540, 222, 'ARYE', 'East Ayrshire'),
(3541, 222, 'DUNBE', 'East Dunbartonshire'),
(3542, 222, 'LOTE', 'East Lothian'),
(3543, 222, 'RENE', 'East Renfrewshire'),
(3544, 222, 'ERYS', 'East Riding of Yorkshire'),
(3545, 222, 'SXE', 'East Sussex'),
(3546, 222, 'EDIN', 'Edinburgh'),
(3547, 222, 'ESX', 'Essex'),
(3548, 222, 'FALK', 'Falkirk'),
(3549, 222, 'FFE', 'Fife'),
(3550, 222, 'FLINT', 'Flintshire'),
(3551, 222, 'GLAS', 'Glasgow'),
(3552, 222, 'GLOS', 'Gloucestershire'),
(3553, 222, 'LDN', 'Greater London'),
(3554, 222, 'MCH', 'Greater Manchester'),
(3555, 222, 'GDD', 'Gwynedd'),
(3556, 222, 'HANTS', 'Hampshire'),
(3557, 222, 'HWR', 'Herefordshire'),
(3558, 222, 'HERTS', 'Hertfordshire'),
(3559, 222, 'HLD', 'Highlands'),
(3560, 222, 'IVER', 'Inverclyde'),
(3561, 222, 'IOW', 'Isle of Wight'),
(3562, 222, 'KNT', 'Kent'),
(3563, 222, 'LANCS', 'Lancashire'),
(3564, 222, 'LEICS', 'Leicestershire'),
(3565, 222, 'LINCS', 'Lincolnshire'),
(3566, 222, 'MSY', 'Merseyside'),
(3567, 222, 'MERT', 'Merthyr Tydfil'),
(3568, 222, 'MLOT', 'Midlothian'),
(3569, 222, 'MMOUTH', 'Monmouthshire'),
(3570, 222, 'MORAY', 'Moray'),
(3571, 222, 'NPRTAL', 'Neath Port Talbot'),
(3572, 222, 'NEWPT', 'Newport'),
(3573, 222, 'NOR', 'Norfolk'),
(3574, 222, 'ARYN', 'North Ayrshire'),
(3575, 222, 'LANN', 'North Lanarkshire'),
(3576, 222, 'YSN', 'North Yorkshire'),
(3577, 222, 'NHM', 'Northamptonshire'),
(3578, 222, 'NLD', 'Northumberland'),
(3579, 222, 'NOT', 'Nottinghamshire'),
(3580, 222, 'ORK', 'Orkney Islands'),
(3581, 222, 'OFE', 'Oxfordshire'),
(3582, 222, 'PEM', 'Pembrokeshire'),
(3583, 222, 'PERTH', 'Perth and Kinross'),
(3584, 222, 'PWS', 'Powys'),
(3585, 222, 'REN', 'Renfrewshire'),
(3586, 222, 'RHON', 'Rhondda Cynon Taff'),
(3587, 222, 'RUT', 'Rutland'),
(3588, 222, 'BOR', 'Scottish Borders'),
(3589, 222, 'SHET', 'Shetland Islands'),
(3590, 222, 'SPE', 'Shropshire'),
(3591, 222, 'SOM', 'Somerset'),
(3592, 222, 'ARYS', 'South Ayrshire'),
(3593, 222, 'LANS', 'South Lanarkshire'),
(3594, 222, 'YSS', 'South Yorkshire'),
(3595, 222, 'SFD', 'Staffordshire'),
(3596, 222, 'STIR', 'Stirling'),
(3597, 222, 'SFK', 'Suffolk'),
(3598, 222, 'SRY', 'Surrey'),
(3599, 222, 'SWAN', 'Swansea'),
(3600, 222, 'TORF', 'Torfaen'),
(3601, 222, 'TWR', 'Tyne and Wear'),
(3602, 222, 'VGLAM', 'Vale of Glamorgan'),
(3603, 222, 'WARKS', 'Warwickshire'),
(3604, 222, 'WDUN', 'West Dunbartonshire'),
(3605, 222, 'WLOT', 'West Lothian'),
(3606, 222, 'WMD', 'West Midlands'),
(3607, 222, 'SXW', 'West Sussex'),
(3608, 222, 'YSW', 'West Yorkshire'),
(3609, 222, 'WIL', 'Western Isles'),
(3610, 222, 'WLT', 'Wiltshire'),
(3611, 222, 'WORCS', 'Worcestershire'),
(3612, 222, 'WRX', 'Wrexham'),
(3613, 223, 'AL', 'Alabama'),
(3614, 223, 'AK', 'Alaska'),
(3615, 223, 'AS', 'American Samoa'),
(3616, 223, 'AZ', 'Arizona'),
(3617, 223, 'AR', 'Arkansas'),
(3618, 223, 'AF', 'Armed Forces Africa'),
(3619, 223, 'AA', 'Armed Forces Americas'),
(3620, 223, 'AC', 'Armed Forces Canada'),
(3621, 223, 'AE', 'Armed Forces Europe'),
(3622, 223, 'AM', 'Armed Forces Middle East'),
(3623, 223, 'AP', 'Armed Forces Pacific'),
(3624, 223, 'CA', 'California'),
(3625, 223, 'CO', 'Colorado'),
(3626, 223, 'CT', 'Connecticut'),
(3627, 223, 'DE', 'Delaware'),
(3628, 223, 'DC', 'District of Columbia'),
(3629, 223, 'FM', 'Federated States Of Micronesia'),
(3630, 223, 'FL', 'Florida'),
(3631, 223, 'GA', 'Georgia'),
(3632, 223, 'GU', 'Guam'),
(3633, 223, 'HI', 'Hawaii'),
(3634, 223, 'ID', 'Idaho'),
(3635, 223, 'IL', 'Illinois'),
(3636, 223, 'IN', 'Indiana'),
(3637, 223, 'IA', 'Iowa'),
(3638, 223, 'KS', 'Kansas'),
(3639, 223, 'KY', 'Kentucky'),
(3640, 223, 'LA', 'Louisiana'),
(3641, 223, 'ME', 'Maine'),
(3642, 223, 'MH', 'Marshall Islands'),
(3643, 223, 'MD', 'Maryland'),
(3644, 223, 'MA', 'Massachusetts'),
(3645, 223, 'MI', 'Michigan'),
(3646, 223, 'MN', 'Minnesota'),
(3647, 223, 'MS', 'Mississippi'),
(3648, 223, 'MO', 'Missouri'),
(3649, 223, 'MT', 'Montana'),
(3650, 223, 'NE', 'Nebraska'),
(3651, 223, 'NV', 'Nevada'),
(3652, 223, 'NH', 'New Hampshire'),
(3653, 223, 'NJ', 'New Jersey'),
(3654, 223, 'NM', 'New Mexico'),
(3655, 223, 'NY', 'New York'),
(3656, 223, 'NC', 'North Carolina'),
(3657, 223, 'ND', 'North Dakota'),
(3658, 223, 'MP', 'Northern Mariana Islands'),
(3659, 223, 'OH', 'Ohio'),
(3660, 223, 'OK', 'Oklahoma'),
(3661, 223, 'OR', 'Oregon'),
(3662, 223, 'PW', 'Palau'),
(3663, 223, 'PA', 'Pennsylvania'),
(3664, 223, 'PR', 'Puerto Rico'),
(3665, 223, 'RI', 'Rhode Island'),
(3666, 223, 'SC', 'South Carolina'),
(3667, 223, 'SD', 'South Dakota'),
(3668, 223, 'TN', 'Tennessee'),
(3669, 223, 'TX', 'Texas'),
(3670, 223, 'UT', 'Utah'),
(3671, 223, 'VT', 'Vermont'),
(3672, 223, 'VI', 'Virgin Islands'),
(3673, 223, 'VA', 'Virginia'),
(3674, 223, 'WA', 'Washington'),
(3675, 223, 'WV', 'West Virginia'),
(3676, 223, 'WI', 'Wisconsin'),
(3677, 223, 'WY', 'Wyoming'),
(3678, 224, 'BI', 'Baker Island'),
(3679, 224, 'HI', 'Howland Island'),
(3680, 224, 'JI', 'Jarvis Island'),
(3681, 224, 'JA', 'Johnston Atoll'),
(3682, 224, 'KR', 'Kingman Reef'),
(3683, 224, 'MA', 'Midway Atoll'),
(3684, 224, 'NI', 'Navassa Island'),
(3685, 224, 'PA', 'Palmyra Atoll'),
(3686, 224, 'WI', 'Wake Island'),
(3687, 225, 'AR', 'Artigas'),
(3688, 225, 'CA', 'Canelones'),
(3689, 225, 'CL', 'Cerro Largo'),
(3690, 225, 'CO', 'Colonia'),
(3691, 225, 'DU', 'Durazno'),
(3692, 225, 'FS', 'Flores'),
(3693, 225, 'FA', 'Florida'),
(3694, 225, 'LA', 'Lavalleja'),
(3695, 225, 'MA', 'Maldonado'),
(3696, 225, 'MO', 'Montevideo'),
(3697, 225, 'PA', 'Paysandu'),
(3698, 225, 'RN', 'Rio Negro'),
(3699, 225, 'RV', 'Rivera'),
(3700, 225, 'RO', 'Rocha'),
(3701, 225, 'SL', 'Salto'),
(3702, 225, 'SJ', 'San Jose'),
(3703, 225, 'SO', 'Soriano'),
(3704, 225, 'TA', 'Tacuarembo'),
(3705, 225, 'TT', 'Treinta y Tres'),
(3706, 226, 'AN', 'Andijon'),
(3707, 226, 'BU', 'Buxoro'),
(3708, 226, 'FA', 'Farg''ona'),
(3709, 226, 'JI', 'Jizzax'),
(3710, 226, 'NG', 'Namangan'),
(3711, 226, 'NW', 'Navoiy'),
(3712, 226, 'QA', 'Qashqadaryo'),
(3713, 226, 'QR', 'Qoraqalpog''iston Republikasi'),
(3714, 226, 'SA', 'Samarqand'),
(3715, 226, 'SI', 'Sirdaryo'),
(3716, 226, 'SU', 'Surxondaryo'),
(3717, 226, 'TK', 'Toshkent City'),
(3718, 226, 'TO', 'Toshkent Region'),
(3719, 226, 'XO', 'Xorazm'),
(3720, 227, 'MA', 'Malampa'),
(3721, 227, 'PE', 'Penama'),
(3722, 227, 'SA', 'Sanma'),
(3723, 227, 'SH', 'Shefa'),
(3724, 227, 'TA', 'Tafea'),
(3725, 227, 'TO', 'Torba'),
(3726, 229, 'AM', 'Amazonas'),
(3727, 229, 'AN', 'Anzoategui'),
(3728, 229, 'AP', 'Apure'),
(3729, 229, 'AR', 'Aragua'),
(3730, 229, 'BA', 'Barinas'),
(3731, 229, 'BO', 'Bolivar'),
(3732, 229, 'CA', 'Carabobo'),
(3733, 229, 'CO', 'Cojedes'),
(3734, 229, 'DA', 'Delta Amacuro'),
(3735, 229, 'DF', 'Dependencias Federales'),
(3736, 229, 'DI', 'Distrito Federal'),
(3737, 229, 'FA', 'Falcon'),
(3738, 229, 'GU', 'Guarico'),
(3739, 229, 'LA', 'Lara'),
(3740, 229, 'ME', 'Merida'),
(3741, 229, 'MI', 'Miranda'),
(3742, 229, 'MO', 'Monagas'),
(3743, 229, 'NE', 'Nueva Esparta'),
(3744, 229, 'PO', 'Portuguesa'),
(3745, 229, 'SU', 'Sucre'),
(3746, 229, 'TA', 'Tachira'),
(3747, 229, 'TR', 'Trujillo'),
(3748, 229, 'VA', 'Vargas'),
(3749, 229, 'YA', 'Yaracuy'),
(3750, 229, 'ZU', 'Zulia'),
(3751, 230, 'AG', 'An Giang'),
(3752, 230, 'BG', 'Bac Giang'),
(3753, 230, 'BK', 'Bac Kan'),
(3754, 230, 'BL', 'Bac Lieu'),
(3755, 230, 'BC', 'Bac Ninh'),
(3756, 230, 'BR', 'Ba Ria-Vung Tau'),
(3757, 230, 'BN', 'Ben Tre'),
(3758, 230, 'BH', 'Binh Dinh'),
(3759, 230, 'BU', 'Binh Duong'),
(3760, 230, 'BP', 'Binh Phuoc'),
(3761, 230, 'BT', 'Binh Thuan'),
(3762, 230, 'CM', 'Ca Mau'),
(3763, 230, 'CT', 'Can Tho'),
(3764, 230, 'CB', 'Cao Bang'),
(3765, 230, 'DL', 'Dak Lak'),
(3766, 230, 'DG', 'Dak Nong'),
(3767, 230, 'DN', 'Da Nang'),
(3768, 230, 'DB', 'Dien Bien'),
(3769, 230, 'DI', 'Dong Nai'),
(3770, 230, 'DT', 'Dong Thap'),
(3771, 230, 'GL', 'Gia Lai'),
(3772, 230, 'HG', 'Ha Giang'),
(3773, 230, 'HD', 'Hai Duong'),
(3774, 230, 'HP', 'Hai Phong'),
(3775, 230, 'HM', 'Ha Nam'),
(3776, 230, 'HI', 'Ha Noi'),
(3777, 230, 'HT', 'Ha Tay'),
(3778, 230, 'HH', 'Ha Tinh'),
(3779, 230, 'HB', 'Hoa Binh'),
(3780, 230, 'HC', 'Ho Chi Minh'),
(3781, 230, 'HU', 'Hau Giang'),
(3782, 230, 'HY', 'Hung Yen'),
(3783, 232, 'C', 'Saint Croix'),
(3784, 232, 'J', 'Saint John'),
(3785, 232, 'T', 'Saint Thomas'),
(3786, 233, 'A', 'Alo'),
(3787, 233, 'S', 'Sigave'),
(3788, 233, 'W', 'Wallis'),
(3789, 235, 'AB', 'Abyan'),
(3790, 235, 'AD', 'Adan'),
(3791, 235, 'AM', 'Amran'),
(3792, 235, 'BA', 'Al Bayda'),
(3793, 235, 'DA', 'Ad Dali'),
(3794, 235, 'DH', 'Dhamar'),
(3795, 235, 'HD', 'Hadramawt'),
(3796, 235, 'HJ', 'Hajjah'),
(3797, 235, 'HU', 'Al Hudaydah'),
(3798, 235, 'IB', 'Ibb'),
(3799, 235, 'JA', 'Al Jawf'),
(3800, 235, 'LA', 'Lahij'),
(3801, 235, 'MA', 'Ma''rib'),
(3802, 235, 'MR', 'Al Mahrah'),
(3803, 235, 'MW', 'Al Mahwit'),
(3804, 235, 'SD', 'Sa''dah'),
(3805, 235, 'SN', 'San''a'),
(3806, 235, 'SH', 'Shabwah'),
(3807, 235, 'TA', 'Ta''izz'),
(3808, 236, 'KOS', 'Kosovo'),
(3809, 236, 'MON', 'Montenegro'),
(3810, 236, 'SER', 'Serbia'),
(3811, 236, 'VOJ', 'Vojvodina'),
(3812, 237, 'BC', 'Bas-Congo'),
(3813, 237, 'BN', 'Bandundu'),
(3814, 237, 'EQ', 'Equateur'),
(3815, 237, 'KA', 'Katanga'),
(3816, 237, 'KE', 'Kasai-Oriental'),
(3817, 237, 'KN', 'Kinshasa'),
(3818, 237, 'KW', 'Kasai-Occidental'),
(3819, 237, 'MA', 'Maniema'),
(3820, 237, 'NK', 'Nord-Kivu'),
(3821, 237, 'OR', 'Orientale'),
(3822, 237, 'SK', 'Sud-Kivu'),
(3823, 238, 'CE', 'Central'),
(3824, 238, 'CB', 'Copperbelt'),
(3825, 238, 'EA', 'Eastern'),
(3826, 238, 'LP', 'Luapula'),
(3827, 238, 'LK', 'Lusaka'),
(3828, 238, 'NO', 'Northern'),
(3829, 238, 'NW', 'North-Western'),
(3830, 238, 'SO', 'Southern'),
(3831, 238, 'WE', 'Western'),
(3832, 239, 'BU', 'Bulawayo'),
(3833, 239, 'HA', 'Harare'),
(3834, 239, 'ML', 'Manicaland'),
(3835, 239, 'MC', 'Mashonaland Central'),
(3836, 239, 'ME', 'Mashonaland East'),
(3837, 239, 'MW', 'Mashonaland West'),
(3838, 239, 'MV', 'Masvingo'),
(3839, 239, 'MN', 'Matabeleland North'),
(3840, 239, 'MS', 'Matabeleland South'),
(3841, 239, 'MD', 'Midlands');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
