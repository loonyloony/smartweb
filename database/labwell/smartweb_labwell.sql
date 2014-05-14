-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Oct 04, 2013 at 05:23 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `smartweb_labwell`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `addon`
-- 

INSERT INTO `addon` VALUES (30, 'homesimpleslides', 'splash/homesimpleslides', 'splash', 1);
INSERT INTO `addon` VALUES (31, 'productcategory', 'sidebar/productcategory', 'sidebar', 1);
INSERT INTO `addon` VALUES (33, 'hotnews', 'dashboard/hotnews', 'dashboard', 1);
INSERT INTO `addon` VALUES (34, 'banner', 'sidebar/banner', 'sidebar', 1);
INSERT INTO `addon` VALUES (39, 'viewmost', 'sidebar/viewmost', 'sidebar', 1);
INSERT INTO `addon` VALUES (43, 'threenewslides', 'sidebar/threenewslides', 'sidebar', 1);

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

INSERT INTO `addon_description` VALUES ('promotionbox', 'vn', 'Box Khuyến mãi');
INSERT INTO `addon_description` VALUES ('homeproduct', 'vn', 'home new product');
INSERT INTO `addon_description` VALUES ('homesimpleslides', 'vn', 'Big Banner');
INSERT INTO `addon_description` VALUES ('productcategory', 'vn', 'Category');
INSERT INTO `addon_description` VALUES ('hotnews', 'vn', 'Tin nổi bật');
INSERT INTO `addon_description` VALUES ('banner', 'vn', 'Liên kết');
INSERT INTO `addon_description` VALUES ('viewmost', 'vn', 'Chủ đề nhiều người quan tâm');
INSERT INTO `addon_description` VALUES ('threenewslides', 'vn', 'Có thể bạn chưa biết');

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

INSERT INTO `layout` VALUES (1, 'default_layout', 'upload/elife_logo.png', 'http://localhost/demo/upload/', 'twosidebar', 1, 2);
INSERT INTO `layout` VALUES (2, 'homepage', '', '', 'twosidebar', 1, 2);
INSERT INTO `layout` VALUES (10, 'contact', '', '', 'leftsidebar', 1, 0);

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

INSERT INTO `layout_dashboard` VALUES ('homepage', 'hotnews', 1);

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
INSERT INTO `layout_description` VALUES ('homepage', 'Homepage', 'en');
INSERT INTO `layout_description` VALUES ('homepage', 'Trang chủ', 'vn');
INSERT INTO `layout_description` VALUES ('default_layout', 'Default', 'en');
INSERT INTO `layout_description` VALUES ('contact', 'Contact', 'en');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

-- 
-- Dumping data for table `media`
-- 

INSERT INTO `media` VALUES (1, 'default13796635781', '', 'media_news', '[155]', 'admin', 'Du lịch hai mươi ngàn ?!?', '', '', 'vn', '&lt;p&gt;\r\n	Bạn c&amp;oacute; tin l&amp;agrave; một chuyến du lịch trong một ng&amp;agrave;y chỉ c&amp;oacute; gi&amp;aacute; chưa tới 20 ng&amp;agrave;n kh&amp;ocirc;ng? Thật đ&amp;oacute;, đ&amp;uacute;ng nghĩa &amp;quot;du lịch&amp;quot; đ&amp;agrave;ng ho&amp;agrave;ng, bạn c&amp;oacute; thể chi&amp;ecirc;m ngưỡng rừng hoang sơ, cả b&amp;atilde;i biển m&amp;ecirc;nh m&amp;ocirc;ng rộng mở, nghe tiếng chim h&amp;oacute;t, tiếng vượn h&amp;uacute;...&lt;/p&gt;', '&lt;p&gt;\r\n	Chắc bạn đo&amp;aacute;n ra rồi: nơi đ&amp;oacute; l&amp;agrave; Cần Giờ chứ g&amp;igrave;! Do c&amp;oacute; lẽ &amp;quot;bụt ch&amp;ugrave;a nh&amp;agrave; kh&amp;ocirc;ng thi&amp;ecirc;ng&amp;quot; n&amp;ecirc;n so với c&amp;aacute;c địa điểm hot kh&amp;aacute;c như Vũng T&amp;agrave;u, Mũi N&amp;eacute;... th&amp;igrave; lượng kh&amp;aacute;ch du lịch kh&amp;ocirc;ng thể n&amp;agrave;o s&amp;aacute;nh được nhưng tour bụi m&amp;agrave;&amp;nbsp;si&amp;ecirc;u rẻ th&amp;igrave; Cần Giờ l&amp;agrave; v&amp;ocirc; địch!&amp;nbsp;&lt;br /&gt;\r\n	Dĩ nhi&amp;ecirc;n với&amp;nbsp;chi ph&amp;iacute;&amp;nbsp;như tr&amp;ecirc;n th&amp;igrave; bạn phải đem theo thức ăn trưa v&amp;igrave; tại miệt duy&amp;ecirc;n hải n&amp;agrave;y, thức ăn gi&amp;aacute; kh&amp;aacute; cao.&lt;br /&gt;\r\n	V&amp;agrave;i năm trước t&amp;ocirc;i c&amp;oacute; đi một lần bằng xe bu&amp;yacute;t nhưng xưa th&amp;igrave; kh&amp;aacute;c, c&amp;oacute; lẽ đến nay Cần Giờ đ&amp;atilde; thay đổi kh&amp;aacute; nhiều. Nhưng th&amp;ocirc;i, c&amp;ograve;n nhớ g&amp;igrave; th&amp;igrave; m&amp;igrave;nh viết nấy vậy, sẽ r&amp;aacute;ng bổ xung th&amp;ecirc;m c&amp;aacute;c th&amp;ocirc;ng tin m&amp;igrave;nh t&amp;igrave;m kiếm được.&amp;nbsp;&lt;br /&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_Ep-_sWOI/AAAAAAAAAhA/OCKqU4HiDRI/s1600/cangio4.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_Ep-_sWOI/AAAAAAAAAhA/OCKqU4HiDRI/s320/cangio4.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Cần Giờ l&amp;agrave; một huyện ven biển nằm ở ph&amp;iacute;a đ&amp;ocirc;ng nam của Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh, c&amp;aacute;ch trung t&amp;acirc;m khoảng 50 km bao gồm thị trấn Cần Thạnh v&amp;agrave; 6 x&amp;atilde;: B&amp;igrave;nh Kh&amp;aacute;nh, An Thới Đ&amp;ocirc;ng, L&amp;yacute; Nhơn, Tam Th&amp;ocirc;n Hiệp, Long H&amp;ograve;a v&amp;agrave; Thạnh An. Diện t&amp;iacute;ch của huyện l&amp;agrave; 704,2 km&amp;sup2;. Địa h&amp;igrave;nh chia cắt bởi s&amp;ocirc;ng, rạch, kh&amp;ocirc;ng c&amp;oacute; nước ngọt. Rừng s&amp;aacute;c v&amp;agrave; đước, đất rừng chiếm 47,25% diện t&amp;iacute;ch (tha hồ ngắm rừng nh&amp;eacute;).&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Huyện Cần Giờ tiếp cận với biển Đ&amp;ocirc;ng hiện hữu một khu rừng ngập mặn đan xen với hệ thống s&amp;ocirc;ng rạch d&amp;agrave;y đặc chứa đựng c&amp;aacute;c hệ sinh th&amp;aacute;i mang t&amp;iacute;nh đa dạng sinh học cao với nhiều lo&amp;agrave;i động thực vật đặc hữu của miền duy&amp;ecirc;n hải Việt Nam, đ&amp;oacute; l&amp;agrave; khu rừng ngập mặn Cần Giờ.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Nếu đi Cần Giờ bằng xe bu&amp;yacute;t bạn sẽ đ&amp;oacute;n xe Bến Th&amp;agrave;nh - Nh&amp;agrave; B&amp;egrave; ( xe số 20 ) tại bến xe bu&amp;yacute;t trung t&amp;acirc;m th&amp;agrave;nh phố ( đối diện chợ Bến Th&amp;agrave;nh ). Với gi&amp;aacute; v&amp;eacute; chỉ 3 ng&amp;agrave;n đồng, xe n&amp;agrave;y sẽ đi qua Q1, Q4 ( Cảng Kh&amp;aacute;nh Hội ), Q7 v&amp;agrave; đ&amp;iacute;ch cuối c&amp;ugrave;ng l&amp;agrave; bến ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://3.bp.blogspot.com/_L_5hRx9MyHw/TG_E6PoDHGI/AAAAAAAAAhE/564ptDfkbUo/s1600/1cangio2.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://3.bp.blogspot.com/_L_5hRx9MyHw/TG_E6PoDHGI/AAAAAAAAAhE/564ptDfkbUo/s320/1cangio2.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Khi th&amp;agrave;nh phố chuyển đổi xe bu&amp;yacute;t th&amp;igrave; những xe n&amp;agrave;y b&amp;aacute; ch&amp;aacute;y như c&amp;aacute;c tuyến trong nội th&amp;agrave;nh nhưng qua v&amp;agrave;i năm sự dụng th&amp;igrave; hiện tại bu&amp;yacute;t n&amp;agrave;y hơi t&amp;agrave;n một t&amp;yacute;. Kh&amp;ocirc;ng sao cả, n&amp;oacute; vẫn đưa bạn đến nơi theo giờ giấc ho&amp;agrave;n chỉnh.&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;a href=&quot;http://1.bp.blogspot.com/_L_5hRx9MyHw/TG_FHEJq6cI/AAAAAAAAAhI/tR7GKiYsGi8/s1600/mauxanhcangio.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img ox=&quot;true&quot; src=&quot;http://1.bp.blogspot.com/_L_5hRx9MyHw/TG_FHEJq6cI/AAAAAAAAAhI/tR7GKiYsGi8/s320/mauxanhcangio.jpg&quot; style=&quot;border-width: 0px; border-style: solid; float: left; margin-right: 10px;&quot; unselectable=&quot;on&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Gi&amp;aacute; v&amp;eacute; qua ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh năm trước chỉ c&amp;oacute; 500đ th&amp;ocirc;i (kh&amp;aacute;ch đi bộ) v&amp;agrave; khi đứng tr&amp;ecirc;n lan cang: bạn sẽ tận hưởng hơi gi&amp;oacute; l&amp;agrave;nh lạnh thổi tr&amp;ecirc;n mặt s&amp;ocirc;ng rộng để x&amp;oacute;a tan c&amp;aacute;i cục x&amp;igrave; tr&amp;eacute;t vẫn nai tr&amp;ecirc;n lưng trong cuộc sống đ&amp;ocirc; thị h&amp;agrave;ng ng&amp;agrave;y, sướng nghen!&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Xuống ph&amp;agrave; th&amp;igrave; bạn đ&amp;oacute;n tiếp xe bu&amp;yacute;t B&amp;igrave;nh Kh&amp;aacute;nh - Cần Thạnh (xe số 90, gi&amp;aacute; v&amp;eacute; 4 ng&amp;agrave;n) để đến c&amp;aacute;c điểm du lịch trọng yếu của Cần Giờ. Tr&amp;ecirc;n đoạn đi n&amp;agrave;y, bạn c&amp;oacute; thể quan s&amp;aacute;t hai b&amp;ecirc;n l&amp;agrave; những vạt rừng bạt ng&amp;agrave;n to&amp;agrave;n l&amp;agrave; c&amp;acirc;y Đước, S&amp;uacute; vẹt, Dừa nước xanh mơn mởn gi&amp;oacute; thổi lao xao.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		Đường xa n&amp;ecirc;n hơi l&amp;acirc;u một t&amp;yacute;, c&amp;oacute; thể mất khoảng 1 giờ rưỡi nhưng cảnh thi&amp;ecirc;n nhi&amp;ecirc;n đẹp như thế cũng tốt hơn nhiều những khối b&amp;ecirc; t&amp;ocirc;ng đồ sộ trong th&amp;agrave;nh phố m&amp;agrave; h&amp;agrave;ng ng&amp;agrave;y ta vẫn đi qua.&lt;/div&gt;\r\n	&lt;p&gt;\r\n		Cần Giờ c&amp;oacute; khu du lịch 30-4, TT sinh hoạt Thanh thiếu ni&amp;ecirc;n, Khu du kịch V&amp;agrave;m S&amp;aacute;t, Đảo Khỉ, Bảo T&amp;agrave;ng Cần giờ, chiến khu Rừng s&amp;aacute;c...v.v... v&amp;agrave; tất nhi&amp;ecirc;n c&amp;oacute; b&amp;atilde;i biển.&lt;br /&gt;\r\n		Cần Giờ cũng c&amp;oacute; nh&amp;agrave; h&amp;agrave;ng, nh&amp;agrave; nghỉ lẫn kh&amp;aacute;ch sạn... tập trung chủ yếu ở b&amp;atilde;i biển nhưng mục ti&amp;ecirc;u của ta l&amp;agrave; du lịch si&amp;ecirc;u nhỏ n&amp;ecirc;n kh&amp;ocirc;ng cần ch&amp;uacute; &amp;yacute; tới. Cơm bụi gi&amp;aacute; b&amp;egrave;o th&amp;igrave; chắc kh&amp;ocirc;ng c&amp;oacute; đ&amp;acirc;u, v&amp;igrave; vậy đầu b&amp;agrave;i viết nhắc đến việc đem thức ăn theo l&amp;agrave; vậy.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_FO8kKH-I/AAAAAAAAAhM/t3dLZOZKLes/s1600/1391758357_4cde0ed7ef.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_FO8kKH-I/AAAAAAAAAhM/t3dLZOZKLes/s320/1391758357_4cde0ed7ef.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tr&amp;ecirc;n đường đi nếu muốn gh&amp;eacute; thăm quan điểm n&amp;agrave;o th&amp;igrave; bạn xin xuống rồi đi bộ v&amp;ocirc;, sau đ&amp;oacute; lại ra bắt tiếp xe bus để đi. Xe bus ở Cần Giờ kh&amp;ocirc;ng c&amp;oacute; trạm để đ&amp;oacute;n hay xuống xe m&amp;agrave; c&amp;oacute; thể l&amp;ecirc;n xuống h&amp;agrave; rầm, chổ n&amp;agrave;o cũng gh&amp;eacute;!&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Bọn khỉ lềnh kh&amp;ecirc;nh tại đảo khỉ, bạn cần cẩn thận v&amp;igrave; đ&amp;aacute;m đệ tử Tề Thi&amp;ecirc;n n&amp;agrave;y tinh ranh lắm đ&amp;oacute; nghen: cầm b&amp;aacute;nh kẹo, ĐTDĐ l&amp;agrave; c&amp;oacute; thể bị giật mất đấy. Trong khu n&amp;agrave;y c&amp;ograve;n c&amp;oacute; một bầy c&amp;aacute; sấu, chồn, trăn...&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Để đi nhiều nơi c&amp;oacute; thể gọi xe &amp;ocirc;m nhưng coi chừng to&amp;agrave;n l&amp;agrave; c&amp;aacute;c m&amp;aacute;y ch&amp;eacute;m kh&amp;ocirc;ng đấy. Tuy nhi&amp;ecirc;n: theo ti&amp;ecirc;u ch&amp;iacute; đề ra tr&amp;ecirc;n đầu b&amp;agrave;i th&amp;igrave; cứ bu&amp;yacute;t v&amp;agrave; l&amp;ocirc; ca ch&amp;acirc;n l&amp;agrave; tới đ&amp;acirc;u cũng tới được m&amp;agrave;.&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_F_wdSKSI/AAAAAAAAAhU/AqcsUMFNFZk/s1600/chao20doc209.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_F_wdSKSI/AAAAAAAAAhU/AqcsUMFNFZk/s320/chao20doc209.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Đứng tại biển Cần Giờ, bạn sẽ thấy xa xa kia l&amp;agrave; mũi Vũng T&amp;agrave;u, đừng để chốn kia c&amp;aacute;m dỗ bạn nh&amp;eacute; d&amp;ugrave; t&amp;agrave;u qua đ&amp;oacute; chỉ mất dưới 20 ng&amp;agrave;n.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Lễ hội ngư d&amp;acirc;n Cần Giờ được tổ chức h&amp;agrave;ng năm từ ng&amp;agrave;y 3-10 đến 5-10 với một số tr&amp;ograve; chơi d&amp;acirc;n gian, biểu diễn đấu cờ người, thả diều, thả đ&amp;egrave;n hoa đăng, triển l&amp;atilde;m, chợ phi&amp;ecirc;n c&amp;ugrave;ng với nghi lễ ch&amp;iacute;nh &amp;ldquo;nghinh &amp;Ocirc;ng&amp;rdquo;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Chiều về, t&amp;iacute;nh ra chỉ tốn 15 ng&amp;agrave;n tiền xe, ph&amp;agrave; - 5 ng&amp;agrave;n c&amp;ograve;n lại d&amp;agrave;nh cho nước tinh khiết, đạt chỉ ti&amp;ecirc;u!&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'du-lich-hai-muoi-ngan', '', '', '', '', '', '', 0, 0, 'upload/bus.JPG', 0, '', '', '', 1, 0, 'active', '', '2013-09-20 14:52:58', 'admin', '2013-09-20 14:52:58');
INSERT INTO `media` VALUES (2, 'default13796676541', '', 'media_contactmap', '[161]', 'admin', 'Labwell', '', '', 'vn', '', '', 'lien-he', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-09-20 16:00:54', 'admin', '2013-10-03 17:45:33');
INSERT INTO `media` VALUES (3, 'default13796696461', '', 'media_blog', '[155]', 'admin', 'Du lịch hai mươi ngàn !?!', '', '', 'vn', '&lt;p&gt;\r\n	Bạn c&amp;oacute; tin l&amp;agrave; một chuyến du lịch trong một ng&amp;agrave;y chỉ c&amp;oacute; gi&amp;aacute; chưa tới 20 ng&amp;agrave;n kh&amp;ocirc;ng? Thật đ&amp;oacute;, đ&amp;uacute;ng nghĩa &amp;quot;du lịch&amp;quot; đ&amp;agrave;ng ho&amp;agrave;ng, bạn c&amp;oacute; thể chi&amp;ecirc;m ngưỡng rừng hoang sơ, cả b&amp;atilde;i biển m&amp;ecirc;nh m&amp;ocirc;ng rộng mở, nghe tiếng chim h&amp;oacute;t, tiếng vượn h&amp;uacute;...&lt;/p&gt;', '&lt;p&gt;\r\n	Chắc bạn đo&amp;aacute;n ra rồi: nơi đ&amp;oacute; l&amp;agrave; Cần Giờ chứ g&amp;igrave;! Do c&amp;oacute; lẽ &amp;quot;bụt ch&amp;ugrave;a nh&amp;agrave; kh&amp;ocirc;ng thi&amp;ecirc;ng&amp;quot; n&amp;ecirc;n so với c&amp;aacute;c địa điểm hot kh&amp;aacute;c như Vũng T&amp;agrave;u, Mũi N&amp;eacute;... th&amp;igrave; lượng kh&amp;aacute;ch du lịch kh&amp;ocirc;ng thể n&amp;agrave;o s&amp;aacute;nh được nhưng tour bụi m&amp;agrave;&amp;nbsp;si&amp;ecirc;u rẻ th&amp;igrave; Cần Giờ l&amp;agrave; v&amp;ocirc; địch!&amp;nbsp;&lt;br /&gt;\r\n	Dĩ nhi&amp;ecirc;n với&amp;nbsp;chi ph&amp;iacute;&amp;nbsp;như tr&amp;ecirc;n th&amp;igrave; bạn phải đem theo thức ăn trưa v&amp;igrave; tại miệt duy&amp;ecirc;n hải n&amp;agrave;y, thức ăn gi&amp;aacute; kh&amp;aacute; cao.&lt;br /&gt;\r\n	V&amp;agrave;i năm trước t&amp;ocirc;i c&amp;oacute; đi một lần bằng xe bu&amp;yacute;t nhưng xưa th&amp;igrave; kh&amp;aacute;c, c&amp;oacute; lẽ đến nay Cần Giờ đ&amp;atilde; thay đổi kh&amp;aacute; nhiều. Nhưng th&amp;ocirc;i, c&amp;ograve;n nhớ g&amp;igrave; th&amp;igrave; m&amp;igrave;nh viết nấy vậy, sẽ r&amp;aacute;ng bổ xung th&amp;ecirc;m c&amp;aacute;c th&amp;ocirc;ng tin m&amp;igrave;nh t&amp;igrave;m kiếm được.&amp;nbsp;&lt;br /&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_Ep-_sWOI/AAAAAAAAAhA/OCKqU4HiDRI/s1600/cangio4.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_Ep-_sWOI/AAAAAAAAAhA/OCKqU4HiDRI/s320/cangio4.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Cần Giờ l&amp;agrave; một huyện ven biển nằm ở ph&amp;iacute;a đ&amp;ocirc;ng nam của Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh, c&amp;aacute;ch trung t&amp;acirc;m khoảng 50 km bao gồm thị trấn Cần Thạnh v&amp;agrave; 6 x&amp;atilde;: B&amp;igrave;nh Kh&amp;aacute;nh, An Thới Đ&amp;ocirc;ng, L&amp;yacute; Nhơn, Tam Th&amp;ocirc;n Hiệp, Long H&amp;ograve;a v&amp;agrave; Thạnh An. Diện t&amp;iacute;ch của huyện l&amp;agrave; 704,2 km&amp;sup2;. Địa h&amp;igrave;nh chia cắt bởi s&amp;ocirc;ng, rạch, kh&amp;ocirc;ng c&amp;oacute; nước ngọt. Rừng s&amp;aacute;c v&amp;agrave; đước, đất rừng chiếm 47,25% diện t&amp;iacute;ch (tha hồ ngắm rừng nh&amp;eacute;).&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Huyện Cần Giờ tiếp cận với biển Đ&amp;ocirc;ng hiện hữu một khu rừng ngập mặn đan xen với hệ thống s&amp;ocirc;ng rạch d&amp;agrave;y đặc chứa đựng c&amp;aacute;c hệ sinh th&amp;aacute;i mang t&amp;iacute;nh đa dạng sinh học cao với nhiều lo&amp;agrave;i động thực vật đặc hữu của miền duy&amp;ecirc;n hải Việt Nam, đ&amp;oacute; l&amp;agrave; khu rừng ngập mặn Cần Giờ.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://3.bp.blogspot.com/_L_5hRx9MyHw/TG_E6PoDHGI/AAAAAAAAAhE/564ptDfkbUo/s1600/1cangio2.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://3.bp.blogspot.com/_L_5hRx9MyHw/TG_E6PoDHGI/AAAAAAAAAhE/564ptDfkbUo/s320/1cangio2.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Nếu đi Cần Giờ bằng xe bu&amp;yacute;t: bạn sẽ đ&amp;oacute;n xe Bến Th&amp;agrave;nh - Nh&amp;agrave; b&amp;egrave; (xe số 20) tại bến xe bu&amp;yacute;t trung t&amp;acirc;m th&amp;agrave;nh phố (đối diện chợ Bến Th&amp;agrave;nh). Với gi&amp;aacute; v&amp;eacute; chỉ 3 ng&amp;agrave;n: xe n&amp;agrave;y sẽ đi qua Q1, Q4 (Cảng Kh&amp;aacute;nh Hội), Q7 v&amp;agrave; đ&amp;iacute;ch cuối c&amp;ugrave;ng l&amp;agrave; bến ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Khi th&amp;agrave;nh phố chuyển đổi xe bu&amp;yacute;t th&amp;igrave; những xe n&amp;agrave;y b&amp;aacute; ch&amp;aacute;y như c&amp;aacute;c tuyến trong nội th&amp;agrave;nh nhưng qua v&amp;agrave;i năm sự dụng th&amp;igrave; hiện tại bu&amp;yacute;t n&amp;agrave;y hơi t&amp;agrave;n một t&amp;yacute;. Kh&amp;ocirc;ng sao cả, n&amp;oacute; vẫn đưa bạn đến nơi theo giờ giấc ho&amp;agrave;n chỉnh.&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://1.bp.blogspot.com/_L_5hRx9MyHw/TG_FHEJq6cI/AAAAAAAAAhI/tR7GKiYsGi8/s1600/mauxanhcangio.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://1.bp.blogspot.com/_L_5hRx9MyHw/TG_FHEJq6cI/AAAAAAAAAhI/tR7GKiYsGi8/s320/mauxanhcangio.jpg&quot; unselectable=&quot;on&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;Agrave;, bạn n&amp;ecirc;n đi sớm một t&amp;yacute; v&amp;igrave; xe sẽ vắng v&amp;agrave; bạn cũng d&amp;ocirc;i ra nhiều thời gian hơn; theo t&amp;ocirc;i th&amp;igrave; giấc 5 giờ l&amp;agrave; vừa.&lt;/div&gt;\r\n&lt;p&gt;\r\n	Gi&amp;aacute; v&amp;eacute; qua ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh năm trước chỉ c&amp;oacute; 500đ th&amp;ocirc;i (kh&amp;aacute;ch đi bộ) v&amp;agrave; khi đứng tr&amp;ecirc;n lan cang: bạn sẽ tận hưởng hơi gi&amp;oacute; l&amp;agrave;nh lạnh thổi tr&amp;ecirc;n mặt s&amp;ocirc;ng rộng để x&amp;oacute;a tan c&amp;aacute;i cục x&amp;igrave; tr&amp;eacute;t vẫn nai tr&amp;ecirc;n lưng trong cuộc sống đ&amp;ocirc; thị h&amp;agrave;ng ng&amp;agrave;y, sướng nghen!&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Xuống ph&amp;agrave; th&amp;igrave; bạn đ&amp;oacute;n tiếp xe bu&amp;yacute;t B&amp;igrave;nh Kh&amp;aacute;nh - Cần Thạnh (xe số 90, gi&amp;aacute; v&amp;eacute; 4 ng&amp;agrave;n) để đến c&amp;aacute;c điểm du lịch trọng yếu của Cần Giờ. Tr&amp;ecirc;n đoạn đi n&amp;agrave;y, bạn c&amp;oacute; thể quan s&amp;aacute;t hai b&amp;ecirc;n l&amp;agrave; những vạt rừng bạt ng&amp;agrave;n to&amp;agrave;n l&amp;agrave; c&amp;acirc;y Đước, S&amp;uacute; vẹt, Dừa nước xanh mơn mởn gi&amp;oacute; thổi lao xao.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_FO8kKH-I/AAAAAAAAAhM/t3dLZOZKLes/s1600/1391758357_4cde0ed7ef.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://4.bp.blogspot.com/_L_5hRx9MyHw/TG_FO8kKH-I/AAAAAAAAAhM/t3dLZOZKLes/s320/1391758357_4cde0ed7ef.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Đường xa n&amp;ecirc;n hơi l&amp;acirc;u một t&amp;yacute;, c&amp;oacute; thể mất khoảng 1 giờ rưỡi nhưng cảnh thi&amp;ecirc;n nhi&amp;ecirc;n đẹp như thế cũng tốt hơn nhiều những khối b&amp;ecirc; t&amp;ocirc;ng đồ sộ trong th&amp;agrave;nh phố m&amp;agrave; h&amp;agrave;ng ng&amp;agrave;y ta vẫn đi qua.&lt;/div&gt;\r\n&lt;p&gt;\r\n	Cần Giờ c&amp;oacute; khu du lịch 30-4, TT sinh hoạt Thanh thiếu ni&amp;ecirc;n, Khu du kịch V&amp;agrave;m S&amp;aacute;t, Đảo Khỉ, Bảo T&amp;agrave;ng Cần giờ, chiến khu Rừng s&amp;aacute;c...v.v... v&amp;agrave; tất nhi&amp;ecirc;n c&amp;oacute; b&amp;atilde;i biển.&lt;br /&gt;\r\n	Cần Giờ cũng c&amp;oacute; nh&amp;agrave; h&amp;agrave;ng, nh&amp;agrave; nghỉ lẫn kh&amp;aacute;ch sạn... tập trung chủ yếu ở b&amp;atilde;i biển nhưng mục ti&amp;ecirc;u của ta l&amp;agrave; du lịch si&amp;ecirc;u nhỏ n&amp;ecirc;n kh&amp;ocirc;ng cần ch&amp;uacute; &amp;yacute; tới. Cơm bụi gi&amp;aacute; b&amp;egrave;o th&amp;igrave; chắc kh&amp;ocirc;ng c&amp;oacute; đ&amp;acirc;u, v&amp;igrave; vậy đầu b&amp;agrave;i viết nhắc đến việc đem thức ăn theo l&amp;agrave; vậy.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_FUgOrZcI/AAAAAAAAAhQ/Vvir_Iy6lR0/s1600/khi.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_FUgOrZcI/AAAAAAAAAhQ/Vvir_Iy6lR0/s320/khi.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tr&amp;ecirc;n đường đi nếu muốn gh&amp;eacute; thăm quan điểm n&amp;agrave;o th&amp;igrave; bạn xin xuống rồi đi bộ v&amp;ocirc;, sau đ&amp;oacute; lại ra bắt tiếp xe bus để đi. Xe bus ở Cần Giờ kh&amp;ocirc;ng c&amp;oacute; trạm để đ&amp;oacute;n hay xuống xe m&amp;agrave; c&amp;oacute; thể l&amp;ecirc;n xuống h&amp;agrave; rầm, chổ n&amp;agrave;o cũng gh&amp;eacute;!&lt;/div&gt;\r\n&lt;p&gt;\r\n	Bọn khỉ lềnh kh&amp;ecirc;nh tại đảo khỉ, bạn cần cẩn thận v&amp;igrave; đ&amp;aacute;m đệ tử Tề Thi&amp;ecirc;n n&amp;agrave;y tinh ranh lắm đ&amp;oacute; nghen: cầm b&amp;aacute;nh kẹo, ĐTDĐ l&amp;agrave; c&amp;oacute; thể bị giật mất đấy. Trong khu n&amp;agrave;y c&amp;ograve;n c&amp;oacute; một bầy c&amp;aacute; sấu, chồn, trăn...&lt;br /&gt;\r\n	Để đi nhiều nơi c&amp;oacute; thể gọi xe &amp;ocirc;m nhưng coi chừng to&amp;agrave;n l&amp;agrave; c&amp;aacute;c m&amp;aacute;y ch&amp;eacute;m kh&amp;ocirc;ng đấy. Tuy nhi&amp;ecirc;n: theo ti&amp;ecirc;u ch&amp;iacute; đề ra tr&amp;ecirc;n đầu b&amp;agrave;i th&amp;igrave; cứ bu&amp;yacute;t v&amp;agrave; l&amp;ocirc; ca ch&amp;acirc;n l&amp;agrave; tới đ&amp;acirc;u cũng tới được m&amp;agrave;.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_F_wdSKSI/AAAAAAAAAhU/AqcsUMFNFZk/s1600/chao20doc209.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_F_wdSKSI/AAAAAAAAAhU/AqcsUMFNFZk/s320/chao20doc209.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Đứng tại biển Cần Giờ, bạn sẽ thấy xa xa kia l&amp;agrave; mũi Vũng T&amp;agrave;u, đừng để chốn kia c&amp;aacute;m dỗ bạn nh&amp;eacute; d&amp;ugrave; t&amp;agrave;u qua đ&amp;oacute; chỉ mất dưới 20 ng&amp;agrave;n.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Lễ hội ngư d&amp;acirc;n Cần Giờ được tổ chức h&amp;agrave;ng năm từ ng&amp;agrave;y 3-10 đến 5-10 với một số tr&amp;ograve; chơi d&amp;acirc;n gian, biểu diễn đấu cờ người, thả diều, thả đ&amp;egrave;n hoa đăng, triển l&amp;atilde;m, chợ phi&amp;ecirc;n c&amp;ugrave;ng với nghi lễ ch&amp;iacute;nh &amp;ldquo;nghinh &amp;Ocirc;ng&amp;rdquo;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Chiều về, t&amp;iacute;nh ra chỉ tốn 15 ng&amp;agrave;n tiền xe, ph&amp;agrave; - 5 ng&amp;agrave;n c&amp;ograve;n lại d&amp;agrave;nh cho nước tinh khiết, đạt chỉ ti&amp;ecirc;u!&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_GGkPtouI/AAAAAAAAAhY/d9r_WNqcp88/s1600/chao20doc205.jpg&quot; imageanchor=&quot;1&quot;&gt;&lt;img border=&quot;0&quot; ox=&quot;true&quot; src=&quot;http://2.bp.blogspot.com/_L_5hRx9MyHw/TG_GGkPtouI/AAAAAAAAAhY/d9r_WNqcp88/s320/chao20doc205.jpg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'du-lich-hai-muoi-ngan', '', '', '', '', '', '', 0, 0, 'upload/bus.JPG', 0, '', 'Các điểm tham quan,', '', 0, 0, 'active', '', '2013-09-20 16:34:06', 'admin', '2013-09-23 12:15:08');
INSERT INTO `media` VALUES (4, 'default13796710761', '', 'media_information', '[162]', 'admin', 'Cần Giờ - Xưa và Nay', '', '', 'vn', '', '&lt;p&gt;\r\n	Cần Giờ l&amp;agrave; huyện ven biển, ph&amp;iacute;a đ&amp;ocirc;ng nam TP.Hồ Ch&amp;iacute; Minh. Trước năm 1970 thuộc tỉnh Gia Định, từ năm 1976 thuộc về Đồng Nai với t&amp;ecirc;n gọi Duy&amp;ecirc;n Hải, đến năm 1978 về TP.HCM. M&amp;atilde;i cuối 1991 mới lấy lại t&amp;ecirc;n cũ: Cần Giờ. Xưa v&amp;agrave; nay chỉ l&amp;agrave; c&amp;aacute;ch n&amp;oacute;i để ph&amp;acirc;n biệt trước v&amp;agrave; sau khi Cần Giờ c&amp;oacute; đường giao th&amp;ocirc;ng bộ năm 1986, d&amp;ugrave; chỉ l&amp;agrave; đường cấp phối nối B&amp;igrave;nh Kh&amp;aacute;nh với thị trấn Cần Thạnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1984, t&amp;ocirc;i đi t&amp;agrave;u xuống Cần Giờ. T&amp;agrave;u xuất bến sớm ở Bạch Đằng, gần tối mới tới Cần Thạnh. Cảnh đẹp nhưng t&amp;ocirc;i chẳng để &amp;yacute; v&amp;igrave; thời đ&amp;oacute; hầu như chưa c&amp;oacute; du lịch. C&amp;aacute;i ăn, c&amp;aacute;i mặc c&amp;ograve;n tất tả ngược xu&amp;ocirc;i chưa đủ, n&amp;oacute;i chi việc vui chơi. Từ Cần Thạnh, t&amp;ocirc;i theo t&amp;agrave;u nhỏ về c&amp;aacute;c x&amp;atilde;. Nhớ lần đến x&amp;atilde; đảo Thạnh An, nước r&amp;ograve;ng, t&amp;agrave;u neo ngo&amp;agrave;i xa. Phải cởi quần d&amp;agrave;i, x&amp;aacute;ch d&amp;eacute;p, lội v&amp;agrave;o bờ, b&amp;ugrave;n ngập qu&amp;aacute; gối. L&amp;ecirc;n bờ, cũng kh&amp;ocirc;ng đi d&amp;eacute;p được v&amp;igrave; đất nh&amp;atilde;o nhoẹt cứ n&amp;iacute;u ch&amp;acirc;n người. Bạn tổng phụ tr&amp;aacute;ch Đội của x&amp;atilde; đ&amp;oacute;n t&amp;ocirc;i, vừa cười vừa tr&amp;aacute;ch kh&amp;eacute;o: &amp;ldquo;Đến anh c&amp;ograve;n kh&amp;ocirc;ng đi d&amp;eacute;p được. Vậy m&amp;agrave; ở th&amp;agrave;nh phố c&amp;aacute;c anh ph&amp;aacute;t động phong tr&amp;agrave;o học sinh đi học phải mang d&amp;eacute;p. Ở đ&amp;acirc;y tr&amp;ograve; ngh&amp;egrave;o, to&amp;agrave;n đi ch&amp;acirc;n đất, m&amp;agrave; c&amp;oacute; d&amp;eacute;p cũng kh&amp;ocirc;ng mang được...&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	T&amp;ocirc;i chỉ biết cười trừ. Từ Thạnh An, t&amp;ocirc;i lại theo t&amp;agrave;u đến ấp Thiềng Liềng. Căn nh&amp;agrave; l&amp;aacute;, nền đất ch&amp;ocirc;ng ch&amp;ecirc;nh đầu s&amp;oacute;ng, kh&amp;aacute; tươm tất, vừa l&amp;agrave; trường học, vừa l&amp;agrave; nh&amp;agrave; ở của gi&amp;aacute;o vi&amp;ecirc;n. Trường c&amp;oacute; 4 lớp, học chung 1 ph&amp;ograve;ng, chẳng theo giờ giấc n&amp;agrave;o. Cứ mặt trời l&amp;ecirc;n chừng 2 s&amp;agrave;o l&amp;agrave; tr&amp;ograve; đến lớp. H&amp;ocirc;m n&amp;agrave;o mặt trời &amp;ldquo;bệnh&amp;rdquo; l&amp;agrave; tr&amp;ograve; ở nh&amp;agrave;. Học khi n&amp;agrave;o thấy đ&amp;oacute;i bụng th&amp;igrave; về. Trường c&amp;oacute; 3 gi&amp;aacute;o vi&amp;ecirc;n nam, t&amp;ecirc;n rất hay: Ph&amp;uacute;c, Lộc, Thọ. Cả 3 đều d&amp;acirc;n th&amp;agrave;nh phố, học chung Cao đẳng Sư phạm, kết th&amp;acirc;n chơi chung v&amp;agrave; c&amp;ugrave;ng t&amp;igrave;nh nguyện về Cần Giờ dạy học. C&amp;oacute; kh&amp;aacute;ch th&amp;agrave;nh phố gh&amp;eacute; thăm, c&amp;aacute;c bạn mừng như tết. Rối r&amp;iacute;t mời nước, mời cơm, chuyện tr&amp;ograve; t&amp;acirc;m sự. Ph&amp;uacute;c nhất định bắt con g&amp;agrave; m&amp;aacute;i lớn nhất m&amp;agrave; nh&amp;oacute;m đang nu&amp;ocirc;i d&amp;agrave;nh ăn tết để đ&amp;atilde;i kh&amp;aacute;ch. T&amp;ocirc;i quyết liệt phản đối, dọa bỏ về, con g&amp;agrave; mới... tho&amp;aacute;t chết. &amp;ldquo;H&amp;atilde;y để t&amp;ocirc;i được ăn ở b&amp;igrave;nh thường như cuộc sống mỗi ng&amp;agrave;y của c&amp;aacute;c bạn, t&amp;ocirc;i mới cảm v&amp;agrave; hiểu c&amp;aacute;c bạn được&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&amp;nbsp;&lt;img alt=&quot;Cần Giờ - xưa &amp;amp; nay&quot; src=&quot;http://ihay.thanhnien.com.vn/Pictures201211/MinhNguyet/CanGio2.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nhớ lần về Tam Th&amp;ocirc;n Hiệp. Đang mơ m&amp;agrave;ng ngủ th&amp;igrave; kẻng b&amp;aacute;o động dồn dập, chẳng hiểu m&amp;ocirc; t&amp;ecirc; g&amp;igrave;. L&amp;aacute;t sau mới biết &amp;ldquo;vỡ đ&amp;ecirc; bao&amp;rdquo;. Cả ph&amp;ograve;ng nh&amp;aacute;o nh&amp;agrave;o chạy ra s&amp;ocirc;ng, &amp;ugrave;a xuống nước, hốt b&amp;ugrave;n be lại bờ. Trong &amp;aacute;nh đuốc chập chờn, những khu&amp;ocirc;n mặt trẻ đẹp lạ l&amp;ugrave;ng. Tiếng h&amp;ograve; h&amp;eacute;t, &amp;iacute; ới, người người chuyền nhau từng khối b&amp;ugrave;n đất. Thương nhất l&amp;agrave; c&amp;aacute;c bạn nữ, b&amp;ugrave;n ngập qu&amp;aacute; thắt lưng, vẫn hăng h&amp;aacute;i chung sức. Xong việc, tắm sơ nước lợ, v&amp;agrave;o ngủ tiếp. Ước g&amp;igrave; l&amp;uacute;c đ&amp;oacute; mỗi bạn c&amp;oacute; một t&amp;ocirc; m&amp;igrave; g&amp;oacute;i để l&amp;oacute;t dạ. Cần Giờ thời đ&amp;oacute;, nước ngọt qu&amp;yacute; hơn gạo, chỉ để d&amp;agrave;nh uống v&amp;agrave; nấu cơm. Tắm, giặt d&amp;ugrave;ng nước lợ. Gi&amp;aacute;o vi&amp;ecirc;n t&amp;igrave;nh nguyện về Cần Giờ, cả th&amp;aacute;ng mới về S&amp;agrave;i G&amp;ograve;n. Ai về cũng v&amp;aacute;c cả đống đồ tổ chảng, về S&amp;agrave;i G&amp;ograve;n giặt cho cả nh&amp;oacute;m, cứ xoay v&amp;ograve;ng quanh năm. C&amp;oacute; trường hợp bị mời v&amp;agrave;o đồn c&amp;ocirc;ng an v&amp;igrave; nghi l&amp;agrave; đồ... ch&amp;ocirc;m chỉa hoặc bu&amp;ocirc;n lậu. Nhớ lần dự lễ Nghinh &amp;Ocirc;ng ở Cần Thạnh. Người đ&amp;ocirc;ng như kiến, chen ch&amp;uacute;c l&amp;ecirc;n t&amp;agrave;u, chẳng cần quen lạ, cứ c&amp;oacute; chỗ l&amp;agrave; l&amp;ecirc;n. H&amp;agrave;ng trăm chiếc t&amp;agrave;u, giăng cờ rợp biển, trống chi&amp;ecirc;ng dồn dập, thịt b&amp;aacute;nh rộn r&amp;agrave;ng... C&amp;oacute; cả tiếng s&amp;uacute;ng AK chỉ thi&amp;ecirc;n từng loạt, bừng bừng kh&amp;iacute; thế. Giữa trời biển m&amp;ecirc;ng m&amp;ocirc;ng, rộn vang &amp;acirc;m thanh, m&amp;agrave;u sắc, t&amp;ocirc;i cứ ngỡ m&amp;igrave;nh đang tham gia trận chiến Bạch Đằng năm xưa. C&amp;aacute;c t&amp;agrave;u lớn đi qua đều giảm tốc độ, vừa để thưởng ngoạn lễ hội h&amp;agrave;o h&amp;ugrave;ng, vừa đảm bảo an to&amp;agrave;n cho c&amp;aacute;c t&amp;agrave;u c&amp;aacute; đang ngang dọc tung ho&amp;agrave;nh Nghinh &amp;Ocirc;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Khi đường bộ ho&amp;agrave;n th&amp;agrave;nh, t&amp;agrave;u thủy đường s&amp;ocirc;ng l&amp;ugrave;i v&amp;agrave;o qu&amp;aacute; khứ. Con đường đất đỏ, c&amp;oacute; đoạn m&amp;ugrave; mịt bụi, c&amp;oacute; kh&amp;uacute;c nh&amp;atilde;o nhoẹt b&amp;ugrave;n chạy giữa bạt ng&amp;agrave;n xanh rừng đước, đẹp như tranh. T&amp;ocirc;i th&amp;iacute;ch chạy xe m&amp;aacute;y v&amp;agrave;o l&amp;uacute;c s&amp;aacute;ng sớm đ&amp;oacute;n b&amp;igrave;nh minh hoặc l&amp;uacute;c chạng vạng ngắm ho&amp;agrave;ng h&amp;ocirc;n. Cần Giờ ng&amp;agrave;y c&amp;agrave;ng gần hơn th&amp;agrave;nh phố d&amp;ugrave; c&amp;ograve;n c&amp;aacute;ch trở mấy ph&amp;agrave;. Ng&amp;aacute;n nhất ph&amp;agrave; Dần X&amp;acirc;y, đi trễ một ch&amp;uacute;t l&amp;agrave; xe phải đợi nước l&amp;ecirc;n cả buổi. V&amp;agrave;o những năm 1996 -1999, du lịch Cần Giờ bắt đầu định h&amp;igrave;nh với v&amp;agrave;i nh&amp;agrave; nghỉ, mấy b&amp;atilde;i tắm c&amp;ocirc;ng cộng. M&amp;ugrave;a mưa c&amp;oacute; mấy giếng tạm x&amp;agrave;i đỡ, m&amp;ugrave;a nắng nước ngọt phải mua từ S&amp;agrave;i G&amp;ograve;n chở về. Nhớ lần đưa Trường d&amp;acirc;n lập Nguyễn Khuyến đi Cần Giờ, mười mấy xe 25 chỗ v&amp;igrave; trọng tải cầu yếu, xe lớn kh&amp;ocirc;ng qua được. Tắm biển xong, gần 300 học sinh cứ đứng s&amp;aacute;t v&amp;agrave;o nhau, d&amp;ugrave;ng m&amp;aacute;y bơm xịt nước tắm tập thể, cứ như chữa ch&amp;aacute;y, vui đ&amp;aacute;o để. Biển Cần Giờ phẳng, lắm ph&amp;ugrave; sa, n&amp;ecirc;n nước biển quanh năm một m&amp;agrave;u sẫm mặn m&amp;agrave;. Nghe đồn, biển ở đ&amp;acirc;y vừa c&amp;oacute; muối, vừa c&amp;oacute; b&amp;ugrave;n sạch n&amp;ecirc;n tốt cho da. B&amp;acirc;y giờ cầu Dần X&amp;acirc;y, d&amp;ugrave; x&amp;acirc;y... dần dần qua 2 thế kỷ cũng đ&amp;atilde; ho&amp;agrave;n tất. C&amp;aacute;c cầu yếu được n&amp;acirc;ng tải trọng, ph&amp;agrave; tăng chuyến, đường mở rộng hơn quốc lộ; xe bu&amp;yacute;t, xe hơi, gắn m&amp;aacute;y cứ tha hồ. Đi về trong ng&amp;agrave;y hay qua đ&amp;ecirc;m cũng tiện. Cần Giờ th&amp;agrave;nh điểm hẹn cuối tuần, tấp nập nam nữ v&amp;agrave; du kh&amp;aacute;ch gia đ&amp;igrave;nh, nh&amp;oacute;m bạn, c&amp;ocirc;ng ty...&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chủ nhật tuần rồi, t&amp;ocirc;i chạy xe m&amp;aacute;y xuống Cần Giờ đổi gi&amp;oacute; v&amp;agrave; rửa phổi. Qua ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh chỉ một giờ l&amp;agrave; đến biển Long H&amp;ograve;a. Đường rộng th&amp;ecirc;nh thang, 2 chiều c&amp;aacute;ch biệt, mỗi chiều 3 l&amp;agrave;n xe. Thi thoảng mới gặp xe ngược đường hoặc qua mặt. Qua cầu An Nghĩa l&amp;agrave; v&amp;agrave;o khu dự trữ sinh quyển thế giới, một kỳ t&amp;iacute;ch của con người sau chiến tranh. Đ&amp;acirc;y l&amp;agrave; khu dự trữ sinh quyển duy nhất của thế giới phục hồi từ rừng chết v&amp;igrave; bom h&amp;oacute;a học. Kh&amp;ocirc;ng kh&amp;iacute; m&amp;aacute;t dịu hẳn. Bực m&amp;igrave;nh v&amp;igrave; cảnh quan qu&amp;aacute; đẹp m&amp;agrave; chất lượng đường qu&amp;aacute; xấu, vừa ho&amp;agrave;n th&amp;agrave;nh đ&amp;atilde; lỗ chỗ bong tr&amp;oacute;c. Mặt đường mỏng tang như b&amp;aacute;nh đa. Phần đường xe 2 b&amp;aacute;nh, đ&amp;aacute; vụn d&amp;agrave;y mấy ph&amp;acirc;n, nhiều đoạn cỏ dại cho&amp;aacute;n hết lối đi, che khuất cả cột mốc c&amp;acirc;y số. Đến Cần Giờ hiện nay, ngo&amp;agrave;i xe m&amp;aacute;y, c&amp;oacute; thể đi xe gia đ&amp;igrave;nh, thu&amp;ecirc; xe nh&amp;oacute;m bạn. Rẻ nhất l&amp;agrave; đi xe bu&amp;yacute;t 20 từ Bến Th&amp;agrave;nh về mũi Nh&amp;agrave; B&amp;egrave;, v&amp;eacute; 4.000 đồng, th&amp;ecirc;m 1.000 đồng tiền ph&amp;agrave; v&amp;agrave; 5.000 đồng xe bu&amp;yacute;t từ B&amp;igrave;nh Kh&amp;aacute;nh đi Cần Thạnh. Cần đi đ&amp;acirc;u th&amp;igrave; thu&amp;ecirc; xe đạp hoặc gắn m&amp;aacute;y vi vu. Cũng c&amp;oacute; thể thu&amp;ecirc; t&amp;agrave;u Dương Đ&amp;ocirc;ng. Tha hồ ngoạn cảnh s&amp;ocirc;ng nước, rất ấn tượng.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Rộn ràng trại hè kỹ năng&quot; src=&quot;http://www.thanhnien.com.vn/Pictures20127/CongDong/020712/hanh-quan-xuyen-rung-cua-tr.jpg&quot; /&gt;&lt;br /&gt;\r\n	&amp;quot;H&amp;agrave;nh qu&amp;acirc;n&amp;quot; xuy&amp;ecirc;n rừng ngập mặn Cần Giờ trong kh&amp;oacute;a học kỳ qu&amp;acirc;n đội &amp;quot;Teen năng&amp;nbsp;&lt;a href=&quot;mailto:%C4%91%E1%BB%99ng@.com&quot;&gt;động@.com&lt;/a&gt;&amp;quot;&amp;nbsp;&lt;br /&gt;\r\n	do NVH Thanh ni&amp;ecirc;n TP.HCM tổ chức - Ảnh: T.B.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cần Giờ c&amp;oacute; nhiều điểm tham quan th&amp;uacute; vị. Khu nu&amp;ocirc;i khỉ tự nhi&amp;ecirc;n, Bảo t&amp;agrave;ng Rừng S&amp;aacute;c, khu bảo tồn động vật hoang d&amp;atilde;, c&amp;oacute; cả xiếc khỉ, xiếc c&amp;aacute; sấu... Xa hơn th&amp;igrave; c&amp;oacute; Đầm Dơi với h&amp;agrave;ng ng&amp;agrave;n dơi quạ, lủng lẳng như tr&amp;aacute;i c&amp;acirc;y sắp rụng v&amp;agrave; Tr&amp;agrave;m Chim, nơi cư ngụ của h&amp;agrave;ng ng&amp;agrave;n chim c&amp;ograve; c&amp;aacute;c loại. C&amp;oacute; &amp;ldquo;Biển Chết&amp;rdquo; mặn ch&amp;aacute;t, kh&amp;ocirc;ng biết bơi người cũng tự nổi, bởi nước biển qu&amp;aacute; mặn, kh&amp;ocirc;ng thể ch&amp;igrave;m. C&amp;oacute; th&amp;aacute;p Tang Bồng cao 25 m để thưởng ngoạn to&amp;agrave;n cảnh V&amp;agrave;m S&amp;aacute;t. Cả kho huyền thoại về đặc c&amp;ocirc;ng Rừng S&amp;aacute;c, về Đo&amp;agrave;n 10 anh h&amp;ugrave;ng, về những chiến t&amp;iacute;ch lẫy lừng thế giới. Rồi v&amp;ocirc; số giai thoại về khỉ, c&amp;aacute; sấu, dơi, chim... V&amp;agrave;m S&amp;aacute;t. Cần Thạnh c&amp;oacute; Lăng &amp;Ocirc;ng Thủy Tướng, c&amp;oacute; ch&amp;ugrave;a cổ v&amp;agrave; cả di t&amp;iacute;ch mộ chum. Xuống Cần Giờ, n&amp;ecirc;n tận hưởng c&amp;aacute;i th&amp;uacute; đi thuyền thong dong rửa phổi, rửa mắt bằng m&amp;agrave;u xanh điệp tr&amp;ugrave;ng v&amp;agrave; m&amp;ecirc;nh m&amp;ocirc;ng s&amp;ocirc;ng nước. No n&amp;ecirc; ngắm nh&amp;igrave;n v&amp;agrave; h&amp;iacute;t thở, để xả hết bụi bặm, ngột ngạt phố phường. Nhưng m&amp;ecirc; nhất l&amp;agrave; ẩm thực. M&amp;oacute;n c&amp;aacute; dứa một nắng nướng than với cơm vắt, ăn l&amp;agrave; ghiền. M&amp;oacute;n gỏi kh&amp;ocirc; c&amp;aacute; hố với l&amp;aacute; d&amp;acirc;y l&amp;igrave;m k&amp;igrave;m kh&amp;ocirc;ng đ&amp;acirc;u c&amp;oacute;. M&amp;oacute;n ba kh&amp;iacute;a rang me, chả ba kh&amp;iacute;a ăn kh&amp;ocirc;ng biết no. M&amp;oacute;n c&amp;aacute; th&amp;ograve;i l&amp;ograve;i, con n&amp;agrave;o con đ&amp;oacute; tổ chảng, nướng than hay nấu lẩu chua đều tuyệt. M&amp;oacute;n tiết canh s&amp;ograve; huyết kh&amp;ocirc;ng lẫn v&amp;agrave;o đ&amp;acirc;u được. Rồi ốc mỡ, hay những tr&amp;aacute;i c&amp;acirc;y như m&amp;atilde;ng cầu (na), xo&amp;agrave;i... đều c&amp;oacute; vị ri&amp;ecirc;ng. T&amp;ocirc;i đ&amp;atilde; đi v&amp;agrave; thử m&amp;oacute;n ăn khắp cả nước, nhưng vẫn bị ẩm thực Cần Giờ m&amp;ecirc; hoặc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cần Giờ hiện c&amp;oacute; cả resort chất lượng với hồ bơi v&amp;agrave; đủ dịch vụ. C&amp;aacute;c nh&amp;agrave; nghỉ tiện nghi, c&amp;aacute;c b&amp;atilde;i tắm th&amp;ecirc;nh thang ghế bố. Nằm v&amp;otilde;ng c&amp;agrave;ng tuyệt. Bạn Trần Hữu Quốc ở Cần Giờ resort cho biết ở đ&amp;acirc;y đang nghi&amp;ecirc;n cứu l&amp;agrave;m hồ bơi nước mặn để du kh&amp;aacute;ch tắm biển... tr&amp;ecirc;n bờ. Xuống Cần Giờ, t&amp;ocirc;i học được c&amp;aacute;ch ph&amp;acirc;n biệt c&amp;aacute; dứa với c&amp;aacute; ng&amp;aacute;t (để mua kh&amp;ocirc; khỏi nhầm), c&amp;aacute;ch chọn cua gạch, c&amp;aacute;ch nướng h&amp;agrave;u... từ chị Mười D&amp;ocirc;. Nh&amp;agrave; chị nu&amp;ocirc;i v&amp;agrave; b&amp;aacute;n tại chỗ c&amp;aacute;c loại hải sản, gi&amp;aacute; rẻ bất ngờ. Vừa b&amp;aacute;n, chị vừa nhiệt t&amp;igrave;nh chỉ vẽ. T&amp;ocirc;i cứ tr&amp;ograve;n xoe mắt, như ch&amp;agrave;ng &amp;ldquo;b&amp;igrave;nh d&amp;acirc;n học vụ&amp;rdquo; những kiến thức về hải sản.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ra về, xe trĩu nặng qu&amp;agrave; Cần Giờ, từ đặc sản đến tấm l&amp;ograve;ng của người d&amp;acirc;n v&amp;ugrave;ng biển. L&amp;ograve;ng hẹn rằng &amp;ldquo;L&amp;uacute;c n&amp;agrave;o mỏi mệt, cứ xuống Cần Giờ...&amp;rdquo;.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-09-20 16:57:56', 'admin', '2013-09-20 16:57:56');
INSERT INTO `media` VALUES (5, 'default13796711351', '', 'media_information', '[163]', 'admin', 'Khám Phá Văn Hóa', '', '', 'vn', '', '&lt;p&gt;\r\n	Tiềm năng về quần thể động-thực vật đặc biệt phong ph&amp;uacute;, đa dạng c&amp;ugrave;ng với khả năng kh&amp;ocirc;i phục, chăm s&amp;oacute;c kỳ diệu của con người đ&amp;atilde; v&amp;agrave; đang hồi sinh Cần Giờ - v&amp;ugrave;ng đất hoang ho&amp;aacute; một thời do chất độc ho&amp;aacute; học trong chiến tranh-th&amp;agrave;nh khu bảo tồn thi&amp;ecirc;n nhi&amp;ecirc;n, một điểm du lịch hấp dẫn du kh&amp;aacute;ch trong v&amp;agrave; ngo&amp;agrave;i nước. Khu bảo tồn thi&amp;ecirc;n nhi&amp;ecirc;n rừng ngập mặn Cần Giờ (thuộc huyện Cần Giờ, th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh) l&amp;agrave; một trong những khu rừng ngập mặn điển h&amp;igrave;nh ở v&amp;ugrave;ng ven biển nhiệt đới, kh&amp;ocirc;ng chỉ cung cấp nhiều loại l&amp;acirc;m sản m&amp;agrave; c&amp;ograve;n l&amp;agrave; nơi cư tr&amp;uacute; của nhiều lo&amp;agrave;i hải sản, chim nước, chim di cư v&amp;agrave; một số lo&amp;agrave;i động vật lưỡng cư tr&amp;ecirc;n cạn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đ&amp;acirc;y cũng l&amp;agrave; khu rừng ngập mặn đầu ti&amp;ecirc;n ở Việt Nam được c&amp;ocirc;ng nhận l&amp;agrave; khu Dự trữ sinh quyển thế giới.Theo đ&amp;aacute;nh gi&amp;aacute; của c&amp;aacute;c chuy&amp;ecirc;n gia nước ngo&amp;agrave;i, Cần Giờ l&amp;agrave; khu rừng được kh&amp;ocirc;i phục, chăm s&amp;oacute;c, bảo vệ v&amp;agrave; quản l&amp;yacute; tốt nhất Đ&amp;ocirc;ng Nam &amp;Aacute;. Với sự hiện diện của khoảng 160 lo&amp;agrave;i, thảm thực vật Cần Giờ c&amp;ograve;n l&amp;agrave; m&amp;ocirc;i trường sinh sống của hơn 700 lo&amp;agrave;i động vật thủy sinh kh&amp;ocirc;ng xương sống, 137 lo&amp;agrave;i c&amp;aacute;, tr&amp;ecirc;n 40 lo&amp;agrave;i động vật c&amp;oacute; xương sống.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đặc biệt, nơi đ&amp;acirc;y đang h&amp;igrave;nh th&amp;agrave;nh trở lại c&amp;aacute;c s&amp;acirc;n chim tự nhi&amp;ecirc;n với số lo&amp;agrave;i đ&amp;atilde; chiếm tới 34% tổng số lo&amp;agrave;i chim nước ở Việt Nam, trong đ&amp;oacute; c&amp;oacute; tới 9 lo&amp;agrave;i qu&amp;yacute; hiếm được ghi trong s&amp;aacute;ch Đỏ của thế giới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kh&amp;ocirc;ng chỉ c&amp;oacute; thế, văn h&amp;oacute;a của cộng đồng người d&amp;acirc;n nơi đ&amp;acirc;y cũng rất phong ph&amp;uacute; v&amp;agrave; mang đậm bản sắc bản địa, gắn liền với c&amp;aacute;c l&amp;agrave;ng nghề truyền thống như l&amp;agrave;ng ch&amp;agrave;i, l&amp;agrave;ng rừng, l&amp;agrave;ng n&amp;ocirc;ng.... Đ&amp;acirc;y cũng l&amp;agrave; nơi đầu ti&amp;ecirc;n ở Việt Nam v&amp;agrave; khu vực Đ&amp;ocirc;ng Nam &amp;Aacute; ph&amp;aacute;t hiện ra khu mộ cổ chum với tr&amp;ecirc;n 300 ng&amp;ocirc;i, di chỉ c&amp;oacute; gi&amp;aacute; trị về nền văn h&amp;oacute;a &amp;Oacute;c Eo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Với nhiều loại h&amp;igrave;nh du lịch như nghỉ dưỡng, du lịch sinh th&amp;aacute;i, nghi&amp;ecirc;n cứu khoa học, Cần Giờ thu h&amp;uacute;t du kh&amp;aacute;ch bằng sự lựa chọn phong ph&amp;uacute;: tham quan L&amp;acirc;m vi&amp;ecirc;n Cần Giờ d&amp;agrave;nh cho những người th&amp;iacute;ch nghi&amp;ecirc;n cứu hệ động-thực vật; thăm đảo nu&amp;ocirc;i h&amp;agrave;ng ng&amp;agrave;n con khỉ sống tự do trong rừng; thăm s&amp;acirc;n chim tự nhi&amp;ecirc;n với diện t&amp;iacute;ch hơn 100 ha hay thưởng ngoạn cảnh đẹp thi&amp;ecirc;n nhi&amp;ecirc;n hiếm c&amp;oacute; ở Đầm Rơi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Du kh&amp;aacute;ch cũng c&amp;oacute; cơ hội tham quan rừng ngập mặn V&amp;agrave;m S&amp;aacute;t-một trong hai khu du lịch sinh th&amp;aacute;i ph&amp;aacute;t triển bền vững của thế giới tại Việt Nam- để tận hưởng kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh, thưởng thức những m&amp;oacute;n ăn được chế biến từ những sản vật sẵn c&amp;oacute; ở đ&amp;acirc;y như t&amp;ocirc;m, cua, ngao...&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thế mạnh du lịch, ph&amp;aacute;t triển thuỷ sản của Cần Giờ đ&amp;atilde; v&amp;agrave; đang l&amp;agrave; điểm nhấn để cải thiện cuộc sống của người d&amp;acirc;n nơi đ&amp;acirc;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Quy hoạch về một khu đ&amp;ocirc; thị lấn biến ở khu vực n&amp;agrave;y đ&amp;atilde; được Ch&amp;iacute;nh phủ ph&amp;ecirc; duyệt, với diện t&amp;iacute;ch khoảng 872 ha, nhằm x&amp;acirc;y dựng Cần Giờ th&amp;agrave;nh một trung t&amp;acirc;m dịch vụ du lịch-thương mại, bao gồm cả c&amp;aacute;c khu bảo t&amp;agrave;ng sinh th&amp;aacute;i biển v&amp;agrave;o năm 2010.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một V&amp;agrave;i Loại H&amp;igrave;nh Du Lịch Đặc Trưng :&lt;/p&gt;\r\n&lt;p&gt;\r\n	Du Lịch Thuyền Buồm&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nếu muốn du lịch bằng thuyền buồm m&amp;agrave; kh&amp;ocirc;ng cần phải ra đến vịnh Hạ Long th&amp;igrave; ngay tr&amp;ecirc;n s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n bạn c&amp;oacute; thể thực hiện một chuyến du ngoạn về V&amp;agrave;m S&amp;aacute;t (Cần Giờ) bằng du thuyền sang trọng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Th&amp;uacute; vị, đ&amp;oacute; l&amp;agrave; đ&amp;aacute;nh gi&amp;aacute; của hầu hết du kh&amp;aacute;ch tr&amp;ecirc;n chiếc du thuyền của C&amp;ocirc;ng ty thuyền buồm Đ&amp;ocirc;ng Dương. Ngay cả chủ những chiếc thuyền qua lại tr&amp;ecirc;n s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n cũng phải trầm trồ, th&amp;uacute; vị khi chi&amp;ecirc;m ngưỡng &amp;ldquo;anh bạn kh&amp;aacute;c người&amp;rdquo; đang nhẹ lướt tr&amp;ecirc;n d&amp;ograve;ng s&amp;ocirc;ng nặng ph&amp;ugrave; sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Th&amp;ecirc;m nữa, những cảnh tượng tr&amp;ecirc;n chuyến h&amp;agrave;nh tr&amp;igrave;nh lu&amp;ocirc;n g&amp;acirc;y bất ngờ cho kh&amp;aacute;ch, từ cảnh đ&amp;oacute;n b&amp;igrave;nh minh tr&amp;ecirc;n thuyền đến cảng Bến Ngh&amp;eacute;, Nh&amp;agrave; B&amp;egrave;, ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh, khu c&amp;ocirc;ng nghiệp Hiệp Phước. Đặc biệt l&amp;agrave; nơi đến cuối c&amp;ugrave;ng l&amp;agrave; Khu du lịch Sinh th&amp;aacute;i V&amp;agrave;m S&amp;aacute;t (trực thuộc C&amp;ocirc;ng ty Dịch vụ Du lịch Ph&amp;uacute; Thọ, TPHCM) với những điểm tham quan độc đ&amp;aacute;o như: Đầm Dơi, s&amp;acirc;n chim, đầm c&amp;aacute; sấu, th&amp;aacute;p Tang Bồng, trại nai nu&amp;ocirc;i hoang d&amp;atilde; trong rừng, nh&amp;agrave; h&amp;agrave;ng đặc sản&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tr&amp;ecirc;n đường trở về du kh&amp;aacute;ch c&amp;ograve;n c&amp;oacute; cơ hội ngắm ho&amp;agrave;ng h&amp;ocirc;n tr&amp;ecirc;n s&amp;ocirc;ng, khi th&amp;agrave;nh phố l&amp;ecirc;n đ&amp;egrave;n tuyệt đẹp.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ri&amp;ecirc;ng c&amp;aacute;c h&amp;atilde;ng lữ h&amp;agrave;nh mừng v&amp;igrave; tuyến du lịch tr&amp;ecirc;n s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n từ bến Bạch Đằng đến khu dự trữ sinh quyển thế giới - &amp;ldquo;l&amp;aacute; phổi xanh&amp;rdquo; của th&amp;agrave;nh phố rừng ngập mặn Cần Giờ c&amp;oacute; th&amp;ecirc;m dịch vụ mới phục vụ cho du kh&amp;aacute;ch trong v&amp;agrave; ngo&amp;agrave;i nước.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img src=&quot;http://www.dulichvele.com/ViewImage.aspx?id=9ef41ab9-824d-4bf5-b580-00a620619430&amp;amp;type=media&amp;amp;ext=jpg&quot; /&gt;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-09-20 16:58:55', 'admin', '2013-09-20 16:58:55');
INSERT INTO `media` VALUES (6, 'default13796711731', '', 'media_information', '[164]', 'admin', 'Cẩm Nang Du Lịch', '', '', 'vn', '', '&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Chỉ c&amp;aacute;ch trung t&amp;acirc;m th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh khoảng hơn 50km, Cần Giờ như một ốc đảo xanh tươi với những thảm rừng đước bạt ng&amp;agrave;n, chen lẫn trong đ&amp;oacute; l&amp;agrave; những khu vườn xum xu&amp;ecirc; c&amp;acirc;y tr&amp;aacute;i, đặc biệt c&amp;ograve;n c&amp;oacute; những m&amp;oacute;n hải sản tươi ngon, kh&amp;ocirc;ng thể n&amp;agrave;o qu&amp;ecirc;n. N&amp;oacute;i đến m&amp;oacute;n ngon Cần Giờ, trước hết phải n&amp;oacute;i đến hải sản. Cần Giờ c&amp;oacute; đường bờ biển d&amp;agrave;i khoảng 13 km, phần lớn l&amp;agrave; những b&amp;atilde;i ngh&amp;ecirc;u được nu&amp;ocirc;i trong m&amp;ocirc;i trường tự nhi&amp;ecirc;n. H&amp;agrave;ng ng&amp;agrave;y, tiếp nhận lượng lớn ph&amp;ugrave; sa từ c&amp;aacute;c con s&amp;ocirc;ng lớn từ Đồng Nai, So&amp;agrave;i Rạp đổ v&amp;agrave;o, v&amp;igrave; vậy hải sản ở đ&amp;acirc;y rất mau lớn v&amp;agrave; c&amp;oacute; vị ngọt tự nhi&amp;ecirc;n rất đậm đ&amp;agrave;. Ngh&amp;ecirc;u c&amp;oacute; m&amp;agrave;u trắng đục như sữa, thịt d&amp;agrave;y v&amp;agrave; dai, khi bắt l&amp;ecirc;n chỉ cần ng&amp;acirc;m nước sơ qua rồi hấp gừng, ăn với nước mắm ớt ngọt hoặc muối ti&amp;ecirc;u chanh th&amp;igrave; thật tuyệt vời.&lt;/span&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		Cần Giờ c&amp;oacute; kh&amp;aacute; nhiều loại hải sản, từ c&amp;aacute;c loại cua, c&amp;uacute;m, ghẹ đến t&amp;ocirc;m, ốc&amp;hellip; Trong c&amp;aacute;c m&amp;oacute;n được du kh&amp;aacute;ch y&amp;ecirc;u th&amp;iacute;ch nhất phải kể đến t&amp;ocirc;m. T&amp;ocirc;m Cần Giờ phần lớn l&amp;agrave; t&amp;ocirc;m s&amp;uacute;, được bắt từ biển hoặc c&amp;aacute;c ao, đầm. Ngo&amp;agrave;i ra, c&amp;ograve;n c&amp;oacute; c&amp;aacute;c loại kh&amp;aacute;c như t&amp;ocirc;m sắt với lớp vỏ cứng, hay t&amp;ocirc;m đất với lớp vỏ mềm trong, thịt dẻo lại ngọt tuyệt vời. Ngon nhất vẫn l&amp;agrave; loại t&amp;ocirc;m gạch son, thường c&amp;oacute; v&amp;agrave;o khoảng th&amp;aacute;ng 3-4 &amp;acirc;m lịch. Khi chế biến, chỉ cần rửa sạch t&amp;ocirc;m v&amp;agrave; cho v&amp;agrave;o nồi hấp, để một t&amp;iacute; bia l&amp;agrave; đ&amp;atilde; c&amp;oacute; một đĩa t&amp;ocirc;m đỏ tươi hấp dẫn c&amp;ograve;n nghi ng&amp;uacute;t kh&amp;oacute;i. Nếu kh&amp;ocirc;ng muốn ăn theo kiểu hấp, bạn thể thể nhờ nướng t&amp;ocirc;m ngay tại chỗ. M&amp;ugrave;i t&amp;ocirc;m thơm lừng, quyện v&amp;agrave;o m&amp;ugrave;i gi&amp;oacute; biển từ h&amp;agrave;ng dương sẽ khiến bạn cảm thấy ngon miệng hơn.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;CẨM NANG DU LỊCH CẦN GIỜ&quot; src=&quot;http://nemotravel.vn/upload/images/Can%20Gio.jpg&quot; title=&quot;CẨM NANG DU LỊCH CẦN GIỜ&quot; /&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;br /&gt;\r\n		B&amp;ecirc;n cạnh cua c&amp;ograve;n c&amp;oacute; m&amp;oacute;n ghẹ biển. C&amp;oacute; loại m&amp;agrave;u đỏ hồng, c&amp;oacute; loại m&amp;agrave;u xanh. Ăn cua ghẹ ngon nhất l&amp;agrave; v&amp;agrave;o những ng&amp;agrave;y cuối th&amp;aacute;ng v&amp;igrave; thịt sẽ chắc hơn. Kh&amp;ocirc;ng n&amp;ecirc;n ăn v&amp;agrave;o những ng&amp;agrave;y rằm v&amp;igrave; thịt &amp;iacute;t &amp;ndash; d&amp;acirc;n địa phương gọi l&amp;agrave; &amp;ldquo;&amp;oacute;p&amp;rdquo;. Cần Giờ c&amp;ograve;n c&amp;oacute; loại cua c&amp;uacute;m. Về cơ bản, n&amp;oacute; giống h&amp;igrave;nh dạng như cua, sống chủ yếu trong rừng đước. Th&amp;acirc;n h&amp;igrave;nh m&amp;agrave;u đen, mang chiếc mai x&amp;ugrave; x&amp;igrave;, nhưng thịt th&amp;igrave; rất chắc v&amp;agrave; đặc biệt thơm ngon. C&amp;ograve;n ốc, Cần Giờ l&amp;agrave; nơi du kh&amp;aacute;ch c&amp;oacute; thể t&amp;igrave;m thấy nhiều m&amp;oacute;n ngon chế biến từ ốc như gỏi chua ốc đụn, ốc gi&amp;aacute;c, ốc hương biển hấp xả, ốc mỡ x&amp;agrave;o me&amp;hellip; Mỗi loại đều mang đến cho thực kh&amp;aacute;ch một cảm nhận ri&amp;ecirc;ng về vị ngon đặc trưng của m&amp;oacute;n ăn. Nếu ốc gi&amp;aacute;c cho du kh&amp;aacute;ch cảm gi&amp;aacute;c dai dai, gi&amp;ograve;n gi&amp;ograve;n, th&amp;igrave; ốc mỡ lại ngọt lịm v&amp;agrave; mềm mại. Lại c&amp;oacute; ốc hương biển với những chiếc b&amp;ocirc;ng lấm tấm, điểm xuyết th&amp;ecirc;m cho hương vị ngọt thanh v&amp;agrave; phảng phất hương biển của m&amp;igrave;nh.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-09-20 16:59:33', 'admin', '2013-09-20 16:59:33');
INSERT INTO `media` VALUES (7, 'default13796721911', '', 'media_blog', '[155]', 'admin', 'Du Lịch Bụi Cần Giờ', '', '', 'vn', '&lt;p&gt;\r\n	Chỉ c&amp;aacute;ch trung t&amp;acirc;m TP.HCM khoảng 50 km, huyện Cần Giờ nổi tiếng với rừng ngập mặn, biển v&amp;agrave; hải sản tươi sống rất th&amp;iacute;ch hợp cho những chuyến du lịch &amp;ldquo;bụi&amp;rdquo; v&amp;agrave;o ng&amp;agrave;y cuối tuần.&amp;nbsp;Hai phương tiện đơn giản nhất để đi Cần Giờ cho người đi &amp;ldquo;bụi&amp;rdquo; l&amp;agrave; bằng xe bu&amp;yacute;t hoặc xe m&amp;aacute;y...&lt;/p&gt;', '&lt;p&gt;\r\n	Chỉ c&amp;aacute;ch trung t&amp;acirc;m TP.HCM khoảng 50 km, huyện Cần Giờ nổi tiếng với rừng ngập mặn, biển v&amp;agrave; hải sản tươi sống rất th&amp;iacute;ch hợp cho những chuyến du lịch &amp;ldquo;bụi&amp;rdquo; v&amp;agrave;o ng&amp;agrave;y cuối tuần. &lt;span style=&quot;color: rgb(119, 119, 119); font-family: Verdana, Helvetica, arial, sans-serif; font-size: 11px; font-weight: normal; line-height: 1.67em;&quot;&gt;Hai phương tiện đơn giản nhất để đi Cần Giờ cho người đi &amp;ldquo;bụi&amp;rdquo; l&amp;agrave; bằng xe bu&amp;yacute;t hoặc xe m&amp;aacute;y. Nếu đi bằng xe bu&amp;yacute;t, từ chợ Bến Th&amp;agrave;nh bạn bắt tuyến xe bu&amp;yacute;t đi Nh&amp;agrave; B&amp;egrave;, xe sẽ dừng ở ngay đầu b&amp;ecirc;n n&amp;agrave;y của ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh. Bạn mua v&amp;eacute; qua ph&amp;agrave;, sau khi qua ph&amp;agrave; (đ&amp;atilde; đến Cần Giờ) bạn bắt tiếp một tuyến xe bu&amp;yacute;t nữa để đi ra biển. Tr&amp;ecirc;n đường đi nếu muốn gh&amp;eacute; tham quan điểm n&amp;agrave;o th&amp;igrave; xin xuống v&amp;igrave; xe ở Cần Giờ kh&amp;ocirc;ng c&amp;oacute; trạm để đ&amp;oacute;n hay xuống.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;ch thứ hai dễ &amp;aacute;p dụng hơn l&amp;agrave; đi xe m&amp;aacute;y. Đi xe bu&amp;yacute;t th&amp;igrave; hơi bất tiện v&amp;igrave; xuống tới đ&amp;oacute; bạn phải đi bộ v&amp;agrave;o c&amp;aacute;c điểm tham quan m&amp;agrave; kh&amp;ocirc;ng đi đ&amp;acirc;y đi đ&amp;oacute;, ng&amp;oacute; nghi&amp;ecirc;ng, thăm th&amp;uacute; c&amp;aacute;c ng&amp;oacute;c ng&amp;aacute;ch của Cần Giờ. Đường đi Cần Giờ kh&amp;aacute; đơn giản. Từ đại lộ Nguyễn Văn Linh, Quận 7 rẽ phải sang đường Huỳnh Tấn Ph&amp;aacute;t, thẳng đến cuối đường l&amp;agrave; ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh. Gi&amp;aacute; ph&amp;agrave; đầu th&amp;aacute;ng 3 vừa qua: người đi bộ: 1.500 đồng, xe m&amp;aacute;y: 4.500 đồng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Qua ph&amp;agrave; l&amp;agrave; đụng huyện Cần Giờ. Từ đ&amp;oacute; cứ chạy thẳng một đường l&amp;agrave; đến thị x&amp;atilde; Cần Thạnh, nơi c&amp;oacute; b&amp;atilde;i biển Cần Giờ. Những điểm tham quan như V&amp;agrave;m S&amp;aacute;c, Đảo Khỉ, đều nằm tr&amp;ecirc;n trục đường thẳng đoạn đầu Cần Giờ đến trung t&amp;acirc;m thị x&amp;atilde; Cần Thạnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đến thị x&amp;atilde; Cần Thạnh bạn c&amp;oacute; thể tham quan khu du lịch 30 th&amp;aacute;ng 4 &amp;ndash; nơi c&amp;oacute; b&amp;atilde;i biển c&amp;ugrave;ng t&amp;ecirc;n. Con đường được l&amp;aacute;t đ&amp;aacute; d&amp;agrave;i t&amp;iacute;t tắp từ đầu thị x&amp;atilde; chạy thẳng đến trung t&amp;acirc;m lu&amp;ocirc;n m&amp;aacute;t rượi bởi gi&amp;oacute; biển. Dọc đoạn đường n&amp;agrave;y c&amp;oacute; kh&amp;aacute; nhiều nh&amp;agrave; h&amp;agrave;ng hải sản, nơi du kh&amp;aacute;ch c&amp;oacute; thể tha hồ ăn hải sản. C&amp;aacute;c nh&amp;agrave; h&amp;agrave;ng đoạn n&amp;agrave;y kh&amp;ocirc;ng &amp;ldquo;chặt ch&amp;eacute;m&amp;rdquo; nhiều, hải sản lại lu&amp;ocirc;n tươi ngon n&amp;ecirc;n bạn kh&amp;ocirc;ng phải lo lắng về gi&amp;aacute; cả v&amp;agrave; chất lượng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chạy thẳng con đường l&amp;aacute;t đ&amp;aacute; về hướng chợ Cần Giờ (nằm cuối đường Duy&amp;ecirc;n Hải), tại đ&amp;acirc;y bạn c&amp;oacute; thể &amp;nbsp;tham quan Lăng &amp;Ocirc;ng Thủy Tướng Nam Hải thờ c&amp;aacute; &amp;Ocirc;ng, nằm kế b&amp;ecirc;n chợ. Trong lăng thờ bộ cốt c&amp;aacute; &amp;Ocirc;ng d&amp;agrave;i 12m, lụy năm 1971. H&amp;agrave;ng năm v&amp;agrave;o ng&amp;agrave;y 16/8 &amp;acirc;m lịch lễ hội Nghinh &amp;Ocirc;ng tổ chức rất trọng thể tại đ&amp;acirc;y với h&amp;agrave;ng trăm ghe t&amp;agrave;u tham dự.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tr&amp;ecirc;n đường về, nếu c&amp;ograve;n thời gian, bạn c&amp;oacute; thể gh&amp;eacute; tham quan Đảo Khỉ (gi&amp;aacute; tham quan 30.000 đồng ng&amp;agrave;y thường v&amp;agrave; 35.000 đồng cuối tuần đối với người lớn), từ đ&amp;oacute; thu&amp;ecirc; xuồng m&amp;aacute;y tham quan rừng ngập mặn V&amp;agrave;m S&amp;aacute;t - một trong hai khu du lịch sinh th&amp;aacute;i ph&amp;aacute;t triển bền vững của thế giới tại Việt Nam. Gi&amp;aacute; xuồng đầu th&amp;aacute;ng 3 l&amp;agrave; 500.000 đồng, chở được 8 người.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một v&amp;agrave;i ch&amp;uacute; &amp;yacute; nho nhỏ khi đi Cần Giờ bằng xe m&amp;aacute;y:&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp; Đoạn đường đầu Cần Giờ (vừa qua ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh) đến đầu thị x&amp;atilde; Cần Thạnh rất vắng (xe ảnh), đường lớn nhưng nhiều đ&amp;aacute; sỏi, kh&amp;ocirc;ng bằng phẳng, do đ&amp;oacute; cần chuẩn bị xe m&amp;aacute;y với vỏ, ruột thật tốt. Nếu bạn đi v&amp;agrave;o ng&amp;agrave;y thường, hai b&amp;ecirc;n đường kh&amp;ocirc;ng hề c&amp;oacute; tiệm sửa xe, xe hỏng th&amp;igrave; chỉ c&amp;ograve;n c&amp;aacute;ch v&amp;aacute;c l&amp;ecirc;n xe bu&amp;yacute;t để t&amp;igrave;m chỗ sửa (tốn kh&amp;aacute; nhiều tiền).&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Đường Cần Giờ rất vắng&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Đường đi Cần Giờ c&amp;oacute; nhiều c&amp;ocirc;ng an giao th&amp;ocirc;ng n&amp;ecirc;n bạn phải đi theo đ&amp;uacute;ng luật giao th&amp;ocirc;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Khi v&amp;agrave;o Đảo Khỉ phải tỉnh t&amp;aacute;o bảo vệ tư trang, đồ d&amp;ugrave;ng c&amp;aacute; nh&amp;acirc;n v&amp;igrave; c&amp;aacute;c ch&amp;uacute; khỉ ở đ&amp;acirc;y rất ranh ma, hay giật đồ du kh&amp;aacute;ch.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Nếu c&amp;oacute; nhiều thời gian, bạn c&amp;oacute; thể đi Cần Giờ từ chiều thứ bảy, thu&amp;ecirc; nh&amp;agrave; nghỉ dọc khu du lịch 30 th&amp;aacute;ng 4 hoặc trung t&amp;acirc;m thị x&amp;atilde; Cần Thạnh để ngắm biển đ&amp;ecirc;m v&amp;agrave; h&amp;ocirc;m sau c&amp;oacute; nhiều thời gian tham quan hơn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một số ảnh về Cần Giờ:&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942668_17_dibuicangio-1.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942668_17_dibuicangio-1.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942668_48_dibuicangio-2.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942668_48_dibuicangio-2.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942668_82_dibuicangio-4.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942668_82_dibuicangio-4.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942669_21_dibuicangio-5.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942669_21_dibuicangio-5.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942669_49_dibuicangio-6.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942669_49_dibuicangio-6.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942670_07_dibuicangio-7.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942670_07_dibuicangio-7.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942670_75_dibuicangio-8.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942670_75_dibuicangio-8.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942671_53_dibuicangio-9.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942671_53_dibuicangio-9.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;a href=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942672_13_dibuicangio-3.jpg&quot;&gt;&lt;img src=&quot;http://media.tinmoi.vn/2012/04/09/17_21_1333942672_13_dibuicangio-3.jpg&quot; /&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'du-lich-bui-can-gio', '', '', '', '', '', '', 0, 0, 'upload/du_lich_bui.jpg', 0, '', 'Các tour du lịch', '', 0, 0, 'active', '', '2013-09-20 17:16:31', 'admin', '2013-09-23 15:13:20');
INSERT INTO `media` VALUES (8, 'default13796724191', '', 'media_blog', '[157]', 'admin', 'Về rừng ăn cua', '', '', 'vn', '&lt;p&gt;\r\n	T&amp;aacute;n rừng ngập mặn Cần Giờ (TP.HCM) tốt bụng như c&amp;ocirc; Tấm ng&amp;agrave;y xưa, đ&amp;atilde; nu&amp;ocirc;i dưỡng nhiều loại hải sản nước lợ sinh s&amp;ocirc;i. Trong đ&amp;oacute;, ngon số một l&amp;agrave; những &amp;quot;dũng sĩ&amp;quot;... cua.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thưởng thức những m&amp;oacute;n cua bốc kh&amp;oacute;i m&amp;agrave; bạn được nghe nhạc rừng h&amp;ograve;a ca c&amp;ugrave;ng gi&amp;oacute; s&amp;ocirc;ng lơ đ&amp;atilde;ng th&amp;igrave; c&amp;ograve;n th&amp;uacute; vị n&amp;agrave;o bằng!&lt;/p&gt;', '&lt;p&gt;\r\n	T&amp;aacute;n rừng ngập mặn Cần Giờ (TP.HCM) tốt bụng như c&amp;ocirc; Tấm ng&amp;agrave;y xưa, đ&amp;atilde; nu&amp;ocirc;i dưỡng nhiều loại hải sản nước lợ sinh s&amp;ocirc;i. Trong đ&amp;oacute;, ngon số một l&amp;agrave; những &amp;quot;dũng sĩ&amp;quot;... cua.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thưởng thức những m&amp;oacute;n cua bốc kh&amp;oacute;i m&amp;agrave; bạn được nghe nhạc rừng h&amp;ograve;a ca c&amp;ugrave;ng gi&amp;oacute; s&amp;ocirc;ng lơ đ&amp;atilde;ng th&amp;igrave; c&amp;ograve;n th&amp;uacute; vị n&amp;agrave;o bằng!&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Thử t&amp;agrave;i dụ cua&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tại Đầm Dơi, trong Khu du lịch sinh th&amp;aacute;i V&amp;agrave;m S&amp;aacute;t, thuộc x&amp;atilde; L&amp;yacute; Nhơn, huyện Cần Giờ, c&amp;oacute; nhiều tr&amp;ograve; bắt cua thật hấp dẫn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Gay cấn nhất l&amp;agrave; kiểu c&amp;acirc;u cua kh&amp;ocirc;ng lưỡi. Mồi d&amp;ugrave;ng nhử cua l&amp;agrave; kh&amp;uacute;c thịt đẻn hoặc con c&amp;aacute; r&amp;ocirc; phi lớn cỡ 2 - 3 ng&amp;oacute;n tay, được m&amp;oacute;c v&amp;agrave;o một đoạn kẽm. Đoạn kẽm n&amp;agrave;y được buộc v&amp;agrave;o một đầu sợi d&amp;acirc;y cước. Đầu kia của cọng d&amp;acirc;y cước người ta buộc v&amp;agrave;o ngọn một c&amp;acirc;y tr&amp;uacute;c hoặc nh&amp;aacute;nh mắm nhỏ d&amp;agrave;i 1 - 2m.&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;ve rung an cua&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/ve%20rung%20an%20cua.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	M&amp;ecirc; say m&amp;oacute;n cua rang me&lt;/div&gt;\r\n&lt;p&gt;\r\n	Đ&amp;aacute;m cua rất tham ăn nhưng cũng rất kh&amp;ocirc;n ngoan. Cho n&amp;ecirc;n, nếu người c&amp;acirc;u giật vội l&amp;ecirc;n sẽ kh&amp;ocirc;ng d&amp;iacute;nh cua. V&amp;agrave; khi con cua tiếp đất, n&amp;oacute; sẽ bấu chặt. B&amp;iacute; quyết để bắt được cua l&amp;agrave; người c&amp;acirc;u phải biết... chiều v&amp;agrave; k&amp;eacute;o l&amp;ecirc;n từ từ. C&amp;oacute; nghĩa l&amp;agrave; khi thấy d&amp;acirc;y c&amp;acirc;u căng (cua đang ăn mồi), bạn n&amp;ecirc;n d&amp;ugrave;ng d&amp;acirc;y cho cua l&amp;ocirc;i đi một đoạn để n&amp;oacute; tưởng kh&amp;ocirc;ng gặp trở ngại g&amp;igrave;. Khoảng năm ph&amp;uacute;t sau, bạn sẽ k&amp;eacute;o l&amp;ecirc;n từ từ. Nếu cua k&amp;eacute;o lại một lực cỡ 10 th&amp;igrave; bạn n&amp;ecirc;n k&amp;eacute;o lại một lực cỡ 7 - 8.&lt;/p&gt;\r\n&lt;p&gt;\r\n	V&amp;agrave; nếu cua quyết liệt k&amp;eacute;o mồi th&amp;igrave; bạn phải ch&amp;ugrave;ng d&amp;acirc;y. Đợi khoảng 5 - 7 ph&amp;uacute;t sau, cua m&amp;ecirc; mồi ta sẽ k&amp;eacute;o l&amp;ecirc;n nhẹ nh&amp;agrave;ng... V&amp;agrave; khi bạn thấy b&amp;oacute;ng cua gần trồi l&amp;ecirc;n mặt nước phải nhanh tay chuẩn bị vợt để vớt. Tr&amp;ograve; n&amp;agrave;y chỉ những người từng trải nghiệm mới thấy thật hồi hộp v&amp;agrave; hứng th&amp;uacute; cỡ n&amp;agrave;o.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hoặc tr&amp;ograve; v&amp;oacute; cua (k&amp;eacute;o rập) ở đ&amp;acirc;y cũng hấp dẫn kh&amp;ocirc;ng k&amp;eacute;m.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Tầm sư lựa cua ngon&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo chu kỳ sinh trưởng, đ&amp;aacute;m cua rừng cứ lớn l&amp;ecirc;n từng giờ, từng ng&amp;agrave;y. Song c&amp;ugrave;ng một thời điểm, c&amp;oacute; những con chứa nhiều thịt (chắc), c&amp;oacute; những con &amp;iacute;t thịt (ốp).&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;ve rung an cua 1&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/ve%20rung%20an%20cua%201.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	Thăm rập cua phải k&amp;eacute;o nhanh tay&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;ve rung an cua 2&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/ve%20rung%20an%20cua%202.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Hồi hộp tr&amp;ograve; c&amp;acirc;u cua kh&amp;ocirc;ng lưỡi&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;ve rung an cua 3&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/ve%20rung%20an%20cua%203.jpg&quot; /&gt;&lt;br /&gt;\r\n	Cua c&amp;agrave;ng khỏe thịt c&amp;agrave;ng ngon&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thật may, anh Đỗ Văn Luận, l&amp;aacute;i cua gi&amp;agrave;u kinh nghiệm v&amp;ugrave;ng n&amp;agrave;y đ&amp;atilde; chia sẻ những c&amp;aacute;ch chọn cua ngon cho ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cụ thể:&lt;/p&gt;\r\n&lt;p&gt;\r\n	1. Xem c&amp;agrave;ng: xem m&amp;agrave;u lớp da lụa (da non) giữa kẹt khuỷu (c&amp;ugrave;i chỏ) tr&amp;ecirc;n c&amp;agrave;ng cua. Nếu lớp da n&amp;agrave;y m&amp;agrave;u hồng đỏ hoặc hồng sậm th&amp;igrave; cua nhiều thịt. V&amp;agrave; bạn cần nh&amp;igrave;n kỹ hơn: cua mới bắt th&amp;igrave; lớp da n&amp;agrave;y thẳng b&amp;oacute;ng, đ&amp;oacute; l&amp;agrave; cua mập. Ngược lại, cua cũ sẽ ốm do bị rọng l&amp;acirc;u ng&amp;agrave;y, lớp da n&amp;agrave;y nhăn nheo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	2. B&amp;oacute;p yếm: Cảm thấy cứng tay l&amp;agrave; cua chắc. Ngược lại, bạn nghe mềm (phập phều) th&amp;igrave; cua &amp;iacute;t thịt (ốp).&lt;/p&gt;\r\n&lt;p&gt;\r\n	3. B&amp;oacute;p phần đầu đ&amp;ugrave;i của que dầm bơi, ph&amp;iacute;a dưới mu: B&amp;oacute;p vừa tay, nếu bạn thấy cua gi&amp;atilde;y giụa to&amp;agrave;n bộ que, c&amp;agrave;ng th&amp;igrave; cua c&amp;ograve;n khỏe (thịt ngon). Ngược lại, cua đ&amp;atilde; yếu - sắp chết. Bởi trước khi chết khoảng 2 giờ, thịt cua bủn dần - nhiều nước (b&amp;aacute;n thịt).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cua c&amp;aacute;i so (chưa đẻ lần n&amp;agrave;o) thịt ngon nhất trong h&amp;agrave;ng cua chắc. Yếm n&amp;oacute; c&amp;oacute; m&amp;agrave;u ng&amp;agrave;, cỡ 3 - 4 con/kg l&amp;agrave; đủ chuẩn. Ri&amp;ecirc;ng cua đực, cỡ 2 - 3 con/kg mới ngon. Song ngon nhớ đời l&amp;agrave; cua chuẩn bị lột (cua cốm, cua hai da), thịt cua nhiều v&amp;agrave; kh&amp;ocirc;ng chỉ ngọt đậm m&amp;agrave; c&amp;oacute; hậu b&amp;eacute;o tựa sữa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cua tự nhi&amp;ecirc;n v&amp;ugrave;ng Cần Giờ thường chắc v&amp;agrave;o những ng&amp;agrave;y m&amp;ugrave;ng mười, hai lăm &amp;acirc;m lịch trong th&amp;aacute;ng. Từ thời điểm cua chắc chờ th&amp;ecirc;m 3 - 4 ng&amp;agrave;y nữa sẽ gặp cua cốm. Loại n&amp;agrave;y, bạn đem nướng, hấp... đều ngon tuyệt!&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;* Chọn cua gạch son (mang trứng):&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bạn nh&amp;igrave;n m&amp;agrave;u gai tr&amp;ecirc;n mu: t&amp;iacute;nh từ que ch&amp;egrave;o đếm ra, gai thứ 2 - 3 c&amp;oacute; m&amp;agrave;u bạc (m&amp;agrave;u sương) l&amp;agrave; cua đầy gạch, mu vun, h&amp;eacute; yếm l&amp;ecirc;n sẽ thấy gạch hồng b&amp;ecirc;n trong. Thường m&amp;ugrave;a trung thu cũng l&amp;agrave; m&amp;ugrave;a rộ cua gạch Cần Giờ. Gi&amp;aacute; cua gạch ngon tại đ&amp;acirc;y kh&amp;aacute; rẻ, năm rồi trung b&amp;igrave;nh khoảng 160.000 - 170.000 đồng/kg.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tuy nhi&amp;ecirc;n, nếu bạn chưa vững kỹ thuật chọn cua ngon (chắc) th&amp;igrave; những nh&amp;acirc;n vi&amp;ecirc;n tại đ&amp;acirc;y sẽ chọn gi&amp;uacute;p, gi&amp;aacute; khoảng 130.000 đồng/kg, cỡ 3 con/kg.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Xơi cua giữa rừng&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sướng hơn, bạn tốn th&amp;ecirc;m khoảng 30.000 - 50.000 đồng/kg cho tiền c&amp;ocirc;ng chế biến, khoảng 15 ph&amp;uacute;t sau sẽ c&amp;oacute; ngay m&amp;oacute;n ngon theo y&amp;ecirc;u cầu: nướng, hấp bia, rang me...&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;ve rung an cua 4&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/ve%20rung%20an%20cua%204.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Hấp dẫn cua gạch hấp bia&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;ve rung an cua 5&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/ve%20rung%20an%20cua%205.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&amp;quot;Ngậm m&amp;agrave; nghe&amp;quot; cua hai da Cần Giờ&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Do vận động nhiều v&amp;agrave; được th&amp;acirc;m nhập v&amp;agrave;o &amp;quot;thế giới&amp;quot; cua n&amp;ecirc;n 6 người ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; &amp;quot;tiễn&amp;quot; gần chục ch&amp;uacute; cua hung h&amp;atilde;n trong v&amp;ograve;ng 20 ph&amp;uacute;t.&lt;/p&gt;\r\n&lt;p&gt;\r\n	M&amp;oacute;n cua rang me ở đ&amp;acirc;y thật tuyệt. Vị chua vừa đủ để khử sạch m&amp;ugrave;i tanh đặc trưng của cua v&amp;agrave; k&amp;iacute;ch hoạt những &amp;quot;đợt s&amp;oacute;ng&amp;quot; nước bọt cuộn tr&amp;agrave;o miệng thực kh&amp;aacute;ch. Xen lẫn ch&amp;uacute;t cay cay của ớt hiểm gi&amp;atilde; l&amp;agrave; chất ngọt đậm thật đặc sắc của thịt cua nước lợ. Th&amp;ecirc;m v&amp;agrave;o đ&amp;oacute; l&amp;agrave; tiếng xuồng m&amp;aacute;y &amp;quot;t&amp;agrave;nh tạch&amp;quot; vang vọng, tiếng con b&amp;igrave;m bịp giục con nước lớn c&amp;ugrave;ng những l&amp;agrave;n gi&amp;oacute; s&amp;ocirc;ng m&amp;aacute;t rượi mơn man da thịt...&lt;/p&gt;', 've-rung-an-cua', '', '', '', '', '', '', 0, 0, 'upload/ve rung an cua.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-20 17:20:19', 'admin', '2013-09-20 17:22:07');
INSERT INTO `media` VALUES (9, 'default13796726541', '', 'media_blog', '[157]', 'admin', 'Duyên thầm cá đù', '', '', 'vn', '&lt;p&gt;\r\n	Kh&amp;ocirc;ng may mắn như chị t&amp;ocirc;m h&amp;ugrave;m hay anh c&amp;aacute; thu..., con c&amp;aacute; đ&amp;ugrave; chỉ quanh quẩn ở chợ qu&amp;ecirc;, song n&amp;oacute; ẩn chứa lắm n&amp;eacute;t duy&amp;ecirc;n thầm...&lt;/p&gt;', '&lt;p&gt;\r\n	Kh&amp;ocirc;ng may mắn như chị t&amp;ocirc;m h&amp;ugrave;m hay anh c&amp;aacute; thu..., con c&amp;aacute; đ&amp;ugrave; chỉ quanh quẩn ở chợ qu&amp;ecirc;, song n&amp;oacute; ẩn chứa lắm n&amp;eacute;t duy&amp;ecirc;n thầm&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;oacute; kh&amp;ocirc;ng &amp;iacute;t người đồng cảm với c&amp;aacute;i ngon của c&amp;aacute; đ&amp;ugrave; (c&amp;aacute; l&amp;ugrave; đ&amp;ugrave;). Như anh Phan Hữu Danh, việt kiều Đức, qu&amp;aacute; th&amp;egrave;m kh&amp;ocirc; c&amp;aacute; đ&amp;ugrave;, phải nhờ người quen ở Cần Giờ mua v&amp;agrave;i k&amp;yacute; gửi gấp qua, chứ anh kh&amp;ocirc;ng đợi nổi đến tết Nguy&amp;ecirc;n đ&amp;aacute;n n&amp;agrave;y về Việt Nam thưởng thức.&lt;/p&gt;\r\n&lt;p&gt;\r\n	V&amp;agrave; cảm nhận s&amp;acirc;u sắc về c&amp;aacute;i ngon của c&amp;aacute; đ&amp;ugrave; trước ti&amp;ecirc;n l&amp;agrave; những ngư d&amp;acirc;n trực tiếp đ&amp;aacute;nh bắt giống c&amp;aacute; &amp;quot;kh&amp;ugrave; khờ&amp;quot; n&amp;agrave;y c&amp;ugrave;ng giới c&amp;ocirc;ng chức, lao động b&amp;igrave;nh d&amp;acirc;n. Bởi gi&amp;aacute; cả c&amp;aacute; đ&amp;ugrave; mềm, kh&amp;ocirc;ng vượt qu&amp;aacute;... tầm tay của họ. Hiện tại chợ cảng Cần Thạnh, huyện Cần Giờ, TP.HCM, gi&amp;aacute; một k&amp;yacute; c&amp;aacute; đ&amp;ugrave; tươi kh&amp;ocirc;ng qu&amp;aacute; 18.000 đồng, cỡ 25 - 30 con/kg; 40.000 đồng/kg kh&amp;ocirc; c&amp;aacute; đ&amp;ugrave; vừa r&amp;aacute;o (dốt dốt).&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Ngon tận thuyền&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nhiều v&amp;ugrave;ng biển ở nước ta c&amp;oacute; c&amp;aacute; đ&amp;ugrave;. Được biết, giống c&amp;aacute; n&amp;agrave;y thường n&amp;uacute;p trong những rạn, hốc đ&amp;aacute; nhưng tạp ăn. C&amp;oacute; nhiều c&amp;aacute;ch để ngư d&amp;acirc;n bắt c&amp;aacute; đ&amp;ugrave;: c&amp;agrave;o lưới, đ&amp;oacute;ng đ&amp;aacute;y, bủa lưới, c&amp;acirc;u. Trong đ&amp;oacute;, c&amp;aacute;ch bủa lưới thường bắt được c&amp;aacute; lớn, c&amp;ograve;n giẫy tung tăng. Thường v&amp;agrave;o &amp;quot;kỳ&amp;quot; nước k&amp;eacute;m, nhằm ng&amp;agrave;y m&amp;ugrave;ng 10 v&amp;agrave; 25 &amp;acirc;m lịch, canh con nước gần lớn, những ngư d&amp;acirc;n gi&amp;agrave;u kinh nghiệm ở Cần Giờ sẽ mang lưới đi bủa gần những rạn, g&amp;agrave;nh để đ&amp;oacute;n bắt c&amp;aacute; đ&amp;ugrave; &amp;quot;lựa&amp;quot;, con nhỏ kh&amp;ocirc;ng dưới hai ng&amp;oacute;n tay rưỡi người lớn. Đợi con nước vừa đủ lớn (nước b&amp;igrave;nh) họ sẽ thu hoạch.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Kho-du-chien.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngư d&amp;acirc;n Nguyễn Văn Nhiều ở Long H&amp;ograve;a, Cần Giờ kể: &amp;quot;Khoảng mười năm trước, t&amp;ocirc;i bủa một mẻ lưới d&amp;agrave;i 500m, bắt kh&amp;ocirc;ng dưới 70-80kg c&amp;aacute; đ&amp;ugrave;, loại bự ch&amp;agrave; b&amp;aacute;, cỡ ba - bốn ng&amp;oacute;n tay. Nay bữa n&amp;agrave;o tr&amp;uacute;ng lắm chỉ t&amp;aacute;m k&amp;yacute;, cỡ ba ng&amp;oacute;n tay&amp;quot;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Anh Nhiều g&amp;aacute;c m&amp;aacute;i ch&amp;egrave;o, buộc d&amp;acirc;y xuồng v&amp;agrave;o một gốc c&amp;acirc;y mắm ở bến B&amp;agrave; Năm, x&amp;atilde; L&amp;yacute; Nhơn, tuyển khoảng 20 con đ&amp;ugrave; mắt đen, mang đỏ tươi l&amp;agrave;m hai m&amp;oacute;n ruột đ&amp;atilde;i kh&amp;aacute;ch.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute; đ&amp;ugrave; nấu canh ng&amp;oacute;t l&amp;agrave; m&amp;oacute;n ngon truyền thống ở nhiều v&amp;ugrave;ng duy&amp;ecirc;n hải Trung v&amp;agrave; Nam bộ. Đời ngư phủ l&amp;ecirc;nh đ&amp;ecirc;nh tr&amp;ecirc;n biển thường dư c&amp;aacute; m&amp;agrave; thiếu rau. Thế n&amp;ecirc;n rau quả trong nồi canh ng&amp;oacute;t chỉ l&amp;agrave; hương hoa, chiếm khoảng 1/3 lượng c&amp;aacute; tươi. Do vậy, c&amp;oacute; khi kh&amp;ocirc;ng cần n&amp;ecirc;m bột ngọt, nước canh ng&amp;oacute;t vẫn ngọt lừ. V&amp;agrave; năm ba miếng c&amp;agrave; chua, v&amp;agrave;i cọng cần nước, nh&amp;uacute;m l&amp;aacute; h&amp;uacute;ng quế, mấy miếng ớt tr&amp;aacute;i như chất x&amp;uacute;c t&amp;aacute;c gi&amp;uacute;p gần k&amp;yacute; c&amp;aacute; đ&amp;ugrave; ch&amp;iacute;n c&amp;oacute; m&amp;ugrave;i thơm thanh, tỏa l&amp;ecirc;n thoang thoảng. Nước chấm th&amp;igrave; t&amp;ugrave;y th&amp;iacute;ch, kh&amp;aacute;ch c&amp;oacute; thể chọn nước mắm ngon hoặc muối ớt. Ăn c&amp;aacute; ở biển phải &amp;quot;cộc&amp;quot;, mỗi người gắp một con nặng đũa, chấm &amp;iacute;t nước chấm rồi cắn ngập răng. Thịt c&amp;aacute; đ&amp;ugrave; tươi thật ngọt, b&amp;ugrave;i b&amp;ugrave;i ri&amp;ecirc;ng phần đu&amp;ocirc;i beo b&amp;eacute;o. M&amp;oacute;n n&amp;agrave;y thường d&amp;ugrave;ng ăn chơi với b&amp;uacute;n hay lai rai v&amp;agrave;i xị đế hoặc ăn cơm đều ngon.&lt;/p&gt;\r\n&lt;p&gt;\r\n	V&amp;agrave; m&amp;oacute;n c&amp;aacute; đ&amp;ugrave; kho lạt đặc sắc kh&amp;ocirc;ng k&amp;eacute;m. Chất tạo độ chua thanh dịu cho nước c&amp;aacute; l&amp;agrave; bột bần sẻ ch&amp;iacute;n, n&amp;ecirc;m sao cho hơi chua th&amp;ocirc;i. Mới s&amp;ocirc;i, nồi nước kho đ&amp;atilde; tỏa m&amp;ugrave;i thơm thật hấp dẫn. C&amp;aacute; đ&amp;ugrave; tươi được ướp gia vị trước, chờ nước s&amp;ocirc;i gi&amp;agrave;, n&amp;ecirc;m nếm vừa ăn mới cho v&amp;agrave;o v&amp;igrave; thịt c&amp;aacute; đ&amp;ugrave; mau ch&amp;iacute;n. Thuyền đang lắc lư, anh Nhiều với tay h&amp;aacute;i mấy tr&amp;aacute;i bần sẻ chua để ăn k&amp;egrave;m với t&amp;ocirc; c&amp;aacute; đ&amp;ugrave; kho lạt. Giản tiện vậy m&amp;agrave; ngon qu&amp;ecirc;n th&amp;ocirc;i. &amp;quot;Cơm&amp;quot; bần sẻ chua kh&amp;ocirc;ng k&amp;eacute;m me, nhưng nhờ c&amp;oacute; hạt bần trội vị ch&amp;aacute;t k&amp;igrave;m lại n&amp;ecirc;n người ăn kh&amp;ocirc;ng bị &amp;ecirc; răng. V&amp;agrave; suối nước bọt của kh&amp;aacute;ch cũng &amp;quot;dại&amp;quot;, cứ nghe m&amp;ugrave;i chua l&amp;agrave; rạo rực, tu&amp;ocirc;n tr&amp;agrave;o đẩy cảm gi&amp;aacute;c ngon miệng l&amp;ecirc;n cao gấp bội.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Anh Nhiều c&amp;ograve;n chia sẻ th&amp;ecirc;m, nếu tr&amp;ecirc;n bờ, bạn bắt c&amp;aacute; đ&amp;ugrave; tươi đem kho với &amp;iacute;t khế hườm hay xo&amp;agrave;i hườm hoặc me dốt vẫn hấp dẫn kh&amp;ocirc;ng k&amp;eacute;m.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Kh&amp;ocirc; đ&amp;ugrave; một nắng&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Như đ&amp;atilde; n&amp;oacute;i ở tr&amp;ecirc;n, cảm được c&amp;aacute;i ngon của c&amp;aacute; đ&amp;ugrave; thường l&amp;agrave; giới lao động b&amp;igrave;nh d&amp;acirc;n. Hiện chị Đức, ở gần cảng c&amp;aacute; B&amp;igrave;nh Đại, Bến Tre, đ&amp;atilde; nghĩ ra c&amp;aacute;ch chế biến c&amp;aacute; đ&amp;ugrave; th&amp;agrave;nh mặt h&amp;agrave;ng ngon &amp;quot;khỏi b&amp;agrave;n&amp;quot;: kh&amp;ocirc; đ&amp;ugrave; một nắng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	M&amp;oacute;n n&amp;agrave;y, bạn đem chi&amp;ecirc;n vừa v&amp;agrave;ng, mũi đ&amp;atilde; ngợp v&amp;igrave; qu&amp;aacute; thơm. Da kh&amp;ocirc; c&amp;oacute; chỗ phồng rộp l&amp;ecirc;n, bạn ăn v&amp;agrave;o sẽ nghe gi&amp;ograve;n gi&amp;ograve;n, mằn mặn. C&amp;ograve;n thịt kh&amp;ocirc; ngọt dịu, deo dẻo. Ri&amp;ecirc;ng lớp giữa của kh&amp;ocirc; hơi mềm, hậu b&amp;ugrave;i. M&amp;oacute;n n&amp;agrave;y &amp;quot;cặp k&amp;egrave;&amp;quot; với t&amp;ocirc; canh khoai mỡ hay canh rau tập t&amp;agrave;ng hoặc canh chua chay cũng ngon &amp;quot;chịu kh&amp;ocirc;ng nổi!&amp;quot;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cũng từ kh&amp;ocirc; một nắng, bạn đem nướng tr&amp;ecirc;n than đước nổ t&amp;iacute; t&amp;aacute;ch rồi gợt tro, x&amp;eacute; nhỏ để trộn gỏi. Chất tạo chua kh&amp;ocirc;ng phải l&amp;agrave; chanh hay giấm, m&amp;agrave; l&amp;agrave; tr&amp;aacute;i c&amp;oacute;c non b&amp;agrave;o mỏng với &amp;iacute;t đọt sầu đ&amp;acirc;u hoặc xo&amp;agrave;i bằm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tinh tế hơn, bạn vắt &amp;iacute;t nước cốt khế hườm h&amp;ograve;a v&amp;agrave;o muỗng canh nước mắm ngon pha tỏi ta, ớt hiểm gi&amp;atilde; với &amp;iacute;t đường. Trộn đều! M&amp;oacute;n n&amp;agrave;y ăn chơi cũng... hao, ăn thiệt c&amp;agrave;ng... h&amp;uacute;t h&amp;agrave;ng. Bạn lưu &amp;yacute;, tr&amp;aacute;i c&amp;oacute;c hoặc xo&amp;agrave;i hườm đều kh&amp;ocirc;ng gọt vỏ, để tận dụng dư vị chan ch&amp;aacute;t v&amp;agrave; thơm nhẹ đặc trưng. Nước chấm xứng tầm với m&amp;oacute;n gỏi n&amp;agrave;y l&amp;agrave; nước mắm nhĩ pha chua ngọt. L&amp;uacute;c thưởng thức, mỗi gắp của bạn phải c&amp;oacute; đủ miếng thịt c&amp;aacute; đ&amp;ugrave;, miếng c&amp;oacute;c non b&amp;agrave;o, sợi xo&amp;agrave;i bằm hoặc một l&amp;aacute; non sầu đ&amp;acirc;u. Nhai chậm, để những th&amp;agrave;nh phần của miếng ngon kịp giao h&amp;ograve;a, thăng hoa cho những gai vị gi&amp;aacute;c ở lưỡi phải một phen... khổ sở v&amp;igrave; bắt nhiều t&amp;iacute;n hiệu m&amp;ecirc; mẩn c&amp;ugrave;ng l&amp;uacute;c: ngọt dịu, chua chua, ch&amp;aacute;t ch&amp;aacute;t, cay cay...&lt;/p&gt;\r\n&lt;p&gt;\r\n	V&amp;agrave; theo chị Đức, c&amp;aacute;ch l&amp;agrave;m kh&amp;ocirc; đ&amp;ugrave; một nắng kh&amp;ocirc;ng kh&amp;oacute; nhưng phải chịu cực. Cụ thể, c&amp;aacute;ch l&amp;agrave;m n&amp;agrave;y như sau: Chọn c&amp;aacute; tươi, to cỡ ba ng&amp;oacute;n tay người lớn trở l&amp;ecirc;n, l&amp;agrave;m sạch, xẻ ra, lọc xương, để r&amp;aacute;o. Pha nước gia vị: nấu &amp;iacute;t nước s&amp;ocirc;i, đợi ấm rồi cho v&amp;agrave;o &amp;iacute;t muối hạt v&amp;agrave; hạt n&amp;ecirc;m, độ mặn bằng nước mắm ngon 40 - 45 độ đạm. Ng&amp;acirc;m c&amp;aacute; v&amp;agrave;o nước gia vị khoảng 5 - 7 ph&amp;uacute;t. Lại vớt ra, để r&amp;aacute;o. Cho c&amp;aacute; sơ chế v&amp;agrave;o ngăn m&amp;aacute;t tủ lạnh để khoảng 12 giờ. Đem phơi c&amp;aacute; dưới nắng gắt từ 8 -10 giờ, quan trọng l&amp;agrave; bạn phải biết &amp;quot;đo&amp;quot; nắng sao cho c&amp;aacute; vừa &amp;quot;se&amp;quot; m&amp;igrave;nh. Cất kh&amp;ocirc; v&amp;agrave;o ngăn m&amp;aacute;t tủ lạnh, để ăn dần.&lt;/p&gt;', 'duyen-tham-ca-du', '', '', '', '', '', '', 0, 0, 'upload/Kho-du-chien.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-09-20 17:24:14', 'admin', '2013-09-20 17:24:14');
INSERT INTO `media` VALUES (10, 'default13796727361', '', 'media_blog', '[157]', 'admin', 'Về Vàm Sát nếm rau bui rừng, cá rô biển', '', '', 'vn', '&lt;p&gt;\r\n	Ai đ&amp;atilde; từng&amp;nbsp;gh&amp;eacute;&amp;nbsp;thăm rừng&amp;nbsp;ngập mặn&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;(huyện Cần Giờ, TP.HCM)&amp;nbsp;m&amp;agrave; chưa nếm qua những m&amp;oacute;n đặc sản ri&amp;ecirc;ng c&amp;oacute; của xứ n&amp;agrave;y như rau bui, cơm nắm, c&amp;aacute; r&amp;ocirc; biển... kể như&amp;nbsp;chưa biết Cần Giờ....&lt;/p&gt;', '&lt;p&gt;\r\n	Ai đ&amp;atilde; từng&amp;nbsp;gh&amp;eacute;&amp;nbsp;thăm rừng&amp;nbsp;ngập mặn&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;(huyện Cần Giờ, TP.HCM)&amp;nbsp;m&amp;agrave; chưa nếm qua những m&amp;oacute;n đặc sản ri&amp;ecirc;ng c&amp;oacute; của xứ n&amp;agrave;y như rau bui, cơm nắm, c&amp;aacute; r&amp;ocirc; biển... kể như&amp;nbsp;chưa biết Cần Giờ.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;vevamsatnemraubuirung1&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/vevamsatnemraubuirung1.jpeg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Rau bui xanh mướt ở g&amp;oacute;c phải&amp;nbsp;khay rau vườn lẫn rau rừng của khu du lịch V&amp;agrave;m S&amp;aacute;t&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n&lt;/table&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Một trong những m&amp;oacute;n thuộc h&amp;agrave;ng&amp;nbsp;đặc sản, d&amp;acirc;n d&amp;atilde; nhất v&amp;agrave; cũng&amp;nbsp;&amp;quot;bắt&amp;quot; nhất l&amp;agrave; rau bui rừng luộc chấm&amp;nbsp;nước mắm kho quẹt,&amp;nbsp;ăn với cơm nắm v&amp;agrave; kh&amp;ocirc; c&amp;aacute; dứa chi&amp;ecirc;n.&amp;nbsp;Kh&amp;ocirc;ng biết c&amp;oacute; phải do l&amp;uacute;c&amp;nbsp;ấy ch&amp;uacute;ng t&amp;ocirc;i&amp;nbsp;đang&amp;nbsp;đ&amp;oacute;i r&amp;atilde; người sau cả buổi s&amp;aacute;ng lang thang trong rừng đước, rừng tr&amp;agrave;m ngắm bầy dơi đu trĩu c&amp;agrave;nh, chơi đ&amp;ugrave;a với khỉ giữa rừng... hoặc&amp;nbsp;m&amp;ugrave;i vị m&amp;oacute;n&amp;nbsp;ăn kh&amp;aacute; lạ miệng n&amp;ecirc;n ai nấy&amp;nbsp;đều&amp;nbsp;gắp lu&amp;ocirc;n tay, miệng xu&amp;yacute;t xoa khen ngon.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Người d&amp;acirc;n&amp;nbsp;địa phương bảo rau bui l&amp;agrave; loại rau mọc rất nhiều trong rừng&amp;nbsp;ở&amp;nbsp;đ&amp;acirc;y, song n&amp;oacute; kh&amp;ocirc;ng mọc chen giữa rừng rậm m&amp;agrave;&amp;nbsp;ở một&amp;nbsp;khoảng rừng thưa ngập nắng. Người&amp;nbsp;đi h&amp;aacute;i rau bui rừng chỉ cần ngắt một&amp;nbsp;đoạn ngọn cỡ chừng gang tay l&amp;agrave; vừa ngon. Trong khay tre&amp;nbsp;đựng&amp;nbsp;đủ thứ rau vườn lẫn rau rừng, rau bui&amp;nbsp;đ&amp;atilde;&amp;nbsp;được phong l&amp;agrave; &amp;quot;&amp;ocirc;ng ho&amp;agrave;ng&amp;quot; bởi m&amp;ugrave;i vị của n&amp;oacute; thật kh&amp;oacute; tả, c&amp;oacute; một ch&amp;uacute;t&amp;nbsp;the&amp;nbsp;the cay cay của rau kinh giới, một ch&amp;uacute;t nh&amp;acirc;n nhẩn của khổ qua, một ch&amp;uacute;t ngọt gi&amp;ograve;n của rau muống...&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	C&amp;agrave;ng tuyệt hơn nữa khi chấm&amp;nbsp;rau bui luộc vừa tới&amp;nbsp;xanh&amp;nbsp;một m&amp;agrave;u tươi r&amp;oacute;i&amp;nbsp;với một ch&amp;uacute;t mắm kho quẹt dậy m&amp;ugrave;i mỡ h&amp;agrave;nh, t&amp;ocirc;m kh&amp;ocirc;&amp;nbsp;v&amp;agrave; một vắt cơm dẻo thơm gạo đặc sản Cần Giờ.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Kh&amp;ocirc; c&amp;aacute; dứa tưởng chừng chỉ l&amp;agrave; m&amp;oacute;n ăn giản dị của một bữa cơm d&amp;acirc;n d&amp;atilde; thường ng&amp;agrave;y, song&amp;nbsp;bỗng th&amp;agrave;nh m&amp;oacute;n ăn &amp;quot;sơn h&amp;agrave;o hải vị&amp;quot; khi được thưởng thức c&amp;ugrave;ng với rau bui rừng, cơm dẻo. Chỉ đơn giản l&amp;agrave; chi&amp;ecirc;n s&amp;eacute;m v&amp;agrave;ng một ch&amp;uacute;t để miếng c&amp;aacute; vừa đủ độ gi&amp;ograve;n, b&amp;eacute;o v&amp;agrave;&amp;nbsp;đẩy hương vị rau rừng hoang d&amp;atilde; l&amp;ecirc;n tuyệt đỉnh. Th&amp;uacute; vị nhất l&amp;agrave; những m&amp;oacute;n ăn b&amp;igrave;nh d&amp;acirc;n n&amp;agrave;y đ&amp;atilde; được khu du lịch V&amp;agrave;m S&amp;aacute;t đưa v&amp;agrave;o h&amp;agrave;ng m&amp;oacute;n độc để kh&amp;aacute;ch từ xa tới c&amp;oacute; thể nếm hết m&amp;ugrave;i vị d&amp;acirc;n d&amp;atilde; của một v&amp;ugrave;ng nước ngập mặn ven &amp;ocirc;&amp;nbsp;c&amp;oacute; một kh&amp;ocirc;ng hai.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;vevamsatnemraubuirung2&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/vevamsatnemraubuirung2.jpeg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Rau bui rừng luộc c&amp;ugrave;ng rau vườn nh&amp;agrave;, chấm với mắm kho quẹt, thưởng thức c&amp;ugrave;ng cơm nắm v&amp;agrave; kh&amp;ocirc; c&amp;aacute; dứa chi&amp;ecirc;n được n&amp;acirc;ng l&amp;ecirc;n h&amp;agrave;ng &amp;quot;sơn h&amp;agrave;o hải vị&amp;quot; ở Cần Giờ&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n&lt;/table&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	M&amp;oacute;n&amp;nbsp;ăn&amp;nbsp;độc chi&amp;ecirc;u kh&amp;aacute;c của rừng V&amp;agrave;m S&amp;aacute;t, Cần&amp;nbsp;Giờ l&amp;agrave;&amp;nbsp;c&amp;aacute; r&amp;ocirc; biển. Tr&amp;ocirc;ng giống như c&amp;aacute; r&amp;ocirc; phi thường b&amp;aacute;n nhiều&amp;nbsp;ở c&amp;aacute;c chợ, người d&amp;acirc;n v&amp;ugrave;ng rừng ngập mặn&amp;nbsp;bảo c&amp;aacute; r&amp;ocirc; biển&amp;nbsp;được c&amp;acirc;u&amp;nbsp;ở v&amp;ugrave;ng biển n&amp;agrave;y.&amp;nbsp;Điểm&amp;nbsp;đặc biệt của m&amp;oacute;n c&amp;aacute; r&amp;ocirc; biển chi&amp;ecirc;n x&amp;ugrave; của V&amp;agrave;m S&amp;aacute;t l&amp;agrave; n&amp;oacute;&amp;nbsp;được chi&amp;ecirc;n&amp;nbsp;l&amp;agrave;m sao&amp;nbsp;để&amp;nbsp;con&amp;nbsp;c&amp;aacute;&amp;nbsp;đứng&amp;nbsp;được tr&amp;ecirc;n&amp;nbsp;đ&amp;ocirc;i mang dang rộng hai b&amp;ecirc;n.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Ngư d&amp;acirc;n&amp;nbsp;ở&amp;nbsp;đ&amp;acirc;y giải th&amp;iacute;ch l&amp;yacute; do con c&amp;aacute;&amp;nbsp;đứng như thế l&amp;agrave; từ tục lệ của d&amp;acirc;n miền biển l&amp;agrave;&amp;nbsp;ki&amp;ecirc;ng l&amp;uacute;c&amp;nbsp;ăn c&amp;aacute; kh&amp;ocirc;ng lật ngược m&amp;igrave;nh c&amp;aacute; lại sau khi&amp;nbsp;đ&amp;atilde;&amp;nbsp;ăn&amp;nbsp;hết phần nạc&amp;nbsp;ở th&amp;acirc;n tr&amp;ecirc;n. V&amp;igrave; vậy,&amp;nbsp;tr&amp;ocirc;ng ch&amp;uacute; c&amp;aacute; r&amp;ocirc; biển&amp;nbsp;đứng thẳng&amp;nbsp;ưỡn ngực tr&amp;ecirc;n đĩa rau sống xanh non&amp;nbsp;thật&amp;nbsp;ấn tượng v&amp;agrave; kh&amp;aacute;c thường, dẫu chỉ l&amp;agrave; m&amp;oacute;n c&amp;aacute; chi&amp;ecirc;n&amp;nbsp;đơn thuần.&amp;nbsp;Hương vị của c&amp;aacute; r&amp;ocirc; biển hẳn nhi&amp;ecirc;n&amp;nbsp;cũng kh&amp;aacute;c nhiều so với con c&amp;aacute; r&amp;ocirc; phi m&amp;agrave; ta thường mua ở chợ. Thịt c&amp;aacute; r&amp;ocirc; biển trắng, dai, đậm đ&amp;agrave; vị muối thi&amp;ecirc;n nhi&amp;ecirc;n, quyện c&amp;ugrave;ng rau sống thơm ngọt ngon tuyệt!&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;vevamsatnemraubuirung3&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/vevamsatnemraubuirung3.jpeg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				C&amp;aacute; r&amp;ocirc; biển chi&amp;ecirc;n x&amp;ugrave; - một m&amp;oacute;n ngon của Cần Giờ&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Chưa hết, bữa&amp;nbsp;ăn d&amp;acirc;n&amp;nbsp;d&amp;atilde; với những m&amp;oacute;n c&amp;acirc;y nh&amp;agrave;&amp;nbsp;l&amp;aacute; vườn ở rừng V&amp;agrave;m S&amp;aacute;t sẽ thiếu trọn&amp;nbsp;vẹn nếu kh&amp;ocirc;ng c&amp;oacute; m&amp;oacute;n tr&amp;aacute;ng miệng bằng loại tr&amp;aacute;i c&amp;acirc;y mang n&amp;eacute;t đặc trưng của Cần Giờ: dừa nước. Mặc d&amp;ugrave; kh&amp;ocirc;ng phải l&amp;agrave; loại tr&amp;aacute;i qu&amp;yacute; hiếm, ai cũng dễ d&amp;agrave;ng mua ở bất cứ g&amp;oacute;c phố n&amp;agrave;o của S&amp;agrave;i G&amp;ograve;n, song những miếng dừa nước trắng đục như những&amp;nbsp;miếng thạch thơm tho h&amp;ocirc;m ấy cứ như tan ra trong miệng thơm lừng m&amp;ugrave;i biển.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;vevamsatnemraubuirung4&quot; src=&quot;http://www.dulichhoanmy.com/images/stories/huong_vi_que_nha/dac_san/vevamsatnemraubuirung4.jpeg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Dừa nước - m&amp;oacute;n tr&amp;aacute;ng miệng d&amp;acirc;n d&amp;atilde; của rừng Cần Giờ&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	V&amp;agrave; những hương vị d&amp;acirc;n d&amp;atilde; kh&amp;oacute; qu&amp;ecirc;n ấy cứ&amp;nbsp;c&amp;ograve;n n&amp;iacute;u ch&amp;acirc;n kh&amp;aacute;ch đường xa quay về với rừng nước ngập mặn mến kh&amp;aacute;ch v&amp;agrave; ph&amp;oacute;ng kho&amp;aacute;ng nắng gi&amp;oacute;...&lt;/p&gt;', 've-vam-sat-nem-rau-bui-rung-ca-ro-bien', '', '', '', '', '', '', 0, 0, 'upload/vevamsatnemraubuirung1.jpeg', 0, '', '', '', 0, 0, 'active', '', '2013-09-20 17:25:36', 'admin', '2013-09-20 17:26:52');
INSERT INTO `media` VALUES (11, 'default13799246971', '', 'media_blog', '[160]', 'admin', 'Hoa hậu Trái đất trồng đước ở Cần Giờ', '', '', 'vn', '&lt;p&gt;\r\n	S&amp;aacute;ng 13/9, 3 người đẹp Miss Earth đến thăm huyện Cần Giờ (TP HCM), tham gia hoạt động thu dọn r&amp;aacute;c tr&amp;ecirc;n biển v&amp;agrave; trồng đước ở rừng ngập mặn....&lt;/p&gt;', '&lt;p&gt;\r\n	Để bắt đầu c&amp;ocirc;ng việc thu gom r&amp;aacute;c v&amp;agrave; sau đ&amp;oacute; l&amp;agrave; trồng đước ở rừng ngập mặn, mỗi Hoa hậu được ph&amp;aacute;t một chiếc mũ tai b&amp;egrave;o để chống nắng. C&amp;aacute;c người đẹp rất t&amp;ograve; m&amp;ograve; v&amp;agrave; th&amp;iacute;ch th&amp;uacute; với chiếc mũ đặc trưng của Việt Nam n&amp;agrave;y.&amp;nbsp;Hoa hậu Tr&amp;aacute;i đất 2007&amp;nbsp;Jessica Trisko&amp;nbsp;đội thử rồi h&amp;aacute;o hức ngắm ngh&amp;iacute;a h&amp;igrave;nh ảnh của m&amp;igrave;nh trong m&amp;aacute;y ảnh của ph&amp;oacute;ng vi&amp;ecirc;n c&amp;aacute;c b&amp;aacute;o.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mặc d&amp;ugrave; giữa buổi trưa nắng n&amp;oacute;ng, phải lu&amp;ocirc;n tay quệt mồ h&amp;ocirc;i, nhưng với găng tay, t&amp;uacute;i nilon v&amp;agrave; kẹp nhặt r&amp;aacute;c, c&amp;aacute;c Hoa hậu vẫn cười tươi v&amp;agrave; thoăn thoắt thực hiện việc dọn dẹp, l&amp;agrave;m sạch b&amp;atilde;i biển. C&amp;ugrave;ng với c&amp;aacute;c c&amp;ocirc;, rất nhiều đo&amp;agrave;n vi&amp;ecirc;n, thanh ni&amp;ecirc;n t&amp;igrave;nh nguyện v&amp;agrave; người d&amp;acirc;n Cần Giờ cũng tham gia c&amp;ocirc;ng t&amp;aacute;c l&amp;agrave;m sạch m&amp;ocirc;i trường biển.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sau đ&amp;oacute;, đo&amp;agrave;n Hoa hậu l&amp;ecirc;n đường ra Đảo Khỉ trồng đước ở rừng ngập mặn. Mỗi c&amp;ocirc; mang một đ&amp;ocirc;i gi&amp;agrave;y đặc biệt chuy&amp;ecirc;n d&amp;ugrave;ng lội tr&amp;ecirc;n b&amp;ugrave;n nh&amp;atilde;o ở Cần Giờ. Lần đầu ti&amp;ecirc;n l&amp;agrave;m c&amp;ocirc;ng việc n&amp;agrave;y, l&amp;uacute;c đầu c&amp;aacute;c người đẹp c&amp;oacute; ch&amp;uacute;t l&amp;uacute;ng t&amp;uacute;ng khi di chuyển b&amp;igrave; b&amp;otilde;m dưới b&amp;ugrave;n. Nhưng sau đ&amp;oacute;, c&amp;aacute;c c&amp;ocirc; đ&amp;atilde; tự m&amp;igrave;nh trồng được từng c&amp;acirc;y đước đ&amp;uacute;ng theo kỹ thuật do c&amp;aacute;n bộ địa phương chỉ dẫn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tại Cần Giờ, c&amp;aacute;c người đẹp Tr&amp;aacute;i đất nhận được sự đ&amp;oacute;n tiếp nồng nhiệt của l&amp;atilde;nh đạo địa phương v&amp;agrave; đ&amp;ocirc;ng đảo thanh thiếu ni&amp;ecirc;n, người d&amp;acirc;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ph&amp;aacute;t biểu tại lễ ph&amp;aacute;t động bảo vệ m&amp;ocirc;i trường sinh th&amp;aacute;i, Hoa hậu Tr&amp;aacute;i đất Philippines 2008 Karla Paula Henry chia sẻ: &amp;quot;T&amp;ocirc;i nghĩ tr&amp;aacute;ch nhiệm bảo vệ m&amp;ocirc;i trường kh&amp;ocirc;ng chỉ của ri&amp;ecirc;ng ai. Nếu một người l&amp;agrave;m th&amp;igrave; rất kh&amp;oacute; nhưng tất cả ch&amp;uacute;ng ta c&amp;ugrave;ng chung sức th&amp;igrave; m&amp;ocirc;i trường tự nhi&amp;ecirc;n sẽ được giữ g&amp;igrave;n tươi đẹp&amp;quot;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	S&amp;aacute;ng 14/9, ba Hoa hậu c&amp;oacute; buổi tr&amp;ograve; truyện với c&amp;aacute;c sinh vi&amp;ecirc;n ng&amp;agrave;nh du lịch tại Triển l&amp;atilde;m Du lịch Quốc tế. Chiều c&amp;ugrave;ng ng&amp;agrave;y, c&amp;aacute;c c&amp;ocirc; sẽ&amp;nbsp;&lt;a href=&quot;http://giaitri.vnexpress.net/tin-tuc/gioi-sao/trong-nuoc/hoa-hau-trai-dat-trong-duoc-o-can-gio-1898823.html&quot;&gt;h&amp;oacute;a th&amp;acirc;n th&amp;agrave;nh chị Hằng&lt;/a&gt;&amp;nbsp;tham gia ph&amp;aacute;t qu&amp;agrave; cho trẻ em ngh&amp;egrave;o ở TP HCM trong chương tr&amp;igrave;nh &amp;quot;Đ&amp;ecirc;m trăng cổ t&amp;iacute;ch&amp;quot; diễn ra tại c&amp;ocirc;ng vi&amp;ecirc;n L&amp;ecirc; Văn T&amp;aacute;m.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Dưới đ&amp;acirc;y l&amp;agrave; h&amp;igrave;nh ảnh c&amp;aacute;c Hoa hậu trong ng&amp;agrave;y l&amp;agrave;m việc 13/9 tại Cần Giờ:&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Tham dự lễ phát động chương trình &quot; border=&quot;1&quot; designtimesp=&quot;25340&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a9-1345594114_480x0.jpg&quot; i=&quot;&quot; ng=&quot;&quot; nh=&quot;&quot; o=&quot;&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a9-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Tham dự lễ ph&amp;aacute;t động chương tr&amp;igrave;nh &amp;quot;Bảo vệ m&amp;ocirc;i trường xanh&amp;quot; c&amp;ugrave;ng l&amp;atilde;nh đạo huyện.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Nón tai bèo trên đầu, chuẩn bị sẵn sàng dọn rác trên bãi biển.&quot; border=&quot;1&quot; designtimesp=&quot;25348&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a18-1345594114_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a18-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Mũ tai b&amp;egrave;o tr&amp;ecirc;n đầu, c&amp;aacute;c người đẹp sẵn s&amp;agrave;ng dọn r&amp;aacute;c tr&amp;ecirc;n b&amp;atilde;i biển.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Làm duyên trước ống kính.&quot; border=&quot;1&quot; designtimesp=&quot;25356&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a20-1345594114_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a20-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					L&amp;agrave;m duy&amp;ecirc;n trước ống k&amp;iacute;nh.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Hoa hậu Trái đất 2007 thu nhặt rác.&quot; border=&quot;1&quot; designtimesp=&quot;25364&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a25-1345594114_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a25-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Đương kim Hoa hậu Tr&amp;aacute;i đất thu nhặt r&amp;aacute;c.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Hoa hậu Trái đất Philippines 2008.&quot; border=&quot;1&quot; designtimesp=&quot;25372&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a26-1345594114_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a26-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Hoa hậu Tr&amp;aacute;i đất Philippines 2008.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Các em thanh niên tình nguyện tại Cần Giờ tranh thủ chụp hình với Hoa hậu Trái đất Philippines&quot; border=&quot;1&quot; designtimesp=&quot;25380&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a28-1345594114_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a28-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					C&amp;aacute;c thanh ni&amp;ecirc;n t&amp;igrave;nh nguyện tại Cần Giờ tranh thủ chụp h&amp;igrave;nh với Hoa hậu Tr&amp;aacute;i đất Singapore 2008.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Thấm mệt.&quot; border=&quot;1&quot; designtimesp=&quot;25388&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a30-1345594114_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a30-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Thấm mệt.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Mang đôi giày đặc biệt chuẩn bị lội bùn trồng đước.&quot; border=&quot;1&quot; designtimesp=&quot;25404&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a33-1345594114_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a33-1345594114_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Mang đ&amp;ocirc;i gi&amp;agrave;y đặc biệt chuẩn bị lội b&amp;ugrave;n trồng đước.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Cẩn thận trồng đúng kỹ thuật.&quot; border=&quot;1&quot; designtimesp=&quot;25420&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a38-1345594115_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a38-1345594115_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Cẩn thận trồng đ&amp;uacute;ng kỹ thuật.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Tháo giầy, đi chân đất lội bùn cho vững.&quot; border=&quot;1&quot; designtimesp=&quot;25428&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a39-1345594115_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a39-1345594115_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Th&amp;aacute;o giầy, đi ch&amp;acirc;n đất lội b&amp;ugrave;n cho vững.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Hoa hậu Trái đất 2007 bị lún bùn sâu, suýt té.&quot; border=&quot;1&quot; designtimesp=&quot;25436&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a40-1345594115_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a40-1345594115_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Hoa hậu Tr&amp;aacute;i đất 2007 bị l&amp;uacute;n b&amp;ugrave;n s&amp;acirc;u, su&amp;yacute;t t&amp;eacute;.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Hớn hở lên thuyền trở về sau khi đã hoàn thành xuất sắc nhiệm vụ.&quot; border=&quot;1&quot; designtimesp=&quot;25452&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a42-1345594115_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a42-1345594115_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Hớn hở l&amp;ecirc;n thuyền trở về sau chuyến đi nhiều &amp;yacute; nghĩa.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Giúp nhau.&quot; border=&quot;1&quot; designtimesp=&quot;25460&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a43-1345594115_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a43-1345594115_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Gi&amp;uacute;p nhau sửa lại mũ cho đẹp.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Thay giày và rửa chân.&quot; border=&quot;1&quot; designtimesp=&quot;25468&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a44-1345594115_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a44-1345594115_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Thay gi&amp;agrave;y v&amp;agrave; rửa ch&amp;acirc;n.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; cexpand=&quot;false&quot; visible=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Hoa hậu Trái đất Philippines 2008 duyên dáng trong chiếc nón mượn được của một anh bộ đội Cần Giờ.&quot; border=&quot;1&quot; designtimesp=&quot;25476&quot; designtimeurl=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a47-1345594115_480x0.jpg&quot; src=&quot;http://m.f9.img.vnexpress.net/2008/09/14/a47-1345594115_480x0.jpg&quot; visible=&quot;1&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Hoa hậu Tr&amp;aacute;i đất Philippines 2008 duy&amp;ecirc;n d&amp;aacute;ng trong chiếc mũ mượn được của một anh bộ đội Cần Giờ.&lt;/p&gt;\r\n				&lt;div style=&quot;text-align: center;&quot;&gt;\r\n					&amp;nbsp;&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'hoa-hau-trai-dat-trong-duoc-o-can-gio', '', '', '', '', '', '', 0, 0, 'upload/a9-1345594114_480x0.jpg', 0, '', 'Trồng rừng', '', 0, 0, 'active', '', '2013-09-23 15:24:57', 'admin', '2013-09-23 15:32:29');
INSERT INTO `media` VALUES (12, 'default13799251051', '', 'media_blog', '[160]', 'admin', 'Cảm xúc về chuyến đi từ thiện ở đảo Thạch An, huyện Cần Giờ', '', '', 'vn', '', '&lt;p&gt;\r\n	Chiếc ghe nhỏ đơn sơ bắt đầu khởi h&amp;agrave;nh đưa đo&amp;agrave;n ch&amp;uacute;ng t&amp;ocirc;i đến h&amp;ograve;n đảo nhỏ Thạnh An,Cần Giờ , một trong những x&amp;atilde; đảo ngh&amp;egrave;o nhất của huyện Cần Giờ, l&amp;agrave; một đảo nhỏ muốn tới nơi phải đi ph&amp;agrave; vượt s&amp;ocirc;ng v&amp;agrave; đi đ&amp;ograve;. Nơi đ&amp;oacute; c&amp;oacute; những &amp;aacute;nh mắt ng&amp;acirc;y thơ của những em b&amp;eacute; ngh&amp;egrave;o đang chờ ch&amp;uacute;ng t&amp;ocirc;i. Gi&amp;oacute; s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n lồng lộng l&amp;agrave;m dịu đi c&amp;aacute;i nắng g&amp;acirc;y gắt của mua h&amp;egrave;. T&amp;ocirc;i h&amp;iacute;t v&amp;agrave;o thật s&amp;acirc;u nghe l&amp;ograve;ng m&amp;igrave;nh nao nao, một cảm gi&amp;aacute;c thật dễ chịu.&lt;br /&gt;\r\n	&amp;nbsp;&lt;br /&gt;\r\n	Kh&amp;ocirc;ng phải đ&amp;acirc;y l&amp;agrave; lần đ&amp;acirc;u ti&amp;ecirc;n t&amp;ocirc;i đi l&amp;agrave;m từ thiện như thế n&amp;agrave;y, nhưng sao h&amp;ocirc;m nay l&amp;ograve;ng t&amp;ocirc;i tr&amp;agrave;o d&amp;acirc;ng ngỗn ngang những cảm x&amp;uacute;c như l&amp;uacute;c ban đầu. Đ&amp;uacute;ng ! đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; chuyến đi đầu ti&amp;ecirc;n của t&amp;ocirc;i với Sunny Việt Nam! Một cảm gi&amp;aacute;c thật đặc biệt với t&amp;ocirc;i v&amp;igrave; từ nay t&amp;ocirc;i đ&amp;atilde; trở th&amp;agrave;nh th&amp;agrave;nh vi&amp;ecirc;n ch&amp;iacute;nh thức của hội, c&amp;ugrave;ng với những th&amp;agrave;nh vi&amp;ecirc;n năng động, đầy nhiệt huyết, như Th&amp;aacute;i B&amp;igrave;nh chủ tịch của hội l&amp;agrave; người lu&amp;ocirc;n bận rộn nhưng lại ca vọng cổ rất hay, như Hằng lớn l&amp;agrave; người nhiệt t&amp;igrave;nh v&amp;agrave;&amp;nbsp; chiếc cầu nối kh&amp;ocirc;ng thể thiếu được giữa Sunny Việt Nam v&amp;agrave; Sunny Korea, Hằng nhỏ l&amp;agrave; người c&amp;oacute; tr&amp;aacute;i tim biết đồng cảm hay gi&amp;uacute;p đỡ người kh&amp;aacute;c, như V&amp;acirc;n l&amp;agrave; c&amp;ocirc; b&amp;eacute; rất c&amp;aacute; t&amp;iacute;nh v&amp;agrave; l&amp;agrave; &amp;ldquo; ph&amp;oacute; nh&amp;aacute;y&amp;rdquo; của hội, như Hiền một c&amp;ocirc; b&amp;eacute; hay mộng mơ về một tương lai m&amp;agrave; nơi đ&amp;oacute; kh&amp;ocirc;ng c&amp;ograve;n những cảnh ngh&amp;egrave;o khổ. Như chị Diễm l&amp;agrave; một người kh&amp;aacute; đặc biệt &amp;iacute;t n&amp;oacute;i nhưng mỗi khi mở lời lại l&amp;agrave;m cho cả hội vỡ &amp;agrave;o trong tiếng cười v&amp;agrave; cũng l&amp;agrave; một tay ghita cừ kh&amp;ocirc;i... Thật l&amp;agrave; may mắn!&lt;/p&gt;\r\n&lt;p&gt;\r\n	V&amp;agrave; k&amp;igrave;a h&amp;ograve;n đảo nhỏ đ&amp;atilde; hiện ra trước mắt, chiếc ghe cặp bến mọi người vội v&amp;atilde; mang qu&amp;agrave; , b&amp;aacute;nh , kẹo xuống ghe v&amp;agrave; đi bộ v&amp;agrave;o trường . Thầy B&amp;igrave;nh hiệu trưởng trường Thạnh An c&amp;ugrave;ng với c&amp;aacute;c thầy c&amp;ocirc; gi&amp;aacute;o đ&amp;oacute;n tiếp ch&amp;uacute;ng t&amp;ocirc;i rất nồng nhiệt , một bảng hiệu m&amp;agrave;u đỏ được giăng trước trường &amp;ldquo; ch&amp;agrave;o đ&amp;oacute;n hội Sunny Vietnam &amp;ldquo; Một s&amp;acirc;n khấu nhỏ diễn văn nghệ đ&amp;atilde; được chuẩn bị sẳn s&amp;agrave;ng , tất cả c&amp;aacute;c em điều tươm tất trong bộ đồng phục học sinh đ&amp;atilde; củ v&amp;agrave; sờn vai. Tất cả những điều đ&amp;oacute; l&amp;agrave;m cho t&amp;ocirc;i c&amp;oacute; một cảm gi&amp;aacute;c m&amp;igrave;nh thật quan trọng v&amp;agrave; l&amp;agrave;m cho chuyến đi c&amp;oacute; &amp;yacute; nghĩa hơn. Những tiếng h&amp;aacute;t trong veo cất l&amp;ecirc;n , những nụ cười v&amp;ocirc; tư, những &amp;aacute;nh mắt hồn nhi&amp;ecirc;n , những b&amp;agrave;n tay nhỏ nhắn xinh xắn x&amp;egrave;o ra nhận qu&amp;agrave; , rồi &amp;ocirc;m chặc v&amp;agrave;o l&amp;ograve;ng như sợ c&amp;oacute; ai đ&amp;oacute; lấy đi phần của m&amp;igrave;nh... T&amp;ocirc;i chợt thấy kh&amp;oacute;e mắt m&amp;igrave;nh cay cay , một cảm gi&amp;aacute;c vui buồn lẫn lộn .T&amp;ocirc;i vui v&amp;igrave; m&amp;igrave;nh đ&amp;atilde; l&amp;agrave;m một việc c&amp;oacute; &amp;yacute; nghĩa , buồn v&amp;igrave; cuộc đời n&amp;agrave;y c&amp;ograve;n qu&amp;aacute; nhiều cảnh đời ngh&amp;egrave;o kh&amp;oacute; cần được gi&amp;uacute;p đỡ. C&amp;ocirc; Lee đ&amp;atilde; kết th&amp;uacute;c buổi giao lưu với trường bằng lời ph&amp;aacute;t biểu thật ch&amp;acirc;n th&amp;agrave;nh v&amp;agrave; t&amp;igrave;nh cảm với mong muốn rằng trong tương lai Sunny Vietnam sẽ l&amp;agrave;m được nhiều điều hơn cho c&amp;aacute;c em ngh&amp;egrave;o ở đảo n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Suốt dọc đường trở về trong đầu t&amp;ocirc;i vẫn quanh quẩn lời ph&amp;aacute;t biểu của c&amp;ocirc; Lee. L&amp;agrave;m sao m&amp;igrave;nh c&amp;oacute; thể gi&amp;uacute;p Sunny Việt nam lớn mạnh để c&amp;oacute; thể&amp;nbsp; gi&amp;uacute;p được&amp;nbsp; hết trẻ em ngh&amp;egrave;o đ&amp;acirc;y? Nếu chỉ l&amp;agrave; v&amp;agrave;i chuyến đi trong một năm th&amp;igrave; chỉ l&amp;agrave;&amp;nbsp; &amp;ldquo; Bốc một v&amp;oacute;c muối bỏ xuống s&amp;ocirc;ng m&amp;agrave; th&amp;ocirc;i! &amp;rdquo; . V&amp;agrave; &amp;nbsp;t&amp;ocirc;i chợt nghĩ&amp;nbsp; ra một điều&amp;nbsp;&amp;rdquo; Việc l&amp;agrave;m từ thiện&amp;nbsp; &amp;yacute; nghĩa của n&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; ch&amp;uacute;ng ta gi&amp;uacute;p được bao nhi&amp;ecirc;u người , v&amp;agrave; ta đ&amp;oacute;ng g&amp;oacute;p được bao nhi&amp;ecirc;u tiền, m&amp;agrave; &amp;yacute; nghĩa đ&amp;iacute;ch thực của n&amp;oacute; l&amp;agrave; ta c&amp;oacute; thể khơi dậy l&amp;ograve;ng từ t&amp;acirc;m của bao nhi&amp;ecirc;u người.&amp;rdquo;&amp;nbsp;Nếu ch&amp;uacute;ng ta những th&amp;agrave;nh vi&amp;ecirc;n đầu ti&amp;ecirc;n của Sunny Việt Nam l&amp;agrave;m được điều n&amp;agrave;y th&amp;igrave; t&amp;ocirc;i tin Sunny Việt Nam sẽ lớn mạnh trong tương lai.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: right;&quot;&gt;\r\n	&lt;em&gt;(Sưu tầm)&lt;/em&gt;&lt;/p&gt;', 'cam-xuc-ve-chuyen-di-tu-thien-o-dao-thach-an-huyen-can-gio', '', '', '', '', '', '', 0, 0, 'upload/images.jpg', 0, '', 'Từ thiện', '', 0, 0, 'active', '', '2013-09-23 15:31:45', 'admin', '2013-09-23 15:32:41');
INSERT INTO `media` VALUES (13, 'default13799256791', '', 'media_blog', '[158]', 'admin', 'Du lịch sinh thái ở Cần Giờ', '', '', 'vn', '&lt;p&gt;\r\n	Theo đ&amp;aacute;nh gi&amp;aacute; của&amp;nbsp;c&amp;aacute;c chuy&amp;ecirc;n gia nước ngo&amp;agrave;i,&amp;nbsp;Cần Giờ&amp;nbsp;l&amp;agrave; khu&amp;nbsp;rừng&amp;nbsp;được kh&amp;ocirc;i phục, chăm s&amp;oacute;c, bảo vệ v&amp;agrave; quản l&amp;yacute; tốt nhất Đ&amp;ocirc;ng Nam &amp;Aacute;. Với sự hiện diện của khoảng 160 lo&amp;agrave;i, thảm thực vật&amp;nbsp;Cần Giờ&amp;nbsp;c&amp;ograve;n l&amp;agrave; m&amp;ocirc;i trường sinh sống của hơn 700 lo&amp;agrave;i động vật thủy sinh kh&amp;ocirc;ng xương sống, 137 lo&amp;agrave;i&amp;nbsp;c&amp;aacute;, tr&amp;ecirc;n 40 lo&amp;agrave;i động vật c&amp;oacute; xương sống....&lt;/p&gt;', '&lt;div itemprop=&quot;reviews&quot;&gt;\r\n	Theo đ&amp;aacute;nh gi&amp;aacute; của&amp;nbsp;c&amp;aacute;c chuy&amp;ecirc;n gia nước ngo&amp;agrave;i,&amp;nbsp;Cần Giờ&amp;nbsp;l&amp;agrave; khu&amp;nbsp;rừng&amp;nbsp;được kh&amp;ocirc;i phục, chăm s&amp;oacute;c, bảo vệ v&amp;agrave; quản l&amp;yacute; tốt nhất Đ&amp;ocirc;ng Nam &amp;Aacute;. Với sự hiện diện của khoảng 160 lo&amp;agrave;i, thảm thực vật&amp;nbsp;Cần Giờ&amp;nbsp;c&amp;ograve;n l&amp;agrave; m&amp;ocirc;i trường sinh sống của hơn 700 lo&amp;agrave;i động vật thủy sinh kh&amp;ocirc;ng xương sống, 137 lo&amp;agrave;i&amp;nbsp;c&amp;aacute;, tr&amp;ecirc;n 40 lo&amp;agrave;i động vật c&amp;oacute; xương sống.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Kh&amp;ocirc;ng chỉ c&amp;oacute; thế, văn h&amp;oacute;a của cộng đồng người d&amp;acirc;n nơi đ&amp;acirc;y cũng rất phong ph&amp;uacute; v&amp;agrave; mang đậm bản sắc bản địa, gắn liền với&amp;nbsp;c&amp;aacute;c l&amp;agrave;ng nghề truyền thống như l&amp;agrave;ng ch&amp;agrave;i, l&amp;agrave;ng&amp;nbsp;rừng, l&amp;agrave;ng n&amp;ocirc;ng.... Đ&amp;acirc;y cũng l&amp;agrave; nơi đầu ti&amp;ecirc;n ở Việt Nam v&amp;agrave; khu vực Đ&amp;ocirc;ng Nam &amp;Aacute; ph&amp;aacute;t hiện ra khu mộ cổ chum với tr&amp;ecirc;n 300 ng&amp;ocirc;i, di chỉ c&amp;oacute; gi&amp;aacute; trị về nền văn h&amp;oacute;a &amp;Oacute;c Eo.&lt;br /&gt;\r\n	&lt;table&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;\r\n					&lt;p style=&quot;text-align: center;&quot;&gt;\r\n						&lt;a href=&quot;http://du-lich.chudu24.com/f/d/090217/image003-3.jpg?c=1&amp;amp;w=450&quot; rel=&quot;group1&quot; title=&quot;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://du-lich.chudu24.com/f/d/090217/image003-3.jpg?c=1&amp;amp;w=450&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n					&lt;p&gt;\r\n						&amp;nbsp;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	Du kh&amp;aacute;ch&amp;nbsp;cũng c&amp;oacute; cơ hội tham quan&amp;nbsp;rừng&amp;nbsp;ngập mặn&amp;nbsp;V&amp;agrave;m S&amp;aacute;t-một trong hai khu&amp;nbsp;du lịch&amp;nbsp;sinh th&amp;aacute;i&amp;nbsp;ph&amp;aacute;t triển bền vững của thế giới tại Việt Nam- để tận hưởng kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh, thưởng thức những m&amp;oacute;n ăn được chế biến từ những sản vật sẵn c&amp;oacute; ở đ&amp;acirc;y như t&amp;ocirc;m, cua, ngao...&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Rừng&amp;nbsp;ngập mặn&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;Cần Giờ&lt;/strong&gt;&lt;br /&gt;\r\n	Nằm trong Khu dự trữ&amp;nbsp;Sinh quyển&amp;nbsp;Thế giới,&amp;nbsp;rừng&amp;nbsp;ngập mặn&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;(thuộc huyện&amp;nbsp;Cần Giờ&amp;nbsp;- th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh) vốn l&amp;agrave; mảnh đất thi&amp;ecirc;ng c&amp;oacute; nhiều c&amp;acirc;y cổ thụ nguy&amp;ecirc;n sinh, t&amp;aacute;n rộng sum su&amp;ecirc;, phong ph&amp;uacute;. Th&amp;uacute;&amp;nbsp;rừng&amp;nbsp;qu&amp;yacute; hiếm tập trung sinh sống rất đ&amp;ocirc;ng. Trong thời kỳ chống Mỹ,&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;gần như bị huỷ diệt, hệ động thực vật dần mất theo.&lt;br /&gt;\r\n	&lt;table&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;\r\n					&lt;p style=&quot;text-align: center;&quot;&gt;\r\n						&lt;a href=&quot;http://du-lich.chudu24.com/f/d/090217/image004-3.jpg?c=1&amp;amp;w=450&quot; rel=&quot;group1&quot; title=&quot;Rừng Vàm Sát&quot;&gt;&lt;img alt=&quot;Rừng Vàm Sát&quot; src=&quot;http://du-lich.chudu24.com/f/d/090217/image004-3.jpg?c=1&amp;amp;w=450&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n					&lt;p style=&quot;text-align: center;&quot;&gt;\r\n						&lt;a href=&quot;http://dulich.chudu24.com/tu-khoa-du-lich/rung/huong-dan-du-lich.html&quot; title=&quot;Từ khóa: Rừng&quot;&gt;Rừng&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;http://dulich.chudu24.com/tu-khoa-du-lich/vam-sat/huong-dan-du-lich.html&quot; title=&quot;Từ khóa: Vàm Sát&quot;&gt;V&amp;agrave;m S&amp;aacute;t&lt;/a&gt;&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	Ngo&amp;agrave;i bộ sưu tập c&amp;acirc;y&amp;nbsp;rừng&amp;nbsp;ngạp mặn phong ph&amp;uacute;,&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;c&amp;ograve;n c&amp;oacute; hai địa điểm nổi tiếng: Đầm Dơi v&amp;agrave; Tr&amp;agrave;m&amp;nbsp;Chim. Thi&amp;ecirc;n nhi&amp;ecirc;n hoang d&amp;atilde; đ&amp;atilde; tạo cho&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;chỗ nghỉ ch&amp;acirc;n l&amp;yacute; tưởng của lo&amp;agrave;i dơi quạ. Giữa&amp;nbsp;c&amp;aacute;nh đầm lấp xấp chỉ mỗi c&amp;acirc;y đước, dơi quạ c&amp;oacute;&amp;nbsp;c&amp;aacute;nh sải d&amp;agrave;i một m&amp;eacute;t, bay về sống hơn vạn con. Trong r&amp;aacute;ng chiều, dơi t&amp;igrave;m chỗ ngủ lao xao, ph&amp;aacute; tan bầu kh&amp;ocirc;ng kh&amp;iacute; y&amp;ecirc;n tĩnh của&amp;nbsp;c&amp;aacute;nh&amp;nbsp;rừng. Tr&amp;ecirc;n những ngọn c&amp;acirc;y ch&amp;agrave; l&amp;agrave; trong&amp;nbsp;V&amp;agrave;m S&amp;aacute;t,&amp;nbsp;chim, c&amp;ograve; mu&amp;ocirc;n phương hội tụ ng&amp;agrave;y đ&amp;ecirc;m, tạo th&amp;agrave;nh tr&amp;agrave;m&amp;nbsp;chim&amp;nbsp;rộng lớn. Độc đ&amp;aacute;o v&amp;agrave;o m&amp;ugrave;a sinh sản th&amp;aacute;ng tư,&amp;nbsp;chim&amp;nbsp;nước đẻ v&amp;agrave; ấp nở h&amp;agrave;ng chục ng&amp;agrave;n trứng b&amp;eacute; x&amp;iacute;u.&lt;br /&gt;\r\n	Động vật ở&amp;nbsp;V&amp;agrave;m S&amp;aacute;t&amp;nbsp;dần trở n&amp;ecirc;n đ&amp;ocirc;ng đ&amp;uacute;c, những th&amp;uacute; qu&amp;yacute; như heo, m&amp;egrave;o&amp;nbsp;rừng, trăn, kỳ đ&amp;agrave;, s&amp;oacute;c,&amp;nbsp;c&amp;aacute;&amp;nbsp;sấu, khỉ&amp;hellip; g&amp;oacute;p phần l&amp;agrave;m đa dạng th&amp;ecirc;m hệ động thực vật cần bảo tồn nơi đ&amp;acirc;y.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;B&amp;atilde;i&amp;nbsp;biển&amp;nbsp;Cần Giờ&lt;/strong&gt;&lt;br /&gt;\r\n	Một sự ngạc nhi&amp;ecirc;n đầy th&amp;uacute; vị khi bạn đến&amp;nbsp;biển&amp;nbsp;Cần Giờ,&amp;nbsp;biển&amp;nbsp;trong xanh với h&amp;agrave;ng trăm&amp;nbsp;du kh&amp;aacute;ch&amp;nbsp;đang n&amp;ocirc; đ&amp;ugrave;a tr&amp;ecirc;n s&amp;oacute;ng. Những d&amp;atilde;y h&amp;agrave;ng qu&amp;aacute;n được tổ chức ngăn nắp tr&amp;ocirc;ng kh&amp;aacute; lịch sự. Nhiều nh&amp;oacute;m bạn trẻ đang qu&amp;acirc;y quần tr&amp;ecirc;n b&amp;atilde;i&amp;nbsp;c&amp;aacute;t, gần đ&amp;oacute; l&amp;agrave; khoảng 50 em học sinh vừa đổ qu&amp;acirc;n đến rồi cả những nh&amp;oacute;m gia đ&amp;igrave;nh gồm nhiều thế hệ từ &amp;ocirc;ng b&amp;agrave;, cha mẹ đến con&amp;nbsp;c&amp;aacute;i, ch&amp;aacute;u chắt... Tuy nhi&amp;ecirc;n,&amp;nbsp;c&amp;aacute;c bạn n&amp;ecirc;n chuẩn bị thức ăn sẵn v&amp;igrave;&amp;nbsp;c&amp;aacute;c h&amp;agrave;ng qu&amp;aacute;n nơi đ&amp;acirc;y gi&amp;aacute; cả thất thường, dễ &amp;ldquo;ch&amp;eacute;m đẹp&amp;rdquo;&amp;nbsp;du kh&amp;aacute;ch. B&amp;ugrave; lại, kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh, nắng v&amp;agrave;ng trải d&amp;agrave;i tr&amp;ecirc;n b&amp;atilde;i&amp;nbsp;biển&amp;nbsp;thật tuyệt.&lt;br /&gt;\r\n	&lt;table&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;\r\n					&lt;p style=&quot;text-align: center;&quot;&gt;\r\n						&lt;a href=&quot;http://du-lich.chudu24.com/f/d/090217/image005-3.jpg?c=1&amp;amp;w=450&quot; rel=&quot;group1&quot; title=&quot;Biển Cần Giờ&quot;&gt;&lt;img alt=&quot;Biển Cần Giờ&quot; src=&quot;http://du-lich.chudu24.com/f/d/090217/image005-3.jpg?c=1&amp;amp;w=450&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n					&lt;p style=&quot;text-align: center;&quot;&gt;\r\n						Biển&amp;nbsp;Cần Giờ&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;strong&gt;&lt;a href=&quot;http://dulich.chudu24.com/tu-khoa-du-lich/dao-khi-2/huong-dan-du-lich.html&quot; title=&quot;Từ khóa: đảo khỉ&quot;&gt;Đảo Khỉ&lt;/a&gt;&lt;/strong&gt;&lt;br /&gt;\r\n	Đến &amp;ldquo;Đảo Khỉ&amp;rdquo;,&amp;nbsp;du kh&amp;aacute;ch&amp;nbsp;kh&amp;ocirc;ng chỉ tắm m&amp;igrave;nh với sự trong l&amp;agrave;nh, nguy&amp;ecirc;n sinh của thi&amp;ecirc;n nhi&amp;ecirc;n m&amp;agrave; c&amp;ograve;n được nghe những giai thoại về khỉ rất th&amp;uacute; vị. Một ng&amp;agrave;y trung b&amp;igrave;nh phải tốn từ 35 đến 40kg gạo k&amp;egrave;m theo chuối, khoai lang, tr&amp;aacute;i c&amp;acirc;y (t&amp;ugrave;y theo m&amp;ugrave;a) cho khỉ ăn. Từ trước đến giờ chưa ph&amp;aacute;t hiện thấy t&amp;igrave;nh trạng dịch b&amp;ecirc;n ở khỉ m&amp;agrave; thỉnh thoảng xuất hiện một v&amp;agrave;i con thuộc dạng hung dữ chỉ cần một v&amp;agrave;i động t&amp;aacute;c g&amp;acirc;y &amp;ldquo;hiểu lầm&amp;rdquo; của&amp;nbsp;du kh&amp;aacute;ch&amp;nbsp;cũng c&amp;oacute; thể dẫn đến những xung đột ngo&amp;agrave;i &amp;yacute; muốn&amp;hellip;&amp;rdquo;. H&amp;atilde;y đến v&amp;agrave; kh&amp;aacute;m ph&amp;aacute; thế giớ được gọi l&amp;agrave; T&amp;ocirc;n Ngộ Kh&amp;ocirc;ng.&amp;nbsp;&lt;br /&gt;\r\n	&lt;table&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;\r\n					&lt;p style=&quot;text-align: center;&quot;&gt;\r\n						&lt;a href=&quot;http://du-lich.chudu24.com/f/d/090217/image006-2.jpg?c=1&amp;amp;w=450&quot; rel=&quot;group1&quot; title=&quot;Khách tham quan Đảo Khỉ&quot;&gt;&lt;img alt=&quot;Khách tham quan Đảo Khỉ&quot; src=&quot;http://du-lich.chudu24.com/f/d/090217/image006-2.jpg?c=1&amp;amp;w=450&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n					&lt;p style=&quot;text-align: center;&quot;&gt;\r\n						Kh&amp;aacute;ch tham quan&amp;nbsp;Đảo Khỉ&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', 'du-lich-sinh-thai-o-can-gio', '', '', '', '', '', '', 0, 0, 'upload/image006-2.jpg', 0, '', 'Đi đâu ? Chơi gì ?', '', 0, 0, 'active', '', '2013-09-23 15:41:19', 'admin', '2013-09-23 15:57:14');
INSERT INTO `media` VALUES (14, 'default13799258891', '', 'media_blog', '[158]', 'admin', 'Trải nghiệm cảm giác bị vây giữa đàn cá sấu ở Cần Giờ', '', '', 'vn', '&lt;p&gt;\r\n	Những ch&amp;uacute; sấu dữ tợn, d&amp;agrave;i từ 3-4m nằm im l&amp;igrave;m như chẳng quan t&amp;acirc;m đến những động tĩnh chung quanh. Thế nhưng chỉ cần L&amp;ecirc; Huy r&amp;agrave; chiếc cần c&amp;acirc;u mang mồi l&amp;agrave; đ&amp;agrave; theo mặt nước lập tức từ đ&amp;acirc;u cả bầy c&amp;aacute; sấu h&amp;aacute;u đ&amp;oacute;i lao đến v&amp;acirc;y k&amp;iacute;n chiếc xuồng th&amp;eacute;p B40. Nếu c&amp;oacute; cơ hội, bạn h&amp;atilde;y thử cảm gi&amp;aacute;c bị cả đ&amp;agrave;n c&amp;aacute; sấu v&amp;acirc;y quanh như phim h&amp;agrave;nh động. Độ gan dạ của bạn sẽ được thử th&amp;aacute;ch cao độ trong chuyến đi n&amp;agrave;y đấy....&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;C&amp;aacute; sấu&amp;hellip;v&amp;acirc;y thuyền&lt;/strong&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://img2.news.zing.vn/2012/06/12/1-4.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				C&amp;aacute; sấu rừng S&amp;aacute;c ở Cần Giờ được c&amp;aacute;c nh&amp;agrave; khoa học x&amp;aacute;c định l&amp;agrave; c&amp;aacute; sấu hoa c&amp;agrave;, lớn nhất trong lo&amp;agrave;i b&amp;ograve; s&amp;aacute;t với con trưởng th&amp;agrave;nh d&amp;agrave;i từ 6-7m.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Những ch&amp;uacute; sấu dữ tợn, d&amp;agrave;i từ 3-4m nằm im l&amp;igrave;m như chẳng quan t&amp;acirc;m đến những động tĩnh chung quanh. Thế nhưng chỉ cần L&amp;ecirc; Huy r&amp;agrave; chiếc cần c&amp;acirc;u mang mồi l&amp;agrave; đ&amp;agrave; theo mặt nước lập tức từ đ&amp;acirc;u cả bầy c&amp;aacute; sấu h&amp;aacute;u đ&amp;oacute;i lao đến v&amp;acirc;y k&amp;iacute;n chiếc xuồng th&amp;eacute;p B40. Nếu c&amp;oacute; cơ hội, bạn h&amp;atilde;y thử cảm gi&amp;aacute;c bị cả đ&amp;agrave;n c&amp;aacute; sấu v&amp;acirc;y quanh như phim h&amp;agrave;nh động. Độ gan dạ của bạn sẽ được thử th&amp;aacute;ch cao độ trong chuyến đi n&amp;agrave;y đấy.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Đầm Dơi lạ lẫm&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Từ những tường thuật của bộ 3 từ Cần Giờ, xu&amp;ocirc;i d&amp;ograve;ng theo L&amp;acirc;m Vi&amp;ecirc;n V&amp;agrave;m S&amp;aacute;t, c&amp;aacute;c bạn h&amp;atilde;y ngước mắt nh&amp;igrave;n l&amp;ecirc;n để nh&amp;igrave;n thấy cảnh tượng từng bầy dơi m&amp;oacute;c ngược ch&amp;acirc;n say giấc ngủ sau một đ&amp;ecirc;m d&amp;agrave;i săn mồi, c&amp;oacute; khi phải đi xa đến h&amp;agrave;ng trăm c&amp;acirc;y số. Ngọc &amp;Aacute;nh nhắc nhở rằng d&amp;ugrave; bất ngờ đến đ&amp;acirc;u cũng nhớ giữ sự y&amp;ecirc;n tĩnh để bầy dơi y&amp;ecirc;n giấc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;S&amp;acirc;n Chim ấn tượng&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo lời &amp;ldquo;hướng dẫn vi&amp;ecirc;n&amp;rdquo; T&amp;ugrave;ng Leo, s&amp;acirc;n chim l&amp;agrave; nơi cư ngụ của hơn 30 lo&amp;agrave;i với tr&amp;ecirc;n 10.000 c&amp;aacute; thể, trong đ&amp;oacute; c&amp;oacute; nhiều lo&amp;agrave;i chim qu&amp;yacute; như đi&amp;ecirc;n điển, c&amp;ograve; trắng, c&amp;ograve; đen, vạc, cồng cộc, nhạn biển, diệc, le n&amp;acirc;u, b&amp;igrave;m bịp, gi&amp;agrave; đ&amp;atilde;y&amp;hellip; khiến người tham quan cảm thấy choảng ngợp trước cảnh quan thi&amp;ecirc;n nhi&amp;ecirc;n hoang d&amp;atilde;. Đặc biệt, lo&amp;agrave;i Giang Sen qu&amp;yacute; hiếm, nằm trong s&amp;aacute;ch đỏ của Việt Nam v&amp;agrave; thế giới cũng sinh sống tại khu vực n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kh&amp;ocirc;ng chỉ l&amp;agrave; quang cảnh m&amp;agrave; ch&amp;iacute;nh &amp;acirc;m thanh tự nhi&amp;ecirc;n của v&amp;ugrave;ng đất n&amp;agrave;y cũng l&amp;agrave; một điểm nhấn th&amp;uacute; vị. Thay thế sự ồn &amp;atilde; của th&amp;agrave;nh phố bằng &amp;ldquo;kh&amp;uacute;c ca thi&amp;ecirc;n nhi&amp;ecirc;n&amp;rdquo; tiếng chim gọi bầy, c&amp;aacute; t&amp;ocirc;m, c&amp;ocirc;n tr&amp;ugrave;ng&amp;hellip; v&amp;ocirc; c&amp;ugrave;ng vui tai, thư thả.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Đảo Khỉ quen thuộc&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sự dạn dĩ, th&amp;acirc;n quen với con người của những ch&amp;uacute; khỉ sẽ khiến bạn phải bất ngờ, kh&amp;ocirc;ng ngại ng&amp;ugrave;ng nhận thức ăn từ ba VJ, thậm ch&amp;iacute; l&amp;agrave;&amp;hellip; giật lấy kh&amp;ocirc;ng cần xin ph&amp;eacute;p. Khi tham quan khu vực n&amp;agrave;y đừng qu&amp;aacute; mải m&amp;ecirc; v&amp;agrave;o những hoạt động th&amp;uacute; vị của bầy khỉ m&amp;agrave; qu&amp;ecirc;n bảo vệ tư trang của m&amp;igrave;nh nh&amp;eacute;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Thủy hải sản phong ph&amp;uacute;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cần Giờ nổi tiếng c&amp;oacute; nhiều t&amp;ocirc;m, cua, s&amp;ograve; v&amp;agrave; nhiều lo&amp;agrave;i thủy sản c&amp;oacute; gi&amp;aacute; trị kinh tế cao như c&amp;aacute; chẻm, c&amp;aacute; ng&amp;aacute;t, c&amp;aacute; dứa. V&amp;igrave; vậy đến đ&amp;acirc;y&amp;nbsp;L&amp;ecirc; Huy v&amp;agrave; T&amp;ugrave;ng Leo rất h&amp;agrave;o hứng trải nghiệm cảm gi&amp;aacute;c c&amp;acirc;u t&amp;ocirc;m, cua, c&amp;aacute; hấp dẫn lời khuy&amp;ecirc;n từ bộ ba cho kh&amp;aacute;n giả l&amp;agrave;: khi ra về bạn h&amp;atilde;y chắc chắn m&amp;igrave;nh đ&amp;atilde; &amp;ldquo;n&amp;iacute;ch đầy bụng&amp;rdquo; &amp;nbsp;những thủy hải sản ngon l&amp;agrave;nh n&amp;agrave;y đấy.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một điểm tham quan rất th&amp;uacute; vị nữa ch&amp;iacute;nh l&amp;agrave; Vịnh G&amp;agrave;nh R&amp;aacute;i, bạn sẽ được ngồi trong c&amp;ocirc;ng vi&amp;ecirc;n cạnh bờ biển, v&amp;agrave; ph&amp;oacute;ng tầm mắt ra xa sẽ thấy ngay Vũng T&amp;agrave;u, cả những di t&amp;iacute;ch quen thuộc của Vũng T&amp;agrave;u như N&amp;uacute;i Lớn, N&amp;uacute;i Nhỏ v&amp;agrave; tượng Ch&amp;uacute;a giang tay.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Tha hồ ngắm cảnh thi&amp;ecirc;n nhi&amp;ecirc;n&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vinh dự được c&amp;ocirc;ng nhận l&amp;agrave; khu dự trữ sinh quyển của UNESCO từ năm 2001, Cần Giờ đang chuyển m&amp;igrave;nh từng ng&amp;agrave;y với h&amp;agrave;ng loạt resort cao cấp ra đời phục vụ nhu cầu nghỉ dưỡng của kh&amp;aacute;ch du lịch, theo một số thống k&amp;ecirc; ri&amp;ecirc;ng trong năm 2011 lượng kh&amp;aacute;ch du lịch đến Cần Giờ đ&amp;atilde; hơn 450.000 lượt,&amp;nbsp;khu du lịch sinh th&amp;aacute;i Cần Giờ cũng nổi tiếng tr&amp;ecirc;n quốc tế khi 10% trong số đ&amp;oacute; l&amp;agrave; kh&amp;aacute;ch nước ngo&amp;agrave;i.&lt;/p&gt;', 'trai-nghiem-cam-giac-bi-vay-giua-dan-ca-sau-o-can-gio', '', '', '', '', '', '', 0, 0, 'upload/1-4.jpg', 0, '', 'Đi đâu ? Chơi gì ?,', '', 0, 0, 'active', '', '2013-09-23 15:44:49', 'admin', '2013-09-23 15:44:49');
INSERT INTO `media` VALUES (15, 'default13799261661', '', 'media_blog', '[159]', 'admin', 'Khu nghỉ dưỡng cao cấp', '', '', 'vn', '&lt;p&gt;\r\n	Với &amp;aacute;p lực c&amp;ocirc;ng việc v&amp;agrave; lo toan cuộc sống, nhiều người d&amp;acirc;n S&amp;agrave;i G&amp;ograve;n hiện nay đang c&amp;oacute; xu hướng t&amp;igrave;m đến khu nghỉ dưỡng để thư gi&amp;atilde;n v&amp;agrave; nghỉ ngơi v&amp;agrave;o c&amp;aacute;c dịp lễ d&amp;agrave;i ng&amp;agrave;y. Nếu bạn kh&amp;ocirc;ng muốn mất qu&amp;aacute; nhiều thời gian đi lại th&amp;igrave; những khu nghỉ dưỡng ở khu vực Cần Giờ sẽ l&amp;agrave; địa điểm l&amp;yacute; tưởng cho bạn v&amp;agrave; cả gia đ&amp;igrave;nh....&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;H&amp;ograve;n Ngọc Phương Nam Resort&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://proguide.vn/cb/cam-nang-du-lich/nhung-khu-nghi-duong-o-sai-son/&quot;&gt;&lt;img alt=&quot;Hòn Ngọc Phương Nam Resort&quot; src=&quot;http://static.proguide.vn/image/2013/4/4/682_hon-ngoc-phuong-nam-resort1.png&quot; title=&quot;Hòn Ngọc Phương Nam Resort&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	H&amp;ograve;n Ngọc Phương Nam Resort nằm s&amp;aacute;t b&amp;atilde;i biển tuyệt đẹp v&amp;agrave; rừng ngập mặn Cần Giờ, c&amp;aacute;ch S&amp;agrave;i G&amp;ograve;n 65km. Với cơ sở vật chất tiện nghi v&amp;agrave; c&amp;aacute;c dịch vụ như kh&amp;aacute;m ph&amp;aacute; rừng ngập mặn, tham quan Khu sinh th&amp;aacute;i Đầm Dơi v&amp;agrave; Tr&amp;agrave;m Chim, H&amp;ograve;n Ngọc Phương Nam resort sẽ l&amp;agrave; một trong những địa điểm l&amp;yacute; tưởng gi&amp;uacute;p bạn v&amp;agrave; gia đ&amp;igrave;nh tận hưởng kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh, tắm biển, thưởng thức c&amp;aacute;c m&amp;oacute;n hải sản tươi ngon...&lt;/p&gt;\r\n&lt;p&gt;\r\n	Gi&amp;aacute; trung b&amp;igrave;nh: 585.000/đ&amp;ecirc;m&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Cần Giờ Resort&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://proguide.vn/cb/cam-nang-du-lich/nhung-khu-nghi-duong-o-sai-son/&quot;&gt;&lt;img alt=&quot;Cần Giờ Resort&quot; src=&quot;http://static.proguide.vn/image/2013/4/4/682_can-gio-resort.JPG&quot; title=&quot;Cần Giờ Resort&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://proguide.vn/cb/cam-nang-du-lich/nhung-khu-nghi-duong-o-sai-son/&quot;&gt;&lt;img alt=&quot;Cần Giờ Resort&quot; src=&quot;http://static.proguide.vn/image/2013/4/4/682_can-gio-resort1.jpg&quot; title=&quot;Cần Giờ Resort&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đi từ th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh đến Cần Giờ Resort khoảng 50km. Ngo&amp;agrave;i khu nh&amp;agrave; h&amp;agrave;ng, hồ bơi, karaoke, m&amp;aacute;t xa, s&amp;acirc;n tenis, du kh&amp;aacute;ch đến đ&amp;acirc;y c&amp;ograve;n được sinh hoạt ở khu lửa trại tham quan Đảo Khỉ, xem xiếc v&amp;agrave; tham quan bảo t&amp;agrave;ng Cần Giờ với c&amp;aacute;c hiện vật chiến tranh trong hai cuộc kh&amp;aacute;ng chiến chống Ph&amp;aacute;p v&amp;agrave; Mỹ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Gi&amp;aacute; trung b&amp;igrave;nh: 680.000/đ&amp;ecirc;m&lt;/p&gt;', 'khu-nghi-duong-cao-cap', '', '', '', '', '', '', 0, 0, 'upload/682_hon-ngoc-phuong-nam-resort.jpg', 0, '', 'Các khu nghỉ dưỡng cao cấp', '', 0, 0, 'active', '', '2013-09-23 15:49:26', 'admin', '2013-09-23 15:51:22');
INSERT INTO `media` VALUES (16, 'default13799265661', '', 'media_blog', '[158]', 'admin', 'Vang danh lịch sử căn cứ Rừng Sác - Cần Giờ', '', '', 'vn', '&lt;p&gt;\r\n	C&amp;aacute;ch trung t&amp;acirc;m Th&amp;agrave;nh phố gần 60 km, Khu căn cứ Rừng S&amp;aacute;c - Cần Giờ được Unesco c&amp;ocirc;ng nhận l&amp;agrave; Khu dự trữ sinh quyển thế giới năm 2000 bởi những c&amp;aacute;nh rừng nguy&amp;ecirc;n sinh bạt ng&amp;agrave;n, thảm thực vật đa dạng&amp;hellip; Nơi đ&amp;acirc;y, c&amp;ograve;n l&amp;agrave; khu di t&amp;iacute;ch lịch sử, văn h&amp;oacute;a, nghệ thuật ti&amp;ecirc;u biểu của người d&amp;acirc;n th&amp;agrave;nh phố....&lt;/p&gt;', '&lt;p&gt;\r\n	Rừng S&amp;aacute;c - địa danh đ&amp;atilde; ghi nhiều dấu ấn lịch sử trong 2 cuộc kh&amp;aacute;ng chiến chống Ph&amp;aacute;p v&amp;agrave; chống Mỹ. Gần 40 năm sau chiến tranh, chiến khu rừng S&amp;aacute;c đ&amp;atilde; được tạo dựng th&amp;agrave;nh một điểm tham quan hấp dẫn c&amp;oacute; gi&amp;aacute; trị lịch sử v&amp;agrave; gi&amp;aacute;o dục về truyền thống chiến đấu anh dũng của qu&amp;acirc;n d&amp;acirc;n Nam bộ.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Mọi thứ ở đ&amp;acirc;y vẫn c&amp;ograve;n rất nguy&amp;ecirc;n sinh: h&amp;agrave;ng đước, h&amp;agrave;ng dừa nước c&amp;ugrave;ng nhiều loại sinh vật phong ph&amp;uacute;, kh&amp;ocirc;ng gian trong l&amp;agrave;nh, y&amp;ecirc;n tĩnh v&amp;agrave; thanh b&amp;igrave;nh c&amp;ugrave;ng những điều tuyệt vời nhất m&amp;agrave; thi&amp;ecirc;n nhi&amp;ecirc;n ban tặng.&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img src=&quot;http://nld.vcmedia.vn/QDgVqccccccccccccp8ccccccccccc/Image/2013/03/NewFolder2/rungsac01_11f22.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Tr&amp;ecirc;n chiếc ca-n&amp;ocirc; len lỏi v&amp;agrave;o những con rạch nhỏ, du kh&amp;aacute;ch c&amp;oacute; thể nghe những &amp;acirc;m thanh của thi&amp;ecirc;n nhi&amp;ecirc;n, mu&amp;ocirc;n th&amp;uacute;. Dưới t&amp;aacute;n l&amp;aacute; đước, thỉnh thoảng, nhiều ch&amp;uacute; c&amp;aacute; th&amp;ograve;i l&amp;ograve;i lại nhảy vọt tr&amp;ecirc;n mặt nước rồi nhanh như cắt lao trở lại; đ&amp;agrave;n khỉ hoang hơn 1.000 con c&amp;ugrave;ng nhiều lo&amp;agrave;i chim ch&amp;oacute;c, c&amp;oacute; cả những lo&amp;agrave;i c&amp;oacute; t&amp;ecirc;n trong s&amp;aacute;ch đỏ sống tr&amp;ecirc;n Đảo Khỉ&amp;hellip; V&amp;agrave;o rừng s&amp;acirc;u hơn, du kh&amp;aacute;ch sẽ đến với nh&amp;agrave; Bảo t&amp;agrave;ng Cần Giờ, Căn cứ C&amp;aacute;ch mạng Rừng S&amp;aacute;c để thấy hết những chiến c&amp;ocirc;ng vang dội của qu&amp;acirc;n v&amp;agrave; d&amp;acirc;n nơi đ&amp;acirc;y trong lịch sử h&amp;agrave;o h&amp;ugrave;ng của d&amp;acirc;n tộc.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Đ&amp;agrave;i tưởng niệm liệt sĩ rừng S&amp;aacute;c nằm ở trung t&amp;acirc;m khu căn cứ, biểu tượng cho uy danh v&amp;agrave; l&amp;ograve;ng quả cảm của c&amp;aacute;c chiến sĩ đặc c&amp;ocirc;ng rừng S&amp;aacute;c. Trong 9 năm sống v&amp;agrave; chiến đấu tại đ&amp;acirc;y, 860 anh h&amp;ugrave;ng, liệt sĩ đ&amp;atilde; l&amp;agrave;m n&amp;ecirc;n những chiến t&amp;iacute;ch anh h&amp;ugrave;ng v&amp;agrave; ng&amp;atilde; xuống mảnh đất n&amp;agrave;y khi tuổi mới đ&amp;ocirc;i mươi nhưng chỉ một phần ba trong số họ c&amp;oacute; mộ ch&amp;iacute;.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img src=&quot;http://nld.vcmedia.vn/QDgVqccccccccccccp8ccccccccccc/Image/2013/03/NewFolder2/rungsac_52320.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Ấn tượng hơn cả l&amp;agrave; những bức tượng &amp;ldquo;sống&amp;rdquo; về c&amp;aacute;c chiến sĩ đặc c&amp;ocirc;ng rừng S&amp;aacute;c được tạo dựng ở đ&amp;acirc;y. G&amp;oacute;c n&amp;agrave;y l&amp;agrave; cảnh họ đang tr&amp;igrave;nh b&amp;agrave;y phương &amp;aacute;n v&amp;agrave; hạ quyết t&amp;acirc;m tập k&amp;iacute;ch ph&amp;aacute; hủy kho xăng Nh&amp;agrave; B&amp;egrave;; nơi kia một nh&amp;oacute;m chiến sĩ đang chuẩn bị vũ kh&amp;iacute; chiến đấu; một nh&amp;oacute;m chiến sĩ quần nhau với c&amp;aacute; sấu dưới lạch s&amp;acirc;u. Ở b&amp;igrave;a rừng, chỉ huy đang giao nhiệm vụ v&amp;agrave; tiễn đưa c&amp;aacute;c chiến sĩ ra trận. B&amp;ecirc;n bể nước mưa hứng từ ngọn c&amp;acirc;y, o du k&amp;iacute;ch nhỏ đang chưng cất nước ngọt từ nước mặn theo kiểu nấu rượu&amp;hellip;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Ng&amp;agrave;y nay, khi đến tham quan đặc khu rừng S&amp;aacute;c, du kh&amp;aacute;ch th&amp;iacute;ch th&amp;uacute; trải nghiệm cảm gi&amp;aacute;c lội nước trong rừng ngập mặn Cần Giờ như c&amp;aacute;c anh bộ đội đặc c&amp;ocirc;ng hay thưởng thức m&amp;oacute;n gỏi l&amp;aacute; c&amp;aacute;ch, ba kh&amp;iacute;a muối v&amp;agrave; cơm nắm c&amp;aacute; kho - những m&amp;oacute;n ăn thường ng&amp;agrave;y của bộ đội đặc c&amp;ocirc;ng; nướng khoai giữa rừng S&amp;aacute;c&amp;hellip;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Năm 2012, Căn cứ Rừng S&amp;aacute;c - Cần Giờ được b&amp;igrave;nh chọn l&amp;agrave; 1 trong 5 Di t&amp;iacute;ch lịch sử, văn h&amp;oacute;a, nghệ thuật ti&amp;ecirc;u biểu của chương tr&amp;igrave;nh &amp;ldquo;TP.Hồ Ch&amp;iacute; Minh - 100 điều th&amp;uacute; vị&amp;rdquo; v&amp;agrave; nơi đ&amp;acirc;y dần trở th&amp;agrave;nh điểm vui chơi cuối tuần, t&amp;igrave;m hiểu văn h&amp;oacute;a - lịch sử.&amp;nbsp;&lt;/p&gt;', 'vang-danh-lich-su-can-cu-rung-sac-can-gio', '', '', '', '', '', '', 0, 0, 'upload/rungsac01_11f22.jpg', 0, '', 'Đi đâu ? Chơi gì ?,', '', 0, 0, 'active', '', '2013-09-23 15:56:06', 'admin', '2013-09-23 15:56:06');
INSERT INTO `media` VALUES (17, 'default13807699321', '', 'media_blog', '[168]', 'admin', 'Một số bệnh thường gặp và cách phòng bệnh', '', '', 'vn', '&lt;p&gt;\r\n	Khi đ&amp;atilde; đến tuổi tứ ngũ lục tuần, ta bắt đầu thấy r&amp;otilde; những thay đổi của cơ thể đ&amp;atilde; t&amp;iacute;ch luỹ qua nhiều năm th&amp;aacute;ng. Nếu mấy chục năm qua, bạn &amp;iacute;t quan t&amp;acirc;m đến sức khoẻ, uống rượu bia nhiều, h&amp;uacute;t thuốc l&amp;aacute;, tinh thần căng thẳng... th&amp;igrave; bạn dễ mắc một số bệnh. Sau đ&amp;acirc;y l&amp;agrave; v&amp;agrave;i bệnh thường gặp ở tuổi n&amp;agrave;y v&amp;agrave; c&amp;aacute;ch ph&amp;ograve;ng ngừa, đối ph&amp;oacute;...&lt;/p&gt;', '&lt;ul type=&quot;disc&quot;&gt;\r\n	&lt;li&gt;\r\n		C&amp;aacute;c bệnh tim mạch&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Cả phụ nữ v&amp;agrave; nam giới đều dễ mắc bệnh tim mạch. L&amp;yacute; do l&amp;agrave; v&amp;igrave; cholesterol (th&amp;agrave;nh phần quan trọng của chất b&amp;eacute;o) v&amp;agrave; những chất mỡ tr&amp;ocirc;i nổi kh&amp;aacute;c đ&amp;oacute;ng v&amp;agrave;o th&amp;agrave;nh mạch m&amp;aacute;u, l&amp;agrave;m cho mạch m&amp;aacute;u bị hẹp lại, m&amp;aacute;u kh&amp;oacute; đi từ tim đến c&amp;aacute;c cơ quan của cơ thể v&amp;agrave; kh&amp;oacute; trở về tim, do đ&amp;oacute; &amp;aacute;p lực đối với tim mạch rất lớn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c bệnh tim mạch cần được ph&amp;ograve;ng ngừa từ khi c&amp;ograve;n trẻ. Quan trọng nhất l&amp;agrave; c&amp;oacute; một chế độ ăn uống &amp;iacute;t cholesterol (nhiều rau, quả, &amp;iacute;t thịt mỡ) v&amp;agrave; loại bỏ kh&amp;oacute;i thuốc l&amp;aacute; - yếu tố l&amp;agrave;m tăng nguy cơ ph&amp;aacute;t bệnh gấp ba lần. Bạn h&amp;atilde;y năng vận động cơ thể, tập thể dục thể thao, h&amp;atilde;y tạo cho m&amp;igrave;nh một cuộc sống tinh thần vui vẻ, sảng kho&amp;aacute;i, giảm sự căng thẳng, t&amp;acirc;m trạng u sầu.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nếu bị bệnh, bạn h&amp;atilde;y nhanh ch&amp;oacute;ng thay đổi cuộc sống của m&amp;igrave;nh theo c&amp;aacute;ch m&amp;ocirc; tả ở tr&amp;ecirc;n. Ngo&amp;agrave;i ra, nếu l&amp;agrave; phụ nữ m&amp;atilde;n kinh, bạn c&amp;oacute; thể c&amp;ugrave;ng b&amp;aacute;c sĩ c&amp;acirc;n nhắc việc sử dụng một liều lượng nhỏ oestrogen để điều chỉnh cholesterol trong m&amp;aacute;u.&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n	&lt;li&gt;\r\n		Bệnh lo&amp;atilde;ng xương&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Lo&amp;atilde;ng xương l&amp;agrave; t&amp;igrave;nh trạng chậm t&amp;aacute;i tạo tế b&amp;agrave;o xương thay thế, khiến xương xốp, gi&amp;ograve;n, k&amp;eacute;m mềm dẻo, dễ gẫy v&amp;agrave; đ&amp;atilde; gẫy th&amp;igrave; l&amp;acirc;u l&amp;agrave;nh. Bệnh lo&amp;atilde;ng xương thường gặp ở người cao tuổi. Phụ nữ bị lo&amp;atilde;ng xương nhiều hơn v&amp;agrave; sớm hơn nam giới v&amp;igrave; khi m&amp;atilde;n kinh, lượng oestrogen (ho&amp;oacute;c m&amp;ocirc;n tham gia v&amp;agrave;o việc t&amp;aacute;i tạo xương) tụt xuống.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Muốn tr&amp;aacute;nh bệnh lo&amp;atilde;ng xương, bạn h&amp;atilde;y năng vận động cơ thể một c&amp;aacute;ch điều độ, đi bộ, tập thể dục... để tăng cường sức bền cho xương. Bạn n&amp;ecirc;n ăn th&amp;ecirc;m nhiều chất xương, sữa chua, đậu phụ, rau xanh, đồng thời tr&amp;aacute;nh rượu v&amp;agrave; thuốc l&amp;aacute; - hai yếu tố ảnh hưởng kh&amp;ocirc;ng tốt đến việc tạo xương. Ngo&amp;agrave;i ra, kh&amp;ocirc;ng n&amp;ecirc;n chờ đến tuổi trung ni&amp;ecirc;n m&amp;agrave; cần phải quan t&amp;acirc;m chăm s&amp;oacute;c r&amp;egrave;n luyện xương từ khi trẻ.&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n	&lt;li&gt;\r\n		Bệnh phụ khoa&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sau khi m&amp;atilde;n kinh, một số phụ nữ dễ bị nhiễm khuẩn &amp;acirc;m đạo v&amp;igrave; &amp;acirc;m đạo kh&amp;ocirc; hơn trước v&amp;agrave; ni&amp;ecirc;m mạc &amp;acirc;m đạo mỏng hơn. C&amp;aacute;ch ph&amp;ograve;ng ngừa l&amp;agrave; mặc quần l&amp;oacute;t cotton để thấm ẩm, lu&amp;ocirc;n giữ cho cơ quan sinh dục tho&amp;aacute;ng kh&amp;iacute;. Bạn n&amp;ecirc;n giữ vệ sinh sạch sẽ nhưng đừng rửa b&amp;ecirc;n trong &amp;acirc;m đạo kẻo l&amp;agrave;m tăng nguy cơ vi&amp;ecirc;m nhiễm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cũng sau khi m&amp;atilde;n kinh, một số phụ nữ bị nhiễm khuẩn đường tiết niệu v&amp;igrave; c&amp;aacute;c m&amp;ocirc; b&amp;agrave;ng quang v&amp;agrave; ống dẫn nước tiểu mỏng đi. Để tr&amp;aacute;nh bệnh n&amp;agrave;y, bạn h&amp;atilde;y uống thật nhiều nước, đi tiểu thường xuy&amp;ecirc;n (tr&amp;aacute;nh giữ nước tiểu trong b&amp;agrave;ng quang qu&amp;aacute; l&amp;acirc;u), đi tiểu trước v&amp;agrave; sau mỗi lần sinh hoạt t&amp;igrave;nh dục.&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n	&lt;li&gt;\r\n		Ung thư&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Nguy cơ ung thư ở tuổi trung ni&amp;ecirc;n rất cao do c&amp;aacute;c tế b&amp;agrave;o của cơ thể đ&amp;atilde; trải qua nhiều năm tiếp x&amp;uacute;c với c&amp;aacute;c chất g&amp;acirc;y ung thư như kh&amp;oacute;i thuốc l&amp;aacute;, ho&amp;aacute; chất độc hại, tia ph&amp;oacute;ng xạ, amiăng... Những t&amp;aacute;c nh&amp;acirc;n g&amp;acirc;y bệnh n&amp;agrave;y biến c&amp;aacute;c tế b&amp;agrave;o th&amp;agrave;nh tế b&amp;agrave;o ung thư. C&amp;aacute;c tế b&amp;agrave;o ung thư xuất hiện từ khi trẻ, đến l&amp;uacute;c n&amp;agrave;y đ&amp;atilde; kịp ph&amp;acirc;n chia để tạo th&amp;agrave;nh một khối u đ&amp;aacute;ng ngại.&lt;/p&gt;', 'cac-benh-thuong-gap-va-cach-phong-benh', '', '', '', '', '', '', 0, 0, '', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-03 10:12:12', 'admin', '2013-10-03 10:12:12');
INSERT INTO `media` VALUES (18, 'default13807726921', '', 'media_blog', '[169]', 'admin', 'Mầm hoạ sán nhái trong đặc sản đồng quê', '', '', 'vn', '&lt;p&gt;\r\n	Hiện nay, nhiều m&amp;oacute;n ăn được chế biến từ đặc sản đồng qu&amp;ecirc;: ếch, nh&amp;aacute;i, rắn, chim... Nếu chế biến kh&amp;ocirc;ng cẩn thận, thịt chưa được nấu ch&amp;iacute;n kỹ th&amp;igrave; ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i k&amp;yacute; sinh ở những con vật n&amp;agrave;y c&amp;oacute; thể x&amp;acirc;m nhập cơ thể v&amp;agrave; g&amp;acirc;y bệnh....&lt;/p&gt;', '&lt;div&gt;\r\n	Trước đ&amp;acirc;y, Việt Nam chỉ ghi nhận bệnh nh&amp;acirc;n bị s&amp;aacute;n nh&amp;aacute;i k&amp;yacute; sinh ở mắt, nhưng gần đ&amp;acirc;y đ&amp;atilde; ghi nhận những trường hợp bị s&amp;aacute;n nh&amp;aacute;i chui v&amp;agrave;o phổi v&amp;agrave; th&amp;agrave;nh bụng m&amp;agrave; kh&amp;ocirc;ng r&amp;otilde; nguy&amp;ecirc;n nh&amp;acirc;n.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot; Mầm hoạ sán nhái trong đặc sản đồng quê1&quot; src=&quot;http://img.dinhduong.com.vn/Upload/images/hanh/T10/mam-hoa-san-nhai-trong-dac-san-dong-que1.jpg&quot; /&gt;&lt;br /&gt;\r\n	Thịt ếch nấu ch&amp;iacute;n kỹ mới n&amp;ecirc;n ăn. Ảnh: Saphia Thu&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;br /&gt;\r\n	Mở l&amp;ograve;ng đ&amp;oacute;n tr&amp;ugrave;ng k&amp;yacute; gửi&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Bệnh ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i thường gặp ở ch&amp;acirc;u &amp;Aacute; v&amp;agrave; một số nước ch&amp;acirc;u &amp;Acirc;u c&amp;oacute; nhập khẩu thịt ếch, nh&amp;aacute;i, rắn, chim&amp;hellip; S&amp;aacute;n nh&amp;aacute;i thường g&amp;acirc;y bệnh cho người ở giai đoạn ấu tr&amp;ugrave;ng. Ấu tr&amp;ugrave;ng c&amp;oacute; dạng h&amp;igrave;nh s&amp;acirc;u c&amp;oacute; t&amp;ecirc;n Sparganum, bệnh g&amp;acirc;y n&amp;ecirc;n gọi l&amp;agrave; Sparganose.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	S&amp;aacute;n nh&amp;aacute;i đẻ trứng dưới nước, trứng bị những lo&amp;agrave;i ph&amp;ugrave; du, gi&amp;aacute;p x&amp;aacute;c ăn, đ&amp;oacute; l&amp;agrave; vật chủ phụ thứ nhất của s&amp;aacute;n. Sau đ&amp;oacute; lo&amp;agrave;i ph&amp;ugrave; du, gi&amp;aacute;p x&amp;aacute;c n&amp;agrave;y bị ếch, nh&amp;aacute;i, rắn hoặc chim ăn &amp;ndash; những lo&amp;agrave;i n&amp;agrave;y trở th&amp;agrave;nh vật chủ phụ thứ hai. Khi k&amp;yacute; sinh ở vật chủ phụ, ấu tr&amp;ugrave;ng ở dạng s&amp;acirc;u (plerocercoid) d&amp;agrave;i v&amp;agrave;i centimet, m&amp;agrave;u trắng ng&amp;agrave;, kh&amp;ocirc;ng chia đốt, kh&amp;ocirc;ng c&amp;oacute; đầu (scolex) ở ph&amp;iacute;a trước, chỉ c&amp;oacute; ống gi&amp;aacute;c giả. Con người c&amp;oacute; thể trở th&amp;agrave;nh vật chủ phụ thứ hai trong c&amp;aacute;c trường hợp uống nước chưa đun c&amp;oacute; chứa những lo&amp;agrave;i ph&amp;ugrave; du, gi&amp;aacute;p x&amp;aacute;c đ&amp;atilde; nhiễm s&amp;aacute;n; ăn thịt ếch, nh&amp;aacute;i, rắn, chim... sống hoặc chưa nấu kỹ; từ đ&amp;acirc;y ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i đột nhập v&amp;agrave;o ống ti&amp;ecirc;u ho&amp;aacute;, chui v&amp;agrave;o th&amp;agrave;nh dạ d&amp;agrave;y, ruột v&amp;agrave; tạo th&amp;agrave;nh u ở đ&amp;oacute;. Ngo&amp;agrave;i ra, ở th&amp;ocirc;n qu&amp;ecirc; người d&amp;acirc;n c&amp;ograve;n quan niệm đau mắt đỏ l&amp;agrave; do &amp;ldquo;bốc hoả&amp;rdquo;, d&amp;ugrave;ng thịt ếch nh&amp;aacute;i sống l&amp;agrave; chất m&amp;aacute;t, lạnh đắp v&amp;agrave;o mắt để &amp;ldquo;hạ hoả&amp;rdquo; đ&amp;atilde; tạo điều kiện thuận lợi cho ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i x&amp;acirc;m nhập v&amp;agrave;o da, mắt g&amp;acirc;y u ở mắt, bệnh nh&amp;acirc;n c&amp;oacute; thể bị m&amp;ugrave;. Một số trường hợp kh&amp;aacute;c &amp;iacute;t gặp hơn l&amp;agrave; nhiễm ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i do rửa mặt bằng nguồn nước c&amp;oacute; lo&amp;agrave;i ph&amp;ugrave; du, gi&amp;aacute;p x&amp;aacute;c bị nhiễm ấu tr&amp;ugrave;ng.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Khi người l&amp;agrave; vật chủ phụ thứ hai của ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i, triệu chứng bệnh sẽ phụ thuộc nơi ấu tr&amp;ugrave;ng c&amp;oacute; dạng h&amp;igrave;nh s&amp;acirc;u k&amp;yacute; sinh. Nếu k&amp;yacute; sinh ở mắt sẽ g&amp;acirc;y đau, chảy nhiều nước mắt, vi&amp;ecirc;m sưng m&amp;agrave;ng tiếp hợp, mi, m&amp;iacute; mắt... Nếu k&amp;yacute; sinh ở da th&amp;igrave; g&amp;acirc;y ngứa, nổi mẩn, th&amp;acirc;m nhiễm, đ&amp;ocirc;i khi người bệnh c&amp;oacute; cảm gi&amp;aacute;c ấu tr&amp;ugrave;ng đang di chuyển. Một số trường hợp đ&amp;atilde; ph&amp;aacute;t hiện ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i dạng s&amp;acirc;u ở v&amp;ugrave;ng m&amp;agrave;ng ruột, thận, b&amp;agrave;ng quang, phổi, xoang ngực, tim v&amp;agrave; m&amp;ocirc; n&amp;atilde;o. Khi ấu tr&amp;ugrave;ng s&amp;aacute;n nh&amp;aacute;i x&amp;acirc;m nhập s&amp;acirc;u v&amp;agrave;o trong nội tạng th&amp;igrave; bệnh sẽ rất nặng.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Nhớ đừng &amp;ldquo;ăn tươi nuốt sống&amp;rdquo;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Tr&amp;ecirc;n l&amp;acirc;m s&amp;agrave;ng, c&amp;aacute;ch x&amp;aacute;c định bệnh chắc chắn nhất l&amp;agrave; phẫu thuật ph&amp;aacute;t hiện v&amp;agrave; lấy được ấu tr&amp;ugrave;ng. Điều trị bệnh cũng bằng phẫu thuật để b&amp;oacute;c t&amp;aacute;ch, loại bỏ ấu tr&amp;ugrave;ng. Nếu kh&amp;ocirc;ng mổ được th&amp;igrave; d&amp;ugrave;ng thuốc novarsenol 0,3 &amp;ndash; 0,4g/kg c&amp;acirc;n nặng/ng&amp;agrave;y, điều trị trong 4 &amp;ndash; 5 ng&amp;agrave;y. Thuốc praziquantel v&amp;agrave; mebendazole kh&amp;ocirc;ng c&amp;oacute; t&amp;aacute;c dụng diệt ấu tr&amp;ugrave;ng của k&amp;yacute; sinh tr&amp;ugrave;ng.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Để ph&amp;ograve;ng bệnh, cần tuy&amp;ecirc;n truyền vận động người d&amp;acirc;n kh&amp;ocirc;ng uống nước chưa đun s&amp;ocirc;i, kh&amp;ocirc;ng ăn c&amp;aacute;c loại thịt ếch, nh&amp;aacute;i, rắn, chim... chưa nấu kỹ. V&amp;ugrave;ng n&amp;ocirc;ng th&amp;ocirc;n cần bỏ tập qu&amp;aacute;n d&amp;ugrave;ng thịt ếch, nh&amp;aacute;i sống đắp v&amp;agrave;o mắt để chữa bệnh mắt đỏ. Ngo&amp;agrave;i ra, chỉ sử dụng nguồn nước hợp vệ sinh trong sinh hoạt h&amp;agrave;ng ng&amp;agrave;y. Khi v&amp;agrave;o qu&amp;aacute;n ăn, nh&amp;agrave; h&amp;agrave;ng, cần thận trọng khi gọi thức ăn được chế biến từ thịt ếch, nh&amp;aacute;i, rắn, chim... kh&amp;ocirc;ng ăn nếu thấy chưa nấu ch&amp;iacute;n kỹ.&lt;/div&gt;', 'Mam-hoa-san-nhai-trong-dac-san-dong-que', '', '', '', '', '', '', 0, 0, '', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-03 10:58:12', 'admin', '2013-10-03 10:58:12');
INSERT INTO `media` VALUES (19, 'default13807886371', '', 'media_faq', '[172]', 'admin', 'Tôi đi thử máu có kết quả dương tính HBsAg, vậy là có bị gì không?', '', '', 'vn', '&lt;p&gt;\r\n	HBsAg l&amp;agrave; kh&amp;aacute;ng nguy&amp;ecirc;n bề mặt của virus vi&amp;ecirc;m gan B. Một người thử m&amp;aacute;u thấy HBsAg dương t&amp;iacute;nh tức l&amp;agrave; người đ&amp;oacute; đang bị nhiễm virus vi&amp;ecirc;m gan B&lt;/p&gt;', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-10-03 15:23:57', 'admin', '2013-10-03 15:24:42');
INSERT INTO `media` VALUES (20, 'default13807887601', '', 'media_faq', '[172]', 'admin', 'Tôi biết được là hiện nay có nhiều nơi làm xét nghiệm phát hiện và định lượng HBV-DNA nhưng kết quả có khi lại khác nhau dù thử trên cùng một bệnh nhân!! Do vậy làm thế nào để tin tưởng được một kết quả xét nghiệm HBV-DNA vì đây là một xét nghiệm mà chi phí bệnh nhân phải trả cũng không phải là ít?', '', '', 'vn', '&lt;p&gt;\r\n	Đ&amp;uacute;ng l&amp;agrave; như vậy. X&amp;eacute;t nghiệm HBV-DNA l&amp;agrave; x&amp;eacute;t nghiệm dựa tr&amp;ecirc;n kỹ thuật PCR l&amp;agrave; một kỹ thuật ho&amp;agrave;n to&amp;agrave;n mở n&amp;ecirc;n người l&amp;agrave;m x&amp;eacute;t nghiệm c&amp;oacute; thể tự pha thuốc thử để l&amp;agrave;m x&amp;eacute;t nghiệm m&amp;agrave; kh&amp;ocirc;ng phải bị lệ thuộc v&amp;agrave; c&amp;aacute;c kit x&amp;eacute;t nghiệm mua từ c&amp;aacute;c h&amp;atilde;ng nước ngo&amp;agrave;i rất đắt tiền. Tuy nhi&amp;ecirc;n v&amp;igrave; l&amp;agrave; hệ thống mở n&amp;ecirc;n muốn kết quả x&amp;eacute;t nghiệm được ch&amp;iacute;nh x&amp;aacute;c th&amp;igrave; người l&amp;agrave;m x&amp;eacute;t nghiệm phải thực hiện đủ c&amp;aacute;c chứng để kiểm so&amp;aacute;t kh&amp;ocirc;ng cho c&amp;aacute;c sơ s&amp;oacute;t x&amp;atilde;y ra trong qu&amp;aacute; tr&amp;igrave;nh l&amp;agrave;m x&amp;eacute;t nghiệm v&amp;agrave; c&amp;aacute;c chứng n&amp;agrave;y phải hiển thị tr&amp;ecirc;n kết quả x&amp;eacute;t nghiệm. Với một x&amp;eacute;t nghiệm ph&amp;aacute;t hiện HBV-DNA, kết quả phải hiển thị: (1) một chứng dương để chứng minh kh&amp;acirc;u khuếch đại trong qu&amp;aacute; tr&amp;igrave;nh x&amp;eacute;t nghiệm đủ nhạy cảm, (2) một chứng &amp;acirc;m để chứng minh qu&amp;aacute; tr&amp;igrave;nh thao t&amp;aacute;c x&amp;eacute;t nghiệm kh&amp;ocirc;ng bị ngoại nhiễm g&amp;acirc;y ra kết quả dương t&amp;iacute;nh giả, (3) một chứng nội tại trong chứng &amp;acirc;m để chứng minh kh&amp;acirc;u t&amp;aacute;ch chiết DNA từ mẫu thử đạt độ nhạy, (4) v&amp;agrave; đồng thời mẫu &amp;acirc;m t&amp;iacute;nh phải c&amp;oacute; ch&amp;uacute;ng nội tại để chứng minh &amp;acirc;m t&amp;iacute;nh l&amp;agrave; thật sự &amp;acirc;m t&amp;iacute;nh chứ kh&amp;ocirc;ng phải l&amp;agrave; &amp;acirc;m t&amp;iacute;nh giả.&amp;nbsp; Đối với x&amp;eacute;t nghiệm định lượng HBV-DNA th&amp;igrave; trong kết quả phải hiển thị được đường biểu diển chuẩn để chứng minh thao t&amp;aacute;c định lượng đạt chuẩn th&amp;ocirc;ng qua hệ số tương quan (R) của c&amp;aacute;c mẫu chuẩn phải đạt tr&amp;ecirc;n 0.990 v&amp;agrave; hiệu quả phản ứng (E) phải đạt 90-105%&amp;nbsp; v&amp;agrave; đồng thời chứng minh kết quả định lượng l&amp;agrave; được t&amp;iacute;nh to&amp;aacute;n từ kết quả của c&amp;aacute;c mẫu chuẩn được chạy song h&amp;agrave;nh c&amp;ugrave;ng với mẫu thử chứ kh&amp;ocirc;ng phải l&amp;agrave; được t&amp;iacute;nh to&amp;aacute;n từ một c&amp;ocirc;ng thức c&amp;oacute; sẵn. Ngo&amp;agrave;i ra, nếu muốn kết luận một kết quả &amp;acirc;m t&amp;iacute;nh th&amp;igrave; trong kết quả định lượng phải hiển thị được mẫu đ&amp;oacute; dương t&amp;iacute;nh được với chứng nội tại để đảm bảo &amp;acirc;m t&amp;iacute;nh n&amp;agrave;y l&amp;agrave; &amp;acirc;m t&amp;iacute;nh thật sự chứ kh&amp;ocirc;ng phải &amp;acirc;m t&amp;iacute;nh giả v&amp;igrave; phản ứng khuếch đại bị ức chế.&lt;/p&gt;', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-10-03 15:26:00', 'admin', '2013-10-03 15:26:53');
INSERT INTO `media` VALUES (21, 'default13807888511', '', 'media_faq', '[172]', 'admin', 'Virus cúm A (H7N9) là gì?', '', '', 'vn', '&lt;p&gt;\r\n	Virus c&amp;uacute;m gia cầm A H7 l&amp;agrave; một nh&amp;oacute;m virus c&amp;uacute;m thường lưu h&amp;agrave;nh ở chim. Virus c&amp;uacute;m gia cầm A(H7N9) l&amp;agrave; một ph&amp;acirc;n nh&amp;oacute;m của nh&amp;oacute;m virus H7. Mặc d&amp;ugrave; một số loại virus H7 (H7N2, H7N3 v&amp;agrave; H7N7) đ&amp;atilde; từng đ&amp;ocirc;i khi g&amp;acirc;y bệnh ở người, song chưa c&amp;oacute; trường hợp nhiễm virus H7N9 ở người n&amp;agrave;o được ghi nhận cho tới khi c&amp;oacute; những b&amp;aacute;o c&amp;aacute;o gần đ&amp;acirc;y từ Trung Quốc.&lt;/p&gt;', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-10-03 15:27:31', 'admin', '2013-10-03 15:27:31');
INSERT INTO `media` VALUES (22, 'default13807947331', '', 'media_news', '[176]', 'admin', 'Những điều chưa biết về cơ thể người', '', '', 'vn', '&lt;p&gt;\r\n	Cơ thể con người l&amp;agrave; một trong những bộ m&amp;aacute;y kỳ diệu nhất. Cứ thử tưởng tượng quả tim của ch&amp;uacute;ng ta phải l&amp;agrave;m việc suốt 70-80 năm trời kh&amp;ocirc;ng một gi&amp;acirc;y ph&amp;uacute;t ngừng nghỉ, th&amp;igrave; mới thấy được hết sự kỳ diệu đ&amp;oacute;. Tuy mang tiếng l&amp;agrave; chủ sở hữu, nhưng kh&amp;ocirc;ng mấy ai trong ch&amp;uacute;ng ta hiểu hết những g&amp;igrave; xảy ra trong cơ thể m&amp;igrave;nh.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;- Trong suốt một đời người, quả tim đập 3 tỷ lần v&amp;agrave; bơm 48 triệu gallon m&amp;aacute;u.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Mỗi ng&amp;agrave;y, m&amp;aacute;u thực hiện một cuộc h&amp;agrave;nh tr&amp;igrave;nh d&amp;agrave;i 96.540 km trong cơ thể ch&amp;uacute;ng ta.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Bộ n&amp;atilde;o trung b&amp;igrave;nh của một người c&amp;oacute; 100 tỷ tế b&amp;agrave;o thần kinh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- C&amp;aacute;c xung động thần kinh truyền đến n&amp;atilde;o v&amp;agrave; từ n&amp;atilde;o truyền đi với vận tốc 274 km/giờ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Kh&amp;ocirc;ng bao giờ bạn c&amp;oacute; thể hắt hơi m&amp;agrave; kh&amp;ocirc;ng phải nhắm mắt.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Khi bạn hắt hơi, mọi chức năng của cơ thể đều ngưng hoạt động, kể cả tr&amp;aacute;i tim.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Dạ d&amp;agrave;y của bạn cần phải tạo ra một lớp m&amp;agrave;ng nh&amp;agrave;y mới cứ sau hai tuần lễ, nếu kh&amp;ocirc;ng, n&amp;oacute; sẽ tự &amp;quot;ti&amp;ecirc;u ho&amp;aacute;&amp;quot; n&amp;oacute;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Cần c&amp;oacute; sự tương t&amp;aacute;c của 72 cơ bắp kh&amp;aacute;c nhau để tạo n&amp;ecirc;n tiếng n&amp;oacute;i của ch&amp;uacute;ng ta.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Tuổi thọ trung b&amp;igrave;nh của mỗi chiếc gai lưỡi l&amp;agrave; 10 ng&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Tiếng ho văng ra khỏi miệng ch&amp;uacute;ng ta với vận tốc 96 km/giờ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Đứa trẻ sinh ra kh&amp;ocirc;ng c&amp;oacute; xương b&amp;aacute;nh ch&amp;egrave;. Phải chờ khi ch&amp;uacute;ng được từ 2 đến 6 tuần tuổi th&amp;igrave; bộ phận n&amp;agrave;y mới xuất hiện.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Ch&amp;uacute;ng ta sinh ra với 300 kh&amp;uacute;c xương, khi trưởng th&amp;agrave;nh, chỉ c&amp;ograve;n 206 xương.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Đứa trẻ lớn nhanh hơn cả v&amp;agrave;o m&amp;ugrave;a xu&amp;acirc;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Trong suốt một đời người, phụ nữ chớp mắt nhiều gần gấp 2 lần đ&amp;agrave;n &amp;ocirc;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Một người nh&amp;aacute;y mắt trung b&amp;igrave;nh 6.205.000 lần mỗi năm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Người c&amp;ograve;n một mắt chỉ bị mất khoảng 1,5 thị lực, nhưng mất to&amp;agrave;n bộ cảm gi&amp;aacute;c về chiều s&amp;acirc;u.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Từ l&amp;uacute;c sinh ra cho đến khi trưởng th&amp;agrave;nh, mắt của ch&amp;uacute;ng ta vẫn kh&amp;ocirc;ng thay đổi, trong khi đ&amp;oacute;, tai v&amp;agrave; mũi kh&amp;ocirc;ng ngừng ph&amp;aacute;t triển cho đến l&amp;uacute;c cuối đời.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Trung b&amp;igrave;nh một đời người, ch&amp;uacute;ng ta đi bộ tr&amp;ecirc;n một qu&amp;atilde;ng đường d&amp;agrave;i bằng 5 lần đường x&amp;iacute;ch đạo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Da đầu một người trung b&amp;igrave;nh chứa 100.000 sợi t&amp;oacute;c.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Hộp sọ con người được cấu tạo bởi 29 xương kh&amp;aacute;c nhau.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Tốc độ mọc d&amp;agrave;i ra của m&amp;oacute;ng tay tương ứng với chiều d&amp;agrave;i ng&amp;oacute;n tay. M&amp;oacute;ng tay của ng&amp;oacute;n giữa mọc nhanh nhất. M&amp;oacute;ng tay mọc nhanh gấp đ&amp;ocirc;i m&amp;oacute;ng ch&amp;acirc;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- T&amp;oacute;c v&amp;agrave; m&amp;oacute;ng tay c&amp;oacute; c&amp;ugrave;ng một chất liệu cấu tạo như nhau.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Khi con người chết đi, cơ thể kh&amp;ocirc; lại, tạo ra ảo gi&amp;aacute;c l&amp;agrave; m&amp;oacute;ng tay v&amp;agrave; t&amp;oacute;c c&amp;ograve;n tiếp tục mọc th&amp;ecirc;m sau khi chết.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Diện t&amp;iacute;ch bề mặt của ruột l&amp;agrave; 200 m2.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Diện t&amp;iacute;ch bề mặt của da người l&amp;agrave; 2 m2.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Một người trung b&amp;igrave;nh bị tr&amp;oacute;c đi hơn 18 kg da trong một đời người.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Cứ mỗi gi&amp;acirc;y qua đi, c&amp;oacute; 15 triệu tế b&amp;agrave;o m&amp;aacute;u bị ti&amp;ecirc;u huỷ trong cơ thể.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Mỗi năm qua đi, c&amp;oacute; khoảng 98% nguy&amp;ecirc;n tử trong cơ thể bị thay thế.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Quả tim con người tạo ra một &amp;aacute;p suất đủ để đẩy m&amp;aacute;u đi xa 9 m.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Xương đ&amp;ugrave;i của con người cứng hơn b&amp;ecirc; t&amp;ocirc;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Dưới lớp da mỗi người c&amp;oacute; 72 km d&amp;acirc;y thần kinh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Mỗi 2,5 cm2 da người chứa 6 m mạch m&amp;aacute;u.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Cứ mỗi 24 giờ, một người trung b&amp;igrave;nh thở 23.040 lần.&lt;/p&gt;', 'nhung-dieu-chua-biet-ve-co-the-nguoi', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 7, 0, 'active', '', '2013-10-03 17:05:33', 'admin', '2013-10-03 17:05:33');
INSERT INTO `media` VALUES (23, 'default13807948391', '', 'media_news', '[176]', 'admin', 'Những điều bạn chưa biết về bệnh cao huyết áp', '', '', 'vn', '&lt;p&gt;\r\n	Huyết &amp;aacute;p tăng dần theo tuổi, v&amp;igrave; vậy người gi&amp;agrave; c&amp;oacute; nguy cơ bị cao huyết &amp;aacute;p cao hơn hẳn so với c&amp;aacute;c lứa tuổi kh&amp;aacute;c. Trung b&amp;igrave;nh cứ tăng 10 tuổi th&amp;igrave; tỉ lệ bị cao huyết &amp;aacute;p tăng th&amp;ecirc;m 5%, cứ 10 người tr&amp;ecirc;n 60 tuổi th&amp;igrave; c&amp;oacute; 5 người bị cao huyết &amp;aacute;p...&lt;/p&gt;', '&lt;p&gt;\r\n	Huyết &amp;aacute;p tăng dần theo tuổi, v&amp;igrave; vậy người gi&amp;agrave; c&amp;oacute; nguy cơ bị cao huyết &amp;aacute;p cao hơn hẳn so với c&amp;aacute;c lứa tuổi kh&amp;aacute;c. Trung b&amp;igrave;nh cứ tăng 10 tuổi th&amp;igrave; tỉ lệ bị cao huyết &amp;aacute;p tăng th&amp;ecirc;m 5%, cứ 10 người tr&amp;ecirc;n 60 tuổi th&amp;igrave; c&amp;oacute; 5 người bị cao huyết &amp;aacute;p.&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Huyết áp tăng dần theo tuổi&quot; border=&quot;0&quot; src=&quot;https://sites.google.com/site/tienthanhmedical/_/rsrc/1365343241701/nhung-dieu-ban-chua-biet/Ng%C6%B0%E1%BB%9Di%20cao%20tu%E1%BB%95i%20v%C3%A0%20b%E1%BB%87nh%20cao%20huy%E1%BA%BFt%20%C3%A1p.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Những người dễ bị cao huyết &amp;aacute;p nhất l&amp;agrave;: người gi&amp;agrave;, phụ nữ sau m&amp;atilde;n kinh, người b&amp;eacute;o ph&amp;igrave;, bị rối loạn mỡ m&amp;aacute;u hoặc đ&amp;aacute;i th&amp;aacute;o đường tu&amp;yacute;t 2. Thực tế cũng cho thấy, người sử dụng qu&amp;aacute; 60g rượu mỗi ng&amp;agrave;y dễ bị tăng huyết &amp;aacute;p gấp 1,5 lần người b&amp;igrave;nh thường.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Huyết &amp;aacute;p của bạn được coi l&amp;agrave; cao&amp;nbsp;khi chỉ số huyết &amp;aacute;p tối đa/tối thiếu &amp;gt;=140/90. Nếu chỉ số n&amp;agrave;y lặp lại nhiều lần chứng tỏ bạn đang bị cao huyết &amp;aacute;p v&amp;agrave; do đ&amp;oacute; cần thay đổi c&amp;aacute;ch sinh hoạt, ăn uống cũng như cần sự tư vấn của b&amp;aacute;c sỹ. Lưu &amp;yacute;, chỉ số huyết &amp;aacute;p của bạn phụ thuộc v&amp;agrave;o nhiều yếu tố b&amp;ecirc;n ngo&amp;agrave;i như t&amp;igrave;nh trạng t&amp;acirc;m l&amp;yacute;, c&amp;aacute;c yếu tố m&amp;ocirc;i trường&amp;hellip; V&amp;igrave; vậy, chỉ khi huyết &amp;aacute;p của bạn thường xuy&amp;ecirc;n cao hơn ngưỡng tr&amp;ecirc;n th&amp;igrave; mới bị coi l&amp;agrave; cao huyết &amp;aacute;p.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đo huyết &amp;aacute;p tại nh&amp;agrave;&amp;nbsp;c&amp;oacute; nhiều ưu điểm hơn so với đo tại bệnh viện. Cụ thể, khi bạn tự đo huyết &amp;aacute;p bằng&amp;nbsp;m&amp;aacute;y đo huyết &amp;aacute;p điện tử, chỉ số huyết &amp;aacute;p thường ch&amp;iacute;nh x&amp;aacute;c hơn do kh&amp;ocirc;ng chịu ảnh hưởng bởi t&amp;acirc;m l&amp;yacute; lo lắng khi đến bệnh viện (c&amp;ograve;n gọi l&amp;agrave; hội chứng &amp;ldquo;&amp;aacute;o cho&amp;agrave;ng trắng&amp;rdquo;).&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Cách đo huyết áp tại nhà&quot; border=&quot;0&quot; src=&quot;https://sites.google.com/site/tienthanhmedical/_/rsrc/1365343269889/nhung-dieu-ban-chua-biet/%C4%90o%20huy%E1%BA%BFt%20%C3%A1p%20t%E1%BA%A1i%20nh%C3%A0.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y ra cao huyết &amp;aacute;p: Với tr&amp;igrave;nh độ khoa học &amp;ndash; kỹ thuật hiện nay, 90% ca bệnh cao huyết &amp;aacute;p vẫn chưa thể t&amp;igrave;m được nguy&amp;ecirc;n nh&amp;acirc;n, do đ&amp;oacute; việc điều trị gặp nhiều kh&amp;oacute; khăn. C&amp;aacute;c b&amp;aacute;c sỹ thường căn cứ v&amp;agrave;o những dấu hiệu chung như: yếu tố di truyền, bệnh l&amp;yacute; kh&amp;aacute;c, hoặc lối sống sinh hoạt để kết luận nguy&amp;ecirc;n nh&amp;acirc;n tăng huyết &amp;aacute;p.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Triệu chứng bệnh cao huyết &amp;aacute;p thường kh&amp;ocirc;ng r&amp;otilde; r&amp;agrave;ng. Những người bị cao huyết &amp;aacute;p c&amp;oacute; thể bị ch&amp;oacute;ng mặt, nhức đầu, cho&amp;aacute;ng v&amp;aacute;ng, buồn n&amp;ocirc;n&amp;hellip;, nhưng kh&amp;ocirc;ng may, đ&amp;acirc;y cũng l&amp;agrave; triệu chứng của nhiều căn bệnh kh&amp;aacute;c. V&amp;igrave; vậy, bạn cần thường xuy&amp;ecirc;n tự theo d&amp;otilde;i huyết &amp;aacute;p của bản th&amp;acirc;n để sớm ph&amp;aacute;t hiện dấu hiệu bệnh, đặc biệt với những người b&amp;eacute;o ph&amp;igrave; hoặc c&amp;oacute; tiền sử về tiểu đường&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Biến chứng của cao huyết &amp;aacute;p thường rất nguy hiểm,&amp;nbsp;thường xuy&amp;ecirc;n nhất l&amp;agrave; suy tim (to tim), nhồi m&amp;aacute;u cơ tim, đột quỵ (gồm nhồi m&amp;aacute;u n&amp;atilde;o v&amp;agrave; xuất huyết n&amp;atilde;o), suy giảm thị lực c&amp;oacute; thể dẫn tới m&amp;ugrave; l&amp;ograve;a&amp;hellip;Thống k&amp;ecirc; cho thấy cứ 10 người bị cao huyết &amp;aacute;p th&amp;igrave; c&amp;oacute; 6 người bị đột quỵ, 5 người bị đau thắt ngực. Tăng huyết &amp;aacute;p cũng g&amp;acirc;y giảm tuổi thọ từ 10 đến 20 năm&amp;hellip;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Biến chứng nguy hiểm của bệnh cao huyết áp&quot; border=&quot;0&quot; src=&quot;https://sites.google.com/site/tienthanhmedical/_/rsrc/1365343305363/nhung-dieu-ban-chua-biet/Bi%E1%BA%BFn%20ch%E1%BB%A9ng%20nh%E1%BB%93i%20m%C3%A1u%20c%C6%A1%20tim%20do%20huy%E1%BA%BFt%20%C3%A1p%20cao.JPG&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kh&amp;ocirc;ng c&amp;oacute; kh&amp;aacute;i niệm khỏi cao huyết &amp;aacute;p. Một khi dừng d&amp;ugrave;ng thuốc hoặc kh&amp;ocirc;ng tiếp tục duy tr&amp;igrave; lối sinh hoạt l&amp;agrave;nh mạnh (ăn ki&amp;ecirc;ng, tập thể dục thường xuy&amp;ecirc;n, kh&amp;ocirc;ng h&amp;uacute;t thuốc&amp;hellip;), bạn sẽ bị tăng huyết &amp;aacute;p trở lại. Chỉ c&amp;oacute; ki&amp;ecirc;n tr&amp;igrave; thay đổi lối sống v&amp;agrave; tuyệt đối thu&amp;acirc;n thủ theo chỉ dẫn của b&amp;aacute;c sỹ, bạn mới c&amp;oacute; thể khống chế căn bệnh n&amp;agrave;y. Bạn cũng n&amp;ecirc;n tự theo d&amp;otilde;i chỉ số huyết &amp;aacute;p của m&amp;igrave;nh thường xuy&amp;ecirc;n, ghi lại kết quả v&amp;agrave; th&amp;ocirc;ng b&amp;aacute;o cho b&amp;aacute;c sỹ ngay khi c&amp;oacute; sự tăng giảm bất thường.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c loại thuốc phổ biến trong điều trị cao huyết &amp;aacute;p:&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thuốc ức chế thụ thể angiotensin II: Losartan 25 mg, Telmisartan 40 mg.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thuốc lợi tiểu: Apo-hydro 25 mg, Natrilix SR 1,5 mg&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thuốc chẹn k&amp;ecirc;nh canxi t&amp;aacute;c dụng k&amp;eacute;o d&amp;agrave;i: Amlodipin&amp;reg;Stada, Nifedipine 30 mg.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thuốc ức chế thụ thể giao cảm beta: Atenolol&amp;reg;Stada 25 mg, Bisoprolol 5 mg, Carvedilol 12,5 mg.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thuốc ức chế men chuyển dạng angiotensin: Captopril &amp;reg;Stada 25 mg, Enalapril &amp;reg;Stada 10 mg, Coversyl 4 mg&lt;/li&gt;\r\n&lt;/ul&gt;', 'nhung-dieu-ban-chua-biet-ve-cao-huyet-ap', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 4, 0, 'active', '', '2013-10-03 17:07:19', 'admin', '2013-10-03 17:39:37');
INSERT INTO `media` VALUES (24, 'default13808543361', '', 'media_blog', '[171]', 'admin', 'Bầm mắt', '', '', 'vn', '&lt;p&gt;\r\n	Trong một đời người, việc đ&amp;ocirc;i l&amp;uacute;c xuất hiện những vết bầm l&amp;agrave; kh&amp;ocirc;ng thể tr&amp;aacute;nh khỏi.&lt;br /&gt;\r\n	Nếu chẳng may vết bầm n&amp;agrave;y xuất hiện tr&amp;ecirc;n mặt, nhất l&amp;agrave; chung quanh quầng mắt, n&amp;oacute; sẽ rất kh&amp;oacute; tan đi trong 1-2 tuần. Trong thời gian n&amp;agrave;y, bạn thường phải mang k&amp;iacute;nh đen ra đường v&amp;agrave; cảm thấy rất kh&amp;oacute; chịu trước &amp;aacute;nh mắt của mọi người. Bạn ước ao c&amp;oacute; một phương thuốc thần kỳ l&amp;agrave;m cho vết n&amp;agrave;y tan đi thật nhanh, v&amp;agrave; sẵn s&amp;agrave;ng trả một gi&amp;aacute; rất cao cho phương thuốc đ&amp;oacute;.&lt;br /&gt;\r\n	Những phương ph&amp;aacute;p dưới đ&amp;acirc;y ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng đắt tiền, nhưng bạn sẽ thấy ch&amp;uacute;ng hết sức hữu hiệu trong việc l&amp;agrave;m tan vết bầm trong thời gian ngắn nhất.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;Đắp nước đ&amp;aacute;&lt;/strong&gt;&lt;br /&gt;\r\n	V&amp;agrave;o những năm đầu thế kỷ 19, người ch&amp;acirc;u &amp;Acirc;u thường d&amp;ugrave;ng một miếng thịt b&amp;ograve; sống đắp l&amp;ecirc;n con mắt bị bầm; c&amp;aacute;ch n&amp;agrave;y gi&amp;uacute;p vết bầm mau tan hơn. Sau đ&amp;oacute;, người ta đặt ra nhiều &amp;quot;truyền thuyết&amp;quot;, n&amp;agrave;o l&amp;agrave; d&amp;ugrave;ng thịt b&amp;ograve; thăn sẽ mau l&amp;agrave;nh hơn thịt b&amp;ograve; đ&amp;ugrave;i, n&amp;agrave;o l&amp;agrave; d&amp;ugrave;ng gan b&amp;ograve; l&amp;agrave; tốt nhất... Sau n&amp;agrave;y, khi y học tiến bộ hơn, người ta mới kh&amp;aacute;m ph&amp;aacute; ra rằng, sở dĩ miếng thịt b&amp;ograve; c&amp;oacute; thể l&amp;agrave;m vết bầm mau tan hơn v&amp;igrave; n&amp;oacute; giữ cho tổn thương được m&amp;aacute;t.&lt;br /&gt;\r\n	&amp;Ocirc;ng Jeffers J. (b&amp;aacute;c sĩ chuy&amp;ecirc;n khoa mắt) nhận định rằng hơi lạnh c&amp;oacute; t&amp;aacute;c dụng l&amp;agrave;m c&amp;aacute;c tế b&amp;agrave;o co lại, gi&amp;uacute;p cho vết sưng trở n&amp;ecirc;n nhỏ hơn. Đồng thời, n&amp;oacute; cũng giảm được sự xuất huyết dưới da - nguồn gốc của c&amp;aacute;c vết bầm xấu x&amp;iacute;. &amp;Ocirc;ng n&amp;agrave;y khuy&amp;ecirc;n rằng, cứ 2 tiếng đồng hồ, bệnh nh&amp;acirc;n n&amp;ecirc;n đắp nước đ&amp;aacute; l&amp;ecirc;n vết bầm ở mắt trong 10 ph&amp;uacute;t, l&amp;agrave;m li&amp;ecirc;n tục trong 2 ng&amp;agrave;y. Bạn c&amp;oacute; thể d&amp;ugrave;ng một bao nylon đựng nước đ&amp;aacute; đập nhỏ để đắp; hoặc đến hiệu thuốc mua một mặt nạ chuy&amp;ecirc;n d&amp;ugrave;ng đắp l&amp;ecirc;n mắt. Mặt nạ n&amp;agrave;y l&amp;agrave;m bằng ni l&amp;ocirc;ng d&amp;agrave;y, trong c&amp;oacute; một chất lỏng giữ lạnh. Để mặt nạ v&amp;agrave;o ngăn đ&amp;aacute; tủ lạnh v&amp;agrave;i giờ trước khi d&amp;ugrave;ng, khi hết lạnh lại bỏ tiếp v&amp;agrave;o ngăn đ&amp;aacute;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Đừng d&amp;ugrave;ng Aspirin&lt;/strong&gt;&lt;br /&gt;\r\n	Aspirin l&amp;agrave; một trong những thần dược chuy&amp;ecirc;n trị đau nhức. Thuốc n&amp;agrave;y chắc chắn c&amp;oacute; thể l&amp;agrave;m dịu cảm gi&amp;aacute;c nhức nhối của vết bầm, nhưng n&amp;oacute; cũng sẽ l&amp;agrave;m cho vết bầm của bạn lan rộng hơn. Đ&amp;oacute; l&amp;agrave; do aspirin c&amp;oacute; t&amp;aacute;c dụng l&amp;agrave;m lo&amp;atilde;ng m&amp;aacute;u, khiến m&amp;aacute;u lưu th&amp;ocirc;ng nhanh hơn, l&amp;agrave;m tăng t&amp;igrave;nh trạng xuất huyết dưới da.&lt;br /&gt;\r\n	V&amp;igrave; vậy, khi c&amp;oacute; vết bầm ở mắt, tuyệt đối kh&amp;ocirc;ng d&amp;ugrave;ng aspirin hoặc ibuprofen. Để giảm đau, h&amp;atilde;y d&amp;ugrave;ng tylenol hoặc c&amp;aacute;c thuốc c&amp;oacute; chất acetaminophen.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Cố gắng đừng hắt hơi&lt;/strong&gt;&lt;br /&gt;\r\n	Hắt hơi l&amp;agrave; một việc kh&amp;oacute; tr&amp;aacute;nh. Nhưng nếu bạn đang bị bầm mắt, việc hắt hơi nhiều sẽ l&amp;agrave;m mắt bầm hơn do c&amp;aacute;c bọt kh&amp;iacute; nhỏ x&amp;iacute;u len v&amp;agrave;o dưới da, khiến mắt sưng th&amp;ecirc;m. Nhận định n&amp;agrave;y được r&amp;uacute;t ra từ kinh nghiệm chữa thương nhiều năm của b&amp;aacute;c sĩ Jeffers.&lt;/p&gt;', 'bam-mat', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 09:38:56', 'admin', '2013-10-04 09:38:56');
INSERT INTO `media` VALUES (25, 'default13808544851', '', 'media_blog', '[171]', 'admin', 'Bệnh cảm', '', '', 'vn', '&lt;p&gt;\r\n	Khi bệnh cảm đến, từ người lực lưỡng cho đến người ch&amp;acirc;n yếu tay mềm đều chỉ c&amp;oacute; thể l&amp;agrave;m một việc giống nhau l&amp;agrave; ... chịu đựng. Thuốc kh&amp;aacute;ng sinh, thần dược của nh&amp;acirc;n loại tr&amp;ecirc;n mọi chứng nhiễm tr&amp;ugrave;ng, ho&amp;agrave;n to&amp;agrave;n b&amp;oacute; tay trước virus cảm c&amp;uacute;m. V&amp;igrave; vậy, ta chỉ c&amp;oacute; thể uống thuốc cảm rồi chờ đợi, cầu trời cho cơn bệnh ch&amp;oacute;ng qua.&lt;br /&gt;\r\n	C&amp;oacute; nhiều c&amp;aacute;ch để r&amp;uacute;t ngắn thời gian bị cơn bệnh h&amp;agrave;nh hạ xuống c&amp;ograve;n 1-2 ng&amp;agrave;y thay v&amp;igrave; một tuần, hoặc l&amp;agrave;m giảm c&amp;aacute;c triệu chứng kh&amp;oacute; chịu như sổ mũi, đau họng, ho, nhảy mũi xuống c&amp;ograve;n 20% mức th&amp;ocirc;ng thường.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong style=&quot;line-height: 1.67em;&quot;&gt;Vitamin C&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chất n&amp;agrave;y như một người lao c&amp;ocirc;ng dọn dẹp sạch sẽ những r&amp;aacute;c rưởi trong cơ thể bạn, bao gồm cả vi khuẩn hay vi tr&amp;ugrave;ng. Nhờ đ&amp;oacute;, cơn bệnh đ&amp;aacute;ng lẽ phải k&amp;eacute;o d&amp;agrave;i 7-8 ng&amp;agrave;y chỉ c&amp;ograve;n lại 2-3 ng&amp;agrave;y.&lt;br /&gt;\r\n	Vitamin C c&amp;ograve;n gi&amp;uacute;p l&amp;agrave;m giảm ho, nhảy mũi, nghẹt mũi, sổ mũi, bần thần... v&amp;agrave; nhiều triệu chứng cảm kh&amp;aacute;c. Một th&amp;iacute; nghiệm tại đại học Wisconsin cho thấy, ở những người d&amp;ugrave;ng vitamin C (mỗi ng&amp;agrave;y 4 lần, mỗi lần 500 mg), c&amp;aacute;c triệu chứng cảm chỉ bằng một nửa so với những người kh&amp;ocirc;ng uống.&lt;br /&gt;\r\n	Việc bổ sung vitamin C bằng c&amp;aacute;ch ăn nhiều tr&amp;aacute;i c&amp;acirc;y hoặc rau sẽ tốt hơn l&amp;agrave; uống thuốc vi&amp;ecirc;n.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Một số c&amp;aacute;ch trị cảm c&amp;uacute;m kh&amp;aacute;c&lt;/strong&gt;&lt;br /&gt;\r\n	- Bổ sung chất kẽm:&amp;nbsp;C&amp;oacute; c&amp;ocirc;ng dụng r&amp;uacute;t ngắn cơn bệnh, l&amp;agrave;m dịu cảm gi&amp;aacute;c kh&amp;ocirc; cổ, r&amp;aacute;t cổ. Kẽm được chế th&amp;agrave;nh thuốc vi&amp;ecirc;n hoặc kẹo ngậm. Phải tuyệt đối tu&amp;acirc;n theo chỉ dẫn tr&amp;ecirc;n nh&amp;atilde;n thuốc hoặc đơn b&amp;aacute;c sĩ. Nếu được d&amp;ugrave;ng qu&amp;aacute; nhiều, kẽm c&amp;oacute; thể trở th&amp;agrave;nh chất độc.&lt;br /&gt;\r\n	- Ăn tỏi:&amp;nbsp;C&amp;oacute; c&amp;ocirc;ng dụng giết vi tr&amp;ugrave;ng v&amp;agrave; r&amp;uacute;t ngắn cơn cảm c&amp;uacute;m. Ăn tỏi sống c&amp;oacute; hiệu quả cao hơn uống thuốc l&amp;agrave;m từ tỏi.&lt;br /&gt;\r\n	- Uống nước la h&amp;aacute;n quả (Lohan quo):&amp;nbsp;C&amp;oacute; b&amp;aacute;n tại hầu hết c&amp;aacute;c chợ thực phẩm dưới dạng thỏi hoặc quả, d&amp;ugrave;ng pha nước uống. Vị thuốc n&amp;agrave;y c&amp;oacute; c&amp;ocirc;ng dụng ti&amp;ecirc;u đờm rất nhanh ch&amp;oacute;ng; thường chỉ sau 1-2 lần uống l&amp;agrave; c&amp;oacute; thể ti&amp;ecirc;u trừ hết đờm ở cổ họng.&lt;br /&gt;\r\n	- S&amp;uacute;c miệng nước muối:&amp;nbsp;Khi s&amp;uacute;c, ngửa cổ l&amp;ecirc;n cho nước muối chạy v&amp;agrave;o cổ họng, thổi hơi l&amp;ecirc;n tạo th&amp;agrave;nh tiếng k&amp;ecirc;u. H&amp;agrave;nh động n&amp;agrave;y gi&amp;uacute;p cho cổ họng th&amp;ocirc;ng hơn, bớt nghẹt mũi, giết vi tr&amp;ugrave;ng, khạc ra đờm nhiều hơn.&lt;br /&gt;\r\n	- Uống tr&amp;agrave; n&amp;oacute;ng hoặc canh n&amp;oacute;ng:&amp;nbsp;C&amp;agrave;ng n&amp;oacute;ng c&amp;agrave;ng tốt, miễn l&amp;agrave; đừng để bị bỏng miệng. Uống từng ngụm nhỏ cho đến khi hết. C&amp;oacute; c&amp;ocirc;ng dụng l&amp;agrave;m th&amp;ocirc;ng mũi.&lt;br /&gt;\r\n	- Tắm nước n&amp;oacute;ng:&amp;nbsp;Tắm đứng chừng 20 ph&amp;uacute;t với nước n&amp;oacute;ng bốc hơi cũng c&amp;oacute; c&amp;ocirc;ng dụng l&amp;agrave;m th&amp;ocirc;ng mũi v&amp;agrave; điều h&amp;ograve;a nhiệt độ cơ thể. Phương ph&amp;aacute;p n&amp;agrave;y c&amp;oacute; c&amp;ocirc;ng hiệu gần giống như phương ph&amp;aacute;p x&amp;ocirc;ng cổ truyền tại Việt Nam.&lt;br /&gt;\r\n	- Kh&amp;ocirc;ng h&amp;uacute;t thuốc:&amp;nbsp;Kh&amp;oacute;i thuốc l&amp;agrave;m tăng cảm gi&amp;aacute;c kh&amp;oacute; chịu v&amp;agrave; l&amp;agrave;m cơn bệnh l&amp;acirc;u dứt hơn.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;D&amp;ugrave;ng thuốc chữa nghẹt mũi, sổ mũi, chảy nước mắt&lt;/strong&gt;&lt;br /&gt;\r\n	- Thuốc kh&amp;aacute;ng histamine với t&amp;ecirc;n biệt dược l&amp;agrave; Sudafed Plus, Contact, Dimetapp, Cholotrimeton... dưới dạng thuốc nhỏ. Thuốc n&amp;agrave;y ngăn chặn c&amp;aacute;c histamine, kh&amp;ocirc;ng cho tiết nước mũi, nước mắt, ph&amp;ograve;ng ngứa. Kh&amp;ocirc;ng d&amp;ugrave;ng qu&amp;aacute; 3 ng&amp;agrave;y li&amp;ecirc;n tiếp; nếu d&amp;ugrave;ng l&amp;acirc;u hơn, mũi sẽ sưng v&amp;agrave; nghẹt trầm trọng hơn. Thuốc c&amp;oacute; thể g&amp;acirc;y buồn ngủ.&lt;br /&gt;\r\n	- Thuốc chống ngạt mũi: Loại thuốc uống tuy c&amp;ocirc;ng hiệu chậm hơn loại xịt nhưng c&amp;oacute; thể d&amp;ugrave;ng l&amp;acirc;u hơn m&amp;agrave; kh&amp;ocirc;ng bị biến chứng. Chỉ được d&amp;ugrave;ng tối đa 3 ng&amp;agrave;y (thuốc xịt) hoặc 7 ng&amp;agrave;y (thuốc uống).&lt;/p&gt;', 'benh-cam', '', '', '', '', '', '', 0, 0, '', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 09:41:25', 'admin', '2013-10-04 09:41:25');
INSERT INTO `media` VALUES (26, 'default13808588541', '', 'media_blog', '[171]', 'admin', 'Bệnh chán đời', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Theo b&amp;aacute;c sĩ Priscilla S. thuộc Đại học y khoa UCLA, chế độ dinh dưỡng c&amp;oacute; ảnh hưởng rất lớn đối với t&amp;igrave;nh cảm con người. Theo b&amp;agrave;, c&amp;aacute;c loại sinh tố B v&amp;agrave; một số axit amin c&amp;oacute; hiệu qủa rất khả quan trong việc chữa trị bệnh buồn rầu lo lắng. Nếu cảm thấy tinh thần xuống dốc, c&amp;oacute; thể d&amp;ugrave;ng một liều từ 1000 đến 3000 miligam chất L-tyrosine khi mới thức dậy, chưa ăn g&amp;igrave; hết. Khoảng nửa tiếng sau, uống th&amp;ecirc;m một vi&amp;ecirc;n sinh tố B-complex, đặc biệt l&amp;agrave; B6, c&amp;oacute; c&amp;ocirc;ng dụng ph&amp;acirc;n h&amp;oacute;a c&amp;aacute;c axit amin trong cơ thể.&lt;/span&gt;&lt;br /&gt;\r\n	B&amp;agrave; Priscilla n&amp;oacute;i th&amp;ecirc;m rằng, phương ph&amp;aacute;p n&amp;agrave;y chưa hề thất bại đối với những người bị bệnh ch&amp;aacute;n đời ở mức độ vừa phải. D&amp;ugrave; sao, b&amp;agrave; cũng khuy&amp;ecirc;n n&amp;ecirc;n hỏi b&amp;aacute;c sĩ của bạn trước khi d&amp;ugrave;ng phương ph&amp;aacute;p n&amp;agrave;y.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong style=&quot;line-height: 1.67em;&quot;&gt;Tập thể dục&lt;/strong&gt;&lt;br /&gt;\r\n	Rất nhiều th&amp;iacute; nghiệm v&amp;agrave; c&amp;aacute;c nghi&amp;ecirc;n cứu tr&amp;ecirc;n thế giới c&amp;ocirc;ng nhận rằng, tập thể dục l&amp;agrave; một trong những phương ph&amp;aacute;p hữu hiệu nhất để chống lại sự buồn ch&amp;aacute;n, lo lắng. Thể x&amp;aacute;c c&amp;agrave;ng &amp;iacute;t mệt bao nhi&amp;ecirc;u, tinh thần c&amp;agrave;ng nhẹ nh&amp;agrave;ng bấy nhi&amp;ecirc;u.&lt;br /&gt;\r\n	Trong một ng&amp;agrave;y thật sự cảm thấy buồn ch&amp;aacute;n, trống rỗng, hay lo lắng, h&amp;atilde;y thử thực hiện c&amp;aacute;c vận động hơi q&amp;uacute;a sức m&amp;igrave;nh một ch&amp;uacute;t, chẳng hạn như chạy bộ v&amp;agrave;i c&amp;acirc;y số, nhẩy xuống hồ bơi v&amp;agrave;i mươi v&amp;ograve;ng... Sau khi chấm dứt vận động, bạn sẽ cảm thấy cơ thể r&amp;atilde; rời. H&amp;atilde;y tắm rửa sạch sẽ v&amp;agrave; l&amp;ecirc;n giường ngủ một giấc. Khi thức dậy, bạn sẽ c&amp;oacute; một cảm gi&amp;aacute;c ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c hẳn. Những buồn rầu, lo lắng đ&amp;atilde; tan biến hết. Nếu vấn đề nan giải vẫn c&amp;ograve;n trước mắt th&amp;igrave; việc tập thể dục c&amp;oacute; thể khiến bạn minh mẫn, giải quyết vấn đề một c&amp;aacute;ch s&amp;aacute;ng suốt hơn.&lt;br /&gt;\r\n	Ngo&amp;agrave;i ra, c&amp;aacute;c phương ph&amp;aacute;p tự trị liệu về t&amp;acirc;m l&amp;yacute; dưới đ&amp;acirc;y cũng c&amp;oacute; những kết qủa hết sức khả quan:&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Nh&amp;igrave;n thẳng v&amp;agrave; đối đầu với nỗi buồn ch&amp;aacute;n&lt;/strong&gt;&lt;br /&gt;\r\n	D&amp;ugrave;ng đầu &amp;oacute;c ph&amp;acirc;n t&amp;iacute;ch xem tại sao bạn lại c&amp;oacute; cảm gi&amp;aacute;c buồn ch&amp;aacute;n như thế n&amp;agrave;y? H&amp;atilde;y suy nghĩ v&amp;agrave; ph&amp;acirc;n t&amp;iacute;ch thật tường tận cho đến ngọn ng&amp;agrave;nh của vấn đề. Tất cả những ph&amp;acirc;n t&amp;iacute;ch n&amp;agrave;y cuối c&amp;ugrave;ng sẽ đưa bạn đến một kết qủa giống nhau: &amp;quot;Nỗi buồn n&amp;agrave;y, cơn kh&amp;oacute; khăn n&amp;agrave;y rồi cũng phải qua đi, v&amp;agrave; sau đ&amp;oacute; l&amp;agrave; những ng&amp;agrave;y kh&amp;ocirc;ng c&amp;ograve;n u &amp;aacute;m nữa&amp;quot;.&lt;br /&gt;\r\n	H&amp;atilde;y t&amp;igrave;m hiểu cặn kẽ nỗi buồn của bạn để biết rằng chắc chắn một l&amp;uacute;c n&amp;agrave;o đ&amp;oacute;, m&amp;igrave;nh sẽ ra khỏi cảm gi&amp;aacute;c n&amp;agrave;y. V&amp;agrave; ngay b&amp;acirc;y giờ, khi ngồi chờ cảm gi&amp;aacute;c buồn ch&amp;aacute;n n&amp;agrave;y qua đi, tại sao bạn kh&amp;ocirc;ng l&amp;agrave;m một c&amp;aacute;i g&amp;igrave; để thời giờ tr&amp;ocirc;i nhanh hơn?...&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;http://60s.com.vn/image/82007/17/XINHXINH_20264453.jpg&quot; src=&quot;http://maxreading.com/data/books_images/0/9/09e87fde79cbee8adc0cd80e7a1ee8c4.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;L&amp;agrave;m một việc g&amp;igrave; đ&amp;oacute; để thời gian tr&amp;ocirc;i nhanh hơn&lt;/strong&gt;&lt;br /&gt;\r\n	C&amp;aacute;c b&amp;aacute;c sĩ t&amp;acirc;m l&amp;yacute; đ&amp;atilde; l&amp;agrave;m nhiều th&amp;iacute; nghiệm v&amp;agrave; đưa ra một số phương ph&amp;aacute;p c&amp;oacute; hiệu qủa tốt như sau:&lt;br /&gt;\r\n	- L&amp;agrave;m một việc g&amp;igrave; c&amp;oacute; vẻ hăng h&amp;aacute;i một ch&amp;uacute;t: Theo b&amp;aacute;c sĩ t&amp;acirc;m l&amp;yacute; Jonathan S., khi buồn ch&amp;aacute;n, tuyệt vọng, bạn n&amp;ecirc;n l&amp;agrave;m những việc c&amp;oacute; t&amp;iacute;nh c&amp;aacute;ch chủ động, hăng h&amp;aacute;i như: đi thăm một người bạn, đi bộ v&amp;ograve;ng quanh hay đạp xe đạp ra đường phố, đ&amp;aacute;nh cờ, đọc một cuốn s&amp;aacute;ch. Nhớ đừng xem truyền h&amp;igrave;nh, đ&amp;acirc;y kh&amp;ocirc;ng phải l&amp;agrave; một h&amp;agrave;nh động t&amp;iacute;ch cực.&lt;br /&gt;\r\n	- L&amp;agrave;m một việc m&amp;igrave;nh th&amp;iacute;ch: B&amp;aacute;c sĩ Eugene W. thuộc Đại học Oklahoma khuy&amp;ecirc;n n&amp;ecirc;n l&amp;agrave;m một trong những việc m&amp;igrave;nh th&amp;iacute;ch như đọc chuyện chưởng, chơi game, vẽ một bức tranh, h&amp;aacute;t karaoke... Nếu l&amp;uacute;c đ&amp;oacute; bạn chẳng thấy ham th&amp;iacute;ch g&amp;igrave; cả, cứ t&amp;igrave;m đại một việc m&amp;igrave;nh v&amp;agrave; l&amp;agrave;m với sự ch&amp;uacute; t&amp;acirc;m l&amp;uacute;c đầu. Sau đ&amp;oacute;, bạn sẽ t&amp;igrave;m lại được sự th&amp;iacute;ch th&amp;uacute;.&lt;br /&gt;\r\n	- Chia sẻ cảm gi&amp;aacute;c buồn ch&amp;aacute;n bằng c&amp;aacute;ch t&amp;acirc;m sự với người n&amp;agrave;o đ&amp;oacute;.&lt;br /&gt;\r\n	- Kh&amp;oacute;c cho vơi cơn buồn. Nhiều cuộc nghi&amp;ecirc;n cứu đ&amp;atilde; chứng minh kết qủa của phương ph&amp;aacute;p n&amp;agrave;y. Bất kể bạn l&amp;agrave; đ&amp;agrave;n b&amp;agrave; hay đ&amp;agrave;n &amp;ocirc;ng, hay kh&amp;oacute;c hoặc chưa từng biết kh&amp;oacute;c, phương ph&amp;aacute;p n&amp;agrave;y sẽ gi&amp;uacute;p bạn tr&amp;uacute;t bớt nỗi u uất trong l&amp;ograve;ng. Khi n&amp;iacute;n kh&amp;oacute;c, đ&amp;ocirc;i l&amp;uacute;c bạn lại thấy buồn cười với ch&amp;iacute;nh m&amp;igrave;nh.&lt;br /&gt;\r\n	- Đừng mơ ước q&amp;uacute;a xa vời. Nhiều l&amp;uacute;c cảm gi&amp;aacute;c buồn ch&amp;aacute;n, tuyệt vọng xuất hiện l&amp;agrave; do bạn tự đặt cho m&amp;igrave;nh một mục ti&amp;ecirc;u q&amp;uacute;a xa vời hay q&amp;uacute;a kh&amp;oacute; thực hiện... &amp;quot;T&amp;ocirc;i phải c&amp;oacute; một triệu đồng!&amp;quot;... &amp;quot;T&amp;ocirc;i phải chinh phục được c&amp;ocirc; hoa hậu năm nay&amp;quot;... Khi gặp một mục ti&amp;ecirc;u q&amp;uacute;a kh&amp;oacute; khăn hoặc q&amp;uacute;a lớn như vậy, bạn n&amp;ecirc;n l&amp;agrave;m một trong 2 c&amp;aacute;ch sau đ&amp;acirc;y:&lt;br /&gt;\r\n	&amp;nbsp; + Chia th&amp;agrave;nh từng bước nhỏ: Để c&amp;oacute; một triệu đồng trong v&amp;ograve;ng 10 năm, năm nay t&amp;ocirc;i cần c&amp;oacute; &amp;iacute;t nhất 50 ng&amp;agrave;n đồng... Việc chia nhỏ mục ti&amp;ecirc;u n&amp;agrave;y gi&amp;uacute;p bạn dễ th&amp;agrave;nh c&amp;ocirc;ng hơn, đồng thời bạn cũng thấy con đường kh&amp;ocirc;ng c&amp;ograve;n q&amp;uacute;a xa x&amp;ocirc;i nữa.&lt;br /&gt;\r\n	&amp;nbsp; + Với những chuyện kh&amp;ocirc;ng chia nhỏ được, bạn cần c&amp;oacute; quyết định dứt kho&amp;aacute;t... H&amp;atilde;y bỏ cuộc để tinh thần được thoải m&amp;aacute;i hơn, hoặc &amp;iacute;t nhất...l&amp;agrave; tạm thời bỏ cuộc trong l&amp;uacute;c tinh thần m&amp;igrave;nh đang xuống dốc v&amp;agrave; sẽ bắt đầu lại trong tương lai.&lt;br /&gt;\r\n	- H&amp;atilde;y vẽ ra nỗi buồn, con giận, hay cảm gi&amp;aacute;c lo lắng của m&amp;igrave;nh. D&amp;ugrave;ng một c&amp;aacute;i hộp b&amp;uacute;t ch&amp;igrave; đủ m&amp;agrave;u, vẽ đại tr&amp;ecirc;n tờ giấy, kh&amp;ocirc;ng cần biết m&amp;igrave;nh đang vẽ g&amp;igrave;. B&amp;aacute;c sĩ Ellen (Mỹ), t&amp;aacute;c gi&amp;aacute; phương ph&amp;aacute;p n&amp;agrave;y, khuy&amp;ecirc;n rằng, khi t&amp;acirc;m trạng trở lại b&amp;igrave;nh thường, bạn nh&amp;igrave;n lại &amp;quot;t&amp;aacute;c phẩm&amp;quot; của m&amp;igrave;nh v&amp;agrave; sẽ phải ngạc nhi&amp;ecirc;n v&amp;igrave; n&amp;oacute; thật sự đ&amp;atilde; diễn tả được sự buồn phiền hay giận dữ.&lt;br /&gt;\r\n	- Bạn c&amp;oacute; thật sự c&amp;oacute; l&amp;yacute; do để buồn kh&amp;ocirc;ng vậy? Đ&amp;ocirc;i l&amp;uacute;c bạn buồn hay giận dữ v&amp;igrave; những ph&amp;aacute;n đo&amp;aacute;n sai lầm. Đừng để phải hối tiếc v&amp;igrave; chuyện n&amp;agrave;y. Bạn nghi ngờ người t&amp;igrave;nh phản bội? Đừng buồn, h&amp;atilde;y hỏi thẳng. C&amp;oacute; thể nhờ vậy m&amp;agrave; bạn tự biết được rằng m&amp;igrave;nh c&amp;oacute; tật ghen tu&amp;ocirc;ng b&amp;oacute;ng gi&amp;oacute;.&lt;br /&gt;\r\n	- H&amp;atilde;y tự hưởng thụ. Đến một tiệm massage v&amp;agrave; hưởng thụ cảm gi&amp;aacute;c thoải m&amp;aacute;i tr&amp;ecirc;n c&amp;aacute;c bắp thịt được xoa b&amp;oacute;p. Mở đầy một bồn nước n&amp;oacute;ng v&amp;agrave; ng&amp;acirc;m m&amp;igrave;nh trong đ&amp;oacute;. Những tiện nghi tr&amp;ecirc;n thể x&amp;aacute;c n&amp;agrave;y thường c&amp;oacute; thể giải tỏa được c&amp;aacute;c phiền n&amp;atilde;o trong l&amp;ograve;ng bạn. Đồng thời, khi nằm một c&amp;aacute;ch thoải m&amp;aacute;i trong bồn nước hay tr&amp;ecirc;n giường đấm b&amp;oacute;p, bạn c&amp;oacute; nhiều thời gian suy nghĩ một c&amp;aacute;ch s&amp;acirc;u xa, ch&amp;iacute;n chắn mọi việc.&lt;br /&gt;\r\n	- H&amp;atilde;y l&amp;agrave;m một việc g&amp;igrave; thật đ&amp;aacute;ng ch&amp;aacute;n để cho đỡ ch&amp;aacute;n! Ngồi cắn hạt dưa, đừng ăn, h&amp;atilde;y để d&amp;agrave;nh trong ch&amp;eacute;n cho tới khi n&amp;agrave;o đủ số để l&amp;agrave;m 10 c&amp;aacute;i b&amp;aacute;nh trung thu! H&amp;atilde;y ra vườn thử nhổ từng cọng cỏ mọc lẫn trong hoa cho đến khi kh&amp;ocirc;ng c&amp;ograve;n cỏ nữa! H&amp;atilde;y ch&amp;agrave; sạch tường gạch men trong ph&amp;ograve;ng tắm với một b&amp;agrave;n chải... đ&amp;aacute;nh răng! Những việc n&amp;agrave;y thật sự đ&amp;aacute;ng ch&amp;aacute;n hơn nỗi buồn của bạn. H&amp;atilde;y ki&amp;ecirc;n nhẫn l&amp;agrave;m cho đến khi cơn buồn ch&amp;aacute;n của bạn ho&amp;agrave;n to&amp;agrave;n tan biến hết. Phương ph&amp;aacute;p n&amp;agrave;y đ&amp;atilde; được th&amp;iacute; nghiệm nhiều tại c&amp;aacute;c bệnh viện v&amp;agrave; đưa đến kết qủa rất khả quan.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Những chuyện n&amp;ecirc;n tuyệt đối tr&amp;aacute;nh&lt;/strong&gt;&lt;br /&gt;\r\n	Khi cơn buồn ch&amp;aacute;n qua đi, bạn sẽ hối hận rất nhiều nếu lỡ l&amp;agrave;m những h&amp;agrave;nh động sau đ&amp;acirc;y:&lt;br /&gt;\r\n	- Lang thang v&amp;agrave;o s&amp;ograve;ng b&amp;agrave;i.&lt;br /&gt;\r\n	- Lững thững đi shopping với một v&amp;iacute; đầy tiền.&lt;br /&gt;\r\n	- N&amp;oacute;ng giận v&amp;agrave; l&amp;agrave;m buồn l&amp;ograve;ng người th&amp;acirc;n.&lt;br /&gt;\r\n	- Nhắm mắt đưa ch&amp;acirc;n với một người m&amp;igrave;nh kh&amp;ocirc;ng c&amp;oacute; cảm t&amp;igrave;nh s&amp;acirc;u đậm lắm.&lt;br /&gt;\r\n	- Mở tủ lạnh t&amp;igrave;m đồ ăn 5-10 ph&amp;uacute;t một lần !&lt;/p&gt;', 'benh-chan-doi', '', '', '', '', '', '', 0, 0, 'upload/benh-chan-doi.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 10:54:14', 'admin', '2013-10-04 10:54:14');
INSERT INTO `media` VALUES (27, 'default13808590191', '', 'media_blog', '[171]', 'admin', 'Cách khử mùi cơ thể', '', '', 'vn', '&lt;p&gt;\r\n	M&amp;ugrave;i h&amp;ocirc;i trong người ph&amp;aacute;t ra từ những chỗ k&amp;iacute;n như n&amp;aacute;ch, h&amp;aacute;ng..., đ&amp;oacute; l&amp;agrave; một chuyện hết sức tự nhi&amp;ecirc;n. Bất cứ sinh vật n&amp;agrave;o cũng c&amp;oacute; m&amp;ugrave;i h&amp;ocirc;i đặc biệt của ch&amp;uacute;ng. Như ở lo&amp;agrave;i chồn c&amp;aacute;o, lo&amp;agrave;i ch&amp;oacute;, m&amp;egrave;o, chuột..., đ&amp;oacute; chẳng qua l&amp;agrave; một ph&amp;acirc;n biệt tự nhi&amp;ecirc;n giữa giống đực v&amp;agrave; giống c&amp;aacute;i. Thường m&amp;ugrave;i n&amp;agrave;y mang đặc t&amp;iacute;nh kh&amp;ecirc;u gợi dục t&amp;igrave;nh với mục đ&amp;iacute;ch đơn giản l&amp;agrave; truyền giống.&lt;br /&gt;\r\n	D&amp;ugrave; sao, ở kỷ nguy&amp;ecirc;n của ch&amp;uacute;ng ta, sự kh&amp;ecirc;u gợi về dục t&amp;igrave;nh của lo&amp;agrave;i người đ&amp;atilde; tiến một mức kh&amp;aacute; xa. Người ta kh&amp;ocirc;ng c&amp;ograve;n d&amp;ugrave;ng m&amp;ugrave;i h&amp;ocirc;i n&amp;agrave;y để gợi t&amp;igrave;nh như những lo&amp;agrave;i vật kh&amp;aacute;c nữa. Tr&amp;aacute;i lại, con người c&amp;oacute; khuynh hướng muốn che giấu m&amp;ugrave;i h&amp;ocirc;i n&amp;agrave;y...&lt;br /&gt;\r\n	Việc n&amp;agrave;y dễ d&amp;agrave;ng th&amp;ocirc;i, ở cuối thể kỷ thứ 20. Với sự tiến bộ vượt bực của khoa học, ch&amp;uacute;ng ta c&amp;oacute; nhiều c&amp;aacute;ch kh&amp;aacute;c nhau.&lt;/p&gt;', '&lt;p&gt;\r\n	T&lt;strong&gt;ắm rửa để giết vi khuẩn&lt;/strong&gt;&lt;br /&gt;\r\n	M&amp;ugrave;i h&amp;ocirc;i thường tạo ra do sự phối hợp của mồ h&amp;ocirc;i v&amp;agrave; vi khuẩn. Bạn n&amp;ecirc;n tắm rửa thường xuy&amp;ecirc;n, rửa những chỗ k&amp;iacute;n bằng nước v&amp;agrave; x&amp;agrave; ph&amp;ograve;ng. N&amp;ecirc;n d&amp;ugrave;ng x&amp;agrave; ph&amp;ograve;ng loại khử m&amp;ugrave;i h&amp;ocirc;i, loại n&amp;agrave;y được chế tạo đặc biệt, c&amp;oacute; khả năng ngăn chặn sự ph&amp;aacute;t triển của vi khuẩn tạo m&amp;ugrave;i h&amp;ocirc;i. Dĩ nhi&amp;ecirc;n, m&amp;ugrave;a h&amp;egrave; bạn thường đổ nhiều mồ h&amp;ocirc;i hơn m&amp;ugrave;a đồng. V&amp;igrave; thế, n&amp;ecirc;n tắm rửa nhiều hơn v&amp;agrave;o m&amp;ugrave;a h&amp;egrave;; ng&amp;agrave;y hai lần, một v&amp;agrave;o buổi s&amp;aacute;ng, một v&amp;agrave;o buổi tối l&amp;agrave; hay nhất.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Mặc quần &amp;aacute;o vải v&amp;agrave; thay đổi thường xuy&amp;ecirc;n&lt;/strong&gt;&lt;br /&gt;\r\n	M&amp;ugrave;i h&amp;ocirc;i c&amp;oacute; thể hết do sự tắm gội thường xuy&amp;ecirc;n, nhưng nếu sau đ&amp;oacute; bạn tiếp tục mặc lại y phục cũ th&amp;igrave; thật chẳng c&amp;oacute; g&amp;igrave; kh&amp;aacute;c biệt. Mồ h&amp;ocirc;i v&amp;agrave; vi khuẩn tiếp tục sinh sản trong quần &amp;aacute;o c&amp;oacute; thể tạo m&amp;ugrave;i h&amp;ocirc;i nặng nề hơn.&lt;br /&gt;\r\n	Thường vi khuẩn sinh sản mau lẹ trong những điều kiện n&amp;oacute;ng v&amp;agrave; ẩm. Nếu bạn hay mặc quần &amp;aacute;o bằng những loại nylon hay tơ sợi nh&amp;acirc;n tạo th&amp;igrave; tự bạn đ&amp;atilde; tạo n&amp;ecirc;n điều kiện l&amp;yacute; tưởng cho c&amp;aacute;c vi khuẩn n&amp;agrave;y. H&amp;atilde;y mặc quần &amp;aacute;o (nhất l&amp;agrave; quần &amp;aacute;o l&amp;oacute;t) bằng vải c&amp;oacute; thể thấm mồ h&amp;ocirc;i, nhớ thay đổi thường xuy&amp;ecirc;n.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;D&amp;ugrave;ng thuốc chống mồ h&amp;ocirc;i&lt;/strong&gt;&lt;br /&gt;\r\n	Nếu bạn bị chứng h&amp;ocirc;i n&amp;aacute;ch, hẳn bạn đ&amp;atilde; từng thử qua một v&amp;agrave;i loại thuốc trừ m&amp;ugrave;i h&amp;ocirc;i (deodorant). Thuốc n&amp;agrave;y c&amp;oacute; thể mua dễ d&amp;agrave;ng tại c&amp;aacute;c chợ hoặc c&amp;aacute;c tiệm thuốc t&amp;acirc;y dưới dạng thuốc nước xịt, hoặc kem thoa v&amp;agrave;o dưới n&amp;aacute;ch.&lt;br /&gt;\r\n	Deodrant l&amp;agrave; một loại h&amp;oacute;a chất c&amp;oacute; thể b&amp;aacute;m l&amp;acirc;u tr&amp;ecirc;n phần da ở chỗ k&amp;iacute;n của bạn, n&amp;oacute; c&amp;oacute; c&amp;ocirc;ng dụng giết chết c&amp;aacute;c vi khuẩn tạo n&amp;ecirc;n m&amp;ugrave;i h&amp;ocirc;i. Thường th&amp;igrave; loại n&amp;agrave;y rất c&amp;oacute; c&amp;ocirc;ng hiệu đối với hầu hết mọi người. (Lưu &amp;yacute;: việc x&amp;agrave;i Deodorant qu&amp;aacute; nhiều c&amp;oacute; thể g&amp;acirc;y lở da).&lt;br /&gt;\r\n	C&amp;oacute; những l&amp;uacute;c bạn bị chảy mồ h&amp;ocirc;i hơi nhiều, l&amp;agrave;m thuốc deodorant bị cuốn tr&amp;ocirc;i đi v&amp;agrave; kh&amp;ocirc;ng c&amp;ograve;n t&amp;aacute;c dụng nữa (thường v&amp;agrave;o những ng&amp;agrave;y n&amp;oacute;ng bức). Bạn cần d&amp;ugrave;ng thuốc chống mồ h&amp;ocirc;i trong trường hợp n&amp;agrave;y. Thuốc chống mồ h&amp;ocirc;i thường c&amp;oacute; b&amp;aacute;n tại c&amp;aacute;c tiệm thuốc t&amp;acirc;y (gọi l&amp;agrave; antiperspirant). Th&amp;ocirc;ng thường c&amp;aacute;c antiperspirant c&amp;oacute; trộn chung với deodorant để l&amp;agrave;m cả 2 việc một l&amp;uacute;c, giảm mồ h&amp;ocirc;i v&amp;agrave; giết vi khuẩn. Bạn c&amp;oacute; thể hỏi dược sĩ tại tiệm thuốc để r&amp;otilde; hơn về những loại n&amp;agrave;y.&lt;br /&gt;\r\n	Nh&amp;igrave;n chung, m&amp;ugrave;a đ&amp;ocirc;ng bạn cần deodorant, m&amp;ugrave;a h&amp;egrave; bạn c&amp;oacute; thể cần một loại thuốc c&amp;oacute; tra trộn 2 thứ deodorant v&amp;agrave; antiperspirant. Xem kỹ nh&amp;atilde;n hiệu của thuốc về th&amp;agrave;nh phần cấu tạo trước khi mua.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Nếu da bạn bị lở khi d&amp;ugrave;ng deodorant?&lt;/strong&gt;&lt;br /&gt;\r\n	Nhiều người c&amp;oacute; l&amp;agrave;n da qu&amp;aacute; mỏng v&amp;agrave; dễ bị lở khi d&amp;ugrave;ng thuốc khử m&amp;ugrave;i h&amp;ocirc;i (deodorant). Nếu bạn bị vấn đề n&amp;agrave;y, c&amp;oacute; thể đến c&amp;aacute;c tiệm thuốc t&amp;acirc;y t&amp;igrave;m mua loại kem kh&amp;aacute;ng sinh thoa ngo&amp;agrave;i da (topical antibiotic cream). Loại kem n&amp;agrave;y giống hệt như c&amp;aacute;c thuốc deodorant, chỉ kh&amp;aacute;c l&amp;agrave; kh&amp;ocirc;ng trộn chung với dầu thơm, v&amp;agrave; ch&amp;iacute;nh dầu thơm n&amp;agrave;y thường g&amp;acirc;y lở da.&lt;br /&gt;\r\n	Lưu &amp;yacute;:&amp;nbsp;Nếu bạn kh&amp;ocirc;ng th&amp;iacute;ch x&amp;agrave;i c&amp;aacute;c loại thuốc thoa hoặc xịt của Mỹ, c&amp;oacute; thể d&amp;ugrave;ng thử một loại muối đặc biệt do Ph&amp;aacute;p b&amp;agrave;o chế t&amp;ecirc;n l&amp;agrave; Le Crystal Natural, c&amp;oacute; b&amp;aacute;n tại h&amp;agrave;ng mỹ phẩm của c&amp;aacute;c shopping lớn. Loại muối n&amp;agrave;y c&amp;oacute; khả năng giết vi tr&amp;ugrave;ng v&amp;agrave; kh&amp;ocirc;ng l&amp;agrave;m lở da.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;M&amp;ugrave;i h&amp;ocirc;i c&amp;oacute; thể g&amp;acirc;y ra do thức ăn&lt;/strong&gt;&lt;br /&gt;\r\n	Bạn kh&amp;ocirc;ng lạ g&amp;igrave; m&amp;ugrave;i c&amp;agrave; ri ph&amp;aacute;t ra từ người ấn Độ, hoặc m&amp;ugrave;i h&amp;agrave;nh sống ph&amp;aacute;t ra từ người Iran... Đối với người Việt-Nam, một số bị m&amp;ugrave;i h&amp;ocirc;i do ăn c&amp;aacute; qu&amp;aacute; nhiều... Nh&amp;igrave;n chung, nếu bạn bị vấn đề m&amp;ugrave;i h&amp;ocirc;i, n&amp;ecirc;n ki&amp;ecirc;ng ăn c&amp;aacute; v&amp;agrave; c&amp;aacute;c gia vị nặng m&amp;ugrave;i như h&amp;agrave;nh, tỏi, c&amp;agrave; ri...&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Tr&amp;aacute;nh x&amp;uacute;c động nhiều&lt;/strong&gt;&lt;br /&gt;\r\n	Một người khi ở trong trạng th&amp;aacute;i k&amp;iacute;ch th&amp;iacute;ch dục t&amp;igrave;nh thường c&amp;oacute; khuynh hướng chảy mồ h&amp;ocirc;i nhiều hơn. Sự hồi hộp, lo sợ hay n&amp;oacute;ng nảy, l&amp;iacute;nh qu&amp;yacute;nh... đều l&amp;agrave;m c&amp;aacute;c tuyến mồ h&amp;ocirc;i hoạt động mạnh.&lt;br /&gt;\r\n	Bạn sắp phải đi phỏng vấn t&amp;igrave;m việc l&amp;agrave;m, sắp phải n&amp;oacute;i chuyện trước đ&amp;aacute;m đ&amp;ocirc;ng lần đầu ti&amp;ecirc;n hay dự định ngỏ lời với người m&amp;igrave;nh y&amp;ecirc;u? Đừng qu&amp;ecirc;n xức thật nhiều thuốc deodorant v&amp;agrave; antisperspirant trước đ&amp;oacute;!!!&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Mẹo vặt của người ch&amp;acirc;u &amp;Acirc;u&lt;/strong&gt;&lt;br /&gt;\r\n	Từ l&amp;acirc;u, người ch&amp;acirc;u &amp;Acirc;u đ&amp;atilde; biết d&amp;ugrave;ng sốt c&amp;agrave; chua để tẩy m&amp;ugrave;i h&amp;ocirc;i từ gia s&amp;uacute;c. Một con ch&amp;oacute; bị ướt mưa v&amp;agrave; c&amp;oacute; m&amp;ugrave;i h&amp;ocirc;i kh&amp;oacute; chịu cả tuần lễ sau đ&amp;oacute;. Chẳng c&amp;oacute; g&amp;igrave; kh&amp;oacute;, d&amp;ugrave;ng nước lạnh pha ch&amp;uacute;t sốt c&amp;agrave; tắm con ch&amp;oacute; l&amp;agrave; m&amp;ugrave;i h&amp;ocirc;i hết ngay!&lt;br /&gt;\r\n	Với con người, sốt c&amp;agrave; cũng c&amp;oacute; c&amp;ocirc;ng hiệu kh&amp;ocirc;ng k&amp;eacute;m. C&amp;ocirc; Alice, y t&amp;aacute; trưởng tại Bệnh viện Colorado, đ&amp;atilde; d&amp;ugrave;ng thử phương ph&amp;aacute;p n&amp;agrave;y với nhiều người v&amp;agrave; hết sức th&amp;agrave;nh c&amp;ocirc;ng. C&amp;ocirc; n&amp;oacute;i: &amp;quot;Phương ph&amp;aacute;p n&amp;agrave;y hiệu nghiệm trăm phần trăm! Bạn kh&amp;ocirc;ng cần phải đổ sốt c&amp;agrave; chua v&amp;agrave;o đầy bồn tắm đ&amp;acirc;u, chỉ cần pha 2-3 lon v&amp;agrave;o bồn nước v&amp;agrave; ng&amp;acirc;m chừng 15 ph&amp;uacute;t&amp;quot;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Mẹo vặt:&lt;/strong&gt;&lt;br /&gt;\r\n	Loại rau ng&amp;ograve; l&amp;aacute; quắn (pasley) c&amp;oacute; thể trừ được m&amp;ugrave;i h&amp;ocirc;i trong người. Ăn đều mỗi ng&amp;agrave;y chừng 5-10 cọng. Li&amp;ecirc;n tục khoảng 2 th&amp;aacute;ng sẽ c&amp;oacute; kết quả thấy rất r&amp;otilde;.&lt;/p&gt;', 'cach-khu-mui-co-the', '', '', '', '', '', '', 0, 0, 'upload/mui-co-the.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 10:56:59', 'admin', '2013-10-04 10:56:59');
INSERT INTO `media` VALUES (28, 'default13808592031', '', 'media_blog', '[171]', 'admin', 'Những việc cần làm khi bị bỏng', '', '', 'vn', '&lt;p&gt;\r\n	Khi bị bỏng ở cấp độ 1 hoặc 2, hầu hết c&amp;aacute;c trường hợp đều c&amp;oacute; thể tự chữa lấy. C&amp;aacute;c trường hợp sau đều cần đến sự chăm s&amp;oacute;c của b&amp;aacute;c sĩ chuy&amp;ecirc;n khoa: bỏng cấp độ 3, trường hợp bỏng phức tạp m&amp;agrave; bạn kh&amp;ocirc;ng biết thuộc cấp độ n&amp;agrave;o, bỏng bị nhiễm tr&amp;ugrave;ng hoặc chưa l&amp;agrave;nh trong v&amp;ograve;ng 10 ng&amp;agrave;y... Đối với vết phỏng cấp độ 1 hoặc 2, việc đầu ti&amp;ecirc;n l&amp;agrave; chặn đứng nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y ra bỏng, c&amp;agrave;ng sớm c&amp;agrave;ng tốt. Sau đ&amp;oacute; bạn cần l&amp;agrave;m những việc sau:&lt;/p&gt;', '&lt;p&gt;\r\n	Y khoa chia bỏng l&amp;agrave;m 3 cấp độ kh&amp;aacute;c nhau:&lt;br /&gt;\r\n	- Cấp độ 1 (first-degree): Bỏng nhẹ, cụ thể như đi phơi nắng ngo&amp;agrave;i b&amp;atilde;i biển, da bị đỏ l&amp;ecirc;n v&amp;agrave; hơi r&amp;aacute;t.&lt;br /&gt;\r\n	- Cấp độ 2 (second-degree): Bỏng vừa, như trường hợp sơ &amp;yacute; chạm phải một vật n&amp;oacute;ng đỏ, da bị phồng l&amp;ecirc;n, c&amp;oacute; nước.&lt;br /&gt;\r\n	- Cấp độ 3 (third-degree): Bỏng nặng, thường xảy ra trong trường hợp tiếp x&amp;uacute;c với hơi n&amp;oacute;ng qu&amp;aacute; l&amp;acirc;u như ch&amp;aacute;y nh&amp;agrave;, bỏng v&amp;igrave; c&amp;aacute;c axit hay h&amp;oacute;a chất, hoặc bỏng điện... Ở mức độ n&amp;agrave;y, vết bỏng c&amp;oacute; m&amp;agrave;u trắng hoặc m&amp;agrave;u ng&amp;agrave;, thường kh&amp;ocirc;ng c&amp;ograve;n cảm gi&amp;aacute;c đau đớn nữa v&amp;igrave; c&amp;aacute;c tế b&amp;agrave;o thần kinh cảm gi&amp;aacute;c nơi đ&amp;oacute; đ&amp;atilde; bị hủy hoại hết.&lt;br /&gt;\r\n	Khi bị bỏng ở cấp độ 1 hoặc 2, hầu hết c&amp;aacute;c trường hợp đều c&amp;oacute; thể tự chữa lấy. C&amp;aacute;c trường hợp sau đều cần đến sự chăm s&amp;oacute;c của b&amp;aacute;c sĩ chuy&amp;ecirc;n khoa: bỏng cấp độ 3, trường hợp bỏng phức tạp m&amp;agrave; bạn kh&amp;ocirc;ng biết thuộc cấp độ n&amp;agrave;o, bỏng bị nhiễm tr&amp;ugrave;ng hoặc chưa l&amp;agrave;nh trong v&amp;ograve;ng 10 ng&amp;agrave;y... Đối với vết phỏng cấp độ 1 hoặc 2, việc đầu ti&amp;ecirc;n l&amp;agrave; chặn đứng nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y ra bỏng, c&amp;agrave;ng sớm c&amp;agrave;ng tốt. Sau đ&amp;oacute; bạn cần l&amp;agrave;m những việc sau:&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;L&amp;agrave;m nguội vết thương&lt;/strong&gt;&lt;br /&gt;\r\n	Rửa vết thương với thật nhiều nước lạnh. Để vết thương dưới v&amp;ograve;i nước lạnh đang chảy từ 15 đến 25 ph&amp;uacute;t hoặc cho đến khi cảm thấy hết đau. Chỉ d&amp;ugrave;ng nước lạnh l&amp;agrave; đủ. Việc d&amp;ugrave;ng nước đ&amp;aacute; c&amp;oacute; &amp;iacute;ch trong một số trường hợp nhưng kh&amp;ocirc;ng phải l&amp;uacute;c n&amp;agrave;o cũng c&amp;oacute; kết quả tốt.&lt;br /&gt;\r\n	Trường hợp bỏng chất lỏng (dầu, nước s&amp;ocirc;i, axit), trước hết phải cởi bỏ y phục bị ướt ra, kế đ&amp;oacute; mới ng&amp;acirc;m nước lạnh chỗ bị bỏng. Nếu y phục bị d&amp;iacute;nh v&amp;agrave;o vết thương, đừng cố gỡ ra, h&amp;atilde;y rửa nước lạnh b&amp;ecirc;n ngo&amp;agrave;i lớp vải v&amp;agrave; t&amp;igrave;m b&amp;aacute;c sĩ.&lt;br /&gt;\r\n	Việc rửa nước lạnh c&amp;oacute; c&amp;ocirc;ng dụng l&amp;agrave;m vết bỏng kh&amp;ocirc;ng lan rộng, đồng thời l&amp;agrave;m vết bỏng nhỏ hơn, v&amp;agrave; &amp;iacute;t đau đớn hơn.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Giữ sạch vết bỏng&lt;/strong&gt;&lt;br /&gt;\r\n	Một số người thường nghĩ, những chất như bơ, kem đ&amp;aacute;nh răng, giấm, nước mắm... c&amp;oacute; thể l&amp;agrave;m dịu vết bỏng. Điều đ&amp;oacute; kh&amp;ocirc;ng đ&amp;uacute;ng. Thực ra, phương ph&amp;aacute;p tốt nhất l&amp;agrave; giữ vết bỏng sạch sẽ, đừng động chạm g&amp;igrave; trong v&amp;ograve;ng 24 giờ sau đ&amp;oacute;. Nếu vết bỏng nằm ở những chỗ dễ đụng chạm, c&amp;oacute; thể d&amp;ugrave;ng một băng vải đắp l&amp;ecirc;n chỉ với mục đ&amp;iacute;ch tr&amp;aacute;nh sự đụng chạm l&amp;agrave;m đau đớn m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Rửa x&amp;agrave; ph&amp;ograve;ng&lt;/strong&gt;&lt;br /&gt;\r\n	Sau 24 giờ, bạn c&amp;oacute; thể rửa vết bỏng với x&amp;agrave; ph&amp;ograve;ng v&amp;agrave; nước lạnh hoặc một dung dịch thuốc Betadine c&amp;oacute; b&amp;aacute;n tại c&amp;aacute;c hiệu thuốc t&amp;acirc;y. Rửa mỗi ng&amp;agrave;y một lần, lau hoặc quạt cho kh&amp;ocirc; sau khi rửa.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;D&amp;ugrave;ng l&amp;aacute; nha đam&lt;/strong&gt;&lt;br /&gt;\r\n	Nha đam (Aloe-vera) l&amp;agrave; một loại c&amp;acirc;y thường mọc ở sa mạc, l&amp;aacute; c&amp;oacute; gai như c&amp;acirc;y dứa gai, d&amp;agrave;i chừng 1-2 gang tay, trong chứa chất nhờn. Chừng 3 ng&amp;agrave;y sau khi bị bỏng, bạn c&amp;oacute; thể ngắt một l&amp;aacute;, lấy chất nhờn b&amp;ecirc;n trong b&amp;ocirc;i l&amp;ecirc;n vết bỏng. Vết thương sẽ m&amp;aacute;t hơn, dễ chịu hơn v&amp;agrave; kh&amp;ocirc;ng bị kh&amp;ocirc; nứt. C&amp;aacute;c hiệu thuốc t&amp;acirc;y đều c&amp;oacute; b&amp;aacute;n loại kem Aloe n&amp;agrave;y. Việc d&amp;ugrave;ng l&amp;aacute; tươi hay kem đều c&amp;oacute; c&amp;ocirc;ng hiệu như nhau.&lt;br /&gt;\r\n	Ghi ch&amp;uacute;:&amp;nbsp;Kh&amp;ocirc;ng n&amp;ecirc;n d&amp;ugrave;ng l&amp;aacute; hoặc kem nha đam (Aloe-vera) nếu bạn c&amp;oacute; bệnh tim, đang d&amp;ugrave;ng thuốc aspirin hoặc c&amp;aacute;c loại thuốc l&amp;agrave;m lo&amp;atilde;ng m&amp;aacute;u.&lt;br /&gt;\r\n	B&amp;ocirc;i kem kh&amp;aacute;ng sinh&lt;br /&gt;\r\n	Vết bỏng nhẹ tuy &amp;iacute;t khi bị nhiễm tr&amp;ugrave;ng nhưng khi bị th&amp;igrave; c&amp;oacute; khuynh hướng l&amp;agrave;m độc v&amp;agrave; lan rộng. V&amp;igrave; thế, bạn n&amp;ecirc;n d&amp;ugrave;ng c&amp;aacute;c loại kem kh&amp;aacute;ng sinh chống nhiễm tr&amp;ugrave;ng c&amp;oacute; b&amp;aacute;n tại c&amp;aacute;c hiệu thuốc t&amp;acirc;y (c&amp;ugrave;ng loại với kem trị vết thương, đứt tay). C&amp;aacute;c hiệu sau đ&amp;acirc;y c&amp;oacute; kết quả tốt: Polysporin, Neosporin, Johnson &amp;amp; Johnson First-Aid cream.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;Vết phồng&lt;/strong&gt;&lt;br /&gt;\r\n	Thường vết phồng sẽ xuất hiện 1-2 h&amp;ocirc;m sau khi bị bỏng. Đối với vết phồng nhỏ, tốt nhất l&amp;agrave; để nguy&amp;ecirc;n như vậy. Trong trường hợp vết phồng lớn v&amp;agrave; ở những chỗ hay bị chạm phải, xin xem c&amp;aacute;ch chữa trị ở chương n&amp;oacute;i về vết phồng nước.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;C&amp;ocirc;ng dụng của c&amp;aacute;c sinh tố&lt;/strong&gt;&lt;br /&gt;\r\n	- Sinh tố C: Cần thiết cho sự tạo th&amp;agrave;nh collagen, một chất do cơ thể sản xuất ra để l&amp;agrave;m da chỗ bỏng ch&amp;oacute;ng l&amp;agrave;nh hơn. B&amp;aacute;c sĩ Mary E., chuy&amp;ecirc;n khoa về sinh tố trị liệu tại Arkansas (Mỹ) đề nghị liều lượng 5000 mg sinh tố C mỗi ng&amp;agrave;y (uống mỗi lần 1 vi&amp;ecirc;n 1000 mg, c&amp;aacute;ch v&amp;agrave;i tiếng một lần. Sinh tố n&amp;agrave;y kh&amp;ocirc;ng g&amp;acirc;y nguy hiểm khi d&amp;ugrave;ng ở liều lượng n&amp;oacute;i tr&amp;ecirc;n).&lt;br /&gt;\r\n	- Sinh tố E: Gi&amp;uacute;p cho vết bỏng ch&amp;oacute;ng l&amp;agrave;nh hơn sau khi liền da. Mỗi ng&amp;agrave;y uống một vi&amp;ecirc;n sinh tố E loại 400 IU. Chờ cho vết bỏng kh&amp;ocirc;ng c&amp;ograve;n phồng l&amp;ecirc;n nữa m&amp;agrave; bắt đầu kh&amp;ocirc; lại với lớp da non mầu hồng đỏ th&amp;igrave; hằng ng&amp;agrave;y lấy dầu b&amp;ocirc;i l&amp;ecirc;n chỗ da đ&amp;oacute; cho đến khi l&amp;agrave;nh hẳn.&lt;/p&gt;', 'nhung-viec-can-lam-khi-bi-bong', '', '', '', '', '', '', 0, 0, 'upload/tri-bong.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 11:00:03', 'admin', '2013-10-04 11:01:47');
INSERT INTO `media` VALUES (29, 'default13808595951', '', 'media_blog', '[170]', 'admin', 'Thể dục tốt cho sức khỏe tim mạch', '', '', 'vn', '&lt;p&gt;\r\n	Một lối sống &amp;iacute;t vận động l&amp;agrave; một trong những yếu tố nguy cơ h&amp;agrave;ng đầu dẫn đến&amp;nbsp;bệnh tim mạch. May mắn thay, đ&amp;oacute; l&amp;agrave; một yếu tố nguy cơ m&amp;agrave; bạn c&amp;oacute; thể t&amp;aacute;c động đến được. Thường xuy&amp;ecirc;n tập thể dục, đặc biệt l&amp;agrave; thể dục nhịp điệu, c&amp;oacute; rất nhiều lợi &amp;iacute;ch...&lt;/p&gt;', '&lt;p&gt;\r\n	Một lối sống &amp;iacute;t vận động l&amp;agrave; một trong những yếu tố nguy cơ h&amp;agrave;ng đầu dẫn đến&amp;nbsp;bệnh tim mạch. May mắn thay, đ&amp;oacute; l&amp;agrave; một yếu tố nguy cơ m&amp;agrave; bạn c&amp;oacute; thể t&amp;aacute;c động đến được. Thường xuy&amp;ecirc;n tập thể dục, đặc biệt l&amp;agrave; thể dục nhịp điệu, c&amp;oacute; rất nhiều lợi &amp;iacute;ch. N&amp;oacute; c&amp;oacute; thể:&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Tăng cường sức khỏe hệ thống tim mạch.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Cải thiện lưu th&amp;ocirc;ng m&amp;aacute;u v&amp;agrave; h&amp;ocirc; hấp tốt hơn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Cải thiện triệu chứng suy tim.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Tăng mức năng lượng, do đ&amp;oacute; bạn c&amp;oacute; thể hoạt động nhiều hơn m&amp;agrave; kh&amp;ocirc;ng dễ bị mệt mỏi hoặc kh&amp;oacute; thở.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Tăng sức dẻo dai&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Hạ huyết &amp;aacute;p.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Cải thiện sự c&amp;acirc;n bằng v&amp;agrave; t&amp;iacute;nh linh hoạt của cơ thể.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Tăng cường sức mạnh của xương.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Gi&amp;uacute;p giảm mỡ cơ thể v&amp;agrave; gi&amp;uacute;p bạn đạt được một trọng lượng c&amp;acirc;n bằng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Cải thiện giấc ngủ&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Giảm stress, lo &amp;acirc;u v&amp;agrave; trầm cảm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; L&amp;agrave;m cho bạn cảm thấy thoải m&amp;aacute;i v&amp;agrave; thư gi&amp;atilde;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Tr&amp;ocirc;ng bạn cảm thấy tự tin về d&amp;aacute;ng vẻ bề ngo&amp;agrave;i v&amp;agrave; cảm thấy khỏe mạnh hơn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;L&amp;agrave;m thế n&amp;agrave;o để bắt đầu?&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trước khi bắt đầu một chế độ tập luyện, n&amp;ecirc;n hỏi &amp;yacute; kiến của b&amp;aacute;c sĩ về:&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thay đổi thuốc: C&amp;aacute;c loại thuốc mới rất c&amp;oacute; thể ảnh hưởng đến phản ứng của bạn khi tập thể dục.&lt;/p&gt;\r\n&lt;p&gt;\r\n	N&amp;acirc;ng c&amp;aacute;c vật nặng: L&amp;agrave;m c&amp;aacute;c việc vặt trong nh&amp;agrave; c&amp;oacute; thể khiến cho một số người mệt mỏi. Chắc chắn rằng chỉ l&amp;agrave;m những g&amp;igrave; bạn c&amp;oacute; thể l&amp;agrave;m m&amp;agrave; kh&amp;ocirc;ng g&amp;acirc;y mệt mỏi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c b&amp;agrave;i tập an to&amp;agrave;n: Cần tham khảo &amp;yacute; kiến của b&amp;aacute;c sĩ trước khi bạn n&amp;acirc;ng tạ, chạy bộ hay bơi lội.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;http://www.vietnamcircus.com.vn/images/stories/danh-ba-web/theduc03.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;B&amp;agrave;i tập thể dục n&amp;agrave;o l&amp;agrave; tốt nhất?&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c b&amp;agrave;i tập thể dục được chia th&amp;agrave;nh 3 loại cơ bản:&lt;/p&gt;\r\n&lt;p&gt;\r\n	-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; K&amp;eacute;o căng: l&amp;agrave;m gi&amp;atilde;n c&amp;aacute;c cơ bắp. Duỗi thẳng c&amp;aacute;nh tay v&amp;agrave; ch&amp;acirc;n trước v&amp;agrave; sau khi tập thể dục gi&amp;uacute;p khởi động hoạt động c&amp;aacute;c cơ bắp v&amp;agrave; gi&amp;uacute;p ngăn ngừa c&amp;aacute;c tổn thương do căng cơ. Duỗi thường xuy&amp;ecirc;n sẽ l&amp;agrave;m cơ thể dẻo dai v&amp;agrave; linh hoạt hơn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Tim mạch v&amp;agrave; aerobic: ổn định hoạt động thể chất bằng c&amp;aacute;ch sử dụng c&amp;aacute;c nh&amp;oacute;m cơ lớn. Đ&amp;acirc;y l&amp;agrave; loại b&amp;agrave;i tập tăng cường hoạt động của hệ tim mạch, phổi v&amp;agrave; cải thiện khả năng sử dụng oxi của cơ thể. B&amp;agrave;i tập aerobic c&amp;oacute; lợi cho tim của bạn nhiều nhất. Theo thời gian, aerobic c&amp;oacute; thể gi&amp;uacute;p l&amp;agrave;m&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;giảm h&lt;/span&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;uyết &amp;aacute;p&lt;/span&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;, cải thiện hoạt động hệ h&amp;ocirc; hấp.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;- &amp;nbsp; &amp;nbsp; &amp;nbsp; C&amp;aacute;c b&amp;agrave;i tập aerobic bao gồm: đi bộ, chạy bộ, nhảy d&amp;acirc;y, đi xe đạp (trong ph&amp;ograve;ng hoặc ngo&amp;agrave;i trời), trượt băng, ch&amp;egrave;o thuyền, c&amp;aacute;c b&amp;agrave;i aerobic &amp;iacute;t vận động v&amp;agrave; aerobic dưới nước.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Tập thể dục trong thời gian bao l&amp;acirc;u để c&amp;oacute; tr&amp;aacute;i tim khỏe mạnh?&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;N&amp;oacute;i chung, để đạt được lợi &amp;iacute;ch tối đa, bạn n&amp;ecirc;n thường xuy&amp;ecirc;n tập trong khoảng thời gian từ 20-30 ph&amp;uacute;t, 3-4 lần/tuần.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'the-duc-tot-cho-tim-mach', '', '', '', '', '', '', 0, 0, 'upload/theduc03.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 11:06:35', 'admin', '2013-10-04 11:06:35');
INSERT INTO `media` VALUES (30, 'default13808597491', '', 'media_blog', '[170]', 'admin', 'Một bài tập đuổi 7 căn bệnh', '', '', 'vn', '&lt;p&gt;\r\n	&amp;quot;N&amp;oacute;i đến t&amp;aacute;c dụng ngừa bệnh tật, tập thể dục l&amp;agrave; một trong c&amp;aacute;c b&amp;agrave;i thuốc tốt nhất ch&amp;uacute;ng ta c&amp;oacute;&amp;quot;, David Katz, gi&amp;aacute;m đốc Trung t&amp;acirc;m nghi&amp;ecirc;n cứu ngăn ngừa ung thư Đại học Yale (My), cho biết. Dưới đ&amp;acirc;y l&amp;agrave; những rắc rối bạn c&amp;oacute; thể tr&amp;aacute;nh khỏi nhờ n&amp;oacute;.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;Lo lắng&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chạy bộ l&amp;agrave; c&amp;aacute;ch tự nhi&amp;ecirc;n gi&amp;uacute;p giảm lo lắng. Nhịp tim gia tăng sẽ l&amp;agrave;m giải ph&amp;oacute;ng c&amp;aacute;c chất dẫn truyền thần kinh gi&amp;uacute;p ổn định t&amp;acirc;m l&amp;yacute;. Một nghi&amp;ecirc;n cứu đăng tr&amp;ecirc;n tạp ch&amp;iacute; edicine &amp;amp; Science in Sports &amp;amp; Exercise cho biết chỉ tập thể dục cường độ trung b&amp;igrave;nh trong 30 ph&amp;uacute;t cũng đủ để khiến bạn thư th&amp;aacute;i nhiều giờ sau đ&amp;oacute;. Về l&amp;acirc;u d&amp;agrave;i, những người thường xuy&amp;ecirc;n tập thể dục &amp;iacute;t thấy stress, lo lắng v&amp;agrave; trầm cảm hơn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	V&amp;igrave; thế, nếu c&amp;oacute; thể, h&amp;atilde;y bước ra ngo&amp;agrave;i trời. Rất nhiều nghi&amp;ecirc;n cứu cho thấy kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh mang lại tinh thần phấn chấn.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;taptheduc-jpg-1366972730_500x0.jpg&quot; src=&quot;http://l.f13.img.vnecdn.net/2013/04/26/taptheduc-jpg-1366972730_500x0.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Ảnh:&amp;nbsp;blog.fitnessvideostore.com&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Buồn ngủ ban ng&amp;agrave;y&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thay v&amp;igrave; phải d&amp;ugrave;ng c&amp;agrave; ph&amp;ecirc; để giữ tỉnh t&amp;aacute;o, h&amp;atilde;y đứng l&amp;ecirc;n vận động. Những người thực hiện đ&amp;uacute;ng theo khuyến c&amp;aacute;o l&amp;agrave; tập thể dục 150 ph&amp;uacute;t mỗi tuần th&amp;igrave; giảm đến 65% t&amp;igrave;nh trạng ngủ ng&amp;agrave;y so với những người kh&amp;ocirc;ng l&amp;agrave;m như vậy, một nghi&amp;ecirc;n cứu năm 2011 t&amp;igrave;m thấy.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Người chăm tập thể dục thường đi v&amp;agrave;o giấc ngủ nhanh hơn, &amp;iacute;t bị thức giấc giữa đ&amp;ecirc;m v&amp;agrave; giảm được nguy cơ rối loạn giấc ngủ&amp;quot;, đồng t&amp;aacute;c giả của nghi&amp;ecirc;n cứu Brad Cardina tại Đại học bang Oregon, cho biết.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tuy nhi&amp;ecirc;n, tập thể dục ngay trước khi đi ngủ cũng kh&amp;ocirc;ng tốt, v&amp;igrave; n&amp;oacute; đẩy cơ thể v&amp;agrave;o trạng th&amp;aacute;i hưng phấn cao độ. N&amp;ecirc;n tập c&amp;aacute;ch giờ ngủ &amp;iacute;t nhất 3 tiếng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Đau lưng&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c b&amp;oacute; cơ xung quanh xương sống của bạn trở n&amp;ecirc;n k&amp;eacute;m đ&amp;agrave;n hồi theo tuổi t&amp;aacute;c, việc ngồi lỳ b&amp;ecirc;n m&amp;aacute;y t&amp;iacute;nh cả ng&amp;agrave;y c&amp;agrave;ng l&amp;agrave;m ch&amp;uacute;ng r&amp;atilde; rời hơn. Khi đ&amp;oacute;, nghỉ ngơi kh&amp;ocirc;ng phải l&amp;agrave; c&amp;aacute;ch hợp l&amp;yacute;. C&amp;aacute;c nghi&amp;ecirc;n cứu cho thấy tập thể dục lại duy tr&amp;igrave; sức khỏe tốt hơn cả. N&amp;oacute; gi&amp;uacute;p giảm đau 30 tới 80% trong v&amp;ograve;ng 10-12 tuần, theo Wayne Westcott, nh&amp;agrave; khoa học về thể dục tại Đại học Quincy ở Massachusetts.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;Iacute;t ham muốn t&amp;igrave;nh dục&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một v&amp;iacute; dụ cụ thể về điều n&amp;agrave;y: Tr&amp;ecirc;n một nghi&amp;ecirc;n cứu đăng ở tạp ch&amp;iacute; Sexual Medicine, những chị em chạy bộ tr&amp;ecirc;n m&amp;aacute;y tập trong 20 ph&amp;uacute;t th&amp;igrave; hứng khởi hơn hẳn khi xem phim &amp;quot;n&amp;oacute;ng&amp;quot;, so với nh&amp;oacute;m kh&amp;ocirc;ng tập thể dục.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Tập thể dục l&amp;agrave;m tăng tuần ho&amp;agrave;n đến mọi bộ phận của cơ thể bạn&amp;quot;, chuy&amp;ecirc;n gia về thể dục Alyssa Dweck khẳng định, v&amp;agrave; điều đ&amp;oacute; sẽ đảm bảo cho ch&amp;uacute;ng ta vui vẻ hơn tr&amp;ecirc;n giường.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Về mặt tinh thần, việc tập thể dục thường xuy&amp;ecirc;n gi&amp;uacute;p bạn vượt qua được &amp;aacute;m ảnh về th&amp;acirc;n thể, loại bỏ những mệt mỏi hay stress triền mi&amp;ecirc;n vốn cản trở bạn c&amp;oacute; hưng phấn y&amp;ecirc;u đương.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Th&amp;egrave;m ăn v&amp;ocirc; độ&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Khi vật lộn với cơn th&amp;egrave;m ăn, n&amp;atilde;o của bạn g&amp;agrave;o l&amp;ecirc;n &amp;quot;cho t&amp;ocirc;i th&amp;ecirc;m dopamine!&amp;quot; - đ&amp;acirc;y l&amp;agrave; chất dẫn truyền thần kinh đổ về trung t&amp;acirc;m nhận phần thưởng trong n&amp;atilde;o. Bạn c&amp;oacute; thể l&amp;agrave;m thỏa m&amp;atilde;n cơn kh&amp;aacute;t n&amp;agrave;y bằng m&amp;oacute;n ăn ưa th&amp;iacute;ch, hoặc bằng một b&amp;agrave;i tập thể dục. Cả hai c&amp;aacute;ch đều l&amp;agrave;m tăng vọt lượng dopamine, nhưng chỉ c&amp;oacute; c&amp;aacute;ch thứ hai kh&amp;ocirc;ng g&amp;acirc;y ảnh hưởng đến sức khỏe.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Hệ miễn dịch yếu ớt&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	B&amp;agrave;i tập ngo&amp;agrave;i trời l&amp;agrave; phương thuốc chống cảm lạnh tự nhi&amp;ecirc;n, l&amp;ocirc;i k&amp;eacute;o c&amp;aacute;c tế b&amp;agrave;o miễn dịch chui ra khỏi &amp;quot;vỏ ốc&amp;quot; v&amp;agrave; h&amp;ograve;a v&amp;agrave;o mạch m&amp;aacute;u, từ đ&amp;oacute; ch&amp;uacute;ng sẽ tấn c&amp;ocirc;ng những kẻ x&amp;acirc;m lược virus, vi khuẩn. Đ&amp;oacute; l&amp;agrave; l&amp;yacute; do v&amp;igrave; sao việc tập thể dục 5 ng&amp;agrave;y một tuần l&amp;agrave;m giảm nguy cơ bị ốm đi 43%.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Những cơn bốc hỏa&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trong thời kỳ m&amp;atilde;n kinh v&amp;agrave; nhiều năm sau đ&amp;oacute;, 80% c&amp;aacute;c chị em gặp phải triệu chứng l&amp;agrave; những cơn bốc hỏa v&amp;agrave; to&amp;aacute;t mồ h&amp;ocirc;i v&amp;agrave;o ban đ&amp;ecirc;m. Tập thể dục để gi&amp;uacute;p bạn c&amp;oacute; c&amp;acirc;n nặng vừa phải đồng thời l&amp;agrave;m giảm stress - những yếu tố c&amp;oacute; thể k&amp;iacute;ch hoạt cơn bốc hỏa.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', 'mot-bai-tap-duoi-7-can-benh', '', '', '', '', '', '', 0, 0, 'upload/taptheduc-jpg-1366972730_500x0.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 11:09:09', 'admin', '2013-10-04 11:09:09');
INSERT INTO `media` VALUES (31, 'default13808600261', '', 'media_blog', '[170]', 'admin', 'Thời gian tập thể dục tốt nhất cho sức khỏe', '', '', 'vn', '&lt;p&gt;\r\n	Một số người cho rằng tập thể dục đều đặn l&amp;uacute;c 6 giờ s&amp;aacute;ng để tinh thần sảng kho&amp;aacute;i, chuẩn bị cho một ng&amp;agrave;y l&amp;agrave;m việc mới, nhưng cũng c&amp;oacute; người cho rằng đi dạo sau bữa tối sẽ gi&amp;uacute;p ngủ ngon hơn. Vậy đ&amp;acirc;u l&amp;agrave; thời gian luyện tập chuẩn nhất cho sức khỏe của bạn?&lt;/p&gt;', '&lt;div&gt;\r\n	M&amp;ocirc;̣t nh&amp;oacute;m chuy&amp;ecirc;n gia cho rằng, con người n&amp;ecirc;n t&amp;acirc;̣p th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng th&amp;igrave; c&amp;oacute; lợi hơn l&amp;agrave; t&amp;acirc;̣p bu&amp;ocirc;̉i t&amp;ocirc;́i, nhưng nh&amp;oacute;m chuy&amp;ecirc;n gia kh&amp;aacute;c kh&amp;ocirc;ng t&amp;aacute;n th&amp;agrave;nh v&amp;agrave; cho c&amp;oacute; &amp;yacute; ki&amp;ecirc;́n ngược lại.&lt;/div&gt;\r\n&lt;div&gt;\r\n	V&amp;ecirc;̀ mặt khoa học th&amp;igrave; sao, nh&amp;oacute;m n&amp;agrave;o đ&amp;uacute;ng? Bạn h&amp;atilde;y cũng t&amp;igrave;m hi&amp;ecirc;̉u lợi th&amp;ecirc;́ của hai thời đi&amp;ecirc;̉m th&amp;ecirc;̉ dục n&amp;agrave;y đ&amp;ecirc;̉ t&amp;igrave;m ra c&amp;acirc;u trả lời cho m&amp;igrave;nh nh&amp;eacute;:&lt;/div&gt;\r\n&lt;div&gt;\r\n	Lợi th&amp;ecirc;́ của vi&amp;ecirc;̣c th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;1. Duy tr&amp;igrave; đ&amp;ocirc;̀ng h&amp;ocirc;̀ sinh học&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Nhi&amp;ecirc;̀u người phải đi l&amp;agrave;m, th&amp;acirc;̣m ch&amp;iacute; l&amp;agrave; v&amp;ecirc;̀ mu&amp;ocirc;̣n n&amp;ecirc;n kh&amp;ocirc;ng c&amp;oacute; nhi&amp;ecirc;̀u thời gian cho gia đ&amp;igrave;nh, những bữa t&amp;ocirc;́i, chuy&amp;ecirc;̣n tr&amp;ograve;... v&amp;acirc;̣y n&amp;ecirc;n đương nhi&amp;ecirc;n cũng kh&amp;ocirc;ng c&amp;oacute; thời gian đ&amp;ecirc;̉ t&amp;acirc;̣p th&amp;ecirc;̉ dục. Phương &amp;aacute;n họ chọn l&amp;agrave; t&amp;acirc;̣p th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Th&amp;oacute;i quen d&amp;acirc;̣y sớm th&amp;ecirc;̉ dục sẽ thi&amp;ecirc;́t l&amp;acirc;̣p v&amp;agrave;o đ&amp;ocirc;̀ng h&amp;ocirc;̀ sinh học của cơ th&amp;ecirc;̉ m&amp;ocirc;̣t giờ cụ th&amp;ecirc;̉. N&amp;ecirc;́u bi&amp;ecirc;́t duy tr&amp;igrave; đ&amp;ocirc;̀ng h&amp;ocirc;̀ sinh học n&amp;agrave;y, bạn sẽ th&amp;acirc;́y mọi vi&amp;ecirc;̣c di&amp;ecirc;̃n ra r&amp;acirc;́t t&amp;ocirc;́t.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;2. Kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Thời gian t&amp;acirc;̣p th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng của chị em thường l&amp;agrave; trong khoảng 5-7 giờ s&amp;aacute;ng. V&amp;agrave;o thời đi&amp;ecirc;̉m n&amp;agrave;y, m&amp;acirc;̣t đ&amp;ocirc;̣ giao th&amp;ocirc;ng chưa đ&amp;ocirc;ng n&amp;ecirc;n kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh hơn, bạn sẽ cảm th&amp;acirc;́y sảng kho&amp;aacute;i v&amp;agrave; gi&amp;uacute;p h&amp;ecirc;̣ tu&amp;acirc;̀n ho&amp;agrave;n của bạn hoạt đ&amp;ocirc;̣ng t&amp;ocirc;́t hơn. Hơn nữa, s&amp;ocirc;́ người tham gia t&amp;acirc;̣p th&amp;ecirc;̉ dục cũng rải r&amp;aacute;c đ&amp;ecirc;́n 8 giờ s&amp;aacute;ng n&amp;ecirc;n bạn cũng kh&amp;ocirc;ng phải lo chuy&amp;ecirc;̣n qu&amp;aacute; đ&amp;ocirc;ng đ&amp;uacute;c.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;3. Thuận tiện&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Về cơ bản, n&amp;ecirc;́u th&amp;iacute;ch, t&amp;ocirc;́i h&amp;ocirc;m trước bạn c&amp;oacute; th&amp;ecirc;̉ mặc cả đ&amp;ocirc;̀ th&amp;ecirc;̉ thao đi ngủ (tuy nhi&amp;ecirc;n, vi&amp;ecirc;̣c n&amp;agrave;y kh&amp;ocirc;ng được khuy&amp;ecirc;́n kh&amp;iacute;ch). V&amp;agrave; s&amp;aacute;ng h&amp;ocirc;m sau bạn thức d&amp;acirc;̣y v&amp;agrave; chỉ c&amp;acirc;̀n b&amp;acirc;̣t đĩa DVD l&amp;agrave; đ&amp;atilde; c&amp;oacute; th&amp;ecirc;̉ t&amp;acirc;̣p b&amp;agrave;i t&amp;acirc;̣p m&amp;igrave;nh ưa th&amp;iacute;ch. Hoặc n&amp;ecirc;́u kh&amp;ocirc;ng th&amp;igrave; bạn cũng c&amp;oacute; th&amp;ecirc;̉ nhanh ch&amp;oacute;ng ra khỏi nh&amp;agrave; v&amp;agrave; h&amp;ograve;a v&amp;agrave;o d&amp;ograve;ng người cũng th&amp;iacute;ch th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng như bạn m&amp;ocirc;̣t c&amp;aacute;ch nhanh ch&amp;oacute;ng.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;a href=&quot;http://image.phunuonline.com.vn/news/2012/20120816/fckimage/tap-the-duc.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://image.phunuonline.com.vn/news/2012/20120816/fckimage/tap-the-duc.jpg&quot; title=&quot;undefined&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;&amp;nbsp;4. Bữa s&amp;aacute;ng khỏe mạnh&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Sau khi v&amp;acirc;̣n đ&amp;ocirc;̣ng, bao giờ bạn cũng mu&amp;ocirc;́n nạp năng lượng cho cơ th&amp;ecirc;̉. N&amp;ecirc;́u t&amp;acirc;̣p th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng, sau đ&amp;oacute; bạn sẽ c&amp;oacute; m&amp;ocirc;̣t bữa s&amp;aacute;ng ngon l&amp;agrave;nh. Bạn cũng kh&amp;ocirc;ng c&amp;acirc;̀n phải qu&amp;aacute; lo lắng v&amp;ecirc;̀ lượng calo m&amp;igrave;nh ti&amp;ecirc;u thụ, v&amp;igrave; lượng calo n&amp;agrave;y sẽ cung c&amp;acirc;́p năng lượng cho bạn trong cả ng&amp;agrave;y.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		N&amp;ecirc;́u t&amp;acirc;̣p th&amp;ecirc;̉ dục bu&amp;ocirc;̉i t&amp;ocirc;́i, sau đ&amp;oacute; lại ăn nhiều th&amp;igrave; bạn sẽ kh&amp;ocirc;ng thể ti&amp;ecirc;u thụ hết chỗ thức ăn đ&amp;oacute;. V&amp;acirc;̣y n&amp;ecirc;n, sau khi t&amp;acirc;̣p th&amp;ecirc;̉ dục t&amp;ocirc;́i, n&amp;ecirc;́u mu&amp;ocirc;́n kh&amp;ocirc;ng bị tăng c&amp;acirc;n th&amp;igrave; bạn đừng ăn nhi&amp;ecirc;̀u nh&amp;eacute;.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Lợi thế của vi&amp;ecirc;̣c th&amp;ecirc;̉ dục v&amp;agrave;o buổi tối&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;1. Xả stress, tr&amp;aacute;nh tăng c&amp;acirc;n&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		C&amp;aacute;c nghi&amp;ecirc;n cứu đ&amp;atilde; k&amp;ecirc;́t lu&amp;acirc;̣n rằng t&amp;igrave;nh trạng căng thẳng c&amp;oacute; th&amp;ecirc;̉ sẽ khi&amp;ecirc;́n bạn tăng c&amp;acirc;n, bởi khi căng thẳng, cơ th&amp;ecirc;̉ sẽ sản sinh ra hormone cortisol, hormone n&amp;agrave;y cũng c&amp;oacute; th&amp;ecirc;̉ l&amp;agrave;m tăng ham mu&amp;ocirc;́n ăn u&amp;ocirc;́ng n&amp;ecirc;n khi&amp;ecirc;́n bạn kh&amp;oacute; ki&amp;ecirc;̀m ch&amp;ecirc;́. K&amp;ecirc;́t quả l&amp;agrave; bạn ăn nhi&amp;ecirc;̀u hơn b&amp;igrave;nh thường, trọng lượng cũng tăng nhanh hơn.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		Tuy nhi&amp;ecirc;n, khi bạn t&amp;acirc;̣p th&amp;ecirc;̉ dục bu&amp;ocirc;̉i t&amp;ocirc;́i sẽ gi&amp;uacute;p bạn giảm căng thẳng, nh&amp;acirc;́t l&amp;agrave; những căng thẳng trong c&amp;ocirc;ng vi&amp;ecirc;̣c h&amp;agrave;ng ng&amp;agrave;y. Từ đ&amp;oacute;, những người c&amp;oacute; th&amp;oacute;i quen t&amp;acirc;̣p th&amp;ecirc;̉ dục bu&amp;ocirc;̉i t&amp;ocirc;́i sẽ giảm hẳn xu hướng ăn u&amp;ocirc;́ng m&amp;acirc;́t ki&amp;ecirc;̉m so&amp;aacute;t v&amp;agrave; n&amp;ecirc;́u bi&amp;ecirc;́t duy tr&amp;igrave; sự ki&amp;ecirc;̉m so&amp;aacute;t n&amp;agrave;y th&amp;igrave; bạn sẽ kh&amp;ocirc;ng lo tăng c&amp;acirc;n.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;2. D&amp;ecirc;̃ d&amp;agrave;ng đăng k&amp;iacute; tại c&amp;aacute;c ph&amp;ograve;ng t&amp;acirc;̣p&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		N&amp;ecirc;́u so với những người thường xuy&amp;ecirc;n t&amp;acirc;̣p th&amp;ecirc;̉ dục s&amp;aacute;ng th&amp;igrave; những ai th&amp;ecirc;̉ dục t&amp;ocirc;́i sẽ c&amp;oacute; cơ h&amp;ocirc;̣i được t&amp;acirc;̣p tại ph&amp;ograve;ng t&amp;acirc;̣p cao hơn. V&amp;igrave; nhi&amp;ecirc;̀u cơ sở, ph&amp;ograve;ng t&amp;acirc;̣p kh&amp;ocirc;ng sẵn s&amp;agrave;ng mở cửa từ l&amp;uacute;c 5 giờ s&amp;aacute;ng cho mọi người đ&amp;ecirc;́n t&amp;acirc;̣p. Đ&amp;ecirc;́n ph&amp;ograve;ng t&amp;acirc;̣p c&amp;oacute; m&amp;ocirc;̣t lợi th&amp;ecirc;́ l&amp;agrave; được c&amp;aacute;c hu&amp;acirc;́n luy&amp;ecirc;̣n vi&amp;ecirc;n hướng d&amp;acirc;̃n n&amp;ecirc;n bạn c&amp;oacute; th&amp;ecirc;̉ được t&amp;acirc;̣p những b&amp;agrave;i t&amp;acirc;̣p b&amp;agrave;i bản v&amp;agrave; t&amp;ocirc;́t cho sức khỏe.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;3. Gi&amp;acirc;́c ngủ ngon&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		M&amp;ocirc;̣t v&amp;agrave;i v&amp;ograve;ng đi b&amp;ocirc;̣ quanh khu t&amp;acirc;̣p th&amp;ecirc;̉ cũng gi&amp;uacute;p bạn thư gi&amp;atilde;n, giải tỏa t&amp;acirc;m trạng r&amp;acirc;́t nhi&amp;ecirc;̀u. Nhờ đ&amp;oacute; m&amp;agrave; cơ th&amp;ecirc;̉ bạn d&amp;ecirc;̃ d&amp;agrave;ng đi v&amp;agrave;o gi&amp;acirc;́c ngủ sau đ&amp;oacute;. Nghi&amp;ecirc;n cứu cho thấy rằng thiếu ngủ, ngủ kh&amp;ocirc;ng &amp;quot;ngon&amp;quot; gi&amp;acirc;́c cũng l&amp;agrave;m tăng c&amp;aacute;c hormone cortisol căng thẳng, c&amp;oacute; thể dẫn đến ăn qu&amp;aacute; nhiều v&amp;agrave; tăng c&amp;acirc;n.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		T&amp;oacute;m lại, d&amp;ugrave; l&amp;agrave; th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng hay bu&amp;ocirc;̉i t&amp;ocirc;́i th&amp;igrave; đ&amp;ecirc;̀u c&amp;oacute; những lợi th&amp;ecirc;́ ri&amp;ecirc;ng. Vi&amp;ecirc;̣c lựa chọn th&amp;ecirc;̉ dục bu&amp;ocirc;̉i s&amp;aacute;ng hay t&amp;ocirc;́i phụ thu&amp;ocirc;̣c v&amp;agrave;o đi&amp;ecirc;̀u ki&amp;ecirc;̣n sinh hoạt v&amp;agrave; cu&amp;ocirc;̣c s&amp;ocirc;́ng của m&amp;ocirc;̃i người. Nhưng cho d&amp;ugrave; l&amp;agrave; th&amp;ecirc;̉ dục l&amp;uacute;c n&amp;agrave;o th&amp;igrave; bạn cũng c&amp;acirc;̀n đảm bảo t&amp;ocirc;́t cho sức khỏe.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=&quot;text-align: right;&quot;&gt;\r\n		&lt;em&gt;Nguồn:&amp;nbsp;afamily.vn&lt;/em&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'thoi-gian-tap-the-duc-tot-nhat-cho-suc-khoe', '', '', '', '', '', '', 0, 0, 'upload/the_duc_2.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 11:13:46', 'admin', '2013-10-04 11:13:46');
INSERT INTO `media` VALUES (32, 'default13808602041', '', 'media_blog', '[170]', 'admin', 'Các bài thể dục tập tốt cho vòng 2 của bạn', '', '', 'vn', '&lt;p&gt;\r\n	Rất nhiều chị em đ&amp;atilde; &amp;aacute;p dụng biện ph&amp;aacute;p giảm mỡ bụng, thu gọn &amp;quot;v&amp;ograve;ng 2&amp;quot; theo c&amp;aacute;ch nhịn ăn, lắc v&amp;ograve;ng, h&amp;uacute;t mỡ thừa&amp;hellip; nhưng kh&amp;ocirc;ng phải ai cũng đạt được kết quả như &amp;yacute;.&lt;/p&gt;', '&lt;div&gt;\r\n	Bụng l&amp;agrave; bộ phận dễ t&amp;iacute;ch mỡ nhanh nhất v&amp;agrave; khiến nhiều chị em cảm thấy mất tự tin khi diện c&amp;aacute;c bộ đồ b&amp;oacute; s&amp;aacute;t. Hơn nữa, &amp;quot;v&amp;ograve;ng 2&amp;quot; t&amp;iacute;ch tụ nhiều mỡ thừa c&amp;ograve;n khiến bạn c&amp;oacute; nguy cơ mắc nhiều bệnh, đặc biệt l&amp;agrave; c&amp;aacute;c bệnh li&amp;ecirc;n quan đến tim mạch,&amp;nbsp;tiểu đường, huyết &amp;aacute;p&amp;hellip;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div id=&quot;irc_mimg&quot; style=&quot;text-align: center;&quot;&gt;\r\n		&lt;a href=&quot;http://tinhducphunu.wordpress.com/2012/01/11/yeu-nong-nhiet-hon-nho-tap-the-duc/&quot; id=&quot;irc_mil&quot;&gt;&lt;img alt=&quot;Các bài thể dục tập tốt cho vòng 2 của bạn&quot; id=&quot;irc_mi&quot; src=&quot;http://suckhoegiadinh.edu.vn/wp-content/uploads/2013/09/yeu-nong-nhiet-hon-nho-tap-the-duc-1.jpg&quot; title=&quot;Các bài thể dục tập tốt cho vòng 2 của bạn&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Rất nhiều chị em đ&amp;atilde; &amp;aacute;p dụng biện ph&amp;aacute;p giảm mỡ bụng, thu gọn &amp;quot;v&amp;ograve;ng 2&amp;quot; theo c&amp;aacute;ch nhịn ăn, lắc v&amp;ograve;ng, h&amp;uacute;t mỡ thừa&amp;hellip; nhưng kh&amp;ocirc;ng phải ai cũng đạt được kết quả như &amp;yacute;.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Nếu bạn l&amp;agrave; người kh&amp;ocirc;ng muốn can thiệp bằng phẫu thuật hoặc nhịn ăn, ăn ki&amp;ecirc;ng khắc nghiệt th&amp;igrave; bạn h&amp;atilde;y thử tham khảo một loạt c&amp;aacute;c b&amp;agrave;i tập giảm mỡ bụng như dưới đ&amp;acirc;y xem sao. Chắc chắn bạn sẽ t&amp;igrave;m được b&amp;agrave;i tập ph&amp;ugrave; hợp với m&amp;igrave;nh v&amp;agrave; c&amp;oacute; hiệu quả cao nhất.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;1. B&amp;agrave;i tập Afata&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	- Đứng với 2 ch&amp;acirc;n s&amp;aacute;t nhau, tay phải chống tr&amp;ecirc;n h&amp;ocirc;ng, tay tr&amp;aacute;i giơ cao ngang đầu, khuỷu tay uốn cong.&lt;/div&gt;\r\n&lt;div&gt;\r\n	- Sau đ&amp;oacute;, nh&amp;uacute;n nhảy 2 ch&amp;acirc;n sao cho khi cong đầu gối phải về ph&amp;iacute;a trước th&amp;igrave; nhấc g&amp;oacute;t ch&amp;acirc; phải l&amp;ecirc;n để đ&amp;aacute;nh h&amp;ocirc;ng sang ph&amp;iacute;a tay phải. Sau đ&amp;oacute; đổi b&amp;ecirc;n, chuyển sang nh&amp;uacute;n ch&amp;acirc;n tr&amp;aacute;i.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;2. B&amp;agrave;i tập Padder&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Ngồi tr&amp;ecirc;n s&amp;agrave;n với đầu gối cong v&amp;agrave; b&amp;agrave;n ch&amp;acirc;n phẳng, giữ đầu của bạn thẳng bằng c&amp;aacute;ch đưa cả hai tay trước ngực, c&amp;aacute;nh tay mở rộng v&amp;agrave; hơi rộng hơn vai một ch&amp;uacute;t.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- N&amp;acirc;ng ch&amp;acirc;n cong cho đến khi cẳng ch&amp;acirc;n song song với s&amp;agrave;n nh&amp;agrave;. Đồng thời xoay th&amp;acirc;n 45 độ sang tr&amp;aacute;i, tay đưa như thể ch&amp;egrave;o thuyền, sau đ&amp;oacute; lại chuyển sang b&amp;ecirc;n phải.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- L&amp;agrave;m li&amp;ecirc;n tục như vậy cho tới khi bạn cảm thấy mỏi.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Để dễ d&amp;agrave;ng hơn khi tập, bạn c&amp;oacute; thể đặt ch&amp;acirc;n tr&amp;ecirc;n s&amp;agrave;n nh&amp;agrave;.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;3. B&amp;agrave;i tập đ&amp;aacute; ch&amp;acirc;n Pisao Kick&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Đứng với ch&amp;acirc;n rộng bằng h&amp;ocirc;ng, hai b&amp;ecirc;n khuỷu tay co lại, tay nắm để trước ngực.&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- N&amp;acirc;ng ch&amp;acirc;n v&amp;agrave; co đầu gối tr&amp;aacute;i về ph&amp;iacute;a ngực. Sau đ&amp;oacute; hơi xoay b&amp;agrave;n ch&amp;acirc;n tr&amp;aacute;i ngang ra, ch&amp;acirc;n phải đ&amp;aacute; sang ngang b&amp;ecirc;n phải, song song với s&amp;agrave;n nh&amp;agrave;, tay tr&amp;aacute;i nắm lại, đặt trước ngực, tay phải nắm để gần b&amp;ecirc;n h&amp;ocirc;ng.&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;- L&amp;agrave;m 5-10 lần th&amp;igrave; đổi ch&amp;acirc;n.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;4. B&amp;agrave;i tập Windshield Wiper&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Nằm ngửa với tay dang sang 2 b&amp;ecirc;n, thấp hơn vai một ch&amp;uacute;t, l&amp;ograve;ng b&amp;agrave;n tay &amp;uacute;p xuống v&amp;agrave; ch&amp;acirc;n giơ l&amp;ecirc;n ph&amp;iacute;a trần nh&amp;agrave;, hai ch&amp;acirc;n s&amp;aacute;t lại với nhau.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Thắt chặt cơ bụng v&amp;agrave; ch&amp;acirc;n c&amp;ugrave;ng đẩy hai ch&amp;acirc;n sang ph&amp;iacute;a b&amp;ecirc;n phải. L&amp;agrave;m hết sức bạn c&amp;oacute; thể, sau đ&amp;oacute; lại đẩy ch&amp;acirc;n về ph&amp;iacute;a b&amp;ecirc;n tr&amp;aacute;i.&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;span style=&quot;line-height: 1.67em;&quot;&gt;- L&amp;agrave;m li&amp;ecirc;n tục như vậy cho tới khi bạn cảm thấy mỏi.&lt;/span&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;strong&gt;5.&amp;nbsp;B&amp;agrave;i tập Flying Side Crunch&lt;/strong&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Đứng tr&amp;ecirc;n ch&amp;acirc;n tr&amp;aacute;i, đầu gối hơi cong, mở rộng ch&amp;acirc;n tr&amp;aacute;i sang b&amp;ecirc;n tr&amp;aacute;i, c&amp;aacute;c ng&amp;oacute;n ch&amp;acirc;n chạm xuống s&amp;agrave;n.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Thắt chặt cơ bụng v&amp;agrave; c&amp;uacute;i người khoảng 45 độ, giữ lưng thẳng, hai tay dang rộng hai b&amp;ecirc;n, thấp hơn vai một ch&amp;uacute;t (giống như một chiếc m&amp;aacute;y bay).&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- Giữ đầu gối tr&amp;aacute;i cong, đồng thời đ&amp;aacute; ch&amp;acirc;n phải l&amp;ecirc;n cao nhất c&amp;oacute; thể, sau khi ch&amp;acirc;n phải chạm đất lại tiếp tục đ&amp;aacute;.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		- L&amp;agrave;m li&amp;ecirc;n tục như vậy tới khi cảm thấy mỏi th&amp;igrave; đổi sang ch&amp;acirc;n tr&amp;aacute;i.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'cac-bai-tap-the-duc-tot-cho-vong-2', '', '', '', '', '', '', 0, 0, 'upload/yeu-nong-nhiet-hon-nho-tap-the-duc-1.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 11:16:44', 'admin', '2013-10-04 11:16:44');
INSERT INTO `media` VALUES (33, 'default13808606431', '', 'media_blog', '[169]', 'admin', 'Lợi ích &#039;trăm đường&#039; từ trái nho', '', '', 'vn', '&lt;p&gt;\r\n	Nho chứa 70-80% nước v&amp;agrave; một lượng nhỏ đường 15-30%, mang lại nhiều lợi &amp;iacute;ch sức khỏe m&amp;agrave; ch&amp;uacute;ng ta kh&amp;ocirc;ng thể ngờ tới...&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;Chữa bệnh hen suyễn&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nho c&amp;oacute; khả năng chữa khỏi bệnh hen suyễn v&amp;igrave; c&amp;oacute; thể khắc phục hậu quả của cơn hen. Tại Ai Cập, người bị hen suyễn được khuy&amp;ecirc;n ăn quả nho.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;nho-2267-1380814790.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://m.f13.img.vnecdn.net/2013/10/03/nho-2267-1380814790.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p style=&quot;text-align: center;&quot;&gt;\r\n					Nho rất c&amp;oacute; lợi cho sức khỏe con người.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Điều trị t&amp;aacute;o b&amp;oacute;n&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nho c&amp;oacute; chứa cellulose, axit hữu cơ v&amp;agrave; đường, l&amp;agrave; một thực phẩm nhuận tr&amp;agrave;ng gi&amp;uacute;p điều trị t&amp;aacute;o b&amp;oacute;n. Do đ&amp;oacute;, nho c&amp;oacute; thể giải quyết được vấn đề t&amp;aacute;o b&amp;oacute;n m&amp;atilde;n t&amp;iacute;nh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Chữa chứng đau nửa đầu&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;ch hiệu quả nhất để loại bỏ chứng đau nửa đầu l&amp;agrave; d&amp;ugrave;ng nước &amp;eacute;p nho ch&amp;iacute;n v&amp;agrave;o mỗi buổi s&amp;aacute;ng sớm h&amp;agrave;ng ng&amp;agrave;y.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Ngăn ngừa c&amp;aacute;c bệnh về tim&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nho đỏ ngăn ngừa cục m&amp;aacute;u đ&amp;ocirc;ng bằng c&amp;aacute;ch th&amp;uacute;c đẩy mức độ nitric oxide trong m&amp;aacute;u. N&amp;oacute; cũng l&amp;agrave; chất chống &amp;ocirc;xy h&amp;oacute;a tự nhi&amp;ecirc;n gi&amp;uacute;p giảm mức cholesterol LDL, gi&amp;uacute;p tr&amp;aacute;nh được những tắc nghẽn mạch m&amp;aacute;u. Đối với những bệnh nh&amp;acirc;n bệnh tim c&amp;oacute; thể th&amp;ecirc;m nho v&amp;agrave;o chế độ ăn để l&amp;agrave;m giảm cơn đau v&amp;agrave; đ&amp;aacute;nh trống ngực.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;L&amp;agrave;m giảm chứng kh&amp;oacute; ti&amp;ecirc;u&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ăn nho l&amp;agrave;m giảm k&amp;iacute;ch ứng dạ d&amp;agrave;y cũng như chứng kh&amp;oacute; ti&amp;ecirc;u. V&amp;igrave; n&amp;oacute; l&amp;agrave; một thức ăn nhẹ, cũng c&amp;oacute; thể gi&amp;uacute;p đỡ trong việc chữa rối loạn ti&amp;ecirc;u h&amp;oacute;a.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Tr&amp;aacute;nh mệt mỏi&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trong nho c&amp;oacute; h&amp;agrave;m lượng sắt lớn, v&amp;igrave; vậy uống nước &amp;eacute;p nho sau một buổi tập luyện hoặc khi mệt mỏi sẽ gi&amp;uacute;p bạn tr&amp;aacute;nh mệt mỏi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Ngăn ngừa mất thị lực&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Khi bạn gi&amp;agrave; đi, tầm nh&amp;igrave;n của bạn bị ảnh hưởng dần dần. Giai đoạn n&amp;agrave;y được gọi l&amp;agrave; tho&amp;aacute;i h&amp;oacute;a điểm v&amp;agrave;ng, l&amp;agrave; một mất m&amp;aacute;t li&amp;ecirc;n quan đến tuổi của thị lực. Nhưng bạn c&amp;oacute; thể ngăn chặn điều n&amp;agrave;y bằng c&amp;aacute;ch ăn 3 khẩu phần nho h&amp;agrave;ng ng&amp;agrave;y v&amp;igrave; n&amp;oacute; sẽ l&amp;agrave;m giảm 36% nguy cơ tho&amp;aacute;i h&amp;oacute;a điểm v&amp;agrave;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;L&amp;agrave;m giảm sự ph&amp;aacute;t triển của tế b&amp;agrave;o ung thư​&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Axit caffeic v&amp;agrave; bioflavonoids c&amp;oacute; trong nho l&amp;agrave; hai chất dinh dưỡng chống ung thư. N&amp;oacute; gi&amp;uacute;p việc hấp thụ vitamin C v&amp;agrave; duy tr&amp;igrave; c&amp;aacute;c m&amp;ocirc; li&amp;ecirc;n kết khỏe mạnh trong cơ thể. Bioflavonoids giảm sự ph&amp;aacute;t triển của tế b&amp;agrave;o ung thư v&amp;agrave; cũng gi&amp;uacute;p ti&amp;ecirc;u diệt ch&amp;uacute;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Chống virus&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nho đi k&amp;egrave;m với đặc t&amp;iacute;nh kh&amp;aacute;ng khuẩn, hiệu quả trong cuộc chiến chống virus cũng như c&amp;aacute;c khối u.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;L&amp;agrave;m chậm qu&amp;aacute; tr&amp;igrave;nh l&amp;atilde;o h&amp;oacute;a&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c resveratrol trong nho c&amp;oacute; khả năng ảnh hưởng đến qu&amp;aacute; tr&amp;igrave;nh l&amp;atilde;o h&amp;oacute;a. N&amp;oacute; k&amp;iacute;ch hoạt c&amp;aacute;c enzym l&amp;agrave;m chậm qu&amp;aacute; tr&amp;igrave;nh l&amp;atilde;o h&amp;oacute;a đ&amp;oacute; gi&amp;uacute;p tăng cường sự ổn định DNA v&amp;agrave; n&amp;acirc;ng cao tuổi thọ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Tăng cường hệ miễn dịch&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cụ thể, c&amp;aacute;c hợp chất stilbenoid n&amp;agrave;y gồm resveratrol trong nho đỏ. Ch&amp;uacute;ng phối hợp với vitamin D gi&amp;uacute;p l&amp;agrave;m tăng t&amp;iacute;nh năng gien CAMP của con người, l&amp;agrave; một loại gene đ&amp;oacute;ng vai tr&amp;ograve; quan trọng trong hệ miễn dịch.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: right;&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'loi-ich-tram-duong-tu-trai-nho', '', '', '', '', '', 'Theo Dân Việt (Magforwomen)', 0, 0, 'upload/nho-2267-1380814790.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 11:24:03', 'admin', '2013-10-04 11:24:03');
INSERT INTO `media` VALUES (34, 'default13808608261', '', 'media_blog', '[169]', 'admin', 'Món ăn phòng, trị bệnh trong mùa thu', '', '', 'vn', '&lt;p&gt;\r\n	Vịt nấu hạt sen, nước củ m&amp;agrave;i, nước b&amp;aacute;ch hợp nấu m&amp;iacute;a... l&amp;agrave; những m&amp;oacute;n n&amp;ecirc;n d&amp;ugrave;ng bồi bổ trong m&amp;ugrave;a thu để da dẻ mịn m&amp;agrave;ng, ph&amp;ograve;ng c&amp;aacute;c bệnh h&amp;ocirc; hấp, đại tr&amp;agrave;ng.&lt;/p&gt;', '&lt;p&gt;\r\n	Lương y Đinh C&amp;ocirc;ng Bảy, Tổng thư k&amp;yacute; Hội Dược liệu TP HCM cho biết, trong m&amp;ugrave;a thu, người ta dễ bị c&amp;aacute;c bệnh h&amp;ocirc; hấp, bệnh của đại tr&amp;agrave;ng như đại tiện b&amp;iacute;, đại tiện t&amp;aacute;o, vi&amp;ecirc;m dạ d&amp;agrave;y, vi&amp;ecirc;m ruột cấp t&amp;iacute;nh, c&amp;aacute;c bệnh vi&amp;ecirc;m nhiễm như lỵ amip, thương h&amp;agrave;n, vi&amp;ecirc;m n&amp;atilde;o B, sốt r&amp;eacute;t&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	V&amp;agrave;o m&amp;ugrave;a thu, việc ăn uống, điều dưỡng cần ch&amp;uacute; &amp;yacute; b&amp;igrave;nh h&amp;ograve;a &amp;ocirc;n t&amp;aacute;o, kỵ c&amp;aacute;c thực phẩm h&amp;agrave;n lương hoặc t&amp;acirc;n nhiệt (cay, n&amp;oacute;ng). M&amp;ugrave;a thu cần kết hợp ăn uống bồi bổ v&amp;agrave; d&amp;ugrave;ng thuốc bổ dưỡng, chứ kh&amp;ocirc;ng chỉ đơn thuần &amp;aacute;p dụng ri&amp;ecirc;ng mặt n&amp;agrave;o.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;ch chế biến m&amp;oacute;n ăn c&amp;oacute; &amp;iacute;ch cho sức khỏe trong m&amp;ugrave;a thu:&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Nước ho&amp;agrave;i sơn (củ m&amp;agrave;i)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Củ mài.&quot; data-natural-width=&quot;0&quot; src=&quot;http://m.f13.img.vnecdn.net/2013/09/26/cu-mai-bac-ha-1357269305-3336-1380181680.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Củ m&amp;agrave;i.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Ho&amp;agrave;i sơn 150 g, rửa sạch gọt vỏ th&amp;aacute;i l&amp;aacute;t, cho v&amp;agrave;o nồi th&amp;ecirc;m &amp;iacute;t nước nấu lấy nước cốt. Ăn ho&amp;agrave;i sơn, uống nước, d&amp;ugrave;ng cho người bị lao phổi, ho, ra mồ h&amp;ocirc;i trộm hay tự ra mồ h&amp;ocirc;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ch&amp;aacute;o ho&amp;agrave;i sơn&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ho&amp;agrave;i sơn sống 120 g, gạo tẻ 50 g.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ho&amp;agrave;i sơn th&amp;aacute;i l&amp;aacute;t, gạo vo sạch, hai thứ nấu ch&amp;aacute;o, chia ăn nhiều lần trong ng&amp;agrave;y. C&amp;oacute; thể d&amp;ugrave;ng ho&amp;agrave;i sơn sống 60 g, &amp;yacute; dĩ nh&amp;acirc;n sống 60 g, hồng kh&amp;ocirc; 30 g, gạo tẻ 50 g, nấu th&amp;agrave;nh ch&amp;aacute;o nhừ để ăn trong ng&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nước b&amp;aacute;ch hợp&lt;/p&gt;\r\n&lt;p&gt;\r\n	B&amp;aacute;ch hợp tươi 2-3 quả, t&amp;aacute;ch m&amp;uacute;i l&amp;agrave;m đ&amp;ocirc;i rửa sạch, vắt lấy nước, uống với nước ấm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngo&amp;agrave;i ra c&amp;oacute; thể l&amp;agrave;m m&amp;oacute;n nước b&amp;aacute;ch hợp nấu đường bằng c&amp;aacute;ch b&amp;aacute;ch hợp t&amp;aacute;ch m&amp;uacute;i l&amp;agrave;m đ&amp;ocirc;i, rửa sạch, cho v&amp;agrave;o nồi th&amp;ecirc;m nước nấu nhừ, th&amp;ecirc;m đường trắng, d&amp;ugrave;ng lượng vừa đủ t&amp;ugrave;y l&amp;uacute;c.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hoặc m&amp;oacute;n nước b&amp;aacute;ch hợp nấu m&amp;iacute;a: B&amp;aacute;ch hợp t&amp;aacute;ch m&amp;uacute;i l&amp;agrave;m đ&amp;ocirc;i rửa sạch, cho v&amp;agrave;o nồi th&amp;ecirc;m nước nấu ch&amp;iacute;n, đổ v&amp;agrave;o nước m&amp;iacute;a, nước vắt c&amp;agrave; rốt mỗi thứ nửa ly, trộn đều. D&amp;ugrave;ng uống s&amp;aacute;ng v&amp;agrave; chiều, d&amp;ugrave;ng cho lao phổi ho hư nhiệt.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Tr&amp;agrave; ng&amp;acirc;n nhĩ&lt;/strong&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Ngân nhĩ.&quot; data-natural-width=&quot;0&quot; src=&quot;http://m.f13.img.vnecdn.net/2013/09/26/nam02jpg1355728992-5929-1380181680.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Ng&amp;acirc;n nhĩ.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Gồm mộc nhĩ trắng 20 g, đường ph&amp;egrave;n 20 g, tr&amp;agrave; tốt 15 g.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Rửa sạch mộc nhĩ trắng, cho v&amp;agrave;o nồi c&amp;ugrave;ng với đường ph&amp;egrave;n v&amp;agrave; nước vừa đủ để hầm cho nhừ. Ng&amp;acirc;m tr&amp;agrave; với nước s&amp;ocirc;i khoảng 5 ph&amp;uacute;t rồi lọc lấy nước cho v&amp;agrave;o nồi canh mộc nhĩ trắng, trộn đều.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ng&amp;agrave;y uống 1 thang, uống v&amp;agrave;o l&amp;uacute;c n&amp;agrave;o cũng được. T&amp;aacute;c dụng bổ &amp;acirc;m, nhuận phế, trừ đ&amp;agrave;m. Rất th&amp;iacute;ch hợp với những người c&amp;oacute; tạng gầy, da kh&amp;ocirc;, hay bị ho khan hoặc c&amp;oacute; đ&amp;agrave;m đặc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Song nhĩ thang&lt;/p&gt;\r\n&lt;p&gt;\r\n	Gồm mộc nhĩ trắng 10 g, mộc nhĩ đen (nấm tai m&amp;egrave;o) 10 g, đường ph&amp;egrave;n 30 g.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lấy hai loại mộc nhĩ trắng v&amp;agrave; đen đem ng&amp;acirc;m nước n&amp;oacute;ng cho nở, ngắt bỏ ch&amp;acirc;n, loại tạp chất, rửa sạch rồi cho v&amp;agrave;o b&amp;aacute;t c&amp;ugrave;ng với đường ph&amp;egrave;n v&amp;agrave; nước vừa đủ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đưa b&amp;aacute;t v&amp;agrave;o nồi hấp hoặc chưng c&amp;aacute;ch thuỷ khoảng 1 giờ cho mộc nhĩ ch&amp;iacute;n l&amp;agrave; được. Khi d&amp;ugrave;ng, ăn lu&amp;ocirc;n cả mộc nhĩ lẫn nước đường. Ng&amp;agrave;y d&amp;ugrave;ng 2 lần, trước bữa ăn 1-2 giờ. T&amp;aacute;c dụng bổ &amp;acirc;m, bổ thận, nhuận phế.&lt;/p&gt;\r\n&lt;p&gt;\r\n	M&amp;oacute;n n&amp;agrave;y rất th&amp;iacute;ch hợp với người bị xơ vữa động mạch, huyết &amp;aacute;p cao do can thận &amp;acirc;m hư, người thường ho hen do phế &amp;acirc;m hư.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nước ng&amp;acirc;n nhĩ, chuối ti&amp;ecirc;u&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ng&amp;acirc;n nhĩ 30 g, chuối ti&amp;ecirc;u 1 quả.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ng&amp;acirc;n nhĩ rửa sạch, th&amp;ecirc;m nước nấu nhừ, chuối ti&amp;ecirc;u th&amp;aacute;i đoạn ngắn c&amp;ugrave;ng nấu với ng&amp;acirc;n nhĩ một l&amp;aacute;t l&amp;agrave; c&amp;oacute; thể ăn được. Mỗi ng&amp;agrave;y ăn một b&amp;aacute;t.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nước vắt l&amp;ecirc; - củ sen - tỏi&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nước vắt quả l&amp;ecirc; 50 ml, nước vắt củ sen 30 ml, nước vắt tỏi 5 ml, tất cả c&amp;ugrave;ng trộn đều trong ly, một lần uống sạch, ng&amp;agrave;y 1 lần.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vịt hầm sa s&amp;acirc;m, ngọc tr&amp;uacute;c&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vịt trống 1 con, sa s&amp;acirc;m 20 g, ngọc tr&amp;uacute;c 10 g, rượu khai vị 15 ml, gừng tươi 5 g, h&amp;agrave;nh trắng 10 g, ti&amp;ecirc;u bột 5 g, muối ăn 5 g.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vịt l&amp;agrave;m sạch, mổ bỏ nội tạng v&amp;agrave; m&amp;oacute;ng, rửa sạch, để v&amp;agrave;o nước s&amp;ocirc;i trụng v&amp;agrave;i ph&amp;uacute;t, vớt ra nh&amp;uacute;ng v&amp;agrave;o nước lạnh rửa sạch. Sa s&amp;acirc;m, ngọc tr&amp;uacute;c rửa sạch, gừng h&amp;agrave;nh xắt miếng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chẻ đầu vịt l&amp;agrave;m đ&amp;ocirc;i, lấy 8-10 g sa s&amp;acirc;m để v&amp;agrave;o đầu vịt, rồi d&amp;ugrave;ng h&amp;agrave;nh l&amp;aacute; cột lại. Số sa s&amp;acirc;m, ngọc tr&amp;uacute;c, gừng tươi v&amp;agrave; h&amp;agrave;nh c&amp;ograve;n lại cho v&amp;agrave;o bụng vịt. Sau đ&amp;oacute; để v&amp;agrave;o thố, cho nước v&amp;agrave;o. Th&amp;ecirc;m muối, ti&amp;ecirc;u, rượu khai vị v&amp;agrave;o trộn đều, d&amp;ugrave;ng vải đậy k&amp;iacute;n rồi đặt v&amp;agrave;o nồi chưng 2 giờ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sau khi lấy thố vịt ra, bỏ gừng, h&amp;agrave;nh kh&amp;ocirc;ng d&amp;ugrave;ng. N&amp;ecirc;m muối, bột n&amp;ecirc;m cho vừa ăn l&amp;agrave; được.&lt;/p&gt;\r\n&lt;p&gt;\r\n	M&amp;oacute;n ăn n&amp;agrave;y c&amp;oacute; t&amp;aacute;c dụng bổ thận, &amp;iacute;ch tinh tủy, bổ phế, dứt ho suyễn, khử huyết ứ. Th&amp;iacute;ch hợp d&amp;ugrave;ng cho thận &amp;acirc;m hư, phế &amp;acirc;m hư, dẫn tới c&amp;aacute;c chứng hư lao ho suyễn, mồ h&amp;ocirc;i trộm, liệt dương, di tinh, lưng đau gối mỏi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Vịt nấu hạt sen&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;Vịt nấu hạt sen&quot; data-natural-width=&quot;0&quot; src=&quot;http://m.f13.img.vnecdn.net/2013/09/26/vit-nau-hat-sen-5934-1380181680.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Vịt nấu hạt sen.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Vịt 1 con, hạt sen 50 g, cải bẹ trắng 50 g, gừng 5 g, h&amp;agrave;nh 5 g, tỏi 10 g, muối một &amp;iacute;t.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hạt sen ng&amp;acirc;m nước ấm. Cải ng&amp;acirc;m nước, rửa sạch. Vịt l&amp;agrave;m sạch, bỏ đu&amp;ocirc;i, m&amp;oacute;ng v&amp;agrave; nội tạng, ướp gừng, h&amp;agrave;nh, tỏi đập dập.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bỏ vịt v&amp;agrave; hạt v&amp;agrave;o nồi, đổ v&amp;agrave;o chừng nửa l&amp;iacute;t nước, d&amp;ugrave;ng lửa lớn nấu s&amp;ocirc;i. Sau đ&amp;oacute; vặn lửa nhỏ nấu th&amp;ecirc;m 45 ph&amp;uacute;t th&amp;igrave; cho cải v&amp;agrave;o, nấu đến khi nước s&amp;ocirc;i lại l&amp;agrave; được. Mỗi tuần ăn một lần.&lt;/p&gt;\r\n&lt;p&gt;\r\n	T&amp;aacute;c dụng bổ thận &amp;acirc;m, bổ phế, trừ ho, hạ huyết &amp;aacute;p.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vịt hầm ho&amp;agrave;i sơn, c&amp;acirc;u kỷ tử&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thịt vịt 100 g, c&amp;acirc;u kỷ tử 10 g, ho&amp;agrave;i sơn 30 g, gia vị c&amp;aacute;c loại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vịt l&amp;agrave;m sạch, cho v&amp;agrave;o nồi đất c&amp;ugrave;ng c&amp;aacute;c dược liệu, th&amp;ecirc;m nước vừa đủ để hầm nhừ rồi n&amp;ecirc;m gia vị, chia ăn v&amp;agrave;i lần trong ng&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	T&amp;aacute;c dụng bổ phế, bổ tinh kh&amp;iacute;, cường g&amp;acirc;n cốt, d&amp;ugrave;ng cho c&amp;aacute;c trường hợp phế kh&amp;iacute; suy, ho suyễn, cơ thể suy nhược, gầy c&amp;ograve;m, ốm yếu.&lt;/p&gt;\r\n&lt;p&gt;\r\n	G&amp;agrave; &amp;aacute;c hầm nhị đ&amp;ocirc;ng&lt;/p&gt;\r\n&lt;p&gt;\r\n	G&amp;agrave; &amp;aacute;c 1 con, thi&amp;ecirc;n m&amp;ocirc;n đ&amp;ocirc;ng 20 g, mạch m&amp;ocirc;n đ&amp;ocirc;ng 20 g, rượu khai vị 10 g, muối 4 g, bột n&amp;ecirc;m 3 g, gừng 5 g, h&amp;agrave;nh 10 g, ti&amp;ecirc;u bột 3 g.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thi&amp;ecirc;n m&amp;ocirc;n đ&amp;ocirc;ng tẩm nước cho ướt. Mạch m&amp;ocirc;n đ&amp;ocirc;ng ng&amp;acirc;m nước một đ&amp;ecirc;m, đập vỡ, lấy cọng cứng b&amp;ecirc;n trong ra, rửa sạch. G&amp;agrave; &amp;aacute;c nhổ l&amp;ocirc;ng, mổ bỏ nội tạng v&amp;agrave; m&amp;oacute;ng; gừng đập dập; h&amp;agrave;nh xắt kh&amp;uacute;c.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cho tất cả nguy&amp;ecirc;n liệu v&amp;agrave;o nồi chưng với 2.800 ml nước, d&amp;ugrave;ng lửa lớn nấu cho bốc hơi 35 ph&amp;uacute;t. N&amp;ecirc;m muối, bột n&amp;ecirc;m tinh g&amp;agrave;, ti&amp;ecirc;u bột v&amp;agrave;o l&amp;agrave; được.&lt;/p&gt;\r\n&lt;p&gt;\r\n	T&amp;aacute;c dụng bổ phế, bổ thận, tư &amp;acirc;m, bổ huyết, trừ ho suyễn, giảm b&amp;eacute;o ph&amp;igrave;.&lt;/p&gt;', 'mon-an-phong-tri-benh-trong-mua-thu', '', '', '', '', '', '', 0, 0, 'upload/cu-mai-bac-ha-1357269305-3336-1380181680.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 11:27:06', 'admin', '2013-10-04 11:27:06');
INSERT INTO `media` VALUES (35, 'default13808609601', '', 'media_blog', '[169]', 'admin', '&#039;Thần dược&#039; quế', '', '', 'vn', '&lt;p&gt;\r\n	D&amp;ugrave;ng 1 g quế mỗi ng&amp;agrave;y sẽ giảm đường huyết, giảm nguy cơ ung thư ruột kết, bệnh tim mạch. Hương quế gi&amp;uacute;p tăng cường tr&amp;iacute; n&amp;atilde;o.&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;\r\n	Quế kh&amp;ocirc;ng chỉ l&amp;agrave; gia vị nấu nướng m&amp;agrave; c&amp;ograve;n l&amp;agrave; vị thuốc thi&amp;ecirc;n nhi&amp;ecirc;n hữu &amp;iacute;ch.&amp;nbsp;Dưới đ&amp;acirc;y l&amp;agrave; những lợi &amp;iacute;ch tuyệt vời m&amp;agrave; quế mang lại cho sức khỏe, theo&amp;nbsp;Care 2.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;nocookie&quot; data-natural-width=&quot;0&quot; src=&quot;http://m.f13.img.vnecdn.net/2013/09/14/Cinnamon-2-2397-1379167493.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Ngo&amp;agrave;i c&amp;ocirc;ng dụng của một gia vị, quế c&amp;ograve;n cung cấp nhiều lợi &amp;iacute;ch cho sức khỏe. Ảnh:&amp;nbsp;nocookie&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Chống đ&amp;ocirc;ng m&amp;aacute;u&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cinnamaldehyde, th&amp;agrave;nh phần ch&amp;iacute;nh trong tinh dầu quế c&amp;oacute; thể ngăn ngừa đ&amp;ocirc;ng m&amp;aacute;u. Quế thực hiện điều n&amp;agrave;y th&amp;ocirc;ng qua ức chế việc sản sinh acid b&amp;eacute;o gọi l&amp;agrave; arachidonic từ m&amp;agrave;ng tiểu huyết cầu v&amp;agrave; giảm sự h&amp;igrave;nh th&amp;agrave;nh thromboxane A2, chất hỗ trợ đ&amp;ocirc;ng m&amp;aacute;u.&amp;nbsp;T&amp;aacute;c dụng ức chế sản sinh acid arachidonic cũng khiến quế trở th&amp;agrave;nh một chất kh&amp;aacute;ng vi&amp;ecirc;m tự nhi&amp;ecirc;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Chống vi khuẩn&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tinh dầu quế đ&amp;atilde; được chứng minh l&amp;agrave; c&amp;oacute; khả năng ngăn chặn sự ph&amp;aacute;t triển của nhiều loại nấm v&amp;agrave; vi khuẩn. Đặc t&amp;iacute;nh kh&amp;aacute;ng khuẩn n&amp;agrave;y hiệu quả đến nỗi những nghi&amp;ecirc;n cứu gần đ&amp;acirc;y cho thấy quế c&amp;oacute; thể được sử dụng để bảo quản thức ăn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Kiểm so&amp;aacute;t đường huyết&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Quế c&amp;oacute; khả năng chống oxy h&amp;oacute;a mạnh, đồng thời cũng c&amp;oacute; thể gi&amp;uacute;p điều h&amp;ograve;a đường huyết nhờ khả năng gi&amp;uacute;p cơ thể kiểm so&amp;aacute;t cảm gi&amp;aacute;c đ&amp;oacute;i v&amp;agrave; cải thiện mức độ nhạy cảm của hormone insulin ở những người tiểu đường tu&amp;yacute;p 2.&lt;/p&gt;\r\n&lt;p&gt;\r\n	D&amp;ugrave;ng 1 g quế mỗi ng&amp;agrave;y gi&amp;uacute;p giảm đường huyết, triglycerides, LDL cholesterol (cholesterol xấu) v&amp;agrave; cholesterol to&amp;agrave;n phần đối với những người mắc tiểu đường. Ngo&amp;agrave;i ra, quế c&amp;ograve;n gi&amp;uacute;p giảm nguy cơ mắc bệnh tim mạch ở những người tiểu đường tu&amp;yacute;p 2.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Tăng cường chức năng n&amp;atilde;o&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngửi m&amp;ugrave;i hương quế c&amp;oacute; thế gi&amp;uacute;p đẩy mạnh hoạt động n&amp;atilde;o. Quế gi&amp;uacute;p tăng cường khả năng nhận thức của những người tham gia v&amp;agrave;o nghi&amp;ecirc;n cứu với c&amp;aacute;c hoạt động:&lt;/p&gt;\r\n&lt;p&gt;\r\n	- C&amp;aacute;c nhiệm vụ đ&amp;ograve;i hỏi qu&amp;aacute; tr&amp;igrave;nh tập trung.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Nhận diện v&amp;agrave; ghi nhớ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Sử dụng tr&amp;iacute; nhớ ngắn hạn hay tr&amp;iacute; nhớ l&amp;agrave;m việc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	- Vận động của thị gi&amp;aacute;c khi l&amp;agrave;m việc với chương tr&amp;igrave;nh m&amp;aacute;y t&amp;iacute;nh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Cải thiện sức khỏe ruột kết v&amp;agrave; bảo vệ cơ thể khỏi bệnh tim&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Quế l&amp;agrave; nguồn cung cấp chất xơ, canxi v&amp;agrave; những kho&amp;aacute;ng chất cần thiết kho&amp;aacute;ng chẳng hạn như mangan. Canxi c&amp;ugrave;ng với chất xơ gi&amp;uacute;p loại bỏ muối mật ra khỏi cơ thể, nhờ đ&amp;oacute; bảo vệ v&amp;agrave; giảm nguy cơ ung thư ruột kết.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngo&amp;agrave;i ra, quế c&amp;ograve;n l&amp;agrave;m giảm nồng độ cholesterol, ngăn ngừa xơ vữa động mạch v&amp;agrave; bệnh tim. Chất xơ c&amp;oacute; trong quế cũng rất hiệu quả đối với t&amp;aacute;o b&amp;oacute;n v&amp;agrave; ti&amp;ecirc;u chảy.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;T&amp;aacute;c dụng l&amp;agrave;m ấm&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Từ l&amp;acirc;u, quế đ&amp;atilde; được sử dụng trong y học truyền thống nhờ c&amp;aacute;c t&amp;aacute;c dụng l&amp;agrave;m ấm của n&amp;oacute;, đặc biệt khi bị cảm lạnh hay cảm c&amp;uacute;m.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', 'than-duong-que', '', '', '', '', '', '', 0, 0, 'upload/Cinnamon-2-2397-1379167493.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 11:29:20', 'admin', '2013-10-04 11:29:20');
INSERT INTO `media` VALUES (36, 'default13808611301', '', 'media_blog', '[169]', 'admin', 'Tác dụng trị bệnh của trái măng cụt', '', '', 'vn', '&lt;p&gt;\r\n	Kh&amp;aacute;ng thể xanthone t&amp;igrave;m thấy trong tr&amp;aacute;i măng cụt được chứng minh c&amp;oacute; t&amp;aacute;c dụng chống &amp;ocirc;xy h&amp;oacute;a, bảo vệ tế b&amp;agrave;o gan, kh&amp;aacute;ng ung thư...&lt;/p&gt;', '&lt;p&gt;\r\n	C&amp;aacute;c chuy&amp;ecirc;n gia dinh dưỡng chuy&amp;ecirc;n trang&amp;nbsp;Women&amp;#39;s Health&amp;nbsp;cho biết, măng cụt l&amp;agrave; loại tr&amp;aacute;i c&amp;acirc;y chứa nhiều kh&amp;aacute;ng thể chống &amp;ocirc;xy h&amp;oacute;a xathone nhất. Hợp chất n&amp;agrave;y được chứng minh c&amp;oacute; nhiều t&amp;aacute;c dụng ph&amp;ograve;ng v&amp;agrave; hỗ trợ điều bị bệnh, đẩy l&amp;ugrave;i qu&amp;aacute; tr&amp;igrave;nh l&amp;atilde;o h&amp;oacute;a, ti&amp;ecirc;u diệt vi khuẩn trong dạ d&amp;agrave;y...&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Th&amp;ocirc;ng thường khi ăn măng cụt, mọi người c&amp;oacute; th&amp;oacute;i quen chỉ ăn phần thịt m&amp;agrave;u trắng, bỏ đi lớp vỏ cứng b&amp;ecirc;n ngo&amp;agrave;i. Song theo c&amp;aacute;c nh&amp;agrave; khoa học, từ ruột tới vỏ của loại tr&amp;aacute;i c&amp;acirc;y n&amp;agrave;y đều chứa hợp chất&amp;nbsp;xathone, lượng chất n&amp;agrave;y được t&amp;igrave;m thấy nhiều nhất trong lớp vỏ m&amp;agrave;u t&amp;iacute;m c&amp;oacute; vị hơi đắng. Nếu biết tận dụng, tr&amp;aacute;i măng cụt c&amp;oacute; thể vừa ăn vừa l&amp;agrave;m thuốc, mang lại rất nhiều lợi &amp;iacute;ch ph&amp;ograve;ng v&amp;agrave; chữa bệnh như sau:&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;1. Giảm b&amp;eacute;o&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thịt tr&amp;aacute;i măng cụt m&amp;aacute;t, ngọt, mọng nước, thơm ngon, chứa nhiều chất xơ, đạm, canxi, sắt nhưng lại c&amp;oacute; h&amp;agrave;m lượng calo thấp. Ch&amp;iacute;nh v&amp;igrave; thế người b&amp;eacute;o ăn măng cụt kh&amp;ocirc;ng lo bị tăng c&amp;acirc;n.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;mang-cut-2-1378717522.jpg&quot; src=&quot;http://m.f13.img.vnecdn.net/2013/09/09/mang-cut-2-1378717522.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				Măng cụt c&amp;oacute; rất nhiều t&amp;aacute;c dụng chữa bệnh. Ảnh:&amp;nbsp;Women&amp;#39;s Health.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;2. Giảm cholesterol xấu&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cholesterol xấu khi bị l&amp;atilde;o h&amp;oacute;a c&amp;oacute; thể sinh ra mảng b&amp;aacute;m trong th&amp;agrave;nh mạch m&amp;aacute;u v&amp;agrave; g&amp;acirc;y bệnh. Kh&amp;aacute;ng thể xathone trong tr&amp;aacute;i măng cụt được chứng minh hiệu quả đẩy l&amp;ugrave;i qu&amp;aacute; tr&amp;igrave;nh l&amp;atilde;o h&amp;oacute;a của cholesterol xấu v&amp;agrave; ngăn ngừa h&amp;igrave;nh th&amp;agrave;nh mảng b&amp;aacute;m.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;3. Ti&amp;ecirc;u diệt vi khuẩn c&amp;oacute; hại trong dạ d&amp;agrave;y&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nghi&amp;ecirc;n cứu l&amp;acirc;m s&amp;agrave;ng cho thấy xathone c&amp;oacute; khả năng ức chế sự sinh s&amp;ocirc;i của vi khuẩn c&amp;oacute; hại, cải thiện trạng th&amp;aacute;i c&amp;acirc;n bằng trong dạ d&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;4. Chống l&amp;atilde;o h&amp;oacute;a&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngo&amp;agrave;i xathone, c&amp;aacute;c nh&amp;agrave; nghi&amp;ecirc;n cứu c&amp;ograve;n t&amp;igrave;m thấy trong th&amp;agrave;nh phần tr&amp;aacute;i măng cụt c&amp;oacute; nhiều chất h&amp;oacute;a học c&amp;oacute; lợi. Những chất n&amp;agrave;y được đ&amp;aacute;nh gi&amp;aacute; &amp;quot;đỉnh cao&amp;quot; trong t&amp;aacute;c dụng chống l&amp;atilde;o h&amp;oacute;a.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;5. Cải thiện t&amp;igrave;nh trạng nhiễm tr&amp;ugrave;ng đường tiết niệu&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Phụ nữ lớn tuổi hay bị chứng &amp;quot;tiểu kh&amp;ocirc;ng kiểm so&amp;aacute;t&amp;quot; do sự tho&amp;aacute;i h&amp;oacute;a của cơ xương chậu. Đ&amp;agrave;n &amp;ocirc;ng lớn tuổi cũng hay gặp vấn đề về tuyến tiền liệt khiến lượng nước tiểu dễ bị ứ đọng ở b&amp;agrave;ng quang. Hệ lụy của cả hai trường hợp n&amp;agrave;y c&amp;oacute; thể dẫn đến t&amp;igrave;nh trạng nhiễm tr&amp;ugrave;ng đường tiết niệu. Hợp chất xathone trong tr&amp;aacute;i măng cụt khi hấp thụ v&amp;agrave;o cơ thể c&amp;oacute; t&amp;aacute;c dụng kh&amp;aacute;ng vi tr&amp;ugrave;ng, gi&amp;uacute;p cải thiện t&amp;igrave;nh trạng vi&amp;ecirc;m nhiễm ở cả nam v&amp;agrave; nữ giới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;6. Khử m&amp;ugrave;i h&amp;ocirc;i miệng&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một trong những nguy&amp;ecirc;n nh&amp;acirc;n ch&amp;iacute;nh g&amp;acirc;y m&amp;ugrave;i h&amp;ocirc;i ở miệng l&amp;agrave; do vi khuẩn. Kh&amp;aacute;ng thể&amp;nbsp;xathone c&amp;oacute; t&amp;aacute;c dụng diệt khuẩn, giảm đ&amp;aacute;ng kể m&amp;ugrave;i ở miệng. C&amp;oacute; thể ăn hoặc d&amp;ugrave;ng nước măng cụt s&amp;uacute;c miệng đều c&amp;oacute; t&amp;aacute;c dụng n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;7. Ph&amp;ograve;ng ngừa v&amp;agrave; hỗ trợ điều trị ung thư&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Măng cụt chứa đến 40 loại xathone kh&amp;aacute;c nhau, chất chống &amp;ocirc;xy h&amp;oacute;a n&amp;agrave;y c&amp;ograve;n c&amp;oacute; t&amp;aacute;c dụng kh&amp;aacute;ng vi&amp;ecirc;m, ph&amp;ograve;ng ngừa ung thư v&amp;agrave; hỗ trợ ti&amp;ecirc;u diệt tế b&amp;agrave;o ung thư.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;8. Đem lại cảm gi&amp;aacute;c hưng phấn&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c nh&amp;agrave; khoa học c&amp;ograve;n t&amp;igrave;m thấy trong th&amp;agrave;nh phần tr&amp;aacute;i măng cụt c&amp;oacute; chất trytophan axit, n&amp;oacute; c&amp;oacute; mối li&amp;ecirc;n hệ với serotonin - một chất dẫn truyền thần kinh, gi&amp;uacute;p điều h&amp;ograve;a giấc ngủ v&amp;agrave; đem lại cảm gi&amp;aacute;c hưng phấn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;9. Ph&amp;ograve;ng bệnh tiểu đường type 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Măng cụt l&amp;agrave; loại tr&amp;aacute;i c&amp;acirc;y kh&amp;aacute; l&amp;agrave;nh t&amp;iacute;nh được khuy&amp;ecirc;n d&amp;ugrave;ng cho người bị tiểu đường. B&amp;ecirc;n cạnh đ&amp;oacute;, n&amp;oacute; c&amp;ograve;n c&amp;oacute; t&amp;aacute;c dụng điều h&amp;ograve;a lượng đường trong m&amp;aacute;u v&amp;agrave; chống vi&amp;ecirc;m hiệu quả.&lt;/p&gt;', 'tac-dung-tri-benh-cua-trai-mang-cut', '', '', '', '', '', '', 0, 0, 'upload/mang-cut-2-1378717522.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 11:32:10', 'admin', '2013-10-04 11:32:10');
INSERT INTO `media` VALUES (37, 'default13808614261', '', 'media_blog', '[168]', 'admin', 'Các bệnh tim mạch thường gặp', '', '', 'vn', '&lt;p&gt;\r\n	Đ&amp;oacute; l&amp;agrave; c&amp;aacute;c bệnh: mạch v&amp;agrave;nh, tai biến mạch m&amp;aacute;u n&amp;atilde;o... Hiểu r&amp;otilde; về ch&amp;uacute;ng, ch&amp;uacute;ng ta c&amp;oacute; thể c&amp;oacute; biện ph&amp;aacute;p ph&amp;ograve;ng ngừa hoặc điều trị kịp thời....&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;Bệnh mạch v&amp;agrave;nh&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c triệu chứng ban đầu của bệnh động mạch v&amp;agrave;nh nhiều khi rất mơ hồ, thường l&amp;agrave; bằng những cảm gi&amp;aacute;c nặng ngực hay cơn đau thắt ngực b&amp;ecirc;n tr&amp;aacute;i. Trong chuy&amp;ecirc;n m&amp;ocirc;n c&amp;ograve;n gọi l&amp;agrave; cơn đau thắt ngực kh&amp;ocirc;ng ổn định. Cơn đau xuất hiện khi x&amp;uacute;c động, gắng sức v&amp;agrave; thường xuất hiện v&amp;agrave;o buổi s&amp;aacute;ng. C&amp;oacute; thể k&amp;egrave;m theo cao huyết &amp;aacute;p g&amp;acirc;y nhức đầu, ch&amp;oacute;ng mặt, cảm gi&amp;aacute;c kh&amp;oacute; thở.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tần suất c&amp;aacute;c cơn đau ng&amp;agrave;y c&amp;agrave;ng tăng v&amp;agrave; cường độ cơn đau c&amp;agrave;ng ng&amp;agrave;y c&amp;agrave;ng nặng v&amp;agrave; c&amp;oacute; thể đưa đến nhồi m&amp;aacute;u cơ tim cấp nếu kh&amp;ocirc;ng được điều trị đ&amp;uacute;ng v&amp;agrave; kịp thời. Tỉ lệ tử vong trong nhồi m&amp;aacute;u cơ tim cấp kh&amp;aacute; cao, nhất l&amp;agrave; trong ho&amp;agrave;n cảnh khả năng cấp cứu về tim mạch của nhiều bệnh viện ở Việt Nam c&amp;ograve;n nhiều hạn chế do thiếu nh&amp;acirc;n lực, trang thiết bị v&amp;agrave; việc vận chuyển bệnh nh&amp;acirc;n từ nơi ở đến bệnh viện cấp cứu c&amp;ograve;n nhiều hạn chế.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bệnh tuy kh&amp;aacute; nặng, nhưng ho&amp;agrave;n to&amp;agrave;n c&amp;oacute; thể ph&amp;ograve;ng ngừa được. Nhưng phải ng&amp;ograve;ng từ khi c&amp;ograve;n nhỏ, tức l&amp;agrave; ở tuổi thanh ni&amp;ecirc;n. Kh&amp;ocirc;ng n&amp;ecirc;n ăn qu&amp;aacute; nhiều chất b&amp;eacute;o, chất ngọt, giữ cho cơ thể một thể trạng l&amp;yacute; tưởng, r&amp;egrave;n luyện thể dục thể thao, kh&amp;ocirc;ng h&amp;uacute;t thuốc l&amp;aacute;, kh&amp;ocirc;ng ăn qu&amp;aacute; mặn. Nhất l&amp;agrave; giữ cho m&amp;igrave;nh một t&amp;acirc;m hồn tươi trẻ kh&amp;ocirc;ng qu&amp;aacute; lo lắng, tr&amp;aacute;nh mọi thứ stress trong cuộc sống.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Những người c&amp;oacute; yếu tố nguy cơ cao như gia đ&amp;igrave;nh c&amp;oacute; người bị nhồi m&amp;aacute;u cơ tim, b&amp;eacute;o ph&amp;igrave;, đ&amp;aacute;i th&amp;aacute;o đường, cao huyết &amp;aacute;p, xơ vữa động mạch&amp;hellip; rất cần đi kh&amp;aacute;m bệnh định kỳ v&amp;agrave; điều trị tốt c&amp;aacute;c bệnh nền để tr&amp;aacute;nh nguy cơ nhồi m&amp;aacute;u cơ tim cấp.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Tai biến mạch m&amp;aacute;u n&amp;atilde;o&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	N&amp;atilde;o l&amp;agrave; một trong những cơ quan nhận m&amp;aacute;u nhiều của hệ tuần ho&amp;agrave;n v&amp;agrave; c&amp;aacute;c tế b&amp;agrave;o thần kinh l&amp;agrave; những tế b&amp;agrave;o nhạy cảm với t&amp;igrave;nh trạng thiếu oxy nhất. Chỉ cần thiếu oxy 5 ph&amp;uacute;t l&amp;agrave; c&amp;aacute;c tế b&amp;agrave;o n&amp;atilde;o sẽ chết v&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; khả năng hồi phục.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c thể bệnh tai biến mạch m&amp;aacute;u n&amp;atilde;o hay gặp nhất c&amp;ograve;n gọi l&amp;agrave; đột quỵ b&amp;agrave;o gồm: co thắt mạch m&amp;aacute;u n&amp;atilde;o, thiếu m&amp;aacute;u n&amp;atilde;o tho&amp;aacute;ng qua, nhồi m&amp;aacute;u n&amp;atilde;o, vỡ mạch m&amp;aacute;u n&amp;atilde;o&amp;hellip; V&amp;agrave; nặng nhất l&amp;agrave; xuất huyết ồ ạt g&amp;acirc;y ngập n&amp;atilde;o thất l&amp;agrave;m cho bệnh nh&amp;acirc;n tử vong trong v&amp;ograve;ng 1 - 2 giờ đồng hồ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c dấu hiệu dễ nhận thấy nhất l&amp;agrave; bệnh nh&amp;acirc;n bị đau đầu dữ dội, ch&amp;oacute;ng mặt, tay ch&amp;acirc;n yếu hoặc liệt v&amp;agrave; đi v&amp;agrave;o h&amp;ocirc;n m&amp;ecirc;. Khả năng phục hồi của bệnh nh&amp;acirc;n phụ thuộc nhiều v&amp;agrave;o thể tai biến. Ở những thể nặng, bệnh nh&amp;acirc;n h&amp;ocirc;n m&amp;ecirc; s&amp;acirc;u tỉ lệ tử vong l&amp;ecirc;n đến tr&amp;ecirc;n 50%.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Việc đề ph&amp;ograve;ng quan trọng nhất l&amp;agrave; phải ph&amp;aacute;t hiện sớm bệnh cao huyết &amp;aacute;p v&amp;agrave; t&amp;igrave;nh trạng xơ vữa động mạch, để điều trị tốt. Cần phải thận trọng với những bệnh nh&amp;acirc;n c&amp;oacute; yếu tố nguy cơ cao như tuổi tr&amp;ecirc;n 50, b&amp;eacute;o ph&amp;igrave;, h&amp;uacute;t thuốc l&amp;aacute;, đ&amp;aacute;i th&amp;aacute;o đường&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Bệnh động mạch ngoại bi&amp;ecirc;n&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Động mạch ngoại vi l&amp;agrave; hệ thống gồm rất nhiều động mạch vừa v&amp;agrave; nhỏ, c&amp;oacute; nhiệm vụ đưa m&amp;aacute;u từ tim đi nu&amp;ocirc;i c&amp;aacute;c bộ phận của cơ thể. Đặc biệt l&amp;agrave; tứ chi. Động mạch bao gồm 3 lớp: lớp &amp;aacute;o ngo&amp;agrave;i, lớp &amp;aacute;o giữa v&amp;agrave; lớp nội mạc. Bệnh vi&amp;ecirc;m tắc động mạch ngoại vi c&amp;oacute; hai thể: bệnh Buerger l&amp;agrave; t&amp;igrave;nh trạng vi&amp;ecirc;m của 3 lớp th&amp;agrave;nh động mạch, xảy ra ở những bệnh nh&amp;acirc;n trẻ, tuổi dưới 40, nghiện thuốc l&amp;aacute; nặng. Bệnh k&amp;eacute;o d&amp;agrave;i nhiều năm, nhưng cuối c&amp;ugrave;ng đều phải đoạn chi nhất l&amp;agrave; chi dưới với tỉ lệ l&amp;ecirc;n đến 95% sau 5 năm mắc bệnh. Bệnh nh&amp;acirc;n nếu bỏ được thuốc l&amp;aacute; t&amp;igrave;nh trạng bệnh sẽ tốt l&amp;ecirc;n nhiều.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bệnh động mạch ngoại vi thứ hai hay gặp nhất l&amp;agrave; t&amp;igrave;nh trạng vi&amp;ecirc;m v&amp;agrave; tắc động mạch do xơ vữa động mạch, xảy ra ở những người bị bệnh cao huyết &amp;aacute;p v&amp;agrave; c&amp;oacute; rối loạn chuyển h&amp;oacute;a mỡ. Tổn thương xảy ra ở lớp nội mạc với những mảng xơ vữa l&amp;agrave;m hẹp l&amp;ograve;ng động mạch, g&amp;acirc;y thiếu m&amp;aacute;u ngoại vi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c triệu chứng ban đầu của bệnh c&amp;ograve;n kh&amp;aacute; mơ hồ. Thường th&amp;igrave; bắt đầu bằng t&amp;igrave;nh trạng đi lặc c&amp;aacute;ch hồi. Tức l&amp;agrave; bệnh nh&amp;acirc;n đi một đoạn v&amp;agrave;i trăm m&amp;eacute;t th&amp;igrave; đau nh&amp;oacute;i sau bắp ch&amp;acirc;n, cơn đau khiến bệnh nh&amp;acirc;n phải ngồi nghỉ khoảng 5 - 10 ph&amp;uacute;t sau hết đau v&amp;agrave; bệnh nh&amp;acirc;n c&amp;oacute; thể đi lại. C&amp;aacute;c cơn đau ng&amp;agrave;y c&amp;agrave;ng tăng l&amp;ecirc;n, đến một l&amp;uacute;c n&amp;agrave;o đ&amp;oacute; bệnh nh&amp;acirc;n đau ngay cả khi nghỉ ngơi v&amp;agrave; xuất hiện những vết lo&amp;eacute;t, hoại tử của chi&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bệnh c&amp;oacute; thể ph&amp;ograve;ng ngừa được bằng c&amp;aacute;ch kh&amp;ocirc;ng h&amp;uacute;t thuốc l&amp;aacute;, nhất l&amp;agrave; ở những gia đ&amp;igrave;nh đ&amp;atilde; c&amp;oacute; người bị bệnh Buerger. Điều trị tốt t&amp;igrave;nh trạng xơ vữa động mạch v&amp;agrave; rối loạn chuyển h&amp;oacute;a mỡ, chống b&amp;eacute;o ph&amp;igrave; v&amp;agrave; điều trị tốt đ&amp;aacute;i th&amp;aacute;o đường nếu c&amp;oacute;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Bệnh van tim hậu thấp tim&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bệnh van tim hậu thấp rất hay xảy ra ở những v&amp;ugrave;ng kh&amp;iacute; hậu ẩm ướt, nhiệt đới gi&amp;oacute; m&amp;ugrave;a như ở Việt Nam. Trước kia, do qu&amp;aacute; tr&amp;igrave;nh ph&amp;ograve;ng bệnh chưa tốt n&amp;ecirc;n tỉ lệ người Việt Nam mắc bệnh thấp tim kh&amp;aacute; cao tr&amp;ecirc;n thế giới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;D&amp;acirc;n gian thường n&amp;oacute;i c&amp;acirc;u: vi&amp;ecirc;m họng l&amp;agrave; t&amp;igrave;m đến khớp, khớp đớp tim v&amp;agrave; tim th&amp;igrave; t&amp;igrave;m gan để n&amp;oacute;i về mối tương quan của bệnh thấp tim. Bệnh do c&amp;oacute; nguy&amp;ecirc;n nh&amp;acirc;n do t&amp;igrave;nh trạng nhiễm vi tr&amp;ugrave;ng Streptococus beta Hemolytique. Khi bị nhiễm loại vi tr&amp;ugrave;ng n&amp;agrave;y, cơ thể sẽ sản sinh ra một loại kh&amp;aacute;ng thể chống lại n&amp;oacute;. M&amp;agrave; bản th&amp;acirc;n c&amp;aacute;c kh&amp;aacute;ng nguy&amp;ecirc;n l&amp;agrave; loại vi tr&amp;ugrave;ng lại c&amp;oacute; cấu tr&amp;uacute;c gần giống với cấu tr&amp;uacute;c của m&amp;ocirc; khớp v&amp;agrave; van tim. N&amp;ecirc;n khi kh&amp;aacute;ng thể tấn t&amp;ocirc;ng ti&amp;ecirc;u diệt vi tr&amp;ugrave;ng n&amp;oacute; cũng tấn c&amp;ocirc;ng l&amp;agrave;m tổn thương m&amp;ocirc; khớp v&amp;agrave; van tim lu&amp;ocirc;n, l&amp;agrave;m cho khớp bị sưng l&amp;ecirc;n, c&amp;ograve;n van tim th&amp;igrave; biến dạng g&amp;acirc;y ra hẹp hở van tim. Từ đ&amp;oacute; đưa đến suy tim, ứ huyết tại gan v&amp;agrave; l&amp;agrave;m suy chức năng gan như d&amp;acirc;n gian thường n&amp;oacute;i.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Bệnh thường xảy ra ở những phụ nữ trẻ, sau t&amp;igrave;nh trạng vi&amp;ecirc;m họng c&amp;oacute; sốt l&amp;agrave; t&amp;igrave;nh trạng mệt, kh&amp;oacute; thở&amp;hellip; nếu kh&amp;ocirc;ng điều trị đ&amp;uacute;ng c&amp;oacute; thể đưa đến suy tim v&amp;agrave; tử vong. Việc điều trị bệnh van tim hậu thấp cũng kh&amp;aacute; phức tạp v&amp;agrave; tốn k&amp;eacute;m cho bệnh nh&amp;acirc;n v&amp;igrave; van tim bị tổn thương trước kia hay sử dụng phẫu thuật nong van với dụng cụ, ng&amp;agrave;y nay c&amp;aacute;c trung t&amp;acirc;m phẫu thuật tim đều tiến h&amp;agrave;nh mổ tim mở với sử dụng tuần ho&amp;agrave;n ngo&amp;agrave;i cơ thể.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bệnh ho&amp;agrave;n to&amp;agrave;n c&amp;oacute; thể đề ph&amp;ograve;ng được bằng c&amp;aacute;ch cải thiện m&amp;ocirc;i trường sống ngay khi c&amp;ograve;n nhỏ. Tr&amp;aacute;nh lạnh qu&amp;aacute;, n&amp;oacute;ng qu&amp;aacute;, nh&amp;agrave; của v&amp;agrave; cơ quan l&amp;agrave;m việc phải sạch sẽ, n&amp;acirc;ng cao sức đề kh&amp;aacute;ng của cơ thể, điều trị triệt để c&amp;aacute;c bệnh mũi xoang. Nếu đ&amp;atilde; bị thấp tim phải sử dụng kh&amp;aacute;ng sinh dự ph&amp;ograve;ng nhiễm vi tr&amp;ugrave;ng Streptococus beta hemolytique đến năm 25 tuổi. C&amp;oacute; thể sử dụng thuốc uống mỗi ng&amp;agrave;y, hay sử dụng loại Penicilline c&amp;oacute; t&amp;aacute;c dụng chậm mỗi th&amp;aacute;ng ti&amp;ecirc;m một lần.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Bệnh tim bẩm sinh&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cho đến hiện nay, bệnh tim bẩm sinh l&amp;agrave; bệnh hay gặp nhất ở Việt Nam. C&amp;aacute;c chuy&amp;ecirc;n gia tim mạch ước t&amp;iacute;nh rằng: c&amp;oacute; khoảng 1 - 2% c&amp;aacute;c em b&amp;eacute; sinh ra mắc bệnh tim bẩm sinh từ nhẹ nhất như l&amp;agrave; c&amp;ograve;n ống động mạch, đến nặng nhất l&amp;agrave; ho&amp;aacute;n vị đại động mạch&amp;hellip; Ước t&amp;iacute;nh rằng c&amp;oacute; khoảng tr&amp;ecirc;n 50 tổn thương tim bẩm sinh. Hiện tại lu&amp;ocirc;n c&amp;oacute; khoảng hơn 100 ng&amp;agrave;n trẻ em bị bệnh tim bẩm sinh đang chờ mổ v&amp;agrave; cho d&amp;ugrave; c&amp;oacute; h&amp;agrave;ng chục trung tim mổ tim mở ra đời cũng kh&amp;ocirc;ng bao giờ giải quyết hết được.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bệnh thường biểu hiện bằng t&amp;igrave;nh trạng kh&amp;oacute; thở, hay bị vi&amp;ecirc;m phổi, t&amp;iacute;m t&amp;aacute;i v&amp;agrave; đứa trẻ thường bị suy dinh dưỡng nặng. Ng&amp;agrave;y xưa khi m&amp;agrave; phương tiện chẩn đo&amp;aacute;n c&amp;ograve;n th&amp;ocirc; sơ chỉ với c&amp;aacute;i ống nghe th&amp;igrave; việc x&amp;aacute;c định bệnh tim bẩm sinh đ&amp;ocirc;i khi hơi kh&amp;oacute;. Ng&amp;agrave;y nay với sự ra đời v&amp;agrave; ph&amp;aacute;t triển của si&amp;ecirc;u &amp;acirc;m m&amp;agrave;u về tim mạch th&amp;igrave; việc ph&amp;aacute;t hiện bệnh tim bẩm sinh v&amp;agrave; thể loại tim bẩm sinh đơn giản hơn nhiều.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Việc ph&amp;ograve;ng ngừa chủ yếu l&amp;agrave; người mẹ v&amp;agrave; người cha. Cha v&amp;agrave; mẹ phải c&amp;oacute; sức khoẻ tốt, kh&amp;ocirc;ng lớn tuổi mới sinh con, trong qu&amp;aacute; tr&amp;igrave;nh mang thai, nhất l&amp;agrave; 3 th&amp;aacute;ng đầu người mẹ kh&amp;ocirc;ng được tiếp x&amp;uacute;c với h&amp;oacute;a chất độc hại, X-quang, nhiễm si&amp;ecirc;u vi đặc biệt l&amp;agrave; bệnh rubeon.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Ph&amp;igrave;nh động mạch chủ b&amp;oacute;c t&amp;aacute;ch&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ph&amp;igrave;nh động mạch chủ b&amp;oacute;c t&amp;aacute;ch, nhất l&amp;agrave; ph&amp;igrave;nh động mạch chủ ngực, l&amp;agrave; một biến chứng rất nặng của ph&amp;igrave;nh động mạch chủ. Bệnh nh&amp;acirc;n c&amp;oacute; thể bị đau ngực dữ dội đến ngất đi. C&amp;oacute; nhiều trường hợp bệnh nh&amp;acirc;n tử vong ngay trong giai đoạn bệnh mới bắt đầu.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Nguy&amp;ecirc;n nh&amp;acirc;n vẫn l&amp;agrave; xơ vữa động mạch. Ở những bệnh nh&amp;acirc;n n&amp;agrave;y ở một v&amp;ugrave;ng yếu của th&amp;agrave;nh động mạch chủ như quai động mạch chủ ngực, phần dưới động mạch thận của động mạch chủ bụng sẽ ph&amp;igrave;nh ra, tạo cục m&amp;aacute;u đ&amp;ocirc;ng g&amp;acirc;y tắc l&amp;ograve;ng động mạch, hoặc tạo sự b&amp;oacute;c t&amp;aacute;ch l&amp;agrave;m th&amp;agrave;nh hai luồng th&amp;ocirc;ng v&amp;agrave; nặng hơn l&amp;agrave; vỡ t&amp;uacute;i ph&amp;igrave;nh g&amp;acirc;y tử vong.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Ph&amp;igrave;nh động mạch chủ b&amp;oacute;c t&amp;aacute;ch hoặc vỡ t&amp;uacute;i ph&amp;igrave;nh động mạch chủ cho tỉ lệ tử vong kh&amp;aacute; cao, l&amp;ecirc;n đến 95% nếu bệnh nh&amp;acirc;n đang ở nh&amp;agrave;. Việc mổ thay quai động mạch chủ cũng l&amp;agrave; một phẫu thuật rất lớn cần phải c&amp;oacute; m&amp;aacute;y tim phổi nh&amp;acirc;n tạo v&amp;agrave; tỉ lệ th&amp;agrave;nh c&amp;ocirc;ng cũng chỉ khoảng 40 - 50% m&amp;agrave; th&amp;ocirc;i.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Bệnh vi&amp;ecirc;m cơ tim&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bệnh vi&amp;ecirc;m cơ tim c&amp;oacute; thể g&amp;acirc;y ra t&amp;igrave;nh trạng đột tử. Bệnh c&amp;oacute; thể xảy ra ở những người khoẻ mạnh trước đ&amp;oacute; kh&amp;ocirc;ng hề bị bệnh tim. Khi cơ thể mệt mỏi c&amp;aacute;c loại si&amp;ecirc;u vi tr&amp;ugrave;ng x&amp;acirc;m nhập v&amp;agrave;o cơ thể tấn c&amp;ocirc;ng l&amp;ecirc;n cơ tim nhất l&amp;agrave; si&amp;ecirc;u vi tr&amp;ugrave;ng loại Coxacki. Ngo&amp;agrave;i ra c&amp;oacute; thể bị vi&amp;ecirc;m cơ tim do h&amp;oacute;a chất, do sự tăng qu&amp;aacute; nhiều của ho&amp;oacute;c-m&amp;ocirc;n tuyến gi&amp;aacute;p&amp;hellip; Ở những bệnh nh&amp;acirc;n n&amp;agrave;y, t&amp;igrave;nh trạng vi&amp;ecirc;m cơ tim c&amp;oacute; thể đưa đến suy tim v&amp;agrave; bệnh nh&amp;acirc;n bị tử vong nếu kh&amp;ocirc;ng ph&amp;aacute;t hiện ra v&amp;agrave; kh&amp;ocirc;ng được điều trị.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Việc ph&amp;ograve;ng ngừa chủ yếu l&amp;agrave; giữ cho cơ thể thỏe mạnh, khi hơi mệt cần phải đi kiểm tra tim mạch ngay, kh&amp;ocirc;ng l&amp;agrave;m việc qu&amp;aacute; sức v&amp;agrave; nhất l&amp;agrave; kh&amp;ocirc;ng để nhiễm c&amp;aacute;c loại h&amp;oacute;a chất. nếu c&amp;oacute; bệnh bướu cổ cường gi&amp;aacute;p với nồng độ ho&amp;oacute;c-m&amp;ocirc;n tuyến gi&amp;aacute;p cao th&amp;igrave; cần phải điều trị triệt để.&lt;/p&gt;', 'cac-benh-tim-mach-thuong-gap', '', '', '', '', '', '', 0, 0, 'upload/0310122.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 11:37:06', 'admin', '2013-10-04 11:37:06');
INSERT INTO `media` VALUES (38, 'default13808616791', '', 'media_blog', '[168]', 'admin', 'Gần 14% phụ nữ Việt Nam bị ung thư cổ tử cung', '', '', 'vn', '&lt;p&gt;\r\n	Ung thư cổ tử cung l&amp;agrave; một trong những bệnh phổ biến v&amp;agrave; thường gặp nhất ở phụ nữ, đứng thứ hai sau ung thư v&amp;uacute;...&lt;/p&gt;', '&lt;p&gt;\r\n	Theo thống k&amp;ecirc; của Bộ Y tế cho thấy tần suất mắc ung thư cổ tử cung ở Việt Nam c&amp;oacute; xu hướng gia tăng, với gần 14% phụ nữ mắc bệnh n&amp;agrave;y. Th&amp;ocirc;ng tin tr&amp;ecirc;n được đưa ra tại hội thảo S&amp;agrave;ng lọc ung thư cổ tử cung do Bộ Y tế tổ chức ng&amp;agrave;y 26-9 tại H&amp;agrave; Nội.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Gần 14% phụ nữ Việt Nam bị ung thư cổ tử cung - 1&quot; src=&quot;http://hcm.eva.vn/upload/3-2013/images/2013-09-30/1380556516-40-phunuvietconguycoungthucotucung_suckhoe_eva1.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Theo thống k&amp;ecirc; của Bộ Y tế cho thấy tần suất mắc ung thư cổ tử cung ở Việt Nam c&amp;oacute; xu hướng gia tăng, với gần 14% phụ nữ mắc bệnh n&amp;agrave;y. (Ảnh minh họa)&lt;/p&gt;\r\n&lt;p&gt;\r\n	B&amp;agrave; Lưu Thị Hồng, Vụ trưởng Vụ Sức khỏe b&amp;agrave; mẹ v&amp;agrave; trẻ em (Bộ Y tế), cho biết mỗi năm Việt Nam c&amp;oacute; khoảng 12.000 ca mắc mới bệnh ung thư cổ tử cung, trong đ&amp;oacute; c&amp;oacute; 2.500-5.600 ca tử vong. Nếu kh&amp;ocirc;ng c&amp;oacute; biện ph&amp;aacute;p can thiệp s&amp;agrave;ng lọc, dự ph&amp;ograve;ng v&amp;agrave; điều trị ung thư cổ tử cung th&amp;igrave; trong khoảng 10 năm nữa, tỉ lệ mắc mới v&amp;agrave; tử vong do bệnh n&amp;agrave;y sẽ tăng th&amp;ecirc;m khoảng 25%.Theo b&amp;agrave; Hồng, ung thư cổ tử cung l&amp;agrave; bệnh c&amp;oacute; thể ph&amp;aacute;t hiện sớm v&amp;agrave; dự ph&amp;ograve;ng được. Tuy nhi&amp;ecirc;n, phụ nữ Việt Nam vẫn chưa được s&amp;agrave;ng lọc định kỳ để ph&amp;aacute;t hiện sớm ung thư.&lt;/p&gt;', 'gan-14-phu-nu-viet-nam-bi-ung-thu-co-tu-cung', '', '', '', '', '', '', 0, 0, 'upload/1380556516-40-phunuvietconguycoungthucotucung_suckhoe_eva1.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'delete', '', '2013-10-04 11:45:53', 'admin', '2013-10-04 11:41:19');
INSERT INTO `media` VALUES (39, 'default13808617801', '', 'media_blog', '[168]', 'admin', 'Viêm bàng quang dẫn bạn đến nguy cơ vô sinh', '', '', 'vn', '&lt;p&gt;\r\n	Vi&amp;ecirc;m b&amp;agrave;ng quang l&amp;agrave; một trong những chứng nhiễm tr&amp;ugrave;ng rất phổ biến, chủ yếu do vi khuẩn đường ruột Escherichia coli, Staphyllococcus g&amp;acirc;y ra, thường &amp;ldquo;tấn c&amp;ocirc;ng&amp;rdquo; v&amp;agrave;o &amp;ldquo;ph&amp;aacute;i đẹp&amp;rdquo; hơn l&amp;agrave; &amp;ldquo;c&amp;aacute;nh m&amp;agrave;y r&amp;acirc;u&amp;rdquo;. Loại bệnh n&amp;agrave;y đem đến cảm gi&amp;aacute;c đau buốt khi đi tiểu. Song, đừng nghĩ rằng n&amp;oacute; chỉ ảnh hưởng đến đường tiểu tiện; vi&amp;ecirc;m b&amp;agrave;ng quang c&amp;ograve;n c&amp;oacute; thể dẫn đến v&amp;ocirc; sinh.&lt;/p&gt;', '&lt;p&gt;\r\n	Vi&amp;ecirc;m b&amp;agrave;ng quang l&amp;agrave; một trong những chứng nhiễm tr&amp;ugrave;ng rất phổ biến, chủ yếu do vi khuẩn đường ruột Escherichia coli, Staphyllococcus g&amp;acirc;y ra, thường &amp;ldquo;tấn c&amp;ocirc;ng&amp;rdquo; v&amp;agrave;o &amp;ldquo;ph&amp;aacute;i đẹp&amp;rdquo; hơn l&amp;agrave; &amp;ldquo;c&amp;aacute;nh m&amp;agrave;y r&amp;acirc;u&amp;rdquo;. Loại bệnh n&amp;agrave;y đem đến cảm gi&amp;aacute;c đau buốt khi đi tiểu. Song, đừng nghĩ rằng n&amp;oacute; chỉ ảnh hưởng đến đường tiểu tiện; vi&amp;ecirc;m b&amp;agrave;ng quang c&amp;ograve;n c&amp;oacute; thể dẫn đến v&amp;ocirc; sinh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tất nhi&amp;ecirc;n, khi sinh hoạt t&amp;igrave;nh dục bị rối loạn, khả năng hiếm muộn, v&amp;ocirc; sinh ở bạn sẽ rất cao. Để ph&amp;ograve;ng tr&amp;aacute;nh vi&amp;ecirc;m b&amp;agrave;ng quang, việc đầu ti&amp;ecirc;n l&amp;agrave; phải thiết lập một thời gian biểu khoa học, hợp l&amp;yacute; cho c&amp;ocirc;ng việc, nghỉ ngơi, vận động. Uống thật nhiều nước mỗi ng&amp;agrave;y v&amp;agrave; đặc biệt hạn chế uống rượu, c&amp;agrave; ph&amp;ecirc;, tr&amp;agrave; đen bởi ch&amp;uacute;ng dễ khiến co thắt cơ b&amp;agrave;ng quang. Đảm bảo một chế độ dinh dưỡng c&amp;acirc;n bằng, tăng rau quả tươi trong khẩu phần ăn (nhất l&amp;agrave; x&amp;agrave; l&amp;aacute;ch xoong). Tắm nước ấm c&amp;oacute; khả năng xoa dịu mọi chứng sưng do nhiễm tr&amp;ugrave;ng g&amp;acirc;y n&amp;ecirc;n.Khi mắc chứng bệnh n&amp;oacute;i tr&amp;ecirc;n, người bệnh thường xuy&amp;ecirc;n c&amp;oacute; nhu cầu đi tiểu nhưng khi v&amp;agrave;o ph&amp;ograve;ng vệ sinh th&amp;igrave; kh&amp;ocirc;ng thể thực hiện hoặc phải hết sức &amp;ldquo;cố gắng&amp;rdquo; mới ra được một ch&amp;uacute;t. Nếu vi&amp;ecirc;m b&amp;agrave;ng quang cứ tiếp tục tấn c&amp;ocirc;ng một c&amp;aacute;ch kh&amp;ocirc;ng kiểm so&amp;aacute;t, sẽ dẫn đến đau lưng, sốt hoặc những cơn r&amp;ugrave;ng m&amp;igrave;nh. Điều n&amp;agrave;y c&amp;oacute; nghĩa, thận của người bệnh đ&amp;atilde; bị nhiễm tr&amp;ugrave;ng.Một khi bộ phận sinh dục c&amp;oacute; vấn đề cộng với t&amp;igrave;nh trạng tổn thương của thận th&amp;igrave; chắc chắn rằng đời sống sinh hoạt của bạn sẽ bị ảnh hưởng đ&amp;aacute;ng kể, trong đ&amp;oacute; bao gồm cả sinh hoạt t&amp;igrave;nh dục.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Viêm bàng quang dẫn bạn đến nguy cơ vô sinh - 1&quot; src=&quot;http://hcm.eva.vn/upload/3-2013/images/2013-09-29/1380471654-viembangquang_suckhoe_eva1.jpg2.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Nếu vi&amp;ecirc;m b&amp;agrave;ng quang cứ tiếp tục tấn c&amp;ocirc;ng một c&amp;aacute;ch kh&amp;ocirc;ng kiểm so&amp;aacute;t, sẽ dẫn đến đau lưng, sốt hoặc những cơn r&amp;ugrave;ng m&amp;igrave;nh (Ảnh minh họa)&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vệ sinh bộ phận sinh dục sạch sẽ kết hợp với việc mặc quần &amp;aacute;o tho&amp;aacute;ng m&amp;aacute;t (chẳng hạn như quần &amp;aacute;o bằng chất cotton). Tr&amp;aacute;nh nhịn tiểu v&amp;agrave; n&amp;ecirc;n đi tiểu trong v&amp;ograve;ng 10 ph&amp;uacute;t sau khi quan hệ t&amp;igrave;nh dục.Nếu mới bị vi&amp;ecirc;m b&amp;agrave;ng quang, bạn vẫn n&amp;ecirc;n tu&amp;acirc;n thủ những lưu &amp;yacute; trong việc ph&amp;ograve;ng bệnh, nhất l&amp;agrave; n&amp;ecirc;n uống nhiều nước v&amp;igrave; như thế sẽ gi&amp;uacute;p bạn tống bớt số vi khuẩn g&amp;acirc;y bệnh, kh&amp;ocirc;ng cho ch&amp;uacute;ng kịp sinh sản v&amp;agrave; l&amp;agrave;m hại đến bạn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đừng chần chừ, nếu bệnh kh&amp;ocirc;ng thuy&amp;ecirc;n giảm sau hai ng&amp;agrave;y uống nhiều nước, nghỉ ngơi, ng&amp;acirc;m ch&amp;acirc;n nước ấm... m&amp;agrave; h&amp;atilde;y đến b&amp;aacute;c sĩ kh&amp;aacute;m bệnh c&amp;agrave;ng sớm c&amp;agrave;ng tốt v&amp;agrave; phải sử dụng thuốc theo đ&amp;uacute;ng chỉ dẫn của b&amp;aacute;c sỹ, tr&amp;aacute;nh để xảy ra t&amp;igrave;nh trạng vi khuẩn kh&amp;aacute;ng thuốc, l&amp;agrave;m bệnh t&amp;aacute;i ph&amp;aacute;t trở lại. Khi được chỉ định d&amp;ugrave;ng kh&amp;aacute;ng sinh, ngay cả khi triệu chứng bệnh biến mất sau v&amp;agrave;i ng&amp;agrave;y điều trị, người bệnh cũng kh&amp;ocirc;ng n&amp;ecirc;n tự &amp;yacute; dừng thuốc m&amp;agrave; h&amp;atilde;y ho&amp;agrave;n th&amp;agrave;nh đủ một đợt kh&amp;aacute;ng sinh theo toa nhằm trị bệnh một c&amp;aacute;ch dứt điểm, đem lại an to&amp;agrave;n cho sức khỏe.&amp;nbsp;&lt;/p&gt;', 'viem-bang-quang-dan-ban-den-nguy-co-vo-sinh', '', '', '', '', '', '', 0, 0, 'upload/1380471654-viembangquang_suckhoe_eva1.jpg2.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-10-04 11:45:53', 'admin', '2013-10-04 11:43:00');
INSERT INTO `media` VALUES (40, 'default13808620081', '', 'media_blog', '[168]', 'admin', 'Ung thư vú – Phát hiện mới trong điều trị bệnh', '', '', 'vn', '&lt;p&gt;\r\n	Theo Tổ chức nghi&amp;ecirc;n cứu ung thư Quốc tế (IARC), ung thư v&amp;uacute; l&amp;agrave; căn bệnh phổ biến ở phụ nữ. Đ&amp;acirc;y l&amp;agrave; căn bệnh nan y hiện chưa c&amp;oacute; thuốc đặc trị n&amp;ecirc;n khoa học vẫn đang tiếp tục nghi&amp;ecirc;n cứu v&amp;agrave; t&amp;igrave;m ra những giải ph&amp;aacute;p mới, trong đ&amp;oacute; c&amp;oacute; những tiến bộ vừa đạt được dưới đ&amp;acirc;y.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;1. &amp;Aacute;o nịt ngực ph&amp;aacute;t hiện sớm ung thư v&amp;uacute;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;ocirc;ng ty First Warning Systems của Mỹ vừa ph&amp;aacute;t minh ra một loại &amp;aacute;o nịt ngực phụ nữ c&amp;oacute; thể ph&amp;aacute;t hiện sớm tới 90% khối u v&amp;uacute; trước tới 6 năm ở phụ nữ th&amp;ocirc;ng qua qu&amp;aacute; tr&amp;igrave;nh thay đổi m&amp;ocirc; trước khi chiếu chụp bằng X-quang hay MRI. Đ&amp;acirc;y l&amp;agrave; loại &amp;aacute;o nịt ngực th&amp;ocirc;ng minh, giống như một chiếc &amp;aacute;o nịt ngực thể thao th&amp;ocirc;ng thường. Loại &amp;aacute;o n&amp;agrave;y hiện đang chờ Cơ quan Quản l&amp;yacute; Thực phẩm &amp;ndash; Dược phẩm Mỹ (FDA) ph&amp;ecirc; duyệt v&amp;agrave; dự kiến sẽ c&amp;oacute; mặt tr&amp;ecirc;n thị trường v&amp;agrave;o năm 2014.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;br /&gt;\r\n	&lt;img alt=&quot;y hoc 85 Ung thư vú   Phát hiện mới trong điều trị bệnh&quot; src=&quot;http://y.edu.vn/images/post/2013/04/05/21//y-hoc-85.jpg&quot; title=&quot;Ung thư vú   Phát hiện mới trong điều trị bệnh&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;strong&gt;2. Bộ ngực lớn, rủi ro ung thư v&amp;uacute; cao?&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo nghi&amp;ecirc;n cứu c&amp;ocirc;ng bố tr&amp;ecirc;n tạp ch&amp;iacute; Medical News Today của Mỹ, c&amp;aacute;c chuy&amp;ecirc;n gia c&amp;ocirc;ng ty di truyền 23andMc vừa ph&amp;aacute;t hiện thấy 7 biến thể di truyền SNP l&amp;agrave;m cho k&amp;iacute;ch thước bầu v&amp;uacute; của phụ nữ lớn, đ&amp;acirc;y l&amp;agrave; ch&amp;iacute;nh l&amp;agrave; thủ phạm l&amp;agrave;m tăng tủi ro mắc bệnh ung thư v&amp;uacute; so với nh&amp;oacute;m người kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;c biến thể gen n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;3. Stress &amp;ndash; thủ phạm l&amp;agrave;m tăng nguy cơ ung thư v&amp;uacute;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sau khi kết th&amp;uacute;c nghi&amp;ecirc;n cứu d&amp;agrave;i kỳ ở tr&amp;ecirc;n chuột, c&amp;aacute;c chuy&amp;ecirc;n gia ở ĐH Vanderbilt, Mỹ, ph&amp;aacute;t hiện stress kh&amp;ocirc;ng chỉ đẩy nhanh tiến tr&amp;igrave;nh mắc rất nhiều bệnh nan y m&amp;agrave; n&amp;oacute; c&amp;ograve;n l&amp;agrave;m tăng nguy cơ mắc bệnh ung thư v&amp;uacute; ở phụ nữ v&amp;agrave; tăng nguy cơ di căn v&amp;agrave;o xương. V&amp;igrave; l&amp;yacute; do tr&amp;ecirc;n, những người phụ nữ buồn phiền sống trong stress l&amp;agrave; nh&amp;oacute;m dễ mắc bệnh ung thư v&amp;uacute; nhất.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;4. H&amp;oacute;a lỏng khối u &amp;ndash; phương ph&amp;aacute;p điều trị ung thư v&amp;uacute; mới&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;ocirc;ng ty Cancer Research Technology của Anh vừa nghi&amp;ecirc;n cứu, cho ra đời kỹ thuật điều trị bệnh ung thư v&amp;uacute; mới c&amp;oacute; t&amp;ecirc;n l&amp;agrave; HFU (High Intensity Focused Ultrasound). Đ&amp;acirc;y l&amp;agrave; phương ph&amp;aacute;p h&amp;oacute;a lỏng khối u bằng phương ph&amp;aacute;p phẫu thuật kh&amp;ocirc;ng x&amp;acirc;m lấn, ch&amp;iacute;nh x&amp;aacute;c, đặc biệt l&amp;agrave; d&amp;ugrave;ng năng lượng si&amp;ecirc;u &amp;acirc;m để ti&amp;ecirc;u diệt khối u m&amp;agrave; kh&amp;ocirc;ng g&amp;acirc;y ảnh hưởng đến c&amp;aacute;c tế b&amp;agrave;o khỏe mạnh b&amp;ecirc;n cạnh. Phương ph&amp;aacute;p n&amp;agrave;y vừa c&amp;oacute; hiệu quả cao, giảm thời gian, giảm được chi ph&amp;iacute; cho người bệnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;5. Kỹ thuật thử test ung thư di truyền&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kỹ thuật rất mới c&amp;oacute; t&amp;ecirc;n Oncotype DX hay c&amp;ograve;n gọi l&amp;agrave; kỹ thuật x&amp;eacute;t nghiệm ung thư v&amp;uacute; di truyền, c&amp;oacute; khả năng ph&amp;aacute;t hiện sớm bệnh. Đ&amp;acirc;y l&amp;agrave; ph&amp;eacute;p x&amp;eacute;t nghiệm di truyền lấy mẫu khối u để x&amp;eacute;t nghiệm gen. Kỹ thuật n&amp;agrave;y gi&amp;uacute;p cho 46% số bệnh nh&amp;acirc;n kh&amp;ocirc;ng cần phải qua kh&amp;acirc;u h&amp;oacute;a trị liệu, vừa tốn k&amp;eacute;m lại c&amp;oacute; hại cho sức khỏe. Phương ph&amp;aacute;p đang được Viện&amp;nbsp;y học&amp;nbsp;quốc gia của Anh ho&amp;agrave;n tất kh&amp;acirc;u cuối c&amp;ugrave;ng trước khi đưa ứng dụng đại tr&amp;agrave; v&amp;agrave;o năm 2013.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;6. Kỹ thuật mới ph&amp;aacute;t hiện bệnh ung thư v&amp;uacute; trong v&amp;agrave;i gi&amp;acirc;y&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c nh&amp;agrave; khoa học của Anh vừa nghi&amp;ecirc;n cứu t&amp;igrave;m ra một phương ph&amp;aacute;p mới ph&amp;aacute;t hiện ung thư v&amp;uacute; bằng kỹ thuật &amp;ldquo;d&amp;ograve; m&amp;igrave;n&amp;rdquo;. Trong thủ thuật n&amp;agrave;y người ta sử dụng m&amp;aacute;y scaner tần số v&amp;ocirc; tuyến, giống như d&amp;ugrave;ng trong thiết bị d&amp;ograve; m&amp;igrave;n. Kỹ thuật n&amp;agrave;y vừa nhanh, rẻ, kh&amp;ocirc;ng g&amp;acirc;y đau lại an to&amp;agrave;n hơn so với kỹ thuật chụp X-quang tuyến v&amp;uacute; m&amp;agrave; đang sử dụng v&amp;agrave; ph&amp;ugrave; hợp cho mọi lứa tuổi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;7. Thực đơn c&amp;oacute; chỉ số GI thấp l&amp;agrave;m giảm rủi ro ung thư v&amp;uacute;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo nghi&amp;ecirc;n cứu của c&amp;aacute;c chuy&amp;ecirc;n gia ở Đại học Sydney (&amp;Uacute;c) th&amp;igrave; thực đơn c&amp;oacute; chỉ số GI (chỉ số đường huyết) thấp giảm được tới 8% rủi ro mắc bệnh ung thư v&amp;uacute;. Lợi thế của nh&amp;oacute;m thực phẩm n&amp;agrave;y l&amp;agrave; tạo ra &amp;iacute;t glucose v&amp;agrave; insulin, n&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c l&amp;agrave; hạn chế năng lượng cho tế b&amp;agrave;o ung bướu n&amp;ecirc;n giảm bệnh, nhất l&amp;agrave; nh&amp;oacute;m người c&amp;oacute; tiền sử mắc bệnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;8. Paraben l&amp;agrave;m tăng rủi ro ung thư v&amp;uacute;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c chuy&amp;ecirc;n gia ở ĐH Readning Anh vừa t&amp;igrave;m thấy bằng chứng c&amp;aacute;c loại h&amp;oacute;a chất bảo quản c&amp;oacute; trong thuốc chống chảy mồ h&amp;ocirc;i d&amp;ugrave;ng ở n&amp;aacute;ch cho phụ nữ v&amp;agrave; c&amp;oacute; trong rất nhiều sản phẩm l&amp;agrave;m đẹp, gia dụng l&amp;agrave; thủ phạm l&amp;agrave;m tăng khối u ung thư v&amp;uacute;. Nguy&amp;ecirc;n l&amp;yacute; g&amp;acirc;y bệnh của paraben l&amp;agrave; ngấm v&amp;agrave;o m&amp;aacute;u v&amp;agrave; m&amp;ocirc;, nhất l&amp;agrave; ở nh&amp;oacute;m người c&amp;oacute; mức độ rủi ro mắc bệnh cao như nh&amp;oacute;m c&amp;oacute; phụ nữ tuổi cao, mắc bệnh mạn t&amp;iacute;nh v&amp;agrave; c&amp;oacute; tiền sử gia đ&amp;igrave;nh mắc bệnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;9. Thuốc trị ung thư v&amp;uacute; đ&amp;ocirc;i khi lại l&amp;agrave;m tăng mức độ di căn&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Phải n&amp;oacute;i ngay rằng ung thư n&amp;oacute;i chung v&amp;agrave; ung thư v&amp;uacute; n&amp;oacute;i ri&amp;ecirc;ng l&amp;agrave; căn bệnh với nhiều dạng kh&amp;aacute;c nhau v&amp;agrave; do chưa hiểu hết nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y bệnh n&amp;ecirc;n kết quả điều trị c&amp;ograve;n hạn chế. Thậm ch&amp;iacute; c&amp;oacute; những loại thuốc lại l&amp;agrave;m tăng qu&amp;aacute; tr&amp;igrave;nh di căn của khối u hơn l&amp;agrave; ti&amp;ecirc;u diệt khối u. Về nguy&amp;ecirc;n l&amp;yacute; c&amp;aacute;c loại thuốc trị ung thư cắt nguồn cung cấp m&amp;aacute;u v&amp;agrave; để đ&amp;oacute;i khối u, l&amp;agrave;m cho ch&amp;uacute;ng teo lại, nhưng mặt tr&amp;aacute;i lại l&amp;agrave;m cho n&amp;oacute; di căn sang những vị tr&amp;iacute; kh&amp;aacute;c. Theo nghi&amp;ecirc;n cứu của Đại học&amp;nbsp;Y khoa&amp;nbsp;Harvard (Mỹ), một số loại thuốc trị ung thư như Glivec v&amp;agrave; Sutent c&amp;oacute; t&amp;aacute;c dụng giảm k&amp;iacute;ch thước khối u nhưng lại l&amp;agrave;m tăng khả năng di căn của căn bệnh n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;10. Phương ph&amp;aacute;p mới &amp;ldquo;luộc&amp;rdquo; khối u&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Phương ph&amp;aacute;p mới n&amp;agrave;y c&amp;oacute; t&amp;ecirc;n PRFA (Preferential Radio &amp;ndash; Frequency Ablation) do Viện Karolinska, Thụy Điển, đề xuất, sử dụng d&amp;ograve;ng điện với mức nhiệt độ từ 70 &amp;ndash; 90oC để gia nhiệt khối u, l&amp;agrave;m cho c&amp;aacute;c tế b&amp;agrave;o ung thư bị chết trong v&amp;ograve;ng 10 ph&amp;uacute;t. Trong kỹ thuật n&amp;oacute;i tr&amp;ecirc;n người ta sử dụng một điện cực nhỏ x&amp;iacute;u dạng kim ti&amp;ecirc;m, ti&amp;ecirc;m trực tiếp v&amp;agrave;o v&amp;uacute;, d&amp;ograve;ng điện tạo ra c&amp;aacute;c điện cực để l&amp;agrave;m s&amp;ocirc;i khối u, giết chết ch&amp;uacute;ng trong khi c&amp;aacute;c tế b&amp;agrave;o khỏe mạnh b&amp;ecirc;n cạnh kh&amp;ocirc;ng việc g&amp;igrave;. Bệnh nh&amp;acirc;n chỉ cần một lần điều trị v&amp;agrave; theo d&amp;otilde;i bằng kỹ thuật chụp X-quang v&amp;agrave; MRI để ph&amp;aacute;t hiện nguy cơ t&amp;aacute;i ph&amp;aacute;t nếu c&amp;oacute;.&lt;/p&gt;', 'ung-thu-vu-phat-hien-moi-trong-dieu-tri-benh', '', '', '', '', '', '', 0, 0, 'upload/y-hoc-85.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 11:46:48', 'admin', '2013-10-04 11:50:02');
INSERT INTO `media` VALUES (41, 'default13808623481', '', 'media_blog', '[168]', 'admin', 'Mùa lạnh cần đề phòng bệnh hô hấp', '', '', 'vn', '&lt;p&gt;\r\n	Người cao tuổi mọi chức năng cơ thể đều suy giảm, trong đ&amp;oacute; sức đề kh&amp;aacute;ng cũng giảm th&amp;igrave; bệnh tật c&amp;oacute; thể tấn c&amp;ocirc;ng dễ d&amp;agrave;ng, nhất l&amp;agrave; c&amp;aacute;c bệnh g&amp;acirc;y ra bởi vi sinh vật (virut, vi khuẩn, vi nấm). Sự yếu k&amp;eacute;m trong việc tự bảo vệ của người cao tuổi c&amp;agrave;ng r&amp;otilde; n&amp;eacute;t mỗi khi thời tiết thay đổi, nhất l&amp;agrave; v&amp;agrave;o m&amp;ugrave;a lạnh. Bệnh m&amp;agrave; người cao tuổi dễ mắc phải trong m&amp;ugrave;a lạnh l&amp;agrave; bệnh đường h&amp;ocirc; hấp.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;C&amp;aacute;c bệnh đường h&amp;ocirc; hấp m&amp;agrave; người cao tuổi thường gặp&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vi&amp;ecirc;m mũi họng l&amp;agrave; một bệnh c&amp;oacute; thể gặp quanh năm nhưng v&amp;agrave;o m&amp;ugrave;a lạnh người cao tuổi hay gặp nhất g&amp;acirc;y n&amp;ecirc;n hiện tượng hắt hơi, sổ mũi, chảy mũi nước; đau r&amp;aacute;t họng g&amp;acirc;y ho, tức ngực, c&amp;oacute; khi g&amp;acirc;y kh&amp;oacute; thở.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;br /&gt;\r\n	&lt;img alt=&quot;y hoc 22 Mùa lạnh cần đề phòng bệnh hô hấp&quot; src=&quot;http://y.edu.vn/images/post/2013/04/05/21//y-hoc-22.jpg&quot; title=&quot;Mùa lạnh cần đề phòng bệnh hô hấp&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Vi&amp;ecirc;m họng mạn t&amp;iacute;nh k&amp;eacute;o d&amp;agrave;i (thường gọi l&amp;agrave; vi&amp;ecirc;m họng hạt), hoặc vi&amp;ecirc;m mũi mạn t&amp;iacute;nh r&amp;aacute;t. Khi thời tiết thay đổi đều c&amp;oacute; khả năng t&amp;aacute;i ph&amp;aacute;t trở lại. Người cao tuổiv&amp;agrave;o m&amp;ugrave;a lạnh c&amp;ograve;n hay mắc vi&amp;ecirc;m phế quản, vi&amp;ecirc;m phổi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một điều cần lưu &amp;yacute; l&amp;agrave; vi&amp;ecirc;m phế quản, vi&amp;ecirc;m phổi cấp t&amp;iacute;nh ở người cao tuổi do lạnh th&amp;acirc;n nhiệt thường kh&amp;ocirc;ng tăng cao như người trẻ tuổi n&amp;ecirc;n dễ nhầm l&amp;agrave; bệnh nhẹ &amp;iacute;t được người nh&amp;agrave; quan t&amp;acirc;m do đ&amp;oacute; dễ dẫn đến bệnh nặng cho đến khi v&amp;agrave;o bệnh viện th&amp;igrave; bệnh đ&amp;atilde; rất nặng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một số người c&amp;oacute; bệnh mạn t&amp;iacute;nh như hen suyễn, bệnh vi&amp;ecirc;m phổi tắc nghẽn mạn t&amp;iacute;nh th&amp;igrave; v&amp;agrave;o m&amp;ugrave;a lạnh th&amp;igrave; bệnh rất dễ t&amp;aacute;i ph&amp;aacute;t dễ xuất hiện c&amp;aacute;c biến chứng. Yếu tố thuận lợi g&amp;acirc;y bệnh trước hết phải kể đến người nghiện h&amp;uacute;t thuốc l&amp;aacute;, thuốc l&amp;agrave;o. Thuốc l&amp;aacute;, thuốc l&amp;agrave;o khi h&amp;iacute;t v&amp;agrave;o đường h&amp;ocirc; hấp sẽ l&amp;agrave;m tổn thương c&amp;aacute;c nhu m&amp;ocirc; phổi (tổ chức phổi) do đ&amp;oacute; l&amp;agrave;m tăng nguy cơ bội nhiễm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	M&amp;ocirc;i trường &amp;ocirc; nhiễm, nhiều bụi, kh&amp;oacute;i của bếp than, bếp củi, bếp dầu, nh&amp;agrave; ở chật chội, kh&amp;ocirc;ng th&amp;ocirc;ng tho&amp;aacute;ng cũng l&amp;agrave; những yếu tố thuận lợi l&amp;agrave;m cho người cao tuổi dễ mắc c&amp;aacute;c bệnh đường h&amp;ocirc; hấp nhất l&amp;agrave; v&amp;agrave;o m&amp;ugrave;a lạnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một số bệnh mạn t&amp;iacute;nh k&amp;eacute;o d&amp;agrave;i ở người cao tuổi như tăng huyết &amp;aacute;p, đ&amp;aacute;i th&amp;aacute;o đường, bệnh về rối loạn nội tiết cũng l&amp;agrave; những l&amp;yacute; do l&amp;agrave;m tăng nguy cơ vi&amp;ecirc;m đường h&amp;ocirc; hấp v&amp;agrave;o m&amp;ugrave;a lạnh ở người cao tuổi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Ph&amp;ograve;ng bệnh thế n&amp;agrave;o?&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để ph&amp;ograve;ng bệnh h&amp;ocirc; hấp ở người cao tuổi trong m&amp;ugrave;a lạnh, cần mặc đủ ấm, ngủ ấm, tr&amp;aacute;nh gi&amp;oacute; l&amp;ugrave;a. Khi nhiệt độ thay đổi đột ngột từ n&amp;oacute;ng chuyển sang lạnh hoặc lạnh vừa chuyển sang r&amp;eacute;t đậm th&amp;igrave; người cao tuổi n&amp;ecirc;n hạn chế ra khỏi nh&amp;agrave; l&amp;uacute;c s&amp;aacute;ng sớm.&lt;br /&gt;\r\n	C&amp;oacute; thể vẫn tập thể dục hoặc đi lại, vận động th&amp;acirc;n thể ở trong nh&amp;agrave; kh&amp;ocirc;ng n&amp;ecirc;n ra khỏi nh&amp;agrave; khi thời tiết c&amp;ograve;n lạnh nhất l&amp;agrave; l&amp;uacute;c đang c&amp;oacute; gi&amp;oacute; m&amp;ugrave;a. Cần vệ sinh họng, miệng sạch sẽ thường xuy&amp;ecirc;n hằng ng&amp;agrave;y như đ&amp;aacute;nh răng đều đặn trước v&amp;agrave; sau khi ngủ dậy; s&amp;uacute;c họng bằng nước muối sinh l&amp;yacute; (c&amp;oacute; thể tự pha chế).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Những trường hợp d&amp;ugrave;ng răng giả cần vệ sinh răng giả thật sạch sẽ kh&amp;ocirc;ng để b&amp;aacute;m d&amp;iacute;nh nhiều cặn, thức ăn l&amp;agrave;m tăng nguy cơ bội nhiễm vi sinh vật cho đường h&amp;ocirc; hấp.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cần bỏ thuốc l&amp;aacute;, thuốc l&amp;agrave;o nhất l&amp;agrave; những người cao tuổi đ&amp;atilde; bị c&amp;aacute;c bệnh mạn t&amp;iacute;nh như vi&amp;ecirc;m họng, vi&amp;ecirc;m phế quản, hen suyễn, vi&amp;ecirc;m xoang. M&amp;ugrave;a lạnh, người cao tuổi cũng cần tắm, rửa hằng ng&amp;agrave;y hoặc một tuần v&amp;agrave;i lần.&lt;/p&gt;', 'mua-lanh-can-de-phong-benh-ho-hap', '', '', '', '', '', '', 0, 0, 'upload/y-hoc-22.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 11:52:28', 'admin', '2013-10-04 11:52:28');
INSERT INTO `media` VALUES (42, 'default13808624401', '', 'media_blog', '[168]', 'admin', 'Nghẹn và cách xử lý ở người cao tuổi', '', '', 'vn', '&lt;p&gt;\r\n	Nghẹn l&amp;agrave; một triệu chứng xảy ra khi nuốt, thức ăn bị tắc ở họng hoặc thực quản, biểu hiện bằng nuốt kh&amp;oacute; khăn hoặc đột ngột kh&amp;oacute; thở, ho dữ dội. Hiện tượng nghẹn c&amp;oacute; thể xảy ra ở bất kỳ độ tuổi n&amp;agrave;o, nhưng thường thấy nhiều nhất ở người cao tuổi (NCT). Người bị nghẹn c&amp;oacute; thể tử vong trong v&amp;agrave;i ph&amp;uacute;t nếu kh&amp;ocirc;ng được cấp cứu kịp thời. Vậy cần l&amp;agrave;m g&amp;igrave; khi người gi&amp;agrave; mắc nghẹn, b&amp;aacute;o Sức khỏe &amp;amp; Đời sống xin giới thiệu b&amp;agrave;i viết hướng dẫn sơ cứu khi bị nghẹn để bạn đọc tham khảo v&amp;agrave; &amp;aacute;p dụng khi cần thiết.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;V&amp;igrave; sao NCT hay bị nghẹn?&lt;/strong&gt;&lt;br /&gt;\r\n	Hiện tượng kh&amp;oacute; nuốt v&amp;agrave; nghẹn ở NCT l&amp;agrave; bệnh rất hay gặp v&amp;igrave; khi cơ thể bị l&amp;atilde;o h&amp;oacute;a, c&amp;aacute;c ống ti&amp;ecirc;u h&amp;oacute;a cũng bị thu hẹp dần, th&amp;agrave;nh biểu m&amp;ocirc; của ni&amp;ecirc;m mạc miệng sẽ mỏng hơn g&amp;acirc;y kh&amp;oacute; khăn trong qu&amp;aacute; tr&amp;igrave;nh nhai nuốt. Lợi của NCT co r&amp;uacute;t lại l&amp;agrave;m khả năng nhai k&amp;eacute;m đi, ngay cả khi răng của họ vẫn c&amp;ograve;n nguy&amp;ecirc;n. Do đ&amp;oacute;, NCT thường giữ thức ăn trong miệng l&amp;acirc;u hơn v&amp;agrave; họ phải nuốt những mẩu thức ăn to hơn.&lt;br /&gt;\r\n	Sự điều phối hoạt động nuốt của NCT k&amp;eacute;m, l&amp;agrave;m tăng nguy cơ sặc v&amp;agrave;o phế quản, đặc biệt với NCT lắp răng giả hoặc khi ăn vội, ăn kh&amp;ocirc;ng tập trung. Mặt kh&amp;aacute;c, phản xạ về nuốt của cơ v&amp;ograve;ng đầu thực quản ở NCT rất chậm, thậm ch&amp;iacute; c&amp;ograve;n &amp;ldquo;trơ lỳ&amp;rdquo;. Họ chỉ lơ đ&amp;atilde;ng một ch&amp;uacute;t, mải suy nghĩ hoặc ăn nhanh, ăn vội, nuốt miếng thức ăn lớn sẽ rất dễ bị tắc nghẽn thức ăn ở đoạn hẹp của thực quản g&amp;acirc;y nghẹn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Triệu chứng rất dễ nhận biết&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Khi nuốt thức ăn, sự phối hợp c&amp;aacute;c chức năng ở họng của NCT hay bị mất sự điều h&amp;agrave;nh nhịp nh&amp;agrave;ng, l&amp;agrave;m cho thức ăn dễ rơi nhầm v&amp;agrave;o kh&amp;iacute; quản g&amp;acirc;y nghẹn. Khi bị nghẹn, thức ăn c&amp;oacute; thể g&amp;acirc;y tắc ở cổ họng, ở thực quản, kh&amp;iacute; quản hoặc cả hai. Nếu thức ăn l&amp;agrave;m b&amp;iacute;t tắc thực quản, đang ăn người bệnh bỗng thấy kh&amp;oacute; nuốt v&amp;agrave; bằng mọi c&amp;aacute;ch sẽ cố nuốt dẫn đến nấc v&amp;agrave; n&amp;ocirc;n oẹ. Do phản xạ, thức ăn sẽ di chuyển v&amp;agrave;o kh&amp;iacute; quản. L&amp;uacute;c n&amp;agrave;y, người bị nghẹn ho sặc sụa, n&amp;oacute;i kh&amp;ocirc;ng ra tiếng, kh&amp;oacute; thở t&amp;ugrave;y từng mức độ, c&amp;oacute; thể bị nghẹt thở.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nếu thức ăn l&amp;agrave;m tắc kh&amp;iacute; quản, người bị nghẹn đột nhi&amp;ecirc;n thở kh&amp;oacute;, sắc mặt đỏ t&amp;iacute;a rồi t&amp;iacute;m ngắt, thần sắc lờ đờ, nấc cụt. Nếu kh&amp;ocirc;ng được xử tr&amp;iacute; kịp thời v&amp;agrave; đ&amp;uacute;ng c&amp;aacute;ch, chỉ trong v&amp;agrave;i ph&amp;uacute;t, NCT sẽ trong t&amp;igrave;nh trạng thiếu &amp;ocirc;xy nghi&amp;ecirc;m trọng, dẫn tới tử vong.&lt;br /&gt;\r\n	Cấp cứu ngay tại chỗ bằng c&amp;aacute;ch khai th&amp;ocirc;ng đường thở&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trong trường hợp người bị nghẹn vẫn tỉnh t&amp;aacute;o, h&amp;atilde;y để nạn nh&amp;acirc;n ngồi, hơi c&amp;uacute;i nửa người tr&amp;ecirc;n ra ph&amp;iacute;a trước. Động vi&amp;ecirc;n họ gắng sức ho mạnh v&amp;igrave; khi ho sẽ tạo ra d&amp;ograve;ng kh&amp;iacute; nhằm đẩy thức ăn ra ngo&amp;agrave;i đường h&amp;ocirc; hấp hoặc &amp;iacute;t ra cũng tạo được khe hở cho việc thở.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Người cấp cứu đứng đằng sau, để nạn nh&amp;acirc;n ngồi hơi c&amp;uacute;i về ph&amp;iacute;a trước, &amp;ocirc;m ngang bụng nạn nh&amp;acirc;n, hai tay kh&amp;oacute;a chặt, d&amp;ugrave;ng ng&amp;oacute;n c&amp;aacute;i miết mạnh v&amp;agrave;o bụng tr&amp;ecirc;n 4 lần theo chiều l&amp;ecirc;n miệng nạn nh&amp;acirc;n. L&amp;agrave;m v&amp;agrave;i lần để đẩy thức ăn ở kh&amp;iacute; quản, ở cửa thanh m&amp;ocirc;n ra, hoặc tạo khe hở để phục hồi chức năng h&amp;ocirc; hấp.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nếu nạn nh&amp;acirc;n trong t&amp;igrave;nh trạng bất tỉnh. Cho nạn nh&amp;acirc;n nằm nghi&amp;ecirc;ng. Lấy ng&amp;oacute;n tay ấn lưỡi nạn nh&amp;acirc;n xuống, d&amp;ugrave;ng khuỷu tay đ&amp;aacute;nh mạnh 4 c&amp;aacute;i v&amp;agrave;o v&amp;ugrave;ng lưng chỗ giữa hai xương bả vai. Hoặc để nạn nh&amp;acirc;n nằm ngửa, đầu ngả ra sau, người l&amp;agrave;m cấp cứu tỳ chặt khuỷu tay (c&amp;oacute; thể hai tay đan chặt) v&amp;agrave;o bụng nạn nh&amp;acirc;n, h&amp;iacute;ch 4 c&amp;aacute;i hướng v&amp;agrave;o trong l&amp;ecirc;n tr&amp;ecirc;n. Mục đ&amp;iacute;ch vẫn l&amp;agrave; tạo d&amp;ograve;ng kh&amp;ocirc;ng kh&amp;iacute; từ phổi, đẩy phần tắc nghẽn ra, tạo th&amp;ocirc;ng đường thở cho bệnh nh&amp;acirc;n&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;br /&gt;\r\n	&lt;img alt=&quot;y hoc 26 Nghẹn và cách xử lý ở người cao tuổi&quot; src=&quot;http://y.edu.vn/images/post/2013/04/05/21//y-hoc-26.jpg&quot; title=&quot;Nghẹn và cách xử lý ở người cao tuổi&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Nếu thức ăn đặc, nhầy, d&amp;iacute;nh như b&amp;aacute;nh tr&amp;ocirc;i, b&amp;aacute;nh gat&amp;ocirc;&amp;hellip; th&amp;igrave; ngo&amp;agrave;i c&amp;aacute;ch cấp cứu n&amp;ecirc;u tr&amp;ecirc;n, phải để nạn nh&amp;acirc;n nằm nghi&amp;ecirc;ng, d&amp;ugrave;ng hai ng&amp;oacute;n tay m&amp;oacute;c hoặc kẹp thức ăn bị tắc ra. Chỉ cần l&amp;aacute;ch được khe hở l&amp;agrave; c&amp;oacute; thể cứu sống được bệnh nh&amp;acirc;n.&lt;br /&gt;\r\n	Nếu &amp;aacute;p dụng c&amp;aacute;c phương ph&amp;aacute;p tr&amp;ecirc;n m&amp;agrave; t&amp;igrave;nh trạng bệnh nh&amp;acirc;n vẫn kh&amp;ocirc;ng được cải thiện, cần h&amp;ocirc; hấp nh&amp;acirc;n tạo ngay bằng c&amp;aacute;ch: để nạn nh&amp;acirc;n nằm ngửa tr&amp;ecirc;n nền nh&amp;agrave; (tr&amp;ecirc;n nền cứng), nắm hai tay nạn nh&amp;acirc;n &amp;eacute;p xuống ngực nạn nh&amp;acirc;n rồi nhấc l&amp;ecirc;n cao qu&amp;aacute; vai, l&amp;agrave;m li&amp;ecirc;n tục. Sau đ&amp;oacute; nhanh ch&amp;oacute;ng chuyển nạn nh&amp;acirc;n tới cơ sở&amp;nbsp;&lt;a href=&quot;http://y.edu.vn/tag/y-te&quot; rel=&quot;tag&quot; title=&quot;Posts tagged with y tế&quot;&gt;y tế&lt;/a&gt;&amp;nbsp;gần nhất để được xử tr&amp;iacute; kịp thời.&lt;/p&gt;', 'nghen-va-cach-xu-ly-o-nguoi-cao-tuoi', '', '', '', '', '', '', 0, 0, 'upload/y-hoc-26.jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 11:54:00', 'admin', '2013-10-04 11:54:00');
INSERT INTO `media` VALUES (43, 'default13808779181', '', 'media_blog', '[167]', 'admin', 'Túi cấp cứu gia đình', '', '', 'vn', '&lt;p&gt;\r\n	T&amp;uacute;i cấp cứu sẽ gi&amp;uacute;p bạn trong c&amp;aacute;c trường hợp chấn thương v&amp;agrave; cấp cứu...&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;strong&gt;C&amp;aacute;c nguy&amp;ecirc;n tắc:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	*T&amp;uacute;i cấp cứu sẽ gi&amp;uacute;p bạn trong c&amp;aacute;c trường hợp chấn thương v&amp;agrave; cấp cứu.&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Mỗi gia đ&amp;igrave;nh cần c&amp;oacute; &amp;iacute;t nhất một t&amp;uacute;i cấp cứu được để nơi dễ t&amp;igrave;m thấy nhất,&amp;nbsp;tr&amp;aacute;nh xa tầm với của trẻ nhỏ, nhưng với c&amp;aacute;c trẻ lớn vẫn c&amp;oacute; thể lấy được.&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Nếu bạn c&amp;oacute; xe hơi trong những chuyến đi d&amp;atilde; ngoại, t&amp;uacute;i cấp cứu cũng n&amp;ecirc;n c&amp;oacute; trong xe.&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Bạn c&amp;oacute; thể mua t&amp;uacute;i cấp cứu v&amp;agrave; vật dụng y tế ở c&amp;aacute;c cửa h&amp;agrave;ng b&amp;aacute;n dụng cụ y khoa, thuốc bạn sẽ mua ở quầy thuốc t&amp;acirc;y.&lt;/div&gt;\r\n&lt;div&gt;\r\n	*T&amp;uacute;i cấp cứu mỗi hai &amp;ndash; ba th&amp;aacute;ng sẽ được mở ra kiểm tra lại một lần, thay thế c&amp;aacute;c vật dụng bị hư, thuốc qu&amp;aacute; hạn d&amp;ugrave;ng.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;http://thuocvasuckhoe.com/userfiles/3(24).jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;T&amp;uacute;i cấp cứu cần c&amp;oacute; c&amp;aacute;c thứ sau đ&amp;acirc;y&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;1. Vật dụng&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Băng keo y tế&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Băng c&amp;aacute; nh&amp;acirc;n&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Băng vải cuộn&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Gạc v&amp;ocirc; tr&amp;ugrave;ng&lt;/div&gt;\r\n&lt;div&gt;\r\n	* G&amp;ograve;n y tế&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Tăm b&amp;ocirc;ng&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Nẹp ng&amp;oacute;n tay bằng nh&amp;ocirc;m&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Băng tam gi&amp;aacute;c&lt;/div&gt;\r\n&lt;div&gt;\r\n	* D&amp;acirc;y gar&amp;ocirc;&lt;/div&gt;\r\n&lt;div&gt;\r\n	* K&amp;eacute;o nhỏ, nh&amp;iacute;p&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Găng tay y tế&lt;/div&gt;\r\n&lt;div&gt;\r\n	* T&amp;uacute;i chườm lạnh&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Nhiệt kế&lt;/div&gt;\r\n&lt;div&gt;\r\n	* T&amp;uacute;i nylon c&amp;aacute;c loại ( đựng chất &amp;oacute;i ,..)&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Đ&amp;egrave;n pin v&amp;agrave; pin&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;2. Thuốc d&amp;ugrave;ng ngo&amp;agrave;i da&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Dung dịch s&amp;aacute;t tr&amp;ugrave;ng: cồn 700&amp;nbsp;, povidine, &amp;ocirc;xy gi&amp;agrave;.&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Nước muối sinh l&amp;yacute; ( Na Cl 0,9%) d&amp;ugrave;ng rữa mắt&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Thuốc pommade Tetracycline 1%&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Thuốc chống dị ứng : pommade phenergan&lt;/div&gt;\r\n&lt;div&gt;\r\n	* Dầu gi&amp;oacute;, kem chống muỗi&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;3.Thuốc uống&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Thuốc hạ sốt, giảm đau: paracetamol dạng uống&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Thuốc chống dị ứng: chlorpheramine&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Thuốc trị ti&amp;ecirc;u chảy: than hoạt t&amp;iacute;nh ( carbophos ) , oresol.&lt;/div&gt;\r\n&lt;div&gt;\r\n	*Thuốc chống &amp;oacute;i người lớn, thuốc say t&amp;agrave;u xe ( nautamine, stugeron)&amp;nbsp;&lt;/div&gt;', 'tui-cap-cuu-gia-dinh', '', '', '', '', '', '', 0, 0, 'upload/3(24).jpg', 0, '', 'Chủ đề nhiều người quan tâm,', '', 0, 0, 'active', '', '2013-10-04 16:11:58', 'admin', '2013-10-04 16:11:58');
INSERT INTO `media` VALUES (44, 'default13808779941', '', 'media_blog', '[167]', 'admin', 'Danh mục thuốc thiết yếu', '', '', 'vn', '&lt;p&gt;\r\n	Tủ thuốc gia đ&amp;igrave;nh n&amp;ecirc;n được x&amp;acirc;y dựng tr&amp;ecirc;n danh mục thuốc thiết yếu được Bộ Y tế ban h&amp;agrave;nh dựa tr&amp;ecirc;n Danh mục thuốc thiết yếu của Tổ chức Y tế Thế giới (WHO)...&lt;/p&gt;', '&lt;p&gt;\r\n	Tủ thuốc gia đ&amp;igrave;nh n&amp;ecirc;n được x&amp;acirc;y dựng tr&amp;ecirc;n danh mục thuốc thiết yếu được Bộ Y tế ban h&amp;agrave;nh dựa tr&amp;ecirc;n Danh mục thuốc thiết yếu của Tổ chức Y tế Thế giới (WHO). Sau đ&amp;acirc;y l&amp;agrave; một danh mục giới hạn:&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					STT&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					T&amp;ecirc;n thuốc v&amp;agrave; h&amp;agrave;m lượng&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Ghi ch&amp;uacute;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					1&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc t&amp;ecirc;:\r\n				&lt;ul&gt;\r\n					&lt;li&gt;\r\n						Novocain 1%, 2%, 3%&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					2&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc cảm sốt, hạ nhiệt giảm đau:\r\n				&lt;p&gt;\r\n					aspirin, paracetamol, vi&amp;ecirc;n xuy&amp;ecirc;n hương&lt;/p&gt;\r\n				&lt;p&gt;\r\n					Dầu xoa, cao xoa&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					3&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc chống giun s&amp;aacute;n&lt;/td&gt;\r\n			&lt;td&gt;\r\n				mua theo đơn&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					4&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc chống nhiễm khuẩn:\r\n				&lt;ul&gt;\r\n					&lt;li&gt;\r\n						Penicillin 400000 đv&lt;/li&gt;\r\n					&lt;li&gt;\r\n						Sulfamid c&amp;aacute;c loại&lt;/li&gt;\r\n					&lt;li&gt;\r\n						Tetracyclin 0,25&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					5&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc ngo&amp;agrave;i da:\r\n				&lt;p&gt;\r\n					Cồn ASA, cồn BSI&lt;/p&gt;\r\n				&lt;p&gt;\r\n					DEP, Mỡ tetraxyclin&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					6&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc s&amp;aacute;t tr&amp;ugrave;ng: Cồn 70 độ, Cồn iod&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					7&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc đau dạ d&amp;agrave;y:\r\n				&lt;ul&gt;\r\n					&lt;li&gt;\r\n						Thuốc chống acid như Alusi&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					8&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc chống ti&amp;ecirc;u chảy, lỵ, Vi&amp;ecirc;n berberin, Men ti&amp;ecirc;u ho&amp;aacute; sống.&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					9&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc b&amp;ugrave; nước, điện giải ORS&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					10&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc phụ nữ&lt;/td&gt;\r\n			&lt;td&gt;\r\n				D&amp;ugrave;ng theo đơn&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					11&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc mắt: Sulfaxylum, Kẽm sulfat hay cloramphenicol 0,4%, Mỡ tetraxyclin 1%&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					12&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc an thần:\r\n				&lt;p&gt;\r\n					- Vi&amp;ecirc;n rotunda&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					13&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc ho, hen:\r\n				&lt;p&gt;\r\n					-Vi&amp;ecirc;n ho terpin-codein, Xiro ho bổ phế, Vi&amp;ecirc;n hen theophylin&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					14&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Thuốc nhỏ mũi: sulfarin hay naphazolin&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', 'danh-muc-thuoc-thiet-yeu', '', '', '', '', '', '', 0, 0, 'upload/Danh-muc-thuoc-thiet-yeu.jpg', 0, '', '', '', 0, 0, 'active', '', '2013-10-04 16:13:14', 'admin', '2013-10-04 16:17:42');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `media_information`
-- 

INSERT INTO `media_information` VALUES (1, 'default13675570951', 'zoom', '17');
INSERT INTO `media_information` VALUES (2, 'default13675570951', 'x', '10.782621');
INSERT INTO `media_information` VALUES (3, 'default13675570951', 'y', '106.6716778');
INSERT INTO `media_information` VALUES (4, '2', 'zoom', '13');
INSERT INTO `media_information` VALUES (5, '2', 'x', '10.5083266');
INSERT INTO `media_information` VALUES (6, '2', 'y', '106.86350040000002');
INSERT INTO `media_information` VALUES (7, 'default13796676541', 'zoom', '14');
INSERT INTO `media_information` VALUES (8, 'default13796676541', 'x', '10.5083266');
INSERT INTO `media_information` VALUES (9, 'default13796676541', 'y', '106.86350040000002');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `message`
-- 

INSERT INTO `message` VALUES (11, '1380797165', '', '"do nguyen khoa hoc" bui_wa_di@yahoo.com', 'lan.pham@elifepartners.com', 'Liên hệ', 'Nội dung: <br/>1212121<br>Điện thoạiĐiện thoại: 12312<br>', '', '', 'inbox', '2013-10-03 17:46:05', '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

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
INSERT INTO `module` VALUES (30, 'sidebar', 'sidebar/servicescategories', 'sidebar/servicescategories', 'Services Categories', 'code', 'sitemap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (31, 'sidebar', 'sidebar/productcategory', 'sidebar/productcategory', 'Products Categories', 'manage', 'sitemap', '', 26, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (32, 'sidebar', 'sidebar/banner', 'sidebar/banner', 'Banner', 'manage', 'media_banner', '', 27, 'Active', 'sidebar/banner', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (33, 'sidebar', 'sidebar/newscollection', 'sidebar/newscollection', 'News Collection', 'manage', 'media_news', '', 28, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (34, 'sidebar', 'sidebar/viewmost', 'sidebar/viewmost', 'Most Viewed News', 'code', 'media_news', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (35, 'sidebar', 'sidebar/newshot', 'sidebar/newshot', 'Hot News', 'refer', 'media_news', '', 30, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (36, 'sidebar', 'sidebar/newarrivalproducts', 'sidebar/newarrivalproducts', 'New Arrival Products', 'code', 'product', '', 31, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (37, 'sidebar', 'sidebar/mostviewedproducts', 'sidebar/mostviewedproducts', 'Most Viewed Products', 'code', 'product', '', 32, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (38, 'sidebar', 'sidebar/hotproducts', 'sidebar/hostproducts', 'Hot Products', 'refer', 'product', '', 33, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (39, 'sidebar', 'sidebar/bestsellerproducts', 'sidebar/bestsellerproducts', 'Best Seller Products', 'code', 'product', '', 34, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (40, 'splash', 'splash/homeslider', 'splash/homeslider', 'Homepage Bigbanner', 'code', '', '', 35, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (41, 'splash', 'splash/homelinks', 'splash/homelinks', 'Home Links', 'code', '', '', 36, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (42, 'module', 'module/downloadalbum', 'module/downloadalbum', 'Download Album', 'code', 'media_download', '', 37, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (43, 'splash', 'splash/promotionbox', 'splash/promotionbox', 'Box Khuyến mãi', 'manage', 'weblink', '', 38, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (44, 'splash', 'splash/edwinslider', 'splash/edwinslider', 'Edwin Slider', 'code', '', '', 39, 'Active', 'splash/edwinslider', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (45, 'dashboard', 'splash/edwinbanner', 'splash/edwinbanner', 'Edwin Banner', 'manage', '', '', 40, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none');
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
INSERT INTO `module` VALUES (57, 'splash', 'splash/catbanner', 'splash/catbanner', 'Category Banner', 'manage', 'catbanner', '', 51, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (58, 'dashboard', 'dashboard/catbanner', 'dashboard/catbanner', 'Slogan Banner', 'manage', 'sloganbanner', '', 52, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (59, 'module', 'module/blog', 'module/blog', 'Blog', 'code', '', '', 53, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (60, 'dashboard', 'dashboard/hotnews', 'dashboard/hotnews', 'Hot News', 'code', '', '', 54, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (61, 'sidebar', 'sidebar/sidebarnav', 'sidebar/sidebarnav', 'sidebar navigation', 'manage', '', '', 55, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product`
-- 


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_manufacturer`
-- 


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

-- 
-- Dumping data for table `sidebar_addon`
-- 

INSERT INTO `sidebar_addon` VALUES (32, 31, 1, 1);
INSERT INTO `sidebar_addon` VALUES (33, 34, 1, 1);
INSERT INTO `sidebar_addon` VALUES (51, 43, 2, 2);
INSERT INTO `sidebar_addon` VALUES (50, 39, 2, 1);

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

INSERT INTO `site` VALUES (1, 'default', '', 'upload/logo.png', 'upload/logo.png', '', '', 'vnd, usd', 'lan.pham@elifepartners.com', 'Labwell', 'http://www.dulichcangio.vn', 'vn', '', '', '', '', 'labwell', 'Active');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;

-- 
-- Dumping data for table `sitemap`
-- 

INSERT INTO `sitemap` VALUES (1, 'default', '', 'trang-chu', 1, 'module/homepage', 0, '', '', 1, 0, 'homepage', 1);
INSERT INTO `sitemap` VALUES (170, 'default', '166', 'suc-khoe-moi-ngay', 4, 'module/blog', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (165, 'default', '', 'qua-tang-20-thang10', 2, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (161, 'default', '', 'lien-he-chung-toi', 4, 'module/contactmap', 0, '', '', 1, 0, 'contact', 1);
INSERT INTO `sitemap` VALUES (166, 'default', '', 'song-khoe-cung-labwell', 3, 'module/groupsitemap', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (167, 'default', '166', 'tu-thuoc-gia-dinh', 1, 'module/blog', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (168, 'default', '166', 'cac-benh-thuong-gap', 2, 'module/blog', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (169, 'default', '166', 'dinh-duong', 3, 'module/blog', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (171, 'default', '166', 'meo-vat', 5, 'module/blog', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (172, 'default', '166', 'hoi-dap', 6, 'module/faq', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (173, 'default', '', 've-chung-toi', 5, 'module/information', 0, '', '', 0, 0, 'default_layout', 0);
INSERT INTO `sitemap` VALUES (174, 'default', '', 'san-pham-labwell', 6, 'module/information', 0, '', '', 0, 0, 'default_layout', 0);
INSERT INTO `sitemap` VALUES (175, 'default', '', 'dia-diem-mua-hang', 7, 'module/information', 0, '', '', 0, 0, 'default_layout', 0);
INSERT INTO `sitemap` VALUES (176, 'default', '', 'co-the-ban-chua-biet', 8, 'module/news', 0, '', '', 0, 0, 'default_layout', 0);

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

INSERT INTO `sitemap_description` VALUES (1, 'vn', 'Trang Chủ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (168, 'vn', 'Các bệnh thường gặp', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (167, 'vn', 'Tủ thuốc gia đình', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (161, 'vn', 'Liên Hệ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (165, 'vn', 'Quà tặng 20/10', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (166, 'vn', 'Sống khỏe cùng Labwell', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (169, 'vn', 'Dinh dưỡng', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (170, 'vn', 'Sức khỏe mỗi ngày', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (171, 'vn', 'Mẹo vặt', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (172, 'vn', 'Hỏi đáp', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (173, 'vn', 'Về chúng tôi', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (174, 'vn', 'Sản phẩm Labwell', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (175, 'vn', 'Địa điểm mua hàng', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (176, 'vn', 'Có thể bạn chưa biết', '', '', '', '');

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

INSERT INTO `support` VALUES (2, 'supportonline', '(08) 62 647 180 - 0916 472 445 (Mr Vũ)', 'laptophoangvu', 'laptophoangvu', 2);

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

INSERT INTO `support_description` VALUES (2, 'vn', 'Hỗ trợ', '');

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

INSERT INTO `tag` VALUES (170, 'Chủ đề nhiều người quan tâm', 1, 'vn');
INSERT INTO `tag` VALUES (171, 'Chủ đề nhiều người quan tâm', 2, 'vn');
INSERT INTO `tag` VALUES (167, 'Chủ đề nhiều người quan tâm', 1, 'vn');
INSERT INTO `tag` VALUES (169, 'Chủ đề nhiều người quan tâm', 2, 'vn');
INSERT INTO `tag` VALUES (168, 'Chủ đề nhiều người quan tâm', 6, 'vn');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

-- 
-- Dumping data for table `url_alias`
-- 

INSERT INTO `url_alias` VALUES (1, 'media', 'default13796676541', 'lien-he');
INSERT INTO `url_alias` VALUES (29, 'sitemap', '168', 'cac-benh-thuong-gap');
INSERT INTO `url_alias` VALUES (28, 'sitemap', '167', 'tu-thuoc-gia-dinh');
INSERT INTO `url_alias` VALUES (27, 'sitemap', '166', 'song-khoe-cung-labwell');
INSERT INTO `url_alias` VALUES (8, 'sitemap', '161', 'lien-he-chung-toi');
INSERT INTO `url_alias` VALUES (9, 'media', 'default13796696461', 'du-lich-hai-muoi-ngan');
INSERT INTO `url_alias` VALUES (26, 'sitemap', '165', 'qua-tang-20-thang10');
INSERT INTO `url_alias` VALUES (13, 'media', 'default13796710761', '');
INSERT INTO `url_alias` VALUES (14, 'media', 'default13796711351', '');
INSERT INTO `url_alias` VALUES (15, 'media', 'default13796711731', '');
INSERT INTO `url_alias` VALUES (16, 'media', 'default13796721911', 'du-lich-bui-can-gio');
INSERT INTO `url_alias` VALUES (17, 'media', 'default13796724191', 've-rung-an-cua');
INSERT INTO `url_alias` VALUES (18, 'media', 'default13796726541', 'duyen-tham-ca-du');
INSERT INTO `url_alias` VALUES (19, 'media', 'default13796727361', 've-vam-sat-nem-rau-bui-rung-ca-ro-bien');
INSERT INTO `url_alias` VALUES (20, 'media', 'default13799246971', 'hoa-hau-trai-dat-trong-duoc-o-can-gio');
INSERT INTO `url_alias` VALUES (21, 'media', 'default13799251051', 'cam-xuc-ve-chuyen-di-tu-thien-o-dao-thach-an-huyen-can-gio');
INSERT INTO `url_alias` VALUES (22, 'media', 'default13799256791', 'du-lich-sinh-thai-o-can-gio');
INSERT INTO `url_alias` VALUES (23, 'media', 'default13799258891', 'trai-nghiem-cam-giac-bi-vay-giua-dan-ca-sau-o-can-gio');
INSERT INTO `url_alias` VALUES (24, 'media', 'default13799261661', 'khu-nghi-duong-cao-cap');
INSERT INTO `url_alias` VALUES (25, 'media', 'default13799265661', 'vang-danh-lich-su-can-cu-rung-sac-can-gio');
INSERT INTO `url_alias` VALUES (30, 'sitemap', '169', 'dinh-duong');
INSERT INTO `url_alias` VALUES (31, 'sitemap', '170', 'suc-khoe-moi-ngay');
INSERT INTO `url_alias` VALUES (32, 'sitemap', '171', 'meo-vat');
INSERT INTO `url_alias` VALUES (33, 'sitemap', '172', 'hoi-dap');
INSERT INTO `url_alias` VALUES (34, 'sitemap', '173', 've-chung-toi');
INSERT INTO `url_alias` VALUES (35, 'sitemap', '174', 'san-pham-labwell');
INSERT INTO `url_alias` VALUES (36, 'sitemap', '175', 'dia-diem-mua-hang');
INSERT INTO `url_alias` VALUES (37, 'media', 'default13807699321', 'cac-benh-thuong-gap-va-cach-phong-benh');
INSERT INTO `url_alias` VALUES (38, 'media', 'default13807726921', 'Mam-hoa-san-nhai-trong-dac-san-dong-que');
INSERT INTO `url_alias` VALUES (39, 'media', 'default13807886371', '');
INSERT INTO `url_alias` VALUES (40, 'media', 'default13807887601', '');
INSERT INTO `url_alias` VALUES (41, 'media', 'default13807888511', '');
INSERT INTO `url_alias` VALUES (42, 'sitemap', '176', 'co-the-ban-chua-biet');
INSERT INTO `url_alias` VALUES (43, 'media', 'default13807947331', 'nhung-dieu-chua-biet-ve-co-the-nguoi');
INSERT INTO `url_alias` VALUES (44, 'media', 'default13807948391', 'nhung-dieu-ban-chua-biet-ve-cao-huyet-ap');
INSERT INTO `url_alias` VALUES (45, 'media', 'default13808543361', 'bam-mat');
INSERT INTO `url_alias` VALUES (46, 'media', 'default13808544851', 'benh-cam');
INSERT INTO `url_alias` VALUES (47, 'media', 'default13808588541', 'benh-chan-doi');
INSERT INTO `url_alias` VALUES (48, 'media', 'default13808590191', 'cach-khu-mui-co-the');
INSERT INTO `url_alias` VALUES (49, 'media', 'default13808592031', 'nhung-viec-can-lam-khi-bi-bong');
INSERT INTO `url_alias` VALUES (50, 'media', 'default13808595951', 'the-duc-tot-cho-tim-mach');
INSERT INTO `url_alias` VALUES (51, 'media', 'default13808597491', 'mot-bai-tap-duoi-7-can-benh');
INSERT INTO `url_alias` VALUES (52, 'media', 'default13808600261', 'thoi-gian-tap-the-duc-tot-nhat-cho-suc-khoe');
INSERT INTO `url_alias` VALUES (53, 'media', 'default13808602041', 'cac-bai-tap-the-duc-tot-cho-vong-2');
INSERT INTO `url_alias` VALUES (54, 'media', 'default13808606431', 'loi-ich-tram-duong-tu-trai-nho');
INSERT INTO `url_alias` VALUES (55, 'media', 'default13808608261', 'mon-an-phong-tri-benh-trong-mua-thu');
INSERT INTO `url_alias` VALUES (56, 'media', 'default13808609601', 'than-duong-que');
INSERT INTO `url_alias` VALUES (57, 'media', 'default13808611301', 'tac-dung-tri-benh-cua-trai-mang-cut');
INSERT INTO `url_alias` VALUES (58, 'media', 'default13808614261', 'cac-benh-tim-mach-thuong-gap');
INSERT INTO `url_alias` VALUES (61, 'media', 'default13808620081', 'ung-thu-vu-phat-hien-moi-trong-dieu-tri-benh');
INSERT INTO `url_alias` VALUES (62, 'media', 'default13808623481', 'mua-lanh-can-de-phong-benh-ho-hap');
INSERT INTO `url_alias` VALUES (63, 'media', 'default13808624401', 'nghen-va-cach-xu-ly-o-nguoi-cao-tuoi');
INSERT INTO `url_alias` VALUES (64, 'media', 'default13808779181', 'tui-cap-cuu-gia-dinh');
INSERT INTO `url_alias` VALUES (65, 'media', 'default13808779941', 'danh-muc-thuoc-thiet-yeu');

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

INSERT INTO `user` VALUES ('admin', 'admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Ben Solutions', 'tuan.pham@ben-solution.com', 'active', 45, '', 'asdasda', 'dasdsdasd', 'asdas', '2013-07-03 00:00:00', '0906009096999', '2009-12-02 14:34:41', '2013-09-20 09:41:32', '2009-12-02 14:52:10', '123', '1', '', 'fe80::9482:d8b:ac3a:c468');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- 
-- Dumping data for table `weblink`
-- 

INSERT INTO `weblink` VALUES (23, 'edwinbanner', 'kham-pha-van-hoa.html', 'upload/du-lich-lhnghinhong1.jpg', 2);
INSERT INTO `weblink` VALUES (32, 'sidebarnav', 'all', '', 1);
INSERT INTO `weblink` VALUES (31, 'sidebarnav', 'all', '', 1);
INSERT INTO `weblink` VALUES (29, 'homesimpleslides', '#', 'upload/big-banner.png', 1);
INSERT INTO `weblink` VALUES (10, 'logoslides', '#', 'upload/quy trình sửa chữa laptop.png', 1);
INSERT INTO `weblink` VALUES (11, 'logoslides', '#', 'upload/sửa chữa mainboar laptop.png', 1);
INSERT INTO `weblink` VALUES (12, 'logoslides', '#', 'upload/sửa chữa pin laptop.png', 1);
INSERT INTO `weblink` VALUES (13, 'logoslides', '#', 'upload/sửa chữa laptop.png', 1);
INSERT INTO `weblink` VALUES (14, 'logoslides', '#', 'upload/sua chữa màn hình laptop.png', 1);
INSERT INTO `weblink` VALUES (15, 'logoslides', '#', 'upload/trung tâm sửa chữa laptop hoàng vũ.png', 1);
INSERT INTO `weblink` VALUES (24, 'edwinbanner', 'can-gio-xua-va-nay.html', 'upload/Sunset-3.jpg', 1);
INSERT INTO `weblink` VALUES (25, 'edwinbanner', 'cam-nang-du-lich.html', 'upload/dulich.jpg', 3);
INSERT INTO `weblink` VALUES (26, 'sloganbanner', '#', '', 1);
INSERT INTO `weblink` VALUES (27, 'sloganbanner', '#', '', 1);

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

INSERT INTO `weblink_description` VALUES (31, 'vn', 'abc', '&lt;p&gt;\r\n	abcaaa&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (29, 'vn', 'Banner', '');
INSERT INTO `weblink_description` VALUES (10, 'vn', 'quy trình sửa chữa laptop', '');
INSERT INTO `weblink_description` VALUES (11, 'vn', 'đóng chip vga laptop', '');
INSERT INTO `weblink_description` VALUES (12, 'vn', 'sửa pin laptop', '');
INSERT INTO `weblink_description` VALUES (13, 'vn', 'sửa chữa laptop', '');
INSERT INTO `weblink_description` VALUES (14, 'vn', 'sửa màn hình laptop', '');
INSERT INTO `weblink_description` VALUES (15, 'vn', 'trung tâm sửa chữa laptop hoàng vũ', '');
INSERT INTO `weblink_description` VALUES (24, 'vn', 'Cần Giờ - Xưa và Nay', '&lt;p&gt;\r\n	Cần Giờ l&amp;agrave; huyện ven biển, ph&amp;iacute;a đ&amp;ocirc;ng nam TP.Hồ Ch&amp;iacute; Minh. Trước năm 1970 thuộc tỉnh Gia Định, từ năm 1976 thuộc về Đồng Nai với t&amp;ecirc;n gọi Duy&amp;ecirc;n Hải, đến năm 1978 về TP.HCM. M&amp;atilde;i cuối 1991 mới lấy lại t&amp;ecirc;n cũ: Cần Giờ. Xưa v&amp;agrave; nay chỉ l&amp;agrave; c&amp;aacute;ch n&amp;oacute;i để ph&amp;acirc;n biệt trước v&amp;agrave; sau khi Cần Giờ c&amp;oacute; đường giao th&amp;ocirc;ng bộ năm 1986, d&amp;ugrave; chỉ l&amp;agrave; đường cấp phối nối B&amp;igrave;nh Kh&amp;aacute;nh với thị trấn Cần Thạnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1984, t&amp;ocirc;i đi t&amp;agrave;u xuống Cần Giờ. T&amp;agrave;u xuất bến sớm ở Bạch Đằng, gần tối mới tới Cần Thạnh. Cảnh đẹp nhưng t&amp;ocirc;i chẳng để &amp;yacute; v&amp;igrave; thời đ&amp;oacute; hầu như chưa c&amp;oacute; du lịch. C&amp;aacute;i ăn, c&amp;aacute;i mặc c&amp;ograve;n tất tả ngược xu&amp;ocirc;i chưa đủ, n&amp;oacute;i chi việc vui chơi. Từ Cần Thạnh, t&amp;ocirc;i theo t&amp;agrave;u nhỏ về c&amp;aacute;c x&amp;atilde;. Nhớ lần đến x&amp;atilde; đảo Thạnh An, nước r&amp;ograve;ng, t&amp;agrave;u neo ngo&amp;agrave;i xa. Phải cởi quần d&amp;agrave;i, x&amp;aacute;ch d&amp;eacute;p, lội v&amp;agrave;o bờ, b&amp;ugrave;n ngập qu&amp;aacute; gối. L&amp;ecirc;n bờ, cũng kh&amp;ocirc;ng đi d&amp;eacute;p được v&amp;igrave; đất nh&amp;atilde;o nhoẹt cứ n&amp;iacute;u ch&amp;acirc;n người. Bạn tổng phụ tr&amp;aacute;ch Đội của x&amp;atilde; đ&amp;oacute;n t&amp;ocirc;i, vừa cười vừa tr&amp;aacute;ch kh&amp;eacute;o: &amp;ldquo;Đến anh c&amp;ograve;n kh&amp;ocirc;ng đi d&amp;eacute;p được. Vậy m&amp;agrave; ở th&amp;agrave;nh phố c&amp;aacute;c anh ph&amp;aacute;t động phong tr&amp;agrave;o học sinh đi học phải mang d&amp;eacute;p. Ở đ&amp;acirc;y tr&amp;ograve; ngh&amp;egrave;o, to&amp;agrave;n đi ch&amp;acirc;n đất, m&amp;agrave; c&amp;oacute; d&amp;eacute;p cũng kh&amp;ocirc;ng mang được...&amp;rdquo;.&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (26, 'vn', 'all', '&lt;div&gt;\r\n	Năm 2012, Cần Giờ được Unessco c&amp;ocirc;ng nhận l&amp;agrave; khu dự trữ sinh quyển thế giới&amp;nbsp;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Khu du lịch duy nhất ở Việt Nam c&amp;oacute; rừng, n&amp;uacute;i v&amp;agrave; biển&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height: 1.67em;&quot;&gt;(Sưu tầm)&lt;/span&gt;&lt;/div&gt;');
INSERT INTO `weblink_description` VALUES (27, 'vn', 'di', '&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Cuộc đời l&amp;agrave; những chuyến đi &amp;nbsp; ^^&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (23, 'vn', 'Khám Phá Văn Hóa', '&lt;p&gt;\r\n	Tiềm năng về quần thể động-thực vật đặc biệt phong ph&amp;uacute;, đa dạng c&amp;ugrave;ng với khả năng kh&amp;ocirc;i phục, chăm s&amp;oacute;c kỳ diệu của con người đ&amp;atilde; v&amp;agrave; đang hồi sinh Cần Giờ - v&amp;ugrave;ng đất hoang ho&amp;aacute; một thời do chất độc ho&amp;aacute; học trong chiến tranh-th&amp;agrave;nh khu bảo tồn thi&amp;ecirc;n nhi&amp;ecirc;n, một điểm du lịch hấp dẫn du kh&amp;aacute;ch trong v&amp;agrave; ngo&amp;agrave;i nước. Khu bảo tồn thi&amp;ecirc;n nhi&amp;ecirc;n rừng ngập mặn Cần Giờ (thuộc huyện Cần Giờ, th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh) l&amp;agrave; một trong những khu rừng ngập mặn điển h&amp;igrave;nh ở v&amp;ugrave;ng ven biển nhiệt đới, kh&amp;ocirc;ng chỉ cung cấp nhiều loại l&amp;acirc;m sản m&amp;agrave; c&amp;ograve;n l&amp;agrave; nơi cư tr&amp;uacute; của nhiều lo&amp;agrave;i hải sản, chim nước, chim di cư v&amp;agrave; một số lo&amp;agrave;i động vật lưỡng cư tr&amp;ecirc;n cạn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đ&amp;acirc;y cũng l&amp;agrave; khu rừng ngập mặn đầu ti&amp;ecirc;n ở Việt Nam được c&amp;ocirc;ng nhận l&amp;agrave; khu Dự trữ sinh quyển thế giới.Theo đ&amp;aacute;nh gi&amp;aacute; của c&amp;aacute;c chuy&amp;ecirc;n gia nước ngo&amp;agrave;i, Cần Giờ l&amp;agrave; khu rừng được kh&amp;ocirc;i phục, chăm s&amp;oacute;c, bảo vệ v&amp;agrave; quản l&amp;yacute; tốt nhất Đ&amp;ocirc;ng Nam &amp;Aacute;. Với sự hiện diện của khoảng 160 lo&amp;agrave;i, thảm thực vật Cần Giờ c&amp;ograve;n l&amp;agrave; m&amp;ocirc;i trường sinh sống của hơn 700 lo&amp;agrave;i động vật thủy sinh kh&amp;ocirc;ng xương sống, 137 lo&amp;agrave;i c&amp;aacute;, tr&amp;ecirc;n 40 lo&amp;agrave;i động vật c&amp;oacute; xương sống.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đặc biệt, nơi đ&amp;acirc;y đang h&amp;igrave;nh th&amp;agrave;nh trở lại c&amp;aacute;c s&amp;acirc;n chim tự nhi&amp;ecirc;n với số lo&amp;agrave;i đ&amp;atilde; chiếm tới 34% tổng số lo&amp;agrave;i chim nước ở Việt Nam, trong đ&amp;oacute; c&amp;oacute; tới 9 lo&amp;agrave;i qu&amp;yacute; hiếm được ghi trong s&amp;aacute;ch Đỏ của thế giới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kh&amp;ocirc;ng chỉ c&amp;oacute; thế, văn h&amp;oacute;a của cộng đồng người d&amp;acirc;n nơi đ&amp;acirc;y cũng rất phong ph&amp;uacute; v&amp;agrave; mang đậm bản sắc bản địa, gắn liền với c&amp;aacute;c l&amp;agrave;ng nghề truyền thống như l&amp;agrave;ng ch&amp;agrave;i, l&amp;agrave;ng rừng, l&amp;agrave;ng n&amp;ocirc;ng.... Đ&amp;acirc;y cũng l&amp;agrave; nơi đầu ti&amp;ecirc;n ở Việt Nam v&amp;agrave; khu vực Đ&amp;ocirc;ng Nam &amp;Aacute; ph&amp;aacute;t hiện ra khu mộ cổ chum với tr&amp;ecirc;n 300 ng&amp;ocirc;i, di chỉ c&amp;oacute; gi&amp;aacute; trị về nền văn h&amp;oacute;a &amp;Oacute;c Eo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Với nhiều loại h&amp;igrave;nh du lịch như nghỉ dưỡng, du lịch sinh th&amp;aacute;i, nghi&amp;ecirc;n cứu khoa học, Cần Giờ thu h&amp;uacute;t du kh&amp;aacute;ch bằng sự lựa chọn phong ph&amp;uacute;: tham quan L&amp;acirc;m vi&amp;ecirc;n Cần Giờ d&amp;agrave;nh cho những người th&amp;iacute;ch nghi&amp;ecirc;n cứu hệ động-thực vật; thăm đảo nu&amp;ocirc;i h&amp;agrave;ng ng&amp;agrave;n con khỉ sống tự do trong rừng; thăm s&amp;acirc;n chim tự nhi&amp;ecirc;n với diện t&amp;iacute;ch hơn 100 ha hay thưởng ngoạn cảnh đẹp thi&amp;ecirc;n nhi&amp;ecirc;n hiếm c&amp;oacute; ở Đầm Rơi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Du kh&amp;aacute;ch cũng c&amp;oacute; cơ hội tham quan rừng ngập mặn V&amp;agrave;m S&amp;aacute;t-một trong hai khu du lịch sinh th&amp;aacute;i ph&amp;aacute;t triển bền vững của thế giới tại Việt Nam- để tận hưởng kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;agrave;nh, thưởng thức những m&amp;oacute;n ăn được chế biến từ những sản vật sẵn c&amp;oacute; ở đ&amp;acirc;y như t&amp;ocirc;m, cua, ngao...&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thế mạnh du lịch, ph&amp;aacute;t triển thuỷ sản của Cần Giờ đ&amp;atilde; v&amp;agrave; đang l&amp;agrave; điểm nhấn để cải thiện cuộc sống của người d&amp;acirc;n nơi đ&amp;acirc;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Quy hoạch về một khu đ&amp;ocirc; thị lấn biến ở khu vực n&amp;agrave;y đ&amp;atilde; được Ch&amp;iacute;nh phủ ph&amp;ecirc; duyệt, với diện t&amp;iacute;ch khoảng 872 ha, nhằm x&amp;acirc;y dựng Cần Giờ th&amp;agrave;nh một trung t&amp;acirc;m dịch vụ du lịch-thương mại, bao gồm cả c&amp;aacute;c khu bảo t&amp;agrave;ng sinh th&amp;aacute;i biển v&amp;agrave;o năm 2010.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một V&amp;agrave;i Loại H&amp;igrave;nh Du Lịch Đặc Trưng :&lt;/p&gt;\r\n&lt;p&gt;\r\n	Du Lịch Thuyền Buồm&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nếu muốn du lịch bằng thuyền buồm m&amp;agrave; kh&amp;ocirc;ng cần phải ra đến vịnh Hạ Long th&amp;igrave; ngay tr&amp;ecirc;n s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n bạn c&amp;oacute; thể thực hiện một chuyến du ngoạn về V&amp;agrave;m S&amp;aacute;t (Cần Giờ) bằng du thuyền sang trọng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Th&amp;uacute; vị, đ&amp;oacute; l&amp;agrave; đ&amp;aacute;nh gi&amp;aacute; của hầu hết du kh&amp;aacute;ch tr&amp;ecirc;n chiếc du thuyền của C&amp;ocirc;ng ty thuyền buồm Đ&amp;ocirc;ng Dương. Ngay cả chủ những chiếc thuyền qua lại tr&amp;ecirc;n s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n cũng phải trầm trồ, th&amp;uacute; vị khi chi&amp;ecirc;m ngưỡng &amp;ldquo;anh bạn kh&amp;aacute;c người&amp;rdquo; đang nhẹ lướt tr&amp;ecirc;n d&amp;ograve;ng s&amp;ocirc;ng nặng ph&amp;ugrave; sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Th&amp;ecirc;m nữa, những cảnh tượng tr&amp;ecirc;n chuyến h&amp;agrave;nh tr&amp;igrave;nh lu&amp;ocirc;n g&amp;acirc;y bất ngờ cho kh&amp;aacute;ch, từ cảnh đ&amp;oacute;n b&amp;igrave;nh minh tr&amp;ecirc;n thuyền đến cảng Bến Ngh&amp;eacute;, Nh&amp;agrave; B&amp;egrave;, ph&amp;agrave; B&amp;igrave;nh Kh&amp;aacute;nh, khu c&amp;ocirc;ng nghiệp Hiệp Phước. Đặc biệt l&amp;agrave; nơi đến cuối c&amp;ugrave;ng l&amp;agrave; Khu du lịch Sinh th&amp;aacute;i V&amp;agrave;m S&amp;aacute;t (trực thuộc C&amp;ocirc;ng ty Dịch vụ Du lịch Ph&amp;uacute; Thọ, TPHCM) với những điểm tham quan độc đ&amp;aacute;o như: Đầm Dơi, s&amp;acirc;n chim, đầm c&amp;aacute; sấu, th&amp;aacute;p Tang Bồng, trại nai nu&amp;ocirc;i hoang d&amp;atilde; trong rừng, nh&amp;agrave; h&amp;agrave;ng đặc sản&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tr&amp;ecirc;n đường trở về du kh&amp;aacute;ch c&amp;ograve;n c&amp;oacute; cơ hội ngắm ho&amp;agrave;ng h&amp;ocirc;n tr&amp;ecirc;n s&amp;ocirc;ng, khi th&amp;agrave;nh phố l&amp;ecirc;n đ&amp;egrave;n tuyệt đẹp.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ri&amp;ecirc;ng c&amp;aacute;c h&amp;atilde;ng lữ h&amp;agrave;nh mừng v&amp;igrave; tuyến du lịch tr&amp;ecirc;n s&amp;ocirc;ng S&amp;agrave;i G&amp;ograve;n từ bến Bạch Đằng đến khu dự trữ sinh quyển thế giới - &amp;ldquo;l&amp;aacute; phổi xanh&amp;rdquo; của th&amp;agrave;nh phố rừng ngập mặn Cần Giờ c&amp;oacute; th&amp;ecirc;m dịch vụ mới phục vụ cho du kh&amp;aacute;ch trong v&amp;agrave; ngo&amp;agrave;i nước.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img src=&quot;http://www.dulichvele.com/ViewImage.aspx?id=9ef41ab9-824d-4bf5-b580-00a620619430&amp;amp;type=media&amp;amp;ext=jpg&quot; /&gt;&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (25, 'vn', 'Cẩm Nang Du Lịch', '&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.67em;&quot;&gt;Chỉ c&amp;aacute;ch trung t&amp;acirc;m th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh khoảng hơn 50km, Cần Giờ như một ốc đảo xanh tươi với những thảm rừng đước bạt ng&amp;agrave;n, chen lẫn trong đ&amp;oacute; l&amp;agrave; những khu vườn xum xu&amp;ecirc; c&amp;acirc;y tr&amp;aacute;i, đặc biệt c&amp;ograve;n c&amp;oacute; những m&amp;oacute;n hải sản tươi ngon, kh&amp;ocirc;ng thể n&amp;agrave;o qu&amp;ecirc;n. N&amp;oacute;i đến m&amp;oacute;n ngon Cần Giờ, trước hết phải n&amp;oacute;i đến hải sản. Cần Giờ c&amp;oacute; đường bờ biển d&amp;agrave;i khoảng 13 km, phần lớn l&amp;agrave; những b&amp;atilde;i ngh&amp;ecirc;u được nu&amp;ocirc;i trong m&amp;ocirc;i trường tự nhi&amp;ecirc;n. H&amp;agrave;ng ng&amp;agrave;y, tiếp nhận lượng lớn ph&amp;ugrave; sa từ c&amp;aacute;c con s&amp;ocirc;ng lớn từ Đồng Nai, So&amp;agrave;i Rạp đổ v&amp;agrave;o, v&amp;igrave; vậy hải sản ở đ&amp;acirc;y rất mau lớn v&amp;agrave; c&amp;oacute; vị ngọt tự nhi&amp;ecirc;n rất đậm đ&amp;agrave;. Ngh&amp;ecirc;u c&amp;oacute; m&amp;agrave;u trắng đục như sữa, thịt d&amp;agrave;y v&amp;agrave; dai, khi bắt l&amp;ecirc;n chỉ cần ng&amp;acirc;m nước sơ qua rồi hấp gừng, ăn với nước mắm ớt ngọt hoặc muối ti&amp;ecirc;u chanh th&amp;igrave; thật tuyệt vời.&lt;/span&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		Cần Giờ c&amp;oacute; kh&amp;aacute; nhiều loại hải sản, từ c&amp;aacute;c loại cua, c&amp;uacute;m, ghẹ đến t&amp;ocirc;m, ốc&amp;hellip; Trong c&amp;aacute;c m&amp;oacute;n được du kh&amp;aacute;ch y&amp;ecirc;u th&amp;iacute;ch nhất phải kể đến t&amp;ocirc;m. T&amp;ocirc;m Cần Giờ phần lớn l&amp;agrave; t&amp;ocirc;m s&amp;uacute;, được bắt từ biển hoặc c&amp;aacute;c ao, đầm. Ngo&amp;agrave;i ra, c&amp;ograve;n c&amp;oacute; c&amp;aacute;c loại kh&amp;aacute;c như t&amp;ocirc;m sắt với lớp vỏ cứng, hay t&amp;ocirc;m đất với lớp vỏ mềm trong, thịt dẻo lại ngọt tuyệt vời. Ngon nhất vẫn l&amp;agrave; loại t&amp;ocirc;m gạch son, thường c&amp;oacute; v&amp;agrave;o khoảng th&amp;aacute;ng 3-4 &amp;acirc;m lịch. Khi chế biến, chỉ cần rửa sạch t&amp;ocirc;m v&amp;agrave; cho v&amp;agrave;o nồi hấp, để một t&amp;iacute; bia l&amp;agrave; đ&amp;atilde; c&amp;oacute; một đĩa t&amp;ocirc;m đỏ tươi hấp dẫn c&amp;ograve;n nghi ng&amp;uacute;t kh&amp;oacute;i. Nếu kh&amp;ocirc;ng muốn ăn theo kiểu hấp, bạn thể thể nhờ nướng t&amp;ocirc;m ngay tại chỗ. M&amp;ugrave;i t&amp;ocirc;m thơm lừng, quyện v&amp;agrave;o m&amp;ugrave;i gi&amp;oacute; biển từ h&amp;agrave;ng dương sẽ khiến bạn cảm thấy ngon miệng hơn.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div style=&quot;text-align: center;&quot;&gt;\r\n		&lt;img alt=&quot;CẨM NANG DU LỊCH CẦN GIỜ&quot; src=&quot;http://nemotravel.vn/upload/images/Can%20Gio.jpg&quot; title=&quot;CẨM NANG DU LỊCH CẦN GIỜ&quot; /&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;br /&gt;\r\n		B&amp;ecirc;n cạnh cua c&amp;ograve;n c&amp;oacute; m&amp;oacute;n ghẹ biển. C&amp;oacute; loại m&amp;agrave;u đỏ hồng, c&amp;oacute; loại m&amp;agrave;u xanh. Ăn cua ghẹ ngon nhất l&amp;agrave; v&amp;agrave;o những ng&amp;agrave;y cuối th&amp;aacute;ng v&amp;igrave; thịt sẽ chắc hơn. Kh&amp;ocirc;ng n&amp;ecirc;n ăn v&amp;agrave;o những ng&amp;agrave;y rằm v&amp;igrave; thịt &amp;iacute;t &amp;ndash; d&amp;acirc;n địa phương gọi l&amp;agrave; &amp;ldquo;&amp;oacute;p&amp;rdquo;. Cần Giờ c&amp;ograve;n c&amp;oacute; loại cua c&amp;uacute;m. Về cơ bản, n&amp;oacute; giống h&amp;igrave;nh dạng như cua, sống chủ yếu trong rừng đước. Th&amp;acirc;n h&amp;igrave;nh m&amp;agrave;u đen, mang chiếc mai x&amp;ugrave; x&amp;igrave;, nhưng thịt th&amp;igrave; rất chắc v&amp;agrave; đặc biệt thơm ngon. C&amp;ograve;n ốc, Cần Giờ l&amp;agrave; nơi du kh&amp;aacute;ch c&amp;oacute; thể t&amp;igrave;m thấy nhiều m&amp;oacute;n ngon chế biến từ ốc như gỏi chua ốc đụn, ốc gi&amp;aacute;c, ốc hương biển hấp xả, ốc mỡ x&amp;agrave;o me&amp;hellip; Mỗi loại đều mang đến cho thực kh&amp;aacute;ch một cảm nhận ri&amp;ecirc;ng về vị ngon đặc trưng của m&amp;oacute;n ăn. Nếu ốc gi&amp;aacute;c cho du kh&amp;aacute;ch cảm gi&amp;aacute;c dai dai, gi&amp;ograve;n gi&amp;ograve;n, th&amp;igrave; ốc mỡ lại ngọt lịm v&amp;agrave; mềm mại. Lại c&amp;oacute; ốc hương biển với những chiếc b&amp;ocirc;ng lấm tấm, điểm xuyết th&amp;ecirc;m cho hương vị ngọt thanh v&amp;agrave; phảng phất hương biển của m&amp;igrave;nh.&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;');
INSERT INTO `weblink_description` VALUES (32, 'vn', '1234', '&lt;p&gt;\r\n	11111111111111111&lt;/p&gt;');

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
