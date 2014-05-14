-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 16, 2013 at 05:08 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `smartweb_cangio`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `addon`
-- 

CREATE TABLE `addon` (
  `id` bigint(20) NOT NULL auto_increment,
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `moduleid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `areacode` varchar(10) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

-- 
-- Dumping data for table `addon`
-- 

INSERT INTO `addon` VALUES (26, 'edwinbanner', 'splash/edwinbanner', 'splash', 1);
INSERT INTO `addon` VALUES (25, 'homesimpleslides', 'splash/homesimpleslides', 'splash', 1);
INSERT INTO `addon` VALUES (19, 'banner', 'sidebar/banner', 'sidebar', 1);
INSERT INTO `addon` VALUES (22, 'threenewslides', 'sidebar/threenewslides', 'sidebar', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `addon_description`
-- 

CREATE TABLE `addon_description` (
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `addonname` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`addonid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `addon_description`
-- 

INSERT INTO `addon_description` VALUES ('edwinbanner', 'en', 'Tin Tức Nổi Bật');
INSERT INTO `addon_description` VALUES ('edwinbanner', 'vn', 'Tin Tức Nổi Bật');
INSERT INTO `addon_description` VALUES ('promotionbox', 'vn', 'Box Khuyến mãi');
INSERT INTO `addon_description` VALUES ('banner', 'en', 'Hình Ảnh Nổi Bật');
INSERT INTO `addon_description` VALUES ('homeproduct', 'vn', 'home new product');
INSERT INTO `addon_description` VALUES ('homesimpleslides', 'en', 'Banner Trang Chủ');
INSERT INTO `addon_description` VALUES ('homesimpleslides', 'vn', 'Banner Trang Chủ');
INSERT INTO `addon_description` VALUES ('banner', 'vn', 'Hình Ảnh Nổi Bật');
INSERT INTO `addon_description` VALUES ('threenewslides', 'en', 'Video');
INSERT INTO `addon_description` VALUES ('threenewslides', 'vn', 'Video');

-- --------------------------------------------------------

-- 
-- Table structure for table `category`
-- 

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL auto_increment,
  `categoryid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `categoryname` text collate utf8_unicode_ci NOT NULL,
  `parent` varchar(100) collate utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `category`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `comment`
-- 

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL auto_increment,
  `fullname` text collate utf8_unicode_ci NOT NULL,
  `email` text collate utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `commentdate` datetime NOT NULL,
  `mediaid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `status` varchar(20) collate utf8_unicode_ci NOT NULL,
  `userid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `refersitemap` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `comment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `country`
-- 

CREATE TABLE `country` (
  `countryid` int(11) NOT NULL auto_increment,
  `countryname` varchar(64) collate utf8_unicode_ci NOT NULL,
  `iso_code_2` varchar(2) collate utf8_unicode_ci NOT NULL default '',
  `iso_code_3` varchar(3) collate utf8_unicode_ci NOT NULL default '',
  `address_format` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`countryid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240 ;

-- 
-- Dumping data for table `country`
-- 

INSERT INTO `country` VALUES (1, 'Afghanistan', 'AF', 'AFG', '');
INSERT INTO `country` VALUES (2, 'Albania', 'AL', 'ALB', '');
INSERT INTO `country` VALUES (3, 'Algeria', 'DZ', 'DZA', '');
INSERT INTO `country` VALUES (4, 'American Samoa', 'AS', 'ASM', '');
INSERT INTO `country` VALUES (5, 'Andorra', 'AD', 'AND', '');
INSERT INTO `country` VALUES (6, 'Angola', 'AO', 'AGO', '');
INSERT INTO `country` VALUES (7, 'Anguilla', 'AI', 'AIA', '');
INSERT INTO `country` VALUES (8, 'Antarctica', 'AQ', 'ATA', '');
INSERT INTO `country` VALUES (9, 'Antigua and Barbuda', 'AG', 'ATG', '');
INSERT INTO `country` VALUES (10, 'Argentina', 'AR', 'ARG', '');
INSERT INTO `country` VALUES (11, 'Armenia', 'AM', 'ARM', '');
INSERT INTO `country` VALUES (12, 'Aruba', 'AW', 'ABW', '');
INSERT INTO `country` VALUES (13, 'Australia', 'AU', 'AUS', '');
INSERT INTO `country` VALUES (14, 'Austria', 'AT', 'AUT', '');
INSERT INTO `country` VALUES (15, 'Azerbaijan', 'AZ', 'AZE', '');
INSERT INTO `country` VALUES (16, 'Bahamas', 'BS', 'BHS', '');
INSERT INTO `country` VALUES (17, 'Bahrain', 'BH', 'BHR', '');
INSERT INTO `country` VALUES (18, 'Bangladesh', 'BD', 'BGD', '');
INSERT INTO `country` VALUES (19, 'Barbados', 'BB', 'BRB', '');
INSERT INTO `country` VALUES (20, 'Belarus', 'BY', 'BLR', '');
INSERT INTO `country` VALUES (21, 'Belgium', 'BE', 'BEL', '');
INSERT INTO `country` VALUES (22, 'Belize', 'BZ', 'BLZ', '');
INSERT INTO `country` VALUES (23, 'Benin', 'BJ', 'BEN', '');
INSERT INTO `country` VALUES (24, 'Bermuda', 'BM', 'BMU', '');
INSERT INTO `country` VALUES (25, 'Bhutan', 'BT', 'BTN', '');
INSERT INTO `country` VALUES (26, 'Bolivia', 'BO', 'BOL', '');
INSERT INTO `country` VALUES (27, 'Bosnia and Herzegowina', 'BA', 'BIH', '');
INSERT INTO `country` VALUES (28, 'Botswana', 'BW', 'BWA', '');
INSERT INTO `country` VALUES (29, 'Bouvet Island', 'BV', 'BVT', '');
INSERT INTO `country` VALUES (30, 'Brazil', 'BR', 'BRA', '');
INSERT INTO `country` VALUES (31, 'British Indian Ocean Territory', 'IO', 'IOT', '');
INSERT INTO `country` VALUES (32, 'Brunei Darussalam', 'BN', 'BRN', '');
INSERT INTO `country` VALUES (33, 'Bulgaria', 'BG', 'BGR', '');
INSERT INTO `country` VALUES (34, 'Burkina Faso', 'BF', 'BFA', '');
INSERT INTO `country` VALUES (35, 'Burundi', 'BI', 'BDI', '');
INSERT INTO `country` VALUES (36, 'Cambodia', 'KH', 'KHM', '');
INSERT INTO `country` VALUES (37, 'Cameroon', 'CM', 'CMR', '');
INSERT INTO `country` VALUES (38, 'Canada', 'CA', 'CAN', '');
INSERT INTO `country` VALUES (39, 'Cape Verde', 'CV', 'CPV', '');
INSERT INTO `country` VALUES (40, 'Cayman Islands', 'KY', 'CYM', '');
INSERT INTO `country` VALUES (41, 'Central African Republic', 'CF', 'CAF', '');
INSERT INTO `country` VALUES (42, 'Chad', 'TD', 'TCD', '');
INSERT INTO `country` VALUES (43, 'Chile', 'CL', 'CHL', '');
INSERT INTO `country` VALUES (44, 'China', 'CN', 'CHN', '');
INSERT INTO `country` VALUES (45, 'Christmas Island', 'CX', 'CXR', '');
INSERT INTO `country` VALUES (46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '');
INSERT INTO `country` VALUES (47, 'Colombia', 'CO', 'COL', '');
INSERT INTO `country` VALUES (48, 'Comoros', 'KM', 'COM', '');
INSERT INTO `country` VALUES (49, 'Congo', 'CG', 'COG', '');
INSERT INTO `country` VALUES (50, 'Cook Islands', 'CK', 'COK', '');
INSERT INTO `country` VALUES (51, 'Costa Rica', 'CR', 'CRI', '');
INSERT INTO `country` VALUES (52, 'Cote D''Ivoire', 'CI', 'CIV', '');
INSERT INTO `country` VALUES (53, 'Croatia', 'HR', 'HRV', '');
INSERT INTO `country` VALUES (54, 'Cuba', 'CU', 'CUB', '');
INSERT INTO `country` VALUES (55, 'Cyprus', 'CY', 'CYP', '');
INSERT INTO `country` VALUES (56, 'Czech Republic', 'CZ', 'CZE', '');
INSERT INTO `country` VALUES (57, 'Denmark', 'DK', 'DNK', '');
INSERT INTO `country` VALUES (58, 'Djibouti', 'DJ', 'DJI', '');
INSERT INTO `country` VALUES (59, 'Dominica', 'DM', 'DMA', '');
INSERT INTO `country` VALUES (60, 'Dominican Republic', 'DO', 'DOM', '');
INSERT INTO `country` VALUES (61, 'East Timor', 'TP', 'TMP', '');
INSERT INTO `country` VALUES (62, 'Ecuador', 'EC', 'ECU', '');
INSERT INTO `country` VALUES (63, 'Egypt', 'EG', 'EGY', '');
INSERT INTO `country` VALUES (64, 'El Salvador', 'SV', 'SLV', '');
INSERT INTO `country` VALUES (65, 'Equatorial Guinea', 'GQ', 'GNQ', '');
INSERT INTO `country` VALUES (66, 'Eritrea', 'ER', 'ERI', '');
INSERT INTO `country` VALUES (67, 'Estonia', 'EE', 'EST', '');
INSERT INTO `country` VALUES (68, 'Ethiopia', 'ET', 'ETH', '');
INSERT INTO `country` VALUES (69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '');
INSERT INTO `country` VALUES (70, 'Faroe Islands', 'FO', 'FRO', '');
INSERT INTO `country` VALUES (71, 'Fiji', 'FJ', 'FJI', '');
INSERT INTO `country` VALUES (72, 'Finland', 'FI', 'FIN', '');
INSERT INTO `country` VALUES (73, 'France', 'FR', 'FRA', '');
INSERT INTO `country` VALUES (74, 'France, Metropolitan', 'FX', 'FXX', '');
INSERT INTO `country` VALUES (75, 'French Guiana', 'GF', 'GUF', '');
INSERT INTO `country` VALUES (76, 'French Polynesia', 'PF', 'PYF', '');
INSERT INTO `country` VALUES (77, 'French Southern Territories', 'TF', 'ATF', '');
INSERT INTO `country` VALUES (78, 'Gabon', 'GA', 'GAB', '');
INSERT INTO `country` VALUES (79, 'Gambia', 'GM', 'GMB', '');
INSERT INTO `country` VALUES (80, 'Georgia', 'GE', 'GEO', '');
INSERT INTO `country` VALUES (81, 'Germany', 'DE', 'DEU', '');
INSERT INTO `country` VALUES (82, 'Ghana', 'GH', 'GHA', '');
INSERT INTO `country` VALUES (83, 'Gibraltar', 'GI', 'GIB', '');
INSERT INTO `country` VALUES (84, 'Greece', 'GR', 'GRC', '');
INSERT INTO `country` VALUES (85, 'Greenland', 'GL', 'GRL', '');
INSERT INTO `country` VALUES (86, 'Grenada', 'GD', 'GRD', '');
INSERT INTO `country` VALUES (87, 'Guadeloupe', 'GP', 'GLP', '');
INSERT INTO `country` VALUES (88, 'Guam', 'GU', 'GUM', '');
INSERT INTO `country` VALUES (89, 'Guatemala', 'GT', 'GTM', '');
INSERT INTO `country` VALUES (90, 'Guinea', 'GN', 'GIN', '');
INSERT INTO `country` VALUES (91, 'Guinea-bissau', 'GW', 'GNB', '');
INSERT INTO `country` VALUES (92, 'Guyana', 'GY', 'GUY', '');
INSERT INTO `country` VALUES (93, 'Haiti', 'HT', 'HTI', '');
INSERT INTO `country` VALUES (94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '');
INSERT INTO `country` VALUES (95, 'Honduras', 'HN', 'HND', '');
INSERT INTO `country` VALUES (96, 'Hong Kong', 'HK', 'HKG', '');
INSERT INTO `country` VALUES (97, 'Hungary', 'HU', 'HUN', '');
INSERT INTO `country` VALUES (98, 'Iceland', 'IS', 'ISL', '');
INSERT INTO `country` VALUES (99, 'India', 'IN', 'IND', '');
INSERT INTO `country` VALUES (100, 'Indonesia', 'ID', 'IDN', '');
INSERT INTO `country` VALUES (101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '');
INSERT INTO `country` VALUES (102, 'Iraq', 'IQ', 'IRQ', '');
INSERT INTO `country` VALUES (103, 'Ireland', 'IE', 'IRL', '');
INSERT INTO `country` VALUES (104, 'Israel', 'IL', 'ISR', '');
INSERT INTO `country` VALUES (105, 'Italy', 'IT', 'ITA', '');
INSERT INTO `country` VALUES (106, 'Jamaica', 'JM', 'JAM', '');
INSERT INTO `country` VALUES (107, 'Japan', 'JP', 'JPN', '');
INSERT INTO `country` VALUES (108, 'Jordan', 'JO', 'JOR', '');
INSERT INTO `country` VALUES (109, 'Kazakhstan', 'KZ', 'KAZ', '');
INSERT INTO `country` VALUES (110, 'Kenya', 'KE', 'KEN', '');
INSERT INTO `country` VALUES (111, 'Kiribati', 'KI', 'KIR', '');
INSERT INTO `country` VALUES (112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', '');
INSERT INTO `country` VALUES (113, 'Korea, Republic of', 'KR', 'KOR', '');
INSERT INTO `country` VALUES (114, 'Kuwait', 'KW', 'KWT', '');
INSERT INTO `country` VALUES (115, 'Kyrgyzstan', 'KG', 'KGZ', '');
INSERT INTO `country` VALUES (116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '');
INSERT INTO `country` VALUES (117, 'Latvia', 'LV', 'LVA', '');
INSERT INTO `country` VALUES (118, 'Lebanon', 'LB', 'LBN', '');
INSERT INTO `country` VALUES (119, 'Lesotho', 'LS', 'LSO', '');
INSERT INTO `country` VALUES (120, 'Liberia', 'LR', 'LBR', '');
INSERT INTO `country` VALUES (121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '');
INSERT INTO `country` VALUES (122, 'Liechtenstein', 'LI', 'LIE', '');
INSERT INTO `country` VALUES (123, 'Lithuania', 'LT', 'LTU', '');
INSERT INTO `country` VALUES (124, 'Luxembourg', 'LU', 'LUX', '');
INSERT INTO `country` VALUES (125, 'Macau', 'MO', 'MAC', '');
INSERT INTO `country` VALUES (126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', '');
INSERT INTO `country` VALUES (127, 'Madagascar', 'MG', 'MDG', '');
INSERT INTO `country` VALUES (128, 'Malawi', 'MW', 'MWI', '');
INSERT INTO `country` VALUES (129, 'Malaysia', 'MY', 'MYS', '');
INSERT INTO `country` VALUES (130, 'Maldives', 'MV', 'MDV', '');
INSERT INTO `country` VALUES (131, 'Mali', 'ML', 'MLI', '');
INSERT INTO `country` VALUES (132, 'Malta', 'MT', 'MLT', '');
INSERT INTO `country` VALUES (133, 'Marshall Islands', 'MH', 'MHL', '');
INSERT INTO `country` VALUES (134, 'Martinique', 'MQ', 'MTQ', '');
INSERT INTO `country` VALUES (135, 'Mauritania', 'MR', 'MRT', '');
INSERT INTO `country` VALUES (136, 'Mauritius', 'MU', 'MUS', '');
INSERT INTO `country` VALUES (137, 'Mayotte', 'YT', 'MYT', '');
INSERT INTO `country` VALUES (138, 'Mexico', 'MX', 'MEX', '');
INSERT INTO `country` VALUES (139, 'Micronesia, Federated States of', 'FM', 'FSM', '');
INSERT INTO `country` VALUES (140, 'Moldova, Republic of', 'MD', 'MDA', '');
INSERT INTO `country` VALUES (141, 'Monaco', 'MC', 'MCO', '');
INSERT INTO `country` VALUES (142, 'Mongolia', 'MN', 'MNG', '');
INSERT INTO `country` VALUES (143, 'Montserrat', 'MS', 'MSR', '');
INSERT INTO `country` VALUES (144, 'Morocco', 'MA', 'MAR', '');
INSERT INTO `country` VALUES (145, 'Mozambique', 'MZ', 'MOZ', '');
INSERT INTO `country` VALUES (146, 'Myanmar', 'MM', 'MMR', '');
INSERT INTO `country` VALUES (147, 'Namibia', 'NA', 'NAM', '');
INSERT INTO `country` VALUES (148, 'Nauru', 'NR', 'NRU', '');
INSERT INTO `country` VALUES (149, 'Nepal', 'NP', 'NPL', '');
INSERT INTO `country` VALUES (150, 'Netherlands', 'NL', 'NLD', '');
INSERT INTO `country` VALUES (151, 'Netherlands Antilles', 'AN', 'ANT', '');
INSERT INTO `country` VALUES (152, 'New Caledonia', 'NC', 'NCL', '');
INSERT INTO `country` VALUES (153, 'New Zealand', 'NZ', 'NZL', '');
INSERT INTO `country` VALUES (154, 'Nicaragua', 'NI', 'NIC', '');
INSERT INTO `country` VALUES (155, 'Niger', 'NE', 'NER', '');
INSERT INTO `country` VALUES (156, 'Nigeria', 'NG', 'NGA', '');
INSERT INTO `country` VALUES (157, 'Niue', 'NU', 'NIU', '');
INSERT INTO `country` VALUES (158, 'Norfolk Island', 'NF', 'NFK', '');
INSERT INTO `country` VALUES (159, 'Northern Mariana Islands', 'MP', 'MNP', '');
INSERT INTO `country` VALUES (160, 'Norway', 'NO', 'NOR', '');
INSERT INTO `country` VALUES (161, 'Oman', 'OM', 'OMN', '');
INSERT INTO `country` VALUES (162, 'Pakistan', 'PK', 'PAK', '');
INSERT INTO `country` VALUES (163, 'Palau', 'PW', 'PLW', '');
INSERT INTO `country` VALUES (164, 'Panama', 'PA', 'PAN', '');
INSERT INTO `country` VALUES (165, 'Papua New Guinea', 'PG', 'PNG', '');
INSERT INTO `country` VALUES (166, 'Paraguay', 'PY', 'PRY', '');
INSERT INTO `country` VALUES (167, 'Peru', 'PE', 'PER', '');
INSERT INTO `country` VALUES (168, 'Philippines', 'PH', 'PHL', '');
INSERT INTO `country` VALUES (169, 'Pitcairn', 'PN', 'PCN', '');
INSERT INTO `country` VALUES (170, 'Poland', 'PL', 'POL', '');
INSERT INTO `country` VALUES (171, 'Portugal', 'PT', 'PRT', '');
INSERT INTO `country` VALUES (172, 'Puerto Rico', 'PR', 'PRI', '');
INSERT INTO `country` VALUES (173, 'Qatar', 'QA', 'QAT', '');
INSERT INTO `country` VALUES (174, 'Reunion', 'RE', 'REU', '');
INSERT INTO `country` VALUES (175, 'Romania', 'RO', 'ROM', '');
INSERT INTO `country` VALUES (176, 'Russian Federation', 'RU', 'RUS', '');
INSERT INTO `country` VALUES (177, 'Rwanda', 'RW', 'RWA', '');
INSERT INTO `country` VALUES (178, 'Saint Kitts and Nevis', 'KN', 'KNA', '');
INSERT INTO `country` VALUES (179, 'Saint Lucia', 'LC', 'LCA', '');
INSERT INTO `country` VALUES (180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '');
INSERT INTO `country` VALUES (181, 'Samoa', 'WS', 'WSM', '');
INSERT INTO `country` VALUES (182, 'San Marino', 'SM', 'SMR', '');
INSERT INTO `country` VALUES (183, 'Sao Tome and Principe', 'ST', 'STP', '');
INSERT INTO `country` VALUES (184, 'Saudi Arabia', 'SA', 'SAU', '');
INSERT INTO `country` VALUES (185, 'Senegal', 'SN', 'SEN', '');
INSERT INTO `country` VALUES (186, 'Seychelles', 'SC', 'SYC', '');
INSERT INTO `country` VALUES (187, 'Sierra Leone', 'SL', 'SLE', '');
INSERT INTO `country` VALUES (188, 'Singapore', 'SG', 'SGP', '');
INSERT INTO `country` VALUES (189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', '');
INSERT INTO `country` VALUES (190, 'Slovenia', 'SI', 'SVN', '');
INSERT INTO `country` VALUES (191, 'Solomon Islands', 'SB', 'SLB', '');
INSERT INTO `country` VALUES (192, 'Somalia', 'SO', 'SOM', '');
INSERT INTO `country` VALUES (193, 'South Africa', 'ZA', 'ZAF', '');
INSERT INTO `country` VALUES (194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '');
INSERT INTO `country` VALUES (195, 'Spain', 'ES', 'ESP', '');
INSERT INTO `country` VALUES (196, 'Sri Lanka', 'LK', 'LKA', '');
INSERT INTO `country` VALUES (197, 'St. Helena', 'SH', 'SHN', '');
INSERT INTO `country` VALUES (198, 'St. Pierre and Miquelon', 'PM', 'SPM', '');
INSERT INTO `country` VALUES (199, 'Sudan', 'SD', 'SDN', '');
INSERT INTO `country` VALUES (200, 'Suriname', 'SR', 'SUR', '');
INSERT INTO `country` VALUES (201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '');
INSERT INTO `country` VALUES (202, 'Swaziland', 'SZ', 'SWZ', '');
INSERT INTO `country` VALUES (203, 'Sweden', 'SE', 'SWE', '');
INSERT INTO `country` VALUES (204, 'Switzerland', 'CH', 'CHE', '');
INSERT INTO `country` VALUES (205, 'Syrian Arab Republic', 'SY', 'SYR', '');
INSERT INTO `country` VALUES (206, 'Taiwan', 'TW', 'TWN', '');
INSERT INTO `country` VALUES (207, 'Tajikistan', 'TJ', 'TJK', '');
INSERT INTO `country` VALUES (208, 'Tanzania, United Republic of', 'TZ', 'TZA', '');
INSERT INTO `country` VALUES (209, 'Thailand', 'TH', 'THA', '');
INSERT INTO `country` VALUES (210, 'Togo', 'TG', 'TGO', '');
INSERT INTO `country` VALUES (211, 'Tokelau', 'TK', 'TKL', '');
INSERT INTO `country` VALUES (212, 'Tonga', 'TO', 'TON', '');
INSERT INTO `country` VALUES (213, 'Trinidad and Tobago', 'TT', 'TTO', '');
INSERT INTO `country` VALUES (214, 'Tunisia', 'TN', 'TUN', '');
INSERT INTO `country` VALUES (215, 'Turkey', 'TR', 'TUR', '');
INSERT INTO `country` VALUES (216, 'Turkmenistan', 'TM', 'TKM', '');
INSERT INTO `country` VALUES (217, 'Turks and Caicos Islands', 'TC', 'TCA', '');
INSERT INTO `country` VALUES (218, 'Tuvalu', 'TV', 'TUV', '');
INSERT INTO `country` VALUES (219, 'Uganda', 'UG', 'UGA', '');
INSERT INTO `country` VALUES (220, 'Ukraine', 'UA', 'UKR', '');
INSERT INTO `country` VALUES (221, 'United Arab Emirates', 'AE', 'ARE', '');
INSERT INTO `country` VALUES (222, 'United Kingdom', 'GB', 'GBR', '');
INSERT INTO `country` VALUES (223, 'United States', 'US', 'USA', '');
INSERT INTO `country` VALUES (224, 'United States Minor Outlying Islands', 'UM', 'UMI', '');
INSERT INTO `country` VALUES (225, 'Uruguay', 'UY', 'URY', '');
INSERT INTO `country` VALUES (226, 'Uzbekistan', 'UZ', 'UZB', '');
INSERT INTO `country` VALUES (227, 'Vanuatu', 'VU', 'VUT', '');
INSERT INTO `country` VALUES (228, 'Vatican City State (Holy See)', 'VA', 'VAT', '');
INSERT INTO `country` VALUES (229, 'Venezuela', 'VE', 'VEN', '');
INSERT INTO `country` VALUES (230, 'Viet Nam', 'VN', 'VNM', '');
INSERT INTO `country` VALUES (231, 'Virgin Islands (British)', 'VG', 'VGB', '');
INSERT INTO `country` VALUES (232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '');
INSERT INTO `country` VALUES (233, 'Wallis and Futuna Islands', 'WF', 'WLF', '');
INSERT INTO `country` VALUES (234, 'Western Sahara', 'EH', 'ESH', '');
INSERT INTO `country` VALUES (235, 'Yemen', 'YE', 'YEM', '');
INSERT INTO `country` VALUES (236, 'Yugoslavia', 'YU', 'YUG', '');
INSERT INTO `country` VALUES (237, 'Zaire', 'ZR', 'ZAR', '');
INSERT INTO `country` VALUES (238, 'Zambia', 'ZM', 'ZMB', '');
INSERT INTO `country` VALUES (239, 'Zimbabwe', 'ZW', 'ZWE', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `customer`
-- 

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL auto_increment,
  `customer_group_id` int(11) NOT NULL,
  `siteid` varchar(30) character set utf8 default NULL,
  `firstname` varchar(200) character set utf8 NOT NULL,
  `lastname` varchar(200) character set utf8 NOT NULL,
  `email` varchar(100) character set utf8 NOT NULL,
  `telephone` varchar(100) character set utf8 NOT NULL,
  `fax` varchar(50) character set utf8 NOT NULL,
  `password` varchar(50) character set utf8 NOT NULL,
  `salt` varchar(100) character set utf8 NOT NULL,
  `cart` text character set utf8 NOT NULL,
  `wishlist` text character set utf8 NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `addressid` int(11) NOT NULL,
  `ip` int(50) NOT NULL,
  `status` int(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) character set utf8 NOT NULL,
  `activecode` varchar(50) character set utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_group`
-- 

CREATE TABLE `customer_group` (
  `customer_group_id` int(11) NOT NULL auto_increment,
  `siteid` varchar(30) NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_group`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_group_description`
-- 

CREATE TABLE `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `languageid` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`customer_group_id`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `customer_group_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_ip`
-- 

CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_ip`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_ip_blacklist`
-- 

CREATE TABLE `customer_ip_blacklist` (
  `customer_ip_blacklist_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY  (`customer_ip_blacklist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_ip_blacklist`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_online`
-- 

CREATE TABLE `customer_online` (
  `customer_online_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_online_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_online`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_reward`
-- 

CREATE TABLE `customer_reward` (
  `customer_reward_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_reward`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `dictionary`
-- 

CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL auto_increment,
  `key` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `dictionary`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `dictionary_description`
-- 

CREATE TABLE `dictionary_description` (
  `id` int(11) NOT NULL,
  `language_id` varchar(50) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY  (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `dictionary_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `elife_nhantin`
-- 

CREATE TABLE `elife_nhantin` (
  `id` bigint(20) NOT NULL auto_increment,
  `hoten` text collate utf8_unicode_ci NOT NULL,
  `email` text collate utf8_unicode_ci NOT NULL,
  `ngaydangky` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `elife_nhantin`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `email`
-- 

CREATE TABLE `email` (
  `id` int(11) NOT NULL auto_increment,
  `email` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `email`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `email_description`
-- 

CREATE TABLE `email_description` (
  `id` bigint(20) NOT NULL auto_increment,
  `emailid` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `languageid` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `email_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `file`
-- 

CREATE TABLE `file` (
  `fileid` bigint(20) NOT NULL auto_increment,
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
  PRIMARY KEY  (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `file`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `filetype`
-- 

CREATE TABLE `filetype` (
  `id` bigint(20) NOT NULL auto_increment,
  `filetypeid` varchar(20) NOT NULL,
  `listextension` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `filetype`
-- 

INSERT INTO `filetype` VALUES (1, 'image', 'jpg, jpeg, png, gif');
INSERT INTO `filetype` VALUES (2, 'video', 'flv, mp4, dat, avi, wmv, mpeg');
INSERT INTO `filetype` VALUES (12, 'any', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `language`
-- 

CREATE TABLE `language` (
  `id` bigint(20) NOT NULL auto_increment,
  `languageid` varchar(50) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) default NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sortOrder` int(3) default NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `language`
-- 

INSERT INTO `language` VALUES (1, 'vn', 'Việt Nam', 'vn', 'en_US.UTF-8,en_US,en-gb,vietnam', 'vn.png', 'vietnam', 'vietnam', 1, 1);
INSERT INTO `language` VALUES (2, 'en', 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'en.png', 'english', 'english', 2, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `layout`
-- 

CREATE TABLE `layout` (
  `id` bigint(20) NOT NULL auto_increment,
  `layoutid` varchar(50) character set utf8 NOT NULL,
  `imagedemo` text collate utf8_unicode_ci NOT NULL,
  `linkdemo` text collate utf8_unicode_ci NOT NULL,
  `layouttype` varchar(50) collate utf8_unicode_ci NOT NULL,
  `sidebarleft` bigint(20) NOT NULL,
  `sidebarright` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `layout`
-- 

INSERT INTO `layout` VALUES (1, 'default_layout', 'upload/elife_logo.png', 'http://localhost/demo/upload/', 'rightsidebar', 0, 2);
INSERT INTO `layout` VALUES (2, 'homepage', '', '', 'rightsidebar', 0, 2);
INSERT INTO `layout` VALUES (10, 'contact', '', '', 'nosidebar', 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `layout_dashboard`
-- 

CREATE TABLE `layout_dashboard` (
  `layoutid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_dashboard`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `layout_description`
-- 

CREATE TABLE `layout_description` (
  `layoutid` varchar(250) character set utf8 NOT NULL,
  `layoutname` text collate utf8_unicode_ci NOT NULL,
  `languageid` varchar(50) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_description`
-- 

INSERT INTO `layout_description` VALUES ('default_layout', 'Mặc định', 'vn');
INSERT INTO `layout_description` VALUES ('contact', 'Liên hệ', 'vn');
INSERT INTO `layout_description` VALUES ('contact', 'Contact', 'en');
INSERT INTO `layout_description` VALUES ('homepage', 'Homepage', 'en');
INSERT INTO `layout_description` VALUES ('homepage', 'Trang chủ', 'vn');
INSERT INTO `layout_description` VALUES ('default_layout', 'Default', 'en');

-- --------------------------------------------------------

-- 
-- Table structure for table `layout_sidebar`
-- 

CREATE TABLE `layout_sidebar` (
  `layoutid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sidebarid` bigint(20) NOT NULL,
  `position` varchar(50) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_sidebar`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `layout_splash`
-- 

CREATE TABLE `layout_splash` (
  `layoutid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_splash`
-- 

INSERT INTO `layout_splash` VALUES ('homepage', 'edwinbanner', 2);
INSERT INTO `layout_splash` VALUES ('homepage', 'homesimpleslides', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `media`
-- 

CREATE TABLE `media` (
  `id` bigint(20) NOT NULL auto_increment,
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
  `statusdate` datetime default NULL,
  `statusby` varchar(50) default NULL,
  `updateddate` datetime default NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `author` (`author`),
  FULLTEXT KEY `source` (`source`),
  FULLTEXT KEY `medianame` (`title`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `summary` (`summary`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- 
-- Dumping data for table `media`
-- 

INSERT INTO `media` VALUES (1, 'default13674905231', '', 'media_news', '[95]', 'admin', 'Thay SDD', '', '', 'vn', '&lt;p&gt;\r\n	Với sự trang bị th&amp;ecirc;m SSD thay cho HDD bạn c&amp;ograve;n tiết kiệm pin th&amp;ecirc;m cho laptop, laptop vận h&amp;agrave;nh m&amp;aacute;t hơn (do SSD kh&amp;ocirc;ng quay, &amp;iacute;t tỏa nhiệt.&lt;/p&gt;', '&lt;p&gt;\r\n	Với sự trang bị th&amp;ecirc;m SSD thay cho HDD bạn c&amp;ograve;n tiết kiệm pin th&amp;ecirc;m cho laptop, laptop vận h&amp;agrave;nh m&amp;aacute;t hơn (do SSD kh&amp;ocirc;ng quay, &amp;iacute;t tỏa nhiệt. N&amp;oacute;i như vậy để biết rằng việc thay thế SSD thay cho HDD l&amp;agrave; lựa chọn tuyệt vời nhất khi c&amp;aacute;c bạn muốn n&amp;acirc;ng cấp cho laptop của m&amp;igrave;nh.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, 'upload/hdd.png', 0, '', '', '', 14, 0, 'active', '', '2013-05-02 17:28:43', 'admin', '2013-07-12 09:26:22');
INSERT INTO `media` VALUES (2, 'default13674974421', '', 'media_news', '[95]', 'admin', 'Hướng dẫn sử dụng adapter sao cho hiệu quả', '', '', 'vn', '&lt;p&gt;\r\n	Bộ chuyển đổi (adapter) l&amp;agrave; một thiết bị kh&amp;ocirc;ng thể thiếu khi sử dụng laptop hoặc nhiều thiết bị điện tử kh&amp;aacute;c. Nếu sử dụng v&amp;agrave; bảo quản adapter kh&amp;ocirc;ng đ&amp;uacute;ng c&amp;aacute;ch th&amp;igrave; dễ dẫn đến hư hỏng. Dưới đ&amp;acirc;y l&amp;agrave; một v&amp;agrave;i mẹo vặt:&lt;/p&gt;', '&lt;p&gt;\r\n	Bộ chuyển đổi (adapter) l&amp;agrave; một thiết bị kh&amp;ocirc;ng thể thiếu khi sử dụng laptop hoặc nhiều thiết bị điện tử kh&amp;aacute;c. Nếu sử dụng v&amp;agrave; bảo quản adapter kh&amp;ocirc;ng đ&amp;uacute;ng c&amp;aacute;ch th&amp;igrave; dễ dẫn đến hư hỏng. Dưới đ&amp;acirc;y l&amp;agrave; một v&amp;agrave;i mẹo vặt:&lt;/p&gt;\r\n&lt;p&gt;\r\n	1.&amp;nbsp;N&amp;ecirc;n cấp điện cho adapter trước mới cắm d&amp;acirc;y cấp nguồn của adapter v&amp;agrave;o laptop. Điều n&amp;agrave;y gi&amp;uacute;p adapter tr&amp;aacute;nh bị sốc điện cũng như đảm bảo an to&amp;agrave;n cho laptop khi c&amp;oacute; c&amp;aacute;c sự cố về điện.&lt;/p&gt;\r\n&lt;p&gt;\r\n	2.&amp;nbsp;Khi tắt laptop, h&amp;atilde;y th&amp;aacute;o d&amp;acirc;y từ m&amp;aacute;y trước, sau đ&amp;oacute; mới r&amp;uacute;t d&amp;acirc;y nguồn của adapter ra khỏi ổ cắm điện. N&amp;ecirc;n th&amp;aacute;o lắp nhẹ nh&amp;agrave;ng để tr&amp;aacute;nh &amp;ldquo;chờn&amp;rdquo; c&amp;aacute;c điểm tiếp x&amp;uacute;c.&lt;/p&gt;\r\n&lt;p&gt;\r\n	3.&amp;nbsp;Thao t&amp;aacute;c nhẹ nh&amp;agrave;ng với c&amp;aacute;c thiết bị điện của adapter, kh&amp;ocirc;ng n&amp;ecirc;n bẻ g&amp;oacute;c ch&amp;uacute;ng v&amp;igrave; bạn c&amp;oacute; thể l&amp;agrave;m đứt c&amp;aacute;c sợi d&amp;acirc;y đồng b&amp;ecirc;n trong dẫn đến hoạt động chập chờn v&amp;agrave; c&amp;oacute; thể g&amp;acirc;y ch&amp;aacute;y nổ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	4.&amp;nbsp;Kh&amp;ocirc;ng n&amp;ecirc;n r&amp;uacute;t d&amp;acirc;y bằng c&amp;aacute;ch nắm tr&amp;ecirc;n th&amp;acirc;n d&amp;acirc;y m&amp;agrave; h&amp;atilde;y cầm tại vị tr&amp;iacute; ph&amp;iacute;ch cắm, hoặc kh&amp;ocirc;ng n&amp;ecirc;n để d&amp;acirc;y qu&amp;aacute; căng khi vị tr&amp;iacute; cấp điện ở xa laptop. Quấn d&amp;acirc;y gọn g&amp;agrave;ng sau khi sử dụng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	5.&amp;nbsp;Trong khi sử dụng, phải để adapter ở nơi tho&amp;aacute;ng m&amp;aacute;t, tr&amp;aacute;nh để gần những vật dụng ph&amp;aacute;t nhiệt hoặc che phủ bởi c&amp;aacute;c vật dụng kh&amp;aacute;c như: s&amp;aacute;ch, b&amp;aacute;o, quần &amp;aacute;o&amp;hellip;, điều n&amp;agrave;y sẽ l&amp;agrave;m cho adapter mau n&amp;oacute;ng v&amp;agrave; dẫn đến hư hỏng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	6.&amp;nbsp;Tr&amp;aacute;nh l&amp;agrave;m rơi adapter trong qu&amp;aacute; tr&amp;igrave;nh sử dụng. Một v&amp;agrave;i adapter c&amp;oacute; gắn k&amp;egrave;m một d&amp;acirc;y đai cao su gi&amp;uacute;p bạn dể d&amp;agrave;ng cố định vị tr&amp;iacute; cũng như giữ c&amp;aacute;c sợi d&amp;acirc;y điện được gọn g&amp;agrave;ng trước khi cho v&amp;agrave;o t&amp;uacute;i x&amp;aacute;ch.&lt;/p&gt;\r\n&lt;p&gt;\r\n	7.&amp;nbsp;Kh&amp;ocirc;ng n&amp;ecirc;n để adapter ở nơi dễ tiếp x&amp;uacute;c với chất lỏng, nhất l&amp;agrave; nước. Mặc d&amp;ugrave; kh&amp;ocirc;ng g&amp;acirc;y tổn hại nhiều cho adapter nhưng nguy cơ nước rơi v&amp;agrave;o c&amp;aacute;c điểm tiếp x&amp;uacute;c điện c&amp;oacute; thể g&amp;acirc;y ra ch&amp;aacute;y nổ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	8.&amp;nbsp;Sau c&amp;ugrave;ng n&amp;ecirc;n sử dụng adapter zin theo m&amp;aacute;y ( của h&amp;atilde;ng ), v&amp;igrave; c&amp;aacute;c adapter thay thế h&amp;agrave;ng TQ chất lượng k&amp;eacute;m, kh&amp;ocirc;ng đủ d&amp;ograve;ng, đủ &amp;aacute;p, nhanh hỏng pin, dễ g&amp;acirc;y ch&amp;aacute;y nổ cho m&amp;aacute;y t&amp;iacute;nh.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, 'upload/adapter.png', 0, '', '', '', 32, 0, 'active', '', '2013-05-02 19:24:02', 'admin', '2013-07-12 09:23:53');
INSERT INTO `media` VALUES (3, 'default13675109091', '', 'media_galleryalbum', '[119]', 'admin', 'HDD LAPTOP', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/hdd.png', 0, '', '', '', 0, 0, 'active', '', '2013-05-02 23:10:00', 'admin', '2013-07-20 11:11:28');
INSERT INTO `media` VALUES (4, 'default13675111551', '', 'media_news', '[120]', 'admin', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', '', '', 'vn', '&lt;p&gt;\r\n	&lt;iframe frameborder=&quot;0&quot; height=&quot;400&quot; scrolling=&quot;no&quot; src=&quot;http://www.youtube.com/embed/SgIyoG_AXBs&quot; width=&quot;510&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	video giới thiệu trung t&amp;acirc;m sửa chữa laptop ho&amp;agrave;ng vũ&lt;/p&gt;', 'video sửa laptop', '', 'video giới thiệu trung tâm sửa chữa laptop hoàng vũ', 'sửa laptop \r\nsửa laptop uy tín\r\nsửa laptop lấy liền\r\nsửa laptop hồ chí minh\r\nsửa laptop chuyên nghiệp\r\nsửa laptop hoàng vũ', 'sửa laptop hoàng vũ sửa laptop lấy liền sửa laptop uy tín', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 2, 0, 'active', '', '2013-05-03 09:41:50', 'admin', '2013-07-20 23:44:41');
INSERT INTO `media` VALUES (5, 'default13675541051', '', 'media_news', '[120]', 'admin', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2013-07-20 13:58:26', 'admin', '2013-07-20 13:57:25');
INSERT INTO `media` VALUES (6, 'default13675562041', '', 'media_galleryalbum', '[119]', 'admin', 'XẠC LAPTOP', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/adapter.png', 0, '', '', '', 0, 0, 'active', '', '2013-05-03 11:43:24', 'admin', '2013-07-20 11:11:12');
INSERT INTO `media` VALUES (7, 'default13675564531', '', 'media_galleryalbum', '[119]', 'admin', 'KEYBOAR LAPTOP', '', '', 'vn', '&lt;p&gt;\r\n	cung cấp b&amp;agrave;n ph&amp;iacute;m laptop&lt;/p&gt;', '&lt;p&gt;\r\n	cung cấp b&amp;agrave;n ph&amp;iacute;m laptop&lt;/p&gt;', 'bàn phím laptop', '', 'cung cấp bàn phím laptop', 'cung cấp bàn phím laptop', 'cung cấp bàn phím laptop', 'TRung tâm sửa chữa laptop hoàng vũ', 'www.suachualaptoplaylien.net', 0, 0, 'upload/keyboard.png', 0, '', '', '', 0, 0, 'active', '', '2013-05-03 11:47:33', 'admin', '2013-07-20 11:10:48');
INSERT INTO `media` VALUES (8, 'default13675570951', '', 'media_contactmap', '[27]', 'admin', 'Liên hệ', '', '', 'vn', '&lt;p&gt;\r\n	trung t&amp;acirc;m sửa chữa laptop ho&amp;agrave;ng vũ&lt;/p&gt;', '&lt;h3 style=&quot;margin: 0px 0px 0.3em; padding: 0px; border: 0px; font-weight: normal; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 18.18181800842285px; font-family: inherit; vertical-align: baseline;&quot;&gt;C&amp;Ocirc;NG TY TNHH MTV THẾ GIỚI HO&amp;Agrave;NG VŨ&lt;/span&gt;&lt;/h3&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;Website: http://www.thegioihoangvu.com - YAHOO: laptophoangvu@yahoo.com&lt;/span&gt;&lt;/div&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;Hotline: 0916.472.445 (Mr Vũ)&lt;/span&gt;&lt;/div&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;table style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: top; border-collapse: collapse; border-spacing: 0px;&quot; width=&quot;100%&quot;&gt;\r\n		&lt;tbody style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;\r\n			&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;\r\n				&lt;td style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: top;&quot;&gt;\r\n					&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;\r\n						Địa chỉ: 266/10 T&amp;ocirc; Hiến Th&amp;agrave;nh, P.15, Q.10 TP HCM, Vietnam&lt;/p&gt;\r\n					&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;\r\n						( B&amp;Ecirc;N H&amp;Ocirc;NG TR&amp;Aacute;I SI&amp;Ecirc;U THỊ BIG C T&amp;Ocirc; HIẾN TH&amp;Agrave;NH)&lt;br /&gt;\r\n						Tel: 08.6264.7180 - 0916.472.445 (Mr. Vũ&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'sửa laptop sửa chữa laptop', '', 'trung tâm sửa chữa laptop hoàng vũ', 'trung tâm sửa chữa laptop hoàng vũ', 'trung tâm sửa chữa laptop hoàng vũ', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptophcm.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-05-03 11:58:15', 'admin', '2013-07-20 11:17:07');
INSERT INTO `media` VALUES (9, 'default13675574071', '', 'media_information', '[17]', 'admin', 'Tổng quát về rừng ngập mặn Cần Giờ', '', '', 'vn', '', '&lt;div style=&quot;margin-left:20px;margin-right:20px&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh l&amp;agrave; Th&amp;agrave;nh phố lớn của cả nước, l&amp;agrave; trung t&amp;acirc;m: c&amp;ocirc;ng nghiệp, văn h&amp;oacute;a khoa học kỹ thuật, thương&amp;nbsp;mại, giao dịch v&amp;agrave; l&amp;agrave; đầu mối giao th&amp;ocirc;ng quan trọng của nước ta. Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh được xếp v&amp;agrave;o một trong 55 đ&amp;ocirc; thị lớn của những nước đang ph&amp;aacute;t triển. Th&amp;agrave;nh phố lại nằm trong v&amp;ugrave;ng nhiệt đới, n&amp;oacute;ng ẩm, hệ thống rừng v&amp;agrave; c&amp;acirc;y xanh bị t&amp;agrave;n ph&amp;aacute; nặng nề trong chiến tranh c&amp;ugrave;ng với tiến tr&amp;igrave;nh ph&amp;aacute;t triển của Th&amp;agrave;nh phố đặc biệt l&amp;agrave; qua hơn 20 năm đổi mới, qu&amp;aacute; tr&amp;igrave;nh c&amp;ocirc;ng nghiệp h&amp;oacute;a, đ&amp;ocirc; thị h&amp;oacute;a, hiện đại h&amp;oacute;a với tốc độ nhanh l&amp;agrave;m cho cơ sở hạ tầng Th&amp;agrave;nh phố bị qu&amp;aacute; tải, m&amp;ocirc;i trường ng&amp;agrave;y c&amp;agrave;ng &amp;ocirc; nhiễm bởi c&amp;aacute;c chất thải ng&amp;agrave;y một gia tăng. Ch&amp;iacute;nh v&amp;igrave; vậy ngay từ những ng&amp;agrave;y đầu đất nước được giải ph&amp;oacute;ng, Th&amp;agrave;nh phố đ&amp;atilde; hết sức quan t&amp;acirc;m chỉ đạo x&amp;acirc;y dựng v&amp;agrave; ph&amp;aacute;t triển hệ thống rừng v&amp;agrave; c&amp;acirc;y xanh, c&amp;acirc;y cảnh đa dạng về chủng loại, phong ph&amp;uacute; về hương sắc, trong đ&amp;oacute; c&amp;oacute; Rừng Ngập mặm ven biển Cần Giờ. Đ&amp;oacute; l&amp;agrave; mục ti&amp;ecirc;u m&amp;agrave; 30 năm qua, đ&amp;atilde; biến &amp;ldquo;V&amp;agrave;nh đai trắng&amp;rdquo; của S&amp;agrave;i G&amp;ograve;n xưa th&amp;agrave;nh &amp;ldquo;V&amp;agrave;nh đai xanh&amp;rdquo; tr&amp;ugrave; ph&amp;uacute; của TP Hồ Ch&amp;iacute; Minh h&amp;ocirc;m nay.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Cần Giờ l&amp;agrave; một huyện ngoại th&amp;agrave;nh của TP Hồ Ch&amp;iacute; Minh, l&amp;agrave; cửa ng&amp;otilde; ra biển của Th&amp;agrave;nh phố. Trong chiến tranh Rừng Ngập mặn bị bom đạn v&amp;agrave; chất độc khai hoang rải xuống l&amp;agrave;m cho rừng ngh&amp;egrave;o kiệt, hoang t&amp;agrave;n. Sau khi Cần Giờ nhập về Th&amp;agrave;nh phố, Th&amp;agrave;nh ủy, UBND Th&amp;agrave;nh phố v&amp;agrave; nh&amp;acirc;n d&amp;acirc;n Cần Giờ... đ&amp;atilde; ra sức đầu tư kh&amp;ocirc;i phục lại Rừng, biến v&amp;ugrave;ng đất &amp;ldquo;chết&amp;rdquo; th&amp;agrave;nh &amp;ldquo;l&amp;aacute; phổi xanh&amp;rdquo; của Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh h&amp;ocirc;m nay&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n	&lt;div style=&quot;width:100%; text-align:center&quot;&gt;\r\n		&lt;span style=&quot;color:#000000;&quot;&gt;&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/VN-F-HC-HCG_position_in_metropolitan_area.png&quot; style=&quot;text-align: center;&quot; width=&quot;auto&quot; /&gt;&lt;/span&gt;\r\n		&lt;p&gt;\r\n			&amp;nbsp;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;I. Vị tr&amp;iacute; địa l&amp;yacute;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Vị tr&amp;iacute; địa l&amp;yacute; của Cần Giờ:&amp;nbsp;Rừng ngập mặn Cần Giờ nằm gọn trong huyện Cần Giờ của TP Hồ Ch&amp;iacute; Minh. Đ&amp;acirc;y l&amp;agrave; v&amp;ugrave;ng đất ph&amp;ugrave; sa bồi tụ nằm ở cửa s&amp;ocirc;ng lớn thuộc hệ thống s&amp;ocirc;ng Đồng Nai, S&amp;agrave;i G&amp;ograve;n, V&amp;agrave;m Cỏ.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Tọa độ : từ 10&amp;deg; 22&amp;rsquo;14&amp;rsquo;&amp;rsquo; - 10&amp;deg; 37&amp;rsquo;39&amp;rsquo;&amp;rsquo; vĩ độ Bắc, từ 106&amp;deg; 46&amp;rsquo;12&amp;rsquo;&amp;rsquo;- 107&amp;deg; 00&amp;rsquo;50&amp;rsquo;&amp;rsquo; kinh độ Đ&amp;ocirc;ng. Ph&amp;iacute;a Đ&amp;ocirc;ng tiếp gi&amp;aacute;p với tỉnh Đồng Nai v&amp;agrave; B&amp;agrave; Rịa Vũng T&amp;agrave;u. Ph&amp;iacute;a T&amp;acirc;y gi&amp;aacute;p với tỉnh Tiền Giang&amp;nbsp; v&amp;agrave; tỉnh Long An. Ph&amp;iacute;a Bắc gi&amp;aacute;p với huyện Nh&amp;agrave; B&amp;egrave; TPHCM. Ph&amp;iacute;a Nam gi&amp;aacute;p với&amp;nbsp; biển Đ&amp;ocirc;ng.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;II. Địa h&amp;igrave;nh thổ nhưỡng&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Rừng Ngập mặn Cần Giờ do đất ph&amp;ugrave; sa bồi tụ, mặt đất kh&amp;ocirc;ng thật bằng phẳng, thấp dần từ Bắc xuống Nam. Ở trung t&amp;acirc;m h&amp;igrave;nh th&amp;agrave;nh c&amp;aacute;c l&amp;ograve;ng chảo cao -0,5m - +0,5m. Ngo&amp;agrave;i d&amp;ograve;ng c&amp;aacute;t ven biển Cần Giờ, c&amp;ograve;n c&amp;oacute; n&amp;uacute;i Giồng Ch&amp;ugrave;a (cao 10,1m) v&amp;agrave; một số g&amp;ograve; đất hoặc cồn c&amp;aacute;t rải r&amp;aacute;c cao từ&amp;nbsp;&amp;nbsp; 1 - 2m. &lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Ta c&amp;oacute; thể chia đất đai ở Cần Giờ th&amp;agrave;nh 5 dạng : Đất ngập triều 2 lần trong ng&amp;agrave;y, một lần trong ng&amp;agrave;y, v&amp;agrave;i lần trong th&amp;aacute;ng; ngập v&amp;agrave;o cuối năm, dạng đất cao rất &amp;iacute;t ngập. Từ c&amp;aacute;c thế đất kh&amp;aacute;c nhau, n&amp;ecirc;n độ ngập triều, độ mặn, ph&amp;egrave;n, t&amp;iacute;nh chất&amp;nbsp; l&amp;yacute;-h&amp;oacute;a cũng kh&amp;aacute;c nhau,&amp;nbsp; cho n&amp;ecirc;n việc ph&amp;acirc;n bố c&amp;aacute;c loại c&amp;acirc;y trồng cũng theo những quy luật sinh th&amp;aacute;i chặt chẽ.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;III. Kh&amp;iacute; hậu&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Kh&amp;iacute; hậu Rừng Ngập mặn Cần Giờ mang đặc t&amp;iacute;nh n&amp;oacute;ng ẩm v&amp;agrave; chưa chi phối của qui luật gi&amp;oacute; m&amp;ugrave;a cận x&amp;iacute;ch đạo với&amp;nbsp;2 m&amp;ugrave;a nắng v&amp;agrave; mưa r&amp;otilde; rệt; m&amp;ugrave;a mưa từ th&amp;aacute;ng 5 đến th&amp;aacute;ng 10. M&amp;ugrave;a nắng từ th&amp;aacute;ng 11 đến th&amp;aacute;ng 4 năm sau, nhiệt độ cao v&amp;agrave; ổn định. Cần Giờ l&amp;agrave; huyện c&amp;oacute; lượng mưa thấp nhất TP Hồ Ch&amp;iacute; Minh (130 mm/th&amp;aacute;ng).&lt;/span&gt;&lt;br /&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Chế độ gi&amp;oacute; : C&amp;oacute; hai hướng gi&amp;oacute; ch&amp;iacute;nh trong năm l&amp;agrave; T&amp;acirc;y v&amp;agrave; T&amp;acirc;y Nam từ th&amp;aacute;ng 5 - 10 DL v&amp;agrave; Bắc Đ&amp;ocirc;ng Bắc từ th&amp;aacute;ng&amp;nbsp;11 - 4 AL năm sau.&lt;/span&gt;&lt;br /&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Độ ẩm v&amp;agrave; lượng bốc hơi : Độ ẩm cao hơn c&amp;aacute;c nơi kh&amp;aacute;c trung b&amp;igrave;nh từ 80 - 85% lượng bốc hơi trung b&amp;igrave;nh l&amp;agrave; 1204 mm/th&amp;aacute;ng.&lt;/span&gt;&lt;br /&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Chế độ nhiệt v&amp;agrave; bức xạ : nhiệt độ trung b&amp;igrave;nh trong năm l&amp;agrave; 27&amp;deg;c lượng bốc xạ trung b&amp;igrave;nh ng&amp;agrave;y tr&amp;ecirc;n 300 Calo/cm2. Số giờ nắng 7 - 9 giờ/ng&amp;agrave;y.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;IV. Đặc t&amp;iacute;nh thủy văn&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Hệ thống s&amp;ocirc;ng ng&amp;ograve;i ở Huyện Cần Giờ chằng chịt, nguồn&amp;nbsp; nước&amp;nbsp; từ&amp;nbsp; biển đưa v&amp;agrave;o bởi hai cửa ch&amp;iacute;nh&amp;nbsp;h&amp;igrave;nh phễu l&amp;agrave; vịnh Đ&amp;ocirc;ng tranh v&amp;agrave; vịnh G&amp;agrave;nh rai, nguồn nước từ s&amp;ocirc;ng đổ ra l&amp;agrave; nơi hội lưu của s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n v&amp;agrave; s&amp;ocirc;ng Đồng Nai ra biển bằng hai tuyến ch&amp;iacute;nh l&amp;agrave; s&amp;ocirc;ng Long T&amp;agrave;u v&amp;agrave; So&amp;agrave;i Rạp; ngo&amp;agrave;i ra c&amp;ograve;n c&amp;oacute; s&amp;ocirc;ng Thị Vải, G&amp;ograve; Gia v&amp;agrave; c&amp;aacute;c s&amp;ocirc;ng phụ lưu.&lt;/span&gt;&lt;br /&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Diện t&amp;iacute;ch s&amp;ocirc;ng rạch l&amp;agrave; 22.161 ha chiếm 21,27% diện t&amp;iacute;ch to&amp;agrave;n huyện.&lt;/span&gt;&lt;br /&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Chế độ thủy triều : Rừng Ngập mặn Cần Giờ nằm trong v&amp;ugrave;ng chế độ b&amp;aacute;n nhật triều, kh&amp;ocirc;ng đều 2 lần nước lớn v&amp;agrave;&amp;nbsp;hai lần nước r&amp;ograve;ng trong ng&amp;agrave;y, 2 đỉnh triều thường bằng nhau nhưng ch&amp;acirc;n triều lệch rất xa.&lt;/span&gt;&lt;br /&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Độ mặn : Nước mặn theo d&amp;ograve;ng triều ngược l&amp;ecirc;n thượng lưu trong thời kỳ triều l&amp;ecirc;n h&amp;ograve;a lẫn với nước ngọt từ nguồn&amp;nbsp;đổ về th&amp;agrave;nh nước lợ, sau đ&amp;oacute; ti&amp;ecirc;u đi trong thời gian triều hết. Do đ&amp;oacute; c&amp;agrave;ng v&amp;agrave;o s&amp;acirc;u trong đất liền độ mặn c&amp;agrave;ng giảm.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;strong&gt;V. Diện t&amp;iacute;ch tự nhi&amp;ecirc;n v&amp;agrave; d&amp;acirc;n số&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n		&lt;span style=&quot;color:#000000;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color:#ffffff;&quot;&gt;Tổng diện t&amp;iacute;ch tự nhi&amp;ecirc;n to&amp;agrave;n huyện tr&amp;ecirc;n 71.361 ha chiếm gần 1/3 diện t&amp;iacute;ch to&amp;agrave;n Th&amp;agrave;nh&amp;nbsp;phố, trong đ&amp;oacute; rừng v&amp;agrave; đất rừng chiếm 54%. D&amp;acirc;n số tr&amp;ecirc;n to&amp;agrave;n huyện 68.403 người với 15.922 hộ (nguồn thống k&amp;ecirc; th&amp;aacute;ng 06/2007 của huyện Cần Giờ) được chia l&amp;agrave;m 6 x&amp;atilde; v&amp;agrave; 01 thị trấn gồm : B&amp;igrave;nh Kh&amp;aacute;nh, An Thới Đ&amp;ocirc;ng, Tam Th&amp;ocirc;n Hiệp, L&amp;yacute; Nhơn, Long H&amp;ograve;a, Thạnh An v&amp;agrave; Thị trấn Cần Thạnh. Thế mạnh của Cần Giờ được x&amp;aacute;c định l&amp;agrave; rừng v&amp;agrave; biển.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-05-03 12:09:06', 'admin', '2013-09-16 11:48:45');
INSERT INTO `media` VALUES (10, 'default13742312081', '', 'media_information', '[106]', 'admin', 'SỬA LAPTOP BỊ MẤT NGUỒN', '', '', 'vn', '&lt;p&gt;\r\n	sửa laptop sửa laptop bị mất nguồn sửa laptop k&amp;iacute;ch kh&amp;ocirc;ng l&amp;ecirc;n nguồn sửa laptop bị chạm nguồn sửa laptop cấm adapter k&amp;iacute;ch kh&amp;ocirc;ng được&lt;/p&gt;', '&lt;h2 style=&quot;margin: 0px 0px 0.3em; padding: 0px; border: 0px; font-weight: normal; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 1; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/h2&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Khi laptop của bạn bị t&amp;igrave;nh trạng k&amp;iacute;ch nguồn kh&amp;ocirc;ng được th&amp;igrave; laptop của bạn bị những lỗi cơ bản sau m&amp;agrave; ktv cần phải kiểm tra sửa chữa laptop của bạn:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp;+ sửa laptop bị chạm nguồn. chạm nguồn g&amp;acirc;y n&amp;ecirc;n t&amp;igrave;nh trạng mất nguồn ,dấu hiệu của t&amp;igrave;nh trạng n&amp;agrave;y l&amp;agrave; khi cắm adapter v&amp;agrave;o th&amp;igrave; đ&amp;egrave;n adapter sẻ tắt. đay l&amp;agrave; t&amp;igrave;nh trạng bị chạm nguồn DC ch&amp;uacute;ng ta phải kiểm tra tr&amp;ecirc;n mainboar th&amp;ocirc;ng thường th&amp;igrave; mainboar bị nổ tụ,chết fet,chết tụ,ch&amp;aacute;y nổ... thay hế c&amp;aacute;c linh kiện bị lổi l&amp;agrave; khắc phục được&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; + Sửa laptop bị chạm main do lỗi c&amp;aacute;c linh kiện kh&amp;aacute;c như IO,ic...&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; + Sửa laptop bị mất nguổn do lỗi ic nguồn 3v5v&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; + Sửa laptop bị mất nguồn do lỗi IO&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; +Sửa laptop k&amp;iacute;ch kh&amp;ocirc;ng được do lỗi Rom&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; +Ngo&amp;agrave;i ra laptop của bạn c&amp;oacute; thể bị lỗi những Pan kh&amp;oacute; hơn cần phải kiểm tra kỷ lưỡng mới x&amp;aacute;c định được&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Chi ph&amp;iacute; sửa c&amp;aacute;c lổi tr&amp;ecirc;n giao động khoảng 300.000-1.000.000vnđ t&amp;ugrave;y theo d&amp;ograve;ng m&amp;aacute;y v&amp;agrave; linh kiện thay thế&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'sửa laptop sửa chữa laptop sua laptop', '', 'sửa laptop', 'sửa laptop', 'sửa laptop', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-19 17:53:28', 'admin', '2013-07-21 08:20:46');
INSERT INTO `media` VALUES (12, 'default13742874351', '', 'media_information', '[108]', 'admin', 'SỬA MÀN HÌNH LAPTOP', '', '', 'vn', '&lt;p&gt;\r\n	sửa m&amp;agrave;n h&amp;igrave;nh laptop thay m&amp;agrave;n h&amp;igrave;nh laptop&lt;/p&gt;', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;Khi laptop của bạn bị lỗi sọc m&amp;agrave;n h&amp;igrave;nh, m&amp;agrave;n h&amp;igrave;nh bị giật ,m&amp;agrave;n h&amp;igrave;nh nh&amp;igrave;n thấy mờ, m&amp;agrave;n h&amp;igrave;nh laptop của bạn kh&amp;ocirc;ng hiển thị,m&amp;agrave;n h&amp;igrave;nh bị nh&amp;ograve;e th&amp;igrave; c&amp;oacute; khả năng m&amp;agrave;n h&amp;igrave;nh laptop của bạn đ&amp;atilde; bị hỏng. dưới đ&amp;acirc;y trung t&amp;acirc;m sửa chữa laptop Ho&amp;agrave;ng Vũ xin gủi đến c&amp;aacute;c bạn bản b&amp;aacute;o gi&amp;aacute; sửa chữa m&amp;agrave;n h&amp;igrave;nh. mong được sự ủng hộ của qu&amp;yacute; kh&amp;aacute;ch&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;1.sửa chửa m&amp;agrave;n h&amp;igrave;nh laptop bị sọc h&amp;igrave;nh &amp;nbsp; &amp;nbsp; 300.000 - 500.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;2.sửa chữa m&amp;agrave;n h&amp;igrave;nh laptop bị mờ h&amp;igrave;nh &amp;nbsp; &amp;nbsp; &amp;nbsp;300.000 - 600.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;3. sửa chữa m&amp;agrave;n h&amp;igrave;nh laptop bị vết ố &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 300.000 - 400.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;4. thay b&amp;oacute;ng đ&amp;egrave;n laptop lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;300.000 - 700.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;5. sửa chữa laptop bị hư cao &amp;aacute;p &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;300.000 - 400.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;6.sửa chữa bản lề laptop &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;200.000 - 500.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;7.thay bản lề laptop lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 300.00 - 600.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://www.sualaptopuytin.com/file/upload/upload_sua_man_hinh_laptop2_fix_218x164.png&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot; /&gt;&lt;/strong&gt;&lt;/p&gt;', 'sửa laptop sua laptop', '', 'sửa màn hình laptop thay màn hình laptop', 'sửa màn hình laptop thay màn hình laptop', 'sửa màn hình laptop thay màn hình laptop', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 09:30:35', 'admin', '2013-07-30 22:23:48');
INSERT INTO `media` VALUES (13, 'default13742875921', '', 'media_information', '[109]', 'admin', 'SỬA PIN LAPTOP', '', '', 'vn', '&lt;p&gt;\r\n	sửa pin laptop thay cell pin laptop cung cấp pin laptop&lt;/p&gt;', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;Laptop của bạn s&amp;agrave;i qua thời gian th&amp;igrave; pin laptop thường bị chai pin,pin chạy thời gian &amp;iacute;t,laptop pin kh&amp;ocirc;ng xạc.. th&amp;igrave; laptop của c&amp;aacute;c bạn đ&amp;atilde; bị lỗi.Trung t&amp;acirc;m sửa chữa laptop Ho&amp;agrave;ng Vũ xin gủi đến qu&amp;yacute; c&amp;aacute;c bạn bảng b&amp;aacute;o gi&amp;aacute; sửa chữa pin laptop:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;+ Sửa chữa pin laptop uy t&amp;iacute;n,thay cell pin laptop,cung cấp pin laptop&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;+ Thay cell pin laptop chạy tr&amp;ecirc;n 1h &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;300.000 vnd&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;+ Thay cell pin laptop chạy tr&amp;ecirc;n 1h30 ph&amp;uacute;t &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 400.000 vnd&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;+ Thay cell pin laptop chạy tr&amp;ecirc;n 2h &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;450.000 vnd&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;+ Sửa chữa pin laptop bị lổi mạch &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;200.000 - 300.00 vnd&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;img src=&quot;http://www.sualaptopuytin.com/file/upload/sua%20chua%20pin%20laptop2.png&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot; /&gt;&lt;/p&gt;', 'sửa pin laptop thay cell pin laptop', '', 'sửa pin laptop thay cell pin laptop cung cấp pin laptop', 'sửa pin laptop thay cell pin laptop cung cấp pin laptop', 'sửa pin laptop thay cell pin laptop cung cấp pin laptop', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 09:33:12', 'admin', '2013-07-30 22:23:09');
INSERT INTO `media` VALUES (14, 'default13742880821', '', 'media_information', '[133]', 'admin', 'SƠN,HÀN BẢN LỀ LAPTOP', '', '', 'vn', '&lt;p&gt;\r\n	sơn h&amp;agrave;n bản lề laptop&lt;/p&gt;', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;+ H&amp;agrave;n pass laptop,đ&amp;uacute;c pass laptop lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp;200.000 - 300.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;+ L&amp;agrave;m nhựa khung m&amp;agrave;n h&amp;igrave;nh laptop &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;100.000 - 300.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;+ Sơn laptop lấy liền, t&amp;acirc;n trang laptop &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 250.000 - 600.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;+ Thay vỏ laptop,thay khung m&amp;agrave;n h&amp;igrave;nh &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;200.000 - 600.000 vnd&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'sơn laptop,hàn pass laptop', '', 'sơn hàn bản lề laptop', 'sơn hàn bản lề laptop', 'sơn hàn bản lề laptop', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 09:41:22', 'admin', '2013-07-20 15:34:07');
INSERT INTO `media` VALUES (15, 'default13742882611', '', 'media_information', '[134]', 'admin', 'QUY TRÌNH SỬA CHỮA LAPTOP', '', '', 'vn', '', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 12px; font-family: inherit; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 17.99715805053711px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;color:#ff0000;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&amp;nbsp; QUY TR&amp;Igrave;NH SỬA CHỮA LAPTOP TẠI TRUNG T&amp;Acirc;M SỬA CHỮA LAPTOP HO&amp;Agrave;NG VŨ:&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 12px; font-family: inherit; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 17.99715805053711px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;1. Nhận m&amp;aacute;y kiểm tra ,b&amp;aacute;o gi&amp;aacute; v&amp;agrave; tiến h&amp;agrave;nh sửa chữa laptop cho qu&amp;yacute; kh&amp;aacute;ch lấy liền trước sự gi&amp;aacute;m s&amp;aacute;t của kh&amp;aacute;ch h&amp;agrave;ng&amp;nbsp;&lt;br /&gt;\r\n	2. Trong trường hợp kh&amp;aacute;ch h&amp;agrave;ng cần suy nghĩ hoạt tham khảo &amp;yacute; kiến th&amp;igrave; c&amp;ocirc;ng ty sẻ tư vấn nhận m&amp;aacute;y,th&amp;aacute;o r&amp;ograve;i linh kiện gủi lại kh&amp;aacute;ch h&amp;agrave;ng . trung t&amp;acirc;m Laptop Ho&amp;agrave;ng Vũ chỉ nhận lại c&amp;aacute;c thiết bị cần sửa chữa chứ kh&amp;ocirc;ng nhận lại đầy đủ c&amp;aacute;c thiết bị laptop (trừ trường hợp kh&amp;aacute;ch h&amp;agrave;ng y&amp;ecirc;u cầu)&amp;nbsp;&lt;br /&gt;\r\n	3.C&amp;ocirc;ng ty lu&amp;ocirc;n đặt mục ti&amp;ecirc;u sửa chữa laptop lấy liền tại chổ cho kh&amp;aacute;ch h&amp;agrave;ng trừ một số trường hợp đặt biệt th&amp;igrave; c&amp;ocirc;ng ty nhận lại v&amp;agrave; sử l&amp;yacute; chậm nhất trong v&amp;ograve;ng 2 ng&amp;agrave;y&amp;nbsp;&lt;br /&gt;\r\n	4. C&amp;ocirc;ng ty sẻ th&amp;ocirc;ng b&amp;aacute;o(đ&amp;uacute;ng hẹn ) thời gian trả m&amp;aacute;y v&amp;agrave; y&amp;ecirc;u cầu kh&amp;aacute;ch h&amp;agrave;ng mang c&amp;aacute;c thiết bị gắn rời (ram,hdd,dvd,pin&amp;hellip;)của kh&amp;aacute;ch h&amp;agrave;ng đang giữ dến để ho&amp;agrave;n tất việt text v&amp;agrave; giao m&amp;aacute;y&amp;nbsp;&lt;br /&gt;\r\n	5. M&amp;aacute;y sao khi sửa sẻ được gi&amp;aacute;n tem v&amp;agrave; được bảo h&amp;agrave;nh theo đ&amp;uacute;ng quy định bảo h&amp;agrave;nh của trung t&amp;acirc;m sửa chữa Laptop Ho&amp;agrave;ng Vũ&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 12px; font-family: inherit; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 17.99715805053711px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 12px; font-family: inherit; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 17.99715805053711px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;color:#ff0000;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; CAM KẾT CỦA &amp;nbsp;LAPTOP HO&amp;Agrave;NG VŨ ĐỐI VỚI QU&amp;Yacute; KH&amp;Aacute;CH H&amp;Agrave;NG:&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 12px; font-family: inherit; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 17.99715805053711px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;1 .Chất lượng của dịch vụ l&amp;agrave; tốt nhất v&amp;agrave; lu&amp;ocirc;n xem yếu tố chất lượng l&amp;agrave; đi đầu trong dịch vụ sửa chữa v&amp;agrave; cung cấp linh kiện laptop&amp;nbsp;&lt;br /&gt;\r\n	2. gi&amp;aacute; của dịch vụ c&amp;ocirc;ng ty l&amp;agrave; gi&amp;aacute; tốt nhất nhằm đ&amp;ecirc;m lại sự h&amp;agrave;i l&amp;ograve;ng cao nhất cho qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng&amp;nbsp;&lt;br /&gt;\r\n	3.Th&amp;aacute;i độ phục vụ của nh&amp;acirc;n vi&amp;ecirc;n lu&amp;ocirc;n &amp;acirc;n cần,trung thực,t&amp;acirc;m huyết với nghề,thực t&amp;acirc;m với kh&amp;aacute;ch h&amp;agrave;ng&amp;nbsp;&lt;br /&gt;\r\n	4.Đảm bảo về mức độ an to&amp;agrave;n , độ tin cậy tuyệt đối cho kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave; tr&amp;aacute;nh kh&amp;ocirc;ng g&amp;acirc;y lỗi lầm trong sửa chữa cũng như bảo quảng tuyệt đối ch&amp;iacute;nh s&amp;aacute;t c&amp;aacute;c linh kiện tr&amp;ecirc;n laptop của qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng&amp;nbsp;&lt;br /&gt;\r\n	5.Cam kết bảo vệ dữ liệu của qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng một c&amp;aacute;ch tuyệt đối&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', 'sửa laptop', '', '', '', '', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 09:44:21', 'admin', '2013-07-21 07:42:29');
INSERT INTO `media` VALUES (11, 'default13742856591', '', 'media_information', '[107]', 'admin', 'SỬA LAPTOP KÍCH CÓ NGUỒN KHÔNG LÊN MÀN HÌNH', '', '', 'vn', '&lt;p&gt;\r\n	sửa laptop c&amp;oacute; nguồn kh&amp;ocirc;ng h&amp;igrave;nh sửa laptop k&amp;iacute;ch c&amp;oacute; nguồn nhưng kh&amp;ocirc;ng l&amp;ecirc;n m&amp;agrave;n h&amp;igrave;nh sửa laptop kh&amp;ocirc;ng l&amp;ecirc;n h&amp;igrave;nh sửa laptop c&amp;oacute; nguồn nhưng kh&amp;ocirc;ng hiển thị m&amp;agrave;n h&amp;igrave;nh&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Khi laptop của bạn bị t&amp;igrave;nh trạng k&amp;iacute;ch c&amp;oacute; nguồn s&amp;aacute;ng đ&amp;egrave;n nhưng kh&amp;ocirc;ng hiển thị logo của h&amp;atilde;ng l&amp;ecirc;n m&amp;agrave;n h&amp;igrave;nh th&amp;igrave; laptop bạn bị một số t&amp;igrave;nh trạng sau:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp;+ sửa laptop bị mất nguồn CPU&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp;+ sửa laptop bị lổi chip VGA&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp;+ sửa laptop bị lỗi Rom&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp;+ sửa laptop bị lổi c&amp;aacute;c ic nguồn cấp sau&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp;+ sửa laptop bị lỗi RAM&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Ngo&amp;agrave;i c&amp;aacute;c lỗi cơ bản tr&amp;ecirc;n laptop của bạn c&amp;oacute; thể bị một số pan kh&amp;oacute; hơn m&amp;agrave; đ&amp;ograve;i hỏi ktv phải c&amp;oacute; kiến thức v&amp;agrave; kinh nghiệm mới sửa chữa được&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;b&gt;Chi ph&amp;iacute; sửa c&amp;aacute;c bệnh tr&amp;ecirc;n giao động trong khoảng 300.000-1.200.000vnđ t&amp;ugrave;y theo d&amp;ograve;ng m&amp;aacute;y v&amp;agrave; linh kiện thay thế&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;', 'sửa laptop sửa laptop uy tín', '', 'sửa laptop có nguồn không lên hình', 'sửa laptop có nguồn không lên hình', 'sửa laptop kích có nguồn không lên màn hình', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 09:00:59', 'admin', '2013-07-22 13:12:57');
INSERT INTO `media` VALUES (16, 'default13742883661', '', 'media_information', '[135]', 'admin', 'ĐÀO TẠO KTV SỬA CHỮA LAPTOP', '', '', 'vn', '&lt;p&gt;\r\n	dạy nghề sửa laptop&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color:#0000ff;&quot;&gt;GIAI ĐOẠN 1 &amp;ndash; TH&amp;Aacute;O R&amp;Aacute;P &amp;amp; C&amp;Agrave;I ĐẶT LAPTOP :&lt;/span&gt;&lt;br /&gt;\r\n	1.Cấu tạo &amp;amp; nguy&amp;ecirc;n l&amp;yacute; hoạt động m&amp;aacute;y laptop. Tổng quan về phần cứng của m&amp;aacute;y t&amp;iacute;nh laptop v&amp;agrave; nguy&amp;ecirc;n l&amp;yacute; hoạt động m&amp;aacute;y t&amp;iacute;nh laptop, giới thiệu về c&amp;aacute;c d&amp;ograve;ng vi xử l&amp;yacute;, ph&amp;acirc;n loại laptop. Lắp r&amp;aacute;p c&amp;aacute;c thiết bị trong m&amp;aacute;y laptop. (Th&amp;aacute;o lắp c&amp;aacute;c bộ phận trong m&amp;aacute;y t&amp;iacute;nh laptop) X&amp;aacute;c định c&amp;aacute;c cổng (giao tiếp, thiết bị ngoại vi), lắp mainboard hệ thống, lắp r&amp;aacute;p bộ nhớ, lắp c&amp;aacute;c Card mở rộng, lắp r&amp;aacute;p thiết bị lưu trữ.&amp;nbsp;&lt;br /&gt;\r\n	2. CMOS v&amp;agrave; cấu h&amp;igrave;nh c&amp;aacute;c th&amp;ocirc;ng số của Laptop. Thực hiện v&amp;agrave; thiết lập cấu h&amp;igrave;nh CMOS đối với một số tr&amp;igrave;nh BIOS kh&amp;aacute;c nhau.&amp;nbsp;&lt;br /&gt;\r\n	3.Quản trị laptop th&amp;ocirc;ng qua hệ điều h&amp;agrave;nh. Thiết lập c&amp;aacute;c chế độ l&amp;agrave;m việc th&amp;iacute;ch hợp đối với một số HĐH, sử dụng c&amp;aacute;c chức năng/c&amp;ocirc;ng cụ kh&amp;aacute;c nhau của một số hệ điều h&amp;agrave;nh Windows XP, Vista, 7&amp;hellip; để quản l&amp;yacute; m&amp;aacute;y t&amp;iacute;nh.&amp;nbsp;&lt;br /&gt;\r\n	4. Chẩn đo&amp;aacute;n lỗi v&amp;agrave; bảo tr&amp;igrave; hệ thống laptop. C&amp;aacute;c lỗi thường xảy ra v&amp;agrave; c&amp;aacute;ch xử l&amp;yacute; khi người d&amp;ugrave;ng &amp;aacute;p dụng c&amp;aacute;c tr&amp;igrave;nh ứng dụng, hiện tượng ph&amp;oacute;ng tĩnh điện v&amp;agrave; c&amp;aacute;ch thực hiện ph&amp;ograve;ng chống (ESD), kiểm tra hệ thống v&amp;agrave; biểu hiện bất thường, c&amp;aacute;c c&amp;ocirc;ng cụ chẩn đo&amp;aacute;n lỗi để ph&amp;aacute;t hiện lỗi đối với hệ thống, c&amp;aacute;c c&amp;ocirc;ng cụ quản l&amp;yacute; v&amp;agrave; dọn đĩa. HO&amp;Agrave;N TH&amp;Agrave;NH GIAI ĐOẠN N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG : - Hiểu biết về vi xử l&amp;yacute;, ph&amp;acirc;n biệt c&amp;aacute;c d&amp;ograve;ng chip v&amp;agrave; c&amp;aacute;c ứng dụng thực tiễn. - Nguy&amp;ecirc;n l&amp;yacute; hoạt động v&amp;agrave; c&amp;aacute;c trạng th&amp;aacute;i xử l&amp;yacute; trong qu&amp;aacute; tr&amp;igrave;nh khai th&amp;aacute;c m&amp;aacute;y laptop từ khi khởi động, sử dụng, shutdown m&amp;aacute;y. - Th&amp;aacute;o r&amp;aacute;p &amp;amp; n&amp;acirc;ng cấp th&amp;agrave;nh thạo được tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y t&amp;iacute;nh laptop. - C&amp;agrave;i đặt được HĐH v&amp;agrave; c&amp;aacute;c phần mềm cần thiết. Đặc biệt c&amp;oacute; thể c&amp;agrave;i đặt Windows XP cho tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y mới hỗ trợ HDD SATA.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;color:#0000ff;&quot;&gt;GIAI ĐOẠN 2 &amp;ndash; SỬA CHỮA LAPTOP CƠ BẢN :&lt;/span&gt;&lt;br /&gt;\r\n	1. Sử dụng c&amp;aacute;c thiết bị đo. Giới thiệu v&amp;agrave; hướng dẫn sử dụng c&amp;aacute;c chức năng, c&amp;aacute;c c&amp;aacute;ch đo đồng hồ.&amp;nbsp;&lt;br /&gt;\r\n	2. Điện tử căn bản. Giới thiệu, hướng dẫn, giải th&amp;iacute;ch về c&amp;aacute;c chức năng, k&amp;yacute; hiệu, đơn vị v&amp;agrave; x&amp;aacute;c định gi&amp;aacute; trị, kiểm tra chất lượng, c&amp;aacute;ch nhận diện c&amp;aacute;c điện trở, tụ điện, cuộn cảm, diode, transistor, transistor trường, IC tr&amp;ecirc;n PCB.&amp;nbsp;&lt;br /&gt;\r\n	3. Kỹ thuật h&amp;agrave;n-kh&amp;ograve;. Giới thiệu v&amp;agrave; hướng dẫn c&amp;aacute;c thao t&amp;aacute;c h&amp;agrave;n, kh&amp;ograve; c&amp;aacute;c linh kiện kh&amp;aacute;c nhau như linh kiện nhỏ nhiều ch&amp;acirc;n, hai h&amp;agrave;ng ch&amp;acirc;n, bốn h&amp;agrave;ng ch&amp;acirc;n, vỏ nhựa hai h&amp;agrave;ng ch&amp;acirc;n, vỏ kim loại&amp;hellip; v&amp;agrave; c&amp;aacute;ch bảo dưỡng mỏ h&amp;agrave;n, mỏ kh&amp;ograve; để tăng tuổi thọ v&amp;agrave; tr&amp;aacute;nh hư hỏng.&amp;nbsp;&lt;br /&gt;\r\n	4. Kỹ năng sử dụng m&amp;aacute;y h&amp;agrave;n Chipset chuy&amp;ecirc;n dụng. Giới thiệu v&amp;agrave; hướng dẫn sử dụng, bảo dưỡng, vệ sinh m&amp;aacute;y h&amp;agrave;n BGA trước v&amp;agrave; sau khi sử dụng. Thực h&amp;agrave;nh tr&amp;ecirc;n board kh&amp;ocirc;ng linh kiện, c&amp;oacute; linh kiện v&amp;agrave; board c&amp;ograve;n sống. Tổng hợp c&amp;aacute;c lỗi g&amp;acirc;y ra tr&amp;ecirc;n board mạch do thao t&amp;aacute;c v&amp;agrave; c&amp;agrave;i đặt th&amp;ocirc;ng số sai kh&amp;ocirc;ng ph&amp;ugrave; hợp với qui tr&amp;igrave;nh.&amp;nbsp;&lt;br /&gt;\r\n	5. Qui tr&amp;igrave;nh kiểm tra m&amp;aacute;y. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh quy tr&amp;igrave;nh kiểm tra lỗi m&amp;aacute;y tr&amp;ecirc;n DOS, WIN v&amp;agrave; sử dụng c&amp;aacute;c phần mềm kiểm tra.&amp;nbsp;&lt;br /&gt;\r\n	6. Qui tr&amp;igrave;nh sửa chữa Mainboard. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh về qui tr&amp;igrave;nh sửa pan mất nguồn; sửa m&amp;aacute;y lỗi b&amp;agrave;n ph&amp;iacute;m, touchpad; sửa m&amp;aacute;y lỗi c&amp;aacute;c cổng giao tiếp; sửa m&amp;aacute;y lỗi hiển thị v&amp;agrave; sửa m&amp;aacute;y lỗi &amp;acirc;m thanh.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	HỌC XONG GIAI ĐOẠN N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG:&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Đọc v&amp;agrave; nhận dạng c&amp;aacute;c linh kiện sử dụng trong m&amp;aacute;y t&amp;iacute;nh.&amp;nbsp;&lt;br /&gt;\r\n	Sử dụng th&amp;agrave;nh thạo c&amp;aacute;c thiết bị đo hiện h&amp;agrave;nh.&amp;nbsp;&lt;br /&gt;\r\n	Sử dụng th&amp;agrave;nh thạo c&amp;aacute;c thiết bị phục vụ sửa chữa.&amp;nbsp;&lt;br /&gt;\r\n	C&amp;oacute; kỹ năng thao t&amp;aacute;c tốt việc h&amp;agrave;n, kh&amp;ograve;, thay thế linh kiện tr&amp;ecirc;n c&amp;aacute;c loại board mạch.&amp;nbsp;&lt;br /&gt;\r\n	Đ&amp;aacute;nh gi&amp;aacute; ch&amp;iacute;nh x&amp;aacute;c chất lượng, ph&amp;acirc;n loại c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y v&amp;agrave; chẩn đo&amp;aacute;n ch&amp;iacute;nh x&amp;aacute;c c&amp;aacute;c pan ban đầu khi nhận m&amp;aacute;y.&amp;nbsp;&lt;br /&gt;\r\n	Ph&amp;acirc;n t&amp;iacute;ch, ph&amp;aacute;n đo&amp;aacute;n, dự kiến xử l&amp;yacute; theo nhiều hướng tr&amp;ecirc;n từng pan để sửa chữa đ&amp;uacute;ng bệnh.&amp;nbsp;&lt;br /&gt;\r\n	Sửa chữa th&amp;agrave;nh thạo c&amp;aacute;c pan căn bản tr&amp;ecirc;n c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y phổ biến hiện h&amp;agrave;nh.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;color:#0000ff;&quot;&gt;GIAI ĐOẠN 3 - SỬA CHỮA LAPTOP N&amp;Acirc;NG CAO :&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n	1. M&amp;agrave;n h&amp;igrave;nh LCD. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh sửa chữa, độ chế c&amp;aacute;c loại m&amp;agrave;n h&amp;igrave;nh (cao &amp;aacute;p), xử l&amp;yacute; c&amp;aacute;c lỗi thường gặp của m&amp;agrave;n h&amp;igrave;nh: m&amp;agrave;n h&amp;igrave;nh bị trầy xước, m&amp;agrave;n h&amp;igrave;nh kh&amp;ocirc;ng l&amp;ecirc;n,&amp;hellip;(kh&amp;ocirc;ng thấy chữ, trắng, sọc nhiều kh&amp;ocirc;ng c&amp;oacute; chữa)&amp;nbsp;&lt;br /&gt;\r\n	2. Pin Laptop. Giới thiệu, hướng dẫn về cấu tạo pin laptop, phương ph&amp;aacute;p kiểm tra cell để thay thế, test mạch điều khiển bảo vệ pin, t&amp;aacute;ch, &amp;eacute;p vỏ trong qu&amp;aacute; tr&amp;igrave;nh sửa chữa pin v&amp;agrave; kiểm tra sạc, dung lượng thực của pin sau khi sửa chữa.&amp;nbsp;&lt;br /&gt;\r\n	3. Chipset v&amp;agrave; Mainboard. Giới thiệu th&amp;ocirc;ng số kỹ thuật, hướng dẫn c&amp;aacute;ch nhận dạng v&amp;agrave; đo kiểm tra chip bắc, chip nam ; thực h&amp;agrave;nh th&amp;aacute;o &amp;ndash; đ&amp;oacute;ng chipset, c&amp;aacute;c lỗi thường gặp trong qu&amp;aacute; tr&amp;igrave;nh xử l&amp;yacute; của chipset.&amp;nbsp;&lt;br /&gt;\r\n	4. Chip giao tiếp &amp;amp; card mở rộng. Giới thiệu chuẩn PCI v&amp;agrave; PCMCIA. Thực h&amp;agrave;nh đo kiểm v&amp;agrave; sửa chữa c&amp;aacute;c chip thuộc c&amp;aacute;c chuẩn tr&amp;ecirc;n. 5. Sửa chữa Mainboard n&amp;acirc;ng cao. Giới thiệu v&amp;agrave; hướng dẫn thực h&amp;agrave;nh c&amp;aacute;ch đọc sơ đồ, ph&amp;acirc;n t&amp;iacute;ch mạch, thực h&amp;agrave;nh đo kiểm, sửa chữa c&amp;aacute;c pan v&amp;agrave; dựng sơ đồ ph&amp;acirc;n bố nguồn, xung clock, bus điều khiển, bus dữ liệu tr&amp;ecirc;n c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y IBM, DELL, HP, SONY&amp;hellip;&amp;nbsp;&lt;br /&gt;\r\n	6. Phương ph&amp;aacute;p giải password CMOS. Giới thiệu v&amp;agrave; hướng dẫn sử dụng m&amp;aacute;y ch&amp;eacute;p BIOS v&amp;agrave; giải password CMOS tr&amp;ecirc;n c&amp;aacute;c đời m&amp;aacute;y: IBM, SONY, DELL, HP, TOSHIBA ... HO&amp;Agrave;N TẤT KH&amp;Oacute;A HỌC N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG: Sửa chữa, thay thế v&amp;agrave; độ chế c&amp;aacute;c loại m&amp;agrave;n h&amp;igrave;nh. Thay thế, phục hồi dung lượng pin m&amp;aacute;y t&amp;iacute;nh c&amp;aacute;c loại. Thao t&amp;aacute;c th&amp;aacute;o, đ&amp;oacute;ng th&amp;agrave;nh thạo tr&amp;ecirc;n tất cả c&amp;aacute;c loại chipset hiện c&amp;oacute;, giảm thiểu tối đa nguy cơ hư chip, hư board. Xử l&amp;yacute; tốt c&amp;aacute;c lỗi li&amp;ecirc;n quan đến chip giao tiếp v&amp;agrave; c&amp;aacute;c card mở rộng. Ho&amp;agrave;n thiện kỹ năng tự ph&amp;acirc;n t&amp;iacute;ch, ph&amp;aacute;n đo&amp;aacute;n, dự kiến c&amp;aacute;c hướng sửa chữa đối với c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y hiện h&amp;agrave;nh. Tự sửa chữa được tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y hiện c&amp;oacute;.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Thời gian: 6 th&amp;aacute;ng (1 th&amp;aacute;ng l&amp;yacute; thuyết + 5 th&amp;aacute;ng thực h&amp;agrave;nh). Học 6 buổi/tuần, từ thứ 2 đến thứ 7. Bạn c&amp;oacute; thể đăng k&amp;yacute; kh&amp;oacute;a s&amp;aacute;ng, chiều.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Học ph&amp;iacute; 10.000.000 vnđ &amp;nbsp;chia l&amp;agrave;m 2 đợt&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; + đợt 1: 5.000.000 &amp;nbsp;đ&amp;oacute;ng l&amp;uacute;c ghi danh v&amp;agrave;o học&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; + đợt 2: 5.000.000 đ&amp;oacute;ng sau 2 th&amp;aacute;ng học tập&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Học vi&amp;ecirc;n đ&amp;oacute;ng học ph&amp;iacute; một lần sẻ được giảm 10% học ph&amp;iacute;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#ff0000;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Ghi ch&amp;uacute;: dạy theo phương ph&amp;aacute;p truyền nghề. Thực h&amp;agrave;nh 100% tr&amp;ecirc;n c&amp;aacute;c m&amp;aacute;y đời mới&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#ff0000;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Kết h&amp;uacute;c kho&amp;aacute; học học vi&amp;ecirc;n&amp;nbsp; kh&amp;aacute; giỏi được nhận lại c&amp;ocirc;ng ty với mức lương hấp dẩn&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', 'dạy nghề sửa laptop', 'dạy nghề sửa laptop', 'dạy nghề sửa laptop', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 09:46:06', 'admin', '2013-07-21 07:43:48');
INSERT INTO `media` VALUES (17, 'default13742884831', '', 'media_information', '[136]', 'admin', 'TRUNG TÂM SỬA  LAPTOP HOÀNG VŨ', '', '', 'vn', '&lt;p&gt;\r\n	trung t&amp;acirc;m sửa chữa laptop ho&amp;agrave;ng vũ&lt;/p&gt;', '&lt;h3 style=&quot;margin: 0px 0px 0.3em; padding: 0px; border: 0px; font-weight: normal; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 18.18181800842285px; font-family: inherit; vertical-align: baseline;&quot;&gt;C&amp;Ocirc;NG TY TNHH MTV THẾ GIỚI HO&amp;Agrave;NG VŨ&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;Trụ sở: 07 C&amp;aacute;ch Mạng, P. T&amp;acirc;n Th&amp;agrave;nh, Q. T&amp;acirc;n Ph&amp;uacute;, TP HCM&lt;br /&gt;\r\n	Website: http://www.thegioihoangvu.com - Email: info@thegioihoangvu.com&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;Hotline: 0916.472.445 (Mr Vũ)&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;table style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: top; border-collapse: collapse; border-spacing: 0px;&quot; width=&quot;100%&quot;&gt;\r\n		&lt;tbody style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;\r\n			&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;\r\n				&lt;td style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: top;&quot;&gt;\r\n					&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-size: 11.818181991577148px; font-family: inherit; vertical-align: baseline;&quot;&gt;\r\n						&lt;span style=&quot;font-size:14px;&quot;&gt;Địa chỉ: 266/10 T&amp;ocirc; Hiến Th&amp;agrave;nh, P.15, Q.10 TP HCM, Vietnam&lt;br /&gt;\r\n						Tel: 08.6264.7180 - 0916.472.445 (Mr. Vũ)&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;http://www.sualaptopuytin.com/view/skin1/image/chinhanh1-thum.png&quot; /&gt;&lt;/p&gt;', '', '', 'trung tâm sửa chữa laptop hoàng vũ', 'trung tâm sửa chữa laptop hoàng vũ', 'trung tâm sửa chữa laptop hoàng vũ', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 09:48:03', 'admin', '2013-07-20 16:29:29');
INSERT INTO `media` VALUES (22, 'default13743131511', '', 'media_galleryalbum', '[119]', 'admin', 'SỬA LAPTOP', '', '', 'vn', '&lt;p&gt;\r\n	sửa laptop sửa laptop lấy liền&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/may-tinh-hp.png&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/sua-chua-macbook.png&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;sửa laptop&lt;/p&gt;', 'sửa laptop sửa laptop hoàng vũ', '', 'sửa laptop', 'sửa laptop', 'sửa laptop', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, 'upload/may--tinh-hp.png', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 16:39:11', 'admin', '2013-07-20 16:44:39');
INSERT INTO `media` VALUES (18, 'default13742926141', '', 'media_information', '[110]', 'admin', 'SỬA MACBOOK LẤY LIỀN', '', '', 'vn', '&lt;p&gt;\r\n	sửa macbook sửa macbook lấy liền sửa macbook uy t&amp;iacute;n sửa macbook chuy&amp;ecirc;n nghiệp sửa macbook hồ ch&amp;iacute; minh&lt;/p&gt;', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&amp;nbsp; 1. Sửa chữa mainboar macbook&amp;nbsp; lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; 600.000 - 1.200.000 VND&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&amp;nbsp; 2. Đ&amp;oacute;ng chip vga macbook lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;400.000 - 600.000 VND&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&amp;nbsp; 3.Thay chip vga macbook lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 900.000 - 1.400.000 VND&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&amp;nbsp; 4.Thay&amp;nbsp; ch&amp;acirc;n&amp;nbsp; cắm nguồn macbook lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;400.00 - 800.000 VND&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&amp;nbsp; 5.Sửa chữa cao &amp;aacute;p macbook lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 500.000 - 1.000.000 VND&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&amp;nbsp; 6.Sửa chữa m&amp;agrave;n h&amp;igrave;nh macbook lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;400.000 - 900.000 VND&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11.818181991577148px; font-family: Tahoma, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68); line-height: 16.363636016845703px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/sua-chua-macbook.png&quot; style=&quot;color: rgb(118, 118, 118); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;', 'sửa macbook  sửa macbook lấy liền', '', 'sửa macbook  sửa macbook lấy liền sửa macbook uy tín sửa macbook chuyên nghiệp sửa macboo dưới sự giám sát của khách hàng sửa macbook uy tín nhất hồ chí minh địa chỉ sửa macbook tin cậy', 'sửa macbook\r\nsửa macbook lấy liền\r\nsửa macbook uy tín\r\nsửa macbook chuyên nghiệp\r\nsửa macbook hồ chí minh\r\nsửa chữa macbook\r\nsưa chữa macbook lấy liền\r\nsửa chữa macbook uy tín', 'sửa macbook trung tâm sửa chữa macbook lấy liền tại hồ chí minh sửa chữa macbook chuyên nghiệp', 'TRUNG TÂM SỬA CHỮA MACBOOK HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 10:56:54', 'admin', '2013-07-20 16:39:53');
INSERT INTO `media` VALUES (19, 'default13742931091', '', 'media_information', '[111]', 'admin', 'SỬA IPAD', '', '', 'vn', '&lt;p&gt;\r\n	sửa ipad sửa ipad lấy liền sửa ipad uy t&amp;iacute;n sửa ipad chuy&amp;ecirc;n nghiệp sửa ipad hồ ch&amp;iacute; minh đại chỉ sửa chữa ipad&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;SỬA CHỮA IPAD LẤY LIỀN,THAY M&amp;Agrave;N H&amp;Igrave;NH IPAD,THAY CẢM ỨNG IPAD LẤY LIỀN&lt;/strong&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;nbsp; &amp;nbsp; Thay m&amp;agrave;n h&amp;igrave;nh ipad 1 lấy liền&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 1.400.000 vnd &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;&amp;nbsp; &amp;nbsp; Thay m&amp;agrave;n h&amp;igrave;nh ipad 2 lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1.450.000 vnd&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;nbsp; &amp;nbsp; Thay m&amp;agrave;n h&amp;igrave;nh ipad 3 lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1.600.000 vnd&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;nbsp; &amp;nbsp; Thay cảm ứng ipad 1 lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 1.000.000 vnd&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;nbsp; &amp;nbsp; Thay cảm ứng ipad 2 lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 1.400.000 vnd&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;nbsp; &amp;nbsp; Thay cảm ứng ipad 3 lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 1.500.000 vnd&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;nbsp; &amp;nbsp; Thay n&amp;uacute;t hom ipad lấy liền &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;350.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;M&amp;aacute;y treo c&amp;aacute;p đĩa hoặc treo t&amp;aacute;o &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;500.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp; kh&amp;ocirc;ng nhận pc &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;500.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;M&amp;aacute;y cấm c&amp;aacute;p l&amp;ecirc;n t&amp;aacute;o rồi tắt &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;500.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;iPad 3G mất song &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;600.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;Mất &amp;acirc;m thanh &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;800.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;No Imei, No wifi, No Bluetooth &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1.500.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;Mất nguồn do lổi ic nguồn &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 1.500.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;Trắng m&amp;agrave;n h&amp;igrave;nh, kh&amp;ocirc;ng hiển thị &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;800.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;M&amp;aacute;y sạc kh&amp;ocirc;ng v&amp;ocirc;, kh&amp;ocirc;ng nhận usb &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;800.000 vnd&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp;&amp;nbsp;Restore b&amp;aacute;o lỗi 9, 28, 40 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 1.200.000 vnd&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/sua-chua-ipad.png&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;', 'sửa ipad sửa ipad lấy liền', '', 'sửa ipad sửa ipad lấy liền sửa ipad chuyên nghiệp sửa ipad uy tín sửa ipad hồ chí minh', 'sửa ipad\r\nsửa chữa ipad\r\nsửa ipad uy tín\r\nsửa ipad lấy liền\r\nsửa ipad chuyên nghiệp\r\nsửa chữa ipad uy tín\r\nsua ipad', 'sửa ipad trung tâm sửa chữa ipad', 'TRUNG TÂM SỬA CHỮA IPAD HOÀNG VŨ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 11:05:09', 'admin', '2013-07-20 16:40:23');
INSERT INTO `media` VALUES (20, 'default13742933191', '', 'media_information', '[132]', 'admin', 'ĐÀO TẠO KTV SỬA CHỮA LAPTOP', '', '', 'vn', '&lt;p&gt;\r\n	dạy nghề sửa chữa laptop&lt;/p&gt;', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;color:#ff0000;&quot;&gt;&lt;strong&gt;GIAI ĐOẠN 1 &amp;ndash; TH&amp;Aacute;O R&amp;Aacute;P &amp;amp; C&amp;Agrave;I ĐẶT LAPTOP :&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;\r\n	1.Cấu tạo &amp;amp; nguy&amp;ecirc;n l&amp;yacute; hoạt động m&amp;aacute;y laptop. Tổng quan về phần cứng của m&amp;aacute;y t&amp;iacute;nh laptop v&amp;agrave; nguy&amp;ecirc;n l&amp;yacute; hoạt động m&amp;aacute;y t&amp;iacute;nh laptop, giới thiệu về c&amp;aacute;c d&amp;ograve;ng vi xử l&amp;yacute;, ph&amp;acirc;n loại laptop. Lắp r&amp;aacute;p c&amp;aacute;c thiết bị trong m&amp;aacute;y laptop. (Th&amp;aacute;o lắp c&amp;aacute;c bộ phận trong m&amp;aacute;y t&amp;iacute;nh laptop) X&amp;aacute;c định c&amp;aacute;c cổng (giao tiếp, thiết bị ngoại vi), lắp mainboard hệ thống, lắp r&amp;aacute;p bộ nhớ, lắp c&amp;aacute;c Card mở rộng, lắp r&amp;aacute;p thiết bị lưu trữ.&amp;nbsp;&lt;br /&gt;\r\n	2. CMOS v&amp;agrave; cấu h&amp;igrave;nh c&amp;aacute;c th&amp;ocirc;ng số của Laptop. Thực hiện v&amp;agrave; thiết lập cấu h&amp;igrave;nh CMOS đối với một số tr&amp;igrave;nh BIOS kh&amp;aacute;c nhau.&amp;nbsp;&lt;br /&gt;\r\n	3.Quản trị laptop th&amp;ocirc;ng qua hệ điều h&amp;agrave;nh. Thiết lập c&amp;aacute;c chế độ l&amp;agrave;m việc th&amp;iacute;ch hợp đối với một số HĐH, sử dụng c&amp;aacute;c chức năng/c&amp;ocirc;ng cụ kh&amp;aacute;c nhau của một số hệ điều h&amp;agrave;nh Windows XP, Vista, 7&amp;hellip; để quản l&amp;yacute; m&amp;aacute;y t&amp;iacute;nh.&amp;nbsp;&lt;br /&gt;\r\n	4. Chẩn đo&amp;aacute;n lỗi v&amp;agrave; bảo tr&amp;igrave; hệ thống laptop. C&amp;aacute;c lỗi thường xảy ra v&amp;agrave; c&amp;aacute;ch xử l&amp;yacute; khi người d&amp;ugrave;ng &amp;aacute;p dụng c&amp;aacute;c tr&amp;igrave;nh ứng dụng, hiện tượng ph&amp;oacute;ng tĩnh điện v&amp;agrave; c&amp;aacute;ch thực hiện ph&amp;ograve;ng chống (ESD), kiểm tra hệ thống v&amp;agrave; biểu hiện bất thường, c&amp;aacute;c c&amp;ocirc;ng cụ chẩn đo&amp;aacute;n lỗi để ph&amp;aacute;t hiện lỗi đối với hệ thống, c&amp;aacute;c c&amp;ocirc;ng cụ quản l&amp;yacute; v&amp;agrave; dọn đĩa.&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#0000ff;&quot;&gt;HO&amp;Agrave;N TH&amp;Agrave;NH GIAI ĐOẠN N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG : &lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	- Hiểu biết về vi xử l&amp;yacute;, ph&amp;acirc;n biệt c&amp;aacute;c d&amp;ograve;ng chip v&amp;agrave; c&amp;aacute;c ứng dụng thực tiễn. - Nguy&amp;ecirc;n l&amp;yacute; hoạt động v&amp;agrave; c&amp;aacute;c trạng th&amp;aacute;i xử l&amp;yacute; trong qu&amp;aacute; tr&amp;igrave;nh khai th&amp;aacute;c m&amp;aacute;y laptop từ khi khởi động, sử dụng, shutdown m&amp;aacute;y. - Th&amp;aacute;o r&amp;aacute;p &amp;amp; n&amp;acirc;ng cấp th&amp;agrave;nh thạo được tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y t&amp;iacute;nh laptop. - C&amp;agrave;i đặt được HĐH v&amp;agrave; c&amp;aacute;c phần mềm cần thiết. Đặc biệt c&amp;oacute; thể c&amp;agrave;i đặt Windows XP cho tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y mới hỗ trợ HDD SATA.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;color:#ff0000;&quot;&gt;&lt;strong&gt;GIAI ĐOẠN 2 &amp;ndash; SỬA CHỮA LAPTOP CƠ BẢN :&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;\r\n	1. Sử dụng c&amp;aacute;c thiết bị đo. Giới thiệu v&amp;agrave; hướng dẫn sử dụng c&amp;aacute;c chức năng, c&amp;aacute;c c&amp;aacute;ch đo đồng hồ.&amp;nbsp;&lt;br /&gt;\r\n	2. Điện tử căn bản. Giới thiệu, hướng dẫn, giải th&amp;iacute;ch về c&amp;aacute;c chức năng, k&amp;yacute; hiệu, đơn vị v&amp;agrave; x&amp;aacute;c định gi&amp;aacute; trị, kiểm tra chất lượng, c&amp;aacute;ch nhận diện c&amp;aacute;c điện trở, tụ điện, cuộn cảm, diode, transistor, transistor trường, IC tr&amp;ecirc;n PCB.&amp;nbsp;&lt;br /&gt;\r\n	3. Kỹ thuật h&amp;agrave;n-kh&amp;ograve;. Giới thiệu v&amp;agrave; hướng dẫn c&amp;aacute;c thao t&amp;aacute;c h&amp;agrave;n, kh&amp;ograve; c&amp;aacute;c linh kiện kh&amp;aacute;c nhau như linh kiện nhỏ nhiều ch&amp;acirc;n, hai h&amp;agrave;ng ch&amp;acirc;n, bốn h&amp;agrave;ng ch&amp;acirc;n, vỏ nhựa hai h&amp;agrave;ng ch&amp;acirc;n, vỏ kim loại&amp;hellip; v&amp;agrave; c&amp;aacute;ch bảo dưỡng mỏ h&amp;agrave;n, mỏ kh&amp;ograve; để tăng tuổi thọ v&amp;agrave; tr&amp;aacute;nh hư hỏng.&amp;nbsp;&lt;br /&gt;\r\n	4. Kỹ năng sử dụng m&amp;aacute;y h&amp;agrave;n Chipset chuy&amp;ecirc;n dụng. Giới thiệu v&amp;agrave; hướng dẫn sử dụng, bảo dưỡng, vệ sinh m&amp;aacute;y h&amp;agrave;n BGA trước v&amp;agrave; sau khi sử dụng. Thực h&amp;agrave;nh tr&amp;ecirc;n board kh&amp;ocirc;ng linh kiện, c&amp;oacute; linh kiện v&amp;agrave; board c&amp;ograve;n sống. Tổng hợp c&amp;aacute;c lỗi g&amp;acirc;y ra tr&amp;ecirc;n board mạch do thao t&amp;aacute;c v&amp;agrave; c&amp;agrave;i đặt th&amp;ocirc;ng số sai kh&amp;ocirc;ng ph&amp;ugrave; hợp với qui tr&amp;igrave;nh.&amp;nbsp;&lt;br /&gt;\r\n	5. Qui tr&amp;igrave;nh kiểm tra m&amp;aacute;y. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh quy tr&amp;igrave;nh kiểm tra lỗi m&amp;aacute;y tr&amp;ecirc;n DOS, WIN v&amp;agrave; sử dụng c&amp;aacute;c phần mềm kiểm tra.&amp;nbsp;&lt;br /&gt;\r\n	6. Qui tr&amp;igrave;nh sửa chữa Mainboard. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh về qui tr&amp;igrave;nh sửa pan mất nguồn; sửa m&amp;aacute;y lỗi b&amp;agrave;n ph&amp;iacute;m, touchpad; sửa m&amp;aacute;y lỗi c&amp;aacute;c cổng giao tiếp; sửa m&amp;aacute;y lỗi hiển thị v&amp;agrave; sửa m&amp;aacute;y lỗi &amp;acirc;m thanh.&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#0000ff;&quot;&gt;HỌC XONG GIAI ĐOẠN N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	Đọc v&amp;agrave; nhận dạng c&amp;aacute;c linh kiện sử dụng trong m&amp;aacute;y t&amp;iacute;nh.&amp;nbsp;&lt;br /&gt;\r\n	Sử dụng th&amp;agrave;nh thạo c&amp;aacute;c thiết bị đo hiện h&amp;agrave;nh.&amp;nbsp;&lt;br /&gt;\r\n	Sử dụng th&amp;agrave;nh thạo c&amp;aacute;c thiết bị phục vụ sửa chữa.&amp;nbsp;&lt;br /&gt;\r\n	C&amp;oacute; kỹ năng thao t&amp;aacute;c tốt việc h&amp;agrave;n, kh&amp;ograve;, thay thế linh kiện tr&amp;ecirc;n c&amp;aacute;c loại board mạch.&amp;nbsp;&lt;br /&gt;\r\n	Đ&amp;aacute;nh gi&amp;aacute; ch&amp;iacute;nh x&amp;aacute;c chất lượng, ph&amp;acirc;n loại c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y v&amp;agrave; chẩn đo&amp;aacute;n ch&amp;iacute;nh x&amp;aacute;c c&amp;aacute;c pan ban đầu khi nhận m&amp;aacute;y.&amp;nbsp;&lt;br /&gt;\r\n	Ph&amp;acirc;n t&amp;iacute;ch, ph&amp;aacute;n đo&amp;aacute;n, dự kiến xử l&amp;yacute; theo nhiều hướng tr&amp;ecirc;n từng pan để sửa chữa đ&amp;uacute;ng bệnh.&amp;nbsp;&lt;br /&gt;\r\n	Sửa chữa th&amp;agrave;nh thạo c&amp;aacute;c pan căn bản tr&amp;ecirc;n c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y phổ biến hiện h&amp;agrave;nh.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#ff0000;&quot;&gt;GIAI ĐOẠN 3 - SỬA CHỮA LAPTOP N&amp;Acirc;NG CAO :&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;br /&gt;\r\n	1. M&amp;agrave;n h&amp;igrave;nh LCD. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh sửa chữa, độ chế c&amp;aacute;c loại m&amp;agrave;n h&amp;igrave;nh (cao &amp;aacute;p), xử l&amp;yacute; c&amp;aacute;c lỗi thường gặp của m&amp;agrave;n h&amp;igrave;nh: m&amp;agrave;n h&amp;igrave;nh bị trầy xước, m&amp;agrave;n h&amp;igrave;nh kh&amp;ocirc;ng l&amp;ecirc;n,&amp;hellip;(kh&amp;ocirc;ng thấy chữ, trắng, sọc nhiều kh&amp;ocirc;ng c&amp;oacute; chữa)&amp;nbsp;&lt;br /&gt;\r\n	2. Pin Laptop. Giới thiệu, hướng dẫn về cấu tạo pin laptop, phương ph&amp;aacute;p kiểm tra cell để thay thế, test mạch điều khiển bảo vệ pin, t&amp;aacute;ch, &amp;eacute;p vỏ trong qu&amp;aacute; tr&amp;igrave;nh sửa chữa pin v&amp;agrave; kiểm tra sạc, dung lượng thực của pin sau khi sửa chữa.&amp;nbsp;&lt;br /&gt;\r\n	3. Chipset v&amp;agrave; Mainboard. Giới thiệu th&amp;ocirc;ng số kỹ thuật, hướng dẫn c&amp;aacute;ch nhận dạng v&amp;agrave; đo kiểm tra chip bắc, chip nam ; thực h&amp;agrave;nh th&amp;aacute;o &amp;ndash; đ&amp;oacute;ng chipset, c&amp;aacute;c lỗi thường gặp trong qu&amp;aacute; tr&amp;igrave;nh xử l&amp;yacute; của chipset.&amp;nbsp;&lt;br /&gt;\r\n	4. Chip giao tiếp &amp;amp; card mở rộng. Giới thiệu chuẩn PCI v&amp;agrave; PCMCIA. Thực h&amp;agrave;nh đo kiểm v&amp;agrave; sửa chữa c&amp;aacute;c chip thuộc c&amp;aacute;c chuẩn tr&amp;ecirc;n. 5. Sửa chữa Mainboard n&amp;acirc;ng cao. Giới thiệu v&amp;agrave; hướng dẫn thực h&amp;agrave;nh c&amp;aacute;ch đọc sơ đồ, ph&amp;acirc;n t&amp;iacute;ch mạch, thực h&amp;agrave;nh đo kiểm, sửa chữa c&amp;aacute;c pan v&amp;agrave; dựng sơ đồ ph&amp;acirc;n bố nguồn, xung clock, bus điều khiển, bus dữ liệu tr&amp;ecirc;n c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y IBM, DELL, HP, SONY&amp;hellip;&amp;nbsp;&lt;br /&gt;\r\n	6. Phương ph&amp;aacute;p giải password CMOS. Giới thiệu v&amp;agrave; hướng dẫn sử dụng m&amp;aacute;y ch&amp;eacute;p BIOS v&amp;agrave; giải password CMOS tr&amp;ecirc;n c&amp;aacute;c đời m&amp;aacute;y: IBM, SONY, DELL, HP, TOSHIBA ...&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#0000ff;&quot;&gt;HO&amp;Agrave;N TẤT KH&amp;Oacute;A HỌC N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	Sửa chữa, thay thế v&amp;agrave; độ chế c&amp;aacute;c loại m&amp;agrave;n h&amp;igrave;nh. Thay thế, phục hồi dung lượng pin m&amp;aacute;y t&amp;iacute;nh c&amp;aacute;c loại. Thao t&amp;aacute;c th&amp;aacute;o, đ&amp;oacute;ng th&amp;agrave;nh thạo tr&amp;ecirc;n tất cả c&amp;aacute;c loại chipset hiện c&amp;oacute;, giảm thiểu tối đa nguy cơ hư chip, hư board. Xử l&amp;yacute; tốt c&amp;aacute;c lỗi li&amp;ecirc;n quan đến chip giao tiếp v&amp;agrave; c&amp;aacute;c card mở rộng. Ho&amp;agrave;n thiện kỹ năng tự ph&amp;acirc;n t&amp;iacute;ch, ph&amp;aacute;n đo&amp;aacute;n, dự kiến c&amp;aacute;c hướng sửa chữa đối với c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y hiện h&amp;agrave;nh. Tự sửa chữa được tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y hiện c&amp;oacute;.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Thời gian: 6 th&amp;aacute;ng (1 th&amp;aacute;ng l&amp;yacute; thuyết + 5 th&amp;aacute;ng thực h&amp;agrave;nh). Học 6 buổi/tuần, từ thứ 2 đến thứ 7. Bạn c&amp;oacute; thể đăng k&amp;yacute; kh&amp;oacute;a s&amp;aacute;ng, chiều.&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	Học ph&amp;iacute; 10.000.000 vnđ &amp;nbsp;chia l&amp;agrave;m 2 đợt&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; + đợt 1: 5.000.000 &amp;nbsp;đ&amp;oacute;ng l&amp;uacute;c ghi danh v&amp;agrave;o học&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; + đợt 2: 5.000.000 đ&amp;oacute;ng sau 2 th&amp;aacute;ng học tập&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	Học vi&amp;ecirc;n đ&amp;oacute;ng học ph&amp;iacute; một lần sẻ được giảm 10% học ph&amp;iacute;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;color:#0000ff;&quot;&gt;&lt;strong&gt;Ghi ch&amp;uacute;: dạy theo phương ph&amp;aacute;p truyền nghề. Thực h&amp;agrave;nh 100% tr&amp;ecirc;n c&amp;aacute;c m&amp;aacute;y đời mới&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;span style=&quot;color:#0000ff;&quot;&gt;&lt;strong&gt;Kết h&amp;uacute;c kho&amp;aacute; học học vi&amp;ecirc;n&amp;nbsp; kh&amp;aacute; giỏi được nhận lại c&amp;ocirc;ng ty với mức lương hấp dẩn&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(23, 23, 24); word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;', 'dạy nghề sửa chữa laptop', '', 'dạy nghề laptop', 'dạy nghề laptop', 'dạy nghề laptop', 'TRUNG TÂM SỬA CHỮA LAPTOP HOÀNG VỤ', 'www.suachualaptoplaylien.net', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-07-20 11:08:39', 'admin', '2013-07-30 22:10:48');
INSERT INTO `media` VALUES (21, 'default13743113041', '', 'media_news', '[120]', 'admin', 'HOANG VU', '', '', 'vn', '&lt;p&gt;\r\n	&lt;a href=&quot;//www.youtube.com/embed/SgIyoG_AXBs?rel=0&quot;&gt;//www.youtube.com/embed/SgIyoG_AXBs?rel=0&lt;/a&gt;&lt;/p&gt;', '', 'VIDEO HONG VU', '', '', '', '', 'HOANG VŨ', 'HOANG VU', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2013-07-20 16:17:35', 'admin', '2013-07-20 16:08:24');
INSERT INTO `media` VALUES (24, 'default13793024921', '', 'media_blog', '[164]', 'admin', 'HỘI NGHỊ GIAO BAN CÔNG TÁC BẢO VỆ RỪNG THÁNG 07 NĂM 2013', '', '', 'vn', '', '&lt;div style=&quot;margin-left:20px&quot;&gt;\r\n	&lt;p style=&quot;text-align: right;&quot;&gt;\r\n		&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;em&gt;Tin b&amp;agrave;i: Phạm Ngọc Như&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Hội nghị giao ban c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng c&amp;aacute;c đơn vị nhận kho&amp;aacute;n được tổ chức v&amp;agrave;o ng&amp;agrave;y 31/7/2013, tại văn ph&amp;ograve;ng Hạt Kiểm l&amp;acirc;m huyện Cần Giờ, &amp;ocirc;ng Phạm Thanh T&amp;ugrave;ng - Ph&amp;oacute; Trưởng Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ chủ tr&amp;igrave; Hội nghị giao ban c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng với c&amp;aacute;c đơn vị nhận kho&amp;aacute;n th&amp;aacute;ng 7/2013. Đến tham dự c&amp;oacute; đại diện Ph&amp;ograve;ng Kinh tế huyện Cần Giờ, Hạt Kiểm l&amp;acirc;m Cần Giờ; UBND c&amp;aacute;c x&amp;atilde;: Thạnh An, Tam Th&amp;ocirc;n Hiệp, An Thới Đ&amp;ocirc;ng; Trạm Bảo vệ Nguồn lợi Thủy sản Cần Giờ; C&amp;ocirc;ng an Huyện; Ph&amp;ograve;ng Cảnh s&amp;aacute;t Ph&amp;ograve;ng ch&amp;aacute;y v&amp;agrave; Chữa ch&amp;aacute;y Huyện, 14 đơn vị nhận kho&amp;aacute;n bảo vệ rừng v&amp;agrave; 05 Ph&amp;acirc;n khu trực thuộc Ban Quản l&amp;yacute;.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0010.jpg&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0009.jpg&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0011.jpg&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0012.jpg&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Ảnh: C&amp;aacute;c đơn vị tham gia trao đổi, đ&amp;oacute;ng g&amp;oacute;p &amp;yacute; kiến tại hội nghị&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Qua trao đổi, đ&amp;oacute;ng g&amp;oacute;p &amp;yacute; kiến của c&amp;aacute;c đơn vị dự hội nghị, &amp;ocirc;ng Phạm Thanh T&amp;ugrave;ng chủ tr&amp;igrave; hội nghị kết luận:&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;C&amp;aacute;c đơn vị nhận kho&amp;aacute;n đ&amp;atilde; thực hiện tương đối tốt nhiệm vụ quản l&amp;yacute; bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng, ph&amp;ograve;ng ch&amp;aacute;y chữa ch&amp;aacute;y, an ninh trật tự tr&amp;ecirc;n địa b&amp;agrave;n phụ tr&amp;aacute;ch trong th&amp;aacute;ng 7/2013. Tuy nhi&amp;ecirc;n, vẫn để xảy ra 03 vụ vi phạm về Luật Bảo vệ v&amp;agrave; Ph&amp;aacute;t triển rừng, đ&amp;atilde; lập bi&amp;ecirc;n bản v&amp;agrave; chuyển cơ quan chức năng xử l&amp;yacute;, t&amp;agrave;i nguy&amp;ecirc;n rừng bị thiệt hại gồm: 1.241 c&amp;acirc;y Ch&amp;agrave; l&amp;agrave; v&amp;agrave; 54 kg Địa s&amp;acirc;m; đồng thời theo d&amp;otilde;i diễn biến t&amp;agrave;i nguy&amp;ecirc;n tr&amp;ecirc;n to&amp;agrave;n địa b&amp;agrave;n rừng ph&amp;ograve;ng hộ. Qua đ&amp;oacute;, đ&amp;atilde; thống k&amp;ecirc; c&amp;acirc;y rừng bị ảnh hưởng do nguy&amp;ecirc;n nh&amp;acirc;n bất khả kh&amp;aacute;ng l&amp;agrave; 711 c&amp;acirc;y, trong đ&amp;oacute;: c&amp;acirc;y đước 555 c&amp;acirc;y v&amp;agrave; 156 c&amp;acirc;y kh&amp;aacute;c. Trong th&amp;aacute;ng 8/2013, c&amp;aacute;c đơn vị nhận kho&amp;aacute;n cần tập trung thực hiện một số nhiệm vụ trọng t&amp;acirc;m như sau:&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Tăng cường c&amp;ocirc;ng t&amp;aacute;c tuần tra, kiểm tra quản l&amp;yacute; bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng, động vật hoang d&amp;atilde; v&amp;agrave; tuy&amp;ecirc;n truyền đến c&amp;aacute;c hộ sản xuất dưới t&amp;aacute;n rừng nhằm kịp thời ngăn chặn c&amp;aacute;c h&amp;agrave;nh vi vi phạm. Thường xuy&amp;ecirc;n kiểm tra, bảo dưỡng phương tiện, trang thiết bị dụng cụ cứu hộ để chủ động ứng ph&amp;oacute; kịp thời khi c&amp;oacute; sự cố xảy ra v&amp;agrave; thực hiện theo phương ch&amp;acirc;m 04 tại chỗ, 03 sẵn s&amp;agrave;ng; đồng thời trang bị &amp;aacute;o phao, phao cứu sinh, chằng ch&amp;eacute;o nh&amp;agrave; cửa nhằm chủ động ứng ph&amp;oacute; kịp thời với thời tiết bất thường như hiện nay.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Theo d&amp;otilde;i diễn biến t&amp;agrave;i nguy&amp;ecirc;n rừng về nguy&amp;ecirc;n nh&amp;acirc;n bất khả kh&amp;aacute;ng, t&amp;igrave;nh h&amp;igrave;nh s&amp;acirc;u hại ăn l&amp;aacute; c&amp;acirc;y rừng, động vật rừng, t&amp;igrave;nh h&amp;igrave;nh vi phạm Luật Bảo vệ v&amp;agrave; Ph&amp;aacute;t triển rừng v&amp;agrave; c&amp;aacute;c quy định vể đ&amp;aacute;nh bắt lạm s&amp;aacute;t nguồn lợi thủy sản tr&amp;ecirc;n địa b&amp;agrave;n quản l&amp;yacute; bảo vệ.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0014 (1).jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Ảnh: &amp;Ocirc;ng Phạm Thanh T&amp;ugrave;ng&amp;nbsp;&amp;nbsp;kết luận cuối hội nghị.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Tiếp tục triển khai kế hoạch hoạt động phối hợp cụm gi&amp;aacute;p ranh theo quy chế đ&amp;atilde; k&amp;yacute; giữa Ban Quản l&amp;yacute; v&amp;agrave; c&amp;aacute;c đơn vị nhận kho&amp;aacute;n để thực hiện trong năm 2013, đồng thời phối hợp với Ban chỉ huy thống nhất c&amp;aacute;c x&amp;atilde; tăng cường c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng, bảo vệ nguồn lợi thủy sản, an ninh trật tự v&amp;agrave; tuy&amp;ecirc;n truyền đến cộng đồng d&amp;acirc;n cư tại địa phương.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Chủ động tăng cường tổ chức lực lượng tuần tra trong khu vực, nắm bắt th&amp;ocirc;ng tin, b&amp;aacute;o c&amp;aacute;o kịp thời, đầy đủ v&amp;agrave; ch&amp;iacute;nh x&amp;aacute;c.&amp;nbsp;&lt;br /&gt;\r\n		- C&amp;aacute;c đơn vị nhận kho&amp;aacute;n như: BCH Qu&amp;acirc;n sự huyện Cần Giờ, C&amp;ocirc;ng&amp;nbsp; ty TNHH MTV DVCI &amp;ndash; TNXP, Đồn Bi&amp;ecirc;n ph&amp;ograve;ng Cần Thạnh v&amp;agrave; Đồn Bi&amp;ecirc;n ph&amp;ograve;ng Long H&amp;ograve;a tiếp tục r&amp;agrave; so&amp;aacute;t, thống k&amp;ecirc; c&amp;aacute;c tổ chức, hộ gia đ&amp;igrave;nh, c&amp;aacute; nh&amp;acirc;n đang hoạt động nu&amp;ocirc;i trồng, khai th&amp;aacute;c thủy sản v&amp;agrave; sản xuất muối tr&amp;ecirc;n khu vực nhận kho&amp;aacute;n quản l&amp;yacute; bảo vệ. Kết quả gửi về Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ trước ng&amp;agrave;y 26/8/2013.&lt;br /&gt;\r\n		- C&amp;aacute;c đơn vị nhận kho&amp;aacute;n lập danh s&amp;aacute;ch trực Lễ Quốc kh&amp;aacute;nh ng&amp;agrave;y 02/9/2103 v&amp;agrave; gửi về Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ trước ng&amp;agrave;y 26/8/2013.&amp;nbsp;&lt;br /&gt;\r\n		- Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ c&amp;ugrave;ng với UBND x&amp;atilde; L&amp;yacute; Nhơn, Hạt Kiểm l&amp;acirc;m Cần Giờ l&amp;agrave;m việc với đơn vi nhận kho&amp;aacute;n C&amp;ocirc;ng ty TNHH MTV DVDL Ph&amp;uacute; Thọ để đưa ra giải ph&amp;aacute;p trong c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng, đặc biệt l&amp;agrave; trường hợp khai th&amp;aacute;c ch&amp;agrave; l&amp;agrave; tr&amp;aacute;i ph&amp;eacute;p tr&amp;ecirc;n khu vực nhận kho&amp;aacute;n v&amp;agrave; địa b&amp;agrave;n x&amp;atilde; L&amp;yacute; Nhơn.&lt;br /&gt;\r\n		- Phối hợp với UBND x&amp;atilde; Thạnh An tổ chức đ&amp;aacute;nh gi&amp;aacute; kết quả phối hợp về c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng, bảo vệ nguồn lợi thủy sản, an ninh trật tự trong thời gian qua giữa Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ v&amp;agrave; UBND x&amp;atilde; Thạnh An, đồng thời k&amp;yacute; kết mới về quy chế phối hợp trong c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng, bảo vệ nguồn lợi thủy sản, ANTT, PCCC, PTTT-TKCHCN tr&amp;ecirc;n địa b&amp;agrave;n X&amp;atilde; Thạnh An.&lt;br /&gt;\r\n		- Phối hợp với Hạt Kiểm l&amp;acirc;m Cần Giờ, Ph&amp;ograve;ng Kinh tế Huyện, Ủy ban Nh&amp;acirc;n d&amp;acirc;n c&amp;aacute;c x&amp;atilde;, thị trấn c&amp;oacute; rừng khảo s&amp;aacute;t vị tr&amp;iacute;, hiện trạng đầm, ao, ruộng muối khi c&amp;oacute; phương &amp;aacute;n xin sửa chữa; đồng thời kiểm tra, gi&amp;aacute;m s&amp;aacute;t việc thi c&amp;ocirc;ng c&amp;aacute;c phương &amp;aacute;n tu sửa đầm c&amp;ograve;n thời hạn đ&amp;atilde; được UBND ph&amp;ecirc; duyệt.&lt;br /&gt;\r\n		- Thực hiện nghi&amp;ecirc;m nội dung chỉ đạo của Ph&amp;oacute; Chủ tịch Th&amp;agrave;nh phố tại c&amp;ocirc;ng văn số 760/UBND-CNN ng&amp;agrave;y 18/02/2013 của UBND Th&amp;agrave;nh phố về việc tăng cường c&amp;aacute;c biện ph&amp;aacute;p quản l&amp;yacute; bảo vệ rừng, ph&amp;ograve;ng ch&amp;aacute;y chữa ch&amp;aacute;y rừng v&amp;agrave; c&amp;acirc;y ph&amp;acirc;n t&amp;aacute;n năm 2013. Trong đ&amp;oacute;, thực hiện nghi&amp;ecirc;m t&amp;uacute;c &amp;yacute; kiến chỉ đạo tại mục 1.1 về tăng cường c&amp;aacute;c biện ph&amp;aacute;p ngăn chặn c&amp;aacute;c h&amp;agrave;nh vi chặt ph&amp;aacute; rừng, đ&amp;agrave;o bắt Địa s&amp;acirc;m tr&amp;aacute;i ph&amp;eacute;p; tăng cường quản l&amp;yacute; c&amp;aacute;c hoạt động nu&amp;ocirc;i thủy sản, sản xuất muối trong phạm vi rừng ph&amp;ograve;ng hộ.&lt;br /&gt;\r\n		- Thực hiện nghi&amp;ecirc;m nội dung chỉ đạo của Ph&amp;oacute; Chủ tịch UBND huyện Cần Giờ tại c&amp;ocirc;ng văn số 1059/UBND ng&amp;agrave;y 03/6/2013 về việc tăng cường phối hợp kiểm tra, xử l&amp;yacute; c&amp;aacute;c h&amp;agrave;nh vi đ&amp;agrave;o bắt, vận chuyển, mua b&amp;aacute;n động vật hoang d&amp;atilde; (Địa s&amp;acirc;m) tr&amp;aacute;i ph&amp;eacute;p v&amp;agrave; th&amp;ocirc;ng b&amp;aacute;o số 156/TB-VP ng&amp;agrave;y 09/7/2013 về c&amp;ocirc;ng t&amp;aacute;c bảo vệ v&amp;agrave; ph&amp;aacute;t triển nguồn lợi thủy sản tr&amp;ecirc;n địa b&amp;agrave;n Huyện.&amp;nbsp;&lt;br /&gt;\r\n		Cuối hội nghị, c&amp;aacute;c đơn vị thống nhất nội dung v&amp;agrave; quyết t&amp;acirc;m thực hiện tốt.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'hoi-nghi-giao-ban', '', '', '', '', '', '', 0, 0, 'upload/clip_image002_0014 (1).jpg', 0, '', '', '', 1, 0, 'active', '', '2013-09-16 10:34:52', 'admin', '2013-09-16 10:35:48');
INSERT INTO `media` VALUES (25, 'default13793024921', '', 'media_blog', '[164]', 'admin', 'HỘI NGHỊ GIAO BAN CÔNG TÁC BẢO VỆ RỪNG THÁNG 07 NĂM 2013', '', '', 'en', '', '', 'hoi-nghi-giao-ban', '', '', '', '', '', '', 0, 0, 'upload/clip_image002_0014 (1).jpg', 0, '', '', '', 1, 0, 'active', '', '2013-09-16 10:34:52', 'admin', '2013-09-16 10:35:48');
INSERT INTO `media` VALUES (26, 'default13793029371', '', 'media_news', '[164]', 'admin', 'Hội nghị giao ban công tác bảo vệ rừng tháng 7 năm 2013', '', '', 'vn', '', '&lt;div style=&quot;margin-left:20px;margin-right:20px&quot;&gt;\r\n	&lt;p style=&quot;text-align: right;&quot;&gt;\r\n		&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;em&gt;Tin b&amp;agrave;i: Phạm Ngọc Như&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Hội nghị giao ban c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng c&amp;aacute;c đơn vị nhận kho&amp;aacute;n được tổ chức v&amp;agrave;o ng&amp;agrave;y 31/7/2013, tại văn ph&amp;ograve;ng Hạt Kiểm l&amp;acirc;m huyện Cần Giờ, &amp;ocirc;ng Phạm Thanh T&amp;ugrave;ng - Ph&amp;oacute; Trưởng Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ chủ tr&amp;igrave; Hội nghị giao ban c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng với c&amp;aacute;c đơn vị nhận kho&amp;aacute;n th&amp;aacute;ng 7/2013. Đến tham dự c&amp;oacute; đại diện Ph&amp;ograve;ng Kinh tế huyện Cần Giờ, Hạt Kiểm l&amp;acirc;m Cần Giờ; UBND c&amp;aacute;c x&amp;atilde;: Thạnh An, Tam Th&amp;ocirc;n Hiệp, An Thới Đ&amp;ocirc;ng; Trạm Bảo vệ Nguồn lợi Thủy sản Cần Giờ; C&amp;ocirc;ng an Huyện; Ph&amp;ograve;ng Cảnh s&amp;aacute;t Ph&amp;ograve;ng ch&amp;aacute;y v&amp;agrave; Chữa ch&amp;aacute;y Huyện, 14 đơn vị nhận kho&amp;aacute;n bảo vệ rừng v&amp;agrave; 05 Ph&amp;acirc;n khu trực thuộc Ban Quản l&amp;yacute;.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0010.jpg&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0009.jpg&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0011.jpg&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0012.jpg&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Ảnh: C&amp;aacute;c đơn vị tham gia trao đổi, đ&amp;oacute;ng g&amp;oacute;p &amp;yacute; kiến tại hội nghị&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Qua trao đổi, đ&amp;oacute;ng g&amp;oacute;p &amp;yacute; kiến của c&amp;aacute;c đơn vị dự hội nghị, &amp;ocirc;ng Phạm Thanh T&amp;ugrave;ng chủ tr&amp;igrave; hội nghị kết luận:&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;C&amp;aacute;c đơn vị nhận kho&amp;aacute;n đ&amp;atilde; thực hiện tương đối tốt nhiệm vụ quản l&amp;yacute; bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng, ph&amp;ograve;ng ch&amp;aacute;y chữa ch&amp;aacute;y, an ninh trật tự tr&amp;ecirc;n địa b&amp;agrave;n phụ tr&amp;aacute;ch trong th&amp;aacute;ng 7/2013. Tuy nhi&amp;ecirc;n, vẫn để xảy ra 03 vụ vi phạm về Luật Bảo vệ v&amp;agrave; Ph&amp;aacute;t triển rừng, đ&amp;atilde; lập bi&amp;ecirc;n bản v&amp;agrave; chuyển cơ quan chức năng xử l&amp;yacute;, t&amp;agrave;i nguy&amp;ecirc;n rừng bị thiệt hại gồm: 1.241 c&amp;acirc;y Ch&amp;agrave; l&amp;agrave; v&amp;agrave; 54 kg Địa s&amp;acirc;m; đồng thời theo d&amp;otilde;i diễn biến t&amp;agrave;i nguy&amp;ecirc;n tr&amp;ecirc;n to&amp;agrave;n địa b&amp;agrave;n rừng ph&amp;ograve;ng hộ. Qua đ&amp;oacute;, đ&amp;atilde; thống k&amp;ecirc; c&amp;acirc;y rừng bị ảnh hưởng do nguy&amp;ecirc;n nh&amp;acirc;n bất khả kh&amp;aacute;ng l&amp;agrave; 711 c&amp;acirc;y, trong đ&amp;oacute;: c&amp;acirc;y đước 555 c&amp;acirc;y v&amp;agrave; 156 c&amp;acirc;y kh&amp;aacute;c. Trong th&amp;aacute;ng 8/2013, c&amp;aacute;c đơn vị nhận kho&amp;aacute;n cần tập trung thực hiện một số nhiệm vụ trọng t&amp;acirc;m như sau:&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Tăng cường c&amp;ocirc;ng t&amp;aacute;c tuần tra, kiểm tra quản l&amp;yacute; bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng, động vật hoang d&amp;atilde; v&amp;agrave; tuy&amp;ecirc;n truyền đến c&amp;aacute;c hộ sản xuất dưới t&amp;aacute;n rừng nhằm kịp thời ngăn chặn c&amp;aacute;c h&amp;agrave;nh vi vi phạm. Thường xuy&amp;ecirc;n kiểm tra, bảo dưỡng phương tiện, trang thiết bị dụng cụ cứu hộ để chủ động ứng ph&amp;oacute; kịp thời khi c&amp;oacute; sự cố xảy ra v&amp;agrave; thực hiện theo phương ch&amp;acirc;m 04 tại chỗ, 03 sẵn s&amp;agrave;ng; đồng thời trang bị &amp;aacute;o phao, phao cứu sinh, chằng ch&amp;eacute;o nh&amp;agrave; cửa nhằm chủ động ứng ph&amp;oacute; kịp thời với thời tiết bất thường như hiện nay.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Theo d&amp;otilde;i diễn biến t&amp;agrave;i nguy&amp;ecirc;n rừng về nguy&amp;ecirc;n nh&amp;acirc;n bất khả kh&amp;aacute;ng, t&amp;igrave;nh h&amp;igrave;nh s&amp;acirc;u hại ăn l&amp;aacute; c&amp;acirc;y rừng, động vật rừng, t&amp;igrave;nh h&amp;igrave;nh vi phạm Luật Bảo vệ v&amp;agrave; Ph&amp;aacute;t triển rừng v&amp;agrave; c&amp;aacute;c quy định vể đ&amp;aacute;nh bắt lạm s&amp;aacute;t nguồn lợi thủy sản tr&amp;ecirc;n địa b&amp;agrave;n quản l&amp;yacute; bảo vệ.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0014 (1).jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;Ảnh: &amp;Ocirc;ng Phạm Thanh T&amp;ugrave;ng&amp;nbsp;&amp;nbsp;kết luận cuối hội nghị.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Tiếp tục triển khai kế hoạch hoạt động phối hợp cụm gi&amp;aacute;p ranh theo quy chế đ&amp;atilde; k&amp;yacute; giữa Ban Quản l&amp;yacute; v&amp;agrave; c&amp;aacute;c đơn vị nhận kho&amp;aacute;n để thực hiện trong năm 2013, đồng thời phối hợp với Ban chỉ huy thống nhất c&amp;aacute;c x&amp;atilde; tăng cường c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng, bảo vệ nguồn lợi thủy sản, an ninh trật tự v&amp;agrave; tuy&amp;ecirc;n truyền đến cộng đồng d&amp;acirc;n cư tại địa phương.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;- Chủ động tăng cường tổ chức lực lượng tuần tra trong khu vực, nắm bắt th&amp;ocirc;ng tin, b&amp;aacute;o c&amp;aacute;o kịp thời, đầy đủ v&amp;agrave; ch&amp;iacute;nh x&amp;aacute;c.&amp;nbsp;&lt;br /&gt;\r\n		- C&amp;aacute;c đơn vị nhận kho&amp;aacute;n như: BCH Qu&amp;acirc;n sự huyện Cần Giờ, C&amp;ocirc;ng&amp;nbsp; ty TNHH MTV DVCI &amp;ndash; TNXP, Đồn Bi&amp;ecirc;n ph&amp;ograve;ng Cần Thạnh v&amp;agrave; Đồn Bi&amp;ecirc;n ph&amp;ograve;ng Long H&amp;ograve;a tiếp tục r&amp;agrave; so&amp;aacute;t, thống k&amp;ecirc; c&amp;aacute;c tổ chức, hộ gia đ&amp;igrave;nh, c&amp;aacute; nh&amp;acirc;n đang hoạt động nu&amp;ocirc;i trồng, khai th&amp;aacute;c thủy sản v&amp;agrave; sản xuất muối tr&amp;ecirc;n khu vực nhận kho&amp;aacute;n quản l&amp;yacute; bảo vệ. Kết quả gửi về Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ trước ng&amp;agrave;y 26/8/2013.&lt;br /&gt;\r\n		- C&amp;aacute;c đơn vị nhận kho&amp;aacute;n lập danh s&amp;aacute;ch trực Lễ Quốc kh&amp;aacute;nh ng&amp;agrave;y 02/9/2103 v&amp;agrave; gửi về Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ trước ng&amp;agrave;y 26/8/2013.&amp;nbsp;&lt;br /&gt;\r\n		- Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ c&amp;ugrave;ng với UBND x&amp;atilde; L&amp;yacute; Nhơn, Hạt Kiểm l&amp;acirc;m Cần Giờ l&amp;agrave;m việc với đơn vi nhận kho&amp;aacute;n C&amp;ocirc;ng ty TNHH MTV DVDL Ph&amp;uacute; Thọ để đưa ra giải ph&amp;aacute;p trong c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng, đặc biệt l&amp;agrave; trường hợp khai th&amp;aacute;c ch&amp;agrave; l&amp;agrave; tr&amp;aacute;i ph&amp;eacute;p tr&amp;ecirc;n khu vực nhận kho&amp;aacute;n v&amp;agrave; địa b&amp;agrave;n x&amp;atilde; L&amp;yacute; Nhơn.&lt;br /&gt;\r\n		- Phối hợp với UBND x&amp;atilde; Thạnh An tổ chức đ&amp;aacute;nh gi&amp;aacute; kết quả phối hợp về c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng, bảo vệ nguồn lợi thủy sản, an ninh trật tự trong thời gian qua giữa Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ v&amp;agrave; UBND x&amp;atilde; Thạnh An, đồng thời k&amp;yacute; kết mới về quy chế phối hợp trong c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng, bảo vệ nguồn lợi thủy sản, ANTT, PCCC, PTTT-TKCHCN tr&amp;ecirc;n địa b&amp;agrave;n X&amp;atilde; Thạnh An.&lt;br /&gt;\r\n		- Phối hợp với Hạt Kiểm l&amp;acirc;m Cần Giờ, Ph&amp;ograve;ng Kinh tế Huyện, Ủy ban Nh&amp;acirc;n d&amp;acirc;n c&amp;aacute;c x&amp;atilde;, thị trấn c&amp;oacute; rừng khảo s&amp;aacute;t vị tr&amp;iacute;, hiện trạng đầm, ao, ruộng muối khi c&amp;oacute; phương &amp;aacute;n xin sửa chữa; đồng thời kiểm tra, gi&amp;aacute;m s&amp;aacute;t việc thi c&amp;ocirc;ng c&amp;aacute;c phương &amp;aacute;n tu sửa đầm c&amp;ograve;n thời hạn đ&amp;atilde; được UBND ph&amp;ecirc; duyệt.&lt;br /&gt;\r\n		- Thực hiện nghi&amp;ecirc;m nội dung chỉ đạo của Ph&amp;oacute; Chủ tịch Th&amp;agrave;nh phố tại c&amp;ocirc;ng văn số 760/UBND-CNN ng&amp;agrave;y 18/02/2013 của UBND Th&amp;agrave;nh phố về việc tăng cường c&amp;aacute;c biện ph&amp;aacute;p quản l&amp;yacute; bảo vệ rừng, ph&amp;ograve;ng ch&amp;aacute;y chữa ch&amp;aacute;y rừng v&amp;agrave; c&amp;acirc;y ph&amp;acirc;n t&amp;aacute;n năm 2013. Trong đ&amp;oacute;, thực hiện nghi&amp;ecirc;m t&amp;uacute;c &amp;yacute; kiến chỉ đạo tại mục 1.1 về tăng cường c&amp;aacute;c biện ph&amp;aacute;p ngăn chặn c&amp;aacute;c h&amp;agrave;nh vi chặt ph&amp;aacute; rừng, đ&amp;agrave;o bắt Địa s&amp;acirc;m tr&amp;aacute;i ph&amp;eacute;p; tăng cường quản l&amp;yacute; c&amp;aacute;c hoạt động nu&amp;ocirc;i thủy sản, sản xuất muối trong phạm vi rừng ph&amp;ograve;ng hộ.&lt;br /&gt;\r\n		- Thực hiện nghi&amp;ecirc;m nội dung chỉ đạo của Ph&amp;oacute; Chủ tịch UBND huyện Cần Giờ tại c&amp;ocirc;ng văn số 1059/UBND ng&amp;agrave;y 03/6/2013 về việc tăng cường phối hợp kiểm tra, xử l&amp;yacute; c&amp;aacute;c h&amp;agrave;nh vi đ&amp;agrave;o bắt, vận chuyển, mua b&amp;aacute;n động vật hoang d&amp;atilde; (Địa s&amp;acirc;m) tr&amp;aacute;i ph&amp;eacute;p v&amp;agrave; th&amp;ocirc;ng b&amp;aacute;o số 156/TB-VP ng&amp;agrave;y 09/7/2013 về c&amp;ocirc;ng t&amp;aacute;c bảo vệ v&amp;agrave; ph&amp;aacute;t triển nguồn lợi thủy sản tr&amp;ecirc;n địa b&amp;agrave;n Huyện.&amp;nbsp;&lt;br /&gt;\r\n		Cuối hội nghị, c&amp;aacute;c đơn vị thống nhất nội dung v&amp;agrave; quyết t&amp;acirc;m thực hiện tốt.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'hoi-nghi-giao-ban-thang-7', '', '', '', '', '', '', 0, 0, 'upload/clip_image002_0014.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-16 10:42:17', 'admin', '2013-09-16 11:44:51');
INSERT INTO `media` VALUES (27, 'default13793029371', '', 'media_news', '[164]', 'admin', 'Hội nghị giao ban công tác bảo vệ rừng tháng 7 năm 2013', '', '', 'en', '', '', 'hoi-nghi-giao-ban-thang-7', '', '', '', '', '', '', 0, 0, 'upload/clip_image002_0014.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-16 10:42:17', 'admin', '2013-09-16 11:44:51');
INSERT INTO `media` VALUES (32, 'default13793071691', '', 'media_news', '[164]', 'admin', 'Lễ trao học bổng Nguyễn Đức Cảnh và khen thưởng con em CB-CNV', '', '', 'vn', '', '&lt;div style=&quot;margin-left:20px;margin-right:20px&quot;&gt;\r\n	&lt;p style=&quot;text-align: right;&quot;&gt;\r\n		&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;em&gt;Tin b&amp;agrave;i: Ngọc Qu&amp;yacute;&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;S&amp;aacute;ng ng&amp;agrave;y 8/8/2013 tại hội trường BQL rừng ph&amp;ograve;ng hộ đ&amp;atilde; diễn ra buổi lễ trao học bỏng Nguyễn Đức Cảnh v&amp;agrave; khen thưởng con em CBCNV c&amp;oacute; th&amp;agrave;nh t&amp;iacute;ch trong học tập trong năm học 2012-2013. Được biết đ&amp;acirc;y l&amp;agrave; chương tr&amp;igrave;nh do C&amp;ocirc;ng đo&amp;agrave;n cơ sở kết hợp với Chi hội Khuyến học BQL tổ chức.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Từ s&amp;aacute;ng sớm c&amp;aacute;c em học sinh v&amp;agrave; phụ huynh đ&amp;atilde; tập trung rất sớm. Ai nấy cũng đều vui v&amp;agrave; phấn khởi. C&amp;aacute;c em nhỏ th&amp;igrave; n&amp;ocirc;n nao, h&amp;aacute;o hức v&amp;igrave; sắp được nhận qu&amp;agrave;, c&amp;aacute;c bậc phụ huynh th&amp;igrave; vui v&amp;agrave; tự h&amp;agrave;o v&amp;igrave; c&amp;oacute; những đứa con ngoan tr&amp;ograve; giỏi. Do đợt ph&amp;aacute;t học bỏng năm nay rơi v&amp;agrave;o ng&amp;agrave;y tựu trường n&amp;ecirc;n c&amp;oacute; một số em kh&amp;ocirc;ng thu xếp đến được. Đến tham dự buổi lễ đồng ch&amp;iacute; C&amp;aacute;t Văn Th&amp;agrave;nh &amp;ndash; Ph&amp;oacute; Trưởng Ban ki&amp;ecirc;m Chủ tịch Chi hội Khuyến học BQL - c&amp;oacute; lời khen ngợi đến c&amp;aacute;c em đ&amp;atilde; đạt được những th&amp;agrave;nh t&amp;iacute;ch tốt trong học tập, đồng thời động vi&amp;ecirc;n c&amp;aacute;c em cố gắng trong học tập hơn nữa v&amp;agrave; trao dồi đạo đức để lu&amp;ocirc;n xứng đ&amp;aacute;ng l&amp;agrave; niềm tự h&amp;agrave;o của gia đ&amp;igrave;nh. Hầu hết c&amp;aacute;c em ở đ&amp;acirc;y đều c&amp;oacute; tinh thần hiếu học, biết vươn l&amp;ecirc;n. C&amp;oacute; nhiều trường hợp gia đ&amp;igrave;nh kh&amp;oacute; khăn, ba mẹ l&amp;agrave;m c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng đ&amp;oacute;ng chốt ở rừng chỉ thỉnh thoảng mới về nh&amp;agrave;, nhưng c&amp;aacute;c em kh&amp;ocirc;ng v&amp;igrave; thế m&amp;agrave; lơ l&amp;agrave; việc học. C&amp;aacute;c em đ&amp;atilde; tự vượt qua kh&amp;oacute; khăn trở ngại để phấn đấu học tập tốt. Tinh thần ấy thật đ&amp;aacute;ng tuy&amp;ecirc;n dương khen ngợi. Với tổng kinh ph&amp;iacute; hơn 14 triệu đồng, Chi hội Khuyến học v&amp;agrave; C&amp;ocirc;ng đo&amp;agrave;n cơ sở đ&amp;atilde; trao tổng cộng 41 suất bao gồm: 8 suất học bổng, 22 suất học sinh giỏi v&amp;agrave; 11 suất học sinh ti&amp;ecirc;n tiến. Đối với c&amp;aacute;c phần thưởng học sinh giỏi v&amp;agrave; học sinh ti&amp;ecirc;n tiến th&amp;igrave; x&amp;eacute;t theo ti&amp;ecirc;u ch&amp;iacute; học sinh chỉ cần đạt được th&amp;agrave;nh t&amp;iacute;ch tương ứng. Ri&amp;ecirc;ng đối với học bổng th&amp;igrave; đ&amp;ograve;i hỏi c&amp;aacute;c em học sinh phải c&amp;oacute; th&amp;agrave;nh t&amp;iacute;ch kh&amp;aacute; giỏi trở l&amp;ecirc;n v&amp;agrave; c&amp;oacute; ho&amp;agrave;n cảnh gia đ&amp;igrave;nh kh&amp;oacute; khăn. Tuy phần thưởng kh&amp;ocirc;ng nhiều nhưng gi&amp;aacute; trị về mặt tinh thần l&amp;agrave; rất lớn v&amp;igrave; đ&amp;atilde; kh&amp;iacute;ch lệ tinh thần học tập ở c&amp;aacute;c em. Đ&amp;acirc;y cũng l&amp;agrave; hoạt động thường ni&amp;ecirc;n nhằm chăm lo đời sống rất c&amp;oacute; &amp;yacute; nghĩa m&amp;agrave; C&amp;ocirc;ng đo&amp;agrave;n v&amp;agrave; chi hội Khuyến học d&amp;agrave;nh cho con em CB-CNV.&amp;nbsp;&lt;br /&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp;Mong rằng Chi hội Khuyến học BQL v&amp;agrave; C&amp;ocirc;ng đo&amp;agrave;n cơ sở sẽ c&amp;oacute; nhiều hoạt động hay v&amp;agrave; &amp;yacute; nghĩa thể hiện sự quan t&amp;acirc;m đến con em của CB-CVN hơn nữa nhằm g&amp;oacute;p phần tạo th&amp;ecirc;m động lực cho c&amp;aacute;c em nhỏ cố gắng học tập, đồng thời gi&amp;uacute;p CB-CNV của BQL b&amp;aacute;m trụ v&amp;agrave; ho&amp;agrave;n th&amp;agrave;nh tốt mọi nhiệm vụ được giao.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Một số hoạt động ch&amp;iacute;nh&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0033.jpg&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0032.jpg&quot; style=&quot;line-height: 1.67em; margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0034.jpg&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0031.jpg&quot; style=&quot;line-height: 1.67em; margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;/p&gt;\r\n&lt;/div&gt;', 'le-trao-hoc-bong', '', '', '', '', '', '', 0, 0, 'upload/anhhoc.jpg', 0, '', '', '', 1, 0, 'active', '', '2013-09-16 11:52:49', 'admin', '2013-09-16 11:53:38');
INSERT INTO `media` VALUES (28, 'default13793043401', '', 'media_news', '[164]', 'admin', 'Tổ chức giao lưu thể thao và văn nghệ với đoàn tình nguyện viên SJVN', '', '', 'vn', '', '&lt;div style=&quot;margin-left:20px;margin-right:20px&quot;&gt;\r\n	&lt;p style=&quot;text-align: right;&quot;&gt;\r\n		&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;em&gt;Tin b&amp;agrave;i: Huỳnh Kim Tựu&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Tổ chức T&amp;igrave;nh nguyện SJ Việt Nam&amp;nbsp;(Solidarit&amp;eacute;s Jeunesses Vietnam)&amp;nbsp;được s&amp;aacute;ng lập năm 2004 bởi c&amp;aacute;c t&amp;igrave;nh nguyện vi&amp;ecirc;n v&amp;agrave; cộng t&amp;aacute;c vi&amp;ecirc;n Việt Nam. SJ Việt Nam hoạt động th&amp;ocirc;ng qua một hệ thống c&amp;aacute;c tổ chức t&amp;igrave;nh nguyện ở khắp nơi tr&amp;ecirc;n thế giới như: Ch&amp;acirc;u &amp;Acirc;u, Trung Đ&amp;ocirc;ng, Ch&amp;acirc;u Phi, Ch&amp;acirc;u &amp;Aacute; v&amp;agrave; Bắc Mỹ.&lt;br /&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp;H&amp;agrave;ng năm, tổ chức T&amp;igrave;nh nguyện SJ Việt Nam (SJV Solidarit&amp;eacute;s Jeunesses Vietnam) đều tổ chức c&amp;aacute;c đợt t&amp;igrave;nh nguyện tại Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ Cần Giờ nhằm học hỏi, chia sẻ kinh nghiệm l&amp;agrave;m việc của Ban, thực hiện c&amp;aacute;c hoạt động tham quan, học tập v&amp;agrave; nghi&amp;ecirc;n cứu, tham gia c&amp;aacute;c hoạt động bảo vệ m&amp;ocirc;i trường trong phạm vi rừng ph&amp;ograve;ng hộ g&amp;oacute;p phần bảo tồn v&amp;agrave; ph&amp;aacute;t triển rừng. Cụ thể, v&amp;agrave;o ng&amp;agrave;y 06/8/2013 đến 18/8/2013 đo&amp;agrave;n t&amp;igrave;nh nguy&amp;ecirc;n vi&amp;ecirc;n gồm 16 bạn đ&amp;atilde; đến v&amp;agrave; thực hiện c&amp;aacute;c chương tr&amp;igrave;nh tại Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ Cần Giờ.&lt;br /&gt;\r\n		&amp;nbsp; &amp;nbsp; &amp;nbsp;Để gắn chặt t&amp;igrave;nh đo&amp;agrave;n kết, hữu nghị giữa Ban v&amp;agrave; tổ chức t&amp;igrave;nh nguyện SJ Việt Nam, v&amp;agrave;o ng&amp;agrave;y 14/8/2013, L&amp;atilde;nh đạo Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ Cần Giờ đ&amp;atilde; tổ chức giao lưu thể thao, văn nghệ. Buổi giao lưu diễn ra với nhiều hoạt động: Giới thiệu tổng quan về rừng ngập mặn Cần Giờ, chia sẻ kinh nghiệm Quản l&amp;yacute; rừng ngập mặn, giao lưu c&amp;aacute;c m&amp;ocirc;n thể thao b&amp;oacute;ng chuyền, cầu l&amp;ocirc;ng v&amp;agrave; văn nghệ. Sau phần giao lưu thể thao đầy s&amp;ocirc;i động, mang t&amp;iacute;nh đồng đội cao, l&amp;agrave; phần ăn tối v&amp;agrave; giao lưu văn nghệ cũng kh&amp;ocirc;ng k&amp;eacute;m phần hấp dẫn v&amp;agrave; th&amp;uacute; vị.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0003.jpg&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0004.jpg&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;em&gt;H&amp;igrave;nh: Giới thiệu tổng quan rừng ngập mặn, chia sẻ kinh nghiệm&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0006.jpg&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0005.jpg&quot; style=&quot;line-height: 1.67em; margin-left: 10px; margin-right: 10px;&quot; /&gt;&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0007.jpg&quot; style=&quot;line-height: 1.67em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/clip_image002_0008.jpg&quot; style=&quot;line-height: 1.67em; margin-left: 10px; margin-right: 10px; margin-top: 10px;&quot; /&gt;&lt;/p&gt;\r\n	&lt;p style=&quot;text-align: center;&quot;&gt;\r\n		&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;em&gt;H&amp;igrave;nh: Một số h&amp;igrave;nh ảnh giao lưu thể thao, văn nghệ v&amp;agrave; hoạt động tại Ban.&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'to-chuc-giao-luu', '', '', '', '', '', '', 0, 0, 'upload/clip_image002_0002.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-16 11:05:40', 'admin', '2013-09-16 11:44:20');
INSERT INTO `media` VALUES (29, 'default13793043401', '', 'media_news', '[164]', 'admin', 'Tổ chức giao lưu thể thao và văn nghệ với đoàn tình nguyện viên SJVN', '', '', 'en', '', '', 'to-chuc-giao-luu', '', '', '', '', '', '', 0, 0, 'upload/clip_image002_0002.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-16 11:05:40', 'admin', '2013-09-16 11:44:20');
INSERT INTO `media` VALUES (30, 'default13793063791', '', 'media_news', '[164]', 'admin', 'Hội nghi sơ kết và kí kết quy chế phối hợp liên tịch về công tác quản lý bảo vệ rừng', '', '', 'vn', '', '&lt;div style=&quot;margin-left:20px;margin-right:20px&quot;&gt;\r\n&lt;p style=&quot;text-align: right;&quot;&gt;\r\n	&lt;em&gt;&lt;span style=&quot;color:#e7b425;&quot;&gt;Tin b&amp;agrave;i: Huỳnh Kim Tựu&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Nhằm đ&amp;aacute;nh gi&amp;aacute; kết quả 10 năm thực hiện Quy chế phối hợp giữa BQL rừng ph&amp;ograve;ng hộ v&amp;agrave; UBND x&amp;atilde; Thạnh An trong c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute;, bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng tr&amp;ecirc;n địa b&amp;agrave;n, đ&amp;aacute;nh gi&amp;aacute; lại kết quả đạt được từ đ&amp;oacute; r&amp;uacute;t ra những hạn chế tồn tại trong c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng cũng như bảo vệ an ninh trật tự tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde; trong thời gian qua để l&amp;agrave;m cơ sở tiếp tục k&amp;yacute; kết Quy chế phối hợp li&amp;ecirc;n tịch về c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng, bảo vệ NLTS, PCCC, Ph&amp;ograve;ng TTT - TKCHCN v&amp;agrave; ANTT trong rừng ph&amp;ograve;ng hộ tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde; giữa BQL rừng ph&amp;ograve;ng hộ Cần Giờ v&amp;agrave; UBND x&amp;atilde; Thạnh An trong thời gian tiếp theo. Ng&amp;agrave;y 15 th&amp;aacute;ng 8 năm&amp;nbsp; 2013, tại văn ph&amp;ograve;ng Ủy ban nh&amp;acirc;n d&amp;acirc;n x&amp;atilde; Thạnh An, Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ Cần Giờ phối hợp với Ủy ban nh&amp;acirc;n d&amp;acirc;n x&amp;atilde; Thạnh An tổ chức Hội nghị sơ kết v&amp;agrave; k&amp;yacute; kết quy chế phối hợp li&amp;ecirc;n tịch về c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng, bảo vệ nguồn lợi thủy sản, ph&amp;ograve;ng ch&amp;aacute;y chữa ch&amp;aacute;y, ph&amp;ograve;ng tr&amp;aacute;nh thi&amp;ecirc;n tai - t&amp;igrave;m kiếm cứu hộ cứu nạn v&amp;agrave; an ninh trật tự trong rừng ph&amp;ograve;ng hộ Cần Giờ tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image005_0000.gif&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;em&gt;Một số h&amp;igrave;nh ảnh c&amp;aacute;c đơn vị tham gia trao đổi, đ&amp;oacute;ng g&amp;oacute;p &amp;yacute; kiến tại hội nghị&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Sau khi trao đổi, ghi nhận &amp;yacute; kiến đ&amp;oacute;ng g&amp;oacute;p của c&amp;aacute;c đơn vị tham gia hội nghị, thay mặt hội nghị, &amp;ocirc;ng Phạm Thanh T&amp;ugrave;ng - Ph&amp;oacute; Trưởng Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ - Chủ tr&amp;igrave; hội nghị kết luận như sau:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Nh&amp;igrave;n chung c&amp;ocirc;ng t&amp;aacute;c phối hợp giữa lực lượng của Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ với c&amp;aacute;c đơn vị nhận kho&amp;aacute;n, Trạm kiểm l&amp;acirc;m sở tại v&amp;agrave; lực lượng của UBND x&amp;atilde; h&amp;agrave;ng năm đ&amp;atilde; tổ chức tuần tra, kiểm tra về c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng, bảo vệ nguồn lợi thủy sản v&amp;agrave; an ninh trật tự tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde; Thạnh An tương đối ổn định.&amp;nbsp;&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;C&amp;aacute;c đơn vị đ&amp;atilde; phối hợp chặt chẽ, hạn chế số vụ vi phạm c&amp;aacute;c quy định của ph&amp;aacute;p luật về bảo vệ v&amp;agrave; ph&amp;aacute;t triển rừng, bảo vệ nguồn lợi thủy sản, an ninh trật tự. Kịp thời ngăn chặn c&amp;aacute;c h&amp;agrave;nh vi vi phạm như: khai th&amp;aacute;c rừng tr&amp;aacute;i ph&amp;eacute;p, ph&amp;aacute; rừng tr&amp;aacute;i ph&amp;aacute;p luật, vận chuyển l&amp;acirc;m sản tr&amp;aacute;i ph&amp;eacute;p, săn, bắt động vật hoang d&amp;atilde;... Đặc biệt c&amp;aacute;c đơn vị đ&amp;atilde; x&amp;acirc;y dựng được lực lượng, đội ngũ bảo vệ rừng thường xuy&amp;ecirc;n c&amp;oacute; mặt tr&amp;ecirc;n địa b&amp;agrave;n rừng ph&amp;ograve;ng hộ n&amp;oacute;i chung v&amp;agrave; tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde; Thạnh An n&amp;oacute;i ri&amp;ecirc;ng.&amp;nbsp;&lt;br /&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;T&amp;igrave;nh h&amp;igrave;nh g&amp;acirc;y thiệt hại c&amp;acirc;y rừng, đất l&amp;acirc;m nghiệp vẫn c&amp;ograve;n xảy ra, đặc biệt l&amp;agrave; t&amp;igrave;nh h&amp;igrave;nh vận chuyển động vật hoang d&amp;atilde; (Địa S&amp;acirc;m) v&amp;agrave; chặt đọt ch&amp;agrave; l&amp;agrave; b&amp;aacute;n tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde; hoạt động ng&amp;agrave;y c&amp;agrave;ng tinh vi, kh&amp;oacute; ph&amp;aacute;t hiện để ngăn chặn. Nguy&amp;ecirc;n nh&amp;acirc;n do người d&amp;acirc;n tr&amp;ecirc;n địa b&amp;agrave;n c&amp;aacute;c x&amp;atilde; kh&amp;ocirc;ng c&amp;oacute; việc l&amp;agrave;m ổn định, đời sống kh&amp;oacute; khăn n&amp;ecirc;n họ tự &amp;yacute; v&amp;agrave;o rừng khai th&amp;aacute;c l&amp;acirc;m sản tr&amp;aacute;i ph&amp;eacute;p. Tuy nhi&amp;ecirc;n, nhờ c&amp;aacute;c lực lượng tuần tra phối hợp thực hiện t&amp;iacute;ch cực hơn n&amp;ecirc;n phần lớn c&amp;aacute;c vụ vi phạm đều được ph&amp;aacute;t hiện v&amp;agrave; ngăn chặn kịp thời. Nhằm thực hiện tốt c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ t&amp;agrave;i nguy&amp;ecirc;n rừng, g&amp;oacute;p phần v&amp;agrave; duy tr&amp;igrave; c&amp;aacute;c kết quả hoạt động đạt được từ những năm qua trong rừng ph&amp;ograve;ng hộ tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde;. BQL rừng ph&amp;ograve;ng hộ Cần Giờ v&amp;agrave; UBND x&amp;atilde; Thanh An đồng &amp;yacute; tiếp tục k&amp;yacute; kết Quy chế phối hợp li&amp;ecirc;n tịch về c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng, bảo vệ NLTS, PCCC, ph&amp;ograve;ng tr&amp;aacute;nh thi&amp;ecirc;n tai - TKCHCN v&amp;agrave; ANTT trong rừng ph&amp;ograve;ng hộ Cần Giờ tr&amp;ecirc;n địa b&amp;agrave;n x&amp;atilde; trong thời gian tiếp theo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image005_0000.gif&quot; width=&quot;auto&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;em&gt;&amp;Ocirc;ng Phạm Thanh T&amp;ugrave;ng đại diện Ban Quản l&amp;yacute; v&amp;agrave;&amp;nbsp;&amp;ocirc;ng V&amp;otilde; Ho&amp;agrave;ng Kiệt đại diện x&amp;atilde; Thạnh An k&amp;yacute; kết quy chế phối hợp&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Cuối hội nghị, c&amp;aacute;c đơn vị thống nhất th&amp;ocirc;ng qua nội dung v&amp;agrave; tiếp tục k&amp;yacute; kết quy chế phối hợp thực hiện&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;color:#ffffff;&quot;&gt;&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/clip_image005_0001.gif&quot; width=&quot;auto&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;', 'hoi-nghi-so-ket-va-ki-ket', '', '', '', '', '', '', 0, 0, 'upload/anhgban1.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-16 11:39:39', 'admin', '2013-09-16 11:42:31');
INSERT INTO `media` VALUES (31, 'default13793063791', '', 'media_news', '[164]', 'admin', 'Hội nghi sơ kết và kí kết quy chế phối hợp liên tịch về công tác quản lý bảo vệ rừng', '', '', 'en', '', '', 'hoi-nghi-so-ket-va-ki-ket', '', '', '', '', '', '', 0, 0, 'upload/anhgban1.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-16 11:39:39', 'admin', '2013-09-16 11:42:31');
INSERT INTO `media` VALUES (33, 'default13793071691', '', 'media_news', '[164]', 'admin', 'Lễ trao học bổng Nguyễn Đức Cảnh và khen thưởng con em CB-CNV', '', '', 'en', '', '', 'le-trao-hoc-bong', '', '', '', '', '', '', 0, 0, 'upload/anhhoc.jpg', 0, '', '', '', 1, 0, 'active', '', '2013-09-16 11:52:49', 'admin', '2013-09-16 11:53:38');
INSERT INTO `media` VALUES (34, 'default13793085001', '', 'media_news', '[157]', 'admin', 'Nguyên nhân làm suy thoái và giảm diện tích trồng rừng đước ( Rhizophora apiculata )', '', '', 'vn', '', '&lt;p style=&quot;text-align: right;&quot;&gt;\r\n	&lt;span style=&quot;color:#e7b425;&quot;&gt;&lt;em&gt;Ks. B&amp;ugrave;i Nguyễn Thế Kiệt&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;Rừng ngập mặn Cần Giờ c&amp;oacute; 31.773,26 ha diện t&amp;iacute;ch đất c&amp;oacute; rừng, trong đ&amp;oacute; diện t&amp;iacute;ch rừng trồng l&amp;agrave; 18.963,13 ha (chiếm hơn 59% tổng diện t&amp;iacute;ch c&amp;oacute; rừng). Một số lo&amp;agrave;i c&amp;acirc;y được trồng rừng như: Đước đ&amp;ocirc;i, D&amp;agrave;, Vẹt, Xu, C&amp;oacute;c trắng, Trang, Tra l&amp;acirc;m vồ , G&amp;otilde; biểm, Đưng ngo&amp;agrave;i mục đ&amp;iacute;ch phục hồi diện t&amp;iacute;ch c&amp;oacute; rừng, c&amp;ograve;n l&amp;agrave;m tăng t&amp;iacute;nh đa dạng th&amp;agrave;nh phần lo&amp;agrave;i c&amp;acirc;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;vertical-align: top; width: 400px; text-align: justify;&quot;&gt;\r\n				&lt;br /&gt;\r\n				&amp;nbsp; &amp;nbsp; &amp;nbsp;Đước đ&amp;ocirc;i l&amp;agrave; lo&amp;agrave;i c&amp;acirc;y được g&amp;acirc;y trồng chủ yếu trong c&amp;aacute;c giai đoạn (từ năm 1978 &amp;ndash; đến nay) trồng rừng ở huyện Cần Giờ, diện t&amp;iacute;ch rừng của lo&amp;agrave;i n&amp;agrave;y chiếm hơn 90% tổng diện t&amp;iacute;ch rừng trồng. Hiện nay, những khu rừng trồng n&amp;agrave;y xuất hiện t&amp;igrave;nh h&amp;igrave;nh s&amp;acirc;u bệnh hại, c&amp;acirc;y chết kh&amp;ocirc;ng r&amp;otilde; nguy&amp;ecirc;n nh&amp;acirc;n ph&amp;acirc;n bố rải r&amp;aacute;c trong rừng ngập mặn.&lt;/td&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/s1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;strong&gt;Rừng Đước&lt;/strong&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'nguyen-nhan-suy-thoai-rung', '', '', '', '', '', '', 0, 0, 'upload/s1.jpg', 0, '', '', '', 8, 0, 'active', '', '2013-09-16 12:15:00', 'admin', '2013-09-16 12:18:43');
INSERT INTO `media` VALUES (35, 'default13793085001', '', 'media_news', '[157]', 'admin', 'Nguyên nhân làm suy thoái và giảm diện tích trồng rừng đước ( Rhizophora apiculata )', '', '', 'en', '', '', 'nguyen-nhan-suy-thoai-rung', '', '', '', '', '', '', 0, 0, 'upload/s1.jpg', 0, '', '', '', 8, 0, 'active', '', '2013-09-16 12:15:00', 'admin', '2013-09-16 12:18:43');
INSERT INTO `media` VALUES (23, 'default13675574071', '', 'media_information', '[17]', '', 'Tổng quát về rừng ngập mặn Cần Giờ', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', NULL, 'admin', '2013-09-16 11:48:45');

-- --------------------------------------------------------

-- 
-- Table structure for table `media_event`
-- 

CREATE TABLE `media_event` (
  `id` bigint(20) NOT NULL auto_increment,
  `mediaid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `startdate` date NOT NULL,
  `starthour` varchar(100) collate utf8_unicode_ci NOT NULL,
  `enddate` date NOT NULL,
  `endhour` varchar(100) collate utf8_unicode_ci NOT NULL,
  `address` text collate utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `media_event`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `media_file`
-- 

CREATE TABLE `media_file` (
  `mediafileid` bigint(20) NOT NULL auto_increment,
  `mediaid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `fileid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `filepath` text collate utf8_unicode_ci NOT NULL,
  `filetype` varchar(50) collate utf8_unicode_ci NOT NULL,
  `status` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`mediafileid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

-- 
-- Dumping data for table `media_file`
-- 

INSERT INTO `media_file` VALUES (28, 'default13675109091', '', 'upload/may-chieu.png', 'image', '');
INSERT INTO `media_file` VALUES (27, 'default13675109091', '', 'upload/may-quay.png', 'image', '');
INSERT INTO `media_file` VALUES (26, 'default13675562041', '', 'upload/room-3.png', 'image', '');
INSERT INTO `media_file` VALUES (25, 'default13675562041', '', 'upload/room-2.png', 'image', '');
INSERT INTO `media_file` VALUES (24, 'default13675562041', '', 'upload/room-1.png', 'image', '');
INSERT INTO `media_file` VALUES (23, 'default13675564531', '', 'upload/keyboard.png', 'image', '');
INSERT INTO `media_file` VALUES (22, 'default13675564531', '', 'upload/adapter.png', 'image', '');
INSERT INTO `media_file` VALUES (21, 'default13675564531', '', 'upload/hdd.png', 'image', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `media_file_description`
-- 

CREATE TABLE `media_file_description` (
  `mediafileid` int(11) NOT NULL,
  `languageid` varchar(11) NOT NULL,
  `mediaid` varchar(100) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY  (`mediafileid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `media_file_description`
-- 

INSERT INTO `media_file_description` VALUES (28, 'vn', 'default13675109091', 'Máy chiếu');
INSERT INTO `media_file_description` VALUES (27, 'vn', 'default13675109091', 'Máy quay');
INSERT INTO `media_file_description` VALUES (26, 'vn', 'default13675562041', 'Phòng 3');
INSERT INTO `media_file_description` VALUES (25, 'vn', 'default13675562041', 'Phòng 2');
INSERT INTO `media_file_description` VALUES (24, 'vn', 'default13675562041', 'Phòng 1');
INSERT INTO `media_file_description` VALUES (23, 'vn', 'default13675564531', 'Hình 3');
INSERT INTO `media_file_description` VALUES (22, 'vn', 'default13675564531', 'Hình 2');
INSERT INTO `media_file_description` VALUES (21, 'vn', 'default13675564531', 'Hình 1');

-- --------------------------------------------------------

-- 
-- Table structure for table `media_information`
-- 

CREATE TABLE `media_information` (
  `id` bigint(20) NOT NULL auto_increment,
  `mediaid` varchar(50) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldvalue` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `media_information`
-- 

INSERT INTO `media_information` VALUES (1, 'default13675570951', 'zoom', '17');
INSERT INTO `media_information` VALUES (2, 'default13675570951', 'x', '10.782621');
INSERT INTO `media_information` VALUES (3, 'default13675570951', 'y', '106.6716778');

-- --------------------------------------------------------

-- 
-- Table structure for table `media_log`
-- 

CREATE TABLE `media_log` (
  `id` bigint(11) NOT NULL auto_increment,
  `mediaid` varchar(20) NOT NULL,
  `logdate` datetime NOT NULL,
  `logstatus` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `userip` varchar(50) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `media_log`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `message`
-- 

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL auto_increment,
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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `message`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `messagesend`
-- 

CREATE TABLE `messagesend` (
  `id` bigint(20) NOT NULL auto_increment,
  `messageid` varchar(20) NOT NULL,
  `username` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `senddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `messagesend`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `module`
-- 

CREATE TABLE `module` (
  `id` bigint(20) NOT NULL auto_increment,
  `areacode` varchar(10) NOT NULL,
  `moduleid` char(50) NOT NULL,
  `modulecode` varchar(250) NOT NULL,
  `modulename` text,
  `moduletype` varchar(10) NOT NULL,
  `object` varchar(250) NOT NULL,
  `moduleparent` varchar(50) default NULL,
  `position` int(11) default NULL,
  `status` varchar(20) NOT NULL,
  `modulepath` text NOT NULL,
  `permission` text,
  `languageid` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `effectcode` bigint(20) NOT NULL,
  `asshown` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

-- 
-- Dumping data for table `module`
-- 

INSERT INTO `module` VALUES (1, 'module', 'module/none', 'module/none', 'None', 'code', '', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (2, 'module', 'module/group', 'module/group', 'Group', 'code', '', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (3, 'module', 'module/groupfirst', 'module/groupfirst', 'Move to menu automatically', 'code', '', '', 2, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (4, 'module', 'module/homepage', 'module/homepage', 'Home Page', 'code', '', '', 3, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (5, 'module', 'module/information', 'module/information', 'Information', 'manage', 'media_information', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (6, 'module', 'module/news', 'module/news', 'News', 'manage', 'media_news', '', 4, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (7, 'module', 'module/gallery', 'module/gallery', 'Gallery', 'manage', 'media_gallery', '', 5, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (8, 'module', 'module/galleryalbum', 'module/galleryalbum', 'Gallery Album', 'manage', 'media_galleryalbum', '', 6, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (9, 'module', 'module/video', 'module/video', 'Video', 'manage', 'media_video', '', 7, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (10, 'module', 'module/videoalbum', 'module/videoalbum', 'Video Album', 'manage', 'media_videoalbum', '', 8, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (11, 'module', 'module/contact', 'module/contact', 'Contact', 'manage', 'media_contact', '', 9, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (12, 'module', 'module/contactmap', 'module/contactmap', 'Contact includes map', 'manage', 'media_contactmap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (13, 'module', 'module/download', 'module/download', 'Download', 'manage', 'media_download', '', 10, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (14, 'module', 'module/event', 'module/event', 'Event', 'manage', 'media_event', '', 11, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (15, 'module', 'module/link', 'module/link', 'Link', 'manage', 'sitemap', '', 12, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (16, 'module', 'module/product', 'module/product', 'Product', 'manage', 'product', '', 13, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (17, 'module', 'module/brochure', 'module/brochure', 'Post includes contact', 'manage', 'media_brochure', '', 14, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (18, 'module', 'module/brochurealbum', 'module/brochurealbum', 'Posts includes contact', 'manage', 'media_brochurealbum', '', 15, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (19, 'module', 'module/googlemap', 'module/googlemap', 'Google map', 'manage', 'media_googlemap', '', 16, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (20, 'module', 'module/faq', 'module/faq', 'Q&amp;A', 'manage', 'media_faq', '', 17, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (21, 'module', 'module/partners', 'module/partners', 'Partners', 'manage', 'media_partners', '', 18, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (22, 'sidebar', 'sidebar/supportonline', 'sidebar/supportonline', 'Support Online', 'manage', 'support', '', 19, 'Active', 'sidebar/supportonline', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (23, 'sidebar', 'sidebar/search', 'sidebar/search', 'Search', 'code', '', '', 20, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (24, 'sidebar', 'sidebar/weblinks', 'sidebar/weblinks', 'Web links', 'manage', 'sitemap', '', 21, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (25, 'sidebar', 'sidebar/eventcalendar', 'sidebar/eventcalendar', 'Event Calendar', 'manage', 'media_event', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (26, 'sidebar', 'sidebar/webcounter', 'sidebar/webcounter', 'Web Counter', 'code', '', '', 22, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (27, 'sidebar', 'sidebar/sociallinks', 'sidebar/sociallinks', 'Social Links', 'manage', 'weblink', '', 23, 'Active', 'sidebar/banner', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (28, 'sidebar', 'sidebar/videoplayer', 'sidebar/videoplayer', 'Video Player', 'refer', 'media_videoalbum', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (29, 'sidebar', 'sidebar/videoconnection', 'sidebar/videoconnection', 'Video Connection', 'refer', 'media_videoalbum', '', 24, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (30, 'sidebar', 'sidebar/servicescategories', 'sidebar/servicescategories', 'Services Categories', 'manage', 'sitemap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (31, 'sidebar', 'sidebar/productcategory', 'sidebar/productcategory', 'Products Categories', 'manage', 'sitemap', '', 26, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (32, 'sidebar', 'sidebar/banner', 'sidebar/banner', 'Banner', 'manage', 'media_banner', '', 27, 'Active', 'sidebar/banner', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (33, 'sidebar', 'sidebar/newscollection', 'sidebar/newscollection', 'News Collection', 'manage', 'media_news', '', 28, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (34, 'sidebar', 'sidebar/newsmostviews', 'sidebar/newsmostviews', 'Most Viewed News', 'code', 'media_news', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (35, 'sidebar', 'sidebar/newshot', 'sidebar/newshot', 'Hot News', 'refer', 'media_news', '', 30, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (36, 'sidebar', 'sidebar/newarrivalproducts', 'sidebar/newarrivalproducts', 'New Arrival Products', 'code', 'product', '', 31, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (37, 'sidebar', 'sidebar/mostviewedproducts', 'sidebar/mostviewedproducts', 'Most Viewed Products', 'code', 'product', '', 32, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (38, 'sidebar', 'sidebar/hotproducts', 'sidebar/hostproducts', 'Hot Products', 'refer', 'product', '', 33, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (39, 'sidebar', 'sidebar/bestsellerproducts', 'sidebar/bestsellerproducts', 'Best Seller Products', 'code', 'product', '', 34, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (40, 'splash', 'splash/homeslider', 'splash/homeslider', 'Homepage Bigbanner', 'code', '', '', 35, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (41, 'splash', 'splash/homelinks', 'splash/homelinks', 'Home Links', 'code', '', '', 36, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (42, 'module', 'module/downloadalbum', 'module/downloadalbum', 'Download Album', 'code', 'media_download', '', 37, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (43, 'splash', 'splash/promotionbox', 'splash/promotionbox', 'Box Khuyến mãi', 'manage', 'weblink', '', 38, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (44, 'splash', 'splash/edwinslider', 'splash/edwinslider', 'Edwin Slider', 'code', '', '', 39, 'Active', 'splash/edwinslider', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (45, 'splash', 'splash/edwinbanner', 'splash/edwinbanner', 'Edwin Banner', 'manage', '', '', 40, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (46, 'splash', 'splash/edwinfadebanner', 'splash/edwinfadebanner', 'Edwin Fade Banner', 'manage', '', '', 41, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (48, 'splash', 'splash/custom', 'splash/custom', 'custom splash', 'code', '', '', 42, 'Active', '', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (49, 'splash', 'splash/homesimpleslides', 'splash/homesimpleslides', 'homesimpleslides', 'manage', 'home slide', '', 43, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (50, 'splash', 'splash/threecolumnnewhomeproducts', 'splash/threecolumnnewhomeproducts', 'Three-Column New Home Products', 'code', '', '', 44, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (51, 'dashboard', 'dashboard/logoslides', 'dashboard/logoslides', 'Logo slides', 'manage', 'weblink', '', 45, 'Active', 'splash/logoslides', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (52, 'sidebar', 'sidebar/threenewslides', 'sidebar/threenewslides', 'Sidebar Top 9 News', 'code', '', '', 46, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (53, 'dashboard', 'dashboard/footerbanner', 'dashboard/footerbanner', 'Dashboard Banners', 'manage', 'weblink', '', 47, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (54, 'module', 'module/groupsitemap', 'module/groupsitemap', 'Group Sitemap', 'code', '', '', 48, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (55, 'sidebar', 'sidebar/subgroups', 'sidebar/subgroups', 'sidebar sub menu', 'code', '', '', 49, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (56, 'splash', 'splash/logoslides', 'splash/logoslides', 'Homepage Logo Slides', 'manage', 'weblink', '', 50, 'Active', 'splash/logoslides', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (57, 'module', 'module/blog', 'module/blog', 'Blog', 'code', '', '', 51, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');

-- --------------------------------------------------------

-- 
-- Table structure for table `option`
-- 

CREATE TABLE `option` (
  `optionid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `type` varchar(30) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`optionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `option`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `option_description`
-- 

CREATE TABLE `option_description` (
  `optionid` bigint(20) NOT NULL,
  `languageid` int(11) NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `option_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `option_value`
-- 

CREATE TABLE `option_value` (
  `option_value_id` bigint(20) NOT NULL auto_increment,
  `optionid` bigint(20) NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `option_value`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `option_value_description`
-- 

CREATE TABLE `option_value_description` (
  `option_value_id` bigint(20) NOT NULL,
  `optionid` bigint(20) NOT NULL,
  `languageid` int(11) NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `option_value_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `order`
-- 

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL auto_increment,
  `orderid` varchar(20) NOT NULL,
  `orderdate` datetime NOT NULL,
  `userid` varchar(50) NOT NULL,
  `customername` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `order`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `order_product`
-- 

CREATE TABLE `order_product` (
  `id` bigint(20) NOT NULL auto_increment,
  `orderid` varchar(20) NOT NULL,
  `mediaid` varchar(20) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `subtotal` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `order_product`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `plugin`
-- 

CREATE TABLE `plugin` (
  `plugin_id` bigint(20) NOT NULL auto_increment,
  `code` varchar(50) collate utf8_unicode_ci NOT NULL,
  `moduleid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `plugin_name` text collate utf8_unicode_ci NOT NULL,
  `language_id` varchar(5) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`plugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `plugin`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product`
-- 

CREATE TABLE `product` (
  `productid` bigint(20) NOT NULL auto_increment,
  `model` varchar(250) collate utf8_unicode_ci NOT NULL,
  `seo_url` varchar(250) collate utf8_unicode_ci NOT NULL,
  `location` text collate utf8_unicode_ci NOT NULL,
  `quantity` double NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
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
  `goodsstatus` text collate utf8_unicode_ci NOT NULL,
  `userid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `statusby` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

-- 
-- Dumping data for table `product`
-- 

INSERT INTO `product` VALUES (1, 'Máy quay', 'may-quay', '', 0, 'upload/may-quay.png', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-05-03 13:16:16', '2013-05-03 13:16:16', 0, 0, 110, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (2, 'Máy chiếu', 'may-chieu-moi', '', 0, 'upload/may-chieu.png', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-05-03 13:17:54', '2013-05-06 12:29:03', 0, 0, 110, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (3, 'Máy chiếu văn phòng', '', '', 0, 'upload/room-1.png', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-05-03 15:37:14', '2013-05-03 15:37:14', 0, 0, 110, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (4, 'Adapter hp 18.5v', 'link-kien-adapter', 'HCM', 1, 'upload/adapter hp 18.5v (1).jpg', 0, 0, 0, 260000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-16 09:33:41', '2013-07-30 19:32:38', 0, 0, 129, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (42, 'LCD 15.6 LED', '', '', 0, 'upload/15.6 led (1).jpg', 0, 0, 0, 2200000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:31:28', '2013-07-30 21:34:41', 0, 0, 130, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (41, 'LCD 11.6LED', '', '', 0, 'upload/11.6led (1).jpg', 0, 0, 0, 1400000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:29:41', '2013-07-30 21:29:59', 0, 0, 130, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (7, 'adapter sony 19.5v 4.7a', '', '', 0, 'upload/adapter sony 19.5v.jpg', 0, 0, 0, 250000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:00:48', '2013-07-30 19:30:21', 0, 0, 129, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (8, 'adapter asus', '', '', 0, 'upload/adapter asus 19v.jpg', 0, 0, 0, 250000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:24:48', '2013-07-30 19:24:24', 0, 0, 129, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (9, 'adapter getway', '', '', 0, 'upload/adapter getway 19v.jpg', 0, 0, 0, 250000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:26:19', '2013-07-30 19:26:50', 0, 0, 129, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (11, 'adapter lenovo', '', '', 0, 'upload/adapter lenovo 20v.jpg', 0, 0, 0, 250000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:29:31', '2013-07-30 19:28:49', 0, 0, 129, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (12, 'adapter lenovo 19v', '', 'adapter lenovo', 0, 'upload/adapter lenovo 19v.jpg', 0, 0, 0, 250000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:30:58', '2013-07-30 19:29:31', 0, 0, 129, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (13, 'lcd 14.1wg', '', '', 0, 'upload/12.1wg.jpg', 0, 0, 0, 1500000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:33:27', '2013-07-30 21:28:23', 0, 0, 130, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (14, 'màn hình 14.0led', '', '', 0, 'upload/14.0led.jpg', 0, 0, 0, 1300000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:34:46', '2013-07-30 21:27:28', 0, 0, 130, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (15, 'lcd 17.1wg', '', '', 0, 'upload/17.1wg.jpg', 0, 0, 0, 1800000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:36:28', '2013-07-30 21:27:54', 0, 0, 130, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (16, 'lcd 15.6wg', '', '', 0, 'upload/15.6 led.jpg', 0, 0, 0, 1800000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:38:07', '2013-07-30 21:28:09', 0, 0, 130, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (17, 'pin laptop dell', '', '', 0, 'upload/7c0a83cd584bfc065ead01a531b9a4fa.jpg', 0, 0, 0, 490000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:41:34', '2013-07-30 21:35:30', 0, 0, 131, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (18, 'pin laptop sony', '', '', 0, 'upload/39c6c45eee176739c6dce8188a431f1b.jpg', 0, 0, 0, 500000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:42:52', '2013-07-30 21:36:03', 0, 0, 131, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (19, 'pin laptop toshiba', '', '', 0, 'upload/8ad234094aec2b2e4f082ae978af2608.jpg', 0, 0, 0, 500000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:43:47', '2013-07-30 21:36:17', 0, 0, 131, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (20, 'pin laptop lenovo', '', '', 0, 'upload/8def8f901f7a4d56941527b0deea514d.jpg', 0, 0, 0, 500000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:44:20', '2013-07-30 21:36:34', 0, 0, 131, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (21, 'bàn phím laptop sony', '', '', 0, 'upload/bàn phím sony cr.jpg', 0, 0, 0, 420000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:48:35', '2013-07-30 21:40:53', 0, 0, 137, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (22, 'bàn phím laptop acer', '', '', 0, 'upload/ban phim  acer.jpg', 0, 0, 0, 360000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:49:51', '2013-07-30 21:41:09', 0, 0, 137, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (23, 'bàn phím laptop hp', '', '', 0, 'upload/bàn phím hp.jpg', 0, 0, 0, 350000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:51:00', '2013-07-30 21:41:23', 0, 0, 137, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (24, 'bàn phím laptop dell', '', '', 0, 'upload/bàn phím acer 4736.jpg', 0, 0, 0, 370000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 21:53:08', '2013-07-30 21:41:39', 0, 0, 137, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (25, 'HDD SATA 320G', '', '', 0, 'upload/hdd sata 320g (2).png', 0, 0, 0, 900000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:02:18', '2013-07-29 22:02:18', 0, 0, 138, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (26, 'HDD SATA 250G', '', '', 0, 'upload/hdd sata 250g (2).png', 0, 0, 0, 800000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:03:47', '2013-07-29 22:03:47', 0, 0, 138, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (27, 'HDD ATA 40G', '', '', 0, 'upload/hdd ata 100g (2).png', 0, 0, 0, 400000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:04:52', '2013-07-29 22:04:52', 0, 0, 138, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (28, 'HDD ZIP 80G', '', '', 0, 'upload/hdd zip 80g (2).png', 0, 0, 0, 1000000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:05:58', '2013-07-29 22:05:58', 0, 0, 138, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (29, 'RAM 2G DDR2 BUSS 800', '', '', 0, 'upload/upload_upload_2652011-202741RAM LAPTOP 2G BUS  800_fix_150x150_250x250.png', 0, 0, 0, 400000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:11:40', '2013-07-29 22:11:40', 0, 0, 139, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (30, 'RAM 2G DDR3 BUSS 1066', '', '', 0, 'upload/upload_2652011-202649RAM DDR3 2GB  BUS 1066_250x250 (1).png', 0, 0, 0, 300000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:13:47', '2013-07-29 22:13:47', 0, 0, 139, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (31, 'RAM DDR1 BUSS 400', '', '', 0, 'upload/upload_apacaer_250x250 (1).png', 0, 0, 0, 400000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:15:07', '2013-07-29 22:15:07', 0, 0, 139, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (32, 'RAM DDR2 1G BUSS 667', '', '', 0, 'upload/upload_862011-192229RAM LAPTOP 512M BUS 667_250x250 (1).png', 0, 0, 0, 250000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-29 22:16:31', '2013-07-29 22:16:31', 0, 0, 139, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (33, 'pin macbook pro 17', '', '', 0, 'upload/pin macbook pro 15 (2).png', 0, 0, 0, 1450000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:14:23', '2013-07-30 21:45:44', 0, 0, 122, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (34, 'bàn phím macbook pro 13.3', '', '', 0, 'upload/keyboar macbook A1278.png', 0, 0, 0, 1000000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:15:40', '2013-07-30 21:45:56', 0, 0, 122, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (35, 'bàn phím macbook pro 15.4', '', '', 0, 'upload/bàn phím macbook.png', 0, 0, 0, 900000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:16:36', '2013-07-30 21:46:11', 0, 0, 122, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (36, 'xạc macboo air', '', '', 0, 'upload/power-adapter-for-macbook-air.png', 0, 0, 0, 900000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:17:25', '2013-07-30 21:46:28', 0, 0, 122, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (37, 'màn hình ipad 1', '', '', 0, 'upload/màn hình ipad 1.png', 0, 0, 0, 1350000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:20:40', '2013-07-30 21:57:26', 0, 0, 123, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (38, 'cảm ứng ipad 1', '', '', 0, 'upload/cam-ung-ipad-1.png', 0, 0, 0, 1000000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:21:20', '2013-07-30 21:57:41', 0, 0, 123, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (39, 'cảm ứng ipad 2', '', '', 0, 'upload/cảm ứng ipad 2.png', 0, 0, 0, 1000000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:22:00', '2013-07-30 21:57:58', 0, 0, 123, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (40, 'cảm ứng ipad 3', '', '', 0, 'upload/cảm ứng ipad 2 (1).png', 0, 0, 0, 1400000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 12:24:53', '2013-07-30 21:58:15', 0, 0, 123, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (43, 'PIN LAPTOP DELL NEW', '', '', 0, 'upload/pin dell laptop (1).jpg', 0, 0, 0, 500000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:38:15', '2013-07-30 21:38:15', 0, 0, 131, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (44, 'PIN LENOVO NEW', '', '', 0, 'upload/pin lenovo new (1).jpg', 0, 0, 0, 500000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:39:49', '2013-07-30 21:39:49', 0, 0, 131, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (45, 'KEYBOAR ACER 5570', '', '', 0, 'upload/bàn phím acer 5570 (1).jpg', 0, 0, 0, 360000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:42:51', '2013-07-30 21:42:51', 0, 0, 137, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (46, 'BÀN PHÍM SONY FS', '', '', 0, 'upload/bàn phím sony (1).jpg', 0, 0, 0, 800000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:44:12', '2013-07-30 21:44:12', 0, 0, 137, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (47, 'xạc macbook pro', '', '', 0, 'upload/xạc macbook AiR.png', 0, 0, 0, 900000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:47:55', '2013-07-30 21:47:55', 0, 0, 122, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (48, 'pin macbook pro 13.3', '', '', 0, 'upload/pin mac pro 13 - A1322_250x250.png', 0, 0, 0, 1500000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:49:31', '2013-07-30 21:49:31', 0, 0, 122, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (50, 'màn hình ipad 2 new', '', '', 0, 'upload/man hinh ipad 2 (1).png', 0, 0, 0, 1400000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:54:25', '2013-07-30 21:59:07', 0, 0, 123, 0, '', 'admin', 'admin');
INSERT INTO `product` VALUES (51, 'màn hình ipad 3', '', '', 0, 'upload/màn hình ipad 3.png', 0, 0, 0, 1600000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-07-30 21:56:28', '2013-07-30 21:59:25', 0, 0, 123, 0, '', 'admin', 'admin');

-- --------------------------------------------------------

-- 
-- Table structure for table `product_addon`
-- 

CREATE TABLE `product_addon` (
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

CREATE TABLE `product_attribute` (
  `product_attribute_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`product_attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_attribute`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_attribute_description`
-- 

CREATE TABLE `product_attribute_description` (
  `product_attribute_id` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `productid` bigint(20) NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`product_attribute_id`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_attribute_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_description`
-- 

CREATE TABLE `product_description` (
  `productid` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `tag` text collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  `summary` text collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `meta_title` text collate utf8_unicode_ci NOT NULL,
  `meta_keyword` text collate utf8_unicode_ci NOT NULL,
  `meta_description` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`productid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_description`
-- 

INSERT INTO `product_description` VALUES (1, 'vn', '', 'Máy quay', '', '', '', '', '');
INSERT INTO `product_description` VALUES (2, 'vn', '', 'Máy chiếu', '', '', '', '', '');
INSERT INTO `product_description` VALUES (3, 'vn', '', 'Máy chiếu văn phòng', '', '', '', '', '');
INSERT INTO `product_description` VALUES (31, 'vn', '', 'ram ddr1 buss 400', '', '', '', '', '');
INSERT INTO `product_description` VALUES (4, 'vn', '', 'Adapter hp 18.5v đầu kim', '', '&lt;ul style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;Th&amp;ocirc;ng số kỹ thuật&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; height=&quot;80&quot; style=&quot;font-family: Tahoma; font-size: 11px;&quot; width=&quot;430&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;130&quot;&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;C&amp;ocirc;ng suất&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				90W-AC Adapter&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;INPUT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				100-240V&amp;nbsp;, 50-60Hz 1.5A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;OUTPUT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				18.5V-4.74A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;D&amp;ograve;ng m&amp;aacute;y sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng chung cho c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y hp&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', 'Thông số kỹ thuật\r\nCông suất	90W-AC Adapter\r\nINPUT\r\n\r\n100-240V , 50-60Hz 1.5A\r\nOUTPUT	19V-4.74A\r\nDòng máy sử dụng	Dùng chung cho các dòng máy ACER', 'Thông số kỹ thuật\r\nCông suất	90W-AC Adapter\r\nINPUT\r\n\r\n100-240V , 50-60Hz 1.5A\r\nOUTPUT	19V-4.74A\r\nDòng máy sử dụng	Dùng chung cho các dòng máy ACER');
INSERT INTO `product_description` VALUES (16, 'vn', '', 'lcd 15.6wg new bảo hành 6 tháng', '', '&lt;p&gt;\r\n	lcd 15.6wg new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (8, 'vn', '', 'adapter asus', '&lt;ul style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;Th&amp;ocirc;ng số kỹ thuật&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; height=&quot;80&quot; style=&quot;font-family: Tahoma; font-size: 11px;&quot; width=&quot;430&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;130&quot;&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;C&amp;ocirc;ng suất&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				90W-AC Adapter&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;INPUT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				100-240V&amp;nbsp;, 50-60Hz 1.5A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;OUTPUT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				19V-4.74A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;D&amp;ograve;ng m&amp;aacute;y sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng chung cho c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y asus&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '&lt;ul style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;Th&amp;ocirc;ng số kỹ thuật&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; height=&quot;80&quot; style=&quot;font-family: Tahoma; font-size: 11px;&quot; width=&quot;430&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;130&quot;&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;C&amp;ocirc;ng suất&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				90W-AC Adapter&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;INPUT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				100-240V&amp;nbsp;, 50-60Hz 1.5A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;OUTPUT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				19V-4.74A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;D&amp;ograve;ng m&amp;aacute;y sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng chung cho c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y asus&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (12, 'vn', '', 'adapter lenovo', '', '&lt;ul style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;Th&amp;ocirc;ng số kỹ thuật&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; height=&quot;80&quot; style=&quot;font-family: Tahoma; font-size: 11px;&quot; width=&quot;430&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;130&quot;&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;C&amp;ocirc;ng suất&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				90W-AC Adapter&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;INPUT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				100-240V&amp;nbsp;, 50-60Hz 1.5A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;OUTPUT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				19V-4.74A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;D&amp;ograve;ng m&amp;aacute;y sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng chung cho c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y lenovo&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '');
INSERT INTO `product_description` VALUES (13, 'vn', '', 'lcd 14.1wg', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (14, 'vn', '', '14.0led', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (15, 'vn', '', 'lcd 17.1wg', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (17, 'vn', '', 'pin laptop dell', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (18, 'vn', '', 'pin laptop sony', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (19, 'vn', '', 'pin laptop sony', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (20, 'vn', '', 'pin laptop lenovo', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (21, 'vn', '', 'bàn phím laptop sony', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (22, 'vn', '', 'bàn phím laptop acer', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (23, 'vn', '', 'bàn phím laptop hp', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (24, 'vn', '', 'bàn phím laptop dell', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (25, 'vn', '', 'hdd sata 320g', '', '', '', '', '');
INSERT INTO `product_description` VALUES (26, 'vn', '', 'hdd sata 250g', '', '', '', '', '');
INSERT INTO `product_description` VALUES (27, 'vn', '', 'hdd ata 40g', '', '', '', '', '');
INSERT INTO `product_description` VALUES (28, 'vn', '', 'HDD ZIP 80G', '', '', '', '', '');
INSERT INTO `product_description` VALUES (29, 'vn', '', 'RAM 2G BUSS 800', '', '', '', '', '');
INSERT INTO `product_description` VALUES (30, 'vn', '', 'ram ddr3 buss 1066', '', '', '', '', '');
INSERT INTO `product_description` VALUES (32, 'vn', '', 'RAM DDR2 BUSS 667', '', '', '', '', '');
INSERT INTO `product_description` VALUES (33, 'vn', '', 'pin macbook pro 17', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (34, 'vn', '', 'bàn phím macbook pro 13.3', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (35, 'vn', '', 'bàn phím macbook pro 15.4', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (36, 'vn', '', 'xạc macboo air', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (37, 'vn', '', 'màn hình ipad 1', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (38, 'vn', '', 'cảm ứng ipad 1', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (39, 'vn', '', 'cảm ứng ipad 2', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (40, 'vn', '', 'cảm ứng ipad 3', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (9, 'vn', '', 'adapter getway', '', '&lt;ul style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;Th&amp;ocirc;ng số kỹ thuật&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; height=&quot;80&quot; style=&quot;font-family: Tahoma; font-size: 11px;&quot; width=&quot;430&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;130&quot;&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;C&amp;ocirc;ng suất&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				90W-AC Adapter&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;INPUT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				100-240V&amp;nbsp;, 50-60Hz 1.5A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;OUTPUT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				19V-4.74A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;D&amp;ograve;ng m&amp;aacute;y sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng chung cho c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y getway&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '');
INSERT INTO `product_description` VALUES (7, 'vn', '', 'adapter sony', '', '&lt;ul style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;Th&amp;ocirc;ng số kỹ thuật&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; height=&quot;80&quot; style=&quot;font-family: Tahoma; font-size: 11px;&quot; width=&quot;430&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;130&quot;&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;C&amp;ocirc;ng suất&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				90W-AC Adapter&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;INPUT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				100-240V&amp;nbsp;, 50-60Hz 1.5A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;OUTPUT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				19.5V-4.74A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;D&amp;ograve;ng m&amp;aacute;y sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng chung cho c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y SONY&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '');
INSERT INTO `product_description` VALUES (41, 'vn', '', 'LCD 11.6LED', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (42, 'vn', '', 'LCD 15.6LED', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (11, 'vn', '', 'adapter lenovo', '', '&lt;ul style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;Th&amp;ocirc;ng số kỹ thuật&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;font-family: &#039;Times New Roman&#039;, Times, serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; height=&quot;80&quot; style=&quot;font-family: Tahoma; font-size: 11px;&quot; width=&quot;430&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;130&quot;&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;C&amp;ocirc;ng suất&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				90W-AC Adapter&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;INPUT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				100-240V&amp;nbsp;, 50-60Hz 1.5A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;OUTPUT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				20V-4.74A&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size: larger;&quot;&gt;&lt;strong&gt;D&amp;ograve;ng m&amp;aacute;y sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng chung cho c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y lenovo&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '');
INSERT INTO `product_description` VALUES (43, 'vn', '', 'PIN LAPTOP DELL NEW', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (44, 'vn', '', 'PIN LENOVO NEW', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (45, 'vn', '', 'KEYBOAR 5570', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (46, 'vn', '', 'BÀN PHÍM SONY FS', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (47, 'vn', '', 'xạc macbook pro', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (48, 'vn', '', 'pin macbook pro 13.3', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (50, 'vn', '', 'màn hình ipad 2 new', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES (51, 'vn', '', 'màn hình ipad 3', '', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(23, 23, 24); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; line-height: 18.359375px; word-spacing: 2px; background-color: rgb(255, 255, 255);&quot;&gt;new bảo h&amp;agrave;nh 6 th&amp;aacute;ng&lt;/span&gt;&lt;/p&gt;', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `product_discount`
-- 

CREATE TABLE `product_discount` (
  `product_discount_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `usertypeid` varchar(20) collate utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `price` double NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  PRIMARY KEY  (`product_discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_discount`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_file`
-- 

CREATE TABLE `product_file` (
  `productfileid` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `filepath` text NOT NULL,
  PRIMARY KEY  (`productfileid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `product_file`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_file_description`
-- 

CREATE TABLE `product_file_description` (
  `id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `productfileid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `product_file_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_image`
-- 

CREATE TABLE `product_image` (
  `product_image_id` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_image`
-- 

INSERT INTO `product_image` VALUES (0, 2, 'upload/logo-chothuemaychieu.png', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/may-chieu.png', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/may-quay.png', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_manufacturer`
-- 

CREATE TABLE `product_manufacturer` (
  `manufacturerid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  `seo_url` text collate utf8_unicode_ci NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `link` text collate utf8_unicode_ci NOT NULL,
  `link_direct` tinyint(1) NOT NULL,
  `area` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`manufacturerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `product_manufacturer`
-- 

INSERT INTO `product_manufacturer` VALUES (1, 'default', 'Nokia', 'nokia', 'upload/elife_logo1.png', 'http://nokia.com', 1, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_manufacturer_description`
-- 

CREATE TABLE `product_manufacturer_description` (
  `manufacturerid` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `summary` text collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `meta_description` text collate utf8_unicode_ci NOT NULL,
  `meta_keyword` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_manufacturer_description`
-- 

INSERT INTO `product_manufacturer_description` VALUES (1, 'vn', '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', 'Được thành lập năm 2000 ...', 'Được thành lập năm 2000 ...');
INSERT INTO `product_manufacturer_description` VALUES (1, 'en', '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', 'Foundation', 'Foundation');
INSERT INTO `product_manufacturer_description` VALUES (1, 'vn', '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', 'Được thành lập năm 2000 ...', 'Được thành lập năm 2000 ...');
INSERT INTO `product_manufacturer_description` VALUES (1, 'en', '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', 'Foundation', 'Foundation');

-- --------------------------------------------------------

-- 
-- Table structure for table `product_option`
-- 

CREATE TABLE `product_option` (
  `product_option_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `option_value` text collate utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY  (`product_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_option`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_option_value`
-- 

CREATE TABLE `product_option_value` (
  `product_option_value_id` bigint(20) NOT NULL auto_increment,
  `product_option_id` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `option_value_id` bigint(20) NOT NULL,
  `option_value_name` text collate utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` double NOT NULL,
  `price_prefix` varchar(10) collate utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `points_prefix` varchar(10) collate utf8_unicode_ci NOT NULL,
  `weight` double NOT NULL,
  `weight_prefix` varchar(10) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`product_option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_option_value`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_reward`
-- 

CREATE TABLE `product_reward` (
  `product_reward_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `customer_group_id` bigint(20) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY  (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_reward`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_site`
-- 

CREATE TABLE `product_site` (
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

CREATE TABLE `product_special` (
  `product_special_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `usertypeid` varchar(20) collate utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `price` double NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  PRIMARY KEY  (`product_special_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_special`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `sidebar`
-- 

CREATE TABLE `sidebar` (
  `sidebarid` bigint(20) NOT NULL auto_increment,
  `sidebar_name` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`sidebarid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `sidebar`
-- 

INSERT INTO `sidebar` VALUES (1, 'sidebar left');
INSERT INTO `sidebar` VALUES (2, 'sidebar right');

-- --------------------------------------------------------

-- 
-- Table structure for table `sidebar_addon`
-- 

CREATE TABLE `sidebar_addon` (
  `id` bigint(20) NOT NULL auto_increment,
  `addonid` bigint(20) NOT NULL,
  `sidebarid` bigint(20) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

-- 
-- Dumping data for table `sidebar_addon`
-- 

INSERT INTO `sidebar_addon` VALUES (39, 19, 2, 1);
INSERT INTO `sidebar_addon` VALUES (38, 22, 2, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `site`
-- 

CREATE TABLE `site` (
  `id` bigint(10) NOT NULL auto_increment,
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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `site`
-- 

INSERT INTO `site` VALUES (1, 'default', 'Nhanh nhất, Uy tín nhất, Giá tốt nhất', 'upload/cangio-logo.png', 'upload/logo.png', '', '', 'vnd, usd', 'laptophoangvu@yahoo.com', 'Cangio', 'http://www.applerepair.vn', 'vn,en', '', '', '', '', 'cangio', 'Active');

-- --------------------------------------------------------

-- 
-- Table structure for table `sitemap`
-- 

CREATE TABLE `sitemap` (
  `sitemapid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) NOT NULL,
  `sitemapparent` varchar(50) default NULL,
  `seo_url` varchar(100) NOT NULL,
  `position` int(11) default NULL,
  `moduleid` varchar(100) default NULL,
  `imageid` bigint(20) NOT NULL,
  `imagepath` text NOT NULL,
  `hyperlink` text NOT NULL,
  `top_mainmenu` tinyint(1) NOT NULL,
  `top_footermenu` tinyint(1) NOT NULL,
  `layoutid` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`sitemapid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

-- 
-- Dumping data for table `sitemap`
-- 

INSERT INTO `sitemap` VALUES (1, 'default', '', 'trang-chu', 1, 'module/homepage', 0, '', '', 1, 0, 'homepage', 1);
INSERT INTO `sitemap` VALUES (17, 'default', '', 'gioi-thieu', 10, 'module/information', 0, '', '', 0, 0, 'default_layout', 0);
INSERT INTO `sitemap` VALUES (27, 'default', '', 'lien-he', 8, 'module/contactmap', 0, '', '', 0, 0, 'contact', 0);
INSERT INTO `sitemap` VALUES (155, 'default', '', 'giao-duc-moi-truong', 2, 'module/groupsitemap', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (156, 'default', '', 'du-lich-sinh-thai', 3, 'module/groupsitemap', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (163, 'default', '156', 'hang-luu-niem', 3, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (164, 'default', '', 'tin-tuc-su-kien', 11, 'module/news', 0, '', '', 0, 0, 'default_layout', 0);
INSERT INTO `sitemap` VALUES (162, 'default', '156', 'cac-tour-du-lich-sinh-thai', 2, 'module/news', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (157, 'default', '', 'nghien-cuu-khoa-hoc', 4, 'module/news', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (158, 'default', '', 'thu-vien-anh', 5, 'module/information', 0, '', '', 0, 0, 'default_layout', 0);
INSERT INTO `sitemap` VALUES (159, 'default', '155', 'ban-tin-moi-truong-bql-rung-phong-ho', 1, 'module/news', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (160, 'default', '155', 'kien-thuc-moi-truong', 2, 'module/news', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (161, 'default', '156', 'cac-tuyen-va-diem-du-lich', 1, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `sitemap_description`
-- 

CREATE TABLE `sitemap_description` (
  `sitemapid` int(11) NOT NULL,
  `languageid` varchar(50) NOT NULL,
  `sitemapname` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY  (`sitemapid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `sitemap_description`
-- 

INSERT INTO `sitemap_description` VALUES (155, 'vn', 'Giáo Dục Môi Trường', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (155, 'en', 'Giáo Dục Môi Trường', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (156, 'vn', 'Du Lịch Sinh Thái', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (156, 'en', 'Du Lịch Sinh Thái', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (157, 'vn', 'Nghiên Cứu Khoa Học', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (157, 'en', 'Nghiên Cứu Khoa Học', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (17, 'vn', 'Giới thiệu', 'sửa laptop sửa laptop uy tín sửa laptop lấy liền', 'sửa laptop sửa laptop lấy ngay sửa laptop chuyên nghiệp sửa laptop hcm', 'sửa laptop\r\nsua laptop\r\nsửa laptop uy tín\r\nsua laptop uy tin\r\nsửa laptop lấy liền\r\nsưa laptop lay lien', 'sửa laptop\r\nsua laptop\r\nsửa laptop uy tín\r\nsua laptop uy tin\r\nsửa laptop lấy liền\r\nsưa laptop lay lien');
INSERT INTO `sitemap_description` VALUES (17, 'en', 'Giới thiệu', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (158, 'vn', 'Thư Viện Ảnh', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (158, 'en', 'Thư Viện Ảnh', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (159, 'vn', 'Bản tin môi trường BQL rừng phòng hộ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (159, 'en', 'Bản tin môi trường BQL rừng phòng hộ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (160, 'vn', 'Kiến thức môi trường', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (160, 'en', 'Kiến thức môi trường', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (161, 'vn', 'Các tuyến / Điểm du lịch', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (161, 'en', 'Các tuyến / Điểm du lịch', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (162, 'vn', 'Các tour du lịch sinh thái', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (162, 'en', 'Các tour du lịch sinh thái', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (163, 'vn', 'Hàng lưu niệm', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (163, 'en', 'Hàng lưu niệm', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (164, 'vn', 'Tin tức - Sự kiện', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (164, 'en', 'Tin tức - Sự kiện', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (1, 'vn', 'Trang  Chủ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (1, 'en', 'Home', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (27, 'vn', 'Liên hệ', 'trung tâm sửa chữa laptop hoàng vũ', 'sửa laptop\r\nsửa laptop hoàng vũ', 'sửa laptop\r\nsửa laptop hoàng vũ', 'sửa laptop\r\nsửa laptop hoàng vũ');
INSERT INTO `sitemap_description` VALUES (27, 'en', 'Liên hệ', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `support`
-- 

CREATE TABLE `support` (
  `supportid` bigint(20) NOT NULL auto_increment,
  `addonid` varchar(250) NOT NULL,
  `telephone` varchar(250) NOT NULL,
  `skype` text NOT NULL,
  `yahoo` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`supportid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `support`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `support_description`
-- 

CREATE TABLE `support_description` (
  `supportid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`supportid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `support_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tag`
-- 

CREATE TABLE `tag` (
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

CREATE TABLE `url_alias` (
  `url_alias_id` int(11) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `keyword` text NOT NULL,
  PRIMARY KEY  (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

-- 
-- Dumping data for table `url_alias`
-- 

INSERT INTO `url_alias` VALUES (108, 'sitemap', '159', 'ban-tin-moi-truong-bql-rung-phong-ho');
INSERT INTO `url_alias` VALUES (109, 'sitemap', '160', 'kien-thuc-moi-truong');
INSERT INTO `url_alias` VALUES (27, 'sitemap', '27', 'lien-he');
INSERT INTO `url_alias` VALUES (118, 'media', 'default13793071691', 'le-trao-hoc-bong');
INSERT INTO `url_alias` VALUES (119, 'media', 'default13793085001', 'nguyen-nhan-suy-thoai-rung');
INSERT INTO `url_alias` VALUES (104, 'sitemap', '155', 'giao-duc-moi-truong');
INSERT INTO `url_alias` VALUES (117, 'media', 'default13793063791', 'hoi-nghi-so-ket-va-ki-ket');
INSERT INTO `url_alias` VALUES (21, 'sitemap', '17', 'gioi-thieu');
INSERT INTO `url_alias` VALUES (22, 'media', 'default13674905231', '');
INSERT INTO `url_alias` VALUES (23, 'media', 'default13674974421', '');
INSERT INTO `url_alias` VALUES (115, 'media', 'default13793029371', 'hoi-nghi-giao-ban-thang-7');
INSERT INTO `url_alias` VALUES (25, 'media', 'default13675109091', '');
INSERT INTO `url_alias` VALUES (26, 'media', 'default13675111551', 'video sửa laptop');
INSERT INTO `url_alias` VALUES (29, 'media', 'default13675562041', '');
INSERT INTO `url_alias` VALUES (30, 'media', 'default13675564531', 'bàn phím laptop');
INSERT INTO `url_alias` VALUES (31, 'media', 'default13675570951', 'sửa laptop sửa chữa laptop');
INSERT INTO `url_alias` VALUES (32, 'media', 'default13675574071', '');
INSERT INTO `url_alias` VALUES (33, 'product', '1', 'may-quay');
INSERT INTO `url_alias` VALUES (35, 'product', '2', 'may-chieu-moi');
INSERT INTO `url_alias` VALUES (116, 'media', 'default13793043401', 'to-chuc-giao-luu');
INSERT INTO `url_alias` VALUES (111, 'sitemap', '162', 'cac-tour-du-lich-sinh-thai');
INSERT INTO `url_alias` VALUES (112, 'sitemap', '163', 'hang-luu-niem');
INSERT INTO `url_alias` VALUES (113, 'sitemap', '164', 'tin-tuc-su-kien');
INSERT INTO `url_alias` VALUES (114, 'media', 'default13793024921', 'hoi-nghi-giao-ban');
INSERT INTO `url_alias` VALUES (90, 'product', '4', 'link-kien-adapter');
INSERT INTO `url_alias` VALUES (60, 'sitemap', '1', 'trang-chu');
INSERT INTO `url_alias` VALUES (61, 'media', 'default13742312081', 'sửa laptop sửa chữa laptop sua laptop');
INSERT INTO `url_alias` VALUES (62, 'media', 'default13742856591', 'sửa laptop sửa laptop uy tín');
INSERT INTO `url_alias` VALUES (63, 'media', 'default13742874351', 'sửa laptop sua laptop');
INSERT INTO `url_alias` VALUES (64, 'media', 'default13742875921', 'sửa pin laptop thay cell pin laptop');
INSERT INTO `url_alias` VALUES (65, 'media', 'default13742880821', 'sơn laptop,hàn pass laptop');
INSERT INTO `url_alias` VALUES (66, 'media', 'default13742882611', 'sửa laptop');
INSERT INTO `url_alias` VALUES (67, 'media', 'default13742883661', '');
INSERT INTO `url_alias` VALUES (68, 'media', 'default13742884831', '');
INSERT INTO `url_alias` VALUES (69, 'media', 'default13742926141', 'sửa macbook  sửa macbook lấy liền');
INSERT INTO `url_alias` VALUES (70, 'media', 'default13742931091', 'sửa ipad sửa ipad lấy liền');
INSERT INTO `url_alias` VALUES (71, 'media', 'default13742933191', 'dạy nghề sửa chữa laptop');
INSERT INTO `url_alias` VALUES (73, 'media', 'default13743131511', 'sửa laptop sửa laptop hoàng vũ');
INSERT INTO `url_alias` VALUES (110, 'sitemap', '161', 'cac-tuyen-va-diem-du-lich');
INSERT INTO `url_alias` VALUES (107, 'sitemap', '158', 'thu-vien-anh');
INSERT INTO `url_alias` VALUES (105, 'sitemap', '156', 'du-lich-sinh-thai');
INSERT INTO `url_alias` VALUES (106, 'sitemap', '157', 'nghien-cuu-khoa-hoc');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
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
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES ('admin', 'admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Ben Solutions', 'tuan.pham@ben-solution.com', 'active', 45, '', 'asdasda', 'dasdsdasd', 'asdas', '2013-07-03 00:00:00', '0906009096999', '2009-12-02 14:34:41', '2013-09-13 10:21:44', '2009-12-02 14:52:10', '123', '1', '', 'fe80::9482:d8b:ac3a:c468');

-- --------------------------------------------------------

-- 
-- Table structure for table `usertype`
-- 

CREATE TABLE `usertype` (
  `id` bigint(20) NOT NULL auto_increment,
  `usertypeid` varchar(20) NOT NULL,
  `usertypename` text,
  `usertypeparent` varchar(20) NOT NULL,
  `permission` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `usertype`
-- 

INSERT INTO `usertype` VALUES (5, '0', 'User', '0', '');
INSERT INTO `usertype` VALUES (8, '0', 'User', '0', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `user_information`
-- 

CREATE TABLE `user_information` (
  `id` bigint(20) NOT NULL auto_increment,
  `userid` varchar(20) NOT NULL,
  `fieldname` varchar(20) NOT NULL,
  `fieldvalue` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `user_information`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user_saleoff`
-- 

CREATE TABLE `user_saleoff` (
  `id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `parentproduct` bigint(20) NOT NULL,
  `customername` text collate utf8_unicode_ci NOT NULL,
  `idcard` text collate utf8_unicode_ci NOT NULL,
  `phone` text collate utf8_unicode_ci NOT NULL,
  `address` text collate utf8_unicode_ci NOT NULL,
  `purchaseprice` double NOT NULL,
  `purchasedate` datetime NOT NULL,
  `email` text collate utf8_unicode_ci NOT NULL,
  `comment` text collate utf8_unicode_ci NOT NULL,
  `status` text collate utf8_unicode_ci NOT NULL,
  `province` text collate utf8_unicode_ci NOT NULL,
  `district` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `user_saleoff`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user_stats`
-- 

CREATE TABLE `user_stats` (
  `id` bigint(20) NOT NULL auto_increment,
  `starttime` datetime NOT NULL,
  `sessionid` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5334 ;

-- 
-- Dumping data for table `user_stats`
-- 

INSERT INTO `user_stats` VALUES (5333, '2013-04-04 14:21:40', '9tuhirs32id9fuq4eegusk1p10', '', '58.186.183.206');
INSERT INTO `user_stats` VALUES (5331, '2013-04-04 14:19:33', 'eulepa2fg2jgc4s3jltvnhjqc1', '', '58.186.183.206');
INSERT INTO `user_stats` VALUES (5329, '2013-04-04 14:13:59', 'qvf5n0jimmlpe1bfrsgulo11t6', '', '199.21.99.114');
INSERT INTO `user_stats` VALUES (5330, '2013-04-04 14:18:02', 'nmr87ihmo2grbgl0uug4rft324', '', '58.186.183.206');
INSERT INTO `user_stats` VALUES (5332, '2013-04-04 14:20:16', 'bpjm0kpdkc57m18psbs6n3gcs7', '', '58.186.183.206');

-- --------------------------------------------------------

-- 
-- Table structure for table `weblink`
-- 

CREATE TABLE `weblink` (
  `weblinkid` bigint(20) NOT NULL auto_increment,
  `addonid` varchar(250) NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`weblinkid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `weblink`
-- 

INSERT INTO `weblink` VALUES (25, 'homesimpleslides', '#', 'upload/banner3.jpg', 1);
INSERT INTO `weblink` VALUES (24, 'homesimpleslides', '#', 'upload/banner2.jpg', 1);
INSERT INTO `weblink` VALUES (19, 'banner', '#', 'upload/1.jpg', 1);
INSERT INTO `weblink` VALUES (28, 'edwinbanner', 'gioi-thieu.html', 'upload/rung-tia-thua.jpg', 1);
INSERT INTO `weblink` VALUES (27, 'edwinbanner', 'tin-tuc-su-kien.html', 'upload/giaoban0.jpg', 1);
INSERT INTO `weblink` VALUES (23, 'homesimpleslides', '#', 'upload/banner1.jpg', 2);
INSERT INTO `weblink` VALUES (21, 'banner', '#', 'upload/3.jpg', 1);
INSERT INTO `weblink` VALUES (22, 'banner', '#', 'upload/4.jpg', 1);
INSERT INTO `weblink` VALUES (10, 'logoslides', '#', 'upload/quy trình sửa chữa laptop.png', 1);
INSERT INTO `weblink` VALUES (11, 'logoslides', '#', 'upload/sửa chữa mainboar laptop.png', 1);
INSERT INTO `weblink` VALUES (12, 'logoslides', '#', 'upload/sửa chữa pin laptop.png', 1);
INSERT INTO `weblink` VALUES (13, 'logoslides', '#', 'upload/sửa chữa laptop.png', 1);
INSERT INTO `weblink` VALUES (14, 'logoslides', '#', 'upload/sua chữa màn hình laptop.png', 1);
INSERT INTO `weblink` VALUES (15, 'logoslides', '#', 'upload/trung tâm sửa chữa laptop hoàng vũ.png', 1);
INSERT INTO `weblink` VALUES (26, 'homesimpleslides', '#', 'upload/banner4.jpg', 1);
INSERT INTO `weblink` VALUES (29, 'edwinbanner', 'thu-vien-hinh-anh.html', 'upload/dv20.jpg', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `weblink_description`
-- 

CREATE TABLE `weblink_description` (
  `weblinkid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`weblinkid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `weblink_description`
-- 

INSERT INTO `weblink_description` VALUES (19, 'en', 'img1', '');
INSERT INTO `weblink_description` VALUES (23, 'vn', 'banner1', '&lt;p&gt;\r\n	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (27, 'vn', 'Tin tức - Sự kiện', '&lt;p&gt;\r\n	Hội nghị giao ban c&amp;ocirc;ng t&amp;aacute;c bảo vệ rừng c&amp;aacute;c đơn vị nhận kho&amp;aacute;n được tổ chức v&amp;agrave;o ng&amp;agrave;y 31/7/2013, tại văn ph&amp;ograve;ng Hạt Kiểm l&amp;acirc;m huyện Cần Giờ, &amp;ocirc;ng Phạm Thanh T&amp;ugrave;ng - Ph&amp;oacute; Trưởng Ban Quản l&amp;yacute; rừng ph&amp;ograve;ng hộ chủ tr&amp;igrave; Hội nghị giao ban c&amp;ocirc;ng t&amp;aacute;c quản l&amp;yacute; bảo vệ rừng với c&amp;aacute;c đơn vị nhận kho&amp;aacute;n th&amp;aacute;ng 7/2013. Đến tham dự c&amp;oacute; đại diện Ph&amp;ograve;ng Kinh tế huyện Cần Giờ, Hạt Kiểm l&amp;acirc;m Cần Giờ; UBND c&amp;aacute;c x&amp;atilde;: Thạnh An, Tam Th&amp;ocirc;n Hiệp, An Thới Đ&amp;ocirc;ng; Trạm Bảo vệ Nguồn lợi Thủy sản Cần Giờ; C&amp;ocirc;ng an Huyện; Ph&amp;ograve;ng Cảnh s&amp;aacute;t Ph&amp;ograve;ng ch&amp;aacute;y v&amp;agrave; Chữa ch&amp;aacute;y Huyện, 14 đơn vị nhận kho&amp;aacute;n bảo vệ rừng v&amp;agrave; 05 Ph&amp;acirc;n khu trực thuộc Ban Quản l&amp;yacute;.&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (21, 'vn', 'img3', '');
INSERT INTO `weblink_description` VALUES (10, 'vn', 'quy trình sửa chữa laptop', '');
INSERT INTO `weblink_description` VALUES (11, 'vn', 'đóng chip vga laptop', '');
INSERT INTO `weblink_description` VALUES (12, 'vn', 'sửa pin laptop', '');
INSERT INTO `weblink_description` VALUES (13, 'vn', 'sửa chữa laptop', '');
INSERT INTO `weblink_description` VALUES (14, 'vn', 'sửa màn hình laptop', '');
INSERT INTO `weblink_description` VALUES (15, 'vn', 'trung tâm sửa chữa laptop hoàng vũ', '');
INSERT INTO `weblink_description` VALUES (19, 'vn', 'img1', '');
INSERT INTO `weblink_description` VALUES (21, 'en', 'img3', '');
INSERT INTO `weblink_description` VALUES (22, 'vn', 'img4', '');
INSERT INTO `weblink_description` VALUES (22, 'en', 'img4', '');
INSERT INTO `weblink_description` VALUES (24, 'vn', 'banner2', '&lt;p&gt;\r\n	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (25, 'en', 'banner3', '');
INSERT INTO `weblink_description` VALUES (26, 'vn', 'banner4', '&lt;p&gt;\r\n	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (28, 'vn', 'Giới thiệu', '&lt;p&gt;\r\n	Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh l&amp;agrave; Th&amp;agrave;nh phố lớn của cả nước, l&amp;agrave; trung t&amp;acirc;m: c&amp;ocirc;ng nghiệp, văn h&amp;oacute;a khoa học kỹ thuật, thương mại, giao dịch v&amp;agrave; l&amp;agrave; đầu mối giao th&amp;ocirc;ng quan trọng của nước ta. Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh được xếp v&amp;agrave;o một trong 55 đ&amp;ocirc; thị lớn của những nước đang ph&amp;aacute;t triển. Th&amp;agrave;nh phố lại nằm trong v&amp;ugrave;ng nhiệt đới, n&amp;oacute;ng ẩm, hệ thống rừng v&amp;agrave; c&amp;acirc;y xanh bị t&amp;agrave;n ph&amp;aacute; nặng nề trong chiến tranh c&amp;ugrave;ng với tiến tr&amp;igrave;nh ph&amp;aacute;t triển của Th&amp;agrave;nh phố đặc biệt l&amp;agrave; qua hơn 20 năm đổi mới, qu&amp;aacute; tr&amp;igrave;nh c&amp;ocirc;ng nghiệp h&amp;oacute;a, đ&amp;ocirc; thị h&amp;oacute;a, hiện đại h&amp;oacute;a với tốc độ nhanh l&amp;agrave;m cho cơ sở hạ tầng Th&amp;agrave;nh phố bị qu&amp;aacute; tải, m&amp;ocirc;i trường ng&amp;agrave;y c&amp;agrave;ng &amp;ocirc; nhiễm bởi c&amp;aacute;c chất thải ng&amp;agrave;y một gia tăng. Ch&amp;iacute;nh v&amp;igrave; vậy ngay từ những ng&amp;agrave;y đầu đất nước được giải ph&amp;oacute;ng, Th&amp;agrave;nh phố đ&amp;atilde; hết sức quan t&amp;acirc;m chỉ đạo x&amp;acirc;y dựng v&amp;agrave; ph&amp;aacute;t triển hệ thống rừng v&amp;agrave; c&amp;acirc;y xanh, c&amp;acirc;y cảnh đa dạng về chủng loại, phong ph&amp;uacute; về hương sắc, trong đ&amp;oacute; c&amp;oacute; Rừng Ngập mặm ven biển Cần Giờ. Đ&amp;oacute; l&amp;agrave; mục ti&amp;ecirc;u m&amp;agrave; 30 năm qua, đ&amp;atilde; biến &amp;ldquo;V&amp;agrave;nh đai trắng&amp;rdquo; của S&amp;agrave;i G&amp;ograve;n xưa th&amp;agrave;nh &amp;ldquo;V&amp;agrave;nh đai xanh&amp;rdquo; tr&amp;ugrave; ph&amp;uacute; của TP Hồ Ch&amp;iacute; Minh h&amp;ocirc;m nay.&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (28, 'en', 'Giới thiệu', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;font-family: &#039;Times New Roman&#039;; background-color: rgb(5, 111, 0);&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;bodytextxam&quot; style=&quot;font-family: Tahoma; line-height: 17px; color: rgb(51, 51, 51);&quot; valign=&quot;top&quot; width=&quot;88%&quot;&gt;\r\n				&lt;div align=&quot;justify&quot;&gt;\r\n					Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh l&amp;agrave; Th&amp;agrave;nh phố lớn của cả nước, l&amp;agrave; trung t&amp;acirc;m: c&amp;ocirc;ng nghiệp, văn h&amp;oacute;a khoa học kỹ thuật, thương&lt;/div&gt;\r\n			&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;1%&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;font-family: &#039;Times New Roman&#039;; background-color: rgb(5, 111, 0);&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;bodytextxam&quot; style=&quot;font-family: Tahoma; line-height: 17px; color: rgb(51, 51, 51);&quot; valign=&quot;top&quot; width=&quot;5%&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;bodytextxam&quot; style=&quot;font-family: Tahoma; line-height: 17px; color: rgb(51, 51, 51);&quot; valign=&quot;top&quot; width=&quot;94%&quot;&gt;\r\n				&lt;div align=&quot;justify&quot;&gt;\r\n					mại, giao dịch v&amp;agrave; l&amp;agrave; đầu mối giao th&amp;ocirc;ng quan trọng của nước ta. Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh được xếp v&amp;agrave;o một trong 55 đ&amp;ocirc; thị lớn của những nước đang ph&amp;aacute;t triển. Th&amp;agrave;nh phố lại nằm trong v&amp;ugrave;ng nhiệt đới, n&amp;oacute;ng ẩm, hệ thống rừng v&amp;agrave; c&amp;acirc;y xanh bị t&amp;agrave;n ph&amp;aacute; nặng nề trong chiến tranh c&amp;ugrave;ng với tiến tr&amp;igrave;nh ph&amp;aacute;t triển của Th&amp;agrave;nh phố đặc biệt l&amp;agrave; qua hơn 20 năm đổi mới, qu&amp;aacute; tr&amp;igrave;nh c&amp;ocirc;ng nghiệp h&amp;oacute;a, đ&amp;ocirc; thị h&amp;oacute;a, hiện đại h&amp;oacute;a với tốc độ nhanh l&amp;agrave;m cho cơ sở hạ tầng Th&amp;agrave;nh phố bị qu&amp;aacute; tải, m&amp;ocirc;i trường ng&amp;agrave;y c&amp;agrave;ng &amp;ocirc; nhiễm bởi c&amp;aacute;c chất thải ng&amp;agrave;y một gia tăng. Ch&amp;iacute;nh v&amp;igrave; vậy ngay từ những ng&amp;agrave;y đầu đất nước được giải ph&amp;oacute;ng, Th&amp;agrave;nh phố đ&amp;atilde; hết sức quan t&amp;acirc;m chỉ đạo x&amp;acirc;y dựng v&amp;agrave; ph&amp;aacute;t triển hệ thống rừng v&amp;agrave; c&amp;acirc;y xanh, c&amp;acirc;y cảnh đa dạng về chủng loại, phong ph&amp;uacute; về hương sắc, trong đ&amp;oacute; c&amp;oacute; Rừng Ngập mặm ven biển Cần Giờ. Đ&amp;oacute; l&amp;agrave; mục ti&amp;ecirc;u m&amp;agrave; 30 năm qua, đ&amp;atilde; biến &amp;ldquo;V&amp;agrave;nh đai trắng&amp;rdquo; của S&amp;agrave;i G&amp;ograve;n xưa th&amp;agrave;nh &amp;ldquo;V&amp;agrave;nh đai xanh&amp;rdquo; tr&amp;ugrave; ph&amp;uacute; của TP Hồ Ch&amp;iacute; Minh h&amp;ocirc;m nay.&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (25, 'vn', 'banner3', '&lt;p&gt;\r\n	abcdaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaa&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (24, 'en', 'banner2', '');
INSERT INTO `weblink_description` VALUES (26, 'en', 'banner4', '');
INSERT INTO `weblink_description` VALUES (23, 'en', 'banner1', '');
INSERT INTO `weblink_description` VALUES (29, 'vn', 'Thư viện hình ảnh', '&lt;p&gt;\r\n	Tọa lạc ngay b&amp;ecirc;n tay tr&amp;aacute;i dưới ch&amp;acirc;n cầu Dần X&amp;acirc;y l&amp;agrave; Khu d&amp;atilde; ngoại Dần X&amp;acirc;y, c&amp;oacute; diện t&amp;iacute;ch tr&amp;ecirc;n 48 ha với hệ sinh th&amp;aacute;i phong ph&amp;uacute;, đặc trưng v&amp;agrave; đặc biệt xuất hiện nhiều đ&amp;agrave;n khỉ đu&amp;ocirc;i d&amp;agrave;i với số lượng h&amp;agrave;ng trăm con sinh sống tại đ&amp;acirc;y. Khu d&amp;atilde; ngoại c&amp;oacute; đường đi nội bộ trong rừng, dọc c&amp;aacute;c bờ s&amp;ocirc;ng với chiều d&amp;agrave;i gần 3 km, đan xen l&amp;agrave; c&amp;aacute;c k&amp;ecirc;nh rạch đẹp để du kh&amp;aacute;ch c&amp;oacute; thể tự do ch&amp;egrave;o xuồng ngắm cảnh, c&amp;acirc;u c&amp;aacute; thư gi&amp;atilde;n v&amp;agrave; ngắm nh&amp;igrave;n to&amp;agrave;n cảnh rừng từ th&amp;aacute;p cao. Trong khu d&amp;atilde; ngoại c&amp;oacute; hệ thống nh&amp;agrave; nghỉ trong rừng tạo cảm gi&amp;aacute;c y&amp;ecirc;n tĩnh, ấm c&amp;uacute;ng v&amp;agrave; th&amp;acirc;n thiện với thi&amp;ecirc;n nhi&amp;ecirc;n cho kh&amp;aacute;ch, qu&amp;yacute; kh&amp;aacute;ch c&amp;ograve;n được thưởng thức những m&amp;oacute;n ăn đặc sản từ những sản phẩm sạch trong rừng ngập mặn Cần Giờ.&amp;nbsp;Tiếp đến, Qu&amp;yacute; kh&amp;aacute;ch&amp;nbsp; l&amp;ecirc;n t&amp;agrave;u (hoặc Can&amp;ocirc; cao tốc) để tham quan Hộ d&amp;acirc;n c&amp;oacute; Đầm t&amp;ocirc;m tự nhi&amp;ecirc;n tại Tiểu khu16&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (29, 'en', 'Thư viện hình ảnh', '');
INSERT INTO `weblink_description` VALUES (27, 'en', 'Tin tức - Sự kiện', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `zone`
-- 

CREATE TABLE `zone` (
  `zoneid` int(11) NOT NULL auto_increment,
  `countryid` int(11) NOT NULL default '0',
  `code` varchar(32) NOT NULL default '',
  `zonename` varchar(32) NOT NULL,
  PRIMARY KEY  (`zoneid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3842 ;

-- 
-- Dumping data for table `zone`
-- 

INSERT INTO `zone` VALUES (1, 1, 'BDS', 'Badakhshan');
INSERT INTO `zone` VALUES (2, 1, 'BDG', 'Badghis');
INSERT INTO `zone` VALUES (3, 1, 'BGL', 'Baghlan');
INSERT INTO `zone` VALUES (4, 1, 'BAL', 'Balkh');
INSERT INTO `zone` VALUES (5, 1, 'BAM', 'Bamian');
INSERT INTO `zone` VALUES (6, 1, 'FRA', 'Farah');
INSERT INTO `zone` VALUES (7, 1, 'FYB', 'Faryab');
INSERT INTO `zone` VALUES (8, 1, 'GHA', 'Ghazni');
INSERT INTO `zone` VALUES (9, 1, 'GHO', 'Ghowr');
INSERT INTO `zone` VALUES (10, 1, 'HEL', 'Helmand');
INSERT INTO `zone` VALUES (11, 1, 'HER', 'Herat');
INSERT INTO `zone` VALUES (12, 1, 'JOW', 'Jowzjan');
INSERT INTO `zone` VALUES (13, 1, 'KAB', 'Kabul');
INSERT INTO `zone` VALUES (14, 1, 'KAN', 'Kandahar');
INSERT INTO `zone` VALUES (15, 1, 'KAP', 'Kapisa');
INSERT INTO `zone` VALUES (16, 1, 'KHO', 'Khost');
INSERT INTO `zone` VALUES (17, 1, 'KNR', 'Konar');
INSERT INTO `zone` VALUES (18, 1, 'KDZ', 'Kondoz');
INSERT INTO `zone` VALUES (19, 1, 'LAG', 'Laghman');
INSERT INTO `zone` VALUES (20, 1, 'LOW', 'Lowgar');
INSERT INTO `zone` VALUES (21, 1, 'NAN', 'Nangrahar');
INSERT INTO `zone` VALUES (22, 1, 'NIM', 'Nimruz');
INSERT INTO `zone` VALUES (23, 1, 'NUR', 'Nurestan');
INSERT INTO `zone` VALUES (24, 1, 'ORU', 'Oruzgan');
INSERT INTO `zone` VALUES (25, 1, 'PIA', 'Paktia');
INSERT INTO `zone` VALUES (26, 1, 'PKA', 'Paktika');
INSERT INTO `zone` VALUES (27, 1, 'PAR', 'Parwan');
INSERT INTO `zone` VALUES (28, 1, 'SAM', 'Samangan');
INSERT INTO `zone` VALUES (29, 1, 'SAR', 'Sar-e Pol');
INSERT INTO `zone` VALUES (30, 1, 'TAK', 'Takhar');
INSERT INTO `zone` VALUES (31, 1, 'WAR', 'Wardak');
INSERT INTO `zone` VALUES (32, 1, 'ZAB', 'Zabol');
INSERT INTO `zone` VALUES (33, 2, 'BR', 'Berat');
INSERT INTO `zone` VALUES (34, 2, 'BU', 'Bulqize');
INSERT INTO `zone` VALUES (35, 2, 'DL', 'Delvine');
INSERT INTO `zone` VALUES (36, 2, 'DV', 'Devoll');
INSERT INTO `zone` VALUES (37, 2, 'DI', 'Diber');
INSERT INTO `zone` VALUES (38, 2, 'DR', 'Durres');
INSERT INTO `zone` VALUES (39, 2, 'EL', 'Elbasan');
INSERT INTO `zone` VALUES (40, 2, 'ER', 'Kolonje');
INSERT INTO `zone` VALUES (41, 2, 'FR', 'Fier');
INSERT INTO `zone` VALUES (42, 2, 'GJ', 'Gjirokaster');
INSERT INTO `zone` VALUES (43, 2, 'GR', 'Gramsh');
INSERT INTO `zone` VALUES (44, 2, 'HA', 'Has');
INSERT INTO `zone` VALUES (45, 2, 'KA', 'Kavaje');
INSERT INTO `zone` VALUES (46, 2, 'KB', 'Kurbin');
INSERT INTO `zone` VALUES (47, 2, 'KC', 'Kucove');
INSERT INTO `zone` VALUES (48, 2, 'KO', 'Korce');
INSERT INTO `zone` VALUES (49, 2, 'KR', 'Kruje');
INSERT INTO `zone` VALUES (50, 2, 'KU', 'Kukes');
INSERT INTO `zone` VALUES (51, 2, 'LB', 'Librazhd');
INSERT INTO `zone` VALUES (52, 2, 'LE', 'Lezhe');
INSERT INTO `zone` VALUES (53, 2, 'LU', 'Lushnje');
INSERT INTO `zone` VALUES (54, 2, 'MM', 'Malesi e Madhe');
INSERT INTO `zone` VALUES (55, 2, 'MK', 'Mallakaster');
INSERT INTO `zone` VALUES (56, 2, 'MT', 'Mat');
INSERT INTO `zone` VALUES (57, 2, 'MR', 'Mirdite');
INSERT INTO `zone` VALUES (58, 2, 'PQ', 'Peqin');
INSERT INTO `zone` VALUES (59, 2, 'PR', 'Permet');
INSERT INTO `zone` VALUES (60, 2, 'PG', 'Pogradec');
INSERT INTO `zone` VALUES (61, 2, 'PU', 'Puke');
INSERT INTO `zone` VALUES (62, 2, 'SH', 'Shkoder');
INSERT INTO `zone` VALUES (63, 2, 'SK', 'Skrapar');
INSERT INTO `zone` VALUES (64, 2, 'SR', 'Sarande');
INSERT INTO `zone` VALUES (65, 2, 'TE', 'Tepelene');
INSERT INTO `zone` VALUES (66, 2, 'TP', 'Tropoje');
INSERT INTO `zone` VALUES (67, 2, 'TR', 'Tirane');
INSERT INTO `zone` VALUES (68, 2, 'VL', 'Vlore');
INSERT INTO `zone` VALUES (69, 3, 'ADR', 'Adrar');
INSERT INTO `zone` VALUES (70, 3, 'ADE', 'Ain Defla');
INSERT INTO `zone` VALUES (71, 3, 'ATE', 'Ain Temouchent');
INSERT INTO `zone` VALUES (72, 3, 'ALG', 'Alger');
INSERT INTO `zone` VALUES (73, 3, 'ANN', 'Annaba');
INSERT INTO `zone` VALUES (74, 3, 'BAT', 'Batna');
INSERT INTO `zone` VALUES (75, 3, 'BEC', 'Bechar');
INSERT INTO `zone` VALUES (76, 3, 'BEJ', 'Bejaia');
INSERT INTO `zone` VALUES (77, 3, 'BIS', 'Biskra');
INSERT INTO `zone` VALUES (78, 3, 'BLI', 'Blida');
INSERT INTO `zone` VALUES (79, 3, 'BBA', 'Bordj Bou Arreridj');
INSERT INTO `zone` VALUES (80, 3, 'BOA', 'Bouira');
INSERT INTO `zone` VALUES (81, 3, 'BMD', 'Boumerdes');
INSERT INTO `zone` VALUES (82, 3, 'CHL', 'Chlef');
INSERT INTO `zone` VALUES (83, 3, 'CON', 'Constantine');
INSERT INTO `zone` VALUES (84, 3, 'DJE', 'Djelfa');
INSERT INTO `zone` VALUES (85, 3, 'EBA', 'El Bayadh');
INSERT INTO `zone` VALUES (86, 3, 'EOU', 'El Oued');
INSERT INTO `zone` VALUES (87, 3, 'ETA', 'El Tarf');
INSERT INTO `zone` VALUES (88, 3, 'GHA', 'Ghardaia');
INSERT INTO `zone` VALUES (89, 3, 'GUE', 'Guelma');
INSERT INTO `zone` VALUES (90, 3, 'ILL', 'Illizi');
INSERT INTO `zone` VALUES (91, 3, 'JIJ', 'Jijel');
INSERT INTO `zone` VALUES (92, 3, 'KHE', 'Khenchela');
INSERT INTO `zone` VALUES (93, 3, 'LAG', 'Laghouat');
INSERT INTO `zone` VALUES (94, 3, 'MUA', 'Muaskar');
INSERT INTO `zone` VALUES (95, 3, 'MED', 'Medea');
INSERT INTO `zone` VALUES (96, 3, 'MIL', 'Mila');
INSERT INTO `zone` VALUES (97, 3, 'MOS', 'Mostaganem');
INSERT INTO `zone` VALUES (98, 3, 'MSI', 'M''Sila');
INSERT INTO `zone` VALUES (99, 3, 'NAA', 'Naama');
INSERT INTO `zone` VALUES (100, 3, 'ORA', 'Oran');
INSERT INTO `zone` VALUES (101, 3, 'OUA', 'Ouargla');
INSERT INTO `zone` VALUES (102, 3, 'OEB', 'Oum el-Bouaghi');
INSERT INTO `zone` VALUES (103, 3, 'REL', 'Relizane');
INSERT INTO `zone` VALUES (104, 3, 'SAI', 'Saida');
INSERT INTO `zone` VALUES (105, 3, 'SET', 'Setif');
INSERT INTO `zone` VALUES (106, 3, 'SBA', 'Sidi Bel Abbes');
INSERT INTO `zone` VALUES (107, 3, 'SKI', 'Skikda');
INSERT INTO `zone` VALUES (108, 3, 'SAH', 'Souk Ahras');
INSERT INTO `zone` VALUES (109, 3, 'TAM', 'Tamanghasset');
INSERT INTO `zone` VALUES (110, 3, 'TEB', 'Tebessa');
INSERT INTO `zone` VALUES (111, 3, 'TIA', 'Tiaret');
INSERT INTO `zone` VALUES (112, 3, 'TIN', 'Tindouf');
INSERT INTO `zone` VALUES (113, 3, 'TIP', 'Tipaza');
INSERT INTO `zone` VALUES (114, 3, 'TIS', 'Tissemsilt');
INSERT INTO `zone` VALUES (115, 3, 'TOU', 'Tizi Ouzou');
INSERT INTO `zone` VALUES (116, 3, 'TLE', 'Tlemcen');
INSERT INTO `zone` VALUES (117, 4, 'E', 'Eastern');
INSERT INTO `zone` VALUES (118, 4, 'M', 'Manu''a');
INSERT INTO `zone` VALUES (119, 4, 'R', 'Rose Island');
INSERT INTO `zone` VALUES (120, 4, 'S', 'Swains Island');
INSERT INTO `zone` VALUES (121, 4, 'W', 'Western');
INSERT INTO `zone` VALUES (122, 5, 'ALV', 'Andorra la Vella');
INSERT INTO `zone` VALUES (123, 5, 'CAN', 'Canillo');
INSERT INTO `zone` VALUES (124, 5, 'ENC', 'Encamp');
INSERT INTO `zone` VALUES (125, 5, 'ESE', 'Escaldes-Engordany');
INSERT INTO `zone` VALUES (126, 5, 'LMA', 'La Massana');
INSERT INTO `zone` VALUES (127, 5, 'ORD', 'Ordino');
INSERT INTO `zone` VALUES (128, 5, 'SJL', 'Sant Julia de Loria');
INSERT INTO `zone` VALUES (129, 6, 'BGO', 'Bengo');
INSERT INTO `zone` VALUES (130, 6, 'BGU', 'Benguela');
INSERT INTO `zone` VALUES (131, 6, 'BIE', 'Bie');
INSERT INTO `zone` VALUES (132, 6, 'CAB', 'Cabinda');
INSERT INTO `zone` VALUES (133, 6, 'CCU', 'Cuando-Cubango');
INSERT INTO `zone` VALUES (134, 6, 'CNO', 'Cuanza Norte');
INSERT INTO `zone` VALUES (135, 6, 'CUS', 'Cuanza Sul');
INSERT INTO `zone` VALUES (136, 6, 'CNN', 'Cunene');
INSERT INTO `zone` VALUES (137, 6, 'HUA', 'Huambo');
INSERT INTO `zone` VALUES (138, 6, 'HUI', 'Huila');
INSERT INTO `zone` VALUES (139, 6, 'LUA', 'Luanda');
INSERT INTO `zone` VALUES (140, 6, 'LNO', 'Lunda Norte');
INSERT INTO `zone` VALUES (141, 6, 'LSU', 'Lunda Sul');
INSERT INTO `zone` VALUES (142, 6, 'MAL', 'Malange');
INSERT INTO `zone` VALUES (143, 6, 'MOX', 'Moxico');
INSERT INTO `zone` VALUES (144, 6, 'NAM', 'Namibe');
INSERT INTO `zone` VALUES (145, 6, 'UIG', 'Uige');
INSERT INTO `zone` VALUES (146, 6, 'ZAI', 'Zaire');
INSERT INTO `zone` VALUES (147, 9, 'ASG', 'Saint George');
INSERT INTO `zone` VALUES (148, 9, 'ASJ', 'Saint John');
INSERT INTO `zone` VALUES (149, 9, 'ASM', 'Saint Mary');
INSERT INTO `zone` VALUES (150, 9, 'ASL', 'Saint Paul');
INSERT INTO `zone` VALUES (151, 9, 'ASR', 'Saint Peter');
INSERT INTO `zone` VALUES (152, 9, 'ASH', 'Saint Philip');
INSERT INTO `zone` VALUES (153, 9, 'BAR', 'Barbuda');
INSERT INTO `zone` VALUES (154, 9, 'RED', 'Redonda');
INSERT INTO `zone` VALUES (155, 10, 'AN', 'Antartida e Islas del Atlantico');
INSERT INTO `zone` VALUES (156, 10, 'BA', 'Buenos Aires');
INSERT INTO `zone` VALUES (157, 10, 'CA', 'Catamarca');
INSERT INTO `zone` VALUES (158, 10, 'CH', 'Chaco');
INSERT INTO `zone` VALUES (159, 10, 'CU', 'Chubut');
INSERT INTO `zone` VALUES (160, 10, 'CO', 'Cordoba');
INSERT INTO `zone` VALUES (161, 10, 'CR', 'Corrientes');
INSERT INTO `zone` VALUES (162, 10, 'DF', 'Distrito Federal');
INSERT INTO `zone` VALUES (163, 10, 'ER', 'Entre Rios');
INSERT INTO `zone` VALUES (164, 10, 'FO', 'Formosa');
INSERT INTO `zone` VALUES (165, 10, 'JU', 'Jujuy');
INSERT INTO `zone` VALUES (166, 10, 'LP', 'La Pampa');
INSERT INTO `zone` VALUES (167, 10, 'LR', 'La Rioja');
INSERT INTO `zone` VALUES (168, 10, 'ME', 'Mendoza');
INSERT INTO `zone` VALUES (169, 10, 'MI', 'Misiones');
INSERT INTO `zone` VALUES (170, 10, 'NE', 'Neuquen');
INSERT INTO `zone` VALUES (171, 10, 'RN', 'Rio Negro');
INSERT INTO `zone` VALUES (172, 10, 'SA', 'Salta');
INSERT INTO `zone` VALUES (173, 10, 'SJ', 'San Juan');
INSERT INTO `zone` VALUES (174, 10, 'SL', 'San Luis');
INSERT INTO `zone` VALUES (175, 10, 'SC', 'Santa Cruz');
INSERT INTO `zone` VALUES (176, 10, 'SF', 'Santa Fe');
INSERT INTO `zone` VALUES (177, 10, 'SD', 'Santiago del Estero');
INSERT INTO `zone` VALUES (178, 10, 'TF', 'Tierra del Fuego');
INSERT INTO `zone` VALUES (179, 10, 'TU', 'Tucuman');
INSERT INTO `zone` VALUES (180, 11, 'AGT', 'Aragatsotn');
INSERT INTO `zone` VALUES (181, 11, 'ARR', 'Ararat');
INSERT INTO `zone` VALUES (182, 11, 'ARM', 'Armavir');
INSERT INTO `zone` VALUES (183, 11, 'GEG', 'Geghark''unik''');
INSERT INTO `zone` VALUES (184, 11, 'KOT', 'Kotayk''');
INSERT INTO `zone` VALUES (185, 11, 'LOR', 'Lorri');
INSERT INTO `zone` VALUES (186, 11, 'SHI', 'Shirak');
INSERT INTO `zone` VALUES (187, 11, 'SYU', 'Syunik''');
INSERT INTO `zone` VALUES (188, 11, 'TAV', 'Tavush');
INSERT INTO `zone` VALUES (189, 11, 'VAY', 'Vayots'' Dzor');
INSERT INTO `zone` VALUES (190, 11, 'YER', 'Yerevan');
INSERT INTO `zone` VALUES (191, 13, 'ACT', 'Australian Capitol Territory');
INSERT INTO `zone` VALUES (192, 13, 'NSW', 'New South Wales');
INSERT INTO `zone` VALUES (193, 13, 'NT', 'Northern Territory');
INSERT INTO `zone` VALUES (194, 13, 'QLD', 'Queensland');
INSERT INTO `zone` VALUES (195, 13, 'SA', 'South Australia');
INSERT INTO `zone` VALUES (196, 13, 'TAS', 'Tasmania');
INSERT INTO `zone` VALUES (197, 13, 'VIC', 'Victoria');
INSERT INTO `zone` VALUES (198, 13, 'WA', 'Western Australia');
INSERT INTO `zone` VALUES (199, 14, 'BUR', 'Burgenland');
INSERT INTO `zone` VALUES (200, 14, 'KAR', 'KÃƒÆ’Ã‚Â¤rnten');
INSERT INTO `zone` VALUES (201, 14, 'NOS', 'NiederÃƒÆ’Ã‚Â¶sterreich');
INSERT INTO `zone` VALUES (202, 14, 'OOS', 'OberÃƒÆ’Ã‚Â¶sterreich');
INSERT INTO `zone` VALUES (203, 14, 'SAL', 'Salzburg');
INSERT INTO `zone` VALUES (204, 14, 'STE', 'Steiermark');
INSERT INTO `zone` VALUES (205, 14, 'TIR', 'Tirol');
INSERT INTO `zone` VALUES (206, 14, 'VOR', 'Vorarlberg');
INSERT INTO `zone` VALUES (207, 14, 'WIE', 'Wien');
INSERT INTO `zone` VALUES (208, 15, 'AB', 'Ali Bayramli');
INSERT INTO `zone` VALUES (209, 15, 'ABS', 'Abseron');
INSERT INTO `zone` VALUES (210, 15, 'AGC', 'AgcabAdi');
INSERT INTO `zone` VALUES (211, 15, 'AGM', 'Agdam');
INSERT INTO `zone` VALUES (212, 15, 'AGS', 'Agdas');
INSERT INTO `zone` VALUES (213, 15, 'AGA', 'Agstafa');
INSERT INTO `zone` VALUES (214, 15, 'AGU', 'Agsu');
INSERT INTO `zone` VALUES (215, 15, 'AST', 'Astara');
INSERT INTO `zone` VALUES (216, 15, 'BA', 'Baki');
INSERT INTO `zone` VALUES (217, 15, 'BAB', 'BabAk');
INSERT INTO `zone` VALUES (218, 15, 'BAL', 'BalakAn');
INSERT INTO `zone` VALUES (219, 15, 'BAR', 'BArdA');
INSERT INTO `zone` VALUES (220, 15, 'BEY', 'Beylaqan');
INSERT INTO `zone` VALUES (221, 15, 'BIL', 'Bilasuvar');
INSERT INTO `zone` VALUES (222, 15, 'CAB', 'Cabrayil');
INSERT INTO `zone` VALUES (223, 15, 'CAL', 'Calilabab');
INSERT INTO `zone` VALUES (224, 15, 'CUL', 'Culfa');
INSERT INTO `zone` VALUES (225, 15, 'DAS', 'Daskasan');
INSERT INTO `zone` VALUES (226, 15, 'DAV', 'Davaci');
INSERT INTO `zone` VALUES (227, 15, 'FUZ', 'Fuzuli');
INSERT INTO `zone` VALUES (228, 15, 'GA', 'Ganca');
INSERT INTO `zone` VALUES (229, 15, 'GAD', 'Gadabay');
INSERT INTO `zone` VALUES (230, 15, 'GOR', 'Goranboy');
INSERT INTO `zone` VALUES (231, 15, 'GOY', 'Goycay');
INSERT INTO `zone` VALUES (232, 15, 'HAC', 'Haciqabul');
INSERT INTO `zone` VALUES (233, 15, 'IMI', 'Imisli');
INSERT INTO `zone` VALUES (234, 15, 'ISM', 'Ismayilli');
INSERT INTO `zone` VALUES (235, 15, 'KAL', 'Kalbacar');
INSERT INTO `zone` VALUES (236, 15, 'KUR', 'Kurdamir');
INSERT INTO `zone` VALUES (237, 15, 'LA', 'Lankaran');
INSERT INTO `zone` VALUES (238, 15, 'LAC', 'Lacin');
INSERT INTO `zone` VALUES (239, 15, 'LAN', 'Lankaran');
INSERT INTO `zone` VALUES (240, 15, 'LER', 'Lerik');
INSERT INTO `zone` VALUES (241, 15, 'MAS', 'Masalli');
INSERT INTO `zone` VALUES (242, 15, 'MI', 'Mingacevir');
INSERT INTO `zone` VALUES (243, 15, 'NA', 'Naftalan');
INSERT INTO `zone` VALUES (244, 15, 'NEF', 'Neftcala');
INSERT INTO `zone` VALUES (245, 15, 'OGU', 'Oguz');
INSERT INTO `zone` VALUES (246, 15, 'ORD', 'Ordubad');
INSERT INTO `zone` VALUES (247, 15, 'QAB', 'Qabala');
INSERT INTO `zone` VALUES (248, 15, 'QAX', 'Qax');
INSERT INTO `zone` VALUES (249, 15, 'QAZ', 'Qazax');
INSERT INTO `zone` VALUES (250, 15, 'QOB', 'Qobustan');
INSERT INTO `zone` VALUES (251, 15, 'QBA', 'Quba');
INSERT INTO `zone` VALUES (252, 15, 'QBI', 'Qubadli');
INSERT INTO `zone` VALUES (253, 15, 'QUS', 'Qusar');
INSERT INTO `zone` VALUES (254, 15, 'SA', 'Saki');
INSERT INTO `zone` VALUES (255, 15, 'SAT', 'Saatli');
INSERT INTO `zone` VALUES (256, 15, 'SAB', 'Sabirabad');
INSERT INTO `zone` VALUES (257, 15, 'SAD', 'Sadarak');
INSERT INTO `zone` VALUES (258, 15, 'SAH', 'Sahbuz');
INSERT INTO `zone` VALUES (259, 15, 'SAK', 'Saki');
INSERT INTO `zone` VALUES (260, 15, 'SAL', 'Salyan');
INSERT INTO `zone` VALUES (261, 15, 'SM', 'Sumqayit');
INSERT INTO `zone` VALUES (262, 15, 'SMI', 'Samaxi');
INSERT INTO `zone` VALUES (263, 15, 'SKR', 'Samkir');
INSERT INTO `zone` VALUES (264, 15, 'SMX', 'Samux');
INSERT INTO `zone` VALUES (265, 15, 'SAR', 'Sarur');
INSERT INTO `zone` VALUES (266, 15, 'SIY', 'Siyazan');
INSERT INTO `zone` VALUES (267, 15, 'SS', 'Susa');
INSERT INTO `zone` VALUES (268, 15, 'SUS', 'Susa');
INSERT INTO `zone` VALUES (269, 15, 'TAR', 'Tartar');
INSERT INTO `zone` VALUES (270, 15, 'TOV', 'Tovuz');
INSERT INTO `zone` VALUES (271, 15, 'UCA', 'Ucar');
INSERT INTO `zone` VALUES (272, 15, 'XA', 'Xankandi');
INSERT INTO `zone` VALUES (273, 15, 'XAC', 'Xacmaz');
INSERT INTO `zone` VALUES (274, 15, 'XAN', 'Xanlar');
INSERT INTO `zone` VALUES (275, 15, 'XIZ', 'Xizi');
INSERT INTO `zone` VALUES (276, 15, 'XCI', 'Xocali');
INSERT INTO `zone` VALUES (277, 15, 'XVD', 'Xocavand');
INSERT INTO `zone` VALUES (278, 15, 'YAR', 'Yardimli');
INSERT INTO `zone` VALUES (279, 15, 'YEV', 'Yevlax');
INSERT INTO `zone` VALUES (280, 15, 'ZAN', 'Zangilan');
INSERT INTO `zone` VALUES (281, 15, 'ZAQ', 'Zaqatala');
INSERT INTO `zone` VALUES (282, 15, 'ZAR', 'Zardab');
INSERT INTO `zone` VALUES (283, 15, 'NX', 'Naxcivan');
INSERT INTO `zone` VALUES (284, 16, 'ACK', 'Acklins');
INSERT INTO `zone` VALUES (285, 16, 'BER', 'Berry Islands');
INSERT INTO `zone` VALUES (286, 16, 'BIM', 'Bimini');
INSERT INTO `zone` VALUES (287, 16, 'BLK', 'Black Point');
INSERT INTO `zone` VALUES (288, 16, 'CAT', 'Cat Island');
INSERT INTO `zone` VALUES (289, 16, 'CAB', 'Central Abaco');
INSERT INTO `zone` VALUES (290, 16, 'CAN', 'Central Andros');
INSERT INTO `zone` VALUES (291, 16, 'CEL', 'Central Eleuthera');
INSERT INTO `zone` VALUES (292, 16, 'FRE', 'City of Freeport');
INSERT INTO `zone` VALUES (293, 16, 'CRO', 'Crooked Island');
INSERT INTO `zone` VALUES (294, 16, 'EGB', 'East Grand Bahama');
INSERT INTO `zone` VALUES (295, 16, 'EXU', 'Exuma');
INSERT INTO `zone` VALUES (296, 16, 'GRD', 'Grand Cay');
INSERT INTO `zone` VALUES (297, 16, 'HAR', 'Harbour Island');
INSERT INTO `zone` VALUES (298, 16, 'HOP', 'Hope Town');
INSERT INTO `zone` VALUES (299, 16, 'INA', 'Inagua');
INSERT INTO `zone` VALUES (300, 16, 'LNG', 'Long Island');
INSERT INTO `zone` VALUES (301, 16, 'MAN', 'Mangrove Cay');
INSERT INTO `zone` VALUES (302, 16, 'MAY', 'Mayaguana');
INSERT INTO `zone` VALUES (303, 16, 'MOO', 'Moore''s Island');
INSERT INTO `zone` VALUES (304, 16, 'NAB', 'North Abaco');
INSERT INTO `zone` VALUES (305, 16, 'NAN', 'North Andros');
INSERT INTO `zone` VALUES (306, 16, 'NEL', 'North Eleuthera');
INSERT INTO `zone` VALUES (307, 16, 'RAG', 'Ragged Island');
INSERT INTO `zone` VALUES (308, 16, 'RUM', 'Rum Cay');
INSERT INTO `zone` VALUES (309, 16, 'SAL', 'San Salvador');
INSERT INTO `zone` VALUES (310, 16, 'SAB', 'South Abaco');
INSERT INTO `zone` VALUES (311, 16, 'SAN', 'South Andros');
INSERT INTO `zone` VALUES (312, 16, 'SEL', 'South Eleuthera');
INSERT INTO `zone` VALUES (313, 16, 'SWE', 'Spanish Wells');
INSERT INTO `zone` VALUES (314, 16, 'WGB', 'West Grand Bahama');
INSERT INTO `zone` VALUES (315, 17, 'CAP', 'Capital');
INSERT INTO `zone` VALUES (316, 17, 'CEN', 'Central');
INSERT INTO `zone` VALUES (317, 17, 'MUH', 'Muharraq');
INSERT INTO `zone` VALUES (318, 17, 'NOR', 'Northern');
INSERT INTO `zone` VALUES (319, 17, 'SOU', 'Southern');
INSERT INTO `zone` VALUES (320, 18, 'BAR', 'Barisal');
INSERT INTO `zone` VALUES (321, 18, 'CHI', 'Chittagong');
INSERT INTO `zone` VALUES (322, 18, 'DHA', 'Dhaka');
INSERT INTO `zone` VALUES (323, 18, 'KHU', 'Khulna');
INSERT INTO `zone` VALUES (324, 18, 'RAJ', 'Rajshahi');
INSERT INTO `zone` VALUES (325, 18, 'SYL', 'Sylhet');
INSERT INTO `zone` VALUES (326, 19, 'CC', 'Christ Church');
INSERT INTO `zone` VALUES (327, 19, 'AND', 'Saint Andrew');
INSERT INTO `zone` VALUES (328, 19, 'GEO', 'Saint George');
INSERT INTO `zone` VALUES (329, 19, 'JAM', 'Saint James');
INSERT INTO `zone` VALUES (330, 19, 'JOH', 'Saint John');
INSERT INTO `zone` VALUES (331, 19, 'JOS', 'Saint Joseph');
INSERT INTO `zone` VALUES (332, 19, 'LUC', 'Saint Lucy');
INSERT INTO `zone` VALUES (333, 19, 'MIC', 'Saint Michael');
INSERT INTO `zone` VALUES (334, 19, 'PET', 'Saint Peter');
INSERT INTO `zone` VALUES (335, 19, 'PHI', 'Saint Philip');
INSERT INTO `zone` VALUES (336, 19, 'THO', 'Saint Thomas');
INSERT INTO `zone` VALUES (337, 20, 'BR', 'Brestskaya (Brest)');
INSERT INTO `zone` VALUES (338, 20, 'HO', 'Homyel''skaya (Homyel'')');
INSERT INTO `zone` VALUES (339, 20, 'HM', 'Horad Minsk');
INSERT INTO `zone` VALUES (340, 20, 'HR', 'Hrodzyenskaya (Hrodna)');
INSERT INTO `zone` VALUES (341, 20, 'MA', 'Mahilyowskaya (Mahilyow)');
INSERT INTO `zone` VALUES (342, 20, 'MI', 'Minskaya');
INSERT INTO `zone` VALUES (343, 20, 'VI', 'Vitsyebskaya (Vitsyebsk)');
INSERT INTO `zone` VALUES (344, 21, 'VAN', 'Antwerpen');
INSERT INTO `zone` VALUES (345, 21, 'WBR', 'Brabant Wallon');
INSERT INTO `zone` VALUES (346, 21, 'WHT', 'Hainaut');
INSERT INTO `zone` VALUES (347, 21, 'WLG', 'Liege');
INSERT INTO `zone` VALUES (348, 21, 'VLI', 'Limburg');
INSERT INTO `zone` VALUES (349, 21, 'WLX', 'Luxembourg');
INSERT INTO `zone` VALUES (350, 21, 'WNA', 'Namur');
INSERT INTO `zone` VALUES (351, 21, 'VOV', 'Oost-Vlaanderen');
INSERT INTO `zone` VALUES (352, 21, 'VBR', 'Vlaams Brabant');
INSERT INTO `zone` VALUES (353, 21, 'VWV', 'West-Vlaanderen');
INSERT INTO `zone` VALUES (354, 22, 'BZ', 'Belize');
INSERT INTO `zone` VALUES (355, 22, 'CY', 'Cayo');
INSERT INTO `zone` VALUES (356, 22, 'CR', 'Corozal');
INSERT INTO `zone` VALUES (357, 22, 'OW', 'Orange Walk');
INSERT INTO `zone` VALUES (358, 22, 'SC', 'Stann Creek');
INSERT INTO `zone` VALUES (359, 22, 'TO', 'Toledo');
INSERT INTO `zone` VALUES (360, 23, 'AL', 'Alibori');
INSERT INTO `zone` VALUES (361, 23, 'AK', 'Atakora');
INSERT INTO `zone` VALUES (362, 23, 'AQ', 'Atlantique');
INSERT INTO `zone` VALUES (363, 23, 'BO', 'Borgou');
INSERT INTO `zone` VALUES (364, 23, 'CO', 'Collines');
INSERT INTO `zone` VALUES (365, 23, 'DO', 'Donga');
INSERT INTO `zone` VALUES (366, 23, 'KO', 'Kouffo');
INSERT INTO `zone` VALUES (367, 23, 'LI', 'Littoral');
INSERT INTO `zone` VALUES (368, 23, 'MO', 'Mono');
INSERT INTO `zone` VALUES (369, 23, 'OU', 'Oueme');
INSERT INTO `zone` VALUES (370, 23, 'PL', 'Plateau');
INSERT INTO `zone` VALUES (371, 23, 'ZO', 'Zou');
INSERT INTO `zone` VALUES (372, 24, 'DS', 'Devonshire');
INSERT INTO `zone` VALUES (373, 24, 'HC', 'Hamilton City');
INSERT INTO `zone` VALUES (374, 24, 'HA', 'Hamilton');
INSERT INTO `zone` VALUES (375, 24, 'PG', 'Paget');
INSERT INTO `zone` VALUES (376, 24, 'PB', 'Pembroke');
INSERT INTO `zone` VALUES (377, 24, 'GC', 'Saint George City');
INSERT INTO `zone` VALUES (378, 24, 'SG', 'Saint George''s');
INSERT INTO `zone` VALUES (379, 24, 'SA', 'Sandys');
INSERT INTO `zone` VALUES (380, 24, 'SM', 'Smith''s');
INSERT INTO `zone` VALUES (381, 24, 'SH', 'Southampton');
INSERT INTO `zone` VALUES (382, 24, 'WA', 'Warwick');
INSERT INTO `zone` VALUES (383, 25, 'BUM', 'Bumthang');
INSERT INTO `zone` VALUES (384, 25, 'CHU', 'Chukha');
INSERT INTO `zone` VALUES (385, 25, 'DAG', 'Dagana');
INSERT INTO `zone` VALUES (386, 25, 'GAS', 'Gasa');
INSERT INTO `zone` VALUES (387, 25, 'HAA', 'Haa');
INSERT INTO `zone` VALUES (388, 25, 'LHU', 'Lhuntse');
INSERT INTO `zone` VALUES (389, 25, 'MON', 'Mongar');
INSERT INTO `zone` VALUES (390, 25, 'PAR', 'Paro');
INSERT INTO `zone` VALUES (391, 25, 'PEM', 'Pemagatshel');
INSERT INTO `zone` VALUES (392, 25, 'PUN', 'Punakha');
INSERT INTO `zone` VALUES (393, 25, 'SJO', 'Samdrup Jongkhar');
INSERT INTO `zone` VALUES (394, 25, 'SAT', 'Samtse');
INSERT INTO `zone` VALUES (395, 25, 'SAR', 'Sarpang');
INSERT INTO `zone` VALUES (396, 25, 'THI', 'Thimphu');
INSERT INTO `zone` VALUES (397, 25, 'TRG', 'Trashigang');
INSERT INTO `zone` VALUES (398, 25, 'TRY', 'Trashiyangste');
INSERT INTO `zone` VALUES (399, 25, 'TRO', 'Trongsa');
INSERT INTO `zone` VALUES (400, 25, 'TSI', 'Tsirang');
INSERT INTO `zone` VALUES (401, 25, 'WPH', 'Wangdue Phodrang');
INSERT INTO `zone` VALUES (402, 25, 'ZHE', 'Zhemgang');
INSERT INTO `zone` VALUES (403, 26, 'BEN', 'Beni');
INSERT INTO `zone` VALUES (404, 26, 'CHU', 'Chuquisaca');
INSERT INTO `zone` VALUES (405, 26, 'COC', 'Cochabamba');
INSERT INTO `zone` VALUES (406, 26, 'LPZ', 'La Paz');
INSERT INTO `zone` VALUES (407, 26, 'ORU', 'Oruro');
INSERT INTO `zone` VALUES (408, 26, 'PAN', 'Pando');
INSERT INTO `zone` VALUES (409, 26, 'POT', 'Potosi');
INSERT INTO `zone` VALUES (410, 26, 'SCZ', 'Santa Cruz');
INSERT INTO `zone` VALUES (411, 26, 'TAR', 'Tarija');
INSERT INTO `zone` VALUES (412, 27, 'BRO', 'Brcko district');
INSERT INTO `zone` VALUES (413, 27, 'FUS', 'Unsko-Sanski Kanton');
INSERT INTO `zone` VALUES (414, 27, 'FPO', 'Posavski Kanton');
INSERT INTO `zone` VALUES (415, 27, 'FTU', 'Tuzlanski Kanton');
INSERT INTO `zone` VALUES (416, 27, 'FZE', 'Zenicko-Dobojski Kanton');
INSERT INTO `zone` VALUES (417, 27, 'FBP', 'Bosanskopodrinjski Kanton');
INSERT INTO `zone` VALUES (418, 27, 'FSB', 'Srednjebosanski Kanton');
INSERT INTO `zone` VALUES (419, 27, 'FHN', 'Hercegovacko-neretvanski Kanton');
INSERT INTO `zone` VALUES (420, 27, 'FZH', 'Zapadnohercegovacka Zupanija');
INSERT INTO `zone` VALUES (421, 27, 'FSA', 'Kanton Sarajevo');
INSERT INTO `zone` VALUES (422, 27, 'FZA', 'Zapadnobosanska');
INSERT INTO `zone` VALUES (423, 27, 'SBL', 'Banja Luka');
INSERT INTO `zone` VALUES (424, 27, 'SDO', 'Doboj');
INSERT INTO `zone` VALUES (425, 27, 'SBI', 'Bijeljina');
INSERT INTO `zone` VALUES (426, 27, 'SVL', 'Vlasenica');
INSERT INTO `zone` VALUES (427, 27, 'SSR', 'Sarajevo-Romanija or Sokolac');
INSERT INTO `zone` VALUES (428, 27, 'SFO', 'Foca');
INSERT INTO `zone` VALUES (429, 27, 'STR', 'Trebinje');
INSERT INTO `zone` VALUES (430, 28, 'CE', 'Central');
INSERT INTO `zone` VALUES (431, 28, 'GH', 'Ghanzi');
INSERT INTO `zone` VALUES (432, 28, 'KD', 'Kgalagadi');
INSERT INTO `zone` VALUES (433, 28, 'KT', 'Kgatleng');
INSERT INTO `zone` VALUES (434, 28, 'KW', 'Kweneng');
INSERT INTO `zone` VALUES (435, 28, 'NG', 'Ngamiland');
INSERT INTO `zone` VALUES (436, 28, 'NE', 'North East');
INSERT INTO `zone` VALUES (437, 28, 'NW', 'North West');
INSERT INTO `zone` VALUES (438, 28, 'SE', 'South East');
INSERT INTO `zone` VALUES (439, 28, 'SO', 'Southern');
INSERT INTO `zone` VALUES (440, 30, 'AC', 'Acre');
INSERT INTO `zone` VALUES (441, 30, 'AL', 'Alagoas');
INSERT INTO `zone` VALUES (442, 30, 'AP', 'Amapa');
INSERT INTO `zone` VALUES (443, 30, 'AM', 'Amazonas');
INSERT INTO `zone` VALUES (444, 30, 'BA', 'Bahia');
INSERT INTO `zone` VALUES (445, 30, 'CE', 'Ceara');
INSERT INTO `zone` VALUES (446, 30, 'DF', 'Distrito Federal');
INSERT INTO `zone` VALUES (447, 30, 'ES', 'Espirito Santo');
INSERT INTO `zone` VALUES (448, 30, 'GO', 'Goias');
INSERT INTO `zone` VALUES (449, 30, 'MA', 'Maranhao');
INSERT INTO `zone` VALUES (450, 30, 'MT', 'Mato Grosso');
INSERT INTO `zone` VALUES (451, 30, 'MS', 'Mato Grosso do Sul');
INSERT INTO `zone` VALUES (452, 30, 'MG', 'Minas Gerais');
INSERT INTO `zone` VALUES (453, 30, 'PA', 'Para');
INSERT INTO `zone` VALUES (454, 30, 'PB', 'Paraiba');
INSERT INTO `zone` VALUES (455, 30, 'PR', 'Parana');
INSERT INTO `zone` VALUES (456, 30, 'PE', 'Pernambuco');
INSERT INTO `zone` VALUES (457, 30, 'PI', 'Piaui');
INSERT INTO `zone` VALUES (458, 30, 'RJ', 'Rio de Janeiro');
INSERT INTO `zone` VALUES (459, 30, 'RN', 'Rio Grande do Norte');
INSERT INTO `zone` VALUES (460, 30, 'RS', 'Rio Grande do Sul');
INSERT INTO `zone` VALUES (461, 30, 'RO', 'Rondonia');
INSERT INTO `zone` VALUES (462, 30, 'RR', 'Roraima');
INSERT INTO `zone` VALUES (463, 30, 'SC', 'Santa Catarina');
INSERT INTO `zone` VALUES (464, 30, 'SP', 'Sao Paulo');
INSERT INTO `zone` VALUES (465, 30, 'SE', 'Sergipe');
INSERT INTO `zone` VALUES (466, 30, 'TO', 'Tocantins');
INSERT INTO `zone` VALUES (467, 31, 'PB', 'Peros Banhos');
INSERT INTO `zone` VALUES (468, 31, 'SI', 'Salomon Islands');
INSERT INTO `zone` VALUES (469, 31, 'NI', 'Nelsons Island');
INSERT INTO `zone` VALUES (470, 31, 'TB', 'Three Brothers');
INSERT INTO `zone` VALUES (471, 31, 'EA', 'Eagle Islands');
INSERT INTO `zone` VALUES (472, 31, 'DI', 'Danger Island');
INSERT INTO `zone` VALUES (473, 31, 'EG', 'Egmont Islands');
INSERT INTO `zone` VALUES (474, 31, 'DG', 'Diego Garcia');
INSERT INTO `zone` VALUES (475, 32, 'BEL', 'Belait');
INSERT INTO `zone` VALUES (476, 32, 'BRM', 'Brunei and Muara');
INSERT INTO `zone` VALUES (477, 32, 'TEM', 'Temburong');
INSERT INTO `zone` VALUES (478, 32, 'TUT', 'Tutong');
INSERT INTO `zone` VALUES (479, 33, '', 'Blagoevgrad');
INSERT INTO `zone` VALUES (480, 33, '', 'Burgas');
INSERT INTO `zone` VALUES (481, 33, '', 'Dobrich');
INSERT INTO `zone` VALUES (482, 33, '', 'Gabrovo');
INSERT INTO `zone` VALUES (483, 33, '', 'Haskovo');
INSERT INTO `zone` VALUES (484, 33, '', 'Kardjali');
INSERT INTO `zone` VALUES (485, 33, '', 'Kyustendil');
INSERT INTO `zone` VALUES (486, 33, '', 'Lovech');
INSERT INTO `zone` VALUES (487, 33, '', 'Montana');
INSERT INTO `zone` VALUES (488, 33, '', 'Pazardjik');
INSERT INTO `zone` VALUES (489, 33, '', 'Pernik');
INSERT INTO `zone` VALUES (490, 33, '', 'Pleven');
INSERT INTO `zone` VALUES (491, 33, '', 'Plovdiv');
INSERT INTO `zone` VALUES (492, 33, '', 'Razgrad');
INSERT INTO `zone` VALUES (493, 33, '', 'Shumen');
INSERT INTO `zone` VALUES (494, 33, '', 'Silistra');
INSERT INTO `zone` VALUES (495, 33, '', 'Sliven');
INSERT INTO `zone` VALUES (496, 33, '', 'Smolyan');
INSERT INTO `zone` VALUES (497, 33, '', 'Sofia');
INSERT INTO `zone` VALUES (498, 33, '', 'Sofia - town');
INSERT INTO `zone` VALUES (499, 33, '', 'Stara Zagora');
INSERT INTO `zone` VALUES (500, 33, '', 'Targovishte');
INSERT INTO `zone` VALUES (501, 33, '', 'Varna');
INSERT INTO `zone` VALUES (502, 33, '', 'Veliko Tarnovo');
INSERT INTO `zone` VALUES (503, 33, '', 'Vidin');
INSERT INTO `zone` VALUES (504, 33, '', 'Vratza');
INSERT INTO `zone` VALUES (505, 33, '', 'Yambol');
INSERT INTO `zone` VALUES (506, 34, 'BAL', 'Bale');
INSERT INTO `zone` VALUES (507, 34, 'BAM', 'Bam');
INSERT INTO `zone` VALUES (508, 34, 'BAN', 'Banwa');
INSERT INTO `zone` VALUES (509, 34, 'BAZ', 'Bazega');
INSERT INTO `zone` VALUES (510, 34, 'BOR', 'Bougouriba');
INSERT INTO `zone` VALUES (511, 34, 'BLG', 'Boulgou');
INSERT INTO `zone` VALUES (512, 34, 'BOK', 'Boulkiemde');
INSERT INTO `zone` VALUES (513, 34, 'COM', 'Comoe');
INSERT INTO `zone` VALUES (514, 34, 'GAN', 'Ganzourgou');
INSERT INTO `zone` VALUES (515, 34, 'GNA', 'Gnagna');
INSERT INTO `zone` VALUES (516, 34, 'GOU', 'Gourma');
INSERT INTO `zone` VALUES (517, 34, 'HOU', 'Houet');
INSERT INTO `zone` VALUES (518, 34, 'IOA', 'Ioba');
INSERT INTO `zone` VALUES (519, 34, 'KAD', 'Kadiogo');
INSERT INTO `zone` VALUES (520, 34, 'KEN', 'Kenedougou');
INSERT INTO `zone` VALUES (521, 34, 'KOD', 'Komondjari');
INSERT INTO `zone` VALUES (522, 34, 'KOP', 'Kompienga');
INSERT INTO `zone` VALUES (523, 34, 'KOS', 'Kossi');
INSERT INTO `zone` VALUES (524, 34, 'KOL', 'Koulpelogo');
INSERT INTO `zone` VALUES (525, 34, 'KOT', 'Kouritenga');
INSERT INTO `zone` VALUES (526, 34, 'KOW', 'Kourweogo');
INSERT INTO `zone` VALUES (527, 34, 'LER', 'Leraba');
INSERT INTO `zone` VALUES (528, 34, 'LOR', 'Loroum');
INSERT INTO `zone` VALUES (529, 34, 'MOU', 'Mouhoun');
INSERT INTO `zone` VALUES (530, 34, 'NAH', 'Nahouri');
INSERT INTO `zone` VALUES (531, 34, 'NAM', 'Namentenga');
INSERT INTO `zone` VALUES (532, 34, 'NAY', 'Nayala');
INSERT INTO `zone` VALUES (533, 34, 'NOU', 'Noumbiel');
INSERT INTO `zone` VALUES (534, 34, 'OUB', 'Oubritenga');
INSERT INTO `zone` VALUES (535, 34, 'OUD', 'Oudalan');
INSERT INTO `zone` VALUES (536, 34, 'PAS', 'Passore');
INSERT INTO `zone` VALUES (537, 34, 'PON', 'Poni');
INSERT INTO `zone` VALUES (538, 34, 'SAG', 'Sanguie');
INSERT INTO `zone` VALUES (539, 34, 'SAM', 'Sanmatenga');
INSERT INTO `zone` VALUES (540, 34, 'SEN', 'Seno');
INSERT INTO `zone` VALUES (541, 34, 'SIS', 'Sissili');
INSERT INTO `zone` VALUES (542, 34, 'SOM', 'Soum');
INSERT INTO `zone` VALUES (543, 34, 'SOR', 'Sourou');
INSERT INTO `zone` VALUES (544, 34, 'TAP', 'Tapoa');
INSERT INTO `zone` VALUES (545, 34, 'TUY', 'Tuy');
INSERT INTO `zone` VALUES (546, 34, 'YAG', 'Yagha');
INSERT INTO `zone` VALUES (547, 34, 'YAT', 'Yatenga');
INSERT INTO `zone` VALUES (548, 34, 'ZIR', 'Ziro');
INSERT INTO `zone` VALUES (549, 34, 'ZOD', 'Zondoma');
INSERT INTO `zone` VALUES (550, 34, 'ZOW', 'Zoundweogo');
INSERT INTO `zone` VALUES (551, 35, 'BB', 'Bubanza');
INSERT INTO `zone` VALUES (552, 35, 'BJ', 'Bujumbura');
INSERT INTO `zone` VALUES (553, 35, 'BR', 'Bururi');
INSERT INTO `zone` VALUES (554, 35, 'CA', 'Cankuzo');
INSERT INTO `zone` VALUES (555, 35, 'CI', 'Cibitoke');
INSERT INTO `zone` VALUES (556, 35, 'GI', 'Gitega');
INSERT INTO `zone` VALUES (557, 35, 'KR', 'Karuzi');
INSERT INTO `zone` VALUES (558, 35, 'KY', 'Kayanza');
INSERT INTO `zone` VALUES (559, 35, 'KI', 'Kirundo');
INSERT INTO `zone` VALUES (560, 35, 'MA', 'Makamba');
INSERT INTO `zone` VALUES (561, 35, 'MU', 'Muramvya');
INSERT INTO `zone` VALUES (562, 35, 'MY', 'Muyinga');
INSERT INTO `zone` VALUES (563, 35, 'MW', 'Mwaro');
INSERT INTO `zone` VALUES (564, 35, 'NG', 'Ngozi');
INSERT INTO `zone` VALUES (565, 35, 'RT', 'Rutana');
INSERT INTO `zone` VALUES (566, 35, 'RY', 'Ruyigi');
INSERT INTO `zone` VALUES (567, 36, 'PP', 'Phnom Penh');
INSERT INTO `zone` VALUES (568, 36, 'PS', 'Preah Seihanu (Kompong Som or Si');
INSERT INTO `zone` VALUES (569, 36, 'PA', 'Pailin');
INSERT INTO `zone` VALUES (570, 36, 'KB', 'Keb');
INSERT INTO `zone` VALUES (571, 36, 'BM', 'Banteay Meanchey');
INSERT INTO `zone` VALUES (572, 36, 'BA', 'Battambang');
INSERT INTO `zone` VALUES (573, 36, 'KM', 'Kampong Cham');
INSERT INTO `zone` VALUES (574, 36, 'KN', 'Kampong Chhnang');
INSERT INTO `zone` VALUES (575, 36, 'KU', 'Kampong Speu');
INSERT INTO `zone` VALUES (576, 36, 'KO', 'Kampong Som');
INSERT INTO `zone` VALUES (577, 36, 'KT', 'Kampong Thom');
INSERT INTO `zone` VALUES (578, 36, 'KP', 'Kampot');
INSERT INTO `zone` VALUES (579, 36, 'KL', 'Kandal');
INSERT INTO `zone` VALUES (580, 36, 'KK', 'Kaoh Kong');
INSERT INTO `zone` VALUES (581, 36, 'KR', 'Kratie');
INSERT INTO `zone` VALUES (582, 36, 'MK', 'Mondul Kiri');
INSERT INTO `zone` VALUES (583, 36, 'OM', 'Oddar Meancheay');
INSERT INTO `zone` VALUES (584, 36, 'PU', 'Pursat');
INSERT INTO `zone` VALUES (585, 36, 'PR', 'Preah Vihear');
INSERT INTO `zone` VALUES (586, 36, 'PG', 'Prey Veng');
INSERT INTO `zone` VALUES (587, 36, 'RK', 'Ratanak Kiri');
INSERT INTO `zone` VALUES (588, 36, 'SI', 'Siemreap');
INSERT INTO `zone` VALUES (589, 36, 'ST', 'Stung Treng');
INSERT INTO `zone` VALUES (590, 36, 'SR', 'Svay Rieng');
INSERT INTO `zone` VALUES (591, 36, 'TK', 'Takeo');
INSERT INTO `zone` VALUES (592, 37, 'ADA', 'Adamawa (Adamaoua)');
INSERT INTO `zone` VALUES (593, 37, 'CEN', 'Centre');
INSERT INTO `zone` VALUES (594, 37, 'EST', 'East (Est)');
INSERT INTO `zone` VALUES (595, 37, 'EXN', 'Extreme North (Extreme-Nord)');
INSERT INTO `zone` VALUES (596, 37, 'LIT', 'Littoral');
INSERT INTO `zone` VALUES (597, 37, 'NOR', 'North (Nord)');
INSERT INTO `zone` VALUES (598, 37, 'NOT', 'Northwest (Nord-Ouest)');
INSERT INTO `zone` VALUES (599, 37, 'OUE', 'West (Ouest)');
INSERT INTO `zone` VALUES (600, 37, 'SUD', 'South (Sud)');
INSERT INTO `zone` VALUES (601, 37, 'SOU', 'Southwest (Sud-Ouest).');
INSERT INTO `zone` VALUES (602, 38, 'AB', 'Alberta');
INSERT INTO `zone` VALUES (603, 38, 'BC', 'British Columbia');
INSERT INTO `zone` VALUES (604, 38, 'MB', 'Manitoba');
INSERT INTO `zone` VALUES (605, 38, 'NB', 'New Brunswick');
INSERT INTO `zone` VALUES (606, 38, 'NL', 'Newfoundland and Labrador');
INSERT INTO `zone` VALUES (607, 38, 'NT', 'Northwest Territories');
INSERT INTO `zone` VALUES (608, 38, 'NS', 'Nova Scotia');
INSERT INTO `zone` VALUES (609, 38, 'NU', 'Nunavut');
INSERT INTO `zone` VALUES (610, 38, 'ON', 'Ontario');
INSERT INTO `zone` VALUES (611, 38, 'PE', 'Prince Edward Island');
INSERT INTO `zone` VALUES (612, 38, 'QC', 'QuÃƒÆ’Ã‚Â©bec');
INSERT INTO `zone` VALUES (613, 38, 'SK', 'Saskatchewan');
INSERT INTO `zone` VALUES (614, 38, 'YT', 'Yukon Territory');
INSERT INTO `zone` VALUES (615, 39, 'BV', 'Boa Vista');
INSERT INTO `zone` VALUES (616, 39, 'BR', 'Brava');
INSERT INTO `zone` VALUES (617, 39, 'CS', 'Calheta de Sao Miguel');
INSERT INTO `zone` VALUES (618, 39, 'MA', 'Maio');
INSERT INTO `zone` VALUES (619, 39, 'MO', 'Mosteiros');
INSERT INTO `zone` VALUES (620, 39, 'PA', 'Paul');
INSERT INTO `zone` VALUES (621, 39, 'PN', 'Porto Novo');
INSERT INTO `zone` VALUES (622, 39, 'PR', 'Praia');
INSERT INTO `zone` VALUES (623, 39, 'RG', 'Ribeira Grande');
INSERT INTO `zone` VALUES (624, 39, 'SL', 'Sal');
INSERT INTO `zone` VALUES (625, 39, 'CA', 'Santa Catarina');
INSERT INTO `zone` VALUES (626, 39, 'CR', 'Santa Cruz');
INSERT INTO `zone` VALUES (627, 39, 'SD', 'Sao Domingos');
INSERT INTO `zone` VALUES (628, 39, 'SF', 'Sao Filipe');
INSERT INTO `zone` VALUES (629, 39, 'SN', 'Sao Nicolau');
INSERT INTO `zone` VALUES (630, 39, 'SV', 'Sao Vicente');
INSERT INTO `zone` VALUES (631, 39, 'TA', 'Tarrafal');
INSERT INTO `zone` VALUES (632, 40, 'CR', 'Creek');
INSERT INTO `zone` VALUES (633, 40, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (634, 40, 'ML', 'Midland');
INSERT INTO `zone` VALUES (635, 40, 'ST', 'South Town');
INSERT INTO `zone` VALUES (636, 40, 'SP', 'Spot Bay');
INSERT INTO `zone` VALUES (637, 40, 'SK', 'Stake Bay');
INSERT INTO `zone` VALUES (638, 40, 'WD', 'West End');
INSERT INTO `zone` VALUES (639, 40, 'WN', 'Western');
INSERT INTO `zone` VALUES (640, 41, 'BBA', 'Bamingui-Bangoran');
INSERT INTO `zone` VALUES (641, 41, 'BKO', 'Basse-Kotto');
INSERT INTO `zone` VALUES (642, 41, 'HKO', 'Haute-Kotto');
INSERT INTO `zone` VALUES (643, 41, 'HMB', 'Haut-Mbomou');
INSERT INTO `zone` VALUES (644, 41, 'KEM', 'Kemo');
INSERT INTO `zone` VALUES (645, 41, 'LOB', 'Lobaye');
INSERT INTO `zone` VALUES (646, 41, 'MKD', 'MambÃƒÆ’Ã‚Â©re-KadÃƒÆ’Ã‚Â©ÃƒÆ’Ã‚');
INSERT INTO `zone` VALUES (647, 41, 'MBO', 'Mbomou');
INSERT INTO `zone` VALUES (648, 41, 'NMM', 'Nana-Mambere');
INSERT INTO `zone` VALUES (649, 41, 'OMP', 'Ombella-M''Poko');
INSERT INTO `zone` VALUES (650, 41, 'OUK', 'Ouaka');
INSERT INTO `zone` VALUES (651, 41, 'OUH', 'Ouham');
INSERT INTO `zone` VALUES (652, 41, 'OPE', 'Ouham-Pende');
INSERT INTO `zone` VALUES (653, 41, 'VAK', 'Vakaga');
INSERT INTO `zone` VALUES (654, 41, 'NGR', 'Nana-Grebizi');
INSERT INTO `zone` VALUES (655, 41, 'SMB', 'Sangha-Mbaere');
INSERT INTO `zone` VALUES (656, 41, 'BAN', 'Bangui');
INSERT INTO `zone` VALUES (657, 42, 'BA', 'Batha');
INSERT INTO `zone` VALUES (658, 42, 'BI', 'Biltine');
INSERT INTO `zone` VALUES (659, 42, 'BE', 'Borkou-Ennedi-Tibesti');
INSERT INTO `zone` VALUES (660, 42, 'CB', 'Chari-Baguirmi');
INSERT INTO `zone` VALUES (661, 42, 'GU', 'Guera');
INSERT INTO `zone` VALUES (662, 42, 'KA', 'Kanem');
INSERT INTO `zone` VALUES (663, 42, 'LA', 'Lac');
INSERT INTO `zone` VALUES (664, 42, 'LC', 'Logone Occidental');
INSERT INTO `zone` VALUES (665, 42, 'LR', 'Logone Oriental');
INSERT INTO `zone` VALUES (666, 42, 'MK', 'Mayo-Kebbi');
INSERT INTO `zone` VALUES (667, 42, 'MC', 'Moyen-Chari');
INSERT INTO `zone` VALUES (668, 42, 'OU', 'Ouaddai');
INSERT INTO `zone` VALUES (669, 42, 'SA', 'Salamat');
INSERT INTO `zone` VALUES (670, 42, 'TA', 'Tandjile');
INSERT INTO `zone` VALUES (671, 43, 'AI', 'Aisen del General Carlos Ibanez');
INSERT INTO `zone` VALUES (672, 43, 'AN', 'Antofagasta');
INSERT INTO `zone` VALUES (673, 43, 'AR', 'Araucania');
INSERT INTO `zone` VALUES (674, 43, 'AT', 'Atacama');
INSERT INTO `zone` VALUES (675, 43, 'BI', 'Bio-Bio');
INSERT INTO `zone` VALUES (676, 43, 'CO', 'Coquimbo');
INSERT INTO `zone` VALUES (677, 43, 'LI', 'Libertador General Bernardo O''Hi');
INSERT INTO `zone` VALUES (678, 43, 'LL', 'Los Lagos');
INSERT INTO `zone` VALUES (679, 43, 'MA', 'Magallanes y de la Antartica Chi');
INSERT INTO `zone` VALUES (680, 43, 'ML', 'Maule');
INSERT INTO `zone` VALUES (681, 43, 'RM', 'Region Metropolitana');
INSERT INTO `zone` VALUES (682, 43, 'TA', 'Tarapaca');
INSERT INTO `zone` VALUES (683, 43, 'VS', 'Valparaiso');
INSERT INTO `zone` VALUES (684, 44, 'AN', 'Anhui');
INSERT INTO `zone` VALUES (685, 44, 'BE', 'Beijing');
INSERT INTO `zone` VALUES (686, 44, 'CH', 'Chongqing');
INSERT INTO `zone` VALUES (687, 44, 'FU', 'Fujian');
INSERT INTO `zone` VALUES (688, 44, 'GA', 'Gansu');
INSERT INTO `zone` VALUES (689, 44, 'GU', 'Guangdong');
INSERT INTO `zone` VALUES (690, 44, 'GX', 'Guangxi');
INSERT INTO `zone` VALUES (691, 44, 'GZ', 'Guizhou');
INSERT INTO `zone` VALUES (692, 44, 'HA', 'Hainan');
INSERT INTO `zone` VALUES (693, 44, 'HB', 'Hebei');
INSERT INTO `zone` VALUES (694, 44, 'HL', 'Heilongjiang');
INSERT INTO `zone` VALUES (695, 44, 'HE', 'Henan');
INSERT INTO `zone` VALUES (696, 44, 'HK', 'Hong Kong');
INSERT INTO `zone` VALUES (697, 44, 'HU', 'Hubei');
INSERT INTO `zone` VALUES (698, 44, 'HN', 'Hunan');
INSERT INTO `zone` VALUES (699, 44, 'IM', 'Inner Mongolia');
INSERT INTO `zone` VALUES (700, 44, 'JI', 'Jiangsu');
INSERT INTO `zone` VALUES (701, 44, 'JX', 'Jiangxi');
INSERT INTO `zone` VALUES (702, 44, 'JL', 'Jilin');
INSERT INTO `zone` VALUES (703, 44, 'LI', 'Liaoning');
INSERT INTO `zone` VALUES (704, 44, 'MA', 'Macau');
INSERT INTO `zone` VALUES (705, 44, 'NI', 'Ningxia');
INSERT INTO `zone` VALUES (706, 44, 'SH', 'Shaanxi');
INSERT INTO `zone` VALUES (707, 44, 'SA', 'Shandong');
INSERT INTO `zone` VALUES (708, 44, 'SG', 'Shanghai');
INSERT INTO `zone` VALUES (709, 44, 'SX', 'Shanxi');
INSERT INTO `zone` VALUES (710, 44, 'SI', 'Sichuan');
INSERT INTO `zone` VALUES (711, 44, 'TI', 'Tianjin');
INSERT INTO `zone` VALUES (712, 44, 'XI', 'Xinjiang');
INSERT INTO `zone` VALUES (713, 44, 'YU', 'Yunnan');
INSERT INTO `zone` VALUES (714, 44, 'ZH', 'Zhejiang');
INSERT INTO `zone` VALUES (715, 46, 'D', 'Direction Island');
INSERT INTO `zone` VALUES (716, 46, 'H', 'Home Island');
INSERT INTO `zone` VALUES (717, 46, 'O', 'Horsburgh Island');
INSERT INTO `zone` VALUES (718, 46, 'S', 'South Island');
INSERT INTO `zone` VALUES (719, 46, 'W', 'West Island');
INSERT INTO `zone` VALUES (720, 47, 'AMZ', 'Amazonas');
INSERT INTO `zone` VALUES (721, 47, 'ANT', 'Antioquia');
INSERT INTO `zone` VALUES (722, 47, 'ARA', 'Arauca');
INSERT INTO `zone` VALUES (723, 47, 'ATL', 'Atlantico');
INSERT INTO `zone` VALUES (724, 47, 'BDC', 'Bogota D.C.');
INSERT INTO `zone` VALUES (725, 47, 'BOL', 'Bolivar');
INSERT INTO `zone` VALUES (726, 47, 'BOY', 'Boyaca');
INSERT INTO `zone` VALUES (727, 47, 'CAL', 'Caldas');
INSERT INTO `zone` VALUES (728, 47, 'CAQ', 'Caqueta');
INSERT INTO `zone` VALUES (729, 47, 'CAS', 'Casanare');
INSERT INTO `zone` VALUES (730, 47, 'CAU', 'Cauca');
INSERT INTO `zone` VALUES (731, 47, 'CES', 'Cesar');
INSERT INTO `zone` VALUES (732, 47, 'CHO', 'Choco');
INSERT INTO `zone` VALUES (733, 47, 'COR', 'Cordoba');
INSERT INTO `zone` VALUES (734, 47, 'CAM', 'Cundinamarca');
INSERT INTO `zone` VALUES (735, 47, 'GNA', 'Guainia');
INSERT INTO `zone` VALUES (736, 47, 'GJR', 'Guajira');
INSERT INTO `zone` VALUES (737, 47, 'GVR', 'Guaviare');
INSERT INTO `zone` VALUES (738, 47, 'HUI', 'Huila');
INSERT INTO `zone` VALUES (739, 47, 'MAG', 'Magdalena');
INSERT INTO `zone` VALUES (740, 47, 'MET', 'Meta');
INSERT INTO `zone` VALUES (741, 47, 'NAR', 'Narino');
INSERT INTO `zone` VALUES (742, 47, 'NDS', 'Norte de Santander');
INSERT INTO `zone` VALUES (743, 47, 'PUT', 'Putumayo');
INSERT INTO `zone` VALUES (744, 47, 'QUI', 'Quindio');
INSERT INTO `zone` VALUES (745, 47, 'RIS', 'Risaralda');
INSERT INTO `zone` VALUES (746, 47, 'SAP', 'San Andres y Providencia');
INSERT INTO `zone` VALUES (747, 47, 'SAN', 'Santander');
INSERT INTO `zone` VALUES (748, 47, 'SUC', 'Sucre');
INSERT INTO `zone` VALUES (749, 47, 'TOL', 'Tolima');
INSERT INTO `zone` VALUES (750, 47, 'VDC', 'Valle del Cauca');
INSERT INTO `zone` VALUES (751, 47, 'VAU', 'Vaupes');
INSERT INTO `zone` VALUES (752, 47, 'VIC', 'Vichada');
INSERT INTO `zone` VALUES (753, 48, 'G', 'Grande Comore');
INSERT INTO `zone` VALUES (754, 48, 'A', 'Anjouan');
INSERT INTO `zone` VALUES (755, 48, 'M', 'Moheli');
INSERT INTO `zone` VALUES (756, 49, 'BO', 'Bouenza');
INSERT INTO `zone` VALUES (757, 49, 'BR', 'Brazzaville');
INSERT INTO `zone` VALUES (758, 49, 'CU', 'Cuvette');
INSERT INTO `zone` VALUES (759, 49, 'CO', 'Cuvette-Ouest');
INSERT INTO `zone` VALUES (760, 49, 'KO', 'Kouilou');
INSERT INTO `zone` VALUES (761, 49, 'LE', 'Lekoumou');
INSERT INTO `zone` VALUES (762, 49, 'LI', 'Likouala');
INSERT INTO `zone` VALUES (763, 49, 'NI', 'Niari');
INSERT INTO `zone` VALUES (764, 49, 'PL', 'Plateaux');
INSERT INTO `zone` VALUES (765, 49, 'PO', 'Pool');
INSERT INTO `zone` VALUES (766, 49, 'SA', 'Sangha');
INSERT INTO `zone` VALUES (767, 50, 'PU', 'Pukapuka');
INSERT INTO `zone` VALUES (768, 50, 'RK', 'Rakahanga');
INSERT INTO `zone` VALUES (769, 50, 'MK', 'Manihiki');
INSERT INTO `zone` VALUES (770, 50, 'PE', 'Penrhyn');
INSERT INTO `zone` VALUES (771, 50, 'NI', 'Nassau Island');
INSERT INTO `zone` VALUES (772, 50, 'SU', 'Surwarrow');
INSERT INTO `zone` VALUES (773, 50, 'PA', 'Palmerston');
INSERT INTO `zone` VALUES (774, 50, 'AI', 'Aitutaki');
INSERT INTO `zone` VALUES (775, 50, 'MA', 'Manuae');
INSERT INTO `zone` VALUES (776, 50, 'TA', 'Takutea');
INSERT INTO `zone` VALUES (777, 50, 'MT', 'Mitiaro');
INSERT INTO `zone` VALUES (778, 50, 'AT', 'Atiu');
INSERT INTO `zone` VALUES (779, 50, 'MU', 'Mauke');
INSERT INTO `zone` VALUES (780, 50, 'RR', 'Rarotonga');
INSERT INTO `zone` VALUES (781, 50, 'MG', 'Mangaia');
INSERT INTO `zone` VALUES (782, 51, 'AL', 'Alajuela');
INSERT INTO `zone` VALUES (783, 51, 'CA', 'Cartago');
INSERT INTO `zone` VALUES (784, 51, 'GU', 'Guanacaste');
INSERT INTO `zone` VALUES (785, 51, 'HE', 'Heredia');
INSERT INTO `zone` VALUES (786, 51, 'LI', 'Limon');
INSERT INTO `zone` VALUES (787, 51, 'PU', 'Puntarenas');
INSERT INTO `zone` VALUES (788, 51, 'SJ', 'San Jose');
INSERT INTO `zone` VALUES (789, 52, 'ABE', 'Abengourou');
INSERT INTO `zone` VALUES (790, 52, 'ABI', 'Abidjan');
INSERT INTO `zone` VALUES (791, 52, 'ABO', 'Aboisso');
INSERT INTO `zone` VALUES (792, 52, 'ADI', 'Adiake');
INSERT INTO `zone` VALUES (793, 52, 'ADZ', 'Adzope');
INSERT INTO `zone` VALUES (794, 52, 'AGB', 'Agboville');
INSERT INTO `zone` VALUES (795, 52, 'AGN', 'Agnibilekrou');
INSERT INTO `zone` VALUES (796, 52, 'ALE', 'Alepe');
INSERT INTO `zone` VALUES (797, 52, 'BOC', 'Bocanda');
INSERT INTO `zone` VALUES (798, 52, 'BAN', 'Bangolo');
INSERT INTO `zone` VALUES (799, 52, 'BEO', 'Beoumi');
INSERT INTO `zone` VALUES (800, 52, 'BIA', 'Biankouma');
INSERT INTO `zone` VALUES (801, 52, 'BDK', 'Bondoukou');
INSERT INTO `zone` VALUES (802, 52, 'BGN', 'Bongouanou');
INSERT INTO `zone` VALUES (803, 52, 'BFL', 'Bouafle');
INSERT INTO `zone` VALUES (804, 52, 'BKE', 'Bouake');
INSERT INTO `zone` VALUES (805, 52, 'BNA', 'Bouna');
INSERT INTO `zone` VALUES (806, 52, 'BDL', 'Boundiali');
INSERT INTO `zone` VALUES (807, 52, 'DKL', 'Dabakala');
INSERT INTO `zone` VALUES (808, 52, 'DBU', 'Dabou');
INSERT INTO `zone` VALUES (809, 52, 'DAL', 'Daloa');
INSERT INTO `zone` VALUES (810, 52, 'DAN', 'Danane');
INSERT INTO `zone` VALUES (811, 52, 'DAO', 'Daoukro');
INSERT INTO `zone` VALUES (812, 52, 'DIM', 'Dimbokro');
INSERT INTO `zone` VALUES (813, 52, 'DIV', 'Divo');
INSERT INTO `zone` VALUES (814, 52, 'DUE', 'Duekoue');
INSERT INTO `zone` VALUES (815, 52, 'FER', 'Ferkessedougou');
INSERT INTO `zone` VALUES (816, 52, 'GAG', 'Gagnoa');
INSERT INTO `zone` VALUES (817, 52, 'GBA', 'Grand-Bassam');
INSERT INTO `zone` VALUES (818, 52, 'GLA', 'Grand-Lahou');
INSERT INTO `zone` VALUES (819, 52, 'GUI', 'Guiglo');
INSERT INTO `zone` VALUES (820, 52, 'ISS', 'Issia');
INSERT INTO `zone` VALUES (821, 52, 'JAC', 'Jacqueville');
INSERT INTO `zone` VALUES (822, 52, 'KAT', 'Katiola');
INSERT INTO `zone` VALUES (823, 52, 'KOR', 'Korhogo');
INSERT INTO `zone` VALUES (824, 52, 'LAK', 'Lakota');
INSERT INTO `zone` VALUES (825, 52, 'MAN', 'Man');
INSERT INTO `zone` VALUES (826, 52, 'MKN', 'Mankono');
INSERT INTO `zone` VALUES (827, 52, 'MBA', 'Mbahiakro');
INSERT INTO `zone` VALUES (828, 52, 'ODI', 'Odienne');
INSERT INTO `zone` VALUES (829, 52, 'OUM', 'Oume');
INSERT INTO `zone` VALUES (830, 52, 'SAK', 'Sakassou');
INSERT INTO `zone` VALUES (831, 52, 'SPE', 'San-Pedro');
INSERT INTO `zone` VALUES (832, 52, 'SAS', 'Sassandra');
INSERT INTO `zone` VALUES (833, 52, 'SEG', 'Seguela');
INSERT INTO `zone` VALUES (834, 52, 'SIN', 'Sinfra');
INSERT INTO `zone` VALUES (835, 52, 'SOU', 'Soubre');
INSERT INTO `zone` VALUES (836, 52, 'TAB', 'Tabou');
INSERT INTO `zone` VALUES (837, 52, 'TAN', 'Tanda');
INSERT INTO `zone` VALUES (838, 52, 'TIE', 'Tiebissou');
INSERT INTO `zone` VALUES (839, 52, 'TIN', 'Tingrela');
INSERT INTO `zone` VALUES (840, 52, 'TIA', 'Tiassale');
INSERT INTO `zone` VALUES (841, 52, 'TBA', 'Touba');
INSERT INTO `zone` VALUES (842, 52, 'TLP', 'Toulepleu');
INSERT INTO `zone` VALUES (843, 52, 'TMD', 'Toumodi');
INSERT INTO `zone` VALUES (844, 52, 'VAV', 'Vavoua');
INSERT INTO `zone` VALUES (845, 52, 'YAM', 'Yamoussoukro');
INSERT INTO `zone` VALUES (846, 52, 'ZUE', 'Zuenoula');
INSERT INTO `zone` VALUES (847, 53, 'BB', 'Bjelovar-Bilogora');
INSERT INTO `zone` VALUES (848, 53, 'CZ', 'City of Zagreb');
INSERT INTO `zone` VALUES (849, 53, 'DN', 'Dubrovnik-Neretva');
INSERT INTO `zone` VALUES (850, 53, 'IS', 'Istra');
INSERT INTO `zone` VALUES (851, 53, 'KA', 'Karlovac');
INSERT INTO `zone` VALUES (852, 53, 'KK', 'Koprivnica-Krizevci');
INSERT INTO `zone` VALUES (853, 53, 'KZ', 'Krapina-Zagorje');
INSERT INTO `zone` VALUES (854, 53, 'LS', 'Lika-Senj');
INSERT INTO `zone` VALUES (855, 53, 'ME', 'Medimurje');
INSERT INTO `zone` VALUES (856, 53, 'OB', 'Osijek-Baranja');
INSERT INTO `zone` VALUES (857, 53, 'PS', 'Pozega-Slavonia');
INSERT INTO `zone` VALUES (858, 53, 'PG', 'Primorje-Gorski Kotar');
INSERT INTO `zone` VALUES (859, 53, 'SI', 'Sibenik');
INSERT INTO `zone` VALUES (860, 53, 'SM', 'Sisak-Moslavina');
INSERT INTO `zone` VALUES (861, 53, 'SB', 'Slavonski Brod-Posavina');
INSERT INTO `zone` VALUES (862, 53, 'SD', 'Split-Dalmatia');
INSERT INTO `zone` VALUES (863, 53, 'VA', 'Varazdin');
INSERT INTO `zone` VALUES (864, 53, 'VP', 'Virovitica-Podravina');
INSERT INTO `zone` VALUES (865, 53, 'VS', 'Vukovar-Srijem');
INSERT INTO `zone` VALUES (866, 53, 'ZK', 'Zadar-Knin');
INSERT INTO `zone` VALUES (867, 53, 'ZA', 'Zagreb');
INSERT INTO `zone` VALUES (868, 54, 'CA', 'Camaguey');
INSERT INTO `zone` VALUES (869, 54, 'CD', 'Ciego de Avila');
INSERT INTO `zone` VALUES (870, 54, 'CI', 'Cienfuegos');
INSERT INTO `zone` VALUES (871, 54, 'CH', 'Ciudad de La Habana');
INSERT INTO `zone` VALUES (872, 54, 'GR', 'Granma');
INSERT INTO `zone` VALUES (873, 54, 'GU', 'Guantanamo');
INSERT INTO `zone` VALUES (874, 54, 'HO', 'Holguin');
INSERT INTO `zone` VALUES (875, 54, 'IJ', 'Isla de la Juventud');
INSERT INTO `zone` VALUES (876, 54, 'LH', 'La Habana');
INSERT INTO `zone` VALUES (877, 54, 'LT', 'Las Tunas');
INSERT INTO `zone` VALUES (878, 54, 'MA', 'Matanzas');
INSERT INTO `zone` VALUES (879, 54, 'PR', 'Pinar del Rio');
INSERT INTO `zone` VALUES (880, 54, 'SS', 'Sancti Spiritus');
INSERT INTO `zone` VALUES (881, 54, 'SC', 'Santiago de Cuba');
INSERT INTO `zone` VALUES (882, 54, 'VC', 'Villa Clara');
INSERT INTO `zone` VALUES (883, 55, 'F', 'Famagusta');
INSERT INTO `zone` VALUES (884, 55, 'K', 'Kyrenia');
INSERT INTO `zone` VALUES (885, 55, 'A', 'Larnaca');
INSERT INTO `zone` VALUES (886, 55, 'I', 'Limassol');
INSERT INTO `zone` VALUES (887, 55, 'N', 'Nicosia');
INSERT INTO `zone` VALUES (888, 55, 'P', 'Paphos');
INSERT INTO `zone` VALUES (889, 56, 'U', 'Ustecky');
INSERT INTO `zone` VALUES (890, 56, 'C', 'Jihocesky');
INSERT INTO `zone` VALUES (891, 56, 'B', 'Jihomoravsky');
INSERT INTO `zone` VALUES (892, 56, 'K', 'Karlovarsky');
INSERT INTO `zone` VALUES (893, 56, 'H', 'Kralovehradecky');
INSERT INTO `zone` VALUES (894, 56, 'L', 'Liberecky');
INSERT INTO `zone` VALUES (895, 56, 'T', 'Moravskoslezsky');
INSERT INTO `zone` VALUES (896, 56, 'M', 'Olomoucky');
INSERT INTO `zone` VALUES (897, 56, 'E', 'Pardubicky');
INSERT INTO `zone` VALUES (898, 56, 'P', 'Plzensky');
INSERT INTO `zone` VALUES (899, 56, 'A', 'Praha');
INSERT INTO `zone` VALUES (900, 56, 'S', 'Stredocesky');
INSERT INTO `zone` VALUES (901, 56, 'J', 'Vysocina');
INSERT INTO `zone` VALUES (902, 56, 'Z', 'Zlinsky');
INSERT INTO `zone` VALUES (903, 57, 'AR', 'Arhus');
INSERT INTO `zone` VALUES (904, 57, 'BH', 'Bornholm');
INSERT INTO `zone` VALUES (905, 57, 'CO', 'Copenhagen');
INSERT INTO `zone` VALUES (906, 57, 'FO', 'Faroe Islands');
INSERT INTO `zone` VALUES (907, 57, 'FR', 'Frederiksborg');
INSERT INTO `zone` VALUES (908, 57, 'FY', 'Fyn');
INSERT INTO `zone` VALUES (909, 57, 'KO', 'Kobenhavn');
INSERT INTO `zone` VALUES (910, 57, 'NO', 'Nordjylland');
INSERT INTO `zone` VALUES (911, 57, 'RI', 'Ribe');
INSERT INTO `zone` VALUES (912, 57, 'RK', 'Ringkobing');
INSERT INTO `zone` VALUES (913, 57, 'RO', 'Roskilde');
INSERT INTO `zone` VALUES (914, 57, 'SO', 'Sonderjylland');
INSERT INTO `zone` VALUES (915, 57, 'ST', 'Storstrom');
INSERT INTO `zone` VALUES (916, 57, 'VK', 'Vejle');
INSERT INTO `zone` VALUES (917, 57, 'VJ', 'VestjÃƒÆ’Ã‚Â¦lland');
INSERT INTO `zone` VALUES (918, 57, 'VB', 'Viborg');
INSERT INTO `zone` VALUES (919, 58, 'S', '''Ali Sabih');
INSERT INTO `zone` VALUES (920, 58, 'K', 'Dikhil');
INSERT INTO `zone` VALUES (921, 58, 'J', 'Djibouti');
INSERT INTO `zone` VALUES (922, 58, 'O', 'Obock');
INSERT INTO `zone` VALUES (923, 58, 'T', 'Tadjoura');
INSERT INTO `zone` VALUES (924, 59, 'AND', 'Saint Andrew Parish');
INSERT INTO `zone` VALUES (925, 59, 'DAV', 'Saint David Parish');
INSERT INTO `zone` VALUES (926, 59, 'GEO', 'Saint George Parish');
INSERT INTO `zone` VALUES (927, 59, 'JOH', 'Saint John Parish');
INSERT INTO `zone` VALUES (928, 59, 'JOS', 'Saint Joseph Parish');
INSERT INTO `zone` VALUES (929, 59, 'LUK', 'Saint Luke Parish');
INSERT INTO `zone` VALUES (930, 59, 'MAR', 'Saint Mark Parish');
INSERT INTO `zone` VALUES (931, 59, 'PAT', 'Saint Patrick Parish');
INSERT INTO `zone` VALUES (932, 59, 'PAU', 'Saint Paul Parish');
INSERT INTO `zone` VALUES (933, 59, 'PET', 'Saint Peter Parish');
INSERT INTO `zone` VALUES (934, 60, 'DN', 'Distrito Nacional');
INSERT INTO `zone` VALUES (935, 60, 'AZ', 'Azua');
INSERT INTO `zone` VALUES (936, 60, 'BC', 'Baoruco');
INSERT INTO `zone` VALUES (937, 60, 'BH', 'Barahona');
INSERT INTO `zone` VALUES (938, 60, 'DJ', 'Dajabon');
INSERT INTO `zone` VALUES (939, 60, 'DU', 'Duarte');
INSERT INTO `zone` VALUES (940, 60, 'EL', 'Elias Pina');
INSERT INTO `zone` VALUES (941, 60, 'SY', 'El Seybo');
INSERT INTO `zone` VALUES (942, 60, 'ET', 'Espaillat');
INSERT INTO `zone` VALUES (943, 60, 'HM', 'Hato Mayor');
INSERT INTO `zone` VALUES (944, 60, 'IN', 'Independencia');
INSERT INTO `zone` VALUES (945, 60, 'AL', 'La Altagracia');
INSERT INTO `zone` VALUES (946, 60, 'RO', 'La Romana');
INSERT INTO `zone` VALUES (947, 60, 'VE', 'La Vega');
INSERT INTO `zone` VALUES (948, 60, 'MT', 'Maria Trinidad Sanchez');
INSERT INTO `zone` VALUES (949, 60, 'MN', 'Monsenor Nouel');
INSERT INTO `zone` VALUES (950, 60, 'MC', 'Monte Cristi');
INSERT INTO `zone` VALUES (951, 60, 'MP', 'Monte Plata');
INSERT INTO `zone` VALUES (952, 60, 'PD', 'Pedernales');
INSERT INTO `zone` VALUES (953, 60, 'PR', 'Peravia (Bani)');
INSERT INTO `zone` VALUES (954, 60, 'PP', 'Puerto Plata');
INSERT INTO `zone` VALUES (955, 60, 'SL', 'Salcedo');
INSERT INTO `zone` VALUES (956, 60, 'SM', 'Samana');
INSERT INTO `zone` VALUES (957, 60, 'SH', 'Sanchez Ramirez');
INSERT INTO `zone` VALUES (958, 60, 'SC', 'San Cristobal');
INSERT INTO `zone` VALUES (959, 60, 'JO', 'San Jose de Ocoa');
INSERT INTO `zone` VALUES (960, 60, 'SJ', 'San Juan');
INSERT INTO `zone` VALUES (961, 60, 'PM', 'San Pedro de Macoris');
INSERT INTO `zone` VALUES (962, 60, 'SA', 'Santiago');
INSERT INTO `zone` VALUES (963, 60, 'ST', 'Santiago Rodriguez');
INSERT INTO `zone` VALUES (964, 60, 'SD', 'Santo Domingo');
INSERT INTO `zone` VALUES (965, 60, 'VA', 'Valverde');
INSERT INTO `zone` VALUES (966, 61, 'AL', 'Aileu');
INSERT INTO `zone` VALUES (967, 61, 'AN', 'Ainaro');
INSERT INTO `zone` VALUES (968, 61, 'BA', 'Baucau');
INSERT INTO `zone` VALUES (969, 61, 'BO', 'Bobonaro');
INSERT INTO `zone` VALUES (970, 61, 'CO', 'Cova Lima');
INSERT INTO `zone` VALUES (971, 61, 'DI', 'Dili');
INSERT INTO `zone` VALUES (972, 61, 'ER', 'Ermera');
INSERT INTO `zone` VALUES (973, 61, 'LA', 'Lautem');
INSERT INTO `zone` VALUES (974, 61, 'LI', 'Liquica');
INSERT INTO `zone` VALUES (975, 61, 'MT', 'Manatuto');
INSERT INTO `zone` VALUES (976, 61, 'MF', 'Manufahi');
INSERT INTO `zone` VALUES (977, 61, 'OE', 'Oecussi');
INSERT INTO `zone` VALUES (978, 61, 'VI', 'Viqueque');
INSERT INTO `zone` VALUES (979, 62, 'AZU', 'Azuay');
INSERT INTO `zone` VALUES (980, 62, 'BOL', 'Bolivar');
INSERT INTO `zone` VALUES (981, 62, 'CAN', 'CaÃƒÆ’Ã‚Â±ar');
INSERT INTO `zone` VALUES (982, 62, 'CAR', 'Carchi');
INSERT INTO `zone` VALUES (983, 62, 'CHI', 'Chimborazo');
INSERT INTO `zone` VALUES (984, 62, 'COT', 'Cotopaxi');
INSERT INTO `zone` VALUES (985, 62, 'EOR', 'El Oro');
INSERT INTO `zone` VALUES (986, 62, 'ESM', 'Esmeraldas');
INSERT INTO `zone` VALUES (987, 62, 'GPS', 'GalÃƒÆ’Ã‚Â¡pagos');
INSERT INTO `zone` VALUES (988, 62, 'GUA', 'Guayas');
INSERT INTO `zone` VALUES (989, 62, 'IMB', 'Imbabura');
INSERT INTO `zone` VALUES (990, 62, 'LOJ', 'Loja');
INSERT INTO `zone` VALUES (991, 62, 'LRO', 'Los Rios');
INSERT INTO `zone` VALUES (992, 62, 'MAN', 'ManabÃƒÆ’Ã‚Â­');
INSERT INTO `zone` VALUES (993, 62, 'MSA', 'Morona Santiago');
INSERT INTO `zone` VALUES (994, 62, 'NAP', 'Napo');
INSERT INTO `zone` VALUES (995, 62, 'ORE', 'Orellana');
INSERT INTO `zone` VALUES (996, 62, 'PAS', 'Pastaza');
INSERT INTO `zone` VALUES (997, 62, 'PIC', 'Pichincha');
INSERT INTO `zone` VALUES (998, 62, 'SUC', 'SucumbÃƒÆ’Ã‚Â­os');
INSERT INTO `zone` VALUES (999, 62, 'TUN', 'Tungurahua');
INSERT INTO `zone` VALUES (1000, 62, 'ZCH', 'Zamora Chinchipe');
INSERT INTO `zone` VALUES (1001, 63, 'DHY', 'Ad Daqahliyah');
INSERT INTO `zone` VALUES (1002, 63, 'BAM', 'Al Bahr al Ahmar');
INSERT INTO `zone` VALUES (1003, 63, 'BHY', 'Al Buhayrah');
INSERT INTO `zone` VALUES (1004, 63, 'FYM', 'Al Fayyum');
INSERT INTO `zone` VALUES (1005, 63, 'GBY', 'Al Gharbiyah');
INSERT INTO `zone` VALUES (1006, 63, 'IDR', 'Al Iskandariyah');
INSERT INTO `zone` VALUES (1007, 63, 'IML', 'Al Isma''iliyah');
INSERT INTO `zone` VALUES (1008, 63, 'JZH', 'Al Jizah');
INSERT INTO `zone` VALUES (1009, 63, 'MFY', 'Al Minufiyah');
INSERT INTO `zone` VALUES (1010, 63, 'MNY', 'Al Minya');
INSERT INTO `zone` VALUES (1011, 63, 'QHR', 'Al Qahirah');
INSERT INTO `zone` VALUES (1012, 63, 'QLY', 'Al Qalyubiyah');
INSERT INTO `zone` VALUES (1013, 63, 'WJD', 'Al Wadi al Jadid');
INSERT INTO `zone` VALUES (1014, 63, 'SHQ', 'Ash Sharqiyah');
INSERT INTO `zone` VALUES (1015, 63, 'SWY', 'As Suways');
INSERT INTO `zone` VALUES (1016, 63, 'ASW', 'Aswan');
INSERT INTO `zone` VALUES (1017, 63, 'ASY', 'Asyut');
INSERT INTO `zone` VALUES (1018, 63, 'BSW', 'Bani Suwayf');
INSERT INTO `zone` VALUES (1019, 63, 'BSD', 'Bur Sa''id');
INSERT INTO `zone` VALUES (1020, 63, 'DMY', 'Dumyat');
INSERT INTO `zone` VALUES (1021, 63, 'JNS', 'Janub Sina''');
INSERT INTO `zone` VALUES (1022, 63, 'KSH', 'Kafr ash Shaykh');
INSERT INTO `zone` VALUES (1023, 63, 'MAT', 'Matruh');
INSERT INTO `zone` VALUES (1024, 63, 'QIN', 'Qina');
INSERT INTO `zone` VALUES (1025, 63, 'SHS', 'Shamal Sina''');
INSERT INTO `zone` VALUES (1026, 63, 'SUH', 'Suhaj');
INSERT INTO `zone` VALUES (1027, 64, 'AH', 'Ahuachapan');
INSERT INTO `zone` VALUES (1028, 64, 'CA', 'Cabanas');
INSERT INTO `zone` VALUES (1029, 64, 'CH', 'Chalatenango');
INSERT INTO `zone` VALUES (1030, 64, 'CU', 'Cuscatlan');
INSERT INTO `zone` VALUES (1031, 64, 'LB', 'La Libertad');
INSERT INTO `zone` VALUES (1032, 64, 'PZ', 'La Paz');
INSERT INTO `zone` VALUES (1033, 64, 'UN', 'La Union');
INSERT INTO `zone` VALUES (1034, 64, 'MO', 'Morazan');
INSERT INTO `zone` VALUES (1035, 64, 'SM', 'San Miguel');
INSERT INTO `zone` VALUES (1036, 64, 'SS', 'San Salvador');
INSERT INTO `zone` VALUES (1037, 64, 'SV', 'San Vicente');
INSERT INTO `zone` VALUES (1038, 64, 'SA', 'Santa Ana');
INSERT INTO `zone` VALUES (1039, 64, 'SO', 'Sonsonate');
INSERT INTO `zone` VALUES (1040, 64, 'US', 'Usulutan');
INSERT INTO `zone` VALUES (1041, 65, 'AN', 'Provincia Annobon');
INSERT INTO `zone` VALUES (1042, 65, 'BN', 'Provincia Bioko Norte');
INSERT INTO `zone` VALUES (1043, 65, 'BS', 'Provincia Bioko Sur');
INSERT INTO `zone` VALUES (1044, 65, 'CS', 'Provincia Centro Sur');
INSERT INTO `zone` VALUES (1045, 65, 'KN', 'Provincia Kie-Ntem');
INSERT INTO `zone` VALUES (1046, 65, 'LI', 'Provincia Litoral');
INSERT INTO `zone` VALUES (1047, 65, 'WN', 'Provincia Wele-Nzas');
INSERT INTO `zone` VALUES (1048, 66, 'MA', 'Central (Maekel)');
INSERT INTO `zone` VALUES (1049, 66, 'KE', 'Anseba (Keren)');
INSERT INTO `zone` VALUES (1050, 66, 'DK', 'Southern Red Sea (Debub-Keih-Bah');
INSERT INTO `zone` VALUES (1051, 66, 'SK', 'Northern Red Sea (Semien-Keih-Ba');
INSERT INTO `zone` VALUES (1052, 66, 'DE', 'Southern (Debub)');
INSERT INTO `zone` VALUES (1053, 66, 'BR', 'Gash-Barka (Barentu)');
INSERT INTO `zone` VALUES (1054, 67, 'HA', 'Harjumaa (Tallinn)');
INSERT INTO `zone` VALUES (1055, 67, 'HI', 'Hiiumaa (Kardla)');
INSERT INTO `zone` VALUES (1056, 67, 'IV', 'Ida-Virumaa (Johvi)');
INSERT INTO `zone` VALUES (1057, 67, 'JA', 'Jarvamaa (Paide)');
INSERT INTO `zone` VALUES (1058, 67, 'JO', 'Jogevamaa (Jogeva)');
INSERT INTO `zone` VALUES (1059, 67, 'LV', 'Laane-Virumaa (Rakvere)');
INSERT INTO `zone` VALUES (1060, 67, 'LA', 'Laanemaa (Haapsalu)');
INSERT INTO `zone` VALUES (1061, 67, 'PA', 'Parnumaa (Parnu)');
INSERT INTO `zone` VALUES (1062, 67, 'PO', 'Polvamaa (Polva)');
INSERT INTO `zone` VALUES (1063, 67, 'RA', 'Raplamaa (Rapla)');
INSERT INTO `zone` VALUES (1064, 67, 'SA', 'Saaremaa (Kuessaare)');
INSERT INTO `zone` VALUES (1065, 67, 'TA', 'Tartumaa (Tartu)');
INSERT INTO `zone` VALUES (1066, 67, 'VA', 'Valgamaa (Valga)');
INSERT INTO `zone` VALUES (1067, 67, 'VI', 'Viljandimaa (Viljandi)');
INSERT INTO `zone` VALUES (1068, 67, 'VO', 'Vorumaa (Voru)');
INSERT INTO `zone` VALUES (1069, 68, 'AF', 'Afar');
INSERT INTO `zone` VALUES (1070, 68, 'AH', 'Amhara');
INSERT INTO `zone` VALUES (1071, 68, 'BG', 'Benishangul-Gumaz');
INSERT INTO `zone` VALUES (1072, 68, 'GB', 'Gambela');
INSERT INTO `zone` VALUES (1073, 68, 'HR', 'Hariai');
INSERT INTO `zone` VALUES (1074, 68, 'OR', 'Oromia');
INSERT INTO `zone` VALUES (1075, 68, 'SM', 'Somali');
INSERT INTO `zone` VALUES (1076, 68, 'SN', 'Southern Nations - Nationalities');
INSERT INTO `zone` VALUES (1077, 68, 'TG', 'Tigray');
INSERT INTO `zone` VALUES (1078, 68, 'AA', 'Addis Ababa');
INSERT INTO `zone` VALUES (1079, 68, 'DD', 'Dire Dawa');
INSERT INTO `zone` VALUES (1080, 71, 'C', 'Central Division');
INSERT INTO `zone` VALUES (1081, 71, 'N', 'Northern Division');
INSERT INTO `zone` VALUES (1082, 71, 'E', 'Eastern Division');
INSERT INTO `zone` VALUES (1083, 71, 'W', 'Western Division');
INSERT INTO `zone` VALUES (1084, 71, 'R', 'Rotuma');
INSERT INTO `zone` VALUES (1085, 72, 'AL', 'Ahvenanmaan Laani');
INSERT INTO `zone` VALUES (1086, 72, 'ES', 'Etela-Suomen Laani');
INSERT INTO `zone` VALUES (1087, 72, 'IS', 'Ita-Suomen Laani');
INSERT INTO `zone` VALUES (1088, 72, 'LS', 'Lansi-Suomen Laani');
INSERT INTO `zone` VALUES (1089, 72, 'LA', 'Lapin Lanani');
INSERT INTO `zone` VALUES (1090, 72, 'OU', 'Oulun Laani');
INSERT INTO `zone` VALUES (1091, 73, 'AL', 'Alsace');
INSERT INTO `zone` VALUES (1092, 73, 'AQ', 'Aquitaine');
INSERT INTO `zone` VALUES (1093, 73, 'AU', 'Auvergne');
INSERT INTO `zone` VALUES (1094, 73, 'BR', 'Brittany');
INSERT INTO `zone` VALUES (1095, 73, 'BU', 'Burgundy');
INSERT INTO `zone` VALUES (1096, 73, 'CE', 'Center Loire Valley');
INSERT INTO `zone` VALUES (1097, 73, 'CH', 'Champagne');
INSERT INTO `zone` VALUES (1098, 73, 'CO', 'Corse');
INSERT INTO `zone` VALUES (1099, 73, 'FR', 'France Comte');
INSERT INTO `zone` VALUES (1100, 73, 'LA', 'Languedoc Roussillon');
INSERT INTO `zone` VALUES (1101, 73, 'LI', 'Limousin');
INSERT INTO `zone` VALUES (1102, 73, 'LO', 'Lorraine');
INSERT INTO `zone` VALUES (1103, 73, 'MI', 'Midi Pyrenees');
INSERT INTO `zone` VALUES (1104, 73, 'NO', 'Nord Pas de Calais');
INSERT INTO `zone` VALUES (1105, 73, 'NR', 'Normandy');
INSERT INTO `zone` VALUES (1106, 73, 'PA', 'Paris / Ill de France');
INSERT INTO `zone` VALUES (1107, 73, 'PI', 'Picardie');
INSERT INTO `zone` VALUES (1108, 73, 'PO', 'Poitou Charente');
INSERT INTO `zone` VALUES (1109, 73, 'PR', 'Provence');
INSERT INTO `zone` VALUES (1110, 73, 'RH', 'Rhone Alps');
INSERT INTO `zone` VALUES (1111, 73, 'RI', 'Riviera');
INSERT INTO `zone` VALUES (1112, 73, 'WE', 'Western Loire Valley');
INSERT INTO `zone` VALUES (1113, 74, 'Et', 'Etranger');
INSERT INTO `zone` VALUES (1114, 74, '01', 'Ain');
INSERT INTO `zone` VALUES (1115, 74, '02', 'Aisne');
INSERT INTO `zone` VALUES (1116, 74, '03', 'Allier');
INSERT INTO `zone` VALUES (1117, 74, '04', 'Alpes de Haute Provence');
INSERT INTO `zone` VALUES (1118, 74, '05', 'Hautes-Alpes');
INSERT INTO `zone` VALUES (1119, 74, '06', 'Alpes Maritimes');
INSERT INTO `zone` VALUES (1120, 74, '07', 'ArdÃƒÆ’Ã‚Â¨che');
INSERT INTO `zone` VALUES (1121, 74, '08', 'Ardennes');
INSERT INTO `zone` VALUES (1122, 74, '09', 'AriÃƒÆ’Ã‚Â¨ge');
INSERT INTO `zone` VALUES (1123, 74, '10', 'Aube');
INSERT INTO `zone` VALUES (1124, 74, '11', 'Aude');
INSERT INTO `zone` VALUES (1125, 74, '12', 'Aveyron');
INSERT INTO `zone` VALUES (1126, 74, '13', 'Bouches du RhÃƒÆ’Ã‚Â´ne');
INSERT INTO `zone` VALUES (1127, 74, '14', 'Calvados');
INSERT INTO `zone` VALUES (1128, 74, '15', 'Cantal');
INSERT INTO `zone` VALUES (1129, 74, '16', 'Charente');
INSERT INTO `zone` VALUES (1130, 74, '17', 'Charente Maritime');
INSERT INTO `zone` VALUES (1131, 74, '18', 'Cher');
INSERT INTO `zone` VALUES (1132, 74, '19', 'CorrÃƒÆ’Ã‚Â¨ze');
INSERT INTO `zone` VALUES (1133, 74, '2A', 'Corse du Sud');
INSERT INTO `zone` VALUES (1134, 74, '2B', 'Haute Corse');
INSERT INTO `zone` VALUES (1135, 74, '21', 'CÃƒÆ’Ã‚Â´te d''or');
INSERT INTO `zone` VALUES (1136, 74, '22', 'CÃƒÆ’Ã‚Â´tes d''Armor');
INSERT INTO `zone` VALUES (1137, 74, '23', 'Creuse');
INSERT INTO `zone` VALUES (1138, 74, '24', 'Dordogne');
INSERT INTO `zone` VALUES (1139, 74, '25', 'Doubs');
INSERT INTO `zone` VALUES (1140, 74, '26', 'DrÃƒÆ’Ã‚Â´me');
INSERT INTO `zone` VALUES (1141, 74, '27', 'Eure');
INSERT INTO `zone` VALUES (1142, 74, '28', 'Eure et Loir');
INSERT INTO `zone` VALUES (1143, 74, '29', 'FinistÃƒÆ’Ã‚Â¨re');
INSERT INTO `zone` VALUES (1144, 74, '30', 'Gard');
INSERT INTO `zone` VALUES (1145, 74, '31', 'Haute Garonne');
INSERT INTO `zone` VALUES (1146, 74, '32', 'Gers');
INSERT INTO `zone` VALUES (1147, 74, '33', 'Gironde');
INSERT INTO `zone` VALUES (1148, 74, '34', 'HÃƒÆ’Ã‚Â©;rault');
INSERT INTO `zone` VALUES (1149, 74, '35', 'Ille et Vilaine');
INSERT INTO `zone` VALUES (1150, 74, '36', 'Indre');
INSERT INTO `zone` VALUES (1151, 74, '37', 'Indre et Loire');
INSERT INTO `zone` VALUES (1152, 74, '38', 'IsÃƒÆ’Ã‚Â©;re');
INSERT INTO `zone` VALUES (1153, 74, '39', 'Jura');
INSERT INTO `zone` VALUES (1154, 74, '40', 'Landes');
INSERT INTO `zone` VALUES (1155, 74, '41', 'Loir et Cher');
INSERT INTO `zone` VALUES (1156, 74, '42', 'Loire');
INSERT INTO `zone` VALUES (1157, 74, '43', 'Haute Loire');
INSERT INTO `zone` VALUES (1158, 74, '44', 'Loire Atlantique');
INSERT INTO `zone` VALUES (1159, 74, '45', 'Loiret');
INSERT INTO `zone` VALUES (1160, 74, '46', 'Lot');
INSERT INTO `zone` VALUES (1161, 74, '47', 'Lot et Garonne');
INSERT INTO `zone` VALUES (1162, 74, '48', 'LozÃƒÆ’Ã‚Â¨re');
INSERT INTO `zone` VALUES (1163, 74, '49', 'Maine et Loire');
INSERT INTO `zone` VALUES (1164, 74, '50', 'Manche');
INSERT INTO `zone` VALUES (1165, 74, '51', 'Marne');
INSERT INTO `zone` VALUES (1166, 74, '52', 'Haute Marne');
INSERT INTO `zone` VALUES (1167, 74, '53', 'Mayenne');
INSERT INTO `zone` VALUES (1168, 74, '54', 'Meurthe et Moselle');
INSERT INTO `zone` VALUES (1169, 74, '55', 'Meuse');
INSERT INTO `zone` VALUES (1170, 74, '56', 'Morbihan');
INSERT INTO `zone` VALUES (1171, 74, '57', 'Moselle');
INSERT INTO `zone` VALUES (1172, 74, '58', 'NiÃƒÆ’Ã‚Â¨vre');
INSERT INTO `zone` VALUES (1173, 74, '59', 'Nord');
INSERT INTO `zone` VALUES (1174, 74, '60', 'Oise');
INSERT INTO `zone` VALUES (1175, 74, '61', 'Orne');
INSERT INTO `zone` VALUES (1176, 74, '62', 'Pas de Calais');
INSERT INTO `zone` VALUES (1177, 74, '63', 'Puy de DÃƒÆ’Ã‚Â´me');
INSERT INTO `zone` VALUES (1178, 74, '64', 'PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es Atlantiqu');
INSERT INTO `zone` VALUES (1179, 74, '65', 'Hautes PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es');
INSERT INTO `zone` VALUES (1180, 74, '66', 'PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es Orientale');
INSERT INTO `zone` VALUES (1181, 74, '67', 'Bas Rhin');
INSERT INTO `zone` VALUES (1182, 74, '68', 'Haut Rhin');
INSERT INTO `zone` VALUES (1183, 74, '69', 'RhÃƒÆ’Ã‚Â´ne');
INSERT INTO `zone` VALUES (1184, 74, '70', 'Haute SaÃƒÆ’Ã‚Â´ne');
INSERT INTO `zone` VALUES (1185, 74, '71', 'SaÃƒÆ’Ã‚Â´ne et Loire');
INSERT INTO `zone` VALUES (1186, 74, '72', 'Sarthe');
INSERT INTO `zone` VALUES (1187, 74, '73', 'Savoie');
INSERT INTO `zone` VALUES (1188, 74, '74', 'Haute Savoie');
INSERT INTO `zone` VALUES (1189, 74, '75', 'Paris');
INSERT INTO `zone` VALUES (1190, 74, '76', 'Seine Maritime');
INSERT INTO `zone` VALUES (1191, 74, '77', 'Seine et Marne');
INSERT INTO `zone` VALUES (1192, 74, '78', 'Yvelines');
INSERT INTO `zone` VALUES (1193, 74, '79', 'Deux SÃƒÆ’Ã‚Â¨vres');
INSERT INTO `zone` VALUES (1194, 74, '80', 'Somme');
INSERT INTO `zone` VALUES (1195, 74, '81', 'Tarn');
INSERT INTO `zone` VALUES (1196, 74, '82', 'Tarn et Garonne');
INSERT INTO `zone` VALUES (1197, 74, '83', 'Var');
INSERT INTO `zone` VALUES (1198, 74, '84', 'Vaucluse');
INSERT INTO `zone` VALUES (1199, 74, '85', 'VendÃƒÆ’Ã‚Â©e');
INSERT INTO `zone` VALUES (1200, 74, '86', 'Vienne');
INSERT INTO `zone` VALUES (1201, 74, '87', 'Haute Vienne');
INSERT INTO `zone` VALUES (1202, 74, '88', 'Vosges');
INSERT INTO `zone` VALUES (1203, 74, '89', 'Yonne');
INSERT INTO `zone` VALUES (1204, 74, '90', 'Territoire de Belfort');
INSERT INTO `zone` VALUES (1205, 74, '91', 'Essonne');
INSERT INTO `zone` VALUES (1206, 74, '92', 'Hauts de Seine');
INSERT INTO `zone` VALUES (1207, 74, '93', 'Seine St-Denis');
INSERT INTO `zone` VALUES (1208, 74, '94', 'Val de Marne');
INSERT INTO `zone` VALUES (1209, 74, '95', 'Val d''Oise');
INSERT INTO `zone` VALUES (1210, 76, 'M', 'Archipel des Marquises');
INSERT INTO `zone` VALUES (1211, 76, 'T', 'Archipel des Tuamotu');
INSERT INTO `zone` VALUES (1212, 76, 'I', 'Archipel des Tubuai');
INSERT INTO `zone` VALUES (1213, 76, 'V', 'Iles du Vent');
INSERT INTO `zone` VALUES (1214, 76, 'S', 'Iles Sous-le-Vent');
INSERT INTO `zone` VALUES (1215, 77, 'C', 'Iles Crozet');
INSERT INTO `zone` VALUES (1216, 77, 'K', 'Iles Kerguelen');
INSERT INTO `zone` VALUES (1217, 77, 'A', 'Ile Amsterdam');
INSERT INTO `zone` VALUES (1218, 77, 'P', 'Ile Saint-Paul');
INSERT INTO `zone` VALUES (1219, 77, 'D', 'Adelie Land');
INSERT INTO `zone` VALUES (1220, 78, 'ES', 'Estuaire');
INSERT INTO `zone` VALUES (1221, 78, 'HO', 'Haut-Ogooue');
INSERT INTO `zone` VALUES (1222, 78, 'MO', 'Moyen-Ogooue');
INSERT INTO `zone` VALUES (1223, 78, 'NG', 'Ngounie');
INSERT INTO `zone` VALUES (1224, 78, 'NY', 'Nyanga');
INSERT INTO `zone` VALUES (1225, 78, 'OI', 'Ogooue-Ivindo');
INSERT INTO `zone` VALUES (1226, 78, 'OL', 'Ogooue-Lolo');
INSERT INTO `zone` VALUES (1227, 78, 'OM', 'Ogooue-Maritime');
INSERT INTO `zone` VALUES (1228, 78, 'WN', 'Woleu-Ntem');
INSERT INTO `zone` VALUES (1229, 79, 'BJ', 'Banjul');
INSERT INTO `zone` VALUES (1230, 79, 'BS', 'Basse');
INSERT INTO `zone` VALUES (1231, 79, 'BR', 'Brikama');
INSERT INTO `zone` VALUES (1232, 79, 'JA', 'Janjangbure');
INSERT INTO `zone` VALUES (1233, 79, 'KA', 'Kanifeng');
INSERT INTO `zone` VALUES (1234, 79, 'KE', 'Kerewan');
INSERT INTO `zone` VALUES (1235, 79, 'KU', 'Kuntaur');
INSERT INTO `zone` VALUES (1236, 79, 'MA', 'Mansakonko');
INSERT INTO `zone` VALUES (1237, 79, 'LR', 'Lower River');
INSERT INTO `zone` VALUES (1238, 79, 'CR', 'Central River');
INSERT INTO `zone` VALUES (1239, 79, 'NB', 'North Bank');
INSERT INTO `zone` VALUES (1240, 79, 'UR', 'Upper River');
INSERT INTO `zone` VALUES (1241, 79, 'WE', 'Western');
INSERT INTO `zone` VALUES (1242, 80, 'AB', 'Abkhazia');
INSERT INTO `zone` VALUES (1243, 80, 'AJ', 'Ajaria');
INSERT INTO `zone` VALUES (1244, 80, 'TB', 'Tbilisi');
INSERT INTO `zone` VALUES (1245, 80, 'GU', 'Guria');
INSERT INTO `zone` VALUES (1246, 80, 'IM', 'Imereti');
INSERT INTO `zone` VALUES (1247, 80, 'KA', 'Kakheti');
INSERT INTO `zone` VALUES (1248, 80, 'KK', 'Kvemo Kartli');
INSERT INTO `zone` VALUES (1249, 80, 'MM', 'Mtskheta-Mtianeti');
INSERT INTO `zone` VALUES (1250, 80, 'RL', 'Racha Lechkhumi and Kvemo Svanet');
INSERT INTO `zone` VALUES (1251, 80, 'SZ', 'Samegrelo-Zemo Svaneti');
INSERT INTO `zone` VALUES (1252, 80, 'SJ', 'Samtskhe-Javakheti');
INSERT INTO `zone` VALUES (1253, 80, 'SK', 'Shida Kartli');
INSERT INTO `zone` VALUES (1254, 81, 'BAW', 'Baden-WÃƒÆ’Ã‚Â¼rttemberg');
INSERT INTO `zone` VALUES (1255, 81, 'BAY', 'Bayern');
INSERT INTO `zone` VALUES (1256, 81, 'BER', 'Berlin');
INSERT INTO `zone` VALUES (1257, 81, 'BRG', 'Brandenburg');
INSERT INTO `zone` VALUES (1258, 81, 'BRE', 'Bremen');
INSERT INTO `zone` VALUES (1259, 81, 'HAM', 'Hamburg');
INSERT INTO `zone` VALUES (1260, 81, 'HES', 'Hessen');
INSERT INTO `zone` VALUES (1261, 81, 'MEC', 'Mecklenburg-Vorpommern');
INSERT INTO `zone` VALUES (1262, 81, 'NDS', 'Niedersachsen');
INSERT INTO `zone` VALUES (1263, 81, 'NRW', 'Nordrhein-Westfalen');
INSERT INTO `zone` VALUES (1264, 81, 'RHE', 'Rheinland-Pfalz');
INSERT INTO `zone` VALUES (1265, 81, 'SAR', 'Saarland');
INSERT INTO `zone` VALUES (1266, 81, 'SAS', 'Sachsen');
INSERT INTO `zone` VALUES (1267, 81, 'SAC', 'Sachsen-Anhalt');
INSERT INTO `zone` VALUES (1268, 81, 'SCN', 'Schleswig-Holstein');
INSERT INTO `zone` VALUES (1269, 81, 'THE', 'ThÃƒÆ’Ã‚Â¼ringen');
INSERT INTO `zone` VALUES (1270, 82, 'AS', 'Ashanti Region');
INSERT INTO `zone` VALUES (1271, 82, 'BA', 'Brong-Ahafo Region');
INSERT INTO `zone` VALUES (1272, 82, 'CE', 'Central Region');
INSERT INTO `zone` VALUES (1273, 82, 'EA', 'Eastern Region');
INSERT INTO `zone` VALUES (1274, 82, 'GA', 'Greater Accra Region');
INSERT INTO `zone` VALUES (1275, 82, 'NO', 'Northern Region');
INSERT INTO `zone` VALUES (1276, 82, 'UE', 'Upper East Region');
INSERT INTO `zone` VALUES (1277, 82, 'UW', 'Upper West Region');
INSERT INTO `zone` VALUES (1278, 82, 'VO', 'Volta Region');
INSERT INTO `zone` VALUES (1279, 82, 'WE', 'Western Region');
INSERT INTO `zone` VALUES (1280, 84, 'AT', 'Attica');
INSERT INTO `zone` VALUES (1281, 84, 'CN', 'Central Greece');
INSERT INTO `zone` VALUES (1282, 84, 'CM', 'Central Macedonia');
INSERT INTO `zone` VALUES (1283, 84, 'CR', 'Crete');
INSERT INTO `zone` VALUES (1284, 84, 'EM', 'East Macedonia and Thrace');
INSERT INTO `zone` VALUES (1285, 84, 'EP', 'Epirus');
INSERT INTO `zone` VALUES (1286, 84, 'II', 'Ionian Islands');
INSERT INTO `zone` VALUES (1287, 84, 'NA', 'North Aegean');
INSERT INTO `zone` VALUES (1288, 84, 'PP', 'Peloponnesos');
INSERT INTO `zone` VALUES (1289, 84, 'SA', 'South Aegean');
INSERT INTO `zone` VALUES (1290, 84, 'TH', 'Thessaly');
INSERT INTO `zone` VALUES (1291, 84, 'WG', 'West Greece');
INSERT INTO `zone` VALUES (1292, 84, 'WM', 'West Macedonia');
INSERT INTO `zone` VALUES (1293, 85, 'A', 'Avannaa');
INSERT INTO `zone` VALUES (1294, 85, 'T', 'Tunu');
INSERT INTO `zone` VALUES (1295, 85, 'K', 'Kitaa');
INSERT INTO `zone` VALUES (1296, 86, 'A', 'Saint Andrew');
INSERT INTO `zone` VALUES (1297, 86, 'D', 'Saint David');
INSERT INTO `zone` VALUES (1298, 86, 'G', 'Saint George');
INSERT INTO `zone` VALUES (1299, 86, 'J', 'Saint John');
INSERT INTO `zone` VALUES (1300, 86, 'M', 'Saint Mark');
INSERT INTO `zone` VALUES (1301, 86, 'P', 'Saint Patrick');
INSERT INTO `zone` VALUES (1302, 86, 'C', 'Carriacou');
INSERT INTO `zone` VALUES (1303, 86, 'Q', 'Petit Martinique');
INSERT INTO `zone` VALUES (1304, 89, 'AV', 'Alta Verapaz');
INSERT INTO `zone` VALUES (1305, 89, 'BV', 'Baja Verapaz');
INSERT INTO `zone` VALUES (1306, 89, 'CM', 'Chimaltenango');
INSERT INTO `zone` VALUES (1307, 89, 'CQ', 'Chiquimula');
INSERT INTO `zone` VALUES (1308, 89, 'PE', 'El Peten');
INSERT INTO `zone` VALUES (1309, 89, 'PR', 'El Progreso');
INSERT INTO `zone` VALUES (1310, 89, 'QC', 'El Quiche');
INSERT INTO `zone` VALUES (1311, 89, 'ES', 'Escuintla');
INSERT INTO `zone` VALUES (1312, 89, 'GU', 'Guatemala');
INSERT INTO `zone` VALUES (1313, 89, 'HU', 'Huehuetenango');
INSERT INTO `zone` VALUES (1314, 89, 'IZ', 'Izabal');
INSERT INTO `zone` VALUES (1315, 89, 'JA', 'Jalapa');
INSERT INTO `zone` VALUES (1316, 89, 'JU', 'Jutiapa');
INSERT INTO `zone` VALUES (1317, 89, 'QZ', 'Quetzaltenango');
INSERT INTO `zone` VALUES (1318, 89, 'RE', 'Retalhuleu');
INSERT INTO `zone` VALUES (1319, 89, 'ST', 'Sacatepequez');
INSERT INTO `zone` VALUES (1320, 89, 'SM', 'San Marcos');
INSERT INTO `zone` VALUES (1321, 89, 'SR', 'Santa Rosa');
INSERT INTO `zone` VALUES (1322, 89, 'SO', 'Solola');
INSERT INTO `zone` VALUES (1323, 89, 'SU', 'Suchitepequez');
INSERT INTO `zone` VALUES (1324, 89, 'TO', 'Totonicapan');
INSERT INTO `zone` VALUES (1325, 89, 'ZA', 'Zacapa');
INSERT INTO `zone` VALUES (1326, 90, 'CNK', 'Conakry');
INSERT INTO `zone` VALUES (1327, 90, 'BYL', 'Beyla');
INSERT INTO `zone` VALUES (1328, 90, 'BFA', 'Boffa');
INSERT INTO `zone` VALUES (1329, 90, 'BOK', 'Boke');
INSERT INTO `zone` VALUES (1330, 90, 'COY', 'Coyah');
INSERT INTO `zone` VALUES (1331, 90, 'DBL', 'Dabola');
INSERT INTO `zone` VALUES (1332, 90, 'DLB', 'Dalaba');
INSERT INTO `zone` VALUES (1333, 90, 'DGR', 'Dinguiraye');
INSERT INTO `zone` VALUES (1334, 90, 'DBR', 'Dubreka');
INSERT INTO `zone` VALUES (1335, 90, 'FRN', 'Faranah');
INSERT INTO `zone` VALUES (1336, 90, 'FRC', 'Forecariah');
INSERT INTO `zone` VALUES (1337, 90, 'FRI', 'Fria');
INSERT INTO `zone` VALUES (1338, 90, 'GAO', 'Gaoual');
INSERT INTO `zone` VALUES (1339, 90, 'GCD', 'Gueckedou');
INSERT INTO `zone` VALUES (1340, 90, 'KNK', 'Kankan');
INSERT INTO `zone` VALUES (1341, 90, 'KRN', 'Kerouane');
INSERT INTO `zone` VALUES (1342, 90, 'KND', 'Kindia');
INSERT INTO `zone` VALUES (1343, 90, 'KSD', 'Kissidougou');
INSERT INTO `zone` VALUES (1344, 90, 'KBA', 'Koubia');
INSERT INTO `zone` VALUES (1345, 90, 'KDA', 'Koundara');
INSERT INTO `zone` VALUES (1346, 90, 'KRA', 'Kouroussa');
INSERT INTO `zone` VALUES (1347, 90, 'LAB', 'Labe');
INSERT INTO `zone` VALUES (1348, 90, 'LLM', 'Lelouma');
INSERT INTO `zone` VALUES (1349, 90, 'LOL', 'Lola');
INSERT INTO `zone` VALUES (1350, 90, 'MCT', 'Macenta');
INSERT INTO `zone` VALUES (1351, 90, 'MAL', 'Mali');
INSERT INTO `zone` VALUES (1352, 90, 'MAM', 'Mamou');
INSERT INTO `zone` VALUES (1353, 90, 'MAN', 'Mandiana');
INSERT INTO `zone` VALUES (1354, 90, 'NZR', 'Nzerekore');
INSERT INTO `zone` VALUES (1355, 90, 'PIT', 'Pita');
INSERT INTO `zone` VALUES (1356, 90, 'SIG', 'Siguiri');
INSERT INTO `zone` VALUES (1357, 90, 'TLM', 'Telimele');
INSERT INTO `zone` VALUES (1358, 90, 'TOG', 'Tougue');
INSERT INTO `zone` VALUES (1359, 90, 'YOM', 'Yomou');
INSERT INTO `zone` VALUES (1360, 91, 'BF', 'Bafata Region');
INSERT INTO `zone` VALUES (1361, 91, 'BB', 'Biombo Region');
INSERT INTO `zone` VALUES (1362, 91, 'BS', 'Bissau Region');
INSERT INTO `zone` VALUES (1363, 91, 'BL', 'Bolama Region');
INSERT INTO `zone` VALUES (1364, 91, 'CA', 'Cacheu Region');
INSERT INTO `zone` VALUES (1365, 91, 'GA', 'Gabu Region');
INSERT INTO `zone` VALUES (1366, 91, 'OI', 'Oio Region');
INSERT INTO `zone` VALUES (1367, 91, 'QU', 'Quinara Region');
INSERT INTO `zone` VALUES (1368, 91, 'TO', 'Tombali Region');
INSERT INTO `zone` VALUES (1369, 92, 'BW', 'Barima-Waini');
INSERT INTO `zone` VALUES (1370, 92, 'CM', 'Cuyuni-Mazaruni');
INSERT INTO `zone` VALUES (1371, 92, 'DM', 'Demerara-Mahaica');
INSERT INTO `zone` VALUES (1372, 92, 'EC', 'East Berbice-Corentyne');
INSERT INTO `zone` VALUES (1373, 92, 'EW', 'Essequibo Islands-West Demerara');
INSERT INTO `zone` VALUES (1374, 92, 'MB', 'Mahaica-Berbice');
INSERT INTO `zone` VALUES (1375, 92, 'PM', 'Pomeroon-Supenaam');
INSERT INTO `zone` VALUES (1376, 92, 'PI', 'Potaro-Siparuni');
INSERT INTO `zone` VALUES (1377, 92, 'UD', 'Upper Demerara-Berbice');
INSERT INTO `zone` VALUES (1378, 92, 'UT', 'Upper Takutu-Upper Essequibo');
INSERT INTO `zone` VALUES (1379, 93, 'AR', 'Artibonite');
INSERT INTO `zone` VALUES (1380, 93, 'CE', 'Centre');
INSERT INTO `zone` VALUES (1381, 93, 'GA', 'Grand''Anse');
INSERT INTO `zone` VALUES (1382, 93, 'ND', 'Nord');
INSERT INTO `zone` VALUES (1383, 93, 'NE', 'Nord-Est');
INSERT INTO `zone` VALUES (1384, 93, 'NO', 'Nord-Ouest');
INSERT INTO `zone` VALUES (1385, 93, 'OU', 'Ouest');
INSERT INTO `zone` VALUES (1386, 93, 'SD', 'Sud');
INSERT INTO `zone` VALUES (1387, 93, 'SE', 'Sud-Est');
INSERT INTO `zone` VALUES (1388, 94, 'F', 'Flat Island');
INSERT INTO `zone` VALUES (1389, 94, 'M', 'McDonald Island');
INSERT INTO `zone` VALUES (1390, 94, 'S', 'Shag Island');
INSERT INTO `zone` VALUES (1391, 94, 'H', 'Heard Island');
INSERT INTO `zone` VALUES (1392, 95, 'AT', 'Atlantida');
INSERT INTO `zone` VALUES (1393, 95, 'CH', 'Choluteca');
INSERT INTO `zone` VALUES (1394, 95, 'CL', 'Colon');
INSERT INTO `zone` VALUES (1395, 95, 'CM', 'Comayagua');
INSERT INTO `zone` VALUES (1396, 95, 'CP', 'Copan');
INSERT INTO `zone` VALUES (1397, 95, 'CR', 'Cortes');
INSERT INTO `zone` VALUES (1398, 95, 'PA', 'El Paraiso');
INSERT INTO `zone` VALUES (1399, 95, 'FM', 'Francisco Morazan');
INSERT INTO `zone` VALUES (1400, 95, 'GD', 'Gracias a Dios');
INSERT INTO `zone` VALUES (1401, 95, 'IN', 'Intibuca');
INSERT INTO `zone` VALUES (1402, 95, 'IB', 'Islas de la Bahia (Bay Islands)');
INSERT INTO `zone` VALUES (1403, 95, 'PZ', 'La Paz');
INSERT INTO `zone` VALUES (1404, 95, 'LE', 'Lempira');
INSERT INTO `zone` VALUES (1405, 95, 'OC', 'Ocotepeque');
INSERT INTO `zone` VALUES (1406, 95, 'OL', 'Olancho');
INSERT INTO `zone` VALUES (1407, 95, 'SB', 'Santa Barbara');
INSERT INTO `zone` VALUES (1408, 95, 'VA', 'Valle');
INSERT INTO `zone` VALUES (1409, 95, 'YO', 'Yoro');
INSERT INTO `zone` VALUES (1410, 96, 'HCW', 'Central and Western Hong Kong Is');
INSERT INTO `zone` VALUES (1411, 96, 'HEA', 'Eastern Hong Kong Island');
INSERT INTO `zone` VALUES (1412, 96, 'HSO', 'Southern Hong Kong Island');
INSERT INTO `zone` VALUES (1413, 96, 'HWC', 'Wan Chai Hong Kong Island');
INSERT INTO `zone` VALUES (1414, 96, 'KKC', 'Kowloon City Kowloon');
INSERT INTO `zone` VALUES (1415, 96, 'KKT', 'Kwun Tong Kowloon');
INSERT INTO `zone` VALUES (1416, 96, 'KSS', 'Sham Shui Po Kowloon');
INSERT INTO `zone` VALUES (1417, 96, 'KWT', 'Wong Tai Sin Kowloon');
INSERT INTO `zone` VALUES (1418, 96, 'KYT', 'Yau Tsim Mong Kowloon');
INSERT INTO `zone` VALUES (1419, 96, 'NIS', 'Islands New Territories');
INSERT INTO `zone` VALUES (1420, 96, 'NKT', 'Kwai Tsing New Territories');
INSERT INTO `zone` VALUES (1421, 96, 'NNO', 'North New Territories');
INSERT INTO `zone` VALUES (1422, 96, 'NSK', 'Sai Kung New Territories');
INSERT INTO `zone` VALUES (1423, 96, 'NST', 'Sha Tin New Territories');
INSERT INTO `zone` VALUES (1424, 96, 'NTP', 'Tai Po New Territories');
INSERT INTO `zone` VALUES (1425, 96, 'NTW', 'Tsuen Wan New Territories');
INSERT INTO `zone` VALUES (1426, 96, 'NTM', 'Tuen Mun New Territories');
INSERT INTO `zone` VALUES (1427, 96, 'NYL', 'Yuen Long New Territories');
INSERT INTO `zone` VALUES (1428, 97, 'BK', 'Bacs-Kiskun');
INSERT INTO `zone` VALUES (1429, 97, 'BA', 'Baranya');
INSERT INTO `zone` VALUES (1430, 97, 'BE', 'Bekes');
INSERT INTO `zone` VALUES (1431, 97, 'BS', 'Bekescsaba');
INSERT INTO `zone` VALUES (1432, 97, 'BZ', 'Borsod-Abauj-Zemplen');
INSERT INTO `zone` VALUES (1433, 97, 'BU', 'Budapest');
INSERT INTO `zone` VALUES (1434, 97, 'CS', 'Csongrad');
INSERT INTO `zone` VALUES (1435, 97, 'DE', 'Debrecen');
INSERT INTO `zone` VALUES (1436, 97, 'DU', 'Dunaujvaros');
INSERT INTO `zone` VALUES (1437, 97, 'EG', 'Eger');
INSERT INTO `zone` VALUES (1438, 97, 'FE', 'Fejer');
INSERT INTO `zone` VALUES (1439, 97, 'GY', 'Gyor');
INSERT INTO `zone` VALUES (1440, 97, 'GM', 'Gyor-Moson-Sopron');
INSERT INTO `zone` VALUES (1441, 97, 'HB', 'Hajdu-Bihar');
INSERT INTO `zone` VALUES (1442, 97, 'HE', 'Heves');
INSERT INTO `zone` VALUES (1443, 97, 'HO', 'Hodmezovasarhely');
INSERT INTO `zone` VALUES (1444, 97, 'JN', 'Jasz-Nagykun-Szolnok');
INSERT INTO `zone` VALUES (1445, 97, 'KA', 'Kaposvar');
INSERT INTO `zone` VALUES (1446, 97, 'KE', 'Kecskemet');
INSERT INTO `zone` VALUES (1447, 97, 'KO', 'Komarom-Esztergom');
INSERT INTO `zone` VALUES (1448, 97, 'MI', 'Miskolc');
INSERT INTO `zone` VALUES (1449, 97, 'NA', 'Nagykanizsa');
INSERT INTO `zone` VALUES (1450, 97, 'NO', 'Nograd');
INSERT INTO `zone` VALUES (1451, 97, 'NY', 'Nyiregyhaza');
INSERT INTO `zone` VALUES (1452, 97, 'PE', 'Pecs');
INSERT INTO `zone` VALUES (1453, 97, 'PS', 'Pest');
INSERT INTO `zone` VALUES (1454, 97, 'SO', 'Somogy');
INSERT INTO `zone` VALUES (1455, 97, 'SP', 'Sopron');
INSERT INTO `zone` VALUES (1456, 97, 'SS', 'Szabolcs-Szatmar-Bereg');
INSERT INTO `zone` VALUES (1457, 97, 'SZ', 'Szeged');
INSERT INTO `zone` VALUES (1458, 97, 'SE', 'Szekesfehervar');
INSERT INTO `zone` VALUES (1459, 97, 'SL', 'Szolnok');
INSERT INTO `zone` VALUES (1460, 97, 'SM', 'Szombathely');
INSERT INTO `zone` VALUES (1461, 97, 'TA', 'Tatabanya');
INSERT INTO `zone` VALUES (1462, 97, 'TO', 'Tolna');
INSERT INTO `zone` VALUES (1463, 97, 'VA', 'Vas');
INSERT INTO `zone` VALUES (1464, 97, 'VE', 'Veszprem');
INSERT INTO `zone` VALUES (1465, 97, 'ZA', 'Zala');
INSERT INTO `zone` VALUES (1466, 97, 'ZZ', 'Zalaegerszeg');
INSERT INTO `zone` VALUES (1467, 98, 'AL', 'Austurland');
INSERT INTO `zone` VALUES (1468, 98, 'HF', 'Hofuoborgarsvaeoi');
INSERT INTO `zone` VALUES (1469, 98, 'NE', 'Norourland eystra');
INSERT INTO `zone` VALUES (1470, 98, 'NV', 'Norourland vestra');
INSERT INTO `zone` VALUES (1471, 98, 'SL', 'Suourland');
INSERT INTO `zone` VALUES (1472, 98, 'SN', 'Suournes');
INSERT INTO `zone` VALUES (1473, 98, 'VF', 'Vestfiroir');
INSERT INTO `zone` VALUES (1474, 98, 'VL', 'Vesturland');
INSERT INTO `zone` VALUES (1475, 99, 'AN', 'Andaman and Nicobar Islands');
INSERT INTO `zone` VALUES (1476, 99, 'AP', 'Andhra Pradesh');
INSERT INTO `zone` VALUES (1477, 99, 'AR', 'Arunachal Pradesh');
INSERT INTO `zone` VALUES (1478, 99, 'AS', 'Assam');
INSERT INTO `zone` VALUES (1479, 99, 'BI', 'Bihar');
INSERT INTO `zone` VALUES (1480, 99, 'CH', 'Chandigarh');
INSERT INTO `zone` VALUES (1481, 99, 'DA', 'Dadra and Nagar Haveli');
INSERT INTO `zone` VALUES (1482, 99, 'DM', 'Daman and Diu');
INSERT INTO `zone` VALUES (1483, 99, 'DE', 'Delhi');
INSERT INTO `zone` VALUES (1484, 99, 'GO', 'Goa');
INSERT INTO `zone` VALUES (1485, 99, 'GU', 'Gujarat');
INSERT INTO `zone` VALUES (1486, 99, 'HA', 'Haryana');
INSERT INTO `zone` VALUES (1487, 99, 'HP', 'Himachal Pradesh');
INSERT INTO `zone` VALUES (1488, 99, 'JA', 'Jammu and Kashmir');
INSERT INTO `zone` VALUES (1489, 99, 'KA', 'Karnataka');
INSERT INTO `zone` VALUES (1490, 99, 'KE', 'Kerala');
INSERT INTO `zone` VALUES (1491, 99, 'LI', 'Lakshadweep Islands');
INSERT INTO `zone` VALUES (1492, 99, 'MP', 'Madhya Pradesh');
INSERT INTO `zone` VALUES (1493, 99, 'MA', 'Maharashtra');
INSERT INTO `zone` VALUES (1494, 99, 'MN', 'Manipur');
INSERT INTO `zone` VALUES (1495, 99, 'ME', 'Meghalaya');
INSERT INTO `zone` VALUES (1496, 99, 'MI', 'Mizoram');
INSERT INTO `zone` VALUES (1497, 99, 'NA', 'Nagaland');
INSERT INTO `zone` VALUES (1498, 99, 'OR', 'Orissa');
INSERT INTO `zone` VALUES (1499, 99, 'PO', 'Pondicherry');
INSERT INTO `zone` VALUES (1500, 99, 'PU', 'Punjab');
INSERT INTO `zone` VALUES (1501, 99, 'RA', 'Rajasthan');
INSERT INTO `zone` VALUES (1502, 99, 'SI', 'Sikkim');
INSERT INTO `zone` VALUES (1503, 99, 'TN', 'Tamil Nadu');
INSERT INTO `zone` VALUES (1504, 99, 'TR', 'Tripura');
INSERT INTO `zone` VALUES (1505, 99, 'UP', 'Uttar Pradesh');
INSERT INTO `zone` VALUES (1506, 99, 'WB', 'West Bengal');
INSERT INTO `zone` VALUES (1507, 100, 'AC', 'Aceh');
INSERT INTO `zone` VALUES (1508, 100, 'BA', 'Bali');
INSERT INTO `zone` VALUES (1509, 100, 'BT', 'Banten');
INSERT INTO `zone` VALUES (1510, 100, 'BE', 'Bengkulu');
INSERT INTO `zone` VALUES (1511, 100, 'BD', 'BoDeTaBek');
INSERT INTO `zone` VALUES (1512, 100, 'GO', 'Gorontalo');
INSERT INTO `zone` VALUES (1513, 100, 'JK', 'Jakarta Raya');
INSERT INTO `zone` VALUES (1514, 100, 'JA', 'Jambi');
INSERT INTO `zone` VALUES (1515, 100, 'JB', 'Jawa Barat');
INSERT INTO `zone` VALUES (1516, 100, 'JT', 'Jawa Tengah');
INSERT INTO `zone` VALUES (1517, 100, 'JI', 'Jawa Timur');
INSERT INTO `zone` VALUES (1518, 100, 'KB', 'Kalimantan Barat');
INSERT INTO `zone` VALUES (1519, 100, 'KS', 'Kalimantan Selatan');
INSERT INTO `zone` VALUES (1520, 100, 'KT', 'Kalimantan Tengah');
INSERT INTO `zone` VALUES (1521, 100, 'KI', 'Kalimantan Timur');
INSERT INTO `zone` VALUES (1522, 100, 'BB', 'Kepulauan Bangka Belitung');
INSERT INTO `zone` VALUES (1523, 100, 'LA', 'Lampung');
INSERT INTO `zone` VALUES (1524, 100, 'MA', 'Maluku');
INSERT INTO `zone` VALUES (1525, 100, 'MU', 'Maluku Utara');
INSERT INTO `zone` VALUES (1526, 100, 'NB', 'Nusa Tenggara Barat');
INSERT INTO `zone` VALUES (1527, 100, 'NT', 'Nusa Tenggara Timur');
INSERT INTO `zone` VALUES (1528, 100, 'PA', 'Papua');
INSERT INTO `zone` VALUES (1529, 100, 'RI', 'Riau');
INSERT INTO `zone` VALUES (1530, 100, 'SN', 'Sulawesi Selatan');
INSERT INTO `zone` VALUES (1531, 100, 'ST', 'Sulawesi Tengah');
INSERT INTO `zone` VALUES (1532, 100, 'SG', 'Sulawesi Tenggara');
INSERT INTO `zone` VALUES (1533, 100, 'SA', 'Sulawesi Utara');
INSERT INTO `zone` VALUES (1534, 100, 'SB', 'Sumatera Barat');
INSERT INTO `zone` VALUES (1535, 100, 'SS', 'Sumatera Selatan');
INSERT INTO `zone` VALUES (1536, 100, 'SU', 'Sumatera Utara');
INSERT INTO `zone` VALUES (1537, 100, 'YO', 'Yogyakarta');
INSERT INTO `zone` VALUES (1538, 101, 'TEH', 'Tehran');
INSERT INTO `zone` VALUES (1539, 101, 'QOM', 'Qom');
INSERT INTO `zone` VALUES (1540, 101, 'MKZ', 'Markazi');
INSERT INTO `zone` VALUES (1541, 101, 'QAZ', 'Qazvin');
INSERT INTO `zone` VALUES (1542, 101, 'GIL', 'Gilan');
INSERT INTO `zone` VALUES (1543, 101, 'ARD', 'Ardabil');
INSERT INTO `zone` VALUES (1544, 101, 'ZAN', 'Zanjan');
INSERT INTO `zone` VALUES (1545, 101, 'EAZ', 'East Azarbaijan');
INSERT INTO `zone` VALUES (1546, 101, 'WEZ', 'West Azarbaijan');
INSERT INTO `zone` VALUES (1547, 101, 'KRD', 'Kurdistan');
INSERT INTO `zone` VALUES (1548, 101, 'HMD', 'Hamadan');
INSERT INTO `zone` VALUES (1549, 101, 'KRM', 'Kermanshah');
INSERT INTO `zone` VALUES (1550, 101, 'ILM', 'Ilam');
INSERT INTO `zone` VALUES (1551, 101, 'LRS', 'Lorestan');
INSERT INTO `zone` VALUES (1552, 101, 'KZT', 'Khuzestan');
INSERT INTO `zone` VALUES (1553, 101, 'CMB', 'Chahar Mahaal and Bakhtiari');
INSERT INTO `zone` VALUES (1554, 101, 'KBA', 'Kohkiluyeh and Buyer Ahmad');
INSERT INTO `zone` VALUES (1555, 101, 'BSH', 'Bushehr');
INSERT INTO `zone` VALUES (1556, 101, 'FAR', 'Fars');
INSERT INTO `zone` VALUES (1557, 101, 'HRM', 'Hormozgan');
INSERT INTO `zone` VALUES (1558, 101, 'SBL', 'Sistan and Baluchistan');
INSERT INTO `zone` VALUES (1559, 101, 'KRB', 'Kerman');
INSERT INTO `zone` VALUES (1560, 101, 'YZD', 'Yazd');
INSERT INTO `zone` VALUES (1561, 101, 'EFH', 'Esfahan');
INSERT INTO `zone` VALUES (1562, 101, 'SMN', 'Semnan');
INSERT INTO `zone` VALUES (1563, 101, 'MZD', 'Mazandaran');
INSERT INTO `zone` VALUES (1564, 101, 'GLS', 'Golestan');
INSERT INTO `zone` VALUES (1565, 101, 'NKH', 'North Khorasan');
INSERT INTO `zone` VALUES (1566, 101, 'RKH', 'Razavi Khorasan');
INSERT INTO `zone` VALUES (1567, 101, 'SKH', 'South Khorasan');
INSERT INTO `zone` VALUES (1568, 102, 'BD', 'Baghdad');
INSERT INTO `zone` VALUES (1569, 102, 'SD', 'Salah ad Din');
INSERT INTO `zone` VALUES (1570, 102, 'DY', 'Diyala');
INSERT INTO `zone` VALUES (1571, 102, 'WS', 'Wasit');
INSERT INTO `zone` VALUES (1572, 102, 'MY', 'Maysan');
INSERT INTO `zone` VALUES (1573, 102, 'BA', 'Al Basrah');
INSERT INTO `zone` VALUES (1574, 102, 'DQ', 'Dhi Qar');
INSERT INTO `zone` VALUES (1575, 102, 'MU', 'Al Muthanna');
INSERT INTO `zone` VALUES (1576, 102, 'QA', 'Al Qadisyah');
INSERT INTO `zone` VALUES (1577, 102, 'BB', 'Babil');
INSERT INTO `zone` VALUES (1578, 102, 'KB', 'Al Karbala');
INSERT INTO `zone` VALUES (1579, 102, 'NJ', 'An Najaf');
INSERT INTO `zone` VALUES (1580, 102, 'AB', 'Al Anbar');
INSERT INTO `zone` VALUES (1581, 102, 'NN', 'Ninawa');
INSERT INTO `zone` VALUES (1582, 102, 'DH', 'Dahuk');
INSERT INTO `zone` VALUES (1583, 102, 'AL', 'Arbil');
INSERT INTO `zone` VALUES (1584, 102, 'TM', 'At Ta''mim');
INSERT INTO `zone` VALUES (1585, 102, 'SL', 'As Sulaymaniyah');
INSERT INTO `zone` VALUES (1586, 103, 'CA', 'Carlow');
INSERT INTO `zone` VALUES (1587, 103, 'CV', 'Cavan');
INSERT INTO `zone` VALUES (1588, 103, 'CL', 'Clare');
INSERT INTO `zone` VALUES (1589, 103, 'CO', 'Cork');
INSERT INTO `zone` VALUES (1590, 103, 'DO', 'Donegal');
INSERT INTO `zone` VALUES (1591, 103, 'DU', 'Dublin');
INSERT INTO `zone` VALUES (1592, 103, 'GA', 'Galway');
INSERT INTO `zone` VALUES (1593, 103, 'KE', 'Kerry');
INSERT INTO `zone` VALUES (1594, 103, 'KI', 'Kildare');
INSERT INTO `zone` VALUES (1595, 103, 'KL', 'Kilkenny');
INSERT INTO `zone` VALUES (1596, 103, 'LA', 'Laois');
INSERT INTO `zone` VALUES (1597, 103, 'LE', 'Leitrim');
INSERT INTO `zone` VALUES (1598, 103, 'LI', 'Limerick');
INSERT INTO `zone` VALUES (1599, 103, 'LO', 'Longford');
INSERT INTO `zone` VALUES (1600, 103, 'LU', 'Louth');
INSERT INTO `zone` VALUES (1601, 103, 'MA', 'Mayo');
INSERT INTO `zone` VALUES (1602, 103, 'ME', 'Meath');
INSERT INTO `zone` VALUES (1603, 103, 'MO', 'Monaghan');
INSERT INTO `zone` VALUES (1604, 103, 'OF', 'Offaly');
INSERT INTO `zone` VALUES (1605, 103, 'RO', 'Roscommon');
INSERT INTO `zone` VALUES (1606, 103, 'SL', 'Sligo');
INSERT INTO `zone` VALUES (1607, 103, 'TI', 'Tipperary');
INSERT INTO `zone` VALUES (1608, 103, 'WA', 'Waterford');
INSERT INTO `zone` VALUES (1609, 103, 'WE', 'Westmeath');
INSERT INTO `zone` VALUES (1610, 103, 'WX', 'Wexford');
INSERT INTO `zone` VALUES (1611, 103, 'WI', 'Wicklow');
INSERT INTO `zone` VALUES (1612, 104, 'BS', 'Be''er Sheva');
INSERT INTO `zone` VALUES (1613, 104, 'BH', 'Bika''at Hayarden');
INSERT INTO `zone` VALUES (1614, 104, 'EA', 'Eilat and Arava');
INSERT INTO `zone` VALUES (1615, 104, 'GA', 'Galil');
INSERT INTO `zone` VALUES (1616, 104, 'HA', 'Haifa');
INSERT INTO `zone` VALUES (1617, 104, 'JM', 'Jehuda Mountains');
INSERT INTO `zone` VALUES (1618, 104, 'JE', 'Jerusalem');
INSERT INTO `zone` VALUES (1619, 104, 'NE', 'Negev');
INSERT INTO `zone` VALUES (1620, 104, 'SE', 'Semaria');
INSERT INTO `zone` VALUES (1621, 104, 'SH', 'Sharon');
INSERT INTO `zone` VALUES (1622, 104, 'TA', 'Tel Aviv (Gosh Dan)');
INSERT INTO `zone` VALUES (1623, 105, 'AB', 'Abruzzo');
INSERT INTO `zone` VALUES (1624, 105, 'BA', 'Basilicata');
INSERT INTO `zone` VALUES (1625, 105, 'CA', 'Calabria');
INSERT INTO `zone` VALUES (1626, 105, 'CP', 'Campania');
INSERT INTO `zone` VALUES (1627, 105, 'ER', 'Emilia Romagna');
INSERT INTO `zone` VALUES (1628, 105, 'FV', 'Friuli-Venezia Giulia');
INSERT INTO `zone` VALUES (1629, 105, 'LA', 'Lazio (Latium & Rome)');
INSERT INTO `zone` VALUES (1630, 105, 'TM', 'Le Marche (The Marches)');
INSERT INTO `zone` VALUES (1631, 105, 'LI', 'Liguria');
INSERT INTO `zone` VALUES (1632, 105, 'LO', 'Lombardia (Lombardy)');
INSERT INTO `zone` VALUES (1633, 105, 'MO', 'Molise');
INSERT INTO `zone` VALUES (1634, 105, 'PI', 'Piemonte (Piedmont)');
INSERT INTO `zone` VALUES (1635, 105, 'AP', 'Puglia (Apulia)');
INSERT INTO `zone` VALUES (1636, 105, 'SA', 'Sardegna (Sardinia)');
INSERT INTO `zone` VALUES (1637, 105, 'SI', 'Sicilia (Sicily)');
INSERT INTO `zone` VALUES (1638, 105, 'TU', 'Toscana (Tuscany)');
INSERT INTO `zone` VALUES (1639, 105, 'TR', 'Trentino Alto Adige');
INSERT INTO `zone` VALUES (1640, 105, 'UM', 'Umbria');
INSERT INTO `zone` VALUES (1641, 105, 'VA', 'Val d''Aosta');
INSERT INTO `zone` VALUES (1642, 105, 'VE', 'Veneto');
INSERT INTO `zone` VALUES (1643, 106, 'CLA', 'Clarendon Parish');
INSERT INTO `zone` VALUES (1644, 106, 'HAN', 'Hanover Parish');
INSERT INTO `zone` VALUES (1645, 106, 'KIN', 'Kingston Parish');
INSERT INTO `zone` VALUES (1646, 106, 'MAN', 'Manchester Parish');
INSERT INTO `zone` VALUES (1647, 106, 'POR', 'Portland Parish');
INSERT INTO `zone` VALUES (1648, 106, 'AND', 'Saint Andrew Parish');
INSERT INTO `zone` VALUES (1649, 106, 'ANN', 'Saint Ann Parish');
INSERT INTO `zone` VALUES (1650, 106, 'CAT', 'Saint Catherine Parish');
INSERT INTO `zone` VALUES (1651, 106, 'ELI', 'Saint Elizabeth Parish');
INSERT INTO `zone` VALUES (1652, 106, 'JAM', 'Saint James Parish');
INSERT INTO `zone` VALUES (1653, 106, 'MAR', 'Saint Mary Parish');
INSERT INTO `zone` VALUES (1654, 106, 'THO', 'Saint Thomas Parish');
INSERT INTO `zone` VALUES (1655, 106, 'TRL', 'Trelawny Parish');
INSERT INTO `zone` VALUES (1656, 106, 'WML', 'Westmoreland Parish');
INSERT INTO `zone` VALUES (1657, 107, 'AI', 'Aichi');
INSERT INTO `zone` VALUES (1658, 107, 'AK', 'Akita');
INSERT INTO `zone` VALUES (1659, 107, 'AO', 'Aomori');
INSERT INTO `zone` VALUES (1660, 107, 'CH', 'Chiba');
INSERT INTO `zone` VALUES (1661, 107, 'EH', 'Ehime');
INSERT INTO `zone` VALUES (1662, 107, 'FK', 'Fukui');
INSERT INTO `zone` VALUES (1663, 107, 'FU', 'Fukuoka');
INSERT INTO `zone` VALUES (1664, 107, 'FS', 'Fukushima');
INSERT INTO `zone` VALUES (1665, 107, 'GI', 'Gifu');
INSERT INTO `zone` VALUES (1666, 107, 'GU', 'Gumma');
INSERT INTO `zone` VALUES (1667, 107, 'HI', 'Hiroshima');
INSERT INTO `zone` VALUES (1668, 107, 'HO', 'Hokkaido');
INSERT INTO `zone` VALUES (1669, 107, 'HY', 'Hyogo');
INSERT INTO `zone` VALUES (1670, 107, 'IB', 'Ibaraki');
INSERT INTO `zone` VALUES (1671, 107, 'IS', 'Ishikawa');
INSERT INTO `zone` VALUES (1672, 107, 'IW', 'Iwate');
INSERT INTO `zone` VALUES (1673, 107, 'KA', 'Kagawa');
INSERT INTO `zone` VALUES (1674, 107, 'KG', 'Kagoshima');
INSERT INTO `zone` VALUES (1675, 107, 'KN', 'Kanagawa');
INSERT INTO `zone` VALUES (1676, 107, 'KO', 'Kochi');
INSERT INTO `zone` VALUES (1677, 107, 'KU', 'Kumamoto');
INSERT INTO `zone` VALUES (1678, 107, 'KY', 'Kyoto');
INSERT INTO `zone` VALUES (1679, 107, 'MI', 'Mie');
INSERT INTO `zone` VALUES (1680, 107, 'MY', 'Miyagi');
INSERT INTO `zone` VALUES (1681, 107, 'MZ', 'Miyazaki');
INSERT INTO `zone` VALUES (1682, 107, 'NA', 'Nagano');
INSERT INTO `zone` VALUES (1683, 107, 'NG', 'Nagasaki');
INSERT INTO `zone` VALUES (1684, 107, 'NR', 'Nara');
INSERT INTO `zone` VALUES (1685, 107, 'NI', 'Niigata');
INSERT INTO `zone` VALUES (1686, 107, 'OI', 'Oita');
INSERT INTO `zone` VALUES (1687, 107, 'OK', 'Okayama');
INSERT INTO `zone` VALUES (1688, 107, 'ON', 'Okinawa');
INSERT INTO `zone` VALUES (1689, 107, 'OS', 'Osaka');
INSERT INTO `zone` VALUES (1690, 107, 'SA', 'Saga');
INSERT INTO `zone` VALUES (1691, 107, 'SI', 'Saitama');
INSERT INTO `zone` VALUES (1692, 107, 'SH', 'Shiga');
INSERT INTO `zone` VALUES (1693, 107, 'SM', 'Shimane');
INSERT INTO `zone` VALUES (1694, 107, 'SZ', 'Shizuoka');
INSERT INTO `zone` VALUES (1695, 107, 'TO', 'Tochigi');
INSERT INTO `zone` VALUES (1696, 107, 'TS', 'Tokushima');
INSERT INTO `zone` VALUES (1697, 107, 'TK', 'Tokyo');
INSERT INTO `zone` VALUES (1698, 107, 'TT', 'Tottori');
INSERT INTO `zone` VALUES (1699, 107, 'TY', 'Toyama');
INSERT INTO `zone` VALUES (1700, 107, 'WA', 'Wakayama');
INSERT INTO `zone` VALUES (1701, 107, 'YA', 'Yamagata');
INSERT INTO `zone` VALUES (1702, 107, 'YM', 'Yamaguchi');
INSERT INTO `zone` VALUES (1703, 107, 'YN', 'Yamanashi');
INSERT INTO `zone` VALUES (1704, 108, 'AM', '''Amman');
INSERT INTO `zone` VALUES (1705, 108, 'AJ', 'Ajlun');
INSERT INTO `zone` VALUES (1706, 108, 'AA', 'Al ''Aqabah');
INSERT INTO `zone` VALUES (1707, 108, 'AB', 'Al Balqa''');
INSERT INTO `zone` VALUES (1708, 108, 'AK', 'Al Karak');
INSERT INTO `zone` VALUES (1709, 108, 'AL', 'Al Mafraq');
INSERT INTO `zone` VALUES (1710, 108, 'AT', 'At Tafilah');
INSERT INTO `zone` VALUES (1711, 108, 'AZ', 'Az Zarqa''');
INSERT INTO `zone` VALUES (1712, 108, 'IR', 'Irbid');
INSERT INTO `zone` VALUES (1713, 108, 'JA', 'Jarash');
INSERT INTO `zone` VALUES (1714, 108, 'MA', 'Ma''an');
INSERT INTO `zone` VALUES (1715, 108, 'MD', 'Madaba');
INSERT INTO `zone` VALUES (1716, 109, 'AL', 'Almaty');
INSERT INTO `zone` VALUES (1717, 109, 'AC', 'Almaty City');
INSERT INTO `zone` VALUES (1718, 109, 'AM', 'Aqmola');
INSERT INTO `zone` VALUES (1719, 109, 'AQ', 'Aqtobe');
INSERT INTO `zone` VALUES (1720, 109, 'AS', 'Astana City');
INSERT INTO `zone` VALUES (1721, 109, 'AT', 'Atyrau');
INSERT INTO `zone` VALUES (1722, 109, 'BA', 'Batys Qazaqstan');
INSERT INTO `zone` VALUES (1723, 109, 'BY', 'Bayqongyr City');
INSERT INTO `zone` VALUES (1724, 109, 'MA', 'Mangghystau');
INSERT INTO `zone` VALUES (1725, 109, 'ON', 'Ongtustik Qazaqstan');
INSERT INTO `zone` VALUES (1726, 109, 'PA', 'Pavlodar');
INSERT INTO `zone` VALUES (1727, 109, 'QA', 'Qaraghandy');
INSERT INTO `zone` VALUES (1728, 109, 'QO', 'Qostanay');
INSERT INTO `zone` VALUES (1729, 109, 'QY', 'Qyzylorda');
INSERT INTO `zone` VALUES (1730, 109, 'SH', 'Shyghys Qazaqstan');
INSERT INTO `zone` VALUES (1731, 109, 'SO', 'Soltustik Qazaqstan');
INSERT INTO `zone` VALUES (1732, 109, 'ZH', 'Zhambyl');
INSERT INTO `zone` VALUES (1733, 110, 'CE', 'Central');
INSERT INTO `zone` VALUES (1734, 110, 'CO', 'Coast');
INSERT INTO `zone` VALUES (1735, 110, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (1736, 110, 'NA', 'Nairobi Area');
INSERT INTO `zone` VALUES (1737, 110, 'NE', 'North Eastern');
INSERT INTO `zone` VALUES (1738, 110, 'NY', 'Nyanza');
INSERT INTO `zone` VALUES (1739, 110, 'RV', 'Rift Valley');
INSERT INTO `zone` VALUES (1740, 110, 'WE', 'Western');
INSERT INTO `zone` VALUES (1741, 111, 'AG', 'Abaiang');
INSERT INTO `zone` VALUES (1742, 111, 'AM', 'Abemama');
INSERT INTO `zone` VALUES (1743, 111, 'AK', 'Aranuka');
INSERT INTO `zone` VALUES (1744, 111, 'AO', 'Arorae');
INSERT INTO `zone` VALUES (1745, 111, 'BA', 'Banaba');
INSERT INTO `zone` VALUES (1746, 111, 'BE', 'Beru');
INSERT INTO `zone` VALUES (1747, 111, 'bT', 'Butaritari');
INSERT INTO `zone` VALUES (1748, 111, 'KA', 'Kanton');
INSERT INTO `zone` VALUES (1749, 111, 'KR', 'Kiritimati');
INSERT INTO `zone` VALUES (1750, 111, 'KU', 'Kuria');
INSERT INTO `zone` VALUES (1751, 111, 'MI', 'Maiana');
INSERT INTO `zone` VALUES (1752, 111, 'MN', 'Makin');
INSERT INTO `zone` VALUES (1753, 111, 'ME', 'Marakei');
INSERT INTO `zone` VALUES (1754, 111, 'NI', 'Nikunau');
INSERT INTO `zone` VALUES (1755, 111, 'NO', 'Nonouti');
INSERT INTO `zone` VALUES (1756, 111, 'ON', 'Onotoa');
INSERT INTO `zone` VALUES (1757, 111, 'TT', 'Tabiteuea');
INSERT INTO `zone` VALUES (1758, 111, 'TR', 'Tabuaeran');
INSERT INTO `zone` VALUES (1759, 111, 'TM', 'Tamana');
INSERT INTO `zone` VALUES (1760, 111, 'TW', 'Tarawa');
INSERT INTO `zone` VALUES (1761, 111, 'TE', 'Teraina');
INSERT INTO `zone` VALUES (1762, 112, 'CHA', 'Chagang-do');
INSERT INTO `zone` VALUES (1763, 112, 'HAB', 'Hamgyong-bukto');
INSERT INTO `zone` VALUES (1764, 112, 'HAN', 'Hamgyong-namdo');
INSERT INTO `zone` VALUES (1765, 112, 'HWB', 'Hwanghae-bukto');
INSERT INTO `zone` VALUES (1766, 112, 'HWN', 'Hwanghae-namdo');
INSERT INTO `zone` VALUES (1767, 112, 'KAN', 'Kangwon-do');
INSERT INTO `zone` VALUES (1768, 112, 'PYB', 'P''yongan-bukto');
INSERT INTO `zone` VALUES (1769, 112, 'PYN', 'P''yongan-namdo');
INSERT INTO `zone` VALUES (1770, 112, 'YAN', 'Ryanggang-do (Yanggang-do)');
INSERT INTO `zone` VALUES (1771, 112, 'NAJ', 'Rason Directly Governed City');
INSERT INTO `zone` VALUES (1772, 112, 'PYO', 'P''yongyang Special City');
INSERT INTO `zone` VALUES (1773, 113, 'CO', 'Ch''ungch''ong-bukto');
INSERT INTO `zone` VALUES (1774, 113, 'CH', 'Ch''ungch''ong-namdo');
INSERT INTO `zone` VALUES (1775, 113, 'CD', 'Cheju-do');
INSERT INTO `zone` VALUES (1776, 113, 'CB', 'Cholla-bukto');
INSERT INTO `zone` VALUES (1777, 113, 'CN', 'Cholla-namdo');
INSERT INTO `zone` VALUES (1778, 113, 'IG', 'Inch''on-gwangyoksi');
INSERT INTO `zone` VALUES (1779, 113, 'KA', 'Kangwon-do');
INSERT INTO `zone` VALUES (1780, 113, 'KG', 'Kwangju-gwangyoksi');
INSERT INTO `zone` VALUES (1781, 113, 'KD', 'Kyonggi-do');
INSERT INTO `zone` VALUES (1782, 113, 'KB', 'Kyongsang-bukto');
INSERT INTO `zone` VALUES (1783, 113, 'KN', 'Kyongsang-namdo');
INSERT INTO `zone` VALUES (1784, 113, 'PG', 'Pusan-gwangyoksi');
INSERT INTO `zone` VALUES (1785, 113, 'SO', 'Soul-t''ukpyolsi');
INSERT INTO `zone` VALUES (1786, 113, 'TA', 'Taegu-gwangyoksi');
INSERT INTO `zone` VALUES (1787, 113, 'TG', 'Taejon-gwangyoksi');
INSERT INTO `zone` VALUES (1788, 114, 'AL', 'Al ''Asimah');
INSERT INTO `zone` VALUES (1789, 114, 'AA', 'Al Ahmadi');
INSERT INTO `zone` VALUES (1790, 114, 'AF', 'Al Farwaniyah');
INSERT INTO `zone` VALUES (1791, 114, 'AJ', 'Al Jahra''');
INSERT INTO `zone` VALUES (1792, 114, 'HA', 'Hawalli');
INSERT INTO `zone` VALUES (1793, 115, 'GB', 'Bishkek');
INSERT INTO `zone` VALUES (1794, 115, 'B', 'Batken');
INSERT INTO `zone` VALUES (1795, 115, 'C', 'Chu');
INSERT INTO `zone` VALUES (1796, 115, 'J', 'Jalal-Abad');
INSERT INTO `zone` VALUES (1797, 115, 'N', 'Naryn');
INSERT INTO `zone` VALUES (1798, 115, 'O', 'Osh');
INSERT INTO `zone` VALUES (1799, 115, 'T', 'Talas');
INSERT INTO `zone` VALUES (1800, 115, 'Y', 'Ysyk-Kol');
INSERT INTO `zone` VALUES (1801, 116, 'VT', 'Vientiane');
INSERT INTO `zone` VALUES (1802, 116, 'AT', 'Attapu');
INSERT INTO `zone` VALUES (1803, 116, 'BK', 'Bokeo');
INSERT INTO `zone` VALUES (1804, 116, 'BL', 'Bolikhamxai');
INSERT INTO `zone` VALUES (1805, 116, 'CH', 'Champasak');
INSERT INTO `zone` VALUES (1806, 116, 'HO', 'Houaphan');
INSERT INTO `zone` VALUES (1807, 116, 'KH', 'Khammouan');
INSERT INTO `zone` VALUES (1808, 116, 'LM', 'Louang Namtha');
INSERT INTO `zone` VALUES (1809, 116, 'LP', 'Louangphabang');
INSERT INTO `zone` VALUES (1810, 116, 'OU', 'Oudomxai');
INSERT INTO `zone` VALUES (1811, 116, 'PH', 'Phongsali');
INSERT INTO `zone` VALUES (1812, 116, 'SL', 'Salavan');
INSERT INTO `zone` VALUES (1813, 116, 'SV', 'Savannakhet');
INSERT INTO `zone` VALUES (1814, 116, 'VI', 'Vientiane');
INSERT INTO `zone` VALUES (1815, 116, 'XA', 'Xaignabouli');
INSERT INTO `zone` VALUES (1816, 116, 'XE', 'Xekong');
INSERT INTO `zone` VALUES (1817, 116, 'XI', 'Xiangkhoang');
INSERT INTO `zone` VALUES (1818, 116, 'XN', 'Xaisomboun');
INSERT INTO `zone` VALUES (1819, 117, 'AIZ', 'Aizkraukles Rajons');
INSERT INTO `zone` VALUES (1820, 117, 'ALU', 'Aluksnes Rajons');
INSERT INTO `zone` VALUES (1821, 117, 'BAL', 'Balvu Rajons');
INSERT INTO `zone` VALUES (1822, 117, 'BAU', 'Bauskas Rajons');
INSERT INTO `zone` VALUES (1823, 117, 'CES', 'Cesu Rajons');
INSERT INTO `zone` VALUES (1824, 117, 'DGR', 'Daugavpils Rajons');
INSERT INTO `zone` VALUES (1825, 117, 'DOB', 'Dobeles Rajons');
INSERT INTO `zone` VALUES (1826, 117, 'GUL', 'Gulbenes Rajons');
INSERT INTO `zone` VALUES (1827, 117, 'JEK', 'Jekabpils Rajons');
INSERT INTO `zone` VALUES (1828, 117, 'JGR', 'Jelgavas Rajons');
INSERT INTO `zone` VALUES (1829, 117, 'KRA', 'Kraslavas Rajons');
INSERT INTO `zone` VALUES (1830, 117, 'KUL', 'Kuldigas Rajons');
INSERT INTO `zone` VALUES (1831, 117, 'LPR', 'Liepajas Rajons');
INSERT INTO `zone` VALUES (1832, 117, 'LIM', 'Limbazu Rajons');
INSERT INTO `zone` VALUES (1833, 117, 'LUD', 'Ludzas Rajons');
INSERT INTO `zone` VALUES (1834, 117, 'MAD', 'Madonas Rajons');
INSERT INTO `zone` VALUES (1835, 117, 'OGR', 'Ogres Rajons');
INSERT INTO `zone` VALUES (1836, 117, 'PRE', 'Preilu Rajons');
INSERT INTO `zone` VALUES (1837, 117, 'RZR', 'Rezeknes Rajons');
INSERT INTO `zone` VALUES (1838, 117, 'RGR', 'Rigas Rajons');
INSERT INTO `zone` VALUES (1839, 117, 'SAL', 'Saldus Rajons');
INSERT INTO `zone` VALUES (1840, 117, 'TAL', 'Talsu Rajons');
INSERT INTO `zone` VALUES (1841, 117, 'TUK', 'Tukuma Rajons');
INSERT INTO `zone` VALUES (1842, 117, 'VLK', 'Valkas Rajons');
INSERT INTO `zone` VALUES (1843, 117, 'VLM', 'Valmieras Rajons');
INSERT INTO `zone` VALUES (1844, 117, 'VSR', 'Ventspils Rajons');
INSERT INTO `zone` VALUES (1845, 117, 'DGV', 'Daugavpils');
INSERT INTO `zone` VALUES (1846, 117, 'JGV', 'Jelgava');
INSERT INTO `zone` VALUES (1847, 117, 'JUR', 'Jurmala');
INSERT INTO `zone` VALUES (1848, 117, 'LPK', 'Liepaja');
INSERT INTO `zone` VALUES (1849, 117, 'RZK', 'Rezekne');
INSERT INTO `zone` VALUES (1850, 117, 'RGA', 'Riga');
INSERT INTO `zone` VALUES (1851, 117, 'VSL', 'Ventspils');
INSERT INTO `zone` VALUES (1852, 119, 'BE', 'Berea');
INSERT INTO `zone` VALUES (1853, 119, 'BB', 'Butha-Buthe');
INSERT INTO `zone` VALUES (1854, 119, 'LE', 'Leribe');
INSERT INTO `zone` VALUES (1855, 119, 'MF', 'Mafeteng');
INSERT INTO `zone` VALUES (1856, 119, 'MS', 'Maseru');
INSERT INTO `zone` VALUES (1857, 119, 'MH', 'Mohale''s Hoek');
INSERT INTO `zone` VALUES (1858, 119, 'MK', 'Mokhotlong');
INSERT INTO `zone` VALUES (1859, 119, 'QN', 'Qacha''s Nek');
INSERT INTO `zone` VALUES (1860, 119, 'QT', 'Quthing');
INSERT INTO `zone` VALUES (1861, 119, 'TT', 'Thaba-Tseka');
INSERT INTO `zone` VALUES (1862, 120, 'BI', 'Bomi');
INSERT INTO `zone` VALUES (1863, 120, 'BG', 'Bong');
INSERT INTO `zone` VALUES (1864, 120, 'GB', 'Grand Bassa');
INSERT INTO `zone` VALUES (1865, 120, 'CM', 'Grand Cape Mount');
INSERT INTO `zone` VALUES (1866, 120, 'GG', 'Grand Gedeh');
INSERT INTO `zone` VALUES (1867, 120, 'GK', 'Grand Kru');
INSERT INTO `zone` VALUES (1868, 120, 'LO', 'Lofa');
INSERT INTO `zone` VALUES (1869, 120, 'MG', 'Margibi');
INSERT INTO `zone` VALUES (1870, 120, 'ML', 'Maryland');
INSERT INTO `zone` VALUES (1871, 120, 'MS', 'Montserrado');
INSERT INTO `zone` VALUES (1872, 120, 'NB', 'Nimba');
INSERT INTO `zone` VALUES (1873, 120, 'RC', 'River Cess');
INSERT INTO `zone` VALUES (1874, 120, 'SN', 'Sinoe');
INSERT INTO `zone` VALUES (1875, 121, 'AJ', 'Ajdabiya');
INSERT INTO `zone` VALUES (1876, 121, 'AZ', 'Al ''Aziziyah');
INSERT INTO `zone` VALUES (1877, 121, 'FA', 'Al Fatih');
INSERT INTO `zone` VALUES (1878, 121, 'JA', 'Al Jabal al Akhdar');
INSERT INTO `zone` VALUES (1879, 121, 'JU', 'Al Jufrah');
INSERT INTO `zone` VALUES (1880, 121, 'KH', 'Al Khums');
INSERT INTO `zone` VALUES (1881, 121, 'KU', 'Al Kufrah');
INSERT INTO `zone` VALUES (1882, 121, 'NK', 'An Nuqat al Khams');
INSERT INTO `zone` VALUES (1883, 121, 'AS', 'Ash Shati''');
INSERT INTO `zone` VALUES (1884, 121, 'AW', 'Awbari');
INSERT INTO `zone` VALUES (1885, 121, 'ZA', 'Az Zawiyah');
INSERT INTO `zone` VALUES (1886, 121, 'BA', 'Banghazi');
INSERT INTO `zone` VALUES (1887, 121, 'DA', 'Darnah');
INSERT INTO `zone` VALUES (1888, 121, 'GD', 'Ghadamis');
INSERT INTO `zone` VALUES (1889, 121, 'GY', 'Gharyan');
INSERT INTO `zone` VALUES (1890, 121, 'MI', 'Misratah');
INSERT INTO `zone` VALUES (1891, 121, 'MZ', 'Murzuq');
INSERT INTO `zone` VALUES (1892, 121, 'SB', 'Sabha');
INSERT INTO `zone` VALUES (1893, 121, 'SW', 'Sawfajjin');
INSERT INTO `zone` VALUES (1894, 121, 'SU', 'Surt');
INSERT INTO `zone` VALUES (1895, 121, 'TL', 'Tarabulus (Tripoli)');
INSERT INTO `zone` VALUES (1896, 121, 'TH', 'Tarhunah');
INSERT INTO `zone` VALUES (1897, 121, 'TU', 'Tubruq');
INSERT INTO `zone` VALUES (1898, 121, 'YA', 'Yafran');
INSERT INTO `zone` VALUES (1899, 121, 'ZL', 'Zlitan');
INSERT INTO `zone` VALUES (1900, 122, 'V', 'Vaduz');
INSERT INTO `zone` VALUES (1901, 122, 'A', 'Schaan');
INSERT INTO `zone` VALUES (1902, 122, 'B', 'Balzers');
INSERT INTO `zone` VALUES (1903, 122, 'N', 'Triesen');
INSERT INTO `zone` VALUES (1904, 122, 'E', 'Eschen');
INSERT INTO `zone` VALUES (1905, 122, 'M', 'Mauren');
INSERT INTO `zone` VALUES (1906, 122, 'T', 'Triesenberg');
INSERT INTO `zone` VALUES (1907, 122, 'R', 'Ruggell');
INSERT INTO `zone` VALUES (1908, 122, 'G', 'Gamprin');
INSERT INTO `zone` VALUES (1909, 122, 'L', 'Schellenberg');
INSERT INTO `zone` VALUES (1910, 122, 'P', 'Planken');
INSERT INTO `zone` VALUES (1911, 123, 'AL', 'Alytus');
INSERT INTO `zone` VALUES (1912, 123, 'KA', 'Kaunas');
INSERT INTO `zone` VALUES (1913, 123, 'KL', 'Klaipeda');
INSERT INTO `zone` VALUES (1914, 123, 'MA', 'Marijampole');
INSERT INTO `zone` VALUES (1915, 123, 'PA', 'Panevezys');
INSERT INTO `zone` VALUES (1916, 123, 'SI', 'Siauliai');
INSERT INTO `zone` VALUES (1917, 123, 'TA', 'Taurage');
INSERT INTO `zone` VALUES (1918, 123, 'TE', 'Telsiai');
INSERT INTO `zone` VALUES (1919, 123, 'UT', 'Utena');
INSERT INTO `zone` VALUES (1920, 123, 'VI', 'Vilnius');
INSERT INTO `zone` VALUES (1921, 124, 'DD', 'Diekirch');
INSERT INTO `zone` VALUES (1922, 124, 'DC', 'Clervaux');
INSERT INTO `zone` VALUES (1923, 124, 'DR', 'Redange');
INSERT INTO `zone` VALUES (1924, 124, 'DV', 'Vianden');
INSERT INTO `zone` VALUES (1925, 124, 'DW', 'Wiltz');
INSERT INTO `zone` VALUES (1926, 124, 'GG', 'Grevenmacher');
INSERT INTO `zone` VALUES (1927, 124, 'GE', 'Echternach');
INSERT INTO `zone` VALUES (1928, 124, 'GR', 'Remich');
INSERT INTO `zone` VALUES (1929, 124, 'LL', 'Luxembourg');
INSERT INTO `zone` VALUES (1930, 124, 'LC', 'Capellen');
INSERT INTO `zone` VALUES (1931, 124, 'LE', 'Esch-sur-Alzette');
INSERT INTO `zone` VALUES (1932, 124, 'LM', 'Mersch');
INSERT INTO `zone` VALUES (1933, 125, 'OLF', 'Our Lady Fatima Parish');
INSERT INTO `zone` VALUES (1934, 125, 'ANT', 'St. Anthony Parish');
INSERT INTO `zone` VALUES (1935, 125, 'LAZ', 'St. Lazarus Parish');
INSERT INTO `zone` VALUES (1936, 125, 'CAT', 'Cathedral Parish');
INSERT INTO `zone` VALUES (1937, 125, 'LAW', 'St. Lawrence Parish');
INSERT INTO `zone` VALUES (1938, 127, 'AN', 'Antananarivo');
INSERT INTO `zone` VALUES (1939, 127, 'AS', 'Antsiranana');
INSERT INTO `zone` VALUES (1940, 127, 'FN', 'Fianarantsoa');
INSERT INTO `zone` VALUES (1941, 127, 'MJ', 'Mahajanga');
INSERT INTO `zone` VALUES (1942, 127, 'TM', 'Toamasina');
INSERT INTO `zone` VALUES (1943, 127, 'TL', 'Toliara');
INSERT INTO `zone` VALUES (1944, 128, 'BLK', 'Balaka');
INSERT INTO `zone` VALUES (1945, 128, 'BLT', 'Blantyre');
INSERT INTO `zone` VALUES (1946, 128, 'CKW', 'Chikwawa');
INSERT INTO `zone` VALUES (1947, 128, 'CRD', 'Chiradzulu');
INSERT INTO `zone` VALUES (1948, 128, 'CTP', 'Chitipa');
INSERT INTO `zone` VALUES (1949, 128, 'DDZ', 'Dedza');
INSERT INTO `zone` VALUES (1950, 128, 'DWA', 'Dowa');
INSERT INTO `zone` VALUES (1951, 128, 'KRG', 'Karonga');
INSERT INTO `zone` VALUES (1952, 128, 'KSG', 'Kasungu');
INSERT INTO `zone` VALUES (1953, 128, 'LKM', 'Likoma');
INSERT INTO `zone` VALUES (1954, 128, 'LLG', 'Lilongwe');
INSERT INTO `zone` VALUES (1955, 128, 'MCG', 'Machinga');
INSERT INTO `zone` VALUES (1956, 128, 'MGC', 'Mangochi');
INSERT INTO `zone` VALUES (1957, 128, 'MCH', 'Mchinji');
INSERT INTO `zone` VALUES (1958, 128, 'MLJ', 'Mulanje');
INSERT INTO `zone` VALUES (1959, 128, 'MWZ', 'Mwanza');
INSERT INTO `zone` VALUES (1960, 128, 'MZM', 'Mzimba');
INSERT INTO `zone` VALUES (1961, 128, 'NTU', 'Ntcheu');
INSERT INTO `zone` VALUES (1962, 128, 'NKB', 'Nkhata Bay');
INSERT INTO `zone` VALUES (1963, 128, 'NKH', 'Nkhotakota');
INSERT INTO `zone` VALUES (1964, 128, 'NSJ', 'Nsanje');
INSERT INTO `zone` VALUES (1965, 128, 'NTI', 'Ntchisi');
INSERT INTO `zone` VALUES (1966, 128, 'PHL', 'Phalombe');
INSERT INTO `zone` VALUES (1967, 128, 'RMP', 'Rumphi');
INSERT INTO `zone` VALUES (1968, 128, 'SLM', 'Salima');
INSERT INTO `zone` VALUES (1969, 128, 'THY', 'Thyolo');
INSERT INTO `zone` VALUES (1970, 128, 'ZBA', 'Zomba');
INSERT INTO `zone` VALUES (1971, 129, 'JO', 'Johor');
INSERT INTO `zone` VALUES (1972, 129, 'KE', 'Kedah');
INSERT INTO `zone` VALUES (1973, 129, 'KL', 'Kelantan');
INSERT INTO `zone` VALUES (1974, 129, 'LA', 'Labuan');
INSERT INTO `zone` VALUES (1975, 129, 'ME', 'Melaka');
INSERT INTO `zone` VALUES (1976, 129, 'NS', 'Negeri Sembilan');
INSERT INTO `zone` VALUES (1977, 129, 'PA', 'Pahang');
INSERT INTO `zone` VALUES (1978, 129, 'PE', 'Perak');
INSERT INTO `zone` VALUES (1979, 129, 'PR', 'Perlis');
INSERT INTO `zone` VALUES (1980, 129, 'PP', 'Pulau Pinang');
INSERT INTO `zone` VALUES (1981, 129, 'SA', 'Sabah');
INSERT INTO `zone` VALUES (1982, 129, 'SR', 'Sarawak');
INSERT INTO `zone` VALUES (1983, 129, 'SE', 'Selangor');
INSERT INTO `zone` VALUES (1984, 129, 'TE', 'Terengganu');
INSERT INTO `zone` VALUES (1985, 129, 'WP', 'Wilayah Persekutuan');
INSERT INTO `zone` VALUES (1986, 130, 'THU', 'Thiladhunmathi Uthuru');
INSERT INTO `zone` VALUES (1987, 130, 'THD', 'Thiladhunmathi Dhekunu');
INSERT INTO `zone` VALUES (1988, 130, 'MLU', 'Miladhunmadulu Uthuru');
INSERT INTO `zone` VALUES (1989, 130, 'MLD', 'Miladhunmadulu Dhekunu');
INSERT INTO `zone` VALUES (1990, 130, 'MAU', 'Maalhosmadulu Uthuru');
INSERT INTO `zone` VALUES (1991, 130, 'MAD', 'Maalhosmadulu Dhekunu');
INSERT INTO `zone` VALUES (1992, 130, 'FAA', 'Faadhippolhu');
INSERT INTO `zone` VALUES (1993, 130, 'MAA', 'Male Atoll');
INSERT INTO `zone` VALUES (1994, 130, 'AAU', 'Ari Atoll Uthuru');
INSERT INTO `zone` VALUES (1995, 130, 'AAD', 'Ari Atoll Dheknu');
INSERT INTO `zone` VALUES (1996, 130, 'FEA', 'Felidhe Atoll');
INSERT INTO `zone` VALUES (1997, 130, 'MUA', 'Mulaku Atoll');
INSERT INTO `zone` VALUES (1998, 130, 'NAU', 'Nilandhe Atoll Uthuru');
INSERT INTO `zone` VALUES (1999, 130, 'NAD', 'Nilandhe Atoll Dhekunu');
INSERT INTO `zone` VALUES (2000, 130, 'KLH', 'Kolhumadulu');
INSERT INTO `zone` VALUES (2001, 130, 'HDH', 'Hadhdhunmathi');
INSERT INTO `zone` VALUES (2002, 130, 'HAU', 'Huvadhu Atoll Uthuru');
INSERT INTO `zone` VALUES (2003, 130, 'HAD', 'Huvadhu Atoll Dhekunu');
INSERT INTO `zone` VALUES (2004, 130, 'FMU', 'Fua Mulaku');
INSERT INTO `zone` VALUES (2005, 130, 'ADD', 'Addu');
INSERT INTO `zone` VALUES (2006, 131, 'GA', 'Gao');
INSERT INTO `zone` VALUES (2007, 131, 'KY', 'Kayes');
INSERT INTO `zone` VALUES (2008, 131, 'KD', 'Kidal');
INSERT INTO `zone` VALUES (2009, 131, 'KL', 'Koulikoro');
INSERT INTO `zone` VALUES (2010, 131, 'MP', 'Mopti');
INSERT INTO `zone` VALUES (2011, 131, 'SG', 'Segou');
INSERT INTO `zone` VALUES (2012, 131, 'SK', 'Sikasso');
INSERT INTO `zone` VALUES (2013, 131, 'TB', 'Tombouctou');
INSERT INTO `zone` VALUES (2014, 131, 'CD', 'Bamako Capital District');
INSERT INTO `zone` VALUES (2015, 132, 'ATT', 'Attard');
INSERT INTO `zone` VALUES (2016, 132, 'BAL', 'Balzan');
INSERT INTO `zone` VALUES (2017, 132, 'BGU', 'Birgu');
INSERT INTO `zone` VALUES (2018, 132, 'BKK', 'Birkirkara');
INSERT INTO `zone` VALUES (2019, 132, 'BRZ', 'Birzebbuga');
INSERT INTO `zone` VALUES (2020, 132, 'BOR', 'Bormla');
INSERT INTO `zone` VALUES (2021, 132, 'DIN', 'Dingli');
INSERT INTO `zone` VALUES (2022, 132, 'FGU', 'Fgura');
INSERT INTO `zone` VALUES (2023, 132, 'FLO', 'Floriana');
INSERT INTO `zone` VALUES (2024, 132, 'GDJ', 'Gudja');
INSERT INTO `zone` VALUES (2025, 132, 'GZR', 'Gzira');
INSERT INTO `zone` VALUES (2026, 132, 'GRG', 'Gargur');
INSERT INTO `zone` VALUES (2027, 132, 'GXQ', 'Gaxaq');
INSERT INTO `zone` VALUES (2028, 132, 'HMR', 'Hamrun');
INSERT INTO `zone` VALUES (2029, 132, 'IKL', 'Iklin');
INSERT INTO `zone` VALUES (2030, 132, 'ISL', 'Isla');
INSERT INTO `zone` VALUES (2031, 132, 'KLK', 'Kalkara');
INSERT INTO `zone` VALUES (2032, 132, 'KRK', 'Kirkop');
INSERT INTO `zone` VALUES (2033, 132, 'LIJ', 'Lija');
INSERT INTO `zone` VALUES (2034, 132, 'LUQ', 'Luqa');
INSERT INTO `zone` VALUES (2035, 132, 'MRS', 'Marsa');
INSERT INTO `zone` VALUES (2036, 132, 'MKL', 'Marsaskala');
INSERT INTO `zone` VALUES (2037, 132, 'MXL', 'Marsaxlokk');
INSERT INTO `zone` VALUES (2038, 132, 'MDN', 'Mdina');
INSERT INTO `zone` VALUES (2039, 132, 'MEL', 'Melliea');
INSERT INTO `zone` VALUES (2040, 132, 'MGR', 'Mgarr');
INSERT INTO `zone` VALUES (2041, 132, 'MST', 'Mosta');
INSERT INTO `zone` VALUES (2042, 132, 'MQA', 'Mqabba');
INSERT INTO `zone` VALUES (2043, 132, 'MSI', 'Msida');
INSERT INTO `zone` VALUES (2044, 132, 'MTF', 'Mtarfa');
INSERT INTO `zone` VALUES (2045, 132, 'NAX', 'Naxxar');
INSERT INTO `zone` VALUES (2046, 132, 'PAO', 'Paola');
INSERT INTO `zone` VALUES (2047, 132, 'PEM', 'Pembroke');
INSERT INTO `zone` VALUES (2048, 132, 'PIE', 'Pieta');
INSERT INTO `zone` VALUES (2049, 132, 'QOR', 'Qormi');
INSERT INTO `zone` VALUES (2050, 132, 'QRE', 'Qrendi');
INSERT INTO `zone` VALUES (2051, 132, 'RAB', 'Rabat');
INSERT INTO `zone` VALUES (2052, 132, 'SAF', 'Safi');
INSERT INTO `zone` VALUES (2053, 132, 'SGI', 'San Giljan');
INSERT INTO `zone` VALUES (2054, 132, 'SLU', 'Santa Lucija');
INSERT INTO `zone` VALUES (2055, 132, 'SPB', 'San Pawl il-Bahar');
INSERT INTO `zone` VALUES (2056, 132, 'SGW', 'San Gwann');
INSERT INTO `zone` VALUES (2057, 132, 'SVE', 'Santa Venera');
INSERT INTO `zone` VALUES (2058, 132, 'SIG', 'Siggiewi');
INSERT INTO `zone` VALUES (2059, 132, 'SLM', 'Sliema');
INSERT INTO `zone` VALUES (2060, 132, 'SWQ', 'Swieqi');
INSERT INTO `zone` VALUES (2061, 132, 'TXB', 'Ta Xbiex');
INSERT INTO `zone` VALUES (2062, 132, 'TRX', 'Tarxien');
INSERT INTO `zone` VALUES (2063, 132, 'VLT', 'Valletta');
INSERT INTO `zone` VALUES (2064, 132, 'XGJ', 'Xgajra');
INSERT INTO `zone` VALUES (2065, 132, 'ZBR', 'Zabbar');
INSERT INTO `zone` VALUES (2066, 132, 'ZBG', 'Zebbug');
INSERT INTO `zone` VALUES (2067, 132, 'ZJT', 'Zejtun');
INSERT INTO `zone` VALUES (2068, 132, 'ZRQ', 'Zurrieq');
INSERT INTO `zone` VALUES (2069, 132, 'FNT', 'Fontana');
INSERT INTO `zone` VALUES (2070, 132, 'GHJ', 'Ghajnsielem');
INSERT INTO `zone` VALUES (2071, 132, 'GHR', 'Gharb');
INSERT INTO `zone` VALUES (2072, 132, 'GHS', 'Ghasri');
INSERT INTO `zone` VALUES (2073, 132, 'KRC', 'Kercem');
INSERT INTO `zone` VALUES (2074, 132, 'MUN', 'Munxar');
INSERT INTO `zone` VALUES (2075, 132, 'NAD', 'Nadur');
INSERT INTO `zone` VALUES (2076, 132, 'QAL', 'Qala');
INSERT INTO `zone` VALUES (2077, 132, 'VIC', 'Victoria');
INSERT INTO `zone` VALUES (2078, 132, 'SLA', 'San Lawrenz');
INSERT INTO `zone` VALUES (2079, 132, 'SNT', 'Sannat');
INSERT INTO `zone` VALUES (2080, 132, 'ZAG', 'Xagra');
INSERT INTO `zone` VALUES (2081, 132, 'XEW', 'Xewkija');
INSERT INTO `zone` VALUES (2082, 132, 'ZEB', 'Zebbug');
INSERT INTO `zone` VALUES (2083, 133, 'ALG', 'Ailinginae');
INSERT INTO `zone` VALUES (2084, 133, 'ALL', 'Ailinglaplap');
INSERT INTO `zone` VALUES (2085, 133, 'ALK', 'Ailuk');
INSERT INTO `zone` VALUES (2086, 133, 'ARN', 'Arno');
INSERT INTO `zone` VALUES (2087, 133, 'AUR', 'Aur');
INSERT INTO `zone` VALUES (2088, 133, 'BKR', 'Bikar');
INSERT INTO `zone` VALUES (2089, 133, 'BKN', 'Bikini');
INSERT INTO `zone` VALUES (2090, 133, 'BKK', 'Bokak');
INSERT INTO `zone` VALUES (2091, 133, 'EBN', 'Ebon');
INSERT INTO `zone` VALUES (2092, 133, 'ENT', 'Enewetak');
INSERT INTO `zone` VALUES (2093, 133, 'EKB', 'Erikub');
INSERT INTO `zone` VALUES (2094, 133, 'JBT', 'Jabat');
INSERT INTO `zone` VALUES (2095, 133, 'JLT', 'Jaluit');
INSERT INTO `zone` VALUES (2096, 133, 'JEM', 'Jemo');
INSERT INTO `zone` VALUES (2097, 133, 'KIL', 'Kili');
INSERT INTO `zone` VALUES (2098, 133, 'KWJ', 'Kwajalein');
INSERT INTO `zone` VALUES (2099, 133, 'LAE', 'Lae');
INSERT INTO `zone` VALUES (2100, 133, 'LIB', 'Lib');
INSERT INTO `zone` VALUES (2101, 133, 'LKP', 'Likiep');
INSERT INTO `zone` VALUES (2102, 133, 'MJR', 'Majuro');
INSERT INTO `zone` VALUES (2103, 133, 'MLP', 'Maloelap');
INSERT INTO `zone` VALUES (2104, 133, 'MJT', 'Mejit');
INSERT INTO `zone` VALUES (2105, 133, 'MIL', 'Mili');
INSERT INTO `zone` VALUES (2106, 133, 'NMK', 'Namorik');
INSERT INTO `zone` VALUES (2107, 133, 'NAM', 'Namu');
INSERT INTO `zone` VALUES (2108, 133, 'RGL', 'Rongelap');
INSERT INTO `zone` VALUES (2109, 133, 'RGK', 'Rongrik');
INSERT INTO `zone` VALUES (2110, 133, 'TOK', 'Toke');
INSERT INTO `zone` VALUES (2111, 133, 'UJA', 'Ujae');
INSERT INTO `zone` VALUES (2112, 133, 'UJL', 'Ujelang');
INSERT INTO `zone` VALUES (2113, 133, 'UTK', 'Utirik');
INSERT INTO `zone` VALUES (2114, 133, 'WTH', 'Wotho');
INSERT INTO `zone` VALUES (2115, 133, 'WTJ', 'Wotje');
INSERT INTO `zone` VALUES (2116, 135, 'AD', 'Adrar');
INSERT INTO `zone` VALUES (2117, 135, 'AS', 'Assaba');
INSERT INTO `zone` VALUES (2118, 135, 'BR', 'Brakna');
INSERT INTO `zone` VALUES (2119, 135, 'DN', 'Dakhlet Nouadhibou');
INSERT INTO `zone` VALUES (2120, 135, 'GO', 'Gorgol');
INSERT INTO `zone` VALUES (2121, 135, 'GM', 'Guidimaka');
INSERT INTO `zone` VALUES (2122, 135, 'HC', 'Hodh Ech Chargui');
INSERT INTO `zone` VALUES (2123, 135, 'HG', 'Hodh El Gharbi');
INSERT INTO `zone` VALUES (2124, 135, 'IN', 'Inchiri');
INSERT INTO `zone` VALUES (2125, 135, 'TA', 'Tagant');
INSERT INTO `zone` VALUES (2126, 135, 'TZ', 'Tiris Zemmour');
INSERT INTO `zone` VALUES (2127, 135, 'TR', 'Trarza');
INSERT INTO `zone` VALUES (2128, 135, 'NO', 'Nouakchott');
INSERT INTO `zone` VALUES (2129, 136, 'BR', 'Beau Bassin-Rose Hill');
INSERT INTO `zone` VALUES (2130, 136, 'CU', 'Curepipe');
INSERT INTO `zone` VALUES (2131, 136, 'PU', 'Port Louis');
INSERT INTO `zone` VALUES (2132, 136, 'QB', 'Quatre Bornes');
INSERT INTO `zone` VALUES (2133, 136, 'VP', 'Vacoas-Phoenix');
INSERT INTO `zone` VALUES (2134, 136, 'AG', 'Agalega Islands');
INSERT INTO `zone` VALUES (2135, 136, 'CC', 'Cargados Carajos Shoals (Saint B');
INSERT INTO `zone` VALUES (2136, 136, 'RO', 'Rodrigues');
INSERT INTO `zone` VALUES (2137, 136, 'BL', 'Black River');
INSERT INTO `zone` VALUES (2138, 136, 'FL', 'Flacq');
INSERT INTO `zone` VALUES (2139, 136, 'GP', 'Grand Port');
INSERT INTO `zone` VALUES (2140, 136, 'MO', 'Moka');
INSERT INTO `zone` VALUES (2141, 136, 'PA', 'Pamplemousses');
INSERT INTO `zone` VALUES (2142, 136, 'PW', 'Plaines Wilhems');
INSERT INTO `zone` VALUES (2143, 136, 'PL', 'Port Louis');
INSERT INTO `zone` VALUES (2144, 136, 'RR', 'Riviere du Rempart');
INSERT INTO `zone` VALUES (2145, 136, 'SA', 'Savanne');
INSERT INTO `zone` VALUES (2146, 138, 'BN', 'Baja California Norte');
INSERT INTO `zone` VALUES (2147, 138, 'BS', 'Baja California Sur');
INSERT INTO `zone` VALUES (2148, 138, 'CA', 'Campeche');
INSERT INTO `zone` VALUES (2149, 138, 'CI', 'Chiapas');
INSERT INTO `zone` VALUES (2150, 138, 'CH', 'Chihuahua');
INSERT INTO `zone` VALUES (2151, 138, 'CZ', 'Coahuila de Zaragoza');
INSERT INTO `zone` VALUES (2152, 138, 'CL', 'Colima');
INSERT INTO `zone` VALUES (2153, 138, 'DF', 'Distrito Federal');
INSERT INTO `zone` VALUES (2154, 138, 'DU', 'Durango');
INSERT INTO `zone` VALUES (2155, 138, 'GA', 'Guanajuato');
INSERT INTO `zone` VALUES (2156, 138, 'GE', 'Guerrero');
INSERT INTO `zone` VALUES (2157, 138, 'HI', 'Hidalgo');
INSERT INTO `zone` VALUES (2158, 138, 'JA', 'Jalisco');
INSERT INTO `zone` VALUES (2159, 138, 'ME', 'Mexico');
INSERT INTO `zone` VALUES (2160, 138, 'MI', 'Michoacan de Ocampo');
INSERT INTO `zone` VALUES (2161, 138, 'MO', 'Morelos');
INSERT INTO `zone` VALUES (2162, 138, 'NA', 'Nayarit');
INSERT INTO `zone` VALUES (2163, 138, 'NL', 'Nuevo Leon');
INSERT INTO `zone` VALUES (2164, 138, 'OA', 'Oaxaca');
INSERT INTO `zone` VALUES (2165, 138, 'PU', 'Puebla');
INSERT INTO `zone` VALUES (2166, 138, 'QA', 'Queretaro de Arteaga');
INSERT INTO `zone` VALUES (2167, 138, 'QR', 'Quintana Roo');
INSERT INTO `zone` VALUES (2168, 138, 'SA', 'San Luis Potosi');
INSERT INTO `zone` VALUES (2169, 138, 'SI', 'Sinaloa');
INSERT INTO `zone` VALUES (2170, 138, 'SO', 'Sonora');
INSERT INTO `zone` VALUES (2171, 138, 'TB', 'Tabasco');
INSERT INTO `zone` VALUES (2172, 138, 'TM', 'Tamaulipas');
INSERT INTO `zone` VALUES (2173, 138, 'TL', 'Tlaxcala');
INSERT INTO `zone` VALUES (2174, 138, 'VE', 'Veracruz-Llave');
INSERT INTO `zone` VALUES (2175, 138, 'YU', 'Yucatan');
INSERT INTO `zone` VALUES (2176, 138, 'ZA', 'Zacatecas');
INSERT INTO `zone` VALUES (2177, 139, 'C', 'Chuuk');
INSERT INTO `zone` VALUES (2178, 139, 'K', 'Kosrae');
INSERT INTO `zone` VALUES (2179, 139, 'P', 'Pohnpei');
INSERT INTO `zone` VALUES (2180, 139, 'Y', 'Yap');
INSERT INTO `zone` VALUES (2181, 140, 'GA', 'Gagauzia');
INSERT INTO `zone` VALUES (2182, 140, 'CU', 'Chisinau');
INSERT INTO `zone` VALUES (2183, 140, 'BA', 'Balti');
INSERT INTO `zone` VALUES (2184, 140, 'CA', 'Cahul');
INSERT INTO `zone` VALUES (2185, 140, 'ED', 'Edinet');
INSERT INTO `zone` VALUES (2186, 140, 'LA', 'Lapusna');
INSERT INTO `zone` VALUES (2187, 140, 'OR', 'Orhei');
INSERT INTO `zone` VALUES (2188, 140, 'SO', 'Soroca');
INSERT INTO `zone` VALUES (2189, 140, 'TI', 'Tighina');
INSERT INTO `zone` VALUES (2190, 140, 'UN', 'Ungheni');
INSERT INTO `zone` VALUES (2191, 140, 'SN', 'StÃƒÆ’Ã‚Â®nga Nistrului');
INSERT INTO `zone` VALUES (2192, 141, 'FV', 'Fontvieille');
INSERT INTO `zone` VALUES (2193, 141, 'LC', 'La Condamine');
INSERT INTO `zone` VALUES (2194, 141, 'MV', 'Monaco-Ville');
INSERT INTO `zone` VALUES (2195, 141, 'MC', 'Monte-Carlo');
INSERT INTO `zone` VALUES (2196, 142, '1', 'Ulanbaatar');
INSERT INTO `zone` VALUES (2197, 142, '035', 'Orhon');
INSERT INTO `zone` VALUES (2198, 142, '037', 'Darhan uul');
INSERT INTO `zone` VALUES (2199, 142, '039', 'Hentiy');
INSERT INTO `zone` VALUES (2200, 142, '041', 'Hovsgol');
INSERT INTO `zone` VALUES (2201, 142, '043', 'Hovd');
INSERT INTO `zone` VALUES (2202, 142, '046', 'Uvs');
INSERT INTO `zone` VALUES (2203, 142, '047', 'Tov');
INSERT INTO `zone` VALUES (2204, 142, '049', 'Selenge');
INSERT INTO `zone` VALUES (2205, 142, '051', 'Suhbaatar');
INSERT INTO `zone` VALUES (2206, 142, '053', 'Omnogovi');
INSERT INTO `zone` VALUES (2207, 142, '055', 'Ovorhangay');
INSERT INTO `zone` VALUES (2208, 142, '057', 'Dzavhan');
INSERT INTO `zone` VALUES (2209, 142, '059', 'DundgovL');
INSERT INTO `zone` VALUES (2210, 142, '061', 'Dornod');
INSERT INTO `zone` VALUES (2211, 142, '063', 'Dornogov');
INSERT INTO `zone` VALUES (2212, 142, '064', 'Govi-Sumber');
INSERT INTO `zone` VALUES (2213, 142, '065', 'Govi-Altay');
INSERT INTO `zone` VALUES (2214, 142, '067', 'Bulgan');
INSERT INTO `zone` VALUES (2215, 142, '069', 'Bayanhongor');
INSERT INTO `zone` VALUES (2216, 142, '071', 'Bayan-Olgiy');
INSERT INTO `zone` VALUES (2217, 142, '073', 'Arhangay');
INSERT INTO `zone` VALUES (2218, 143, 'A', 'Saint Anthony');
INSERT INTO `zone` VALUES (2219, 143, 'G', 'Saint Georges');
INSERT INTO `zone` VALUES (2220, 143, 'P', 'Saint Peter');
INSERT INTO `zone` VALUES (2221, 144, 'AGD', 'Agadir');
INSERT INTO `zone` VALUES (2222, 144, 'HOC', 'Al Hoceima');
INSERT INTO `zone` VALUES (2223, 144, 'AZI', 'Azilal');
INSERT INTO `zone` VALUES (2224, 144, 'BME', 'Beni Mellal');
INSERT INTO `zone` VALUES (2225, 144, 'BSL', 'Ben Slimane');
INSERT INTO `zone` VALUES (2226, 144, 'BLM', 'Boulemane');
INSERT INTO `zone` VALUES (2227, 144, 'CBL', 'Casablanca');
INSERT INTO `zone` VALUES (2228, 144, 'CHA', 'Chaouen');
INSERT INTO `zone` VALUES (2229, 144, 'EJA', 'El Jadida');
INSERT INTO `zone` VALUES (2230, 144, 'EKS', 'El Kelaa des Sraghna');
INSERT INTO `zone` VALUES (2231, 144, 'ERA', 'Er Rachidia');
INSERT INTO `zone` VALUES (2232, 144, 'ESS', 'Essaouira');
INSERT INTO `zone` VALUES (2233, 144, 'FES', 'Fes');
INSERT INTO `zone` VALUES (2234, 144, 'FIG', 'Figuig');
INSERT INTO `zone` VALUES (2235, 144, 'GLM', 'Guelmim');
INSERT INTO `zone` VALUES (2236, 144, 'IFR', 'Ifrane');
INSERT INTO `zone` VALUES (2237, 144, 'KEN', 'Kenitra');
INSERT INTO `zone` VALUES (2238, 144, 'KHM', 'Khemisset');
INSERT INTO `zone` VALUES (2239, 144, 'KHN', 'Khenifra');
INSERT INTO `zone` VALUES (2240, 144, 'KHO', 'Khouribga');
INSERT INTO `zone` VALUES (2241, 144, 'LYN', 'Laayoune');
INSERT INTO `zone` VALUES (2242, 144, 'LAR', 'Larache');
INSERT INTO `zone` VALUES (2243, 144, 'MRK', 'Marrakech');
INSERT INTO `zone` VALUES (2244, 144, 'MKN', 'Meknes');
INSERT INTO `zone` VALUES (2245, 144, 'NAD', 'Nador');
INSERT INTO `zone` VALUES (2246, 144, 'ORZ', 'Ouarzazate');
INSERT INTO `zone` VALUES (2247, 144, 'OUJ', 'Oujda');
INSERT INTO `zone` VALUES (2248, 144, 'RSA', 'Rabat-Sale');
INSERT INTO `zone` VALUES (2249, 144, 'SAF', 'Safi');
INSERT INTO `zone` VALUES (2250, 144, 'SET', 'Settat');
INSERT INTO `zone` VALUES (2251, 144, 'SKA', 'Sidi Kacem');
INSERT INTO `zone` VALUES (2252, 144, 'TGR', 'Tangier');
INSERT INTO `zone` VALUES (2253, 144, 'TAN', 'Tan-Tan');
INSERT INTO `zone` VALUES (2254, 144, 'TAO', 'Taounate');
INSERT INTO `zone` VALUES (2255, 144, 'TRD', 'Taroudannt');
INSERT INTO `zone` VALUES (2256, 144, 'TAT', 'Tata');
INSERT INTO `zone` VALUES (2257, 144, 'TAZ', 'Taza');
INSERT INTO `zone` VALUES (2258, 144, 'TET', 'Tetouan');
INSERT INTO `zone` VALUES (2259, 144, 'TIZ', 'Tiznit');
INSERT INTO `zone` VALUES (2260, 144, 'ADK', 'Ad Dakhla');
INSERT INTO `zone` VALUES (2261, 144, 'BJD', 'Boujdour');
INSERT INTO `zone` VALUES (2262, 144, 'ESM', 'Es Smara');
INSERT INTO `zone` VALUES (2263, 145, 'CD', 'Cabo Delgado');
INSERT INTO `zone` VALUES (2264, 145, 'GZ', 'Gaza');
INSERT INTO `zone` VALUES (2265, 145, 'IN', 'Inhambane');
INSERT INTO `zone` VALUES (2266, 145, 'MN', 'Manica');
INSERT INTO `zone` VALUES (2267, 145, 'MC', 'Maputo (city)');
INSERT INTO `zone` VALUES (2268, 145, 'MP', 'Maputo');
INSERT INTO `zone` VALUES (2269, 145, 'NA', 'Nampula');
INSERT INTO `zone` VALUES (2270, 145, 'NI', 'Niassa');
INSERT INTO `zone` VALUES (2271, 145, 'SO', 'Sofala');
INSERT INTO `zone` VALUES (2272, 145, 'TE', 'Tete');
INSERT INTO `zone` VALUES (2273, 145, 'ZA', 'Zambezia');
INSERT INTO `zone` VALUES (2274, 146, 'AY', 'Ayeyarwady');
INSERT INTO `zone` VALUES (2275, 146, 'BG', 'Bago');
INSERT INTO `zone` VALUES (2276, 146, 'MG', 'Magway');
INSERT INTO `zone` VALUES (2277, 146, 'MD', 'Mandalay');
INSERT INTO `zone` VALUES (2278, 146, 'SG', 'Sagaing');
INSERT INTO `zone` VALUES (2279, 146, 'TN', 'Tanintharyi');
INSERT INTO `zone` VALUES (2280, 146, 'YG', 'Yangon');
INSERT INTO `zone` VALUES (2281, 146, 'CH', 'Chin State');
INSERT INTO `zone` VALUES (2282, 146, 'KC', 'Kachin State');
INSERT INTO `zone` VALUES (2283, 146, 'KH', 'Kayah State');
INSERT INTO `zone` VALUES (2284, 146, 'KN', 'Kayin State');
INSERT INTO `zone` VALUES (2285, 146, 'MN', 'Mon State');
INSERT INTO `zone` VALUES (2286, 146, 'RK', 'Rakhine State');
INSERT INTO `zone` VALUES (2287, 146, 'SH', 'Shan State');
INSERT INTO `zone` VALUES (2288, 147, 'CA', 'Caprivi');
INSERT INTO `zone` VALUES (2289, 147, 'ER', 'Erongo');
INSERT INTO `zone` VALUES (2290, 147, 'HA', 'Hardap');
INSERT INTO `zone` VALUES (2291, 147, 'KR', 'Karas');
INSERT INTO `zone` VALUES (2292, 147, 'KV', 'Kavango');
INSERT INTO `zone` VALUES (2293, 147, 'KH', 'Khomas');
INSERT INTO `zone` VALUES (2294, 147, 'KU', 'Kunene');
INSERT INTO `zone` VALUES (2295, 147, 'OW', 'Ohangwena');
INSERT INTO `zone` VALUES (2296, 147, 'OK', 'Omaheke');
INSERT INTO `zone` VALUES (2297, 147, 'OT', 'Omusati');
INSERT INTO `zone` VALUES (2298, 147, 'ON', 'Oshana');
INSERT INTO `zone` VALUES (2299, 147, 'OO', 'Oshikoto');
INSERT INTO `zone` VALUES (2300, 147, 'OJ', 'Otjozondjupa');
INSERT INTO `zone` VALUES (2301, 148, 'AO', 'Aiwo');
INSERT INTO `zone` VALUES (2302, 148, 'AA', 'Anabar');
INSERT INTO `zone` VALUES (2303, 148, 'AT', 'Anetan');
INSERT INTO `zone` VALUES (2304, 148, 'AI', 'Anibare');
INSERT INTO `zone` VALUES (2305, 148, 'BA', 'Baiti');
INSERT INTO `zone` VALUES (2306, 148, 'BO', 'Boe');
INSERT INTO `zone` VALUES (2307, 148, 'BU', 'Buada');
INSERT INTO `zone` VALUES (2308, 148, 'DE', 'Denigomodu');
INSERT INTO `zone` VALUES (2309, 148, 'EW', 'Ewa');
INSERT INTO `zone` VALUES (2310, 148, 'IJ', 'Ijuw');
INSERT INTO `zone` VALUES (2311, 148, 'ME', 'Meneng');
INSERT INTO `zone` VALUES (2312, 148, 'NI', 'Nibok');
INSERT INTO `zone` VALUES (2313, 148, 'UA', 'Uaboe');
INSERT INTO `zone` VALUES (2314, 148, 'YA', 'Yaren');
INSERT INTO `zone` VALUES (2315, 149, 'BA', 'Bagmati');
INSERT INTO `zone` VALUES (2316, 149, 'BH', 'Bheri');
INSERT INTO `zone` VALUES (2317, 149, 'DH', 'Dhawalagiri');
INSERT INTO `zone` VALUES (2318, 149, 'GA', 'Gandaki');
INSERT INTO `zone` VALUES (2319, 149, 'JA', 'Janakpur');
INSERT INTO `zone` VALUES (2320, 149, 'KA', 'Karnali');
INSERT INTO `zone` VALUES (2321, 149, 'KO', 'Kosi');
INSERT INTO `zone` VALUES (2322, 149, 'LU', 'Lumbini');
INSERT INTO `zone` VALUES (2323, 149, 'MA', 'Mahakali');
INSERT INTO `zone` VALUES (2324, 149, 'ME', 'Mechi');
INSERT INTO `zone` VALUES (2325, 149, 'NA', 'Narayani');
INSERT INTO `zone` VALUES (2326, 149, 'RA', 'Rapti');
INSERT INTO `zone` VALUES (2327, 149, 'SA', 'Sagarmatha');
INSERT INTO `zone` VALUES (2328, 149, 'SE', 'Seti');
INSERT INTO `zone` VALUES (2329, 150, 'DR', 'Drenthe');
INSERT INTO `zone` VALUES (2330, 150, 'FL', 'Flevoland');
INSERT INTO `zone` VALUES (2331, 150, 'FR', 'Friesland');
INSERT INTO `zone` VALUES (2332, 150, 'GE', 'Gelderland');
INSERT INTO `zone` VALUES (2333, 150, 'GR', 'Groningen');
INSERT INTO `zone` VALUES (2334, 150, 'LI', 'Limburg');
INSERT INTO `zone` VALUES (2335, 150, 'NB', 'Noord Brabant');
INSERT INTO `zone` VALUES (2336, 150, 'NH', 'Noord Holland');
INSERT INTO `zone` VALUES (2337, 150, 'OV', 'Overijssel');
INSERT INTO `zone` VALUES (2338, 150, 'UT', 'Utrecht');
INSERT INTO `zone` VALUES (2339, 150, 'ZE', 'Zeeland');
INSERT INTO `zone` VALUES (2340, 150, 'ZH', 'Zuid Holland');
INSERT INTO `zone` VALUES (2341, 152, 'L', 'Iles Loyaute');
INSERT INTO `zone` VALUES (2342, 152, 'N', 'Nord');
INSERT INTO `zone` VALUES (2343, 152, 'S', 'Sud');
INSERT INTO `zone` VALUES (2344, 153, 'AUK', 'Auckland');
INSERT INTO `zone` VALUES (2345, 153, 'BOP', 'Bay of Plenty');
INSERT INTO `zone` VALUES (2346, 153, 'CAN', 'Canterbury');
INSERT INTO `zone` VALUES (2347, 153, 'COR', 'Coromandel');
INSERT INTO `zone` VALUES (2348, 153, 'GIS', 'Gisborne');
INSERT INTO `zone` VALUES (2349, 153, 'FIO', 'Fiordland');
INSERT INTO `zone` VALUES (2350, 153, 'HKB', 'Hawke''s Bay');
INSERT INTO `zone` VALUES (2351, 153, 'MBH', 'Marlborough');
INSERT INTO `zone` VALUES (2352, 153, 'MWT', 'Manawatu-Wanganui');
INSERT INTO `zone` VALUES (2353, 153, 'MCM', 'Mt Cook-Mackenzie');
INSERT INTO `zone` VALUES (2354, 153, 'NSN', 'Nelson');
INSERT INTO `zone` VALUES (2355, 153, 'NTL', 'Northland');
INSERT INTO `zone` VALUES (2356, 153, 'OTA', 'Otago');
INSERT INTO `zone` VALUES (2357, 153, 'STL', 'Southland');
INSERT INTO `zone` VALUES (2358, 153, 'TKI', 'Taranaki');
INSERT INTO `zone` VALUES (2359, 153, 'WGN', 'Wellington');
INSERT INTO `zone` VALUES (2360, 153, 'WKO', 'Waikato');
INSERT INTO `zone` VALUES (2361, 153, 'WAI', 'Wairprarapa');
INSERT INTO `zone` VALUES (2362, 153, 'WTC', 'West Coast');
INSERT INTO `zone` VALUES (2363, 154, 'AN', 'Atlantico Norte');
INSERT INTO `zone` VALUES (2364, 154, 'AS', 'Atlantico Sur');
INSERT INTO `zone` VALUES (2365, 154, 'BO', 'Boaco');
INSERT INTO `zone` VALUES (2366, 154, 'CA', 'Carazo');
INSERT INTO `zone` VALUES (2367, 154, 'CI', 'Chinandega');
INSERT INTO `zone` VALUES (2368, 154, 'CO', 'Chontales');
INSERT INTO `zone` VALUES (2369, 154, 'ES', 'Esteli');
INSERT INTO `zone` VALUES (2370, 154, 'GR', 'Granada');
INSERT INTO `zone` VALUES (2371, 154, 'JI', 'Jinotega');
INSERT INTO `zone` VALUES (2372, 154, 'LE', 'Leon');
INSERT INTO `zone` VALUES (2373, 154, 'MD', 'Madriz');
INSERT INTO `zone` VALUES (2374, 154, 'MN', 'Managua');
INSERT INTO `zone` VALUES (2375, 154, 'MS', 'Masaya');
INSERT INTO `zone` VALUES (2376, 154, 'MT', 'Matagalpa');
INSERT INTO `zone` VALUES (2377, 154, 'NS', 'Nuevo Segovia');
INSERT INTO `zone` VALUES (2378, 154, 'RS', 'Rio San Juan');
INSERT INTO `zone` VALUES (2379, 154, 'RI', 'Rivas');
INSERT INTO `zone` VALUES (2380, 155, 'AG', 'Agadez');
INSERT INTO `zone` VALUES (2381, 155, 'DF', 'Diffa');
INSERT INTO `zone` VALUES (2382, 155, 'DS', 'Dosso');
INSERT INTO `zone` VALUES (2383, 155, 'MA', 'Maradi');
INSERT INTO `zone` VALUES (2384, 155, 'NM', 'Niamey');
INSERT INTO `zone` VALUES (2385, 155, 'TH', 'Tahoua');
INSERT INTO `zone` VALUES (2386, 155, 'TL', 'Tillaberi');
INSERT INTO `zone` VALUES (2387, 155, 'ZD', 'Zinder');
INSERT INTO `zone` VALUES (2388, 156, 'AB', 'Abia');
INSERT INTO `zone` VALUES (2389, 156, 'CT', 'Abuja Federal Capital Territory');
INSERT INTO `zone` VALUES (2390, 156, 'AD', 'Adamawa');
INSERT INTO `zone` VALUES (2391, 156, 'AK', 'Akwa Ibom');
INSERT INTO `zone` VALUES (2392, 156, 'AN', 'Anambra');
INSERT INTO `zone` VALUES (2393, 156, 'BC', 'Bauchi');
INSERT INTO `zone` VALUES (2394, 156, 'BY', 'Bayelsa');
INSERT INTO `zone` VALUES (2395, 156, 'BN', 'Benue');
INSERT INTO `zone` VALUES (2396, 156, 'BO', 'Borno');
INSERT INTO `zone` VALUES (2397, 156, 'CR', 'Cross River');
INSERT INTO `zone` VALUES (2398, 156, 'DE', 'Delta');
INSERT INTO `zone` VALUES (2399, 156, 'EB', 'Ebonyi');
INSERT INTO `zone` VALUES (2400, 156, 'ED', 'Edo');
INSERT INTO `zone` VALUES (2401, 156, 'EK', 'Ekiti');
INSERT INTO `zone` VALUES (2402, 156, 'EN', 'Enugu');
INSERT INTO `zone` VALUES (2403, 156, 'GO', 'Gombe');
INSERT INTO `zone` VALUES (2404, 156, 'IM', 'Imo');
INSERT INTO `zone` VALUES (2405, 156, 'JI', 'Jigawa');
INSERT INTO `zone` VALUES (2406, 156, 'KD', 'Kaduna');
INSERT INTO `zone` VALUES (2407, 156, 'KN', 'Kano');
INSERT INTO `zone` VALUES (2408, 156, 'KT', 'Katsina');
INSERT INTO `zone` VALUES (2409, 156, 'KE', 'Kebbi');
INSERT INTO `zone` VALUES (2410, 156, 'KO', 'Kogi');
INSERT INTO `zone` VALUES (2411, 156, 'KW', 'Kwara');
INSERT INTO `zone` VALUES (2412, 156, 'LA', 'Lagos');
INSERT INTO `zone` VALUES (2413, 156, 'NA', 'Nassarawa');
INSERT INTO `zone` VALUES (2414, 156, 'NI', 'Niger');
INSERT INTO `zone` VALUES (2415, 156, 'OG', 'Ogun');
INSERT INTO `zone` VALUES (2416, 156, 'ONG', 'Ondo');
INSERT INTO `zone` VALUES (2417, 156, 'OS', 'Osun');
INSERT INTO `zone` VALUES (2418, 156, 'OY', 'Oyo');
INSERT INTO `zone` VALUES (2419, 156, 'PL', 'Plateau');
INSERT INTO `zone` VALUES (2420, 156, 'RI', 'Rivers');
INSERT INTO `zone` VALUES (2421, 156, 'SO', 'Sokoto');
INSERT INTO `zone` VALUES (2422, 156, 'TA', 'Taraba');
INSERT INTO `zone` VALUES (2423, 156, 'YO', 'Yobe');
INSERT INTO `zone` VALUES (2424, 156, 'ZA', 'Zamfara');
INSERT INTO `zone` VALUES (2425, 159, 'N', 'Northern Islands');
INSERT INTO `zone` VALUES (2426, 159, 'R', 'Rota');
INSERT INTO `zone` VALUES (2427, 159, 'S', 'Saipan');
INSERT INTO `zone` VALUES (2428, 159, 'T', 'Tinian');
INSERT INTO `zone` VALUES (2429, 160, 'AK', 'Akershus');
INSERT INTO `zone` VALUES (2430, 160, 'AA', 'Aust-Agder');
INSERT INTO `zone` VALUES (2431, 160, 'BU', 'Buskerud');
INSERT INTO `zone` VALUES (2432, 160, 'FM', 'Finnmark');
INSERT INTO `zone` VALUES (2433, 160, 'HM', 'Hedmark');
INSERT INTO `zone` VALUES (2434, 160, 'HL', 'Hordaland');
INSERT INTO `zone` VALUES (2435, 160, 'MR', 'More og Romdal');
INSERT INTO `zone` VALUES (2436, 160, 'NT', 'Nord-Trondelag');
INSERT INTO `zone` VALUES (2437, 160, 'NL', 'Nordland');
INSERT INTO `zone` VALUES (2438, 160, 'OF', 'Ostfold');
INSERT INTO `zone` VALUES (2439, 160, 'OP', 'Oppland');
INSERT INTO `zone` VALUES (2440, 160, 'OL', 'Oslo');
INSERT INTO `zone` VALUES (2441, 160, 'RL', 'Rogaland');
INSERT INTO `zone` VALUES (2442, 160, 'ST', 'Sor-Trondelag');
INSERT INTO `zone` VALUES (2443, 160, 'SJ', 'Sogn og Fjordane');
INSERT INTO `zone` VALUES (2444, 160, 'SV', 'Svalbard');
INSERT INTO `zone` VALUES (2445, 160, 'TM', 'Telemark');
INSERT INTO `zone` VALUES (2446, 160, 'TR', 'Troms');
INSERT INTO `zone` VALUES (2447, 160, 'VA', 'Vest-Agder');
INSERT INTO `zone` VALUES (2448, 160, 'VF', 'Vestfold');
INSERT INTO `zone` VALUES (2449, 161, 'DA', 'Ad Dakhiliyah');
INSERT INTO `zone` VALUES (2450, 161, 'BA', 'Al Batinah');
INSERT INTO `zone` VALUES (2451, 161, 'WU', 'Al Wusta');
INSERT INTO `zone` VALUES (2452, 161, 'SH', 'Ash Sharqiyah');
INSERT INTO `zone` VALUES (2453, 161, 'ZA', 'Az Zahirah');
INSERT INTO `zone` VALUES (2454, 161, 'MA', 'Masqat');
INSERT INTO `zone` VALUES (2455, 161, 'MU', 'Musandam');
INSERT INTO `zone` VALUES (2456, 161, 'ZU', 'Zufar');
INSERT INTO `zone` VALUES (2457, 162, 'B', 'Balochistan');
INSERT INTO `zone` VALUES (2458, 162, 'T', 'Federally Administered Tribal Ar');
INSERT INTO `zone` VALUES (2459, 162, 'I', 'Islamabad Capital Territory');
INSERT INTO `zone` VALUES (2460, 162, 'N', 'North-West Frontier');
INSERT INTO `zone` VALUES (2461, 162, 'P', 'Punjab');
INSERT INTO `zone` VALUES (2462, 162, 'S', 'Sindh');
INSERT INTO `zone` VALUES (2463, 163, 'AM', 'Aimeliik');
INSERT INTO `zone` VALUES (2464, 163, 'AR', 'Airai');
INSERT INTO `zone` VALUES (2465, 163, 'AN', 'Angaur');
INSERT INTO `zone` VALUES (2466, 163, 'HA', 'Hatohobei');
INSERT INTO `zone` VALUES (2467, 163, 'KA', 'Kayangel');
INSERT INTO `zone` VALUES (2468, 163, 'KO', 'Koror');
INSERT INTO `zone` VALUES (2469, 163, 'ME', 'Melekeok');
INSERT INTO `zone` VALUES (2470, 163, 'NA', 'Ngaraard');
INSERT INTO `zone` VALUES (2471, 163, 'NG', 'Ngarchelong');
INSERT INTO `zone` VALUES (2472, 163, 'ND', 'Ngardmau');
INSERT INTO `zone` VALUES (2473, 163, 'NT', 'Ngatpang');
INSERT INTO `zone` VALUES (2474, 163, 'NC', 'Ngchesar');
INSERT INTO `zone` VALUES (2475, 163, 'NR', 'Ngeremlengui');
INSERT INTO `zone` VALUES (2476, 163, 'NW', 'Ngiwal');
INSERT INTO `zone` VALUES (2477, 163, 'PE', 'Peleliu');
INSERT INTO `zone` VALUES (2478, 163, 'SO', 'Sonsorol');
INSERT INTO `zone` VALUES (2479, 164, 'BT', 'Bocas del Toro');
INSERT INTO `zone` VALUES (2480, 164, 'CH', 'Chiriqui');
INSERT INTO `zone` VALUES (2481, 164, 'CC', 'Cocle');
INSERT INTO `zone` VALUES (2482, 164, 'CL', 'Colon');
INSERT INTO `zone` VALUES (2483, 164, 'DA', 'Darien');
INSERT INTO `zone` VALUES (2484, 164, 'HE', 'Herrera');
INSERT INTO `zone` VALUES (2485, 164, 'LS', 'Los Santos');
INSERT INTO `zone` VALUES (2486, 164, 'PA', 'Panama');
INSERT INTO `zone` VALUES (2487, 164, 'SB', 'San Blas');
INSERT INTO `zone` VALUES (2488, 164, 'VG', 'Veraguas');
INSERT INTO `zone` VALUES (2489, 165, 'BV', 'Bougainville');
INSERT INTO `zone` VALUES (2490, 165, 'CE', 'Central');
INSERT INTO `zone` VALUES (2491, 165, 'CH', 'Chimbu');
INSERT INTO `zone` VALUES (2492, 165, 'EH', 'Eastern Highlands');
INSERT INTO `zone` VALUES (2493, 165, 'EB', 'East New Britain');
INSERT INTO `zone` VALUES (2494, 165, 'ES', 'East Sepik');
INSERT INTO `zone` VALUES (2495, 165, 'EN', 'Enga');
INSERT INTO `zone` VALUES (2496, 165, 'GU', 'Gulf');
INSERT INTO `zone` VALUES (2497, 165, 'MD', 'Madang');
INSERT INTO `zone` VALUES (2498, 165, 'MN', 'Manus');
INSERT INTO `zone` VALUES (2499, 165, 'MB', 'Milne Bay');
INSERT INTO `zone` VALUES (2500, 165, 'MR', 'Morobe');
INSERT INTO `zone` VALUES (2501, 165, 'NC', 'National Capital');
INSERT INTO `zone` VALUES (2502, 165, 'NI', 'New Ireland');
INSERT INTO `zone` VALUES (2503, 165, 'NO', 'Northern');
INSERT INTO `zone` VALUES (2504, 165, 'SA', 'Sandaun');
INSERT INTO `zone` VALUES (2505, 165, 'SH', 'Southern Highlands');
INSERT INTO `zone` VALUES (2506, 165, 'WE', 'Western');
INSERT INTO `zone` VALUES (2507, 165, 'WH', 'Western Highlands');
INSERT INTO `zone` VALUES (2508, 165, 'WB', 'West New Britain');
INSERT INTO `zone` VALUES (2509, 166, 'AG', 'Alto Paraguay');
INSERT INTO `zone` VALUES (2510, 166, 'AN', 'Alto Parana');
INSERT INTO `zone` VALUES (2511, 166, 'AM', 'Amambay');
INSERT INTO `zone` VALUES (2512, 166, 'AS', 'Asuncion');
INSERT INTO `zone` VALUES (2513, 166, 'BO', 'Boqueron');
INSERT INTO `zone` VALUES (2514, 166, 'CG', 'Caaguazu');
INSERT INTO `zone` VALUES (2515, 166, 'CZ', 'Caazapa');
INSERT INTO `zone` VALUES (2516, 166, 'CN', 'Canindeyu');
INSERT INTO `zone` VALUES (2517, 166, 'CE', 'Central');
INSERT INTO `zone` VALUES (2518, 166, 'CC', 'Concepcion');
INSERT INTO `zone` VALUES (2519, 166, 'CD', 'Cordillera');
INSERT INTO `zone` VALUES (2520, 166, 'GU', 'Guaira');
INSERT INTO `zone` VALUES (2521, 166, 'IT', 'Itapua');
INSERT INTO `zone` VALUES (2522, 166, 'MI', 'Misiones');
INSERT INTO `zone` VALUES (2523, 166, 'NE', 'Neembucu');
INSERT INTO `zone` VALUES (2524, 166, 'PA', 'Paraguari');
INSERT INTO `zone` VALUES (2525, 166, 'PH', 'Presidente Hayes');
INSERT INTO `zone` VALUES (2526, 166, 'SP', 'San Pedro');
INSERT INTO `zone` VALUES (2527, 167, 'AM', 'Amazonas');
INSERT INTO `zone` VALUES (2528, 167, 'AN', 'Ancash');
INSERT INTO `zone` VALUES (2529, 167, 'AP', 'Apurimac');
INSERT INTO `zone` VALUES (2530, 167, 'AR', 'Arequipa');
INSERT INTO `zone` VALUES (2531, 167, 'AY', 'Ayacucho');
INSERT INTO `zone` VALUES (2532, 167, 'CJ', 'Cajamarca');
INSERT INTO `zone` VALUES (2533, 167, 'CL', 'Callao');
INSERT INTO `zone` VALUES (2534, 167, 'CU', 'Cusco');
INSERT INTO `zone` VALUES (2535, 167, 'HV', 'Huancavelica');
INSERT INTO `zone` VALUES (2536, 167, 'HO', 'Huanuco');
INSERT INTO `zone` VALUES (2537, 167, 'IC', 'Ica');
INSERT INTO `zone` VALUES (2538, 167, 'JU', 'Junin');
INSERT INTO `zone` VALUES (2539, 167, 'LD', 'La Libertad');
INSERT INTO `zone` VALUES (2540, 167, 'LY', 'Lambayeque');
INSERT INTO `zone` VALUES (2541, 167, 'LI', 'Lima');
INSERT INTO `zone` VALUES (2542, 167, 'LO', 'Loreto');
INSERT INTO `zone` VALUES (2543, 167, 'MD', 'Madre de Dios');
INSERT INTO `zone` VALUES (2544, 167, 'MO', 'Moquegua');
INSERT INTO `zone` VALUES (2545, 167, 'PA', 'Pasco');
INSERT INTO `zone` VALUES (2546, 167, 'PI', 'Piura');
INSERT INTO `zone` VALUES (2547, 167, 'PU', 'Puno');
INSERT INTO `zone` VALUES (2548, 167, 'SM', 'San Martin');
INSERT INTO `zone` VALUES (2549, 167, 'TA', 'Tacna');
INSERT INTO `zone` VALUES (2550, 167, 'TU', 'Tumbes');
INSERT INTO `zone` VALUES (2551, 167, 'UC', 'Ucayali');
INSERT INTO `zone` VALUES (2552, 168, 'ABR', 'Abra');
INSERT INTO `zone` VALUES (2553, 168, 'ANO', 'Agusan del Norte');
INSERT INTO `zone` VALUES (2554, 168, 'ASU', 'Agusan del Sur');
INSERT INTO `zone` VALUES (2555, 168, 'AKL', 'Aklan');
INSERT INTO `zone` VALUES (2556, 168, 'ALB', 'Albay');
INSERT INTO `zone` VALUES (2557, 168, 'ANT', 'Antique');
INSERT INTO `zone` VALUES (2558, 168, 'APY', 'Apayao');
INSERT INTO `zone` VALUES (2559, 168, 'AUR', 'Aurora');
INSERT INTO `zone` VALUES (2560, 168, 'BAS', 'Basilan');
INSERT INTO `zone` VALUES (2561, 168, 'BTA', 'Bataan');
INSERT INTO `zone` VALUES (2562, 168, 'BTE', 'Batanes');
INSERT INTO `zone` VALUES (2563, 168, 'BTG', 'Batangas');
INSERT INTO `zone` VALUES (2564, 168, 'BLR', 'Biliran');
INSERT INTO `zone` VALUES (2565, 168, 'BEN', 'Benguet');
INSERT INTO `zone` VALUES (2566, 168, 'BOL', 'Bohol');
INSERT INTO `zone` VALUES (2567, 168, 'BUK', 'Bukidnon');
INSERT INTO `zone` VALUES (2568, 168, 'BUL', 'Bulacan');
INSERT INTO `zone` VALUES (2569, 168, 'CAG', 'Cagayan');
INSERT INTO `zone` VALUES (2570, 168, 'CNO', 'Camarines Norte');
INSERT INTO `zone` VALUES (2571, 168, 'CSU', 'Camarines Sur');
INSERT INTO `zone` VALUES (2572, 168, 'CAM', 'Camiguin');
INSERT INTO `zone` VALUES (2573, 168, 'CAP', 'Capiz');
INSERT INTO `zone` VALUES (2574, 168, 'CAT', 'Catanduanes');
INSERT INTO `zone` VALUES (2575, 168, 'CAV', 'Cavite');
INSERT INTO `zone` VALUES (2576, 168, 'CEB', 'Cebu');
INSERT INTO `zone` VALUES (2577, 168, 'CMP', 'Compostela');
INSERT INTO `zone` VALUES (2578, 168, 'DNO', 'Davao del Norte');
INSERT INTO `zone` VALUES (2579, 168, 'DSU', 'Davao del Sur');
INSERT INTO `zone` VALUES (2580, 168, 'DOR', 'Davao Oriental');
INSERT INTO `zone` VALUES (2581, 168, 'ESA', 'Eastern Samar');
INSERT INTO `zone` VALUES (2582, 168, 'GUI', 'Guimaras');
INSERT INTO `zone` VALUES (2583, 168, 'IFU', 'Ifugao');
INSERT INTO `zone` VALUES (2584, 168, 'INO', 'Ilocos Norte');
INSERT INTO `zone` VALUES (2585, 168, 'ISU', 'Ilocos Sur');
INSERT INTO `zone` VALUES (2586, 168, 'ILO', 'Iloilo');
INSERT INTO `zone` VALUES (2587, 168, 'ISA', 'Isabela');
INSERT INTO `zone` VALUES (2588, 168, 'KAL', 'Kalinga');
INSERT INTO `zone` VALUES (2589, 168, 'LAG', 'Laguna');
INSERT INTO `zone` VALUES (2590, 168, 'LNO', 'Lanao del Norte');
INSERT INTO `zone` VALUES (2591, 168, 'LSU', 'Lanao del Sur');
INSERT INTO `zone` VALUES (2592, 168, 'UNI', 'La Union');
INSERT INTO `zone` VALUES (2593, 168, 'LEY', 'Leyte');
INSERT INTO `zone` VALUES (2594, 168, 'MAG', 'Maguindanao');
INSERT INTO `zone` VALUES (2595, 168, 'MRN', 'Marinduque');
INSERT INTO `zone` VALUES (2596, 168, 'MSB', 'Masbate');
INSERT INTO `zone` VALUES (2597, 168, 'MIC', 'Mindoro Occidental');
INSERT INTO `zone` VALUES (2598, 168, 'MIR', 'Mindoro Oriental');
INSERT INTO `zone` VALUES (2599, 168, 'MSC', 'Misamis Occidental');
INSERT INTO `zone` VALUES (2600, 168, 'MOR', 'Misamis Oriental');
INSERT INTO `zone` VALUES (2601, 168, 'MOP', 'Mountain');
INSERT INTO `zone` VALUES (2602, 168, 'NOC', 'Negros Occidental');
INSERT INTO `zone` VALUES (2603, 168, 'NOR', 'Negros Oriental');
INSERT INTO `zone` VALUES (2604, 168, 'NCT', 'North Cotabato');
INSERT INTO `zone` VALUES (2605, 168, 'NSM', 'Northern Samar');
INSERT INTO `zone` VALUES (2606, 168, 'NEC', 'Nueva Ecija');
INSERT INTO `zone` VALUES (2607, 168, 'NVZ', 'Nueva Vizcaya');
INSERT INTO `zone` VALUES (2608, 168, 'PLW', 'Palawan');
INSERT INTO `zone` VALUES (2609, 168, 'PMP', 'Pampanga');
INSERT INTO `zone` VALUES (2610, 168, 'PNG', 'Pangasinan');
INSERT INTO `zone` VALUES (2611, 168, 'QZN', 'Quezon');
INSERT INTO `zone` VALUES (2612, 168, 'QRN', 'Quirino');
INSERT INTO `zone` VALUES (2613, 168, 'RIZ', 'Rizal');
INSERT INTO `zone` VALUES (2614, 168, 'ROM', 'Romblon');
INSERT INTO `zone` VALUES (2615, 168, 'SMR', 'Samar');
INSERT INTO `zone` VALUES (2616, 168, 'SRG', 'Sarangani');
INSERT INTO `zone` VALUES (2617, 168, 'SQJ', 'Siquijor');
INSERT INTO `zone` VALUES (2618, 168, 'SRS', 'Sorsogon');
INSERT INTO `zone` VALUES (2619, 168, 'SCO', 'South Cotabato');
INSERT INTO `zone` VALUES (2620, 168, 'SLE', 'Southern Leyte');
INSERT INTO `zone` VALUES (2621, 168, 'SKU', 'Sultan Kudarat');
INSERT INTO `zone` VALUES (2622, 168, 'SLU', 'Sulu');
INSERT INTO `zone` VALUES (2623, 168, 'SNO', 'Surigao del Norte');
INSERT INTO `zone` VALUES (2624, 168, 'SSU', 'Surigao del Sur');
INSERT INTO `zone` VALUES (2625, 168, 'TAR', 'Tarlac');
INSERT INTO `zone` VALUES (2626, 168, 'TAW', 'Tawi-Tawi');
INSERT INTO `zone` VALUES (2627, 168, 'ZBL', 'Zambales');
INSERT INTO `zone` VALUES (2628, 168, 'ZNO', 'Zamboanga del Norte');
INSERT INTO `zone` VALUES (2629, 168, 'ZSU', 'Zamboanga del Sur');
INSERT INTO `zone` VALUES (2630, 168, 'ZSI', 'Zamboanga Sibugay');
INSERT INTO `zone` VALUES (2631, 170, 'DO', 'Dolnoslaskie');
INSERT INTO `zone` VALUES (2632, 170, 'KP', 'Kujawsko-Pomorskie');
INSERT INTO `zone` VALUES (2633, 170, 'LO', 'Lodzkie');
INSERT INTO `zone` VALUES (2634, 170, 'LL', 'Lubelskie');
INSERT INTO `zone` VALUES (2635, 170, 'LU', 'Lubuskie');
INSERT INTO `zone` VALUES (2636, 170, 'ML', 'Malopolskie');
INSERT INTO `zone` VALUES (2637, 170, 'MZ', 'Mazowieckie');
INSERT INTO `zone` VALUES (2638, 170, 'OP', 'Opolskie');
INSERT INTO `zone` VALUES (2639, 170, 'PP', 'Podkarpackie');
INSERT INTO `zone` VALUES (2640, 170, 'PL', 'Podlaskie');
INSERT INTO `zone` VALUES (2641, 170, 'PM', 'Pomorskie');
INSERT INTO `zone` VALUES (2642, 170, 'SL', 'Slaskie');
INSERT INTO `zone` VALUES (2643, 170, 'SW', 'Swietokrzyskie');
INSERT INTO `zone` VALUES (2644, 170, 'WM', 'Warminsko-Mazurskie');
INSERT INTO `zone` VALUES (2645, 170, 'WP', 'Wielkopolskie');
INSERT INTO `zone` VALUES (2646, 170, 'ZA', 'Zachodniopomorskie');
INSERT INTO `zone` VALUES (2647, 198, 'P', 'Saint Pierre');
INSERT INTO `zone` VALUES (2648, 198, 'M', 'Miquelon');
INSERT INTO `zone` VALUES (2649, 171, 'AC', 'AÃƒÆ’Ã‚Â§ores');
INSERT INTO `zone` VALUES (2650, 171, 'AV', 'Aveiro');
INSERT INTO `zone` VALUES (2651, 171, 'BE', 'Beja');
INSERT INTO `zone` VALUES (2652, 171, 'BR', 'Braga');
INSERT INTO `zone` VALUES (2653, 171, 'BA', 'BraganÃƒÆ’Ã‚Â§a');
INSERT INTO `zone` VALUES (2654, 171, 'CB', 'Castelo Branco');
INSERT INTO `zone` VALUES (2655, 171, 'CO', 'Coimbra');
INSERT INTO `zone` VALUES (2656, 171, 'EV', 'ÃƒÆ’Ã‚Â©;vora');
INSERT INTO `zone` VALUES (2657, 171, 'FA', 'Faro');
INSERT INTO `zone` VALUES (2658, 171, 'GU', 'Guarda');
INSERT INTO `zone` VALUES (2659, 171, 'LE', 'Leiria');
INSERT INTO `zone` VALUES (2660, 171, 'LI', 'Lisboa');
INSERT INTO `zone` VALUES (2661, 171, 'ME', 'Madeira');
INSERT INTO `zone` VALUES (2662, 171, 'PO', 'Portalegre');
INSERT INTO `zone` VALUES (2663, 171, 'PR', 'Porto');
INSERT INTO `zone` VALUES (2664, 171, 'SA', 'SantarÃƒÆ’Ã‚Â©;m');
INSERT INTO `zone` VALUES (2665, 171, 'SE', 'SetÃƒÆ’Ã‚Âºbal');
INSERT INTO `zone` VALUES (2666, 171, 'VC', 'Viana do Castelo');
INSERT INTO `zone` VALUES (2667, 171, 'VR', 'Vila Real');
INSERT INTO `zone` VALUES (2668, 171, 'VI', 'Viseu');
INSERT INTO `zone` VALUES (2669, 173, 'DW', 'Ad Dawhah');
INSERT INTO `zone` VALUES (2670, 173, 'GW', 'Al Ghuwayriyah');
INSERT INTO `zone` VALUES (2671, 173, 'JM', 'Al Jumayliyah');
INSERT INTO `zone` VALUES (2672, 173, 'KR', 'Al Khawr');
INSERT INTO `zone` VALUES (2673, 173, 'WK', 'Al Wakrah');
INSERT INTO `zone` VALUES (2674, 173, 'RN', 'Ar Rayyan');
INSERT INTO `zone` VALUES (2675, 173, 'JB', 'Jarayan al Batinah');
INSERT INTO `zone` VALUES (2676, 173, 'MS', 'Madinat ash Shamal');
INSERT INTO `zone` VALUES (2677, 173, 'UD', 'Umm Sa''id');
INSERT INTO `zone` VALUES (2678, 173, 'UL', 'Umm Salal');
INSERT INTO `zone` VALUES (2679, 175, 'AB', 'Alba');
INSERT INTO `zone` VALUES (2680, 175, 'AR', 'Arad');
INSERT INTO `zone` VALUES (2681, 175, 'AG', 'Arges');
INSERT INTO `zone` VALUES (2682, 175, 'BC', 'Bacau');
INSERT INTO `zone` VALUES (2683, 175, 'BH', 'Bihor');
INSERT INTO `zone` VALUES (2684, 175, 'BN', 'Bistrita-Nasaud');
INSERT INTO `zone` VALUES (2685, 175, 'BT', 'Botosani');
INSERT INTO `zone` VALUES (2686, 175, 'BV', 'Brasov');
INSERT INTO `zone` VALUES (2687, 175, 'BR', 'Braila');
INSERT INTO `zone` VALUES (2688, 175, 'B', 'Bucuresti');
INSERT INTO `zone` VALUES (2689, 175, 'BZ', 'Buzau');
INSERT INTO `zone` VALUES (2690, 175, 'CS', 'Caras-Severin');
INSERT INTO `zone` VALUES (2691, 175, 'CL', 'Calarasi');
INSERT INTO `zone` VALUES (2692, 175, 'CJ', 'Cluj');
INSERT INTO `zone` VALUES (2693, 175, 'CT', 'Constanta');
INSERT INTO `zone` VALUES (2694, 175, 'CV', 'Covasna');
INSERT INTO `zone` VALUES (2695, 175, 'DB', 'Dimbovita');
INSERT INTO `zone` VALUES (2696, 175, 'DJ', 'Dolj');
INSERT INTO `zone` VALUES (2697, 175, 'GL', 'Galati');
INSERT INTO `zone` VALUES (2698, 175, 'GR', 'Giurgiu');
INSERT INTO `zone` VALUES (2699, 175, 'GJ', 'Gorj');
INSERT INTO `zone` VALUES (2700, 175, 'HR', 'Harghita');
INSERT INTO `zone` VALUES (2701, 175, 'HD', 'Hunedoara');
INSERT INTO `zone` VALUES (2702, 175, 'IL', 'Ialomita');
INSERT INTO `zone` VALUES (2703, 175, 'IS', 'Iasi');
INSERT INTO `zone` VALUES (2704, 175, 'IF', 'Ilfov');
INSERT INTO `zone` VALUES (2705, 175, 'MM', 'Maramures');
INSERT INTO `zone` VALUES (2706, 175, 'MH', 'Mehedinti');
INSERT INTO `zone` VALUES (2707, 175, 'MS', 'Mures');
INSERT INTO `zone` VALUES (2708, 175, 'NT', 'Neamt');
INSERT INTO `zone` VALUES (2709, 175, 'OT', 'Olt');
INSERT INTO `zone` VALUES (2710, 175, 'PH', 'Prahova');
INSERT INTO `zone` VALUES (2711, 175, 'SM', 'Satu-Mare');
INSERT INTO `zone` VALUES (2712, 175, 'SJ', 'Salaj');
INSERT INTO `zone` VALUES (2713, 175, 'SB', 'Sibiu');
INSERT INTO `zone` VALUES (2714, 175, 'SV', 'Suceava');
INSERT INTO `zone` VALUES (2715, 175, 'TR', 'Teleorman');
INSERT INTO `zone` VALUES (2716, 175, 'TM', 'Timis');
INSERT INTO `zone` VALUES (2717, 175, 'TL', 'Tulcea');
INSERT INTO `zone` VALUES (2718, 175, 'VS', 'Vaslui');
INSERT INTO `zone` VALUES (2719, 175, 'VL', 'Valcea');
INSERT INTO `zone` VALUES (2720, 175, 'VN', 'Vrancea');
INSERT INTO `zone` VALUES (2721, 176, 'AB', 'Abakan');
INSERT INTO `zone` VALUES (2722, 176, 'AG', 'Aginskoye');
INSERT INTO `zone` VALUES (2723, 176, 'AN', 'Anadyr');
INSERT INTO `zone` VALUES (2724, 176, 'AR', 'Arkahangelsk');
INSERT INTO `zone` VALUES (2725, 176, 'AS', 'Astrakhan');
INSERT INTO `zone` VALUES (2726, 176, 'BA', 'Barnaul');
INSERT INTO `zone` VALUES (2727, 176, 'BE', 'Belgorod');
INSERT INTO `zone` VALUES (2728, 176, 'BI', 'Birobidzhan');
INSERT INTO `zone` VALUES (2729, 176, 'BL', 'Blagoveshchensk');
INSERT INTO `zone` VALUES (2730, 176, 'BR', 'Bryansk');
INSERT INTO `zone` VALUES (2731, 176, 'CH', 'Cheboksary');
INSERT INTO `zone` VALUES (2732, 176, 'CL', 'Chelyabinsk');
INSERT INTO `zone` VALUES (2733, 176, 'CR', 'Cherkessk');
INSERT INTO `zone` VALUES (2734, 176, 'CI', 'Chita');
INSERT INTO `zone` VALUES (2735, 176, 'DU', 'Dudinka');
INSERT INTO `zone` VALUES (2736, 176, 'EL', 'Elista');
INSERT INTO `zone` VALUES (2737, 176, 'GO', 'Gomo-Altaysk');
INSERT INTO `zone` VALUES (2738, 176, 'GA', 'Gorno-Altaysk');
INSERT INTO `zone` VALUES (2739, 176, 'GR', 'Groznyy');
INSERT INTO `zone` VALUES (2740, 176, 'IR', 'Irkutsk');
INSERT INTO `zone` VALUES (2741, 176, 'IV', 'Ivanovo');
INSERT INTO `zone` VALUES (2742, 176, 'IZ', 'Izhevsk');
INSERT INTO `zone` VALUES (2743, 176, 'KA', 'Kalinigrad');
INSERT INTO `zone` VALUES (2744, 176, 'KL', 'Kaluga');
INSERT INTO `zone` VALUES (2745, 176, 'KS', 'Kasnodar');
INSERT INTO `zone` VALUES (2746, 176, 'KZ', 'Kazan');
INSERT INTO `zone` VALUES (2747, 176, 'KE', 'Kemerovo');
INSERT INTO `zone` VALUES (2748, 176, 'KH', 'Khabarovsk');
INSERT INTO `zone` VALUES (2749, 176, 'KM', 'Khanty-Mansiysk');
INSERT INTO `zone` VALUES (2750, 176, 'KO', 'Kostroma');
INSERT INTO `zone` VALUES (2751, 176, 'KR', 'Krasnodar');
INSERT INTO `zone` VALUES (2752, 176, 'KN', 'Krasnoyarsk');
INSERT INTO `zone` VALUES (2753, 176, 'KU', 'Kudymkar');
INSERT INTO `zone` VALUES (2754, 176, 'KG', 'Kurgan');
INSERT INTO `zone` VALUES (2755, 176, 'KK', 'Kursk');
INSERT INTO `zone` VALUES (2756, 176, 'KY', 'Kyzyl');
INSERT INTO `zone` VALUES (2757, 176, 'LI', 'Lipetsk');
INSERT INTO `zone` VALUES (2758, 176, 'MA', 'Magadan');
INSERT INTO `zone` VALUES (2759, 176, 'MK', 'Makhachkala');
INSERT INTO `zone` VALUES (2760, 176, 'MY', 'Maykop');
INSERT INTO `zone` VALUES (2761, 176, 'MO', 'Moscow');
INSERT INTO `zone` VALUES (2762, 176, 'MU', 'Murmansk');
INSERT INTO `zone` VALUES (2763, 176, 'NA', 'Nalchik');
INSERT INTO `zone` VALUES (2764, 176, 'NR', 'Naryan Mar');
INSERT INTO `zone` VALUES (2765, 176, 'NZ', 'Nazran');
INSERT INTO `zone` VALUES (2766, 176, 'NI', 'Nizhniy Novgorod');
INSERT INTO `zone` VALUES (2767, 176, 'NO', 'Novgorod');
INSERT INTO `zone` VALUES (2768, 176, 'NV', 'Novosibirsk');
INSERT INTO `zone` VALUES (2769, 176, 'OM', 'Omsk');
INSERT INTO `zone` VALUES (2770, 176, 'OR', 'Orel');
INSERT INTO `zone` VALUES (2771, 176, 'OE', 'Orenburg');
INSERT INTO `zone` VALUES (2772, 176, 'PA', 'Palana');
INSERT INTO `zone` VALUES (2773, 176, 'PE', 'Penza');
INSERT INTO `zone` VALUES (2774, 176, 'PR', 'Perm');
INSERT INTO `zone` VALUES (2775, 176, 'PK', 'Petropavlovsk-Kamchatskiy');
INSERT INTO `zone` VALUES (2776, 176, 'PT', 'Petrozavodsk');
INSERT INTO `zone` VALUES (2777, 176, 'PS', 'Pskov');
INSERT INTO `zone` VALUES (2778, 176, 'RO', 'Rostov-na-Donu');
INSERT INTO `zone` VALUES (2779, 176, 'RY', 'Ryazan');
INSERT INTO `zone` VALUES (2780, 176, 'SL', 'Salekhard');
INSERT INTO `zone` VALUES (2781, 176, 'SA', 'Samara');
INSERT INTO `zone` VALUES (2782, 176, 'SR', 'Saransk');
INSERT INTO `zone` VALUES (2783, 176, 'SV', 'Saratov');
INSERT INTO `zone` VALUES (2784, 176, 'SM', 'Smolensk');
INSERT INTO `zone` VALUES (2785, 176, 'SP', 'St. Petersburg');
INSERT INTO `zone` VALUES (2786, 176, 'ST', 'Stavropol');
INSERT INTO `zone` VALUES (2787, 176, 'SY', 'Syktyvkar');
INSERT INTO `zone` VALUES (2788, 176, 'TA', 'Tambov');
INSERT INTO `zone` VALUES (2789, 176, 'TO', 'Tomsk');
INSERT INTO `zone` VALUES (2790, 176, 'TU', 'Tula');
INSERT INTO `zone` VALUES (2791, 176, 'TR', 'Tura');
INSERT INTO `zone` VALUES (2792, 176, 'TV', 'Tver');
INSERT INTO `zone` VALUES (2793, 176, 'TY', 'Tyumen');
INSERT INTO `zone` VALUES (2794, 176, 'UF', 'Ufa');
INSERT INTO `zone` VALUES (2795, 176, 'UL', 'Ul''yanovsk');
INSERT INTO `zone` VALUES (2796, 176, 'UU', 'Ulan-Ude');
INSERT INTO `zone` VALUES (2797, 176, 'US', 'Ust''-Ordynskiy');
INSERT INTO `zone` VALUES (2798, 176, 'VL', 'Vladikavkaz');
INSERT INTO `zone` VALUES (2799, 176, 'VA', 'Vladimir');
INSERT INTO `zone` VALUES (2800, 176, 'VV', 'Vladivostok');
INSERT INTO `zone` VALUES (2801, 176, 'VG', 'Volgograd');
INSERT INTO `zone` VALUES (2802, 176, 'VD', 'Vologda');
INSERT INTO `zone` VALUES (2803, 176, 'VO', 'Voronezh');
INSERT INTO `zone` VALUES (2804, 176, 'VY', 'Vyatka');
INSERT INTO `zone` VALUES (2805, 176, 'YA', 'Yakutsk');
INSERT INTO `zone` VALUES (2806, 176, 'YR', 'Yaroslavl');
INSERT INTO `zone` VALUES (2807, 176, 'YE', 'Yekaterinburg');
INSERT INTO `zone` VALUES (2808, 176, 'YO', 'Yoshkar-Ola');
INSERT INTO `zone` VALUES (2809, 177, 'BU', 'Butare');
INSERT INTO `zone` VALUES (2810, 177, 'BY', 'Byumba');
INSERT INTO `zone` VALUES (2811, 177, 'CY', 'Cyangugu');
INSERT INTO `zone` VALUES (2812, 177, 'GK', 'Gikongoro');
INSERT INTO `zone` VALUES (2813, 177, 'GS', 'Gisenyi');
INSERT INTO `zone` VALUES (2814, 177, 'GT', 'Gitarama');
INSERT INTO `zone` VALUES (2815, 177, 'KG', 'Kibungo');
INSERT INTO `zone` VALUES (2816, 177, 'KY', 'Kibuye');
INSERT INTO `zone` VALUES (2817, 177, 'KR', 'Kigali Rurale');
INSERT INTO `zone` VALUES (2818, 177, 'KV', 'Kigali-ville');
INSERT INTO `zone` VALUES (2819, 177, 'RU', 'Ruhengeri');
INSERT INTO `zone` VALUES (2820, 177, 'UM', 'Umutara');
INSERT INTO `zone` VALUES (2821, 178, 'CCN', 'Christ Church Nichola Town');
INSERT INTO `zone` VALUES (2822, 178, 'SAS', 'Saint Anne Sandy Point');
INSERT INTO `zone` VALUES (2823, 178, 'SGB', 'Saint George Basseterre');
INSERT INTO `zone` VALUES (2824, 178, 'SGG', 'Saint George Gingerland');
INSERT INTO `zone` VALUES (2825, 178, 'SJW', 'Saint James Windward');
INSERT INTO `zone` VALUES (2826, 178, 'SJC', 'Saint John Capesterre');
INSERT INTO `zone` VALUES (2827, 178, 'SJF', 'Saint John Figtree');
INSERT INTO `zone` VALUES (2828, 178, 'SMC', 'Saint Mary Cayon');
INSERT INTO `zone` VALUES (2829, 178, 'CAP', 'Saint Paul Capesterre');
INSERT INTO `zone` VALUES (2830, 178, 'CHA', 'Saint Paul Charlestown');
INSERT INTO `zone` VALUES (2831, 178, 'SPB', 'Saint Peter Basseterre');
INSERT INTO `zone` VALUES (2832, 178, 'STL', 'Saint Thomas Lowland');
INSERT INTO `zone` VALUES (2833, 178, 'STM', 'Saint Thomas Middle Island');
INSERT INTO `zone` VALUES (2834, 178, 'TPP', 'Trinity Palmetto Point');
INSERT INTO `zone` VALUES (2835, 179, 'AR', 'Anse-la-Raye');
INSERT INTO `zone` VALUES (2836, 179, 'CA', 'Castries');
INSERT INTO `zone` VALUES (2837, 179, 'CH', 'Choiseul');
INSERT INTO `zone` VALUES (2838, 179, 'DA', 'Dauphin');
INSERT INTO `zone` VALUES (2839, 179, 'DE', 'Dennery');
INSERT INTO `zone` VALUES (2840, 179, 'GI', 'Gros-Islet');
INSERT INTO `zone` VALUES (2841, 179, 'LA', 'Laborie');
INSERT INTO `zone` VALUES (2842, 179, 'MI', 'Micoud');
INSERT INTO `zone` VALUES (2843, 179, 'PR', 'Praslin');
INSERT INTO `zone` VALUES (2844, 179, 'SO', 'Soufriere');
INSERT INTO `zone` VALUES (2845, 179, 'VF', 'Vieux-Fort');
INSERT INTO `zone` VALUES (2846, 180, 'C', 'Charlotte');
INSERT INTO `zone` VALUES (2847, 180, 'R', 'Grenadines');
INSERT INTO `zone` VALUES (2848, 180, 'A', 'Saint Andrew');
INSERT INTO `zone` VALUES (2849, 180, 'D', 'Saint David');
INSERT INTO `zone` VALUES (2850, 180, 'G', 'Saint George');
INSERT INTO `zone` VALUES (2851, 180, 'P', 'Saint Patrick');
INSERT INTO `zone` VALUES (2852, 181, 'AN', 'A''ana');
INSERT INTO `zone` VALUES (2853, 181, 'AI', 'Aiga-i-le-Tai');
INSERT INTO `zone` VALUES (2854, 181, 'AT', 'Atua');
INSERT INTO `zone` VALUES (2855, 181, 'FA', 'Fa''asaleleaga');
INSERT INTO `zone` VALUES (2856, 181, 'GE', 'Gaga''emauga');
INSERT INTO `zone` VALUES (2857, 181, 'GF', 'Gagaifomauga');
INSERT INTO `zone` VALUES (2858, 181, 'PA', 'Palauli');
INSERT INTO `zone` VALUES (2859, 181, 'SA', 'Satupa''itea');
INSERT INTO `zone` VALUES (2860, 181, 'TU', 'Tuamasaga');
INSERT INTO `zone` VALUES (2861, 181, 'VF', 'Va''a-o-Fonoti');
INSERT INTO `zone` VALUES (2862, 181, 'VS', 'Vaisigano');
INSERT INTO `zone` VALUES (2863, 182, 'AC', 'Acquaviva');
INSERT INTO `zone` VALUES (2864, 182, 'BM', 'Borgo Maggiore');
INSERT INTO `zone` VALUES (2865, 182, 'CH', 'Chiesanuova');
INSERT INTO `zone` VALUES (2866, 182, 'DO', 'Domagnano');
INSERT INTO `zone` VALUES (2867, 182, 'FA', 'Faetano');
INSERT INTO `zone` VALUES (2868, 182, 'FI', 'Fiorentino');
INSERT INTO `zone` VALUES (2869, 182, 'MO', 'Montegiardino');
INSERT INTO `zone` VALUES (2870, 182, 'SM', 'Citta di San Marino');
INSERT INTO `zone` VALUES (2871, 182, 'SE', 'Serravalle');
INSERT INTO `zone` VALUES (2872, 183, 'S', 'Sao Tome');
INSERT INTO `zone` VALUES (2873, 183, 'P', 'Principe');
INSERT INTO `zone` VALUES (2874, 184, 'BH', 'Al Bahah');
INSERT INTO `zone` VALUES (2875, 184, 'HS', 'Al Hudud ash Shamaliyah');
INSERT INTO `zone` VALUES (2876, 184, 'JF', 'Al Jawf');
INSERT INTO `zone` VALUES (2877, 184, 'MD', 'Al Madinah');
INSERT INTO `zone` VALUES (2878, 184, 'QS', 'Al Qasim');
INSERT INTO `zone` VALUES (2879, 184, 'RD', 'Ar Riyad');
INSERT INTO `zone` VALUES (2880, 184, 'AQ', 'Ash Sharqiyah (Eastern)');
INSERT INTO `zone` VALUES (2881, 184, 'AS', '''Asir');
INSERT INTO `zone` VALUES (2882, 184, 'HL', 'Ha''il');
INSERT INTO `zone` VALUES (2883, 184, 'JZ', 'Jizan');
INSERT INTO `zone` VALUES (2884, 184, 'ML', 'Makkah');
INSERT INTO `zone` VALUES (2885, 184, 'NR', 'Najran');
INSERT INTO `zone` VALUES (2886, 184, 'TB', 'Tabuk');
INSERT INTO `zone` VALUES (2887, 185, 'DA', 'Dakar');
INSERT INTO `zone` VALUES (2888, 185, 'DI', 'Diourbel');
INSERT INTO `zone` VALUES (2889, 185, 'FA', 'Fatick');
INSERT INTO `zone` VALUES (2890, 185, 'KA', 'Kaolack');
INSERT INTO `zone` VALUES (2891, 185, 'KO', 'Kolda');
INSERT INTO `zone` VALUES (2892, 185, 'LO', 'Louga');
INSERT INTO `zone` VALUES (2893, 185, 'MA', 'Matam');
INSERT INTO `zone` VALUES (2894, 185, 'SL', 'Saint-Louis');
INSERT INTO `zone` VALUES (2895, 185, 'TA', 'Tambacounda');
INSERT INTO `zone` VALUES (2896, 185, 'TH', 'Thies');
INSERT INTO `zone` VALUES (2897, 185, 'ZI', 'Ziguinchor');
INSERT INTO `zone` VALUES (2898, 186, 'AP', 'Anse aux Pins');
INSERT INTO `zone` VALUES (2899, 186, 'AB', 'Anse Boileau');
INSERT INTO `zone` VALUES (2900, 186, 'AE', 'Anse Etoile');
INSERT INTO `zone` VALUES (2901, 186, 'AL', 'Anse Louis');
INSERT INTO `zone` VALUES (2902, 186, 'AR', 'Anse Royale');
INSERT INTO `zone` VALUES (2903, 186, 'BL', 'Baie Lazare');
INSERT INTO `zone` VALUES (2904, 186, 'BS', 'Baie Sainte Anne');
INSERT INTO `zone` VALUES (2905, 186, 'BV', 'Beau Vallon');
INSERT INTO `zone` VALUES (2906, 186, 'BA', 'Bel Air');
INSERT INTO `zone` VALUES (2907, 186, 'BO', 'Bel Ombre');
INSERT INTO `zone` VALUES (2908, 186, 'CA', 'Cascade');
INSERT INTO `zone` VALUES (2909, 186, 'GL', 'Glacis');
INSERT INTO `zone` VALUES (2910, 186, 'GM', 'Grand'' Anse (on Mahe)');
INSERT INTO `zone` VALUES (2911, 186, 'GP', 'Grand'' Anse (on Praslin)');
INSERT INTO `zone` VALUES (2912, 186, 'DG', 'La Digue');
INSERT INTO `zone` VALUES (2913, 186, 'RA', 'La Riviere Anglaise');
INSERT INTO `zone` VALUES (2914, 186, 'MB', 'Mont Buxton');
INSERT INTO `zone` VALUES (2915, 186, 'MF', 'Mont Fleuri');
INSERT INTO `zone` VALUES (2916, 186, 'PL', 'Plaisance');
INSERT INTO `zone` VALUES (2917, 186, 'PR', 'Pointe La Rue');
INSERT INTO `zone` VALUES (2918, 186, 'PG', 'Port Glaud');
INSERT INTO `zone` VALUES (2919, 186, 'SL', 'Saint Louis');
INSERT INTO `zone` VALUES (2920, 186, 'TA', 'Takamaka');
INSERT INTO `zone` VALUES (2921, 187, 'E', 'Eastern');
INSERT INTO `zone` VALUES (2922, 187, 'N', 'Northern');
INSERT INTO `zone` VALUES (2923, 187, 'S', 'Southern');
INSERT INTO `zone` VALUES (2924, 187, 'W', 'Western');
INSERT INTO `zone` VALUES (2925, 189, 'BA', 'Banskobystricky');
INSERT INTO `zone` VALUES (2926, 189, 'BR', 'Bratislavsky');
INSERT INTO `zone` VALUES (2927, 189, 'KO', 'Kosicky');
INSERT INTO `zone` VALUES (2928, 189, 'NI', 'Nitriansky');
INSERT INTO `zone` VALUES (2929, 189, 'PR', 'Presovsky');
INSERT INTO `zone` VALUES (2930, 189, 'TC', 'Trenciansky');
INSERT INTO `zone` VALUES (2931, 189, 'TV', 'Trnavsky');
INSERT INTO `zone` VALUES (2932, 189, 'ZI', 'Zilinsky');
INSERT INTO `zone` VALUES (2933, 191, 'CE', 'Central');
INSERT INTO `zone` VALUES (2934, 191, 'CH', 'Choiseul');
INSERT INTO `zone` VALUES (2935, 191, 'GC', 'Guadalcanal');
INSERT INTO `zone` VALUES (2936, 191, 'HO', 'Honiara');
INSERT INTO `zone` VALUES (2937, 191, 'IS', 'Isabel');
INSERT INTO `zone` VALUES (2938, 191, 'MK', 'Makira');
INSERT INTO `zone` VALUES (2939, 191, 'ML', 'Malaita');
INSERT INTO `zone` VALUES (2940, 191, 'RB', 'Rennell and Bellona');
INSERT INTO `zone` VALUES (2941, 191, 'TM', 'Temotu');
INSERT INTO `zone` VALUES (2942, 191, 'WE', 'Western');
INSERT INTO `zone` VALUES (2943, 192, 'AW', 'Awdal');
INSERT INTO `zone` VALUES (2944, 192, 'BK', 'Bakool');
INSERT INTO `zone` VALUES (2945, 192, 'BN', 'Banaadir');
INSERT INTO `zone` VALUES (2946, 192, 'BR', 'Bari');
INSERT INTO `zone` VALUES (2947, 192, 'BY', 'Bay');
INSERT INTO `zone` VALUES (2948, 192, 'GA', 'Galguduud');
INSERT INTO `zone` VALUES (2949, 192, 'GE', 'Gedo');
INSERT INTO `zone` VALUES (2950, 192, 'HI', 'Hiiraan');
INSERT INTO `zone` VALUES (2951, 192, 'JD', 'Jubbada Dhexe');
INSERT INTO `zone` VALUES (2952, 192, 'JH', 'Jubbada Hoose');
INSERT INTO `zone` VALUES (2953, 192, 'MU', 'Mudug');
INSERT INTO `zone` VALUES (2954, 192, 'NU', 'Nugaal');
INSERT INTO `zone` VALUES (2955, 192, 'SA', 'Sanaag');
INSERT INTO `zone` VALUES (2956, 192, 'SD', 'Shabeellaha Dhexe');
INSERT INTO `zone` VALUES (2957, 192, 'SH', 'Shabeellaha Hoose');
INSERT INTO `zone` VALUES (2958, 192, 'SL', 'Sool');
INSERT INTO `zone` VALUES (2959, 192, 'TO', 'Togdheer');
INSERT INTO `zone` VALUES (2960, 192, 'WG', 'Woqooyi Galbeed');
INSERT INTO `zone` VALUES (2961, 193, 'EC', 'Eastern Cape');
INSERT INTO `zone` VALUES (2962, 193, 'FS', 'Free State');
INSERT INTO `zone` VALUES (2963, 193, 'GT', 'Gauteng');
INSERT INTO `zone` VALUES (2964, 193, 'KN', 'KwaZulu-Natal');
INSERT INTO `zone` VALUES (2965, 193, 'LP', 'Limpopo');
INSERT INTO `zone` VALUES (2966, 193, 'MP', 'Mpumalanga');
INSERT INTO `zone` VALUES (2967, 193, 'NW', 'North West');
INSERT INTO `zone` VALUES (2968, 193, 'NC', 'Northern Cape');
INSERT INTO `zone` VALUES (2969, 193, 'WC', 'Western Cape');
INSERT INTO `zone` VALUES (2970, 195, 'CA', 'A CoruÃƒÆ’Ã‚Â±a');
INSERT INTO `zone` VALUES (2971, 195, 'AL', 'ÃƒÆ’Ã‚Âlava');
INSERT INTO `zone` VALUES (2972, 195, 'AB', 'Albacete');
INSERT INTO `zone` VALUES (2973, 195, 'AC', 'Alicante');
INSERT INTO `zone` VALUES (2974, 195, 'AM', 'Almeria');
INSERT INTO `zone` VALUES (2975, 195, 'AS', 'Asturias');
INSERT INTO `zone` VALUES (2976, 195, 'AV', 'ÃƒÆ’Ã‚Âvila');
INSERT INTO `zone` VALUES (2977, 195, 'BJ', 'Badajoz');
INSERT INTO `zone` VALUES (2978, 195, 'IB', 'Baleares');
INSERT INTO `zone` VALUES (2979, 195, 'BA', 'Barcelona');
INSERT INTO `zone` VALUES (2980, 195, 'BU', 'Burgos');
INSERT INTO `zone` VALUES (2981, 195, 'CC', 'CÃƒÆ’Ã‚Â¡ceres');
INSERT INTO `zone` VALUES (2982, 195, 'CZ', 'CÃƒÆ’Ã‚Â¡diz');
INSERT INTO `zone` VALUES (2983, 195, 'CT', 'Cantabria');
INSERT INTO `zone` VALUES (2984, 195, 'CL', 'CastellÃƒÆ’Ã‚Â³n');
INSERT INTO `zone` VALUES (2985, 195, 'CE', 'Ceuta');
INSERT INTO `zone` VALUES (2986, 195, 'CR', 'Ciudad Real');
INSERT INTO `zone` VALUES (2987, 195, 'CD', 'CÃƒÆ’Ã‚Â³rdoba');
INSERT INTO `zone` VALUES (2988, 195, 'CU', 'Cuenca');
INSERT INTO `zone` VALUES (2989, 195, 'GI', 'Girona');
INSERT INTO `zone` VALUES (2990, 195, 'GD', 'Granada');
INSERT INTO `zone` VALUES (2991, 195, 'GJ', 'Guadalajara');
INSERT INTO `zone` VALUES (2992, 195, 'GP', 'GuipÃƒÆ’Ã‚Âºzcoa');
INSERT INTO `zone` VALUES (2993, 195, 'HL', 'Huelva');
INSERT INTO `zone` VALUES (2994, 195, 'HS', 'Huesca');
INSERT INTO `zone` VALUES (2995, 195, 'JN', 'JaÃƒÆ’Ã‚Â©n');
INSERT INTO `zone` VALUES (2996, 195, 'RJ', 'La Rioja');
INSERT INTO `zone` VALUES (2997, 195, 'PM', 'Las Palmas');
INSERT INTO `zone` VALUES (2998, 195, 'LE', 'Leon');
INSERT INTO `zone` VALUES (2999, 195, 'LL', 'Lleida');
INSERT INTO `zone` VALUES (3000, 195, 'LG', 'Lugo');
INSERT INTO `zone` VALUES (3001, 195, 'MD', 'Madrid');
INSERT INTO `zone` VALUES (3002, 195, 'MA', 'Malaga');
INSERT INTO `zone` VALUES (3003, 195, 'ML', 'Melilla');
INSERT INTO `zone` VALUES (3004, 195, 'MU', 'Murcia');
INSERT INTO `zone` VALUES (3005, 195, 'NV', 'Navarra');
INSERT INTO `zone` VALUES (3006, 195, 'OU', 'Ourense');
INSERT INTO `zone` VALUES (3007, 195, 'PL', 'Palencia');
INSERT INTO `zone` VALUES (3008, 195, 'PO', 'Pontevedra');
INSERT INTO `zone` VALUES (3009, 195, 'SL', 'Salamanca');
INSERT INTO `zone` VALUES (3010, 195, 'SC', 'Santa Cruz de Tenerife');
INSERT INTO `zone` VALUES (3011, 195, 'SG', 'Segovia');
INSERT INTO `zone` VALUES (3012, 195, 'SV', 'Sevilla');
INSERT INTO `zone` VALUES (3013, 195, 'SO', 'Soria');
INSERT INTO `zone` VALUES (3014, 195, 'TA', 'Tarragona');
INSERT INTO `zone` VALUES (3015, 195, 'TE', 'Teruel');
INSERT INTO `zone` VALUES (3016, 195, 'TO', 'Toledo');
INSERT INTO `zone` VALUES (3017, 195, 'VC', 'Valencia');
INSERT INTO `zone` VALUES (3018, 195, 'VD', 'Valladolid');
INSERT INTO `zone` VALUES (3019, 195, 'VZ', 'Vizcaya');
INSERT INTO `zone` VALUES (3020, 195, 'ZM', 'Zamora');
INSERT INTO `zone` VALUES (3021, 195, 'ZR', 'Zaragoza');
INSERT INTO `zone` VALUES (3022, 196, 'CE', 'Central');
INSERT INTO `zone` VALUES (3023, 196, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (3024, 196, 'NC', 'North Central');
INSERT INTO `zone` VALUES (3025, 196, 'NO', 'Northern');
INSERT INTO `zone` VALUES (3026, 196, 'NW', 'North Western');
INSERT INTO `zone` VALUES (3027, 196, 'SA', 'Sabaragamuwa');
INSERT INTO `zone` VALUES (3028, 196, 'SO', 'Southern');
INSERT INTO `zone` VALUES (3029, 196, 'UV', 'Uva');
INSERT INTO `zone` VALUES (3030, 196, 'WE', 'Western');
INSERT INTO `zone` VALUES (3031, 197, 'A', 'Ascension');
INSERT INTO `zone` VALUES (3032, 197, 'S', 'Saint Helena');
INSERT INTO `zone` VALUES (3033, 197, 'T', 'Tristan da Cunha');
INSERT INTO `zone` VALUES (3034, 199, 'ANL', 'A''ali an Nil');
INSERT INTO `zone` VALUES (3035, 199, 'BAM', 'Al Bahr al Ahmar');
INSERT INTO `zone` VALUES (3036, 199, 'BRT', 'Al Buhayrat');
INSERT INTO `zone` VALUES (3037, 199, 'JZR', 'Al Jazirah');
INSERT INTO `zone` VALUES (3038, 199, 'KRT', 'Al Khartum');
INSERT INTO `zone` VALUES (3039, 199, 'QDR', 'Al Qadarif');
INSERT INTO `zone` VALUES (3040, 199, 'WDH', 'Al Wahdah');
INSERT INTO `zone` VALUES (3041, 199, 'ANB', 'An Nil al Abyad');
INSERT INTO `zone` VALUES (3042, 199, 'ANZ', 'An Nil al Azraq');
INSERT INTO `zone` VALUES (3043, 199, 'ASH', 'Ash Shamaliyah');
INSERT INTO `zone` VALUES (3044, 199, 'BJA', 'Bahr al Jabal');
INSERT INTO `zone` VALUES (3045, 199, 'GIS', 'Gharb al Istiwa''iyah');
INSERT INTO `zone` VALUES (3046, 199, 'GBG', 'Gharb Bahr al Ghazal');
INSERT INTO `zone` VALUES (3047, 199, 'GDA', 'Gharb Darfur');
INSERT INTO `zone` VALUES (3048, 199, 'GKU', 'Gharb Kurdufan');
INSERT INTO `zone` VALUES (3049, 199, 'JDA', 'Janub Darfur');
INSERT INTO `zone` VALUES (3050, 199, 'JKU', 'Janub Kurdufan');
INSERT INTO `zone` VALUES (3051, 199, 'JQL', 'Junqali');
INSERT INTO `zone` VALUES (3052, 199, 'KSL', 'Kassala');
INSERT INTO `zone` VALUES (3053, 199, 'NNL', 'Nahr an Nil');
INSERT INTO `zone` VALUES (3054, 199, 'SBG', 'Shamal Bahr al Ghazal');
INSERT INTO `zone` VALUES (3055, 199, 'SDA', 'Shamal Darfur');
INSERT INTO `zone` VALUES (3056, 199, 'SKU', 'Shamal Kurdufan');
INSERT INTO `zone` VALUES (3057, 199, 'SIS', 'Sharq al Istiwa''iyah');
INSERT INTO `zone` VALUES (3058, 199, 'SNR', 'Sinnar');
INSERT INTO `zone` VALUES (3059, 199, 'WRB', 'Warab');
INSERT INTO `zone` VALUES (3060, 200, 'BR', 'Brokopondo');
INSERT INTO `zone` VALUES (3061, 200, 'CM', 'Commewijne');
INSERT INTO `zone` VALUES (3062, 200, 'CR', 'Coronie');
INSERT INTO `zone` VALUES (3063, 200, 'MA', 'Marowijne');
INSERT INTO `zone` VALUES (3064, 200, 'NI', 'Nickerie');
INSERT INTO `zone` VALUES (3065, 200, 'PA', 'Para');
INSERT INTO `zone` VALUES (3066, 200, 'PM', 'Paramaribo');
INSERT INTO `zone` VALUES (3067, 200, 'SA', 'Saramacca');
INSERT INTO `zone` VALUES (3068, 200, 'SI', 'Sipaliwini');
INSERT INTO `zone` VALUES (3069, 200, 'WA', 'Wanica');
INSERT INTO `zone` VALUES (3070, 202, 'H', 'Hhohho');
INSERT INTO `zone` VALUES (3071, 202, 'L', 'Lubombo');
INSERT INTO `zone` VALUES (3072, 202, 'M', 'Manzini');
INSERT INTO `zone` VALUES (3073, 202, 'S', 'Shishelweni');
INSERT INTO `zone` VALUES (3074, 203, 'K', 'Blekinge');
INSERT INTO `zone` VALUES (3075, 203, 'W', 'Dalama');
INSERT INTO `zone` VALUES (3076, 203, 'X', 'GÃƒÆ’Ã‚Â¤vleborg');
INSERT INTO `zone` VALUES (3077, 203, 'I', 'Gotland');
INSERT INTO `zone` VALUES (3078, 203, 'N', 'Halland');
INSERT INTO `zone` VALUES (3079, 203, 'Z', 'JÃƒÆ’Ã‚Â¤mtland');
INSERT INTO `zone` VALUES (3080, 203, 'F', 'JÃƒÆ’Ã‚Â¶nkping');
INSERT INTO `zone` VALUES (3081, 203, 'H', 'Kalmar');
INSERT INTO `zone` VALUES (3082, 203, 'G', 'Kronoberg');
INSERT INTO `zone` VALUES (3083, 203, 'BD', 'Norrbotten');
INSERT INTO `zone` VALUES (3084, 203, 'T', 'ÃƒÆ’Ã¢â‚¬â€œrebro');
INSERT INTO `zone` VALUES (3085, 203, 'E', 'ÃƒÆ’Ã¢â‚¬â€œstergÃƒÆ’Ã‚Â¶tland');
INSERT INTO `zone` VALUES (3086, 203, 'M', 'SkÃƒÆ’Ã‚Â¥ne');
INSERT INTO `zone` VALUES (3087, 203, 'D', 'SÃƒÆ’Ã‚Â¶dermanland');
INSERT INTO `zone` VALUES (3088, 203, 'AB', 'Stockholm');
INSERT INTO `zone` VALUES (3089, 203, 'C', 'Uppsala');
INSERT INTO `zone` VALUES (3090, 203, 'S', 'VÃƒÆ’Ã‚Â¤rmland');
INSERT INTO `zone` VALUES (3091, 203, 'AC', 'VÃƒÆ’Ã‚Â¤sterbotten');
INSERT INTO `zone` VALUES (3092, 203, 'Y', 'VÃƒÆ’Ã‚Â¤sternorrland');
INSERT INTO `zone` VALUES (3093, 203, 'U', 'VÃƒÆ’Ã‚Â¤stmanland');
INSERT INTO `zone` VALUES (3094, 203, 'O', 'VÃƒÆ’Ã‚Â¤stra GÃƒÆ’Ã‚Â¶taland');
INSERT INTO `zone` VALUES (3095, 204, 'AG', 'Aargau');
INSERT INTO `zone` VALUES (3096, 204, 'AR', 'Appenzell Ausserrhoden');
INSERT INTO `zone` VALUES (3097, 204, 'AI', 'Appenzell Innerrhoden');
INSERT INTO `zone` VALUES (3098, 204, 'BS', 'Basel-Stadt');
INSERT INTO `zone` VALUES (3099, 204, 'BL', 'Basel-Landschaft');
INSERT INTO `zone` VALUES (3100, 204, 'BE', 'Bern');
INSERT INTO `zone` VALUES (3101, 204, 'FR', 'Fribourg');
INSERT INTO `zone` VALUES (3102, 204, 'GE', 'GenÃƒÆ’Ã‚Â¨ve');
INSERT INTO `zone` VALUES (3103, 204, 'GL', 'Glarus');
INSERT INTO `zone` VALUES (3104, 204, 'GR', 'GraubÃƒÆ’Ã‚Â¼nden');
INSERT INTO `zone` VALUES (3105, 204, 'JU', 'Jura');
INSERT INTO `zone` VALUES (3106, 204, 'LU', 'Luzern');
INSERT INTO `zone` VALUES (3107, 204, 'NE', 'NeuchÃƒÆ’Ã‚Â¢tel');
INSERT INTO `zone` VALUES (3108, 204, 'NW', 'Nidwald');
INSERT INTO `zone` VALUES (3109, 204, 'OW', 'Obwald');
INSERT INTO `zone` VALUES (3110, 204, 'SG', 'St. Gallen');
INSERT INTO `zone` VALUES (3111, 204, 'SH', 'Schaffhausen');
INSERT INTO `zone` VALUES (3112, 204, 'SZ', 'Schwyz');
INSERT INTO `zone` VALUES (3113, 204, 'SO', 'Solothurn');
INSERT INTO `zone` VALUES (3114, 204, 'TG', 'Thurgau');
INSERT INTO `zone` VALUES (3115, 204, 'TI', 'Ticino');
INSERT INTO `zone` VALUES (3116, 204, 'UR', 'Uri');
INSERT INTO `zone` VALUES (3117, 204, 'VS', 'Valais');
INSERT INTO `zone` VALUES (3118, 204, 'VD', 'Vaud');
INSERT INTO `zone` VALUES (3119, 204, 'ZG', 'Zug');
INSERT INTO `zone` VALUES (3120, 204, 'ZH', 'ZÃƒÆ’Ã‚Â¼rich');
INSERT INTO `zone` VALUES (3121, 205, 'HA', 'Al Hasakah');
INSERT INTO `zone` VALUES (3122, 205, 'LA', 'Al Ladhiqiyah');
INSERT INTO `zone` VALUES (3123, 205, 'QU', 'Al Qunaytirah');
INSERT INTO `zone` VALUES (3124, 205, 'RQ', 'Ar Raqqah');
INSERT INTO `zone` VALUES (3125, 205, 'SU', 'As Suwayda');
INSERT INTO `zone` VALUES (3126, 205, 'DA', 'Dara');
INSERT INTO `zone` VALUES (3127, 205, 'DZ', 'Dayr az Zawr');
INSERT INTO `zone` VALUES (3128, 205, 'DI', 'Dimashq');
INSERT INTO `zone` VALUES (3129, 205, 'HL', 'Halab');
INSERT INTO `zone` VALUES (3130, 205, 'HM', 'Hamah');
INSERT INTO `zone` VALUES (3131, 205, 'HI', 'Hims');
INSERT INTO `zone` VALUES (3132, 205, 'ID', 'Idlib');
INSERT INTO `zone` VALUES (3133, 205, 'RD', 'Rif Dimashq');
INSERT INTO `zone` VALUES (3134, 205, 'TA', 'Tartus');
INSERT INTO `zone` VALUES (3135, 206, 'CH', 'Chang-hua');
INSERT INTO `zone` VALUES (3136, 206, 'CI', 'Chia-i');
INSERT INTO `zone` VALUES (3137, 206, 'HS', 'Hsin-chu');
INSERT INTO `zone` VALUES (3138, 206, 'HL', 'Hua-lien');
INSERT INTO `zone` VALUES (3139, 206, 'IL', 'I-lan');
INSERT INTO `zone` VALUES (3140, 206, 'KH', 'Kao-hsiung county');
INSERT INTO `zone` VALUES (3141, 206, 'KM', 'Kin-men');
INSERT INTO `zone` VALUES (3142, 206, 'LC', 'Lien-chiang');
INSERT INTO `zone` VALUES (3143, 206, 'ML', 'Miao-li');
INSERT INTO `zone` VALUES (3144, 206, 'NT', 'Nan-t''ou');
INSERT INTO `zone` VALUES (3145, 206, 'PH', 'P''eng-hu');
INSERT INTO `zone` VALUES (3146, 206, 'PT', 'P''ing-tung');
INSERT INTO `zone` VALUES (3147, 206, 'TG', 'T''ai-chung');
INSERT INTO `zone` VALUES (3148, 206, 'TA', 'T''ai-nan');
INSERT INTO `zone` VALUES (3149, 206, 'TP', 'T''ai-pei county');
INSERT INTO `zone` VALUES (3150, 206, 'TT', 'T''ai-tung');
INSERT INTO `zone` VALUES (3151, 206, 'TY', 'T''ao-yuan');
INSERT INTO `zone` VALUES (3152, 206, 'YL', 'Yun-lin');
INSERT INTO `zone` VALUES (3153, 206, 'CC', 'Chia-i city');
INSERT INTO `zone` VALUES (3154, 206, 'CL', 'Chi-lung');
INSERT INTO `zone` VALUES (3155, 206, 'HC', 'Hsin-chu');
INSERT INTO `zone` VALUES (3156, 206, 'TH', 'T''ai-chung');
INSERT INTO `zone` VALUES (3157, 206, 'TN', 'T''ai-nan');
INSERT INTO `zone` VALUES (3158, 206, 'KC', 'Kao-hsiung city');
INSERT INTO `zone` VALUES (3159, 206, 'TC', 'T''ai-pei city');
INSERT INTO `zone` VALUES (3160, 207, 'GB', 'Gorno-Badakhstan');
INSERT INTO `zone` VALUES (3161, 207, 'KT', 'Khatlon');
INSERT INTO `zone` VALUES (3162, 207, 'SU', 'Sughd');
INSERT INTO `zone` VALUES (3163, 208, 'AR', 'Arusha');
INSERT INTO `zone` VALUES (3164, 208, 'DS', 'Dar es Salaam');
INSERT INTO `zone` VALUES (3165, 208, 'DO', 'Dodoma');
INSERT INTO `zone` VALUES (3166, 208, 'IR', 'Iringa');
INSERT INTO `zone` VALUES (3167, 208, 'KA', 'Kagera');
INSERT INTO `zone` VALUES (3168, 208, 'KI', 'Kigoma');
INSERT INTO `zone` VALUES (3169, 208, 'KJ', 'Kilimanjaro');
INSERT INTO `zone` VALUES (3170, 208, 'LN', 'Lindi');
INSERT INTO `zone` VALUES (3171, 208, 'MY', 'Manyara');
INSERT INTO `zone` VALUES (3172, 208, 'MR', 'Mara');
INSERT INTO `zone` VALUES (3173, 208, 'MB', 'Mbeya');
INSERT INTO `zone` VALUES (3174, 208, 'MO', 'Morogoro');
INSERT INTO `zone` VALUES (3175, 208, 'MT', 'Mtwara');
INSERT INTO `zone` VALUES (3176, 208, 'MW', 'Mwanza');
INSERT INTO `zone` VALUES (3177, 208, 'PN', 'Pemba North');
INSERT INTO `zone` VALUES (3178, 208, 'PS', 'Pemba South');
INSERT INTO `zone` VALUES (3179, 208, 'PW', 'Pwani');
INSERT INTO `zone` VALUES (3180, 208, 'RK', 'Rukwa');
INSERT INTO `zone` VALUES (3181, 208, 'RV', 'Ruvuma');
INSERT INTO `zone` VALUES (3182, 208, 'SH', 'Shinyanga');
INSERT INTO `zone` VALUES (3183, 208, 'SI', 'Singida');
INSERT INTO `zone` VALUES (3184, 208, 'TB', 'Tabora');
INSERT INTO `zone` VALUES (3185, 208, 'TN', 'Tanga');
INSERT INTO `zone` VALUES (3186, 208, 'ZC', 'Zanzibar Central/South');
INSERT INTO `zone` VALUES (3187, 208, 'ZN', 'Zanzibar North');
INSERT INTO `zone` VALUES (3188, 208, 'ZU', 'Zanzibar Urban/West');
INSERT INTO `zone` VALUES (3189, 209, 'Amnat Charoen', 'Amnat Charoen');
INSERT INTO `zone` VALUES (3190, 209, 'Ang Thong', 'Ang Thong');
INSERT INTO `zone` VALUES (3191, 209, 'Ayutthaya', 'Ayutthaya');
INSERT INTO `zone` VALUES (3192, 209, 'Bangkok', 'Bangkok');
INSERT INTO `zone` VALUES (3193, 209, 'Buriram', 'Buriram');
INSERT INTO `zone` VALUES (3194, 209, 'Chachoengsao', 'Chachoengsao');
INSERT INTO `zone` VALUES (3195, 209, 'Chai Nat', 'Chai Nat');
INSERT INTO `zone` VALUES (3196, 209, 'Chaiyaphum', 'Chaiyaphum');
INSERT INTO `zone` VALUES (3197, 209, 'Chanthaburi', 'Chanthaburi');
INSERT INTO `zone` VALUES (3198, 209, 'Chiang Mai', 'Chiang Mai');
INSERT INTO `zone` VALUES (3199, 209, 'Chiang Rai', 'Chiang Rai');
INSERT INTO `zone` VALUES (3200, 209, 'Chon Buri', 'Chon Buri');
INSERT INTO `zone` VALUES (3201, 209, 'Chumphon', 'Chumphon');
INSERT INTO `zone` VALUES (3202, 209, 'Kalasin', 'Kalasin');
INSERT INTO `zone` VALUES (3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet');
INSERT INTO `zone` VALUES (3204, 209, 'Kanchanaburi', 'Kanchanaburi');
INSERT INTO `zone` VALUES (3205, 209, 'Khon Kaen', 'Khon Kaen');
INSERT INTO `zone` VALUES (3206, 209, 'Krabi', 'Krabi');
INSERT INTO `zone` VALUES (3207, 209, 'Lampang', 'Lampang');
INSERT INTO `zone` VALUES (3208, 209, 'Lamphun', 'Lamphun');
INSERT INTO `zone` VALUES (3209, 209, 'Loei', 'Loei');
INSERT INTO `zone` VALUES (3210, 209, 'Lop Buri', 'Lop Buri');
INSERT INTO `zone` VALUES (3211, 209, 'Mae Hong Son', 'Mae Hong Son');
INSERT INTO `zone` VALUES (3212, 209, 'Maha Sarakham', 'Maha Sarakham');
INSERT INTO `zone` VALUES (3213, 209, 'Mukdahan', 'Mukdahan');
INSERT INTO `zone` VALUES (3214, 209, 'Nakhon Nayok', 'Nakhon Nayok');
INSERT INTO `zone` VALUES (3215, 209, 'Nakhon Pathom', 'Nakhon Pathom');
INSERT INTO `zone` VALUES (3216, 209, 'Nakhon Phanom', 'Nakhon Phanom');
INSERT INTO `zone` VALUES (3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima');
INSERT INTO `zone` VALUES (3218, 209, 'Nakhon Sawan', 'Nakhon Sawan');
INSERT INTO `zone` VALUES (3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat');
INSERT INTO `zone` VALUES (3220, 209, 'Nan', 'Nan');
INSERT INTO `zone` VALUES (3221, 209, 'Narathiwat', 'Narathiwat');
INSERT INTO `zone` VALUES (3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu');
INSERT INTO `zone` VALUES (3223, 209, 'Nong Khai', 'Nong Khai');
INSERT INTO `zone` VALUES (3224, 209, 'Nonthaburi', 'Nonthaburi');
INSERT INTO `zone` VALUES (3225, 209, 'Pathum Thani', 'Pathum Thani');
INSERT INTO `zone` VALUES (3226, 209, 'Pattani', 'Pattani');
INSERT INTO `zone` VALUES (3227, 209, 'Phangnga', 'Phangnga');
INSERT INTO `zone` VALUES (3228, 209, 'Phatthalung', 'Phatthalung');
INSERT INTO `zone` VALUES (3229, 209, 'Phayao', 'Phayao');
INSERT INTO `zone` VALUES (3230, 209, 'Phetchabun', 'Phetchabun');
INSERT INTO `zone` VALUES (3231, 209, 'Phetchaburi', 'Phetchaburi');
INSERT INTO `zone` VALUES (3232, 209, 'Phichit', 'Phichit');
INSERT INTO `zone` VALUES (3233, 209, 'Phitsanulok', 'Phitsanulok');
INSERT INTO `zone` VALUES (3234, 209, 'Phrae', 'Phrae');
INSERT INTO `zone` VALUES (3235, 209, 'Phuket', 'Phuket');
INSERT INTO `zone` VALUES (3236, 209, 'Prachin Buri', 'Prachin Buri');
INSERT INTO `zone` VALUES (3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan');
INSERT INTO `zone` VALUES (3238, 209, 'Ranong', 'Ranong');
INSERT INTO `zone` VALUES (3239, 209, 'Ratchaburi', 'Ratchaburi');
INSERT INTO `zone` VALUES (3240, 209, 'Rayong', 'Rayong');
INSERT INTO `zone` VALUES (3241, 209, 'Roi Et', 'Roi Et');
INSERT INTO `zone` VALUES (3242, 209, 'Sa Kaeo', 'Sa Kaeo');
INSERT INTO `zone` VALUES (3243, 209, 'Sakon Nakhon', 'Sakon Nakhon');
INSERT INTO `zone` VALUES (3244, 209, 'Samut Prakan', 'Samut Prakan');
INSERT INTO `zone` VALUES (3245, 209, 'Samut Sakhon', 'Samut Sakhon');
INSERT INTO `zone` VALUES (3246, 209, 'Samut Songkhram', 'Samut Songkhram');
INSERT INTO `zone` VALUES (3247, 209, 'Sara Buri', 'Sara Buri');
INSERT INTO `zone` VALUES (3248, 209, 'Satun', 'Satun');
INSERT INTO `zone` VALUES (3249, 209, 'Sing Buri', 'Sing Buri');
INSERT INTO `zone` VALUES (3250, 209, 'Sisaket', 'Sisaket');
INSERT INTO `zone` VALUES (3251, 209, 'Songkhla', 'Songkhla');
INSERT INTO `zone` VALUES (3252, 209, 'Sukhothai', 'Sukhothai');
INSERT INTO `zone` VALUES (3253, 209, 'Suphan Buri', 'Suphan Buri');
INSERT INTO `zone` VALUES (3254, 209, 'Surat Thani', 'Surat Thani');
INSERT INTO `zone` VALUES (3255, 209, 'Surin', 'Surin');
INSERT INTO `zone` VALUES (3256, 209, 'Tak', 'Tak');
INSERT INTO `zone` VALUES (3257, 209, 'Trang', 'Trang');
INSERT INTO `zone` VALUES (3258, 209, 'Trat', 'Trat');
INSERT INTO `zone` VALUES (3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani');
INSERT INTO `zone` VALUES (3260, 209, 'Udon Thani', 'Udon Thani');
INSERT INTO `zone` VALUES (3261, 209, 'Uthai Thani', 'Uthai Thani');
INSERT INTO `zone` VALUES (3262, 209, 'Uttaradit', 'Uttaradit');
INSERT INTO `zone` VALUES (3263, 209, 'Yala', 'Yala');
INSERT INTO `zone` VALUES (3264, 209, 'Yasothon', 'Yasothon');
INSERT INTO `zone` VALUES (3265, 210, 'K', 'Kara');
INSERT INTO `zone` VALUES (3266, 210, 'P', 'Plateaux');
INSERT INTO `zone` VALUES (3267, 210, 'S', 'Savanes');
INSERT INTO `zone` VALUES (3268, 210, 'C', 'Centrale');
INSERT INTO `zone` VALUES (3269, 210, 'M', 'Maritime');
INSERT INTO `zone` VALUES (3270, 211, 'A', 'Atafu');
INSERT INTO `zone` VALUES (3271, 211, 'F', 'Fakaofo');
INSERT INTO `zone` VALUES (3272, 211, 'N', 'Nukunonu');
INSERT INTO `zone` VALUES (3273, 212, 'H', 'Ha''apai');
INSERT INTO `zone` VALUES (3274, 212, 'T', 'Tongatapu');
INSERT INTO `zone` VALUES (3275, 212, 'V', 'Vava''u');
INSERT INTO `zone` VALUES (3276, 213, 'CT', 'Couva/Tabaquite/Talparo');
INSERT INTO `zone` VALUES (3277, 213, 'DM', 'Diego Martin');
INSERT INTO `zone` VALUES (3278, 213, 'MR', 'Mayaro/Rio Claro');
INSERT INTO `zone` VALUES (3279, 213, 'PD', 'Penal/Debe');
INSERT INTO `zone` VALUES (3280, 213, 'PT', 'Princes Town');
INSERT INTO `zone` VALUES (3281, 213, 'SG', 'Sangre Grande');
INSERT INTO `zone` VALUES (3282, 213, 'SL', 'San Juan/Laventille');
INSERT INTO `zone` VALUES (3283, 213, 'SI', 'Siparia');
INSERT INTO `zone` VALUES (3284, 213, 'TP', 'Tunapuna/Piarco');
INSERT INTO `zone` VALUES (3285, 213, 'PS', 'Port of Spain');
INSERT INTO `zone` VALUES (3286, 213, 'SF', 'San Fernando');
INSERT INTO `zone` VALUES (3287, 213, 'AR', 'Arima');
INSERT INTO `zone` VALUES (3288, 213, 'PF', 'Point Fortin');
INSERT INTO `zone` VALUES (3289, 213, 'CH', 'Chaguanas');
INSERT INTO `zone` VALUES (3290, 213, 'TO', 'Tobago');
INSERT INTO `zone` VALUES (3291, 214, 'AR', 'Ariana');
INSERT INTO `zone` VALUES (3292, 214, 'BJ', 'Beja');
INSERT INTO `zone` VALUES (3293, 214, 'BA', 'Ben Arous');
INSERT INTO `zone` VALUES (3294, 214, 'BI', 'Bizerte');
INSERT INTO `zone` VALUES (3295, 214, 'GB', 'Gabes');
INSERT INTO `zone` VALUES (3296, 214, 'GF', 'Gafsa');
INSERT INTO `zone` VALUES (3297, 214, 'JE', 'Jendouba');
INSERT INTO `zone` VALUES (3298, 214, 'KR', 'Kairouan');
INSERT INTO `zone` VALUES (3299, 214, 'KS', 'Kasserine');
INSERT INTO `zone` VALUES (3300, 214, 'KB', 'Kebili');
INSERT INTO `zone` VALUES (3301, 214, 'KF', 'Kef');
INSERT INTO `zone` VALUES (3302, 214, 'MH', 'Mahdia');
INSERT INTO `zone` VALUES (3303, 214, 'MN', 'Manouba');
INSERT INTO `zone` VALUES (3304, 214, 'ME', 'Medenine');
INSERT INTO `zone` VALUES (3305, 214, 'MO', 'Monastir');
INSERT INTO `zone` VALUES (3306, 214, 'NA', 'Nabeul');
INSERT INTO `zone` VALUES (3307, 214, 'SF', 'Sfax');
INSERT INTO `zone` VALUES (3308, 214, 'SD', 'Sidi');
INSERT INTO `zone` VALUES (3309, 214, 'SL', 'Siliana');
INSERT INTO `zone` VALUES (3310, 214, 'SO', 'Sousse');
INSERT INTO `zone` VALUES (3311, 214, 'TA', 'Tataouine');
INSERT INTO `zone` VALUES (3312, 214, 'TO', 'Tozeur');
INSERT INTO `zone` VALUES (3313, 214, 'TU', 'Tunis');
INSERT INTO `zone` VALUES (3314, 214, 'ZA', 'Zaghouan');
INSERT INTO `zone` VALUES (3315, 215, 'ADA', 'Adana');
INSERT INTO `zone` VALUES (3316, 215, 'ADI', 'Adiyaman');
INSERT INTO `zone` VALUES (3317, 215, 'AFY', 'Afyonkarahisar');
INSERT INTO `zone` VALUES (3318, 215, 'AGR', 'Agri');
INSERT INTO `zone` VALUES (3319, 215, 'AKS', 'Aksaray');
INSERT INTO `zone` VALUES (3320, 215, 'AMA', 'Amasya');
INSERT INTO `zone` VALUES (3321, 215, 'ANK', 'Ankara');
INSERT INTO `zone` VALUES (3322, 215, 'ANT', 'Antalya');
INSERT INTO `zone` VALUES (3323, 215, 'ARD', 'Ardahan');
INSERT INTO `zone` VALUES (3324, 215, 'ART', 'Artvin');
INSERT INTO `zone` VALUES (3325, 215, 'AYI', 'Aydin');
INSERT INTO `zone` VALUES (3326, 215, 'BAL', 'Balikesir');
INSERT INTO `zone` VALUES (3327, 215, 'BAR', 'Bartin');
INSERT INTO `zone` VALUES (3328, 215, 'BAT', 'Batman');
INSERT INTO `zone` VALUES (3329, 215, 'BAY', 'Bayburt');
INSERT INTO `zone` VALUES (3330, 215, 'BIL', 'Bilecik');
INSERT INTO `zone` VALUES (3331, 215, 'BIN', 'Bingol');
INSERT INTO `zone` VALUES (3332, 215, 'BIT', 'Bitlis');
INSERT INTO `zone` VALUES (3333, 215, 'BOL', 'Bolu');
INSERT INTO `zone` VALUES (3334, 215, 'BRD', 'Burdur');
INSERT INTO `zone` VALUES (3335, 215, 'BRS', 'Bursa');
INSERT INTO `zone` VALUES (3336, 215, 'CKL', 'Canakkale');
INSERT INTO `zone` VALUES (3337, 215, 'CKR', 'Cankiri');
INSERT INTO `zone` VALUES (3338, 215, 'COR', 'Corum');
INSERT INTO `zone` VALUES (3339, 215, 'DEN', 'Denizli');
INSERT INTO `zone` VALUES (3340, 215, 'DIY', 'Diyarbakir');
INSERT INTO `zone` VALUES (3341, 215, 'DUZ', 'Duzce');
INSERT INTO `zone` VALUES (3342, 215, 'EDI', 'Edirne');
INSERT INTO `zone` VALUES (3343, 215, 'ELA', 'Elazig');
INSERT INTO `zone` VALUES (3344, 215, 'EZC', 'Erzincan');
INSERT INTO `zone` VALUES (3345, 215, 'EZR', 'Erzurum');
INSERT INTO `zone` VALUES (3346, 215, 'ESK', 'Eskisehir');
INSERT INTO `zone` VALUES (3347, 215, 'GAZ', 'Gaziantep');
INSERT INTO `zone` VALUES (3348, 215, 'GIR', 'Giresun');
INSERT INTO `zone` VALUES (3349, 215, 'GMS', 'Gumushane');
INSERT INTO `zone` VALUES (3350, 215, 'HKR', 'Hakkari');
INSERT INTO `zone` VALUES (3351, 215, 'HTY', 'Hatay');
INSERT INTO `zone` VALUES (3352, 215, 'IGD', 'Igdir');
INSERT INTO `zone` VALUES (3353, 215, 'ISP', 'Isparta');
INSERT INTO `zone` VALUES (3354, 215, 'IST', 'Istanbul');
INSERT INTO `zone` VALUES (3355, 215, 'IZM', 'Izmir');
INSERT INTO `zone` VALUES (3356, 215, 'KAH', 'Kahramanmaras');
INSERT INTO `zone` VALUES (3357, 215, 'KRB', 'Karabuk');
INSERT INTO `zone` VALUES (3358, 215, 'KRM', 'Karaman');
INSERT INTO `zone` VALUES (3359, 215, 'KRS', 'Kars');
INSERT INTO `zone` VALUES (3360, 215, 'KAS', 'Kastamonu');
INSERT INTO `zone` VALUES (3361, 215, 'KAY', 'Kayseri');
INSERT INTO `zone` VALUES (3362, 215, 'KLS', 'Kilis');
INSERT INTO `zone` VALUES (3363, 215, 'KRK', 'Kirikkale');
INSERT INTO `zone` VALUES (3364, 215, 'KLR', 'Kirklareli');
INSERT INTO `zone` VALUES (3365, 215, 'KRH', 'Kirsehir');
INSERT INTO `zone` VALUES (3366, 215, 'KOC', 'Kocaeli');
INSERT INTO `zone` VALUES (3367, 215, 'KON', 'Konya');
INSERT INTO `zone` VALUES (3368, 215, 'KUT', 'Kutahya');
INSERT INTO `zone` VALUES (3369, 215, 'MAL', 'Malatya');
INSERT INTO `zone` VALUES (3370, 215, 'MAN', 'Manisa');
INSERT INTO `zone` VALUES (3371, 215, 'MAR', 'Mardin');
INSERT INTO `zone` VALUES (3372, 215, 'MER', 'Mersin');
INSERT INTO `zone` VALUES (3373, 215, 'MUG', 'Mugla');
INSERT INTO `zone` VALUES (3374, 215, 'MUS', 'Mus');
INSERT INTO `zone` VALUES (3375, 215, 'NEV', 'Nevsehir');
INSERT INTO `zone` VALUES (3376, 215, 'NIG', 'Nigde');
INSERT INTO `zone` VALUES (3377, 215, 'ORD', 'Ordu');
INSERT INTO `zone` VALUES (3378, 215, 'OSM', 'Osmaniye');
INSERT INTO `zone` VALUES (3379, 215, 'RIZ', 'Rize');
INSERT INTO `zone` VALUES (3380, 215, 'SAK', 'Sakarya');
INSERT INTO `zone` VALUES (3381, 215, 'SAM', 'Samsun');
INSERT INTO `zone` VALUES (3382, 215, 'SAN', 'Sanliurfa');
INSERT INTO `zone` VALUES (3383, 215, 'SII', 'Siirt');
INSERT INTO `zone` VALUES (3384, 215, 'SIN', 'Sinop');
INSERT INTO `zone` VALUES (3385, 215, 'SIR', 'Sirnak');
INSERT INTO `zone` VALUES (3386, 215, 'SIV', 'Sivas');
INSERT INTO `zone` VALUES (3387, 215, 'TEL', 'Tekirdag');
INSERT INTO `zone` VALUES (3388, 215, 'TOK', 'Tokat');
INSERT INTO `zone` VALUES (3389, 215, 'TRA', 'Trabzon');
INSERT INTO `zone` VALUES (3390, 215, 'TUN', 'Tunceli');
INSERT INTO `zone` VALUES (3391, 215, 'USK', 'Usak');
INSERT INTO `zone` VALUES (3392, 215, 'VAN', 'Van');
INSERT INTO `zone` VALUES (3393, 215, 'YAL', 'Yalova');
INSERT INTO `zone` VALUES (3394, 215, 'YOZ', 'Yozgat');
INSERT INTO `zone` VALUES (3395, 215, 'ZON', 'Zonguldak');
INSERT INTO `zone` VALUES (3396, 216, 'A', 'Ahal Welayaty');
INSERT INTO `zone` VALUES (3397, 216, 'B', 'Balkan Welayaty');
INSERT INTO `zone` VALUES (3398, 216, 'D', 'Dashhowuz Welayaty');
INSERT INTO `zone` VALUES (3399, 216, 'L', 'Lebap Welayaty');
INSERT INTO `zone` VALUES (3400, 216, 'M', 'Mary Welayaty');
INSERT INTO `zone` VALUES (3401, 217, 'AC', 'Ambergris Cays');
INSERT INTO `zone` VALUES (3402, 217, 'DC', 'Dellis Cay');
INSERT INTO `zone` VALUES (3403, 217, 'FC', 'French Cay');
INSERT INTO `zone` VALUES (3404, 217, 'LW', 'Little Water Cay');
INSERT INTO `zone` VALUES (3405, 217, 'RC', 'Parrot Cay');
INSERT INTO `zone` VALUES (3406, 217, 'PN', 'Pine Cay');
INSERT INTO `zone` VALUES (3407, 217, 'SL', 'Salt Cay');
INSERT INTO `zone` VALUES (3408, 217, 'GT', 'Grand Turk');
INSERT INTO `zone` VALUES (3409, 217, 'SC', 'South Caicos');
INSERT INTO `zone` VALUES (3410, 217, 'EC', 'East Caicos');
INSERT INTO `zone` VALUES (3411, 217, 'MC', 'Middle Caicos');
INSERT INTO `zone` VALUES (3412, 217, 'NC', 'North Caicos');
INSERT INTO `zone` VALUES (3413, 217, 'PR', 'Providenciales');
INSERT INTO `zone` VALUES (3414, 217, 'WC', 'West Caicos');
INSERT INTO `zone` VALUES (3415, 218, 'NMG', 'Nanumanga');
INSERT INTO `zone` VALUES (3416, 218, 'NLK', 'Niulakita');
INSERT INTO `zone` VALUES (3417, 218, 'NTO', 'Niutao');
INSERT INTO `zone` VALUES (3418, 218, 'FUN', 'Funafuti');
INSERT INTO `zone` VALUES (3419, 218, 'NME', 'Nanumea');
INSERT INTO `zone` VALUES (3420, 218, 'NUI', 'Nui');
INSERT INTO `zone` VALUES (3421, 218, 'NFT', 'Nukufetau');
INSERT INTO `zone` VALUES (3422, 218, 'NLL', 'Nukulaelae');
INSERT INTO `zone` VALUES (3423, 218, 'VAI', 'Vaitupu');
INSERT INTO `zone` VALUES (3424, 219, 'KAL', 'Kalangala');
INSERT INTO `zone` VALUES (3425, 219, 'KMP', 'Kampala');
INSERT INTO `zone` VALUES (3426, 219, 'KAY', 'Kayunga');
INSERT INTO `zone` VALUES (3427, 219, 'KIB', 'Kiboga');
INSERT INTO `zone` VALUES (3428, 219, 'LUW', 'Luwero');
INSERT INTO `zone` VALUES (3429, 219, 'MAS', 'Masaka');
INSERT INTO `zone` VALUES (3430, 219, 'MPI', 'Mpigi');
INSERT INTO `zone` VALUES (3431, 219, 'MUB', 'Mubende');
INSERT INTO `zone` VALUES (3432, 219, 'MUK', 'Mukono');
INSERT INTO `zone` VALUES (3433, 219, 'NKS', 'Nakasongola');
INSERT INTO `zone` VALUES (3434, 219, 'RAK', 'Rakai');
INSERT INTO `zone` VALUES (3435, 219, 'SEM', 'Sembabule');
INSERT INTO `zone` VALUES (3436, 219, 'WAK', 'Wakiso');
INSERT INTO `zone` VALUES (3437, 219, 'BUG', 'Bugiri');
INSERT INTO `zone` VALUES (3438, 219, 'BUS', 'Busia');
INSERT INTO `zone` VALUES (3439, 219, 'IGA', 'Iganga');
INSERT INTO `zone` VALUES (3440, 219, 'JIN', 'Jinja');
INSERT INTO `zone` VALUES (3441, 219, 'KAB', 'Kaberamaido');
INSERT INTO `zone` VALUES (3442, 219, 'KML', 'Kamuli');
INSERT INTO `zone` VALUES (3443, 219, 'KPC', 'Kapchorwa');
INSERT INTO `zone` VALUES (3444, 219, 'KTK', 'Katakwi');
INSERT INTO `zone` VALUES (3445, 219, 'KUM', 'Kumi');
INSERT INTO `zone` VALUES (3446, 219, 'MAY', 'Mayuge');
INSERT INTO `zone` VALUES (3447, 219, 'MBA', 'Mbale');
INSERT INTO `zone` VALUES (3448, 219, 'PAL', 'Pallisa');
INSERT INTO `zone` VALUES (3449, 219, 'SIR', 'Sironko');
INSERT INTO `zone` VALUES (3450, 219, 'SOR', 'Soroti');
INSERT INTO `zone` VALUES (3451, 219, 'TOR', 'Tororo');
INSERT INTO `zone` VALUES (3452, 219, 'ADJ', 'Adjumani');
INSERT INTO `zone` VALUES (3453, 219, 'APC', 'Apac');
INSERT INTO `zone` VALUES (3454, 219, 'ARU', 'Arua');
INSERT INTO `zone` VALUES (3455, 219, 'GUL', 'Gulu');
INSERT INTO `zone` VALUES (3456, 219, 'KIT', 'Kitgum');
INSERT INTO `zone` VALUES (3457, 219, 'KOT', 'Kotido');
INSERT INTO `zone` VALUES (3458, 219, 'LIR', 'Lira');
INSERT INTO `zone` VALUES (3459, 219, 'MRT', 'Moroto');
INSERT INTO `zone` VALUES (3460, 219, 'MOY', 'Moyo');
INSERT INTO `zone` VALUES (3461, 219, 'NAK', 'Nakapiripirit');
INSERT INTO `zone` VALUES (3462, 219, 'NEB', 'Nebbi');
INSERT INTO `zone` VALUES (3463, 219, 'PAD', 'Pader');
INSERT INTO `zone` VALUES (3464, 219, 'YUM', 'Yumbe');
INSERT INTO `zone` VALUES (3465, 219, 'BUN', 'Bundibugyo');
INSERT INTO `zone` VALUES (3466, 219, 'BSH', 'Bushenyi');
INSERT INTO `zone` VALUES (3467, 219, 'HOI', 'Hoima');
INSERT INTO `zone` VALUES (3468, 219, 'KBL', 'Kabale');
INSERT INTO `zone` VALUES (3469, 219, 'KAR', 'Kabarole');
INSERT INTO `zone` VALUES (3470, 219, 'KAM', 'Kamwenge');
INSERT INTO `zone` VALUES (3471, 219, 'KAN', 'Kanungu');
INSERT INTO `zone` VALUES (3472, 219, 'KAS', 'Kasese');
INSERT INTO `zone` VALUES (3473, 219, 'KBA', 'Kibaale');
INSERT INTO `zone` VALUES (3474, 219, 'KIS', 'Kisoro');
INSERT INTO `zone` VALUES (3475, 219, 'KYE', 'Kyenjojo');
INSERT INTO `zone` VALUES (3476, 219, 'MSN', 'Masindi');
INSERT INTO `zone` VALUES (3477, 219, 'MBR', 'Mbarara');
INSERT INTO `zone` VALUES (3478, 219, 'NTU', 'Ntungamo');
INSERT INTO `zone` VALUES (3479, 219, 'RUK', 'Rukungiri');
INSERT INTO `zone` VALUES (3480, 220, 'CK', 'Cherkasy');
INSERT INTO `zone` VALUES (3481, 220, 'CH', 'Chernihiv');
INSERT INTO `zone` VALUES (3482, 220, 'CV', 'Chernivtsi');
INSERT INTO `zone` VALUES (3483, 220, 'CR', 'Crimea');
INSERT INTO `zone` VALUES (3484, 220, 'DN', 'Dnipropetrovs''k');
INSERT INTO `zone` VALUES (3485, 220, 'DO', 'Donets''k');
INSERT INTO `zone` VALUES (3486, 220, 'IV', 'Ivano-Frankivs''k');
INSERT INTO `zone` VALUES (3487, 220, 'KL', 'Kharkiv Kherson');
INSERT INTO `zone` VALUES (3488, 220, 'KM', 'Khmel''nyts''kyy');
INSERT INTO `zone` VALUES (3489, 220, 'KR', 'Kirovohrad');
INSERT INTO `zone` VALUES (3490, 220, 'KV', 'Kiev');
INSERT INTO `zone` VALUES (3491, 220, 'KY', 'Kyyiv');
INSERT INTO `zone` VALUES (3492, 220, 'LU', 'Luhans''k');
INSERT INTO `zone` VALUES (3493, 220, 'LV', 'L''viv');
INSERT INTO `zone` VALUES (3494, 220, 'MY', 'Mykolayiv');
INSERT INTO `zone` VALUES (3495, 220, 'OD', 'Odesa');
INSERT INTO `zone` VALUES (3496, 220, 'PO', 'Poltava');
INSERT INTO `zone` VALUES (3497, 220, 'RI', 'Rivne');
INSERT INTO `zone` VALUES (3498, 220, 'SE', 'Sevastopol');
INSERT INTO `zone` VALUES (3499, 220, 'SU', 'Sumy');
INSERT INTO `zone` VALUES (3500, 220, 'TE', 'Ternopil''');
INSERT INTO `zone` VALUES (3501, 220, 'VI', 'Vinnytsya');
INSERT INTO `zone` VALUES (3502, 220, 'VO', 'Volyn''');
INSERT INTO `zone` VALUES (3503, 220, 'ZK', 'Zakarpattya');
INSERT INTO `zone` VALUES (3504, 220, 'ZA', 'Zaporizhzhya');
INSERT INTO `zone` VALUES (3505, 220, 'ZH', 'Zhytomyr');
INSERT INTO `zone` VALUES (3506, 221, 'AZ', 'Abu Zaby');
INSERT INTO `zone` VALUES (3507, 221, 'AJ', '''Ajman');
INSERT INTO `zone` VALUES (3508, 221, 'FU', 'Al Fujayrah');
INSERT INTO `zone` VALUES (3509, 221, 'SH', 'Ash Shariqah');
INSERT INTO `zone` VALUES (3510, 221, 'DU', 'Dubayy');
INSERT INTO `zone` VALUES (3511, 221, 'RK', 'R''as al Khaymah');
INSERT INTO `zone` VALUES (3512, 221, 'UQ', 'Umm al Qaywayn');
INSERT INTO `zone` VALUES (3513, 222, 'ABN', 'Aberdeen');
INSERT INTO `zone` VALUES (3514, 222, 'ABNS', 'Aberdeenshire');
INSERT INTO `zone` VALUES (3515, 222, 'ANG', 'Anglesey');
INSERT INTO `zone` VALUES (3516, 222, 'AGS', 'Angus');
INSERT INTO `zone` VALUES (3517, 222, 'ARY', 'Argyll and Bute');
INSERT INTO `zone` VALUES (3518, 222, 'BEDS', 'Bedfordshire');
INSERT INTO `zone` VALUES (3519, 222, 'BERKS', 'Berkshire');
INSERT INTO `zone` VALUES (3520, 222, 'BLA', 'Blaenau Gwent');
INSERT INTO `zone` VALUES (3521, 222, 'BRI', 'Bridgend');
INSERT INTO `zone` VALUES (3522, 222, 'BSTL', 'Bristol');
INSERT INTO `zone` VALUES (3523, 222, 'BUCKS', 'Buckinghamshire');
INSERT INTO `zone` VALUES (3524, 222, 'CAE', 'Caerphilly');
INSERT INTO `zone` VALUES (3525, 222, 'CAMBS', 'Cambridgeshire');
INSERT INTO `zone` VALUES (3526, 222, 'CDF', 'Cardiff');
INSERT INTO `zone` VALUES (3527, 222, 'CARM', 'Carmarthenshire');
INSERT INTO `zone` VALUES (3528, 222, 'CDGN', 'Ceredigion');
INSERT INTO `zone` VALUES (3529, 222, 'CHES', 'Cheshire');
INSERT INTO `zone` VALUES (3530, 222, 'CLACK', 'Clackmannanshire');
INSERT INTO `zone` VALUES (3531, 222, 'CON', 'Conwy');
INSERT INTO `zone` VALUES (3532, 222, 'CORN', 'Cornwall');
INSERT INTO `zone` VALUES (3533, 222, 'DNBG', 'Denbighshire');
INSERT INTO `zone` VALUES (3534, 222, 'DERBY', 'Derbyshire');
INSERT INTO `zone` VALUES (3535, 222, 'DVN', 'Devon');
INSERT INTO `zone` VALUES (3536, 222, 'DOR', 'Dorset');
INSERT INTO `zone` VALUES (3537, 222, 'DGL', 'Dumfries and Galloway');
INSERT INTO `zone` VALUES (3538, 222, 'DUND', 'Dundee');
INSERT INTO `zone` VALUES (3539, 222, 'DHM', 'Durham');
INSERT INTO `zone` VALUES (3540, 222, 'ARYE', 'East Ayrshire');
INSERT INTO `zone` VALUES (3541, 222, 'DUNBE', 'East Dunbartonshire');
INSERT INTO `zone` VALUES (3542, 222, 'LOTE', 'East Lothian');
INSERT INTO `zone` VALUES (3543, 222, 'RENE', 'East Renfrewshire');
INSERT INTO `zone` VALUES (3544, 222, 'ERYS', 'East Riding of Yorkshire');
INSERT INTO `zone` VALUES (3545, 222, 'SXE', 'East Sussex');
INSERT INTO `zone` VALUES (3546, 222, 'EDIN', 'Edinburgh');
INSERT INTO `zone` VALUES (3547, 222, 'ESX', 'Essex');
INSERT INTO `zone` VALUES (3548, 222, 'FALK', 'Falkirk');
INSERT INTO `zone` VALUES (3549, 222, 'FFE', 'Fife');
INSERT INTO `zone` VALUES (3550, 222, 'FLINT', 'Flintshire');
INSERT INTO `zone` VALUES (3551, 222, 'GLAS', 'Glasgow');
INSERT INTO `zone` VALUES (3552, 222, 'GLOS', 'Gloucestershire');
INSERT INTO `zone` VALUES (3553, 222, 'LDN', 'Greater London');
INSERT INTO `zone` VALUES (3554, 222, 'MCH', 'Greater Manchester');
INSERT INTO `zone` VALUES (3555, 222, 'GDD', 'Gwynedd');
INSERT INTO `zone` VALUES (3556, 222, 'HANTS', 'Hampshire');
INSERT INTO `zone` VALUES (3557, 222, 'HWR', 'Herefordshire');
INSERT INTO `zone` VALUES (3558, 222, 'HERTS', 'Hertfordshire');
INSERT INTO `zone` VALUES (3559, 222, 'HLD', 'Highlands');
INSERT INTO `zone` VALUES (3560, 222, 'IVER', 'Inverclyde');
INSERT INTO `zone` VALUES (3561, 222, 'IOW', 'Isle of Wight');
INSERT INTO `zone` VALUES (3562, 222, 'KNT', 'Kent');
INSERT INTO `zone` VALUES (3563, 222, 'LANCS', 'Lancashire');
INSERT INTO `zone` VALUES (3564, 222, 'LEICS', 'Leicestershire');
INSERT INTO `zone` VALUES (3565, 222, 'LINCS', 'Lincolnshire');
INSERT INTO `zone` VALUES (3566, 222, 'MSY', 'Merseyside');
INSERT INTO `zone` VALUES (3567, 222, 'MERT', 'Merthyr Tydfil');
INSERT INTO `zone` VALUES (3568, 222, 'MLOT', 'Midlothian');
INSERT INTO `zone` VALUES (3569, 222, 'MMOUTH', 'Monmouthshire');
INSERT INTO `zone` VALUES (3570, 222, 'MORAY', 'Moray');
INSERT INTO `zone` VALUES (3571, 222, 'NPRTAL', 'Neath Port Talbot');
INSERT INTO `zone` VALUES (3572, 222, 'NEWPT', 'Newport');
INSERT INTO `zone` VALUES (3573, 222, 'NOR', 'Norfolk');
INSERT INTO `zone` VALUES (3574, 222, 'ARYN', 'North Ayrshire');
INSERT INTO `zone` VALUES (3575, 222, 'LANN', 'North Lanarkshire');
INSERT INTO `zone` VALUES (3576, 222, 'YSN', 'North Yorkshire');
INSERT INTO `zone` VALUES (3577, 222, 'NHM', 'Northamptonshire');
INSERT INTO `zone` VALUES (3578, 222, 'NLD', 'Northumberland');
INSERT INTO `zone` VALUES (3579, 222, 'NOT', 'Nottinghamshire');
INSERT INTO `zone` VALUES (3580, 222, 'ORK', 'Orkney Islands');
INSERT INTO `zone` VALUES (3581, 222, 'OFE', 'Oxfordshire');
INSERT INTO `zone` VALUES (3582, 222, 'PEM', 'Pembrokeshire');
INSERT INTO `zone` VALUES (3583, 222, 'PERTH', 'Perth and Kinross');
INSERT INTO `zone` VALUES (3584, 222, 'PWS', 'Powys');
INSERT INTO `zone` VALUES (3585, 222, 'REN', 'Renfrewshire');
INSERT INTO `zone` VALUES (3586, 222, 'RHON', 'Rhondda Cynon Taff');
INSERT INTO `zone` VALUES (3587, 222, 'RUT', 'Rutland');
INSERT INTO `zone` VALUES (3588, 222, 'BOR', 'Scottish Borders');
INSERT INTO `zone` VALUES (3589, 222, 'SHET', 'Shetland Islands');
INSERT INTO `zone` VALUES (3590, 222, 'SPE', 'Shropshire');
INSERT INTO `zone` VALUES (3591, 222, 'SOM', 'Somerset');
INSERT INTO `zone` VALUES (3592, 222, 'ARYS', 'South Ayrshire');
INSERT INTO `zone` VALUES (3593, 222, 'LANS', 'South Lanarkshire');
INSERT INTO `zone` VALUES (3594, 222, 'YSS', 'South Yorkshire');
INSERT INTO `zone` VALUES (3595, 222, 'SFD', 'Staffordshire');
INSERT INTO `zone` VALUES (3596, 222, 'STIR', 'Stirling');
INSERT INTO `zone` VALUES (3597, 222, 'SFK', 'Suffolk');
INSERT INTO `zone` VALUES (3598, 222, 'SRY', 'Surrey');
INSERT INTO `zone` VALUES (3599, 222, 'SWAN', 'Swansea');
INSERT INTO `zone` VALUES (3600, 222, 'TORF', 'Torfaen');
INSERT INTO `zone` VALUES (3601, 222, 'TWR', 'Tyne and Wear');
INSERT INTO `zone` VALUES (3602, 222, 'VGLAM', 'Vale of Glamorgan');
INSERT INTO `zone` VALUES (3603, 222, 'WARKS', 'Warwickshire');
INSERT INTO `zone` VALUES (3604, 222, 'WDUN', 'West Dunbartonshire');
INSERT INTO `zone` VALUES (3605, 222, 'WLOT', 'West Lothian');
INSERT INTO `zone` VALUES (3606, 222, 'WMD', 'West Midlands');
INSERT INTO `zone` VALUES (3607, 222, 'SXW', 'West Sussex');
INSERT INTO `zone` VALUES (3608, 222, 'YSW', 'West Yorkshire');
INSERT INTO `zone` VALUES (3609, 222, 'WIL', 'Western Isles');
INSERT INTO `zone` VALUES (3610, 222, 'WLT', 'Wiltshire');
INSERT INTO `zone` VALUES (3611, 222, 'WORCS', 'Worcestershire');
INSERT INTO `zone` VALUES (3612, 222, 'WRX', 'Wrexham');
INSERT INTO `zone` VALUES (3613, 223, 'AL', 'Alabama');
INSERT INTO `zone` VALUES (3614, 223, 'AK', 'Alaska');
INSERT INTO `zone` VALUES (3615, 223, 'AS', 'American Samoa');
INSERT INTO `zone` VALUES (3616, 223, 'AZ', 'Arizona');
INSERT INTO `zone` VALUES (3617, 223, 'AR', 'Arkansas');
INSERT INTO `zone` VALUES (3618, 223, 'AF', 'Armed Forces Africa');
INSERT INTO `zone` VALUES (3619, 223, 'AA', 'Armed Forces Americas');
INSERT INTO `zone` VALUES (3620, 223, 'AC', 'Armed Forces Canada');
INSERT INTO `zone` VALUES (3621, 223, 'AE', 'Armed Forces Europe');
INSERT INTO `zone` VALUES (3622, 223, 'AM', 'Armed Forces Middle East');
INSERT INTO `zone` VALUES (3623, 223, 'AP', 'Armed Forces Pacific');
INSERT INTO `zone` VALUES (3624, 223, 'CA', 'California');
INSERT INTO `zone` VALUES (3625, 223, 'CO', 'Colorado');
INSERT INTO `zone` VALUES (3626, 223, 'CT', 'Connecticut');
INSERT INTO `zone` VALUES (3627, 223, 'DE', 'Delaware');
INSERT INTO `zone` VALUES (3628, 223, 'DC', 'District of Columbia');
INSERT INTO `zone` VALUES (3629, 223, 'FM', 'Federated States Of Micronesia');
INSERT INTO `zone` VALUES (3630, 223, 'FL', 'Florida');
INSERT INTO `zone` VALUES (3631, 223, 'GA', 'Georgia');
INSERT INTO `zone` VALUES (3632, 223, 'GU', 'Guam');
INSERT INTO `zone` VALUES (3633, 223, 'HI', 'Hawaii');
INSERT INTO `zone` VALUES (3634, 223, 'ID', 'Idaho');
INSERT INTO `zone` VALUES (3635, 223, 'IL', 'Illinois');
INSERT INTO `zone` VALUES (3636, 223, 'IN', 'Indiana');
INSERT INTO `zone` VALUES (3637, 223, 'IA', 'Iowa');
INSERT INTO `zone` VALUES (3638, 223, 'KS', 'Kansas');
INSERT INTO `zone` VALUES (3639, 223, 'KY', 'Kentucky');
INSERT INTO `zone` VALUES (3640, 223, 'LA', 'Louisiana');
INSERT INTO `zone` VALUES (3641, 223, 'ME', 'Maine');
INSERT INTO `zone` VALUES (3642, 223, 'MH', 'Marshall Islands');
INSERT INTO `zone` VALUES (3643, 223, 'MD', 'Maryland');
INSERT INTO `zone` VALUES (3644, 223, 'MA', 'Massachusetts');
INSERT INTO `zone` VALUES (3645, 223, 'MI', 'Michigan');
INSERT INTO `zone` VALUES (3646, 223, 'MN', 'Minnesota');
INSERT INTO `zone` VALUES (3647, 223, 'MS', 'Mississippi');
INSERT INTO `zone` VALUES (3648, 223, 'MO', 'Missouri');
INSERT INTO `zone` VALUES (3649, 223, 'MT', 'Montana');
INSERT INTO `zone` VALUES (3650, 223, 'NE', 'Nebraska');
INSERT INTO `zone` VALUES (3651, 223, 'NV', 'Nevada');
INSERT INTO `zone` VALUES (3652, 223, 'NH', 'New Hampshire');
INSERT INTO `zone` VALUES (3653, 223, 'NJ', 'New Jersey');
INSERT INTO `zone` VALUES (3654, 223, 'NM', 'New Mexico');
INSERT INTO `zone` VALUES (3655, 223, 'NY', 'New York');
INSERT INTO `zone` VALUES (3656, 223, 'NC', 'North Carolina');
INSERT INTO `zone` VALUES (3657, 223, 'ND', 'North Dakota');
INSERT INTO `zone` VALUES (3658, 223, 'MP', 'Northern Mariana Islands');
INSERT INTO `zone` VALUES (3659, 223, 'OH', 'Ohio');
INSERT INTO `zone` VALUES (3660, 223, 'OK', 'Oklahoma');
INSERT INTO `zone` VALUES (3661, 223, 'OR', 'Oregon');
INSERT INTO `zone` VALUES (3662, 223, 'PW', 'Palau');
INSERT INTO `zone` VALUES (3663, 223, 'PA', 'Pennsylvania');
INSERT INTO `zone` VALUES (3664, 223, 'PR', 'Puerto Rico');
INSERT INTO `zone` VALUES (3665, 223, 'RI', 'Rhode Island');
INSERT INTO `zone` VALUES (3666, 223, 'SC', 'South Carolina');
INSERT INTO `zone` VALUES (3667, 223, 'SD', 'South Dakota');
INSERT INTO `zone` VALUES (3668, 223, 'TN', 'Tennessee');
INSERT INTO `zone` VALUES (3669, 223, 'TX', 'Texas');
INSERT INTO `zone` VALUES (3670, 223, 'UT', 'Utah');
INSERT INTO `zone` VALUES (3671, 223, 'VT', 'Vermont');
INSERT INTO `zone` VALUES (3672, 223, 'VI', 'Virgin Islands');
INSERT INTO `zone` VALUES (3673, 223, 'VA', 'Virginia');
INSERT INTO `zone` VALUES (3674, 223, 'WA', 'Washington');
INSERT INTO `zone` VALUES (3675, 223, 'WV', 'West Virginia');
INSERT INTO `zone` VALUES (3676, 223, 'WI', 'Wisconsin');
INSERT INTO `zone` VALUES (3677, 223, 'WY', 'Wyoming');
INSERT INTO `zone` VALUES (3678, 224, 'BI', 'Baker Island');
INSERT INTO `zone` VALUES (3679, 224, 'HI', 'Howland Island');
INSERT INTO `zone` VALUES (3680, 224, 'JI', 'Jarvis Island');
INSERT INTO `zone` VALUES (3681, 224, 'JA', 'Johnston Atoll');
INSERT INTO `zone` VALUES (3682, 224, 'KR', 'Kingman Reef');
INSERT INTO `zone` VALUES (3683, 224, 'MA', 'Midway Atoll');
INSERT INTO `zone` VALUES (3684, 224, 'NI', 'Navassa Island');
INSERT INTO `zone` VALUES (3685, 224, 'PA', 'Palmyra Atoll');
INSERT INTO `zone` VALUES (3686, 224, 'WI', 'Wake Island');
INSERT INTO `zone` VALUES (3687, 225, 'AR', 'Artigas');
INSERT INTO `zone` VALUES (3688, 225, 'CA', 'Canelones');
INSERT INTO `zone` VALUES (3689, 225, 'CL', 'Cerro Largo');
INSERT INTO `zone` VALUES (3690, 225, 'CO', 'Colonia');
INSERT INTO `zone` VALUES (3691, 225, 'DU', 'Durazno');
INSERT INTO `zone` VALUES (3692, 225, 'FS', 'Flores');
INSERT INTO `zone` VALUES (3693, 225, 'FA', 'Florida');
INSERT INTO `zone` VALUES (3694, 225, 'LA', 'Lavalleja');
INSERT INTO `zone` VALUES (3695, 225, 'MA', 'Maldonado');
INSERT INTO `zone` VALUES (3696, 225, 'MO', 'Montevideo');
INSERT INTO `zone` VALUES (3697, 225, 'PA', 'Paysandu');
INSERT INTO `zone` VALUES (3698, 225, 'RN', 'Rio Negro');
INSERT INTO `zone` VALUES (3699, 225, 'RV', 'Rivera');
INSERT INTO `zone` VALUES (3700, 225, 'RO', 'Rocha');
INSERT INTO `zone` VALUES (3701, 225, 'SL', 'Salto');
INSERT INTO `zone` VALUES (3702, 225, 'SJ', 'San Jose');
INSERT INTO `zone` VALUES (3703, 225, 'SO', 'Soriano');
INSERT INTO `zone` VALUES (3704, 225, 'TA', 'Tacuarembo');
INSERT INTO `zone` VALUES (3705, 225, 'TT', 'Treinta y Tres');
INSERT INTO `zone` VALUES (3706, 226, 'AN', 'Andijon');
INSERT INTO `zone` VALUES (3707, 226, 'BU', 'Buxoro');
INSERT INTO `zone` VALUES (3708, 226, 'FA', 'Farg''ona');
INSERT INTO `zone` VALUES (3709, 226, 'JI', 'Jizzax');
INSERT INTO `zone` VALUES (3710, 226, 'NG', 'Namangan');
INSERT INTO `zone` VALUES (3711, 226, 'NW', 'Navoiy');
INSERT INTO `zone` VALUES (3712, 226, 'QA', 'Qashqadaryo');
INSERT INTO `zone` VALUES (3713, 226, 'QR', 'Qoraqalpog''iston Republikasi');
INSERT INTO `zone` VALUES (3714, 226, 'SA', 'Samarqand');
INSERT INTO `zone` VALUES (3715, 226, 'SI', 'Sirdaryo');
INSERT INTO `zone` VALUES (3716, 226, 'SU', 'Surxondaryo');
INSERT INTO `zone` VALUES (3717, 226, 'TK', 'Toshkent City');
INSERT INTO `zone` VALUES (3718, 226, 'TO', 'Toshkent Region');
INSERT INTO `zone` VALUES (3719, 226, 'XO', 'Xorazm');
INSERT INTO `zone` VALUES (3720, 227, 'MA', 'Malampa');
INSERT INTO `zone` VALUES (3721, 227, 'PE', 'Penama');
INSERT INTO `zone` VALUES (3722, 227, 'SA', 'Sanma');
INSERT INTO `zone` VALUES (3723, 227, 'SH', 'Shefa');
INSERT INTO `zone` VALUES (3724, 227, 'TA', 'Tafea');
INSERT INTO `zone` VALUES (3725, 227, 'TO', 'Torba');
INSERT INTO `zone` VALUES (3726, 229, 'AM', 'Amazonas');
INSERT INTO `zone` VALUES (3727, 229, 'AN', 'Anzoategui');
INSERT INTO `zone` VALUES (3728, 229, 'AP', 'Apure');
INSERT INTO `zone` VALUES (3729, 229, 'AR', 'Aragua');
INSERT INTO `zone` VALUES (3730, 229, 'BA', 'Barinas');
INSERT INTO `zone` VALUES (3731, 229, 'BO', 'Bolivar');
INSERT INTO `zone` VALUES (3732, 229, 'CA', 'Carabobo');
INSERT INTO `zone` VALUES (3733, 229, 'CO', 'Cojedes');
INSERT INTO `zone` VALUES (3734, 229, 'DA', 'Delta Amacuro');
INSERT INTO `zone` VALUES (3735, 229, 'DF', 'Dependencias Federales');
INSERT INTO `zone` VALUES (3736, 229, 'DI', 'Distrito Federal');
INSERT INTO `zone` VALUES (3737, 229, 'FA', 'Falcon');
INSERT INTO `zone` VALUES (3738, 229, 'GU', 'Guarico');
INSERT INTO `zone` VALUES (3739, 229, 'LA', 'Lara');
INSERT INTO `zone` VALUES (3740, 229, 'ME', 'Merida');
INSERT INTO `zone` VALUES (3741, 229, 'MI', 'Miranda');
INSERT INTO `zone` VALUES (3742, 229, 'MO', 'Monagas');
INSERT INTO `zone` VALUES (3743, 229, 'NE', 'Nueva Esparta');
INSERT INTO `zone` VALUES (3744, 229, 'PO', 'Portuguesa');
INSERT INTO `zone` VALUES (3745, 229, 'SU', 'Sucre');
INSERT INTO `zone` VALUES (3746, 229, 'TA', 'Tachira');
INSERT INTO `zone` VALUES (3747, 229, 'TR', 'Trujillo');
INSERT INTO `zone` VALUES (3748, 229, 'VA', 'Vargas');
INSERT INTO `zone` VALUES (3749, 229, 'YA', 'Yaracuy');
INSERT INTO `zone` VALUES (3750, 229, 'ZU', 'Zulia');
INSERT INTO `zone` VALUES (3751, 230, 'AG', 'An Giang');
INSERT INTO `zone` VALUES (3752, 230, 'BG', 'Bac Giang');
INSERT INTO `zone` VALUES (3753, 230, 'BK', 'Bac Kan');
INSERT INTO `zone` VALUES (3754, 230, 'BL', 'Bac Lieu');
INSERT INTO `zone` VALUES (3755, 230, 'BC', 'Bac Ninh');
INSERT INTO `zone` VALUES (3756, 230, 'BR', 'Ba Ria-Vung Tau');
INSERT INTO `zone` VALUES (3757, 230, 'BN', 'Ben Tre');
INSERT INTO `zone` VALUES (3758, 230, 'BH', 'Binh Dinh');
INSERT INTO `zone` VALUES (3759, 230, 'BU', 'Binh Duong');
INSERT INTO `zone` VALUES (3760, 230, 'BP', 'Binh Phuoc');
INSERT INTO `zone` VALUES (3761, 230, 'BT', 'Binh Thuan');
INSERT INTO `zone` VALUES (3762, 230, 'CM', 'Ca Mau');
INSERT INTO `zone` VALUES (3763, 230, 'CT', 'Can Tho');
INSERT INTO `zone` VALUES (3764, 230, 'CB', 'Cao Bang');
INSERT INTO `zone` VALUES (3765, 230, 'DL', 'Dak Lak');
INSERT INTO `zone` VALUES (3766, 230, 'DG', 'Dak Nong');
INSERT INTO `zone` VALUES (3767, 230, 'DN', 'Da Nang');
INSERT INTO `zone` VALUES (3768, 230, 'DB', 'Dien Bien');
INSERT INTO `zone` VALUES (3769, 230, 'DI', 'Dong Nai');
INSERT INTO `zone` VALUES (3770, 230, 'DT', 'Dong Thap');
INSERT INTO `zone` VALUES (3771, 230, 'GL', 'Gia Lai');
INSERT INTO `zone` VALUES (3772, 230, 'HG', 'Ha Giang');
INSERT INTO `zone` VALUES (3773, 230, 'HD', 'Hai Duong');
INSERT INTO `zone` VALUES (3774, 230, 'HP', 'Hai Phong');
INSERT INTO `zone` VALUES (3775, 230, 'HM', 'Ha Nam');
INSERT INTO `zone` VALUES (3776, 230, 'HI', 'Ha Noi');
INSERT INTO `zone` VALUES (3777, 230, 'HT', 'Ha Tay');
INSERT INTO `zone` VALUES (3778, 230, 'HH', 'Ha Tinh');
INSERT INTO `zone` VALUES (3779, 230, 'HB', 'Hoa Binh');
INSERT INTO `zone` VALUES (3780, 230, 'HC', 'Ho Chi Minh');
INSERT INTO `zone` VALUES (3781, 230, 'HU', 'Hau Giang');
INSERT INTO `zone` VALUES (3782, 230, 'HY', 'Hung Yen');
INSERT INTO `zone` VALUES (3783, 232, 'C', 'Saint Croix');
INSERT INTO `zone` VALUES (3784, 232, 'J', 'Saint John');
INSERT INTO `zone` VALUES (3785, 232, 'T', 'Saint Thomas');
INSERT INTO `zone` VALUES (3786, 233, 'A', 'Alo');
INSERT INTO `zone` VALUES (3787, 233, 'S', 'Sigave');
INSERT INTO `zone` VALUES (3788, 233, 'W', 'Wallis');
INSERT INTO `zone` VALUES (3789, 235, 'AB', 'Abyan');
INSERT INTO `zone` VALUES (3790, 235, 'AD', 'Adan');
INSERT INTO `zone` VALUES (3791, 235, 'AM', 'Amran');
INSERT INTO `zone` VALUES (3792, 235, 'BA', 'Al Bayda');
INSERT INTO `zone` VALUES (3793, 235, 'DA', 'Ad Dali');
INSERT INTO `zone` VALUES (3794, 235, 'DH', 'Dhamar');
INSERT INTO `zone` VALUES (3795, 235, 'HD', 'Hadramawt');
INSERT INTO `zone` VALUES (3796, 235, 'HJ', 'Hajjah');
INSERT INTO `zone` VALUES (3797, 235, 'HU', 'Al Hudaydah');
INSERT INTO `zone` VALUES (3798, 235, 'IB', 'Ibb');
INSERT INTO `zone` VALUES (3799, 235, 'JA', 'Al Jawf');
INSERT INTO `zone` VALUES (3800, 235, 'LA', 'Lahij');
INSERT INTO `zone` VALUES (3801, 235, 'MA', 'Ma''rib');
INSERT INTO `zone` VALUES (3802, 235, 'MR', 'Al Mahrah');
INSERT INTO `zone` VALUES (3803, 235, 'MW', 'Al Mahwit');
INSERT INTO `zone` VALUES (3804, 235, 'SD', 'Sa''dah');
INSERT INTO `zone` VALUES (3805, 235, 'SN', 'San''a');
INSERT INTO `zone` VALUES (3806, 235, 'SH', 'Shabwah');
INSERT INTO `zone` VALUES (3807, 235, 'TA', 'Ta''izz');
INSERT INTO `zone` VALUES (3808, 236, 'KOS', 'Kosovo');
INSERT INTO `zone` VALUES (3809, 236, 'MON', 'Montenegro');
INSERT INTO `zone` VALUES (3810, 236, 'SER', 'Serbia');
INSERT INTO `zone` VALUES (3811, 236, 'VOJ', 'Vojvodina');
INSERT INTO `zone` VALUES (3812, 237, 'BC', 'Bas-Congo');
INSERT INTO `zone` VALUES (3813, 237, 'BN', 'Bandundu');
INSERT INTO `zone` VALUES (3814, 237, 'EQ', 'Equateur');
INSERT INTO `zone` VALUES (3815, 237, 'KA', 'Katanga');
INSERT INTO `zone` VALUES (3816, 237, 'KE', 'Kasai-Oriental');
INSERT INTO `zone` VALUES (3817, 237, 'KN', 'Kinshasa');
INSERT INTO `zone` VALUES (3818, 237, 'KW', 'Kasai-Occidental');
INSERT INTO `zone` VALUES (3819, 237, 'MA', 'Maniema');
INSERT INTO `zone` VALUES (3820, 237, 'NK', 'Nord-Kivu');
INSERT INTO `zone` VALUES (3821, 237, 'OR', 'Orientale');
INSERT INTO `zone` VALUES (3822, 237, 'SK', 'Sud-Kivu');
INSERT INTO `zone` VALUES (3823, 238, 'CE', 'Central');
INSERT INTO `zone` VALUES (3824, 238, 'CB', 'Copperbelt');
INSERT INTO `zone` VALUES (3825, 238, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (3826, 238, 'LP', 'Luapula');
INSERT INTO `zone` VALUES (3827, 238, 'LK', 'Lusaka');
INSERT INTO `zone` VALUES (3828, 238, 'NO', 'Northern');
INSERT INTO `zone` VALUES (3829, 238, 'NW', 'North-Western');
INSERT INTO `zone` VALUES (3830, 238, 'SO', 'Southern');
INSERT INTO `zone` VALUES (3831, 238, 'WE', 'Western');
INSERT INTO `zone` VALUES (3832, 239, 'BU', 'Bulawayo');
INSERT INTO `zone` VALUES (3833, 239, 'HA', 'Harare');
INSERT INTO `zone` VALUES (3834, 239, 'ML', 'Manicaland');
INSERT INTO `zone` VALUES (3835, 239, 'MC', 'Mashonaland Central');
INSERT INTO `zone` VALUES (3836, 239, 'ME', 'Mashonaland East');
INSERT INTO `zone` VALUES (3837, 239, 'MW', 'Mashonaland West');
INSERT INTO `zone` VALUES (3838, 239, 'MV', 'Masvingo');
INSERT INTO `zone` VALUES (3839, 239, 'MN', 'Matabeleland North');
INSERT INTO `zone` VALUES (3840, 239, 'MS', 'Matabeleland South');
INSERT INTO `zone` VALUES (3841, 239, 'MD', 'Midlands');
