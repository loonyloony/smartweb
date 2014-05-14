-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Aug 16, 2013 at 10:44 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `smartweb_sualaptophochiminh`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `addon`
-- 

INSERT INTO `addon` VALUES (1, 'supportonline', 'sidebar/supportonline', 'sidebar', 1);
INSERT INTO `addon` VALUES (2, 'webcounter', 'sidebar/webcounter', 'sidebar', 1);
INSERT INTO `addon` VALUES (3, 'homeslider', 'splash/homeslider', 'splash', 1);
INSERT INTO `addon` VALUES (4, 'homelink', 'splash/homelinks', 'splash', 1);
INSERT INTO `addon` VALUES (5, 'maskslider', 'splash/maskslider', 'splash', 1);
INSERT INTO `addon` VALUES (6, 'custombanner', 'splash/custombanner', 'splash', 1);
INSERT INTO `addon` VALUES (7, 'banner', 'sidebar/banner', 'sidebar', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `addon_description`
-- 

CREATE TABLE `addon_description` (
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `addonname` text collate utf8_unicode_ci NOT NULL,
  `languageid` varchar(20) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `addon_description`
-- 

INSERT INTO `addon_description` VALUES ('supportonline', 'Hỗ trợ trực tuyến', 'vn');
INSERT INTO `addon_description` VALUES ('webcounter', 'Thống kê web', 'vn');
INSERT INTO `addon_description` VALUES ('homeslider', 'Home Slider', 'vn');
INSERT INTO `addon_description` VALUES ('homelink', 'Home link', 'vn');
INSERT INTO `addon_description` VALUES ('maskslider', 'Mask Slider', 'vn');
INSERT INTO `addon_description` VALUES ('maskslider', 'Mask Slider', 'en');
INSERT INTO `addon_description` VALUES ('custombanner', 'Banner trang chủ tùy biến', 'vn');
INSERT INTO `addon_description` VALUES ('banner', 'Liên kết', 'vn');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=116 ;

-- 
-- Dumping data for table `category`
-- 

INSERT INTO `category` VALUES (1, 'category', 'Category', '', 1);
INSERT INTO `category` VALUES (41, 'status', 'Trạng thái', 'category', 5);
INSERT INTO `category` VALUES (115, 'saleoff', 'Sale Off', 'status', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `customer`
-- 

INSERT INTO `customer` VALUES (1, 1, 'default', 'Demo', 'Customer', 'demo@elifepartners.com', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, 0, 0, 0, 1, '0', '', '0000-00-00 00:00:00');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `customer_group`
-- 

INSERT INTO `customer_group` VALUES (1, 'default', 1, 2);
INSERT INTO `customer_group` VALUES (2, 'default', 1, 1);
INSERT INTO `customer_group` VALUES (7, 'default', 1, 3);
INSERT INTO `customer_group` VALUES (9, 'default', 1, 4);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `file`
-- 

INSERT INTO `file` VALUES (1, 'any', 'elife_logo.png', 'upload/elife_logo.png', 0, 0, 0, '7.349609375', 'png', '', 'admin', '2012-09-13 17:32:34', '2012-09-13 17:32:34', 'admin', '0000-00-00 00:00:00', '');
INSERT INTO `file` VALUES (2, 'image', 'elife_logo1.png', 'upload/elife_logo1.png', 0, 150, 64, '7.349609375', 'png', '', 'admin', '2012-09-23 14:17:59', '2012-09-23 14:17:59', 'admin', '0000-00-00 00:00:00', '');
INSERT INTO `file` VALUES (3, 'any', 'parisinspirationboard.jpg', 'upload/parisinspirationboard.jpg', 0, 0, 0, '2378.263671875', 'jpg', '', 'admin', '2012-09-28 18:18:14', '2012-09-28 18:18:14', 'admin', '0000-00-00 00:00:00', '');
INSERT INTO `file` VALUES (4, 'any', '115.jpg', 'upload/115.jpg', 0, 0, 0, '2283.9990234375', 'jpg', '', 'admin', '2012-10-02 04:45:35', '2012-10-02 04:45:35', 'admin', '0000-00-00 00:00:00', '');
INSERT INTO `file` VALUES (5, 'any', 'IMAX.png', 'upload/IMAX.png', 0, 0, 0, '1759.869140625', 'png', '', 'admin', '2012-10-02 04:51:04', '2012-10-02 04:51:04', 'admin', '0000-00-00 00:00:00', '');
INSERT INTO `file` VALUES (6, 'any', '1.jpg', 'upload/1.jpg', 0, 0, 0, '22.2841796875', 'jpg', '', 'admin', '2012-10-06 00:52:28', '2012-10-06 00:52:28', 'admin', '0000-00-00 00:00:00', '');
INSERT INTO `file` VALUES (7, 'any', '11.jpg', 'upload/11.jpg', 0, 0, 0, '22.2841796875', 'jpg', '', 'admin', '2012-10-06 01:05:21', '2012-10-06 01:05:21', 'admin', '0000-00-00 00:00:00', '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `layout`
-- 

INSERT INTO `layout` VALUES (1, 'default_layout', 'upload/elife_logo.png', 'http://localhost/demo/upload/', 'rightsidebar', 0, 1);
INSERT INTO `layout` VALUES (2, 'homepage', '', '', 'nosidebar', 0, 0);
INSERT INTO `layout` VALUES (5, 'contact', '', '', 'nosidebar', 0, 0);

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

INSERT INTO `layout_description` VALUES ('default_layout', 'Default', 'en');
INSERT INTO `layout_description` VALUES ('default_layout', 'Mặc định', 'vn');
INSERT INTO `layout_description` VALUES ('contact', 'Contact Layout', 'en');
INSERT INTO `layout_description` VALUES ('contact', 'Bố cục Liên Hệ', 'vn');
INSERT INTO `layout_description` VALUES ('homepage', 'Homepage', 'en');
INSERT INTO `layout_description` VALUES ('homepage', 'Trang chủ', 'vn');

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

INSERT INTO `layout_sidebar` VALUES ('default_layout', 1, 'left');

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

INSERT INTO `layout_splash` VALUES ('homepage', 'custombanner', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

-- 
-- Dumping data for table `media`
-- 

INSERT INTO `media` VALUES (1, 'default13518624661', '', 'media_information', '[72]', 'admin', 'VIỆN LAPTOP &lt;B&gt;HOÀNG VŨ&lt;/B&gt;', '', '', 'vn', '', '&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	Trước hết c&amp;ocirc;ng ty ch&amp;uacute;ng t&amp;ocirc;i xin gởi đến qu&amp;yacute; kh&amp;aacute;ch lời c&amp;aacute;m ơn ch&amp;acirc;n th&amp;agrave;nh v&amp;agrave; xin ch&amp;uacute;c qu&amp;yacute; kh&amp;aacute;ch một năm mới&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	&lt;strong&gt;&amp;rdquo;AN KHANG THỊNH VƯỢNG&amp;rdquo;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n	Khi n&amp;oacute;i về c&amp;ocirc;ng nghệ, thế giới chỉ c&amp;oacute; nhỏ hơn với sự ra đời của m&amp;aacute;y t&amp;iacute;nh. Đặc biệt biệt sự ra đời của m&amp;aacute;y t&amp;iacute;nh x&amp;aacute;ch tay,gi&amp;uacute;p mọi người thuận tiện hơn khi sử dụng d&amp;ugrave; bất cứ nơi đ&amp;acirc;u. Bởi vậy nhu cầu sửa chửa về laptop ng&amp;agrave;y c&amp;agrave;ng nhiều,dẫn đến h&amp;agrave;ng loạt c&amp;aacute;c trung t&amp;acirc;m,c&amp;ocirc;ng ty,cửa h&amp;agrave;ng,dịch vụ sửa chửa laptop ra đời.&lt;br /&gt;\r\n	Ch&amp;uacute;ng t&amp;ocirc;i nhận thấy sự cần thiết của mọi kh&amp;aacute;ch h&amp;agrave;ng về nhu cầu sửa laptop.Đ&amp;atilde; quyết định th&amp;agrave;nh lập&lt;br /&gt;\r\n	Lu&amp;ocirc;n đạt mục ti&amp;ecirc;u&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Tạo cho kh&amp;aacute;ch h&amp;agrave;ng sự h&amp;agrave;i l&amp;ograve;ng nhất khi đến với c&amp;ocirc;ng ty&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Đảm bảo uy t&amp;iacute;n,chất lượng,gi&amp;aacute; cả hợp l&amp;yacute;,lu&amp;ocirc;n đạt hiệu quả cao trong quy tr&amp;igrave;nh sửa chửa.&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		với mong muốn ng&amp;agrave;y c&amp;agrave;ng được phục vụ kh&amp;aacute;ch h&amp;agrave;ng tốt hơn.Ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; đầu tư th&amp;ecirc;m nhiều m&amp;aacute;y m&amp;oacute;c thiết bị hiện đại v&amp;agrave; tối t&amp;acirc;n nhất để phục qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng như phương chăm m&amp;agrave; ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; đưa ra:&amp;rdquo;lu&amp;ocirc;n đem đến chất lượng ho&amp;agrave;n hảo&amp;rdquo;.&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		&amp;nbsp;&amp;ldquo;Bệnh viện laptop Ho&amp;agrave;ng Vũ&amp;rdquo; đ&amp;atilde; được c&amp;aacute;c kh&amp;aacute;ch h&amp;agrave;ng đ&amp;aacute;nh gi&amp;aacute; rất cao,ho&amp;agrave;n to&amp;agrave;n tin tưởng về chất lượng,dịch vụ v&amp;agrave; uy t&amp;iacute;n.&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Cho đến nay bằng những kinh nghiệm t&amp;iacute;ch lũy được qua thực tế l&amp;agrave;m việc,c&amp;ugrave;ng với nỗ lực kh&amp;ocirc;ng ngừng học hỏi v&amp;agrave; s&amp;aacute;ng tạo của đội ngũ thợ c&amp;oacute; tay nghề cao.C&amp;ocirc;ng ty đ&amp;atilde; sửa chửa h&amp;agrave;ng ng&amp;agrave;n m&amp;aacute;y laptop,sửa chữa dưới sự gi&amp;aacute;m s&amp;aacute;t của kh&amp;aacute;c h&amp;agrave;ng với đủ c&amp;aacute;c loại bệnh kh&amp;aacute;c nhau: main,nguồn,mờ bo cao &amp;aacute;p&amp;hellip;.lu&amp;ocirc;n đ&amp;ecirc;m lại cho kh&amp;aacute;ch h&amp;agrave;ng những lợi &amp;iacute;ch v&amp;agrave; sự h&amp;agrave;i l&amp;ograve;ng cao nhất.Đặc biệt c&amp;ocirc;ng ty ch&amp;uacute;ng t&amp;ocirc;i c&amp;oacute; nhập m&amp;aacute;y đ&amp;oacute;ng chip.với quy tr&amp;igrave;nh c&amp;ocirc;ng nghệ đ&amp;oacute;ng chip hiện đại,đảm bảo ch&amp;iacute;nh x&amp;aacute;c,hiệu quả cao,đ&amp;oacute;ng chip lấy liền.&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Để mở rộng v&amp;agrave; ph&amp;aacute;t triển mạnh hơn nửa c&amp;ocirc;ng ty&amp;nbsp; đ&amp;atilde; tiền th&amp;agrave;nh đ&amp;agrave;o tạo đội ngủ kỹ thuật vi&amp;ecirc;n trẻ,năng động,đầy nhiệt t&amp;igrave;nh trong c&amp;ocirc;ng việc,sữa chửa trực tiếp tại c&amp;ocirc;ng ty.Song song với việc đầu tư trang thiết bị hiện đại,c&amp;ocirc;ng ty c&amp;ograve;n đặt biệt ch&amp;uacute; trọng đến dịch vụ chăm s&amp;oacute;c kh&amp;aacute;ch h&amp;agrave;ng.&lt;/li&gt;\r\n&lt;/ul&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 01:14:00', 'admin', '2012-11-28 01:14:00');
INSERT INTO `media` VALUES (2, 'default13518624662', '', 'media_information', '[72]', 'admin', 'About Tu Lap', '', '', 'en', '', '&lt;p&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Communications Company Positioning Self Making born with a media specialist knowledge, stimulate self-learning ability and creativity in each child nguoi.Dieu comes from the concept of the entire company: &amp;quot;Creativity comes from understanding.&amp;quot; Understanding and knowledge is the cornerstone of every individual, every business, every country.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Perform parallel to the direction to this long-term strategy is a collaborative project of the Media Prepare yourself with the system of gas stations across the country.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;div&gt;\r\n	Independent not only gas station advertising model from abroad to Vietnam but also contribute back to the world a new form of advertising based on orientation: construction of petrol stations into media professional, effective results and are useful for both the environment and society.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Currently we have head office in Ho Chi Minh City and a branch in Hanoi. All requests for cooperation, please contact:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	City office:&lt;/div&gt;\r\n&lt;div&gt;\r\n	LL1 Ba Vi, Ward 15, District 10, Ho Chi Minh City&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: (84-8) 39770600&lt;/div&gt;\r\n&lt;div&gt;\r\n	Fax: 08-39770603&lt;/div&gt;\r\n&lt;div&gt;\r\n	www.tulap.com.vn&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Head Office in Hanoi:&lt;/div&gt;\r\n&lt;div&gt;\r\n	314 Thai Ha, P. Trung Liet Ward Dong Da - Ha Noi&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: 04-39941516&lt;/div&gt;\r\n&lt;div&gt;\r\n	FAX: 04-35149085&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	About the gas station advertising projects:&lt;/div&gt;\r\n&lt;div&gt;\r\n	Gas station is a type of advertising has long appeared in the world: Canada, USA, Singapore .. etc. .. In Vietnam?&lt;/div&gt;\r\n&lt;div&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hanoi and Ho Chi Minh City for every two people is one motorcycle.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Average time once poured from 1.5-2 minutes&lt;/div&gt;\r\n&lt;div&gt;\r\n	More than 6 million people Hanoi and HCMC average 1 to 2 times at the gas station in a week&lt;/div&gt;\r\n&lt;div&gt;\r\n	Meaning: A large amount of targeted customers of the company are concentrated here. ... And independence believed that the gas station is much more than just a conventional oil and gas business today!&lt;/div&gt;\r\n&lt;div&gt;\r\n	Details: Gas Stations in Vietnam, 98 percent of architecture &amp;quot;matchbox&amp;quot;. And also about the gas stations in 5 cities of Hanoi, Vinh, Da Nang, Ho Chi Minh City, Can Tho without the shadow of the trees, only concrete, steel and uncomfortable feeling of buyers and sale.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Because outdoor advertising is a type of architecture, its social function is the beauty of the surrounding space. Certain terms, each station is a public place. We aim to make the public that everyone with friendly architecture combined with advertising, with trees, with useful knowledge for life.&lt;/div&gt;\r\n&lt;div&gt;\r\n	With the same orientation, we intend to 5 years will be the same for gasoline 3000 m2 with trees contribution to the big cities, especially Ho Chi Minh City where the green area is 1.5 m2 / person, less than 10 times the standard. It is a small number, but in return 3000 m2 green architecture that is integrated content, is cultivated in places where people need them most: the gas station.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hopefully in the next 5 years when someone in the gas station in the presence of us, you see the flower buds are well cared for and know that when you buy your gasoline is also contributing to the protection of the environment where you live.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Please send my heartfelt thanks to the petroleum partners, agencies of Culture, Sports and Tourism, the Department of Culture, Sports and Tourism in Ho Chi Minh City, Hanoi, Can Tho, Long An, Binh Duong.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:21:06', 'admin', '2012-11-02 20:21:06');
INSERT INTO `media` VALUES (3, 'default13518625761', '', 'media_information', '[72]', 'admin', 'Giới thiệu về Tự Lập', '', '', 'vn', '', '&lt;p&gt;\r\n	Ch&amp;uacute;ng ta c&amp;oacute; tr&amp;ecirc;n 20 triệu xe m&amp;aacute;y v&amp;agrave; hơn 900 ng&amp;agrave;n &amp;ocirc; t&amp;ocirc; cho khoảng hơn 84 triệu d&amp;acirc;n tại thời điểm cuối năm 2008.&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Communications Company Positioning Self Making born with a media specialist knowledge, stimulate self-learning ability and creativity in each child nguoi.Dieu comes from the concept of the entire company: &amp;quot;Creativity comes from understanding.&amp;quot; Understanding and knowledge is the cornerstone of every individual, every business, every country.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Perform parallel to the direction to this long-term strategy is a collaborative project of the Media Prepare yourself with the system of gas stations across the country.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;div&gt;\r\n	Independent not only gas station advertising model from abroad to Vietnam but also contribute back to the world a new form of advertising based on orientation: construction of petrol stations into media professional, effective results and are useful for both the environment and society.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Currently we have head office in Ho Chi Minh City and a branch in Hanoi. All requests for cooperation, please contact:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	City office:&lt;/div&gt;\r\n&lt;div&gt;\r\n	LL1 Ba Vi, Ward 15, District 10, Ho Chi Minh City&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: (84-8) 39770600&lt;/div&gt;\r\n&lt;div&gt;\r\n	Fax: 08-39770603&lt;/div&gt;\r\n&lt;div&gt;\r\n	www.tulap.com.vn&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Head Office in Hanoi:&lt;/div&gt;\r\n&lt;div&gt;\r\n	314 Thai Ha, P. Trung Liet Ward Dong Da - Ha Noi&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: 04-39941516&lt;/div&gt;\r\n&lt;div&gt;\r\n	FAX: 04-35149085&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	About the gas station advertising projects:&lt;/div&gt;\r\n&lt;div&gt;\r\n	Gas station is a type of advertising has long appeared in the world: Canada, USA, Singapore .. etc. .. In Vietnam?&lt;/div&gt;\r\n&lt;div&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hanoi and Ho Chi Minh City for every two people is one motorcycle.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Average time once poured from 1.5-2 minutes&lt;/div&gt;\r\n&lt;div&gt;\r\n	More than 6 million people Hanoi and HCMC average 1 to 2 times at the gas station in a week&lt;/div&gt;\r\n&lt;div&gt;\r\n	Meaning: A large amount of targeted customers of the company are concentrated here. ... And independence believed that the gas station is much more than just a conventional oil and gas business today!&lt;/div&gt;\r\n&lt;div&gt;\r\n	Details: Gas Stations in Vietnam, 98 percent of architecture &amp;quot;matchbox&amp;quot;. And also about the gas stations in 5 cities of Hanoi, Vinh, Da Nang, Ho Chi Minh City, Can Tho without the shadow of the trees, only concrete, steel and uncomfortable feeling of buyers and sale.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Because outdoor advertising is a type of architecture, its social function is the beauty of the surrounding space. Certain terms, each station is a public place. We aim to make the public that everyone with friendly architecture combined with advertising, with trees, with useful knowledge for life.&lt;/div&gt;\r\n&lt;div&gt;\r\n	With the same orientation, we intend to 5 years will be the same for gasoline 3000 m2 with trees contribution to the big cities, especially Ho Chi Minh City where the green area is 1.5 m2 / person, less than 10 times the standard. It is a small number, but in return 3000 m2 green architecture that is integrated content, is cultivated in places where people need them most: the gas station.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hopefully in the next 5 years when someone in the gas station in the presence of us, you see the flower buds are well cared for and know that when you buy your gasoline is also contributing to the protection of the environment where you live.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Please send my heartfelt thanks to the petroleum partners, agencies of Culture, Sports and Tourism, the Department of Culture, Sports and Tourism in Ho Chi Minh City, Hanoi, Can Tho, Long An, Binh Duong.&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:22:56', 'admin', '2012-11-02 20:22:56');
INSERT INTO `media` VALUES (4, 'default13518625762', '', 'media_information', '[72]', 'admin', 'About Tu Lap', '', '', 'en', '', '&lt;p&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Communications Company Positioning Self Making born with a media specialist knowledge, stimulate self-learning ability and creativity in each child nguoi.Dieu comes from the concept of the entire company: &amp;quot;Creativity comes from understanding.&amp;quot; Understanding and knowledge is the cornerstone of every individual, every business, every country.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Perform parallel to the direction to this long-term strategy is a collaborative project of the Media Prepare yourself with the system of gas stations across the country.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;div&gt;\r\n	Independent not only gas station advertising model from abroad to Vietnam but also contribute back to the world a new form of advertising based on orientation: construction of petrol stations into media professional, effective results and are useful for both the environment and society.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Currently we have head office in Ho Chi Minh City and a branch in Hanoi. All requests for cooperation, please contact:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	City office:&lt;/div&gt;\r\n&lt;div&gt;\r\n	LL1 Ba Vi, Ward 15, District 10, Ho Chi Minh City&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: (84-8) 39770600&lt;/div&gt;\r\n&lt;div&gt;\r\n	Fax: 08-39770603&lt;/div&gt;\r\n&lt;div&gt;\r\n	www.tulap.com.vn&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Head Office in Hanoi:&lt;/div&gt;\r\n&lt;div&gt;\r\n	314 Thai Ha, P. Trung Liet Ward Dong Da - Ha Noi&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: 04-39941516&lt;/div&gt;\r\n&lt;div&gt;\r\n	FAX: 04-35149085&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	About the gas station advertising projects:&lt;/div&gt;\r\n&lt;div&gt;\r\n	Gas station is a type of advertising has long appeared in the world: Canada, USA, Singapore .. etc. .. In Vietnam?&lt;/div&gt;\r\n&lt;div&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hanoi and Ho Chi Minh City for every two people is one motorcycle.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Average time once poured from 1.5-2 minutes&lt;/div&gt;\r\n&lt;div&gt;\r\n	More than 6 million people Hanoi and HCMC average 1 to 2 times at the gas station in a week&lt;/div&gt;\r\n&lt;div&gt;\r\n	Meaning: A large amount of targeted customers of the company are concentrated here. ... And independence believed that the gas station is much more than just a conventional oil and gas business today!&lt;/div&gt;\r\n&lt;div&gt;\r\n	Details: Gas Stations in Vietnam, 98 percent of architecture &amp;quot;matchbox&amp;quot;. And also about the gas stations in 5 cities of Hanoi, Vinh, Da Nang, Ho Chi Minh City, Can Tho without the shadow of the trees, only concrete, steel and uncomfortable feeling of buyers and sale.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Because outdoor advertising is a type of architecture, its social function is the beauty of the surrounding space. Certain terms, each station is a public place. We aim to make the public that everyone with friendly architecture combined with advertising, with trees, with useful knowledge for life.&lt;/div&gt;\r\n&lt;div&gt;\r\n	With the same orientation, we intend to 5 years will be the same for gasoline 3000 m2 with trees contribution to the big cities, especially Ho Chi Minh City where the green area is 1.5 m2 / person, less than 10 times the standard. It is a small number, but in return 3000 m2 green architecture that is integrated content, is cultivated in places where people need them most: the gas station.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hopefully in the next 5 years when someone in the gas station in the presence of us, you see the flower buds are well cared for and know that when you buy your gasoline is also contributing to the protection of the environment where you live.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Please send my heartfelt thanks to the petroleum partners, agencies of Culture, Sports and Tourism, the Department of Culture, Sports and Tourism in Ho Chi Minh City, Hanoi, Can Tho, Long An, Binh Duong.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:22:56', 'admin', '2012-11-02 20:22:56');
INSERT INTO `media` VALUES (5, 'default13518631551', '', 'media_news', '[76]', 'admin', 'Tay Bơm - Nhỏ Mà Có Võ', '', '', 'vn', '&lt;p&gt;\r\n	Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng &amp;ndash; một vị tr&amp;iacute; nhỏ tưởng như kh&amp;oacute; c&amp;oacute; thể đặt h&amp;igrave;nh ảnh quảng c&amp;aacute;o đ&amp;atilde; cho thấy một c&amp;aacute;ch nh&amp;igrave;n kh&amp;aacute;c đề cao OTS (opportunity to see). Kể từ đầu th&amp;aacute;ng 4 năm 2011, c&amp;ocirc;ng ty Kissy Việt Nam sẽ ch&amp;iacute;nh thức quảng c&amp;aacute;o sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh KISSY tr&amp;ecirc;n vị tr&amp;iacute; tay bơm ở to&amp;agrave;n bộ hệ thống cửa h&amp;agrave;ng xăng dầu Petrolimex tại TP.HCM. Bạn c&amp;oacute; thể đứng 15 ph&amp;uacute;t để quan s&amp;aacute;t kh&amp;aacute;ch v&amp;agrave;o đổ xăng tại thời điểm đ&amp;ocirc;ng kh&amp;aacute;ch (7h30 &amp;ndash; 9h, 16h30 &amp;ndash; 19h) sẽ thấy tr&amp;ecirc;n 95% lượng kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu đều c&amp;oacute; h&amp;agrave;nh vi nh&amp;igrave;n v&amp;agrave;o tay bơm khi đang được bơm xăng. Đặc điểm n&amp;agrave;y đ&amp;ocirc;i khi thật kh&amp;oacute; giải th&amp;iacute;ch, chỉ biết rằng đ&amp;oacute; l&amp;agrave; h&amp;agrave;nh vi của số đ&amp;ocirc;ng &amp;aacute;p đảo đem lại cho vị tr&amp;iacute; quảng c&amp;aacute;o n&amp;agrave;y lượng OTS đ&amp;aacute;ng kinh ngạc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để tối ưu ho&amp;aacute; hiệu quả quảng c&amp;aacute;o của kh&amp;aacute;ch h&amp;agrave;ng, Tự Lập đ&amp;atilde; kh&amp;ocirc;ng ngừng s&amp;aacute;ng tạo, t&amp;igrave;m ra những phương &amp;aacute;n, kiểu d&amp;aacute;ng, vật liệu quảng c&amp;aacute;o mới, lạ nhằm l&amp;agrave;m bổi bật thương hiệu của kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave; tạo thiện cảm trong mắt người ti&amp;ecirc;u d&amp;ugrave;ng. Sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh Kissy &amp;ndash; một ph&amp;aacute;t minh mới được cấp bằng s&amp;aacute;ng chế với nhiều t&amp;iacute;nh năng vượt trội gi&amp;uacute;p bảo vệ sức khoẻ chắc chắn sẽ tạo đột ph&amp;aacute; về hiệu quả nhắc nhớ, doanh số b&amp;aacute;n h&amp;agrave;ng với quảng c&amp;aacute;o tại tay bơm tr&amp;ecirc;n to&amp;agrave;n bộ hệ thống trạm xăng thuộc quyền khai th&amp;aacute;c quảng c&amp;aacute;o của Truyền Th&amp;ocirc;ng Tự Lập tại TP HCM.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 20:41:48', 'admin', '2012-11-02 20:32:35');
INSERT INTO `media` VALUES (6, 'default13518631552', '', 'media_news', '[76]', 'admin', 'Tay Bơm - Nhỏ Mà Có Võ', '', '', 'en', '&lt;p&gt;\r\n	Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng &amp;ndash; một vị tr&amp;iacute; nhỏ tưởng như kh&amp;oacute; c&amp;oacute; thể đặt h&amp;igrave;nh ảnh quảng c&amp;aacute;o đ&amp;atilde; cho thấy một c&amp;aacute;ch nh&amp;igrave;n kh&amp;aacute;c đề cao OTS (opportunity to see). Kể từ đầu th&amp;aacute;ng 4 năm 2011, c&amp;ocirc;ng ty Kissy Việt Nam sẽ ch&amp;iacute;nh thức quảng c&amp;aacute;o sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh KISSY tr&amp;ecirc;n vị tr&amp;iacute; tay bơm ở to&amp;agrave;n bộ hệ thống cửa h&amp;agrave;ng xăng dầu Petrolimex tại TP.HCM. Bạn c&amp;oacute; thể đứng 15 ph&amp;uacute;t để quan s&amp;aacute;t kh&amp;aacute;ch v&amp;agrave;o đổ xăng tại thời điểm đ&amp;ocirc;ng kh&amp;aacute;ch (7h30 &amp;ndash; 9h, 16h30 &amp;ndash; 19h) sẽ thấy tr&amp;ecirc;n 95% lượng kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu đều c&amp;oacute; h&amp;agrave;nh vi nh&amp;igrave;n v&amp;agrave;o tay bơm khi đang được bơm xăng. Đặc điểm n&amp;agrave;y đ&amp;ocirc;i khi thật kh&amp;oacute; giải th&amp;iacute;ch, chỉ biết rằng đ&amp;oacute; l&amp;agrave; h&amp;agrave;nh vi của số đ&amp;ocirc;ng &amp;aacute;p đảo đem lại cho vị tr&amp;iacute; quảng c&amp;aacute;o n&amp;agrave;y lượng OTS đ&amp;aacute;ng kinh ngạc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để tối ưu ho&amp;aacute; hiệu quả quảng c&amp;aacute;o của kh&amp;aacute;ch h&amp;agrave;ng, Tự Lập đ&amp;atilde; kh&amp;ocirc;ng ngừng s&amp;aacute;ng tạo, t&amp;igrave;m ra những phương &amp;aacute;n, kiểu d&amp;aacute;ng, vật liệu quảng c&amp;aacute;o mới, lạ nhằm l&amp;agrave;m bổi bật thương hiệu của kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave; tạo thiện cảm trong mắt người ti&amp;ecirc;u d&amp;ugrave;ng. Sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh Kissy &amp;ndash; một ph&amp;aacute;t minh mới được cấp bằng s&amp;aacute;ng chế với nhiều t&amp;iacute;nh năng vượt trội gi&amp;uacute;p bảo vệ sức khoẻ chắc chắn sẽ tạo đột ph&amp;aacute; về hiệu quả nhắc nhớ, doanh số b&amp;aacute;n h&amp;agrave;ng với quảng c&amp;aacute;o tại tay bơm tr&amp;ecirc;n to&amp;agrave;n bộ hệ thống trạm xăng thuộc quyền khai th&amp;aacute;c quảng c&amp;aacute;o của Truyền Th&amp;ocirc;ng Tự Lập tại TP HCM.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:32:35', 'admin', '2012-11-02 20:32:35');
INSERT INTO `media` VALUES (7, 'default13518635181', '', 'media_news', '[76]', 'admin', 'Tay Bơm - Nhỏ Mà Có Võ', '', '', 'vn', '&lt;p&gt;\r\n	Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng &amp;ndash; một vị tr&amp;iacute; nhỏ tưởng như kh&amp;oacute; c&amp;oacute; thể đặt h&amp;igrave;nh ảnh quảng c&amp;aacute;o đ&amp;atilde; cho thấy một c&amp;aacute;ch nh&amp;igrave;n kh&amp;aacute;c đề cao OTS (opportunity to see). Kể từ đầu th&amp;aacute;ng 4 năm 2011, c&amp;ocirc;ng ty Kissy Việt Nam sẽ ch&amp;iacute;nh thức quảng c&amp;aacute;o sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh KISSY tr&amp;ecirc;n vị tr&amp;iacute; tay bơm ở to&amp;agrave;n bộ hệ thống cửa h&amp;agrave;ng xăng dầu Petrolimex tại TP.HCM. Bạn c&amp;oacute; thể đứng 15 ph&amp;uacute;t để quan s&amp;aacute;t kh&amp;aacute;ch v&amp;agrave;o đổ xăng tại thời điểm đ&amp;ocirc;ng kh&amp;aacute;ch (7h30 &amp;ndash; 9h, 16h30 &amp;ndash; 19h) sẽ thấy tr&amp;ecirc;n 95% lượng kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu đều c&amp;oacute; h&amp;agrave;nh vi nh&amp;igrave;n v&amp;agrave;o tay bơm khi đang được bơm xăng. Đặc điểm n&amp;agrave;y đ&amp;ocirc;i khi thật kh&amp;oacute; giải th&amp;iacute;ch, chỉ biết rằng đ&amp;oacute; l&amp;agrave; h&amp;agrave;nh vi của số đ&amp;ocirc;ng &amp;aacute;p đảo đem lại cho vị tr&amp;iacute; quảng c&amp;aacute;o n&amp;agrave;y lượng OTS đ&amp;aacute;ng kinh ngạc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để tối ưu ho&amp;aacute; hiệu quả quảng c&amp;aacute;o của kh&amp;aacute;ch h&amp;agrave;ng, Tự Lập đ&amp;atilde; kh&amp;ocirc;ng ngừng s&amp;aacute;ng tạo, t&amp;igrave;m ra những phương &amp;aacute;n, kiểu d&amp;aacute;ng, vật liệu quảng c&amp;aacute;o mới, lạ nhằm l&amp;agrave;m bổi bật thương hiệu của kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave; tạo thiện cảm trong mắt người ti&amp;ecirc;u d&amp;ugrave;ng. Sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh Kissy &amp;ndash; một ph&amp;aacute;t minh mới được cấp bằng s&amp;aacute;ng chế với nhiều t&amp;iacute;nh năng vượt trội gi&amp;uacute;p bảo vệ sức khoẻ chắc chắn sẽ tạo đột ph&amp;aacute; về hiệu quả nhắc nhớ, doanh số b&amp;aacute;n h&amp;agrave;ng với quảng c&amp;aacute;o tại tay bơm tr&amp;ecirc;n to&amp;agrave;n bộ hệ thống trạm xăng thuộc quyền khai th&amp;aacute;c quảng c&amp;aacute;o của Truyền Th&amp;ocirc;ng Tự Lập tại TP HCM.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 20:41:52', 'admin', '2012-11-02 20:38:38');
INSERT INTO `media` VALUES (8, 'default13518635182', '', 'media_news', '[76]', 'admin', 'Hand Pumps - small martial that', '', '', 'en', '&lt;p&gt;\r\n	Until now, most people are always thinking advertising to attract new vision of consumers. However, the ad placement on the hand pump at the gas station&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Until now, most people are always thinking advertising to attract new vision of consumers. However, the ad placement on the hand pump at the gas station - a small position seemed hard to put ad image showed a different highlight OTS (opportunity to see). Since the beginning of April 2011, the official the Kissy Vietnam will promote products masks the active fiber Kissy hand position in the entire pump system Petrolimex shop in Ho Chi Minh City. You can stand 15 minutes to observe the gas at crowds (7:30 - 9 am, 16h30 - 19h) will see over 95% of clients in the fuel pump hand look at the behavior when being pump. This feature is sometimes hard to explain, just know that it is the behavior of the overwhelming majority gave this ad placements of OTS amazing.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	To optimize the effectiveness of advertising customers, from Lap constantly to create, find out the plans, designs, new advertising material, is aimed at by the customer&amp;#39;s brand and create sympathy in the eyes of consumers. Masks the active fiber products Kissy - a new invention patents with many outstanding features to help protect the health breakthrough will certainly recall effectiveness, sales with ad in hand pump gas station on the entire system of the right to exploit Media advertising Self-Making in Ho Chi Minh City.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:38:38', 'admin', '2012-11-02 20:38:38');
INSERT INTO `media` VALUES (9, 'default13518637031', '', 'media_news', '[76]', 'admin', 'Tự Lập Hỗ Trợ Petrolimex Cải Thiện Môi Trường Làm Việc Cho Nhân Viên', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Chất lượng dịch vụ của một doanh nghiệp phụ thuộc rất nhiều v&amp;agrave;o th&amp;aacute;i độ v&amp;agrave; tinh thần l&amp;agrave;m việc của nh&amp;acirc;n vi&amp;ecirc;n v&amp;igrave; họ l&amp;agrave; người tiếp x&amp;uacute;c trực tiếp với kh&amp;aacute;ch h&amp;agrave;ng. V&amp;igrave; vậy, để n&amp;acirc;ng cao chất lượng dịch vụ, một trong những việc quan trọng l&amp;agrave; cải thiện m&amp;ocirc;i trường l&amp;agrave;m việc, quan t&amp;acirc;m v&amp;agrave; chăm lo cho đời sống của nh&amp;acirc;n vi&amp;ecirc;n.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Chất lượng dịch vụ của một doanh nghiệp phụ thuộc rất nhiều v&amp;agrave;o th&amp;aacute;i độ v&amp;agrave; tinh thần l&amp;agrave;m việc của nh&amp;acirc;n vi&amp;ecirc;n v&amp;igrave; họ l&amp;agrave; người tiếp x&amp;uacute;c trực tiếp với kh&amp;aacute;ch h&amp;agrave;ng. V&amp;igrave; vậy, để n&amp;acirc;ng cao chất lượng dịch vụ, một trong những việc quan trọng l&amp;agrave; cải thiện m&amp;ocirc;i trường l&amp;agrave;m việc, quan t&amp;acirc;m v&amp;agrave; chăm lo cho đời sống của nh&amp;acirc;n vi&amp;ecirc;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hiện nh&amp;acirc;n vi&amp;ecirc;n ở c&amp;aacute;c trạm xăng phải đứng li&amp;ecirc;n tục trong suốt thời gian l&amp;agrave;m việc: từ 6-8 tiếng mỗi ng&amp;agrave;y. Điều kiện l&amp;agrave;m việc như thế n&amp;agrave;y ảnh hưởng &amp;iacute;t nhiều đến sức khỏe v&amp;agrave; tinh thần l&amp;agrave;m việc của họ. Với mong muốn cải thiện m&amp;ocirc;i trường l&amp;agrave;m việc cho nh&amp;acirc;n vi&amp;ecirc;n b&amp;aacute;n xăng, cũng l&amp;agrave; để n&amp;acirc;ng cao chất lượng phục vụ cho đ&amp;ocirc;ng đảo người đến tiếp nhi&amp;ecirc;n liệu, v&amp;agrave; biến trạm xăng trở th&amp;agrave;nh một địa điểm c&amp;ocirc;ng cộng sạch, đẹp, th&amp;acirc;n thiện, văn minh, Tự Lập đ&amp;atilde; đề xuất triển khai phương &amp;aacute;n x&amp;acirc;y dựng Cột trụ đa năng ở c&amp;aacute;c trạm xăng của Petrolimex.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Dự &amp;aacute;n n&amp;agrave;y khai th&amp;aacute;c tiết kiệm tối đa kh&amp;ocirc;ng gian trạm xăng bằng c&amp;aacute;ch phức hợp nhiều chức năng trong một trụ cột th&amp;ocirc;ng minh, gi&amp;uacute;p qui hoạch trạm xăng th&amp;ocirc;ng tho&amp;aacute;ng, sạch sẽ, tiện dụng, hiện đại v&amp;agrave; văn minh hơn. Trong phương &amp;aacute;n thiết kế, Tự Lập đưa chức năng ghế ngồi v&amp;agrave;o Cột trụ đa năng, đ&amp;acirc;y l&amp;agrave; nơi nh&amp;acirc;n vi&amp;ecirc;n sẽ thay nhau ngồi nghỉ ngơi trong những l&amp;uacute;c vắng kh&amp;aacute;ch để bảo đảm sức khỏe l&amp;agrave;m việc. Trong cột trụ n&amp;agrave;y c&amp;ograve;n c&amp;oacute; vị tr&amp;iacute; để nước uống đảm bảo vệ sinh, giải quyết được t&amp;igrave;nh trạng để nước uống tr&amp;ecirc;n th&amp;ugrave;ng đựng tiền hay tr&amp;ecirc;n trụ bơm xăng như hiện nay.&lt;/p&gt;\r\n&lt;div&gt;\r\n	Tự Lập đ&amp;atilde; khảo s&amp;aacute;t diện t&amp;iacute;ch v&amp;agrave; kh&amp;ocirc;ng gian thực tế ở c&amp;aacute;c trạm xăng, hiện đang trong thời gian triển khai c&amp;aacute;c phương &amp;aacute;n thiết kế.&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:46:10', 'admin', '2012-11-03 02:46:10');
INSERT INTO `media` VALUES (52, 'default13518693481', '', 'media_news', '[77]', 'admin', 'Assigned to replace three officials prosecuted in Tien Lang', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Three officers had been charged related to the case destroyed the property of his family Doan Van Garden (Tien Lang, Hai Phong) has been suspended from office.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	According to the People&amp;#39;s Committee of Tien Lang district (Hai Phong), to serve the investigation, prosecution and trial of criminal cases, 30/10, the district People&amp;#39;s Committee issued the decision to temporarily suspend his position for Pham Xuan Hoa, Head of the Department of Natural Resources and Environment district; Pham Dang Hoan, chairman of the commune People&amp;#39;s Council Glory and Le Thanh Liem, Chairman Vinh Quang.&lt;/p&gt;\r\n&lt;p&gt;\r\n	This is the third officer and prosecuted on charges of destroying property on 22/10 along with his Nguyen Van Khanh (former Vice President of the People&amp;#39;s Committee of Tien Lang district).&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;327&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/e0/5d/1.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;View of the house and the dress of his family Doan Van Garden after the enforcement date of 5/1.Photo:&amp;nbsp;&lt;em&gt;Nguyen Hung.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	At the same time, the district also allocate temporary staff to the job instead of three United, Hoan, Liem respectively Pham Van Protection (Deputy Natural Resources and Environment), Nguyen Tien Ong (Deputy Chairman of the Council of Vinh optical) and Pham Cong Many (Vice Chairman Vinh Quang).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tien Lang District Party Committee has also decided to suspend the Secretary of the Party Committee of Vinh Quang with Mr. Hoan, suspend Deputy Party Secretary commune with Mr. Liem.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Before the end of March, Haiphong committee has also decided to assign Nguyen Van Tung, Deputy Director of the Department of Science and Technology to replace Le Van Hien, who was the Chairman of People&amp;#39;s Committee of Tien Lang district.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;275&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/e0/5d/Liem-Hoan.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Le Thanh Liem (left), and Mr. Pham Dang Festival.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Nguyen Hung.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p align=&quot;left&quot;&gt;\r\n	On 5/1, the force function of Tien Lang district of more than 100 police, soldiers were forced to properties in the area of ​​shrimp ponds Mr. Doan Van Umbrella (Vinh Quang) by not handing over the land lease expires .&amp;nbsp;Some have planted mines in the garden, guns flowers improvement against making four police and two team district officials injured.&lt;/p&gt;\r\n&lt;p align=&quot;left&quot;&gt;\r\n	On 6/1, the home of Mr. Doan Van Quy (his brother Umbrella) broke.&amp;nbsp;Authorities to determine, this house is not in the enforcement area.&amp;nbsp;More than a month later, the city of Hai Phong police prosecutions destroying property to investigate this.&lt;/p&gt;', '', '', '', '', '', 'Nguyên Hùng', 'VnExpress', 0, 0, 'upload/Liem-Hoan.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:54:15', 'admin', '2012-11-03 01:54:15');
INSERT INTO `media` VALUES (10, 'default13518637032', '', 'media_news', '[76]', 'admin', 'Support independent Petrolimex improved working environment for Staff', '', '', 'en', '&lt;p&gt;\r\n	Service quality of a business depends a lot on the attitude and morale of the staff because they are in direct contact with customers. Therefore, in order to improve the quality of service, one of the most important is to improve the working environment, concern and care for the employee&amp;#39;s life.&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Service quality of a business depends a lot on the attitude and morale of the staff because they are in direct contact with customers. Therefore, in order to improve the quality of service, one of the most important is to improve the working environment, concern and care for the employee&amp;#39;s life.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Time employee at the gas station to stand continuously during work time: 6-8 hours per day. Working conditions like this much less impact on mental health and their work. With the desire to improve the working environment for employees petrol, as well as to improve service quality for a broad audience to refuel, and turn a gas station into a public place clean, nice, friendly , civilization, Auto Lap proposed implementation plan to build multi Columns in the gas station of Petrolimex.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	The project exploits the maximum saving space station complex by many smart functions in a pillar, help planning a gas station, clean, convenient, modern and more civilized. In the design, Tu Lap given function seat in Columns versatile, this is where the staff will take turns to sit overnight in the time off work to ensure health. In this pillar is also the location for drinking water hygiene, resolve the situation to get water on the container or on the current petrol pump head.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Auto Lap survey area and not the actual time at the gas station, now in their implementation of the design.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:41:43', 'admin', '2012-11-02 20:41:43');
INSERT INTO `media` VALUES (11, 'default13518638111', '', 'media_news', '[76]', 'admin', 'Tay Bơm - Nhỏ Mà Có Võ', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Từ trước đến nay, đa số mọi người lu&amp;ocirc;n c&amp;oacute; suy nghĩ quảng c&amp;aacute;o phải to th&amp;igrave; mới thu h&amp;uacute;t tầm nh&amp;igrave;n của người ti&amp;ecirc;u d&amp;ugrave;ng. Thế nhưng, vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n tay bơm ở trạm xăng &amp;ndash; một vị tr&amp;iacute; nhỏ tưởng như kh&amp;oacute; c&amp;oacute; thể đặt h&amp;igrave;nh ảnh quảng c&amp;aacute;o đ&amp;atilde; cho thấy một c&amp;aacute;ch nh&amp;igrave;n kh&amp;aacute;c đề cao OTS (opportunity to see). Kể từ đầu th&amp;aacute;ng 4 năm 2011, c&amp;ocirc;ng ty Kissy Việt Nam sẽ ch&amp;iacute;nh thức quảng c&amp;aacute;o sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh KISSY tr&amp;ecirc;n vị tr&amp;iacute; tay bơm ở to&amp;agrave;n bộ hệ thống cửa h&amp;agrave;ng xăng dầu Petrolimex tại TP.HCM. Bạn c&amp;oacute; thể đứng 15 ph&amp;uacute;t để quan s&amp;aacute;t kh&amp;aacute;ch v&amp;agrave;o đổ xăng tại thời điểm đ&amp;ocirc;ng kh&amp;aacute;ch (7h30 &amp;ndash; 9h, 16h30 &amp;ndash; 19h) sẽ thấy tr&amp;ecirc;n 95% lượng kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu đều c&amp;oacute; h&amp;agrave;nh vi nh&amp;igrave;n v&amp;agrave;o tay bơm khi đang được bơm xăng. Đặc điểm n&amp;agrave;y đ&amp;ocirc;i khi thật kh&amp;oacute; giải th&amp;iacute;ch, chỉ biết rằng đ&amp;oacute; l&amp;agrave; h&amp;agrave;nh vi của số đ&amp;ocirc;ng &amp;aacute;p đảo đem lại cho vị tr&amp;iacute; quảng c&amp;aacute;o n&amp;agrave;y lượng OTS đ&amp;aacute;ng kinh ngạc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để tối ưu ho&amp;aacute; hiệu quả quảng c&amp;aacute;o của kh&amp;aacute;ch h&amp;agrave;ng, Tự Lập đ&amp;atilde; kh&amp;ocirc;ng ngừng s&amp;aacute;ng tạo, t&amp;igrave;m ra những phương &amp;aacute;n, kiểu d&amp;aacute;ng, vật liệu quảng c&amp;aacute;o mới, lạ nhằm l&amp;agrave;m bổi bật thương hiệu của kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave; tạo thiện cảm trong mắt người ti&amp;ecirc;u d&amp;ugrave;ng. Sản phẩm khẩu trang sợi hoạt t&amp;iacute;nh Kissy &amp;ndash; một ph&amp;aacute;t minh mới được cấp bằng s&amp;aacute;ng chế với nhiều t&amp;iacute;nh năng vượt trội gi&amp;uacute;p bảo vệ sức khoẻ chắc chắn sẽ tạo đột ph&amp;aacute; về hiệu quả nhắc nhớ, doanh số b&amp;aacute;n h&amp;agrave;ng với quảng c&amp;aacute;o tại tay bơm tr&amp;ecirc;n to&amp;agrave;n bộ hệ thống trạm xăng thuộc quyền khai th&amp;aacute;c quảng c&amp;aacute;o của Truyền Th&amp;ocirc;ng Tự Lập tại TP HCM.&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:45:39', 'admin', '2012-11-03 02:45:39');
INSERT INTO `media` VALUES (12, 'default13518638112', '', 'media_news', '[76]', 'admin', 'Hand Pumps - small martial that', '', '', 'en', '&lt;p&gt;\r\n	Until now, most people are always thinking advertising to attract new vision of consumers.However, the ad placement on the hand pump at the gas station&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Until now, most people are always thinking advertising to attract new vision of consumers.However, the ad placement on the hand pump at the gas station - a small position seemed hard to put ad image showed a different highlight OTS (opportunity to see). Since the beginning of April 2011, the official the Kissy Vietnam will promote products masks the active fiber Kissy hand position in the entire pump system Petrolimex shop in Ho Chi Minh City. You can stand 15 minutes to observe the gas at crowds (7:30 - 9 am, 16h30 - 19h) will see over 95% of clients in the fuel pump hand look at the behavior when being pump. This feature is sometimes hard to explain, just know that it is the behavior of the overwhelming majority gave this ad placements of OTS amazing.&lt;/div&gt;\r\n&lt;div&gt;\r\n	To optimize the effectiveness of advertising customers, from Lap constantly to create, find out the plans, designs, new advertising material, is aimed at by the customer&amp;#39;s brand and create sympathy in the eyes of consumers. Masks the active fiber products Kissy - a new invention patents with many outstanding features to help protect the health breakthrough will certainly recall effectiveness, sales with ad in hand pump gas station on the entire system of the right to exploit Media advertising Self-Making in Ho Chi Minh City.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:43:31', 'admin', '2012-11-02 20:43:31');
INSERT INTO `media` VALUES (13, 'default13518646701', '', 'media_news', '[77]', 'admin', 'Người sưu tầm 100 bản đồ Trung Quốc không có Hoàng Sa', '', '', 'vn', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;h2&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;Tạm g&amp;aacute;c c&amp;ocirc;ng việc bận rộn của một kỹ sư m&amp;aacute;y bay, &amp;ocirc;ng Thắng l&amp;ecirc;n mạng rồi đến c&amp;aacute;c cửa h&amp;agrave;ng đồ cổ t&amp;igrave;m mua c&amp;aacute;c bản đồ của Trung Quốc v&amp;agrave; thế giới chứng minh quần đảo Trường Sa, Ho&amp;agrave;ng Sa l&amp;agrave; phần l&amp;atilde;nh thổ của Việt Nam.&lt;/span&gt;&lt;/h2&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Trần Thắng, 42 tuổi đang sống tại tiểu bang Connecticut (Mỹ), Chủ tịch Hội Văn h&amp;oacute;a - Gi&amp;aacute;o dục Việt Nam tại Mỹ (IVCE), vừa quyết định tặng to&amp;agrave;n bộ số bản đồ m&amp;igrave;nh cất c&amp;ocirc;ng sưu tầm cho Viện Nghi&amp;ecirc;n cứu ph&amp;aacute;t triển Kinh tế - x&amp;atilde; hội Đ&amp;agrave; Nẵng, nơi c&amp;oacute; chương tr&amp;igrave;nh nghi&amp;ecirc;n cứu Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Ông Trần Thắng, người vừa quyết định hiến tặng 100 tấm bản đồ Trung Quốc khẳng định không có Hoàng Sa, Trường Sa cho Việt Nam. Ảnh: NVCC&quot; border=&quot;1&quot; height=&quot;350&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/img_7471.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;Ocirc;ng Trần Thắng vừa quyết định tặng 100 tấm bản đồ qu&amp;yacute; cho Việt Nam. Ảnh:&amp;nbsp;&lt;em&gt;NVCC.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Trao đổi với&amp;nbsp;&lt;em&gt;VnExpress.net&lt;/em&gt;, &amp;ocirc;ng Thắng cho biết, đ&amp;atilde; sưu tầm được 100 bản đồ độc bản. Trong đ&amp;oacute; c&amp;oacute; 70 bản đồ l&amp;atilde;nh thổ Trung Quốc, 15 bản đồ vẽ Ho&amp;agrave;ng Sa nằm s&amp;aacute;t bờ biển Việt Nam, 15 bản đồ khu vực Đ&amp;ocirc;ng Dương hay Đ&amp;ocirc;ng Nam &amp;Aacute;, v&amp;agrave; 2 s&amp;aacute;ch to&amp;agrave;n đồ chứng minh Trung Quốc kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo &amp;ocirc;ng Thắng, c&amp;aacute;c bản đồ cổ v&amp;agrave; s&amp;aacute;ch to&amp;agrave;n đồ của Ch&amp;iacute;nh phủ Trung Quốc n&amp;oacute;i l&amp;ecirc;n t&amp;iacute;nh lịch sử v&amp;agrave; t&amp;iacute;nh ph&amp;aacute;p l&amp;yacute; rất cao. &amp;quot;70 bản đồ vẽ l&amp;atilde;nh thổ Trung Quốc đ&amp;atilde; chỉ r&amp;otilde; miền nam của Trung Quốc l&amp;agrave; đảo Hải Nam. 15 bản đồ vẽ Ho&amp;agrave;ng Sa nằm s&amp;aacute;t bờ biển Việt Nam. Tại sao người T&amp;acirc;y phương kh&amp;ocirc;ng vẽ Paracels (Ho&amp;agrave;ng Sa) nằm s&amp;aacute;t H&amp;agrave;n Quốc, Trung Quốc, Philippines, Singapore, Brunei, m&amp;agrave; lại vẽ nằm s&amp;aacute;t Việt Nam? L&amp;agrave; v&amp;igrave; từ Paracels đến bờ biển của An Nam gần so với c&amp;aacute;c nước kh&amp;aacute;c v&amp;agrave; tr&amp;ecirc;n đảo Paracels c&amp;oacute; người An Nam sinh sống n&amp;ecirc;n người T&amp;acirc;y phương cho rằng đảo n&amp;agrave;y thuộc về An Nam&amp;quot;, &amp;ocirc;ng Thắng l&amp;yacute; giải.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nh&amp;agrave; sưu tầm cho hay, 5 bản đồ vẽ c&amp;aacute;c tuyến đường h&amp;agrave;ng hải trọng điểm đều đi qua Ho&amp;agrave;ng Sa nơi Ph&amp;aacute;p quản l&amp;yacute; v&amp;ugrave;ng biển v&amp;agrave; đảo của Indochina. Ngo&amp;agrave;i ra, Ho&amp;agrave;ng Sa c&amp;oacute; thể l&amp;agrave; nơi dừng ch&amp;acirc;n cho c&amp;aacute;c t&amp;agrave;u b&amp;egrave; tr&amp;ecirc;n tuyến h&amp;agrave;ng hải Nam - Bắc ch&amp;acirc;u &amp;Aacute;. Sau hiệp định Geneva 1954, Ph&amp;aacute;p trao trả &amp;quot;to&amp;agrave;n vẹn l&amp;atilde;nh thổ&amp;quot; cho Việt Nam, tất nhi&amp;ecirc;n phải c&amp;oacute; cả Ho&amp;agrave;ng Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Trung hoa Dân quốc Bưu chính dư đồ, Bộ giao thông Trung Hoa Dân Quốc, 1933.&quot; height=&quot;417&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/image004.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;Bản đồ trong s&amp;aacute;ch Trung hoa D&amp;acirc;n quốc Bưu ch&amp;iacute;nh dư đồ xuất bản năm 1933 kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa. Ảnh:&amp;nbsp;&lt;em&gt;Trần Thắng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Kể về h&amp;agrave;nh tr&amp;igrave;nh sở hữu những tấm bản đồ qu&amp;yacute;, &amp;ocirc;ng Thắng chia sẻ, cuối th&amp;aacute;ng 7 vừa qua, sau khi biết tin tiến sĩ Mai Hồng (H&amp;agrave; Nội) tặng bản đồ nh&amp;agrave; Thanh (miền Nam Trung Quốc chỉ dừng lại ở đảo Hải Nam) cho bảo t&amp;agrave;ng Lịch sử Việt Nam, &amp;ocirc;ng đ&amp;atilde; l&amp;ecirc;n mạng v&amp;agrave; thấy c&amp;oacute; người rao b&amp;aacute;n v&amp;agrave;i tấm bản đồ cổ của T&amp;acirc;y phương về l&amp;atilde;nh thổ của Trung Quốc. &amp;Ocirc;ng liền li&amp;ecirc;n hệ v&amp;agrave; mua lại những bằng chứng n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	L&amp;agrave; người &amp;quot;ngoại đạo&amp;quot; n&amp;ecirc;n &amp;ocirc;ng Thắng cẩn thận gửi c&amp;aacute;c bản đồ n&amp;agrave;y cho hai người bạn th&amp;acirc;n quen l&amp;agrave; TS Trần Đức Anh Sơn (Ph&amp;oacute; viện trưởng Viện Nghi&amp;ecirc;n cứu ph&amp;aacute;t triển Kinh tế - x&amp;atilde; hội Đ&amp;agrave; Nẵng) v&amp;agrave; TS Nguyễn Nh&amp;atilde; xem. &amp;quot;Hai vị n&amp;agrave;y c&amp;oacute; cảm nhận tốt thế l&amp;agrave; t&amp;ocirc;i bắt đầu t&amp;igrave;m kiếm bản đồ. Khi ấy c&amp;oacute; nguồn cảm hứng thế n&amp;agrave;o m&amp;agrave; t&amp;ocirc;i to&amp;aacute;t ra suy nghĩ rất nhanh l&amp;agrave; phải sưu tầm nhiều bản đồ của T&amp;acirc;y phương để chứng minh miền Nam của Trung Quốc dừng lại ở đảo Hải Nam&amp;quot;, &amp;ocirc;ng Thắng kể.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tạm g&amp;aacute;c lại c&amp;ocirc;ng việc bận rộn của một kỹ sư m&amp;aacute;y bay, &amp;ocirc;ng t&amp;igrave;m đến những cửa hiệu đồ cổ, điểm rao b&amp;aacute;n bản đồ để t&amp;igrave;m mua. Số lượng bản đồ về l&amp;atilde;nh thổ Trung Quốc được xuất bản tại Anh, Đức, Ph&amp;aacute;p, H&amp;agrave; Lan, Mỹ, &amp;Yacute;... trong thời gian 1626 - 1980 ng&amp;agrave;y một nhiều l&amp;ecirc;n. Tuy nhi&amp;ecirc;n, &amp;ocirc;ng chỉ t&amp;igrave;m được một tấm bản đồ c&amp;oacute; Ho&amp;agrave;ng Sa vẽ nằm s&amp;aacute;t bờ biển Việt Nam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Khi ấy t&amp;ocirc;i hơi lo lắng v&amp;igrave; m&amp;igrave;nh đ&amp;atilde; chứng minh miền nam của Trung Quốc dừng tại đảo Hải Nam, nghĩa l&amp;agrave; Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa kh&amp;ocirc;ng thuộc về Trung Quốc. Vậy l&amp;agrave;m thế n&amp;agrave;o m&amp;igrave;nh chứng minh Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa thuộc về Việt Nam? Nếu chỉ c&amp;oacute; một bản đồ th&amp;igrave; kh&amp;ocirc;ng đủ thuyết phục?&amp;quot;, &amp;ocirc;ng tự đặt c&amp;acirc;u hỏi v&amp;agrave; nỗ lực t&amp;igrave;m kiếm c&amp;acirc;u trả lời. Giữa th&amp;aacute;ng 9, &amp;ocirc;ng t&amp;igrave;nh cờ ph&amp;aacute;t hiện tấm bản đồ cổ c&amp;oacute; Ho&amp;agrave;ng Sa v&amp;agrave; liền sau đ&amp;oacute; &amp;ocirc;ng sưu tầm th&amp;ecirc;m được 15 bản đồ c&amp;ugrave;ng loại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Thắng cũng ph&amp;aacute;t hiện điều rất lạ l&amp;agrave; cả 3 cuốn To&amp;agrave;n đồ Trung Hoa d&amp;acirc;n quốc Bưu dư đồ của Trung Quốc in tại Nam Kinh năm 1919 v&amp;agrave; 1933 (gồm 78 bản đồ), v&amp;agrave; Atlas of The Chinese Empire do ph&amp;aacute;i bộ China Inland Mission xuất bản tại Anh năm 1908 (gồm 23 bản đồ) đều kh&amp;ocirc;ng liệt k&amp;ecirc; Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tuy nhi&amp;ecirc;n, do gi&amp;aacute; c&amp;aacute;c cuốn s&amp;aacute;ch cổ n&amp;agrave;y rất đắt đỏ, bản th&amp;acirc;n lại kh&amp;ocirc;ng đủ tiền n&amp;ecirc;n &amp;ocirc;ng Thắng k&amp;ecirc;u gọi bạn b&amp;egrave; th&amp;acirc;n đ&amp;oacute;ng g&amp;oacute;p. Việc n&amp;agrave;y được thực hiện b&amp;iacute; mật, ph&amp;ograve;ng khi th&amp;ocirc;ng tin lan rộng sẽ c&amp;oacute; người kh&amp;aacute;c mua mất. &amp;quot;Trong 2 tuần chờ đợi tiền, t&amp;ocirc;i rất hồi hộp, ng&amp;agrave;y n&amp;agrave;o cũng đi l&amp;agrave;m về sớm xem s&amp;aacute;ch c&amp;ograve;n tr&amp;ecirc;n mạng kh&amp;ocirc;ng. Khi cầm được s&amp;aacute;ch tr&amp;ecirc;n tay t&amp;ocirc;i mới cảm thấy thanh thản&amp;quot;, vị kỹ sư độc th&amp;acirc;n trải l&amp;ograve;ng.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl2&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Scherer Atlas Novus, Đức, năm 1970 cho thấy lãnh thổ của Trung Quốc không có Hoàng Sa, Trường Sa. Ảnh: Trần Thắng&quot; height=&quot;325&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/scherersatlasnovusgermany..jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;Bản đồ Scherer Atlas Novus (Đức) năm 1970 cũng cho thấy l&amp;atilde;nh thổ của Trung Quốc kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa. Ảnh:&amp;nbsp;&lt;em&gt;Trần Thắng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Mua được bản đồ qu&amp;yacute;, &amp;ocirc;ng lại bỏ thời gian kiểm tra lại th&amp;ocirc;ng tin về nh&amp;agrave; xuất bản, năm xuất bản, m&amp;atilde; số, l&amp;agrave;m khung, bọc giấy k&amp;iacute;nh để bảo quản. Từ đ&amp;acirc;y, &amp;ocirc;ng bắt đầu giới thiệu cho người Mỹ v&amp;agrave; c&amp;aacute;c bạn trẻ người Việt biết về Ho&amp;agrave;ng Sa, Trường Sa thuộc l&amp;atilde;nh thổ Việt Nam. To&amp;agrave;n bộ h&amp;igrave;nh ảnh về bộ sưu tập n&amp;agrave;y được lưu lại tại trang web của Viện Văn h&amp;oacute;a v&amp;agrave; Gi&amp;aacute;o dục Việt Nam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;T&amp;ocirc;i nghĩ rằng mọi người Việt trong v&amp;agrave; ngo&amp;agrave;i nước đều l&amp;agrave; những người y&amp;ecirc;u nước, kh&amp;ocirc;ng ri&amp;ecirc;ng g&amp;igrave; t&amp;ocirc;i. T&amp;ocirc;i l&amp;agrave;m c&amp;ocirc;ng việc sưu tập t&amp;agrave;i liệu bản đồ một c&amp;aacute;ch tự nhi&amp;ecirc;n, kh&amp;ocirc;ng bị &amp;aacute;p lực n&amp;agrave;o về t&amp;iacute;nh thời sự ch&amp;iacute;nh trị. T&amp;ocirc;i kh&amp;ocirc;ng xem việc n&amp;agrave;y l&amp;agrave; của Ch&amp;iacute;nh phủ hay việc kia l&amp;agrave; của người d&amp;acirc;n. T&amp;ocirc;i thấy việc n&amp;agrave;o c&amp;oacute; lợi cho x&amp;atilde; hội cho cộng đồng l&amp;agrave; l&amp;agrave;m&amp;quot;, &amp;ocirc;ng Thắng chia sẻ v&amp;agrave; cho biết, sau khi c&amp;ocirc;ng bố t&amp;agrave;i liệu sẽ c&amp;ugrave;ng với c&amp;aacute;c luật sư ở Mỹ gặp nhau để c&amp;ugrave;ng b&amp;agrave;n c&amp;aacute;ch gi&amp;uacute;p Việt Nam về t&amp;iacute;nh ph&amp;aacute;p l&amp;yacute; tại hai quần đảo Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sau khi xem qua bản sao của gần 100 bản đồ &amp;ocirc;ng Trần Thắng gửi từ Mỹ về, GS Sử học Phan Huy L&amp;ecirc; nhận x&amp;eacute;t, bộ sưu tập n&amp;agrave;y d&amp;ugrave; c&amp;oacute; một số chưa x&amp;aacute;c định đầy đủ xuất xứ nhưng đều rất qu&amp;yacute;, phong ph&amp;uacute; hơn những bộ sưu tập về bản đồ li&amp;ecirc;n quan đến Ho&amp;agrave;ng Sa, Trường Sa trước đ&amp;acirc;y. Cảm k&amp;iacute;ch trước tấm l&amp;ograve;ng của một nh&amp;agrave; khoa học nước nh&amp;agrave; lu&amp;ocirc;n hướng về qu&amp;ecirc; hương, gi&amp;uacute;p Việt Nam c&amp;oacute; th&amp;ecirc;m chứng cứ khẳng định chủ quyền Ho&amp;agrave;ng Sa, Trường Sa, GS L&amp;ecirc; đ&amp;atilde; viết thư cảm ơn &amp;ocirc;ng Thắng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;&amp;Yacute; nghĩa của những tấm bản đồ n&amp;agrave;y gắn liền với &amp;yacute; nghĩa lịch sử v&amp;agrave; ph&amp;aacute;p l&amp;yacute;. Đặc biệt, những tấm bản đồ của Trung Quốc đến năm 1933 cho thấy thời điểm đ&amp;oacute; ch&amp;iacute;nh quyền Bắc Kinh kh&amp;ocirc;ng c&amp;oacute; nhận thức về về l&amp;atilde;nh thổ ph&amp;iacute;a Nam, tất cả bản đồ đều ghi r&amp;otilde; l&amp;atilde;nh thổ của Trung Quốc k&amp;eacute;o d&amp;agrave;i đến đảo Hải Nam. Trong khi đ&amp;oacute;, những tấm bản đồ của thế giới vẽ ch&amp;acirc;u &amp;Aacute;, Đ&amp;ocirc;ng Nam &amp;Aacute; v&amp;agrave; Việt Nam đều chỉ r&amp;otilde; Ho&amp;agrave;ng Sa, Trường Sa gắn liền với Việt Nam&amp;quot;, GS Phan Huy L&amp;ecirc; n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Nguyễn Đông', 'VnExpress', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 22:00:20', 'admin', '2012-11-02 20:57:50');
INSERT INTO `media` VALUES (14, 'default13518646702', '', 'media_news', '[77]', 'admin', 'The collection of 100 maps China does not have the Paracels', '', '', 'en', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;Aside the busy work of a flight engineer, he was promoted to the network and then to the store looking to buy antique maps of China and the world to prove the Spratly Islands, the Paracel Islands is part of the territory of VietNam.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mr. Tran Thang, 42, who lives in the state of Connecticut (USA), Chairman of the Culture and Education Vietnam in the U.S. (IVCE), the recently decided to donate his entire map store collection for Research the socio-economic development in Da Nang, where research programs Hoang Sa and Truong Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Mr. Tran Thang, who has decided to donate 100 maps China confirms no Hoang Sa and Truong Sa Vietnam. Photo: NVCC&quot; border=&quot;1&quot; height=&quot;350&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/img_7471.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;Mr. Tran Thang has decided to donate 100 maps for Vietnam quarter.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;NVCC.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Exchange&amp;nbsp;&lt;em&gt;VnExpress.net,&lt;/em&gt;&amp;nbsp;Thang said, has collected 100 unique maps.&amp;nbsp;Including 70 Chinese territory maps, 15 maps created Paracels are close to the coast of Vietnam, 15 maps Indochina and Southeast Asia, and two Chinese books all prove no Hoang Sa, Changsha.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thang said that the ancient maps and books full of Chinese government said on historical and legal high.&amp;nbsp;&amp;quot;70 Chinese territorial map clearly shows China&amp;#39;s southern Hainan Island. 15th map drawing Paracel located close to the coast of Vietnam. Why do people in the West do not draw Paracels (Paracel) adjacent South Korea, China, the Philippines, Singapore, Brunei, Vietnam drew close? Because Paracels - near the coast of Annam compared to other countries and on the Paracels Islands Annam should live in the West for that this island belongs to An Nam, &amp;quot;Thang explained.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Said collector, 5 maps created key maritime routes are through management Paracels in French waters and islands of Indochina.&amp;nbsp;In addition, Paracel can stop for ships on maritime South-North Asia.&amp;nbsp;After Geneva 1954, France return of &amp;quot;territorial integrity&amp;quot; for Vietnam, of course, must have both the Paracels.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;ROC Postal residual map, the Ministry of Transportation Republic of China, 1933.&quot; height=&quot;417&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/image004.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;Maps of the Republic of China Postal map published in 1933 has no balance Hoang Sa and Truong Sa.Photo:&amp;nbsp;&lt;em&gt;Tran Thang.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	The journey of owning the maps you, Thang share, late July, after the news of Dr. Mai Hong (Hanoi) gift map Qing (South China stop at the island Hainan) for the Vietnam History Museum, he went online and saw someone selling some old maps of the West of China&amp;#39;s territory.&amp;nbsp;He then related and purchase this evidence.&lt;/p&gt;\r\n&lt;p&gt;\r\n	As a &amp;quot;pagan&amp;quot; should carefully Thang send the map to two people familiar you are Dr. Tran Duc Anh Son (Deputy Director of the Institute for Development Economics Research - Danang social) and Dr. Nguyen Nha view .&amp;nbsp;&amp;quot;The two have a good feeling so I started looking for a map. When was the inspiration that I radiate thoughts quickly is to collect several maps of the West to prove the South of China stopped in Hainan Island, &amp;quot;Thang said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Temporarily set aside the busy work of a flight engineer, he found the antique shops, the sale of maps to buy.&amp;nbsp;The number of Chinese territorial map was published in the UK, Germany, France, Netherlands, USA, Italy ...&amp;nbsp;during 1626 - 1980 on a lot more.&amp;nbsp;However, he found a piece of map Paracel draw is located close to the coast of Vietnam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;When I was a little worried because I have proven stop China&amp;#39;s southern Hainan island, which means that the Paracel and Spratly Islands belong to China. So how do you prove the Hoang Sa and Truong Sa belong to Vietnam? If only one map is not enough to convince? &amp;quot;, he questioned himself and trying to find answers.&amp;nbsp;In mid-September, he accidentally discovered the ancient map Hoang Sa and immediately after that he collected an additional 15 maps of the same type.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thang also found it very strange that all 3 books Full map Republic of China Post and outstanding print map of China in Nanjing in 1919 and 1933 (including 78 maps), and Atlas of The Chinese Empire by the China Inland mission Mission published in England in 1908 (including 23 maps) are not listed Hoang Sa and Truong Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	However, the price of the old books are very expensive, not enough money itself Thang calling friends to contribute.&amp;nbsp;This is done secretly, in case the information will spread other people buy take.&amp;nbsp;&amp;quot;In two weeks waiting for the money, I am very excited, every day from work early to see the book on the network. When new books on my hand felt serene,&amp;quot; the single engineer experienced heart.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl2&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Scherer Atlas Novus, Germany, in 1970 showed that China&#039;s territory without Hoang Sa and Truong Sa. Photo: Tran Thang&quot; height=&quot;325&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/scherersatlasnovusgermany..jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;Map Scherer Atlas Novus (Germany) in 1970 also showed that China&amp;#39;s territory without Hoang Sa and Truong Sa.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Tran Thang.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Buy your map, he did take the time to check the information of publisher, year of publication, number, frame, glass coated paper for preservation.&amp;nbsp;From there, he began to introduce Vietnamese Americans and young people know about Hoang Sa, Truong Sa belong to Vietnam&amp;#39;s territory.&amp;nbsp;The whole image of this collection is stored at the site of the Vietnam Institute of Culture and Education.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;I think the Vietnamese people at home and abroad are patriots, not just me. I do the map document collections in a natural way, without any pressure on the political current affairs. I do not see this as the Government or the other is of the people. I see the social benefit to the community is to &amp;quot;, Thang share and said that after the publication of the document along with lawyers in the United States meet to discuss how to help Vietnam in the Paracel and Spratly archipelagos.&lt;/p&gt;\r\n&lt;p&gt;\r\n	After reviewing copies of almost 100 map he Tran Wins sent from the U.S., Professor of history Phan Huy Le comment, this collection even though there are some complete unknown origin but are very precious and rich than the collection of maps related to Hoang Sa and Truong Sa ago.&amp;nbsp;Grateful heart of a country&amp;#39;s scientists always toward homeland, to help Vietnam with more evidence to sovereignty over Hoang Sa and Truong Sa, Prof. Le wrote a letter to thank Thang.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;The meaning of the maps associated with the historical and legal significance. Particular, the maps of China to 1933 shows that time the authorities in Beijing have no awareness of the territorial south, all the maps are clearly the territory of China extends to the island of Hainan. Meanwhile, maps of the world in Asia, Southeast Asia and Vietnam specifying Hoang Sa and Truong Sa associated with Vietnam, &amp;quot;Professor Phan Huy Le said.&lt;/p&gt;', '', '', '', '', '', 'Nguyễn Đông', 'VnExpress', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 20:57:50', 'admin', '2012-11-02 20:57:50');
INSERT INTO `media` VALUES (15, 'default13518650351', '', 'media_news', '[77]', 'admin', 'Người sưu tầm 100 bản đồ Trung Quốc không có Hoàng Sa', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size: 16px; &quot;&gt;Tạm g&amp;aacute;c c&amp;ocirc;ng việc bận rộn của một kỹ sư m&amp;aacute;y bay, &amp;ocirc;ng Thắng l&amp;ecirc;n mạng rồi đến c&amp;aacute;c cửa h&amp;agrave;ng đồ cổ t&amp;igrave;m mua c&amp;aacute;c bản đồ của Trung Quốc v&amp;agrave; thế giới chứng minh quần đảo Trường Sa, Ho&amp;agrave;ng Sa l&amp;agrave; phần l&amp;atilde;nh thổ của Việt Nam.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Trần Thắng, 42 tuổi đang sống tại tiểu bang Connecticut (Mỹ), Chủ tịch Hội Văn h&amp;oacute;a - Gi&amp;aacute;o dục Việt Nam tại Mỹ (IVCE), vừa quyết định tặng to&amp;agrave;n bộ số bản đồ m&amp;igrave;nh cất c&amp;ocirc;ng sưu tầm cho Viện Nghi&amp;ecirc;n cứu ph&amp;aacute;t triển Kinh tế - x&amp;atilde; hội Đ&amp;agrave; Nẵng, nơi c&amp;oacute; chương tr&amp;igrave;nh nghi&amp;ecirc;n cứu Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Ông Trần Thắng, người vừa quyết định hiến tặng 100 tấm bản đồ Trung Quốc khẳng định không có Hoàng Sa, Trường Sa cho Việt Nam. Ảnh: NVCC&quot; border=&quot;1&quot; height=&quot;350&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/img_7471.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;Ocirc;ng Trần Thắng vừa quyết định tặng 100 tấm bản đồ qu&amp;yacute; cho Việt Nam. Ảnh:&amp;nbsp;&lt;em&gt;NVCC.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Trao đổi với&amp;nbsp;&lt;em&gt;VnExpress.net&lt;/em&gt;, &amp;ocirc;ng Thắng cho biết, đ&amp;atilde; sưu tầm được 100 bản đồ độc bản. Trong đ&amp;oacute; c&amp;oacute; 70 bản đồ l&amp;atilde;nh thổ Trung Quốc, 15 bản đồ vẽ Ho&amp;agrave;ng Sa nằm s&amp;aacute;t bờ biển Việt Nam, 15 bản đồ khu vực Đ&amp;ocirc;ng Dương hay Đ&amp;ocirc;ng Nam &amp;Aacute;, v&amp;agrave; 2 s&amp;aacute;ch to&amp;agrave;n đồ chứng minh Trung Quốc kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo &amp;ocirc;ng Thắng, c&amp;aacute;c bản đồ cổ v&amp;agrave; s&amp;aacute;ch to&amp;agrave;n đồ của Ch&amp;iacute;nh phủ Trung Quốc n&amp;oacute;i l&amp;ecirc;n t&amp;iacute;nh lịch sử v&amp;agrave; t&amp;iacute;nh ph&amp;aacute;p l&amp;yacute; rất cao. &amp;quot;70 bản đồ vẽ l&amp;atilde;nh thổ Trung Quốc đ&amp;atilde; chỉ r&amp;otilde; miền nam của Trung Quốc l&amp;agrave; đảo Hải Nam. 15 bản đồ vẽ Ho&amp;agrave;ng Sa nằm s&amp;aacute;t bờ biển Việt Nam. Tại sao người T&amp;acirc;y phương kh&amp;ocirc;ng vẽ Paracels (Ho&amp;agrave;ng Sa) nằm s&amp;aacute;t H&amp;agrave;n Quốc, Trung Quốc, Philippines, Singapore, Brunei, m&amp;agrave; lại vẽ nằm s&amp;aacute;t Việt Nam? L&amp;agrave; v&amp;igrave; từ Paracels đến bờ biển của An Nam gần so với c&amp;aacute;c nước kh&amp;aacute;c v&amp;agrave; tr&amp;ecirc;n đảo Paracels c&amp;oacute; người An Nam sinh sống n&amp;ecirc;n người T&amp;acirc;y phương cho rằng đảo n&amp;agrave;y thuộc về An Nam&amp;quot;, &amp;ocirc;ng Thắng l&amp;yacute; giải.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nh&amp;agrave; sưu tầm cho hay, 5 bản đồ vẽ c&amp;aacute;c tuyến đường h&amp;agrave;ng hải trọng điểm đều đi qua Ho&amp;agrave;ng Sa nơi Ph&amp;aacute;p quản l&amp;yacute; v&amp;ugrave;ng biển v&amp;agrave; đảo của Indochina. Ngo&amp;agrave;i ra, Ho&amp;agrave;ng Sa c&amp;oacute; thể l&amp;agrave; nơi dừng ch&amp;acirc;n cho c&amp;aacute;c t&amp;agrave;u b&amp;egrave; tr&amp;ecirc;n tuyến h&amp;agrave;ng hải Nam - Bắc ch&amp;acirc;u &amp;Aacute;. Sau hiệp định Geneva 1954, Ph&amp;aacute;p trao trả &amp;quot;to&amp;agrave;n vẹn l&amp;atilde;nh thổ&amp;quot; cho Việt Nam, tất nhi&amp;ecirc;n phải c&amp;oacute; cả Ho&amp;agrave;ng Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Trung hoa Dân quốc Bưu chính dư đồ, Bộ giao thông Trung Hoa Dân Quốc, 1933.&quot; height=&quot;417&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/image004.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;Bản đồ trong s&amp;aacute;ch Trung hoa D&amp;acirc;n quốc Bưu ch&amp;iacute;nh dư đồ xuất bản năm 1933 kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa. Ảnh:&amp;nbsp;&lt;em&gt;Trần Thắng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Kể về h&amp;agrave;nh tr&amp;igrave;nh sở hữu những tấm bản đồ qu&amp;yacute;, &amp;ocirc;ng Thắng chia sẻ, cuối th&amp;aacute;ng 7 vừa qua, sau khi biết tin tiến sĩ Mai Hồng (H&amp;agrave; Nội) tặng bản đồ nh&amp;agrave; Thanh (miền Nam Trung Quốc chỉ dừng lại ở đảo Hải Nam) cho bảo t&amp;agrave;ng Lịch sử Việt Nam, &amp;ocirc;ng đ&amp;atilde; l&amp;ecirc;n mạng v&amp;agrave; thấy c&amp;oacute; người rao b&amp;aacute;n v&amp;agrave;i tấm bản đồ cổ của T&amp;acirc;y phương về l&amp;atilde;nh thổ của Trung Quốc. &amp;Ocirc;ng liền li&amp;ecirc;n hệ v&amp;agrave; mua lại những bằng chứng n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	L&amp;agrave; người &amp;quot;ngoại đạo&amp;quot; n&amp;ecirc;n &amp;ocirc;ng Thắng cẩn thận gửi c&amp;aacute;c bản đồ n&amp;agrave;y cho hai người bạn th&amp;acirc;n quen l&amp;agrave; TS Trần Đức Anh Sơn (Ph&amp;oacute; viện trưởng Viện Nghi&amp;ecirc;n cứu ph&amp;aacute;t triển Kinh tế - x&amp;atilde; hội Đ&amp;agrave; Nẵng) v&amp;agrave; TS Nguyễn Nh&amp;atilde; xem. &amp;quot;Hai vị n&amp;agrave;y c&amp;oacute; cảm nhận tốt thế l&amp;agrave; t&amp;ocirc;i bắt đầu t&amp;igrave;m kiếm bản đồ. Khi ấy c&amp;oacute; nguồn cảm hứng thế n&amp;agrave;o m&amp;agrave; t&amp;ocirc;i to&amp;aacute;t ra suy nghĩ rất nhanh l&amp;agrave; phải sưu tầm nhiều bản đồ của T&amp;acirc;y phương để chứng minh miền Nam của Trung Quốc dừng lại ở đảo Hải Nam&amp;quot;, &amp;ocirc;ng Thắng kể.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tạm g&amp;aacute;c lại c&amp;ocirc;ng việc bận rộn của một kỹ sư m&amp;aacute;y bay, &amp;ocirc;ng t&amp;igrave;m đến những cửa hiệu đồ cổ, điểm rao b&amp;aacute;n bản đồ để t&amp;igrave;m mua. Số lượng bản đồ về l&amp;atilde;nh thổ Trung Quốc được xuất bản tại Anh, Đức, Ph&amp;aacute;p, H&amp;agrave; Lan, Mỹ, &amp;Yacute;... trong thời gian 1626 - 1980 ng&amp;agrave;y một nhiều l&amp;ecirc;n. Tuy nhi&amp;ecirc;n, &amp;ocirc;ng chỉ t&amp;igrave;m được một tấm bản đồ c&amp;oacute; Ho&amp;agrave;ng Sa vẽ nằm s&amp;aacute;t bờ biển Việt Nam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Khi ấy t&amp;ocirc;i hơi lo lắng v&amp;igrave; m&amp;igrave;nh đ&amp;atilde; chứng minh miền nam của Trung Quốc dừng tại đảo Hải Nam, nghĩa l&amp;agrave; Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa kh&amp;ocirc;ng thuộc về Trung Quốc. Vậy l&amp;agrave;m thế n&amp;agrave;o m&amp;igrave;nh chứng minh Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa thuộc về Việt Nam? Nếu chỉ c&amp;oacute; một bản đồ th&amp;igrave; kh&amp;ocirc;ng đủ thuyết phục?&amp;quot;, &amp;ocirc;ng tự đặt c&amp;acirc;u hỏi v&amp;agrave; nỗ lực t&amp;igrave;m kiếm c&amp;acirc;u trả lời. Giữa th&amp;aacute;ng 9, &amp;ocirc;ng t&amp;igrave;nh cờ ph&amp;aacute;t hiện tấm bản đồ cổ c&amp;oacute; Ho&amp;agrave;ng Sa v&amp;agrave; liền sau đ&amp;oacute; &amp;ocirc;ng sưu tầm th&amp;ecirc;m được 15 bản đồ c&amp;ugrave;ng loại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Thắng cũng ph&amp;aacute;t hiện điều rất lạ l&amp;agrave; cả 3 cuốn To&amp;agrave;n đồ Trung Hoa d&amp;acirc;n quốc Bưu dư đồ của Trung Quốc in tại Nam Kinh năm 1919 v&amp;agrave; 1933 (gồm 78 bản đồ), v&amp;agrave; Atlas of The Chinese Empire do ph&amp;aacute;i bộ China Inland Mission xuất bản tại Anh năm 1908 (gồm 23 bản đồ) đều kh&amp;ocirc;ng liệt k&amp;ecirc; Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tuy nhi&amp;ecirc;n, do gi&amp;aacute; c&amp;aacute;c cuốn s&amp;aacute;ch cổ n&amp;agrave;y rất đắt đỏ, bản th&amp;acirc;n lại kh&amp;ocirc;ng đủ tiền n&amp;ecirc;n &amp;ocirc;ng Thắng k&amp;ecirc;u gọi bạn b&amp;egrave; th&amp;acirc;n đ&amp;oacute;ng g&amp;oacute;p. Việc n&amp;agrave;y được thực hiện b&amp;iacute; mật, ph&amp;ograve;ng khi th&amp;ocirc;ng tin lan rộng sẽ c&amp;oacute; người kh&amp;aacute;c mua mất. &amp;quot;Trong 2 tuần chờ đợi tiền, t&amp;ocirc;i rất hồi hộp, ng&amp;agrave;y n&amp;agrave;o cũng đi l&amp;agrave;m về sớm xem s&amp;aacute;ch c&amp;ograve;n tr&amp;ecirc;n mạng kh&amp;ocirc;ng. Khi cầm được s&amp;aacute;ch tr&amp;ecirc;n tay t&amp;ocirc;i mới cảm thấy thanh thản&amp;quot;, vị kỹ sư độc th&amp;acirc;n trải l&amp;ograve;ng.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl2&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Scherer Atlas Novus, Đức, năm 1970 cho thấy lãnh thổ của Trung Quốc không có Hoàng Sa, Trường Sa. Ảnh: Trần Thắng&quot; height=&quot;325&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/scherersatlasnovusgermany..jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:14px;&quot;&gt;Bản đồ Scherer Atlas Novus (Đức) năm 1970 cũng cho thấy l&amp;atilde;nh thổ của Trung Quốc kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa. Ảnh:&amp;nbsp;&lt;em&gt;Trần Thắng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Mua được bản đồ qu&amp;yacute;, &amp;ocirc;ng lại bỏ thời gian kiểm tra lại th&amp;ocirc;ng tin về nh&amp;agrave; xuất bản, năm xuất bản, m&amp;atilde; số, l&amp;agrave;m khung, bọc giấy k&amp;iacute;nh để bảo quản. Từ đ&amp;acirc;y, &amp;ocirc;ng bắt đầu giới thiệu cho người Mỹ v&amp;agrave; c&amp;aacute;c bạn trẻ người Việt biết về Ho&amp;agrave;ng Sa, Trường Sa thuộc l&amp;atilde;nh thổ Việt Nam. To&amp;agrave;n bộ h&amp;igrave;nh ảnh về bộ sưu tập n&amp;agrave;y được lưu lại tại trang web của Viện Văn h&amp;oacute;a v&amp;agrave; Gi&amp;aacute;o dục Việt Nam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;T&amp;ocirc;i nghĩ rằng mọi người Việt trong v&amp;agrave; ngo&amp;agrave;i nước đều l&amp;agrave; những người y&amp;ecirc;u nước, kh&amp;ocirc;ng ri&amp;ecirc;ng g&amp;igrave; t&amp;ocirc;i. T&amp;ocirc;i l&amp;agrave;m c&amp;ocirc;ng việc sưu tập t&amp;agrave;i liệu bản đồ một c&amp;aacute;ch tự nhi&amp;ecirc;n, kh&amp;ocirc;ng bị &amp;aacute;p lực n&amp;agrave;o về t&amp;iacute;nh thời sự ch&amp;iacute;nh trị. T&amp;ocirc;i kh&amp;ocirc;ng xem việc n&amp;agrave;y l&amp;agrave; của Ch&amp;iacute;nh phủ hay việc kia l&amp;agrave; của người d&amp;acirc;n. T&amp;ocirc;i thấy việc n&amp;agrave;o c&amp;oacute; lợi cho x&amp;atilde; hội cho cộng đồng l&amp;agrave; l&amp;agrave;m&amp;quot;, &amp;ocirc;ng Thắng chia sẻ v&amp;agrave; cho biết, sau khi c&amp;ocirc;ng bố t&amp;agrave;i liệu sẽ c&amp;ugrave;ng với c&amp;aacute;c luật sư ở Mỹ gặp nhau để c&amp;ugrave;ng b&amp;agrave;n c&amp;aacute;ch gi&amp;uacute;p Việt Nam về t&amp;iacute;nh ph&amp;aacute;p l&amp;yacute; tại hai quần đảo Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sau khi xem qua bản sao của gần 100 bản đồ &amp;ocirc;ng Trần Thắng gửi từ Mỹ về, GS Sử học Phan Huy L&amp;ecirc; nhận x&amp;eacute;t, bộ sưu tập n&amp;agrave;y d&amp;ugrave; c&amp;oacute; một số chưa x&amp;aacute;c định đầy đủ xuất xứ nhưng đều rất qu&amp;yacute;, phong ph&amp;uacute; hơn những bộ sưu tập về bản đồ li&amp;ecirc;n quan đến Ho&amp;agrave;ng Sa, Trường Sa trước đ&amp;acirc;y. Cảm k&amp;iacute;ch trước tấm l&amp;ograve;ng của một nh&amp;agrave; khoa học nước nh&amp;agrave; lu&amp;ocirc;n hướng về qu&amp;ecirc; hương, gi&amp;uacute;p Việt Nam c&amp;oacute; th&amp;ecirc;m chứng cứ khẳng định chủ quyền Ho&amp;agrave;ng Sa, Trường Sa, GS L&amp;ecirc; đ&amp;atilde; viết thư cảm ơn &amp;ocirc;ng Thắng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;&amp;Yacute; nghĩa của những tấm bản đồ n&amp;agrave;y gắn liền với &amp;yacute; nghĩa lịch sử v&amp;agrave; ph&amp;aacute;p l&amp;yacute;. Đặc biệt, những tấm bản đồ của Trung Quốc đến năm 1933 cho thấy thời điểm đ&amp;oacute; ch&amp;iacute;nh quyền Bắc Kinh kh&amp;ocirc;ng c&amp;oacute; nhận thức về về l&amp;atilde;nh thổ ph&amp;iacute;a Nam, tất cả bản đồ đều ghi r&amp;otilde; l&amp;atilde;nh thổ của Trung Quốc k&amp;eacute;o d&amp;agrave;i đến đảo Hải Nam. Trong khi đ&amp;oacute;, những tấm bản đồ của thế giới vẽ ch&amp;acirc;u &amp;Aacute;, Đ&amp;ocirc;ng Nam &amp;Aacute; v&amp;agrave; Việt Nam đều chỉ r&amp;otilde; Ho&amp;agrave;ng Sa, Trường Sa gắn liền với Việt Nam&amp;quot;, GS Phan Huy L&amp;ecirc; n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 22:00:20', 'admin', '2012-11-02 21:03:55');
INSERT INTO `media` VALUES (16, 'default13518650352', '', 'media_news', '[77]', 'admin', 'The collection of 100 maps China does not have the Paracels', '', '', 'en', '&lt;p&gt;\r\n	&lt;strong&gt;Aside the busy work of a flight engineer, he was promoted to the network and then to the store looking to buy antique maps of China and the world to prove the Spratly Islands, the Paracel Islands is part of the territory of VietNam.&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mr. Tran Thang, 42, who lives in the state of Connecticut (USA), Chairman of the Culture and Education Vietnam in the U.S. (IVCE), the recently decided to donate his entire map store collection for Research the socio-economic development in Da Nang, where research programs Hoang Sa and Truong Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Mr. Tran Thang, who has decided to donate 100 maps China confirms no Hoang Sa and Truong Sa Vietnam. Photo: NVCC&quot; border=&quot;1&quot; height=&quot;350&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/img_7471.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				Mr. Tran Thang has decided to donate 100 maps for Vietnam quarter.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;NVCC.&lt;/em&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Exchange&amp;nbsp;&lt;em&gt;VnExpress.net,&lt;/em&gt;&amp;nbsp;Thang said, has collected 100 unique maps.&amp;nbsp;Including 70 Chinese territory maps, 15 maps created Paracels are close to the coast of Vietnam, 15 maps Indochina and Southeast Asia, and two Chinese books all prove no Hoang Sa, Changsha.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thang said that the ancient maps and books full of Chinese government said on historical and legal high.&amp;nbsp;&amp;quot;70 Chinese territorial map clearly shows China&amp;#39;s southern Hainan Island. 15th map drawing Paracel located close to the coast of Vietnam. Why do people in the West do not draw Paracels (Paracel) adjacent South Korea, China, the Philippines, Singapore, Brunei, Vietnam drew close? Because Paracels - near the coast of Annam compared to other countries and on the Paracels Islands Annam should live in the West for that this island belongs to An Nam, &amp;quot;Thang explained.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Said collector, 5 maps created key maritime routes are through management Paracels in French waters and islands of Indochina.&amp;nbsp;In addition, Paracel can stop for ships on maritime South-North Asia.&amp;nbsp;After Geneva 1954, France return of &amp;quot;territorial integrity&amp;quot; for Vietnam, of course, must have both the Paracels.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;ROC Postal residual map, the Ministry of Transportation Republic of China, 1933.&quot; height=&quot;417&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/image004.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				Maps of the Republic of China Postal map published in 1933 has no balance Hoang Sa and Truong Sa.Photo:&amp;nbsp;&lt;em&gt;Tran Thang.&lt;/em&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	The journey of owning the maps you, Thang share, late July, after the news of Dr. Mai Hong (Hanoi) gift map Qing (South China stop at the island Hainan) for the Vietnam History Museum, he went online and saw someone selling some old maps of the West of China&amp;#39;s territory.&amp;nbsp;He then related and purchase this evidence.&lt;/p&gt;\r\n&lt;p&gt;\r\n	As a &amp;quot;pagan&amp;quot; should carefully Thang send the map to two people familiar you are Dr. Tran Duc Anh Son (Deputy Director of the Institute for Development Economics Research - Danang social) and Dr. Nguyen Nha view .&amp;nbsp;&amp;quot;The two have a good feeling so I started looking for a map. When was the inspiration that I radiate thoughts quickly is to collect several maps of the West to prove the South of China stopped in Hainan Island, &amp;quot;Thang said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Temporarily set aside the busy work of a flight engineer, he found the antique shops, the sale of maps to buy.&amp;nbsp;The number of Chinese territorial map was published in the UK, Germany, France, Netherlands, USA, Italy ...&amp;nbsp;during 1626 - 1980 on a lot more.&amp;nbsp;However, he found a piece of map Paracel draw is located close to the coast of Vietnam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;When I was a little worried because I have proven stop China&amp;#39;s southern Hainan island, which means that the Paracel and Spratly Islands belong to China. So how do you prove the Hoang Sa and Truong Sa belong to Vietnam? If only one map is not enough to convince? &amp;quot;, he questioned himself and trying to find answers.&amp;nbsp;In mid-September, he accidentally discovered the ancient map Hoang Sa and immediately after that he collected an additional 15 maps of the same type.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thang also found it very strange that all 3 books Full map Republic of China Post and outstanding print map of China in Nanjing in 1919 and 1933 (including 78 maps), and Atlas of The Chinese Empire by the China Inland mission Mission published in England in 1908 (including 23 maps) are not listed Hoang Sa and Truong Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	However, the price of the old books are very expensive, not enough money itself Thang calling friends to contribute.&amp;nbsp;This is done secretly, in case the information will spread other people buy take.&amp;nbsp;&amp;quot;In two weeks waiting for the money, I am very excited, every day from work early to see the book on the network. When new books on my hand felt serene,&amp;quot; the single engineer experienced heart.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl2&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Scherer Atlas Novus, Germany, in 1970 showed that China&#039;s territory without Hoang Sa and Truong Sa. Photo: Tran Thang&quot; height=&quot;325&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/scherersatlasnovusgermany..jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				Map Scherer Atlas Novus (Germany) in 1970 also showed that China&amp;#39;s territory without Hoang Sa and Truong Sa.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Tran Thang.&lt;/em&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Buy your map, he did take the time to check the information of publisher, year of publication, number, frame, glass coated paper for preservation.&amp;nbsp;From there, he began to introduce Vietnamese Americans and young people know about Hoang Sa, Truong Sa belong to Vietnam&amp;#39;s territory.&amp;nbsp;The whole image of this collection is stored at the site of the Vietnam Institute of Culture and Education.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;I think the Vietnamese people at home and abroad are patriots, not just me. I do the map document collections in a natural way, without any pressure on the political current affairs. I do not see this as the Government or the other is of the people. I see the social benefit to the community is to &amp;quot;, Thang share and said that after the publication of the document along with lawyers in the United States meet to discuss how to help Vietnam in the Paracel and Spratly archipelagos.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;429&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;em&gt;* Photo:&lt;/em&gt;&amp;nbsp;&lt;a href=&quot;http://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=en&amp;amp;ie=UTF8&amp;amp;prev=_t&amp;amp;rurl=translate.google.com.vn&amp;amp;sl=vi&amp;amp;tl=en&amp;amp;u=http://vnexpress.net/gl/xa-hoi/2012/11/nguoi-suu-tam-100-ban-do-trung-quoc-khong-co-hoang-sa/Page_2.asp&amp;amp;usg=ALkJrhgTZcP5KFQFrz03LbfNrN15v-vclQ&quot;&gt;&lt;strong&gt;Map of &amp;#39;China has no Hoang Sa and Truong Sa&amp;#39;&lt;/strong&gt;&lt;/a&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	After reviewing copies of almost 100 map he Tran Wins sent from the U.S., Professor of history Phan Huy Le comment, this collection even though there are some complete unknown origin but are very precious and rich than the collection of maps related to Hoang Sa and Truong Sa ago.&amp;nbsp;Grateful heart of a country&amp;#39;s scientists always toward homeland, to help Vietnam with more evidence to sovereignty over Hoang Sa and Truong Sa, Prof. Le wrote a letter to thank Thang.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;The meaning of the maps associated with the historical and legal significance. Particular, the maps of China to 1933 shows that time the authorities in Beijing have no awareness of the territorial south, all the maps are clearly the territory of China extends to the island of Hainan. Meanwhile, maps of the world in Asia, Southeast Asia and Vietnam specifying Hoang Sa and Truong Sa associated with Vietnam, &amp;quot;Professor Phan Huy Le said.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 21:03:55', 'admin', '2012-11-02 21:03:55');
INSERT INTO `media` VALUES (17, 'default13518655761', '', 'media_information', '[72]', 'admin', 'Giới thiệu về Tự Lập', '', '', 'vn', '&lt;p&gt;\r\n	Ch&amp;uacute;ng ta c&amp;oacute; tr&amp;ecirc;n 20 triệu xe m&amp;aacute;y v&amp;agrave; hơn 900 ng&amp;agrave;n &amp;ocirc; t&amp;ocirc; cho khoảng hơn 84 triệu d&amp;acirc;n tại thời điểm cuối năm 2008.&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ch&amp;uacute;ng ta c&amp;oacute; tr&amp;ecirc;n 20 triệu xe m&amp;aacute;y v&amp;agrave; hơn 900 ng&amp;agrave;n &amp;ocirc; t&amp;ocirc; cho khoảng hơn 84 triệu d&amp;acirc;n tại thời điểm cuối năm 2008.&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		C&amp;ocirc;ng ty Truyền th&amp;ocirc;ng Tự Định Vị được sinh ra với một phương tiện truyền th&amp;ocirc;ng kiến ​​thức chuy&amp;ecirc;n m&amp;ocirc;n, k&amp;iacute;ch th&amp;iacute;ch khả năng tự học v&amp;agrave; s&amp;aacute;ng tạo trong mỗi nguoi.Dieu con xuất ph&amp;aacute;t từ kh&amp;aacute;i niệm của to&amp;agrave;n c&amp;ocirc;ng ty: &amp;quot;S&amp;aacute;ng tạo đến từ sự hiểu biết&amp;quot; Sự hiểu biết v&amp;agrave; kiến ​​thức l&amp;agrave; nền tảng của mỗi c&amp;aacute; nh&amp;acirc;n, mỗi doanh nghiệp, mỗi quốc gia.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thực hiện song song với hướng chiến lược l&amp;acirc;u d&amp;agrave;i n&amp;agrave;y l&amp;agrave; một dự &amp;aacute;n hợp t&amp;aacute;c của truyền th&amp;ocirc;ng Chuẩn bị cho m&amp;igrave;nh hệ thống c&amp;aacute;c trạm xăng tr&amp;ecirc;n khắp đất nước.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;div&gt;\r\n	Độc lập kh&amp;ocirc;ng chỉ trạm xăng m&amp;ocirc; h&amp;igrave;nh quảng c&amp;aacute;o từ nước ngo&amp;agrave;i đến Việt Nam m&amp;agrave; c&amp;ograve;n đ&amp;oacute;ng g&amp;oacute;p cho thế giới một h&amp;igrave;nh thức mới của quảng c&amp;aacute;o dựa tr&amp;ecirc;n khuynh hướng: x&amp;acirc;y dựng c&amp;aacute;c trạm xăng dầu v&amp;agrave;o phương tiện truyền th&amp;ocirc;ng chuy&amp;ecirc;n nghiệp, hiệu quả v&amp;agrave; hữu &amp;iacute;ch cho cả m&amp;ocirc;i trường v&amp;agrave; x&amp;atilde; hội.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hiện nay ch&amp;uacute;ng t&amp;ocirc;i c&amp;oacute; trụ sở ch&amp;iacute;nh tại th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh v&amp;agrave; một chi nh&amp;aacute;nh tại H&amp;agrave; Nội. Tất cả c&amp;aacute;c y&amp;ecirc;u cầu hợp t&amp;aacute;c, xin vui l&amp;ograve;ng li&amp;ecirc;n hệ:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Văn ph&amp;ograve;ng th&amp;agrave;nh phố:&lt;/div&gt;\r\n&lt;div&gt;\r\n	LL1 Ba V&amp;igrave;, Phường 15, Quận 10, Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh&lt;/div&gt;\r\n&lt;div&gt;\r\n	Điện thoại: (84-8) 39770600&lt;/div&gt;\r\n&lt;div&gt;\r\n	Fax: 08-39770603&lt;/div&gt;\r\n&lt;div&gt;\r\n	www.tulap.com.vn&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Trụ sở ch&amp;iacute;nh tại H&amp;agrave; Nội:&lt;/div&gt;\r\n&lt;div&gt;\r\n	314 Th&amp;aacute;i H&amp;agrave;, P. Trung Liệt, Phường Đống Đa - H&amp;agrave; Nội&lt;/div&gt;\r\n&lt;div&gt;\r\n	Điện thoại: 04-39941516&lt;/div&gt;\r\n&lt;div&gt;\r\n	FAX: 04-35149085&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Giới thiệu về dự &amp;aacute;n trạm kh&amp;iacute; quảng c&amp;aacute;o:&lt;/div&gt;\r\n&lt;div&gt;\r\n	Trạm xăng dầu l&amp;agrave; một loại h&amp;igrave;nh quảng c&amp;aacute;o từ l&amp;acirc;u đ&amp;atilde; xuất hiện tr&amp;ecirc;n thế giới: Canada, Mỹ, Singapore .. vv .. Ở Việt Nam?&lt;/div&gt;\r\n&lt;div&gt;\r\n	Ch&amp;uacute;ng t&amp;ocirc;i c&amp;oacute; hơn 20 triệu xe m&amp;aacute;y v&amp;agrave; hơn 900 ngh&amp;igrave;n xe &amp;ocirc; t&amp;ocirc; cho hơn 84 triệu người v&amp;agrave;o cuối năm 2008.&lt;/div&gt;\r\n&lt;div&gt;\r\n	H&amp;agrave; Nội v&amp;agrave; TP Hồ Ch&amp;iacute; Minh cho mỗi người một xe m&amp;aacute;y.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Thời gian trung b&amp;igrave;nh một lần r&amp;oacute;t từ 1.5-2 ph&amp;uacute;t&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hơn 6 triệu người H&amp;agrave; Nội v&amp;agrave; th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh trung b&amp;igrave;nh từ 1 đến 2 lần tại c&amp;aacute;c trạm xăng trong một tuần&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;Yacute; nghĩa: Một số lượng lớn kh&amp;aacute;ch h&amp;agrave;ng mục ti&amp;ecirc;u của c&amp;ocirc;ng ty được tập trung ở đ&amp;acirc;y. ... V&amp;agrave; độc lập tin rằng c&amp;aacute;c trạm xăng nhiều hơn so với dầu th&amp;ocirc;ng thường v&amp;agrave; kinh doanh kh&amp;iacute; đốt ng&amp;agrave;y h&amp;ocirc;m nay!&lt;/div&gt;\r\n&lt;div&gt;\r\n	Th&amp;ocirc;ng tin chi tiết: Trạm xăng tại Việt Nam, 98% kiến ​​tr&amp;uacute;c &amp;quot;hộp di&amp;ecirc;m&amp;quot;. V&amp;agrave; cũng về c&amp;aacute;c trạm xăng ở 5 th&amp;agrave;nh phố H&amp;agrave; Nội, Vinh, Đ&amp;agrave; Nẵng, Th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh, Cần Thơ m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; b&amp;oacute;ng c&amp;acirc;y, chỉ c&amp;oacute; b&amp;ecirc; t&amp;ocirc;ng, th&amp;eacute;p v&amp;agrave; cảm gi&amp;aacute;c kh&amp;oacute; chịu của người mua v&amp;agrave; b&amp;aacute;n.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Bởi v&amp;igrave; quảng c&amp;aacute;o ngo&amp;agrave;i trời l&amp;agrave; một loại h&amp;igrave;nh kiến ​​tr&amp;uacute;c, chức năng x&amp;atilde; hội của n&amp;oacute; l&amp;agrave; vẻ đẹp của kh&amp;ocirc;ng gian xung quanh. Điều kiện nhất định, mỗi trạm l&amp;agrave; một nơi c&amp;ocirc;ng cộng. Mục ti&amp;ecirc;u của ch&amp;uacute;ng t&amp;ocirc;i l&amp;agrave; l&amp;agrave;m cho c&amp;ocirc;ng ch&amp;uacute;ng rằng tất cả mọi người với kiến ​​tr&amp;uacute;c th&amp;acirc;n thiện kết hợp với quảng c&amp;aacute;o, với c&amp;acirc;y xanh, với những kiến ​​thức hữu &amp;iacute;ch cho cuộc sống.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Với định hướng đ&amp;oacute;, ch&amp;uacute;ng t&amp;ocirc;i dự định 5 năm sẽ tương tự cho 3000 m2 xăng với c&amp;acirc;y đ&amp;oacute;ng g&amp;oacute;p v&amp;agrave;o c&amp;aacute;c th&amp;agrave;nh phố lớn, đặc biệt l&amp;agrave; th&amp;agrave;nh phố Hồ Ch&amp;iacute; Minh khu vực m&amp;agrave;u xanh l&amp;aacute; c&amp;acirc;y l&amp;agrave; 1,5 m2 / người, &amp;iacute;t hơn 10 lần ti&amp;ecirc;u chuẩn. Đ&amp;oacute; l&amp;agrave; một số lượng nhỏ, nhưng trong kiến ​​tr&amp;uacute;c xanh trở lại 3000 m2, được t&amp;iacute;ch hợp nội dung, được trồng ở những nơi m&amp;agrave; mọi người cần đến ch&amp;uacute;ng nhất: c&amp;aacute;c trạm xăng.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hy vọng rằng trong v&amp;ograve;ng 5 năm tới khi một người n&amp;agrave;o đ&amp;oacute; tại c&amp;aacute;c trạm xăng trong sự hiện diện của ch&amp;uacute;ng ta, bạn thấy những nụ hoa được chăm s&amp;oacute;c tốt v&amp;agrave; biết rằng khi bạn mua xăng của bạn cũng g&amp;oacute;p phần v&amp;agrave;o việc bảo vệ m&amp;ocirc;i trường nơi bạn sinh sống.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Xin vui l&amp;ograve;ng gửi cảm ơn ch&amp;acirc;n th&amp;agrave;nh của t&amp;ocirc;i cho c&amp;aacute;c đối t&amp;aacute;c dầu kh&amp;iacute;, cơ quan Văn h&amp;oacute;a, Thể thao v&amp;agrave; Du lịch, Sở Văn h&amp;oacute;a, Thể thao v&amp;agrave; Du lịch tại TP Hồ Ch&amp;iacute; Minh, H&amp;agrave; Nội, Cần Thơ, Long An, B&amp;igrave;nh Dương.&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 21:12:56', 'admin', '2012-11-02 21:12:56');
INSERT INTO `media` VALUES (18, 'default13518655762', '', 'media_information', '[72]', 'admin', 'About Tu Lap', '', '', 'en', '&lt;p&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Communications Company Positioning Self Making born with a media specialist knowledge, stimulate self-learning ability and creativity in each child nguoi.Dieu comes from the concept of the entire company: &amp;quot;Creativity comes from understanding.&amp;quot; Understanding and knowledge is the cornerstone of every individual, every business, every country.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Perform parallel to the direction to this long-term strategy is a collaborative project of the Media Prepare yourself with the system of gas stations across the country.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;div&gt;\r\n	Independent not only gas station advertising model from abroad to Vietnam but also contribute back to the world a new form of advertising based on orientation: construction of petrol stations into media professional, effective results and are useful for both the environment and society.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Currently we have head office in Ho Chi Minh City and a branch in Hanoi. All requests for cooperation, please contact:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	City office:&lt;/div&gt;\r\n&lt;div&gt;\r\n	LL1 Ba Vi, Ward 15, District 10, Ho Chi Minh City&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: (84-8) 39770600&lt;/div&gt;\r\n&lt;div&gt;\r\n	Fax: 08-39770603&lt;/div&gt;\r\n&lt;div&gt;\r\n	www.tulap.com.vn&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Head Office in Hanoi:&lt;/div&gt;\r\n&lt;div&gt;\r\n	314 Thai Ha, P. Trung Liet Ward Dong Da - Ha Noi&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tel: 04-39941516&lt;/div&gt;\r\n&lt;div&gt;\r\n	FAX: 04-35149085&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	About the gas station advertising projects:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Gas station is a type of advertising has long appeared in the world: Canada, USA, Singapore .. etc. .. In Vietnam?&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	We have over 20 million motorcycles and more than 900 thousand cars for more than 84 million people at the end of 2008.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hanoi and Ho Chi Minh City for every two people is one motorcycle.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Average time once poured from 1.5-2 minutes&lt;/div&gt;\r\n&lt;div&gt;\r\n	More than 6 million people Hanoi and HCMC average 1 to 2 times at the gas station in a week&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Meaning: A large amount of targeted customers of the company are concentrated here. ... And independence believed that the gas station is much more than just a conventional oil and gas business today!&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Details: Gas Stations in Vietnam, 98 percent of architecture &amp;quot;matchbox&amp;quot;. And also about the gas stations in 5 cities of Hanoi, Vinh, Da Nang, Ho Chi Minh City, Can Tho without the shadow of the trees, only concrete, steel and uncomfortable feeling of buyers and sale.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Because outdoor advertising is a type of architecture, its social function is the beauty of the surrounding space. Certain terms, each station is a public place. We aim to make the public that everyone with friendly architecture combined with advertising, with trees, with useful knowledge for life.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	With the same orientation, we intend to 5 years will be the same for gasoline 3000 m2 with trees contribution to the big cities, especially Ho Chi Minh City where the green area is 1.5 m2 / person, less than 10 times the standard. It is a small number, but in return 3000 m2 green architecture that is integrated content, is cultivated in places where people need them most: the gas station.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hopefully in the next 5 years when someone in the gas station in the presence of us, you see the flower buds are well cared for and know that when you buy your gasoline is also contributing to the protection of the environment where you live.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Please send my heartfelt thanks to the petroleum partners, agencies of Culture, Sports and Tourism, the Department of Culture, Sports and Tourism in Ho Chi Minh City, Hanoi, Can Tho, Long An, Binh Duong.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 21:12:56', 'admin', '2012-11-02 21:12:56');
INSERT INTO `media` VALUES (19, 'default13518656271', '', 'media_contactmap', '[71]', 'admin', 'LIÊN HỆ', '', '', 'vn', '', '&lt;p&gt;\r\n	&lt;strong style=&quot;font-size: 12px; letter-spacing: 1px;&quot;&gt;Địa chỉ:&lt;/strong&gt;&lt;span style=&quot;font-size: 12px; letter-spacing: 1px;&quot;&gt;&amp;nbsp;266/10 T&amp;ocirc; Hiến Th&amp;agrave;nh, P.15, Q.10 TP HCM, Vietnam&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;font-size: 12px; letter-spacing: 1px;&quot; /&gt;\r\n	&lt;strong style=&quot;font-size: 12px; letter-spacing: 1px;&quot;&gt;Tel:&lt;/strong&gt;&lt;span style=&quot;font-size: 12px; letter-spacing: 1px;&quot;&gt;&amp;nbsp;08.6264.7180 - 0916.472.445 (Mr. Vũ)&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:04:24', 'admin', '2013-07-05 15:40:43');
INSERT INTO `media` VALUES (20, 'default13518656272', '', 'media_contactmap', '[71]', 'admin', 'CONTACT', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 21:13:47', 'admin', '2012-11-02 21:13:47');
INSERT INTO `media` VALUES (21, 'default13518656991', '', 'media_contactmap', '[71]', 'admin', 'LIÊN HỆ', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 21:14:59', 'admin', '2012-11-02 21:14:59');
INSERT INTO `media` VALUES (22, 'default13518656992', '', 'media_contactmap', '[71]', 'admin', 'CONTACT', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 21:14:59', 'admin', '2012-11-02 21:14:59');
INSERT INTO `media` VALUES (23, 'default13518663171', '', 'media_news', '[76]', 'admin', 'Truyền Thông Tự Lập Nhận Sinh Viên Thực Tập', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Thời gian qua Truyền th&amp;ocirc;ng Tự Lập đ&amp;atilde; li&amp;ecirc;n tục tạo cơ hội cho sinh vi&amp;ecirc;n c&amp;aacute;c chuy&amp;ecirc;n ng&amp;agrave;nh: điện tử, kinh tế, maketting&amp;hellip; được tham gia thực tập v&amp;agrave; l&amp;agrave;m việc tại c&amp;ocirc;ng ty. Hiện Tự Lập đang hướng dẫn, hỗ trợ c&amp;ocirc;ng việc cho 4 sinh vi&amp;ecirc;n đang thực tập tại c&amp;ocirc;ng ty từ th&amp;aacute;ng 1 đến th&amp;aacute;ng 3 năm 2010.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Với triết l&amp;yacute; &amp;ldquo;S&amp;aacute;ng tạo đến từ sự hiểu biết&amp;rdquo;, truyền th&amp;ocirc;ng tri thức bằng nhiều c&amp;aacute;ch, &amp;nbsp;Truyền th&amp;ocirc;ng Tự Lập muốn trang bị cho c&amp;aacute;c bạn sinh vi&amp;ecirc;n th&amp;ecirc;m nhiều kiến thức, h&amp;agrave;nh trang v&amp;agrave;o đời, gi&amp;uacute;p c&amp;aacute;c bạn n&amp;acirc;ng cao sự hiểu biết để phục vụ tốt hơn cho c&amp;ocirc;ng việc sau n&amp;agrave;y. Đ&amp;oacute; cũng l&amp;agrave; mục đ&amp;iacute;ch duy nhất để Tự Lập nhận sinh vi&amp;ecirc;n v&amp;agrave;o thực tập.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tri thức l&amp;agrave; ch&amp;igrave;a kho&amp;aacute; cho th&amp;agrave;nh c&amp;ocirc;ng&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tự Lập l&amp;agrave; c&amp;ocirc;ng ty hoạt động chuy&amp;ecirc;n về lĩnh vực quảng c&amp;aacute;o v&amp;agrave; truyền th&amp;ocirc;ng. Hiện Tự Lập đang l&amp;agrave; đơn vị đầu ti&amp;ecirc;n ở Việt Nam thực hiện m&amp;ocirc; h&amp;igrave;nh quảng c&amp;aacute;o mới tr&amp;ecirc;n c&amp;aacute;c trạm xăng. Từ những th&amp;agrave;nh c&amp;ocirc;ng bước đầu thu được,Tự Lập c&amp;oacute; &amp;yacute; tưởng ph&amp;aacute;t triển th&amp;ecirc;m một k&amp;ecirc;nh truyền th&amp;ocirc;ng mới tr&amp;ecirc;n c&amp;ocirc;ng nghệ LED. Sản phẩm cho &amp;yacute; tưởng mới n&amp;agrave;y l&amp;agrave; LED360, được ứng dụng đầu ti&amp;ecirc;n v&amp;agrave;o việc thể hiện c&amp;aacute; t&amp;iacute;nh người chơi xe.&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	LED360 đang trong giai đoạn tung ra thị trường, n&amp;ecirc;n sẽ l&amp;agrave; cơ hội cũng như th&amp;aacute;ch thức lớn cho c&amp;aacute;c bạn sinh vi&amp;ecirc;n thể hiện khả năng v&amp;agrave; bản lĩnh của m&amp;igrave;nh. Tự Lập lu&amp;ocirc;n tr&amp;acirc;n trọng những gi&amp;aacute; trị s&amp;aacute;ng tạo v&amp;agrave; tạo điều kiện tốt nhất cho c&amp;aacute;c bạn sinh vi&amp;ecirc;n thực hiện &amp;yacute; tưởng mới v&amp;agrave;o c&amp;ocirc;ng việc.&lt;/div&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c sinh vi&amp;ecirc;n đang thực tập tại Truyền th&amp;ocirc;ng Tự Lập&lt;/p&gt;\r\n&lt;div&gt;\r\n	Tự Lập sẽ tiếp tục nhận sinh vi&amp;ecirc;n v&amp;agrave;o thực tập từ th&amp;aacute;ng 4 sau khi c&amp;aacute;c bạn sinh vi&amp;ecirc;n đợt n&amp;agrave;y ho&amp;agrave;n th&amp;agrave;nh việc thực tập của m&amp;igrave;nh.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Mọi chi tiết, xin c&amp;aacute;c bạn li&amp;ecirc;n hệ:&lt;/div&gt;\r\n&lt;div&gt;\r\n	C&amp;ocirc;ng ty Truyền th&amp;ocirc;ng Tự Lập:&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Trụ sở ch&amp;iacute;nh: LL1, Ba V&amp;igrave;, P.15, Q.10, TP.HCM&lt;/div&gt;\r\n&lt;div&gt;\r\n	Điện thoại: (84-8) 39770600 &amp;ndash; 22126424&lt;/div&gt;\r\n&lt;div&gt;\r\n	Website: http://tulap.com.vn &amp;nbsp;- &amp;nbsp; http://led360.com.vn&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:46:24', 'admin', '2012-11-03 02:46:24');
INSERT INTO `media` VALUES (24, 'default13518664581', '', 'media_information', '[74]', 'admin', 'BÍ QUYẾT TUYỂN DỤNG NHÂN TÀI', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 16px; text-align: justify; &quot;&gt;Ng&amp;agrave;y nay, nh&amp;acirc;n t&amp;agrave;i ch&amp;iacute;nh l&amp;agrave; lợi thế cạnh tranh h&amp;agrave;ng đầu của mọi c&amp;ocirc;ng ty. L&amp;agrave;m sao để tuyển dụng được nh&amp;acirc;n t&amp;agrave;i trong h&amp;agrave;ng trăm ngh&amp;igrave;n ứng vi&amp;ecirc;n trung b&amp;igrave;nh? Đ&amp;oacute; l&amp;agrave; c&amp;acirc;u hỏi khiến bao nh&amp;agrave; quản l&amp;yacute; nh&amp;acirc;n sự trăn trở. Hy vọng c&amp;aacute;c gợi &amp;yacute; sau sẽ gi&amp;uacute;p bạn t&amp;igrave;m được người t&amp;agrave;i cho c&amp;ocirc;ng ty trong cuộc chiến gi&amp;agrave;nh nh&amp;acirc;n t&amp;agrave;i ng&amp;agrave;y nay.&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;text-align: center; &quot;&gt;\r\n	&lt;img id=&quot;ctl00_show_right_Image1&quot; src=&quot;http://tulap.com.vn/UserUpload/Articles/r1-Bi-quyet-tuyen-dung-nhan-taijpg.jpg&quot; style=&quot;border-width:0px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ng&amp;agrave;y nay, nh&amp;acirc;n t&amp;agrave;i ch&amp;iacute;nh l&amp;agrave; lợi thế cạnh tranh h&amp;agrave;ng đầu của mọi c&amp;ocirc;ng ty. L&amp;agrave;m sao để tuyển dụng được nh&amp;acirc;n t&amp;agrave;i trong h&amp;agrave;ng trăm ngh&amp;igrave;n ứng vi&amp;ecirc;n trung b&amp;igrave;nh? Đ&amp;oacute; l&amp;agrave; c&amp;acirc;u hỏi khiến bao nh&amp;agrave; quản l&amp;yacute; nh&amp;acirc;n sự trăn trở. Hy vọng c&amp;aacute;c gợi &amp;yacute; sau sẽ gi&amp;uacute;p bạn t&amp;igrave;m được người t&amp;agrave;i cho c&amp;ocirc;ng ty trong cuộc chiến gi&amp;agrave;nh nh&amp;acirc;n t&amp;agrave;i ng&amp;agrave;y nay.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	1) Đăng tuyển dụng với bản m&amp;ocirc; tả c&amp;ocirc;ng việc thật tốt Bản m&amp;ocirc; tả c&amp;ocirc;ng việc l&amp;agrave; một những những phần quan trọng nhất của quảng c&amp;aacute;o tuyển dụng. Bản m&amp;ocirc; tả c&amp;ocirc;ng việc c&amp;agrave;ng r&amp;otilde; r&amp;agrave;ng v&amp;agrave; chi tiết th&amp;igrave; cơ hội bạn tuyển được nh&amp;acirc;n vi&amp;ecirc;n giỏi c&amp;agrave;ng cao v&amp;agrave; gi&amp;uacute;p bạn s&amp;agrave;ng lọc ứng vi&amp;ecirc;n kh&amp;ocirc;ng ph&amp;ugrave; hợp. Bản m&amp;ocirc; tả c&amp;ocirc;ng việc thường gồm c&amp;aacute;c nội dung sau: C&amp;ocirc;ng việc v&amp;agrave; nhiệm vụ ch&amp;iacute;nh của ứng vi&amp;ecirc;n Cho biết người được tuyển sẽ b&amp;aacute;o c&amp;aacute;o cho ai Loại h&amp;igrave;nh c&amp;ocirc;ng việc (tạm thời hay cố định, to&amp;agrave;n thời gian hay b&amp;aacute;n thời gian) 2) Tận dụng website c&amp;ocirc;ng ty để thu h&amp;uacute;t nh&amp;acirc;n t&amp;agrave;i Website của c&amp;ocirc;ng ty l&amp;agrave; một trong những k&amp;ecirc;nh tuyển dụng hiệu quả nhất. Th&amp;ocirc;ng qua phần giới thiệu sơ lược về c&amp;ocirc;ng ty thật hấp dẫn, bạn sẽ c&amp;oacute; nhiều cơ hội thu h&amp;uacute;t được nhiều ứng vi&amp;ecirc;n. Sơ lược c&amp;ocirc;ng ty n&amp;ecirc;n tr&amp;igrave;nh b&amp;agrave;y r&amp;otilde; tầm nh&amp;igrave;n, triển vọng ph&amp;aacute;t triển, c&amp;aacute;c gi&amp;aacute; trị cơ bản v&amp;agrave; văn h&amp;oacute;a của c&amp;ocirc;ng ty. &amp;ldquo;Đất l&amp;agrave;nh chim đậu&amp;rdquo;. Những th&amp;ocirc;ng tin quảng b&amp;aacute; về h&amp;igrave;nh ảnh, uy t&amp;iacute;n, th&amp;agrave;nh c&amp;ocirc;ng v&amp;agrave; c&amp;aacute;c gi&amp;aacute; trị tốt đẹp của c&amp;ocirc;ng ty sẽ l&amp;agrave; động lực khiến ứng vi&amp;ecirc;n chọn c&amp;ocirc;ng ty bạn l&amp;agrave;m nơi ph&amp;aacute;t triển sự nghiệp l&amp;acirc;u d&amp;agrave;i. H&amp;atilde;y sử dụng mục Nghề Nghiệp hay Tuyển Dụng tr&amp;ecirc;n website của c&amp;ocirc;ng ty cho mục đ&amp;iacute;ch tuyển dụng. Website n&amp;ecirc;n cung cấp đường dẫn để ứng vi&amp;ecirc;n dễ d&amp;agrave;ng nộp đơn ứng tuyển trực tiếp cho những vị tr&amp;iacute; c&amp;ograve;n trống trong c&amp;ocirc;ng ty. 3) Tận dụng mạng lưới tuyển dụng nội bộ Mạng lưới tuyển dụng nội bộ l&amp;agrave; một trong những k&amp;ecirc;nh th&amp;ocirc;ng tin tiết kiệm v&amp;agrave; nhanh ch&amp;oacute;ng nhất gi&amp;uacute;p bạn tuyển dụng nh&amp;acirc;n t&amp;agrave;i. H&amp;atilde;y đăng c&amp;aacute;c th&amp;ocirc;ng b&amp;aacute;o tuyển dụng l&amp;ecirc;n bản tin nội bộ của c&amp;ocirc;ng ty, liệt k&amp;ecirc; đầy đủ th&amp;ocirc;ng tin về vị tr&amp;iacute; tuyển dụng v&amp;agrave; y&amp;ecirc;u cầu cụ thể đối với ứng vi&amp;ecirc;n. Nh&amp;acirc;n vi&amp;ecirc;n sẽ nhanh ch&amp;oacute;ng truyền tai nhau về c&amp;aacute;c vị tr&amp;iacute; tuyển dụng n&amp;agrave;y v&amp;agrave; giới thiệu cho bạn b&amp;egrave;, người th&amp;acirc;n của họ. Để khuyến kh&amp;iacute;ch nh&amp;acirc;n vi&amp;ecirc;n tham gia t&amp;iacute;ch cực, ph&amp;ograve;ng nh&amp;acirc;n sự n&amp;ecirc;n quy định ch&amp;iacute;nh s&amp;aacute;ch tưởng thưởng xứng đ&amp;aacute;ng cho nh&amp;acirc;n vi&amp;ecirc;n n&amp;agrave;o giới thiệu được bạn b&amp;egrave; cho c&amp;ocirc;ng ty. 4) Sử dụng c&amp;aacute;c website tuyển dụng Ng&amp;agrave;y nay c&amp;aacute;c website tuyển dụng ng&amp;agrave;y c&amp;agrave;ng ph&amp;aacute;t triển nhằm gi&amp;uacute;p c&amp;aacute;c c&amp;ocirc;ng ty tuyển dụng người t&amp;agrave;i. Chỉ với v&amp;agrave;i nhấp chuột đơn giản, bạn c&amp;oacute; thể dễ d&amp;agrave;ng tạo mục Đăng Tuyển Dụng. Để t&amp;igrave;m hồ sơ ứng vi&amp;ecirc;n ph&amp;ugrave; hợp theo y&amp;ecirc;u cầu cụ thể, bạn c&amp;oacute; thể đăng k&amp;yacute; dịch vụ T&amp;igrave;m Hồ Sơ. Bạn cũng c&amp;oacute; thể đăng k&amp;yacute; Th&amp;ocirc;ng B&amp;aacute;o Hồ Sơ để nhận hồ sơ ph&amp;ugrave; hợp nhất m&amp;agrave; kh&amp;ocirc;ng phải mất thời gian t&amp;igrave;m kiếm. 5) Sử dụng dịch vụ tư vấn nh&amp;acirc;n sự cấp cao Ng&amp;agrave;y nay, chuy&amp;ecirc;n vi&amp;ecirc;n tư vấn nh&amp;acirc;n sự cấp cao (c&amp;ograve;n gọi l&amp;agrave; dịch vụ &amp;ldquo;săn đầu người&amp;rdquo;) l&amp;agrave; bạn đồng h&amp;agrave;nh đ&amp;aacute;ng tin cậy của c&amp;aacute;c Gi&amp;aacute;m đốc Điều h&amp;agrave;nh v&amp;agrave; c&amp;aacute;c nh&amp;agrave; Quản l&amp;yacute; Nh&amp;acirc;n sự trong cuộc chiến gi&amp;agrave;nh nh&amp;acirc;n t&amp;agrave;i. C&amp;aacute;c chuy&amp;ecirc;n vi&amp;ecirc;n tư vấn nh&amp;acirc;n sự cấp cao giữ vai tr&amp;ograve; l&amp;agrave; cầu nối giữa ứng vi&amp;ecirc;n v&amp;agrave; nh&amp;agrave; tuyển dụng. Họ lu&amp;ocirc;n c&amp;oacute; sẵn kho dữ liệu c&amp;aacute;c ứng vi&amp;ecirc;n t&amp;agrave;i năng nhất, những người sẽ mang đến th&amp;agrave;nh c&amp;ocirc;ng l&amp;acirc;u d&amp;agrave;i cho c&amp;ocirc;ng ty. 6) Giữ li&amp;ecirc;n lạc thường xuy&amp;ecirc;n với ứng vi&amp;ecirc;n giỏi Trong đợt phỏng vấn gần đ&amp;acirc;y, bạn quyết định tuyển c&amp;aacute;c ứng vi&amp;ecirc;n giỏi nhất. Tuy nhi&amp;ecirc;n, bạn vẫn ph&amp;aacute;t hiện nhiều ứng vi&amp;ecirc;n kh&amp;aacute;c ph&amp;ugrave; hợp. Vậy bạn h&amp;atilde;y tiếp tục giữ li&amp;ecirc;n lạc với c&amp;aacute;c ứng vi&amp;ecirc;n tiềm năng n&amp;agrave;y bằng c&amp;aacute;ch gửi email cảm ơn họ đ&amp;atilde; đến dự phỏng vấn v&amp;agrave; gửi cập nhật c&amp;aacute;c vị tr&amp;iacute; c&amp;ograve;n trống trong c&amp;ocirc;ng ty. Bằng c&amp;aacute;ch đ&amp;oacute;, bạn sẽ lu&amp;ocirc;n c&amp;oacute; trong tay nguồn ứng vi&amp;ecirc;n phong ph&amp;uacute; khi c&amp;oacute; nhu cầu tuyển dụng.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:13:13', 'admin', '2012-11-03 01:13:13');
INSERT INTO `media` VALUES (25, 'default13518667341', '', 'media_news', '[76]', 'admin', '8 Vị Trí Quảng Cáo Ở Trạm Xăng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;text-align: justify; &quot;&gt;Dựa v&amp;agrave;o kết quả nghi&amp;ecirc;n cứu thị trường về những n&amp;eacute;t ch&amp;iacute;nh trong h&amp;agrave;nh vi của người ti&amp;ecirc;u d&amp;ugrave;ng tại c&amp;aacute;c trạm xăng được thực hiện v&amp;agrave;o th&amp;aacute;ng 04 năm 2009, ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; c&amp;oacute; những số liệu cụ thể v&amp;agrave; đ&amp;aacute;ng tin cậy để l&amp;agrave;m cơ sở cho việc nghi&amp;ecirc;n cứu v&amp;agrave; x&amp;aacute;c định những vị tr&amp;iacute; ở trạm xăng nằm trong tầm mắt của kh&amp;aacute;ch h&amp;agrave;ng đến đổ xăng, v&amp;agrave; l&amp;agrave; nơi c&amp;oacute; thể đặt quảng c&amp;aacute;o thu h&amp;uacute;t sự ch&amp;uacute; &amp;yacute; của đ&amp;ocirc;ng đảo kh&amp;aacute;ch h&amp;agrave;ng mỗi khi đến tiếp nhi&amp;ecirc;n liệu hoặc đi ngang qua trạm xăng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Dựa v&amp;agrave;o kết quả nghi&amp;ecirc;n cứu thị trường về những n&amp;eacute;t ch&amp;iacute;nh trong h&amp;agrave;nh vi của người ti&amp;ecirc;u d&amp;ugrave;ng tại c&amp;aacute;c trạm xăng được thực hiện v&amp;agrave;o th&amp;aacute;ng 04 năm 2009, ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; c&amp;oacute; những số liệu cụ thể v&amp;agrave; đ&amp;aacute;ng tin cậy để l&amp;agrave;m cơ sở cho việc nghi&amp;ecirc;n cứu v&amp;agrave; x&amp;aacute;c định những vị tr&amp;iacute; ở trạm xăng nằm trong tầm mắt của kh&amp;aacute;ch h&amp;agrave;ng đến đổ xăng, v&amp;agrave; l&amp;agrave; nơi c&amp;oacute; thể đặt quảng c&amp;aacute;o thu h&amp;uacute;t sự ch&amp;uacute; &amp;yacute; của đ&amp;ocirc;ng đảo kh&amp;aacute;ch h&amp;agrave;ng mỗi khi đến tiếp nhi&amp;ecirc;n liệu hoặc đi ngang qua trạm xăng.&lt;/p&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;QUY TR&amp;Igrave;NH ĐỔ XĂNG&lt;/strong&gt; (Nguồn: Camera tại 18 &amp;nbsp;Cửa h&amp;agrave;ng &amp;nbsp;Petrolimex)&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Mỗi một kh&amp;aacute;ch h&amp;agrave;ng đổ xăng đều trải qua 3 giai đoạn:&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Thời gian trung b&amp;igrave;nh cho một lần đổ xăng l&amp;agrave; từ 30 gi&amp;acirc;y cho đến 1 ph&amp;uacute;t 15 gi&amp;acirc;y. Thời gian n&amp;agrave;y kh&amp;ocirc;ng qu&amp;aacute; d&amp;agrave;i nhưng cũng đủ để người ti&amp;ecirc;u d&amp;ugrave;ng c&amp;oacute; thời gian quan s&amp;aacute;t xung quanh cũng như lưu lại trong họ những ấn tượng nhất định.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Dựa v&amp;agrave;o những h&amp;agrave;nh vi của kh&amp;aacute;ch h&amp;agrave;ng cũng như vị tr&amp;iacute; v&amp;agrave; kh&amp;ocirc;ng gian c&amp;aacute;c trạm xăng, c&amp;oacute; 8 vị tr&amp;iacute; quảng c&amp;aacute;o được quy hoạch c&amp;oacute; chủ đ&amp;iacute;ch đ&amp;oacute;n mọi tầm mắt của người v&amp;agrave;o đổ xăng v&amp;agrave; cả người đi đường.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;1. &amp;nbsp;Billboard tr&amp;ecirc;n m&amp;aacute;i che&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Với c&amp;aacute;c trạm xăng dọc quốc lộ, quảng c&amp;aacute;o được đặt ở cả ba mặt l&amp;agrave;m tăng gấp ba cơ hội nh&amp;igrave;n thấy với cả hai hướng di chuyển. Với chi ph&amp;iacute; rẻ hơn gi&amp;aacute; thu&amp;ecirc; một billboard, nhưng bạn c&amp;oacute; thể tăng gấp 4 lượng người nh&amp;igrave;n thấy khi thu&amp;ecirc; vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n m&amp;aacute;i che từ 2 đến 3 trạm xăng ở c&amp;aacute;c vị tr&amp;iacute; kh&amp;aacute;c nhau.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;2. &amp;nbsp;Khoảng trống giữa 2 cột trụ&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Với 32 trạm xăng ng&amp;atilde; 4 c&amp;oacute; hai mặt tiền trong nội th&amp;agrave;nh TP.HCM, người đi đường bị thu h&amp;uacute;t ngay bởi quảng c&amp;aacute;o giữa hai cột trụ với OTS gấp đ&amp;ocirc;i billboard c&amp;ugrave;ng vị tr&amp;iacute; ng&amp;atilde; 4 đ&amp;oacute;. C&amp;ograve;n những trạm xăng kh&amp;ocirc;ng ở ng&amp;atilde; 4 th&amp;igrave; quảng c&amp;aacute;o giữa hai cột trụ c&amp;oacute; lượng người nh&amp;igrave;n nhiều nhất l&amp;agrave; khi họ bắt đầu từ ngo&amp;agrave;i đường rẽ v&amp;agrave;o trạm xăng.Đ&amp;acirc;y l&amp;agrave; vị tr&amp;iacute; trung t&amp;acirc;m của trạm xăng. Quảng c&amp;aacute;o được nh&amp;igrave;n thấy bởi cả người lưu th&amp;ocirc;ng tr&amp;ecirc;n đường v&amp;agrave; kh&amp;aacute;ch v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu. Khung quảng c&amp;aacute;o được thiết kế đẹp, sang trọng, chắc chắn. Ở vị tr&amp;iacute; n&amp;agrave;y, quảng c&amp;aacute;o c&amp;oacute; cơ hội tiếp x&amp;uacute;c với kh&amp;aacute;ch h&amp;agrave;ng trung b&amp;igrave;nh l&amp;agrave; 52s.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;3. &amp;nbsp;Trụ xăng&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Từ l&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave;o trạm xăng t&amp;igrave;m cho m&amp;igrave;nh một vị tr&amp;iacute;, mở cốp xe ra v&amp;agrave; chờ mua nhi&amp;ecirc;n liệu chiếm thời gian l&amp;acirc;u nhất trong to&amp;agrave;n bộ qui tr&amp;igrave;nh đổ xăng. L&amp;uacute;c n&amp;agrave;y, kh&amp;aacute;ch h&amp;agrave;ng n&amp;agrave;o cũng bị thu h&amp;uacute;t bởi những g&amp;igrave; lạ, đẹp ở khoảng c&amp;aacute;ch từ 1 - 2 m. Trụ xăng ở vị tr&amp;iacute; ngang tầm mắt với họ: c&amp;aacute;ch mắt chỉ 1 &amp;ndash; 1,5m, v&amp;igrave; thế 99% người v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu d&amp;agrave;nh thời gian 5s-7s &amp;nbsp;để ngắm nh&amp;igrave;n (với quảng c&amp;aacute;o ngo&amp;agrave;i trời kh&amp;aacute;c: trung b&amp;igrave;nh 1s-2s). Mỗi tuần &amp;iacute;t nhất 1 lần kh&amp;aacute;ch sử dụng xe m&amp;aacute;y lại được thấy quảng c&amp;aacute;o tr&amp;ecirc;n trụ xăng. Với những trạm xăng ở ng&amp;atilde; 4, kh&amp;aacute;ch đi đường cũng c&amp;oacute; thể nh&amp;igrave;n thấy quảng c&amp;aacute;o ở vị tr&amp;iacute; n&amp;agrave;y.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;4. Cột trụ đỡ m&amp;aacute;i che&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Vị tr&amp;iacute; n&amp;agrave;y c&amp;aacute;ch tầm mắt người v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu từ &amp;nbsp;2-3m &amp;ndash; khoảng c&amp;aacute;ch cực gần, ngang tầm nh&amp;igrave;n. Quảng c&amp;aacute;o c&amp;oacute; cơ hội tiếp x&amp;uacute;c mắt kh&amp;aacute;ch h&amp;agrave;ng trung b&amp;igrave;nh 52s (thời gian trung b&amp;igrave;nh tiếp nhi&amp;ecirc;n liệu). Quảng c&amp;aacute;o được ốp ở 4 mặt của cột trụ n&amp;ecirc;n kh&amp;aacute;ch h&amp;agrave;ng ở ph&amp;acirc;n luồng n&amp;agrave;o cũng nh&amp;igrave;n thấy được, kể cả kh&amp;aacute;ch đi ngo&amp;agrave;i đường.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;5. Tay bơm&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	L&amp;uacute;c nh&amp;acirc;n vi&amp;ecirc;n đưa tay bơm v&amp;agrave;o b&amp;igrave;nh xăng để bơm xăng v&amp;agrave;o xe, mắt của kh&amp;aacute;ch h&amp;agrave;ng vừa nh&amp;igrave;n v&amp;agrave;o đồng hồ xăng để kiểm tra vừa nh&amp;igrave;n v&amp;agrave;o tay bơm v&amp;igrave; đ&amp;acirc;y l&amp;agrave; điểm tiếp x&amp;uacute;c giữa xe của họ với một vật lạ b&amp;ecirc;n ngo&amp;agrave;i. Hơn nữa, l&amp;uacute;c n&amp;agrave;y, họ nh&amp;igrave;n xem nh&amp;acirc;n vi&amp;ecirc;n c&amp;oacute; bơm xăng tr&amp;agrave;n ra ngo&amp;agrave;i hay kh&amp;ocirc;ng. &amp;nbsp;V&amp;igrave; vậy, tay bơm l&amp;agrave; một trong những vị tr&amp;iacute; thu h&amp;uacute;t sự quan s&amp;aacute;t của kh&amp;aacute;ch h&amp;agrave;ng.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;6. Cột trụ biểu tượng&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Vị tr&amp;iacute; quảng c&amp;aacute;o n&amp;agrave;y vu&amp;ocirc;ng g&amp;oacute;c v&amp;agrave; c&amp;oacute; khoảng c&amp;aacute;ch gần với mắt người lưu th&amp;ocirc;ng tr&amp;ecirc;n đường. Quảng c&amp;aacute;o đặt ở vị tr&amp;iacute; n&amp;agrave;y c&amp;oacute; cơ hội gấp đ&amp;ocirc;i số lượng người nh&amp;igrave;n thấy với đường 2 chiều.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;7. Tường bao trạm xăng&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Vị tr&amp;iacute; n&amp;agrave;y vu&amp;ocirc;ng g&amp;oacute;c với hướng nh&amp;igrave;n v&amp;agrave; ngang tầm mắt người lưu th&amp;ocirc;ng tr&amp;ecirc;n đường. Một th&amp;ocirc;ng điệp quảng c&amp;aacute;o hay c&amp;ugrave;ng h&amp;igrave;nh ảnh bắt mắt nhất định sẽ thu h&amp;uacute;t sự ch&amp;uacute; &amp;yacute; của kh&amp;aacute;ch h&amp;agrave;ng.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;8. Gian h&amp;agrave;ng&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	T&amp;ugrave;y v&amp;agrave;o vị tr&amp;iacute; v&amp;agrave; kh&amp;ocirc;ng gian của từng trạm xăng m&amp;agrave; xem x&amp;eacute;t về việc đặt gian h&amp;agrave;ng. Tất cả những ai lưu th&amp;ocirc;ng v&amp;agrave;o trạm xăng đều sẽ thấy được gian h&amp;agrave;ng n&amp;agrave;y, nếu x&amp;eacute;t thấy kh&amp;ocirc;ng xảy ra t&amp;igrave;nh trạng tắc nghẽn, giảm doanh số của trạm xăng do qu&amp;aacute; đ&amp;ocirc;ng người muốn thử sản phẩm th&amp;igrave; gian h&amp;agrave;ng mới được đặt.&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Tất cả c&amp;aacute;c vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n đều được thiết kế với k&amp;iacute;ch thước tỷ lệ, vật liệu đẹp, ph&amp;ugrave; hợp kiến tr&amp;uacute;c để thu h&amp;uacute;t sự ch&amp;uacute; &amp;yacute; v&amp;agrave; tạo thiện cảm với người di chuyển tr&amp;ecirc;n đường v&amp;agrave; người v&amp;agrave;o đổ xăng. Đ&amp;acirc;y l&amp;agrave; k&amp;ecirc;nh truyền th&amp;ocirc;ng đầu ti&amp;ecirc;n kết hợp kiến tr&amp;uacute;c với quảng c&amp;aacute;o l&amp;agrave;m đẹp kh&amp;ocirc;ng gian v&amp;agrave; th&amp;acirc;n thiện m&amp;ocirc;i trường.&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:45:55', 'admin', '2012-11-03 02:45:55');
INSERT INTO `media` VALUES (28, 'default13518682611', '', 'media_news', '[87]', 'admin', 'Kế Hoạch Marketing', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Đỗ H&amp;ograve;a. Kế hoạch marketing h&amp;agrave;ng năm cho một ng&amp;agrave;nh h&amp;agrave;ng thường bao gồm c&amp;aacute;c nội dung: ph&amp;acirc;n t&amp;iacute;ch, x&amp;aacute;c định mục ti&amp;ecirc;u, định vị, chiến lược v&amp;agrave; giải ph&amp;aacute;p gi&amp;aacute; trị, kế hoạch triển khai thực hiện v&amp;agrave; kế hoạch t&amp;agrave;i ch&amp;iacute;nh.&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;text-align: center; &quot;&gt;\r\n	Đỗ H&amp;ograve;a. Kế hoạch marketing h&amp;agrave;ng năm cho một ng&amp;agrave;nh h&amp;agrave;ng thường bao gồm c&amp;aacute;c nội dung: ph&amp;acirc;n t&amp;iacute;ch, x&amp;aacute;c định mục ti&amp;ecirc;u, định vị, chiến lược v&amp;agrave; giải ph&amp;aacute;p gi&amp;aacute; trị, kế hoạch triển khai thực hiện v&amp;agrave; kế hoạch t&amp;agrave;i ch&amp;iacute;nh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tr&amp;ecirc;n thế giới c&amp;oacute; nhiều c&amp;aacute;ch tiếp cận kh&amp;aacute;c nhau khi lập kế hoạch marketing. Về cơ bản, m&amp;ocirc;t bản kế hoạch marketing thường bao gồm c&amp;aacute;c nội dung sau:&lt;/p&gt;\r\n&lt;h3&gt;\r\n	A. Tổng quan.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Bối cảnh thị trường. Giới thiệu bối cảnh ra đời của bản kế hoạch marketing. Đ&amp;aacute;nh gi&amp;aacute; t&amp;igrave;nh h&amp;igrave;nh kinh doanh c&amp;aacute;c năm trước, x&amp;aacute;c định mục ti&amp;ecirc;u marketing.&lt;/p&gt;\r\n&lt;h3&gt;\r\n	B. Ph&amp;acirc;n t&amp;iacute;ch.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Ph&amp;acirc;n t&amp;iacute;ch vĩ m&amp;ocirc; v&amp;agrave; vi m&amp;ocirc;, tập trung nhấn mạnh c&amp;aacute;c xu hướng, diễn biến bất thường về nhu cầu, đối thủ, nhận diện c&amp;aacute;c th&amp;aacute;ch thức c&amp;oacute; thể c&amp;oacute; t&amp;aacute;c động đến hoạt động kinh doanh của doanh nghiệp.&lt;/p&gt;\r\n&lt;h3&gt;\r\n	C. X&amp;aacute;c định thị trường mục ti&amp;ecirc;u.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Ph&amp;acirc;n kh&amp;uacute;c thị trường v&amp;agrave; x&amp;aacute;c định c&amp;aacute;c ph&amp;acirc;n kh&amp;uacute;c mục ti&amp;ecirc;u theo thứ tự ưu ti&amp;ecirc;n, x&amp;aacute;c định c&amp;aacute;c ph&amp;acirc;n kh&amp;uacute;c kh&amp;ocirc;ng cạnh tranh.&lt;/p&gt;\r\n&lt;h3&gt;\r\n	D. Định vị.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Định vị nh&amp;atilde;n h&amp;agrave;ng/sản phẩm/dịch vụ trong từng ph&amp;acirc;n kh&amp;uacute;c tương ứng với ph&amp;acirc;n t&amp;iacute;ch định vị c&amp;aacute;c đối thủ.&lt;/p&gt;\r\n&lt;h3&gt;\r\n	E. Chiến lược v&amp;agrave; đề xuất gi&amp;aacute; trị.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	X&amp;aacute;c định c&amp;aacute;c định hướng chiến lược then chốt, x&amp;acirc;y dựng đề xuất gi&amp;aacute; trị (CVP) cho từng ph&amp;acirc;n kh&amp;uacute;c, v&amp;agrave; cụ thể h&amp;oacute;a v&amp;agrave;o marketing mix (4Ps) của từng ph&amp;acirc;n kh&amp;uacute;c.&lt;/p&gt;\r\n&lt;h3&gt;\r\n	F. Kế hoạch thực hiện.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Cụ thể h&amp;oacute;a c&amp;aacute;c nội dung của marketing mix th&amp;agrave;nh h&amp;agrave;nh động cụ thể c&amp;oacute; thể thực thi được, gắn liền với việc ph&amp;acirc;n bổ nguồn lực (nh&amp;acirc;n lực, thời gian, v&amp;agrave; ng&amp;acirc;n s&amp;aacute;ch thực hiện).&lt;/p&gt;\r\n&lt;h3&gt;\r\n	G. Dự b&amp;aacute;o t&amp;agrave;i ch&amp;iacute;nh.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c chỉ ti&amp;ecirc;u t&amp;agrave;i ch&amp;iacute;nh v&amp;agrave; kế hoạch vốn gắn liền với kế hoạch marketing.&lt;/p&gt;\r\n&lt;h3&gt;\r\n	H. Phụ lục.&lt;/h3&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c t&amp;agrave;i liệu, bảng ph&amp;acirc;n t&amp;iacute;ch chi tiết, kế hoạch tung sản phẩm, chiến lược th&amp;agrave;nh phần của marketing mix... đ&amp;iacute;nh k&amp;egrave;m theo bản kế hoạch marketing.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/r1-mktplanfrontpagewjpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:58:32', 'admin', '2012-11-03 01:58:32');
INSERT INTO `media` VALUES (26, 'default13518675871', '', 'media_news', '[85]', 'admin', '5 bí quyết khiến khách hàng mở thư điện tử tiếp thị', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 12px; line-height: 12px; text-align: justify; &quot;&gt;Để c&amp;aacute;c bức thư điện tử tiếp thị của doanh nghiệp được những người nhận sẵn s&amp;agrave;ng mở v&amp;agrave; đọc ngay, ch&amp;uacute;ng phải g&amp;acirc;y được sự quan t&amp;acirc;m, ch&amp;uacute; &amp;yacute; của họ. Theo c&amp;aacute;c chuy&amp;ecirc;n gia tiếp thị, doanh nghiệp c&amp;oacute; thể thực hiện điều n&amp;agrave;y bằng một trong năm b&amp;iacute; quyết sau đ&amp;acirc;y.&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;text-align: center; &quot;&gt;\r\n	&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 12px; line-height: 12px; text-align: justify; &quot;&gt;Để c&amp;aacute;c bức thư điện tử tiếp thị của doanh nghiệp được những người nhận sẵn s&amp;agrave;ng mở v&amp;agrave; đọc ngay, ch&amp;uacute;ng phải g&amp;acirc;y được sự quan t&amp;acirc;m, ch&amp;uacute; &amp;yacute; của họ. Theo c&amp;aacute;c chuy&amp;ecirc;n gia tiếp thị, doanh nghiệp c&amp;oacute; thể thực hiện điều n&amp;agrave;y bằng một trong năm b&amp;iacute; quyết sau đ&amp;acirc;y.&lt;/span&gt;&lt;/p&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;strong style=&quot;padding: 0px; margin: 0px; font-family: Arial, sans-serif; line-height: 12px; border: 0px; &quot;&gt;1. Gửi thư th&amp;ocirc;ng qua kh&amp;aacute;ch h&amp;agrave;ng hiện tại hoặc người quen.&lt;/strong&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-family: Arial, sans-serif; line-height: 12px; &quot;&gt;&amp;nbsp;Sau đ&amp;oacute;, nhờ người n&amp;agrave;y chuyển tiếp email của m&amp;igrave;nh cho một v&amp;agrave;i kh&amp;aacute;ch h&amp;agrave;ng tiềm năng v&amp;agrave; sao gửi (c.c) cho doanh nghiệp. Người n&amp;agrave;o nhận được bức thư do một người quen gửi thường y&amp;ecirc;n t&amp;acirc;m đ&amp;oacute;n đọc hơn so với trường hợp nhận được thư từ người lạ. Đ&amp;acirc;y l&amp;agrave; c&amp;aacute;ch tốt nhất để đảm bảo email tiếp thị của doanh nghiệp được kh&amp;aacute;ch h&amp;agrave;ng tiềm năng mở ra.&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;padding: 0px; margin: 15px 0px; font-family: Arial, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; border: 0px; line-height: 12px; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; border: 0px; &quot;&gt;2. N&amp;ecirc;u t&amp;ecirc;n của một người quen trong c&amp;acirc;u ti&amp;ecirc;u đề.&amp;nbsp;&lt;/strong&gt;Nếu kh&amp;ocirc;ng thực hiện được c&amp;aacute;ch n&amp;oacute;i tr&amp;ecirc;n, doanh nghiệp c&amp;oacute; thể thử c&amp;aacute;ch kế tiếp l&amp;agrave; n&amp;ecirc;u t&amp;ecirc;n một kh&amp;aacute;ch h&amp;agrave;ng hiện tại hay một người quen trong c&amp;acirc;u ti&amp;ecirc;u đề của email gửi đến kh&amp;aacute;ch h&amp;agrave;ng tiềm năng biết r&amp;otilde; người đ&amp;oacute;. V&amp;iacute; dụ c&amp;oacute; thể ghi &amp;ldquo;Chị A đ&amp;atilde; giới thiệu về anh v&amp;agrave; ch&amp;uacute;ng t&amp;ocirc;i muốn gửi tới anh v&amp;agrave;i th&amp;ocirc;ng tin hữu &amp;iacute;ch để anh tham khảo&amp;rdquo;. Tất nhi&amp;ecirc;n, cần xin ph&amp;eacute;p người được n&amp;ecirc;u t&amp;ecirc;n trước khi sử dụng t&amp;ecirc;n của họ. Bằng kh&amp;ocirc;ng, người nhận sẽ c&amp;oacute; thể hỏi lại người được n&amp;ecirc;u t&amp;ecirc;n v&amp;agrave; nếu người ấy phủ nhận th&amp;igrave; doanh nghiệp sẽ bị mất uy t&amp;iacute;n.&lt;/p&gt;\r\n&lt;p style=&quot;padding: 0px; margin: 15px 0px; font-family: Arial, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; border: 0px; line-height: 12px; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; border: 0px; &quot;&gt;3. N&amp;ecirc;u ra trải nghiệm t&amp;iacute;ch cực của một kh&amp;aacute;ch h&amp;agrave;ng hiện tại.&lt;/strong&gt;&amp;nbsp;C&amp;oacute; thể ghi c&amp;acirc;u ti&amp;ecirc;u đề như &amp;ldquo;Bạn c&amp;oacute; muốn biết ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; gi&amp;uacute;p C&amp;ocirc;ng ty B tiết kiệm được 20% chi ph&amp;iacute; văn ph&amp;ograve;ng như thế n&amp;agrave;o kh&amp;ocirc;ng?&amp;rdquo;. Tương tự trường hợp tr&amp;ecirc;n, doanh nghiệp cũng phải xin ph&amp;eacute;p C&amp;ocirc;ng ty B về việc sử dụng t&amp;ecirc;n của họ trong email gửi cho c&amp;aacute;c kh&amp;aacute;ch h&amp;agrave;ng tiềm năng.&lt;/p&gt;\r\n&lt;p style=&quot;padding: 0px; margin: 15px 0px; font-family: Arial, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; border: 0px; line-height: 12px; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; border: 0px; &quot;&gt;4. N&amp;ecirc;u t&amp;ecirc;n đối thủ cạnh tranh của kh&amp;aacute;ch h&amp;agrave;ng tiềm năng.&lt;/strong&gt;&amp;nbsp;Trường hợp n&amp;agrave;y thường được &amp;aacute;p dụng khi doanh nghiệp muốn mở rộng thị phần trong một ph&amp;acirc;n kh&amp;uacute;c c&amp;oacute; nhiều đối thủ cạnh tranh. C&amp;acirc;u ti&amp;ecirc;u đề trong trường hợp vừa n&amp;ecirc;u tr&amp;ecirc;n sẽ được điều chỉnh th&amp;agrave;nh &amp;ldquo;Tin đ&amp;aacute;ng ch&amp;uacute; &amp;yacute;: Nhiều c&amp;ocirc;ng ty đ&amp;atilde; th&amp;agrave;nh c&amp;ocirc;ng trong việc vận dụng tư vấn để tiết kiệm được 20% chi ph&amp;iacute; văn ph&amp;ograve;ng&amp;rdquo;. Chắc chắn l&amp;agrave; doanh nghiệp n&amp;agrave;o cũng quan t&amp;acirc;m đến những điều m&amp;agrave; c&amp;aacute;c đối thủ cạnh tranh đang l&amp;agrave;m v&amp;agrave; muốn vận dụng những s&amp;aacute;ng kiến mới thực sự hữu &amp;iacute;ch của ch&amp;iacute;nh đối thủ. Tuy nhi&amp;ecirc;n, phải đảm bảo chắc chắn rằng doanh nghiệp c&amp;oacute; đủ bằng chứng để chứng minh điều m&amp;igrave;nh đ&amp;atilde; n&amp;ecirc;u ra trong c&amp;acirc;u ti&amp;ecirc;u đề l&amp;agrave; ch&amp;iacute;nh x&amp;aacute;c.&lt;/p&gt;\r\n&lt;p style=&quot;padding: 0px; margin: 15px 0px; font-family: Arial, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; border: 0px; line-height: 12px; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; border: 0px; &quot;&gt;5. N&amp;ecirc;u ra một lợi &amp;iacute;ch trong tương lai.&lt;/strong&gt;&amp;nbsp;Ngo&amp;agrave;i bốn c&amp;aacute;ch tr&amp;ecirc;n, doanh nghiệp c&amp;oacute; thể nhấn mạnh một lợi &amp;iacute;ch quan trọng đối với kh&amp;aacute;ch h&amp;agrave;ng, chẳng hạn c&amp;oacute; thể viết một c&amp;acirc;u ti&amp;ecirc;u đề tạo sức hấp dẫn l&amp;agrave; &amp;ldquo;Ba c&amp;aacute;ch hay để tiết kiệm 20% chi ph&amp;iacute; văn ph&amp;ograve;ng&amp;rdquo;. Lưu &amp;yacute; rằng lợi &amp;iacute;ch c&amp;agrave;ng cụ thể (định lượng được r&amp;otilde; r&amp;agrave;ng) th&amp;igrave; tỷ lệ mở thư sẽ c&amp;agrave;ng cao.&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/r1-reverse-email-1jpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:56:55', 'admin', '2012-11-03 01:56:55');
INSERT INTO `media` VALUES (27, 'default13518678491', '', 'media_news', '[87]', 'admin', 'Bí quyết viết quảng cáo', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Bạn kh&amp;ocirc;ng thể trở th&amp;agrave;nh một copywriter nếu kh&amp;ocirc;ng nghi&amp;ecirc;n cứu về đặc t&amp;iacute;nh con người. Trong vai tr&amp;ograve; l&amp;agrave; một kh&amp;aacute;ch h&amp;agrave;ng, bạn sẽ kh&amp;ocirc;ng c&amp;oacute; động cơ đưa ra một quyết định chọn lựa nếu một quảng c&amp;aacute;o sản phẩm kh&amp;ocirc;ng khiến bạn t&amp;ograve; m&amp;ograve;.&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;text-align: center; &quot;&gt;\r\n	Bạn kh&amp;ocirc;ng thể trở th&amp;agrave;nh một copywriter nếu kh&amp;ocirc;ng nghi&amp;ecirc;n cứu về đặc t&amp;iacute;nh con người. Trong vai tr&amp;ograve; l&amp;agrave; một kh&amp;aacute;ch h&amp;agrave;ng, bạn sẽ kh&amp;ocirc;ng c&amp;oacute; động cơ đưa ra một quyết định chọn lựa nếu một quảng c&amp;aacute;o sản phẩm kh&amp;ocirc;ng khiến bạn t&amp;ograve; m&amp;ograve;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Một c&amp;acirc;u hỏi cũ nhưng rất quan trọng với kh&amp;aacute;ch h&amp;agrave;ng: &amp;ldquo;C&amp;oacute; c&amp;aacute;i g&amp;igrave; trong đ&amp;oacute; d&amp;agrave;nh cho t&amp;ocirc;i kh&amp;ocirc;ng?&amp;rdquo;. Điều n&amp;agrave;y c&amp;oacute; nghĩa l&amp;agrave; quảng c&amp;aacute;o của bạn phải c&amp;oacute; điều g&amp;igrave; đ&amp;oacute; m&amp;agrave; kh&amp;aacute;ch h&amp;agrave;ng cảm thấy thuyết phục.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Kinh nghiệm từ John Caples - một copywriter huyền thoại&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;p&gt;\r\n		Khi b&amp;aacute;n h&amp;agrave;ng, sẽ rất c&amp;oacute; &amp;iacute;ch nếu bạn t&amp;igrave;m ra được động cơ mua sắm của kh&amp;aacute;ch h&amp;agrave;ng. Nhưng rất nhiều copywriter cố gắng khiến người ta cảm thấy bị x&amp;uacute;i giục bằng c&amp;aacute;ch giải th&amp;iacute;ch vấn đề hoặc tạo n&amp;ecirc;n một mối lo ngại về một t&amp;igrave;nh huống xấu. Nhưng bạn kh&amp;ocirc;ng thể l&amp;agrave;m cho người ta cảm thấy động cơ mua h&amp;agrave;ng. Tất cả những g&amp;igrave; bạn c&amp;oacute; thể l&amp;agrave;m l&amp;agrave; x&amp;aacute;c định họ đ&amp;atilde; được x&amp;uacute;i giục những g&amp;igrave; trước đ&amp;oacute;, v&amp;agrave; giải quyết vấn đề.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Khi viết nhan đề, v&amp;igrave; sao kh&amp;ocirc;ng giả vờ như c&amp;oacute; sẵn một kh&amp;aacute;n giả ở đ&amp;oacute; v&amp;agrave; tất cả những g&amp;igrave; bạn phải l&amp;agrave;m l&amp;agrave; sử dụng động cơ của ch&amp;iacute;nh họ để k&amp;ecirc;u gọi họ, n&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c l&amp;agrave; đ&amp;aacute;nh v&amp;agrave;o sự tư lợi của họ?&lt;/p&gt;\r\n	&lt;p&gt;\r\n		John Caples, một trong những copywriter giỏi nhất mọi thời đại v&amp;agrave; t&amp;aacute;c giả của&amp;nbsp;&lt;em&gt;Tested Advertising Methods&lt;/em&gt;&amp;nbsp;(tạm dịch:&lt;em&gt;&amp;nbsp;Phương thức quảng c&amp;aacute;o hiệu quả&lt;/em&gt;), đ&amp;atilde; từng viết một mẩu quảng c&amp;aacute;o cho C&amp;ocirc;ng ty Bảo hiểm nh&amp;acirc;n thọ Pheonix Mutual với tựa đề: &amp;quot;&lt;em&gt;Cho những người muốn nghỉ việc một ng&amp;agrave;y n&amp;agrave;o đ&amp;oacute;&amp;quot;.&lt;/em&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Mẫu quảng c&amp;aacute;o với d&amp;ograve;ng chữ n&amp;agrave;y chạy ph&amp;iacute;a dưới bức ảnh chụp một người đ&amp;agrave;n &amp;ocirc;ng nghỉ hưu đang ngồi c&amp;acirc;u c&amp;aacute; tr&amp;ecirc;n chiếc thuyền của &amp;ocirc;ng ta v&amp;agrave; nh&amp;igrave;n trực diện về ph&amp;iacute;a bạn với một nụ cười rạng rỡ tr&amp;ecirc;n gương mặt. Kết hợp c&amp;ugrave;ng với bức ảnh, c&amp;acirc;u đ&amp;oacute; c&amp;oacute; nghĩa rằng &amp;ldquo;Nếu bạn kh&amp;ocirc;ng muốn lo lắng g&amp;igrave; về việc nghỉ hưu &amp;ndash; c&amp;oacute; thể theo đuổi những sở th&amp;iacute;ch của m&amp;igrave;nh m&amp;agrave; kh&amp;ocirc;ng phải lo phiền g&amp;igrave; về tiền bạc - th&amp;igrave; h&amp;atilde;y đọc tiếp&amp;rdquo;.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		V&amp;agrave; đọc tiếp l&amp;agrave; tất cả những g&amp;igrave; m&amp;agrave; một nhan đề phải l&amp;agrave;m được. Sau đ&amp;oacute; th&amp;igrave; t&amp;ugrave;y thuộc v&amp;agrave;o phần th&amp;acirc;n b&amp;agrave;i dẫn dắt người đọc v&amp;agrave; truyền đạt tất cả nội dung cho đến khi tới đ&amp;iacute;ch.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Độc giả của bạn hứng th&amp;uacute; với rất nhiều thứ kh&amp;aacute;c nhau như: t&amp;igrave;nh trạng x&amp;atilde; hội, c&amp;oacute; nhiều tiền, nhiều thời gian rảnh rỗi hơn, sức khỏe tốt, sự an to&amp;agrave;n cho gia đ&amp;igrave;nh, thuế thấp, l&amp;ograve;ng tự t&amp;ocirc;n, được thay xe mới mỗi hai năm, nổi tiếng, trả hết nợ nần..., tất cả đều li&amp;ecirc;n quan đến hạnh ph&amp;uacute;c của họ. T&amp;igrave;m c&amp;aacute;ch đ&amp;aacute;nh tr&amp;uacute;ng v&amp;agrave;o động cơ của độc giả trong nhan đề th&amp;igrave; bạn đ&amp;atilde; đạt được mục ti&amp;ecirc;u - khiến độc giả kh&amp;ocirc;ng thể thờ ơ với th&amp;ocirc;ng điệp của bạn.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Lời khuy&amp;ecirc;n cho nh&amp;agrave; quản l&amp;yacute;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Giả sử bạn đang cố gắng ngăn cản kh&amp;aacute;ch h&amp;agrave;ng của m&amp;igrave;nh đừng bước l&amp;ecirc;n một chuyến xe lửa th&amp;igrave; bạn sẽ th&amp;eacute;t l&amp;ecirc;n c&amp;acirc;u g&amp;igrave;? Đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; nội dung của nhan đề.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Nghĩ đến mọi c&amp;aacute;ch m&amp;agrave; độc giả của bạn được lợi từ những g&amp;igrave; m&amp;agrave; bạn b&amp;aacute;n. Sau đ&amp;oacute; sắp xếp ch&amp;uacute;ng theo một thứ tự về sức t&amp;aacute;c động v&amp;agrave; chọn c&amp;aacute;i tốt nhất cho nhan đề của quảng c&amp;aacute;o.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		ANDY MASLEN / Yến Nhi (nhuongquyenvietnam.com) dịch.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/r1-copywriterjpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:57:55', 'admin', '2012-11-03 01:57:55');
INSERT INTO `media` VALUES (29, 'default13518687941', '', 'media_news', '[77]', 'admin', 'Người sưu tầm 100 bản đồ Trung Quốc không có Hoàng Sa', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Tạm g&amp;aacute;c c&amp;ocirc;ng việc bận rộn của một kỹ sư m&amp;aacute;y bay, &amp;ocirc;ng Thắng l&amp;ecirc;n mạng rồi đến c&amp;aacute;c cửa h&amp;agrave;ng đồ cổ t&amp;igrave;m mua c&amp;aacute;c bản đồ của Trung Quốc v&amp;agrave; thế giới chứng minh quần đảo Trường Sa, Ho&amp;agrave;ng Sa l&amp;agrave; phần l&amp;atilde;nh thổ của Việt Nam.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Trần Thắng, 42 tuổi đang sống tại tiểu bang Connecticut (Mỹ), Chủ tịch Hội Văn h&amp;oacute;a - Gi&amp;aacute;o dục Việt Nam tại Mỹ (IVCE), vừa quyết định tặng to&amp;agrave;n bộ số bản đồ m&amp;igrave;nh cất c&amp;ocirc;ng sưu tầm cho Viện Nghi&amp;ecirc;n cứu ph&amp;aacute;t triển Kinh tế - x&amp;atilde; hội Đ&amp;agrave; Nẵng, nơi c&amp;oacute; chương tr&amp;igrave;nh nghi&amp;ecirc;n cứu Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/img_7471.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;Ocirc;ng Trần Thắng vừa quyết định tặng 100 tấm bản đồ qu&amp;yacute; cho Việt Nam. Ảnh:&amp;nbsp;&lt;em&gt;NVCC.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Trao đổi với&amp;nbsp;&lt;em&gt;VnExpress.net&lt;/em&gt;, &amp;ocirc;ng Thắng cho biết, đ&amp;atilde; sưu tầm được 100 bản đồ độc bản. Trong đ&amp;oacute; c&amp;oacute; 70 bản đồ l&amp;atilde;nh thổ Trung Quốc, 15 bản đồ vẽ Ho&amp;agrave;ng Sa nằm s&amp;aacute;t bờ biển Việt Nam, 15 bản đồ khu vực Đ&amp;ocirc;ng Dương hay Đ&amp;ocirc;ng Nam &amp;Aacute;, v&amp;agrave; 2 s&amp;aacute;ch to&amp;agrave;n đồ chứng minh Trung Quốc kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo &amp;ocirc;ng Thắng, c&amp;aacute;c bản đồ cổ v&amp;agrave; s&amp;aacute;ch to&amp;agrave;n đồ của Ch&amp;iacute;nh phủ Trung Quốc n&amp;oacute;i l&amp;ecirc;n t&amp;iacute;nh lịch sử v&amp;agrave; t&amp;iacute;nh ph&amp;aacute;p l&amp;yacute; rất cao. &amp;quot;70 bản đồ vẽ l&amp;atilde;nh thổ Trung Quốc đ&amp;atilde; chỉ r&amp;otilde; miền nam của Trung Quốc l&amp;agrave; đảo Hải Nam. 15 bản đồ vẽ Ho&amp;agrave;ng Sa nằm s&amp;aacute;t bờ biển Việt Nam. Tại sao người T&amp;acirc;y phương kh&amp;ocirc;ng vẽ Paracels (Ho&amp;agrave;ng Sa) nằm s&amp;aacute;t H&amp;agrave;n Quốc, Trung Quốc, Philippines, Singapore, Brunei, m&amp;agrave; lại vẽ nằm s&amp;aacute;t Việt Nam? L&amp;agrave; v&amp;igrave; từ Paracels đến bờ biển của An Nam gần so với c&amp;aacute;c nước kh&amp;aacute;c v&amp;agrave; tr&amp;ecirc;n đảo Paracels c&amp;oacute; người An Nam sinh sống n&amp;ecirc;n người T&amp;acirc;y phương cho rằng đảo n&amp;agrave;y thuộc về An Nam&amp;quot;, &amp;ocirc;ng Thắng l&amp;yacute; giải.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nh&amp;agrave; sưu tầm cho hay, 5 bản đồ vẽ c&amp;aacute;c tuyến đường h&amp;agrave;ng hải trọng điểm đều đi qua Ho&amp;agrave;ng Sa nơi Ph&amp;aacute;p quản l&amp;yacute; v&amp;ugrave;ng biển v&amp;agrave; đảo của Indochina. Ngo&amp;agrave;i ra, Ho&amp;agrave;ng Sa c&amp;oacute; thể l&amp;agrave; nơi dừng ch&amp;acirc;n cho c&amp;aacute;c t&amp;agrave;u b&amp;egrave; tr&amp;ecirc;n tuyến h&amp;agrave;ng hải Nam - Bắc ch&amp;acirc;u &amp;Aacute;. Sau hiệp định Geneva 1954, Ph&amp;aacute;p trao trả &amp;quot;to&amp;agrave;n vẹn l&amp;atilde;nh thổ&amp;quot; cho Việt Nam, tất nhi&amp;ecirc;n phải c&amp;oacute; cả Ho&amp;agrave;ng Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/image004.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Bản đồ trong s&amp;aacute;ch Trung hoa D&amp;acirc;n quốc Bưu ch&amp;iacute;nh dư đồ xuất bản năm 1933 kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa. Ảnh:&amp;nbsp;&lt;em&gt;Trần Thắng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Kể về h&amp;agrave;nh tr&amp;igrave;nh sở hữu những tấm bản đồ qu&amp;yacute;, &amp;ocirc;ng Thắng chia sẻ, cuối th&amp;aacute;ng 7 vừa qua, sau khi biết tin tiến sĩ Mai Hồng (H&amp;agrave; Nội) tặng bản đồ nh&amp;agrave; Thanh (miền Nam Trung Quốc chỉ dừng lại ở đảo Hải Nam) cho bảo t&amp;agrave;ng Lịch sử Việt Nam, &amp;ocirc;ng đ&amp;atilde; l&amp;ecirc;n mạng v&amp;agrave; thấy c&amp;oacute; người rao b&amp;aacute;n v&amp;agrave;i tấm bản đồ cổ của T&amp;acirc;y phương về l&amp;atilde;nh thổ của Trung Quốc. &amp;Ocirc;ng liền li&amp;ecirc;n hệ v&amp;agrave; mua lại những bằng chứng n&amp;agrave;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	L&amp;agrave; người &amp;quot;ngoại đạo&amp;quot; n&amp;ecirc;n &amp;ocirc;ng Thắng cẩn thận gửi c&amp;aacute;c bản đồ n&amp;agrave;y cho hai người bạn th&amp;acirc;n quen l&amp;agrave; TS Trần Đức Anh Sơn (Ph&amp;oacute; viện trưởng Viện Nghi&amp;ecirc;n cứu ph&amp;aacute;t triển Kinh tế - x&amp;atilde; hội Đ&amp;agrave; Nẵng) v&amp;agrave; TS Nguyễn Nh&amp;atilde; xem. &amp;quot;Hai vị n&amp;agrave;y c&amp;oacute; cảm nhận tốt thế l&amp;agrave; t&amp;ocirc;i bắt đầu t&amp;igrave;m kiếm bản đồ. Khi ấy c&amp;oacute; nguồn cảm hứng thế n&amp;agrave;o m&amp;agrave; t&amp;ocirc;i to&amp;aacute;t ra suy nghĩ rất nhanh l&amp;agrave; phải sưu tầm nhiều bản đồ của T&amp;acirc;y phương để chứng minh miền Nam của Trung Quốc dừng lại ở đảo Hải Nam&amp;quot;, &amp;ocirc;ng Thắng kể.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tạm g&amp;aacute;c lại c&amp;ocirc;ng việc bận rộn của một kỹ sư m&amp;aacute;y bay, &amp;ocirc;ng t&amp;igrave;m đến những cửa hiệu đồ cổ, điểm rao b&amp;aacute;n bản đồ để t&amp;igrave;m mua. Số lượng bản đồ về l&amp;atilde;nh thổ Trung Quốc được xuất bản tại Anh, Đức, Ph&amp;aacute;p, H&amp;agrave; Lan, Mỹ, &amp;Yacute;... trong thời gian 1626 - 1980 ng&amp;agrave;y một nhiều l&amp;ecirc;n. Tuy nhi&amp;ecirc;n, &amp;ocirc;ng chỉ t&amp;igrave;m được một tấm bản đồ c&amp;oacute; Ho&amp;agrave;ng Sa vẽ nằm s&amp;aacute;t bờ biển Việt Nam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Khi ấy t&amp;ocirc;i hơi lo lắng v&amp;igrave; m&amp;igrave;nh đ&amp;atilde; chứng minh miền nam của Trung Quốc dừng tại đảo Hải Nam, nghĩa l&amp;agrave; Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa kh&amp;ocirc;ng thuộc về Trung Quốc. Vậy l&amp;agrave;m thế n&amp;agrave;o m&amp;igrave;nh chứng minh Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa thuộc về Việt Nam? Nếu chỉ c&amp;oacute; một bản đồ th&amp;igrave; kh&amp;ocirc;ng đủ thuyết phục?&amp;quot;, &amp;ocirc;ng tự đặt c&amp;acirc;u hỏi v&amp;agrave; nỗ lực t&amp;igrave;m kiếm c&amp;acirc;u trả lời. Giữa th&amp;aacute;ng 9, &amp;ocirc;ng t&amp;igrave;nh cờ ph&amp;aacute;t hiện tấm bản đồ cổ c&amp;oacute; Ho&amp;agrave;ng Sa v&amp;agrave; liền sau đ&amp;oacute; &amp;ocirc;ng sưu tầm th&amp;ecirc;m được 15 bản đồ c&amp;ugrave;ng loại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Thắng cũng ph&amp;aacute;t hiện điều rất lạ l&amp;agrave; cả 3 cuốn To&amp;agrave;n đồ Trung Hoa d&amp;acirc;n quốc Bưu dư đồ của Trung Quốc in tại Nam Kinh năm 1919 v&amp;agrave; 1933 (gồm 78 bản đồ), v&amp;agrave; Atlas of The Chinese Empire do ph&amp;aacute;i bộ China Inland Mission xuất bản tại Anh năm 1908 (gồm 23 bản đồ) đều kh&amp;ocirc;ng liệt k&amp;ecirc; Ho&amp;agrave;ng Sa, Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tuy nhi&amp;ecirc;n, do gi&amp;aacute; c&amp;aacute;c cuốn s&amp;aacute;ch cổ n&amp;agrave;y rất đắt đỏ, bản th&amp;acirc;n lại kh&amp;ocirc;ng đủ tiền n&amp;ecirc;n &amp;ocirc;ng Thắng k&amp;ecirc;u gọi bạn b&amp;egrave; th&amp;acirc;n đ&amp;oacute;ng g&amp;oacute;p. Việc n&amp;agrave;y được thực hiện b&amp;iacute; mật, ph&amp;ograve;ng khi th&amp;ocirc;ng tin lan rộng sẽ c&amp;oacute; người kh&amp;aacute;c mua mất. &amp;quot;Trong 2 tuần chờ đợi tiền, t&amp;ocirc;i rất hồi hộp, ng&amp;agrave;y n&amp;agrave;o cũng đi l&amp;agrave;m về sớm xem s&amp;aacute;ch c&amp;ograve;n tr&amp;ecirc;n mạng kh&amp;ocirc;ng. Khi cầm được s&amp;aacute;ch tr&amp;ecirc;n tay t&amp;ocirc;i mới cảm thấy thanh thản&amp;quot;, vị kỹ sư độc th&amp;acirc;n trải l&amp;ograve;ng.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl2&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/scherersatlasnovusgermany..jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Bản đồ Scherer Atlas Novus (Đức) năm 1970 cũng cho thấy l&amp;atilde;nh thổ của Trung Quốc kh&amp;ocirc;ng c&amp;oacute; Ho&amp;agrave;ng Sa, Trường Sa. Ảnh:&amp;nbsp;&lt;em&gt;Trần Thắng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Mua được bản đồ qu&amp;yacute;, &amp;ocirc;ng lại bỏ thời gian kiểm tra lại th&amp;ocirc;ng tin về nh&amp;agrave; xuất bản, năm xuất bản, m&amp;atilde; số, l&amp;agrave;m khung, bọc giấy k&amp;iacute;nh để bảo quản. Từ đ&amp;acirc;y, &amp;ocirc;ng bắt đầu giới thiệu cho người Mỹ v&amp;agrave; c&amp;aacute;c bạn trẻ người Việt biết về Ho&amp;agrave;ng Sa, Trường Sa thuộc l&amp;atilde;nh thổ Việt Nam. To&amp;agrave;n bộ h&amp;igrave;nh ảnh về bộ sưu tập n&amp;agrave;y được lưu lại tại trang web của Viện Văn h&amp;oacute;a v&amp;agrave; Gi&amp;aacute;o dục Việt Nam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;T&amp;ocirc;i nghĩ rằng mọi người Việt trong v&amp;agrave; ngo&amp;agrave;i nước đều l&amp;agrave; những người y&amp;ecirc;u nước, kh&amp;ocirc;ng ri&amp;ecirc;ng g&amp;igrave; t&amp;ocirc;i. T&amp;ocirc;i l&amp;agrave;m c&amp;ocirc;ng việc sưu tập t&amp;agrave;i liệu bản đồ một c&amp;aacute;ch tự nhi&amp;ecirc;n, kh&amp;ocirc;ng bị &amp;aacute;p lực n&amp;agrave;o về t&amp;iacute;nh thời sự ch&amp;iacute;nh trị. T&amp;ocirc;i kh&amp;ocirc;ng xem việc n&amp;agrave;y l&amp;agrave; của Ch&amp;iacute;nh phủ hay việc kia l&amp;agrave; của người d&amp;acirc;n. T&amp;ocirc;i thấy việc n&amp;agrave;o c&amp;oacute; lợi cho x&amp;atilde; hội cho cộng đồng l&amp;agrave; l&amp;agrave;m&amp;quot;, &amp;ocirc;ng Thắng chia sẻ v&amp;agrave; cho biết, sau khi c&amp;ocirc;ng bố t&amp;agrave;i liệu sẽ c&amp;ugrave;ng với c&amp;aacute;c luật sư ở Mỹ gặp nhau để c&amp;ugrave;ng b&amp;agrave;n c&amp;aacute;ch gi&amp;uacute;p Việt Nam về t&amp;iacute;nh ph&amp;aacute;p l&amp;yacute; tại hai quần đảo Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sau khi xem qua bản sao của gần 100 bản đồ &amp;ocirc;ng Trần Thắng gửi từ Mỹ về, GS Sử học Phan Huy L&amp;ecirc; nhận x&amp;eacute;t, bộ sưu tập n&amp;agrave;y d&amp;ugrave; c&amp;oacute; một số chưa x&amp;aacute;c định đầy đủ xuất xứ nhưng đều rất qu&amp;yacute;, phong ph&amp;uacute; hơn những bộ sưu tập về bản đồ li&amp;ecirc;n quan đến Ho&amp;agrave;ng Sa, Trường Sa trước đ&amp;acirc;y. Cảm k&amp;iacute;ch trước tấm l&amp;ograve;ng của một nh&amp;agrave; khoa học nước nh&amp;agrave; lu&amp;ocirc;n hướng về qu&amp;ecirc; hương, gi&amp;uacute;p Việt Nam c&amp;oacute; th&amp;ecirc;m chứng cứ khẳng định chủ quyền Ho&amp;agrave;ng Sa, Trường Sa, GS L&amp;ecirc; đ&amp;atilde; viết thư cảm ơn &amp;ocirc;ng Thắng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;&amp;Yacute; nghĩa của những tấm bản đồ n&amp;agrave;y gắn liền với &amp;yacute; nghĩa lịch sử v&amp;agrave; ph&amp;aacute;p l&amp;yacute;. Đặc biệt, những tấm bản đồ của Trung Quốc đến năm 1933 cho thấy thời điểm đ&amp;oacute; ch&amp;iacute;nh quyền Bắc Kinh kh&amp;ocirc;ng c&amp;oacute; nhận thức về về l&amp;atilde;nh thổ ph&amp;iacute;a Nam, tất cả bản đồ đều ghi r&amp;otilde; l&amp;atilde;nh thổ của Trung Quốc k&amp;eacute;o d&amp;agrave;i đến đảo Hải Nam. Trong khi đ&amp;oacute;, những tấm bản đồ của thế giới vẽ ch&amp;acirc;u &amp;Aacute;, Đ&amp;ocirc;ng Nam &amp;Aacute; v&amp;agrave; Việt Nam đều chỉ r&amp;otilde; Ho&amp;agrave;ng Sa, Trường Sa gắn liền với Việt Nam&amp;quot;, GS Phan Huy L&amp;ecirc; n&amp;oacute;i.&lt;/p&gt;', '', '', '', '', '', 'Nguyễn Đông', 'VnExpress', 0, 0, 'upload/image004.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:55:23', 'admin', '2012-11-03 01:55:23');
INSERT INTO `media` VALUES (30, 'default13518689741', '', 'media_news', '[77]', 'admin', 'Quảng bá sử liệu chủ quyền là cách đấu tranh mạnh nhất', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Theo tiến sĩ Nguyễn Nh&amp;atilde;, kh&amp;ocirc;ng quốc gia n&amp;agrave;o c&amp;oacute; những bằng chứng về chủ quyền Ho&amp;agrave;ng Sa, Trường Sa mạnh mẽ như Việt Nam. Việc quảng b&amp;aacute; c&amp;aacute;c sử liệu n&amp;agrave;y l&amp;agrave; c&amp;aacute;ch đấu tranh mạnh nhất của nước ta.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Ng&amp;agrave;y 30/10, trong hội thảo &amp;quot;Sưu tầm t&amp;agrave;i liệu lưu trữ qu&amp;yacute; hiếm v&amp;agrave; ph&amp;aacute;t huy gi&amp;aacute; trị nguồn sử liệu về bi&amp;ecirc;n giới, hải đảo của Việt Nam&amp;quot;, tiến sĩ Vũ Thị Minh Hương, Cục trưởng Văn thư lưu trữ Nh&amp;agrave; nước cho biết, vấn đề tranh chấp chủ quyền tại biển Đ&amp;ocirc;ng l&amp;agrave; một điểm n&amp;oacute;ng ch&amp;iacute;nh trị của khu vực hiện nay. Việc đưa ra c&amp;aacute;c t&amp;agrave;i liệu lưu trữ l&amp;agrave; bằng chứng x&amp;aacute;c thực, c&amp;oacute; t&amp;iacute;nh ph&amp;aacute;p l&amp;yacute; khẳng định chủ quyền của nước ta đối với quần đảo Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa. &amp;quot;Nhiệm vụ của c&amp;aacute;c cơ quan lưu trữ l&amp;agrave; phải t&amp;iacute;ch cực sưu tầm, thu thập v&amp;agrave; ph&amp;aacute;t huy gi&amp;aacute; trị nguồn sử liệu n&amp;agrave;y&amp;quot;, b&amp;agrave; Hương n&amp;oacute;i.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/ban-do-hoan-chinh.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Bản đồ Ho&amp;agrave;ng Triều trực tỉnh địa dư to&amp;agrave;n đồ của Trung Quốc kh&amp;ocirc;ng c&amp;oacute; 2 quần đảo Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa do tiến sĩ Mai Ngọc Hồng, nguy&amp;ecirc;n Trưởng ph&amp;ograve;ng Tư liệu thư viện của Viện H&amp;aacute;n N&amp;ocirc;m trao tặng cho Bảo t&amp;agrave;ng Lịch sử quốc gia. Ảnh:&amp;nbsp;&lt;em&gt;Bảo t&amp;agrave;ng lịch sử.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Ph&amp;aacute;t biểu tại hội thảo, Tiến sĩ Nguyễn Nh&amp;atilde; (nh&amp;agrave; sử học c&amp;oacute; c&amp;ocirc;ng tr&amp;igrave;nh khoa học nghi&amp;ecirc;n cứu về lịch sử x&amp;aacute;c lập chủ quyền của Việt Nam đối với Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa) nhận định, kh&amp;ocirc;ng c&amp;oacute; một quốc gia n&amp;agrave;o đang tranh chấp chủ quyền đối với quần đảo Ho&amp;agrave;ng Sa m&amp;agrave; c&amp;oacute; nhiều bằng chứng, t&amp;agrave;i liệu cấp nh&amp;agrave; nước từ trước năm 1909 (bắt đầu c&amp;oacute; tranh chấp chủ quyền) như Việt Nam. &amp;quot;Việc quảng b&amp;aacute;, c&amp;ocirc;ng bố những sử liệu về Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa l&amp;agrave; c&amp;aacute;ch đấu tranh mạnh nhất của ch&amp;uacute;ng ta trong việc khẳng định chủ quyền&amp;quot;, Tiến sĩ Nguyễn Nh&amp;atilde; nhấn mạnh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo &amp;ocirc;ng Nh&amp;atilde;, ch&amp;uacute;ng ta đang c&amp;oacute; những t&amp;agrave;i liệu, chứng cứ lịch sử m&amp;agrave; c&amp;aacute;c nước Anh, Ph&amp;aacute;p, T&amp;acirc;y Ban Nha... vẫn c&amp;ograve;n lưu giữ chứng tỏ Trung Quốc đ&amp;atilde; kh&amp;ocirc;ng thừa nhận chủ quyền tr&amp;ecirc;n 2 quần đảo Ho&amp;agrave;ng Sa v&amp;agrave; Trường Sa. Đ&amp;oacute; l&amp;agrave; sự kiện một chiếc t&amp;agrave;u Nhật Bản bị đắm tr&amp;ecirc;n v&amp;ugrave;ng biển Paracel (Ho&amp;agrave;ng Sa) năm 1898 đ&amp;atilde; y&amp;ecirc;u cầu c&amp;ocirc;ng ty bảo hiểm của Trung Quốc phải bồi thường, song ch&amp;iacute;nh quyền Trung Quốc cho rằng quần đảo n&amp;agrave;y kh&amp;ocirc;ng thuộc chủ quyền của m&amp;igrave;nh n&amp;ecirc;n kh&amp;ocirc;ng chấp nhận bồi thường.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nh&amp;agrave; sử học cũng cho rằng, trong việc đấu tranh về mặt ph&amp;aacute;p l&amp;yacute; quốc tế li&amp;ecirc;n quan đến sự chiếm hữu thật sự của Việt Nam tại Ho&amp;agrave;ng Sa, th&amp;igrave; ch&amp;acirc;u bản của vua Minh Mạng năm 1836 (về sự thực thi chủ quyền của Việt Nam tại quần đảo n&amp;agrave;y) l&amp;agrave; quan trọng nhất. Bởi trong ph&amp;uacute;c tấu của Bộ C&amp;ocirc;ng ng&amp;agrave;y 12 th&amp;aacute;ng 2 năm Minh Mạng thứ 17 (tập ch&amp;acirc;u bản Minh Mạng 55, trang 336) ghi lời ch&amp;acirc;u ph&amp;ecirc; của Vua Minh Mạng &amp;quot;Mỗi thuyền viễn th&amp;aacute;m Ho&amp;agrave;ng Sa phải đem theo 10 tấm b&amp;agrave;i gỗ (cột mốc) d&amp;agrave;i 4,5 thước, rộng 5 tấc, khắc s&amp;acirc;u h&amp;agrave;ng chữ &amp;#39;Năm B&amp;iacute;nh Th&amp;acirc;n (Minh Mạng thứ 17), họ t&amp;ecirc;n cai đội thủy qu&amp;acirc;n phụng mệnh đi đo đạc&amp;#39;, cắm cột mốc ở Ho&amp;agrave;ng Sa để lưu dấu&amp;quot;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngo&amp;agrave;i ra, Tiến sĩ Nh&amp;atilde; cũng dẫn chứng về c&amp;aacute;c ch&amp;acirc;u ph&amp;ecirc; kh&amp;aacute;c của vua thời điểm đ&amp;oacute; như &amp;quot;thuyền đi đ&amp;acirc;u, phải cắm cột mốc đến đ&amp;oacute; để lưu dấu&amp;quot; hay ph&amp;uacute;c tấu c&amp;ograve;n ghi &amp;quot;ch&amp;aacute;nh đội trưởng Phạm Hữu Nhật được ph&amp;aacute;i từ Thuận An v&amp;agrave;o Quảng Ng&amp;atilde;i để đi c&amp;ocirc;ng t&amp;aacute;c Ho&amp;agrave;ng Sa&amp;quot;; nhiều ch&amp;acirc;u bản kh&amp;aacute;c của năm 1845, 1847 thời vua Thiệu Trị...&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Đ&amp;acirc;y l&amp;agrave; những văn bản cấp nh&amp;agrave; nước m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; quốc gia n&amp;agrave;o c&amp;oacute; được trước năm 1909. Ch&amp;uacute;ng ta phải d&amp;ugrave;ng những sử liệu n&amp;agrave;y để đấu tranh, bảo vệ chủ quyền&amp;quot;, nh&amp;agrave; sử học nhấn mạnh&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/nguyen-nha.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Tiến sĩ Nguyễn Nh&amp;atilde; trao đổi cũng Tiến sĩ Vũ Thị Minh Hương, Cục trưởng Văn thư Lưu trữ Nh&amp;agrave; nước (Bộ Nội vụ) s&amp;aacute;ng 30/10 tại TP HCM. Ảnh:&amp;nbsp;&lt;em&gt;Hữu C&amp;ocirc;ng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Để thực sự ph&amp;aacute;t huy gi&amp;aacute; trị của những nguồn sử liệu qu&amp;yacute; m&amp;agrave; cơ quan nh&amp;agrave; nước đang quản l&amp;yacute;, theo &amp;ocirc;ng Nh&amp;atilde;, cần thay đổi tư duy h&amp;agrave;i h&amp;ograve;a giữa tr&amp;aacute;ch nhiệm lưu trữ v&amp;agrave; tr&amp;aacute;ch nhiệm khai th&amp;aacute;c t&amp;agrave;i liệu lưu trữ cho nh&amp;agrave; nghi&amp;ecirc;n cứu. &amp;quot;Hiện nay người phụ tr&amp;aacute;ch lưu trữ văn khố thường chỉ lo tr&amp;aacute;ch nhiệm lưu trữ m&amp;agrave; kh&amp;ocirc;ng quan t&amp;acirc;m đến tr&amp;aacute;ch nhiệm cho c&amp;aacute;c người nghi&amp;ecirc;n cứu khai th&amp;aacute;c t&amp;agrave;i liệu qu&amp;yacute;. Nếu t&amp;agrave;i liệu lưu trữ được tốt m&amp;agrave; kh&amp;ocirc;ng phục vụ cho sự khai th&amp;aacute;c th&amp;igrave; lưu trữ để l&amp;agrave;m g&amp;igrave;&amp;quot;, nh&amp;agrave; sử học đặt vấn đề.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đ&amp;aacute;p lại những &amp;yacute; kiến của Tiến sĩ Nguyễn Nh&amp;atilde;, Cục trưởng Văn thư Lưu trữ Nh&amp;agrave; nước nh&amp;igrave;n nhận việc những người l&amp;agrave;m c&amp;ocirc;ng t&amp;aacute;c lưu trữ chỉ quan t&amp;acirc;m đến t&amp;agrave;i liệu, mục lục v&amp;agrave; danh s&amp;aacute;ch t&amp;agrave;i liệu. Trong khi c&amp;oacute; những điều chỉ c&amp;aacute;c nh&amp;agrave; nghi&amp;ecirc;n cứu chuy&amp;ecirc;n s&amp;acirc;u, gợi mở th&amp;igrave; người quản l&amp;yacute; mới biết được những văn bản, những cột mốc n&amp;agrave;o quan trọng. &amp;quot;Hy vọng hội thảo n&amp;agrave;y l&amp;agrave; bước khởi đầu cho mối quan hệ giữa c&amp;aacute;c nh&amp;agrave; nghi&amp;ecirc;n cứu v&amp;agrave; những người l&amp;agrave;m c&amp;ocirc;ng t&amp;aacute;c lưu trữ để sự hợp t&amp;aacute;c v&amp;agrave; hỗ trợ giữa 2 b&amp;ecirc;n ng&amp;agrave;y c&amp;agrave;ng thắt chặt hơn&amp;quot;, b&amp;agrave; Hương chia sẻ.&lt;/p&gt;', '', '', '', '', '', 'Hữu Công', 'Express', 0, 0, 'upload/ban-do-hoan-chinh.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:54:46', 'admin', '2012-11-03 01:54:46');
INSERT INTO `media` VALUES (54, 'default13518689741', '', 'media_news', '[77]', 'admin', 'Historical sovereignty Promotion is the most powerful way to fight', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;According to Dr. Nguyen Nha, no country has evidence of sovereignty over Hoang Sa and Truong Sa as strong as Vietnam.&amp;nbsp;Promoting the use of this data is the biggest fight of our country.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	On 30/10, in the workshop on &amp;quot;Collection of rare archival documents and promote the value of using data on Vietnam&amp;#39;s border island,&amp;quot; said Dr. Vu Thi Minh Huong, Director of State Archives said, sovereignty disputes in the South China Sea is a political hot spots of the region today.&amp;nbsp;Making the archives as evidence, the legality of claims of our country to the Paracels and the Spratlys.&amp;nbsp;&amp;quot;The mission of the Archives is to actively collect, collect and promote the value of using this data source,&amp;quot; Huong said.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;605&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/de/0a/ban-do-hoan-chinh.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Dynasty online map geographical map of China Province not have 2 Paracels and Spratlys by Dr Mai Ngoc Hong, former head of the library of the Institute of Han Nom Documentation presented to the National Museum of History .&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Museum of History.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Speaking at the conference, Dr. Nguyen Nha (Historians of the scientific study of the history establishment of Vietnam&amp;#39;s sovereignty over the Hoang Sa and Truong Sa) that, no one country is currently online claims to the Paracel Islands that there is much evidence, documents state before the year 1909 (starting with the sovereignty dispute) as Vietnam.&amp;nbsp;&amp;quot;The promotion, announced the use of data on the Hoang Sa and Truong Sa is the biggest fight in asserting our sovereignty,&amp;quot; said Dr. Nguyen Nha stress.&lt;/p&gt;\r\n&lt;p&gt;\r\n	According to him, we have the materials, the historical evidence that the UK, France, Spain ...&amp;nbsp;still preserved show that China has not acknowledged the sovereignty over the two archipelagoes of Hoang Sa and Truong Sa.&amp;nbsp;It is a fact that a Japanese ship was sunk in the sea Paracel (Hoang Sa) in 1898 asked Chinese insurance company pay compensation, but the Chinese government that are not under the sovereignty of the Islands I should not accept compensation.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Historians also believe that, in the international legal struggle concerning the actual possession of Vietnam in the Paracel Islands, the European version of King Minh Mang in 1836 (on the implementation of Vietnam&amp;#39;s sovereignty Men in the islands) is the most important.&amp;nbsp;By solo in the report of the Ministry of Industry February 12 the 17th year of Minh Mang (European Minh Mang 55, p 336) recorded his European approval of Emperor Minh Mang &amp;quot;Each sensing boat Hoang Sa to carry 10 wooden posts ( milestone) 4.5 feet long, 5 feet wide, engraved inscription &amp;#39;Year calmly (Minh Mang 17th), their guards naval fleet to serve par measurement&amp;#39;, plug in the Paracels to save a landmark &amp;quot;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	In addition, Dr. Nha also evidence of other European maker of the king of that time as &amp;quot;the boat to go to plug the landmark to which to save the&amp;quot; or being instrumental record &amp;quot;chief captain Pham Huu Nhat was sent from Thuan An in Quang Ngai to the Hoang Sa &amp;quot;; many European variant of the 1845, 1847 King Thieu Tri ...&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;These are documents state that no country can get ahead in 1909. We have to use this data to fight, defend its sovereignty&amp;quot;, historians emphasize&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;384&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/de/0a/nguyen-nha.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Dr. Nguyen Nha exchange also Dr. Vu Thi Minh Huong, Director of the State Archives (Ministry of Interior) am 30/10 in Ho Chi Minh City.&amp;nbsp;Photo: Hữu C&amp;ocirc;ng&lt;em&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	To promote the value of your data sources that state agencies are managed, he says, need to change the thinking harmonize responsible for storing and responsible exploitation of archives for research research.&amp;nbsp;&amp;quot;Currently the charge storage archives usually only care responsibilities storage without regard to the responsibility for the study and exploitation of precious materials. If archives are good but not for the exploitation the store to do, &amp;quot;historians question.&lt;/p&gt;\r\n&lt;p&gt;\r\n	In response to the comments of Dr. Nguyen Nha, Director of the State Archives of view of those who do work only interested in document storage, table of contents and list of materials.&amp;nbsp;While there are things that only the depth studies, suggest new manager knows the text, are important milestones.&amp;nbsp;&amp;quot;Hopefully, this workshop is the first step for the relationship between researchers and those working in storage for the cooperation and support between the two parties increasingly tighter,&amp;quot; Huong said.&lt;/p&gt;', '', '', '', '', '', 'Hữu Công', 'Express', 0, 0, 'upload/ban-do-hoan-chinh.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:54:46', 'admin', '2012-11-03 01:54:46');
INSERT INTO `media` VALUES (31, 'default13518693481', '', 'media_news', '[77]', 'admin', 'Phân công người thay thế 3 cán bộ bị khởi tố ở Tiên Lãng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Ba c&amp;aacute;n bộ vừa bị khởi tố li&amp;ecirc;n quan tới vụ &amp;aacute;n hủy hoại t&amp;agrave;i sản của gia đ&amp;igrave;nh &amp;ocirc;ng Đo&amp;agrave;n Văn Vươn (Ti&amp;ecirc;n L&amp;atilde;ng, Hải Ph&amp;ograve;ng) đ&amp;atilde; bị tạm đ&amp;igrave;nh chỉ chức vụ.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo UBND huyện Ti&amp;ecirc;n L&amp;atilde;ng (Hải Ph&amp;ograve;ng), để phục vụ c&amp;ocirc;ng t&amp;aacute;c điều tra, truy tố, x&amp;eacute;t xử vụ &amp;aacute;n h&amp;igrave;nh sự, ng&amp;agrave;y 30/10, UBND huyện đ&amp;atilde; ban h&amp;agrave;nh c&amp;aacute;c quyết định tạm đ&amp;igrave;nh chỉ chức vụ đối với c&amp;aacute;c &amp;ocirc;ng Phạm Xu&amp;acirc;n Hoa, Trưởng ph&amp;ograve;ng T&amp;agrave;i nguy&amp;ecirc;n v&amp;agrave; M&amp;ocirc;i trường huyện; Phạm Đăng Hoan, Chủ tịch HĐND x&amp;atilde; Vinh Quang v&amp;agrave; L&amp;ecirc; Thanh Li&amp;ecirc;m, Chủ tịch UBND x&amp;atilde; Vinh Quang.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đ&amp;acirc;y l&amp;agrave; 3 c&amp;aacute;n bộ c&amp;ugrave;ng bị khởi tố về tội Hủy hoại t&amp;agrave;i sản v&amp;agrave;o ng&amp;agrave;y 22/10 c&amp;ugrave;ng với &amp;ocirc;ng Nguyễn Văn Khanh (cựu Ph&amp;oacute; chủ tịch UBND huyện Ti&amp;ecirc;n L&amp;atilde;ng).&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Quang cảnh ng&amp;ocirc;i nh&amp;agrave; v&amp;agrave; khu đầm của gia đ&amp;igrave;nh &amp;ocirc;ng Đo&amp;agrave;n Văn Vươn sau vụ cưỡng chế ng&amp;agrave;y 5/1. Ảnh:&amp;nbsp;&lt;em&gt;Nguyễn Hưng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Đồng thời, huyện cũng ph&amp;acirc;n c&amp;ocirc;ng c&amp;aacute;c c&amp;aacute;n bộ tạm đảm nhận chức vụ thay cho 3 Hoa, Hoan, Li&amp;ecirc;m lần lượt l&amp;agrave; c&amp;aacute;c &amp;ocirc;ng Phạm Văn Chống (Ph&amp;oacute; ph&amp;ograve;ng T&amp;agrave;i nguy&amp;ecirc;n M&amp;ocirc;i trường), Nguyễn Tiến Ong (Ph&amp;oacute; Chủ tịch HĐND x&amp;atilde; Vinh Quang) v&amp;agrave; Phạm C&amp;ocirc;ng Nh&amp;igrave;u (Ph&amp;oacute; Chủ tịch UBND x&amp;atilde; Vinh Quang).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Huyện ủy Ti&amp;ecirc;n L&amp;atilde;ng cũng c&amp;oacute; c&amp;aacute;c quyết định đ&amp;igrave;nh chỉ chức vụ B&amp;iacute; thư Đảng ủy x&amp;atilde; Vinh Quang với &amp;ocirc;ng Hoan, đ&amp;igrave;nh chỉ chức vụ Ph&amp;oacute; B&amp;iacute; thư Đảng ủy x&amp;atilde; với &amp;ocirc;ng Li&amp;ecirc;m.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trước đ&amp;oacute; v&amp;agrave;o cuối th&amp;aacute;ng 3, Th&amp;agrave;nh ủy Hải Ph&amp;ograve;ng cũng đ&amp;atilde; quyết định ph&amp;acirc;n c&amp;ocirc;ng &amp;ocirc;ng Nguyễn Văn T&amp;ugrave;ng, Ph&amp;oacute; gi&amp;aacute;m đốc Sở Khoa học C&amp;ocirc;ng nghệ thay thế &amp;ocirc;ng L&amp;ecirc; Văn Hiền, người bị c&amp;aacute;ch chức Chủ tịch UBND huyện Ti&amp;ecirc;n L&amp;atilde;ng.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Liem-Hoan.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;Ocirc;ng L&amp;ecirc; Thanh Li&amp;ecirc;m (tr&amp;aacute;i) v&amp;agrave; &amp;ocirc;ng Phạm Đăng Hoan. Ảnh:&amp;nbsp;&lt;em&gt;Nguyễn Hưng.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p align=&quot;left&quot;&gt;\r\n	Ng&amp;agrave;y 5/1, lực lượng chức năng của huyện Ti&amp;ecirc;n L&amp;atilde;ng gồm hơn 100 cảnh s&amp;aacute;t, bộ đội đ&amp;atilde; cưỡng chế t&amp;agrave;i sản tại khu vực đầm nu&amp;ocirc;i t&amp;ocirc;m của &amp;ocirc;ng Đo&amp;agrave;n Văn Vươn (x&amp;atilde; Vinh Quang) do kh&amp;ocirc;ng b&amp;agrave;n giao đất hết hạn thu&amp;ecirc;. Một số người đ&amp;atilde; g&amp;agrave;i m&amp;igrave;n tự chế trong vườn, cầm s&amp;uacute;ng hoa cải chống lại khiến 4 cảnh s&amp;aacute;t v&amp;agrave; hai c&amp;aacute;n bộ huyện đội bị thương.&lt;/p&gt;\r\n&lt;p align=&quot;left&quot;&gt;\r\n	Ng&amp;agrave;y 6/1, ng&amp;ocirc;i nh&amp;agrave; của &amp;ocirc;ng Đo&amp;agrave;n Văn Qu&amp;yacute; (em trai &amp;ocirc;ng Vươn) bị ph&amp;aacute;. Cơ quan chức năng x&amp;aacute;c định, ng&amp;ocirc;i nh&amp;agrave; n&amp;agrave;y kh&amp;ocirc;ng nằm trong khu vực cưỡng chế. Hơn một th&amp;aacute;ng sau, C&amp;ocirc;ng an th&amp;agrave;nh phố Hải Ph&amp;ograve;ng đ&amp;atilde; khởi tố vụ &amp;aacute;n hủy hoại t&amp;agrave;i sản để điều tra việc n&amp;agrave;y.&lt;/p&gt;', '', '', '', '', '', 'Nguyên Hùng', 'VnExpress', 0, 0, 'upload/Liem-Hoan.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:54:15', 'admin', '2012-11-03 01:54:15');
INSERT INTO `media` VALUES (32, 'default13518695391', '', 'media_news', '[77]', 'admin', 'Học trò tranh tấm vé độc đắc với cô chủ nhiệm', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Mua v&amp;eacute; số để g&amp;oacute;p phần x&amp;acirc;y dựng c&amp;ocirc;ng tr&amp;igrave;nh tại trung t&amp;acirc;m huyện Thủy Nguy&amp;ecirc;n (Hải Ph&amp;ograve;ng), khi hay tin tr&amp;uacute;ng độc đắc, 2 học sinh lớp 4 đ&amp;atilde; tranh tấm v&amp;eacute; tr&amp;uacute;ng giải 200 triệu đồng với ch&amp;iacute;nh c&amp;ocirc; gi&amp;aacute;o chủ nhiệm.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Ng&amp;agrave;y 2/11, C&amp;ocirc;ng ty Xổ số kiến thiết Miền Bắc đ&amp;atilde; trao giải cho những người d&amp;acirc;n ở 3 x&amp;atilde; Lập Lễ, Phục Lễ v&amp;agrave; Phả Lễ thuộc huyện Thủy Nguy&amp;ecirc;n (TP Hải Ph&amp;ograve;ng) tr&amp;uacute;ng 15 v&amp;eacute; số giải độc đắc, trị gi&amp;aacute; mỗi v&amp;eacute; 200 triệu đồng, mở thưởng ng&amp;agrave;y 25/10. Trong số những người lĩnh giải c&amp;oacute; c&amp;ocirc; gi&amp;aacute;o Phạm Thị T&amp;acirc;m, chủ nhiệm lớp 4B của Trường tiểu học Phả Lễ, tr&amp;uacute;ng giải với tấm v&amp;eacute; số 091649.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tuy nhi&amp;ecirc;n, trước đ&amp;oacute; đ&amp;atilde; xảy ra tranh chấp tấm v&amp;eacute; số tr&amp;ecirc;n giữa c&amp;ocirc; T&amp;acirc;m v&amp;agrave; 2 học sinh l&amp;agrave; Nguyễn Thị Minh Thu v&amp;agrave; Phạm Thị Thu Phương.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để c&amp;oacute; kinh ph&amp;iacute; tu bổ, x&amp;acirc;y dựng tượng đ&amp;agrave;i c&amp;aacute;c anh h&amp;ugrave;ng liệt sĩ tại trung t&amp;acirc;m huyện Thủy Nguy&amp;ecirc;n, Hội Li&amp;ecirc;n hiệp phụ nữ huyện đ&amp;atilde; ph&amp;aacute;t động phong tr&amp;agrave;o mua v&amp;eacute; số ủng hộ g&amp;acirc;y quỹ tại 37 chi hội phụ nữ c&amp;aacute;c x&amp;atilde; v&amp;agrave; thị trấn, mỗi chi hội ủng hộ 2.500 v&amp;eacute;, với gi&amp;aacute; 10.000 đồng/v&amp;eacute; v&amp;agrave;o đầu th&amp;aacute;ng 10.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/veso.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Tấm v&amp;eacute; số tr&amp;uacute;ng giải độc đắc trị gi&amp;aacute; 200 triệu đồng. Ảnh:&amp;nbsp;&lt;em&gt;Người lao động.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Tại Trường tiểu học Phả Lễ, c&amp;ocirc; Phạm Thị T&amp;acirc;m được nh&amp;agrave; trường giao cho 6 tấm v&amp;eacute; số để vận động học sinh lớp 4B do c&amp;ocirc; l&amp;agrave;m chủ nhiệm mua ủng hộ. C&amp;ocirc; T&amp;acirc;m mua 1 v&amp;eacute;, 4 học sinh kh&amp;aacute;c mỗi em mua 1 v&amp;eacute;, c&amp;ograve;n lại 1 v&amp;eacute; th&amp;igrave; em Thu v&amp;agrave; em Phương chung tiền mua. Do 2 em n&amp;agrave;y ai cũng đ&amp;ograve;i giữ tấm v&amp;eacute; số tr&amp;ecirc;n n&amp;ecirc;n c&amp;ocirc; T&amp;acirc;m đ&amp;atilde; quyết định giữ hộ v&amp;agrave; ghi t&amp;ecirc;n của 2 học sinh n&amp;agrave;y v&amp;agrave;o đằng sau tấm v&amp;eacute;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đến tối 25/10, khi biết kết quả giải độc đắc l&amp;agrave; 091649 th&amp;igrave; 2 em Thu v&amp;agrave; Phương đ&amp;atilde; n&amp;oacute;i với gia đ&amp;igrave;nh tr&amp;uacute;ng số độc đắc v&amp;agrave; đến xin lại c&amp;ocirc; gi&amp;aacute;o tấm v&amp;eacute; số tr&amp;ecirc;n để lĩnh thưởng. C&amp;ocirc; T&amp;acirc;m đ&amp;atilde; trả lời với phụ huynh rằng c&amp;ocirc; mới l&amp;agrave; người tr&amp;uacute;ng thưởng tấm v&amp;eacute; c&amp;oacute; 2 số cuối l&amp;agrave; 49, c&amp;ograve;n v&amp;eacute; của 2 học sinh kh&amp;ocirc;ng tr&amp;uacute;ng thưởng c&amp;oacute; 2 số cuối l&amp;agrave; 94.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;ocirc; T&amp;acirc;m cũng đưa ra tấm v&amp;eacute; số 091694 m&amp;agrave; mặt sau c&amp;oacute; chữ của c&amp;ocirc; ghi t&amp;ecirc;n 2 học sinh Thu v&amp;agrave; Phương. Cho rằng c&amp;ocirc; gi&amp;aacute;o chủ nhiệm đ&amp;atilde; tr&amp;aacute;o v&amp;eacute; số, ghi t&amp;ecirc;n 2 học sinh sau khi đ&amp;atilde; biết kết quả, n&amp;ecirc;n gia đ&amp;igrave;nh 2 em Thu v&amp;agrave; Phương khiếu nại đến Ban gi&amp;aacute;m hiệu nh&amp;agrave; trường v&amp;agrave; ch&amp;iacute;nh quyền địa phương.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Nguyễn Trần Lanh, Chủ tịch huyện Thủy Nguy&amp;ecirc;n, cho biết ng&amp;agrave;y 1/11, UBND x&amp;atilde; Phả Lễ đ&amp;atilde; phải mở cuộc họp để x&amp;aacute;c minh ai l&amp;agrave; chủ sở hữu tấm v&amp;eacute; số tr&amp;uacute;ng giải đặc biệt mở thưởng ng&amp;agrave;y 25/10. Tại cuộc họp, tấm v&amp;eacute; tr&amp;uacute;ng độc đắc 091649 được x&amp;aacute;c định thuộc sở hữu của c&amp;ocirc; gi&amp;aacute;o T&amp;acirc;m v&amp;igrave; đằng sau kh&amp;ocirc;ng c&amp;oacute; viết t&amp;ecirc;n của 2 em Thu v&amp;agrave; Phương.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cũng tại cuộc họp n&amp;agrave;y, trước sự chứng kiến của gia đ&amp;igrave;nh v&amp;agrave; ch&amp;iacute;nh quyền địa phương, 2 học sinh Thu v&amp;agrave; Phương n&amp;oacute;i lại l&amp;agrave; đ&amp;atilde; nhớ nhầm 2 số cuối 94 th&amp;agrave;nh 49.&lt;/p&gt;', '', '', '', '', '', 'Người Lao Động', 'VnExpress', 0, 0, 'upload/veso.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:49:28', 'admin', '2012-11-03 01:49:28');
INSERT INTO `media` VALUES (50, 'default13518695391', '', 'media_news', '[77]', 'admin', 'Students online lottery ticket with her homeroom', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Buy tickets to contribute to construction in the heart of Thuy Nguyen district (Hai Phong), when the news hit the jackpot, two fourth graders online ticket winners 200 million contract with the homeroom teacher.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	On 2/11, Northern Lottery Company were awarded to the people at the 3 communes margin, Easter Mass and crystal Thuy Nguyen district (Hai Phong) 15 winning the lottery jackpot, worth per ticket 200 million, the prize on 25/10.Among the soldiers of Pham Thi Tam, Chairman crystal layer 4B of Elementary school, winning ticket number 091 649.&lt;/p&gt;\r\n&lt;p&gt;\r\n	However, before that happened ticket on the dispute between her mind and her two students, Nguyen Thi Minh Thu Pham Thi Thu Phuong.&lt;/p&gt;\r\n&lt;p&gt;\r\n	To fund the renovation and construction of heroic martyrs monument in Thuy Nguyen district center, district Women&amp;#39;s Union launched the movement to buy tickets to support fundraising in 37 communes and women associations town, only the support 2,500 tickets, for $ 10,000 / ticket at the beginning of October.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img height=&quot;594&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/e0/55/veso.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Winning ticket jackpot worth $ 200 million.&amp;nbsp;Photo: Người Lao Động&lt;em&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	At Crystal Elementary School, Ms. Pham Thi Tam schools assigned to 6 tickets to motor graders 4B by homeroom to buy support.&amp;nbsp;Tam buy 1 ticket, 4 students each ticket you buy one, the first ticket they Thu and children common method of money to buy.&amp;nbsp;Because the two children who also claim to hold the ticket number on, so she decided to keep the lake and write the names of two students in the back of the ticket.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Up to 25/10, when the result is 091,649, 2 jackpots and Thu Phuong told the family winning the lottery and to please her teacher ticket on to a reward.&amp;nbsp;Tam answered with parents that she was the winning ticket last 2 numbers is 49, and tickets 2 winning students do not have 2 last number is 94.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tam also offers tickets for the 091,694 that her back with the letter 2 Student&amp;#39;s name and method.&amp;nbsp;Given that the homeroom teacher who swapped tickets, named two students after the results, so two families obtained and complaints to the school board and local governments.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mr. Nguyen Tran Flax, president Thuy Nguyen district, said on 1/11, the CPC crystal to open the meeting to verify who the owner winning ticket prize jackpots on 25/10.&amp;nbsp;At the meeting, the jackpot-winning ticket defined 091 649 owned by the Center for teacher behind do not have to write the name of the 2 and Thu Phuong.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Also at this meeting, in the presence of family and local authorities, two students and Thu Phuong said last is mistakenly remembered 2 of 94 into 49.&lt;/p&gt;', '', '', '', '', '', 'Người Lao Động', 'VnExpress', 0, 0, 'upload/veso.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:49:28', 'admin', '2012-11-03 01:49:28');
INSERT INTO `media` VALUES (33, 'default13518699381', '', 'media_news', '[77]', 'admin', 'Bão Sơn Tinh gây thiệt hại hơn 7.500 tỷ đồng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Cơn b&amp;atilde;o mạnh nhất 30 năm qua đ&amp;atilde; khiến Th&amp;aacute;i B&amp;igrave;nh thiệt hại tới hơn 2.600 tỷ đồng, Nam Định 1.500 tỷ đồng, Hải Ph&amp;ograve;ng 1.000 tỷ đồng. Nhiều diện t&amp;iacute;ch c&amp;acirc;y d&amp;agrave;i ng&amp;agrave;y kh&amp;ocirc;ng thể kh&amp;ocirc;i phục sản xuất v&amp;igrave; đ&amp;atilde; qu&amp;aacute; thời vụ.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	S&amp;aacute;ng 2/11, Bộ N&amp;ocirc;ng nghiệp v&amp;agrave; Ph&amp;aacute;t triển n&amp;ocirc;ng th&amp;ocirc;n họp với c&amp;aacute;c địa phương b&amp;agrave;n việc kh&amp;ocirc;i phục sản xuất sau b&amp;atilde;o Sơn Tinh. Theo thống k&amp;ecirc; mới nhất của c&amp;aacute;c tỉnh, cơn b&amp;atilde;o mạnh nhất trong 30 năm qua đ&amp;atilde; g&amp;acirc;y hại tr&amp;ecirc;n 7.500 tỷ đồng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trong đ&amp;oacute;, nặng nề nhất l&amp;agrave; Th&amp;aacute;i B&amp;igrave;nh (2.662 tỷ), Nam Định (1.535 tỷ), Hải Ph&amp;ograve;ng (gần 1.000 tỷ). Một số tỉnh nằm s&amp;acirc;u trong đất liền cũng thiệt hại nặng như Hải Dương (tr&amp;ecirc;n 800 tỷ), Hưng Y&amp;ecirc;n (tr&amp;ecirc;n 600 tỷ), H&amp;agrave; Nam (350 tỷ)...&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;329&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/e0/0f/thap_4.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Th&amp;aacute;p truyền h&amp;igrave;nh cao 180 m, trị gi&amp;aacute; h&amp;agrave;ng h&amp;agrave;ng chục tỷ đồng ở TP Nam Định bị b&amp;atilde;o quật đổ. Ảnh:&amp;nbsp;&lt;em&gt;Ho&amp;agrave;ng H&amp;agrave;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	N&amp;ocirc;ng nghiệp chiếm tỷ trọng lớn trong tổng thiệt hại, đặc biệt l&amp;agrave; ng&amp;agrave;nh trồng trọt với chục ngh&amp;igrave;n ha diện t&amp;iacute;ch l&amp;uacute;a vụ đ&amp;ocirc;ng. Ngo&amp;agrave;i ra, c&amp;ograve;n một số diện t&amp;iacute;ch sản xuất đặc th&amp;ugrave; như 2.000 ha ng&amp;ocirc; của H&amp;agrave; Nam; 10.000 tấn muối của di&amp;ecirc;m d&amp;acirc;n Nam Định... &amp;quot;Nh&amp;igrave;n vườn chuối t&amp;ocirc;i bật kh&amp;oacute;c, kh&amp;ocirc;ng muốn trồng lại nữa&amp;quot;, Ph&amp;oacute; gi&amp;aacute;m đốc Sở N&amp;ocirc;ng nghiệp Hưng Y&amp;ecirc;n Đo&amp;agrave;n Thị Chải n&amp;oacute;i về 900 ha chuối trị gi&amp;aacute; 300 tỷ đồng của tỉnh. Ngo&amp;agrave;i chuối, tỉnh n&amp;agrave;y c&amp;ograve;n c&amp;oacute; tới 1.400 ha ng&amp;ocirc; đổ g&amp;atilde;y do gi&amp;oacute; b&amp;atilde;o.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đại diện của th&amp;agrave;nh phố Hải Ph&amp;ograve;ng cho hay, để kh&amp;ocirc;i phục sản xuất, địa phương sẽ cố gắng ph&amp;aacute;t triển diện t&amp;iacute;ch l&amp;uacute;a xu&amp;acirc;n sắp tới để b&amp;ugrave; lại. &amp;quot;Ch&amp;uacute;ng t&amp;ocirc;i kiến nghị Bộ hỗ trợ giống l&amp;uacute;a, nếu được l&amp;uacute;a lai th&amp;igrave; c&amp;agrave;ng tốt&amp;quot;, Ph&amp;oacute; gi&amp;aacute;m đốc Sở N&amp;ocirc;ng nghiệp Hải Ph&amp;ograve;ng Dương Đức T&amp;ugrave;ng n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Do đ&amp;atilde; qu&amp;aacute; thời vụ n&amp;ecirc;n trước mắt hầu hết địa phương đều đề nghị hỗ trợ giống c&amp;acirc;y ngắn ng&amp;agrave;y, c&amp;acirc;y ăn l&amp;aacute; để kh&amp;ocirc;i phục sản xuất. Để tr&amp;aacute;nh b&amp;agrave;i học thừa nguồn cung của những năm trước, c&amp;aacute;c tỉnh đều thận trọng khi nhắc đến trồng khoai t&amp;acirc;y.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;329&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/e0/0f/bao_5a.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Di&amp;ecirc;m d&amp;acirc;n Trịnh Văn To&amp;agrave;n (Văn L&amp;yacute;, Nam Định) chỉ tay về kho muối ch&amp;igrave;m trong nước rồi n&amp;oacute;i: &amp;quot;T&amp;ocirc;i mất mấy chục triệu rồi, biết l&amp;agrave;m g&amp;igrave; để cứu v&amp;atilde;n b&amp;acirc;y giờ. L&amp;agrave;m nghề n&amp;agrave;y cả năm mới l&amp;atilde;i được hơn 20 triệu đồng giờ tay trắng&amp;quot;. Ảnh:&amp;nbsp;&lt;em&gt;Ho&amp;agrave;ng H&amp;agrave;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Trước đề xuất của c&amp;aacute;c tỉnh, Thứ trưởng Bộ N&amp;ocirc;ng nghiệp B&amp;ugrave;i B&amp;aacute; Bổng đề nghị xuất ngay từ nguồn dự trữ quốc gia để hỗ trợ giống. T&amp;ugrave;y địa phương m&amp;agrave; xuất tiền hoặc giống theo nhu cầu.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Do đặc th&amp;ugrave; của ng&amp;agrave;nh trồng trọt, chưa thể thống k&amp;ecirc; ch&amp;iacute;nh x&amp;aacute;c được ngay thiệt hại, Thứ trưởng Bộ N&amp;ocirc;ng nghiệp Vũ Văn T&amp;aacute;m đề nghị tuần tới c&amp;aacute;c tỉnh b&amp;aacute;o c&amp;aacute;o về Bộ thiệt hại v&amp;agrave; đề xuất cụ thể. &amp;quot;C&amp;ograve;n hiện tại, cần ph&amp;aacute;t huy s&amp;aacute;ng tạo của người d&amp;acirc;n để khắc phục hậu quả b&amp;atilde;o lụt&amp;quot;, &amp;ocirc;ng T&amp;aacute;m n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	H&amp;igrave;nh th&amp;agrave;nh từ ng&amp;agrave;y 23/10, b&amp;atilde;o Sơn Tinh bắt đầu ảnh hưởng tới ven biển miền Trung từ tối 27/10. Cơn b&amp;atilde;o c&amp;oacute; l&amp;uacute;c đạt tới cấp 14 qu&amp;eacute;t dọc theo bờ biển Bắc Trung Bộ v&amp;agrave; Bắc Bộ. Ngo&amp;agrave;i thiệt hại lớn về t&amp;agrave;i sản, 8 người đ&amp;atilde; chết, 3 người c&amp;ograve;n mất t&amp;iacute;ch v&amp;agrave; gần 100 người bị thương...&lt;/p&gt;', '', '', '', '', '', 'Hoàng Hà', 'VnExpress', 0, 0, 'upload/thap_4.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:53:13', 'admin', '2012-11-03 01:53:13');
INSERT INTO `media` VALUES (34, 'default13518705331', '', 'media_news', '[77]', 'admin', 'Nhà hát múa rối&#039; độc đáo trên tầng 4', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;M&amp;agrave;n đua xe m&amp;aacute;y bằng gỗ với những pha lạng l&amp;aacute;ch v&amp;agrave; nẹt p&amp;ocirc; y như thật diễn ra giữa thủy đ&amp;igrave;nh mini tr&amp;ecirc;n tầng 4 nh&amp;agrave; nghệ sĩ Phan Thanh Li&amp;ecirc;m khiến nh&amp;oacute;m học sinh nước ngo&amp;agrave;i h&amp;ograve; reo th&amp;iacute;ch th&amp;uacute;.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Tr&amp;ograve; đua xe đang đến hồi kết th&amp;uacute;c, hai xe m&amp;aacute;y nhỏ x&amp;iacute;u l&amp;agrave;m bằng gỗ, mỗi b&amp;ecirc;n chở ba người văng đi v&amp;agrave; nổi bồng bềnh tr&amp;ecirc;n mặt nước, bỗng bị sập nguồn điện. Nh&amp;oacute;m học sinh Malaysia ngồi b&amp;ecirc;n dưới nhao nhao v&amp;igrave; đang hay lại mất hứng. Buổi diễn tạm dừng v&amp;agrave;i ph&amp;uacute;t để chủ nh&amp;agrave; khắc phục sự cố. Xong xu&amp;ocirc;i, nh&amp;oacute;m học sinh quốc tế lại r&amp;uacute; l&amp;ecirc;n cười khi c&amp;aacute;c nh&amp;acirc;n vật rối nước bất ngờ phun nước v&amp;agrave;o người họ...&lt;/p&gt;\r\n&lt;p&gt;\r\n	Suất diễn k&amp;eacute;o d&amp;agrave;i 30 ph&amp;uacute;t kết th&amp;uacute;c, nh&amp;oacute;m học sinh được lội hẳn v&amp;agrave;o hồ nước để tự tay điều khiển rối. T&amp;ograve; m&amp;ograve; v&amp;agrave; th&amp;iacute;ch th&amp;uacute;, c&amp;aacute;c bạn nhỏ thay nhau cho ch&amp;uacute; r&amp;ugrave;a, tr&amp;acirc;u hay ch&amp;uacute; Tễu cử động. C&amp;aacute;c vị kh&amp;aacute;ch c&amp;ograve;n được nghệ nh&amp;acirc;n giảng giải c&amp;aacute;ch l&amp;agrave;m rối. Trước đ&amp;oacute;, họ cũng được nghe chủ nh&amp;acirc;n chia sẻ về d&amp;ograve;ng họ 7 đời l&amp;agrave;m rối nước c&amp;ugrave;ng những kỷ niệm lưu diễn nước ngo&amp;agrave;i của m&amp;igrave;nh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	S&amp;acirc;n khấu rối nước mini tr&amp;ecirc;n tầng 4 ng&amp;ocirc;i nh&amp;agrave; ở Kh&amp;acirc;m Thi&amp;ecirc;n (H&amp;agrave; Nội) của nghệ sĩ Phan Thanh Li&amp;ecirc;m, 47 tuổi, vừa ra mắt đ&amp;atilde; thu h&amp;uacute;t nhiều đo&amp;agrave;n kh&amp;aacute;ch, đặc biệt l&amp;agrave; người nước ngo&amp;agrave;i. Bể nước nhỏ h&amp;igrave;nh b&amp;aacute;n nguyệt được qu&amp;acirc;y bằng t&amp;ocirc;n, m&amp;aacute;i đ&amp;igrave;nh đỏ, nổi tr&amp;ecirc;n mặt nước l&amp;agrave; những mảng b&amp;egrave;o. Kh&amp;aacute;c với thủy đ&amp;igrave;nh ở những nh&amp;agrave; h&amp;aacute;t m&amp;uacute;a rối, thủy đ&amp;igrave;nh của hậu duệ đời thứ 7 trong gia đ&amp;igrave;nh l&amp;agrave;m m&amp;uacute;a rối ở Nam Định n&amp;agrave;y c&amp;oacute; th&amp;ecirc;m c&amp;acirc;y đa v&amp;agrave; kh&amp;oacute;m tre v&amp;agrave;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	L&amp;yacute; giải cho tiểu cảnh ấy, người đ&amp;agrave;n &amp;ocirc;ng d&amp;aacute;ng cao r&amp;aacute;o cho biết muốn giới thiệu cả lịch sử v&amp;agrave; những n&amp;eacute;t đặc trưng của người Việt với bạn b&amp;egrave; quốc tế. &amp;quot;C&amp;acirc;y đa, bến nước s&amp;acirc;n đ&amp;igrave;nh&amp;quot; hay &amp;quot;tre v&amp;agrave;ng Th&amp;aacute;nh Gi&amp;oacute;ng&amp;quot; đều l&amp;agrave; h&amp;igrave;nh ảnh quen thuộc v&amp;agrave; ăn s&amp;acirc;u v&amp;agrave;o tiềm thức của mỗi người Việt. Bởi vậy, ngo&amp;agrave;i việc biểu diễn c&amp;aacute;c tr&amp;ograve;, anh c&amp;ograve;n muốn quảng b&amp;aacute; văn h&amp;oacute;a.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;364&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/dd/7d/roi-nuoc-13.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Tiết mục rối đua xe m&amp;aacute;y được kh&amp;aacute;n giả y&amp;ecirc;u th&amp;iacute;ch, đặc biệt l&amp;agrave; trẻ em. Ảnh:&amp;nbsp;&lt;em&gt;B&amp;igrave;nh Minh.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Theo anh Li&amp;ecirc;m, từ những năm 2000, anh đ&amp;atilde; c&amp;ocirc;ng bố m&amp;ocirc; h&amp;igrave;nh độc diễn rối nước, nhưng do nh&amp;agrave; chật, kh&amp;ocirc;ng c&amp;oacute; chỗ diễn n&amp;ecirc;n kh&amp;ocirc;ng thể ph&amp;aacute;t triển được. Th&amp;ocirc;ng thường mỗi buổi diễn cần rất nhiều người, đ&amp;ocirc;i khi 2-3 người mới điều khiển được một con. Rối nước được thiết kế c&amp;oacute; đế bằng gỗ c&amp;ugrave;ng c&amp;aacute;c phụ kiện lắp gh&amp;eacute;p b&amp;ecirc;n trong n&amp;ecirc;n rất nặng. Người điều khiển cần c&amp;oacute; sức khỏe v&amp;agrave; tập trung để di chuyển con rối uyển chuyển, nhịp nh&amp;agrave;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để buổi diễn kh&amp;ocirc;ng &amp;quot;cồng kềnh&amp;quot;, anh Li&amp;ecirc;m đ&amp;atilde; cải tiến con rối với đế bằng cao su. V&amp;igrave; thế anh c&amp;oacute; thể dễ d&amp;agrave;ng điều khiển một l&amp;uacute;c 2 con rối, thậm ch&amp;iacute; cả đội h&amp;igrave;nh m&amp;uacute;a gồm 8 c&amp;ocirc; ti&amp;ecirc;n. Với s&amp;aacute;ng tạo ấy, anh &amp;quot;tung ho&amp;agrave;nh&amp;quot; tr&amp;ecirc;n s&amp;acirc;n khấu mini của ri&amp;ecirc;ng m&amp;igrave;nh tại nh&amp;agrave; v&amp;agrave; vi vu một m&amp;igrave;nh lưu diễn trời T&amp;acirc;y.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;330&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/dd/7d/roi-nuoc-10.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Thủy đ&amp;igrave;nh mini tr&amp;ecirc;n tầng 4 nh&amp;agrave; anh Li&amp;ecirc;m. Ảnh:&amp;nbsp;&lt;em&gt;B&amp;igrave;nh Minh.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Ngo&amp;agrave;i cải tiến để rối nhẹ hơn, anh Li&amp;ecirc;m cũng s&amp;aacute;ng tạo th&amp;ecirc;m nhiều nh&amp;acirc;n vật v&amp;agrave; lồng gh&amp;eacute;p những vấn đề x&amp;atilde; hội quan t&amp;acirc;m như đua xe v&amp;agrave;o b&amp;agrave;i biểu diễn của m&amp;igrave;nh. Anh cho hay thường đưa nhiều tr&amp;ograve; d&amp;acirc;n gian, truyền thống ra nước ngo&amp;agrave;i diễn. So với những tr&amp;ograve; ấy, m&amp;agrave;n đua xe m&amp;aacute;y được đ&amp;oacute;n nhận hơn cả.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Để c&amp;oacute; suất diễn 30 ph&amp;uacute;t ho&amp;agrave;n hảo, nghệ sĩ rối nước Th&amp;agrave;nh Nam n&amp;agrave;y t&amp;acirc;m sự, anh lu&amp;ocirc;n phải chuẩn bị chu đ&amp;aacute;o. &amp;quot;Phải kiểm tra c&amp;aacute;c con rối xem c&amp;oacute; bị trục trặc g&amp;igrave; kh&amp;ocirc;ng. Nhiều khi kh&amp;ocirc;ng để &amp;yacute; d&amp;acirc;y th&amp;eacute;p bị đứt hay g&amp;atilde;y cũng l&amp;agrave;m buổi diễn bị gi&amp;aacute;n đoạn. Ngo&amp;agrave;i ra t&amp;ocirc;i cũng phải thuộc nhạc để nhớ đoạn n&amp;agrave;o nhịp điệu nhanh để c&amp;oacute; động t&amp;aacute;c nhanh v&amp;agrave; ngược lại&amp;quot;, anh Li&amp;ecirc;m chia sẻ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	S&amp;acirc;n khấu lưu động của anh Li&amp;ecirc;m c&amp;oacute; thể gấp gọn v&amp;agrave; mang theo anh mỗi chuyến sang nước ngo&amp;agrave;i. H&amp;agrave;nh l&amp;yacute; mỗi lần đi diễn ở Đức, Ba Lan, Ph&amp;aacute;p, Nhật, H&amp;agrave;n Quốc... c&amp;oacute; tới 100 kg. C&amp;oacute; lần sang Ph&amp;aacute;p, mấy h&amp;ograve;m &amp;quot;đồ nghề&amp;quot; bị thất lạc trong khi h&amp;ocirc;m sau anh c&amp;oacute; suất diễn. V&amp;eacute; đ&amp;atilde; được b&amp;aacute;n đi, băng r&amp;ocirc;n, quảng c&amp;aacute;o treo đầy đường, c&amp;aacute;c h&amp;atilde;ng th&amp;ocirc;ng tấn cũng đưa tin.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Lần đ&amp;oacute;, t&amp;ocirc;i lo kh&amp;ocirc;ng ăn ngủ được. Sau nhờ mối quan hệ của ban tổ chức với s&amp;acirc;n bay, t&amp;ocirc;i đ&amp;atilde; t&amp;igrave;m thấy ch&amp;uacute;ng ở kho h&amp;agrave;ng. Đ&amp;oacute; l&amp;agrave; lần t&amp;ocirc;i th&amp;oacute;t tim nhất&amp;quot;, anh Li&amp;ecirc;m nhớ lại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kỷ niệm lần sang H&amp;agrave;n Quốc cũng khiến anh kh&amp;ocirc;ng thể qu&amp;ecirc;n. Trời mưa, kh&amp;aacute;n giả được ph&amp;aacute;t &amp;aacute;o mưa v&amp;agrave; từ tốn xếp h&amp;agrave;ng v&amp;agrave;o xem. Trong l&amp;uacute;c diễn, kh&amp;ocirc;ng gian tuyệt đối được giữ im lặng để người xem cảm thụ nghệ thuật v&amp;agrave; nghệ sĩ kh&amp;ocirc;ng bị ph&amp;acirc;n t&amp;acirc;m. Sau buổi diễn, nhiều kh&amp;aacute;n giả, đặc biệt l&amp;agrave; những người trẻ đ&amp;atilde; tới xin chữ k&amp;yacute; anh v&amp;agrave; b&amp;agrave;y tỏ cảm k&amp;iacute;ch khi lần đầu ti&amp;ecirc;n được xem m&amp;uacute;a rối.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sinh ra v&amp;agrave; lớn l&amp;ecirc;n trong gia đ&amp;igrave;nh c&amp;oacute; bố l&amp;agrave; nghệ nh&amp;acirc;n Phan Văn Ngải ở phường rối Nam Trực (Nam Định), anh Li&amp;ecirc;m may mắn được tiếp x&amp;uacute;c với rối nước từ l&amp;uacute;c ấu thơ. Gia đ&amp;igrave;nh c&amp;oacute; truyền thống đi&amp;ecirc;u khắc n&amp;ecirc;n anh đ&amp;atilde; m&amp;agrave;y m&amp;ograve; quan s&amp;aacute;t bố để tự l&amp;agrave;m cho m&amp;igrave;nh những pho tượng gỗ b&amp;eacute; x&amp;iacute;u. Trong k&amp;yacute; ức của người nghệ sĩ n&amp;agrave;y, ng&amp;agrave;y nhỏ anh thường c&amp;ugrave;ng bố đi bộ g&amp;aacute;nh tượng, rối đến chợ Viềng b&amp;aacute;n. Lớn hơn một ch&amp;uacute;t, anh bắt đầu đam m&amp;ecirc; rối nước sau những lần xem biểu diễn ở thủy đ&amp;igrave;nh l&amp;agrave;ng. Trong số 7 anh chị em, Li&amp;ecirc;m m&amp;ecirc; rối nhất v&amp;agrave; đến giờ cũng chỉ c&amp;oacute; anh c&amp;ugrave;ng một người anh trai kh&amp;aacute;c ở Nam Định l&amp;agrave; sống với nghề.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bố anh cũng c&amp;oacute; một đo&amp;agrave;n rối ri&amp;ecirc;ng từng biểu diễn nhiều nơi ở nước ngo&amp;agrave;i nhưng sau đ&amp;oacute; kh&amp;ocirc;ng trụ được v&amp;igrave; kh&amp;ocirc;ng c&amp;acirc;n đối được thu chi. &amp;Yacute; tưởng độc diễn của anh Li&amp;ecirc;m từng bị bố v&amp;agrave; nhiều người ngăn cản v&amp;igrave; c&amp;oacute; vẻ &amp;quot;viển v&amp;ocirc;ng&amp;quot;. Quyết t&amp;acirc;m cải tiến v&amp;agrave; s&amp;aacute;ng tạo, anh đ&amp;atilde; cho ra đời m&amp;ocirc; h&amp;igrave;nh độc diễn độc đ&amp;aacute;o nhất trong l&amp;agrave;ng rối Việt Nam.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;348&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/dd/7d/roi-nuoc-1.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Anh Li&amp;ecirc;m c&amp;ugrave;ng con trai ra ch&amp;agrave;o kh&amp;aacute;n giả sau khi kết th&amp;uacute;c m&amp;agrave;n biểu diễn. Ảnh:&amp;nbsp;&lt;em&gt;B&amp;igrave;nh Minh.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Vừa trở về sau một th&amp;aacute;ng được mời sang H&amp;agrave;n Quốc biểu diễn, anh Li&amp;ecirc;m bận rộn chăm ch&amp;uacute;t cho s&amp;acirc;n khấu nhỏ của m&amp;igrave;nh. Cậu con trai thứ hai mới 4 tuổi nhưng rất đam m&amp;ecirc; rối. Mỗi khi bố c&amp;oacute; chương tr&amp;igrave;nh, cậu b&amp;eacute; đ&amp;ograve;i được c&amp;ugrave;ng bố biểu diễn v&amp;agrave;i ph&amp;acirc;n đoạn nhỏ. Kh&amp;aacute;c với cậu &amp;uacute;t n&amp;agrave;y, cậu anh cả kh&amp;ocirc;ng &amp;quot;mặn m&amp;agrave;&amp;quot; với c&amp;ocirc;ng việc của bố lắm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tất bật đ&amp;oacute;n c&amp;aacute;c đo&amp;agrave;n kh&amp;aacute;ch nước ngo&amp;agrave;i tới nh&amp;agrave; xem rối, anh Li&amp;ecirc;m c&amp;ograve;n phục vụ cả ăn uống nếu kh&amp;aacute;ch c&amp;oacute; nhu cầu. Hiện tại, gi&amp;aacute; v&amp;eacute; v&amp;agrave;o cửa vẫn ở mức &amp;quot;ngoại giao&amp;quot; v&amp;igrave; anh Li&amp;ecirc;m đặt mục ti&amp;ecirc;u duy tr&amp;igrave; v&amp;agrave; bảo tồn văn h&amp;oacute;a l&amp;ecirc;n h&amp;agrave;ng đầu. Sắp tới, anh sẽ đưa v&amp;agrave;o thử nghiệm c&amp;aacute;c tiết mục m&amp;uacute;a rối c&amp;oacute; chủ đề v&amp;agrave; kịch bản r&amp;otilde; r&amp;agrave;ng, kh&amp;ocirc;ng đơn thuần chỉ l&amp;agrave; tr&amp;ograve; như hiện tại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;T&amp;ocirc;i muốn kh&amp;aacute;n giả kh&amp;ocirc;ng chỉ được xem, được tận tay sờ v&amp;agrave;o rối m&amp;agrave; c&amp;ograve;n được t&amp;igrave;m hiểu về cuộc sống của gia đ&amp;igrave;nh nghệ sĩ, c&amp;ugrave;ng v&amp;agrave;o bếp v&amp;agrave; thưởng thức đồ ăn Việt. Nhờ vậy, họ kh&amp;ocirc;ng chỉ c&amp;oacute; kiến thức m&amp;agrave; c&amp;ograve;n hiểu th&amp;ecirc;m về m&amp;uacute;a rối truyền thống&amp;quot;, anh Li&amp;ecirc;m cho hay.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Bình Minh', 'VnExpress', 0, 0, 'upload/roi-nuoc.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:48:47', 'admin', '2012-11-03 01:48:47');
INSERT INTO `media` VALUES (46, 'default13518705331', '', 'media_news', '[77]', 'admin', '&#039;Puppet Theatre&#039; unique on the 4th floor', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Display wooden motorcycle racing with phase weaving and net po as it takes place between aquatic mini home on the 4th floor artist Phan Thanh Liem foreign student group that cheers enjoy.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Racing games are coming to an end, two tiny motorcycle made of wood, each carrying three people stayed away and is floating on water, power suddenly collapsed.&amp;nbsp;Malaysian group of students sitting beneath limp limp because or lost interest.&amp;nbsp;Show host paused a few minutes to correct the problem.&amp;nbsp;Finished, the group of international students to screech to laugh when the puppet characters suddenly sprayed water on them ...&lt;/p&gt;\r\n&lt;p&gt;\r\n	Performances last 30 minutes ended, a group of students to benefit entirely into the lake to manually control the disorder.&amp;nbsp;Curious and interested, you little turns turtle, buffalo or comment TEU movement.&amp;nbsp;The guests also explain how troubled artist.Before that, they are also listening to the employer share of the family 7 for ever confuse the memories his foreign tour.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mini water puppet stage on the fourth floor house in Kham Thien (Hanoi) of artist Phan Thanh Liem, 47, has launched have attracted many customers, especially foreigners.&amp;nbsp;Small water tank semicircle is strapless with respect, the red house roof, floating on the water is dirt patches.&amp;nbsp;Unlike aquatic families in the puppet theater, home hydro 7th descendant of puppet family in Nam Dinh has more yellow bamboo tree and pineapple.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Explains the primary scene, tall man is said to introduce the history and characteristics of the Vietnamese to international friends.&amp;nbsp;&amp;quot;Plants have, wharf yard families&amp;quot; or &amp;quot;Thanh Giong gold bamboo&amp;quot; are images familiar and ingrained into the minds of every Vietnamese.&amp;nbsp;Therefore, in addition to performing the role, he wanted to promote culture.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;364&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/dd/7d/roi-nuoc-13.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Puppet repertoire favorite motorcycle racing spectators, especially children.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Binh Minh.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	According to Integrity, from 2000, he has released solo models water problems, but so tight, no development takes place should not be.&amp;nbsp;Typically each show to a lot of people, sometimes 2-3 new controls are a human.&amp;nbsp;Water puppetry is designed with wooden soles and accessories fitted inside so badly.&amp;nbsp;The driver should be physically fit and focused for moving puppets flexible, rhythmic.&lt;/p&gt;\r\n&lt;p&gt;\r\n	To show not &amp;quot;bloated&amp;quot;, he Liem improved puppet with rubber soles.&amp;nbsp;So you can easily control a puppet at 2, even her dance team consists of 8 first.&amp;nbsp;With this creation, he &amp;quot;rampant&amp;quot; in the stage their own mini home and Outing alone touring the West.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; height=&quot;330&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/dd/7d/roi-nuoc-10.jpg&quot; width=&quot;495&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Mercury mini home on the fourth floor he Liem.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Binh Minh.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	In addition to improvements to mess lighter, he Liem also more character creation and integration of social issues of interest such as racing in all his performances.&amp;nbsp;He said often many folk games, traditional offshore performance.&amp;nbsp;Compared to that, a free motorcycle racing more well received.&lt;/p&gt;\r\n&lt;p&gt;\r\n	To have perfect performances for 30 minutes, water puppetry artist Thanh Nam said, I&amp;#39;ll always be prepared.&amp;nbsp;&amp;quot;To check the puppets see if they have any problems. Sometimes not notice broken wire or broken as well as the show was interrupted. Additionally I have the music to remember the fast rhythm to Quick action and vice versa, &amp;quot;he shared Integrity.&lt;/p&gt;\r\n&lt;p&gt;\r\n	His working stage Integrity can be folded and carried him each trip overseas.Luggage each time you play in Germany, Poland, France, Japan, South Korea ...up to 100 kg.&amp;nbsp;Once in France, a few days &amp;quot;training&amp;quot; is lost while the next day he took power.&amp;nbsp;Tickets were sold out, banners, ads plastered with sugar and, the news agency reported.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;That time, I worry not eat or sleep. Later by the relationship of the organization to the airport, I found them in the warehouse. It is my most stunt&amp;quot; Integrity recall.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Anniversary to South Korea also made him unforgettable.&amp;nbsp;Rain, audiences found raincoats and slowly lined up to watch.&amp;nbsp;During the show, absolutely quiet space to the viewer perception of art and the artists do not get distracted.&amp;nbsp;After the show, many viewers, especially the young people went to his autograph and expressed appreciation for the first time puppet show.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Born and brought up in the family announced that artisan Phan Van Ngai in Nam Truc disorder ward, Nam Dinh, his Integrity fortunate to be exposed to water puppetry since childhood.&amp;nbsp;Family tradition of sculpture, so he was tinkering published observations to make themselves tiny wooden statues.&amp;nbsp;In memory of the artist, the date he used the same small walk burden object, then to Vieng sold.&amp;nbsp;A little older, he began passion troubled water after the village in aquatic performances.&amp;nbsp;Out of 7 brothers and sisters, Integrity love puppet and now only he and another brother in Nam Dinh is living with.&lt;/p&gt;\r\n&lt;p&gt;\r\n	His father also has a union puppet performed many places abroad, but then do not head for the balance of revenues and expenditures.&amp;nbsp;The idea of ​​his solo Liem been announced and many people stop because it looks &amp;quot;unrealistic&amp;quot;.&amp;nbsp;Determined to innovation and creativity, he has released solo model unique in the village of Vietnamese puppet.&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; height=&quot;348&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/dd/7d/roi-nuoc-1.jpg&quot; width=&quot;495&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;He Integrity with his son out to greet the audience after the performance.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Binh Minh.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Just returned after a month was invited to Korea to perform, he Integrity busy taking their little bit for the stage.&amp;nbsp;Second son was 4 years old, but very passionate about puppets.&amp;nbsp;Each program when published, he demanded the same father represented several small segments.&amp;nbsp;Unlike the youngest, his brother is not &amp;quot;indifferent&amp;quot; to the work of him that much.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Busy welcoming foreign delegations to watch puppet, he Liem also serve meals if customers demand.&amp;nbsp;Currently, the price of admission remained &amp;quot;foreign&amp;quot; because he Integrity aims to maintain and preserve cultural forefront.&amp;nbsp;Soon, he will be put to the test the dance-themed puppets and clear script, not merely as the current role.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;I want the audience to not only see, hands touch the puppets but also learn about the life of artist family, with the kitchen and enjoy Vietnamese food. As a result, they not only have the knowledge but also learn more about the traditional puppet, &amp;quot;he Liem said.&lt;/p&gt;', '', '', '', '', '', 'Bình Minh', 'VnExpress', 0, 0, 'upload/roi-nuoc.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:48:47', 'admin', '2012-11-03 01:48:47');
INSERT INTO `media` VALUES (35, 'default13518726071', '', 'media_news', '[77]', 'admin', 'Nhiều vết nứt trong hầm đường bộ Hải Vân', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;C&amp;ocirc;ng tr&amp;igrave;nh thế kỷ hầm Hải V&amp;acirc;n l&amp;acirc;u nay xuất hiện nhiều vết nứt dọc ngang g&amp;acirc;y thấm nước. Nhưng đại diện c&amp;ocirc;ng ty quản l&amp;yacute; khẳng định, những vết nứt n&amp;agrave;y kh&amp;ocirc;ng ảnh hưởng đến kết cấu v&amp;agrave; an to&amp;agrave;n của hầm.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	C&amp;aacute;ch cửa ph&amp;iacute;a nam&amp;nbsp;&lt;a href=&quot;http://vnexpress.net/gl/xa-hoi/2009/12/3ba1655c/&quot;&gt;hầm đường bộ Hải V&amp;acirc;n&lt;/a&gt;&amp;nbsp;khoảng 20 m xuất hiện nhiều vết nứt dọc ngang hai b&amp;ecirc;n th&amp;agrave;nh v&amp;agrave; đường v&amp;ograve;m. Thường xuy&amp;ecirc;n qua đoạn hầm n&amp;agrave;y, t&amp;agrave;i xế xe du lịch t&amp;ecirc;n Dũng (đường L&amp;ecirc; Duẩn, Đ&amp;agrave; Nẵng) cho biết, ngồi tr&amp;ecirc;n xe c&amp;oacute; thể dễ d&amp;agrave;ng thấy được những vết nứt. &amp;quot;T&amp;ocirc;i lo ngại ch&amp;uacute;ng c&amp;oacute; thể dẫn đến hiểm họa&amp;quot;, anh Dũng b&amp;agrave;y tỏ.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;Ảnh: Hoàng Hà.&quot; height=&quot;328&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/b6/Ham-HV.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Hầm Hải V&amp;acirc;n được đưa v&amp;agrave;o sử dụng từ th&amp;aacute;ng 6/2005. Ảnh:&amp;nbsp;&lt;em&gt;Ho&amp;agrave;ng H&amp;agrave;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Trong b&amp;aacute;o c&amp;aacute;o gửi Tổng cục Đường bộ, Khu Quản l&amp;yacute; Đường bộ V cho biết, sau thời gian khai th&amp;aacute;c (th&amp;aacute;ng 6/2005), hầm đường bộ đ&amp;atilde; xuất hiện một số hư hỏng kết cấu b&amp;ecirc; t&amp;ocirc;ng cốt th&amp;eacute;p, nứt dọc, nứt ngang tr&amp;ecirc;n v&amp;ograve;m v&amp;agrave; th&amp;agrave;nh hầm, g&amp;acirc;y thấm v&amp;agrave; dột nước xuống l&amp;agrave;n đường xe chạy.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cụ thể, tại v&amp;ograve;m hầm c&amp;aacute;c vết nứt đang lan ra nhiều vị tr&amp;iacute; kh&amp;aacute;c khiến nước thấm dột từ tr&amp;ecirc;n đỉnh v&amp;ograve;m hầm. Vết nứt d&amp;agrave;i 1-7 m, rộng dưới 1 mm. Suốt chiều d&amp;agrave;i th&amp;agrave;nh hầm c&amp;oacute; nhiều vết nứt trong kết cấu b&amp;ecirc; t&amp;ocirc;ng cốt th&amp;eacute;p, bề rộng 1-2 mm, d&amp;agrave;i 1-7 m, v&amp;agrave; lớn nhất l&amp;agrave; 12 m, s&amp;acirc;u tr&amp;ecirc;n 5 mm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chiều 1/11, &amp;ocirc;ng Cao B&amp;aacute; Giang, Ph&amp;oacute; tổng gi&amp;aacute;m đốc C&amp;ocirc;ng ty TNHH MTV Quản l&amp;yacute; v&amp;agrave; khai th&amp;aacute;c hầm đường bộ Hải V&amp;acirc;n (Hamadeco) cho biết, c&amp;ocirc;ng ty đang gi&amp;aacute;m s&amp;aacute;t c&amp;aacute;c vết nứt n&amp;agrave;y h&amp;agrave;ng ng&amp;agrave;y bằng mắt thường v&amp;agrave; kiểm tra định kỳ bằng m&amp;aacute;y.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Từ ng&amp;agrave;y vận h&amp;agrave;nh, hầm đường bộ đ&amp;atilde; xuất hiện c&amp;aacute;c vết nứt v&amp;agrave; sau 7 năm kh&amp;ocirc;ng c&amp;oacute; sự cố n&amp;agrave;o. C&amp;ocirc;ng ty đ&amp;atilde; mời c&amp;aacute;c chuy&amp;ecirc;n gia nước ngo&amp;agrave;i về t&amp;igrave;m hiểu. Tuy nhi&amp;ecirc;n, chuy&amp;ecirc;n gia cũng khẳng định đ&amp;oacute; chỉ l&amp;agrave; những vết nứt h&amp;igrave;nh ch&amp;acirc;n chim v&amp;agrave; ho&amp;agrave;n to&amp;agrave;n b&amp;igrave;nh thường, kh&amp;ocirc;ng ảnh hưởng đến kết cấu. Tổng cục Đường bộ v&amp;agrave;o kiểm tra v&amp;agrave; nhận x&amp;eacute;t an to&amp;agrave;n tuyệt đối&amp;quot;, &amp;ocirc;ng Giang n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nguy&amp;ecirc;n l&amp;agrave; c&amp;aacute;n bộ kỹ thuật gi&amp;aacute;m s&amp;aacute;t thi c&amp;ocirc;ng hầm đường bộ Hải V&amp;acirc;n trong 3 năm, &amp;ocirc;ng Giang cho hay, đ&amp;acirc;y l&amp;agrave; c&amp;ocirc;ng tr&amp;igrave;nh đầu ti&amp;ecirc;n ở Việt Nam &amp;aacute;p dụng c&amp;ocirc;ng nghệ NATM của &amp;Aacute;o bằng việc nổ m&amp;igrave;n mở đường hầm v&amp;agrave; khi c&amp;aacute;c phần tử đ&amp;aacute; ngừng dao động sau nổ m&amp;igrave;n 120 ng&amp;agrave;y sẽ tạo th&amp;agrave;nh kết cấu v&amp;ograve;m hầm nguy&amp;ecirc;n thủy từ đ&amp;aacute; suốt chiều d&amp;agrave;i của hầm. Kết cấu n&amp;agrave;y đ&amp;atilde; trở th&amp;agrave;nh dạng c&amp;acirc;n bằng mới chứ kh&amp;ocirc;ng chịu lực trực tiếp từ khối n&amp;uacute;i Hải V&amp;acirc;n ph&amp;iacute;a tr&amp;ecirc;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lớp b&amp;ecirc; t&amp;ocirc;ng, nơi xuất hiện c&amp;aacute;c vết nứt, chỉ l&amp;agrave; lớp &amp;aacute;o b&amp;ecirc;n ngo&amp;agrave;i gi&amp;uacute;p tạo h&amp;igrave;nh d&amp;aacute;ng của hầm đường bộ. Kết cấu b&amp;ecirc; t&amp;ocirc;ng cốt th&amp;eacute;p cũng chỉ xuất hiện ở hai đầu cửa hầm. Minh chứng l&amp;agrave; một đường hầm phụ đang được khai th&amp;aacute;c song song c&amp;ograve;n nguy&amp;ecirc;n lớp đ&amp;aacute; sau khi nổ m&amp;igrave;n v&amp;agrave; kh&amp;ocirc;ng bị ảnh hưởng g&amp;igrave;.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;347&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/b6/Ham-hai-van-02.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Kết cấu v&amp;ograve;ng hầm Hải V&amp;acirc;n từ đ&amp;aacute; nguy&amp;ecirc;n thủy, ph&amp;iacute;a cửa hầm được gia cố th&amp;ecirc;m v&amp;ograve;m th&amp;eacute;p chịu lực. Ảnh:&lt;em&gt;Hamadeco cung cấp&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Cũng theo chuy&amp;ecirc;n gia n&amp;agrave;y, trong qu&amp;aacute; tr&amp;igrave;nh x&amp;acirc;y dựng, cứ khoảng 10 m sẽ c&amp;oacute; khe co gi&amp;atilde;n của b&amp;ecirc; t&amp;ocirc;ng, c&amp;oacute; hệ thống chống thấm gom nước ra ngo&amp;agrave;i. Trang thiết bị đ&amp;aacute;p ứng được c&amp;aacute;c th&amp;ocirc;ng số kỹ thuật v&amp;agrave; lưu lượng 15.000 kh&amp;aacute;ch một ng&amp;agrave;y, đ&amp;ecirc;m. Do đ&amp;oacute; việc thấm dột được l&amp;yacute; giải l&amp;agrave; do hơi nước ẩm kết tụ lại, hay đơn giản l&amp;agrave; &amp;quot;những giọt mồ h&amp;ocirc;i&amp;quot; chảy ra từ chiếc &amp;aacute;o b&amp;ecirc; t&amp;ocirc;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;ocirc;ng tr&amp;igrave;nh hầm đường bộ Hải V&amp;acirc;n được khởi c&amp;ocirc;ng năm 2000 với tổng vốn đầu tư hơn 251 triệu USD (tương đương 3.465 tỷ đồng) từ nguồn vốn ODA của Ng&amp;acirc;n h&amp;agrave;ng hợp t&amp;aacute;c quốc tế Nhật Bản v&amp;agrave; vốn đối ứng trong nước. Việc x&amp;acirc;y dựng phần hầm ph&amp;iacute;a Nam do li&amp;ecirc;n doanh Đ&amp;ocirc;ng An (H&amp;agrave;n Quốc) v&amp;agrave; S&amp;ocirc;ng Đ&amp;agrave; (Việt Nam) thi c&amp;ocirc;ng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đ&amp;acirc;y l&amp;agrave; c&amp;ocirc;ng tr&amp;igrave;nh hầm đường bộ d&amp;agrave;i nhất Đ&amp;ocirc;ng Nam &amp;Aacute; (6.280 m), xuy&amp;ecirc;n qua đ&amp;egrave;o Hải V&amp;acirc;n, nối liền th&amp;agrave;nh phố Đ&amp;agrave; Nẵng v&amp;agrave; tỉnh Thừa Thi&amp;ecirc;n - Huế. Quy m&amp;ocirc; c&amp;ocirc;ng tr&amp;igrave;nh l&amp;agrave; vĩnh cửu, tốc độ thiết kế 80 km/giờ, tải trọng 30 tấn.&lt;/p&gt;', '', '', '', '', '', 'Nguyễn Đông', 'VnExpress', 0, 0, 'upload/Ham-HV.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:52:43', 'admin', '2012-11-03 01:52:43');
INSERT INTO `media` VALUES (36, 'default13518727931', '', 'media_news', '[77]', 'admin', 'Hành trình định mệnh của tàu Saigon Queen', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Sau một ng&amp;agrave;y ch&amp;ograve;ng ch&amp;agrave;nh trong b&amp;atilde;o tố, trưa 30/10, t&amp;agrave;u Saigon Queen bắt đầu nghi&amp;ecirc;ng, thuyền trưởng Nguyễn Minh Lu&amp;acirc;n quyết định ph&amp;aacute;t t&amp;iacute;n hiệu cấp cứu. 18 thuyền vi&amp;ecirc;n được cứu sống, c&amp;ograve;n &amp;ocirc;ng v&amp;agrave; 3 người bị mất t&amp;iacute;ch tr&amp;ecirc;n biển do s&amp;oacute;ng qu&amp;aacute; lớn.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	L&amp;agrave; một thuyền trưởng kỳ cựu với gần 30 năm trong nghề, &amp;ocirc;ng Nguyễn Minh Lu&amp;acirc;n năm ngo&amp;aacute;i được khen thưởng v&amp;igrave; cứu một chiếc t&amp;agrave;u hơn 30.000 tấn chở th&amp;eacute;p cuộn tho&amp;aacute;t khỏi sự cố tr&amp;ecirc;n biển. C&amp;aacute;ch nay hơn một th&amp;aacute;ng, &amp;ocirc;ng khởi h&amp;agrave;nh t&amp;agrave;u Saigon Queen c&amp;ugrave;ng với 21 thuyền vi&amp;ecirc;n chở h&amp;agrave;ng đến Ấn Độ. Như c&amp;oacute; điềm b&amp;aacute;o trước, khi mới đến v&amp;ugrave;ng biển Vũng T&amp;agrave;u, m&amp;aacute;y của Saigon Queen bị trục trặc, t&amp;agrave;u phải dừng lại sửa chữa xong mới c&amp;oacute; thể tiếp tục h&amp;agrave;nh tr&amp;igrave;nh.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chiều 29/10, sau 3 ng&amp;agrave;y rời khỏi Yangon (Myanmar), t&amp;agrave;u tới v&amp;ugrave;ng biển Sri Lanka th&amp;igrave; bất ngờ gặp b&amp;atilde;o. S&amp;aacute;ng 30/10, cơn b&amp;atilde;o đ&amp;atilde; mạnh th&amp;ecirc;m, Saigon Queen gửi điện về chủ t&amp;agrave;u th&amp;ocirc;ng b&amp;aacute;o: &amp;quot;Do gặp thời tiết xấu n&amp;ecirc;n h&amp;agrave;ng bị x&amp;ocirc;, t&amp;agrave;u phải quay đầu xu&amp;ocirc;i d&amp;ograve;ng để chằng buộc lại&amp;quot;. Đến hơn 12h trưa, t&amp;igrave;nh h&amp;igrave;nh diễn biến xấu, t&amp;agrave;u bắt đầu bị nghi&amp;ecirc;ng v&amp;agrave; thuyền trưởng đ&amp;atilde; ph&amp;aacute;t t&amp;iacute;n hiệu b&amp;aacute;o động cấp cứu qua vệ tinh, đồng thời chuẩn bị phương &amp;aacute;n tho&amp;aacute;t hiểm cho đo&amp;agrave;n thủy thủ.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;376&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/89/cuuhosaigonqueen6.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Thuyền trưởng Nguyễn Minh Lu&amp;acirc;n vẫn đang mất t&amp;iacute;ch. L&amp;uacute;c gặp nạn, &amp;ocirc;ng Lu&amp;acirc;n vẫn mặc &amp;aacute;o phao.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Đại ph&amp;oacute; Nguyễn Quốc T&amp;aacute;m, một trong 18 người được t&amp;agrave;u Skipper cứu sống kể lại, hai con s&amp;oacute;ng to đ&amp;atilde; d&amp;igrave;m s&amp;acirc;u mũi t&amp;agrave;u xuống, nước tr&amp;agrave;n &amp;agrave;o &amp;agrave;o v&amp;agrave;o khiến t&amp;agrave;u nghi&amp;ecirc;ng sang mạn phải. Tất cả thuyền vi&amp;ecirc;n đ&amp;atilde; l&amp;ecirc;n boong, mặc &amp;aacute;o phao v&amp;agrave; nhận lệnh rời t&amp;agrave;u. 16 người l&amp;ecirc;n xuồng cứu sinh số 2, hạ xuồng th&amp;agrave;nh c&amp;ocirc;ng. Trong khi đ&amp;oacute; số người c&amp;ograve;n lại t&amp;igrave;m c&amp;aacute;ch l&amp;ecirc;n xuồng cứu sinh số 1 ở b&amp;ecirc;n phải mạn t&amp;agrave;u.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Trong l&amp;uacute;c leo thang d&amp;acirc;y từ t&amp;agrave;u xuống xuồng cứu sinh, m&amp;aacute;y trưởng Ho&amp;agrave;ng Văn Ban (58 tuổi) kh&amp;ocirc;ng may bị trượt ch&amp;acirc;n ng&amp;atilde; xuống biển. C&amp;ograve;n thợ m&amp;aacute;y Phạm Ph&amp;uacute; Hữu (28 tuổi) kh&amp;ocirc;ng hiểu v&amp;igrave; sao lại quay lại t&amp;agrave;u rồi cũng bị mất t&amp;iacute;ch. Thủy thủ trưởng Trần Văn Đề (54 tuổi) đ&amp;atilde; ngồi trong xuồng cứu sinh nhưng bị một cơn s&amp;oacute;ng mạnh đ&amp;aacute;nh bật ra khỏi xuồng, cuốn ch&amp;igrave;m v&amp;agrave;o ch&amp;acirc;n vịt t&amp;agrave;u mất t&amp;iacute;ch&amp;quot;, anh T&amp;aacute;m nghẹn ng&amp;agrave;o kể.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cũng theo anh T&amp;aacute;m, xuồng cứu sinh số 1 cũng được hạ xuống th&amp;agrave;nh c&amp;ocirc;ng v&amp;agrave; c&amp;oacute; 3 người ở tr&amp;ecirc;n.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tr&amp;ecirc;n đất liền, ngay khi nhận được t&amp;iacute;n hiệu cấp cứu của Saigon Queen, C&amp;ocirc;ng ty Th&amp;ocirc;ng tin h&amp;agrave;ng hải (Cục H&amp;agrave;ng hải Việt Nam) lập tức ph&amp;aacute;t t&amp;iacute;n hiệu cầu cứu đến tất cả t&amp;agrave;u thuyền gần nơi t&amp;agrave;u ch&amp;igrave;m để t&amp;igrave;m sự cứu trợ. M&amp;atilde;i đến 21h, t&amp;agrave;u Pacific Skipper (mang cờ Hy Lạp) ở gần đ&amp;oacute; đ&amp;atilde; nhận được t&amp;iacute;n hiệu v&amp;agrave; đến ứng cứu. Nhưng do b&amp;atilde;o lớn, trời tối, t&amp;agrave;u n&amp;agrave;y chỉ cứu được 3 thuyền vi&amp;ecirc;n tr&amp;ecirc;n phao cứu sinh số 1, ở khu vực ph&amp;iacute;a Nam vịnh Bengal. Trong số họ c&amp;oacute; một người bị thương.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;399&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/89/ong-tranvande.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Thủy thủ trưởng Trần Văn Đề đ&amp;atilde; l&amp;ecirc;n được xuồng cứu sinh nhưng bị một cơn s&amp;oacute;ng mạnh đ&amp;aacute;nh bật ra khỏi xuồng v&amp;agrave; mất t&amp;iacute;ch.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Đến khuya 30/10, Pacific Skipper đ&amp;atilde; t&amp;igrave;m thấy tiếp xuồng cứu sinh thứ hai với 16 người. Trong qu&amp;aacute; tr&amp;igrave;nh vật lộn với s&amp;oacute;ng biển, một số thuyền vi&amp;ecirc;n đ&amp;atilde; mệt lả, c&amp;oacute; người bị thương. Trong gi&amp;oacute; b&amp;atilde;o, thuyền trưởng Lu&amp;acirc;n đ&amp;atilde; giữ thang cho từng thuyền vi&amp;ecirc;n lần lượt l&amp;ecirc;n t&amp;agrave;u. Khi tất cả 15 thuyền vi&amp;ecirc;n đ&amp;atilde; rời xuồng cứu sinh, &amp;ocirc;ng cuối c&amp;ugrave;ng bước l&amp;ecirc;n thang d&amp;acirc;y. Tuy nhi&amp;ecirc;n, khi mới leo được v&amp;agrave;i bậc thang, vị thuyền trưởng 51 tuổi n&amp;agrave;y đ&amp;atilde; tuột tay, rơi xuống biển. &amp;quot;Thuyền trưởng Nguyễn Minh Lu&amp;acirc;n cũng mặc &amp;aacute;o phao, nhưng chiến đấu c&amp;ugrave;ng anh em suốt từ s&amp;aacute;ng đến chiều, qu&amp;aacute; đuối sức, kh&amp;ocirc;ng b&amp;aacute;m d&amp;acirc;y nổi n&amp;ecirc;n bị rơi xuống biển&amp;quot;, anh T&amp;aacute;m kể lại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	T&amp;agrave;u Saigon Queen (d&amp;agrave;i 102 m, rộng 17 m) được x&amp;aacute;c định đ&amp;atilde; bị ch&amp;igrave;m ở tọa độ 07-59N; 084-07E tr&amp;ecirc;n v&amp;ugrave;ng biển Sri Lanka. 18 thuyền vi&amp;ecirc;n đ&amp;atilde; được cứu nạn, c&amp;ograve;n thuyền trưởng Lu&amp;acirc;n, thủy thủ trưởng Trần Văn Đề v&amp;agrave; 2 người kh&amp;aacute;c đ&amp;atilde; bị mất t&amp;iacute;ch giữa biển khơi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	S&amp;aacute;ng 1/11, trong ng&amp;ocirc;i nh&amp;agrave; ở con hẻm nhỏ phường 22, quận B&amp;igrave;nh Thạnh, b&amp;agrave; Nguyễn Thị Thảo, vợ thủy thủ trưởng Trần Văn Đề, kh&amp;oacute;c ngất. H&amp;agrave;ng x&amp;oacute;m, đồng đội cũ cũng như b&amp;agrave; con đ&amp;atilde; c&amp;oacute; mặt để an ủi động vi&amp;ecirc;n hai mẹ con v&amp;agrave; c&amp;ugrave;ng chờ tin. &amp;quot;Anh ấy n&amp;oacute;i đi chuyến n&amp;agrave;y l&amp;agrave; lần cuối c&amp;ugrave;ng, rồi sẽ về sửa nh&amp;agrave;, kh&amp;ocirc;ng đi biển nữa. Lần n&amp;agrave;o gọi điện về cũng cứ hỏi &amp;#39;đ&amp;atilde; l&amp;agrave;m thủ tục h&amp;oacute;a gi&amp;aacute; nh&amp;agrave; xong chưa để về sửa nh&amp;agrave;&amp;#39;. Vậy m&amp;agrave;...&amp;quot;, b&amp;agrave; Thảo kh&amp;oacute;c nấc.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;315&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/89/khoc.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;B&amp;agrave; Nguyễn Thị Thảo, vợ thủy thủ trưởng Trần Văn Đề kh&amp;oacute;c ngất v&amp;igrave; vẫn chưa thấy tin tức g&amp;igrave; của chồng. Ảnh:&amp;nbsp;&lt;em&gt;Hữu C&amp;ocirc;ng&lt;/em&gt;.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Suốt hai h&amp;ocirc;m nay b&amp;agrave; ấy kh&amp;ocirc;ng ăn uống g&amp;igrave;, cứ bảo đợi chồng về, tối qua cũng ngồi suốt cả đ&amp;ecirc;m trước cửa chờ tin chồng&amp;quot;, một người h&amp;agrave;ng x&amp;oacute;m của b&amp;agrave; Thảo cho biết.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngồi lặng y&amp;ecirc;n trong g&amp;oacute;c nh&amp;agrave;, Trần Văn Thọ, con trai duy nhất của &amp;ocirc;ng Đề cũng kh&amp;ocirc;ng cầm được nước mắt, hướng nh&amp;igrave;n ra cổng chờ tin ba. Thọ đang học năm 2 trường ĐH Kỹ thuật c&amp;ocirc;ng nghệ S&amp;agrave;i G&amp;ograve;n, sắp phải thi nhưng Thọ chẳng c&amp;ograve;n tinh thần n&amp;agrave;o để học b&amp;agrave;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tại nh&amp;agrave; thuyền trưởng Nguyễn Minh Lu&amp;acirc;n cũng ở quận B&amp;igrave;nh Thạnh, 2 đứa con trai, vợ v&amp;agrave; anh em cũng đang tập trung chờ tin &amp;ocirc;ng. &amp;quot;Cứ 15 ph&amp;uacute;t mọi người lại mở m&amp;aacute;y t&amp;iacute;nh, điện thoại để đọc b&amp;aacute;o, xem c&amp;oacute; tin tức g&amp;igrave; mới của anh Lu&amp;acirc;n kh&amp;ocirc;ng. Cả hai ng&amp;agrave;y nay t&amp;ocirc;i kh&amp;ocirc;ng chợp mắt được ch&amp;uacute;t n&amp;agrave;o v&amp;igrave; lo lắng, c&amp;ograve;n vợ Lu&amp;acirc;n th&amp;igrave; cứ ngất l&amp;ecirc;n ngất xuống&amp;quot;, &amp;ocirc;ng L&amp;acirc;m, người nh&amp;agrave; thuyền trưởng Lu&amp;acirc;n cho biết.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Bố đ&amp;atilde; giữ thang cho mấy anh thủy thủ l&amp;ecirc;n t&amp;agrave;u hết rồi mới l&amp;ecirc;n t&amp;agrave;u. Khi bố l&amp;ecirc;n kh&amp;ocirc;ng c&amp;ograve;n ai giữ thang nữa. S&amp;oacute;ng to gi&amp;oacute; lớn đ&amp;atilde; đẩy bố rơi xuống biển&amp;quot;, con trai thuyền trưởng Lu&amp;acirc;n vừa tốt nghiệp Đại học Ng&amp;acirc;n h&amp;agrave;ng nghẹn giọng n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đến chiều 1/11, chủ t&amp;agrave;u l&amp;agrave; C&amp;ocirc;ng ty Vận tải biển S&amp;agrave;i G&amp;ograve;n (Saigon Ship) hiện vẫn chưa c&amp;oacute; th&amp;ecirc;m th&amp;ocirc;ng tin g&amp;igrave; về 4 người bị mất t&amp;iacute;ch. Việc t&amp;igrave;m kiếm vẫn đang được tiếp tục đến hy vọng cuối c&amp;ugrave;ng.&lt;/p&gt;', '', '', '', '', '', 'Hữu Công', 'VnExpress', 0, 0, 'upload/ong-tranvande.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:52:07', 'admin', '2012-11-03 01:52:07');
INSERT INTO `media` VALUES (37, 'default13518727931', '', 'media_news', '[77]', 'admin', 'The ship&#039;s fateful journey Saigon Queen', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;After a day of anti-lemon in storms, lunch 30/10, Saigon Queen ship began to tilt, the captain Nguyen Minh Luan decided to emit signals. 18 crew members were rescued, and he and three people were missing in the sea due to big waves.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	As a senior captain with nearly 30 years in the profession, he Nguyen Minh Luan last year was more reward for saving a ship of 30,000 tons of steel out of incidents at sea.&amp;nbsp;More than a month ago, his ship departs Saigon Queen freighter with 21 crew members to India.&amp;nbsp;As omens, new to the waters of Vung Tau, machine of Saigon Queen malfunction, ship repair to stop complete can continue the journey.&lt;/p&gt;\r\n&lt;p&gt;\r\n	The afternoon of 29/10, three days after leaving Yangon (Myanmar), the train to the Sri Lankan waters, the unexpected typhoons.&amp;nbsp;The morning of 30/10, the storm was more powerful, Saigon Queen sent a message on the ship notice: &amp;quot;Due to encounter bad weather was flushed, the first ship to go down the line to mooring.&amp;quot;More than 12 noon, the situation deteriorate, the ship began to tilt and Captain emergency alarm signal via satellite while preparing for crew escape plan.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;376&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/89/cuuhosaigonqueen6.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Captain Nguyen Minh Luan still missing.&amp;nbsp;When in distress, Mr. Gong was wearing a life jacket.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Deputy Nguyen Quoc Thang Tam, one of 18 the boat Skipper save lives, two waves to was sinking deep bow down, spill water rushing into making the ship tilted to starboard.&amp;nbsp;All crew members were on board, life jacket and ordered to leave the ship.&amp;nbsp;16 person lifeboat No. 2, lowered success.&amp;nbsp;While the rest try to lifeboat number 1 in the right side of the ship.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;While climbing the rope ladder from the ship into lifeboats, Hoang Van Ban (58) unfortunately slipped and fell into the sea. Rabbits the Phu Huu Pham (28 years) does not understand why it is back to the ship and also missing. Sailors Tran problem (54) has to sit in the lifeboat but was a strong wave knocked out of the boat, the book fell into the propeller missing &amp;quot;, August he choked matter.&lt;/p&gt;\r\n&lt;p&gt;\r\n	According to his August, No. 1 lifeboat was lowered and 3 above.&lt;/p&gt;\r\n&lt;p&gt;\r\n	On land, immediately after receiving the emergency signal of Saigon Queen, Maritime Company Information (Vietnam National Maritime Bureau) immediately signaled for help to all vessels near the shipwreck to find relief .&amp;nbsp;Until 21h, ship Pacific Skipper (Greek flag) nearby received signal and to rescue.&amp;nbsp;But due to storms, the dark, the ship crew rescued 3 on life buoy No. 1, in the southern Bay of Bengal.&amp;nbsp;Among them are injured.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;399&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/89/ong-tranvande.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Minister Tran Van The crew on the lifeboat but was a strong wave knocked out of the boat and disappeared.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	By the late 30/10, Pacific Skipper found a second lifeboat with 16 people.&amp;nbsp;In the process of struggling with the waves, some crew members were exhausted, injured.In the storm, Captain Wheel turn hold the ladder for each crew member on board.When all 15 lifeboat crew had left, he finally stepped up to the rope ladder.However, when climbing a few stairs, this 51-year-old captain has hand slipped, fell into the sea.&amp;nbsp;&amp;quot;Captain Nguyen Minh Luan wearing life jackets, but to fight with you from morning until evening, too tired, not stick to the bottom of the pot should fall into the sea,&amp;quot; he said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Saigon Queen ship (length 102 m, width 17 m) is defined has sunk in coordinates 07-59N; 084-07E in Sri Lankan waters.&amp;nbsp;18 crew members were rescued victims, and Captain Luan, Minister Tran Van The sailors and two others were missing the sea.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Morning of 1/11, in the house in an alley ward 22, Binh Thanh, Nguyen Thi Thao, sailors wife Tran Van The, cry fainted.&amp;nbsp;Neighbors, as well as her former teammates were on hand to comfort the mother and son and also for private.&amp;nbsp;&amp;quot;He said this trip is the last time, then going home repair, do not go to the beach again. Last call for and kept asking &amp;#39;procedures have been done yet to fix the price.&amp;#39; Yet. ... &amp;quot;she Discussion cry hiccups.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img border=&quot;1&quot; height=&quot;315&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/89/khoc.jpg&quot; width=&quot;490&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Wife, Nguyen Thi Thao Tran sailors cry fainted problem still have not heard any news of her husband.Photo: Hữu C&amp;ocirc;ng&lt;em&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;quot;For two days she did not eat anything, just told to wait her husband, last night sat all night in front of the door waiting for her husband&amp;quot;, a neighbor of Ms. Thao said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sitting quietly in the corner, Tran Van Tho, the only son of his proposal did not stop crying, overlooking the port waiting three.&amp;nbsp;Life is learning in 2 Technical University of Saigon technology, going to poetry but had no spirit to study.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Captain Nguyen Minh Luan also in Binh Thanh District, two sons, his wife and children are also focusing waiting for him.&amp;nbsp;&amp;quot;Every 15 minutes people turn on the computer, the phone to read the newspaper, watch the news of his new London. Both days I did not sleep at all because of anxiety and even immoral, so passed up passed down, &amp;quot;said Lam, the London captain said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;I&amp;#39;ve kept straight for the camera crew on board before the train. When his father to no one to hold the ladder. River winds pushed into the ocean&amp;quot;, Captain Wheel son just graduated Bank choking voice.&lt;/p&gt;\r\n&lt;p&gt;\r\n	In the afternoon 1/11, shipowners Shipping Company Saigon (Saigon Ship) does not have any more information about 4 people missing.&amp;nbsp;The search still continues to the last hope.&lt;/p&gt;', '', '', '', '', '', 'Hữu Công', 'VnExpress', 0, 0, 'upload/ong-tranvande.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:52:07', 'admin', '2012-11-03 01:52:07');
INSERT INTO `media` VALUES (38, 'default13518730341', '', 'media_news', '[77]', 'admin', 'abc', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 23:17:50', 'admin', '2012-11-02 23:17:32');
INSERT INTO `media` VALUES (39, 'default13518730342', '', 'media_news', '[77]', 'admin', 'def', '', '', 'en', '', '', '', '', '', '', '', 'sdsds', 'sd', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 23:17:14', 'admin', '2012-11-02 23:17:14');
INSERT INTO `media` VALUES (40, 'default13518730341', '', 'media_news', '[77]', 'admin', 'def', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 23:17:50', 'admin', '2012-11-02 23:17:32');
INSERT INTO `media` VALUES (41, 'default13518734921', '', 'media_news', '[77]', 'admin', 'abc', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/20121031-185106-1-xdang.jpeg', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 23:25:09', 'admin', '2012-11-02 23:24:52');
INSERT INTO `media` VALUES (42, 'default13518734922', '', 'media_news', '[77]', 'admin', 'def', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/20121031-185106-1-xdang.jpeg', 0, '', '', '', 0, 0, 'active', '', '2012-11-02 23:24:52', 'admin', '2012-11-02 23:24:52');
INSERT INTO `media` VALUES (43, 'default13518726071', '', 'media_news', '[77]', 'admin', 'Many cracks in the Hai Van Pass Tunnel', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Hai Van Tunnel century works long vertical cracks appear more horizontal waterproof cause.&amp;nbsp;But the management company representative confirmed that these cracks do not affect the structure and safety of the tunnel.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Border south of&amp;nbsp;&lt;a href=&quot;http://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=en&amp;amp;rurl=translate.google.com.vn&amp;amp;sl=vi&amp;amp;tl=en&amp;amp;twu=1&amp;amp;u=http://vnexpress.net/gl/xa-hoi/2009/12/3ba1655c/&amp;amp;usg=ALkJrhgwaaDv9q5mXGR6XMMPd_i8FsFjxg&quot;&gt;Hai Van tunnel&lt;/a&gt;&amp;nbsp;about 20 m appear more horizontal cracks along the sides of the roof and the road.&amp;nbsp;Regularly through the tunnel, car driver named Dung Le Duan street, Da Nang said, sitting in the car can easily see the cracks.&amp;nbsp;&amp;quot;I fear they could lead to danger,&amp;quot; Dung said.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;Photo: Yellow.&quot; height=&quot;328&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/b6/Ham-HV.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Hai Van Tunnel was put into use in June / 2005.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Ho&amp;agrave;ng H&amp;agrave;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	In his report to the General Department of Roads, Road Management Zone V said, after their extraction (6/2005), the tunnel has appeared a number of damaged reinforced concrete structures, vertical cracks, horizontal cracks on the dome and into the basement, causing water seepage and leaking down the running lanes.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Specifically, in the roof of the tunnel cracks are spread to many other locations causing water to leak from the top roof of the tunnel.&amp;nbsp;Crack length of 1-7 m, width less than 1 mm.&amp;nbsp;Throughout the length of the tunnel there are many cracks in reinforced concrete structures, the width of 1-2 mm and a length of 1-7 m, and the largest is 12 m, depth of 5 mm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Afternoon 1/11, Mr. Cao Ba Giang, deputy director of the Management Company Limited and exploit road tunnels of Hai Van (Hamadeco) said the company is monitoring the cracks every day with the naked eye and control machine periodically.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;From day operation, the tunnel appeared cracks and after 7 years without any problems. Co. has invited foreign experts to find out. Nevertheless, experts also confirmed that only cracks crow&amp;#39;s-feet and completely normal, do not affect the structure. General Road test and complete safety review, &amp;quot;Jiang said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Former technical staff supervision to the Hai Van Tunnel in 3 years, Jiang said, this is the first in Vietnam to apply the Austrian NATM technology by blasting open the tunnel and when the stone elements stop blasting vibration after 120 days will be made up of the original arch tunnel structure from the length of the basement rocks.This structure has become a new form of balance, not bearing directly from the Hai Van mountain top.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Concrete, where the appearance of cracks, just the outer jacket to help create the shape of the tunnel.&amp;nbsp;Reinforced concrete structures also appear at both ends of the tunnel.&amp;nbsp;Proved to be a side tunnel being exploited parallel intact rock after blasting and not be affected.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;347&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/df/b6/Ham-hai-van-02.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Within the Hai Van tunnel structure from the primitive rocks, the basement door was reinforced bearing steel arches.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Hamadeco provide&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	According to the expert, in the process of building, just about 10 meters of concrete expansion joints, waterproofing systems include water out.&amp;nbsp;Equipment meets the specifications and traffic of 15,000 visitors a day, at night.&amp;nbsp;Thus the leak permeability is explained by the wet steam clumping, or simply &amp;quot;the sweat&amp;quot; flowing out of a concrete jacket.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hai Van Tunnel work was started in 2000 with a total investment of more than $ 251 million (equivalent to 3465 billion) from the Bank&amp;#39;s ODA Japanese international cooperation and local counterpart funds.&amp;nbsp;The construction of the tunnel south of the joint venture Dong An (Korea) and Song Da (Vietnam) construction.&lt;/p&gt;\r\n&lt;p&gt;\r\n	This is the longest road tunnel in Southeast Asia (6280 m), through Hai Van Pass, connecting the city of Da Nang and Thua Thien-Hue.&amp;nbsp;Scale works is eternal, design speed of 80 km / hour, 30 tons load.&lt;/p&gt;', '', '', '', '', '', 'Nguyễn Đông', 'VnExpress', 0, 0, 'upload/Ham-HV.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:52:43', 'admin', '2012-11-03 01:52:43');
INSERT INTO `media` VALUES (44, 'default13518746251', '', 'media_news', '[77]', 'admin', 'abc', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/20121031-185106-1-xdang.jpeg', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 23:43:57', 'admin', '2012-11-02 23:43:45');
INSERT INTO `media` VALUES (45, 'default13518746251', '', 'media_news', '[77]', 'admin', 'def', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/20121031-185106-1-xdang.jpeg', 0, '', '', '', 0, 0, 'delete', '', '2012-11-02 23:43:57', 'admin', '2012-11-02 23:43:45');
INSERT INTO `media` VALUES (93, 'default13518823091', '', 'media_partners', '[68]', 'admin', 'Petrolimex Sài Gòn', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/LogoPetrolimex160410.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:51:49', 'admin', '2012-11-03 01:51:49');
INSERT INTO `media` VALUES (94, 'default13518823091', '', 'media_partners', '[68]', 'admin', 'Petrolimex Sai Gon', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/LogoPetrolimex160410.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:51:49', 'admin', '2012-11-03 01:51:49');
INSERT INTO `media` VALUES (47, 'default13518638111', '', 'media_news', '[76]', 'admin', 'Hand Pumps - small martial that', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Until now, most people are always thinking advertising to attract new vision of consumers. However, the ad placement on the hand pump at the gas station&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Until now, most people are always thinking advertising to attract new vision of consumers. However, the ad placement on the hand pump at the gas station - a small position seemed hard to put ad image showed a different highlight OTS (opportunity to see). Since the beginning of April 2011, the official the Kissy Vietnam will promote products masks the active fiber Kissy hand position in the entire pump system Petrolimex shop in Ho Chi Minh City. You can stand 15 minutes to observe the gas at crowds (7:30 - 9 am, 16h30 - 19h) will see over 95% of clients in the fuel pump hand look at the behavior when being pump. This feature is sometimes hard to explain, just know that it is the behavior of the overwhelming majority gave this ad placements of OTS amazing.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	To optimize the effectiveness of advertising customers, from Lap constantly to create, find out the plans, designs, new advertising material, is aimed at by the customer&amp;#39;s brand and create sympathy in the eyes of consumers. Masks the active fiber products Kissy - a new invention patents with many outstanding features to help protect the health breakthrough will certainly recall effectiveness, sales with ad in hand pump gas station on the entire system of the right to exploit Media advertising Self-Making in Ho Chi Minh City.&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:45:39', 'admin', '2012-11-03 02:45:39');
INSERT INTO `media` VALUES (48, 'default13518637031', '', 'media_news', '[76]', 'admin', 'Support independent Petrolimex improved working environment for Staff', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;text-align: justify; &quot;&gt;Service quality of a business depends a lot on the attitude and morale of the staff because they are in direct contact with customers. Therefore, in order to improve the quality of service, one of the most important is to improve the working environment, concern and care for the employee&amp;#39;s life.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Service quality of a business depends a lot on the attitude and morale of the staff because they are in direct contact with customers. Therefore, in order to improve the quality of service, one of the most important is to improve the working environment, concern and care for the employee&amp;#39;s life.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Time employee at the gas station to stand continuously during work time: 6-8 hours per day. Working conditions like this much less impact on mental health and their work. With the desire to improve the working environment for employees petrol, as well as to improve service quality for a broad audience to refuel, and turn a gas station into a public place clean, nice, friendly , civilization, Auto Lap proposed implementation plan to build multi Columns in the gas station of Petrolimex.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	The project exploits the maximum saving space station complex by many smart functions in a pillar, help planning a gas station, clean, convenient, modern and more civilized. In the design, Tu Lap given function seat in Columns versatile, this is where the staff will take turns to sit overnight in the time off work to ensure health. In this pillar is also the location for drinking water hygiene, resolve the situation to get water on the container or on the current petrol pump head.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Auto Lap survey area and not the actual time at the gas station, now in their implementation of the design.&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:46:10', 'admin', '2012-11-03 02:46:10');
INSERT INTO `media` VALUES (49, 'default13518699381', '', 'media_news', '[77]', 'admin', 'Son Tinh storm damage more than 7500 billion', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Cơn b&amp;atilde;o mạnh nhất 30 năm qua đ&amp;atilde; khiến Th&amp;aacute;i B&amp;igrave;nh thiệt hại tới hơn 2.600 tỷ đồng, Nam Định 1.500 tỷ đồng, Hải Ph&amp;ograve;ng 1.000 tỷ đồng. Nhiều diện t&amp;iacute;ch c&amp;acirc;y d&amp;agrave;i ng&amp;agrave;y kh&amp;ocirc;ng thể kh&amp;ocirc;i phục sản xuất v&amp;igrave; đ&amp;atilde; qu&amp;aacute; thời vụ.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Morning of 2/11, Ministry of Agriculture and Rural Development meeting with local authorities to discuss the restoration of production after Hurricane Son Tinh.According to the latest statistics of the provinces, the most powerful storm in 30 years has caused more harm than 7,500 billion VND.&lt;/p&gt;\r\n&lt;p&gt;\r\n	In particular, the most severe of the Pacific (2662 billion), Nam Dinh (1535 billion), Haiphong (nearly 1,000 billion).&amp;nbsp;Some provinces located inland also damage the heavy as Hai Duong (over 800 billion), Hung Yen (600 billion), Henan (350) ...&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;329&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/e0/0f/thap_4.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;180 m high TV tower, worth tens of billions of dong in Nam Dinh storm knocked over.&amp;nbsp;Photo: Ho&amp;agrave;ng H&amp;agrave;&lt;em&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Agriculture accounts for a large proportion of the total damage, especially cultivation of tens of thousands of hectares of winter wheat.&amp;nbsp;In addition, some specific production area as 2,000 acres of corn of Henan; 10,000 tons of salt and salt Nam Dinh People ...&amp;nbsp;&amp;quot;Look at my banana garden crying, do not want to grow anymore,&amp;quot; Deputy Director of the Department of Agriculture Hung Yen Doan Thi Chai said about 900 hectares of bananas worth $ 300 billion of the province.&amp;nbsp;In addition to bananas, this province has fallen to 1,400 ha of maize by storm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Representatives of the city of Hai Phong said, to restore production, local development will try next spring rice area to compensate.&amp;nbsp;&amp;quot;We support the recommendations of hybrid rice, if rice is better,&amp;quot; Deputy Director of the Department of Agriculture Hai Phong Duong Duc Tung said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Due to seasonal too, in front of most local proposals to support short-day plant, leaf-eating plants to restore production.&amp;nbsp;To avoid oversupply lessons of the previous years, are vigilant when it comes to potatoes.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img height=&quot;329&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/e0/0f/bao_5a.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;People Yan Zheng Van Toan (Van Ly Nam Dinh) pointing stock submerged in salt water and then said: &amp;quot;I lost tens of millions, know what to do to save now. Doing this job all year of interest is over 20 million white hands &amp;quot;.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Ho&amp;agrave;ng H&amp;agrave;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	First proposed by the provinces, Deputy Minister of Agriculture Bong proposal from national reserves to support the same.&amp;nbsp;Depending on local demand money or something.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Due to the nature of cultivation, no accurate statistics are even damage, Deputy Minister of Agriculture Vu Van Tam recommendations next week provinces report on the damage and specific proposal.&amp;nbsp;&amp;quot;For now, it should promote the creativity of the people to overcome the consequences of floods,&amp;quot; Mr Tam said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Formed from the 23/10, Son Tinh storm began affecting the central coast at 27/10.The storm has now reached level 14 scans along the coast of the North Central Coast and North Coast.&amp;nbsp;In addition to property damage, 8 dead, 3 still missing and almost 100 injured ...&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Hoàng Hà', 'VnExpress', 0, 0, 'upload/thap_4.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:53:13', 'admin', '2012-11-03 01:53:13');
INSERT INTO `media` VALUES (51, 'default13518667341', '', 'media_news', '[76]', 'admin', '8 Ad Position At Petrol Station', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Based on the results of market research on the main aspects of consumer behavior at the gas station was made on 04 May 2009, we have made specific and reliable data as a basis for research and determine the position at a gas station in sight of the customer to refuel, and is where you can place your ads to attract the attention of many customers when to refuel or sideways gas station.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	Based on the results of market research on the main aspects of consumer behavior at the gas station was made on 04 May 2009, we have made specific and reliable data as a basis for research and determine the position at a gas station in sight of the customer to refuel, and is where you can place your ads to attract the attention of many customers when to refuel or sideways gas station.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	PROCESS gas (Source: Camera Petrolimex at 18 Store)&lt;/div&gt;\r\n&lt;div&gt;\r\n	Each gas customers through three stages:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	The average time for a single gas is from 30 seconds to 1 minute 15 seconds. This time not too long but enough for consumers to have time to look around and save the most impressive of them.&lt;/div&gt;\r\n&lt;div&gt;\r\n	Based on the behavior of consumers as well as the location and the space station, with 8 ad placements are planning intent to catch every eye on petrol and pedestrians.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;1. Billboard on roof&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	With the gas stations along the highway, ads are placed in all three triple chance to see both the direction of travel. With cheaper rents a billboard, but you can increase more than 4 people see when hiring ad placement on the roof from 2 to 3 gas stations in different locations.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;2. The space between two pillars&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	With the 32 gasoline stations fell 4 has two facades in urban Ho Chi Minh City, the road was immediately attracted by the ads between two pillars with OTS double billboard that fell four positions. But the 4-stroke gas stations at the intersection between two pillars ads of people looking at the most is when they start from the street turns into station xang.Day is the center of the gas station. Advertising is seen by the people on the road and to refuel. Advertising frame is beautifully designed, luxurious, sure. In this position, advertisers have the opportunity to contact customers an average of 52s.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;3. Gas cylinder&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	From the moment the customer at the gas station to find a location, open the trunk and wait to buy fuel accounted for the longest time in the entire process gas. At this time, customers were attracted by the strange things at a distance of 1 - 2 m. Gas cylinder at eye level position with them: eyes only 1 - 1.5 m, so 99% of fueling time 5s-7s to watch (with outdoor advertising: Average 1s- 2s). Each week at least one use of motorcycles seen the ad on the gas cylinder. With the gas station at the intersection 4, passersby can see your ad in this position.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;4. Pillars supporting the roof&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Eye position this person to refuel from 2-3m - very close distance, line of sight. Advertising opportunities contact Customer eyes 52s average (average refueling time). Ads are facing in the four sides of the pillar customers in any ramification also visible, including traveling on the road.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;5. Hand pump&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	At employee hand pump on the fuel tank to pump gas into the car, the eyes of the customer, looking at the clock to check just look at the gasoline pump hand as this is the point of contact between their car with a foreign material. Moreover, at this time, they look at petrol pump employees filled out or not. So, hand pump is one of the attractive location close to the customer.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;6. Columns icon&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Ads perpendicular position and proximity to the human eye on the road. Ads placed in this location have the opportunity to double the number of people who see with two-way street.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;7. Wall gas station&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Position perpendicular to the direction of view and eye level on the road. An advertising message or the same eye-catching images will definitely attract the attention of customers.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;8. Stands&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Depending on the location and space of each gas station, consider placing booths. All who flow into the gas station will see the booth, if they are deemed not happen congestion, reduced sales of gas stations because so many people want to try out products, new stalls are located.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	All ad placements are designed with size ratio, beautiful materials, suitable architecture to attract attention and create sympathy for people on the road and refuel. This is the first communication channel architecture combined with beauty advertising space and environmentally friendly.&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:45:55', 'admin', '2012-11-03 02:45:55');
INSERT INTO `media` VALUES (53, 'default13518663171', '', 'media_news', '[76]', 'admin', 'Communications Student from Lap Practice', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Last time Tu Lap Communications has continued to provide opportunities for students majoring in: Electronic, economic, maketting ... participate in internship and work in the company. Auto Lap is the guidance, support for four students are practicing in the company from January to March 2010.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	With the philosophy &amp;quot;Innovation comes from knowledge&amp;quot;, knowledge of communication in many ways, Communications Tu Lap want to equip the students with more knowledge, baggage in life, helping you to improve your understandingto know to better serve future work. That was the sole purpose to Tu Lap get students to practice.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Knowledge is the key to success&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Independent operating company specialized in the field of advertising and communications. Auto Lap is the first in Vietnam to implement new advertising model on the gas station. From the initial success obtained, the Free Lap idea develop a new communication channel on LED technology. Products for this new idea is LED360, which was the first application in the representation of the player character car.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	LED360 is in the launch phase, so there are opportunities as well as challenges for the students to show their ability and bravery. Tu Lap always respect the value of creativity and create the best conditions for students to make new ideas work.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	The students are practicing in Media Self-Making&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Tu Lap will continue to get students to practice in April after students this phase completed his apprenticeship.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	For more information, please contact:&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;Communications Company Auto Lap:&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;Headquarters: LL1, Ba Vi, Ward 15, District 10, Ho Chi Minh City&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;Tel: (84-8) 39770600 - 22126424&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&lt;strong&gt;Website: http://tulap.com.vn - http://led360.com.vn&lt;/strong&gt;&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:46:24', 'admin', '2012-11-03 02:46:24');
INSERT INTO `media` VALUES (55, 'default13518687941', '', 'media_news', '[77]', 'admin', 'The collection of 100 maps China does not have the Paracels', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Aside the busy work of a flight engineer, he was promoted to the network and then to the store looking to buy antique maps of China and the world to prove the Spratly Islands, the Paracel Islands is part of the territory of Viet South.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mr. Tran Thang, 42, who lives in the state of Connecticut (USA), Chairman of the Culture and Education Vietnam in the U.S. (IVCE), the recently decided to donate his entire map store collection for Research the socio-economic development in Da Nang, where research programs Hoang Sa and Truong Sa.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;Mr. Tran Thang, who has decided to donate 100 maps China confirms no Hoang Sa and Truong Sa Vietnam. Photo: NVCC&quot; border=&quot;1&quot; height=&quot;350&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/img_7471.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Mr. Tran Thang has decided to donate 100 maps for Vietnam quarter.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;NVCC.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Exchange&amp;nbsp;&lt;em&gt;VnExpress.net,&lt;/em&gt;&amp;nbsp;Thang said, has collected 100 unique maps.&amp;nbsp;Including 70 Chinese territory maps, 15 maps created Paracels are close to the coast of Vietnam, 15 maps Indochina and Southeast Asia, and two Chinese books all prove no Hoang Sa, Changsha.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thang said that the ancient maps and books full of Chinese government said on historical and legal high.&amp;nbsp;&amp;quot;70 Chinese territorial map clearly shows China&amp;#39;s southern Hainan Island. 15th map drawing Paracel located close to the coast of Vietnam. Why do people in the West do not draw Paracels (Paracel) adjacent South Korea, China, the Philippines, Singapore, Brunei, Vietnam drew close? Because Paracels - near the coast of Annam compared to other countries and on the Paracels Islands Annam should live in the West for that this island belongs to An Nam, &amp;quot;Thang explained.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Said collector, 5 maps created key maritime routes are through management Paracels in French waters and islands of Indochina.&amp;nbsp;In addition, Paracel can stop for ships on maritime South-North Asia.&amp;nbsp;After Geneva 1954, France return of &amp;quot;territorial integrity&amp;quot; for Vietnam, of course, must have both the Paracels.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl1&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;ROC Postal residual map, the Ministry of Transportation Republic of China, 1933.&quot; height=&quot;417&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/image004.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Maps of the Republic of China Postal map published in 1933 has no balance Hoang Sa and Truong Sa.Photo:&amp;nbsp;&lt;em&gt;Tran Thang.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	The journey of owning the maps you, Thang share, late July, after the news of Dr. Mai Hong (Hanoi) gift map Qing (South China stop at the island Hainan) for the Vietnam History Museum, he went online and saw someone selling some old maps of the West of China&amp;#39;s territory.&amp;nbsp;He then related and purchase this evidence.&lt;/p&gt;\r\n&lt;p&gt;\r\n	As a &amp;quot;pagan&amp;quot; should carefully Thang send the map to two people familiar you are Dr. Tran Duc Anh Son (Deputy Director of the Institute for Development Economics Research - Danang social) and Dr. Nguyen Nha view .&amp;nbsp;&amp;quot;The two have a good feeling so I started looking for a map. When was the inspiration that I radiate thoughts quickly is to collect several maps of the West to prove the South of China stopped in Hainan Island, &amp;quot;Thang said.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Temporarily set aside the busy work of a flight engineer, he found the antique shops, the sale of maps to buy.&amp;nbsp;The number of Chinese territorial map was published in the UK, Germany, France, Netherlands, USA, Italy ...&amp;nbsp;during 1626 - 1980 on a lot more.&amp;nbsp;However, he found a piece of map Paracel draw is located close to the coast of Vietnam.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;When I was a little worried because I have proven stop China&amp;#39;s southern Hainan island, which means that the Paracel and Spratly Islands belong to China. So how do you prove the Hoang Sa and Truong Sa belong to Vietnam? If only one map is not enough to convince? &amp;quot;, he questioned himself and trying to find answers.&amp;nbsp;In mid-September, he accidentally discovered the ancient map Hoang Sa and immediately after that he collected an additional 15 maps of the same type.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thang also found it very strange that all 3 books Full map Republic of China Post and outstanding print map of China in Nanjing in 1919 and 1933 (including 78 maps), and Atlas of The Chinese Empire by the China Inland mission Mission published in England in 1908 (including 23 maps) are not listed Hoang Sa and Truong Sa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	However, the price of the old books are very expensive, not enough money itself Thang calling friends to contribute.&amp;nbsp;This is done secretly, in case the information will spread other people buy take.&amp;nbsp;&amp;quot;In two weeks waiting for the money, I am very excited, every day from work early to see the book on the network. When new books on my hand felt serene,&amp;quot; the single engineer experienced heart.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; id=&quot;tbl2&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;img alt=&quot;Scherer Atlas Novus, Germany, in 1970 showed that China&#039;s territory without Hoang Sa and Truong Sa. Photo: Tran Thang&quot; height=&quot;325&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/bd/d8/e1/scherersatlasnovusgermany..jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center; &quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Map Scherer Atlas Novus (Germany) in 1970 also showed that China&amp;#39;s territory without Hoang Sa and Truong Sa.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Tran Thang.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Buy your map, he did take the time to check the information of publisher, year of publication, number, frame, glass coated paper for preservation.&amp;nbsp;From there, he began to introduce Vietnamese Americans and young people know about Hoang Sa, Truong Sa belong to Vietnam&amp;#39;s territory.&amp;nbsp;The whole image of this collection is stored at the site of the Vietnam Institute of Culture and Education.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;I think the Vietnamese people at home and abroad are patriots, not just me. I do the map document collections in a natural way, without any pressure on the political current affairs. I do not see this as the Government or the other is of the people. I see the social benefit to the community is to &amp;quot;, Thang share and said that after the publication of the document along with lawyers in the United States meet to discuss how to help Vietnam in the Paracel and Spratly archipelagos.&lt;/p&gt;\r\n&lt;p&gt;\r\n	After reviewing copies of almost 100 map he Tran Wins sent from the U.S., Professor of history Phan Huy Le comment, this collection even though there are some complete unknown origin but are very precious and rich than the collection of maps related to Hoang Sa and Truong Sa ago.&amp;nbsp;Grateful heart of a country&amp;#39;s scientists always toward homeland, to help Vietnam with more evidence to sovereignty over Hoang Sa and Truong Sa, Prof. Le wrote a letter to thank Thang.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;The meaning of the maps associated with the historical and legal significance. Particular, the maps of China to 1933 shows that time the authorities in Beijing have no awareness of the territorial south, all the maps are clearly the territory of China extends to the island of Hainan. Meanwhile, maps of the world in Asia, Southeast Asia and Vietnam specifying Hoang Sa and Truong Sa associated with Vietnam, &amp;quot;Professor Phan Huy Le said.&lt;/p&gt;', '', '', '', '', '', 'Nguyễn Đông', 'VnExpress', 0, 0, 'upload/image004.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:55:23', 'admin', '2012-11-03 01:55:23');
INSERT INTO `media` VALUES (56, 'default13518782621', '', 'media_news', '[78]', 'admin', '&#039;Sức khỏe&#039; Sacombank và các công ty mang họ Sacom', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Năm qua, Sacombank trải qua cuộc th&amp;acirc;u t&amp;oacute;m đổi chủ lớn nhất tr&amp;ecirc;n s&amp;agrave;n chứng kho&amp;aacute;n c&amp;ograve;n Chứng kho&amp;aacute;n Sacombank &amp;quot;thấm đ&amp;ograve;n&amp;quot; với khoản lỗ h&amp;agrave;ng ngh&amp;igrave;n tỷ đồng. Địa ốc Sacomreal cũng kh&amp;ocirc;ng tho&amp;aacute;t cảnh thua lỗ chung như c&amp;aacute;c đơn vị nh&amp;agrave; đất kh&amp;aacute;c.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sự ph&amp;aacute;t triển của Ng&amp;acirc;n h&amp;agrave;ng S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n (Sacombank) gắn chặt với t&amp;ecirc;n tuổi v&amp;agrave; th&amp;agrave;nh c&amp;ocirc;ng của gia đ&amp;igrave;nh &amp;ocirc;ng Đặng Văn Th&amp;agrave;nh - người vừa th&amp;ocirc;ng b&amp;aacute;o chia tay ng&amp;acirc;n h&amp;agrave;ng n&amp;agrave;y chiều 2/11. Trong hơn 20 năm ch&amp;egrave;o l&amp;aacute;i, &amp;ocirc;ng Th&amp;agrave;nh đ&amp;atilde; đưa Sacombank từ một ng&amp;acirc;n h&amp;agrave;ng vốn ban đầu 3 tỷ đồng, chủ yếu hoạt động ở v&amp;ugrave;ng ven TP HCM th&amp;agrave;nh một trong những nh&amp;agrave; băng h&amp;agrave;ng đầu Việt Nam.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Ngân hàng Sacombank vẫn là một trong những nhà băng quản trị tốt nhất Việt Nam.&quot; height=&quot;330&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/e0/59/Sacombank.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Ng&amp;acirc;n h&amp;agrave;ng Sacombank vẫn l&amp;agrave; một trong những nh&amp;agrave; băng quản trị tốt nhất Việt Nam. Sau 9 th&amp;aacute;ng, Sacombank ho&amp;agrave;n th&amp;agrave;nh 62% kế hoạch lợi nhuận.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	T&amp;iacute;nh tới 30/9/2012, Sacombank c&amp;oacute; tổng cộng 7 c&amp;ocirc;ng ty con, gồm: C&amp;ocirc;ng ty Quản l&amp;yacute; v&amp;agrave; khai th&amp;aacute;c t&amp;agrave;i sản Ng&amp;acirc;n h&amp;agrave;ng S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n (SBA), C&amp;ocirc;ng ty Cho thu&amp;ecirc; t&amp;agrave;i ch&amp;iacute;nh Ng&amp;acirc;n h&amp;agrave;ng S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n (SBL), C&amp;ocirc;ng ty Kiều hối S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n (SBR), C&amp;ocirc;ng ty V&amp;agrave;ng bạc đ&amp;aacute; qu&amp;yacute; S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n (SBJ), C&amp;ocirc;ng ty Hypertek, C&amp;ocirc;ng ty V&amp;agrave;ng bạc đ&amp;aacute; qu&amp;yacute; S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n Cambodia v&amp;agrave; Ng&amp;acirc;n h&amp;agrave;ng S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n Cambodia.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hai c&amp;aacute;i t&amp;ecirc;n tiếng tăm nhất l&amp;agrave; C&amp;ocirc;ng ty cổ phần Địa ốc S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n (Sacomreal) v&amp;agrave; C&amp;ocirc;ng ty cổ phần chứng kho&amp;aacute;n Sacombank (SBS) đều kh&amp;ocirc;ng được phản &amp;aacute;nh trong b&amp;aacute;o c&amp;aacute;o t&amp;agrave;i ch&amp;iacute;nh qu&amp;yacute; III năm nay của Sacombank. Mặc d&amp;ugrave; vậy,&amp;nbsp;&lt;strong&gt;Sacombank l&amp;agrave; cổ đ&amp;ocirc;ng của c&amp;aacute;c c&amp;ocirc;ng ty n&amp;agrave;y v&amp;agrave; c&amp;aacute;c b&amp;ecirc;n vẫn c&amp;oacute; những giao dịch, hoạt động vay nợ với nhau.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;o bạch của Sacomreal cho thấy Sacombank nằm trong danh s&amp;aacute;ch cổ đ&amp;ocirc;ng s&amp;aacute;ng lập, nắm 149.000 cổ phần (tương đương tỷ lệ sở hữu 0,15%). Hiện con trai &amp;ocirc;ng Đặng Văn Th&amp;agrave;nh - &amp;ocirc;ng Đặng Hồng Anh - cũng đang vừa l&amp;agrave;m Chủ tịch HĐQT Sacomreal vừa l&amp;agrave;m Ph&amp;oacute; chủ tịch HĐQT Sacombank.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo b&amp;aacute;o c&amp;aacute;o t&amp;agrave;i ch&amp;iacute;nh qu&amp;yacute; III của Sacomreal, đến 30/9, tổng nợ của Sacomreal tại Sacombank l&amp;ecirc;n tới h&amp;agrave;ng ngh&amp;igrave;n tỷ đồng. Trong đ&amp;oacute; Sacomreal vay ngắn hạn Sacombank Chi nh&amp;aacute;nh Hưng Đạo 275,8 tỷ đồng, l&amp;atilde;i vay l&amp;agrave; 1,167% một th&amp;aacute;ng dưới dạng t&amp;iacute;n chấp. Nợ d&amp;agrave;i hạn tới hạn trả vay Sacombank l&amp;agrave; 479 tỷ đồng, được chia l&amp;agrave;m 3 khoản vay, lần lượt l&amp;agrave; 179 tỷ, 250 tỷ v&amp;agrave; 50 tỷ. Trong đ&amp;oacute;, khoản vay 50 tỷ đồng l&amp;agrave; số nợ ph&amp;aacute;t sinh th&amp;ecirc;m, đầu kỳ kh&amp;ocirc;ng c&amp;oacute; khoản n&amp;agrave;y. Đồng thời, Sacomreal c&amp;ograve;n vay th&amp;ecirc;m Sacombank khoảng 547,16 tỷ đồng nợ d&amp;agrave;i hạn chưa đến hạn phải trả.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Đặng Hồng Anh vừa thôi làm CEO tại Sacomreal để về giúp đỡ cha tại ngân hàng Sacombank. Ảnh: SC.&quot; height=&quot;290&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/e0/59/DangHongAnh-sc.jpg&quot; width=&quot;450&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Đặng Hồng Anh vừa th&amp;ocirc;i l&amp;agrave;m CEO tại Sacomreal để về gi&amp;uacute;p đỡ cha Đặng Văn Th&amp;agrave;nh tại ng&amp;acirc;n h&amp;agrave;ng Sacombank. Ảnh:&amp;nbsp;&lt;em&gt;SC.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Về Chứng kho&amp;aacute;n Sacombank, đơn vị n&amp;agrave;y được th&amp;agrave;nh lập v&amp;agrave;o th&amp;aacute;ng 9/2006 do Sacombank sở hữu 100% vốn. Sau 7 năm hoạt động, ng&amp;acirc;n h&amp;agrave;ng mẹ giảm tỷ lệ sở hữu xuống c&amp;ograve;n 11% v&amp;agrave;o năm 2011, ngay thời điểm thị trường cổ phiếu kh&amp;oacute; khăn. Tho&amp;aacute;i vốn mạnh khỏi SBS nhưng Sacombank cũng kịp thời cứu &amp;quot;đứa con&amp;quot; khi đồng &amp;yacute; mua 800 tỷ đồng tr&amp;aacute;i phiếu chuyển đổi th&amp;agrave;nh cổ phiếu theo tỷ lệ 1:1 của SBS.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trao đổi với&amp;nbsp;&lt;em&gt;VnExpress.net&lt;/em&gt;&amp;nbsp;chiều 2/11, &amp;ocirc;ng Kiều Hữu Dũng - Chủ tịch Hội đồng quản trị C&amp;ocirc;ng ty chứng kho&amp;aacute;n Sacombank - khẳng định hiện SBS v&amp;agrave; Sacombank kh&amp;ocirc;ng c&amp;ograve;n khoản vay n&amp;agrave;o li&amp;ecirc;n quan đến nhau ngoại trừ vụ 800 tỷ đồng tr&amp;aacute;i phiếu chuyển đổi n&amp;agrave;y. Về tiến tr&amp;igrave;nh sử dụng số tiền, Chủ tịch SBS cho biết hiện vẫn c&amp;ograve;n hơn 550 tỷ đồng. &amp;quot;Số c&amp;ograve;n lại khoảng gần 250 tỷ đ&amp;atilde; được sử dụng cho việc thanh to&amp;aacute;n, chi trả c&amp;aacute;c khoản nợ của SBS&amp;quot;, &amp;ocirc;ng Dũng th&amp;ocirc;ng tin. &amp;Ocirc;ng Dũng hiện cũng l&amp;agrave; th&amp;agrave;nh vi&amp;ecirc;n độc lập của Hội đồng quản trị Sacombank.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Năm qua cũng l&amp;agrave; năm c&amp;aacute;c doanh nghiệp d&amp;ograve;ng họ Sacom c&amp;oacute; nhiều biến động về nh&amp;acirc;n sự nhất&lt;/strong&gt;&lt;strong&gt;.&lt;/strong&gt;&amp;nbsp;Kể từ đầu năm, Sacombank đ&amp;atilde;&amp;nbsp;&lt;a href=&quot;http://ebank.vnexpress.net/gl/ebank/tin-tuc/2012/10/sacombank-thay-doi-mot-loat-nhan-su-cap-cao/&quot;&gt;thay đổi một loạt nh&amp;acirc;n sự&lt;/a&gt;&amp;nbsp;cấp cao, từ ban quản trị đến ban gi&amp;aacute;m đốc. Nh&amp;oacute;m th&amp;acirc;u t&amp;oacute;m mới của Sacombank ch&amp;iacute;nh thức xuất hiện v&amp;agrave;o th&amp;aacute;ng 2/2012 khi Chủ tịch Eximbank L&amp;ecirc; H&amp;ugrave;ng Dũng tuy&amp;ecirc;n bố đ&amp;atilde; nắm trong tay số cổ phiếu đại diện cho 51% vốn điều lệ ng&amp;acirc;n h&amp;agrave;ng v&amp;agrave; đưa ra y&amp;ecirc;u cầu thay đổi ban l&amp;atilde;nh đạo Sacombank. Cuộc th&amp;acirc;u t&amp;oacute;m Sacombank hạ m&amp;agrave;n v&amp;agrave;o th&amp;aacute;ng 5 v&amp;agrave; HĐQT mới của ng&amp;acirc;n h&amp;agrave;ng n&amp;agrave;y đ&amp;oacute;n tới 4 người mới từ Ng&amp;acirc;n h&amp;agrave;ng Phương Nam, hai người từ Eximbank. Bản th&amp;acirc;n &amp;ocirc;ng Đặng Văn Th&amp;agrave;nh cũng kh&amp;ocirc;ng c&amp;ograve;n l&amp;agrave; đại diện ph&amp;aacute;p luật của Sacombank v&amp;agrave;i th&amp;aacute;ng trước sự kiện từ nhiệm h&amp;ocirc;m 2/11.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tại SBS, đến cuối th&amp;aacute;ng 3 v&amp;agrave; đầu th&amp;aacute;ng 4/2012, thị trường chứng kiến sự r&amp;uacute;t lui h&amp;agrave;ng loạt của c&amp;aacute;c l&amp;atilde;nh đạo SBS khi Sacombank chuyển giao quyền lực cho nh&amp;oacute;m cổ đ&amp;ocirc;ng mới. D&amp;agrave;n l&amp;atilde;nh đạo cao cấp của SBS gần như thay đổi to&amp;agrave;n bộ. Đại hội cổ đ&amp;ocirc;ng miễn nhiệm 4 trong 5 th&amp;agrave;nh vi&amp;ecirc;n HĐQT.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Lãi sau thuế của Sacombank, Sacomreal và Chứng khoán Sacombank tính đến 30/9/2012.&quot; height=&quot;360&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/e0/59/sbs-stb-scr480.jpg&quot; width=&quot;480&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;L&amp;atilde;i sau thuế của Sacombank, Sacomreal v&amp;agrave; Chứng kho&amp;aacute;n Sacombank t&amp;iacute;nh đến 30/9/2012. Nguồn:&lt;em&gt;BCTC - đơn vị tỷ đồng&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Về kết quả kinh doanh, ngoại trừ Ng&amp;acirc;n h&amp;agrave;ng Sacombank, hai đơn vị Sacomreal v&amp;agrave; Chứng kho&amp;aacute;n Sacombank đều tệ.&lt;/strong&gt;&amp;nbsp;L&amp;atilde;i sau thuế của Sacombank đạt 411,3 tỷ đồng. T&amp;iacute;nh chung 9 th&amp;aacute;ng, l&amp;atilde;i r&amp;ograve;ng tăng 4% so với c&amp;ugrave;ng kỳ l&amp;ecirc;n 1.585 tỷ đồng. Tỷ lệ nợ xấu của Sacombank tại thời điểm cuối qu&amp;yacute; III l&amp;agrave; 1,4%, con số n&amp;agrave;y cuối năm 2011 l&amp;agrave; 0,57%. Trong đ&amp;oacute; nh&amp;oacute;m nợ dưới ti&amp;ecirc;u chuẩn gấp 3 lần; nợ nghi ngờ v&amp;agrave; nợ c&amp;oacute; khả năng mất vốn đều gấp 2,5 lần so với cuối năm ngo&amp;aacute;i. Tổng gi&amp;aacute;m đốc Phan Huy Khang cho biết hết th&amp;aacute;ng 9, nh&amp;agrave; băng n&amp;agrave;y đ&amp;atilde; ho&amp;agrave;nh th&amp;agrave;nh 62% chỉ ti&amp;ecirc;u lợi nhuận theo kế hoạch năm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Qu&amp;yacute; III năm nay, doanh thu thuần của c&amp;ocirc;ng ty mẹ Sacomreal giảm 10,2%. L&amp;atilde;i sau thuế qu&amp;yacute; III c&amp;ograve;n 800 triệu đồng. 9 th&amp;aacute;ng, Sacomreal l&amp;atilde;i 60 tỷ đồng, giảm bằng một nửa so với c&amp;ugrave;ng kỳ năm 2011.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;ograve;n doanh thu của SBS trong qu&amp;yacute; III chỉ đạt gần 33 tỷ đồng, giảm mạnh so với mức 154 tỷ đồng c&amp;ugrave;ng kỳ năm ngo&amp;aacute;i. 9 th&amp;aacute;ng, tổng lỗ r&amp;ograve;ng l&amp;ecirc;n tới 129,6 tỷ đồng do doanh nghiệp phải g&amp;aacute;nh khoản thuế l&amp;ecirc;n tới 89 tỷ đồng. Cộng dồn lỗ lũy kế, c&amp;ocirc;ng ty lỗ tiếp 1.763 tỷ đồng, vốn chủ sở hữu &amp;acirc;m 247 tỷ đồng.&lt;/p&gt;', '', '', '', '', '', 'Nhóm phóng viên', 'VnExpress', 0, 0, 'upload/DangHongAnh-sc.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:41:34', 'admin', '2012-11-03 01:41:34');
INSERT INTO `media` VALUES (57, 'default13518782621', '', 'media_news', '[78]', 'admin', '&#039;Health&#039; Sacombank and companies bring their Sacom', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Years, Sacombank underwent acquirer biggest change hands on the stock market also Sacombank Securities &amp;quot;blow proof&amp;quot; with losses trillion.&amp;nbsp;Real estate Sacomreal not escape the general loss as other housing units.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	The development of Saigon Thuong Tin Commercial Bank (Sacombank) fastened to the family name and the success of the Dang Van Thanh, who has announced that broke the bank this afternoon 2/11.&amp;nbsp;For more than 20 years of driving, he gave Sacombank from a bank initial capital of 3 billion, mainly operating in the environs of the HCM City one of the leading banks in Vietnam.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Sacombank is one of the best management bank in Vietnam.&quot; height=&quot;330&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/e0/59/Sacombank.jpg&quot; width=&quot;495&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Sacombank is one of the best management bank in Vietnam.&amp;nbsp;After 9 months, Sacombank completed 62% of the profit.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	As of 30/09/2012, Sacombank have a total of 7 subsidiaries, including: Asset Management and exploitation of Saigon Thuong Tin Commercial Bank (SBA), financial leasing company of Saigon Thuong Tin Commercial Joint Stock Bank (SBL), Remittance Company Saigon Thuong Tin (SBR), Gold and Silver Company Saigon Thuong Tin (SBJ), Co. Hypertek, Gold and Silver Company Saigon Thuong Tin Commercial Bank Cambodia and Saigon Trade Credits Cambodia.&lt;/p&gt;\r\n&lt;p&gt;\r\n	The two most famous names Corporation Saigon Thuong Tin Real Estate (Sacomreal) and Company Sacombank Securities (SBS) are not reflected in the third quarter of this financial report of Sacombank.&amp;nbsp;However,&lt;strong&gt;Sacombank shareholders of these companies and the parties are still dealing, loan activities together.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sacomreal prospectus shows Sacombank in the list of founding shareholders holding 149,000 shares (equivalent stake of 0.15%).&amp;nbsp;Time his son Dang Van Thanh Dang Hong Anh - also both as Chairman of the Board of Directors Sacomreal Vice Chairman of Sacombank.&lt;/p&gt;\r\n&lt;p&gt;\r\n	According to the third quarter financial report of Sacomreal, 30/9, total debt Sacomreal at Sacombank up to trillion.&amp;nbsp;In which short-term loan Sacomreal Sacombank branch Hung Dao 275.8 billion, interest is 1.167% per month in the form of trust.&amp;nbsp;Long-term debt to repay your loan Sacombank is 479 billion, is divided into three loans, respectively, 179 billion, 250 billion and 50 billion.&amp;nbsp;Of these, 50 billion loan debt is incurred, the public does not have this clause.&amp;nbsp;At the same time, Sacomreal loan Sacombank about 547.16 billion long-term debt not yet due to be paid.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Dang Hong Anh has only CEO in Sacomreal to about helping his father at Sacombank. Photo: SC.&quot; height=&quot;290&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/e0/59/DangHongAnh-sc.jpg&quot; width=&quot;450&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Dang Hong Anh has only CEO in Sacomreal to about helping his father Dang Van Thanh, Sacombank.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;SC.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Sacombank Securities, this unit was established in September / 2006 Sacombank owned 100% of the capital.&amp;nbsp;After seven years of operation, the parent bank to reduce its stake to 11% in 2011, at the time of stock market difficulties.&amp;nbsp;Divestments strong from SBS but Sacombank also timely rescue &amp;quot;children&amp;quot; when agreeing to buy 800 billion of convertible bonds into shares in the ratio of 1:1 of SBS.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Talking to&amp;nbsp;&lt;em&gt;VnExpress.net&lt;/em&gt;&amp;nbsp;pm 2/11, Kieu Huu Dung, Chairman of the Board Sacombank Securities Company - confirmed SBS loan and Sacombank no longer related to each other except for the 800 billion left convertible bonds.About the process of using the money, President of SBS said there are still more than 550 billion.&amp;nbsp;&amp;quot;The remaining approximately 250 billion was used for the payment, to pay the debts of the SBS&amp;quot; Dung information.&amp;nbsp;Dung is also an independent member of the Board of Sacombank.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Last year was also the year the family business Sacom many changes in personnel.&lt;/strong&gt;&amp;nbsp;Since the beginning of the year, Sacombank has&amp;nbsp;&lt;a href=&quot;http://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=en&amp;amp;rurl=translate.google.com.vn&amp;amp;sl=vi&amp;amp;tl=en&amp;amp;twu=1&amp;amp;u=http://ebank.vnexpress.net/gl/ebank/tin-tuc/2012/10/sacombank-thay-doi-mot-loat-nhan-su-cap-cao/&amp;amp;usg=ALkJrhgnJ4i5y3p_wgWvzw-2hxPv_xyH3Q&quot;&gt;changed a series of&lt;/a&gt;&amp;nbsp;high-level&amp;nbsp;&lt;a href=&quot;http://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=en&amp;amp;rurl=translate.google.com.vn&amp;amp;sl=vi&amp;amp;tl=en&amp;amp;twu=1&amp;amp;u=http://ebank.vnexpress.net/gl/ebank/tin-tuc/2012/10/sacombank-thay-doi-mot-loat-nhan-su-cap-cao/&amp;amp;usg=ALkJrhgnJ4i5y3p_wgWvzw-2hxPv_xyH3Q&quot;&gt;personnel&lt;/a&gt;&amp;nbsp;, from management to the board of directors.Sacombank Group&amp;#39;s new acquisitions official appeared in the February / 2012 President of Eximbank Le Hung Dung said holding shares representing 51% of the charter capital of the bank and the request for change management director of Sacombank.&amp;nbsp;The acquirer Sacombank lower screen in May and the new Board of Directors of the bank to welcome 4 new from Southern Bank, two people from Eximbank.&amp;nbsp;Dang Van Thanh itself is no longer a legal representative of Sacombank months before the event from duty Monday 2/11.&lt;/p&gt;\r\n&lt;p&gt;\r\n	At SBS, by the end of March and beginning of April / 2012, the market witnessed a series of leadership retreat SBS when Sacombank transfer power to the new shareholder group.&amp;nbsp;Seamless senior leader of SBS almost changed the whole.&amp;nbsp;General Meeting of Shareholders and dismissed four of five members of the Board of Directors.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Profit after tax of Sacombank, Sacomreal and Sacombank Securities as of 30/09/2012.&quot; height=&quot;360&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/e0/59/sbs-stb-scr480.jpg&quot; width=&quot;480&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Profit after tax of Sacombank, Sacomreal and Sacombank Securities as of 30/09/2012.&amp;nbsp;Source:&lt;em&gt;Financial - billion unit&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Business results, except Sacombank, Sacomreal two units and Sacombank Securities are bad.&lt;/strong&gt;&amp;nbsp;Earnings after tax of of Sacombank 411.3 billion.&amp;nbsp;In the first nine months, net income increased 4% over the same period to 1,585 billion.&amp;nbsp;Sacombank&amp;#39;s NPL ratio at the end of the third quarter was 1.4%, this figure by the end of 2011 was 0.57%.&amp;nbsp;Of which less than 3 times the standard debt; debt doubts and potentially irrecoverable debt are 2.5 times compared to last year.&amp;nbsp;General director Phan Huy Khang said the end of September, the bank was raging 62% target profit under the plan.&lt;/p&gt;\r\n&lt;p&gt;\r\n	The third quarter of this year, net sales of the parent company Sacomreal 10.2%.&amp;nbsp;Profit after tax for the third quarter was 800 million.&amp;nbsp;9 months, Sacomreal interest 60 billion, down by half compared to the same period in 2011.&lt;/p&gt;\r\n&lt;p&gt;\r\n	As SBS&amp;#39;s revenue in the third quarter reached nearly 33 billion, down from $ 154 billion the same period last year.&amp;nbsp;9 months, the total net loss of $ 129.6 billion due to a tax burden on business to 89 billion.&amp;nbsp;Cumulative accumulated losses, loss of 1763 billion company, negative equity 247 billion.&lt;/p&gt;', '', '', '', '', '', 'Nhóm phóng viên', 'VnExpress', 0, 0, 'upload/DangHongAnh-sc.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:41:34', 'admin', '2012-11-03 01:41:34');
INSERT INTO `media` VALUES (58, 'default13518784191', '', 'media_news', '[78]', 'admin', 'Ngân hàng Nhà nước bơm gần 5.400 tỷ đồng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Trong ng&amp;agrave;y 2/11, 5.396 tỷ đồng đ&amp;atilde; được bơm ra tr&amp;ecirc;n thị trường mở (OMO) với l&amp;atilde;i suất 8% một năm, kỳ hạn 7 ng&amp;agrave;y. Đ&amp;acirc;y cũng l&amp;agrave; lượng vốn được nh&amp;agrave; điều h&amp;agrave;nh bơm ra thị trường mở lớn nhất kể từ ng&amp;agrave;y 22/8.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Dữ liệu của Ng&amp;acirc;n h&amp;agrave;ng Nh&amp;agrave; nước cho biết, h&amp;ocirc;m nay (2/11), cơ quan n&amp;agrave;y bơm 5.396 tỷ đồng tr&amp;ecirc;n thị trường mở (OMO) với l&amp;atilde;i suất 8% một năm, kỳ hạn 7 ng&amp;agrave;y. Theo dữ liệu, đ&amp;acirc;y cũng l&amp;agrave; lượng vốn được bơm lớn nhất tr&amp;ecirc;n thị trường mở kể từ&amp;nbsp;&lt;a href=&quot;http://ebank.vnexpress.net/gl/ebank//tin-tuc/2012/08/ngan-hang-nha-nuoc-tich-cuc-bom-tien-tran-an-nguoi-gui/&quot;&gt;ng&amp;agrave;y 22/8&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trước đ&amp;oacute;, ng&amp;agrave;y 22/8 - một ng&amp;agrave;y sau khi &amp;ocirc;ng&amp;nbsp;&lt;a href=&quot;http://vnexpress.net/gl/phap-luat/2012/08/ong-nguyen-duc-kien-bi-bat/&quot;&gt;Nguyễn Đức Ki&amp;ecirc;n&lt;/a&gt;&amp;nbsp;- nguy&amp;ecirc;n Ph&amp;oacute; chủ tịch HĐQT ACB bị bắt, Ng&amp;acirc;n h&amp;agrave;ng Nh&amp;agrave; nước đ&amp;atilde; phải bơm 13.025 tỷ đồng để hỗ trợ thanh khoản.&lt;/p&gt;\r\n&lt;p&gt;\r\n	7 ng&amp;agrave;y trước, Ng&amp;acirc;n h&amp;agrave;ng Nh&amp;agrave; nước bơm ra 421 tỷ đồng tr&amp;ecirc;n OMO v&amp;agrave; h&amp;ocirc;m nay (2/11) l&amp;agrave; ng&amp;agrave;y đ&amp;aacute;o hạn. Do đ&amp;oacute;, lượng vốn bơm r&amp;ograve;ng theo nghiệp vụ repo h&amp;ocirc;m nay đạt 4.975 tỷ đồng. Ngo&amp;agrave;i ra, Ng&amp;acirc;n h&amp;agrave;ng Nh&amp;agrave; nước tiếp tục ph&amp;aacute;t h&amp;agrave;nh t&amp;iacute;n phiếu kỳ hạn 91 ng&amp;agrave;y để h&amp;uacute;t về 305 tỷ đồng. L&amp;atilde;i suất t&amp;iacute;n phiếu duy tr&amp;igrave; ở 6,8% một năm. Như vậy trong ng&amp;agrave;y, Ng&amp;acirc;n h&amp;agrave;ng Nh&amp;agrave; nước bơm r&amp;ograve;ng tổng cộng 4.670 tỷ đồng tr&amp;ecirc;n thị trường mở.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chiều 2/11, Ng&amp;acirc;n h&amp;agrave;ng thương mại cổ phần S&amp;agrave;i g&amp;ograve;n Thương t&amp;iacute;n (Sacombank - STB) cho biết &amp;ocirc;ng Đặng Văn Th&amp;agrave;nh sẽ th&amp;ocirc;i giữ chức Chủ tịch Hội đồng Quản trị. Trước đ&amp;oacute;, s&amp;aacute;ng 2/11 c&amp;oacute; th&amp;ocirc;ng tin b&amp;agrave; Huỳnh Thị B&amp;iacute;ch Ngọc - vợ &amp;ocirc;ng Th&amp;agrave;nh -&lt;a href=&quot;http://vnexpress.net/gl/kinh-doanh/2012/11/ba-huynh-bich-ngoc-roi-ban-dieu-hanh-bourbon-tay-ninh/&quot;&gt;&amp;nbsp;từ nhiệm vị tr&amp;iacute; Chủ tịch&lt;/a&gt;&amp;nbsp;HĐQT C&amp;ocirc;ng ty Bourbon T&amp;acirc;y Ninh. B&amp;agrave; Ngọc th&amp;ocirc;i giữ chức vụ Th&amp;agrave;nh vi&amp;ecirc;n HĐQT SBT kể từ ng&amp;agrave;y 1/11.&lt;/p&gt;', '', '', '', '', '', 'Thanh Thanh Lan', 'VnExpress', 0, 0, 'upload/nganhang1-hh.130jpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:41:24', 'admin', '2012-11-03 01:41:24');
INSERT INTO `media` VALUES (59, 'default13518784191', '', 'media_news', '[78]', 'admin', 'State Bank pumped nearly 5,400 billion', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;In 2/11, 5396 billion has been pumped out on the open market operations (OMO) with an interest rate of 8% a year, seven-day period.&amp;nbsp;It is also the capital of the operator to pump out the biggest open market since 22/8.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Data of the State Bank said today (2/11), the pump 5396 billion on the open market operations (OMO) with an interest rate of 8% a year, seven-day period.&amp;nbsp;According to the data, this is the largest amount of capital being pumped on the open market since&amp;nbsp;&lt;a href=&quot;http://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=en&amp;amp;rurl=translate.google.com.vn&amp;amp;sl=vi&amp;amp;tl=en&amp;amp;twu=1&amp;amp;u=http://ebank.vnexpress.net/gl/ebank//tin-tuc/2012/08/ngan-hang-nha-nuoc-tich-cuc-bom-tien-tran-an-nguoi-gui/&amp;amp;usg=ALkJrhjLQVD9Rt-ky6Y_7BIvPzikVHaOnw&quot;&gt;22/8&lt;/a&gt;&amp;nbsp;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Earlier, on 22/8 - a day after&amp;nbsp;&lt;a href=&quot;http://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=en&amp;amp;rurl=translate.google.com.vn&amp;amp;sl=vi&amp;amp;tl=en&amp;amp;twu=1&amp;amp;u=http://vnexpress.net/gl/phap-luat/2012/08/ong-nguyen-duc-kien-bi-bat/&amp;amp;usg=ALkJrhiZKMtjn-j1AFJcZawCqYs6ujhAyg&quot;&gt;Nguyen Duc Kien,&lt;/a&gt;&amp;nbsp;Vice Chairman of ACB arrested, the State Bank had to inject 13 025 billion to support liquidity.&lt;/p&gt;\r\n&lt;p&gt;\r\n	7 days ago State Bank pumped 421 billion on OMO and today (2/11) is the due date.&amp;nbsp;Therefore, the net amount of capital injected by professional repo today reached 4975 billion.&amp;nbsp;In addition, the State Bank to continue issuing credit term of 91 days to smoke about 305 billion.&amp;nbsp;Treasury bill interest rates remain at 6.8% a year.&amp;nbsp;Same day, the State Bank of net pumping a total of 4,670 billion on the open market.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Afternoon of 2/11, joint-stock commercial bank Saigon Thuong Tin (Sacombank-STB) said Dang Van Thanh will no longer hold the Chairman of the Board of Directors.&amp;nbsp;Earlier, the morning 2/11 information Huynh Thi Bich Ngoc - wife -&amp;nbsp;&lt;a href=&quot;http://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=en&amp;amp;rurl=translate.google.com.vn&amp;amp;sl=vi&amp;amp;tl=en&amp;amp;twu=1&amp;amp;u=http://vnexpress.net/gl/kinh-doanh/2012/11/ba-huynh-bich-ngoc-roi-ban-dieu-hanh-bourbon-tay-ninh/&amp;amp;usg=ALkJrhgIveOR0kCkmrRB4FRy6tNryM8rWA&quot;&gt;from the position of Chairman of the&lt;/a&gt;&amp;nbsp;Board of Directors Bourbon Tay Ninh.&amp;nbsp;Ms. Ngoc resigned Member Board SBT since 1/11.&lt;/p&gt;', '', '', '', '', '', 'Thanh Thanh Lan', 'VnExpress', 0, 0, 'upload/nganhang1-hh.130jpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:41:24', 'admin', '2012-11-03 01:41:24');
INSERT INTO `media` VALUES (60, 'default13518786611', '', 'media_news', '[78]', 'admin', 'Phó tổng giám đốc Vietcombank nghỉ hưu', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;B&amp;agrave; Nguyễn Thu H&amp;agrave; th&amp;ocirc;i chức Ph&amp;oacute; tổng gi&amp;aacute;m đốc Vietcombank từ ng&amp;agrave;y 1/11 để chuyển sang nghỉ chế độ hưu tr&amp;iacute;.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Sở Giao dịch Chứng kho&amp;aacute;n TP HCM c&amp;ocirc;ng bố th&amp;ocirc;ng tin thay đổi &amp;nbsp;nh&amp;acirc;n sự cấp cao tại Ng&amp;acirc;n h&amp;agrave;ng cổ phần Ngoại thương Việt Nam (Vietcombank, m&amp;atilde;: VCB). Từ 1/11, b&amp;agrave; Nguyễn Thu H&amp;agrave; ngừng đảm nhiệm vị tr&amp;iacute; Ph&amp;oacute; tổng gi&amp;aacute;m đốc ng&amp;acirc;n h&amp;agrave;ng để chuyển sang chế độ nghỉ hưu.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;p&gt;\r\n		B&amp;agrave; H&amp;agrave; sinh năm 1957, gia nhập Vietcombank từ năm 1980. B&amp;agrave; đ&amp;atilde; trải qua nhiều vị tr&amp;iacute; l&amp;atilde;nh đạo cốt c&amp;aacute;n tại ng&amp;acirc;n h&amp;agrave;ng, trong đ&amp;oacute; c&amp;oacute; chức Ph&amp;oacute; gi&amp;aacute;m đốc sở giao dịch, Ph&amp;oacute; tổng gi&amp;aacute;m đốc sở giao dịch v&amp;agrave; Ph&amp;oacute; tổng gi&amp;aacute;m đốc ng&amp;acirc;n h&amp;agrave;ng Vietcombank. B&amp;agrave; c&amp;oacute; bằng thạc sĩ quản trị kinh doanh v&amp;agrave; từng c&amp;oacute; thời gian thực tập tại Mỹ.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Kết th&amp;uacute;c qu&amp;yacute; III năm nay, lợi nhuận sau thuế của Vietcombank tăng 5,46% so với c&amp;ugrave;ng kỳ năm ngo&amp;aacute;i, đạt 1.081 tỷ đồng. Tuy nhi&amp;ecirc;n, lũy kế l&amp;atilde;i r&amp;ograve;ng 9 th&amp;aacute;ng, Vietcombank thu về 3.237 tỷ đồng, thấp hơn so với 9 th&amp;aacute;ng đầu năm 2011 khoảng 2,14%.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Về doanh thu, qu&amp;yacute; III năm nay, ng&amp;acirc;n h&amp;agrave;ng đạt 2.693 tỷ đồng thu nhập l&amp;atilde;i thuần, giảm 25,2% so với qu&amp;yacute; III/2011. D&amp;ugrave; vậy, l&amp;atilde;i thuần từ mảng dịch vụ, kinh doanh ngoại hối v&amp;agrave; những hoạt động kh&amp;aacute;c hầu hết tăng so với c&amp;ugrave;ng kỳ năm trước.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Tường Vy', 'VnExpress', 0, 0, 'upload/vietcombank_1_130.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:47:07', 'admin', '2012-11-03 02:47:07');
INSERT INTO `media` VALUES (61, 'default13518786611', '', 'media_news', '[78]', 'admin', 'Deputy General Director of Vietcombank retirement', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Nguyen Thu Ha or dismiss the deputy general director of Vietcombank from 1/11 to turn off the pension.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	HCM City Stock Exchange disclosure senior personnel changes at the Joint Stock Bank for Foreign Trade of Vietnam (Vietcombank, code: VCB).&amp;nbsp;1/11, Nguyen Thu Ha continuously held the position of Deputy Managing Director of the bank to switch to retirement.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;p&gt;\r\n		Ho was born in 1957, join Vietcombank 1980.She has undergone several leadership positions reinforced bank officials, including Deputy Director of the transaction, deputy general director of trading and deputy general director of Vietcombank.&amp;nbsp;She has a master&amp;#39;s degree in business administration and had time to practice in the United States.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		End of the third quarter this year, Vietcombank&amp;#39;s profit after tax increased by 5.46% compared to the same period last year, reaching 1,081 billion.&amp;nbsp;But, accumulated net interest 9 months, Vietcombank earned 3237 billion, lower than the first 9 months of 2011 is about 2.14%.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		In terms of revenue, the third quarter of this year, the bank net interest income reached 2693 billion, down 25.2% from the third quarter of 2011.However, net interest from an array of services, foreign exchange trading and other activities most of the increase compared to the same period last year.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Tường Vy', 'VnExpress', 0, 0, 'upload/vietcombank_1_130.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:47:07', 'admin', '2012-11-03 02:47:07');
INSERT INTO `media` VALUES (62, 'default13518789521', '', 'media_news', '[78]', 'admin', 'Ngân hàng Quân đội lãi hơn 2.000 tỷ đồng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;Đ&amp;acirc;y cũng l&amp;agrave; một trong những nh&amp;agrave; băng c&amp;oacute; tốc độ tăng trưởng t&amp;iacute;n dụng cao nhất ng&amp;agrave;nh trong những th&amp;aacute;ng đầu năm. Hết qu&amp;yacute; III, lợi nhuận sau thuế của MBB đạt 2.023 tỷ đồng.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Ngân hàng Quân đội vẫn tăng trưởng lợi nhuận so với cùng kỳ. Ảnh: Hoàng Hà.&quot; height=&quot;302&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/df/64/nganhang-mb-hha460.jpg&quot; width=&quot;460&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Ng&amp;acirc;n h&amp;agrave;ng Qu&amp;acirc;n đội vẫn tăng trưởng lợi nhuận so với c&amp;ugrave;ng kỳ. Ảnh:&amp;nbsp;&lt;em&gt;Ho&amp;agrave;ng H&amp;agrave;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Ng&amp;acirc;n h&amp;agrave;ng thương mại cổ phần Qu&amp;acirc;n đội (MB - M&amp;atilde; chứng kho&amp;aacute;n: MBB) vừa c&amp;ocirc;ng bố b&amp;aacute;o c&amp;aacute;o t&amp;agrave;i ch&amp;iacute;nh của c&amp;ocirc;ng ty mẹ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo đ&amp;oacute;, trong qu&amp;yacute; III, thu nhập l&amp;atilde;i thuần đạt 1.695 tỷ đồng. Nguồn thu nhập ch&amp;iacute;nh của MBB vẫn đến từ c&amp;aacute;c hoạt động dịch vụ với lợi nhuận đạt 134 tỷ đồng. Lũy kế 9 th&amp;aacute;ng, hoạt động dịch vụ đem về cho MBB 442,8 tỷ đồng. Trong khi đ&amp;oacute;, thu nhập từ c&amp;aacute;c hoạt động g&amp;oacute;p vốn, mua cổ phần v&amp;agrave; hoạt động kh&amp;aacute;c giảm mạnh. Hoạt động chứng kho&amp;aacute;n, g&amp;oacute;p vốn lỗ 119,5 tỷ đồng trong qu&amp;yacute; III, lũy kế 9 th&amp;aacute;ng lỗ 270 tỷ đồng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ng&amp;acirc;n h&amp;agrave;ng l&amp;atilde;i trước thuế 842 tỷ đồng v&amp;agrave; l&amp;atilde;i sau thuế 633 tỷ đồng, tăng gần 20% so với c&amp;ugrave;ng kỳ. Lợi nhuận sau thuế qu&amp;yacute; III l&amp;agrave; 633 tỷ đồng, n&amp;acirc;ng lợi nhuận 9 th&amp;aacute;ng l&amp;ecirc;n 2.023 tỷ đồng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trong khi chi ph&amp;iacute; hoạt động giảm, chi ph&amp;iacute; dự ph&amp;ograve;ng rủi ro t&amp;iacute;n dụng 9 th&amp;aacute;ng đầu năm lại tăng 41% so với năm ngo&amp;aacute;i. T&amp;iacute;nh đến 30/9, chi ph&amp;iacute; dự ph&amp;ograve;ng rủi ro của ng&amp;acirc;n h&amp;agrave;ng n&amp;agrave;y đạt 904 tỷ đồng trong khi c&amp;ugrave;ng kỳ năm ngo&amp;aacute;i chỉ đạt 643 tỷ đồng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trước đ&amp;oacute;, tại phi&amp;ecirc;n thảo luận kinh tế - x&amp;atilde; hội ở Quốc hội ng&amp;agrave;y 31/10, Thống đốc Nguyễn Văn B&amp;igrave;nh vừa khẳng định sẽ ki&amp;ecirc;n quyết cấm c&amp;aacute;c ng&amp;acirc;n h&amp;agrave;ng chia cổ tức nếu vẫn chưa tr&amp;iacute;ch lập dự ph&amp;ograve;ng rủi ro đ&amp;uacute;ng v&amp;agrave; đủ. Theo &amp;ocirc;ng B&amp;igrave;nh, biện ph&amp;aacute;p n&amp;agrave;y nhằm bắt buộc c&amp;aacute;c nh&amp;agrave; băng phải tự đứng ra xử l&amp;yacute; nợ xấu thay v&amp;igrave; tr&amp;ocirc;ng chờ v&amp;agrave;o c&amp;aacute;c nguồn lực kh&amp;aacute;c.&lt;/p&gt;\r\n&lt;p&gt;\r\n	T&amp;iacute;nh đến 30/9, tổng dư nợ t&amp;iacute;n dụng của Ng&amp;acirc;n h&amp;agrave;ng Qu&amp;acirc;n đội đạt hơn 64.800 tỷ đồng. Tốc độ tăng trưởng t&amp;iacute;n dụng 9 th&amp;aacute;ng đạt 10,65%. Trong khi đ&amp;oacute;, tốc độ tăng trưởng huy động kh&amp;aacute; tương ứng - tăng 12,11% khi đạt 100.429 tỷ đồng. Nợ xấu của ng&amp;acirc;n h&amp;agrave;ng l&amp;agrave; 1,99%.&lt;/p&gt;', '', '', '', '', '', 'Thanh Thanh Lan', 'VnExpress', 0, 0, 'upload/nganhang-mb-hha130.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:41:00', 'admin', '2012-11-03 01:41:00');
INSERT INTO `media` VALUES (63, 'default13518789521', '', 'media_news', '[78]', 'admin', 'Military Bank interest 2,000 billion', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;This is also one of the banks with high credit growth industry in the early months of the year.&amp;nbsp;End of the third quarter, profit after tax of MBB 2023 billion.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;img alt=&quot;Military Bank remained profitable growth over the same period. Photo: Yellow.&quot; height=&quot;302&quot; src=&quot;http://ebank.vnexpress.net/Files/Subject/3b/bd/df/64/nganhang-mb-hha460.jpg&quot; width=&quot;460&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Military Bank remained profitable growth over the same period.&amp;nbsp;Photo:&amp;nbsp;&lt;em&gt;Ho&amp;agrave;ng H&amp;agrave;.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Army joint-stock commercial banks (MB - Ticker: MBB) has announced the financial statements of the parent company.&lt;/p&gt;\r\n&lt;table align=&quot;right&quot; border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;154&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n					&lt;tbody&gt;\r\n						&lt;tr&gt;\r\n							&lt;td id=&quot;tdTopic_7296_1002299236&quot;&gt;\r\n								&amp;nbsp;&lt;/td&gt;\r\n						&lt;/tr&gt;\r\n					&lt;/tbody&gt;\r\n				&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	Accordingly, in the third quarter, net interest income reached 1,695 billion.&amp;nbsp;MBB&amp;#39;s main source of income is from service activities with a profit of 134 billion dong.&amp;nbsp;The first 9 months, the service activities take at for MBB 442.8 billion.&amp;nbsp;Meanwhile, income from capital contribution and share purchase and other activities decreased.&amp;nbsp;Securities activities, contribution of capital loss of 119.5 billion in the third quarter, the cumulative nine month loss of 270 billion dong.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bank pre-tax profit of 842 billion dong and after tax profit of 633 billion dong, an increase of nearly 20% over the same period.&amp;nbsp;Profit after tax for the third quarter was 633 billion, bringing the nine month profit to 2,023 billion.&lt;/p&gt;\r\n&lt;p&gt;\r\n	While cost reduction activities, the cost of credit risk reserve nine months of the year rose 41% from last year.&amp;nbsp;Up to 30/9, the cost of banking risk reserve of 904 billion during the same period last year was only 643 billion.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Earlier, in the discussion of socio-economic in the National Assembly on 31/10, Governor Nguyen Van Binh has confirmed resolutely prohibit dividend if the bank has not set aside proper and sufficient risk .&amp;nbsp;According to Binh, the measure to force banks to stand out NPLs instead rely on other resources.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Up to 30/9, the total outstanding loans of the Bank reached more than 64,800 troops billion.&amp;nbsp;9 months credit growth rate was 10.65%.&amp;nbsp;Meanwhile, the deposit growth rate was respectively - an increase of 12.11% to reach 100,429 billion.&amp;nbsp;The bank&amp;#39;s bad debt is 1.99%.&lt;/p&gt;', '', '', '', '', '', 'Thanh Thanh Lan', 'VnExpress', 0, 0, 'upload/nganhang-mb-hha130.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:41:00', 'admin', '2012-11-03 01:41:00');
INSERT INTO `media` VALUES (64, 'default13518791311', '', 'media_news', '[78]', 'admin', 'Hàng loạt sai phạm nghiêm trọng tại Constrexim Holdings', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;(D&amp;acirc;n tr&amp;iacute;) - Thanh tra Bộ X&amp;acirc;y dựng vừa c&amp;ocirc;ng bố kết luận thanh tra tại Tổng c&amp;ocirc;ng ty Constrexim Holdings, qua đ&amp;oacute; ph&amp;aacute;t hiện nhiều sai phạm trong giai đoạn 2006 - 2011.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;img _fl=&quot;&quot; align=&quot;center&quot; alt=&quot;Hàng loạt sai phạm nghiệm trọng tại Constrexim Holdings&quot; src=&quot;http://dantri4.vcmedia.vn/JFXAEMU9SiL8ARjHxzNM/Image/2012/11/ConstreximComplex_Trade-d63ed.jpg&quot; width=&quot;450&quot; /&gt;&lt;/div&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nhiều&amp;nbsp;sai phạm diễn ra tại Tổng c&amp;ocirc;ng ty Constrexim Holdings. Ảnh: Một dự &amp;aacute;n của Constrexim Holdings&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;X&amp;acirc;y tầng vượt ph&amp;eacute;p&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Theo Thanh tra Bộ X&amp;acirc;y dựng tại dự &amp;aacute;n x&amp;acirc;y dựng nh&amp;agrave; ở v&amp;agrave; c&amp;ocirc;ng tr&amp;igrave;nh c&amp;ocirc;ng cộng Y&amp;ecirc;n H&amp;ograve;a, Cầu Giấy, H&amp;agrave; Nội c&amp;oacute; diện t&amp;iacute;ch 58.277m2,&amp;nbsp; trong đ&amp;oacute; c&amp;oacute; 10.672m2 đất để x&amp;acirc;y chung cư cao tầng. Theo quy hoạch kiến tr&amp;uacute;c được Sở QHKT H&amp;agrave; Nội duyệt t&amp;ograve;a nh&amp;agrave; CT4 cao 12 tầng v&amp;agrave; t&amp;ograve;a CT5 cao 7 tầng, v&amp;agrave; được chấp thuận hợp 2 t&amp;ograve;a n&amp;agrave;y th&amp;agrave;nh 1 khối CT4-5. Tuy nhi&amp;ecirc;n, chủ đầu tư đ&amp;atilde; tự &amp;yacute; n&amp;acirc;ng t&amp;ograve;a CT5 từ 7 tầng l&amp;ecirc;n 12 tầng khi chưa c&amp;oacute;&amp;nbsp;sự ph&amp;ecirc; duyệt của UBND Th&amp;agrave;nh phố H&amp;agrave; Nội.&lt;/div&gt;\r\n&lt;p&gt;\r\n	Đối với khu đất nh&amp;agrave; vườn tại dự &amp;aacute;n n&amp;agrave;y cũng c&amp;oacute; nhiều sai phạm, c&amp;oacute; 24 căn nh&amp;agrave; thấp tầng được duyệt cao 3,5 tầng nhưng qua kiểm tra th&amp;igrave; c&amp;oacute; 21 căn x&amp;acirc;y cao 4 tầng, 2 căn x&amp;acirc;y cao 5 tầng v&amp;agrave; 1 căn cao 5,5 tầng, l&amp;ocirc; đất số 12 v&amp;agrave; 24 cũng bị lấn chiếm 144m2 để x&amp;acirc;y cổng r&amp;agrave;o v&amp;agrave; 1 nh&amp;agrave; cấp 4.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thanh tra cho rằng chủ đầu tư đ&amp;atilde; bu&amp;ocirc;ng lỏng quản l&amp;yacute; để một số hộ d&amp;acirc;n x&amp;acirc;y vượt tầng. Tr&amp;aacute;ch nhiệm n&amp;agrave;y thuộc về chủ đầu tư, v&amp;agrave; đề nghị Th&amp;agrave;nh phố xử l&amp;yacute; vi phạm.&lt;/p&gt;\r\n&lt;div&gt;\r\n	Ngo&amp;agrave;i ra chủ đầu tư c&amp;ograve;n tự &amp;yacute; chuyển đổi c&amp;ocirc;ng năng của tầng 5 v&amp;agrave; 6 t&amp;ograve;a nh&amp;agrave; HH1 từ văn ph&amp;ograve;ng sang 16 căn hộ m&amp;agrave; kh&amp;ocirc;ng được ph&amp;eacute;p của cơ quan c&amp;oacute; thẩm quyền.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Về diện t&amp;iacute;ch nh&amp;agrave; chung cư đ&amp;atilde; b&amp;aacute;n, Constrexim (CTX) phải b&amp;aacute;n theo ch&amp;iacute;nh s&amp;aacute;ch th&amp;agrave;nh phố 13.677,4 m2 s&amp;agrave;n nhưng CTX mới b&amp;aacute;n 7.525 m2 c&amp;ograve;n thiếu 6.152,4 m2 theo quy định. Trong khi to&amp;agrave;n bộ căn hộ CT3 v&amp;agrave; CT6 CTX đ&amp;atilde; đưa v&amp;agrave;o mục đ&amp;iacute;nh kinh doanh, kh&amp;ocirc;ng b&amp;aacute;n theo ch&amp;iacute;nh s&amp;aacute;ch của H&amp;agrave; Nội, mặc d&amp;ugrave; được ưu đ&amp;atilde;i tiền sử dụng đất.&lt;/div&gt;\r\n&lt;p&gt;\r\n	T&amp;ograve;a nh&amp;agrave; văn ph&amp;ograve;ng Tổng c&amp;ocirc;ng ty Bảo hiểm Dầu kh&amp;iacute; (PVI), tổ c&amp;ocirc;ng t&amp;aacute;c ph&amp;aacute;t hiện chủ đầu tư kh&amp;ocirc;ng lập dự &amp;aacute;n đầu tư, kh&amp;ocirc;ng thẩm định dự &amp;aacute;n trước khi ph&amp;ecirc; duyệt, vi phạm quy định của Thủ tướng đối với c&amp;aacute;c c&amp;ocirc;ng tr&amp;igrave;nh nh&amp;oacute;m A.&lt;/p&gt;\r\n&lt;p&gt;\r\n	B&amp;ecirc;n cạnh đ&amp;oacute;, chủ đầu tư cũng kh&amp;ocirc;ng ph&amp;ecirc; duyệt nhiệm vụ thiết kế của g&amp;oacute;i thầu thiết kế, trong khi bản vẽ thi c&amp;ocirc;ng kh&amp;ocirc;ng được chủ đầu tư k&amp;yacute; x&amp;aacute;c nhận v&amp;agrave; đ&amp;oacute;ng dấu trước khi đưa ra thi c&amp;ocirc;ng. Đặc biệt, năng lực ban quản l&amp;yacute; dự &amp;aacute;n n&amp;agrave;y cũng &amp;ldquo;c&amp;oacute; vấn đề&amp;rdquo; khi cả 4 c&amp;aacute;n bộ tham gia ban quản l&amp;yacute; dự &amp;aacute;n đều kh&amp;ocirc;ng c&amp;oacute; chứng nhận về nghiệp vụ quản l&amp;yacute; dự &amp;aacute;n đầu tư x&amp;acirc;y dựng c&amp;ocirc;ng tr&amp;igrave;nh theo quy định tại nghị định 12/2009 của Ch&amp;iacute;nh phủ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Lỗ nặng v&amp;igrave; đầu tư v&amp;agrave;o c&amp;aacute;c c&amp;ocirc;ng ty &amp;quot;bết b&amp;aacute;t&amp;quot;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Về việc CTCP Đ&amp;uacute;c T&amp;acirc;n Long Constrexim nơi&amp;nbsp;Constrexim nắm giữ 27,71% vốn điều lệ tương đương 18,4 tỷ đồng,&amp;nbsp;mất gần 20 tỷ đồng vốn nh&amp;agrave; nước: Theo b&amp;aacute;o c&amp;aacute;o của người đại diện vốn của Contrexim th&amp;igrave; từ 2008-2011, C&amp;ocirc;ng ty n&amp;agrave;y lỗ lũy kế hơn 47,4 tỷ đồng do đầu tư v&amp;agrave;o nh&amp;agrave; m&amp;aacute;y Gang Cầu qu&amp;aacute; lớn, dẫn đến mất vốn chủ sở hữu từ hơn 66,5 tỷ c&amp;ograve;n hơn 19 tỷ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo đo&amp;agrave;n thanh tra, C&amp;ocirc;ng ty hoạt động theo m&amp;ocirc; h&amp;igrave;nh&amp;nbsp;c&amp;ocirc;ng ty cổ phần&amp;nbsp;m&amp;agrave; h&amp;agrave;ng năm kh&amp;ocirc;ng c&amp;oacute; kiểm to&amp;aacute;n, kh&amp;ocirc;ng c&amp;oacute; Ban kiểm so&amp;aacute;t l&amp;agrave; vi phạm Luật doanh nghiệp. Việc lỗ lũy kế hơn 47,4 tỷ đồng đ&amp;atilde; dẫn đến l&amp;agrave;m th&amp;acirc;m hụt vốn của Constrexim hơn 13 tỷ. Thanh tra y&amp;ecirc;u cầu HĐQT Constrexim cần l&amp;agrave;m r&amp;otilde; nguy&amp;ecirc;n nh&amp;acirc;n th&amp;acirc;m hụt vốn, nếu ph&amp;aacute;t hiện vi phạm ph&amp;aacute;p luật h&amp;igrave;nh sự b&amp;aacute;o c&amp;aacute;o Thanh tra chuyển hồ sơ sang cơ quan cảnh s&amp;aacute;t điều tra để l&amp;agrave;m r&amp;otilde;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cũng tương tự trường hợp tr&amp;ecirc;n tại C&amp;ocirc;ng ty Constrexim B&amp;igrave;nh Định m&amp;agrave; Constrexim nắm 26,72% vốn điều lệ tương đương 8.129.420.000 đồng. Theo b&amp;aacute;o c&amp;aacute;o kiểm to&amp;aacute;n hoạt động kinh doanh của Constrexim B&amp;igrave;nh Định năm 2009, 2010 lỗ lũy kế hơn 81,8 tỷ đồng dẫn đến mất vốn to&amp;agrave;n bộ C&amp;ocirc;ng ty, khiến vốn chủ sở hữu &amp;acirc;m hơn 50 tỷ đồng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đo&amp;agrave;n thanh tra cho rằng, việc kh&amp;ocirc;ng b&amp;aacute;o c&amp;aacute;o trung thực của Ban l&amp;atilde;nh đạo c&amp;ocirc;ng ty, nới lỏng quản l&amp;yacute; của HĐQT, của Ban kiểm so&amp;aacute;t, người đại diện vốn của Constrexim l&amp;agrave; nguy&amp;ecirc;n nh&amp;acirc;n l&amp;agrave;m th&amp;acirc;m hụt to&amp;agrave;n bộ vốn điều lệ.&lt;/p&gt;\r\n&lt;div&gt;\r\n	Bộ X&amp;acirc;y dựng y&amp;ecirc;u cầu Constrexim&amp;nbsp;cần được l&amp;agrave;m r&amp;otilde; nguy&amp;ecirc;n nh&amp;acirc;n, nếu phạt hiện vi phạm ph&amp;aacute;p luật h&amp;igrave;nh sự phải b&amp;aacute;o c&amp;aacute;o Thanh tra v&amp;agrave; chuyển hồ sơ sang cơ quan cảnh s&amp;aacute;t điều tra để l&amp;agrave;m r&amp;otilde;.&lt;/div&gt;', '', '', '', '', '', 'Thông Chí', 'Dân Trí', 0, 0, 'upload/ConstreximComplex_Trade-d63ed.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:40:48', 'admin', '2012-11-03 01:40:48');
INSERT INTO `media` VALUES (65, 'default13518791311', '', 'media_news', '[78]', 'admin', 'A series of serious violations at Constrexim Holdings', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;(Reuters) - Inspectorate of the Ministry of Construction has announced the conclusion of the inspection at Corporation Constrexim Holdings, which found multiple violations in the period 2006 - 2011.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;img _fl=&quot;&quot; align=&quot;center&quot; alt=&quot;A series of serious violations at Constrexim Holdings&quot; src=&quot;http://dantri4.vcmedia.vn/JFXAEMU9SiL8ARjHxzNM/Image/2012/11/ConstreximComplex_Trade-d63ed.jpg&quot; width=&quot;450&quot; /&gt;&lt;/div&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Many errors occur at Corporation Constrexim Holdings.&amp;nbsp;Photo: A project of Constrexim Holdings&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;strong&gt;Building exceeding permitted floor&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Inspectorate of the Ministry of Construction in housing projects and public works Yen Hoa, Cau Giay, Hanoi has an area of ​​58.277m2, of which 10.672m2 of land to build condominiums.&amp;nbsp;According to architectural plans approved by Department QHKT Hanoi 12-storey building CT4 and CT5 buildings seven stories high, and this court approved the 2 into 1 CT4 mass-5.&amp;nbsp;However, the investor has arbitrarily raised CT5 from 7 storeys to 12 storeys without the approval of the People&amp;#39;s Committee of Hanoi City.&lt;/div&gt;\r\n&lt;p&gt;\r\n	For garden land in the project area also has many mistakes, there are 24 low-rise house is 3.5 storeys but browsing through check is 21 floor high building 4, 2 5-story high apartment building and one the 5.5-story, Lot No. 12 and 24 also occupied 144m2 to build fence and gate 1 4.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Inspection that investors have neglected to management some households over rises.&amp;nbsp;This responsibility belongs to the investor, and asked City to handle violations.&lt;/p&gt;\r\n&lt;div&gt;\r\n	Investors also voluntarily converted floors 5 and 6 HH1 from the office building into 16 apartments without permission of the competent authority.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	In area condominiums sold, Constrexim (CTX) to sell on city policy 13677.4 m2 but selling new CTX 7525 m2 lacking 6152.4 m2 prescribed.While the entire apartment CT3 and CT6 CTX have included business purposes, no part of Hanoi&amp;#39;s policy, although land use preferences.&lt;/div&gt;\r\n&lt;p&gt;\r\n	Office Building Corporation PetroVietnam Insurance (PVI), the working group found investors not establish investment projects, project evaluation before approval, violating the provisions of the Prime Minister for of Group A.&lt;/p&gt;\r\n&lt;p&gt;\r\n	In addition, investors are not approved design task of the package design, while the drawing is not the investors signed and sealed before construction.In particular, this project management capacity &amp;quot;problem&amp;quot; when the four staff involved in management are not certified project management professional investment project construction in accordance with Decree 12/2009 of the Government.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Heavy losses due to investments in the company &amp;quot;flat bowl&amp;quot;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	On the Joint Anti Tan Long Constrexim where Constrexim held 27.71% stake equivalent to 18.4 billion, lost nearly 20 billion state capital: According to the representative of capital of Contrexim, from 2008-2011 , the company accumulated losses over 47.4 billion by investing in Iron Bridge plant is too large, leading to loss of equity from 66.5 billion to 19 billion.&lt;/p&gt;\r\n&lt;p&gt;\r\n	According to the inspection team, the company operated as a joint stock company that annually there is no audit, no Supervisory Board is in violation of the Law on Enterprises.&amp;nbsp;The accumulated losses of more than 47.4 billion deficit led to do capital of Constrexim than 13 billion.&amp;nbsp;Inspection requirements of the Board of Directors Constrexim to clarify the causes deficits which, if found in violation of criminal law inspection report transfer the dossier to the police investigation to clarify.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Similar cases at Constrexim Company Binh Dinh which Constrexim holds the 26.72% stake equivalent to 8,129,420,000.&amp;nbsp;According to the audit report activities the business of Binh Dinh Constrexim in 2009, 2010 accumulated losses of more than 81.8 billion resulting in loss of entire capital company, causing negative equity more than 50 billion.&lt;/p&gt;\r\n&lt;p&gt;\r\n	The inspection team said that no honest reporting of company leadership and deregulation of the Board, the Board of Supervisors, a representative of Constrexim capital deficit causes the entire capital.&lt;/p&gt;\r\n&lt;div&gt;\r\n	Ministry of Construction request Constrexim need is to clarify the cause, if the penalty is criminal law violations must report to Inspector and transferred to the police investigation to clarify.&lt;/div&gt;', '', '', '', '', '', 'Thông Chí', 'Dân Trí', 0, 0, 'upload/ConstreximComplex_Trade-d63ed.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:40:48', 'admin', '2012-11-03 01:40:48');
INSERT INTO `media` VALUES (66, 'default13518793451', '', 'media_news', '[79]', 'admin', 'Mật vụ bảo vệ Tổng thống Obama tự sát', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Một mật vụ cấp cao bảo vệ Tổng thống Obama đ&amp;atilde; tự s&amp;aacute;t v&amp;agrave;o tuần trước tại Washington, khi đang bị điều tra v&amp;igrave; mối quan hệ với một phụ nữ ngoại quốc.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '&lt;h2&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;(D&amp;acirc;n tr&amp;iacute;) - Một mật vụ cấp cao bảo vệ Tổng thống Obama đ&amp;atilde; tự s&amp;aacute;t v&amp;agrave;o tuần trước tại Washington, khi đang bị điều tra v&amp;igrave; mối quan hệ với một phụ nữ ngoại quốc.&lt;/span&gt;&lt;/h2&gt;\r\n&lt;p align=&quot;center&quot;&gt;\r\n	&lt;img _fl=&quot;null&quot; align=&quot;middle&quot; alt=&quot;Cơ quan Mật vụ Mỹ chịu trách nhiệm bảo vệ tổng thống, phó tổng thống và gia đình họ.&quot; src=&quot;http://dantri4.vcmedia.vn/SF9n0XnWe1mhJ0SanI/Image/2012/11/1-93afe.jpg&quot; width=&quot;450&quot; /&gt;&lt;/p&gt;\r\n&lt;p align=&quot;center&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Cơ quan Mật vụ Mỹ chịu tr&amp;aacute;ch nhiệm bảo vệ tổng thống, ph&amp;oacute; tổng thống v&amp;agrave; gia đ&amp;igrave;nh họ.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Rafael Prieto, 47 tuổi, đ&amp;atilde; kết h&amp;ocirc;n v&amp;agrave; c&amp;oacute; con, l&amp;agrave; mật vụ trong nh&amp;oacute;m bảo vệ an ninh cho Tổng thống Mỹ Obama. Prieto đ&amp;atilde; thừa nhận với c&amp;aacute;c nh&amp;agrave; điều tra về mối quan hệ trong nhiều năm với một phụ nữ Mexico. Mối quan hệ n&amp;agrave;y được một mật vụ tiết lộ với c&amp;aacute;c nh&amp;agrave; điều tra cơ quan Mật vụ, khi họ đang điều tra vụ b&amp;ecirc; bối g&amp;aacute;i mại d&amp;acirc;m của c&amp;aacute;c th&amp;agrave;nh vi&amp;ecirc;n mật vụ ở Columbia v&amp;agrave;o đầu năm nay.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo quy định của Cơ quan mật vụ, c&amp;aacute;c nh&amp;acirc;n vi&amp;ecirc;n của cơ quan n&amp;agrave;y phải tr&amp;igrave;nh b&amp;aacute;o với cơ quan về bất kỳ mối quan hệ n&amp;agrave;o với người nước ngo&amp;agrave;i, để đảm bảo người đ&amp;oacute; kh&amp;ocirc;ng g&amp;acirc;y nguy hiểm cho an ninh quốc gia. Hiện chưa c&amp;oacute; bằng chứng cho thấy mối quan hệ của Prieto g&amp;acirc;y ra nguy cơ về an ninh cho Mỹ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Prieto nằm trong nh&amp;oacute;m bảo vệ an ninh cho Obama, tuy nhi&amp;ecirc;n v&amp;agrave;o thời điểm tự s&amp;aacute;t, mật vụ n&amp;agrave;y kh&amp;ocirc;ng l&amp;agrave;m việc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cơ quan mật vụ Mỹ chịu tr&amp;aacute;ch nhiệm bảo vệ tổng thống, ph&amp;oacute; tổng thống c&amp;ugrave;ng gia đ&amp;igrave;nh v&amp;agrave; cũng điều tra c&amp;aacute;c vụ giả mạo, gian lận ng&amp;acirc;n h&amp;agrave;ng, x&amp;acirc;m nhập m&amp;aacute;y t&amp;iacute;nh v&amp;agrave; c&amp;aacute;c loại tội phạm t&amp;agrave;i ch&amp;iacute;nh kh&amp;aacute;c.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Vấn đề đạo đức của c&amp;aacute;c mật vụ hiện bị soi x&amp;eacute;t kỹ kể từ khi 13 nh&amp;acirc;n vi&amp;ecirc;n cơ quan n&amp;agrave;y d&amp;iacute;nh l&amp;iacute;u tới vụ b&amp;ecirc; bối g&amp;aacute;i mại d&amp;acirc;m ở Cartagena, Colombia hồi th&amp;aacute;ng 4.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	13 nh&amp;acirc;n vi&amp;ecirc;n n&amp;agrave;y đ&amp;atilde; tới th&amp;agrave;nh phố nghỉ m&amp;aacute;t ở Caribe trước chuyến c&amp;ocirc;ng du của &amp;ocirc;ng Obama nhằm tham dự một hội nghị thượng đỉnh Nam Mỹ. Sau một đ&amp;ecirc;m tiệc t&amp;ugrave;ng, họ đ&amp;atilde; dẫn phụ nữ, trong đ&amp;oacute; c&amp;oacute; cả g&amp;aacute;i mại d&amp;acirc;m, về ph&amp;ograve;ng. Vụ việc bị lộ khi một mật vụ kh&amp;ocirc;ng trả tiền cho một g&amp;aacute;i mại d&amp;acirc;m v&amp;agrave; c&amp;atilde;i nhau với c&amp;ocirc; n&amp;agrave;y ở sảnh kh&amp;aacute;ch sạn. Tuy nhi&amp;ecirc;n, Prieto kh&amp;ocirc;ng li&amp;ecirc;n quan g&amp;igrave; tới vụ b&amp;ecirc; bối khi đ&amp;oacute;.&lt;/p&gt;', '', '', '', '', '', 'Vũ Quý', 'Theo AP', 0, 0, 'upload/1-93afe.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:43:37', 'admin', '2012-11-03 02:43:37');
INSERT INTO `media` VALUES (67, 'default13518793451', '', 'media_news', '[79]', 'admin', 'Secret Service to protect President Obama himself', '', '', 'en', '&lt;h2&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;(Reuters) - A senior Secret Service to protect President Obama has committed suicide last week in Washington, while being investigated for a relationship with a foreign woman.&lt;/span&gt;&lt;/h2&gt;', '&lt;h2&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;(Reuters) - A senior Secret Service to protect President Obama has committed suicide last week in Washington, while being investigated for a relationship with a foreign woman.&lt;/span&gt;&lt;/h2&gt;\r\n&lt;div&gt;\r\n	&lt;p align=&quot;center&quot;&gt;\r\n		&lt;img _fl=&quot;null&quot; align=&quot;middle&quot; alt=&quot;The U.S. Secret Service is responsible for protecting the president, vice president and their families.&quot; src=&quot;http://dantri4.vcmedia.vn/SF9n0XnWe1mhJ0SanI/Image/2012/11/1-93afe.jpg&quot; width=&quot;450&quot; /&gt;&lt;/p&gt;\r\n	&lt;p align=&quot;center&quot;&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;The U.S. Secret Service is responsible for protecting the president, vice president and their families.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Rafael Prieto, 47, was married and had children, a secret police security team for President Obama. Prieto admitted to investigators about the relationship for many years with a woman Mexico . This relationship is a secret revealed to the investigators of the Secret Service, they are investigating the prostitution scandal of secret service members in Columbia earlier this year.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Under the provisions of The Secret Service, the agency&amp;#39;s staff to report to the agency about any relationship with foreigners, to ensure they do not endanger national security. There is no evidence that the relationship of Prieto cause security risk for the United States.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Prieto among security for Obama, but at the time of suicide, the Secret Service is not working.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The Secret Service is responsible for protecting the president, the vice president and his family and also the investigation of fraud, bank fraud, computer intrusion and other financial crimes.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Ethical issues of the Secret Service is being considered carefully since the detector 13 agency staff involved in the prostitution scandal in Cartagena , Colombia in April.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		13 city employees have to vacation in the Caribbean before Obama&amp;#39;s trip to attend a summit of South America. After a night of partying, they were women, including prostitutes, to his room. The case was exposed when a secret is not to pay for a prostitute and arguing with her in the hotel lobby. However, Prieto unrelated to the scandal at the time.&lt;/p&gt;\r\n	&lt;p align=&quot;right&quot;&gt;\r\n		&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Vũ Quý', 'Theo AP', 0, 0, 'upload/1-93afe.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:43:37', 'admin', '2012-11-03 02:43:37');
INSERT INTO `media` VALUES (68, 'default13518793841', '', 'media_news', '[78]', 'admin', 'Gần 170 mã giảm sàn, chứng khoán lao dốc', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;(D&amp;acirc;n tr&amp;iacute;) - Với hơn 360 m&amp;atilde; giảm điểm, trong đ&amp;oacute; 169 m&amp;atilde; giảm s&amp;agrave;n, thị trường lao dốc nhanh ch&amp;oacute;ng, VN-Index mất tới 10,18 điểm. Cổ phiếu SBT, SCR giảm s&amp;agrave;n v&amp;agrave; bị b&amp;aacute;n ồ ạt sau th&amp;ocirc;ng tin b&amp;agrave; Huỳnh B&amp;iacute;ch Ngọc r&amp;uacute;t khỏi HĐQT của SBT.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;img _fl=&quot;&quot; align=&quot;middle&quot; alt=&quot;Nhà đầu tư dường như đang không giữ được bình tĩnh.&quot; src=&quot;http://dantri4.vcmedia.vn/hOUaiPIzyO22coD06QNl/Image/2012/11/giam-san-179d4.jpg&quot; width=&quot;450&quot; /&gt;&lt;/div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nh&amp;agrave; đầu tư dường như đang kh&amp;ocirc;ng giữ được b&amp;igrave;nh tĩnh.&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Thị trường phi&amp;ecirc;n s&amp;aacute;ng nay (2/11/2012) tiếp tục chứng kiến một đợt lao dốc bất ngờ của thị trường.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Ngay từ đầu phi&amp;ecirc;n, tr&amp;ecirc;n cả hai s&amp;agrave;n, cổ phiếu đều giảm s&amp;agrave;n đồng loạt, rất kh&amp;oacute; để nh&amp;igrave;n thấy c&amp;aacute;c m&amp;atilde; xanh điểm tr&amp;ecirc;n bảng gi&amp;aacute;, thay v&amp;agrave;o đ&amp;oacute; l&amp;agrave; m&amp;agrave;u đỏ v&amp;agrave; xanh x&amp;aacute;m bao tr&amp;ugrave;m.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Chỉ số tr&amp;ecirc;n cả hai s&amp;agrave;n đều mất điểm mạnh. VN-Index l&amp;ugrave;i về 377,77 điểm, mất 10,18 điểm tương ứng 2,62%. HNX-Index mất 1,77 điểm tương ứng 3,36% xuống c&amp;ograve;n 50,89 điểm. VN30-Index thậm ch&amp;iacute; mất tới 12,34 điểm c&amp;ograve;n 445,72 điểm.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Chốt phi&amp;ecirc;n, to&amp;agrave;n s&amp;agrave;n ghi nhận 169 m&amp;atilde; giảm s&amp;agrave;n, trong số 361 m&amp;atilde; mất điểm, trong khi tổng cộng chỉ c&amp;oacute; 52 m&amp;atilde; tăng v&amp;agrave; 20 m&amp;atilde; tăng trần. Rổ VN30 thậm ch&amp;iacute; chỉ c&amp;oacute; một m&amp;atilde; tăng, HNX30 kh&amp;ocirc;ng c&amp;oacute; m&amp;atilde; n&amp;agrave;o tăng điểm. Số m&amp;atilde; giảm trong mỗi rổ l&amp;agrave; 29 m&amp;atilde;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Trong phi&amp;ecirc;n tăng điểm hiếm hoi v&amp;agrave;o h&amp;ocirc;m qua, s&amp;aacute;ng nay, STB lại nối mạch giảm, mất tới 700 đồng mỗi cổ phiếu, đ&amp;aacute;nh mất mốc 19.000 v&amp;agrave; chỉ c&amp;ograve;n 18.600 đồng/cp. Khớp lệnh đối với STB rất mạnh, đạt 1,76 triệu đơn vị - hơn gấp 3 lần so với tổng khối lượng được khớp trong cả ng&amp;agrave;y trước đ&amp;oacute;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	SBT phi&amp;ecirc;n n&amp;agrave;y giảm s&amp;agrave;n c&amp;ograve;n 16.900 đồng/cp, chịu &amp;aacute;p lực b&amp;aacute;n rất mạnh v&amp;agrave; kh&amp;ocirc;ng hề c&amp;oacute; lệnh đặt mua. Cuối phi&amp;ecirc;n, SBT c&amp;ograve;n tới 1,17 triệu cổ phiếu dư b&amp;aacute;n gi&amp;aacute; s&amp;agrave;n.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Từ h&amp;ocirc;m qua, Hội đồng quản trị của Bourbon T&amp;acirc;y Ninh đ&amp;atilde; chấp thuận việc từ nhiệm th&amp;agrave;nh vi&amp;ecirc;n HĐQT của b&amp;agrave; Huỳnh B&amp;iacute;ch Ngọc. Tại SBT, con g&amp;aacute;i b&amp;agrave; Ngọc l&amp;agrave; b&amp;agrave; Đặng Huỳnh Ức My l&amp;agrave; Chủ tịch HĐQT c&amp;ocirc;ng ty.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	R&amp;uacute;t khỏi HĐQT của SBT, b&amp;agrave; Ngọc vẫn đang c&amp;ograve;n giữ chức vụ Chủ tịch HĐQT của CTCP Sản xuất - Thương mại Th&amp;agrave;nh Th&amp;agrave;nh C&amp;ocirc;ng; l&amp;agrave; Ph&amp;oacute; Chủ tịch HĐQT của CTCP Địa ốc S&amp;agrave;i G&amp;ograve;n Thương T&amp;iacute;n (SCR) - nơi con trai b&amp;agrave; l&amp;agrave; &amp;ocirc;ng Đặng Hồng Anh l&amp;agrave; Chủ tịch HĐQT.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Cũng trong phi&amp;ecirc;n n&amp;agrave;y, SCR bị b&amp;aacute;n th&amp;aacute;o rất mạnh. Cổ phiếu n&amp;agrave;y giảm s&amp;agrave;n c&amp;ograve;n 5.100 đồng/cp, cuối phi&amp;ecirc;n, dư b&amp;aacute;n s&amp;agrave;n c&amp;ograve;n tới gần 7 triệu đơn vị, kh&amp;ocirc;ng hề c&amp;oacute; lệnh đặt mua.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Rổ VN30, ngo&amp;agrave;i KDC tăng 300 đồng th&amp;igrave; tất cả c&amp;aacute;c m&amp;atilde; c&amp;ograve;n lại đều mất điểm.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Giao dịch mạnh tiếp tục diễn ra ở ITA. M&amp;atilde; n&amp;agrave;y s&amp;aacute;ng n&amp;agrave;y mất 100 đồng mỗi cổ phiếu, giao dịch khớp lệnh gần 3 triệu đơn vị. Trong khi KBC giảm s&amp;agrave;n, c&amp;ograve;n 5.400 đồng, cuối phi&amp;ecirc;n tr&amp;ecirc;n bảng gi&amp;aacute; trắng b&amp;ecirc;n mua.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Phi&amp;ecirc;n n&amp;agrave;y, HNX bị k&amp;iacute;ch động do khối lượng giao dịch tại KLS, SHB, VND, PVX... đều đạt cao. KLS khớp lệnh 3,4 triệu đơn vị, SHB khớp gần 4,9 triệu đơn vị v&amp;agrave; VND cũng khớp tr&amp;ecirc;n 3,4 triệu đơn vị.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Giảm s&amp;agrave;n c&amp;ograve;n 4.000 đồng, PVX h&amp;ocirc;m nay được giao dịch tới 5,4 triệu đơn vị, cuối phi&amp;ecirc;n dư mua gi&amp;aacute; s&amp;agrave;n c&amp;ograve;n 1,17 triệu cổ phiếu cho thấy cầu bắt đ&amp;aacute;y ở m&amp;atilde; n&amp;agrave;y kh&amp;aacute; lớn. Tương tự ở SHB c&amp;ograve;n dư mua hơn 5 triệu đơn vị.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Thị trường biến động đ&amp;atilde; đẩy khối lượng giao dịch tr&amp;ecirc;n cả hai s&amp;agrave;n l&amp;ecirc;n cao. Tại s&amp;agrave;n TPHCM c&amp;oacute; 39,3 triệu cổ phiếu giao dịch, ứng với 417,3 tỷ đồng. Tại s&amp;agrave;n H&amp;agrave; Nội c&amp;oacute; 31,8 triệu cổ phiếu giao dịch tương ứng 191,5 tỷ đồng.&lt;/p&gt;', '', '', '', '', '', 'Mai Chi', 'Dân Trí', 0, 0, 'upload/giam-san-179d4.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:40:36', 'admin', '2012-11-03 01:40:36');
INSERT INTO `media` VALUES (69, 'default13518793841', '', 'media_news', '[78]', 'admin', 'Nearly 170 falling to the floor, the stock plummeted', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;(AP) - With more than 360 stocks declined, while 169 shares falling to the floor, the labor market slope quickly, VN-Index lost 10.18 points.SBT stock, SCR reduces floor and massive sales after Huynh Bich Ngoc information drawn from the Board of Directors of SBT.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;img _fl=&quot;&quot; align=&quot;middle&quot; alt=&quot;Investors seemed calm.&quot; src=&quot;http://dantri4.vcmedia.vn/hOUaiPIzyO22coD06QNl/Image/2012/11/giam-san-179d4.jpg&quot; width=&quot;450&quot; /&gt;&lt;/div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Investors seemed calm.&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Market this morning (02/11/2012) continued saw an unexpected plunge in the market.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Right from the beginning of the session, on both floors, the floor stocks fell simultaneously, it is difficult to see the green on the table of stocks, instead of red and blue-gray cover.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Indicators on both floors are losing strength.&amp;nbsp;VN-Index retreated 377.77 points, down 10.18 points or 2.62%.&amp;nbsp;HNX-Index lost 1.77 points, equivalent to 3.36 per cent to 50.89 points.&amp;nbsp;VN30-Index even lost 12.34 points to 445.72 points.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Session, all floor recorded 169 falling to the floor, out of 361 stocks lost, while a total of only 52 gainers and 20 ceiling.&amp;nbsp;VN30 basket even only one gaining, HNX30 no gain.&amp;nbsp;Number of losers in each basket is 29.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	In rare rally yesterday, this morning, STB to reducing circuit connection, take up to 700 dong per share, lost landmark 19,000 and only 18,600 VND / share.&amp;nbsp;Matched to the STB is very strong, reaching 1.76 million units - more than three times the total amount of the match earlier in the day.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	SBT session the floor to 16,900 dong / share, selling pressure is very strong and there is no purchase order.&amp;nbsp;End of the session, SBT 1.17 million shares oversold floor.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	From yesterday, the Board of Bourbon Tay Ninh has approved the resignation of a member of the Board of Directors of Huynh Bich Ngoc.&amp;nbsp;In SBT, her daughter Ngoc Dang Huynh My breast is Chairman of the company.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Withdraw from the Board of SBT, Ms. Ngoc is still holding the office of Chairman of the Board of Directors of JSC Production - Trading Success; Vice Chairman of Saigon Thuong Tin Real Estate Joint Stock Company (SCR) - where her son is Mr. Dang Hong Anh Chairman.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Also in this version, the SCR is very strong sell-off.&amp;nbsp;This stock dropped floor 5,100 dong / share, the end of the session, oversold the floor to nearly 7 million units, there is no purchase order.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	VN30 basketball, in addition to the KDC up 300, all remaining codes are missing the point.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Transactions strength continued in ITA.&amp;nbsp;The code this morning loss of 100 dong per share, matched transactions nearly 3 million units.&amp;nbsp;While KBC reduced floor, 5400, the end of the session on the white price buyer.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	This session, HNX excited by the volume at KLS, SHB, VND, PVX ...&amp;nbsp;are high achieving.&amp;nbsp;KLS matching 3.4 million units, SHB match nearly USD 4.9 million units and matches over 3.4 million units.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Reduced floor 4,000 dong, PVX today is of 5.4 million units, the end of the session overbought floor price of 1.17 million shares see demand at bottom in this code is quite large.&amp;nbsp;Same SHB to overbought than 5 million units.&amp;nbsp;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Market volatility has pushed the trading volume on both floors up.&amp;nbsp;In Hochiminh Stock Exchange with 39.3 million shares traded, with 417.3 billion.&amp;nbsp;On Hanoi with 31.8 million shares traded respectively 191.5 billion.&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', 'Mai Chi', 'Dân Trí', 0, 0, 'upload/giam-san-179d4.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:40:36', 'admin', '2012-11-03 01:40:36');
INSERT INTO `media` VALUES (70, 'default13518795281', '', 'media_news', '[78]', 'admin', 'Nợ công của Việt Nam tiếp tục gia tăng vì tăng trưởng thấp', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;(D&amp;acirc;n tr&amp;iacute;) - B&amp;aacute;o c&amp;aacute;o của Ch&amp;iacute;nh phủ về t&amp;igrave;nh h&amp;igrave;nh nợ c&amp;ocirc;ng thể hiện, tổng số dư nợ c&amp;ocirc;ng ở Việt Nam đang ở mức 55,4% GDP. Tăng trưởng kh&amp;ocirc;ng đạt kế hoạch, nợ c&amp;ocirc;ng, nợ Ch&amp;iacute;nh phủ trong năm 2012 v&amp;agrave; c&amp;aacute;c năm tiếp theo được dự b&amp;aacute;o tiếp tục gia tăng.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;img _fl=&quot;&quot; align=&quot;center&quot; alt=&quot;Chính phủ khẳng định tỷ lệ trả nợ 10 năm qua vẫn được khống chế ở mức dưới 20% GDP.&quot; src=&quot;http://dantri4.vcmedia.vn/VLEfzoZuPAIveDWb3xCC/Image/2012/11/no-cong-1-9b0e1.jpg&quot; width=&quot;450&quot; /&gt;&lt;/div&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Ch&amp;iacute;nh phủ khẳng định tỷ lệ trả nợ 10 năm qua vẫn được khống chế ở mức dưới 20% GDP.&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	Về kết quả huy động, sử dụng vốn vay v&amp;agrave; trả nợ của Ch&amp;iacute;nh phủ, b&amp;aacute;o c&amp;aacute;o cho biết, tổng số vốn vay ODA v&amp;agrave; vay ưu đ&amp;atilde;i nước ngo&amp;agrave;i t&amp;iacute;nh đến cuối năm 2011 đạt 71,7 tỷ USD, trong đ&amp;oacute; số vốn đ&amp;atilde; được k&amp;yacute; kết (th&amp;ocirc;ng qua c&amp;aacute;c hiệp định vay/thoả thuận viện trợ kh&amp;ocirc;ng ho&amp;agrave;n lại) l&amp;agrave; 54,1 tỷ USD. Vốn ODA đ&amp;atilde; được giải ng&amp;acirc;n cho c&amp;aacute;c chương tr&amp;igrave;nh, dự &amp;aacute;n l&amp;agrave; 33,41 tỷ USD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ph&amp;aacute;t h&amp;agrave;nh tr&amp;aacute;i phiếu Ch&amp;iacute;nh phủ trong nước năm 2010 được 68.292 tỷ đồng, năm 2011 đạt 80.447 tỷ đồng v&amp;agrave; v&amp;agrave; dự kiến năm 2012 l&amp;agrave; 120.000 tỷ đồng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thời điểm kết th&amp;uacute;c năm 2011, tổng số vốn cam kết vay thương mại nước ngo&amp;agrave;i l&amp;agrave; 4,08 tỷ USD, tổng số vốn đ&amp;atilde; r&amp;uacute;t l&amp;agrave; 3,06 tỷ USD, dư nợ l&amp;agrave; 2,9 tỷ USD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	68% dư nợ vốn vay nước ngo&amp;agrave;i của Ch&amp;iacute;nh phủ được đưa v&amp;agrave;o c&amp;acirc;n đối ng&amp;acirc;n s&amp;aacute;ch, 32% cho vay lại c&amp;aacute;c dự &amp;aacute;n đầu tư c&amp;oacute; khả năng thu hồi vốn, b&amp;aacute;o c&amp;aacute;o ph&amp;acirc;n t&amp;iacute;ch.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đối với phần vốn vay nước ngo&amp;agrave;i của Ch&amp;iacute;nh phủ, một phần được đưa v&amp;agrave;o c&amp;acirc;n đối ng&amp;acirc;n s&amp;aacute;ch (chiếm 68% dư nợ vay nước ngo&amp;agrave;i của Ch&amp;iacute;nh phủ), một phần cho vay lại c&amp;aacute;c dự &amp;aacute;n đầu tư c&amp;oacute; khả năng thu hồi vốn (chiếm 32%).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tổng trị gi&amp;aacute; vay nước ngo&amp;agrave;i của Ch&amp;iacute;nh phủ đ&amp;atilde; giải ng&amp;acirc;n để cho vay lại tương đương 12,6 tỉ USD. Dư nợ c&amp;aacute;c dự &amp;aacute;n cho vay lại của Ch&amp;iacute;nh phủ tương đương 10,3 tỉ USD, bằng 32% dư nợ nước ngo&amp;agrave;i của Ch&amp;iacute;nh phủ, v&amp;agrave; bằng 8,5% GDP.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;aacute;c khoản vay được tập trung v&amp;agrave;o một số ng&amp;agrave;nh l&amp;agrave; điện, dầu kh&amp;iacute;, c&amp;ocirc;ng nghiệp t&amp;agrave;u thủy, cấp nước, n&amp;ocirc;ng nghiệp, đường cao tốc, h&amp;agrave;ng kh&amp;ocirc;ng, cảng biển, c&amp;ocirc;ng nghiệp, xi măng, ph&amp;aacute;t triển hạ tầng đ&amp;ocirc; thị&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	B&amp;aacute;o c&amp;aacute;o n&amp;ecirc;u nhận định: &amp;ldquo;Nh&amp;igrave;n chung, c&amp;aacute;c dự &amp;aacute;n vay lại vốn vay nước ngo&amp;agrave;i của Ch&amp;iacute;nh phủ hoạt động c&amp;oacute; hiệu quả thể hiện qua việc trả nợ đầy đủ, đ&amp;uacute;ng hạn&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trong 580 dự &amp;aacute;n cho vay lại, số dự &amp;aacute;n c&amp;oacute; nợ qu&amp;aacute; hạn đến cuối năm 2011 l&amp;agrave; 55 dự &amp;aacute;n với số dư nợ gốc qu&amp;aacute; hạn chiếm 0,7% tổng dư nợ cho vay lại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nguy&amp;ecirc;n nh&amp;acirc;n chủ yếu do c&amp;aacute;c biến động của thị trường ti&amp;ecirc;u thụ sản phẩm, đặc biệt l&amp;agrave; đối với c&amp;aacute;c dự &amp;aacute;n n&amp;ocirc;ng nghiệp, n&amp;ocirc;ng sản, tỷ gi&amp;aacute; ngoại tệ/VNĐ biến động mạnh theo hướng l&amp;agrave;m tăng dư nợ của c&amp;aacute;c dự &amp;aacute;n vay lại bằng ngoại tệ...&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tuy nhi&amp;ecirc;n, Ch&amp;iacute;nh phủ khẳng định, chỉ ti&amp;ecirc;u về trả nợ của Ch&amp;iacute;nh phủ so với thu ng&amp;acirc;n s&amp;aacute;ch nh&amp;agrave; nước trong 10 năm qua lu&amp;ocirc;n nằm trong giới hạn an to&amp;agrave;n (dưới 20% tổng thu ng&amp;acirc;n s&amp;aacute;ch nh&amp;agrave; nước).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cơ quan lập b&amp;aacute;o c&amp;aacute;o ph&amp;acirc;n t&amp;iacute;ch, v&amp;igrave; nhu cầu vốn đầu tư cho c&amp;aacute;c chương tr&amp;igrave;nh, dự &amp;aacute;n x&amp;acirc;y dựng kết cấu hạ tầng kinh tế - x&amp;atilde; hội ng&amp;agrave;y c&amp;agrave;ng tăng, b&amp;ecirc;n cạnh đ&amp;oacute; tăng trưởng kinh tế năm 2012 dự kiến chỉ đạt khoảng 5,2 - 5,7% (kế hoạch l&amp;agrave; 6,0 - 6,5%) n&amp;ecirc;n xu hướng gia tăng về nợ c&amp;ocirc;ng, nợ Ch&amp;iacute;nh phủ trong năm 2012 v&amp;agrave; c&amp;aacute;c năm tiếp theo vẫn tiếp tục.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chi ph&amp;iacute; vay nợ c&amp;oacute; xu hướng gia tăng, nhất l&amp;agrave; việc chuyển đổi c&amp;aacute;c điều kiện vay &amp;aacute;p dụng cho Việt Nam khi trở th&amp;agrave;nh nước thu nhập trung b&amp;igrave;nh. Trong cơ cấu danh mục nợ c&amp;ocirc;ng hiện tại vẫn c&amp;ograve;n c&amp;oacute; một số rủi ro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Nợ c&amp;ocirc;ng đến năm 2015 kh&amp;ocirc;ng qu&amp;aacute; 65% GDP&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ch&amp;iacute;nh phủ cho biết, t&amp;iacute;nh đến 31/12/2011, tổng số dư nợ c&amp;ocirc;ng bằng 55,4% GDP, giảm 1,9% so với năm 2010. Trong đ&amp;oacute;, c&amp;aacute;c khoản nợ trực tiếp của Ch&amp;iacute;nh phủ chiếm 78% v&amp;agrave; bằng 43,1% GDP. Nợ được Ch&amp;iacute;nh phủ bảo l&amp;atilde;nh chiếm khoảng 21% v&amp;agrave; bằng 11,7% GDP. Nợ ch&amp;iacute;nh quyền địa phương chiếm khoảng 1,0% v&amp;agrave; bằng 0,5% GDP.&lt;/p&gt;\r\n&lt;p&gt;\r\n	C&amp;ugrave;ng với xu hướng gia tăng về nợ c&amp;ocirc;ng, nợ Ch&amp;iacute;nh phủ, chi ph&amp;iacute; vay nợ cũng c&amp;oacute; xu hướng gia tăng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo định hướng của Ch&amp;iacute;nh phủ, nợ c&amp;ocirc;ng (bao gồm nợ Ch&amp;iacute;nh phủ, nợ được Ch&amp;iacute;nh phủ bảo l&amp;atilde;nh v&amp;agrave; nợ ch&amp;iacute;nh quyền địa phương) đến năm 2015 kh&amp;ocirc;ng qu&amp;aacute; 65% GDP, trong đ&amp;oacute; dư nợ ch&amp;iacute;nh phủ kh&amp;ocirc;ng qu&amp;aacute; 50% GDP v&amp;agrave; nợ nước ngo&amp;agrave;i của quốc gia kh&amp;ocirc;ng qu&amp;aacute; 50% GDP.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nghĩa vụ trả nợ trực tiếp của Ch&amp;iacute;nh phủ (kh&amp;ocirc;ng kể cho vay lại) so với tổng thu ng&amp;acirc;n s&amp;aacute;ch nh&amp;agrave; nước h&amp;agrave;ng năm kh&amp;ocirc;ng qu&amp;aacute; 25% v&amp;agrave; nghĩa vụ trả nợ nước ngo&amp;agrave;i của quốc gia h&amp;agrave;ng năm dưới 25% gi&amp;aacute; trị xuất khẩu h&amp;agrave;ng ho&amp;aacute; v&amp;agrave; dịch vụ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	B&amp;ecirc;n cạnh đ&amp;oacute;, đảm bảo chỉ ti&amp;ecirc;u tỷ lệ dự trữ ngoại hối nh&amp;agrave; nước so với tổng dư nợ nước ngo&amp;agrave;i ngắn hạn h&amp;agrave;ng năm tr&amp;ecirc;n 200%.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ch&amp;iacute;nh phủ cũng cho biết sẽ chỉ xem x&amp;eacute;t cấp bảo l&amp;atilde;nh vay trong nước đối với c&amp;aacute;c dự &amp;aacute;n cấp b&amp;aacute;ch, c&amp;ocirc;ng tr&amp;igrave;nh trọng điểm quốc gia đ&amp;atilde; được Thủ tướng Ch&amp;iacute;nh phủ ph&amp;ecirc; duyệt chủ trương cấp bảo l&amp;atilde;nh vay trong nước.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trước mắt chưa xem x&amp;eacute;t bảo l&amp;atilde;nh ph&amp;aacute;t h&amp;agrave;nh tr&amp;aacute;i phiếu quốc tế. C&amp;aacute;c doanh nghiệp hoặc ng&amp;acirc;n h&amp;agrave;ng thương mại nếu c&amp;oacute; nhu cầu th&amp;igrave; chủ động ph&amp;aacute;t h&amp;agrave;nh tr&amp;aacute;i phiếu quốc tế kh&amp;ocirc;ng c&amp;oacute; bảo l&amp;atilde;nh ch&amp;iacute;nh phủ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sẽ thực hiện đầy đủ nghĩa vụ trả nợ, kh&amp;ocirc;ng để xảy ra t&amp;igrave;nh trạng nợ qu&amp;aacute; hạn, l&amp;agrave;m ảnh hưởng đến c&amp;aacute;c cam kết quốc tế, Ch&amp;iacute;nh phủ khẳng định.&lt;/p&gt;', '', '', '', '', '', 'P.Thảo', 'Dân Trí', 0, 0, 'upload/no-cong-1-9b0e1.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:40:20', 'admin', '2012-11-03 01:40:20');
INSERT INTO `media` VALUES (71, 'default13518795281', '', 'media_news', '[78]', 'admin', 'Vietnam&#039;s public debt continues to increase because of the low growth', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px; &quot;&gt;(AP) - A report by the Government on the public debt situation is, the total number of outstanding loans in Vietnam are at 55.4% of GDP.&amp;nbsp;No growth plan, public debt, government debt in 2012 and the next year is forecast to continue to increase.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;img _fl=&quot;&quot; align=&quot;center&quot; alt=&quot;Government confirms repayment rate of the past 10 years has been controlled at below 20% of GDP.&quot; src=&quot;http://dantri4.vcmedia.vn/VLEfzoZuPAIveDWb3xCC/Image/2012/11/no-cong-1-9b0e1.jpg&quot; width=&quot;450&quot; /&gt;&lt;/div&gt;\r\n&lt;div align=&quot;center&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Government confirms repayment rate of the past 10 years has been controlled at below 20% of GDP.&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	The results of mobilization, loan use and repayment of the Government, the report said, the total ODA loans and foreign preferential loans by the end of 2011 reached $ 71.7 billion, including capital signed (through the loan agreement / grant agreement) of $ 54.1 billion.&amp;nbsp;ODA has been disbursed for the program, the project is U.S. $ 33.41 billion.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Issuance of government bonds in the country in 2010 was 68 292 billion in 2011 and 80,447 billion and is expected in 2012 is 120.000 billion.&lt;/p&gt;\r\n&lt;p&gt;\r\n	The end of 2011, the total number of foreign commercial lending commitments of $ 4.08 billion, total capital was withdrawn was $ 3.06 billion, loans of $ 2.9 billion.&lt;/p&gt;\r\n&lt;p&gt;\r\n	68% of the outstanding foreign loans of the Government is to balance the budget, 32% of lending projects have the ability to recover capital investment analysis report.&lt;/p&gt;\r\n&lt;p&gt;\r\n	For the foreign loans of the Government, partly to balance the budget (68% of outstanding foreign loans of the Government), a lending investment projects have the ability to recover capital (32%).&lt;/p&gt;\r\n&lt;p&gt;\r\n	The total value of foreign loans disbursed to government lending or $ 12.6 billion.&amp;nbsp;Outstanding lending projects of the Government equivalent to U.S. $ 10.3 billion, equal to 32% of the Government&amp;#39;s foreign debt, and 8.5% of GDP.&lt;/p&gt;\r\n&lt;p&gt;\r\n	The loans are concentrated in some sectors as electricity, oil and gas, shipbuilding, water supply, agriculture, highways, aviation, seaport, industrial, cement, urban infrastructure development ...&lt;/p&gt;\r\n&lt;p&gt;\r\n	The report said: &amp;quot;Overall, the project lent foreign loans of the Government can operate effectively through the repayment in full and on time.&amp;quot;&lt;/p&gt;\r\n&lt;p&gt;\r\n	580 lending projects, number of projects with overdue debts to the project by the end of 2011 is 55 with overdue principal balance of 0.7% of total outstanding loans.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mainly caused by the volatility of the product markets, especially for agricultural projects, agricultural products, foreign exchange rate / USD fluctuations in the direction of the increase of the outstanding loan projects in foreign currency ...&lt;/p&gt;\r\n&lt;p&gt;\r\n	However, the Government confirmed that the Government&amp;#39;s debt indicators compared to the state budget in 10 years, always in the safe limit (less than 20% of the total state budget).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Reporting agency analysis, as demand for capital programs and projects in the construction of social and economic infrastructure is increasing, besides economic growth in 2012 is expected to be around 5.2 - 5.7% (target is 6.0 - 6.5%), increasing public debt, government debt in 2012 and the following years will continue.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Borrowing costs tend to rise, especially the conversion of loan conditions apply for Vietnam to become a middle income country.&amp;nbsp;In the current debt portfolio structure still has some risks.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;2015, public debt must not exceed 65% of GDP&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	The government said, as of 31/12/2011, the total outstanding public debt 55.4% of GDP, down 1.9% compared to 2010.&amp;nbsp;In particular, direct government debt accounted for 78% and 43.1% of GDP.&amp;nbsp;Government-guaranteed debt accounted for 21% and 11.7% of GDP.&amp;nbsp;Local government debt accounted for 1.0% and 0.5% of GDP.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Along with the increase of the public debt, government debt, borrowing costs also tend to increase.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Oriented government, public debt (including government debt, debt guaranteed by the government and local authorities) in 2015 does not exceed 65% of GDP, of which government debt must not exceed 50% of GDP and the country&amp;#39;s foreign debt not exceeding 50% of GDP.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Direct debt obligations of the Government (excluding loans) compared to the total annual state budget of no more than 25% and the obligation to repay the country&amp;#39;s foreign debt below 25% of the value of annual exports goods and services.&lt;/p&gt;\r\n&lt;p&gt;\r\n	In addition, ensure the target rate of the country&amp;#39;s foreign exchange reserves to total short-term foreign debt of over 200% annually.&lt;/p&gt;\r\n&lt;p&gt;\r\n	The government also said it would only consider granting a loan guarantee in the country for an urgent project, national key projects have been approved by the Prime Minister advocated provision of loan guarantees in the country.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Front not consider the international bond underwriting.&amp;nbsp;The commercial banking business or if there is demand, the international initiative to issue bonds without government guarantee.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Will fulfill the obligation to repay the debt, not the occurrence of overdue debt, affecting international commitments, the Government confirmed.&lt;/p&gt;', '', '', '', '', '', 'P.Thảo', 'Dân Trí', 0, 0, 'upload/no-cong-1-9b0e1.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:40:20', 'admin', '2012-11-03 01:40:20');
INSERT INTO `media` VALUES (72, 'default13518675871', '', 'media_news', '[85]', 'admin', '5 secrets that customers open e-mail marketing', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;To the e-mail marketing businesses are getting ready to open and read right, we have cause to be concerned, their attention. According to marketing experts, business can do this in one of the following tips.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	To the e-mail marketing businesses are getting ready to open and read right, we have cause to be concerned, their attention. According to marketing experts, business can do this in one of the following tips.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp; 1. Send mail through existing customers or acquaintances. Then, thanks to forward your email to a few potential customers and send a copy (cc) to the enterprise. Those who received the letter sent by an acquaintance often feel lonely than the cases received a letter from a stranger. This is the best way to ensure the email marketing business prospect opens.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	2. If the name of an acquaintance in the title. If not done the above, businesses can try the next step is to name an existing customer or an acquaintance in the title of the email sent to potential customers know that. For example, could write &amp;quot;Ms. A had introduced him and we want to send to you some useful information for you reference.&amp;quot; Of course, the need to obtain permission from the person listed before using their name. Otherwise, the recipient will be able to ask the named person and, if he denies, businesses will lose credibility.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	3. If the positive experience of a current client. Can write headlines like &amp;quot;Do you want to know we have helped the company B saves 20% of the cost of the office like?&amp;quot;. Similar cases, businesses also need to get permission from Company B on the use of their name in the email sent to potential customers.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	4. Name the competition of potential customers. This usually applies when businesses want to expand market share in a segment with many competitors. The title in the case just mentioned above will be adjusted &amp;quot;noticeable News: Many companies have been successful in the application of counseling to save 20% on office expenses.&amp;quot; Certainly any business interested in what the competitors are doing and want to use the really useful innovations of competitors. However, to ensure that the business has enough evidence to prove he was raised in the title is accurate.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	5. If a benefit in the future. In addition to the four way, businesses can highlight a key benefit for customers, such title can write a sentence attracting is &amp;quot;Three good way to save 20% on office expenses.&amp;quot; Note that the specific benefits as (quantitative clear), open letter rate will be higher.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/r1-reverse-email-1jpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:56:55', 'admin', '2012-11-03 01:56:55');
INSERT INTO `media` VALUES (73, 'default13518682611', '', 'media_news', '[87]', 'admin', 'Marketing Plan', '', '', 'en', '&lt;p&gt;\r\n	Annual marketing plan for an industry often include content: analysis, defining goals, positioning, strategy and value solution, implementation plan and financial plan.&lt;/p&gt;', '&lt;p&gt;\r\n	Annual marketing plan for an industry often include content: analysis, defining goals, positioning, strategy and value solution, implementation plan and financial plan.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	The world there are many different approaches to marketing planning. Basically, a marketing plan typically includes the following:&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	A. Overview.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Market context. Introduction context launch of a marketing plan. Review of the business years ago, determining marketing objectives.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	B. Analysis.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Macro and micro analysis, emphasis trends, unexpected demand, competitors, identify challenges can have an impact on business operations of the enterprise.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	C. Identify the target market.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Market segmentation and identification of the target segment in order of priority, identify the non-competitive segment.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	D. Positioning.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Positioning brands / products / services in each segment corresponds to the analysis of competitors.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	E. Strategy and value proposition.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Identify the key strategic direction, build value proposition (CVP) for each segment, and concretized in the marketing mix (4PS) of each segment.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	F. Implementation plan.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Specifying the content of the marketing mix into concrete actions can be executed, in connection with the allocation of resources (human, time, and budget execution).&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	G. Financial forecast.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Financial targets and capital plans associated with the marketing plan.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	H. Appendix.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	The document, a detailed analysis, product launch plans, strategic component of the marketing mix ... attached to the marketing plan.&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/r1-mktplanfrontpagewjpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:58:32', 'admin', '2012-11-03 01:58:32');
INSERT INTO `media` VALUES (74, 'default13518664581', '', 'media_information', '[74]', 'admin', 'SECRET CAREER TALENT', '', '', 'en', '&lt;p&gt;\r\n	Today, talent is the leading competitive advantage of any company. How to recruit the talents of hundreds of thousands of average candidate? That is the question how human resource management concern. Hopefully these suggestions will help you find top talent for companies in today&amp;#39;s war for talent.&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center; &quot;&gt;\r\n	&lt;img id=&quot;ctl00_show_right_Image1&quot; src=&quot;http://tulap.com.vn/UserUpload/Articles/r1-Bi-quyet-tuyen-dung-nhan-taijpg.jpg&quot; style=&quot;text-align: center; border-width: 0px; &quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Today, talent is the leading competitive advantage of any company. How to recruit the talents of hundreds of thousands of average candidate? That is the question how human resource management concern. Hopefully these suggestions will help you find top talent for companies in today&amp;#39;s war for talent.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	1) Post jobs with a good job description job description is one of the most important parts of the job posting. The job description is as clear and detailed, the chance of you recruiting be higher good employees and help you screening unsuitable candidates. The job description usually includes the following: the main tasks and duties of the candidates Indicates the recruits will report to one type of work (temporary or permanent, full-time or part-time) 2) Make use of the company website to attract talent is one of the company&amp;#39;s website most effective recruitment channels. Through a brief introduction of the company is very attractive, you will have many opportunities to attract more candidates. Summary company should articulate the vision, development prospects, the basic values ​​and culture of the company. &amp;quot;Healthy soil perches&amp;quot;. Broadcast information about the image, prestige, success and the good value of the company will be the candidate choose your company over the long-term career development. Please use the Occupation or Employment on the company&amp;#39;s website for recruitment purposes. Website should provide the path to the candidates to easily apply direct recruitment for vacant positions in the company. 3) Take advantage of internal recruitment network internal recruitment network channel is one of the most rapid and efficient information to help you recruit talent. Please sign the recruitment notice on the company&amp;#39;s internal newsletter, full listing information on vacancies and the specific requirements for candidates. Employees shall promptly transmit each of these vacancies and recommend to friends, their relatives. To encourage employee participation, human resources policy should provide staff rewarded for introducing friends for company. 4) Use the website and Today&amp;#39;s growing recruitment website to help companies recruit talent. With just a few simple clicks, you can easily create the Post Jobs. To find resumes that match the specific requirements, you can sign up for a service Find Profile. You can also register Notification Profile to identify the most appropriate profile without having to spend time searching. 5) Use high-level consulting services today, senior HR consultant (also known as service &amp;quot;headhunters&amp;quot;) is the trusted companion of the Executive Director and the Human Resource Management in the war for talent. The senior HR consultant role as a bridge between candidates and employers. They are always available datastore most talented candidates who will bring long-term success for the company. 6) Keep in regular contact with candidates in the recent interview, you decide to hire the best candidates. However, you still play a lot of other suitable candidates. So please continue to keep in touch with potential candidates by sending an email to thank them for the interview and send updates vacant positions in the company. That way, you will always be in the hands of the rich source of candidates when it comes to recruiting.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:13:13', 'admin', '2012-11-03 01:13:13');
INSERT INTO `media` VALUES (75, 'default13518678491', '', 'media_news', '[87]', 'admin', 'Recipes copywriter', '', '', 'en', '&lt;p&gt;\r\n	You can not become a copywriter if you do not research on human characteristics. In its role as a customer, you will not be motivated to make a selection decision if a product ad does not make you curious.&lt;/p&gt;', '&lt;p&gt;\r\n	You can not become a copywriter if you do not research on human characteristics. In its role as a customer, you will not be motivated to make a selection decision if a product ad does not make you curious.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	An old question, but very important to customers: &amp;quot;What&amp;#39;s in it for me?&amp;quot;. This means that your ad must be something that customers feel convinced.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Experience from John Caples, a legendary copywriter&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	When selling, it would be helpful if you find the customer&amp;#39;s shopping engine. But many copywriters trying to make people feel tempted by explaining the problem or a concern about a bad situation. But you can not make people feel the engine purchase. All you can do is to identify what they were instigated before, and problem solving.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	When writing the title, why not pretend to have available an audience there and all you have to do is use its own engine to call them, in other words, type in their self-interest ?&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	John Caples, one of the best copywriters of all time and author of Tested Advertising Methods (roughly translated: effective advertising method), has written an ad for Life Insurance Company Mutual Pheonix titled : &amp;quot;For those who want to quit someday.&amp;quot;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Advertisements with the text running below photo of a retired man sitting fishing on his boat and face directly toward you with a big smile on his face. Combined with the image, which means that &amp;quot;If you do not want to worry about retirement - can pursue their interests without having to be anxious about money - then read on.&amp;quot;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	And read all of what a title to do it. Then, depending on the body, leading the reader and convey all content until the target.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Your readers interested in many different things such as: social status, have more money, more leisure time, better health, family safety, low taxes, self-esteem, rather new car every two years, popular, pay off debt, all related to their happiness. Try to hit the engine of readers in the title, then you have achieved the goal - that readers can not ignore your message.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Tips for managers&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Suppose you are trying to stop his client not to step on a train, you will scream questions? That is the content of the title.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Think of all the ways that your readers benefit from what you sell. Then arrange them in an order of health impacts and choose the best ones for the title of the ad.&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/r1-copywriterjpg.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:57:55', 'admin', '2012-11-03 01:57:55');
INSERT INTO `media` VALUES (76, 'default13518656271', '', 'media_contactmap', '[71]', 'admin', 'CONTACT', '', '', 'en', '', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; &quot;&gt;Copyright Communications Tu Lap&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; &quot;&gt;Fax:&lt;/strong&gt;&amp;nbsp;(84-8) 39770603&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; &quot;&gt;Hotline:&lt;/strong&gt;&amp;nbsp; 0912 25 25 76 &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; &quot;&gt;Email:&amp;nbsp;&lt;/strong&gt;t@tulap.com.vn&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; &quot;&gt;Branch&lt;/strong&gt;: 314 Thai Ha, Dong Da District, Hanoi, Vietnam&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; &quot;&gt;Tel:&amp;nbsp;&lt;/strong&gt;&amp;nbsp;(84-4) 39941516 &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&lt;strong style=&quot;padding: 0px; margin: 0px; &quot;&gt;Fax:&amp;nbsp;&lt;/strong&gt;(84-4) 35149085&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;padding: 0px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(51, 51, 51); text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:04:24', 'admin', '2012-11-03 02:04:24');
INSERT INTO `media` VALUES (77, 'default13518803151', '', 'media_partners', '[68]', 'admin', 'Hisamitsu - Salonpas', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/images.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:18:35', 'admin', '2012-11-03 01:18:35');
INSERT INTO `media` VALUES (78, 'default13518803151', '', 'media_partners', '[68]', 'admin', 'Hisamitsu - Salonpas', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/images.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:18:35', 'admin', '2012-11-03 01:18:35');
INSERT INTO `media` VALUES (79, 'default13518803181', '', 'media_videoalbum', '[75]', 'admin', 'Xếp hàng tại trạm xăng - Tự lập', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:32:55', 'admin', '2012-11-03 02:32:55');
INSERT INTO `media` VALUES (80, 'default13518803181', '', 'media_videoalbum', '[75]', 'admin', 'Lined up at gas stations - TuLap', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:32:55', 'admin', '2012-11-03 02:32:55');
INSERT INTO `media` VALUES (81, 'default13518804931', '', 'media_partners', '[68]', 'admin', 'Hisamitsu - Salonpas', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/images.jpg', 0, '', '', '', 0, 0, 'delete', '', '2012-11-03 01:47:15', 'admin', '2012-11-03 01:21:33');
INSERT INTO `media` VALUES (82, 'default13518804931', '', 'media_partners', '[68]', 'admin', 'Hisamitsu - Salonpas', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/images.jpg', 0, '', '', '', 0, 0, 'delete', '', '2012-11-03 01:47:15', 'admin', '2012-11-03 01:21:33');
INSERT INTO `media` VALUES (83, 'default13518806091', '', 'media_information', '[82]', 'admin', 'Những ưu điểm chỉ có ở quảng cáo trạm xăng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Quảng C&amp;aacute;o Trạm Xăng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH c&amp;oacute; thời gian tiếp x&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng l&amp;acirc;u nhất v&amp;agrave; l&amp;agrave; k&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời đầu ti&amp;ecirc;n t&amp;iacute;nh ph&amp;iacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n OTS.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/logo.png&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Quảng C&amp;aacute;o Trạm Xăng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH c&amp;oacute; thời gian tiếp x&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng l&amp;acirc;u nhất v&amp;agrave; l&amp;agrave; k&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời đầu ti&amp;ecirc;n t&amp;iacute;nh ph&amp;iacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n OTS.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Th&amp;aacute;ch thức hiện nay của c&amp;aacute;c loại h&amp;igrave;nh quảng c&amp;aacute;o phi truyền thống l&amp;agrave; phải chứng minh t&amp;iacute;nh hiệu quả v&amp;agrave; những th&amp;agrave;nh tựu đạt được của m&amp;igrave;nh qua c&amp;aacute;c nghi&amp;ecirc;n cứu độc lập v&amp;agrave; đ&amp;aacute;ng tin cậy. Để biết được hiệu quả của c&amp;aacute;c billboard quảng c&amp;aacute;o, ch&amp;uacute;ng ta cần phải thực hiện việc đo đạc v&amp;agrave; t&amp;iacute;nh to&amp;aacute;n kh&amp;aacute; phức tạp n&amp;ecirc;n cho đến nay chưa c&amp;oacute; h&amp;igrave;nh thức quảng c&amp;aacute;o ngo&amp;agrave;i trời n&amp;agrave;o chứng minh được hiệu quả ngo&amp;agrave;i những nhận định v&amp;agrave; ph&amp;aacute;n đo&amp;aacute;n. Ch&amp;iacute;nh v&amp;igrave; dựa tr&amp;ecirc;n những yếu tố cảm t&amp;iacute;nh, n&amp;ecirc;n c&amp;aacute;ch t&amp;iacute;nh gi&amp;aacute; quảng c&amp;aacute;o billboard kh&amp;ocirc;ng thể cho những người l&amp;agrave;m tiếp thị - quảng c&amp;aacute;o biết được số tiền họ chi ra mang lại hiệu quả như thế n&amp;agrave;o, đ&amp;oacute; l&amp;agrave; dựa v&amp;agrave;o vị tr&amp;iacute; billboard xuất hiện, diện t&amp;iacute;ch quảng c&amp;aacute;o v&amp;agrave; một v&amp;agrave;i yếu tố li&amp;ecirc;n quan đến x&amp;acirc;y dựng, thi c&amp;ocirc;ng... m&amp;agrave; kh&amp;ocirc;ng dựa tr&amp;ecirc;n một chỉ số n&amp;agrave;o chứng minh t&amp;iacute;nh hiệu quả của h&amp;igrave;nh thức quảng c&amp;aacute;o n&amp;agrave;y. Một billboard ngo&amp;agrave;i trời d&amp;ugrave; c&amp;oacute; to bao nhi&amp;ecirc;u, bắt mắt bao nhi&amp;ecirc;u th&amp;igrave; kh&amp;aacute;ch h&amp;agrave;ng cũng chỉ c&amp;oacute; thể nh&amp;igrave;n lướt qua chưa đầy 3 gi&amp;acirc;y, nhưng c&amp;oacute; bao nhi&amp;ecirc;u người c&amp;oacute; cơ hội nh&amp;igrave;n thấy quảng c&amp;aacute;o th&amp;igrave; billboard chưa t&amp;iacute;nh được. K&amp;ecirc;nh truyền th&amp;ocirc;ng Trạm xăng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH đầu ti&amp;ecirc;n tại Việt Nam c&amp;oacute; số liệu đo lường cụ thể chứng minh số cơ hội quảng c&amp;aacute;o tiếp x&amp;uacute;c với kh&amp;aacute;ch h&amp;agrave;ng qua việc nghi&amp;ecirc;n cứu về h&amp;agrave;nh vi kh&amp;aacute;ch h&amp;agrave;ng đến tiếp nhi&amp;ecirc;n liệu ở trạm xăng. Số liệu nghi&amp;ecirc;n cứu tr&amp;ecirc;n camera theo d&amp;otilde;i trực tiếp tại 18 trạm xăng Petrolimex cho biết Quảng C&amp;aacute;o Trạm Xăng c&amp;oacute; thời gian tiếp x&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng l&amp;acirc;u nhất trong tất cả c&amp;aacute;c loại h&amp;igrave;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời &amp;ndash; trung b&amp;igrave;nh l&amp;agrave; 42s &amp;ndash; thời gian trung b&amp;igrave;nh một người v&amp;agrave;o trạm xăng tiếp nhi&amp;ecirc;n liệu. V&amp;agrave; đ&amp;acirc;y cũng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH đầu ti&amp;ecirc;n tại Việt Nam t&amp;iacute;nh ph&amp;iacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n chỉ số OTS (opportunity to see, một chỉ số đo lường hiệu quả quảng c&amp;aacute;o), tức tr&amp;ecirc;n lượng người c&amp;oacute; cơ hội thấy quảng c&amp;aacute;o. V&amp;igrave; nắm được số lượng người v&amp;agrave;o trạm xăng v&amp;agrave; nghi&amp;ecirc;n cứu được những h&amp;agrave;nh vi của họ n&amp;ecirc;n k&amp;ecirc;nh quảng c&amp;aacute;o n&amp;agrave;y ho&amp;agrave;n to&amp;agrave;n đo được OTS v&amp;agrave; t&amp;iacute;nh gi&amp;aacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n chỉ số n&amp;agrave;y. Khi chọn k&amp;ecirc;nh n&amp;agrave;y để quảng c&amp;aacute;o, c&amp;aacute;c nh&amp;agrave; tiếp thị ho&amp;agrave;n to&amp;agrave;n biết được họ trả bao nhi&amp;ecirc;u tiền cho một lần quảng c&amp;aacute;o của họ được nh&amp;igrave;n thấy. T&amp;iacute;nh &amp;eacute;p buộc t&amp;iacute;ch cực của Quảng C&amp;aacute;o Trạm Xăng Quảng c&amp;aacute;o ngo&amp;agrave;i trời n&amp;oacute;i chung l&amp;agrave; h&amp;igrave;nh thức quảng c&amp;aacute;o mang t&amp;iacute;nh &amp;eacute;p buộc, kh&amp;aacute;ch h&amp;agrave;ng kh&amp;ocirc;ng c&amp;oacute; quyền lựa chọn đổi k&amp;ecirc;nh hay lật sang trang kh&amp;aacute;c như khi xem quảng c&amp;aacute;o tr&amp;ecirc;n ti vi hay b&amp;aacute;o ch&amp;iacute;. Bật ti vi l&amp;ecirc;n, thấy quảng c&amp;aacute;o, bạn c&amp;oacute; thể chuyển k&amp;ecirc;nh ngay khi chưa tiếp nhận hết 30s th&amp;ocirc;ng điệp; nghe radio ph&amp;aacute;t quảng c&amp;aacute;o, bạn c&amp;oacute; thể đổi sang chương tr&amp;igrave;nh kh&amp;aacute;c; xem b&amp;aacute;o thấy quảng c&amp;aacute;o, bạn c&amp;oacute; thể lật sang trang kh&amp;aacute;c, thậm ch&amp;iacute; với c&amp;aacute;c nhật b&amp;aacute;o như Tuổi Trẻ bạn c&amp;oacute; thể bỏ qua hẳn phần phụ lục quảng c&amp;aacute;o c&amp;oacute; số trang c&amp;ograve;n d&amp;agrave;y hơn l&amp;agrave; nội dung ch&amp;iacute;nh; lướt web &amp;ldquo;đụng&amp;rdquo; quảng c&amp;aacute;o, bạn c&amp;oacute; thể &amp;ldquo;biến&amp;rdquo; khỏi nơi đ&amp;oacute; chỉ bằng một c&amp;uacute; &amp;ldquo;click&amp;rdquo; chuột. Nhưng với quảng c&amp;aacute;o ngo&amp;agrave;i trời th&amp;igrave; c&amp;aacute;c nh&amp;agrave; quảng c&amp;aacute;o v&amp;agrave; c&amp;ocirc;ng ty quảng c&amp;aacute;o l&amp;uacute;c n&amp;agrave;o cũng cảm thấy y&amp;ecirc;n t&amp;acirc;m v&amp;igrave; mức độ cảm thụ th&amp;ocirc;ng điệp truyền th&amp;ocirc;ng, đơn giản v&amp;igrave; khi nh&amp;agrave; quảng c&amp;aacute;o lựa chọn h&amp;igrave;nh thức n&amp;agrave;y họ đ&amp;atilde; c&amp;ugrave;ng c&amp;aacute;c c&amp;ocirc;ng ty quảng c&amp;aacute;o t&amp;iacute;nh to&amp;aacute;n gửi th&amp;ocirc;ng điệp ngắn gọn, x&amp;uacute;c t&amp;iacute;ch nhất. T&amp;iacute;nh &amp;eacute;p buộc n&amp;agrave;y c&amp;ograve;n cao hơn ở Quảng C&amp;aacute;o Trạm Xăng bởi thời gian kh&amp;aacute;ch chờ tiếp nhi&amp;ecirc;n liệu đủ l&amp;acirc;u để quảng c&amp;aacute;o c&amp;oacute; cơ hội tiếp cận với họ. Quảng C&amp;aacute;o Trạm Xăng c&amp;ograve;n tỏ ra ưu thế hơn khi l&amp;agrave; điểm đến h&amp;agrave;ng tuần bắt buộc của hầu hết mọi người, mọi gia đ&amp;igrave;nh sở hữu xe m&amp;aacute;y, &amp;ocirc; t&amp;ocirc; l&amp;agrave;m phương tiện di chuyển. Khi đến trạm xăng, v&amp;agrave;o bất cứ thời điểm n&amp;agrave;o &amp;ndash; 24/24, khi đang chờ đợi được tiếp nhi&amp;ecirc;n liệu th&amp;igrave; cơ hội để kh&amp;aacute;ch h&amp;agrave;ng xem thấy quảng c&amp;aacute;o l&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng cao v&amp;igrave; ở trạm xăng c&amp;oacute; 8 vị tr&amp;iacute; quảng c&amp;aacute;o được qui hoạch c&amp;oacute; chủ đ&amp;iacute;ch đ&amp;oacute;n mọi tầm nh&amp;igrave;n của kh&amp;aacute;ch đổ xăng, đ&amp;oacute; l&amp;agrave; chưa t&amp;iacute;nh lượng người đi ngang qua trạm xăng ở c&amp;aacute;c ng&amp;atilde; tư cũng nh&amp;igrave;n thấy quảng c&amp;aacute;o. Hơn nữa, từ trước đến nay, ai nấy đều quen thuộc đến nh&amp;agrave;m ch&amp;aacute;n những biển biểu nơi trạm xăng với c&amp;aacute;c th&amp;ocirc;ng điệp cấm: cấm lửa, cấm d&amp;ugrave;ng điện thoại đi động, cấm h&amp;uacute;t thuốc&amp;hellip; rồi c&amp;aacute;c bảng hướng dẫn ph&amp;acirc;n luồng xe, những nội qui của trạm xăng&amp;hellip;; nếu c&amp;oacute; một h&amp;igrave;nh ảnh đẹp hay một th&amp;ocirc;ng điệp th&amp;uacute; vị chẳng phải ngay lập tức thu h&amp;uacute;t được &amp;aacute;nh nh&amp;igrave;n của mọi người? Chẳng phải ai cũng th&amp;iacute;ch ngắm nh&amp;igrave;n c&amp;aacute;i đẹp, c&amp;aacute;i mới lạ, th&amp;uacute; vị? Trong bối cảnh n&amp;agrave;y, t&amp;iacute;nh &amp;eacute;p buộc của quảng c&amp;aacute;o c&amp;oacute; thể kh&amp;ocirc;ng c&amp;ograve;n g&amp;acirc;y cho kh&amp;aacute;ch h&amp;agrave;ng sự kh&amp;oacute; chịu, ngược lại, quảng c&amp;aacute;o mang lại cho trạm xăng h&amp;igrave;nh ảnh sinh động, đẹp mắt v&amp;agrave; th&amp;acirc;n thiện với kh&amp;aacute;ch h&amp;agrave;ng. Quảng c&amp;aacute;o tại trạm xăng l&amp;agrave; hệ thống quảng c&amp;aacute;o c&amp;oacute; độ phủ đều, rộng nhất trong tất cả c&amp;aacute;c loại h&amp;igrave;nh out door tại Việt Nam X&amp;eacute;t ở một g&amp;oacute;c độ n&amp;agrave;o đ&amp;oacute; th&amp;igrave; quảng c&amp;aacute;o ngo&amp;agrave;i trời c&amp;oacute; phần t&amp;aacute;c động s&amp;acirc;u rộng hơn cả tivi. C&amp;aacute;c k&amp;ecirc;nh tivi hiện nay kh&amp;ocirc;ng &amp;iacute;t ỏi như c&amp;aacute;ch nay mười năm, m&amp;agrave; đ&amp;atilde; c&amp;oacute; v&amp;agrave;i trăm k&amp;ecirc;nh phục vụ chuy&amp;ecirc;n cho c&amp;aacute;c đối tượng xem theo độ tuổi v&amp;agrave; thậm ch&amp;iacute; cả giới t&amp;iacute;nh. Trong một v&amp;ugrave;ng địa l&amp;yacute; như TP.HCM chẳng hạn, x&amp;eacute;t về mức độ t&amp;aacute;c động rộng r&amp;atilde;i l&amp;ecirc;n nhiều loại đối tượng kh&amp;aacute;c nhau th&amp;igrave; c&amp;oacute; thể n&amp;oacute;i quảng c&amp;aacute;o tivi v&amp;agrave; internet đ&amp;atilde; thua k&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời. Khẳng định như vậy v&amp;igrave; d&amp;ugrave; gi&amp;agrave; hay trẻ, thu nhập cao hay thấp th&amp;igrave; người d&amp;acirc;n đều phải đi lại ngo&amp;agrave;i đường, đặc biệt l&amp;agrave; tại Việt Nam khi m&amp;agrave; TNS đ&amp;atilde; kết luận 80% d&amp;acirc;n số Việt Nam d&amp;agrave;nh v&amp;agrave;i giờ mỗi ng&amp;agrave;y ở ngo&amp;agrave;i đường. K&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời từ trước đến nay ai cũng mặc định l&amp;agrave; billboard. Tuy nhi&amp;ecirc;n billboard kh&amp;ocirc;ng c&amp;oacute; mặt &amp;ldquo;tr&amp;ecirc;n từng c&amp;acirc;y số&amp;rdquo; để tạo ra cơ hội nh&amp;igrave;n thấy quảng c&amp;aacute;o cao cho những đối tượng kh&amp;aacute;ch h&amp;agrave;ng tiềm năng của m&amp;igrave;nh. D&amp;ugrave; billboard xuất hiện ở những nơi c&amp;oacute; lượng người lưu th&amp;ocirc;ng qua lại cao nhất nhưng kh&amp;ocirc;ng phải nơi n&amp;agrave;o c&amp;oacute; người lưu th&amp;ocirc;ng qua lại đều c&amp;oacute; billboard, hay nơi n&amp;agrave;o c&amp;oacute; billboard đều l&amp;agrave; nơi mọi kh&amp;aacute;ch h&amp;agrave;ng tiềm năng của sản phẩm quảng c&amp;aacute;o lưu th&amp;ocirc;ng qua v&amp;agrave; c&amp;oacute; cơ hội nh&amp;igrave;n thấy. Hiện chưa thấy c&amp;oacute; sản phẩm hay nh&amp;atilde;n h&amp;agrave;ng n&amp;agrave;o &amp;ldquo;phủ s&amp;oacute;ng&amp;rdquo; to&amp;agrave;n bộ tr&amp;ecirc;n hệ thống billboard để đ&amp;oacute;n được mọi tầm nh&amp;igrave;n mọi kh&amp;aacute;ch h&amp;agrave;ng. C&amp;oacute; lẽ việc n&amp;agrave;y &amp;iacute;t nhiều phụ thuộc v&amp;agrave;o ng&amp;acirc;n s&amp;aacute;ch v&amp;agrave; hiệu quả đầu tư billboard. C&amp;oacute; thể dễ d&amp;agrave;ng nhận thấy billboard c&amp;oacute; mặt hầu hết chỉ ở c&amp;aacute;c con đường ch&amp;iacute;nh trong một th&amp;agrave;nh phố hoặc quốc lộ 1A. Quảng c&amp;aacute;o trạm xăng cũng l&amp;agrave; một h&amp;igrave;nh thức quảng c&amp;aacute;o ngo&amp;agrave;i trời nhưng lại l&amp;agrave; k&amp;ecirc;nh quảng c&amp;aacute;o khắc phục được sự bị động n&amp;agrave;y v&amp;igrave; hệ thống trạm xăng phủ đều, phủ rộng để phục vụ nhu cầu tiếp nhi&amp;ecirc;n liệu li&amp;ecirc;n tục của hơn 23 triệu xe m&amp;aacute;y c&amp;oacute; b&amp;igrave;nh xăng nhỏ. Hiện to&amp;agrave;n TP. HCM c&amp;oacute; hơn 400 trạm b&amp;aacute;n lẻ xăng dầu. Nhiều tuyến đường trong nội th&amp;agrave;nh như Trần Hưng Đạo, L&amp;yacute; Thường Kiệt, C&amp;aacute;ch Mạng Th&amp;aacute;ng T&amp;aacute;m, hay khu vực c&amp;aacute;c bến xe... mật độ trạm xăng d&amp;agrave;y đặc. Với phương tiện di chuyển hầu hết l&amp;agrave; xe m&amp;aacute;y, b&amp;igrave;nh xăng nhỏ chỉ từ 4 đến 7 l&amp;iacute;t, n&amp;ecirc;n hằng tuần mọi người đều đến trạm xăng, v&amp;agrave; hằng ng&amp;agrave;y li&amp;ecirc;n tục đi ngang qua rất nhiều trạm xăng; v&amp;ocirc; h&amp;igrave;nh trung, trạm xăng tuy l&amp;agrave; nơi đặt quảng c&amp;aacute;o cố định nhưng lại trở th&amp;agrave;nh nơi rất năng động để quảng c&amp;aacute;o c&amp;oacute; thể tiếp cận với hầu hết mọi đối tượng kh&amp;aacute;ch h&amp;agrave;ng đều đặn v&amp;agrave; li&amp;ecirc;n tục. Quảng C&amp;aacute;o Trạm Xăng tiếp cận được kh&amp;aacute;ch h&amp;agrave;ng đại ch&amp;uacute;ng Mỗi k&amp;ecirc;nh quảng c&amp;aacute;o đều c&amp;oacute; những thế mạnh ri&amp;ecirc;ng. Mỗi một tờ b&amp;aacute;o đều nhắm tới một đối tượng độc giả d&amp;agrave;nh ri&amp;ecirc;ng cho m&amp;igrave;nh n&amp;ecirc;n quảng c&amp;aacute;o tr&amp;ecirc;n b&amp;aacute;o cũng dễ d&amp;agrave;ng tiếp cận được đối tượng kh&amp;aacute;ch h&amp;agrave;ng mục ti&amp;ecirc;u hiệu quả. Hay truyền h&amp;igrave;nh cũng vậy, t&amp;ugrave;y đối tượng nh&amp;agrave; quảng c&amp;aacute;o muốn tiếp cận m&amp;agrave; họ chọn những k&amp;ecirc;nh ph&amp;aacute;t s&amp;oacute;ng quảng c&amp;aacute;o kh&amp;aacute;c nhau. Đ&amp;acirc;y l&amp;agrave; ưu điểm của quảng c&amp;aacute;o tr&amp;ecirc;n b&amp;aacute;o hay tr&amp;ecirc;n truyền h&amp;igrave;nh, nhưng cũng lại l&amp;agrave; hạn chế bởi những kh&amp;aacute;ch h&amp;agrave;ng tiềm năng trong tương lai bị bỏ qua. Quảng c&amp;aacute;o trạm xăng ra đời mang sẵn trong m&amp;igrave;nh lợi thế: l&amp;agrave; điểm đến h&amp;agrave;ng tuần của hầu hết mọi đối tượng kh&amp;aacute;ch h&amp;agrave;ng, nhiều độ tuổi kh&amp;aacute;c nhau. Vấn đề c&amp;ograve;n lại chỉ nằm ở chỗ c&amp;aacute;c nh&amp;agrave; tiếp thị s&amp;aacute;ng tạo đến mức n&amp;agrave;o cho c&amp;aacute;c th&amp;ocirc;ng điệp quảng c&amp;aacute;o của m&amp;igrave;nh để chạm đến con tim kh&amp;aacute;ch h&amp;agrave;ng. C&amp;oacute; thể n&amp;oacute;i, k&amp;ecirc;nh quảng c&amp;aacute;o trạm xăng hội tụ ưu điểm t&amp;aacute;c động l&amp;ecirc;n đại ch&amp;uacute;ng vượt trội của tivi mười năm trước đ&amp;acirc;y khi chưa c&amp;oacute; h&amp;agrave;ng trăm k&amp;ecirc;nh ph&amp;acirc;n chia kh&amp;aacute;ch h&amp;agrave;ng như hiện nay.&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:23:29', 'admin', '2012-11-03 01:23:29');
INSERT INTO `media` VALUES (84, 'default13518806091', '', 'media_information', '[82]', 'admin', 'Advantages advertising only at gas stations', '', '', 'en', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Gasoline Station Advertising is a type of OOH advertising has the longest exposure time customer and channel is the first outdoor advertising advertising fee based on the OTS.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/logo.png&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Gasoline Station Advertising is a type of OOH advertising has the longest exposure time customer and channel is the first outdoor advertising advertising fee based on the OTS.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Current challenges of non-traditional types of advertising is to demonstrate the effectiveness and their achievements through independent research and reliable.&amp;nbsp;To know the effectiveness of billboard advertising, we need to perform the measurement and calculation is quite complicated so far do not have any form of outdoor advertising proved to be effective in addition to the remarks and said guessing.&amp;nbsp;Because based on emotional factors, so pricing billboard advertising is not possible for those who do marketing and advertising know how much they spend how effective, which is based on the location of the billboard appear, the area of ​​advertising and several factors related to building, construction ...&amp;nbsp;that is not based on an index to prove the effectiveness of this form of advertising.&amp;nbsp;An outdoor billboard though to how many, how much eye-catching, the customer can only glance at less than 3 seconds, but how many people have the opportunity to see the billboard ads are not included.Communication channels petrol station is the first type of OOH advertising in Vietnam have specific measurement data demonstrate some advertising opportunities contact with customers through the study of consumer behavior to the refueling station gasoline.&amp;nbsp;Research data on surveillance cameras directly at the 18 gas station Ad Petrolimex said petrol station with the longest exposure time customers in all types of outdoor advertising - an average of 42s - the average time a refueling station.&amp;nbsp;And this is also the first type of OOH advertising in Vietnam to charge advertisers based on the index OTS (opportunity to see, an index measuring ad effectiveness), ie on the amount of people have the opportunity to see the ad.&amp;nbsp;So take the number of people in gas stations and study their behavior so completely measurable advertising channel OTS and advertising based on this index.&amp;nbsp;When you select this channel to advertisers, marketers fully know how much they pay for each time their ad is seen.&amp;nbsp;The positive force of the Petrol Station Advertising Outdoor Advertising in general is a form of advertising force, customers do not have the option of changing the channel or turn the page, such as when watching television or newspaper advertising press.&amp;nbsp;Turn on the TV, see an ad, you can switch channels as soon as not receiving message every 30 seconds; radio ads, you can change to another program; see that ad, you can turn to the other sites, even with the Tuoi Tre newspaper as you can ignore much of the appendix ad with thick pages longer than the main content; surf &amp;quot;crash&amp;quot; ads, you can &amp;quot;turn&amp;quot; from where with a single &amp;quot;click&amp;quot; of the mouse.&amp;nbsp;But with outdoor advertising, advertisers and advertising companies always feel assured that the receptor level communication messages, simply because when advertisers choose this form they have the same advertising calculated to send a brief message, the most concise.&amp;nbsp;As this force even higher in Ad petrol station by the time customers wait long enough to fuel advertising opportunities to reach them.&amp;nbsp;Advertising also proved superior to the petrol station when required weekly destination of most people, all family owned motorcycles, automobile transportation.&amp;nbsp;As to the gas station, at any time - 24/24, while waiting to refuel the customer the opportunity to see advertising that is extremely high because the gas station with 8 position provided ad deliberate plan to welcome all guests to refuel vision, it is not the amount of people passing the gas station at the intersection also see ads.&amp;nbsp;Moreover, until now, everyone was familiar to marine boring the expression where the gas station with the message banned: fire, banned the use of cell phones, no smoking ... and the instruction sheet ramification car , the rules of the gas station ...; if you have a beautiful picture or a fun message was not immediately attract people&amp;#39;s eyes?&amp;nbsp;Not everyone likes watching beauty, something new and exciting?&amp;nbsp;In this context, the force of advertising can no longer cause the client discomfort, on the other hand, gas station advertising gives vivid pictures, nice and friendly to customers.&amp;nbsp;Advertising at the gas station is advertising system offers wide coverage in all types of out door in Vietnam At a certain angle, outdoor advertising has far-reaching impact than television.&amp;nbsp;The TV channel is not currently little as ten years ago, which was a few hundred channels catering to subjects by age and even gender.&amp;nbsp;In a geographical area such as the City, in terms of the impact on a wide variety of different types of objects, you can say television advertising and internet advertising channel lost outdoors.&amp;nbsp;Asserted that because young and old, high and low income people have to walk in the street, especially in Vietnam that TNS has concluded 80% of Vietnam&amp;#39;s population spend several hours a day outside road.&amp;nbsp;Outdoor advertising channel ever everyone defaults billboard.&amp;nbsp;However billboard absence &amp;quot;per kilometer&amp;quot; to create an opportunity to see the ad for your potential customers.&amp;nbsp;Although billboard appears in areas where the highest volume flow through but not where there is flow through the billboard, billboard or where there are places all potential customers of the promotional products store through and have the opportunity to see.&amp;nbsp;We have not seen any product or brand &amp;quot;cover&amp;quot; the entire system on the billboard to catch every view every customer.&amp;nbsp;Perhaps the budget is more or less dependent on the and investment efficiency billboard.&amp;nbsp;Can easily see the billboard is present mostly in the main street in a city or highway 1A.&amp;nbsp;Gas station advertising is a form of outdoor advertising, but advertising channel to overcome the passive system because gas stations are government, large government to serve the needs constant refueling of more than 23 million small motorcycle fuel tank.&amp;nbsp;In the whole city.&amp;nbsp;City has more than 400 retail petrol stations.&amp;nbsp;Many roads in the city such as Tran Hung Dao, Ly Thuong Kiet, the August Revolution, or the bus station area ...&amp;nbsp;the dense gas station density.&amp;nbsp;With transport mostly motorcycles, small fuel tank from 4 to 7 liters, so every week everyone to gas stations, daily and continuously passing a lot of gas stations; invisible medium, gas station Although ad is fixed but become very active to promote access to most customers regularly and continuously.&amp;nbsp;Gasoline Station Advertising mass customer access ad Each channel has its own strengths.&amp;nbsp;Every newspaper aimed at a general audience dedicated to his newspaper advertising should also be easily accessible to the target audience effectively.&amp;nbsp;TV or so, depending on the audience advertisers want to reach that they choose different advertising channels broadcast.&amp;nbsp;These are the advantages of advertising in the newspaper or on television, but also is limited by the potential customers in the future ignored.&amp;nbsp;In advertising gas station launched its built-in advantages: is the weekly destination for most customers, many different ages.&amp;nbsp;Remaining problem only lies in how creative marketers to their advertising messages to customer touches your heart.&amp;nbsp;Can say, gas station advertising channel convergence advantages remarkable impact on public television ten years ago when no division hundreds of customers today.&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:23:29', 'admin', '2012-11-03 01:23:29');
INSERT INTO `media` VALUES (85, 'default13518809051', '', 'media_news', '[82]', 'admin', 'Những ưu điểm chỉ có ở quảng cáo trạm xăng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Quảng C&amp;aacute;o Trạm Xăng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH c&amp;oacute; thời gian tiếp x&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng l&amp;acirc;u nhất v&amp;agrave; l&amp;agrave; k&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời đầu ti&amp;ecirc;n t&amp;iacute;nh ph&amp;iacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n OTS.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Quảng C&amp;aacute;o Trạm Xăng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH c&amp;oacute; thời gian tiếp x&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng l&amp;acirc;u nhất v&amp;agrave; l&amp;agrave; k&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời đầu ti&amp;ecirc;n t&amp;iacute;nh ph&amp;iacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n OTS.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Th&amp;aacute;ch thức hiện nay của c&amp;aacute;c loại h&amp;igrave;nh quảng c&amp;aacute;o phi truyền thống l&amp;agrave; phải chứng minh t&amp;iacute;nh hiệu quả v&amp;agrave; những th&amp;agrave;nh tựu đạt được của m&amp;igrave;nh qua c&amp;aacute;c nghi&amp;ecirc;n cứu độc lập v&amp;agrave; đ&amp;aacute;ng tin cậy. Để biết được hiệu quả của c&amp;aacute;c billboard quảng c&amp;aacute;o, ch&amp;uacute;ng ta cần phải thực hiện việc đo đạc v&amp;agrave; t&amp;iacute;nh to&amp;aacute;n kh&amp;aacute; phức tạp n&amp;ecirc;n cho đến nay chưa c&amp;oacute; h&amp;igrave;nh thức quảng c&amp;aacute;o ngo&amp;agrave;i trời n&amp;agrave;o chứng minh được hiệu quả ngo&amp;agrave;i những nhận định v&amp;agrave; ph&amp;aacute;n đo&amp;aacute;n. Ch&amp;iacute;nh v&amp;igrave; dựa tr&amp;ecirc;n những yếu tố cảm t&amp;iacute;nh, n&amp;ecirc;n c&amp;aacute;ch t&amp;iacute;nh gi&amp;aacute; quảng c&amp;aacute;o billboard kh&amp;ocirc;ng thể cho những người l&amp;agrave;m tiếp thị - quảng c&amp;aacute;o biết được số tiền họ chi ra mang lại hiệu quả như thế n&amp;agrave;o, đ&amp;oacute; l&amp;agrave; dựa v&amp;agrave;o vị tr&amp;iacute; billboard xuất hiện, diện t&amp;iacute;ch quảng c&amp;aacute;o v&amp;agrave; một v&amp;agrave;i yếu tố li&amp;ecirc;n quan đến x&amp;acirc;y dựng, thi c&amp;ocirc;ng... m&amp;agrave; kh&amp;ocirc;ng dựa tr&amp;ecirc;n một chỉ số n&amp;agrave;o chứng minh t&amp;iacute;nh hiệu quả của h&amp;igrave;nh thức quảng c&amp;aacute;o n&amp;agrave;y. Một billboard ngo&amp;agrave;i trời d&amp;ugrave; c&amp;oacute; to bao nhi&amp;ecirc;u, bắt mắt bao nhi&amp;ecirc;u th&amp;igrave; kh&amp;aacute;ch h&amp;agrave;ng cũng chỉ c&amp;oacute; thể nh&amp;igrave;n lướt qua chưa đầy 3 gi&amp;acirc;y, nhưng c&amp;oacute; bao nhi&amp;ecirc;u người c&amp;oacute; cơ hội nh&amp;igrave;n thấy quảng c&amp;aacute;o th&amp;igrave; billboard chưa t&amp;iacute;nh được. K&amp;ecirc;nh truyền th&amp;ocirc;ng Trạm xăng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH đầu ti&amp;ecirc;n tại Việt Nam c&amp;oacute; số liệu đo lường cụ thể chứng minh số cơ hội quảng c&amp;aacute;o tiếp x&amp;uacute;c với kh&amp;aacute;ch h&amp;agrave;ng qua việc nghi&amp;ecirc;n cứu về h&amp;agrave;nh vi kh&amp;aacute;ch h&amp;agrave;ng đến tiếp nhi&amp;ecirc;n liệu ở trạm xăng. Số liệu nghi&amp;ecirc;n cứu tr&amp;ecirc;n camera theo d&amp;otilde;i trực tiếp tại 18 trạm xăng Petrolimex cho biết Quảng C&amp;aacute;o Trạm Xăng c&amp;oacute; thời gian tiếp x&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng l&amp;acirc;u nhất trong tất cả c&amp;aacute;c loại h&amp;igrave;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời &amp;ndash; trung b&amp;igrave;nh l&amp;agrave; 42s &amp;ndash; thời gian trung b&amp;igrave;nh một người v&amp;agrave;o trạm xăng tiếp nhi&amp;ecirc;n liệu. V&amp;agrave; đ&amp;acirc;y cũng l&amp;agrave; loại h&amp;igrave;nh quảng c&amp;aacute;o OOH đầu ti&amp;ecirc;n tại Việt Nam t&amp;iacute;nh ph&amp;iacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n chỉ số OTS (opportunity to see, một chỉ số đo lường hiệu quả quảng c&amp;aacute;o), tức tr&amp;ecirc;n lượng người c&amp;oacute; cơ hội thấy quảng c&amp;aacute;o. V&amp;igrave; nắm được số lượng người v&amp;agrave;o trạm xăng v&amp;agrave; nghi&amp;ecirc;n cứu được những h&amp;agrave;nh vi của họ n&amp;ecirc;n k&amp;ecirc;nh quảng c&amp;aacute;o n&amp;agrave;y ho&amp;agrave;n to&amp;agrave;n đo được OTS v&amp;agrave; t&amp;iacute;nh gi&amp;aacute; quảng c&amp;aacute;o dựa tr&amp;ecirc;n chỉ số n&amp;agrave;y. Khi chọn k&amp;ecirc;nh n&amp;agrave;y để quảng c&amp;aacute;o, c&amp;aacute;c nh&amp;agrave; tiếp thị ho&amp;agrave;n to&amp;agrave;n biết được họ trả bao nhi&amp;ecirc;u tiền cho một lần quảng c&amp;aacute;o của họ được nh&amp;igrave;n thấy. T&amp;iacute;nh &amp;eacute;p buộc t&amp;iacute;ch cực của Quảng C&amp;aacute;o Trạm Xăng Quảng c&amp;aacute;o ngo&amp;agrave;i trời n&amp;oacute;i chung l&amp;agrave; h&amp;igrave;nh thức quảng c&amp;aacute;o mang t&amp;iacute;nh &amp;eacute;p buộc, kh&amp;aacute;ch h&amp;agrave;ng kh&amp;ocirc;ng c&amp;oacute; quyền lựa chọn đổi k&amp;ecirc;nh hay lật sang trang kh&amp;aacute;c như khi xem quảng c&amp;aacute;o tr&amp;ecirc;n ti vi hay b&amp;aacute;o ch&amp;iacute;. Bật ti vi l&amp;ecirc;n, thấy quảng c&amp;aacute;o, bạn c&amp;oacute; thể chuyển k&amp;ecirc;nh ngay khi chưa tiếp nhận hết 30s th&amp;ocirc;ng điệp; nghe radio ph&amp;aacute;t quảng c&amp;aacute;o, bạn c&amp;oacute; thể đổi sang chương tr&amp;igrave;nh kh&amp;aacute;c; xem b&amp;aacute;o thấy quảng c&amp;aacute;o, bạn c&amp;oacute; thể lật sang trang kh&amp;aacute;c, thậm ch&amp;iacute; với c&amp;aacute;c nhật b&amp;aacute;o như Tuổi Trẻ bạn c&amp;oacute; thể bỏ qua hẳn phần phụ lục quảng c&amp;aacute;o c&amp;oacute; số trang c&amp;ograve;n d&amp;agrave;y hơn l&amp;agrave; nội dung ch&amp;iacute;nh; lướt web &amp;ldquo;đụng&amp;rdquo; quảng c&amp;aacute;o, bạn c&amp;oacute; thể &amp;ldquo;biến&amp;rdquo; khỏi nơi đ&amp;oacute; chỉ bằng một c&amp;uacute; &amp;ldquo;click&amp;rdquo; chuột. Nhưng với quảng c&amp;aacute;o ngo&amp;agrave;i trời th&amp;igrave; c&amp;aacute;c nh&amp;agrave; quảng c&amp;aacute;o v&amp;agrave; c&amp;ocirc;ng ty quảng c&amp;aacute;o l&amp;uacute;c n&amp;agrave;o cũng cảm thấy y&amp;ecirc;n t&amp;acirc;m v&amp;igrave; mức độ cảm thụ th&amp;ocirc;ng điệp truyền th&amp;ocirc;ng, đơn giản v&amp;igrave; khi nh&amp;agrave; quảng c&amp;aacute;o lựa chọn h&amp;igrave;nh thức n&amp;agrave;y họ đ&amp;atilde; c&amp;ugrave;ng c&amp;aacute;c c&amp;ocirc;ng ty quảng c&amp;aacute;o t&amp;iacute;nh to&amp;aacute;n gửi th&amp;ocirc;ng điệp ngắn gọn, x&amp;uacute;c t&amp;iacute;ch nhất. T&amp;iacute;nh &amp;eacute;p buộc n&amp;agrave;y c&amp;ograve;n cao hơn ở Quảng C&amp;aacute;o Trạm Xăng bởi thời gian kh&amp;aacute;ch chờ tiếp nhi&amp;ecirc;n liệu đủ l&amp;acirc;u để quảng c&amp;aacute;o c&amp;oacute; cơ hội tiếp cận với họ. Quảng C&amp;aacute;o Trạm Xăng c&amp;ograve;n tỏ ra ưu thế hơn khi l&amp;agrave; điểm đến h&amp;agrave;ng tuần bắt buộc của hầu hết mọi người, mọi gia đ&amp;igrave;nh sở hữu xe m&amp;aacute;y, &amp;ocirc; t&amp;ocirc; l&amp;agrave;m phương tiện di chuyển. Khi đến trạm xăng, v&amp;agrave;o bất cứ thời điểm n&amp;agrave;o &amp;ndash; 24/24, khi đang chờ đợi được tiếp nhi&amp;ecirc;n liệu th&amp;igrave; cơ hội để kh&amp;aacute;ch h&amp;agrave;ng xem thấy quảng c&amp;aacute;o l&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng cao v&amp;igrave; ở trạm xăng c&amp;oacute; 8 vị tr&amp;iacute; quảng c&amp;aacute;o được qui hoạch c&amp;oacute; chủ đ&amp;iacute;ch đ&amp;oacute;n mọi tầm nh&amp;igrave;n của kh&amp;aacute;ch đổ xăng, đ&amp;oacute; l&amp;agrave; chưa t&amp;iacute;nh lượng người đi ngang qua trạm xăng ở c&amp;aacute;c ng&amp;atilde; tư cũng nh&amp;igrave;n thấy quảng c&amp;aacute;o. Hơn nữa, từ trước đến nay, ai nấy đều quen thuộc đến nh&amp;agrave;m ch&amp;aacute;n những biển biểu nơi trạm xăng với c&amp;aacute;c th&amp;ocirc;ng điệp cấm: cấm lửa, cấm d&amp;ugrave;ng điện thoại đi động, cấm h&amp;uacute;t thuốc&amp;hellip; rồi c&amp;aacute;c bảng hướng dẫn ph&amp;acirc;n luồng xe, những nội qui của trạm xăng&amp;hellip;; nếu c&amp;oacute; một h&amp;igrave;nh ảnh đẹp hay một th&amp;ocirc;ng điệp th&amp;uacute; vị chẳng phải ngay lập tức thu h&amp;uacute;t được &amp;aacute;nh nh&amp;igrave;n của mọi người? Chẳng phải ai cũng th&amp;iacute;ch ngắm nh&amp;igrave;n c&amp;aacute;i đẹp, c&amp;aacute;i mới lạ, th&amp;uacute; vị? Trong bối cảnh n&amp;agrave;y, t&amp;iacute;nh &amp;eacute;p buộc của quảng c&amp;aacute;o c&amp;oacute; thể kh&amp;ocirc;ng c&amp;ograve;n g&amp;acirc;y cho kh&amp;aacute;ch h&amp;agrave;ng sự kh&amp;oacute; chịu, ngược lại, quảng c&amp;aacute;o mang lại cho trạm xăng h&amp;igrave;nh ảnh sinh động, đẹp mắt v&amp;agrave; th&amp;acirc;n thiện với kh&amp;aacute;ch h&amp;agrave;ng. Quảng c&amp;aacute;o tại trạm xăng l&amp;agrave; hệ thống quảng c&amp;aacute;o c&amp;oacute; độ phủ đều, rộng nhất trong tất cả c&amp;aacute;c loại h&amp;igrave;nh out door tại Việt Nam X&amp;eacute;t ở một g&amp;oacute;c độ n&amp;agrave;o đ&amp;oacute; th&amp;igrave; quảng c&amp;aacute;o ngo&amp;agrave;i trời c&amp;oacute; phần t&amp;aacute;c động s&amp;acirc;u rộng hơn cả tivi. C&amp;aacute;c k&amp;ecirc;nh tivi hiện nay kh&amp;ocirc;ng &amp;iacute;t ỏi như c&amp;aacute;ch nay mười năm, m&amp;agrave; đ&amp;atilde; c&amp;oacute; v&amp;agrave;i trăm k&amp;ecirc;nh phục vụ chuy&amp;ecirc;n cho c&amp;aacute;c đối tượng xem theo độ tuổi v&amp;agrave; thậm ch&amp;iacute; cả giới t&amp;iacute;nh. Trong một v&amp;ugrave;ng địa l&amp;yacute; như TP.HCM chẳng hạn, x&amp;eacute;t về mức độ t&amp;aacute;c động rộng r&amp;atilde;i l&amp;ecirc;n nhiều loại đối tượng kh&amp;aacute;c nhau th&amp;igrave; c&amp;oacute; thể n&amp;oacute;i quảng c&amp;aacute;o tivi v&amp;agrave; internet đ&amp;atilde; thua k&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời. Khẳng định như vậy v&amp;igrave; d&amp;ugrave; gi&amp;agrave; hay trẻ, thu nhập cao hay thấp th&amp;igrave; người d&amp;acirc;n đều phải đi lại ngo&amp;agrave;i đường, đặc biệt l&amp;agrave; tại Việt Nam khi m&amp;agrave; TNS đ&amp;atilde; kết luận 80% d&amp;acirc;n số Việt Nam d&amp;agrave;nh v&amp;agrave;i giờ mỗi ng&amp;agrave;y ở ngo&amp;agrave;i đường. K&amp;ecirc;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời từ trước đến nay ai cũng mặc định l&amp;agrave; billboard. Tuy nhi&amp;ecirc;n billboard kh&amp;ocirc;ng c&amp;oacute; mặt &amp;ldquo;tr&amp;ecirc;n từng c&amp;acirc;y số&amp;rdquo; để tạo ra cơ hội nh&amp;igrave;n thấy quảng c&amp;aacute;o cao cho những đối tượng kh&amp;aacute;ch h&amp;agrave;ng tiềm năng của m&amp;igrave;nh. D&amp;ugrave; billboard xuất hiện ở những nơi c&amp;oacute; lượng người lưu th&amp;ocirc;ng qua lại cao nhất nhưng kh&amp;ocirc;ng phải nơi n&amp;agrave;o c&amp;oacute; người lưu th&amp;ocirc;ng qua lại đều c&amp;oacute; billboard, hay nơi n&amp;agrave;o c&amp;oacute; billboard đều l&amp;agrave; nơi mọi kh&amp;aacute;ch h&amp;agrave;ng tiềm năng của sản phẩm quảng c&amp;aacute;o lưu th&amp;ocirc;ng qua v&amp;agrave; c&amp;oacute; cơ hội nh&amp;igrave;n thấy. Hiện chưa thấy c&amp;oacute; sản phẩm hay nh&amp;atilde;n h&amp;agrave;ng n&amp;agrave;o &amp;ldquo;phủ s&amp;oacute;ng&amp;rdquo; to&amp;agrave;n bộ tr&amp;ecirc;n hệ thống billboard để đ&amp;oacute;n được mọi tầm nh&amp;igrave;n mọi kh&amp;aacute;ch h&amp;agrave;ng. C&amp;oacute; lẽ việc n&amp;agrave;y &amp;iacute;t nhiều phụ thuộc v&amp;agrave;o ng&amp;acirc;n s&amp;aacute;ch v&amp;agrave; hiệu quả đầu tư billboard. C&amp;oacute; thể dễ d&amp;agrave;ng nhận thấy billboard c&amp;oacute; mặt hầu hết chỉ ở c&amp;aacute;c con đường ch&amp;iacute;nh trong một th&amp;agrave;nh phố hoặc quốc lộ 1A. Quảng c&amp;aacute;o trạm xăng cũng l&amp;agrave; một h&amp;igrave;nh thức quảng c&amp;aacute;o ngo&amp;agrave;i trời nhưng lại l&amp;agrave; k&amp;ecirc;nh quảng c&amp;aacute;o khắc phục được sự bị động n&amp;agrave;y v&amp;igrave; hệ thống trạm xăng phủ đều, phủ rộng để phục vụ nhu cầu tiếp nhi&amp;ecirc;n liệu li&amp;ecirc;n tục của hơn 23 triệu xe m&amp;aacute;y c&amp;oacute; b&amp;igrave;nh xăng nhỏ. Hiện to&amp;agrave;n TP. HCM c&amp;oacute; hơn 400 trạm b&amp;aacute;n lẻ xăng dầu. Nhiều tuyến đường trong nội th&amp;agrave;nh như Trần Hưng Đạo, L&amp;yacute; Thường Kiệt, C&amp;aacute;ch Mạng Th&amp;aacute;ng T&amp;aacute;m, hay khu vực c&amp;aacute;c bến xe... mật độ trạm xăng d&amp;agrave;y đặc. Với phương tiện di chuyển hầu hết l&amp;agrave; xe m&amp;aacute;y, b&amp;igrave;nh xăng nhỏ chỉ từ 4 đến 7 l&amp;iacute;t, n&amp;ecirc;n hằng tuần mọi người đều đến trạm xăng, v&amp;agrave; hằng ng&amp;agrave;y li&amp;ecirc;n tục đi ngang qua rất nhiều trạm xăng; v&amp;ocirc; h&amp;igrave;nh trung, trạm xăng tuy l&amp;agrave; nơi đặt quảng c&amp;aacute;o cố định nhưng lại trở th&amp;agrave;nh nơi rất năng động để quảng c&amp;aacute;o c&amp;oacute; thể tiếp cận với hầu hết mọi đối tượng kh&amp;aacute;ch h&amp;agrave;ng đều đặn v&amp;agrave; li&amp;ecirc;n tục. Quảng C&amp;aacute;o Trạm Xăng tiếp cận được kh&amp;aacute;ch h&amp;agrave;ng đại ch&amp;uacute;ng Mỗi k&amp;ecirc;nh quảng c&amp;aacute;o đều c&amp;oacute; những thế mạnh ri&amp;ecirc;ng. Mỗi một tờ b&amp;aacute;o đều nhắm tới một đối tượng độc giả d&amp;agrave;nh ri&amp;ecirc;ng cho m&amp;igrave;nh n&amp;ecirc;n quảng c&amp;aacute;o tr&amp;ecirc;n b&amp;aacute;o cũng dễ d&amp;agrave;ng tiếp cận được đối tượng kh&amp;aacute;ch h&amp;agrave;ng mục ti&amp;ecirc;u hiệu quả. Hay truyền h&amp;igrave;nh cũng vậy, t&amp;ugrave;y đối tượng nh&amp;agrave; quảng c&amp;aacute;o muốn tiếp cận m&amp;agrave; họ chọn những k&amp;ecirc;nh ph&amp;aacute;t s&amp;oacute;ng quảng c&amp;aacute;o kh&amp;aacute;c nhau. Đ&amp;acirc;y l&amp;agrave; ưu điểm của quảng c&amp;aacute;o tr&amp;ecirc;n b&amp;aacute;o hay tr&amp;ecirc;n truyền h&amp;igrave;nh, nhưng cũng lại l&amp;agrave; hạn chế bởi những kh&amp;aacute;ch h&amp;agrave;ng tiềm năng trong tương lai bị bỏ qua. Quảng c&amp;aacute;o trạm xăng ra đời mang sẵn trong m&amp;igrave;nh lợi thế: l&amp;agrave; điểm đến h&amp;agrave;ng tuần của hầu hết mọi đối tượng kh&amp;aacute;ch h&amp;agrave;ng, nhiều độ tuổi kh&amp;aacute;c nhau. Vấn đề c&amp;ograve;n lại chỉ nằm ở chỗ c&amp;aacute;c nh&amp;agrave; tiếp thị s&amp;aacute;ng tạo đến mức n&amp;agrave;o cho c&amp;aacute;c th&amp;ocirc;ng điệp quảng c&amp;aacute;o của m&amp;igrave;nh để chạm đến con tim kh&amp;aacute;ch h&amp;agrave;ng. C&amp;oacute; thể n&amp;oacute;i, k&amp;ecirc;nh quảng c&amp;aacute;o trạm xăng hội tụ ưu điểm t&amp;aacute;c động l&amp;ecirc;n đại ch&amp;uacute;ng vượt trội của tivi mười năm trước đ&amp;acirc;y khi chưa c&amp;oacute; h&amp;agrave;ng trăm k&amp;ecirc;nh ph&amp;acirc;n chia kh&amp;aacute;ch h&amp;agrave;ng như hiện nay.&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:47:08', 'admin', '2012-11-03 01:47:08');
INSERT INTO `media` VALUES (96, 'default13518843651', '', 'media_news', '[67]', 'admin', 'dfe', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:26:05', 'admin', '2012-11-03 02:26:05');
INSERT INTO `media` VALUES (86, 'default13518809051', '', 'media_news', '[82]', 'admin', 'Advantages advertising only at gas stations', '', '', 'en', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Gasoline Station Advertising is a type of OOH advertising has the longest exposure time customer and channel is the first outdoor advertising advertising fee based on the OTS.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Gasoline Station Advertising is a type of OOH advertising has the longest exposure time customer and channel is the first outdoor advertising advertising fee based on the OTS.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Current challenges of non-traditional types of advertising is to demonstrate the effectiveness and their achievements through independent research and reliable.&amp;nbsp;To know the effectiveness of billboard advertising, we need to perform the measurement and calculation is quite complicated so far do not have any form of outdoor advertising proved to be effective in addition to the remarks and said guessing.&amp;nbsp;Because based on emotional factors, so pricing billboard advertising is not possible for those who do marketing and advertising know how much they spend how effective, which is based on the location of the billboard appear, the area of ​​advertising and several factors related to building, construction ...&amp;nbsp;that is not based on an index to prove the effectiveness of this form of advertising.&amp;nbsp;An outdoor billboard though to how many, how much eye-catching, the customer can only glance at less than 3 seconds, but how many people have the opportunity to see the billboard ads are not included.Communication channels petrol station is the first type of OOH advertising in Vietnam have specific measurement data demonstrate some advertising opportunities contact with customers through the study of consumer behavior to the refueling station gasoline.&amp;nbsp;Research data on surveillance cameras directly at the 18 gas station Ad Petrolimex said petrol station with the longest exposure time customers in all types of outdoor advertising - an average of 42s - the average time a refueling station.&amp;nbsp;And this is also the first type of OOH advertising in Vietnam to charge advertisers based on the index OTS (opportunity to see, an index measuring ad effectiveness), ie on the amount of people have the opportunity to see the ad.&amp;nbsp;So take the number of people in gas stations and study their behavior so completely measurable advertising channel OTS and advertising based on this index.&amp;nbsp;When you select this channel to advertisers, marketers fully know how much they pay for each time their ad is seen.&amp;nbsp;The positive force of the Petrol Station Advertising Outdoor Advertising in general is a form of advertising force, customers do not have the option of changing the channel or turn the page, such as when watching television or newspaper advertising press.&amp;nbsp;Turn on the TV, see an ad, you can switch channels as soon as not receiving message every 30 seconds; radio ads, you can change to another program; see that ad, you can turn to the other sites, even with the Tuoi Tre newspaper as you can ignore much of the appendix ad with thick pages longer than the main content; surf &amp;quot;crash&amp;quot; ads, you can &amp;quot;turn&amp;quot; from where with a single &amp;quot;click&amp;quot; of the mouse.&amp;nbsp;But with outdoor advertising, advertisers and advertising companies always feel assured that the receptor level communication messages, simply because when advertisers choose this form they have the same advertising calculated to send a brief message, the most concise.&amp;nbsp;As this force even higher in Ad petrol station by the time customers wait long enough to fuel advertising opportunities to reach them.&amp;nbsp;Advertising also proved superior to the petrol station when required weekly destination of most people, all family owned motorcycles, automobile transportation.&amp;nbsp;As to the gas station, at any time - 24/24, while waiting to refuel the customer the opportunity to see advertising that is extremely high because the gas station with 8 position provided ad deliberate plan to welcome all guests to refuel vision, it is not the amount of people passing the gas station at the intersection also see ads.&amp;nbsp;Moreover, until now, everyone was familiar to marine boring the expression where the gas station with the message banned: fire, banned the use of cell phones, no smoking ... and the instruction sheet ramification car , the rules of the gas station ...; if you have a beautiful picture or a fun message was not immediately attract people&amp;#39;s eyes?&amp;nbsp;Not everyone likes watching beauty, something new and exciting?&amp;nbsp;In this context, the force of advertising can no longer cause the client discomfort, on the other hand, gas station advertising gives vivid pictures, nice and friendly to customers.&amp;nbsp;Advertising at the gas station is advertising system offers wide coverage in all types of out door in Vietnam At a certain angle, outdoor advertising has far-reaching impact than television.&amp;nbsp;The TV channel is not currently little as ten years ago, which was a few hundred channels catering to subjects by age and even gender.&amp;nbsp;In a geographical area such as the City, in terms of the impact on a wide variety of different types of objects, you can say television advertising and internet advertising channel lost outdoors.&amp;nbsp;Asserted that because young and old, high and low income people have to walk in the street, especially in Vietnam that TNS has concluded 80% of Vietnam&amp;#39;s population spend several hours a day outside road.&amp;nbsp;Outdoor advertising channel ever everyone defaults billboard.&amp;nbsp;However billboard absence &amp;quot;per kilometer&amp;quot; to create an opportunity to see the ad for your potential customers.&amp;nbsp;Although billboard appears in areas where the highest volume flow through but not where there is flow through the billboard, billboard or where there are places all potential customers of the promotional products store through and have the opportunity to see.&amp;nbsp;We have not seen any product or brand &amp;quot;cover&amp;quot; the entire system on the billboard to catch every view every customer.&amp;nbsp;Perhaps the budget is more or less dependent on the and investment efficiency billboard.&amp;nbsp;Can easily see the billboard is present mostly in the main street in a city or highway 1A.&amp;nbsp;Gas station advertising is a form of outdoor advertising, but advertising channel to overcome the passive system because gas stations are government, large government to serve the needs constant refueling of more than 23 million small motorcycle fuel tank.&amp;nbsp;In the whole city.&amp;nbsp;City has more than 400 retail petrol stations.&amp;nbsp;Many roads in the city such as Tran Hung Dao, Ly Thuong Kiet, the August Revolution, or the bus station area ...&amp;nbsp;the dense gas station density.&amp;nbsp;With transport mostly motorcycles, small fuel tank from 4 to 7 liters, so every week everyone to gas stations, daily and continuously passing a lot of gas stations; invisible medium, gas station Although ad is fixed but become very active to promote access to most customers regularly and continuously.&amp;nbsp;Gasoline Station Advertising mass customer access ad Each channel has its own strengths.&amp;nbsp;Every newspaper aimed at a general audience dedicated to his newspaper advertising should also be easily accessible to the target audience effectively.&amp;nbsp;TV or so, depending on the audience advertisers want to reach that they choose different advertising channels broadcast.&amp;nbsp;These are the advantages of advertising in the newspaper or on television, but also is limited by the potential customers in the future ignored.&amp;nbsp;In advertising gas station launched its built-in advantages: is the weekly destination for most customers, many different ages.&amp;nbsp;Remaining problem only lies in how creative marketers to their advertising messages to customer touches your heart.&amp;nbsp;Can say, gas station advertising channel convergence advantages remarkable impact on public television ten years ago when no division hundreds of customers today.&lt;/p&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:47:08', 'admin', '2012-11-03 01:47:08');
INSERT INTO `media` VALUES (95, 'default13518843651', '', 'media_news', '[67]', 'admin', 'abc', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:26:05', 'admin', '2012-11-03 02:26:05');
INSERT INTO `media` VALUES (87, 'default13518810211', '', 'media_news', '[82]', 'admin', 'Hệ Thống Quảng Cáo OOH', '', '', 'vn', '', '&lt;p&gt;\r\n	1/ Trạm xăng Việt Nam-địa điểm đặt quảng c&amp;aacute;o c&amp;oacute; số lượng người lưu th&amp;ocirc;ng nhiều chỉ sau đường phố&lt;/p&gt;\r\n&lt;div&gt;\r\n	2/ C&amp;oacute; 8 vị tr&amp;iacute; quảng c&amp;aacute;o/ trạm xăng được kh&amp;aacute;ch h&amp;agrave;ng ch&amp;uacute; &amp;yacute; nhất khi tiếp nhi&amp;ecirc;n liệu v&amp;agrave; lưu th&amp;ocirc;ng tr&amp;ecirc;n đường&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	3/ Quảng c&amp;aacute;o của bạn tại trạm xăng c&amp;oacute; cơ hội tiếp x&amp;uacute;c với kh&amp;aacute;ch h&amp;agrave;ng 24/24h tr&amp;ugrave;ng với thời gian mở cửa của trạm xăng.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	4/ Vị tr&amp;iacute; quảng c&amp;aacute;o trụ xăng: &amp;nbsp;99% người v&amp;agrave;o tiếp nhi&amp;ecirc;n liệu d&amp;agrave;nh thời gian 5s-7s để ngắm nh&amp;igrave;n (với quảng c&amp;aacute;o ngo&amp;agrave;i trời kh&amp;aacute;c trung b&amp;igrave;nh 1s-2s).&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	5/ Hệ thống quảng c&amp;aacute;o c&amp;oacute; độ &amp;nbsp;phủ đều, rộng &amp;nbsp;nhất trong tất cả c&amp;aacute;c loại h&amp;igrave;nh out door tại Việt Nam.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	6/ Hệ thống quảng c&amp;aacute;o ngo&amp;agrave;i trời đầu ti&amp;ecirc;n, duy nhất &amp;nbsp;kết hợp với kiến tr&amp;uacute;c l&amp;agrave;m tăng thiện cảm với quảng c&amp;aacute;o.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	7/ Hệ thống quảng c&amp;aacute;o OOH c&amp;oacute; thời gian tiếp x&amp;uacute;c kh&amp;aacute;ch h&amp;agrave;ng l&amp;acirc;u nhất trong tất cả c&amp;aacute;c loại h&amp;igrave;nh quảng c&amp;aacute;o ngo&amp;agrave;i trời - trung b&amp;igrave;nh l&amp;agrave; 52s (số liệu nghi&amp;ecirc;n cứu tr&amp;ecirc;n camera theo d&amp;otilde;i trực tiếp tại 4 trạm xăng Petrolimex).&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	8/ Duy &amp;nbsp;nhất với quảng c&amp;aacute;o trạm xăng: với gi&amp;aacute; thu&amp;ecirc; 1 billboard, bạn c&amp;oacute; thể tăng gấp 4 lượng người nh&amp;igrave;n thấy khi thu&amp;ecirc; vị tr&amp;iacute; quảng c&amp;aacute;o tr&amp;ecirc;n m&amp;aacute;i che trạm xăng&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	9/ &amp;nbsp;Lần đầu ti&amp;ecirc;n tr&amp;ecirc;n thế giới, kh&amp;aacute;ch h&amp;agrave;ng được chọn lựa c&amp;aacute;ch trang tr&amp;iacute; l&amp;agrave;m đẹp cho quảng c&amp;aacute;o&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:46:53', 'admin', '2012-11-03 01:46:53');
INSERT INTO `media` VALUES (88, 'default13518810211', '', 'media_news', '[82]', 'admin', 'OOH Advertising System', '', '', 'en', '', '&lt;p&gt;\r\n	1 / petrol stations Vietnam-ad sites with the number of people much traffic after the street&lt;/p&gt;\r\n&lt;div&gt;\r\n	2 / 8 ad placements / gas stations are the most customer attention when refueling and on the road&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	3 / Your ads in gas stations have the opportunity to interact with customers 24/24h coincide with the opening hours of petrol stations.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	4 / Location based advertising gasoline: 99% on fuel spends time 5s-7s to watch (with other outdoor advertising medium 1s-2s).&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	5 / ad system offers wide coverage in all types of out door in Vietnam.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	6 / outdoor advertising system first, unique architecture combined with increased sympathetic to advertising.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	7 / OOH advertising system with the longest exposure time customers in all types of outdoor advertising - an average of 52s (research data on the camera to track directly in 4 gas stations Petrolimex).&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	8 / Unique gas station advertising: with 1 billboard rent, you can increase more than 4 people to see when hiring ad placement on the roof gas station&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	9 / For the first time in the world, customers can choose the decorative beauty ads&lt;/div&gt;', '', '', '', '', '', 'Tự Lập', '', 0, 0, 'upload/logo.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 01:46:53', 'admin', '2012-11-03 01:46:53');
INSERT INTO `media` VALUES (97, 'default13518844851', '', 'media_gallery', '[67]', 'admin', 'abc', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/9910880821846737620.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:28:25', 'admin', '2012-11-03 02:28:25');
INSERT INTO `media` VALUES (98, 'default13518844851', '', 'media_gallery', '[67]', 'admin', 'def', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/9910880821846737620.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:28:25', 'admin', '2012-11-03 02:28:25');
INSERT INTO `media` VALUES (89, 'default13518814291', '', 'media_news', '[79]', 'admin', 'Người gốc Việt có thể làm thị trưởng ở Mỹ', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Tri Ta, một người gốc Việt trẻ tuổi, được dự kiến sẽ gi&amp;agrave;nh chiến thắng trong cuộc bầu cử thị trưởng th&amp;agrave;nh phố Westminster diễn ra trong tuần tới.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;text-align: justify; &quot;&gt;Những cửa h&amp;agrave;ng ăn uống với c&amp;aacute;c m&amp;oacute;n b&amp;uacute;n, phở, b&amp;aacute;nh kem, thu h&amp;uacute;t rất nhiều kh&amp;aacute;ch h&amp;agrave;ng đến với trung t&amp;acirc;m thương mại l&amp;acirc;u đời ở th&amp;agrave;nh phố Westminster, bang California, Mỹ. C&amp;aacute;c tờ b&amp;aacute;o h&amp;agrave;ng ng&amp;agrave;y cung cấp nhiều tin tức từ Việt Nam cho đ&amp;ocirc;ng đảo người gốc Việt sinh sống tại đ&amp;acirc;y. Tuy nhi&amp;ecirc;n, từ ng&amp;agrave;y khu mua sắm Little Saigon được th&amp;agrave;nh lập, họ chưa từng c&amp;oacute; một thị trưởng người Việt.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Trong những năm qua, c&amp;aacute;c cử tri gốc Việt tại quận Cam từng đi bỏ phiếu bầu ra thẩm ph&amp;aacute;n gốc Việt, gi&amp;aacute;m s&amp;aacute;t quận, d&amp;acirc;n biểu gốc Việt, nhưng chức vụ cao nhất ở Westminster th&amp;igrave; chưa bao giờ l&amp;agrave; người gốc Việt. Mọi việc c&amp;oacute; thể sẽ thay đổi trong tuần tới.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Tri Ta, 39 tuổi, một bi&amp;ecirc;n tập vi&amp;ecirc;n b&amp;aacute;o ch&amp;iacute; v&amp;agrave; l&amp;agrave; thị trưởng l&amp;acirc;m thời của th&amp;agrave;nh phố, c&amp;oacute; thể l&amp;agrave;m n&amp;ecirc;n lịch sử trong tuần sau nếu &amp;ocirc;ng đ&amp;aacute;p ứng được kỳ vọng v&amp;agrave; thu h&amp;uacute;t được nhiều phiếu bầu nhất trong số 5 ứng cử vi&amp;ecirc;n chạy đua v&amp;agrave;o chiếc ghế thị trưởng. C&amp;aacute;c đối thủ của &amp;ocirc;ng gồm doanh nh&amp;acirc;n Al Hamade, ủy vi&amp;ecirc;n hội đồng th&amp;agrave;nh phố Penny Lommer, chủ doanh nghiệp Ha Minh Mach v&amp;agrave; một nh&amp;acirc;n vi&amp;ecirc;n kỹ thuật Tamara Sue Pennington.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Ta từng l&amp;agrave;m việc trong Hội đồng th&amp;agrave;nh phố 6 năm v&amp;agrave; được đương kim thị trưởng Margie Rice, thị trưởng l&amp;acirc;u năm nhất của th&amp;agrave;nh phố, ủng hộ.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Diện mạo của Westminster đ&amp;atilde; thay đổi sau nhiều năm v&amp;agrave; việc bầu ra một thị trưởng người Việt cũng đ&amp;aacute;nh dấu một bước thay đổi quan trọng trong cộng đồng người Việt,&amp;nbsp;Los Angeles Times&amp;nbsp;dẫn lời Jeff Brody, người c&amp;oacute; nhiều nghi&amp;ecirc;n cứu v&amp;agrave; theo d&amp;otilde;i sự thay đổi của Little Saigon trong những năm qua, cho hay.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;Sự xuất hiện của một thị trưởng người Việt đ&amp;atilde; được chờ đợi qu&amp;aacute; l&amp;acirc;u. V&amp;igrave; Westminster l&amp;agrave; một th&amp;agrave;nh phố đa văn h&amp;oacute;a, v&amp;igrave; vậy ứng cử vi&amp;ecirc;n cần phải x&amp;acirc;y dựng được sự kết nối được c&amp;aacute;c cử tri Việt Nam, Latin v&amp;agrave; cử tri da trắng&amp;quot;, Brody n&amp;oacute;i. &amp;quot;Một ứng cử vi&amp;ecirc;n kh&amp;ocirc;ng c&amp;ograve;n c&amp;oacute; thể dựa v&amp;agrave;o họ t&amp;ecirc;n v&amp;agrave; chủng tộc để thu h&amp;uacute;t phiếu bầu. Những người nhập cư đ&amp;atilde; trưởng th&amp;agrave;nh v&amp;agrave; sự đa dạng ở Westminster chứng tỏ một ứng cử vi&amp;ecirc;n thị trưởng phải đại diện cho lợi &amp;iacute;ch của to&amp;agrave;n th&amp;agrave;nh phố, chứ kh&amp;ocirc;ng chỉ l&amp;agrave; một nh&amp;oacute;m cục bộ&amp;quot;.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Trong cộng đồng người da trắng trung lưu chiếm phần đ&amp;ocirc;ng, Westminster hiện trở th&amp;agrave;nh th&amp;agrave;nh phố kh&amp;ocirc;ng c&amp;oacute; d&amp;acirc;n tộc n&amp;agrave;o chiếm đại đa số, m&amp;agrave; chỉ c&amp;oacute; số d&amp;acirc;n gốc &amp;Aacute; chiếm 44%, theo số liệu điều tra d&amp;acirc;n số. Trong đ&amp;oacute;, hơn một phần ba tr&amp;ecirc;n tổng số 91.000 d&amp;acirc;n to&amp;agrave;n th&amp;agrave;nh phố l&amp;agrave; người gốc Việt. V&amp;igrave; thế, c&amp;aacute;c ứng cử vi&amp;ecirc;n gốc Việt thường bị cho rằng sẽ chỉ chăm lo cho lợi &amp;iacute;ch của cộng đồng người Việt.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Tri Ta kh&amp;ocirc;ng nghĩ như vậy. &amp;quot;T&amp;ocirc;i cảm thấy t&amp;ocirc;i l&amp;agrave; một người rất trung thực v&amp;agrave; c&amp;ocirc;ng bằng. T&amp;ocirc;i ở đ&amp;acirc;y để phục vụ tất cả mọi người&amp;quot;.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	B&amp;agrave; Rice, 83 tuổi, n&amp;oacute;i rằng khi b&amp;agrave; vận động Ta tranh cử v&amp;agrave;o chức vụ của m&amp;igrave;nh, b&amp;agrave; đ&amp;atilde; y&amp;ecirc;u cầu một điều kiện rằng phải duy tr&amp;igrave; c&amp;aacute;c truyền thống hiện c&amp;oacute; của th&amp;agrave;nh phố như tổ chức lễ kỷ niệm vụ tấn c&amp;ocirc;ng 11/9, lễ Gi&amp;aacute;ng sinh, lễ diễu h&amp;agrave;nh đầy m&amp;agrave;u sắc nh&amp;acirc;n dịp Tết &amp;acirc;m lịch.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;T&amp;ocirc;i t&amp;igrave;m kiếm một người am hiểu lịch sử v&amp;agrave; truyền thống của th&amp;agrave;nh phố. &amp;Ocirc;ng ấy c&amp;oacute; thể &amp;iacute;t n&amp;oacute;i nhưng &amp;ocirc;ng ấy cần phải mạnh mẽ khi cần thiết&amp;quot;, b&amp;agrave; Rice cho hay.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Đương kim thị trưởng Westminster cho biết đối thủ &amp;quot;nặng k&amp;yacute;&amp;quot; nhất của Ta l&amp;agrave; Loomer, trợ l&amp;yacute; quản l&amp;yacute; th&amp;agrave;nh phố trong 6 năm trước khi về nghỉ hưu. Ta v&amp;agrave; Loomer từng gi&amp;aacute;p mặt nhau trong cuộc bỏ phiếu năm 2006 v&amp;agrave; 2010 v&amp;agrave; Ta đều gi&amp;agrave;nh vị tr&amp;iacute; cao hơn.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Lần n&amp;agrave;y, d&amp;ugrave; ai chiến thắng th&amp;igrave; cũng phải đối mặt với những kh&amp;oacute; khăn của th&amp;agrave;nh phố. Ch&amp;iacute;nh quyền đ&amp;atilde; phải sa thải gần 70 quan chức v&amp;agrave; nh&amp;acirc;n vi&amp;ecirc;n để cắt giảm 3 triệu USD ng&amp;acirc;n quỹ, c&amp;acirc;n bằng ng&amp;acirc;n s&amp;aacute;ch th&amp;agrave;nh phố.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Tri Ta đến Mỹ năm 1992, dự định theo học ng&amp;agrave;nh c&amp;ocirc;ng nghệ th&amp;ocirc;ng tin. Sau b&amp;agrave;i kiểm tra m&amp;ocirc;n ch&amp;iacute;nh trị học trong học kỳ đầu ti&amp;ecirc;n, thầy gi&amp;aacute;o của Ta gọi &amp;ocirc;ng đến v&amp;agrave; n&amp;oacute;i rằng &amp;ocirc;ng c&amp;oacute; sở trường về lĩnh vực n&amp;agrave;y v&amp;agrave; sau đ&amp;oacute; Ta đổi chuy&amp;ecirc;n ng&amp;agrave;nh.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Ta từng l&amp;agrave; bi&amp;ecirc;n tập vi&amp;ecirc;n cấp cao cho tờ Viet Salon, một tạp ch&amp;iacute; về nghề l&amp;agrave;m m&amp;oacute;ng ch&amp;acirc;n m&amp;oacute;ng tay v&amp;agrave; sống c&amp;ugrave;ng gia đ&amp;igrave;nh tại Westminster. &amp;Ocirc;ng l&amp;agrave; người gốc Việt thứ ba tranh cử chức vụ thị trưởng th&amp;agrave;nh phố, hai người trước &amp;ocirc;ng kh&amp;ocirc;ng th&amp;agrave;nh c&amp;ocirc;ng.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;Ta n&amp;ecirc;n cẩn thận để tr&amp;aacute;nh việc tranh gi&amp;agrave;nh quyền lực. &amp;Ocirc;ng ấy cần phục vụ lợi &amp;iacute;ch của to&amp;agrave;n thể th&amp;agrave;nh phố chứ kh&amp;ocirc;ng phải từ cộng đồng m&amp;agrave; &amp;ocirc;ng ấy xuất th&amp;acirc;n. Đ&amp;oacute; kh&amp;ocirc;ng chỉ l&amp;agrave; niềm vinh dự m&amp;agrave; l&amp;agrave; một c&amp;ocirc;ng việc rất nặng nhọc, phục vụ cộng đồng&amp;quot;, Tony Lam, chủ cửa h&amp;agrave;ng b&amp;aacute;nh mỳ, người gốc Việt đầu ti&amp;ecirc;n được bầu v&amp;agrave;o hội đồng th&amp;agrave;nh phố Westminster, gửi lời khuy&amp;ecirc;n đến Ta. &amp;Ocirc;ng Lam ứng cử năm 1992 v&amp;agrave; phục vụ trong hội đồng th&amp;agrave;nh phố một thập kỷ sau đ&amp;oacute;.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n	Nếu Ta trở th&amp;agrave;nh thị trưởng Westminster nhiệm kỳ tới, c&amp;ugrave;ng với cộng đồng người gốc Ireland, Do Th&amp;aacute;i, Italy... cộng đồng người Mỹ gốc Việt sẽ x&amp;acirc;y dựng được bộ m&amp;aacute;y vững chắc tr&amp;ecirc;n qu&amp;ecirc; hương mới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, 'upload/trita%20(1).jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:39:15', 'admin', '2012-11-03 02:39:15');
INSERT INTO `media` VALUES (90, 'default13518814291', '', 'media_news', '[79]', 'admin', 'Vietnamese American mayor can do in the U.S.', '', '', 'en', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Tri Ta, a young Vietnamese American, is expected to win the election the mayor of Westminster takes place next week.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;text-align: justify; &quot;&gt;Signs campaign for mayor the city on the streets of Westminster. Photo: Los Angeles Times&lt;/span&gt;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	The dining outlets with the noodle dish, noodles, cakes, attract a lot of customers to the long-standing commercial center in the city of Westminster, California, USA. The daily newspaper provides news from Vietnam for the majority of Vietnamese people living here. However, from the date of the mall Little Saigon was established, they have never had a Vietnamese mayor.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	In recent years, the Vietnamese voters in Orange County ever to vote Vietnamese judges and supervision of District, Rep. Vietnamese, but the highest position in Westminster, has never been ethnic Vietnamese. Things may change in the coming weeks.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Tri Ta, 39, a newspaper editor and is the city&amp;#39;s interim mayor, could make history next week if he meets expectations and garnered the most votes out of 5 candidates running for mayor seat. His opponents include businessman Al Hamade, city councilor Penny Lommer, Ha Minh Mach business owner and a technician Tamara Sue Pennington.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	I worked in the City Council six years and was incumbent Mayor Margie Rice, the longtime mayor of the city, supporters.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Appearance of Westminster has changed after several years and the election of a Vietnamese mayor also marked a significant step change in the Vietnamese community, Los Angeles Times, citing Jeff Brody, who has many research and monitoring changes Little Saigon in recent years, said.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;The emergence of a Vietnamese mayor has been waiting too long. Because Westminster is a multicultural city, so candidates need to build the connection is the voters in Vietnam, Latin and white voters, &amp;quot;Brody said. &amp;quot;A candidate can no longer rely on their name and race to attract votes. Immigrants has grown and diversity in Westminster proved a mayor candidate to represent the interests of the whole city, not just a local group. &amp;quot;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	In the middle-class white community represent majority, Westminster or the city does not have any race accounted for the vast majority, only the Asian population accounts for 44%, according to census data. In it, more than a third of the total city&amp;#39;s 91,000 residents are ethnic Vietnamese. Therefore, Vietnamese candidates often that will only take care of the interests of the Vietnamese community.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Tri I do not think so. &amp;quot;I feel I am a very honest and fair. I am here to serve everyone.&amp;quot;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Rice, 83, said that when her campaign I ran into his office, she asked a condition that must maintain the traditions of the city as organized celebrations 11 attacks / 9, Christmas, colorful parade on the occasion of the Lunar New Year.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;I am looking for a person knowledgeable about the history and tradition of the city. He may be quiet, but he needs to be strong when necessary,&amp;quot; Rice said.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	The current mayor of Westminster said opponents &amp;quot;heavy&amp;quot; My most Loomer, assistant city manager for six years before retiring. Have and Loomer ever faced each other in the voting in 2006 and 2010 and I have won a higher position.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	This time, no matter who wins, faced with the difficulties of the city. The government has to lay off nearly 70 officials and employees to cut $ 3 million budget, balance the city budget.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Tri I came to America in 1992, plans to study information technology. After the political test subjects in the first semester, the teacher and I called him to say that he had a knack for this area and then I change majors.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	I was a senior editor for The Viet Salon, a magazine about professional nail manicure and lives with his family in Westminster. He was the third of Vietnamese origin to run for mayor, two people before him failed.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;We should be careful to avoid power struggles. He should serve the interests of the whole city, not from the community in which he came. It is not only an honor but a very hard work, community service, &amp;quot;said Tony Lam, bakery shop owner, the first Vietnamese American elected to the Westminster City Council, sent advice to me. Mr. Lam candidate in 1992 and served in the city council a decade later.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	If I become mayor of Westminster next term, along with community native of Ireland, Israel, Italy ... Vietnamese American community will build the machine firmly on their new home.&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, 'upload/trita%20(1).jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:39:15', 'admin', '2012-11-03 02:39:15');
INSERT INTO `media` VALUES (91, 'default13518819161', '', 'media_news', '[79]', 'admin', 'Bão tan, Obama và Romney tiếp tục cuộc đua', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;Tổng thống Mỹ Barack Obama v&amp;agrave; &amp;ocirc;ng Mitt Romney trở lại với cuộc chạy đua nước r&amp;uacute;t đ&amp;ecirc;̉ vét n&amp;ocirc;́t những lá phi&amp;ecirc;́u cu&amp;ocirc;́i cùng khi chỉ c&amp;ograve;n 5 ng&amp;agrave;y nữa l&amp;agrave; đến thời điểm bỏ phiếu.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Tuần trước, &amp;ocirc;ng Obama v&amp;agrave; Romney c&amp;oacute; cuộc &amp;quot;đ&amp;igrave;nh chiến&amp;quot; hiếm c&amp;oacute; để đương kim tổng thống d&amp;agrave;nh thời gian chỉ đạo đối ph&amp;oacute; với si&amp;ecirc;u b&amp;atilde;o Sandy ập v&amp;agrave;o miền đ&amp;ocirc;ng nước Mỹ, l&amp;agrave;m nhiều người thiệt mạng. Khi cơn b&amp;atilde;o đi qua v&amp;agrave; những c&amp;ocirc;ng việc kh&amp;ocirc;i phục sau b&amp;atilde;o dần ổn định, hai ứng cử vi&amp;ecirc;n tổng thống trở lại v&amp;ograve;ng cuối c&amp;ugrave;ng của chiến dịch vận động tranh cử.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Obama mở chiến dịch rầm rộ tại 4 bang quan trọng sau khi rời bang New Jersey bị b&amp;atilde;o t&amp;agrave;n ph&amp;aacute;. Ph&amp;aacute;t biểu trước đ&amp;aacute;m đ&amp;ocirc;ng ở Green Bay, Wisconsin, &amp;ocirc;ng Obama ca ngợi người d&amp;acirc;n đ&amp;atilde; đo&amp;agrave;n kết với nhau trong cơn b&amp;atilde;o v&amp;agrave; k&amp;ecirc;u gọi cử tri cho &amp;ocirc;ng th&amp;ecirc;m 4 năm nữa tại nhiệm sở.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;Sau khi thảm họa xảy ra, ch&amp;uacute;ng ta đ&amp;atilde; thấy những điều tốt đẹp nhất của nước Mỹ. Tất cả những kh&amp;aacute;c biệt dường như tan đi. Kh&amp;ocirc;ng c&amp;oacute; đảng D&amp;acirc;n chủ hay Cộng h&amp;ograve;a trong b&amp;atilde;o, m&amp;agrave; chỉ c&amp;oacute; những người bạn s&amp;aacute;t c&amp;aacute;nh với nhau&amp;quot;,&amp;nbsp;&lt;em&gt;AFP&lt;/em&gt;&amp;nbsp;dẫn lời &amp;ocirc;ng Obama n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tổng thống Obama được ch&amp;iacute;nh đồng minh của đối thủ ca ngợi trong vi&amp;ecirc;̣c chỉ đạo đ&amp;ocirc;́i phó với bão. Sau Wisconsin, đương kim tổng thống đ&amp;aacute;p m&amp;aacute;y bay đến bang miền t&amp;acirc;y Nevada v&amp;agrave; sau đ&amp;oacute; l&amp;agrave; Colorado, trước khi đến bang quan trọng l&amp;agrave; Ohio.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;Ocirc;ng Obama nhắc đến những kh&amp;oacute; khăn đang chờ đợi Nh&amp;agrave; Trắng khi thay đổi tổng thống. &amp;quot;V&amp;agrave;o thời điểm những tuần cuối c&amp;ugrave;ng trước ng&amp;agrave;y bầu cử, thống đốc Romney đ&amp;atilde; thể hiện hết t&amp;agrave;i năng của m&amp;igrave;nh với tư c&amp;aacute;ch l&amp;agrave; một doanh nh&amp;acirc;n v&amp;agrave; đưa ra những ch&amp;iacute;nh s&amp;aacute;ch cũ kỹ, sai lầm cho nước Mỹ v&amp;iacute; dụ như việc trao th&amp;ecirc;m quyền lực cho c&amp;aacute;c ng&amp;acirc;n h&amp;agrave;ng v&amp;agrave; cắt giảm bảo hiểm y tế của h&amp;agrave;ng triệu người&amp;quot;, &amp;ocirc;ng Obama n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trong khi đ&amp;oacute;, ứng cử vi&amp;ecirc;n đảng Cộng h&amp;ograve;a Romney phải cố gắng nhiều để kh&amp;ocirc;ng bị l&amp;atilde;ng qu&amp;ecirc;n sau khi mọi sự ch&amp;uacute; &amp;yacute; dồn v&amp;agrave;o Tổng thống Obama trong những ng&amp;agrave;y b&amp;atilde;o. &amp;Ocirc;ng Romney c&amp;oacute; ba chặng dừng d&amp;acirc;n ở Virginia, bang c&amp;oacute; nền kinh tế yếu k&amp;eacute;m khiến thế mạnh về kinh tế của &amp;ocirc;ng được ph&amp;aacute;t huy.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;quot;T&amp;ocirc;i biết những người ủng hộ &amp;ocirc;ng Obama đang h&amp;ocirc; khẩu hiệu &amp;#39;th&amp;ecirc;m 4 năm nữa&amp;#39;. C&amp;ograve;n khẩu hiệu của ch&amp;uacute;ng ta l&amp;agrave; &amp;#39;th&amp;ecirc;m 5 ng&amp;agrave;y nữa th&amp;ocirc;i&amp;#39;&amp;quot;, &amp;ocirc;ng Romney ph&amp;aacute;t biểu trước những người ủng hộ ở Roanoke, Virginia.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đội vận động tranh cử của cựu thống đốc bang Massachusetts tự tin rằng &amp;ocirc;ng c&amp;oacute; thể d&amp;agrave;nh th&amp;ecirc;m &amp;iacute;t nhất l&amp;agrave; v&amp;agrave;i điểm nữa, ngay tại những bang truyền thống ủng hộ đảng D&amp;acirc;n chủ, v&amp;iacute; dụ như tin rằng &amp;ocirc;ng sẽ thu h&amp;uacute;t được nhiều phiếu bầu tại Pensylvania trong ng&amp;agrave;y 4/11, chỉ 48 giờ trước ng&amp;agrave;y bầu cử.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Ngo&amp;agrave;i ra, &amp;ocirc;ng Romney cũng chế nhạo &amp;ocirc;ng Obama v&amp;igrave; muốn bầu ra &amp;quot;Bộ trưởng Kinh tế&amp;quot;, điều m&amp;agrave; Romney cho rằng kh&amp;ocirc;ng để n&amp;agrave;o xoay chuyển được t&amp;igrave;nh h&amp;igrave;nh kinh tế kh&amp;oacute; khăn. &amp;quot;Ch&amp;uacute;ng ta kh&amp;ocirc;ng cần một Bộ trưởng Kinh tế am hiểu về kinh tế, ch&amp;uacute;ng ta cần một tổng thống am hiểu về kinh tế, v&amp;agrave; t&amp;ocirc;i l&amp;agrave; người như vậy&amp;quot;, &amp;ocirc;ng Romney, một triệu ph&amp;uacute;, n&amp;oacute;i.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hai ứng cử vi&amp;ecirc;n tổng thống Mỹ sẽ tiếp tục c&amp;oacute; những b&amp;agrave;i ph&amp;aacute;t biểu cuối c&amp;ugrave;ng trước người d&amp;acirc;n với nhiều nội dung cạnh tranh quyết liệt cho đến ng&amp;agrave;y bầu cử 6/11 tới, b&amp;ugrave; đắp cho những ng&amp;agrave;y tạm dừng tranh cử v&amp;igrave; b&amp;atilde;o trong tuần qua.&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, 'upload/obama%20(1).jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:39:34', 'admin', '2012-11-03 02:39:34');
INSERT INTO `media` VALUES (92, 'default13518819161', '', 'media_news', '[79]', 'admin', 'All storm, Obama and Romney continue to race', '', '', 'en', '&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;U.S. President Barack Obama and Mitt Romney back to the sprint race to vet Not the final votes when only 5 days left until voting time.&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;gt; Obama to visit storm victims Sandy&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;gt; Obama, Romney stopped the race&lt;/span&gt;&lt;/div&gt;', '&lt;p&gt;\r\n	U.S. President Barack Obama and Mitt Romney back to the sprint race to vet Not the final votes when only 5 days left until voting time.&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;gt; Obama to visit storm victims Sandy&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;gt; Obama, Romney stopped the race&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/obama.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Obama waving to supporters in Los Angeles, Nevada. Photo: AFP&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Last week, Obama and Romney are the &amp;quot;Armistice&amp;quot; rare to incumbent president spent time directing deal with super storms Sandy hit the eastern United States, killing many people. When the storm passed and the restoration work after storm gradually stabilized, the two presidential candidates return to the final round of the election campaign.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Obama campaigned heavily in four state after falling important state New Jersey was destroyed by the storm. Speaking to the crowd in Green Bay, Wisconsin, Obama praised the people have come together in the storm and urged voters gave him another four years in office.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;After the disaster, we have seen the best of America. All these differences seem to melt away. Neither Democrats nor Republicans in the storm, but only those of you closely together, &amp;quot;AFP quoted Obama as saying.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	President Obama is the main ally of the opponents praised in directing deal with how. After Wisconsin, incumbent president flew to the western state of Nevada and then Colorado, prior to the critical state is Ohio.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Obama mentioned the difficulties awaiting the White House when the president changes. &amp;quot;At the time of the final weeks before the election, Governor Romney has shown all his talents as a businessman and giving the old policy, wrong for the United States for example, the award of more power to the banks and cut health insurance of millions of people, &amp;quot;Obama said.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Meanwhile, the Republican candidate Romney trying hard not to be forgotten after all the attention put on President Obama in the storm. Mr. Romney had three people stop in Virginia, the state with the weak economy makes the economic strength of his promotion.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;quot;I know Obama supporters are chanting &amp;#39;four more years.&amp;#39; As our slogan is &amp;#39;adding five more days&amp;#39;,&amp;quot; Romney told his supporters in Roanoke, Virginia.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	The campaign team of the former Massachusetts governor is confident that he can spend at least a few more points, even in the traditionally supportive of Democrats, for example, believe that he will attract more votes election in Pennsylvania in on 4/11, just 48 hours before election day.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	In addition, Mr. Romney mocked Obama elected because he wanted to &amp;quot;Ministry of Economy&amp;quot;, which Romney said not to turn the difficult economic situation. &amp;quot;We do not need a minister of economic knowledge economy, we need a president who understands the economy, and I&amp;#39;m like that,&amp;quot; said Romney, a millionaire, said.&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: justify; &quot;&gt;\r\n	Two presidential candidates will continue to have the final speech before the people with a lot of content competition until election day 6/11 to compensate for the election day suspension because of the hurricane in week.&lt;/div&gt;', '', '', '', '', '', '', '', 0, 0, 'upload/obama%20(1).jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:39:34', 'admin', '2012-11-03 02:39:34');
INSERT INTO `media` VALUES (99, 'default13518848801', '', 'media_videoalbum', '[75]', 'admin', 'Truyền Thông Tự Lập demo sản phẩm Salonpas tại trạm xăng', '', '', 'vn', '', '&lt;p&gt;\r\n	&lt;iframe allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; src=&quot;http://www.youtube.com/embed/2SuD7sBLyUA&quot; width=&quot;420&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:34:40', 'admin', '2012-11-03 02:34:40');
INSERT INTO `media` VALUES (100, 'default13518848801', '', 'media_videoalbum', '[75]', 'admin', 'Communications TuLap Salonpas product demo at gas station', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:34:40', 'admin', '2012-11-03 02:34:40');
INSERT INTO `media` VALUES (101, 'default13518849541', '', 'media_partners', '[68]', 'admin', 'Sing gum Cool Air', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/Logo_Cool_Air.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:35:54', 'admin', '2012-11-03 02:35:54');
INSERT INTO `media` VALUES (102, 'default13518849541', '', 'media_partners', '[68]', 'admin', 'Sing gum Cool Air', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/Logo_Cool_Air.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:35:54', 'admin', '2012-11-03 02:35:54');
INSERT INTO `media` VALUES (103, 'default13518850081', '', 'media_partners', '[68]', 'admin', 'Top A', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/logo%20(1).png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:36:48', 'admin', '2012-11-03 02:36:48');
INSERT INTO `media` VALUES (104, 'default13518850081', '', 'media_partners', '[68]', 'admin', 'Top A', '', '', 'en', '', '', '', '', '', '', '', '', '', 0, 0, 'upload/logo%20(1).png', 0, '', '', '', 0, 0, 'active', '', '2012-11-03 02:36:48', 'admin', '2012-11-03 02:36:48');
INSERT INTO `media` VALUES (105, 'default13540388591', '', 'media_information', '[95]', 'admin', 'SỬA CHỮA &lt;B&gt;MAINBOARD&lt;/B&gt;', '', '', 'vn', '', '&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;elife-table&quot; style=&quot;height: 18px; width: 519px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;h3 align=&quot;center&quot;&gt;\r\n					&lt;span style=&quot;color:#000000;&quot;&gt;&lt;strong&gt;STT&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;h3 align=&quot;center&quot;&gt;\r\n					&lt;span style=&quot;color:#000000;&quot;&gt;&lt;strong&gt;T&amp;Igrave;NH TRẠNG&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;h3 align=&quot;center&quot;&gt;\r\n					&lt;span style=&quot;color:#000000;&quot;&gt;&lt;strong&gt;GI&amp;Aacute;&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;1&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Lỗi nguồn n&amp;oacute;i chung m&amp;aacute;y Pen III&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;20$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;2&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Lỗi nguồn, main m&amp;aacute;y Pen IV&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;20$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;3&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Lỗi main m&amp;aacute;y Centrino&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;30$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;4&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Lỗi main m&amp;aacute;y Core duo, Core 2 duo, code i&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;35$ - 60$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;5&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					H&amp;agrave;n lại chipset c&amp;aacute;c loại&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;20$ - 30$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;6&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay chipset (thay 2 chip set tr&amp;ecirc;n c&amp;ugrave;ng 1 main được giảm 30%)&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;40$ - 60$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;7&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay khe Ram&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;15$/khe&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;8&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Ph&amp;aacute; Pass m&amp;aacute;y (tất cả c&amp;aacute;c loại m&amp;aacute;y)&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;15$ - 50$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;9&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Nạp Rom bios, nạp Rom n&amp;oacute;i chung&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;15$ - 40$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;10&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay quạt chip, l&amp;agrave;m lại quạt&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;10$ - 25$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;11&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay ch&amp;acirc;n rắc nguồn&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;10$ - 20$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 01:01:35', 'admin', '2012-11-28 01:01:35');
INSERT INTO `media` VALUES (106, 'default13540398361', '', 'media_information', '[104]', 'admin', '&lt;B&gt;Đào tạo KTV&lt;/B&gt; sửa chữa laptop', '', '', 'vn', '', '&lt;h2&gt;\r\n	GIAI ĐOẠN 1 &amp;ndash; TH&amp;Aacute;O R&amp;Aacute;P &amp;amp; C&amp;Agrave;I ĐẶT LAPTOP :&lt;/h2&gt;\r\n&lt;ol&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Cấu tạo &amp;amp; nguy&amp;ecirc;n l&amp;yacute; hoạt động m&amp;aacute;y laptop. Tổng quan về phần cứng của m&amp;aacute;y t&amp;iacute;nh laptop v&amp;agrave; nguy&amp;ecirc;n l&amp;yacute; hoạt động m&amp;aacute;y t&amp;iacute;nh laptop, giới thiệu về c&amp;aacute;c d&amp;ograve;ng vi xử l&amp;yacute;, ph&amp;acirc;n loại laptop. Lắp r&amp;aacute;p c&amp;aacute;c thiết bị trong m&amp;aacute;y laptop. (Th&amp;aacute;o lắp c&amp;aacute;c bộ phận trong m&amp;aacute;y t&amp;iacute;nh laptop) X&amp;aacute;c định c&amp;aacute;c cổng (giao tiếp, thiết bị ngoại vi), lắp mainboard hệ thống, lắp r&amp;aacute;p bộ nhớ, lắp c&amp;aacute;c Card mở rộng, lắp r&amp;aacute;p thiết bị lưu trữ.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		CMOS v&amp;agrave; cấu h&amp;igrave;nh c&amp;aacute;c th&amp;ocirc;ng số của Laptop. Thực hiện v&amp;agrave; thiết lập cấu h&amp;igrave;nh CMOS đối với một số tr&amp;igrave;nh BIOS kh&amp;aacute;c nhau.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Quản trị laptop th&amp;ocirc;ng qua hệ điều h&amp;agrave;nh. Thiết lập c&amp;aacute;c chế độ l&amp;agrave;m việc th&amp;iacute;ch hợp đối với một số HĐH, sử dụng c&amp;aacute;c chức năng/c&amp;ocirc;ng cụ kh&amp;aacute;c nhau của một số hệ điều h&amp;agrave;nh Windows XP, Vista, 7&amp;hellip; để quản l&amp;yacute; m&amp;aacute;y t&amp;iacute;nh.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Chẩn đo&amp;aacute;n lỗi v&amp;agrave; bảo tr&amp;igrave; hệ thống laptop. C&amp;aacute;c lỗi thường xảy ra v&amp;agrave; c&amp;aacute;ch xử l&amp;yacute; khi người d&amp;ugrave;ng &amp;aacute;p dụng c&amp;aacute;c tr&amp;igrave;nh ứng dụng, hiện tượng ph&amp;oacute;ng tĩnh điện v&amp;agrave; c&amp;aacute;ch thực hiện ph&amp;ograve;ng chống (ESD), kiểm tra hệ thống v&amp;agrave; biểu hiện bất thường, c&amp;aacute;c c&amp;ocirc;ng cụ chẩn đo&amp;aacute;n lỗi để ph&amp;aacute;t hiện lỗi đối với hệ thống, c&amp;aacute;c c&amp;ocirc;ng cụ quản l&amp;yacute; v&amp;agrave; dọn đĩa. HO&amp;Agrave;N TH&amp;Agrave;NH GIAI ĐOẠN N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG : - Hiểu biết về vi xử l&amp;yacute;, ph&amp;acirc;n biệt c&amp;aacute;c d&amp;ograve;ng chip v&amp;agrave; c&amp;aacute;c ứng dụng thực tiễn. - Nguy&amp;ecirc;n l&amp;yacute; hoạt động v&amp;agrave; c&amp;aacute;c trạng th&amp;aacute;i xử l&amp;yacute; trong qu&amp;aacute; tr&amp;igrave;nh khai th&amp;aacute;c m&amp;aacute;y laptop từ khi khởi động, sử dụng, shutdown m&amp;aacute;y. - Th&amp;aacute;o r&amp;aacute;p &amp;amp; n&amp;acirc;ng cấp th&amp;agrave;nh thạo được tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y t&amp;iacute;nh laptop. - C&amp;agrave;i đặt được HĐH v&amp;agrave; c&amp;aacute;c phần mềm cần thiết. Đặc biệt c&amp;oacute; thể c&amp;agrave;i đặt Windows XP cho tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y mới hỗ trợ HDD SATA.&amp;nbsp;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h2&gt;\r\n	GIAI ĐOẠN 2 &amp;ndash; SỬA CHỮA LAPTOP CƠ BẢN :&lt;/h2&gt;\r\n&lt;ol&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Sử dụng c&amp;aacute;c thiết bị đo. Giới thiệu v&amp;agrave; hướng dẫn sử dụng c&amp;aacute;c chức năng, c&amp;aacute;c c&amp;aacute;ch đo đồng hồ.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Điện tử căn bản. Giới thiệu, hướng dẫn, giải th&amp;iacute;ch về c&amp;aacute;c chức năng, k&amp;yacute; hiệu, đơn vị v&amp;agrave; x&amp;aacute;c định gi&amp;aacute; trị, kiểm tra chất lượng, c&amp;aacute;ch nhận diện c&amp;aacute;c điện trở, tụ điện, cuộn cảm, diode, transistor, transistor trường, IC tr&amp;ecirc;n PCB.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Kỹ thuật h&amp;agrave;n-kh&amp;ograve;. Giới thiệu v&amp;agrave; hướng dẫn c&amp;aacute;c thao t&amp;aacute;c h&amp;agrave;n, kh&amp;ograve; c&amp;aacute;c linh kiện kh&amp;aacute;c nhau như linh kiện nhỏ nhiều ch&amp;acirc;n, hai h&amp;agrave;ng ch&amp;acirc;n, bốn h&amp;agrave;ng ch&amp;acirc;n, vỏ nhựa hai h&amp;agrave;ng ch&amp;acirc;n, vỏ kim loại&amp;hellip; v&amp;agrave; c&amp;aacute;ch bảo dưỡng mỏ h&amp;agrave;n, mỏ kh&amp;ograve; để tăng tuổi thọ v&amp;agrave; tr&amp;aacute;nh hư hỏng.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Kỹ năng sử dụng m&amp;aacute;y h&amp;agrave;n Chipset chuy&amp;ecirc;n dụng. Giới thiệu v&amp;agrave; hướng dẫn sử dụng, bảo dưỡng, vệ sinh m&amp;aacute;y h&amp;agrave;n BGA trước v&amp;agrave; sau khi sử dụng. Thực h&amp;agrave;nh tr&amp;ecirc;n board kh&amp;ocirc;ng linh kiện, c&amp;oacute; linh kiện v&amp;agrave; board c&amp;ograve;n sống. Tổng hợp c&amp;aacute;c lỗi g&amp;acirc;y ra tr&amp;ecirc;n board mạch do thao t&amp;aacute;c v&amp;agrave; c&amp;agrave;i đặt th&amp;ocirc;ng số sai kh&amp;ocirc;ng ph&amp;ugrave; hợp với qui tr&amp;igrave;nh.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Qui tr&amp;igrave;nh kiểm tra m&amp;aacute;y. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh quy tr&amp;igrave;nh kiểm tra lỗi m&amp;aacute;y tr&amp;ecirc;n DOS, WIN v&amp;agrave; sử dụng c&amp;aacute;c phần mềm kiểm tra.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Qui tr&amp;igrave;nh sửa chữa Mainboard. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh về qui tr&amp;igrave;nh sửa pan mất nguồn; sửa m&amp;aacute;y lỗi b&amp;agrave;n ph&amp;iacute;m, touchpad; sửa m&amp;aacute;y lỗi c&amp;aacute;c cổng giao tiếp; sửa m&amp;aacute;y lỗi hiển thị v&amp;agrave; sửa m&amp;aacute;y lỗi &amp;acirc;m thanh.&amp;nbsp;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h3&gt;\r\n	&lt;span style=&quot;color:#000000;&quot;&gt;HỌC XONG GIAI ĐOẠN N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG:&amp;nbsp;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Đọc v&amp;agrave; nhận dạng c&amp;aacute;c linh kiện sử dụng trong m&amp;aacute;y t&amp;iacute;nh.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Sử dụng th&amp;agrave;nh thạo c&amp;aacute;c thiết bị đo hiện h&amp;agrave;nh.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Sử dụng th&amp;agrave;nh thạo c&amp;aacute;c thiết bị phục vụ sửa chữa.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		C&amp;oacute; kỹ năng thao t&amp;aacute;c tốt việc h&amp;agrave;n, kh&amp;ograve;, thay thế linh kiện tr&amp;ecirc;n c&amp;aacute;c loại board mạch.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Đ&amp;aacute;nh gi&amp;aacute; ch&amp;iacute;nh x&amp;aacute;c chất lượng, ph&amp;acirc;n loại c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y v&amp;agrave; chẩn đo&amp;aacute;n ch&amp;iacute;nh x&amp;aacute;c c&amp;aacute;c pan ban đầu khi nhận m&amp;aacute;y.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ph&amp;acirc;n t&amp;iacute;ch, ph&amp;aacute;n đo&amp;aacute;n, dự kiến xử l&amp;yacute; theo nhiều hướng tr&amp;ecirc;n từng pan để sửa chữa đ&amp;uacute;ng bệnh.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Sửa chữa th&amp;agrave;nh thạo c&amp;aacute;c pan căn bản tr&amp;ecirc;n c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y phổ biến hiện h&amp;agrave;nh.&amp;nbsp;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h2&gt;\r\n	GIAI ĐOẠN 3 - SỬA CHỮA LAPTOP N&amp;Acirc;NG CAO :&amp;nbsp;&lt;/h2&gt;\r\n&lt;ol&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		M&amp;agrave;n h&amp;igrave;nh LCD. Giới thiệu, hướng dẫn v&amp;agrave; thực h&amp;agrave;nh sửa chữa, độ chế c&amp;aacute;c loại m&amp;agrave;n h&amp;igrave;nh (cao &amp;aacute;p), xử l&amp;yacute; c&amp;aacute;c lỗi thường gặp của m&amp;agrave;n h&amp;igrave;nh: m&amp;agrave;n h&amp;igrave;nh bị trầy xước, m&amp;agrave;n h&amp;igrave;nh kh&amp;ocirc;ng l&amp;ecirc;n,&amp;hellip;(kh&amp;ocirc;ng thấy chữ, trắng, sọc nhiều kh&amp;ocirc;ng c&amp;oacute; chữa)&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Pin Laptop. Giới thiệu, hướng dẫn về cấu tạo pin laptop, phương ph&amp;aacute;p kiểm tra cell để thay thế, test mạch điều khiển bảo vệ pin, t&amp;aacute;ch, &amp;eacute;p vỏ trong qu&amp;aacute; tr&amp;igrave;nh sửa chữa pin v&amp;agrave; kiểm tra sạc, dung lượng thực của pin sau khi sửa chữa.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Chipset v&amp;agrave; Mainboard. Giới thiệu th&amp;ocirc;ng số kỹ thuật, hướng dẫn c&amp;aacute;ch nhận dạng v&amp;agrave; đo kiểm tra chip bắc, chip nam ; thực h&amp;agrave;nh th&amp;aacute;o &amp;ndash; đ&amp;oacute;ng chipset, c&amp;aacute;c lỗi thường gặp trong qu&amp;aacute; tr&amp;igrave;nh xử l&amp;yacute; của chipset.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Chip giao tiếp &amp;amp; card mở rộng. Giới thiệu chuẩn PCI v&amp;agrave; PCMCIA. Thực h&amp;agrave;nh đo kiểm v&amp;agrave; sửa chữa c&amp;aacute;c chip thuộc c&amp;aacute;c chuẩn tr&amp;ecirc;n. 5. Sửa chữa Mainboard n&amp;acirc;ng cao. Giới thiệu v&amp;agrave; hướng dẫn thực h&amp;agrave;nh c&amp;aacute;ch đọc sơ đồ, ph&amp;acirc;n t&amp;iacute;ch mạch, thực h&amp;agrave;nh đo kiểm, sửa chữa c&amp;aacute;c pan v&amp;agrave; dựng sơ đồ ph&amp;acirc;n bố nguồn, xung clock, bus điều khiển, bus dữ liệu tr&amp;ecirc;n c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y IBM, DELL, HP, SONY&amp;hellip;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align: justify;&quot;&gt;\r\n		Phương ph&amp;aacute;p giải password CMOS. Giới thiệu v&amp;agrave; hướng dẫn sử dụng m&amp;aacute;y ch&amp;eacute;p BIOS v&amp;agrave; giải password CMOS tr&amp;ecirc;n c&amp;aacute;c đời m&amp;aacute;y: IBM, SONY, DELL, HP, TOSHIBA ... HO&amp;Agrave;N TẤT KH&amp;Oacute;A HỌC N&amp;Agrave;Y, HỌC VI&amp;Ecirc;N C&amp;Oacute; KHẢ NĂNG: Sửa chữa, thay thế v&amp;agrave; độ chế c&amp;aacute;c loại m&amp;agrave;n h&amp;igrave;nh. Thay thế, phục hồi dung lượng pin m&amp;aacute;y t&amp;iacute;nh c&amp;aacute;c loại. Thao t&amp;aacute;c th&amp;aacute;o, đ&amp;oacute;ng th&amp;agrave;nh thạo tr&amp;ecirc;n tất cả c&amp;aacute;c loại chipset hiện c&amp;oacute;, giảm thiểu tối đa nguy cơ hư chip, hư board. Xử l&amp;yacute; tốt c&amp;aacute;c lỗi li&amp;ecirc;n quan đến chip giao tiếp v&amp;agrave; c&amp;aacute;c card mở rộng. Ho&amp;agrave;n thiện kỹ năng tự ph&amp;acirc;n t&amp;iacute;ch, ph&amp;aacute;n đo&amp;aacute;n, dự kiến c&amp;aacute;c hướng sửa chữa đối với c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y hiện h&amp;agrave;nh. Tự sửa chữa được tất cả c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y hiện c&amp;oacute;.&amp;nbsp;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;blockquote&gt;\r\n	&lt;p&gt;\r\n		Thời gian: 6 th&amp;aacute;ng (1 th&amp;aacute;ng l&amp;yacute; thuyết + 5 th&amp;aacute;ng thực h&amp;agrave;nh). Học 6 buổi/tuần, từ thứ 2 đến thứ 7. Bạn c&amp;oacute; thể đăng k&amp;yacute; kh&amp;oacute;a s&amp;aacute;ng, chiều.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Học ph&amp;iacute; 10.000.000 vnđ &amp;nbsp;chia l&amp;agrave;m 2 đợt&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp; + đợt 1: 5.000.000 &amp;nbsp;đ&amp;oacute;ng l&amp;uacute;c ghi danh v&amp;agrave;o học&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp; + đợt 2: 5.000.000 đ&amp;oacute;ng sau 2 th&amp;aacute;ng học tập&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Học vi&amp;ecirc;n đ&amp;oacute;ng học ph&amp;iacute; một lần sẻ được giảm 10% học ph&amp;iacute;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#ff0000;&quot;&gt;Ghi ch&amp;uacute;: dạy theo phương ph&amp;aacute;p truyền nghề. Thực h&amp;agrave;nh 100% tr&amp;ecirc;n c&amp;aacute;c m&amp;aacute;y đời mới&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#ff0000;&quot;&gt;Kết h&amp;uacute;c kho&amp;aacute; học học vi&amp;ecirc;n&amp;nbsp; kh&amp;aacute; giỏi được nhận lại c&amp;ocirc;ng ty với mức lương hấp dẩn&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-12-03 13:59:40', 'admin', '2012-12-03 13:59:40');
INSERT INTO `media` VALUES (107, 'default13540752151', '', 'media_news', '[92]', 'admin', 'Microsoft lập blog về Windows 8', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nhằm tr&amp;aacute;nh th&amp;ocirc;ng tin lan truyền kh&amp;ocirc;ng đ&amp;uacute;ng về hệ điều h&amp;agrave;nh đang rất thu h&amp;uacute;t sự t&amp;ograve; m&amp;ograve; của người sử dụng, h&amp;atilde;ng phần mềm Mỹ quyết định sẽ thường xuy&amp;ecirc;n c&amp;ocirc;ng khai về c&amp;aacute;c bước ph&amp;aacute;t triển Windows 8 l&amp;ecirc;n mạng.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Blog Building Window 8 (blogs.msdn.com/b/b8) sẽ l&amp;agrave; nơi người d&amp;ugrave;ng v&amp;agrave; c&amp;aacute;c nh&amp;agrave; ph&amp;aacute;t triển c&amp;oacute; thể theo d&amp;otilde;i th&amp;ocirc;ng tin, h&amp;igrave;nh ảnh, video sớm nhất về chương tr&amp;igrave;nh, tham gia thảo luận những điểm mạnh - yếu v&amp;agrave; những c&amp;ocirc;ng nghệ c&amp;oacute; trong sản phẩm.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;quot;Những c&amp;ocirc;ng bố quan trọng sẽ được th&amp;ocirc;ng bao tr&amp;ecirc;n blog n&amp;agrave;y. Trong v&amp;agrave;i tuần nữa, ch&amp;uacute;ng t&amp;ocirc;i sẽ m&amp;ocirc; tả chi tiết c&amp;aacute;c t&amp;iacute;nh năng từ giao diện người d&amp;ugrave;ng cho đến việc hỗ trợ phần cứng...&amp;quot;, Gi&amp;aacute;m đốc Windows Steven Sinofsky khẳng định.&lt;/span&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Windows-1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Microsoft ch&amp;iacute;nh thức &lt;a href=&quot;http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/06/he-dieu-hanh-windows-8-ra-mat/&quot;&gt;n&amp;oacute;i về Windows 8&lt;/a&gt; v&amp;agrave;o th&amp;aacute;ng 6/2011.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Microsoft từng bị chỉ tr&amp;iacute;ch v&amp;igrave; tỏ ra qu&amp;aacute; k&amp;iacute;n kẽ với đối t&amp;aacute;c trong qu&amp;aacute; tr&amp;igrave;nh ph&amp;aacute;t triển, dẫn đến t&amp;igrave;nh trạng phần cứng v&amp;agrave; phần mềm kh&amp;ocirc;ng tương th&amp;iacute;ch với nhau hoặc bị lỗi khi Windows Vista ra đời. Hệ điều h&amp;agrave;nh đ&amp;oacute; được coi l&amp;agrave; một trong những thất bại tồi tệ nhất của họ v&amp;agrave; khiến Microsoft đ&amp;aacute;nh mất một lượng người d&amp;ugrave;ng. Windows 7 đ&amp;atilde; phần n&amp;agrave;o khắc phục được vấn đề nhưng vẫn chưa được coi l&amp;agrave; thực sự &amp;quot;mở&amp;quot;.&lt;/span&gt;&lt;/p&gt;', 'blog-window-8', '', '', '', '', 'Châu An', 'vnexpress', 0, 0, 'upload/Windows-1.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-07-05 13:51:33', 'admin', '2012-11-28 11:02:08');
INSERT INTO `media` VALUES (108, 'default13540754711', '', 'media_news', '[92]', 'admin', 'HTC tiếp tục kiện Apple để ngăn iPhone, iPad bán ra ở Mỹ', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;ocirc;ng ty Đ&amp;agrave;i Loan vừa nộp đơn kiện mới l&amp;ecirc;n Ủy ban Thương mại Quốc tế tố c&amp;aacute;o Apple vi phạm bản quyền v&amp;agrave; y&amp;ecirc;u cầu c&amp;aacute;c nh&amp;agrave; chức tr&amp;aacute;ch ra lệnh cấm đối thủ b&amp;aacute;n c&amp;aacute;c sản phẩm chủ lực ra thị trường.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Đơn kiện được nộp l&amp;ecirc;n cả t&amp;ograve;a &amp;aacute;n tối cao ở bang Delaware (Mỹ) n&amp;ecirc;u r&amp;otilde; Apple sử dụng tr&amp;aacute;i ph&amp;eacute;p bằng s&amp;aacute;ng chế li&amp;ecirc;n quan đến c&amp;aacute;ch thức kết nối Wi-Fi v&amp;agrave; v&amp;agrave;i t&amp;iacute;nh năng kh&amp;aacute;c.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;quot;HTC phải h&amp;agrave;nh động để bảo vệ t&amp;agrave;i sản tr&amp;iacute; tuệ của ch&amp;uacute;ng t&amp;ocirc;i v&amp;agrave; cả c&amp;aacute;c đối t&amp;aacute;c. Apple phải ngừng ngay việc vi phạm c&amp;aacute;c bằng s&amp;aacute;ng chế&amp;quot;, Grace Lei, luật sư của HTC, ph&amp;aacute;t biểu.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu HTC thắng thế trong lần kiện n&amp;agrave;y, ngo&amp;agrave;i điện thoại iPhone, m&amp;aacute;y t&amp;iacute;nh bảng iPad, nhiều khả năng m&amp;aacute;y nghe nhạc iPod Touch v&amp;agrave; cả m&amp;aacute;y t&amp;iacute;nh Mac cũng sẽ bị cấm b&amp;aacute;n ra thị trường Mỹ.&lt;/span&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/53/iPad-iPhone.jpg&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;iPhone v&amp;agrave; iPad của Apple.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;aacute;ch đ&amp;acirc;y 2 tuần, HTC cũng đệ đơn kiện l&amp;ecirc;n t&amp;ograve;a &amp;aacute;n tối cao ở London (Anh) c&amp;aacute;o buộc Apple đ&amp;atilde; sử dụng bản quyền của họ một c&amp;aacute;ch tr&amp;aacute;i ph&amp;eacute;p.&lt;/span&gt;&lt;/p&gt;', 'iphone-ipad-ban-ra-o-my', '', '', '', '', 'Nguyễn Hùng', 'vnexpress', 0, 0, 'upload/iPad-iPhone.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-07-05 13:51:33', 'admin', '2012-11-28 11:04:31');
INSERT INTO `media` VALUES (109, 'default13540757011', '', 'media_news', '[92]', 'admin', 'Cận cảnh laptop Sandy Bridge giá rẻ nhất của Dell ở VN', '', '', 'vn', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Dell vừa ph&amp;acirc;n phối ra thị trường Việt Nam m&amp;aacute;y t&amp;iacute;nh x&amp;aacute;ch tay Inspiron N4050 sử dụng nền tảng chip Core i thế hệ mới, thời gian chạy pin li&amp;ecirc;n tục 4 tiếng với gi&amp;aacute; chỉ 10,6 triệu đồng.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Dell_10.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Dell Inspiron N4050 nặng 2,2 kg sử dụng lớp vỏ nhựa m&amp;agrave;u đen tr&amp;ocirc;ng sang trọng nhưng dễ b&amp;aacute;m v&amp;acirc;n tay. M&amp;aacute;y c&amp;oacute; phần pin nh&amp;ocirc; ra ph&amp;iacute;a sau, nh&amp;igrave;n từ xa tr&amp;ocirc;ng n&amp;oacute; giống chiếc cặp s&amp;aacute;ch. Khi chạy li&amp;ecirc;n tục, pin 6 cell cho thời gian sử dụng khoảng 4 tiếng, l&amp;acirc;u hơn 1 tiếng so với c&amp;aacute;c sản phẩm kh&amp;aacute;c.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Dell_20.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;M&amp;agrave;n h&amp;igrave;nh LED 14 inch độ ph&amp;acirc;n giải 1.366 x 768 pixel cho h&amp;igrave;nh ảnh r&amp;otilde; n&amp;eacute;t ngay cả dưới &amp;aacute;nh nắng. Tuy nhi&amp;ecirc;n, g&amp;oacute;c nh&amp;igrave;n chỉ đạt mức trung b&amp;igrave;nh. Ph&amp;iacute;a tr&amp;ecirc;n l&amp;agrave; webcam để chat video.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/3c/Dell_4.jpg&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Dell N4050 d&amp;ugrave;ng chip l&amp;otilde;i k&amp;eacute;p Core i3 thế hệ mới 2310M tốc độ 2,1 GHz, RAM từ 2 đến 4 GB c&amp;ugrave;ng card đồ họa t&amp;iacute;ch hợp Intel HD 3000.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/3c/Ban_phim.jpg&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Touchpad được thiết kế dạng nh&amp;aacute;m tạo cảm gi&amp;aacute;c dễ chịu hơn khi sử dụng li&amp;ecirc;n tục trong khoảng thời gian d&amp;agrave;i c&amp;ugrave;ng b&amp;agrave;n ph&amp;iacute;m chiclet.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/3c/Dell.jpg&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Cạnh phải của m&amp;aacute;y c&amp;oacute; 2 cổng USB, ổ ghi DVD, giắc cắm tai nghe v&amp;agrave; micro.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/3c/Dell_7.jpg&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Cạnh tr&amp;aacute;i bao gồm đường tho&amp;aacute;t nhiệt, cổng HDMI, LAN, VGA v&amp;agrave; USB.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/3c/Dell-23.jpg&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;aacute;c đ&amp;egrave;n b&amp;aacute;o ph&amp;iacute;a trước.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/3c/Dell_2.jpg&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;Laptop Dell N4050 phi&amp;ecirc;n bản KXJXJ2 d&amp;ugrave;ng ổ cứng 320 GB, RAM 2 GB c&amp;oacute; gi&amp;aacute; tham khảo 10,6 triệu đồng (chưa bao gồm VAT). Nếu người d&amp;ugrave;ng muốn chứa th&amp;ecirc;m nhiều dữ liệu c&amp;oacute; thể chọn model KXJXJ1 với ổ cứng 500 GB, RAM 4 GB c&amp;ugrave;ng mức gi&amp;aacute; tr&amp;ecirc;n 11,4 triệu đồng.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'sandy-bridge-gia-re-dell', '', '', '', '', 'Thế Mạnh', 'vnexpress', 0, 0, 'upload/upload_Dell_2_176x176.png.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-07-05 13:51:33', 'admin', '2012-11-28 11:11:42');
INSERT INTO `media` VALUES (110, 'default13540760191', '', 'media_news', '[92]', 'admin', 'Điện thoại 3D không cần kính của HTC xuất hiện ở Sài Gòn', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;HTC EVO 3D l&amp;agrave; một trong những điện thoại trang bị m&amp;agrave;n h&amp;igrave;nh ba chiều kh&amp;ocirc;ng cần đeo phụ kiện đầu ti&amp;ecirc;n đ&amp;atilde; c&amp;oacute; mặt ở Việt Nam.&lt;/span&gt;&lt;/p&gt;', '&lt;p class=&quot;Normal&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sản phẩm c&amp;oacute; thiết kế kh&amp;aacute; nhỏ gọn, cầm chắc chắn c&amp;ugrave;ng c&amp;aacute;c đường v&amp;acirc;n mặt sau kh&amp;aacute; độc đ&amp;aacute;o. M&amp;aacute;y sử dụng chip l&amp;otilde;i k&amp;eacute;p tốc độ 1,2 GHz, RAM 1 GB (ngang Galaxy S II), chạy hệ điều h&amp;agrave;nh Android 2.3 c&amp;ugrave;ng giao diện Sense 3.0 độc quyền.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;Normal&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Điện thoại EVO 3D d&amp;ugrave;ng m&amp;agrave;n h&amp;igrave;nh LCD 4,3 inch độ ph&amp;acirc;n giải 960 x 640 pixel. Nếu muốn xem hiệu ứng 3D đẹp nhất, người d&amp;ugrave;ng phải nh&amp;igrave;n ch&amp;iacute;nh diện với khoảng c&amp;aacute;ch 30 cm. C&amp;ograve;n khi nh&amp;igrave;n nghi&amp;ecirc;ng h&amp;igrave;nh sẽ bị nh&amp;ograve;e. Ngo&amp;agrave;i khả năng ph&amp;aacute;t h&amp;igrave;nh 3D, m&amp;aacute;y c&amp;ograve;n c&amp;oacute; thể chụp ảnh v&amp;agrave; thu video dạng ba chiều nhờ 2 camera độ ph&amp;acirc;n giải 5 megapixel.&lt;/span&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img border=&quot;1&quot; height=&quot;401&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/da/6c/HTC_EVO_3D_1.jpg&quot; width=&quot;490&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; class=&quot;Normal&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/08/dien-thoai-3d-khong-can-kinh-cua-htc-xuat-hien-o-sai-gon/page_2.asp&quot;&gt;&lt;strong&gt;&lt;font color=&quot;#0000ff&quot;&gt;Ảnh điện thoại 3D kh&amp;ocirc;ng cần k&amp;iacute;nh của HTC.&lt;/font&gt;&lt;/strong&gt;&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; class=&quot;Normal&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/08/dien-thoai-3d-khong-can-kinh-cua-htc-xuat-hien-o-sai-gon/page_3.asp&quot;&gt;&lt;strong&gt;&lt;font color=&quot;#0000ff&quot;&gt;Giao diện Sense đẹp mắt tr&amp;ecirc;n HTC EVO 3D.&lt;/font&gt;&lt;/strong&gt;&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p class=&quot;Normal&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;HTC EVO 3D dự kiến được ph&amp;acirc;n phối ch&amp;iacute;nh h&amp;atilde;ng v&amp;agrave;o th&amp;aacute;ng 10 tới với gi&amp;aacute; khoảng 16 triệu đồng.&lt;/span&gt;&lt;/p&gt;', 'dien-thoai-3d-khong-kinh', '', '', '', '', '', 'vnexpress', 0, 0, 'upload/upload_HTC_EVO_3D_1_176x176.png.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-07-05 13:51:33', 'admin', '2012-11-28 11:13:39');
INSERT INTO `media` VALUES (111, 'default13540761591', '', 'media_news', '[92]', 'admin', 'Điện thoại cấu hình &#039;vô địch&#039; giá chỉ hơn 6 triệu đồng', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;b&gt;C&amp;ocirc;ng ty Xiaomi (Trung Quốc) cho ra mắt smartphone sử dụng chip l&amp;otilde;i k&amp;eacute;p tốc độ 1,5 GHz, RAM 1 GB, chụp ảnh 8 megapixel v&amp;agrave; pin l&amp;ecirc;n đến 1.930 mAh.&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Th&amp;ocirc;ng số của Xiaomi được đ&amp;aacute;nh gi&amp;aacute; l&amp;agrave; mạnh hơn c&amp;aacute;c sản phẩm &amp;quot;hot&amp;quot; hiện nay như Samsung Galaxy S II hay HTC Sensation... vốn chỉ sử dụng chip l&amp;otilde;i k&amp;eacute;p tốc độ 1,2 GHz c&amp;ugrave;ng pin dưới 1.700 mAh.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Ngo&amp;agrave;i cấu h&amp;igrave;nh đ&amp;aacute;ng mơ ước, điện thoại Xiaomi c&amp;ograve;n chạy hệ điều h&amp;agrave;nh Android 2.3.5 với giao diện MIUI độc quyền mang đến những trải nghiệm ho&amp;agrave;n to&amp;agrave;n mới cho người d&amp;ugrave;ng.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sản phẩm được c&amp;ocirc;ng ty Foxconn gia c&amp;ocirc;ng, c&amp;oacute; k&amp;iacute;ch cỡ 125 x 63 x 11,9 mm, nặng 149 g. M&amp;aacute;y d&amp;ugrave;ng m&amp;agrave;n h&amp;igrave;nh LCD 4 inch độ ph&amp;acirc;n giải 854 x 480 pixel do Sharp (Nhật) sản xuất c&amp;ugrave;ng hệ thống ăng-ten k&amp;eacute;p gi&amp;uacute;p tr&amp;aacute;nh mất s&amp;oacute;ng đ&amp;atilde; từng xảy ra với iPhone 4.&lt;/span&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/08/dien-thoai-cau-hinh-vo-dich-gia-chi-hon-6-trieu-dong/page_2.asp&quot;&gt;&lt;img border=&quot;1&quot; src=&quot;http://vnexpress.net/Files/Subject/3b/a2/d9/cf/Xiaomi_5.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/08/dien-thoai-cau-hinh-vo-dich-gia-chi-hon-6-trieu-dong/page_2.asp&quot;&gt;Ảnh thực tế điện thoại Xiaomi.&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/08/dien-thoai-cau-hinh-vo-dich-gia-chi-hon-6-trieu-dong/page_3.asp&quot;&gt;Video d&amp;ugrave;ng thử điện thoại Xiaomi.&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Những t&amp;iacute;nh năng đ&amp;aacute;ng ch&amp;uacute; &amp;yacute; kh&amp;aacute;c tr&amp;ecirc;n Xiaomi bao gồm card đồ họa Adreno 220 (c&amp;oacute; trong model HTC Sensation), ROM 4 GB, khe cắm thẻ 32 GB v&amp;agrave; đầy đủ kết nối Wi-Fi, Bluetooth, GPS.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Xiaomi phi&amp;ecirc;n bản d&amp;ugrave;ng chip l&amp;otilde;i k&amp;eacute;p Snapdragon 1,5 GHz c&amp;oacute; gi&amp;aacute; 310 USD (khoảng 6,2 triệu đồng) v&amp;agrave; model rẻ hơn t&amp;iacute;ch hợp vi xử l&amp;yacute; xung nhịp 1,2 GHz.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Xiaomi sẽ cho người mua đặt h&amp;agrave;ng từ cuối th&amp;aacute;ng 8 v&amp;agrave; chuyển h&amp;agrave;ng v&amp;agrave;o th&amp;aacute;ng 10.&lt;/span&gt;&lt;/p&gt;', 'dien-thoai-cau-hinh-khung-6-trieu', '', '', '', '', 'Nguyễn Hùng (Ảnh, video: Engadget)', 'vnexpress', 0, 0, 'upload/Xiaomi_5.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-07-05 13:51:33', 'admin', '2012-11-28 11:15:59');
INSERT INTO `media` VALUES (112, 'default13540763291', '', 'media_news', '[92]', 'admin', 'Lớp vỏ vô hình chống thấm nước cho smartphone', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;L&amp;agrave;m rơi iPhone v&amp;agrave;o toilet hay bị d&amp;iacute;nh nước mưa kh&amp;ocirc;ng c&amp;ograve;n l&amp;agrave; thảm họa nữa với bộ vỏ độc đ&amp;aacute;o mới tại CES 2012. Điểm đặc biệt l&amp;agrave; case n&amp;agrave;y trong suốt v&amp;agrave; kh&amp;ocirc;ng l&amp;agrave;m thay đổi kiểu d&amp;aacute;ng m&amp;aacute;y.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sản xuất theo b&amp;iacute; quyết ri&amp;ecirc;ng để bảo vệ m&amp;agrave;n h&amp;igrave;nh v&amp;agrave; cả linh kiện b&amp;ecirc;n trong, &amp;quot;chiếc &amp;aacute;o&amp;quot; th&amp;uacute; vị của c&amp;ocirc;ng ty Liquipel ở California (Mỹ) vẫn để lộ c&amp;aacute;c cổng kết nối của m&amp;aacute;y nhưng thiết bị kh&amp;ocirc;ng bị hư hại trong nước.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Trang Telegraph tin sản phẩm n&amp;agrave;y sẽ rất phổ biến bởi điện thoại vừa được bảo vệ vừa kh&amp;ocirc;ng bị bao bọc bằng bộ vỏ d&amp;agrave;y cộp. Tuy nhi&amp;ecirc;n, Liquipel cũng nhấn mạnh rằng bộ case chỉ để tr&amp;aacute;nh rủi ro cho m&amp;aacute;y, chứ họ kh&amp;ocirc;ng khuyến kh&amp;iacute;ch kh&amp;aacute;ch h&amp;agrave;ng ng&amp;acirc;m thiết bị điện tử trong nước (việc m&amp;aacute;y hỏng h&amp;oacute;c do thấm nước thường kh&amp;ocirc;ng được nh&amp;agrave; sản xuất bảo h&amp;agrave;nh).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sản phẩm đang được b&amp;aacute;n tại Mỹ với gi&amp;aacute; 69 USD.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 'lop-vo-vo-hinh-chong-tham-nuoc-dien-thoai', '', '', '', '', '', 'vnexpress', 0, 0, 'upload/upload_case-6_176x176.png.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-07-05 13:51:33', 'admin', '2012-11-28 11:18:49');
INSERT INTO `media` VALUES (113, 'default13540764021', '', 'media_news', '[92]', 'admin', 'Những sản phẩm xuất sắc tại triển lãm CES 2012', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Ban tổ chức triển l&amp;atilde;m điện tử ti&amp;ecirc;u d&amp;ugrave;ng lớn nhất thế giới phối hợp với trang c&amp;ocirc;ng nghệ CNet c&amp;ocirc;ng bố c&amp;aacute;c thiết bị đột ph&amp;aacute; v&amp;agrave; thu h&amp;uacute;t nhất trong sự kiện. Chiến thắng thuộc về hệ thống TV LG 55EM9600 OLED TV.&lt;/span&gt;&lt;/p&gt;', '&lt;div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sản phẩm được người d&amp;ugrave;ng y&amp;ecirc;u th&amp;iacute;ch nhất: M&amp;aacute;y chơi game Project Fiona của Razer chinh phục kh&amp;aacute;ch tham quan ở kiểu d&amp;aacute;ng hầm hố, kh&amp;ocirc;ng cần tay cầm hay thiết bị ngoại vi nhưng game thủ vẫn c&amp;oacute; thể chơi được c&amp;aacute;c tr&amp;ograve; một c&amp;aacute;ch dễ d&amp;agrave;ng bởi mọi thứ đ&amp;atilde; được t&amp;iacute;ch hợp v&amp;agrave;o hai b&amp;ecirc;n th&amp;acirc;n m&amp;aacute;y&lt;/span&gt;&lt;/div&gt;', 'ces-2012', '', '', '', '', '', 'vnexpress', 0, 0, 'upload/upload_best-product-8[1]_176x176.png.jpg', 0, '', '', '', 0, 0, 'delete', '', '2013-07-05 13:51:33', 'admin', '2012-11-28 11:20:02');
INSERT INTO `media` VALUES (114, 'default13540769461', '', 'media_news', '[105]', 'admin', 'Macbook Pro mới: Thunderbolt, CPU Quad i7, VGA AMD', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Apple vừa ch&amp;iacute;nh thức n&amp;acirc;ng cấp d&amp;ograve;ng Macbook Pro của m&amp;igrave;nh l&amp;ecirc;n cấu h&amp;igrave;nh mới với nhiều cải tiến đ&amp;aacute;ng kể.&lt;/span&gt;&lt;/p&gt;', '&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6667956853f_design_ports20110224.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6667956853f_design_ports20110224.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Apple vừa ch&amp;iacute;nh thức n&amp;acirc;ng cấp d&amp;ograve;ng &lt;a href=&quot;http://www.tinhte.vn/tags/macbook%20pro/&quot; target=&quot;_blank&quot;&gt;Macbook Pro&lt;/a&gt; của m&amp;igrave;nh l&amp;ecirc;n cấu h&amp;igrave;nh mới với nhiều cải tiến đ&amp;aacute;ng kể. Mong đợi nhất c&amp;oacute; thể kể đến đ&amp;oacute; l&amp;agrave; cổng kết nối tốc độ cao &lt;a href=&quot;http://www.tinhte.vn/tags/thunderbolt/&quot; target=&quot;_blank&quot;&gt;Thunderbolt&lt;/a&gt;, cổng kết nối n&amp;agrave;y dựa tr&amp;ecirc;n giao thức mới t&amp;ecirc;n l&amp;agrave; &lt;a href=&quot;http://www.tinhte.vn/tags/light%20peak/&quot; target=&quot;_blank&quot;&gt;Light Peak&lt;/a&gt; do Intel ph&amp;aacute;t triển. B&amp;ecirc;n cạnh đ&amp;oacute; l&amp;agrave; n&amp;acirc;ng cấp về CPU Sandy Bridge, c&amp;aacute;c m&amp;aacute;y 13&amp;quot; từ Code 2 Duo l&amp;ecirc;n Core i, c&amp;aacute;c m&amp;aacute;y 15&amp;quot;4, 17&amp;quot; từ Core i7 2 nh&amp;acirc;n l&amp;ecirc;n Quad i7 4 nh&amp;acirc;n. Ở d&amp;ograve;ng 15&amp;quot;4 v&amp;agrave; 17&amp;quot; GPU &lt;a href=&quot;http://www.tinhte.vn/tags/light%20peak/&quot; target=&quot;_blank&quot;&gt;AMD&lt;/a&gt; cao cấp được thay thế cho GPU Nvidia. Bus của RAM từ 1066MHz l&amp;ecirc;n th&amp;agrave;nh 1333MHz. FaceTime cũng được n&amp;acirc;ng l&amp;ecirc;n HD. Kh&amp;ocirc;ng c&amp;oacute; sự thay đổi về thiết kế, vật liệu cũng như ổ cứng. Ch&amp;uacute;ng vẫn c&amp;oacute; m&amp;aacute;y với kiểu d&amp;aacute;ng Unibody từ cuối năm 2008, năm kỉ niệm 20 năm Macintosh. &lt;/span&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;17&amp;quot; 1920x1200. 2.2Ghz Quad i7. 4GB RAM. 750GB HD. AMD 6750M 1GB. $2499&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;15&amp;quot; 1440x900 (1680 option) Display. 2.2GHz Quad i7. 750GB HD. AMD 6750M 1GB. $2199&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;15&amp;quot; 1440x900 (1680 option) Display. 2.0GHz Quad i7. 4GB RAM. 500GB HD. AMD 6490M 256MB. $1799&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;13&amp;quot; 1280x800 Display. 2.7GHz Dual i7. 4GB RAM. 500GB HD. Intel HD Graphics. $1499&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;13&amp;quot; 1280x800 Display. 2.3GHz Dual i5. 4GB RAM. 320GB HD. Intel HD Graphics. $1199&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Macbook Pro 13&amp;quot;3: Với gi&amp;aacute; khởi điểm kh&amp;ocirc;ng đổi l&amp;agrave; 1199usd bạn được một chiếc m&amp;aacute;y với CPU Core i5 2.3Ghz, HDD 320GB v&amp;agrave; RAM l&amp;agrave; 4GB bus 1333MHz. B&amp;ecirc;n cạnh kết nối FireWire 800, 2 cổng USB 2.0 như cũ th&amp;igrave; bạn c&amp;oacute; th&amp;ecirc;m cổng kết nối Thunderbolt tốc độ l&amp;ecirc;n đến 10Gbps v&amp;agrave; khe cắm thẻ SDXC hỗ trợ thẻ l&amp;ecirc;n đến 64GB.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Macbook Pro 15&amp;quot;4: ở d&amp;ograve;ng trung n&amp;agrave;y th&amp;igrave; ta kh&amp;ocirc;ng c&amp;ograve;n lựa chọn Core i5 nữa m&amp;agrave; tất cả đều l&amp;agrave; Quad i7. Cấu h&amp;igrave;nh thấp th&amp;igrave; ta c&amp;oacute; Core i7 4 nh&amp;acirc;n 2.0Ghz, RAM 4GB, HDD 500GB, VGA AMD 6490 256MB RAM, gi&amp;aacute; của lựa chọn n&amp;agrave;y l&amp;agrave; 1799usd. Với cấu h&amp;igrave;nh cao hơn l&amp;agrave; CPU Quad i7 2.2Ghz th&amp;igrave; VGA sẽ l&amp;agrave; 6750 với 1GB RAM, HDD 750GB. Dĩ nhi&amp;ecirc;n bạn c&amp;oacute; thể lựa chọn CPU Quad i7 2.3Ghz, ổ SSD, RAM 8GB. Tất cả c&amp;aacute;c m&amp;aacute;y 15&amp;quot;4 c&amp;ograve;n c&amp;oacute; VGA Intel HD Graphics 3000, kết nối Thunderbolt, khe thẻ SDXC...&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Macbook Pro 17&amp;quot;: l&amp;agrave; d&amp;ograve;ng cao cấp nhất của Apple với gi&amp;aacute; 2500usd cho cấu h&amp;igrave;nh cơ bản nhất l&amp;agrave;: CPU Core i7 4 nh&amp;acirc;n 2.2Ghz, RAM 4GB, HDD 750GB, VGA AMD 6750 1GB RAM. Dĩ nhi&amp;ecirc;n l&amp;agrave; c&amp;oacute; cổng Thunderbolt nhưng lại thiếu cổng SDXC. Nếu bạn muốn m&amp;aacute;y ngon hơn c&amp;oacute; thể lựa chọn CPU 2.3Ghz, ổ SSD, 8GB RAM...&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d668e98b8e79_Screen_shot_2011-02-24_at_11.55.22_PM.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d668e98b8e79_Screen_shot_2011-02-24_at_11.55.22_PM.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d668ea0a6843_Screen_shot_2011-02-24_at_11.56.11_PM.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d668ea0a6843_Screen_shot_2011-02-24_at_11.56.11_PM.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://www.apple.com/macbookpro/specs-compare.html&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Bạn c&amp;oacute; thể xem bảng so s&amp;aacute;nh cấu h&amp;igrave;nh chi tiết v&amp;agrave; gi&amp;aacute; của 3 chiếc m&amp;aacute;y ở đ&amp;acirc;y (nhấn v&amp;agrave;o): &lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;N&amp;oacute;i về Thunderbolt:&lt;br /&gt;\r\n	Đ&amp;acirc;y l&amp;agrave; chuẩn kết nối ti&amp;ecirc;n tiến v&amp;agrave; nhanh nhất hiện nay tr&amp;ecirc;n m&amp;aacute;y t&amp;iacute;nh. N&amp;oacute; nhanh gấp đ&amp;ocirc;i cổng USB 3.0 v&amp;agrave; gấp 20 lần cổng USB 2.0 hiện tại. Thunderbolt l&amp;agrave; t&amp;ecirc;n thương mại của chuẩn kết nối Light Peak m&amp;agrave; Intel ph&amp;aacute;t triển. Light Peak được giới thiệu năm 2009, tr&amp;igrave;nh diễn năm 2010, hiện ngo&amp;agrave;i Apple th&amp;igrave; Sony cũng th&amp;ocirc;ng b&amp;aacute;o l&amp;agrave; sẽ d&amp;ugrave;ng giao thức kết nối n&amp;agrave;y. Thunderbolt c&amp;oacute; thể thay thế cho hầu hết c&amp;aacute;c cổng giao tiếp hiện nay như USB, HDMI, SCSI, SATA, PCI Express, Displayport, eSATA. Tr&amp;ecirc;n c&amp;aacute;c m&amp;aacute;y Macbook Pro mới th&amp;igrave; cổng Thunderbolt nằm chung với cổng Mini Display. Hiện chưa c&amp;oacute; sản phẩm gắn ngo&amp;agrave;i n&amp;agrave;o được b&amp;aacute;n ra trang bị cổng Thunderbolt, nếu bạn mua Macbook Pro mới ngay h&amp;ocirc;m nay th&amp;igrave; bạn phải đợi c&amp;aacute;c h&amp;atilde;ng l&amp;agrave;m phụ kiện sản xuất c&amp;aacute;c thiết bị gắn ngo&amp;agrave;i trang bị giao tiếp n&amp;agrave;y. Với kết nối d&amp;acirc;y đồng th&amp;igrave; Thunderbolt c&amp;oacute; thể cấp điện cho thiết bị ngắn ngo&amp;agrave;i như ổ cứng di động.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	N&amp;oacute;i về Sandy Bridge:&lt;br /&gt;\r\n	Đ&amp;acirc;y l&amp;agrave; thế hệ CPU Core i thứ 2 của Intel. Đầu năm nay Intel c&amp;oacute; gặp sự cố v&amp;agrave; phải thu hồi nhiều m&amp;aacute;y sử dụng Sandy Bridge. Tuy nhi&amp;ecirc;n Apple c&amp;oacute; n&amp;oacute;i họ d&amp;ugrave;ng loại Sandy Bridge mới nhất n&amp;ecirc;n kh&amp;ocirc;ng bị d&amp;iacute;nh lỗi.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	GPU:&lt;br /&gt;\r\n	Apple d&amp;ugrave;ng GPU NVidia từ năm 2007 trở về đ&amp;acirc;y tr&amp;ecirc;n c&amp;aacute;c m&amp;aacute;y Macbook Pro của m&amp;igrave;nh. Apple l&amp;agrave; một trong &amp;iacute;t h&amp;atilde;ng đầu ti&amp;ecirc;n sử dụng GPU AMD Radeon 6750 tr&amp;ecirc;n m&amp;aacute;y t&amp;iacute;nh x&amp;aacute;ch tay. Apple n&amp;oacute;i GPU n&amp;agrave;y cho tốc độ xử l&amp;yacute; nhanh gấp 3 lần so với GPU m&amp;agrave; h&amp;atilde;ng d&amp;ugrave;ng trong c&amp;aacute;c d&amp;ograve;ng m&amp;aacute;y trước. Dĩ nhi&amp;ecirc;n l&amp;agrave; m&amp;aacute;y sẽ vận tự động chuyển qua lại giứa GPU &amp;quot;onboard&amp;quot; Intel v&amp;agrave; GPU rời AMD t&amp;ugrave;y v&amp;agrave;o như cầu sử dụng.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	FaceTime HD camera:&lt;br /&gt;\r\n	Macbook Pro mới trang bị webcam HD 1280x720, tức gấp 3 lần webcam tr&amp;ecirc;n c&amp;aacute;c m&amp;aacute;y Macbook Pro trước. Với độ ph&amp;acirc;n giải n&amp;agrave;y ta c&amp;oacute; thể quay phim tốt tr&amp;ecirc;n m&amp;aacute;y Macbook Pro. C&amp;ugrave;ng với phần mềm FaceTime bạn c&amp;oacute; thể gọi với người d&amp;ugrave;ng FaceTime kh&amp;aacute;c ti&amp;ecirc;u chuẩn HD, hy vọng l&amp;agrave; mạng truyền được h&amp;igrave;nh ảnh n&amp;agrave;y.&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d669355c4414_16.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d669355c4414_16.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66934d3c9a5_15.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66934d3c9a5_15.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d669343b97af_14.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d669343b97af_14.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66933866991_13.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66933866991_13.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6693303a44c_12.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6693303a44c_12.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d669328a5873_11.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d669328a5873_11.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692d4df22c_2.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692d4df22c_2.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692eb3b8ba_4.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692eb3b8ba_4.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692f484710_5.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692f484710_5.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66f57f164e4_1.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66f57f164e4_1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66931e8992c_9.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d66931e8992c_9.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692cbd4bd8_1.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://photo.tinhte.vn/attach/public_image/btv/3/tinhte.vn_4d6692cbd4bd8_1.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;', 'macbook-pro-moi', '', '', '', '', '', 'tinhte', 0, 0, 'upload/upload_small_1301533525_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 11:29:06', 'admin', '2012-11-28 11:29:06');
INSERT INTO `media` VALUES (115, 'default13540771321', '', 'media_news', '[105]', 'admin', 'Giúp pin laptop “dùng mãi không hết”', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn mang laptop đi c&amp;ocirc;ng t&amp;aacute;c, v&amp;agrave; ph&amp;aacute;t c&amp;aacute;u l&amp;ecirc;n v&amp;igrave; suốt ng&amp;agrave;y phải t&amp;igrave;m ổ cắm điện cho chiếc m&amp;aacute;y t&amp;iacute;nh x&amp;aacute;ch tay của m&amp;igrave;nh. L&amp;agrave;m thế n&amp;agrave;o để k&amp;eacute;o d&amp;agrave;i thời gian d&amp;ugrave;ng pin laptop c&amp;agrave;ng l&amp;acirc;u c&amp;agrave;ng tốt? Sau đ&amp;acirc;y l&amp;agrave; 14 mẹo nhỏ gi&amp;uacute;p bạn thực hiện điều đ&amp;oacute;.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;1. Chống ph&amp;acirc;n mảnh ổ cứng&lt;/strong&gt; -Dữ liệu bị rải khắp khắp nơi tr&amp;ecirc;n đĩa cứng sẽ khiến đầu đọc hoạt động nhiều hơn, v&amp;agrave; tốn điện hơn. C&amp;aacute;ch tốt nhất để gi&amp;uacute;p tiết kiệm điện cho ổ cứng l&amp;agrave; thường xuy&amp;ecirc;n chống ph&amp;acirc;n mảnh &amp;ndash; defrag (Start menu &amp;gt; accessories &amp;gt; System tool &amp;gt; disk defragment tr&amp;ecirc;n Windows XP)&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;2. Giảm độ s&amp;aacute;ng m&amp;agrave;n h&amp;igrave;nh-&lt;/strong&gt; phần lớn m&amp;agrave;n h&amp;igrave;nh laptop cho ph&amp;eacute;p tăng giảm độ s&amp;aacute;ng tuỳ &amp;yacute;. V&amp;agrave;i mẫu m&amp;aacute;y thậm ch&amp;iacute; cho ph&amp;eacute;p điều chỉnh tốc độ CPU v&amp;agrave; quạt để tiết kiệm điện. Nếu c&amp;oacute; thể,&amp;nbsp; chỉnh ở mức thấp nhất chấp nhận được để tiết kiệm th&amp;ecirc;m ch&amp;uacute;t &amp;iacute;t điện cho pin m&amp;aacute;y. Độ s&amp;acirc;u m&amp;agrave;u 32 hay 16 bit cũng ảnh hưởng đến mức ti&amp;ecirc;u thụ điện của m&amp;agrave;n h&amp;igrave;nh.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;3. Tắt bớt c&amp;aacute;c phần mềm đang chạy nền trong windows&lt;/strong&gt;- Yahoo, Google Desktop search, Antivirus.. v&amp;acirc;n v&amp;acirc;n. Tất cả c&amp;aacute;c phần mềm n&amp;agrave;y vẫn chạy thường trực trong Windows ngay cả khi bạn đ&amp;atilde; tắt ngo&amp;agrave;i desktop. Tắt bớt những g&amp;igrave; bạn cho l&amp;agrave; kh&amp;ocirc;ng cần thiết (v&amp;iacute; dụ Antivirus khi kh&amp;ocirc;ng kết nối Internet) khi m&amp;aacute;y đang sử dụng điện từ pin.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;4. Tắt bớt thiết bị cắm ngo&amp;agrave;i&lt;/strong&gt;&amp;ndash; C&amp;aacute;c thiết bị sử dụng điện từ USB như chuột v&amp;agrave; WiFi h&amp;uacute;t hết điện pin một c&amp;aacute;ch &amp;ldquo;ch&amp;oacute;ng v&amp;aacute;nh&amp;rdquo;, v&amp;igrave; thế n&amp;ecirc;n tắt bớt khi kh&amp;ocirc;ng sử dụng. Tất nhi&amp;ecirc;n, cũng tr&amp;aacute;nh sạc điện cho c&amp;aacute;c thiết bị cầm tay kh&amp;aacute;c như iPod, điện thoại di động qua cổng USB.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;5. Tăng th&amp;ecirc;m RAM&lt;/strong&gt; &amp;ndash; tăng RAM sẽ gi&amp;uacute;p laptop &amp;iacute;t phụ thuộc v&amp;agrave;o virtual memory, v&amp;agrave; như vậy &amp;iacute;t sử dụng ổ cứng hơn, tiết kiệm điện hơn. Tuy nhi&amp;ecirc;n cần ch&amp;uacute; &amp;yacute; th&amp;ecirc;m RAM cũng sử dụng th&amp;ecirc;m điện pin, chỉ n&amp;ecirc;n lắp th&amp;ecirc;m RAM khi bạn thực sự cần chạy c&amp;aacute;c t&amp;aacute;c vụ ngốn nhiều t&amp;agrave;i nguy&amp;ecirc;n hệ thống.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;6. Chạy phần mềm từ ổ cứng thay v&amp;igrave; từ CD/DVD&lt;/strong&gt; -Ổ cứng laptop đ&amp;atilde; tốn điện, ổ quang c&amp;ograve;n tốn hơn. Thậm ch&amp;iacute; đĩa trong ổ nhưng kh&amp;ocirc;ng đọc cũng đ&amp;atilde; tốn điện. Bạn c&amp;oacute; thể sử dụng một số phần mềm tạo đĩa ảo như Alcohol 120%&amp;nbsp;thay v&amp;igrave; đọc trực tiếp tr&amp;ecirc;n đĩa CD/DVD.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;7. Lau đầu tiếp x&amp;uacute;c của pin thường xuy&amp;ecirc;n&lt;/strong&gt;. C&amp;aacute;c đầu tiếp x&amp;uacute;c giữa pin v&amp;agrave;&amp;nbsp; c&amp;aacute;c bộ phận kh&amp;aacute;c trong laptop cần lau sạch thường xuy&amp;ecirc;n với vải mềm thấm cồn, nhằm gi&amp;uacute;p việc truyền điện từ pin sang m&amp;aacute;y hiệu quả hơn.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;8. Chăm s&amp;oacute;c pin cần thận&lt;/strong&gt; &amp;ndash; Ch&amp;uacute; &amp;yacute; gi&amp;uacute;p pin m&amp;aacute;y của bạn &amp;ldquo;tập thể dục&amp;rdquo;.&amp;nbsp; Đừng để pin đ&amp;atilde; sạc đầy kh&amp;ocirc;ng sử dụng qu&amp;aacute; l&amp;acirc;u. Cố gắng d&amp;ugrave;ng &amp;iacute;t nhất một hoặc hai lần mỗi 2 -3 tuần. Ch&amp;uacute; &amp;yacute; th&amp;ecirc;m rằng kh&amp;ocirc;ng n&amp;ecirc;n sử dụng c&amp;aacute;c loại pin Li-On đến khi cạn kiệt điện.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;9. Hibernate, đừng standby&lt;/strong&gt;&amp;ndash; Mặc d&amp;ugrave; để m&amp;aacute;y t&amp;iacute;nh ở chế độ chờ standby gi&amp;uacute;p bạn tiết kiệm điện v&amp;agrave; quay lại c&amp;ocirc;ng việc ngay khi cần thiết, chức năng Hibernating c&amp;ograve;n tiết kiệm điện hơn. To&amp;agrave;n bộ trạng th&amp;aacute;i của RAM sẽ được lưu v&amp;agrave;o ổ cứng laptop, v&amp;agrave; m&amp;aacute;y t&amp;iacute;nh x&amp;aacute;ch tay của bạn sẽ ho&amp;agrave;n to&amp;agrave;n ngưng hoạt động khi hibernating, trong khi vẫn c&amp;oacute; thể quay lại l&amp;agrave;m việc gần như tức thời như standby.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;10. Kh&amp;ocirc;ng để m&amp;aacute;y qu&amp;aacute; n&amp;oacute;ng&lt;/strong&gt;- Laptop sẽ hoạt động hiệu quả hơn khi &amp;ldquo;m&amp;aacute;t mẻ&amp;rdquo;. Thử l&amp;agrave;m việc trong ph&amp;ograve;ng m&amp;aacute;y lạnh, hoặc lau ch&amp;ugrave;i kĩ c&amp;aacute;c khe tho&amp;aacute;t nhiệt ở ph&amp;iacute;a sau m&amp;aacute;y khi c&amp;oacute; thời gian rỗi.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;11. Tinh chỉnh c&amp;aacute;c c&amp;agrave;i đặt về mức ti&amp;ecirc;u thụ điện&lt;/strong&gt;&amp;ndash; Bạn c&amp;oacute; thể chỉnh c&amp;aacute;c lựa chọn n&amp;agrave;y khi click chuột phải l&amp;ecirc;n m&amp;agrave;n h&amp;igrave;nh desktop, properties &amp;gt; ScreenSaver &amp;gt; power &amp;gt; max battery.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;12.&amp;nbsp; Kh&amp;ocirc;ng chạy qu&amp;aacute; nhiều phần mềm một l&amp;uacute;c&lt;/strong&gt;&amp;ndash; Kh&amp;ocirc;ng n&amp;ecirc;n sử dụng laptop như PC: l&amp;agrave;m việc tr&amp;ecirc;n Word trong khi phần mềm hỗ trợ download đang hoạt động v&amp;agrave; WMP đang chơi MP3. C&amp;agrave;ng bật nhiều chương tr&amp;igrave;nh, m&amp;aacute;y c&amp;agrave;ng ngốn pin, v&amp;agrave; đ&amp;ocirc;i khi bạn sẽ hết pin trước khi ho&amp;agrave;n th&amp;agrave;nh bất cứ việc g&amp;igrave;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;13. Đừng bắt m&amp;aacute;y l&amp;agrave;m việc qu&amp;aacute; sức&lt;/strong&gt;&amp;ndash; g&amp;otilde; văn bản tr&amp;ecirc;n Word, lướt web hẳn sẽ tốn &amp;iacute;t điện hơn chơi game hoặc xem phim DVD. Nếu bạn đi c&amp;ocirc;ng t&amp;aacute;c v&amp;agrave; kh&amp;ocirc;ng mang theo pin sơ cua, cũng như kh&amp;ocirc;ng t&amp;igrave;m được chỗ sạc &amp;ndash; h&amp;atilde;y hi sinh c&amp;aacute;c nhu cầu giải tr&amp;iacute; kh&amp;ocirc;ng cần thiết.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;14. Kiếm một laptop mới &lt;/strong&gt;&amp;ndash; v&amp;agrave; cuối c&amp;ugrave;ng, nếu m&amp;aacute;y của bạn đ&amp;atilde; năm năm tuổi, c&amp;oacute; lẽ n&amp;ecirc;n nghĩ đến việc thay chiếc mới.&amp;nbsp; C&amp;aacute;c d&amp;ograve;ng laptop mới với pin &amp;ldquo;hạng nặng&amp;rdquo; v&amp;agrave; tiết kiệm điện hiện hiện nay c&amp;oacute; mặt kh&amp;aacute; nhiều tr&amp;ecirc;n thị trường cho bạn thoải m&amp;aacute;i chọn lựa.&lt;/span&gt;&lt;/p&gt;', 'pin-laptop', '', '', '', '', '', '', 0, 0, 'upload/upload_small_1292252680_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 11:32:12', 'admin', '2012-11-28 11:32:12');
INSERT INTO `media` VALUES (116, 'default13540772901', '', 'media_news', '[105]', 'admin', 'Vệ sinh laptop đúng cách', '', '', 'vn', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Được sử dụng v&amp;agrave; di chuyển nhiều, laptop của bạn c&amp;oacute; nguy cơ trở th&amp;agrave;nh một ổ vi khuẩn. V&amp;igrave; vậy, việc vệ sinh thường xuy&amp;ecirc;n l&amp;agrave; hết sức cần thiết. Trước khi bắt đầu qu&amp;aacute; tr&amp;igrave;nh l&amp;agrave;m sạch laptop, bạn cần nghi&amp;ecirc;n cứu kỹ c&amp;agrave;ng Hướng dẫn sử dụng để biết những quy tr&amp;igrave;nh ti&amp;ecirc;u chuẩn hay y&amp;ecirc;u cầu cho việc l&amp;agrave;m sạch, v&amp;igrave; mỗi loại laptop c&amp;oacute; những đặc t&amp;iacute;nh ri&amp;ecirc;ng.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Phần lớn c&amp;aacute;c nh&amp;agrave; sản xuất đều y&amp;ecirc;u cầu việc l&amp;agrave;m sạch &amp;iacute;t nhất một lần một năm, tuy nhi&amp;ecirc;n, m&amp;agrave;n h&amp;igrave;nh, b&amp;agrave;n ph&amp;iacute;m v&amp;agrave; vỏ ngo&amp;agrave;i cần được l&amp;agrave;m sạch thường xuy&amp;ecirc;n hơn.&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;div-noi-dung&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;aacute;c loại chất bẩn rất đa dạng, từ bụi bẩn th&amp;ocirc;ng thường cho đến t&amp;oacute;c người, l&amp;ocirc;ng động vật, t&amp;agrave;n thuốc l&amp;aacute;. Những nh&amp;acirc;n tố n&amp;agrave;y c&amp;oacute; thể g&amp;acirc;y hại cho m&amp;agrave;n h&amp;igrave;nh, ảnh hưởng đến hoạt động của quạt laptop hay khiến bạn gặp trục trặc với c&amp;aacute;c cổng I/O.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn n&amp;ecirc;n sử dụng những dụng cụ sau để vệ sinh m&amp;aacute;y t&amp;iacute;nh x&amp;aacute;ch tay: m&amp;aacute;y chứa kh&amp;ocirc;ng kh&amp;iacute; n&amp;eacute;n, tăm b&amp;ocirc;ng, dung dịch l&amp;agrave;m sạch, vải mềm để lau như vải b&amp;ocirc;ng.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Tuy nhi&amp;ecirc;n, bạn n&amp;ecirc;n hạn chế vệ sinh phần cứng b&amp;ecirc;n. L&amp;yacute; do thứ nhất việc th&amp;aacute;o lắp phần cứng khiến bạn kh&amp;ocirc;ng được bảo h&amp;agrave;nh (nếu laptop c&amp;ograve;n hạn). Thứ hai, c&amp;aacute;c phần cứng &amp;iacute;t gặp bụi bẩn do nằm ở mặt dưới v&amp;agrave; được bao bọc cẩn thận. L&amp;yacute; do cuối c&amp;ugrave;ng l&amp;agrave; phần cứng laptop l&amp;agrave; những thiết bị nhạy cảm, nếu kh&amp;ocirc;ng phải l&amp;agrave; d&amp;acirc;n chuy&amp;ecirc;n nghiệp th&amp;igrave; bạn n&amp;ecirc;n lựa chọn việc đến c&amp;aacute;c tiệm chuy&amp;ecirc;n sửa chửa để thực hiện c&amp;ocirc;ng việc vệ sinh.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Dưới đ&amp;acirc;y l&amp;agrave; hướng dẫn l&amp;agrave;m sạch với c&amp;aacute;c bộ phận cơ bản của laptop:&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Lớp vỏ b&amp;ecirc;n ngo&amp;agrave;i&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Sử dụng một miếng vải ướt v&amp;agrave; mềm như một miếng vải b&amp;ocirc;ng cũ để vệ sinh vỏ. Kh&amp;ocirc;ng sử dụng vải c&amp;oacute; t&amp;iacute;nh m&amp;agrave;i m&amp;ograve;n v&amp;agrave; chất tẩy rửa mạnh. Kh&amp;ocirc;ng phun trực tiếp chất tẩy rửa l&amp;ecirc;n vỏ m&amp;agrave; phải phun gi&amp;aacute;n tiếp l&amp;ecirc;n miếng vải.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div class=&quot;image-caption-container&quot; style=&quot;width: 450px;&quot;&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img align=&quot;&quot; class=&quot;caption&quot; height=&quot;308&quot; src=&quot;http://www.fpt.edu.vn/sites/default/files/CongNghe27-07-10_pic2.jpg&quot; title=&quot;Xác định ống làm mát bên trong laptop&quot; width=&quot;450&quot; /&gt;&lt;/span&gt;\r\n		&lt;div class=&quot;image-caption&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;X&amp;aacute;c định ống l&amp;agrave;m m&amp;aacute;t b&amp;ecirc;n trong laptop&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;C&amp;aacute;c ống l&amp;agrave;m m&amp;aacute;t v&amp;agrave; quạt&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Mỗi laptop chạy sẽ sản sinh ra nhiệt, khi đ&amp;oacute; quạt tản nhiệt sẽ hoạt động. Kh&amp;iacute; được lưu th&amp;ocirc;ng qua c&amp;aacute;c ống l&amp;agrave;m m&amp;aacute;t. Việc bụi t&amp;iacute;ch tụ khiến d&amp;ograve;ng kh&amp;iacute; kh&amp;oacute; lưu th&amp;ocirc;ng, khiến cho nhiệt kh&amp;ocirc;ng được giải tỏa. Laptop sẽ qu&amp;aacute; n&amp;oacute;ng v&amp;agrave; ảnh hưởng đến hoạt động. V&amp;igrave; vậy, l&amp;agrave;m sạch c&amp;aacute;c ống l&amp;agrave;m m&amp;aacute;t gi&amp;uacute;p m&amp;aacute;y t&amp;iacute;nh hoạt động hiệu quả hơn.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Việc trước ti&amp;ecirc;n bạn cần l&amp;agrave;m l&amp;agrave; x&amp;aacute;c định vị tr&amp;iacute; của c&amp;aacute;c ống l&amp;agrave;m m&amp;aacute;t. Th&amp;ocirc;ng thường, ch&amp;uacute;ng được ph&amp;acirc;n bố ở hai b&amp;ecirc;n cạnh, r&amp;igrave;a v&amp;agrave; đ&amp;aacute;y laptop. C&amp;oacute; một gợi &amp;yacute; để x&amp;aacute;c định, đo l&amp;agrave; c&amp;aacute;c ống l&amp;agrave;m m&amp;aacute;t c&amp;oacute; m&amp;agrave;u đồng hoặc đen ở b&amp;ecirc;n trong. Nhưng tốt hơn l&amp;agrave; bạn h&amp;atilde;y đọc trong s&amp;aacute;ch hướng dẫn về sơ đồ lắp r&amp;aacute;p của m&amp;aacute;y.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Trước ti&amp;ecirc;n l&amp;agrave; sử dụng chổi hoặc khăn để l&amp;agrave;m sạch bụi v&amp;agrave; sử dụng; ngo&amp;agrave;i ra c&amp;ograve;n sử dụng nh&amp;iacute;p để gắp những vật cứng, vụn nhỏ. Sử dụng một chai nhựa chứa kh&amp;ocirc;ng kh&amp;iacute; n&amp;eacute;n để l&amp;agrave;m sạch c&amp;aacute;c cửa th&amp;ocirc;ng gi&amp;oacute;.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div class=&quot;image-caption-container&quot; style=&quot;width: 450px;&quot;&gt;\r\n		&lt;p style=&quot;text-align: center;&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img align=&quot;&quot; class=&quot;caption&quot; height=&quot;337&quot; src=&quot;http://www.fpt.edu.vn/sites/default/files/CongNghe27-07-10_pic3.jpg&quot; title=&quot;Các cổng I/O sẽ mất tiếp xuc nếu các có quá nhiều bụi&quot; width=&quot;450&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;div class=&quot;image-caption&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;aacute;c cổng I/O sẽ mất tiếp xuc nếu c&amp;aacute;c c&amp;oacute; qu&amp;aacute; nhiều bụi&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;C&amp;aacute;c cổng cắm In/Out&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Sau khi c&amp;aacute;c cửa l&amp;agrave;m m&amp;aacute;t được l&amp;agrave;m sạch, c&amp;aacute;c cổng cắm in/out l&amp;agrave; phần tiếp theo cần được quan t&amp;acirc;m. Đ&amp;acirc;y l&amp;agrave; nơi thường xuy&amp;ecirc;n gặp phải vấn đề về lớn về t&amp;iacute;ch trữ bụi bẩn do kh&amp;ocirc;ng được che đậy. Sử dụng tăm b&amp;ocirc;ng để lau phần lớn c&amp;aacute;c chất bẩn đ&amp;atilde; t&amp;iacute;ch lũy.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn c&amp;oacute; thể d&amp;ugrave;ng kh&amp;iacute; n&amp;eacute;n để thổi phần c&amp;ograve;n lại của chất bẩn. Tuy nhi&amp;ecirc;n, phải cẩn thận để kh&amp;ocirc;ng thổi bụi v&amp;agrave;o c&amp;aacute;c cổng cắm in/out.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div class=&quot;image-caption-container&quot; style=&quot;width: 450px;&quot;&gt;\r\n		&lt;p style=&quot;text-align: center;&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img align=&quot;&quot; class=&quot;caption&quot; height=&quot;309&quot; src=&quot;http://www.fpt.edu.vn/sites/default/files/CongNghe27-07-10_pic4.jpg&quot; title=&quot;Màn hình là thứ dễ bắt bụi và bẩn, việc vệ sinh cần cực kỳ cẩn thận&quot; width=&quot;450&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n		&lt;div class=&quot;image-caption&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;M&amp;agrave;n h&amp;igrave;nh l&amp;agrave; thứ dễ bắt bụi v&amp;agrave; bẩn, việc vệ sinh cần cực kỳ cẩn thận&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;M&amp;agrave;n h&amp;igrave;nh&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu m&amp;agrave;n h&amp;igrave;nh của bạn thường chỉ bị b&amp;aacute;m bụi, v&amp;igrave; vậy d&amp;ugrave;ng nước sạch thấm v&amp;agrave;o vải mềm cotton để lau ch&amp;ugrave;i l&amp;agrave; được. C&amp;ograve;n nếu tr&amp;ecirc;n m&amp;agrave;n h&amp;igrave;nh xuất hiện những dấu v&amp;acirc;n tay hoặc c&amp;aacute;c vết bẩn, giải ph&amp;aacute;p hữu hiệu để l&amp;agrave;m sạch l&amp;agrave; d&amp;ugrave;ng nước sạch tinh khiết với rượu iso-propyl để lau ch&amp;ugrave;i.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Ch&amp;uacute; &amp;yacute;: Bạn kh&amp;ocirc;ng bao được d&amp;ugrave;ng vải kh&amp;ocirc; để lau ch&amp;ugrave;i, bởi v&amp;igrave; những hạt bụi bẩn sẽ l&amp;agrave;m xước bề mặt m&amp;agrave;nh h&amp;igrave;nh của bạn. D&amp;ugrave;ng khăn lau nhẹ l&amp;ecirc;n m&amp;agrave;n h&amp;igrave;nh m&amp;aacute;y t&amp;iacute;nh, bạn c&amp;oacute; thể lau theo chiều ngang hoặc theo chiều dọc của m&amp;agrave;n h&amp;igrave;nh. Đối với những v&amp;ugrave;ng c&amp;oacute; vết bẩn đặc biệt, bạn cần lau ch&amp;ugrave;i một c&amp;aacute;ch cẩn thận kỹ lưỡng.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Những điều n&amp;ecirc;n tr&amp;aacute;nh khi vệ sinh m&amp;agrave;n h&amp;igrave;nh&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Kh&amp;ocirc;ng được d&amp;ugrave;ng dung dịch c&amp;aacute;c loại nước rửa k&amp;iacute;nh, x&amp;agrave; ph&amp;ograve;ng&amp;hellip;bởi v&amp;igrave; ch&amp;uacute;ng c&amp;oacute; chứa những ho&amp;aacute; chất g&amp;acirc;y hư hại cho m&amp;agrave;n h&amp;igrave;nh của bạn. Đặc biệt tuyệt đối tr&amp;aacute;nh sử dụng dung dịch lau ch&amp;ugrave;i m&amp;agrave;n h&amp;igrave;nh l&amp;agrave;: ammonia, acetone, toluene hoặc cồn &amp;ecirc;tylic.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Kh&amp;ocirc;ng phun xịt trực tiếp l&amp;ecirc;n m&amp;agrave;n h&amp;igrave;nh. Nếu bạn kh&amp;ocirc;ng c&amp;oacute; b&amp;igrave;nh xịt, bạn c&amp;oacute; thể đổ dung dịch l&amp;ecirc;n miếng vải mềm, miếng phải đ&amp;oacute; phải kh&amp;ocirc;, kh&amp;ocirc;ng được nh&amp;uacute;ng nước ẩm ướt. Khi phun dung dịch nhớ tr&amp;aacute;nh xa m&amp;aacute;y t&amp;iacute;nh x&amp;aacute;ch tay do ch&amp;uacute;ng c&amp;oacute; thể bắn v&amp;agrave;o c&amp;aacute;c khe hở g&amp;acirc;y hư hại cho m&amp;aacute;y.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn tuyệt đối kh&amp;ocirc;ng sử dụng khăn, giấy, b&amp;aacute;o để vệ sinh v&amp;igrave; ch&amp;uacute;ng sẽ l&amp;agrave;m cho m&amp;agrave;n h&amp;igrave;nh của bạn bị trầy xước. Kh&amp;ocirc;ng sử dụng nước m&amp;aacute;y để lau ch&amp;ugrave;i, v&amp;igrave; ch&amp;uacute;ng c&amp;oacute; chứa c&amp;aacute;c chất muối kho&amp;aacute;ng g&amp;acirc;y hư hại cho m&amp;agrave;n h&amp;igrave;nh.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Kh&amp;ocirc;ng vệ sinh m&amp;agrave;n h&amp;igrave;nh khi m&amp;aacute;y t&amp;iacute;nh chưa ho&amp;agrave;n to&amp;agrave;n tắt, bởi v&amp;igrave; khi m&amp;agrave;n h&amp;igrave;nh tắt bạn sẽ dễ d&amp;agrave;ng nhận ra c&amp;aacute;c vết bẩn v&amp;agrave; đặc biệt tr&amp;aacute;nh bị giật điện.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Điều cuối c&amp;ugrave;ng bạn cần nhớ l&amp;agrave; đừng n&amp;ecirc;n đặt qu&amp;aacute; nhiều vật nặng l&amp;ecirc;n m&amp;agrave;n h&amp;igrave;nh trong qu&amp;aacute; tr&amp;igrave;nh vệ sinh, n&amp;oacute; c&amp;oacute; thể l&amp;agrave;m m&amp;agrave;n h&amp;igrave;nh của bạn bị hỏng vĩnh viễn.&lt;/span&gt;&lt;/p&gt;\r\n	&lt;div class=&quot;image-caption-container&quot; style=&quot;width: 450px;&quot;&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img align=&quot;&quot; class=&quot;caption&quot; height=&quot;337&quot; src=&quot;http://www.fpt.edu.vn/sites/default/files/CongNghe27-07-10_pic5.jpg&quot; title=&quot;Việc tháo bàn phím cần cực kỳ cẩn thận&quot; width=&quot;450&quot; /&gt;&lt;/span&gt;\r\n		&lt;div class=&quot;image-caption&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;Việc th&amp;aacute;o b&amp;agrave;n ph&amp;iacute;m cần cực kỳ cẩn thận&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;B&amp;agrave;n ph&amp;iacute;m&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;aacute;ch tốt nhất để giữ sạch b&amp;agrave;n ph&amp;iacute;m v&amp;agrave; ngăn c&amp;aacute;c ph&amp;iacute;m khỏi bị kẹt hoặc trục trặc l&amp;agrave; để thực phẩm v&amp;agrave; đồ uống tr&amp;aacute;nh xa m&amp;aacute;y t&amp;iacute;nh. Ngay cả khi kh&amp;ocirc;ng l&amp;agrave;m l&amp;agrave;m g&amp;igrave; trực tiếp tr&amp;ecirc;n b&amp;agrave;n ph&amp;iacute;m, bạn n&amp;ecirc;n giữ cho c&amp;aacute;c đầu ng&amp;oacute;n tay, phần tiếp x&amp;uacute;c trực tiếp với b&amp;agrave;n ph&amp;iacute;m được sạch sẽ. Sử dụng kh&amp;iacute; n&amp;eacute;n để thổi bụi bẩn. Tiếp theo, t&amp;igrave;m hiểu những quyển s&amp;aacute;ch hướng dẫn sử dụng nếu c&amp;aacute;c ph&amp;iacute;m c&amp;oacute; thể th&amp;aacute;o ra để l&amp;agrave;m sạch&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;H&amp;atilde;y chắc chắn rằng c&amp;aacute;c ph&amp;iacute;m sẽ được lắp lại đ&amp;uacute;ng vị tr&amp;iacute; sau khi bạn l&amp;agrave;m sạch ch&amp;uacute;ng. C&amp;aacute;ch tốt nhất l&amp;agrave; khi th&amp;aacute;o ra, bạn sắp xếp c&amp;aacute;c b&amp;agrave;n ph&amp;iacute;m đ&amp;atilde; gỡ ra theo đ&amp;uacute;ng thứ tự. Bạn cần ch&amp;uacute; &amp;yacute;, dưới mỗi ph&amp;iacute;m đều c&amp;oacute; miếng cao su nhỏ, bạn cần gỡ n&amp;oacute; ra để tr&amp;aacute;nh những b&amp;agrave;n ph&amp;iacute;m bật lung tung. Cũng đừng d&amp;ugrave;ng lực qu&amp;aacute; sức khi th&amp;aacute;o b&amp;agrave;n ph&amp;iacute;m. Cuối c&amp;ugrave;ng, sử dụng tăm b&amp;ocirc;ng để l&amp;agrave;m sạch b&amp;ecirc;n trong v&amp;agrave; xung quanh b&amp;agrave;n ph&amp;iacute;m.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 've-sinh-laptop', '', '', '', '', '', 'fpt.edu.vn', 0, 0, 'upload/upload_small_1292066870_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 11:34:50', 'admin', '2012-11-28 11:34:50');
INSERT INTO `media` VALUES (117, 'default13540774391', '', 'media_news', '[105]', 'admin', 'Cài đặt Windows Server Backup trên Windows Server 2008 R2', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Windows Server Backup l&amp;agrave; một th&amp;agrave;nh phần được x&amp;acirc;y dựng trong Windows Server 2008 R2, bao gồm Microsoft Management Console (MMC) snap-in, một c&amp;ocirc;ng cụ d&amp;ograve;ng lệnh v&amp;agrave; Windows PowerShell cmdlets&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Windows Server Backup giống như phi&amp;ecirc;n bản tiền nhiệm của n&amp;oacute; - Ntbackup (tr&amp;ecirc;n Windows Server 2000/2003) - cung cấp một giải ph&amp;aacute;p ho&amp;agrave;n chỉnh để backup dữ liệu h&amp;agrave;ng ng&amp;agrave;y v&amp;agrave; kh&amp;ocirc;i phục lại khi cần thiết.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;So với Windows Server 2008 RTM, Windows Server 2008 R2 c&amp;oacute; c&amp;aacute;c t&amp;iacute;nh năng mới mở rộng gi&amp;uacute;p bạn c&amp;oacute; thể backup, lưu trữ c&amp;aacute;c bản backup v&amp;agrave; l&amp;agrave;m thế n&amp;agrave;o để phục hồi lại từ backup.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Lưu &amp;yacute;: Một điểm cần nhớ l&amp;agrave; kh&amp;ocirc;ng thể sử dụng Windows Server Backup để kh&amp;ocirc;i phục bản sao lưu đ&amp;atilde; được tạo ra bởi Ntbackup. Tuy nhi&amp;ecirc;n hiện c&amp;oacute; một phi&amp;ecirc;n bản chỉ đọc của Ntbackup (miễn ph&amp;iacute;) c&amp;oacute; thể gi&amp;uacute;p bạn kh&amp;ocirc;i phục dữ liệu được tạo ra bởi Ntbackup, c&amp;ocirc;ng cụ n&amp;agrave;y c&amp;oacute; thể c&amp;agrave;i đặt tr&amp;ecirc;n Windows Server 2008 R2 v&amp;agrave; Windows 7. Chi tiết tải về &lt;a href=&quot;http://www.microsoft.com/download/en/details.aspx?DisplayLang=en&amp;amp;id=4220&quot; target=&quot;_blank&quot;&gt;tại đ&amp;acirc;y&lt;/a&gt;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;h2&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Backup&amp;nbsp;với Windows Server Backup&lt;/span&gt;&lt;/h2&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn c&amp;oacute; thể sử dụng Windows Server Backup để backup to&amp;agrave;n bộ server (tất cả c&amp;aacute;c volume), một danh s&amp;aacute;ch lựa chọn c&amp;aacute;c volume, một ph&amp;acirc;n v&amp;ugrave;ng hệ thống hoặc một thư mục/file cụ thể.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Lưu &amp;yacute;: Trong Windows Server 2008 RTM bạn sẽ bị hạn chế những mục c&amp;oacute; thể backup, chỉ c&amp;oacute; v&amp;agrave;i lựa chọn l&amp;agrave; volume v&amp;agrave; to&amp;agrave;n bộ server.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn c&amp;oacute; thể sử dụng Windows Server Backup để tạo v&amp;agrave; quản l&amp;yacute; c&amp;aacute;c bản backup cho một m&amp;aacute;y t&amp;iacute;nh cục bộ hoặc từ xa, c&amp;oacute; thể l&amp;ecirc;n lịch tr&amp;igrave;nh để chạy backup tự động.&lt;/span&gt;&lt;/p&gt;\r\n&lt;h2&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;agrave;i đặt Windows Server Backup&lt;/span&gt;&lt;/h2&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Khi th&amp;ecirc;m t&amp;iacute;nh năng Windows Server Backup Features v&amp;agrave; c&amp;aacute;c th&amp;agrave;nh phần cấp dưới, bạn cần c&amp;agrave;i đặt c&amp;aacute;c c&amp;ocirc;ng cụ sau:&lt;/span&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Windows Server Backup Microsoft Management Console (MMC) snap-in&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Wbadmin command-line tool&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Windows PowerShell cmdlets for Windows Server Backup&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Để c&amp;agrave;i đặt Windows Server Backup, c&amp;oacute; thể sử dụng một trong 3 phương ph&amp;aacute;p sau:&lt;/span&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Sử dụng Server Manager&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Sử dụng Servermanagercmd.exe&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Sử dụng PowerShell&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Để c&amp;agrave;i đặt Windows Server Backup, đăng nhập v&amp;agrave;o m&amp;aacute;y t&amp;iacute;nh bằng t&amp;agrave;i khoản Administrator hoặc t&amp;agrave;i khoản c&amp;oacute; cấp quyền quản trị.&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;1. C&amp;agrave;i đặt Windows Server Backup sử dụng Server Manager&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Mở Server Manager&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- K&amp;iacute;ch Features&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- K&amp;iacute;ch Add Features&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup1.jpg&quot; title=&quot;Ảnh lớn&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup1.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Trong trang Add Features Wizard, cuộn chuột xuống dưới v&amp;agrave; chọn Windows Server Backup features. Nếu bạn cũng muốn sử dụng c&amp;aacute;c mẫu lệnh PowerShell, chọn th&amp;ecirc;m Command Line Tools. Bạn kh&amp;ocirc;ng cần việc th&amp;ecirc;m n&amp;agrave;y nếu chỉ muốn sử dụng GUI hoặc c&amp;ocirc;ng cụ d&amp;ograve;ng lệnh WBADMIN. K&amp;iacute;ch Next.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup2.jpg&quot; title=&quot;Ảnh lớn&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup2.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Trong trang Confirm Installation Selections, k&amp;iacute;ch Install.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup3.jpg&quot; title=&quot;Ảnh lớn&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup3.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup4.jpg&quot; title=&quot;Ảnh lớn&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup4.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Kh&amp;ocirc;ng cần khởi động lại server sau khi thiết lập xong&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;2. C&amp;agrave;i đặt Windows Server Backup sử dụng Servermanagercmd.exe&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sử dụng lệnh Servermanagercmd.exe l&amp;agrave; c&amp;aacute;ch dễ d&amp;agrave;ng, tuy nhi&amp;ecirc;n lệnh n&amp;agrave;y c&amp;oacute; thể bị phản đối trong c&amp;aacute;c phi&amp;ecirc;n bản Windows sau n&amp;agrave;y, do đ&amp;oacute; kh&amp;ocirc;ng được sử dụng n&amp;oacute; qu&amp;aacute; nhiều...&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Mở cửa sổ lệnh với quyền quản trị cấp cao (chuột phải v&amp;agrave;o CMD v&amp;agrave; chọn Run as Administrator).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Nhập: servermanagercmd -i Backup-Features&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup5.jpg&quot; title=&quot;Ảnh lớn&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup5.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;3. C&amp;agrave;i đặt Windows Server Backup sử dụng PowerShell&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Trong Windows Server 2008 R2, PowerShell được c&amp;agrave;i đặt mặc định. Tuy nhi&amp;ecirc;n, để c&amp;agrave;i đặt c&amp;aacute;c role bằng c&amp;ocirc;ng cụ n&amp;agrave;y, bạn cần phải import v&amp;agrave;o module Server Manager.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Mở một cửa sổ PowerShell với quyền cấp cao (chuột phải v&amp;agrave;o PowerShell v&amp;agrave; chọn Run as Administrator)&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Nhập: Import-Module servermanager&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;- Sau khi import, nhập: Add-WindowsFeature Backup-Features.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup6.jpg&quot; title=&quot;Ảnh lớn&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/082011/05/backup6.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;', 'cai-dat-window-server-backup', '', '', '', '', '', 'quangtrimang.com.vn', 0, 0, 'upload/upload_1312551983_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 11:37:19', 'admin', '2012-11-28 11:37:19');
INSERT INTO `media` VALUES (118, 'default13540781761', '', 'media_news', '[106]', 'admin', 'Ngăn chặn bị ngắt kết nối khi download trong Windows', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Khi đang thực hiện tải c&amp;aacute;c tập tin c&amp;oacute; dung lượng lớn từ Internet về m&amp;aacute;y t&amp;iacute;nh. Đột nhi&amp;ecirc;n, Windows rơi v&amp;agrave;o trạng th&amp;aacute;i ngủ đ&amp;ocirc;ng để tiết kiệm năng lượng theo thời gian mặc định đ&amp;atilde; l&amp;agrave;m gi&amp;aacute;n đoạn c&amp;ocirc;ng việc đang thực hiện c&amp;ocirc;ng việc, ti&amp;ecirc;u tốn th&amp;ecirc;m thời gian v&amp;agrave; ph&amp;iacute; Intenrnet của bạn.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;B&amp;agrave;i viết n&amp;agrave;y sẽ giới thiệu một ứng dụng x&amp;aacute;ch tay nhỏ gọn cho ph&amp;eacute;p bạn ngăn chặn c&amp;aacute;c chế độ tự động của Windows như Shutdown, Reboot, Stanby, Turn Off, Hibernation một c&amp;aacute;ch hữu hiệu, ứng dụng c&amp;oacute; t&amp;ecirc;n &lt;a href=&quot;http://www.download.com.vn/system/utilities/20604_don-t-sleep.aspx&quot; target=&quot;_blank&quot;&gt;Don&amp;#39;t Sleep&lt;/a&gt;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;Ngăn chặn bị ngắt kết nối khi download trong Windows&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/082011/18/Don-t-Sleep.png&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Don&amp;#39;t Sleep l&amp;agrave; một ứng dụng x&amp;aacute;ch tay kh&amp;ocirc;ng cần c&amp;agrave;i đặt, sau khi tải về giải n&amp;eacute;n k&amp;iacute;ch hoạt tập tin thực thi DontSleep.exeđể ngăn chặn Windows k&amp;iacute;ch hoạt c&amp;aacute;c chế độ Stanby, Hybrid-Stanby, Hibernation, Reboot, Shutdown nhằm tr&amp;aacute;nh việc mất quyền kiểm so&amp;aacute;t m&amp;aacute;y t&amp;iacute;nh của bạn từ c&amp;aacute;c hoạt động ngầm mặc định của Windows. Ngo&amp;agrave;i ra, ứng dụng cũng c&amp;oacute; thể ngăn chặn hoạt động của chế độ bảo vệ m&amp;agrave;n h&amp;igrave;nh để kh&amp;ocirc;ng l&amp;agrave;m gi&amp;aacute;n đoạn c&amp;ocirc;ng việc của bạn.&lt;/span&gt;&lt;/p&gt;\r\n&lt;h2&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Chức năng&lt;/span&gt;&lt;/h2&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Don&amp;#39;t Sleep: cung cấp c&amp;aacute;c t&amp;iacute;nh năng cho ph&amp;eacute;p bạn thực hiện với ứng dụng như&lt;/span&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;To-Tray: Hiển thị tr&amp;ecirc;n thanh hệ thống.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Hide: Ẩn ứng dụng nếu muốn hiển thị trở lại bạn phải k&amp;iacute;ch hoạt tập tin thực thi dontSleep.exe, kh&amp;ocirc;ng n&amp;ecirc;n sử dụng.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Minimize to tray if Minimize: Hiển thị thu nhỏ tr&amp;ecirc;n thanh hệ thống khi bạn muốn thu nhỏ ứng dụng để l&amp;agrave;m việc với c&amp;aacute;c ứng dụng kh&amp;aacute;c.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Minimize to tray if Close: Hiển thị tr&amp;ecirc;n thanh hệ thống khi bạn nhấn đ&amp;oacute;ng cửa sổ ứng dụng.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Enabling the Mini-HTTP feature: K&amp;iacute;ch hoạt chức năng kết nối với giao thức HTTP qua c&amp;aacute;c cổng mặc định l&amp;agrave; 8080&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Start Parameter: Hiển thị c&amp;aacute;c tham số thực hiện việc v&amp;ocirc; hiệu h&amp;oacute;a c&amp;aacute;c chức năng.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Exit: Tho&amp;aacute;t khỏi ứng dụng.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;System: Cho ph&amp;eacute;p bạn li&amp;ecirc;n kết nhanh với c&amp;aacute;c chức năng của hệ thống như Task Manager, System, Power Config, Desktop, Monitor, Screensaver Timeout, Screensave, User Accounts, System Configuration v&amp;agrave; System Information.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;N&amp;uacute;t Option trong khung Blocking ứng dụng cung cấp c&amp;aacute;c chức năng cho ph&amp;eacute;p bạn thực hiện &amp;aacute;p đặt thời gian sử dụng với Don&amp;#39;t Sleep th&amp;ocirc;ng qua 2 tiện &amp;iacute;ch Program Star, When you reactivate the PC (from stanby...), hiển thị biểu tượng tr&amp;ecirc;n thanh hệ thống hoặc khởi động ứng dụng c&amp;ugrave;ng Windows v.v....&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Tại khung Timer ứng dụng cung cấp một số tiện &amp;iacute;ch cho ph&amp;eacute;p bạn thực hiện để k&amp;iacute;ch hoạt lại c&amp;aacute;c t&amp;iacute;nh năng v&amp;agrave; l&amp;agrave;m việc với Windows ở c&amp;aacute;c chế độ sau khi tho&amp;aacute;t khỏi ứng dụng như:&lt;/span&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Exit and Stop Blocking: Tho&amp;aacute;t v&amp;agrave; ngưng việc v&amp;ocirc; hiệu h&amp;oacute;a c&amp;aacute;c t&amp;iacute;nh năng.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Exit and Shutdown: Tho&amp;aacute;t v&amp;agrave; tắt m&amp;aacute;y t&amp;iacute;nh.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Exit and aggressive Shutdown: Tho&amp;aacute;t v&amp;agrave; &amp;eacute;p buộc tắt m&amp;aacute;y t&amp;iacute;nh.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Exit and Standby/Hibernation: Tho&amp;aacute;t v&amp;agrave; l&amp;agrave;m việc với Windows ở chế độ chờ/ngủ đ&amp;ocirc;ng.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Disable Blocking: V&amp;ocirc; hiệu h&amp;oacute;a việc ngăn chặn c&amp;aacute;c chế độ của Windows.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Lưu &amp;yacute;: T&amp;aacute;c giả khuy&amp;ecirc;n bạn h&amp;atilde;y sử dụng chức năng Exit and Stop Blockingđể tr&amp;aacute;nh gi&amp;aacute;n đoạn c&amp;ocirc;ng việc nếu lỡ tay tho&amp;aacute;t khỏi ứng dụng v&amp;agrave; kh&amp;ocirc;ng l&amp;agrave;m tổn hại đến hoạt động của hệ thống khi bị chuyển đổi chế độ một c&amp;aacute;ch bắt buộc.&lt;/span&gt;&lt;/p&gt;', 'ngan-ket-noi-khi-download-trong-window', '', '', '', '', '', 'quantrimang.com.vn', 0, 0, 'upload/upload_1313720210_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 11:49:36', 'admin', '2012-11-28 11:49:36');
INSERT INTO `media` VALUES (119, 'default13540783231', '', 'media_news', '[106]', 'admin', '5 bước khắc phục sự cố mạng Wi-Fi', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Wi-Fi cho ph&amp;eacute;p bạn truy cập mạng m&amp;agrave; kh&amp;ocirc;ng cần d&amp;acirc;y nối loằng ngoằng, tuy nhi&amp;ecirc;n để c&amp;oacute; được ưu điểm đ&amp;oacute; bạn cũng phải trả gi&amp;aacute; bằng nhiều vấn đề g&amp;acirc;y đau đầu trong việc kết nối.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sự suy giảm v&amp;agrave; khoảng c&amp;aacute;ch của t&amp;iacute;n hiệu kh&amp;ocirc;ng d&amp;acirc;y phụ thuộc v&amp;agrave;o hai hệ số ch&amp;iacute;nh: vật liệu x&amp;acirc;y dựng của t&amp;ograve;a nh&amp;agrave; v&amp;agrave; sự xuy&amp;ecirc;n nhiễu gần đ&amp;oacute;. B&amp;ecirc;n cạnh đ&amp;oacute; c&amp;ograve;n c&amp;oacute; một số vấn đề kh&amp;aacute;c cũng c&amp;oacute; thể g&amp;acirc;y ra hiện tượng mất kết nối l&amp;agrave; sử dụng c&amp;aacute;c chuẩn kh&amp;ocirc;ng d&amp;acirc;y kh&amp;aacute;c nhau cho router v&amp;agrave; điểm truy cập AP hay adapter kh&amp;ocirc;ng d&amp;acirc;y v&amp;agrave; kh&amp;ocirc;ng cập nhật hệ điều h&amp;agrave;nh.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Trong hướng dẫn n&amp;agrave;y, ch&amp;uacute;ng ta sẽ xem x&amp;eacute;t c&amp;aacute;c nhiệm vụ khắc phục ch&amp;iacute;nh để sửa m&amp;aacute;y t&amp;iacute;nh kh&amp;ocirc;ng thể kết nối hoặc giữ một kết nối ổn định.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;1. T&amp;iacute;nh hiệu ngh&amp;egrave;o hoặc bị xuy&amp;ecirc;n nhiễu&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Trước ti&amp;ecirc;n, bạn h&amp;atilde;y loại trừ t&amp;iacute;n hiệu ngh&amp;egrave;o hay hiện tượng xuy&amp;ecirc;n nhiễu ra khỏi danh s&amp;aacute;ch c&amp;aacute;c nguy&amp;ecirc;n nh&amp;acirc;n c&amp;oacute; thể. Nếu sử dụng một laptop hoặc thiết bị di động, h&amp;atilde;y di chuyển laptop đến gần router hoặc AP hơn ch&amp;uacute;t. Sử dụng sự đ&amp;aacute;nh gi&amp;aacute; của bạn dựa tr&amp;ecirc;n hiệu suất kh&amp;ocirc;ng d&amp;acirc;y của c&amp;aacute;c m&amp;aacute;y t&amp;iacute;nh kh&amp;aacute;c để x&amp;aacute;c định xem vấn đề c&amp;oacute; phải do bạn ở qu&amp;aacute; xa nguồn ph&amp;aacute;t t&amp;iacute;n hiệu hay một thứ g&amp;igrave; đ&amp;oacute; g&amp;acirc;y xuy&amp;ecirc;n nhiễu ở gần vị tr&amp;iacute; của bạn. Cần lưu &amp;yacute; rằng, hệ thống điện thoại k&amp;eacute;o d&amp;agrave;i, thiết bị gi&amp;aacute;m s&amp;aacute;t trẻ nhỏ hay một số thiết bị kh&amp;ocirc;ng d&amp;acirc;y kh&amp;aacute;c (đặc biệt c&amp;aacute;c thiết bị sử dụng bằng tần 2.4GHz) c&amp;oacute; thể g&amp;acirc;y xuy&amp;ecirc;n nhiễu nghi&amp;ecirc;m trọng đến t&amp;iacute;n hiệu Wi-Fi của bạn.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu muốn t&amp;iacute;n hiệu đến c&amp;aacute;c m&amp;aacute;y được tốt, bạn cần bảo đảm router kh&amp;ocirc;ng d&amp;acirc;y hoặc AP được đặt gần vị tr&amp;iacute; trung t&amp;acirc;m của v&amp;ugrave;ng cần phủ s&amp;oacute;ng. Nếu c&amp;aacute;ch sắp xếp n&amp;agrave;y kh&amp;ocirc;ng trợ gi&amp;uacute;p được g&amp;igrave;, khi đ&amp;oacute; bạn c&amp;oacute; thể xem x&amp;eacute;t đến việc n&amp;acirc;ng cấp l&amp;ecirc;n router hoặc AP 802.11n để tăng phạm vi phủ s&amp;oacute;ng cho t&amp;iacute;n hiệu. Nếu muốn mở rộng v&amp;ugrave;ng phủ s&amp;oacute;ng hơn nữa, bạn c&amp;oacute; thể sử dụng đến thiết bị cầu hoặc bộ lặp kh&amp;ocirc;ng d&amp;acirc;y, hay c&amp;oacute; thể bổ sung v&amp;agrave; chạy d&amp;acirc;y cho AP kh&amp;aacute;c.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu bạn nghĩ xuy&amp;ecirc;n nhiễu ch&amp;iacute;nh l&amp;agrave; vấn đề, khi đ&amp;oacute; h&amp;atilde;y cố t&amp;igrave;m ra thiết bị hoặc mạng g&amp;acirc;y nhiễu. Nếu kh&amp;ocirc;ng thể v&amp;ocirc; hiệu h&amp;oacute;a nguồn nhiễu, bạn c&amp;oacute; thể thay đổi k&amp;ecirc;nh Wi-Fi của router hoặc AP bằng c&amp;aacute;ch đăng nhập v&amp;agrave;o panel điều khiển của n&amp;oacute;, sau đ&amp;oacute; thử c&amp;aacute;c k&amp;ecirc;nh 1 hoặc 11.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;2. Kh&amp;ocirc;ng đạt đủ tốc độ 802.11n&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu c&amp;oacute; thể kết nối nhưng vấn đề của bạn gặp ở đ&amp;acirc;y l&amp;agrave; kh&amp;ocirc;ng đạt tốc độ cao như quảng c&amp;aacute;o tr&amp;ecirc;n router kh&amp;ocirc;ng d&amp;acirc;y 802.11n của bạn, khi đ&amp;oacute; thứ đầu ti&amp;ecirc;n cần kiểm tra l&amp;agrave; adapter kh&amp;ocirc;ng d&amp;acirc;y, kiểm tra xem adapter của bạn c&amp;oacute; hỗ trợ 802.11n hay kh&amp;ocirc;ng. V&amp;igrave; thiết bị 802.11b/g cũng c&amp;oacute; thể tương th&amp;iacute;ch với c&amp;aacute;c chuẩn mới hơn như 802.11n nhưng c&amp;aacute;c kết nối sẽ bị hạn chế ở tốc độ 11Mbps đối với 802.11b hoặc 54Mbps đối với 802.11g.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu sử dụng cả router v&amp;agrave; adapter kh&amp;ocirc;ng d&amp;acirc;y 802.11n th&amp;igrave; nguy&amp;ecirc;n nh&amp;acirc;n ở đ&amp;acirc;y c&amp;oacute; thể l&amp;agrave; do bạn sử dụng m&amp;atilde; h&amp;oacute;a WEP hoặc WPA/TKIP. Để nhận sự hỗ trợ đầy đủ của 802.11n, bạn phải sử dụng m&amp;atilde; h&amp;oacute;a WPA2/AES. Thậm ch&amp;iacute; khi sử dụng m&amp;atilde; h&amp;oacute;a n&amp;agrave;y bạn vẫn kh&amp;ocirc;ng c&amp;oacute; được tốc độ tối đa nếu sử dụng độ rộng của k&amp;ecirc;nh mặc định ở tần số 20MHz, khắc phục vấn đề n&amp;agrave;y bằng c&amp;aacute;ch thay đổi độ rộng của k&amp;ecirc;nh mặc định l&amp;ecirc;n 40MHz.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;3. Sự tương th&amp;iacute;ch WPA hoặc WPA2 của adapter kh&amp;ocirc;ng d&amp;acirc;y v&amp;agrave; Windows XP&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu kh&amp;ocirc;ng thể kết nối v&amp;agrave; router hay AP kh&amp;ocirc;ng d&amp;acirc;y của bạn đang sử dụng m&amp;atilde; h&amp;oacute;a WPA hoặc WPA2, khi đ&amp;oacute; h&amp;atilde;y khắc phục bằng c&amp;aacute;ch bảo đảm cho adapter kh&amp;ocirc;ng d&amp;acirc;y v&amp;agrave; Windows hỗ trợ n&amp;oacute;. Bạn c&amp;oacute; thể kiểm tra trong Windows bằng c&amp;aacute;ch mở cửa sổ thuộc t&amp;iacute;nh mạng kh&amp;ocirc;ng d&amp;acirc;y v&amp;agrave; tham chiếu c&amp;aacute;c kiểu x&amp;aacute;c thực được liệt k&amp;ecirc; trong đ&amp;oacute;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Lưu &amp;yacute;: M&amp;atilde; h&amp;oacute;a WEP kh&amp;ocirc;ng an to&amp;agrave;n v&amp;agrave; kh&amp;ocirc;ng n&amp;ecirc;n sử dụng. H&amp;atilde;y sử dụng m&amp;atilde; h&amp;oacute;a WPA hoặc WPA2 thay v&amp;igrave;, thậm ch&amp;iacute; nếu cần phải mua phần cứng mới.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu bạn kh&amp;ocirc;ng thấy kiểu x&amp;aacute;c thực của m&amp;igrave;nh l&amp;agrave; WPA hoặc WPA2, đầu ti&amp;ecirc;n h&amp;atilde;y bảo đảm sự hỗ trợ bởi Windows. Windows XP Service Pack 3 v&amp;agrave; c&amp;aacute;c phi&amp;ecirc;n bản gần đ&amp;acirc;y đều hỗ trợ&amp;nbsp; WPA v&amp;agrave; WPA2. Nếu sử dụng Windows XP với c&amp;aacute;c g&amp;oacute;i dịch vụ cũ, khi đ&amp;oacute; bạn h&amp;atilde;y download g&amp;oacute;i dịch vụ 3 th&amp;ocirc;ng qua Windows Update hoặc từ website của Microsoft. Một c&amp;aacute;ch kh&amp;aacute;c nữa l&amp;agrave; c&amp;agrave;i đặt &lt;a href=&quot;http://www.microsoft.com/downloads/en/details.aspx?FamilyId=009D8425-CE2B-47A4-ABEC-274845DC9E91&amp;amp;displaylang=en&quot; target=&quot;_blank&quot;&gt;WPA update&lt;/a&gt; cho Windows XP v&amp;agrave; &lt;a href=&quot;http://www.microsoft.com/downloads/en/details.aspx?FamilyID=662bb74d-e7c1-48d6-95ee-1459234f4483&amp;amp;displaylang=en&quot; target=&quot;_blank&quot;&gt;WPA2 update&lt;/a&gt; cho Windows XP Service Pack 2.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu vẫn kh&amp;ocirc;ng thấy kiểu x&amp;aacute;c thực WPA hoặc WPA2 trong Windows, rất c&amp;oacute; thể adapter kh&amp;ocirc;ng d&amp;acirc;y của bạn kh&amp;ocirc;ng hỗ trợ n&amp;oacute;. Mặc d&amp;ugrave; vậy bạn c&amp;oacute; thể n&amp;acirc;ng cấp driver của adapter để xem liệu h&amp;atilde;ng sản xuất c&amp;oacute; ph&amp;aacute;t h&amp;agrave;nh c&amp;aacute;c n&amp;acirc;ng cấp mới n&amp;agrave;y chưa. Truy cập v&amp;agrave;o website của h&amp;atilde;ng v&amp;agrave; t&amp;igrave;m kiếm driver trong phần hỗ trợ. Nếu c&amp;oacute; driver mới, h&amp;atilde;y n&amp;acirc;ng cấp n&amp;oacute; theo c&amp;aacute;c hướng dẫn hoặc th&amp;ocirc;ng qua Device Manger trong Windows. Sau đ&amp;oacute; kiểm tra c&amp;aacute;c kiểu x&amp;aacute;c thực trong Windows lần nữa.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;4. Sử dụng c&amp;aacute;c adapter kh&amp;ocirc;ng d&amp;acirc;y 802.11b với 802.11n&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu bạn kết nối với một adapter kh&amp;ocirc;ng d&amp;acirc;y 802.11b cũ với một router kh&amp;ocirc;ng d&amp;acirc;y 802.11n mới hơn th&amp;igrave; vấn đề ở đ&amp;acirc;y c&amp;oacute; thể l&amp;agrave; sự kh&amp;ocirc;ng tương th&amp;iacute;ch. Mặc d&amp;ugrave; 802.11n được cho l&amp;agrave; c&amp;oacute; thể tương th&amp;iacute;ch với 802.11b/g, tuy nhi&amp;ecirc;n đ&amp;ocirc;i khi n&amp;oacute; vẫn kh&amp;ocirc;ng l&amp;agrave;m việc. Bạn c&amp;oacute; thể n&amp;acirc;ng cấp driver của adapter để xem c&amp;oacute; trợ gi&amp;uacute;p được g&amp;igrave;. Truy cập v&amp;agrave;o website của h&amp;atilde;ng v&amp;agrave; t&amp;igrave;m kiếm driver trong phần hỗ trợ. Nếu c&amp;oacute; driver mới, h&amp;atilde;y n&amp;acirc;ng cấp n&amp;oacute; theo c&amp;aacute;c hướng dẫn hoặc th&amp;ocirc;ng qua Device Manger trong Windows.&lt;br /&gt;\r\n	Nếu vấn đề vẫn tồn tại, bạn c&amp;oacute; thể kết nối adapter 802.11b nếu đặt router kh&amp;ocirc;ng d&amp;acirc;y hoặc AP của m&amp;igrave;nh ở chế độ 802.11b/g m&amp;agrave; kh&amp;ocirc;ng sử dụng chế độ mặc định của n&amp;oacute; l&amp;agrave; 802.11n. Để thực hiện điều n&amp;agrave;y, h&amp;atilde;y đăng nhập v&amp;agrave;o giao diện điều khiển tr&amp;ecirc;n web của router bằng địa chỉ IP của n&amp;oacute;, sau đ&amp;oacute; t&amp;igrave;m c&amp;aacute;c thiết lập kh&amp;ocirc;ng d&amp;acirc;y.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Để c&amp;oacute; được hiệu suất 802.11n tối ưu, bạn chỉ n&amp;ecirc;n sử dụng c&amp;aacute;c adapter kh&amp;ocirc;ng d&amp;acirc;y 802.11n v&amp;agrave; thay đổi chế độ mặc định của router hoặc AP về 802.11n only.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;5. May mắn với adapter kh&amp;ocirc;ng d&amp;acirc;y hoặc Windows &lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Đ&amp;ocirc;i khi vấn đề c&amp;oacute; thể l&amp;agrave; sự may mắn đối với adapter kh&amp;ocirc;ng d&amp;acirc;y hoặc Windows. Trước ti&amp;ecirc;n, h&amp;atilde;y thử v&amp;ocirc; hiệu h&amp;oacute;a v&amp;agrave; k&amp;iacute;ch hoạt lại adapter kh&amp;ocirc;ng d&amp;acirc;y. Trong Windows XP, k&amp;iacute;ch Start &amp;gt; Connect To &amp;gt; Show All Connections. Trong Windows Vista hoặc 7, k&amp;iacute;ch phải v&amp;agrave;o biểu tượng mạng ở g&amp;oacute;c phải b&amp;ecirc;n dưới, mở Network and Sharing Center, sau đ&amp;oacute; truy cập v&amp;agrave;o phần thiết lập adapter hoặc kết nối mạng. Khi nằm trong cửa sổ Network Connections, k&amp;iacute;ch phải v&amp;agrave;o adapter kh&amp;ocirc;ng d&amp;acirc;y để v&amp;ocirc; hiệu h&amp;oacute;a v&amp;agrave; k&amp;iacute;ch hoạt trở lại n&amp;oacute;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu việc khởi động lại adapter kh&amp;ocirc;ng gi&amp;uacute;p được g&amp;igrave;, c&amp;oacute; thể bạn n&amp;ecirc;n khởi động lại Windows. Đ&amp;ocirc;i khi những c&amp;ocirc;ng việc hết sức đơn giản n&amp;agrave;y lại c&amp;oacute; thể giải quyết được vấn đề.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Kết luận&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Trong b&amp;agrave;i ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; giới thiệu cho c&amp;aacute;c bạn một số nhiệm vụ khắc phục ch&amp;iacute;nh để chuẩn đo&amp;aacute;n v&amp;agrave; sửa c&amp;aacute;c vấn đề kết nối Wi-Fi. Nếu bạn vẫn gặp vấn đề đối với kết nối của m&amp;igrave;nh, h&amp;atilde;y kiểm tra c&amp;aacute;c n&amp;acirc;ng cấp cho driver của adapter. Ngo&amp;agrave;i ra, kiểm tra c&amp;aacute;c n&amp;acirc;ng cấp phần mềm cho adapter hay AP kh&amp;ocirc;ng d&amp;acirc;y của bạn v&amp;agrave; n&amp;acirc;ng cấp n&amp;oacute; th&amp;ocirc;ng qua giao diện điều khiển.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu gặp vấn đề với tất cả c&amp;aacute;c m&amp;aacute;y t&amp;iacute;nh đang kết nối, h&amp;atilde;y thử kh&amp;ocirc;i phục lại c&amp;aacute;c thiết lập mặc định của nh&amp;agrave; m&amp;aacute;y cho router hoặc AP bằng c&amp;aacute;ch nhấn n&amp;uacute;t nhỏ ở ph&amp;iacute;a sau n&amp;oacute;.&lt;/span&gt;&lt;/p&gt;', '5-buoc-khac-phuc-wifi', '', '', '', '', '', '', 0, 0, 'upload/upload_small_1301533782_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 11:52:03', 'admin', '2012-11-28 11:52:03');
INSERT INTO `media` VALUES (120, 'default13540784341', '', 'media_news', '[106]', 'admin', 'Microsoft Office 2010: Cài đặt giao diện tiếng Việt', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Tin vui cho người d&amp;ugrave;ng Việt Nam: Microsoft vừa ph&amp;aacute;t h&amp;agrave;nh g&amp;oacute;i ng&amp;ocirc;n ngữ tiếng Việt cho Microsoft Office &lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn tải g&amp;oacute;i ng&amp;ocirc;n ngữ tiếng Việt cho Microsoft Office 2010 tại&lt;a href=&quot;http://download.microsoft.com/download/F/A/F/FAFAAE96-4D17-4C04-86CF-4D55FDA2EE12/LanguageInterfacePack_x86_vi-vn.exe&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;http://download.microsoft.com/downlo..._x86_vi-vn.exe&lt;/a&gt;&amp;nbsp;(bản 32-bit, dung lượng 16,65MB), hoặc&amp;nbsp;&lt;a href=&quot;http://download.microsoft.com/download/F/A/F/FAFAAE96-4D17-4C04-86CF-4D55FDA2EE12/LanguageInterfacePack_x64_vi-vn.exe&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;http://download.microsoft.com/downlo..._x64_vi-vn.exe&lt;/a&gt;&amp;nbsp;(bản 64-bit, dung lượng 18,18MB).&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Tải xong, bạn nhấp đ&amp;ocirc;i v&amp;agrave;o file .exe để tiến h&amp;agrave;nh c&amp;agrave;i th&amp;ecirc;m ng&amp;ocirc;n ngữ Việt cho Microsoft Office 2010. Tr&amp;ecirc;n hộp thoại xuất hiện, bạn đ&amp;aacute;nh dấu v&amp;agrave;o &amp;ocirc;&amp;nbsp;Bấm v&amp;agrave;o đ&amp;acirc;y để chấp thuận Điều khoản Cấp ph&amp;eacute;p Phần mềm của Microsoft&amp;nbsp;rồi nhấn&amp;nbsp;Tiếp tục&amp;nbsp;đến khi thấy th&amp;ocirc;ng b&amp;aacute;o&amp;nbsp;Việc c&amp;agrave;i đặt đ&amp;atilde; ho&amp;agrave;n tất.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://farm01.gox.vn/photo/data/20110325/47574335/A8A2D9C81C7C53971DEECCA870FA1D87.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://farm01.gox.vn/photo/data/20110325/47574335/A8A2D9C81C7C53971DEECCA870FA1D87.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Tr&amp;ecirc;n giao diện Microsoft Office 2010, bạn v&amp;agrave;o menu&amp;nbsp;File &amp;gt; Options, chọn thẻ&amp;nbsp;Language. Sau đ&amp;oacute;, bạn lần lượt nhấp v&amp;agrave;o ng&amp;ocirc;n ngữVietnamese&amp;nbsp;tại ba khung dưới trường&amp;nbsp;Choose Editing Languages&amp;nbsp;v&amp;agrave;&amp;nbsp;Choose Display&amp;nbsp;and&amp;nbsp;Help Languages,&amp;nbsp;rồi nhấn&amp;nbsp;Set as Default.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://farm01.gox.vn/photo/data/20110325/47574335/C286EC0D41B87C140C0BD70802279587.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://farm01.gox.vn/photo/data/20110325/47574335/C286EC0D41B87C140C0BD70802279587.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Xong, bạn nhấn&amp;nbsp;OK&amp;nbsp;v&amp;agrave; khởi động lại Microsoft Office 2010 để thấy giao diện c&amp;aacute;c chương tr&amp;igrave;nh Word 2010, Excel 2010, Powerpoint 2010,... chuyển sang tiếng Việt.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;a href=&quot;http://farm01.gox.vn/photo/data/20110325/47574335/C1C4A46CDC35F4A608DECD2D6C638E68.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://farm01.gox.vn/photo/data/20110325/47574335/C1C4A46CDC35F4A608DECD2D6C638E68.jpg&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu đ&amp;atilde; tiếp x&amp;uacute;c với Microsoft Office 2010 giao diện tiếng Anh từ l&amp;acirc;u, c&amp;oacute; lẽ bạn sẽ cảm thấy &amp;quot;bở ngỡ&amp;quot; với giao diện tiếng Việt. C&amp;ograve;n nếu bạn l&amp;agrave; &amp;quot;d&amp;acirc;n tay mơ&amp;quot;, giao diện với c&amp;aacute;c menu lệnh tiếng Việt sẽ gi&amp;uacute;p &amp;iacute;ch rất nhiều cho bạn trong việc kh&amp;aacute;m ph&amp;aacute; Microsoft Office&lt;/span&gt;&lt;/p&gt;', 'office2010-tieng-viet', '', '', '', '', '', 'tinhte.vn', 0, 0, 'upload/upload_small_1301060656_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 11:53:54', 'admin', '2012-11-28 11:53:54');
INSERT INTO `media` VALUES (121, 'default13540797161', '', 'media_news', '[107]', 'admin', 'Tuyệt chiêu phát Wifi từ laptop sử dụng Windows 7', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn chỉ c&amp;oacute; loại modem Internet 1 cổng, nhưng lại c&amp;oacute; nhiều thiết bị muốn kết nối Internet? Bạn đang sở hữu cả laptop, smartphone, m&amp;aacute;y t&amp;iacute;nh bảng&amp;hellip; nhưng kết nối Internet của bạn kh&amp;ocirc;ng c&amp;oacute; Wifi để chia sẻ rộng r&amp;atilde;i? Mọi vấn đề sẽ được giải đ&amp;aacute;p ho&amp;agrave;n to&amp;agrave;n với Connectify.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Để tạo s&amp;oacute;ng wifi từ modem th&amp;ocirc;ng thường, bạn cần phải mua loại thiết bị với t&amp;ecirc;n gọi Wireless Acess Point với gi&amp;aacute; th&amp;agrave;nh kh&amp;aacute; đắt. Một v&amp;agrave;i loại smartphone đời mới hiện nay cũng c&amp;oacute; t&amp;iacute;nh năng Wifi Hotspot, cho ph&amp;eacute;p tạo s&amp;oacute;ng wifi cho c&amp;aacute;c thiết bị l&amp;acirc;n cận sử dụng, tuy nhi&amp;ecirc;n kh&amp;ocirc;ng phải ai cũng c&amp;oacute; điều kiện sở hữu những chiếc smartphone n&amp;agrave;y.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Tuy nhi&amp;ecirc;n, với sự gi&amp;uacute;p đỡ của Connectify, bạn sẽ kh&amp;ocirc;ng phải tốn đồng n&amp;agrave;o để ph&amp;aacute;t s&amp;oacute;ng Wifi cho cả nh&amp;agrave; c&amp;ugrave;ng sử dụng. Tuy nhi&amp;ecirc;n, điều kiện ti&amp;ecirc;n quyết đ&amp;oacute; l&amp;agrave; bạn phải đang sở hữu 1 chiếc laptop chạy tr&amp;ecirc;n Windows 7.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Connectify l&amp;agrave; c&amp;ocirc;ng cụ miễn ph&amp;iacute;, sẽ biến chiếc laptop Windows 7 (v&amp;agrave; đang kết nối Internet) của bạn th&amp;agrave;nh 1 trạm ph&amp;aacute;t s&amp;oacute;ng wifi miễn ph&amp;iacute;, từ đ&amp;oacute;, c&amp;aacute;c thiết bị b&amp;ecirc;n ngo&amp;agrave;i như smartphone hay c&amp;aacute;c laptop kh&amp;aacute;c&amp;hellip; c&amp;oacute; thể dễ d&amp;agrave;ng truy cập Internet th&amp;ocirc;ng qua wifi do laptop Windows 7 tạo ra, m&amp;agrave; kh&amp;ocirc;ng cần phải kết nối trực tiếp với modem.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Để sử dụng Connectify, bạn thực hiện theo c&amp;aacute;c bước dưới đ&amp;acirc;y.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Cập nhật driver cho card mạng:&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Để sử dụng Connectify đạt được hiệu quả cao nhất, việc đầu ti&amp;ecirc;n bạn cần l&amp;agrave;m l&amp;agrave; update driver của card mạng m&amp;agrave; laptop đang sử dụng.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Để thực hiện điều n&amp;agrave;y, bạn c&amp;oacute; thể nhờ đến sự trợ gi&amp;uacute;p của phần mềmDevice Doctor, 1 trong những phần mềm tự động cập nhật driver tốt nhất hiện nay.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Download Device Doctor miễn ph&amp;iacute; tại &lt;a href=&quot;http://traitimyenbai.net/forum/download.php?referal=http://htwares.com/windows/system-utilities/system-update/device-doctor/&quot; target=&quot;_blank&quot;&gt;đ&amp;acirc;y&lt;/a&gt;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Sau khi c&amp;agrave;i đặt, từ giao diện ch&amp;iacute;nh, nhấn n&amp;uacute;t Begin Scan để phần mềm tự động qu&amp;eacute;t v&amp;agrave; kiểm tra bản cập nhật driver c&amp;aacute;c thiết bị tr&amp;ecirc;n hệ thống.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/08/Connectify0_57eab.jpg&quot; /&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sau khi ho&amp;agrave;n tất qu&amp;aacute; tr&amp;igrave;nh qu&amp;eacute;t v&amp;agrave; kiểm tra, từ danh s&amp;aacute;ch c&amp;aacute;c driver cần cập nhật, bạn chọn loại driver tương ứng cho card mạng m&amp;agrave; m&amp;aacute;y t&amp;iacute;nh đang sử dụng (l&amp;agrave; loại driver c&amp;oacute; biểu tượng kết nối mạng như h&amp;igrave;nh minh họa b&amp;ecirc;n dưới)&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/08/Connectify1_30d52.jpg&quot; /&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nhấn v&amp;agrave;o n&amp;uacute;t Download Update, cửa sổ tr&amp;igrave;nh duyệt web sẽ tự động bật mở. Tại đ&amp;acirc;y, bạn nhấn v&amp;agrave;o mục Download Driver Installer để download bản cập nhật cho driver.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/08/Connectify2_84633.jpg&quot; /&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sau khi download, tiến h&amp;agrave;nh c&amp;agrave;i đặt bản cập nhật driver như phần mềm b&amp;igrave;nh thường.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	C&amp;agrave;i đặt Connectify v&amp;agrave; bắt đầu thiết lập để ph&amp;aacute;t s&amp;oacute;ng Wifi&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Download Connectify miễn ph&amp;iacute; tại &lt;a href=&quot;http://traitimyenbai.net/forum/download.php?referal=http://soft4all.info/free-software-download/connectify-turn-your-windows-7-laptop-into-a-wifi-hotspot/&quot; target=&quot;_blank&quot;&gt;đ&amp;acirc;y&lt;/a&gt; hoặc tại &lt;a href=&quot;http://traitimyenbai.net/forum/download.php?referal=http://htwares.com/windows/network-internet/other/connectify/&quot; target=&quot;_blank&quot;&gt;đ&amp;acirc;y&lt;/a&gt;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Trong qu&amp;aacute; tr&amp;igrave;nh c&amp;agrave;i đặt, phần mềm sẽ y&amp;ecirc;u cầu bạn c&amp;agrave;i đặt k&amp;egrave;m th&amp;ecirc;m phần mềm DriverScanner, khi gặp phải bước n&amp;agrave;y, bạn chọn t&amp;ugrave;y chọn No (như h&amp;igrave;nh minh họa b&amp;ecirc;n dưới) v&amp;agrave; nhấn Install để bắt đầu c&amp;agrave;i đặt.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/08/Connectify3_d970c.jpg&quot; /&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sau khi ho&amp;agrave;n tất qu&amp;aacute; tr&amp;igrave;nh c&amp;agrave;i đặt, biểu tượng của phần mềm sẽ xuất hiện ở tr&amp;ecirc;n khay hệ thống, đồng thời 1 hộp thoại hiện ra cho ph&amp;eacute;p bạn thiết lập phần mềm theo từng bước. Tuy nhi&amp;ecirc;n hộp thoại n&amp;agrave;y kh&amp;ocirc;ng thực sự cần thiết, nhấn Cancel để bỏ qua hộp thoại n&amp;agrave;y.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/08/Connectify4_c7479.jpg&quot; /&gt; &lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;B&amp;acirc;y giờ, k&amp;iacute;ch đ&amp;ocirc;i v&amp;agrave;o biểu tượng của phần mềm tr&amp;ecirc;n khay hệ thống. Từ giao diện hiện ra, bạn đặt t&amp;ecirc;n cho mạng Wifi m&amp;agrave; m&amp;igrave;nh khởi tạo tại mục Wi-Fi Name, điền mật khẩu để kết nối Wifi tại mục Password.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Lưu &amp;yacute;: Password phải c&amp;oacute; số k&amp;yacute; tự nằm trong khoảng 8-15.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Tại mục Internet, bạn chọn loại kết nối Internet m&amp;agrave; laptop bạn đang sử dụng. Th&amp;ocirc;ng thường, bạn sẽ đang sử dụng Internet trực tiếp từ modem th&amp;ocirc;ng qua d&amp;acirc;y nối, sau đ&amp;oacute; mới ph&amp;aacute;t Wifi đến c&amp;aacute;c thiết bị kh&amp;aacute;c. Do vậy, tại đ&amp;acirc;y bạn chọn Local Area Network.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Cuối c&amp;ugrave;ng, nhấn n&amp;uacute;t Start Hotspot.&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/08/Connectify5_fe271.jpg&quot; /&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Chờ trong gi&amp;acirc;y l&amp;aacute;t để Connectify bắt đầu qu&amp;aacute; tr&amp;igrave;nh ph&amp;aacute;t s&amp;oacute;ng Wifi từ laptop. Một khi n&amp;uacute;t Start Hotspot chuyển th&amp;agrave;nh n&amp;uacute;t Stop Hotspot, nghĩa l&amp;agrave; Connectify đ&amp;atilde; ho&amp;agrave;n tất việc ph&amp;aacute;t s&amp;oacute;ng wifi từ laptop.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Lưu &amp;yacute;: trong trường hợp bạn qu&amp;ecirc;n mật khẩu wifi m&amp;igrave;nh đ&amp;atilde; khởi tạo tr&amp;ecirc;n Connectify, c&amp;oacute; thể nhấn v&amp;agrave;o n&amp;uacute;t View b&amp;ecirc;n cạnh &amp;ocirc; điền mật khẩu để xem lại mật khẩu m&amp;igrave;nh đ&amp;atilde; khởi tạo.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Giờ đ&amp;acirc;y, c&amp;aacute;c thiết bị b&amp;ecirc;n ngo&amp;agrave;i muốn kết nối v&amp;agrave;o Wifi do laptop đang tạo ra th&amp;igrave; chỉ việc mở t&amp;iacute;nh năng Wifi, d&amp;ograve; t&amp;igrave;m kết nối, điền mật khẩu v&amp;agrave; truy cập mạng wifi tương tự như c&amp;aacute;c điểm ph&amp;aacute;t wifi th&amp;ocirc;ng thường.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Tr&amp;ecirc;n giao diện ch&amp;iacute;nh của Connectify sẽ hiển thị danh s&amp;aacute;ch c&amp;aacute;c thiết bị đang kết nối v&amp;agrave;o hệ thống Wifi do bạn tạo ra, từ đ&amp;acirc;y bạn c&amp;oacute; thể biết được c&amp;oacute; thiết bị n&amp;agrave;o đang &amp;ldquo;c&amp;acirc;u trộm&amp;rdquo; s&amp;oacute;ng Wifi của bạn hay kh&amp;ocirc;ng. Để ngừng việc ph&amp;aacute;t s&amp;oacute;ng Wifi từ laptop, bạn chỉ việc nhấn n&amp;uacute;t Stop Hotspot tr&amp;ecirc;n giao diện của phần mềm.&lt;/span&gt;&lt;/p&gt;', 'tuyet-chieu-phat-wifi-tu-laptop-su-dung-window-7', '', '', '', '', '', 'dantri', 0, 0, 'upload/upload_1313719969_180x180.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 12:15:16', 'admin', '2012-11-28 12:15:16');
INSERT INTO `media` VALUES (122, 'default13540804461', '', 'media_news', '[107]', 'admin', 'Thiết lập truy cập từ xa với địa chỉ IP động', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Một số người d&amp;ugrave;ng gặp phải vấn đề với kết nối từ xa chỉ v&amp;igrave; m&amp;aacute;y t&amp;iacute;nh của họ sử dụng địa chỉ IP động&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;uy nhi&amp;ecirc;n c&amp;oacute; nhiều c&amp;aacute;ch c&amp;oacute; thể khắc phục được vấn đề n&amp;agrave;y v&amp;agrave; ch&amp;uacute;ng t&amp;ocirc;i muốn giới thiệu cho c&amp;aacute;c bạn một trong c&amp;aacute;c c&amp;aacute;ch thực hiện đ&amp;oacute;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Lưu &amp;yacute;: Đ&amp;acirc;y chỉ l&amp;agrave; giải ph&amp;aacute;p khắc phục vấn đề IP động do đ&amp;oacute; hướng dẫn kh&amp;ocirc;ng tập trung v&amp;agrave;o giới thiệu việc cấu h&amp;igrave;nh m&amp;aacute;y t&amp;iacute;nh của bạn l&amp;agrave;m một desktop từ xa. Th&amp;ecirc;m v&amp;agrave;o đ&amp;oacute;, bạn cần phải cấu h&amp;igrave;nh tường lửa để cho ph&amp;eacute;p lưu kết nối gửi đến v&amp;agrave; cũng cấu h&amp;igrave;nh router đến cổng chuyển tiếp kết nối.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Để giải quyết vấn đề với một m&amp;aacute;y t&amp;iacute;nh c&amp;oacute; IP động, ch&amp;uacute;ng ta cần c&amp;oacute; một địa chỉ DNS c&amp;oacute; thể cập nhật địa chỉ IP một c&amp;aacute;ch đều đặn. Đ&amp;acirc;y l&amp;agrave; một DNS tĩnh, tuy nhi&amp;ecirc;n địa chỉ IP m&amp;agrave; n&amp;oacute; đang trỏ đến lại thay đổi li&amp;ecirc;n tục. Bằng c&amp;aacute;ch trỏ thiết bị từ xa của bạn đến DNS tĩnh n&amp;agrave;y, bạn sẽ c&amp;oacute; thể kết nối đến m&amp;aacute;y t&amp;iacute;nh của m&amp;igrave;nh bằng IP động.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Dưới đ&amp;acirc;y l&amp;agrave; c&amp;aacute;ch thực hiện:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;1. V&amp;agrave;o &lt;a href=&quot;https://www.dyndns.com/account/services/hosts/add.html&quot; target=&quot;_blank&quot;&gt;DynDNS&lt;/a&gt; v&amp;agrave; nhập v&amp;agrave;o hostname. Trong trường hợp n&amp;agrave;y, ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; sử dụng hostname c&amp;oacute; t&amp;ecirc;n &amp;ldquo;damien&amp;rdquo;. Tiếp đến, k&amp;iacute;ch li&amp;ecirc;n kết &amp;ldquo;Your current location&amp;rsquo;s IP address is &amp;hellip;&amp;rdquo; để nhập v&amp;agrave;o địa chỉ IP hiện h&amp;agrave;nh. Khi đ&amp;atilde; thực hiện xong, k&amp;iacute;ch &amp;ldquo;Add to cart&amp;rdquo;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;dyndns-hostname&quot; border=&quot;0&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/032011/11/IP2.png&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;2. Thao t&amp;aacute;c tr&amp;ecirc;n sẽ nhắc nhở bạn tạo một t&amp;agrave;i khoản. Sau đ&amp;oacute; n&amp;oacute; sẽ gửi đến bạn một email k&amp;iacute;ch hoạt. K&amp;iacute;ch v&amp;agrave;o li&amp;ecirc;n kết trong email đ&amp;oacute; để k&amp;iacute;ch hoạt dịch vụ.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;3. Đăng nhập v&amp;agrave;o t&amp;agrave;i khoản DynDNS của bạn v&amp;agrave; k&amp;iacute;ch li&amp;ecirc;n kết &amp;ldquo;Dynamic DNS Host&amp;rdquo; tr&amp;ecirc;n sidebar. K&amp;iacute;ch &amp;ldquo;Checkout to Activate&amp;ldquo;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;dyndns-checkout&quot; border=&quot;0&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/032011/11/IP3.png&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;4. Bạn cần phải c&amp;agrave;i đặt m&amp;aacute;y kh&amp;aacute;ch n&amp;acirc;ng cấp DNS trong m&amp;aacute;y t&amp;iacute;nh của m&amp;igrave;nh. M&amp;aacute;y kh&amp;aacute;ch n&amp;acirc;ng cấp n&amp;agrave;y sẽ khai b&amp;aacute;o một c&amp;aacute;ch li&amp;ecirc;n tục m&amp;aacute;y chủ DNS của địa chỉ IP, v&amp;igrave; vậy n&amp;oacute; c&amp;oacute; thể thay đổi địa chỉ IP đi theo. Với Windows v&amp;agrave; Mac, bạn c&amp;oacute; thể c&amp;agrave;i đặt &lt;a href=&quot;http://www.dyndns.com/support/clients/&quot; target=&quot;_blank&quot;&gt;DynDNS Updater&lt;/a&gt;. Phần mềm m&amp;aacute;y kh&amp;aacute;ch n&amp;agrave;y được cung cấp sẵn cho cả Windows v&amp;agrave; Mac. Với Linux, bạn c&amp;oacute; thể thử ddclient. (Lưu &amp;yacute;: một số router hỗ trợ DNS động. Bạn c&amp;oacute; thể kiểm tra cấu h&amp;igrave;nh router của m&amp;igrave;nh trước khi c&amp;agrave;i đặt c&amp;aacute;c phần mềm).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Trong trường hợp n&amp;agrave;y, ch&amp;uacute;ng t&amp;ocirc;i d&amp;agrave;nh sự tập trung v&amp;agrave;o Linux v&amp;igrave; c&amp;agrave;i đặt n&amp;agrave;y phức tạp hơn.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;5. Download &lt;a href=&quot;http://cdn.dyndns.com/ddclient.tar.gz&quot; target=&quot;_blank&quot;&gt;ddclient&lt;/a&gt;. Tr&amp;iacute;ch r&amp;uacute;t file tar v&amp;agrave;o thư mục chủ Home. Mở thư mục ddclient sau đ&amp;oacute; để thư mục ở trạng th&amp;aacute;i mở v&amp;agrave; kh&amp;ocirc;ng thực hiện bất cứ việc g&amp;igrave; hết.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;6. V&amp;agrave;o &lt;a href=&quot;http://www.dyndns.com/support/tools/clientconfig.html&quot; target=&quot;_blank&quot;&gt;DynDNS Update Client Configurator&lt;/a&gt;, chọn hostname m&amp;agrave; bạn muốn sử dụng v&amp;agrave; ddclient, sau đ&amp;oacute; k&amp;iacute;ch &amp;ldquo;Generate&amp;rdquo;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;img alt=&quot;dyndns-generate-conf&quot; border=&quot;0&quot; src=&quot;http://www.quantrimang.com.vn/photos/image/032011/11/IP4.png&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;7. Copy v&amp;agrave; paste đoạn m&amp;atilde; dưới đ&amp;acirc;y v&amp;agrave;o tr&amp;igrave;nh soạn thảo văn bản. Bạn sẽ để &amp;yacute; thấy ở phần giữa c&amp;oacute; d&amp;ograve;ng password=##YOUR PASSWORD##. Thay thế ##YOUR PASSWORD## bằng mật khẩu đăng nhập DNS. Lưu file dưới dạng &amp;ldquo;ddclient.conf&amp;rdquo; (kh&amp;ocirc;ng cần dấu tr&amp;iacute;ch dẫn) trong thư mục ddclient.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;8. Tiếp đến, mở một terminal v&amp;agrave; đ&amp;aacute;nh:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;cd ddclient&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;sudo cp ddclient /usr/sbin/&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;sudo mkdir /etc/ddclient&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;sudo cp ddclient.conf /etc/ddclient/ddclient.conf&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;9. Cuối c&amp;ugrave;ng, khởi chạy ddclient bằng d&amp;ograve;ng lệnh&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;ddclient&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Cho đến đ&amp;acirc;y bạn c&amp;oacute; thể cấu h&amp;igrave;nh m&amp;aacute;y t&amp;iacute;nh của m&amp;igrave;nh l&amp;agrave;m việc như một desktop từ xa. Tất cả những g&amp;igrave; cần thực hiện ở đ&amp;acirc;y l&amp;agrave; trỏ thiết bị kết nối của m&amp;igrave;nh đến DynDNS của bạn.&lt;/span&gt;&lt;/p&gt;', 'thiet-lap-truy-cap-tu-xa-voi-dia-chi-ip-dong', '', '', '', '', '', 'quantrimang.com.vn', 0, 0, 'upload/upload_1301534020_176x176.png.jpg', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 12:28:13', 'admin', '2012-11-28 12:28:13');
INSERT INTO `media` VALUES (123, 'default13540806211', '', 'media_news', '[107]', 'admin', 'Cài đặt Windows Phone 7 cho HTC HD2', '', '', 'vn', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Sau đ&amp;acirc;y ch&amp;uacute;ng t&amp;ocirc;i sẽ hướng dẫn bạn c&amp;agrave;i đặt&lt;/span&gt;&lt;/p&gt;', '&lt;p align=&quot;justify&quot; class=&quot;indexhometext&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: red;&quot;&gt;&lt;b&gt;lưu &amp;yacute; (vui l&amp;ograve;ng đọc kỹ trước khi c&amp;agrave;i đặt):&lt;/b&gt;&lt;/span&gt;&lt;br /&gt;\r\n	- window live services chỉ c&amp;oacute; thể k&amp;iacute;ch hoạt ở những nước m&amp;agrave; c&amp;oacute; sự hỗ trợ của microsoft custumer services ( bắt buộc phải gọi đt li&amp;ecirc;n lạc để xin code activation cho phone ^^!)&lt;br /&gt;\r\n	- khi c&amp;agrave;i window 7, m&amp;aacute;y sẽ format lại thẻ nhớ, y&amp;ecirc;u cầu back up lại dữ liệu trong m&amp;aacute;y trước khi c&amp;agrave;i&lt;br /&gt;\r\n	- window 7 sẽ format thẻ nhớ theo định dạng ri&amp;ecirc;ng, ngo&amp;agrave;i ra việc th&amp;aacute;o thẻ nhớ sẽ l&amp;agrave;m hỏng bộ nhớ m&amp;aacute;y cho n&amp;ecirc;n nếu v&amp;igrave; l&amp;yacute; do n&amp;agrave;o đ&amp;oacute; m&amp;agrave; lỡ th&amp;aacute;o thẻ nhớ th&amp;igrave; bắt buộc phải hard reset m&amp;aacute;y.&lt;br /&gt;\r\n	- c&amp;oacute; 1 số thẻ nhớ ko th&amp;iacute;ch hợp với window 7 cho n&amp;ecirc;n m&amp;aacute;y chạy ngon hay reboot li&amp;ecirc;n tục l&amp;agrave; phụ thuộc v&amp;agrave;o thẻ nhớ bạn đang d&amp;ugrave;ng&lt;br /&gt;\r\n	- hiện giờ chưa c&amp;oacute; danh s&amp;aacute;ch t&amp;ecirc;n/ loại thẻ nhớ n&amp;agrave;o ph&amp;ugrave; hợp với window7, thẻ nhớ n&amp;agrave;o l&amp;agrave; ko ph&amp;ugrave; hợp. Mặc d&amp;ugrave; vậy, theo đ&amp;aacute;nh gi&amp;aacute; của đại đa số th&amp;igrave; thẻ nhớ nguy&amp;ecirc;n bản đi k&amp;egrave;m với điện thoại d&amp;ugrave;ng với wm7 kh&amp;aacute; tốt. ------------------------------------------------------------------------------------&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;bbcode_container&quot;&gt;\r\n	&lt;div class=&quot;bbcode_quote&quot;&gt;\r\n		&lt;div class=&quot;quote_container&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: red;&quot;&gt;&lt;b&gt;c&amp;agrave;i đặt window7 cho htc hd2&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n			&lt;ol class=&quot;decimal&quot;&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Thẻ nhớ của m&amp;aacute;y n&amp;ecirc;n format trước ( c&amp;oacute; thể format = chức năng format của window-ko chọn quick format, hoặc download soft sdformat-search google) như thế khi c&amp;agrave;i, bạn ko cần đợi l&amp;acirc;u cho qu&amp;aacute; tr&amp;igrave;nh format thẻ nhớ.&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- download link &lt;a href=&quot;http://adf.ly/IImW&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;ở đ&amp;acirc;y&lt;/a&gt; ( đợi 5s, click skip ad)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- m&amp;aacute;y đ&amp;atilde; được HSPL 2.08 (qua box window 6.5 để xem hướng dẫn)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- đưa m&amp;aacute;y về bootloader của window 6.5( tắt nguồn, xong bật nguồn trong l&amp;uacute;c nhấn n&amp;uacute;t volume down)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- v&amp;agrave;o folder magldr, chạy updateromutility.exe (click chuột phải , chọn run as administration th&amp;igrave; tốt hơn)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- sau khi flash magldr 1.12 xong, m&amp;aacute;y sẽ khởi động v&amp;agrave;o menu magldr, d&amp;ugrave;ng n&amp;uacute;t volume down, di chuyển xuống v&amp;agrave; chọn mục 5:usb flasher&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- kết nối m&amp;aacute;y đt với m&amp;aacute;y t&amp;iacute;nh ( nếu m&amp;aacute;y đ&amp;atilde; kết nối từ trước th&amp;igrave; cứ để vậy lu&amp;ocirc;n). Kiểm tra đt đ&amp;atilde; kết nối với m&amp;aacute;y t&amp;iacute;nh&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- v&amp;agrave;o folder leo70_rom, chạy dwi.exe (chọn run as administration c&amp;agrave;ng tốt). Sau đ&amp;oacute; l&amp;agrave; đợi&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- lần đầu khởi động m&amp;aacute;y, bạn phải đợi kh&amp;aacute; l&amp;acirc;u để cho m&amp;aacute;y format lại sd card. Sau khi m&amp;aacute;y format thẻ nhớ xong, sẽ tự boot, đừng n&amp;ocirc;n n&amp;oacute;ng.(nếu bạn đ&amp;atilde; format thẻ nhớ từ trước th&amp;igrave; qu&amp;aacute; tr&amp;igrave;nh boot sẽ diễn ra nhanh hơn)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- cuối c&amp;ugrave;ng l&amp;agrave; xong&lt;/span&gt;&lt;/li&gt;\r\n			&lt;/ol&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;- chức năng của c&amp;aacute;c ph&amp;iacute;m cứng:&lt;/span&gt;&lt;br /&gt;\r\n			&lt;ul&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;n&amp;uacute;t gọi/xanh: Camera&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;nut home: Search&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;nut menu/win: M&amp;agrave;n h&amp;igrave;nh home&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;nut mũi t&amp;ecirc;n/back: L&amp;ugrave;i&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;nut tắt cuộc gọi/đỏ: Nguồn&lt;/span&gt;&lt;/li&gt;\r\n			&lt;/ul&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;------------------------------------------------------------------------------&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;bbcode_container&quot;&gt;\r\n	&lt;div class=&quot;bbcode_quote&quot;&gt;\r\n		&lt;div class=&quot;quote_container&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: red;&quot;&gt;&lt;b&gt;format lại thẻ nhớ trong trường hợp ko muốn d&amp;ugrave;ng window 7 nửa&lt;/b&gt;&lt;/span&gt;&lt;br /&gt;\r\n			1. Download phần mềm mini partitionwizard &lt;a href=&quot;http://www.partitionwizard.com/download.html&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;ở đ&amp;acirc;y,&lt;/a&gt; v&amp;agrave; c&amp;agrave;i đặt&lt;br /&gt;\r\n			2. Sau khi c&amp;agrave;i, chạy partitionwizard, bỏ thẻ nhớ v&amp;agrave;o, n&amp;oacute; sẽ hiện l&amp;ecirc;n thẻ nhớ của bạn chia l&amp;agrave;m 2 ổ đĩa: 1 ổ 200mb, 1 ổ c&amp;ograve;n lại l&amp;agrave; unknown. Click v&amp;agrave;o mỗi ổ , xong click delete partition&lt;br /&gt;\r\n			3. Sau khi delete cả 2 ổ, to&amp;agrave;n bộ thẻ nhớ sẽ hiện thị dưới dạng 1 ổ đĩa với unknown format, click v&amp;agrave;o phần thẻ nhớ trong của sổ của partitionwizard, click chuột phải, create=&amp;gt; đặt t&amp;ecirc;n lại thẻ nhớ, chọn định dạng fat32...&lt;br /&gt;\r\n			4. Sau đ&amp;oacute;, click v&amp;agrave;o biểu tưởng đấu &lt;a href=&quot;http://www.mvpsatellitesports.com/images/check_mark.jpg&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;&quot; border=&quot;0&quot; src=&quot;http://www.mvpsatellitesports.com/images/check_mark.jpg&quot; /&gt;&lt;/a&gt; (apply) ở thanh tr&amp;ecirc;n c&amp;ugrave;ng trong cửa sổ partitionwizard để thực hiện y&amp;ecirc;u cầu m&amp;agrave; bạn đ&amp;atilde; thiết lập trong bước 2 v&amp;agrave; 3&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;---------------------------------------------------------------------------------&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;bbcode_container&quot;&gt;\r\n	&lt;div class=&quot;bbcode_quote&quot;&gt;\r\n		&lt;div class=&quot;quote_container&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: red;&quot;&gt;&lt;b&gt;c&amp;aacute;ch để hard reset m&amp;aacute;y khi chạy window 7&lt;/b&gt;&lt;/span&gt;&lt;br /&gt;\r\n			1. Tắt nguồn&lt;br /&gt;\r\n			2. Bật nguồn trở lại, khi m&amp;agrave;n h&amp;igrave;nh đang khởi động ở bước đếm: 1234 th&amp;igrave; nhấn đồng thời n&amp;uacute;t volume down+ volume up cho đến khi m&amp;agrave;n h&amp;igrave;nh xuất hiện d&amp;ograve;ng th&amp;ocirc;ng b&amp;aacute;o&lt;br /&gt;\r\n			3. Nhấn volume down để hard reset&lt;/span&gt;&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;-----------------------------------------------------------------------------------------------&lt;/span&gt;&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div class=&quot;bbcode_container&quot;&gt;\r\n	&lt;div class=&quot;bbcode_quote&quot;&gt;\r\n		&lt;div class=&quot;quote_container&quot;&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: red;&quot;&gt;&lt;b&gt;c&amp;aacute;ch để k&amp;iacute;ch hoạt window live services- v&amp;agrave;o market,c&amp;agrave;i app....&lt;/b&gt;&lt;br /&gt;\r\n			&lt;span style=&quot;color: black;&quot;&gt;Vui l&amp;ograve;ng l&amp;agrave;m theo thứ tự&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;b&gt;A&lt;/b&gt;. ***phần mềm cần down về, c&amp;agrave;i tr&amp;ecirc;n m&amp;aacute;y t&amp;iacute;nh (c&amp;agrave;i từng phần mềm 1)&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n			&lt;ul&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Windows Development Tools - &lt;a href=&quot;http://create.msdn.com/en-us/home/getting_started&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;CLICK HERE&lt;/a&gt;. Phần mềm n&amp;agrave;y thời gian c&amp;agrave;i hơi l&amp;acirc;u, c&amp;aacute;c bạn đừng n&amp;ocirc;n n&amp;oacute;ng&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Zune PC App - &lt;a href=&quot;http://www.zune.net/products/software/download/default.htm&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;CLICK HERE&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;\r\n			&lt;/ul&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;b&gt;B.&lt;/b&gt; ***phần unlock/jailbreak điện thoại- gi&amp;uacute;p để c&amp;agrave;i app = tay(bạn tự t&amp;igrave;m/down app tr&amp;ecirc;n mạng, tự c&amp;agrave;i)&lt;/span&gt;&lt;br /&gt;\r\n			&lt;ol class=&quot;decimal&quot;&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Download Chevron - &lt;span style=&quot;color: black;&quot;&gt;&lt;a href=&quot;http://www.megaupload.com/?d=Q1T7WQMK&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;CLICK HERE&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Giải n&amp;eacute;n, sau đ&amp;oacute; chuyển file &lt;span style=&quot;color: darkgreen;&quot;&gt;ChevronWP7.exe&lt;/span&gt; v&amp;agrave;o ổ đĩa C tr&amp;ecirc;n m&amp;aacute;y t&amp;iacute;nh của bạn&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Download tiếp &lt;span style=&quot;color: darkorange;&quot;&gt;chevronwp7.cer&lt;/span&gt; - &lt;span style=&quot;color: black;&quot;&gt;&lt;a href=&quot;http://forum.xda-developers.com/attachment.php?attachmentid=453605&amp;amp;d=1291202069&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;CLICK HERE&lt;/a&gt;&lt;/span&gt; . giải n&amp;eacute;n&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Sau đ&amp;oacute;, bạn d&amp;ugrave;ng email của m&amp;igrave;nh, tạo gửi 1 email cho ch&amp;iacute;nh email của bạn. Trong email n&amp;agrave;y bạn h&amp;atilde;y đ&amp;iacute;nh k&amp;egrave;m file chevronwp7.cer&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Mở điện thoại l&amp;ecirc;n, đăng nhập v&amp;agrave;o email m&amp;agrave; bạn vừa d&amp;ugrave;ng ở tr&amp;ecirc;n. Bạn sẽ thấy email m&amp;agrave; bạn mới gửi k&amp;egrave;m với tập tin &lt;span style=&quot;color: darkorange;&quot;&gt;chevronwp7.cer&lt;/span&gt;. Click v&amp;agrave;o file đ&amp;iacute;nh k&amp;eacute;m, n&amp;oacute; sẽ hiện ra h&amp;igrave;nh c&amp;aacute;i khi&amp;ecirc;n, click tiếp th&amp;ecirc;m lần nửa để c&amp;agrave;i.&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Tiếp theo l&amp;agrave; nối điện thoại với m&amp;aacute;y t&amp;iacute;nh. Chạy phần mềm Zune m&amp;agrave; bạn đ&amp;atilde; c&amp;agrave;i ở bước A. Đợi cho m&amp;aacute;y c&amp;agrave;i đặt driver, sau đ&amp;oacute; bạn đặt t&amp;ecirc;n cho đt (&lt;span style=&quot;color: navy;&quot;&gt;n&amp;ecirc;n đặt t&amp;ecirc;n cho dễ nhớ, HD7 l&amp;agrave; hay nhất ^^&lt;/span&gt;)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;V&amp;agrave;o ổ C, click chuột phải v&amp;agrave;o file &lt;span style=&quot;color: darkgreen;&quot;&gt;chevronwp7.cer &lt;span style=&quot;color: black;&quot;&gt;m&amp;agrave; bạn đ&amp;atilde; copy từ trước, chọn run as administration. Sẽ hiện ra cửa sổ phần mềm &lt;/span&gt;chevronwp7.cer, &lt;span style=&quot;color: black;&quot;&gt;đ&amp;aacute;nh dấu v&amp;agrave;o 2 &amp;ocirc; vu&amp;ocirc;ng, chọn unlock. &lt;span style=&quot;color: red;&quot;&gt;Phải giữ cho m&amp;agrave;n h&amp;igrave;nh điện thoại lu&amp;ocirc;n s&amp;aacute;ng, ko được để điện thoại rơi v&amp;agrave;o trạng th&amp;aacute;i kh&amp;oacute;a m&amp;aacute;y, tắt m&amp;agrave;n h&amp;igrave;nh&lt;/span&gt;. Khi n&amp;agrave;o chữ unlock n&amp;oacute; hiện th&amp;agrave;nh relock th&amp;igrave; coi như bạn xong&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n			&lt;/ol&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;b&gt;C&lt;/b&gt;*** chỉnh sửa file hệ thống tr&amp;ecirc;n điện thoại&lt;/span&gt;&lt;br /&gt;\r\n			&lt;ol class=&quot;decimal&quot;&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Vẫn giữ nguy&amp;ecirc;n điện thoại nối với m&amp;aacute;y t&amp;iacute;nh&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Tải file XBMOD Deployer - &lt;a href=&quot;http://localhostr.com/file/vSPCa1C/XBMODDeployer.xap&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;CLICK HERE&lt;/a&gt;, giải n&amp;eacute;n được file XBMODDeployer.xap&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Bật thanh startmenu tr&amp;ecirc;n m&amp;aacute;y t&amp;iacute;nh của bạn, trong &amp;ocirc; search , g&amp;otilde; từ sau: &lt;i&gt;Application Deployment&lt;/i&gt;&lt;b&gt;. &lt;/b&gt;đ&amp;acirc;y l&amp;agrave; phần mềm đ&amp;atilde; được c&amp;agrave;i đặt từ trước trong bước A. Sau khi thấy phần mềm&lt;i&gt;Application Deployment,&lt;/i&gt; chạy phần mềm n&amp;agrave;y&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Trong cửa sổ của Application Deployment, click browser, t&amp;igrave;m đường dẫn đến file XBMODDeployer.xap m&amp;agrave; bạn đ&amp;atilde; giải n&amp;eacute;n ở tr&amp;ecirc;n, xong chọn deploy. Lưu &amp;yacute; lu&amp;ocirc;n giữ cho m&amp;agrave;n h&amp;igrave;nh điện thoại lu&amp;ocirc;n s&amp;aacute;ng ( ko được để đt v&amp;agrave;o chế độ chờ)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Sau qu&amp;aacute; tr&amp;igrave;nh n&amp;agrave;y, bật đt l&amp;ecirc;n, v&amp;agrave;o mục application bạn sẽ thấy c&amp;oacute; phần mềm XBMOD...., click v&amp;agrave;o phần mềm n&amp;agrave;y để n&amp;oacute; tạo file Custclear.provxml ( file n&amp;agrave;y nằm trong thư mục my document/my ringtones tr&amp;ecirc;n điện thoại của bạn)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Tiếp theo l&amp;agrave; down touchxplorer &lt;a href=&quot;http://forum.xda-developers.com/attachment.php?attachmentid=488338&amp;amp;stc=1&amp;amp;d=1294901481&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;CLICK HERE&lt;/a&gt;, giải n&amp;eacute;n&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;agrave;i phần mềm touchxplorer.xap theo c&amp;aacute;ch m&amp;agrave; bạn c&amp;agrave;i XBMODdeveloper ở tr&amp;ecirc;n&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Trong điện thoại của bạn sẽ c&amp;oacute; phần mềm Xplorer, click đ&amp;ocirc;i v&amp;agrave;o đ&amp;oacute;, t&amp;igrave;m folder my documents=&amp;gt;my ringtones=&amp;gt; sẽ c&amp;oacute; file Custclear.provxml. click v&amp;agrave;o file n&amp;agrave;y, sau đ&amp;oacute; bấm v&amp;agrave;o n&amp;uacute;t . . . ở g&amp;oacute;c m&amp;agrave;n h&amp;igrave;nh đt, chọn copy. Bạn thả file n&amp;agrave;y v&amp;agrave;o thử mục windows tr&amp;ecirc;n đt ( thư mục n&amp;agrave;y c&amp;oacute; nhiều file cho n&amp;ecirc;n xplorer mở n&amp;oacute; hơi l&amp;acirc;u, bạn n&amp;ecirc;n đợi một l&amp;uacute;c)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Tiếp theo l&amp;agrave; Download HTC Connection Setup - &lt;a href=&quot;http://forum.xda-developers.com/attachment.php?attachmentid=488334&amp;amp;stc=1&amp;amp;d=1294900486&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;CLICK HERE&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;C&amp;agrave;i phần mềm n&amp;agrave;y như c&amp;aacute;ch đ&amp;atilde; c&amp;agrave;i 2 phần m&amp;ecirc;m tr&amp;ecirc;n kia&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Sau đ&amp;oacute; mở phần mềm l&amp;ecirc;n , v&amp;agrave; c&amp;agrave;i đặt mạng điện thoại theo như mạng m&amp;agrave; bạn đang d&amp;ugrave;ng&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu như phần c&amp;agrave;i đặt trong camera ko hiện l&amp;ecirc;n th&amp;igrave; bạn đổi ng&amp;ocirc; ngữ hiện thị sang usa ( display language)&lt;/span&gt;&lt;/li&gt;\r\n			&lt;/ol&gt;\r\n			&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;b&gt;D*** &lt;/b&gt;Gọi điện xin activation code&lt;/span&gt;&lt;br /&gt;\r\n			&lt;ol class=&quot;decimal&quot;&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- ở mĩ th&amp;igrave; gọi 1-800-642-7676. Nước kh&amp;aacute;c th&amp;igrave; bạn v&amp;agrave;o thử trang web của MS xem sao&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- Gặp thằng phụ tr&amp;aacute;ch kh&amp;aacute;ch h&amp;agrave;ng. N&amp;oacute; sẽ hỏi bạn d&amp;ugrave;ng sản phẩm n&amp;agrave;o của MS, rồi hỏi l&amp;yacute; do bạn gọi l&amp;agrave; g&amp;igrave;. Bạn chỉ cần n&amp;oacute;i l&amp;agrave; : need activation code for window phone 7.&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- Sau đ&amp;oacute; n&amp;oacute; sẽ hỏi bạn đang d&amp;ugrave;ng đt th&amp;igrave; bạn n&amp;oacute;i l&amp;agrave; HD7 ( tr&amp;ugrave;ng với t&amp;ecirc;n m&amp;agrave; bạn đ&amp;atilde; đặt cho đt khi kết nối với zune, đ&amp;atilde; đề cập ở tr&amp;ecirc;n)&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- Sau đ&amp;oacute; n&amp;oacute; sẽ hỏi sdt, email để li&amp;ecirc;n lạc. Bạn n&amp;ecirc;n cũng cấp địa chỉ email abcd@&lt;u&gt;&lt;a href=&quot;http://www.tinhte.vn/members/live-103257/&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;live&lt;/a&gt;&lt;/u&gt; .com cho n&amp;oacute; đồng nhất. Trước sau g&amp;igrave; bạn cũng phải cần c&amp;oacute; 1 @&lt;u&gt;&lt;a href=&quot;http://www.tinhte.vn/members/live-103257/&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;live&lt;/a&gt;&lt;/u&gt; .email để đăng nhập v&amp;agrave;o market place&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;-Sau đ&amp;oacute; n&amp;oacute; sẽ cho bạn 1 c&amp;aacute;i code c&amp;oacute; 25 chữ s&amp;ocirc;/k&amp;iacute; tự (xxxxx-xxxxx-xxxxx-xxxxx-xxxx). Bạn lưu lại số đ&amp;oacute;, cất kĩ để sau n&amp;agrave;y c&amp;oacute; c&amp;agrave;i lại th&amp;igrave; c&amp;ograve;n c&amp;oacute; code để m&amp;agrave; active . Đăng nhập email kh&amp;aacute;c d&amp;ugrave;ng code n&amp;agrave;y vẫn được&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;- L&amp;uacute;c n&amp;oacute; đưa code, kh&amp;ocirc;ng cần tắt cuộc gọi, cứ để n&amp;oacute; chờ. M&amp;igrave;nh đăng nhập v&amp;agrave;o market, chọn đại 1 phần mềm free n&amp;agrave;o đ&amp;oacute; để mua==&amp;gt;n&amp;oacute; bắt m&amp;igrave;nh sign in = @&lt;u&gt;&lt;a href=&quot;http://www.tinhte.vn/members/live-103257/&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;live&lt;/a&gt;&lt;/u&gt; .com email. M&amp;igrave;nh sign in nhưng n&amp;oacute; vẫn b&amp;aacute;o faild, v&amp;agrave; n&amp;oacute; tự động chuyển qua m&amp;agrave;n h&amp;igrave;nh để m&amp;igrave;nh nhập code. ( 5 &amp;ocirc; trống để nhập năm nh&amp;oacute;m) Nhập xong, ok . B&amp;acirc;y h bạn c&amp;oacute; thể mua app, c&amp;agrave;i app từ marketplace&lt;/span&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;span style=&quot;font-size:12px;&quot;&gt;Lưu &amp;yacute;: nếu c&amp;aacute;c bạn thử gọi từ VN, kh&amp;ocirc;ng n&amp;ecirc;n đề cập g&amp;igrave; đến việc bạn đang ở VN cả, đến khi n&amp;oacute; hỏi email, sđt th&amp;igrave; n&amp;ecirc;n đưa cho n&amp;oacute; 1 số đt ở mĩ (google) th&amp;igrave; c&amp;oacute; cơ hội th&amp;agrave;nh c&amp;ocirc;ng. Chứ nếu n&amp;oacute;i l&amp;agrave; Vn gọi sang th&amp;igrave; n&amp;oacute; sẽ đưa cho bạn sđt li&amp;ecirc;n lạc với MS việt nam v&amp;agrave; bạn ko c&amp;oacute; ch&amp;uacute;t cơ hội n&amp;agrave;o xin code được.&lt;/span&gt;&lt;/li&gt;\r\n			&lt;/ol&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;---------------------------------------------------------------------------------------------------------&lt;br /&gt;\r\n	&lt;span style=&quot;color: red;&quot;&gt;&lt;b&gt;C&amp;agrave;i app khi kh&amp;ocirc;ng activate được market place account&lt;/b&gt;&lt;/span&gt;&lt;br /&gt;\r\n	- Cơ bản việc active account chỉ l&amp;agrave; gi&amp;uacute;p bạn c&amp;oacute; thể v&amp;agrave;o market place , down/c&amp;agrave;i đặt app. Nhưng nếu bạn ko active được th&amp;igrave; bạn vẫn c&amp;oacute; thể c&amp;agrave;i app bằng tay&lt;br /&gt;\r\n	- Việc c&amp;agrave;i app = tay đ&amp;atilde; được k&amp;iacute;ch hoạt khi bạn c&amp;agrave;i chervon unlock .&lt;br /&gt;\r\n	- Bạn chỉ việc download app về ( file c&amp;oacute; đu&amp;ocirc;i .xap , v&amp;agrave; c&amp;agrave;i như đ&amp;atilde; hướng dẫn ở tr&amp;ecirc;n) Hoặc muốn c&amp;agrave;i nhanh hơn th&amp;igrave; down phần mềm &lt;b&gt;tom xap install &lt;/b&gt;&lt;a href=&quot;http://forum.xda-developers.com/showthread.php?t=860964&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;ở đ&amp;acirc;y&lt;/a&gt;&lt;br /&gt;\r\n	- Để kiếm app th&amp;igrave; tốt nhất l&amp;agrave; bạn n&amp;ecirc;n d&amp;ugrave;ng google để search (.xap). - - Topic cũng cấp app c&amp;agrave;i = tay theo y&amp;ecirc;u cầu tr&amp;ecirc;n&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;span style=&quot;color: black;&quot;&gt;&lt;span style=&quot;color: red;&quot;&gt;&lt;b&gt;Cảm nhận sau 1 ng&amp;agrave;y d&amp;ugrave;ng wm7 tr&amp;ecirc;n hd2&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n	- Ổn định: c&amp;aacute;i n&amp;agrave;y rất phập ph&amp;ugrave;, tối qua th&amp;igrave; m&amp;aacute;y m&amp;igrave;nh tự reboot 3-4 lần, h&amp;ocirc;m nay th&amp;igrave; chả bị lần n&amp;agrave;o. Chưa biết l&amp;agrave; do rom hay l&amp;agrave; do thẻ nhớ. Đang kiếm th&amp;ecirc;m thẻ nhớ kh&amp;aacute;c để test&lt;br /&gt;\r\n	- Cảm ứng: vuốt, click, double tap, k&amp;eacute;o, thả rất nhanh, nhạy. Ri&amp;ecirc;ng về cảm ứng đa điểm , pinch-to-zoom khi xem ảnh, lướt web , &lt;span style=&quot;color: red;&quot;&gt;bạn phải chạm 2 ng&amp;oacute;n tay v&amp;agrave;o m&amp;agrave;n h&amp;igrave;nh c&amp;ugrave;ng 1 l&amp;uacute;c th&amp;igrave; mới zoom được&lt;/span&gt;&lt;br /&gt;\r\n	- Pin: cũng tương tương mấy rom android hoặc l&amp;agrave; tốn hơn 1 ch&amp;uacute;t x&amp;iacute;u&lt;br /&gt;\r\n	- Chức năng gọi đt: tốt, &amp;acirc;m thanh to, r&amp;otilde; r&amp;agrave;ng&lt;br /&gt;\r\n	- S&amp;oacute;ng đt: tốt, cột s&amp;oacute;ng của m&amp;igrave;nh lu&amp;ocirc;n lu&amp;ocirc;n full, hơn l&amp;uacute;c ở android nhiều&lt;br /&gt;\r\n	- Radio: nghe tốt, r&amp;otilde; r&amp;agrave;ng&lt;br /&gt;\r\n	- 3G/wifi: rất tốt (đối với t-mobile m&amp;agrave; m&amp;igrave;nh đang d&amp;ugrave;ng), ko bị rớt mang, tốc độ full&lt;br /&gt;\r\n	- Camera: chụp với flash th&amp;igrave; bị xanh ảnh+ flash chớp sau khi ảnh đ&amp;atilde; chụp ^^! Quay phim 720p cũng ok, nhưng m&amp;igrave;nh chưa thử quay video d&amp;agrave;i, chỉ quay cỡ &amp;lt;1 phut&lt;br /&gt;\r\n	- GPS: bật map l&amp;ecirc;n th&amp;igrave; thấy n&amp;oacute; bắt địa điểm tốt, ko mất t&amp;iacute;n hiệu GPS. C&amp;oacute; đều lạ l&amp;agrave; trong wm7, ko thấy n&amp;oacute; t&amp;aacute;ch phần x&amp;aacute;c định vị tr&amp;iacute; = : GPS v&amp;agrave; bằng s&amp;oacute;ng di động ra ri&amp;ecirc;ng.&lt;br /&gt;\r\n	- &amp;Acirc;m thanh: to, r&amp;otilde; hơn android. nhưng bật to h&amp;ecirc;t cỡ th&amp;igrave; loa c&amp;oacute; vẽ bị r&amp;egrave; th&amp;igrave; phải.^^&lt;br /&gt;\r\n	- Con ri&amp;ecirc;ng về hdh wm7: th&amp;iacute;ch c&amp;aacute;i c&amp;aacute;ch n&amp;oacute; thiết kế giao di&amp;ecirc;n, kh&amp;aacute;c ho&amp;agrave;n to&amp;agrave;n xo với iphone/android. Tuy nhi&amp;ecirc;n chức năng th&amp;igrave; c&amp;ograve;n phải bổ sung th&amp;ecirc;m&lt;br /&gt;\r\n	- Window live services: sau khi k&amp;iacute;ch hoạt được th&amp;igrave; c&amp;agrave;i đặt app rất thoải m&amp;aacute;i, nhanh ch&amp;oacute;ng, ko c&amp;oacute; vấn đề g&amp;igrave;.&lt;br /&gt;\r\n	-Zune sync: ho&amp;agrave;n hảo, sync nhanh ch&amp;oacute;ng, đơn giản, backup cũng nhanh.&lt;br /&gt;\r\n	*** n&amp;oacute;i chung th&amp;igrave; m&amp;igrave;nh vẫn cứ chạy window7 n&amp;agrave;y v&amp;agrave; đợi update rom trong thời gian tới. HI vọng tưởng lai sẽ c&amp;oacute; dual boot wm7 với android, như vậy l&amp;agrave; tuyệt.&lt;/span&gt;&lt;/p&gt;', 'cai-dat-window-phone-7-cho-htc-hd2', '', '', '', '', '', '', 0, 0, 'upload/upload_1301060222_176x176.png', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 12:30:21', 'admin', '2012-11-28 12:30:21');
INSERT INTO `media` VALUES (124, 'default13540920041', '', 'media_information', '[101]', 'admin', 'Sơn - Hàn vỏ, bản lề', '', '', 'vn', '', '&lt;h2&gt;\r\n	Sơn - H&amp;agrave;n vỏ, bản lề&lt;/h2&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;table&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					STT&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					T&amp;Igrave;NH TRẠNG&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					GI&amp;Aacute;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					1&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					H&amp;agrave;n pass,đ&amp;uacute;c pass laptop một b&amp;ecirc;n(h&amp;agrave;n,đ&amp;uacute;c hai b&amp;ecirc;n sẻ được giảm 30%)&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					200.000 - 300.000&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					2&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					L&amp;agrave;m nhựa bệ m&amp;agrave;n h&amp;igrave;nh,khung m&amp;agrave;n h&amp;igrave;nh&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					100.000 - 300.000&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					3&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Sơn, t&amp;acirc;n trang laptop theo nhiều phong c&amp;aacute;ch&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					200.000 &amp;ndash; 500.000&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 15:40:53', 'admin', '2012-11-28 15:40:53');
INSERT INTO `media` VALUES (125, 'default13540921671', '', 'media_information', '[96]', 'admin', 'Quy trình sửa laptop', '', '', 'vn', '', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(240, 255, 240);&quot;&gt;***** QUY TR&amp;Igrave;NH SỬA CHỮA LAPTOP TẠI VIỆN LAPTOP HO&amp;Agrave;NG VŨ:&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;1. Nhận m&amp;aacute;y kiểm tra ,b&amp;aacute;o gi&amp;aacute; v&amp;agrave; tiến h&amp;agrave;nh sửa chữa laptop cho qu&amp;yacute; kh&amp;aacute;ch lấy liền trước sự gi&amp;aacute;m s&amp;aacute;t của kh&amp;aacute;ch h&amp;agrave;ng&lt;br /&gt;\r\n	2. Trong trường hợp kh&amp;aacute;ch h&amp;agrave;ng cần suy nghĩ hoạt tham khảo &amp;yacute; kiến th&amp;igrave; c&amp;ocirc;ng ty sẻ tư vấn nhận m&amp;aacute;y,th&amp;aacute;o r&amp;ograve;i linh kiện gủi lại kh&amp;aacute;ch h&amp;agrave;ng . Viện Laptop Ho&amp;agrave;ng Vũ chỉ nhận lại c&amp;aacute;c thiết bị cần sửa chữa chứ kh&amp;ocirc;ng nhận lại đầy đủ c&amp;aacute;c thiết bị laptop (trừ trường hợp kh&amp;aacute;ch h&amp;agrave;ng y&amp;ecirc;u cầu)&lt;br /&gt;\r\n	3.C&amp;ocirc;ng ty lu&amp;ocirc;n đặt mục ti&amp;ecirc;u sửa chữa laptop lấy liền tại chổ cho kh&amp;aacute;ch h&amp;agrave;ng trừ một số trường hợp đặt biệt th&amp;igrave; c&amp;ocirc;ng ty nhận lại v&amp;agrave; sử l&amp;yacute; chậm nhất trong v&amp;ograve;ng 2 ng&amp;agrave;y&lt;br /&gt;\r\n	4. C&amp;ocirc;ng ty sẻ th&amp;ocirc;ng b&amp;aacute;o(đ&amp;uacute;ng hẹn ) thời gian trả m&amp;aacute;y v&amp;agrave; y&amp;ecirc;u cầu kh&amp;aacute;ch h&amp;agrave;ng mang c&amp;aacute;c thiết bị gắn rời (ram,hdd,dvd,pin&amp;hellip;)của kh&amp;aacute;ch h&amp;agrave;ng đang giữ dến để ho&amp;agrave;n tất việt text v&amp;agrave; giao m&amp;aacute;y&lt;br /&gt;\r\n	5. M&amp;aacute;y sao khi sửa sẻ được gi&amp;aacute;n tem v&amp;agrave; được bảo h&amp;agrave;nh theo đ&amp;uacute;ng quy định bảo h&amp;agrave;nh của Viện Laptop Ho&amp;agrave;ng Vũ&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(240, 255, 240);&quot;&gt;****CAM KẾT CỦA VIỆN LAPTOP HO&amp;Agrave;NG VŨ ĐỐI VỚI QU&amp;Yacute; KH&amp;Aacute;CH H&amp;Agrave;NG:&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;1 .Chất lượng của dịch vụ l&amp;agrave; tốt nhất v&amp;agrave; lu&amp;ocirc;n xem yếu tố chất lượng l&amp;agrave; đi đầu trong dịch vụ sửa chữa v&amp;agrave; cung cấp linh kiện laptop&lt;br /&gt;\r\n	2. gi&amp;aacute; của dịch vụ c&amp;ocirc;ng ty l&amp;agrave; gi&amp;aacute; tốt nhất nhằm đ&amp;ecirc;m lại sự h&amp;agrave;i l&amp;ograve;ng cao nhất cho qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng&lt;br /&gt;\r\n	3.Th&amp;aacute;i độ phục vụ của nh&amp;acirc;n vi&amp;ecirc;n lu&amp;ocirc;n &amp;acirc;n cần,trung thực,t&amp;acirc;m huyết với nghề,thực t&amp;acirc;m với kh&amp;aacute;ch h&amp;agrave;ng&lt;br /&gt;\r\n	4.Đảm bảo về mức độ an to&amp;agrave;n , độ tin cậy tuyệt đối cho kh&amp;aacute;ch h&amp;agrave;ng v&amp;agrave; tr&amp;aacute;nh kh&amp;ocirc;ng g&amp;acirc;y lỗi lầm trong sửa chữa cũng như bảo quảng tuyệt đối ch&amp;iacute;nh s&amp;aacute;t c&amp;aacute;c linh kiện tr&amp;ecirc;n laptop của qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng&lt;br /&gt;\r\n	5.Cam kết bảo vệ dữ liệu của qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng một c&amp;aacute;ch tuyệt đối&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 15:42:47', 'admin', '2012-11-28 15:42:47');
INSERT INTO `media` VALUES (126, 'default13540923141', '', 'media_information', '[97]', 'admin', 'Sửa chữa PIN(BATTERY)', '', '', 'vn', '', '&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;STT&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;T&amp;Igrave;NH TRẠNG&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;GI&amp;Aacute;&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;1&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					C&amp;aacute;c vấn đề về chết mạch như: Pin chết, kh&amp;ocirc;ng xạc Pin, kh&amp;ocirc;ng nhận Pin...&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					50.000 - 200.000&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;2&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay cell chạy tr&amp;ecirc;n 1H&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					300.000&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;3&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay cell chạy tr&amp;ecirc;n 2H&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					480.000&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 15:45:14', 'admin', '2012-11-28 15:45:14');
INSERT INTO `media` VALUES (127, 'default13540923851', '', 'media_information', '[98]', 'admin', 'Sửa chữa macbook', '', '', 'vn', '', '&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;3&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Lỗi main m&amp;aacute;y Centrino&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;30$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;4&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Lỗi main m&amp;aacute;y Core duo, Core 2 duo, code i&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;35$ - 60$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;5&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					H&amp;agrave;n lại chipset c&amp;aacute;c loại&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;20$ - 30$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;6&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay chipset (thay 2 chip set tr&amp;ecirc;n c&amp;ugrave;ng 1 main được giảm 30%)&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;40$ - 60$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;7&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay khe Ram&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;15$/khe&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;8&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Ph&amp;aacute; Pass m&amp;aacute;y (tất cả c&amp;aacute;c loại m&amp;aacute;y)&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;15$ - 50$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;9&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Nạp Rom bios, nạp Rom n&amp;oacute;i chung&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;15$ - 40$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;10&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay quạt chip, l&amp;agrave;m lại quạt&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;10$ - 25$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&lt;strong&gt;11&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p&gt;\r\n					Thay ch&amp;acirc;n rắc nguồn&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&lt;p align=&quot;center&quot;&gt;\r\n					&amp;nbsp;10$ - 20$&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 15:46:25', 'admin', '2012-11-28 15:46:25');
INSERT INTO `media` VALUES (128, 'default13540925921', '', 'media_information', '[99]', 'admin', 'Sửa chữa ipad', '', '', 'vn', '', '&lt;p&gt;\r\n	&lt;strong&gt;C&amp;Aacute;C LỖI THƯỜNG GẶP Ipad ............ Gi&amp;aacute; Lỗi linh kiện / Lỗi tr&amp;ecirc;n main&lt;/strong&gt;&lt;br /&gt;\r\n	&amp;Oslash; M&amp;agrave;n h&amp;igrave;nh + cảm ứng + ron&lt;br /&gt;\r\n	nguy&amp;ecirc;n cụm............................................. 3,800,000&lt;br /&gt;\r\n	&amp;Oslash; M&amp;agrave;n h&amp;igrave;nh............................................... 1,800,000&lt;br /&gt;\r\n	&amp;Oslash; Cảm ứng + mặt kiếng.. ......................... 1,800,000&lt;br /&gt;\r\n	&amp;Oslash; N&amp;uacute;t home kh&amp;ocirc;ng ăn hoặc bấm kh&amp;oacute;.......&amp;nbsp; 350,000&lt;br /&gt;\r\n	&amp;Oslash; Pin zin theo m&amp;aacute;y........... ........................ 1,200,000&lt;br /&gt;\r\n	&amp;Oslash; M&amp;aacute;y treo c&amp;aacute;p đĩa hoặc treo t&amp;aacute;o&lt;br /&gt;\r\n	kh&amp;ocirc;ng nhận pc.......................................... 500,000&lt;br /&gt;\r\n	&amp;Oslash; M&amp;aacute;y cấm c&amp;aacute;p l&amp;ecirc;n t&amp;aacute;o rồi tắt................... 500,000&lt;br /&gt;\r\n	&amp;Oslash; iPad 3G mất song........ ......................... 650,000&lt;br /&gt;\r\n	&amp;Oslash; Mất &amp;acirc;m thanh......................................... 800,000&lt;br /&gt;\r\n	&amp;Oslash; No Imei, No wifi, No Bluetooth............... 1,800,000&lt;br /&gt;\r\n	&amp;Oslash; Mất nguồn ( chết IC nguồn ).................. 2,000,000&lt;br /&gt;\r\n	&amp;Oslash; Trắng m&amp;agrave;n h&amp;igrave;nh, kh&amp;ocirc;ng hiển thị&lt;br /&gt;\r\n	m&amp;agrave;n h&amp;igrave;nh, m&amp;agrave;n h&amp;igrave;nh m&amp;agrave;u sắc bị nhiễu........800,000&lt;br /&gt;\r\n	&amp;Oslash; M&amp;aacute;y sạc kh&amp;ocirc;ng v&amp;ocirc;, kh&amp;ocirc;ng nhận usb&lt;br /&gt;\r\n	nhưng sạc v&amp;ocirc; v&amp;agrave; ngược lại....................... 800,000&lt;br /&gt;\r\n	&amp;Oslash; Restore b&amp;aacute;o lỗi 9, 28, 40....................... 1,300,000&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 15:49:52', 'admin', '2012-11-28 15:49:52');
INSERT INTO `media` VALUES (129, 'default13540929371', '', 'media_gallery', '[109]', 'admin', 'Bộ sưu tập hình ảnh', '', '', 'vn', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-28 15:55:37', 'admin', '2012-11-28 15:55:37');
INSERT INTO `media` VALUES (131, 'default13540935811', '', 'media_video', '[108]', 'admin', 'VIDEO', '', '', 'vn', '&lt;p&gt;\r\n	&lt;iframe frameborder=&quot;0&quot; height=&quot;240&quot; scrolling=&quot;no&quot; src=&quot;//www.youtube.com/embed/SgIyoG_AXBs&quot; width=&quot;310&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;', '&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;iframe frameborder=&quot;0&quot; height=&quot;400&quot; scrolling=&quot;no&quot; src=&quot;//www.youtube.com/embed/SgIyoG_AXBs&quot; width=&quot;500&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2012-11-29 10:45:53', 'admin', '2013-08-15 09:48:17');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

-- 
-- Dumping data for table `media_file`
-- 

INSERT INTO `media_file` VALUES (1, 'default13518843651', '', 'upload/1.jpg', 'image', '');
INSERT INTO `media_file` VALUES (5, 'default13518844851', '', 'upload/20121031-185106-1-xdang.jpeg', 'image', '');
INSERT INTO `media_file` VALUES (4, 'default13518844851', '', 'upload/1.jpg', 'image', '');
INSERT INTO `media_file` VALUES (6, 'default13518803181', '', 'upload/XEP%20HANG%20TRAM%20XANG-TU%20LAP(1).flv', 'file', '');
INSERT INTO `media_file` VALUES (7, 'default13540929371', '', 'upload/hinh-cong-ty-1.jpg', 'image', '');
INSERT INTO `media_file` VALUES (8, 'default13540929371', '', 'upload/hinh-cong-ty-2.jpg', 'image', '');

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

INSERT INTO `media_file_description` VALUES (1, 'vn', 'default13518843651', '');
INSERT INTO `media_file_description` VALUES (1, 'en', 'default13518843651', '');
INSERT INTO `media_file_description` VALUES (5, 'en', 'default13518844851', '');
INSERT INTO `media_file_description` VALUES (5, 'vn', 'default13518844851', '');
INSERT INTO `media_file_description` VALUES (4, 'en', 'default13518844851', '');
INSERT INTO `media_file_description` VALUES (4, 'vn', 'default13518844851', '');
INSERT INTO `media_file_description` VALUES (6, 'vn', 'default13518803181', '');
INSERT INTO `media_file_description` VALUES (6, 'en', 'default13518803181', '');
INSERT INTO `media_file_description` VALUES (7, 'vn', 'default13540929371', '');
INSERT INTO `media_file_description` VALUES (8, 'vn', 'default13540929371', '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `media_information`
-- 

INSERT INTO `media_information` VALUES (1, 'default13518656271', 'zoom', '16');
INSERT INTO `media_information` VALUES (2, 'default13518656271', 'x', '10.781130942104145');
INSERT INTO `media_information` VALUES (3, 'default13518656271', 'y', '106.66499780953973');
INSERT INTO `media_information` VALUES (4, 'default13518656272', 'zoom', '16');
INSERT INTO `media_information` VALUES (5, 'default13518656272', 'x', '10.781025547481903');
INSERT INTO `media_information` VALUES (6, 'default13518656272', 'y', '106.66499780953973');
INSERT INTO `media_information` VALUES (7, 'default13518656991', 'zoom', '15');
INSERT INTO `media_information` VALUES (8, 'default13518656991', 'x', '10.780962310690834');
INSERT INTO `media_information` VALUES (9, 'default13518656991', 'y', '106.66471885980218');
INSERT INTO `media_information` VALUES (10, 'default13518656992', 'zoom', '15');
INSERT INTO `media_information` VALUES (11, 'default13518656992', 'x', '10.780962310690834');
INSERT INTO `media_information` VALUES (12, 'default13518656992', 'y', '106.66471885980218');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

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
INSERT INTO `module` VALUES (22, 'sidebar', 'sidebar/supportonline', 'sidebar/supportonline', 'Support Online', 'manage', 'support', '', 19, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (23, 'sidebar', 'sidebar/search', 'sidebar/search', 'Search', 'code', '', '', 20, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (24, 'sidebar', 'sidebar/weblinks', 'sidebar/weblinks', 'Web links', 'manage', 'sitemap', '', 21, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (25, 'sidebar', 'sidebar/eventcalendar', 'sidebar/eventcalendar', 'Event Calendar', 'manage', 'media_event', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (26, 'sidebar', 'sidebar/webcounter', 'sidebar/webcounter', 'Web Counter', 'code', '', '', 22, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (27, 'sidebar', 'sidebar/sociallinks', 'sidebar/sociallinks', 'Social Links', 'manage', 'media_sociallinks', '', 23, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (28, 'sidebar', 'sidebar/videoplayer', 'sidebar/videoplayer', 'Video Player', 'refer', 'media_videoalbum', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (29, 'sidebar', 'sidebar/videoconnection', 'sidebar/videoconnection', 'Video Connection', 'refer', 'media_videoalbum', '', 24, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (30, 'sidebar', 'sidebar/servicescategories', 'sidebar/servicescategories', 'Services Categories', 'manage', 'sitemap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (31, 'sidebar', 'sidebar/productscategories', 'sidebar/productscategories', 'Products Categories', 'manage', 'sitemap', '', 26, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
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
INSERT INTO `module` VALUES (43, 'splash', 'splash/maskslider', 'splash/maskslider', 'Mask Slider', 'code', '', '', 38, 'Active', '', '[""]', '', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (44, 'splash', 'splash/custombanner', 'splash/custombanner', 'Custom Home Banner', 'code', '', '', 39, 'Active', 'splash/custombanner', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (45, 'module', 'module/groupsitemap', 'module/groupsitemap', 'Group Sitemap', 'code', '', '', 40, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `option`
-- 

INSERT INTO `option` VALUES (1, 'default', 'label', 1);
INSERT INTO `option` VALUES (3, 'default', 'radio', 1);

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

INSERT INTO `option_description` VALUES (1, 2, 'Size');
INSERT INTO `option_description` VALUES (1, 1, 'Kích thước');
INSERT INTO `option_description` VALUES (3, 1, 'Màu sắc');
INSERT INTO `option_description` VALUES (3, 2, 'Color');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

-- 
-- Dumping data for table `option_value`
-- 

INSERT INTO `option_value` VALUES (18, 3, '', 1);
INSERT INTO `option_value` VALUES (17, 1, '', 2);
INSERT INTO `option_value` VALUES (16, 1, '', 1);

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

INSERT INTO `option_value_description` VALUES (18, 3, 1, 'Màu đỏ');
INSERT INTO `option_value_description` VALUES (17, 1, 1, 'Kích thước M');
INSERT INTO `option_value_description` VALUES (17, 1, 2, 'Size M');
INSERT INTO `option_value_description` VALUES (16, 1, 1, 'Kích thước S');
INSERT INTO `option_value_description` VALUES (16, 1, 2, 'Size S');
INSERT INTO `option_value_description` VALUES (18, 3, 2, 'Red');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `plugin`
-- 

INSERT INTO `plugin` VALUES (1, 'product_bestseller', 'module/product', 'sản phẩm bán chạy', 'vn');
INSERT INTO `plugin` VALUES (2, 'product_bestseller', 'module/product', 'best seller product', 'en');
INSERT INTO `plugin` VALUES (3, 'product_mostview', 'module/product', 'sản phẩm xem nhiều', 'vn');
INSERT INTO `plugin` VALUES (4, 'product_mostview', 'module/product', 'most view product', 'en');
INSERT INTO `plugin` VALUES (5, 'product_bestseller', 'submenu', '', 'vn');
INSERT INTO `plugin` VALUES (6, 'product_bestseller', 'submenu', '', 'en');

-- --------------------------------------------------------

-- 
-- Table structure for table `product`
-- 

CREATE TABLE `product` (
  `productid` bigint(20) NOT NULL auto_increment,
  `model` varchar(250) collate utf8_unicode_ci NOT NULL,
  `seo_url` varchar(250) collate utf8_unicode_ci NOT NULL,
  `location` text collate utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `manufacturerid` bigint(20) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `price` double NOT NULL,
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
  PRIMARY KEY  (`productid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

-- 
-- Dumping data for table `product`
-- 

INSERT INTO `product` VALUES (1, 'Trạm xăng', '', '', 0, 'upload/Ban%20do%20rong%20khap%20(1).jpg', 0, 0, 0, 0, 0, 0, 0, '2012-11-03 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-03 00:55:07', '2012-11-03 02:24:53', 0, 0, 67, 0);
INSERT INTO `product` VALUES (2, 'Nghiệm thu quảng cáo Cool Air', '', '', 0, 'upload/IMG_0213.JPG', 0, 0, 0, 0, 0, 0, 0, '2012-11-03 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-03 01:02:11', '2012-11-03 01:02:11', 0, 0, 67, 0);
INSERT INTO `product` VALUES (3, 'Tường bao', '', '', 0, 'upload/CH01e.JPG', 0, 0, 0, 0, 0, 0, 0, '2012-11-03 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-03 01:04:45', '2012-11-03 01:04:45', 0, 0, 67, 0);
INSERT INTO `product` VALUES (4, 'Demo Vĩnh Hảo', '', '', 0, 'upload/IMG_2104.JPG', 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-03 01:09:03', '2012-11-03 01:09:03', 0, 0, 67, 0);
INSERT INTO `product` VALUES (5, 'DELL 19,5V- 7.1 A', '', '', 0, 'upload/upload_2652011-211030dell-191_250x250.png.jpg', 0, 0, 0, 500000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:34:30', '2012-11-28 12:34:30', 0, 0, 110, 0);
INSERT INTO `product` VALUES (6, 'Adapter HP 18.5V-4.74A', 'adapter-hp-18.5v-4.74a', '', 0, 'upload/upload_1062011-193018HP1_250x250.png.jpg', 0, 0, 0, 350000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:37:28', '2012-11-28 12:37:28', 0, 0, 110, 0);
INSERT INTO `product` VALUES (7, 'Adapter IBM 20V-3.25A', 'adapter-IBM-20V-2.25A', '', 0, 'upload/upload_2652011-214141ADAPTER%20IBM%2016V-4_250x250.png.jpg', 0, 0, 0, 350000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:40:15', '2012-11-28 12:40:15', 0, 0, 110, 0);
INSERT INTO `product` VALUES (8, 'IBM 16V-4.7A', 'IBM-16V-4.7A', '', 0, 'upload/upload_2652011-214141ADAPTER%20IBM%2016V-4_250x250.png.jpg', 0, 0, 0, 320000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:43:04', '2012-11-28 12:43:04', 0, 0, 110, 0);
INSERT INTO `product` VALUES (9, 'Adapter SONY 19.5V-6.15A', 'adapter-sony-19.5V-6.15A', '', 0, 'upload/sony.jpg', 0, 0, 0, 550000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:45:14', '2012-11-28 12:45:14', 0, 0, 110, 0);
INSERT INTO `product` VALUES (10, 'Adapter DELL 19.5V-4.62A', 'adapter-dell-19.5V-4.62A', '', 0, 'upload/dell.jpg', 0, 0, 0, 350000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:47:54', '2012-11-28 12:47:54', 0, 0, 110, 0);
INSERT INTO `product` VALUES (11, 'DVD RW SATA MỎNG', 'dvd-rw-sata-mong', '', 0, 'upload/upload_2652011-204147DVD%20RW%20SATA_250x250.png.jpg', 0, 0, 0, 1000000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:50:29', '2012-11-28 12:50:29', 0, 0, 111, 0);
INSERT INTO `product` VALUES (12, 'DVD RW SATA', 'dvd-rw-sata', '', 0, 'upload/upload_862011-19170DVD%20RW%20ATA_250x250.png.jpg', 0, 0, 0, 900000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 12:53:00', '2012-11-28 12:53:24', 0, 0, 111, 0);
INSERT INTO `product` VALUES (13, 'DVD COMBO IBM T40', 'dvd-combo-ibm-t40', '', 0, 'upload/upload_large_06_2011_dc841a4f8f549db261c0458d941f88cb_250x250.png.jpg', 0, 0, 0, 400000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:37:22', '2012-11-28 14:37:22', 0, 0, 111, 0);
INSERT INTO `product` VALUES (14, 'DVD COMBO T60', 'DVD COMBO T60', '', 0, 'upload/upload_2652011-204823DVD%20COMBO%20T60_250x250.png.jpg', 0, 0, 0, 800000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:39:36', '2012-11-28 14:39:36', 0, 0, 111, 0);
INSERT INTO `product` VALUES (15, 'Ổ CD ATA Nhiều dòng máy', 'o-cd-ata-nhieu-dong-may', '', 0, 'upload/upload_small_xbp1303807849_250x250.png.jpg', 0, 0, 0, 800000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:42:07', '2012-11-28 14:42:07', 0, 0, 111, 0);
INSERT INTO `product` VALUES (16, 'DVD/RW Macbook', 'dvd-rw-macbook', '', 0, 'upload/upload_2562011-1941511962011-191037DVD-macbook-pro%20copy_250x250.png.jpg', 0, 0, 0, 1000000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:43:54', '2012-11-28 14:43:54', 0, 0, 111, 0);
INSERT INTO `product` VALUES (17, 'RAM DDR3 2GB BUS 1066', 'ram-hddr3-2gb-bus-1066', '', 0, 'upload/upload_apacaer_fix_150x150.png.jpg', 0, 0, 0, 900000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:46:16', '2012-11-28 14:46:16', 0, 0, 116, 0);
INSERT INTO `product` VALUES (18, 'RAM LAPTOP 2G BUS 800/667', 'ram-laptop-2g-bus-800/667', '', 0, 'upload/upload_2652011-202741RAM%20LAPTOP%202G%20BUS%20%20800_250x250.png.jpg', 0, 0, 0, 750000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:47:39', '2012-11-28 14:47:39', 0, 0, 116, 0);
INSERT INTO `product` VALUES (19, 'RAM LAPTOP 512M BUS 667', 'ram-laptop-512m-bus-667', '', 0, 'upload/upload_862011-192229RAM%20LAPTOP%20512M%20BUS%20667_250x250.png.jpg', 0, 0, 0, 150000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:49:07', '2012-11-28 14:49:07', 0, 0, 116, 0);
INSERT INTO `product` VALUES (20, 'HDD 100G ATA', 'hdd-100g-ata', '', 0, 'upload/hdd_ata.jpg', 0, 0, 0, 800000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:52:06', '2012-11-28 14:52:06', 0, 0, 115, 0);
INSERT INTO `product` VALUES (21, 'HDD 40G ATA', 'hdd-40g-ata', '', 0, 'upload/hdd_40G_ATA.jpg', 0, 0, 0, 600000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:53:27', '2012-11-28 14:53:27', 0, 0, 115, 0);
INSERT INTO `product` VALUES (22, 'HDD SATA 250G', 'hdd-sata-250g', '', 0, 'upload/hdd_sata_250g.jpg', 0, 0, 0, 950000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:55:07', '2012-11-28 14:55:07', 0, 0, 115, 0);
INSERT INTO `product` VALUES (23, 'HDD SATA 320G', 'hdd-sata-320g', '', 0, 'upload/hdd_sata_320g.jpg', 0, 0, 0, 1000000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:56:30', '2012-11-28 14:56:30', 0, 0, 115, 0);
INSERT INTO `product` VALUES (24, 'HDD 500GB SATA', 'hdd-500gb-sata', '', 0, 'upload/hdd_500gb_sata.jpg', 0, 0, 0, 1300000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 14:59:05', '2012-11-28 14:59:05', 0, 0, 115, 0);
INSERT INTO `product` VALUES (25, 'HDD 120G ATA ZIP', 'hdd-120g-ata-zip', '', 0, 'upload/hdd-120g-ata-zip.jpg', 0, 0, 0, 1000000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:00:58', '2012-11-28 15:00:58', 0, 0, 115, 0);
INSERT INTO `product` VALUES (26, 'DELL D630', 'dell-d630', '', 0, 'upload/dell-d630.jpg', 0, 0, 0, 2900000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:03:52', '2012-11-28 15:03:52', 0, 0, 114, 0);
INSERT INTO `product` VALUES (27, 'HP DV6000 CHIP 6150', 'hp-dv6000-chip-6150', '', 0, 'upload/hp-dv6000-chip-6150.jpg', 0, 0, 0, 2000000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:05:10', '2012-11-28 15:05:10', 0, 0, 114, 0);
INSERT INTO `product` VALUES (28, 'DELL XPS 1330', 'dell-xps-1330', '', 0, 'upload/dell-xps-1330.jpg', 0, 0, 0, 3000000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:06:34', '2012-11-28 15:06:34', 0, 0, 114, 0);
INSERT INTO `product` VALUES (29, 'Mainboard Sony FE', 'mainboard-sony-fe', '', 0, 'upload/mainboard-sony-fe.jpg', 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:08:22', '2012-11-28 15:08:22', 0, 0, 114, 0);
INSERT INTO `product` VALUES (30, 'Mainboard TOSHIBA A135', 'mainboard-toshiba-a135', '', 0, 'upload/mainboard-toshiba-a135.jpg', 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:09:34', '2012-11-28 15:09:34', 0, 0, 114, 0);
INSERT INTO `product` VALUES (31, 'Mainboard TOSHIBA M45', 'mainboard-toshiba-m45', '', 0, 'upload/mainboard-toshiba-a135%20(1).jpg', 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:10:40', '2012-11-28 15:10:40', 0, 0, 114, 0);
INSERT INTO `product` VALUES (32, 'HP DV4 DV5', 'pin-hp-dv4', '', 0, 'upload/hp-dv4-dv5.jpg', 0, 0, 0, 400000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:13:22', '2012-11-28 15:13:22', 0, 0, 113, 0);
INSERT INTO `product` VALUES (33, 'HP TX1000', 'hp-tx1000', '', 0, 'upload/hp-tx1000.jpg', 0, 0, 0, 640000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:14:48', '2012-11-28 15:14:48', 0, 0, 113, 0);
INSERT INTO `product` VALUES (34, 'HP DV 2000', 'hp-dv-2000', '', 0, 'upload/hp-dv-2000.jpg', 0, 0, 0, 640000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:16:16', '2012-11-28 15:16:16', 0, 0, 113, 0);
INSERT INTO `product` VALUES (35, 'PIN DELL VISTRO 1400', 'pin-dell-vistro-1400', '', 0, 'upload/pin-dell-vistro-1400.jpg', 0, 0, 0, 650000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:17:37', '2012-11-28 15:17:37', 0, 0, 113, 0);
INSERT INTO `product` VALUES (36, 'PIN SONY PBS2', 'pin-sony-pbs2', '', 0, 'upload/pin-sony-pbs2.jpg', 0, 0, 0, 650000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:18:51', '2012-11-28 15:18:51', 0, 0, 113, 0);
INSERT INTO `product` VALUES (37, 'PIN IBM T60', 'pin-ibm-t60', '', 0, 'upload/pin-ibm-t60.jpg', 0, 0, 0, 640000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:20:08', '2012-11-28 15:20:08', 0, 0, 113, 0);
INSERT INTO `product` VALUES (38, 'Battery DELL XPS', 'battery-dell-xps', '', 0, 'upload/battery-dell-xps.jpg', 0, 0, 0, 640000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:21:34', '2012-11-28 15:21:34', 0, 0, 113, 0);
INSERT INTO `product` VALUES (39, 'Battery Acer 50L6', 'battery-acer-50l6', '', 0, 'upload/battery-acer-50l6.jpg', 0, 0, 0, 669000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:22:53', '2012-11-28 15:22:53', 0, 0, 113, 0);
INSERT INTO `product` VALUES (40, 'IBM Battery T40', 'ibm-battery-t40', '', 0, 'upload/ibm-battery-t40.jpg', 0, 0, 0, 648000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:24:33', '2012-11-28 15:24:33', 0, 0, 113, 0);
INSERT INTO `product` VALUES (41, 'LCD 14.1 VUONG', 'lcd-14.1-vuong', '', 0, 'upload/lcd-14.1-vuong.jpg', 0, 0, 0, 1700000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:27:06', '2012-11-28 15:27:06', 0, 0, 112, 0);
INSERT INTO `product` VALUES (42, 'LCD 14.1WG', 'lcd-14.1wg', '', 0, 'upload/lcd-14.1-wide-guong.jpg', 0, 0, 0, 1950000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:28:37', '2012-11-28 15:28:37', 0, 0, 112, 0);
INSERT INTO `product` VALUES (43, 'LCD 12.1WG', 'lcd-12.1wg', '', 0, 'upload/lcd-12.1wg.jpg', 0, 0, 0, 1900000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:29:53', '2012-11-28 15:29:53', 0, 0, 112, 0);
INSERT INTO `product` VALUES (44, 'LCD 13.3&quot; wide guong', 'lcd-13.3wg', '', 0, 'upload/lcd-13.3wg.jpg', 0, 0, 0, 2200000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:31:28', '2012-11-28 15:31:28', 0, 0, 112, 0);
INSERT INTO `product` VALUES (45, 'LCD 14.0 Led', 'lcd-14-led', '', 0, 'upload/lcd-14-led.jpg', 0, 0, 0, 1600000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:33:17', '2012-11-28 15:33:17', 0, 0, 112, 0);
INSERT INTO `product` VALUES (46, 'LCD 15.6 LED', 'lcd-15.6-led', '', 0, 'upload/lcd-15.6-led.jpg', 0, 0, 0, 1900000, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2012-11-28 15:34:46', '2012-11-28 15:34:46', 0, 0, 112, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_addon`
-- 

CREATE TABLE `product_addon` (
  `productid` bigint(20) NOT NULL,
  `addonid` varchar(250) NOT NULL,
  PRIMARY KEY  (`productid`,`addonid`)
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
  `productid` bigint(20) NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `languageid` varchar(20) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_attribute_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_description`
-- 

CREATE TABLE `product_description` (
  `languageid` varchar(20) collate utf8_unicode_ci NOT NULL,
  `productid` bigint(20) NOT NULL,
  `tag` text collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  `summary` text collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `meta_title` text collate utf8_unicode_ci NOT NULL,
  `meta_keyword` text collate utf8_unicode_ci NOT NULL,
  `meta_description` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_description`
-- 

INSERT INTO `product_description` VALUES ('vn', 1, '', 'Bản đồ trạm xăng quảng cáo của Tự Lập trên QL 1A đoạn TP.Hồ Chí Minh - Cần Thơ', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('en', 1, '', 'Map gas station ad Tu Lap on Highway 1A Ho Chi Minh City - Can Tho', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 2, '', 'Nghiệm thu quảng cáo Cool Air', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('en', 2, '', 'Acceptance of advertising Cool Air', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 3, '', 'Tường bao', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('en', 3, '', 'walls', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 4, '', 'Demo Vĩnh Hảo', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('en', 4, '', 'Demo Vinh Hao', '', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 5, '', 'DELL 19,5V- 7.1 A', '', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 6, '', 'Adapter HP 18.5V-4.74A', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;span style=&quot;font-size:14px;&quot;&gt;Adapter HP 18.5V-4.74A (3mm) đầu kim, tương th&amp;iacute;ch HP6530, compaq CQ .V.V.V&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 7, '', 'Adapter IBM 20V-3.25A', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	&amp;nbsp;Adapter IBM 20V-3.25A Tương th&amp;iacute;ch T60, R61&amp;nbsp; . V.V.V&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 8, '', 'IBM 16V-4.7A', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 9, '', 'Adapter SONY 19.5V-6.15A', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	Adapter SONY 19.5V-6.15A&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 10, '', 'Adapter DELL 19.5V-4.62A', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	ADAPTER DELL 19.5V-4.62A&amp;nbsp;&amp;nbsp; ZIN&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 11, '', 'DVD RW SATA MỎNG', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 12, '', 'DVD RW SATA', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 13, '', 'DVD COMBO IBM T40', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 3 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	DVD COMBO IBM T40&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 14, '', 'DVD COMBO T60', '', '&lt;p&gt;\r\n	DVD COMBO T60&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 15, '', 'Ổ CD ATA Nhiều dòng máy', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	Ổ CD ATA Nhiều d&amp;ograve;ng m&amp;aacute;y&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 16, '', 'DVD/RW Macbook', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	DVD /RW&amp;nbsp; D&amp;ugrave;ng cho macbook . ổ đĩa nuốt&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 17, '', 'RAM DDR3 2GB BUS 1066', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 3 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	RAM DDR3 2GB BUS 1066&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 18, '', 'RAM LAPTOP 2G BUS 800/667', '&lt;p&gt;\r\n	&lt;b&gt;Bảo h&amp;agrave;nh: 3 th&amp;aacute;ng&lt;/b&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	RAM LAPTOP 2G BUS 800/667&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 19, '', 'RAM LAPTOP 512M BUS 667', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 3 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	RAM LAPTOP 512M BUS 667&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 20, '', 'HDD 100G ATA', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '&lt;p&gt;\r\n	HDD 100G ATA&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 21, '', 'HDD 40G ATA', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '&lt;p&gt;\r\n	HDD 40G ATA&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 22, '', 'HDD SATA 250G', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 23, '', 'HDD SATA 320G', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	HDD SATA 320G , Hiệu&amp;nbsp; Hitachi&amp;nbsp; chuẩn SATA&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 24, '', 'HDD 500GB SATA', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	HDD 500G&amp;nbsp; hiệu Hitachi chuẩn sata&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 25, '', 'HDD 120G ATA ZIP', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	HDD 120G Chuẩn PATA ZIP&amp;nbsp; d&amp;ugrave;ng&amp;nbsp; gắn c&amp;aacute;p&amp;nbsp; tương th&amp;iacute;ch dell D400, sony tx ,&amp;nbsp; macbook AIR&amp;nbsp; .v..v.v.&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 26, '', 'DELL D630', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 1 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 27, '', 'HP DV6000 CHIP 6150', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 1 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 28, '', 'DELL XPS 1330', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 1 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 29, '', 'Mainboard Sony FE', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 1 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	Mainboard Sony FE&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 30, '', 'Mainboard TOSHIBA A135', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 1 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	Mainboard TOSHIBA A135&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 31, '', 'Mainboard TOSHIBA M45', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 1 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	Mainboard TOSHIBA M45&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 32, '', 'HP DV4 DV5', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 33, '', 'HP TX1000', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 34, '', 'HP DV 2000', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 35, '', 'PIN DELL VISTRO 1400', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 36, '', 'PIN SONY PBS2', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 37, '', 'PIN IBM T60', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 38, '', 'Battery DELL XPS', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	Battery d&amp;ugrave;ng cho m&amp;aacute;y&amp;nbsp; DELL XPS&amp;nbsp;M1330&amp;nbsp;&amp;nbsp; (Original) new&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 39, '', 'Battery Acer 50L6', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	Battery&amp;nbsp; Acer&amp;nbsp; &amp;nbsp;50L8&amp;nbsp;&amp;nbsp;; 50L8&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 40, '', 'IBM Battery T40', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '&lt;p&gt;\r\n	IBM Battery T40&lt;/p&gt;', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 41, '', 'LCD 14.1 VUONG', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 42, '', 'LCD 14.1WG', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 43, '', 'LCD 12.1WG', '&lt;p&gt;\r\n	BẢO H&amp;Agrave;NH 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 44, '', 'LCD 13.3&quot; wide guong', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 45, '', 'LCD 14.0 Led', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 th&amp;aacute;ng&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES ('vn', 46, '', 'LCD 15.6 LED', '&lt;p&gt;\r\n	Bảo h&amp;agrave;nh: 6 TH&amp;Aacute;NG&lt;/p&gt;', '', '', '', '');

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

INSERT INTO `product_image` VALUES (0, 1, 'upload/Ban%20do%20rong%20khap.jpg', 1);
INSERT INTO `product_image` VALUES (0, 1, 'upload/SPM_A0668.jpg', 1);
INSERT INTO `product_image` VALUES (0, 1, 'upload/SP_A0196.jpg', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14300.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14299.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14298.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14297.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14296.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14295.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14294.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14293.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14292.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14291.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14290.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14289.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/SDC14288.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/DSC_0012.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/DSC_0011.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/DSC_0010.JPG', 1);
INSERT INTO `product_image` VALUES (0, 2, 'upload/DSC_0009.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC_1340.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC01121.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC01115.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC01100.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC00989.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC00971.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC00874.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC00871.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC00865.JPG', 1);
INSERT INTO `product_image` VALUES (0, 3, 'upload/DSC00832.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2117.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2116.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2115.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2114.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2113.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2112.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2111.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2110.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2109.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2108.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2107.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2106.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2105.JPG', 1);
INSERT INTO `product_image` VALUES (0, 4, 'upload/IMG_2103.JPG', 1);
INSERT INTO `product_image` VALUES (0, 1, 'upload/Phong-Phuong-Hoa.jpg', 1);
INSERT INTO `product_image` VALUES (0, 1, 'upload/Bandorongkhap.jpg', 1);

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
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`manufacturerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `product_manufacturer`
-- 

INSERT INTO `product_manufacturer` VALUES (1, 'default', 'Nokia', 'nokia', 'upload/elife_logo1.png', 'http://nokia.com', 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_manufacturer_description`
-- 

CREATE TABLE `product_manufacturer_description` (
  `manufacturerid` bigint(20) NOT NULL,
  `languageid` int(11) NOT NULL,
  `summary` text collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `meta_description` text collate utf8_unicode_ci NOT NULL,
  `meta_keyword` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_manufacturer_description`
-- 

INSERT INTO `product_manufacturer_description` VALUES (1, 1, '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', 'Được thành lập năm 2000 ...', 'Được thành lập năm 2000 ...');
INSERT INTO `product_manufacturer_description` VALUES (1, 2, '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', 'Foundation', 'Foundation');
INSERT INTO `product_manufacturer_description` VALUES (1, 1, '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', '&lt;p&gt;\r\n	Được th&amp;agrave;nh lập năm 2000 ...&lt;/p&gt;', 'Được thành lập năm 2000 ...', 'Được thành lập năm 2000 ...');
INSERT INTO `product_manufacturer_description` VALUES (1, 2, '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', '&lt;p&gt;\r\n	Foundation&lt;/p&gt;', 'Foundation', 'Foundation');

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
INSERT INTO `sidebar` VALUES (3, 'ko có tên');
INSERT INTO `sidebar` VALUES (4, 'rỗng');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `sidebar_addon`
-- 

INSERT INTO `sidebar_addon` VALUES (9, 1, 1, 1);
INSERT INTO `sidebar_addon` VALUES (10, 2, 1, 1);

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

INSERT INTO `site` VALUES (1, 'default', 'Nhanh nhất - Uy tín nhất - Giá tốt nhất', 'upload/logo (1).png', 'upload/logo (1).png', '', '', 'vnd, usd', 'laptophoangvu@yahoo.com', 'SỮA CHỮA LAPTOP', 'http://www.suachualaptophcm.net', 'vn', '', '', '', '', 'sualaptophochiminh', 'Active');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;

-- 
-- Dumping data for table `sitemap`
-- 

INSERT INTO `sitemap` VALUES (65, 'default', '', '', 1, 'module/homepage', 0, '', '', 1, 0, 'homepage', 1);
INSERT INTO `sitemap` VALUES (71, 'default', '', '', 8, 'module/contactmap', 0, '', '', 1, 0, 'contact', 1);
INSERT INTO `sitemap` VALUES (72, 'default', '', 've-chung-toi', 2, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (94, 'default', '', 'video-va-hinh-anh', 5, 'module/groupsitemap', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (137, 'default', '134', 'sua-man-hinh-laptop', 3, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (134, 'default', '', 'sua-chua-laptop', 9, 'module/groupsitemap', 0, '', '', 0, 0, 'default_layout', 0);
INSERT INTO `sitemap` VALUES (135, 'default', '134', 'sua-laptop-mat-nguon', 1, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (136, 'default', '134', 'sua-laptop-co-nguon-khong-hinh', 2, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (91, 'default', '', 'sua-chua-macbook', 3, 'module/groupsitemap', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (104, 'default', '', 'sua-chua-ipad', 4, 'module/groupsitemap', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (108, 'default', '94', 'video', 1, 'module/video', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (109, 'default', '94', 'hinh-anh', 2, 'module/gallery', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (119, 'default', '', 'ho-tro-ky-thuat', 7, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);
INSERT INTO `sitemap` VALUES (138, 'default', '134', 'han-ban-le-laptop', 4, 'module/information', 0, '', '', 1, 0, 'default_layout', 1);

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

INSERT INTO `sitemap_description` VALUES (65, 'vn', 'TRANG CHỦ', '', 'sua laptop, sửa laptop', '', '');
INSERT INTO `sitemap_description` VALUES (71, 'vn', 'LIÊN HỆ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (72, 'vn', 'VỀ CHÚNG TÔI', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (104, 'vn', 'SỬA CHỮA IPAD', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (72, 'en', 'About Tu Lap', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (136, 'vn', 'Sửa Laptop có nguồn không hình', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (134, 'vn', 'SỮA CHỮA LAPTOP', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (135, 'vn', 'Sữa Laptop mất nguồn', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (108, 'vn', 'VIDEO', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (109, 'vn', 'HÌNH ẢNH', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (91, 'vn', 'SỬA CHỮA MACBOOK', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (119, 'vn', 'HỖ TRỢ KỸ THUẬT', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (94, 'vn', 'VIDEO &amp; HÌNH ẢNH', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (138, 'vn', 'Hàn bản lề Laptop', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (137, 'vn', 'Sửa màn hình Laptop', '', '', '', '');

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

INSERT INTO `support` VALUES (1, 'supportonline', '', '', 'congtyhtn', 1);
INSERT INTO `support` VALUES (2, 'supportonline', '', '', 'jackyla0828', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `support_description`
-- 

CREATE TABLE `support_description` (
  `id` bigint(20) NOT NULL auto_increment,
  `supportid` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `languageid` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `support_description`
-- 

INSERT INTO `support_description` VALUES (1, 1, 'Hỗ trợ bán hàng', '', 'vn');
INSERT INTO `support_description` VALUES (2, 2, 'Hỗ trợ kĩ thuật', '', 'vn');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=443 ;

-- 
-- Dumping data for table `url_alias`
-- 

INSERT INTO `url_alias` VALUES (285, 'media', 'default13518682611', '');
INSERT INTO `url_alias` VALUES (267, 'media', 'default13518650352', '');
INSERT INTO `url_alias` VALUES (244, 'sitemap', '65', '');
INSERT INTO `url_alias` VALUES (250, 'sitemap', '71', '');
INSERT INTO `url_alias` VALUES (251, 'sitemap', '72', 've-chung-toi');
INSERT INTO `url_alias` VALUES (328, 'sitemap', '94', 'video-va-hinh-anh');
INSERT INTO `url_alias` VALUES (439, 'sitemap', '135', 'sua-laptop-mat-nguon');
INSERT INTO `url_alias` VALUES (325, 'sitemap', '91', 'sua-chua-macbook');
INSERT INTO `url_alias` VALUES (260, 'media', 'default13518624662', '');
INSERT INTO `url_alias` VALUES (261, 'media', 'default13518625762', '');
INSERT INTO `url_alias` VALUES (262, 'media', 'default13518631552', '');
INSERT INTO `url_alias` VALUES (263, 'media', 'default13518635182', '');
INSERT INTO `url_alias` VALUES (264, 'media', 'default13518637032', '');
INSERT INTO `url_alias` VALUES (265, 'media', 'default13518638112', '');
INSERT INTO `url_alias` VALUES (33, 'media', 'default11', 'gioi-thieu-htn');
INSERT INTO `url_alias` VALUES (34, 'media', 'default12', '');
INSERT INTO `url_alias` VALUES (35, 'media', 'default14', 'giai-phap-phong-chieu-3d-dlp');
INSERT INTO `url_alias` VALUES (36, 'media', 'default15', 'giai-phap-tron-goi-rap-chieu-phim-cafr-3dhd');
INSERT INTO `url_alias` VALUES (184, 'media', 'default1349862082', 'microsoft-tiet-lo-cong-nghe-3d-dua-tren-kinect-qua-khung-1');
INSERT INTO `url_alias` VALUES (183, 'media', 'default1349861755', 'bung-no-tranh-cai-ve-co-be-ban-diem-phien-ban-3d-viet-nam');
INSERT INTO `url_alias` VALUES (182, 'media', 'default1349860690', 'xuat-hien-may-tinh-bang-3d-khong-can-kinh');
INSERT INTO `url_alias` VALUES (181, 'media', 'default1349860537', 'nhung-tac-pham-nghe-thuat-duong-pho-dep-nhat-nam-2011');
INSERT INTO `url_alias` VALUES (180, 'media', 'default1349860215', 'ton-ngo-khong-tang-tang-3d-tien');
INSERT INTO `url_alias` VALUES (179, 'media', 'default1349860088', 'imec-phat-trien-cong-nghe-3d-holographic-danh-cho-tuong-lai');
INSERT INTO `url_alias` VALUES (178, 'media', 'default1349859805', 'alvin-and-the-chipmunks-3-da-that-su-mac-can');
INSERT INTO `url_alias` VALUES (177, 'media', 'default1349859148', 'long-mon-phi-giap-nhung-bi-mat-thu-vi');
INSERT INTO `url_alias` VALUES (176, 'media', 'default1349858650', 'trien-lam-tranh-3d');
INSERT INTO `url_alias` VALUES (175, 'media', 'default1349847741', 'infographic-3d--tuong-lai-nganh-giai-tri-cua-the-gioi');
INSERT INTO `url_alias` VALUES (174, 'media', 'default1349844744', 'tablet-android-40-gia-99-cuoc-choi-tablet-cang-them-gay-can');
INSERT INTO `url_alias` VALUES (316, 'media', 'default13518814291', '');
INSERT INTO `url_alias` VALUES (62, 'product', '2', 'dune-hd-lite-53d');
INSERT INTO `url_alias` VALUES (61, 'product', '3', 'dune-hd-max');
INSERT INTO `url_alias` VALUES (59, 'product', '4', 'dune-hd-smart-d1');
INSERT INTO `url_alias` VALUES (60, 'product', '5', 'dune-hd-smart-h1');
INSERT INTO `url_alias` VALUES (63, 'product', '6', 'hdpro-i6');
INSERT INTO `url_alias` VALUES (64, 'product', '7', 'hdprox6');
INSERT INTO `url_alias` VALUES (65, 'product', '8', 'tizzbird-f20');
INSERT INTO `url_alias` VALUES (105, 'product', '9', 'tvix-slim-s1');
INSERT INTO `url_alias` VALUES (68, 'product', '10', 'optoma-3dw1');
INSERT INTO `url_alias` VALUES (69, 'product', '11', 'optoma-hd33');
INSERT INTO `url_alias` VALUES (379, 'product', '13', 'dvd-combo-ibm-t40');
INSERT INTO `url_alias` VALUES (71, 'product', '13', 'optoma-hd23');
INSERT INTO `url_alias` VALUES (72, 'product', '14', 'optoma-eh2060');
INSERT INTO `url_alias` VALUES (73, 'product', '15', 'viewsonic-pjd-6553w');
INSERT INTO `url_alias` VALUES (74, 'product', '16', 'viewsonic-pjd-5233');
INSERT INTO `url_alias` VALUES (75, 'product', '17', 'viewsonic-pro8200');
INSERT INTO `url_alias` VALUES (141, 'product', '18', 'kinh-3d-dlp-hishock');
INSERT INTO `url_alias` VALUES (222, 'product', '19', 'kinh-phan-cuc-circular');
INSERT INTO `url_alias` VALUES (223, 'product', '20', 'kinh-hong-ngoai');
INSERT INTO `url_alias` VALUES (224, 'product', '21', 'bait-2012');
INSERT INTO `url_alias` VALUES (109, 'product', '22', 'titanic-3d');
INSERT INTO `url_alias` VALUES (110, 'product', '23', 'hoa-bi-2');
INSERT INTO `url_alias` VALUES (111, 'product', '24', 'men-in-black-2');
INSERT INTO `url_alias` VALUES (84, 'product', '25', 'the-avengers-2012');
INSERT INTO `url_alias` VALUES (112, 'product', '26', 'wrathofthetitans2012');
INSERT INTO `url_alias` VALUES (113, 'product', '27', '407-dark-flight');
INSERT INTO `url_alias` VALUES (114, 'product', '28', 'streetdance-2');
INSERT INTO `url_alias` VALUES (115, 'product', '29', 'the-lorax-3d');
INSERT INTO `url_alias` VALUES (116, 'product', '30', 'journey-2-the-mysterious-island');
INSERT INTO `url_alias` VALUES (117, 'product', '31', 'john-carter');
INSERT INTO `url_alias` VALUES (91, 'product', '32', 'mobydick2011');
INSERT INTO `url_alias` VALUES (118, 'product', '33', 'darkesthour2011');
INSERT INTO `url_alias` VALUES (146, 'product', '34', 'hdd-wd-elements-25-1tb');
INSERT INTO `url_alias` VALUES (147, 'product', '35', 'hdd-wd-caviar-green-3');
INSERT INTO `url_alias` VALUES (148, 'product', '36', 'hitachi-500gb-lifestudio-base');
INSERT INTO `url_alias` VALUES (149, 'product', '37', 'hdd-wd-passport-essential-smart-25-1tb');
INSERT INTO `url_alias` VALUES (150, 'product', '38', 'hdd-wd-passport-essential-smart-2');
INSERT INTO `url_alias` VALUES (151, 'product', '39', 'hdd-seagate-357200rpm-15tb');
INSERT INTO `url_alias` VALUES (152, 'product', '40', 'hdd-wd-elements-35-15tb');
INSERT INTO `url_alias` VALUES (153, 'product', '41', 'hdd-wd-elements-35-2tb');
INSERT INTO `url_alias` VALUES (101, 'product', '42', 'my-book-essential-35-2tb-usb-30');
INSERT INTO `url_alias` VALUES (102, 'product', '43', 'my-book-essential-35-1tb-usb-30');
INSERT INTO `url_alias` VALUES (103, 'product', '44', 'hitachi-35-1t');
INSERT INTO `url_alias` VALUES (268, 'media', 'default13518655762', '');
INSERT INTO `url_alias` VALUES (119, 'media', 'default1349505944', 'toi-muon-mo-1-phong-xem-phim-3d-cafe');
INSERT INTO `url_alias` VALUES (120, 'media', 'default1349506303', 'bao-gia-lap-dat-phong-xem-phim-3d');
INSERT INTO `url_alias` VALUES (121, 'media', 'en10', 'cty-tnhh-hoang-tuan-nguyen');
INSERT INTO `url_alias` VALUES (122, 'media', 'default1349510752', 'he-thong-chieu-phim-3d-coffee');
INSERT INTO `url_alias` VALUES (123, 'media', 'default1349510909', 'hoi-ve-tivi-plasma-va-ti-vi-led');
INSERT INTO `url_alias` VALUES (124, 'media', 'default1349511078', 'he-thong-chieu-phim-3d-cho-quan-cafe');
INSERT INTO `url_alias` VALUES (125, 'media', 'default1349511188', 'lap-dat-phong-chieu-phim-3d');
INSERT INTO `url_alias` VALUES (126, 'media', 'default1349511672', 'bao-gia-phong-chieu-phim-3d');
INSERT INTO `url_alias` VALUES (127, 'media', 'default1349512386', 'bao-gia-phong-chieu-phim-3d-coffee');
INSERT INTO `url_alias` VALUES (128, 'media', 'default1349512448', 'bao-gia-phong-chieu-phim-3d-1');
INSERT INTO `url_alias` VALUES (129, 'media', 'default1349512526', '');
INSERT INTO `url_alias` VALUES (130, 'media', 'default20', 'che-do-hau-mai-khi-mua-hang');
INSERT INTO `url_alias` VALUES (131, 'media', 'default18', '3d-viet-nam-ho-tro-khach-hang');
INSERT INTO `url_alias` VALUES (132, 'media', 'default16', 'ung-dung-3d-trong-giao-duc');
INSERT INTO `url_alias` VALUES (133, 'media', 'default17', 'ung-dung-3d-trong-quang-cao');
INSERT INTO `url_alias` VALUES (134, 'media', 'default13', 'cong-nghe-3d-tren-the-gioi');
INSERT INTO `url_alias` VALUES (143, 'media', 'default33', 'san-pham-holoscreen');
INSERT INTO `url_alias` VALUES (142, 'media', 'default1349774995', 'holoscreen--man-chieu-tren-kinh');
INSERT INTO `url_alias` VALUES (145, 'media', 'default8', 'danh-sach-khach-hang-da-lap-dat-he-thong-3d');
INSERT INTO `url_alias` VALUES (283, 'media', 'default13518678491', '');
INSERT INTO `url_alias` VALUES (273, 'media', 'default13518664581', '');
INSERT INTO `url_alias` VALUES (163, 'media', 'default1349837924', 'cafe-3d-sai-gon');
INSERT INTO `url_alias` VALUES (164, 'media', 'default1349838463', 'rap-chieu-phim-3d-tai-gia-hoanh-trang-o-sai-gon');
INSERT INTO `url_alias` VALUES (165, 'media', 'default1349838642', 'cafe-3d-quy-nhon');
INSERT INTO `url_alias` VALUES (166, 'media', 'default1349838951', 'cafe-3d-��a-nang');
INSERT INTO `url_alias` VALUES (167, 'media', 'default1349839227', 'cafe-3d-kien-giang');
INSERT INTO `url_alias` VALUES (168, 'media', 'default1349839700', 'cafe-3d-nha-trang--cam-ranh-1');
INSERT INTO `url_alias` VALUES (169, 'media', 'default1349841165', 'cafe-3d-hai-duong');
INSERT INTO `url_alias` VALUES (170, 'media', 'default1349841681', 'cafe-3d-long-xuyen');
INSERT INTO `url_alias` VALUES (171, 'media', 'default1349842233', 'cafe-3d-ha-noi-1');
INSERT INTO `url_alias` VALUES (172, 'media', 'default1349843238', 'cafe-3d-binh-duong-1');
INSERT INTO `url_alias` VALUES (173, 'media', 'default1349843620', 'cafe-3d-nang-thuy-tinh--kien-luong-1');
INSERT INTO `url_alias` VALUES (185, 'media', 'default1349862398', 'dolby-ra-mat-chuan-hinh-anh-3d-tai-gia-1');
INSERT INTO `url_alias` VALUES (186, 'media', 'default1349863111', '');
INSERT INTO `url_alias` VALUES (187, 'media', 'default1349863432', 'lg-ra-mat-loat-smart-tv-3d-2012-o-vn');
INSERT INTO `url_alias` VALUES (188, 'media', 'default1349863581', 'dolby-gay-an-tuong-voi-cong-nghe-3d-khong-kinh-moi-1');
INSERT INTO `url_alias` VALUES (189, 'media', 'default1349863770', 'phien-ban-3d-giup-titanic-pha-vo-ky-luc-ve-doanh-so-1');
INSERT INTO `url_alias` VALUES (190, 'media', 'default1349864310', 'nhu-cau-mua-tv-3d-tang-cao-1');
INSERT INTO `url_alias` VALUES (191, 'media', 'default1349864857', 'tai-sao-nguoi-viet-nam-lai-dung-yahoo-messenger');
INSERT INTO `url_alias` VALUES (192, 'media', 'default42', '');
INSERT INTO `url_alias` VALUES (193, 'media', 'default1349865077', 'cai-nhin-dau-tien-ve-tv-3d-khong-kinh-cua-sony-1');
INSERT INTO `url_alias` VALUES (194, 'media', 'default1349865222', 'game-cuoc-chien-3d-thu-dong-va-3d-chu-dong-1');
INSERT INTO `url_alias` VALUES (195, 'media', 'default1349865459', 'ban-biet-bao-nhieu-loai-cong-nghe-3d-1');
INSERT INTO `url_alias` VALUES (196, 'media', 'default1349866391', 'lam-sao-sam-duoc-may-chieu-hd-ung-y-1');
INSERT INTO `url_alias` VALUES (197, 'media', 'default1349866571', 'sholay-duoc-chuyen-the-sang-3d-sau-37-nam-1');
INSERT INTO `url_alias` VALUES (198, 'media', 'default1349867084', 'tuong-lai-cua-tv-3d-ra-sao-1');
INSERT INTO `url_alias` VALUES (199, 'media', 'default1349867492', 'cong-ty-tnhh-htn-tuyen-ky-thuat-vien-1');
INSERT INTO `url_alias` VALUES (200, 'media', 'default1349867720', '');
INSERT INTO `url_alias` VALUES (201, 'media', 'default1349868254', 'hinh-anh-cong-ty-hoang-tuan-nguyen-tai-hoi-cho-vietbuild-hcm-2012');
INSERT INTO `url_alias` VALUES (202, 'media', 'default1349868408', 'holoscreen-man-chieu-tren-kinh-tai-tiec-cuoi-ngay-30-092012');
INSERT INTO `url_alias` VALUES (203, 'media', 'default1349869356', 'holoscreen-0');
INSERT INTO `url_alias` VALUES (266, 'media', 'default13518646702', '');
INSERT INTO `url_alias` VALUES (272, 'media', 'default13518663171', '');
INSERT INTO `url_alias` VALUES (217, 'media', 'default13499357031', '');
INSERT INTO `url_alias` VALUES (211, 'media', 'default13499176681', 'cong-nghe-3d-chu-dong1');
INSERT INTO `url_alias` VALUES (225, 'media', 'default13505695421', '');
INSERT INTO `url_alias` VALUES (226, 'media', 'default13505764591', '');
INSERT INTO `url_alias` VALUES (269, 'media', 'default13518656272', '');
INSERT INTO `url_alias` VALUES (270, 'media', 'default13518656992', '');
INSERT INTO `url_alias` VALUES (271, 'media', 'default13518624661', '');
INSERT INTO `url_alias` VALUES (280, 'media', 'default13518675871', '');
INSERT INTO `url_alias` VALUES (438, 'sitemap', '134', 'sua-chua-laptop');
INSERT INTO `url_alias` VALUES (277, 'media', 'default13518667341', '');
INSERT INTO `url_alias` VALUES (286, 'media', 'default13518687941', '');
INSERT INTO `url_alias` VALUES (287, 'media', 'default13518689741', '');
INSERT INTO `url_alias` VALUES (288, 'media', 'default13518693481', '');
INSERT INTO `url_alias` VALUES (289, 'media', 'default13518695391', '');
INSERT INTO `url_alias` VALUES (290, 'media', 'default13518699381', '');
INSERT INTO `url_alias` VALUES (291, 'media', 'default13518705331', '');
INSERT INTO `url_alias` VALUES (292, 'media', 'default13518726071', '');
INSERT INTO `url_alias` VALUES (293, 'media', 'default13518727931', '');
INSERT INTO `url_alias` VALUES (294, 'media', 'default13518730342', '');
INSERT INTO `url_alias` VALUES (296, 'media', 'default13518734922', '');
INSERT INTO `url_alias` VALUES (298, 'media', 'default13518638111', '');
INSERT INTO `url_alias` VALUES (299, 'media', 'default13518637031', '');
INSERT INTO `url_alias` VALUES (300, 'media', 'default13518782621', '');
INSERT INTO `url_alias` VALUES (301, 'media', 'default13518784191', '');
INSERT INTO `url_alias` VALUES (302, 'media', 'default13518786611', '');
INSERT INTO `url_alias` VALUES (303, 'media', 'default13518789521', '');
INSERT INTO `url_alias` VALUES (304, 'media', 'default13518791311', '');
INSERT INTO `url_alias` VALUES (305, 'media', 'default13518793451', '');
INSERT INTO `url_alias` VALUES (306, 'media', 'default13518793841', '');
INSERT INTO `url_alias` VALUES (307, 'media', 'default13518795281', '');
INSERT INTO `url_alias` VALUES (308, 'media', 'default13518656271', '');
INSERT INTO `url_alias` VALUES (309, 'media', 'default13518803151', '');
INSERT INTO `url_alias` VALUES (310, 'media', 'default13518803181', '');
INSERT INTO `url_alias` VALUES (318, 'media', 'default13518823091', '');
INSERT INTO `url_alias` VALUES (312, 'media', 'default13518806091', '');
INSERT INTO `url_alias` VALUES (313, 'media', 'default13518809051', '');
INSERT INTO `url_alias` VALUES (314, 'media', 'default13518810211', '');
INSERT INTO `url_alias` VALUES (317, 'media', 'default13518819161', '');
INSERT INTO `url_alias` VALUES (319, 'media', 'default13518843651', '');
INSERT INTO `url_alias` VALUES (320, 'media', 'default13518844851', '');
INSERT INTO `url_alias` VALUES (321, 'media', 'default13518848801', '');
INSERT INTO `url_alias` VALUES (322, 'media', 'default13518849541', '');
INSERT INTO `url_alias` VALUES (323, 'media', 'default13518850081', '');
INSERT INTO `url_alias` VALUES (337, 'media', 'default13540388591', '');
INSERT INTO `url_alias` VALUES (339, 'sitemap', '104', 'sua-chua-ipad');
INSERT INTO `url_alias` VALUES (340, 'media', 'default13540398361', '');
INSERT INTO `url_alias` VALUES (423, 'sitemap', '119', 'ho-tro-ky-thuat');
INSERT INTO `url_alias` VALUES (442, 'sitemap', '138', 'han-ban-le-laptop');
INSERT INTO `url_alias` VALUES (349, 'media', 'default13540769461', 'macbook-pro-moi');
INSERT INTO `url_alias` VALUES (350, 'media', 'default13540771321', 'pin-laptop');
INSERT INTO `url_alias` VALUES (351, 'media', 'default13540772901', 've-sinh-laptop');
INSERT INTO `url_alias` VALUES (352, 'media', 'default13540774391', 'cai-dat-window-server-backup');
INSERT INTO `url_alias` VALUES (355, 'sitemap', '108', 'video');
INSERT INTO `url_alias` VALUES (356, 'sitemap', '109', 'hinh-anh');
INSERT INTO `url_alias` VALUES (365, 'media', 'default13540781761', 'ngan-ket-noi-khi-download-trong-window');
INSERT INTO `url_alias` VALUES (366, 'media', 'default13540783231', '5-buoc-khac-phuc-wifi');
INSERT INTO `url_alias` VALUES (367, 'media', 'default13540784341', 'office2010-tieng-viet');
INSERT INTO `url_alias` VALUES (368, 'media', 'default13540797161', 'tuyet-chieu-phat-wifi-tu-laptop-su-dung-window-7');
INSERT INTO `url_alias` VALUES (369, 'media', 'default13540804461', 'thiet-lap-truy-cap-tu-xa-voi-dia-chi-ip-dong');
INSERT INTO `url_alias` VALUES (370, 'media', 'default13540806211', 'cai-dat-window-phone-7-cho-htc-hd2');
INSERT INTO `url_alias` VALUES (371, 'product', '6', 'adapter-hp-18.5v-4.74a');
INSERT INTO `url_alias` VALUES (372, 'product', '7', 'adapter-IBM-20V-2.25A');
INSERT INTO `url_alias` VALUES (373, 'product', '8', 'IBM-16V-4.7A');
INSERT INTO `url_alias` VALUES (374, 'product', '9', 'adapter-sony-19.5V-6.15A');
INSERT INTO `url_alias` VALUES (375, 'product', '10', 'adapter-dell-19.5V-4.62A');
INSERT INTO `url_alias` VALUES (376, 'product', '11', 'dvd-rw-sata-mong');
INSERT INTO `url_alias` VALUES (378, 'product', '12', 'dvd-rw-sata');
INSERT INTO `url_alias` VALUES (380, 'product', '14', 'DVD COMBO T60');
INSERT INTO `url_alias` VALUES (381, 'product', '15', 'o-cd-ata-nhieu-dong-may');
INSERT INTO `url_alias` VALUES (382, 'product', '16', 'dvd-rw-macbook');
INSERT INTO `url_alias` VALUES (383, 'product', '17', 'ram-hddr3-2gb-bus-1066');
INSERT INTO `url_alias` VALUES (384, 'product', '18', 'ram-laptop-2g-bus-800/667');
INSERT INTO `url_alias` VALUES (385, 'product', '19', 'ram-laptop-512m-bus-667');
INSERT INTO `url_alias` VALUES (386, 'product', '20', 'hdd-100g-ata');
INSERT INTO `url_alias` VALUES (387, 'product', '21', 'hdd-40g-ata');
INSERT INTO `url_alias` VALUES (388, 'product', '22', 'hdd-sata-250g');
INSERT INTO `url_alias` VALUES (389, 'product', '23', 'hdd-sata-320g');
INSERT INTO `url_alias` VALUES (390, 'product', '24', 'hdd-500gb-sata');
INSERT INTO `url_alias` VALUES (391, 'product', '25', 'hdd-120g-ata-zip');
INSERT INTO `url_alias` VALUES (392, 'product', '26', 'dell-d630');
INSERT INTO `url_alias` VALUES (393, 'product', '27', 'hp-dv6000-chip-6150');
INSERT INTO `url_alias` VALUES (394, 'product', '28', 'dell-xps-1330');
INSERT INTO `url_alias` VALUES (395, 'product', '29', 'mainboard-sony-fe');
INSERT INTO `url_alias` VALUES (396, 'product', '30', 'mainboard-toshiba-a135');
INSERT INTO `url_alias` VALUES (397, 'product', '31', 'mainboard-toshiba-m45');
INSERT INTO `url_alias` VALUES (398, 'product', '32', 'pin-hp-dv4');
INSERT INTO `url_alias` VALUES (399, 'product', '33', 'hp-tx1000');
INSERT INTO `url_alias` VALUES (400, 'product', '34', 'hp-dv-2000');
INSERT INTO `url_alias` VALUES (401, 'product', '35', 'pin-dell-vistro-1400');
INSERT INTO `url_alias` VALUES (402, 'product', '36', 'pin-sony-pbs2');
INSERT INTO `url_alias` VALUES (403, 'product', '37', 'pin-ibm-t60');
INSERT INTO `url_alias` VALUES (404, 'product', '38', 'battery-dell-xps');
INSERT INTO `url_alias` VALUES (405, 'product', '39', 'battery-acer-50l6');
INSERT INTO `url_alias` VALUES (406, 'product', '40', 'ibm-battery-t40');
INSERT INTO `url_alias` VALUES (407, 'product', '41', 'lcd-14.1-vuong');
INSERT INTO `url_alias` VALUES (408, 'product', '42', 'lcd-14.1wg');
INSERT INTO `url_alias` VALUES (409, 'product', '43', 'lcd-12.1wg');
INSERT INTO `url_alias` VALUES (410, 'product', '44', 'lcd-13.3wg');
INSERT INTO `url_alias` VALUES (411, 'product', '45', 'lcd-14-led');
INSERT INTO `url_alias` VALUES (412, 'product', '46', 'lcd-15.6-led');
INSERT INTO `url_alias` VALUES (413, 'media', 'default13540920041', '');
INSERT INTO `url_alias` VALUES (414, 'media', 'default13540921671', '');
INSERT INTO `url_alias` VALUES (415, 'media', 'default13540923141', '');
INSERT INTO `url_alias` VALUES (416, 'media', 'default13540923851', '');
INSERT INTO `url_alias` VALUES (417, 'media', 'default13540925921', '');
INSERT INTO `url_alias` VALUES (418, 'media', 'default13540929371', '');
INSERT INTO `url_alias` VALUES (419, 'media', 'default13540935491', '');
INSERT INTO `url_alias` VALUES (420, 'media', 'default13540935811', '');
INSERT INTO `url_alias` VALUES (421, 'media', 'default13540963751', '');
INSERT INTO `url_alias` VALUES (441, 'sitemap', '137', 'sua-man-hinh-laptop');
INSERT INTO `url_alias` VALUES (440, 'sitemap', '136', 'sua-laptop-co-nguon-khong-hinh');

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

INSERT INTO `user` VALUES ('admin', 'admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Tuan Pham', 'tuan.pham@elifepartners.com', 'active', 0, '', '', '', '', '0000-00-00 00:00:00', '', '2012-10-20 14:40:08', '2012-10-20 14:40:08', '0000-00-00 00:00:00', 'admin', 'admin', '', '192.168.1.10');
INSERT INTO `user` VALUES ('aaaaaaaaa', '0', 'aaaaaaaaa', '552e6a97297c53e592208cf97fbb3b60', 'asdsad', 'sadsa@adas.com', 'lock', 0, '', '', '', '', '0000-00-00 00:00:00', '', '2012-10-11 00:00:40', '2012-10-11 00:00:40', '2012-10-20 14:17:42', 'admin', 'admin', 'admin', '192.168.1.10');
INSERT INTO `user` VALUES ('username1', '0', 'username1', '827ccb0eea8a706c4c34a16891f84e7b', 'ajpasdjdasjdoas', 'tuanpham@fadjal.com', 'lock', 0, '', '', '', '', '0000-00-00 00:00:00', '', '2012-10-11 00:01:12', '2012-10-11 00:01:12', '2012-10-20 14:17:42', 'admin', 'admin', 'admin', '192.168.1.10');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2868 ;

-- 
-- Dumping data for table `user_stats`
-- 

INSERT INTO `user_stats` VALUES (2865, '2012-12-11 16:10:05', '80c82ec7d4f79b747af74c673a7bf4ee', '', '127.0.0.1');
INSERT INTO `user_stats` VALUES (2864, '2012-12-11 16:10:05', '8e889e0c1575fec6722e617eff714aec', '', '127.0.0.1');
INSERT INTO `user_stats` VALUES (2866, '2012-12-11 16:10:05', '977c876471535eec1a14002253d8148a', '', '127.0.0.1');
INSERT INTO `user_stats` VALUES (2867, '2012-12-11 16:10:05', '8c3610f5913974f9c0db3098941b10de', '', '127.0.0.1');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `weblink`
-- 

INSERT INTO `weblink` VALUES (1, 'banner', '#', 'upload/vaio.png', 1);
INSERT INTO `weblink` VALUES (2, 'banner', '#', 'upload/acer.png', 1);
INSERT INTO `weblink` VALUES (3, 'banner', '#', 'upload/apple.png', 1);
INSERT INTO `weblink` VALUES (4, 'banner', '#', 'upload/dell-1.png', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `weblink_description`
-- 

CREATE TABLE `weblink_description` (
  `id` bigint(20) NOT NULL auto_increment,
  `weblinkid` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `languageid` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `weblink_description`
-- 

INSERT INTO `weblink_description` VALUES (5, 1, 'Vaio', 'vn');
INSERT INTO `weblink_description` VALUES (6, 2, 'Acer', 'vn');
INSERT INTO `weblink_description` VALUES (7, 3, 'Apple', 'vn');
INSERT INTO `weblink_description` VALUES (8, 4, 'Dell', 'vn');

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
