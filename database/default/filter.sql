-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 08, 2013 at 04:00 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `smartweb_fanhanghieu`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `filter`
-- 

CREATE TABLE `filter` (
  `filterid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`filterid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `filter_description`
-- 

CREATE TABLE `filter_description` (
  `filterid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY  (`filterid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `filter_value`
-- 

CREATE TABLE `filter_value` (
  `filter_value_id` bigint(20) NOT NULL auto_increment,
  `filterid` bigint(20) NOT NULL,
  `image` text NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`filter_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `filter_value_description`
-- 

CREATE TABLE `filter_value_description` (
  `filter_value_id` bigint(20) NOT NULL,
  `filterid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY  (`filter_value_id`,`filterid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
