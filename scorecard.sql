-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2014 at 01:36 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scorecard`
--

-- --------------------------------------------------------

--
-- Table structure for table `ball`
--

CREATE TABLE IF NOT EXISTS `ball` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ball_no` int(10) NOT NULL,
  `over_id` int(10) NOT NULL,
  `bat_by` int(10) NOT NULL,
  `result` int(10) NOT NULL,
  `extra` int(10) NOT NULL,
  `wicket` int(10) NOT NULL,
  `six_four` int(10) NOT NULL,
  `comment` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=249 ;

--
-- Dumping data for table `ball`
--

INSERT INTO `ball` (`id`, `ball_no`, `over_id`, `bat_by`, `result`, `extra`, `wicket`, `six_four`, `comment`) VALUES
(1, 1, 1, 2, 1, 0, 0, 0, ''),
(2, 2, 1, 11, 1, 0, 0, 0, ''),
(3, 3, 1, 2, 0, 0, 0, 0, ''),
(4, 4, 1, 2, 1, 0, 0, 0, ''),
(5, 5, 1, 11, 0, 0, 0, 0, ''),
(6, 6, 1, 11, 1, 0, 0, 0, ''),
(7, 1, 2, 11, 1, 0, 0, 0, ''),
(8, 2, 2, 2, 1, 0, 0, 0, ''),
(9, 3, 2, 11, 4, 0, 0, 4, ''),
(10, 4, 2, 11, 4, 0, 0, 4, ''),
(11, 5, 2, 11, 0, 0, 0, 0, ''),
(12, 6, 2, 11, 1, 0, 0, 0, ''),
(13, 1, 3, 11, 6, 0, 0, 6, ''),
(14, 2, 3, 11, 1, 0, 0, 0, ''),
(15, 3, 3, 2, 0, 0, 1, 0, 'Caught by A Chandila'),
(16, 4, 3, 3, 0, 0, 0, 0, ''),
(17, 5, 3, 3, 1, 0, 0, 0, ''),
(18, 6, 3, 11, 1, 0, 0, 0, ''),
(19, 1, 4, 11, 4, 0, 0, 4, ''),
(20, 2, 4, 11, 1, 0, 0, 0, ''),
(21, 3, 4, 3, 4, 0, 0, 4, ''),
(22, 4, 4, 3, 0, 0, 0, 0, ''),
(23, 5, 4, 3, 1, 1, 0, 0, 'legbye'),
(24, 6, 4, 11, 4, 0, 0, 4, ''),
(25, 1, 5, 3, 4, 0, 0, 4, ''),
(26, 2, 5, 3, 0, 0, 0, 0, ''),
(27, 3, 5, 3, 1, 0, 0, 0, ''),
(28, 4, 5, 11, 0, 0, 0, 0, ''),
(29, 5, 5, 11, 1, 0, 0, 0, ''),
(30, 6, 5, 3, 1, 0, 0, 0, ''),
(31, 1, 6, 3, 6, 0, 0, 6, ''),
(32, 2, 6, 3, 0, 0, 0, 0, ''),
(33, 3, 6, 3, 1, 0, 0, 0, ''),
(34, 4, 6, 11, 4, 0, 0, 4, ''),
(35, 5, 6, 11, 1, 1, 0, 0, 'legbye'),
(36, 6, 6, 3, 1, 0, 0, 0, ''),
(37, 1, 7, 3, 1, 0, 0, 0, ''),
(38, 2, 7, 11, 0, 0, 0, 0, ''),
(39, 3, 7, 11, 0, 0, 0, 0, ''),
(40, 4, 7, 11, 1, 0, 0, 0, ''),
(41, 5, 7, 3, 0, 0, 0, 0, ''),
(42, 6, 7, 3, 1, 0, 0, 0, ''),
(43, 1, 8, 3, 1, 0, 0, 0, ''),
(44, 2, 8, 11, 1, 0, 0, 0, ''),
(45, 3, 8, 3, 1, 0, 0, 0, ''),
(46, 4, 8, 11, 1, 0, 0, 0, ''),
(47, 5, 8, 3, 4, 0, 0, 4, ''),
(48, 6, 8, 3, 1, 0, 0, 0, ''),
(49, 1, 9, 3, 6, 0, 0, 6, ''),
(50, 2, 9, 3, 1, 0, 0, 0, ''),
(51, 3, 9, 11, 1, 1, 0, 0, 'legbye'),
(52, 4, 9, 3, 1, 0, 0, 0, ''),
(53, 5, 9, 11, 1, 0, 0, 0, ''),
(54, 6, 9, 3, 1, 0, 0, 0, ''),
(55, 1, 10, 3, 1, 0, 0, 0, ''),
(56, 2, 10, 11, 2, 0, 0, 4, ''),
(57, 3, 10, 11, 4, 0, 0, 4, ''),
(58, 4, 10, 11, 1, 0, 0, 0, ''),
(59, 5, 10, 3, 2, 0, 0, 0, ''),
(60, 6, 10, 3, 1, 0, 0, 0, ''),
(61, 1, 11, 3, 4, 0, 0, 4, ''),
(62, 2, 11, 3, 1, 0, 0, 0, ''),
(63, 3, 11, 11, 0, 0, 0, 0, ''),
(64, 4, 11, 11, 4, 0, 0, 4, ''),
(65, 5, 11, 11, 1, 0, 0, 0, ''),
(66, 6, 11, 3, 1, 0, 0, 0, ''),
(67, 1, 12, 3, 1, 0, 0, 0, ''),
(68, 2, 12, 11, 1, 0, 0, 0, ''),
(69, 3, 12, 3, 1, 0, 0, 0, ''),
(70, 4, 12, 11, 1, 0, 0, 0, ''),
(71, 5, 12, 3, 1, 0, 0, 0, ''),
(72, 6, 12, 11, 1, 0, 0, 0, ''),
(73, 1, 13, 11, 1, 0, 0, 0, ''),
(74, 2, 13, 3, 1, 0, 0, 0, ''),
(75, 3, 13, 11, 1, 0, 0, 0, ''),
(76, 4, 13, 3, 0, 0, 1, 0, 'LBW!'),
(77, 5, 13, 1, 1, 0, 0, 0, ''),
(78, 6, 13, 11, 1, 0, 0, 0, ''),
(79, 1, 14, 11, 1, 0, 0, 0, ''),
(80, 2, 14, 1, 1, 0, 0, 0, ''),
(81, 3, 14, 11, 1, 1, 0, 0, 'wide'),
(82, 3, 14, 11, 4, 0, 0, 4, ''),
(83, 4, 14, 11, 4, 0, 0, 4, ''),
(84, 5, 14, 11, 2, 0, 0, 0, ''),
(85, 6, 14, 11, 1, 0, 0, 0, ''),
(86, 1, 15, 11, 1, 0, 0, 0, ''),
(87, 2, 15, 1, 1, 0, 0, 0, ''),
(88, 3, 15, 11, 4, 0, 0, 4, ''),
(89, 4, 15, 11, 1, 0, 0, 0, ''),
(90, 5, 15, 11, 1, 0, 0, 0, ''),
(91, 6, 15, 1, 2, 2, 0, 0, 'wide'),
(92, 6, 15, 1, 2, 0, 0, 0, ''),
(93, 1, 16, 11, 1, 0, 0, 0, ''),
(94, 2, 16, 1, 1, 0, 0, 0, ''),
(95, 3, 16, 11, 4, 0, 0, 4, ''),
(96, 4, 16, 11, 0, 0, 0, 0, ''),
(97, 5, 16, 11, 4, 0, 0, 4, ''),
(98, 6, 16, 11, 4, 0, 0, 4, ''),
(99, 1, 17, 1, 0, 0, 1, 0, 'Wicket! Runout of Hussey by RS Dravid'),
(100, 2, 17, 5, 0, 0, 0, 0, ''),
(101, 3, 17, 5, 0, 0, 1, 0, 'Bowled!'),
(102, 4, 17, 10, 1, 0, 0, 0, ''),
(103, 5, 17, 1, 1, 0, 0, 0, ''),
(104, 6, 17, 10, 1, 0, 0, 0, ''),
(105, 1, 18, 10, 2, 0, 0, 0, ''),
(106, 2, 18, 10, 1, 0, 0, 0, ''),
(107, 3, 18, 1, 2, 0, 0, 0, ''),
(108, 4, 18, 1, 4, 0, 0, 4, ''),
(109, 5, 18, 1, 2, 0, 0, 0, ''),
(110, 6, 18, 1, 1, 0, 0, 0, ''),
(111, 1, 19, 1, 0, 0, 0, 0, ''),
(112, 2, 19, 1, 2, 0, 0, 0, ''),
(113, 3, 19, 1, 1, 0, 0, 0, ''),
(114, 4, 19, 10, 1, 1, 0, 0, 'legbye'),
(115, 5, 19, 1, 2, 0, 0, 0, ''),
(116, 6, 19, 1, 0, 0, 1, 0, 'Wicket! Caught by STR Binny'),
(117, 1, 20, 8, 1, 0, 0, 0, ''),
(118, 2, 20, 10, 0, 0, 0, 0, ''),
(119, 3, 20, 10, 6, 0, 0, 6, ''),
(120, 4, 20, 10, 2, 0, 0, 0, ''),
(121, 5, 20, 10, 2, 0, 0, 0, ''),
(122, 1, 21, 21, 4, 0, 0, 4, ''),
(123, 2, 21, 21, 0, 0, 0, 0, ''),
(124, 3, 21, 21, 0, 0, 0, 0, ''),
(125, 4, 21, 21, 0, 0, 0, 0, ''),
(126, 5, 21, 21, 1, 0, 0, 0, ''),
(127, 6, 21, 13, 0, 0, 0, 0, ''),
(128, 1, 22, 21, 0, 0, 0, 0, ''),
(129, 2, 22, 21, 1, 0, 0, 0, ''),
(130, 3, 22, 13, 1, 0, 0, 0, ''),
(131, 4, 22, 21, 1, 0, 0, 0, ''),
(132, 5, 22, 13, 0, 0, 0, 0, ''),
(133, 6, 22, 13, 2, 0, 0, 0, ''),
(134, 1, 23, 21, 6, 0, 0, 6, ''),
(135, 2, 23, 21, 1, 0, 0, 0, ''),
(136, 3, 23, 13, 0, 0, 0, 0, ''),
(137, 4, 23, 13, 2, 0, 0, 0, ''),
(138, 5, 23, 13, 1, 0, 0, 0, ''),
(139, 6, 23, 21, 4, 0, 0, 4, ''),
(140, 1, 24, 13, 1, 0, 0, 0, ''),
(141, 2, 24, 21, 1, 0, 0, 0, ''),
(142, 3, 24, 13, 4, 0, 0, 4, ''),
(143, 4, 24, 13, 1, 0, 0, 0, ''),
(144, 5, 24, 21, 0, 0, 0, 0, ''),
(145, 6, 24, 21, 1, 0, 0, 0, ''),
(146, 1, 25, 21, 4, 0, 0, 4, ''),
(147, 2, 25, 21, 0, 0, 0, 0, ''),
(148, 3, 25, 21, 2, 0, 0, 0, ''),
(149, 4, 25, 21, 6, 0, 0, 6, ''),
(150, 5, 25, 21, 1, 0, 0, 0, ''),
(151, 6, 25, 13, 1, 1, 0, 0, 'wide'),
(152, 6, 25, 13, 2, 0, 0, 0, ''),
(153, 1, 26, 21, 0, 0, 0, 0, ''),
(154, 2, 26, 21, 0, 0, 0, 0, ''),
(155, 3, 26, 21, 1, 0, 0, 0, ''),
(156, 4, 26, 13, 1, 0, 0, 0, ''),
(157, 5, 26, 21, 4, 0, 0, 4, ''),
(158, 6, 26, 21, 1, 0, 0, 0, ''),
(159, 1, 27, 21, 2, 0, 0, 0, ''),
(160, 2, 27, 21, 4, 0, 0, 4, ''),
(161, 3, 27, 21, 1, 0, 0, 0, ''),
(162, 4, 27, 13, 1, 0, 0, 0, ''),
(163, 5, 27, 21, 2, 0, 0, 0, ''),
(164, 6, 27, 21, 6, 0, 0, 6, ''),
(165, 1, 28, 13, 0, 0, 0, 0, ''),
(166, 2, 28, 13, 0, 0, 1, 0, 'Bowled!'),
(167, 3, 28, 17, 1, 0, 0, 0, ''),
(168, 4, 28, 21, 1, 0, 0, 0, ''),
(169, 5, 28, 17, 1, 0, 0, 0, ''),
(170, 6, 28, 21, 0, 0, 0, 0, ''),
(171, 1, 29, 17, 0, 0, 0, 0, ''),
(172, 2, 29, 17, 0, 0, 0, 0, ''),
(173, 3, 29, 17, 4, 0, 0, 4, ''),
(174, 4, 29, 17, 1, 0, 0, 0, ''),
(175, 5, 29, 21, 0, 0, 0, 0, ''),
(176, 6, 29, 21, 1, 1, 0, 0, 'wide'),
(177, 6, 29, 21, 2, 0, 0, 0, ''),
(178, 1, 30, 17, 1, 1, 0, 0, 'legbye'),
(179, 2, 30, 21, 1, 0, 0, 0, ''),
(180, 3, 30, 17, 0, 0, 1, 0, 'Wicket! Caught by R Ashwin'),
(181, 4, 30, 12, 2, 0, 0, 0, ''),
(182, 5, 30, 12, 1, 0, 0, 0, ''),
(183, 6, 30, 21, 1, 0, 0, 0, ''),
(184, 1, 31, 21, 1, 0, 0, 0, ''),
(185, 2, 31, 12, 1, 0, 0, 0, ''),
(186, 3, 31, 12, 1, 1, 0, 0, 'wide'),
(187, 3, 31, 21, 1, 0, 0, 0, ''),
(188, 4, 31, 12, 1, 1, 0, 0, 'legbye'),
(189, 5, 31, 21, 4, 0, 0, 4, ''),
(190, 6, 31, 21, 1, 0, 0, 0, ''),
(191, 1, 32, 21, 1, 0, 0, 0, ''),
(192, 2, 32, 12, 1, 0, 0, 0, ''),
(193, 3, 32, 21, 1, 0, 0, 0, ''),
(194, 4, 32, 12, 1, 0, 0, 0, ''),
(195, 5, 32, 21, 1, 0, 0, 0, ''),
(196, 6, 32, 12, 0, 0, 0, 0, ''),
(197, 1, 33, 21, 6, 0, 0, 6, ''),
(198, 2, 33, 21, 0, 0, 0, 0, ''),
(199, 3, 33, 21, 0, 0, 0, 0, ''),
(200, 4, 33, 21, 2, 0, 0, 0, ''),
(201, 5, 33, 21, 1, 0, 0, 0, ''),
(202, 6, 33, 12, 0, 0, 0, 0, ''),
(203, 1, 34, 21, 1, 0, 0, 0, ''),
(204, 2, 34, 12, 0, 0, 1, 0, 'Wicket!, Caught by MS Dhoni'),
(205, 3, 34, 18, 0, 0, 0, 0, ''),
(206, 4, 34, 18, 2, 0, 0, 0, ''),
(207, 5, 34, 18, 4, 0, 0, 4, ''),
(208, 6, 34, 18, 1, 0, 0, 0, ''),
(209, 1, 35, 18, 1, 0, 0, 0, ''),
(210, 2, 35, 21, 1, 0, 0, 0, ''),
(211, 3, 35, 18, 3, 0, 0, 0, ''),
(212, 4, 35, 21, 1, 0, 0, 0, ''),
(213, 5, 35, 18, 4, 0, 0, 4, ''),
(214, 6, 35, 18, 1, 0, 0, 0, ''),
(215, 1, 36, 18, 0, 0, 0, 0, ''),
(216, 2, 36, 18, 1, 0, 0, 0, ''),
(217, 3, 36, 21, 2, 0, 0, 0, ''),
(218, 4, 36, 21, 1, 0, 0, 0, ''),
(219, 5, 36, 18, 1, 0, 0, 0, ''),
(220, 6, 36, 21, 1, 1, 0, 0, 'noball'),
(221, 6, 36, 21, 1, 1, 0, 0, 'legbye'),
(222, 1, 37, 21, 6, 0, 0, 6, ''),
(223, 2, 37, 21, 6, 0, 0, 6, ''),
(224, 3, 37, 21, 1, 1, 0, 0, 'wide'),
(225, 3, 37, 21, 0, 0, 0, 0, ''),
(226, 4, 37, 21, 1, 1, 0, 0, 'wide'),
(227, 4, 37, 21, 1, 0, 0, 0, ''),
(228, 5, 37, 18, 1, 0, 0, 0, ''),
(229, 6, 37, 21, 2, 0, 0, 0, ''),
(230, 1, 38, 18, 1, 0, 0, 0, ''),
(231, 2, 38, 21, 2, 0, 0, 0, ''),
(232, 3, 38, 21, 0, 0, 1, 0, 'Wicket!, Caught by MEK Hussey'),
(233, 4, 38, 20, 1, 0, 0, 0, ''),
(234, 5, 38, 18, 6, 0, 0, 6, ''),
(235, 6, 38, 18, 1, 1, 0, 0, 'wide'),
(236, 6, 38, 18, 1, 0, 0, 0, ''),
(237, 1, 39, 18, 1, 0, 0, 0, ''),
(238, 2, 39, 20, 1, 0, 0, 0, ''),
(239, 3, 39, 18, 0, 0, 0, 0, ''),
(240, 4, 39, 18, 4, 0, 0, 4, ''),
(241, 5, 39, 18, 1, 0, 0, 0, ''),
(242, 6, 39, 20, 0, 0, 0, 0, ''),
(243, 1, 40, 18, 0, 0, 0, 0, ''),
(244, 2, 40, 18, 1, 0, 0, 0, ''),
(245, 3, 40, 20, 2, 0, 0, 0, ''),
(246, 4, 40, 20, 4, 0, 0, 0, ''),
(247, 5, 40, 20, 1, 0, 0, 0, ''),
(248, 6, 40, 18, 2, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `batting_scorecard`
--

CREATE TABLE IF NOT EXISTS `batting_scorecard` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `match_id` int(10) NOT NULL,
  `team_id` int(10) NOT NULL,
  `player_id` int(10) NOT NULL,
  `run` int(10) NOT NULL,
  `ball` int(10) NOT NULL,
  `four` int(10) NOT NULL,
  `six` int(10) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'not out',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `batting_scorecard`
--

INSERT INTO `batting_scorecard` (`id`, `match_id`, `team_id`, `player_id`, `run`, `ball`, `four`, `six`, `status`) VALUES
(1, 1, 2, 21, 101, 61, 6, 6, 'out'),
(2, 1, 2, 13, 16, 15, 1, 0, 'out'),
(3, 1, 2, 17, 7, 8, 1, 0, 'out'),
(4, 1, 2, 12, 6, 9, 0, 0, 'out'),
(5, 2, 2, 18, 36, 22, 3, 1, 'not out'),
(6, 2, 2, 20, 9, 6, 1, 0, 'not out'),
(7, 1, 1, 2, 3, 5, 0, 0, 'out'),
(8, 1, 1, 11, 88, 51, 13, 1, 'out'),
(9, 1, 1, 3, 51, 35, 4, 2, 'out'),
(10, 1, 1, 1, 21, 16, 1, 0, 'out'),
(11, 1, 1, 5, 0, 2, 0, 0, 'out'),
(12, 2, 1, 10, 15, 9, 0, 1, 'not out'),
(13, 2, 1, 8, 1, 1, 0, 0, 'not out'),
(14, 1, 2, 18, 36, 22, 3, 1, 'not out'),
(15, 1, 2, 20, 9, 6, 1, 0, 'not out'),
(16, 1, 1, 10, 15, 9, 0, 1, 'not out'),
(17, 1, 1, 8, 1, 1, 0, 0, 'not out');

-- --------------------------------------------------------

--
-- Table structure for table `bowling_scorecard`
--

CREATE TABLE IF NOT EXISTS `bowling_scorecard` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `match_id` int(10) NOT NULL,
  `team_id` int(10) NOT NULL,
  `player_id` int(10) NOT NULL,
  `over` varchar(10) NOT NULL,
  `run` int(10) NOT NULL,
  `wicket` int(10) NOT NULL,
  `extra` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `bowling_scorecard`
--

INSERT INTO `bowling_scorecard` (`id`, `match_id`, `team_id`, `player_id`, `over`, `run`, `wicket`, `extra`) VALUES
(1, 1, 1, 7, '2.0', 19, 0, 0),
(2, 1, 1, 9, '4.0', 30, 0, 2),
(3, 1, 1, 8, '3.0', 32, 0, 1),
(4, 1, 1, 4, '4.0', 20, 2, 0),
(5, 1, 1, 5, '3.0', 45, 0, 2),
(6, 1, 1, 10, '4.0', 36, 2, 2),
(7, 1, 2, 14, '3.0', 16, 1, 0),
(8, 1, 2, 16, '2.0', 24, 0, 0),
(9, 1, 2, 22, '4.0', 20, 3, 0),
(10, 1, 2, 19, '4.0', 49, 0, 0),
(11, 1, 2, 15, '3.0', 32, 0, 2),
(12, 1, 2, 21, '1.5', 21, 0, 0),
(13, 1, 2, 18, '2.0', 20, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fall_of_wicket`
--

CREATE TABLE IF NOT EXISTS `fall_of_wicket` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `match_id` int(10) NOT NULL,
  `team_id` int(10) NOT NULL,
  `player_id` int(10) NOT NULL,
  `run` int(10) NOT NULL,
  `over` varchar(10) NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `fall_of_wicket`
--

INSERT INTO `fall_of_wicket` (`id`, `match_id`, `team_id`, `player_id`, `run`, `over`, `detail`) VALUES
(1, 1, 2, 13, 71, '7.2', 'c MEK Hussey b DJ Bravo'),
(2, 1, 2, 17, 84, '9.3', 'bowled b R Ashwin'),
(3, 1, 2, 12, 113, '13.2', 'c b R Ashwin'),
(4, 1, 2, 21, 159, '17.3', 'c MS Dhoni b DJ Bravo'),
(5, 1, 1, 2, 22, '2.3', 'c b A Chandila'),
(6, 1, 1, 3, 112, '12.4', 'runout RS Dravid'),
(7, 1, 1, 11, 154, '16.1', 'lbw b JP Faulkner'),
(8, 1, 1, 5, 154, '16.3', 'c STR Binny b JP Faulkner'),
(9, 1, 1, 1, 175, '18.6', 'bowled b JP Faulkner');

-- --------------------------------------------------------

--
-- Table structure for table `man_of_the_match`
--

CREATE TABLE IF NOT EXISTS `man_of_the_match` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `player_id` int(10) NOT NULL,
  `match_id` int(10) NOT NULL,
  `runs` int(10) NOT NULL,
  `balls` int(10) NOT NULL,
  `wickets` int(10) NOT NULL,
  `fours` int(10) NOT NULL,
  `sixes` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `man_of_the_match`
--

INSERT INTO `man_of_the_match` (`id`, `player_id`, `match_id`, `runs`, `balls`, `wickets`, `fours`, `sixes`) VALUES
(1, 11, 1, 88, 51, 0, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE IF NOT EXISTS `match` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team_a_id` int(10) NOT NULL,
  `team_b_id` int(10) NOT NULL,
  `curr_batting_team` varchar(10) NOT NULL,
  `curr_bowling_team` varchar(10) NOT NULL,
  `team_a_score` int(10) NOT NULL,
  `team_a_over` varchar(10) NOT NULL,
  `team_a_wicket` int(10) NOT NULL,
  `team_a_four` int(10) NOT NULL,
  `team_a_six` int(10) NOT NULL,
  `team_b_score` int(10) NOT NULL,
  `team_b_over` varchar(10) NOT NULL,
  `team_b_wicket` int(10) NOT NULL,
  `team_b_four` int(10) NOT NULL,
  `team_b_six` int(10) NOT NULL,
  `target` int(10) NOT NULL,
  `curr_over_id` int(10) NOT NULL,
  `curr_ball_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `sub_desc` varchar(100) NOT NULL,
  `series` text NOT NULL,
  `date` int(100) NOT NULL,
  `venue` text NOT NULL,
  `match_type` text NOT NULL,
  `toss` text NOT NULL,
  `result` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`id`, `team_a_id`, `team_b_id`, `curr_batting_team`, `curr_bowling_team`, `team_a_score`, `team_a_over`, `team_a_wicket`, `team_a_four`, `team_a_six`, `team_b_score`, `team_b_over`, `team_b_wicket`, `team_b_four`, `team_b_six`, `target`, `curr_over_id`, `curr_ball_id`, `description`, `sub_desc`, `series`, `date`, `venue`, `match_type`, `toss`, `result`) VALUES
(1, 1, 2, 'a', 'b', 186, '19.5', 5, 18, 4, 185, '20.0', 4, 12, 7, 186, 0, 0, 'Chennai Super Kings vs Rajasthan Royals', '30th Match - IPL 2013', 'IPL T20 2013', 1410443271, 'MA Chidambaram Stadium, Chepauk, Chennai ', 'Twenty20 Cricket Match', 'Rajasthan Royals won the toss and choose to bat first ', 'CSK won by 5 wickets.');

-- --------------------------------------------------------

--
-- Table structure for table `over`
--

CREATE TABLE IF NOT EXISTS `over` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `over_no` int(10) NOT NULL,
  `match_id` int(10) NOT NULL,
  `team_id` int(10) NOT NULL,
  `bowled_by` int(10) NOT NULL,
  `score_at_beginning` int(10) NOT NULL,
  `score_at_end` int(10) NOT NULL,
  `wicket_at_beginning` int(10) NOT NULL,
  `wicket_at_end` int(10) NOT NULL,
  `balls` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `over`
--

INSERT INTO `over` (`id`, `over_no`, `match_id`, `team_id`, `bowled_by`, `score_at_beginning`, `score_at_end`, `wicket_at_beginning`, `wicket_at_end`, `balls`) VALUES
(1, 1, 1, 2, 14, 0, 4, 0, 0, '1|2|3|4|5|6'),
(2, 2, 1, 2, 16, 4, 15, 0, 0, '7|8|9|10|11|12'),
(3, 3, 1, 2, 14, 15, 24, 0, 1, '13|14|15|16|17|18'),
(4, 4, 1, 2, 16, 24, 38, 1, 1, '19|20|21|22|23|24'),
(5, 5, 1, 2, 22, 38, 45, 1, 1, '25|26|27|28|29|30'),
(6, 6, 1, 2, 19, 45, 58, 1, 1, '31|32|33|34|35|36'),
(7, 7, 1, 2, 14, 58, 61, 1, 1, '37|38|39|40|41|42'),
(8, 8, 1, 2, 15, 61, 70, 1, 1, '43|44|45|46|47|48'),
(9, 9, 1, 2, 21, 70, 81, 1, 1, '49|50|51|52|53|54'),
(10, 10, 1, 2, 15, 81, 92, 1, 1, '55|56|57|58|59|60'),
(11, 11, 1, 2, 19, 92, 103, 1, 1, '61|62|63|64|65|66'),
(12, 12, 1, 2, 18, 103, 109, 1, 1, '67|68|69|70|71|72'),
(13, 13, 1, 2, 22, 109, 114, 1, 2, '73|74|75|76|77|78'),
(14, 14, 1, 2, 18, 114, 128, 2, 2, '79|80|81|82|83|84|85'),
(15, 15, 1, 2, 15, 128, 140, 2, 2, '86|87|88|89|70|71|72'),
(16, 16, 1, 2, 19, 140, 154, 2, 2, '93|94|95|96|97|98'),
(17, 17, 1, 2, 22, 154, 157, 4, 4, '99|100|101|102|103|104'),
(18, 18, 1, 2, 19, 157, 169, 4, 4, '105|106|107|108|109|110'),
(19, 19, 1, 2, 22, 169, 175, 4, 5, '111|112|113|114|115|116'),
(20, 20, 1, 2, 21, 175, 186, 5, 5, '117|118|119|120|121'),
(21, 1, 1, 1, 7, 0, 5, 0, 0, '122|123|124|125|126|127'),
(22, 2, 1, 1, 9, 5, 10, 0, 0, '128|129|130|131|132|133'),
(23, 3, 1, 1, 7, 10, 24, 0, 0, '134|135|136|137|138|139'),
(24, 4, 1, 1, 9, 24, 32, 0, 0, '140|141|142|143|144|145'),
(25, 5, 1, 1, 8, 32, 48, 0, 0, '146|147|148|149|150|151|152'),
(26, 6, 1, 1, 4, 48, 55, 0, 0, '153|154|155|156|157|158'),
(27, 7, 1, 1, 5, 55, 71, 0, 0, '159|160|161|162|163|164'),
(28, 8, 1, 1, 4, 71, 74, 0, 1, '165|166|167|168|169|170'),
(29, 9, 1, 1, 9, 74, 82, 1, 1, '171|172|173|174|175|176|177'),
(30, 10, 1, 1, 4, 82, 88, 1, 2, '178|179|180|181|182|183'),
(31, 11, 1, 1, 9, 88, 98, 2, 2, '184|185|186|187|188|189|190'),
(32, 12, 1, 1, 4, 98, 103, 2, 2, '191|192|193|194|195|196'),
(33, 13, 1, 1, 8, 103, 112, 2, 2, '197|198|199|200|201|202'),
(34, 14, 1, 1, 10, 112, 120, 2, 3, '203|204|205|206|207|208'),
(35, 15, 1, 1, 5, 120, 131, 3, 3, '209|210|211|212|213|214'),
(36, 16, 1, 1, 10, 131, 138, 3, 3, '215|216|217|218|219|220|221'),
(37, 17, 1, 1, 5, 138, 156, 3, 3, '222|223|224|225|226|227|228|229'),
(38, 18, 1, 1, 10, 156, 168, 3, 4, '230|231|232|233|234|235|236'),
(39, 19, 1, 1, 8, 168, 175, 4, 4, '237|238|239|240|241|242'),
(40, 20, 1, 1, 10, 175, 185, 4, 4, '243|244|245|246|247|248');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `name`, `pic`) VALUES
(1, 'MS Dhoni', 'ms_dhoni_paint.png'),
(2, 'Murali Vijay', 'm_vijay_paint.png'),
(3, 'Suresh Raina', 's_raina_paint.png'),
(4, 'Ravichandran Ashwin', 'r_ashwin_paint.png'),
(5, 'Ravindra Jadeja', 'r_jadeja_paint.png'),
(6, 'Subramaniam Badrinath', 's_badrinath_paint.png'),
(7, 'Mohit Sharma', 'default.png'),
(8, 'Chris Morris', 'default.png'),
(9, 'Jason Holder', 'default.png'),
(10, 'Dwayne Bravo', 'd_bravo_paint.png'),
(11, 'Michael Hussey', 'm_hussey_paint.png'),
(12, 'Rahul Dravid', 'r_dravid_paint.png'),
(13, 'Ajinkya Rahane', 'default.png'),
(14, 'Ajit Chandila', 'a_chandila_paint.png'),
(15, 'Siddharth Trivedi', 'default.png'),
(16, 'Rahul Shukla', 'default.png'),
(17, 'Dishant Yagnik', 'default.png'),
(18, 'Stuart Terence Roger Binny', 'default.png'),
(19, 'Kevon Cooper', 'k_cooper_paint.png'),
(20, 'Brad Hodge', 'default.png'),
(21, 'Shane Watson', 's_watson_paint.png'),
(22, 'James Faulkner', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `abbr` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `players` text NOT NULL,
  `subs` text NOT NULL,
  `captain` int(11) NOT NULL,
  `wicket_keeper` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `abbr`, `pic`, `players`, `subs`, `captain`, `wicket_keeper`) VALUES
(1, 'Chennai Super Kings', 'CSK', 'csk.png', '1|2|3|4|5|6|7|8|9|10|11', '', 1, 1),
(2, 'Rajasthan Royals', 'RR', 'rr.png', '12|13|14|15|16|17|18|19|20|21|22', '', 12, 17);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
