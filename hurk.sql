-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 12:06 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hurk`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslog`
--

CREATE TABLE `accesslog` (
  `no` int(11) DEFAULT NULL,
  `empno` int(11) DEFAULT NULL,
  `empname` text,
  `dept` text,
  `othername` text,
  `datelog` date DEFAULT NULL,
  `timelog` time DEFAULT NULL,
  `terminal` text,
  `inout1` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accesslog`
--

INSERT INTO `accesslog` (`no`, `empno`, `empname`, `dept`, `othername`, `datelog`, `timelog`, `terminal`, `inout1`) VALUES
(114, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-25', '07:05:46', 'iGuard1', 'IN'),
(519, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-24', '18:50:23', 'iGuard3', 'OUT'),
(1315, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-24', '06:56:13', 'iGuard3', 'IN'),
(2555, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-20', '18:43:31', 'iGuard3', 'OUT'),
(3419, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-20', '07:07:24', 'iGuard5', 'IN'),
(3907, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-19', '19:09:18', 'iGuard3', 'OUT'),
(3908, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-19', '19:09:13', 'iGuard3', 'IN'),
(4810, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-19', '07:08:31', 'iGuard3', 'IN'),
(5516, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-18', '18:08:38', 'iGuard1', 'OUT'),
(6136, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-18', '07:18:34', 'iGuard3', 'IN'),
(6594, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-17', '18:52:38', 'iGuard3', 'OUT'),
(7458, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-17', '06:55:56', 'iGuard3', 'IN'),
(8453, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-13', '18:58:48', 'iGuard3', 'OUT'),
(9360, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-13', '07:05:05', 'iGuard3', 'IN'),
(9867, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-12', '18:32:17', 'iGuard3', 'OUT'),
(10793, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-12', '07:06:23', 'iGuard3', 'IN'),
(11544, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-11', '18:05:55', 'iGuard1', 'OUT'),
(12181, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-11', '07:09:16', 'iGuard5', 'IN'),
(12732, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-10', '19:03:28', 'iGuard3', 'OUT'),
(12734, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-10', '19:03:15', 'iGuard3', 'OUT'),
(13525, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-10', '07:07:15', 'iGuard3', 'IN'),
(14786, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-06', '19:11:12', 'iGuard5', 'IN'),
(15010, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-06', '18:06:07', 'iGuard1', 'OUT'),
(15624, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-06', '07:08:59', 'iGuard5', 'IN'),
(16317, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-05', '18:08:58', 'iGuard1', 'OUT'),
(17070, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-05', '07:02:11', 'iGuard1', 'IN'),
(17652, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-04', '18:10:13', 'iGuard1', 'OUT'),
(18555, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-04', '07:07:42', 'iGuard1', 'IN'),
(19050, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-03', '18:25:18', 'iGuard1', 'OUT'),
(19911, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-03', '06:48:44', 'iGuard1', 'IN'),
(2274, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-15', '07:00:11', 'iGuard5', 'IN'),
(3049, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-15', '18:06:25', 'iGuard1', 'OUT'),
(3051, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-15', '18:06:19', 'iGuard1', 'IN'),
(2754, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-11', '06:59:06', 'iGuard5', 'IN'),
(4920, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-11', '18:07:18', 'iGuard1', 'OUT'),
(5909, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-10', '18:23:34', 'iGuard3', 'OUT'),
(6760, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-10', '06:54:31', 'iGuard1', 'IN'),
(7058, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-09', '19:06:38', 'iGuard3', 'OUT'),
(7937, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-09', '06:57:46', 'iGuard3', 'IN'),
(8431, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-08', '18:15:44', 'iGuard3', 'OUT'),
(9076, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-08', '07:01:31', 'iGuard3', 'IN'),
(6521, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-20', '07:07:24', 'iGuard5', 'IN'),
(8383, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-11', '07:09:16', 'iGuard5', 'IN'),
(8822, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-06', '19:11:12', 'iGuard5', 'IN'),
(8982, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-09-06', '07:08:59', 'iGuard5', 'IN'),
(4078, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-29', '05:07:02', 'iGuard1', 'IN'),
(4842, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-25', '18:08:19', 'iGuard1', 'OUT'),
(4864, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-25', '18:07:18', 'iGuard1', 'OUT'),
(6563, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-24', '07:04:02', 'iGuard1', 'IN'),
(10755, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-18', '06:58:48', 'iGuard1', 'IN'),
(11801, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-17', '07:08:36', 'iGuard1', 'IN'),
(8869, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-22', '07:02:44', 'iGuard2', 'IN'),
(11227, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-17', '18:07:30', 'iGuard2', 'OUT'),
(88, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-31', '14:36:42', 'iGuard3', 'OUT'),
(731, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-31', '07:19:05', 'iGuard3', 'IN'),
(4657, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-25', '19:32:55', 'iGuard3', 'OUT'),
(5417, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-25', '07:08:29', 'iGuard3', 'IN'),
(5803, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-24', '18:44:34', 'iGuard3', 'OUT'),
(6949, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-23', '19:15:22', 'iGuard3', 'OUT'),
(8061, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-23', '03:52:34', 'iGuard3', 'IN'),
(8079, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-22', '20:28:29', 'iGuard3', 'OUT'),
(9884, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-18', '20:29:36', 'iGuard3', 'OUT'),
(12304, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-16', '18:15:56', 'iGuard3', 'OUT'),
(3090, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-10-16', '07:02:59', 'iGuard5', 'IN'),
(20600, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-13', '06:59:01', 'iGuard5', 'IN'),
(22256, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-15', '18:32:08', 'iGuard3', 'OUT'),
(23034, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-15', '07:04:50', 'iGuard3', 'IN'),
(23525, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-14', '18:44:58', 'iGuard3', 'OUT'),
(24255, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-14', '07:05:24', 'iGuard3', 'IN'),
(24712, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-13', '18:32:35', 'iGuard3', 'OUT'),
(24824, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-13', '18:07:53', 'iGuard1', 'OUT'),
(25807, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-12', '19:14:33', 'iGuard3', 'OUT'),
(26706, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-12', '06:56:53', 'iGuard3', 'IN'),
(27588, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-08', '18:52:15', 'iGuard3', 'OUT'),
(28358, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-08', '06:58:39', 'iGuard4', 'IN'),
(28664, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-07', '19:14:56', 'iGuard3', 'OUT'),
(29468, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-07', '07:00:15', 'iGuard4', 'IN'),
(29887, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-06', '18:15:00', 'iGuard3', 'OUT'),
(30650, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-06', '06:59:29', 'iGuard4', 'IN'),
(31000, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-05', '19:21:04', 'iGuard3', 'OUT'),
(31877, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-05', '07:01:43', 'iGuard3', 'IN'),
(43183, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-28', '06:58:26', 'iGuard5', 'IN'),
(43894, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-22', '07:01:16', 'iGuard5', 'IN'),
(33590, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-28', '18:49:22', 'iGuard3', 'OUT'),
(34810, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-27', '18:13:00', 'iGuard3', 'OUT'),
(35427, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-27', '07:08:55', 'iGuard3', 'IN'),
(36511, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-26', '07:03:44', 'iGuard3', 'IN'),
(37639, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-22', '18:28:08', 'iGuard3', 'OUT'),
(38663, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-21', '18:33:38', 'iGuard3', 'OUT'),
(39409, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-21', '07:02:37', 'iGuard3', 'IN'),
(39813, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-20', '18:20:23', 'iGuard3', 'OUT'),
(40532, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-20', '07:06:24', 'iGuard3', 'IN'),
(41115, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-19', '18:08:30', 'iGuard3', 'OUT'),
(41873, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-11-19', '06:56:52', 'iGuard3', 'IN'),
(48319, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-11', '18:24:52', 'iGuard3', 'OUT'),
(49123, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-11', '07:31:06', 'iGuard3', 'IN'),
(49819, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-10', '18:31:09', 'iGuard2', 'OUT'),
(50190, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-10', '18:00:35', 'iGuard2', 'OUT'),
(50636, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-10', '07:12:09', 'iGuard3', 'IN'),
(52077, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-06', '18:23:00', 'iGuard3', 'OUT'),
(52663, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-06', '07:18:09', 'iGuard3', 'IN'),
(53248, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-05', '18:50:52', 'iGuard3', 'OUT'),
(54152, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-05', '07:06:00', 'iGuard3', 'IN'),
(54685, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-04', '18:25:02', 'iGuard3', 'OUT'),
(55585, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-04', '07:06:24', 'iGuard3', 'IN'),
(56047, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-03', '18:43:16', 'iGuard3', 'OUT'),
(57066, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-03', '06:57:52', 'iGuard3', 'IN'),
(57975, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-20', '18:34:32', 'iGuard3', 'OUT'),
(58548, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-20', '07:35:31', 'iGuard3', 'IN'),
(59113, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-19', '18:33:51', 'iGuard3', 'OUT'),
(59233, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-19', '18:10:51', 'iGuard3', 'OUT'),
(59888, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-19', '07:13:42', 'iGuard3', 'IN'),
(61916, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-17', '18:07:49', 'iGuard2', 'OUT'),
(62486, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2018-12-17', '08:06:42', 'iGuard3', 'IN'),
(64241, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-15', '18:18:11', 'iGuard3', 'OUT'),
(65096, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-15', '07:12:13', 'iGuard3', 'IN'),
(65715, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-14', '18:23:31', 'iGuard3', 'OUT'),
(66495, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-14', '07:57:10', 'iGuard2', 'IN'),
(67688, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-10', '18:25:00', 'iGuard3', 'OUT'),
(68027, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-10', '17:02:45', 'iGuard3', 'IN'),
(68377, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-10', '07:23:29', 'iGuard3', 'IN'),
(68829, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-09', '19:07:00', 'iGuard3', 'OUT'),
(69590, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-09', '07:19:23', 'iGuard3', 'IN'),
(70039, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-08', '19:11:50', 'iGuard3', 'OUT'),
(70782, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-08', '07:17:38', 'iGuard5', 'IN'),
(71978, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-07', '07:18:38', 'iGuard3', 'IN'),
(73053, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-03', '18:41:46', 'iGuard3', 'OUT'),
(73820, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-03', '07:22:55', 'iGuard3', 'IN'),
(74441, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-29', '18:18:38', 'iGuard1', 'OUT'),
(75213, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-29', '07:16:40', 'iGuard5', 'IN'),
(75935, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-28', '18:14:02', 'iGuard3', 'OUT'),
(76648, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-28', '07:10:08', 'iGuard5', 'IN'),
(78156, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-24', '18:09:20', 'iGuard2', 'OUT'),
(78867, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-24', '07:04:39', 'iGuard5', 'IN'),
(79472, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-23', '18:12:11', 'iGuard2', 'OUT'),
(80204, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-23', '07:07:10', 'iGuard5', 'IN'),
(80870, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-22', '18:09:56', 'iGuard2', 'OUT'),
(81685, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-22', '07:01:48', 'iGuard5', 'IN'),
(82270, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-21', '18:11:26', 'iGuard3', 'OUT'),
(83006, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-21', '07:08:31', 'iGuard3', 'IN'),
(84186, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-17', '18:28:30', 'iGuard3', 'OUT'),
(85046, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-17', '07:14:32', 'iGuard3', 'IN'),
(85686, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-16', '18:15:15', 'iGuard3', 'OUT'),
(86461, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-16', '07:18:09', 'iGuard3', 'IN'),
(87901, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-31', '18:38:04', 'iGuard3', 'OUT'),
(88153, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-31', '07:04:21', 'iGuard3', 'IN'),
(88266, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-30', '19:41:29', 'iGuard3', 'OUT'),
(88547, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-01-30', '07:03:33', 'iGuard3', 'IN'),
(90022, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-12', '18:11:33', 'iGuard1', 'OUT'),
(90489, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-07', '18:07:18', 'iGuard1', 'OUT'),
(93687, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-14', '08:59:44', 'iGuard3', 'IN'),
(94580, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-11', '18:19:36', 'iGuard3', 'OUT'),
(95619, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-06', '18:03:09', 'iGuard3', 'OUT'),
(95725, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-06', '07:31:28', 'iGuard3', 'IN'),
(95927, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-04', '18:39:21', 'iGuard3', 'OUT'),
(96134, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-04', '07:37:14', 'iGuard3', 'IN'),
(97933, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-11', '07:12:34', 'iGuard4', 'IN'),
(100001, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-13', '07:59:31', 'iGuard5', 'IN'),
(100227, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-12', '07:27:12', 'iGuard5', 'IN'),
(100794, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-07', '07:57:21', 'iGuard5', 'IN'),
(89651, 1078, 'SY, MARK PHILIP', 'EVERYONE', '---', '2019-02-14', '19:18:00', 'iGuard3', 'OUT'),
(103732, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-21', '18:07:30', 'iGuard2', 'OUT'),
(103861, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-21', '11:39:17', 'iGuard2', 'IN'),
(103862, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-21', '11:39:11', 'iGuard2', 'IN'),
(104863, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-28', '18:35:29', 'iGuard3', 'OUT'),
(105502, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-26', '18:48:41', 'iGuard3', 'OUT'),
(106871, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-19', '18:55:20', 'iGuard3', 'OUT'),
(107293, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-18', '18:21:14', 'iGuard3', 'OUT'),
(107523, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-18', '06:56:21', 'iGuard3', 'IN'),
(110524, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-28', '08:11:39', 'iGuard5', 'IN'),
(110967, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-26', '08:30:22', 'iGuard5', 'IN'),
(111230, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-21', '08:26:02', 'iGuard5', 'IN'),
(111706, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-02-19', '07:18:51', 'iGuard5', 'IN'),
(113234, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-04', '18:07:41', 'iGuard1', 'OUT'),
(125097, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-04', '08:26:06', 'iGuard5', 'IN'),
(113067, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-05', '18:17:04', 'iGuard1', 'OUT'),
(124863, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-05', '07:57:58', 'iGuard5', 'IN'),
(118562, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-06', '18:32:59', 'iGuard3', 'OUT'),
(124633, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-06', '07:46:39', 'iGuard5', 'IN'),
(118223, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-07', '18:24:41', 'iGuard3', 'OUT'),
(124424, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-07', '07:15:02', 'iGuard5', 'IN'),
(117546, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-11', '18:33:59', 'iGuard3', 'OUT'),
(124067, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-11', '07:12:08', 'iGuard5', 'IN'),
(124068, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-11', '07:12:01', 'iGuard5', 'IN'),
(114120, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-12', '18:11:37', 'iGuard2', 'OUT'),
(117165, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-12', '18:14:03', 'iGuard3', 'OUT'),
(121020, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-12', '06:54:04', 'iGuard4', 'IN'),
(116736, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-13', '18:48:48', 'iGuard3', 'OUT'),
(123657, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-13', '06:41:44', 'iGuard5', 'IN'),
(112116, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-14', '18:07:53', 'iGuard1', 'OUT'),
(116377, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-14', '18:27:27', 'iGuard3', 'OUT'),
(123377, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-14', '07:05:43', 'iGuard5', 'IN'),
(128518, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-19', '18:40:17', 'iGuard2', 'OUT'),
(129318, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-28', '18:25:14', 'iGuard3', 'OUT'),
(129613, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-28', '03:21:11', 'iGuard3', 'IN'),
(129614, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-28', '03:21:06', 'iGuard3', 'OUT'),
(129659, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-27', '18:18:59', 'iGuard3', 'OUT'),
(130043, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-26', '18:15:04', 'iGuard3', 'OUT'),
(130406, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-25', '18:30:53', 'iGuard3', 'OUT'),
(130630, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-25', '07:24:00', 'iGuard3', 'IN'),
(130924, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-21', '18:58:11', 'iGuard3', 'OUT'),
(131312, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-20', '18:36:19', 'iGuard3', 'OUT'),
(131994, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-18', '18:22:18', 'iGuard3', 'OUT'),
(135945, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-27', '07:17:23', 'iGuard5', 'IN'),
(136234, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-26', '07:01:53', 'iGuard5', 'IN'),
(136701, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-21', '07:02:56', 'iGuard5', 'IN'),
(136917, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-20', '07:15:51', 'iGuard5', 'IN'),
(137204, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-19', '06:55:20', 'iGuard5', 'IN'),
(137374, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-03-18', '11:03:58', 'iGuard5', 'IN'),
(138447, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-03', '18:10:13', 'iGuard1', 'OUT'),
(140782, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-02', '18:07:04', 'iGuard2', 'OUT'),
(141303, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-15', '19:08:28', 'iGuard3', 'OUT'),
(142416, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-08', '19:01:38', 'iGuard3', 'OUT'),
(142947, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-04', '19:04:23', 'iGuard3', 'OUT'),
(143898, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-01', '19:07:07', 'iGuard3', 'OUT'),
(147161, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-15', '07:50:36', 'iGuard5', 'IN'),
(147891, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-08', '07:54:19', 'iGuard5', 'IN'),
(148173, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-04', '07:16:17', 'iGuard5', 'IN'),
(148404, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-03', '07:13:02', 'iGuard5', 'IN'),
(148629, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-02', '07:34:54', 'iGuard5', 'IN'),
(148866, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-01', '07:22:31', 'iGuard5', 'IN'),
(150265, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-30', '19:04:32', 'iGuard2', 'OUT'),
(151213, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-24', '18:11:30', 'iGuard2', 'OUT'),
(151435, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-23', '18:15:39', 'iGuard2', 'OUT'),
(152826, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-29', '19:46:11', 'iGuard3', 'OUT'),
(153372, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-25', '19:10:02', 'iGuard3', 'OUT'),
(153684, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-24', '19:56:55', 'iGuard3', 'OUT'),
(154080, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-23', '18:39:02', 'iGuard3', 'OUT'),
(154375, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-22', '18:58:39', 'iGuard3', 'OUT'),
(154586, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-22', '06:59:44', 'iGuard3', 'IN'),
(154833, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-17', '12:39:35', 'iGuard3', 'OUT'),
(155106, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-16', '19:24:23', 'iGuard3', 'OUT'),
(157082, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-23', '07:22:23', 'iGuard4', 'IN'),
(157733, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-17', '06:58:48', 'iGuard4', 'IN'),
(158275, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-30', '07:14:28', 'iGuard5', 'IN'),
(158480, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-29', '07:51:55', 'iGuard5', 'IN'),
(158737, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-25', '07:35:22', 'iGuard5', 'IN'),
(158971, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-24', '07:12:56', 'iGuard5', 'IN'),
(159859, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-04-16', '07:25:09', 'iGuard5', 'IN'),
(162393, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-07', '18:11:28', 'iGuard2', 'OUT'),
(163654, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-14', '19:06:43', 'iGuard3', 'OUT'),
(164199, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-09', '18:53:56', 'iGuard3', 'OUT'),
(164512, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-08', '19:09:38', 'iGuard3', 'OUT'),
(165194, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-06', '18:31:23', 'iGuard3', 'OUT'),
(165755, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-02', '18:29:13', 'iGuard3', 'OUT'),
(168932, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-14', '07:33:27', 'iGuard5', 'IN'),
(169193, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-09', '07:46:23', 'iGuard5', 'IN'),
(169407, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-08', '07:46:24', 'iGuard5', 'IN'),
(169636, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-07', '07:33:12', 'iGuard5', 'IN'),
(169873, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-06', '07:39:31', 'iGuard5', 'IN'),
(170095, 1078, 'Sy, Mark Philip', 'EVERYONE', 'Mojica', '2019-05-02', '07:34:03', 'iGuard5', 'IN'),
(170724, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-27', '15:42:02', 'iGuard1', 'IN'),
(172168, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-28', '18:02:33', 'iGuard2', 'OUT'),
(172441, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-27', '15:47:26', 'iGuard2', 'IN'),
(172732, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-23', '18:56:38', 'iGuard2', 'OUT'),
(174113, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-30', '18:19:09', 'iGuard3', 'OUT'),
(174375, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-29', '18:21:31', 'iGuard3', 'OUT'),
(174705, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-28', '18:15:42', 'iGuard3', 'OUT'),
(174997, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-27', '19:03:23', 'iGuard3', 'OUT'),
(175795, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-22', '19:57:43', 'iGuard3', 'OUT'),
(176146, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-21', '19:15:54', 'iGuard3', 'OUT'),
(176485, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-20', '18:25:18', 'iGuard3', 'OUT'),
(176984, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-16', '18:21:49', 'iGuard3', 'OUT'),
(177129, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-16', '07:08:20', 'iGuard3', 'IN'),
(180255, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-30', '07:38:06', 'iGuard5', 'IN'),
(180410, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-29', '07:17:05', 'iGuard5', 'IN'),
(180610, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-28', '07:39:16', 'iGuard5', 'IN'),
(180785, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-27', '07:17:34', 'iGuard5', 'IN'),
(181024, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-23', '07:41:36', 'iGuard5', 'IN'),
(181223, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-22', '07:43:30', 'iGuard5', 'IN'),
(181427, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-21', '07:43:48', 'iGuard5', 'IN'),
(181638, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-05-20', '07:34:12', 'iGuard5', 'IN'),
(186429, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-04', '18:53:57', 'iGuard3', 'OUT'),
(186780, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-03', '19:01:45', 'iGuard3', 'OUT'),
(189929, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-04', '07:36:26', 'iGuard5', 'IN'),
(190138, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-03', '07:47:45', 'iGuard5', 'IN'),
(190640, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-25', '18:07:55', 'iGuard1', 'OUT'),
(191784, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-27', '18:25:42', 'iGuard2', 'OUT'),
(192573, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-24', '18:07:11', 'iGuard2', 'OUT'),
(193246, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-19', '18:09:31', 'iGuard2', 'OUT'),
(193476, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-18', '18:19:47', 'iGuard2', 'OUT'),
(193720, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-17', '18:23:00', 'iGuard2', 'OUT'),
(194302, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-27', '07:10:57', 'iGuard3', 'IN'),
(194545, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-26', '18:09:58', 'iGuard3', 'OUT'),
(195772, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-20', '18:21:57', 'iGuard3', 'OUT'),
(197561, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-26', '07:21:58', 'iGuard4', 'IN'),
(199932, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-25', '07:02:59', 'iGuard5', 'IN'),
(200111, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-24', '07:00:55', 'iGuard5', 'IN'),
(200317, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-20', '07:08:48', 'iGuard5', 'IN'),
(200465, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-19', '07:19:42', 'iGuard5', 'IN'),
(200643, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-18', '07:34:50', 'iGuard5', 'IN'),
(200803, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-06-17', '07:31:04', 'iGuard5', 'IN'),
(204889, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-15', '18:07:31', 'iGuard3', 'OUT'),
(205351, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-11', '18:05:34', 'iGuard3', 'OUT'),
(205597, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-10', '18:30:48', 'iGuard3', 'OUT'),
(205915, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-09', '18:19:32', 'iGuard3', 'OUT'),
(206209, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-08', '18:51:59', 'iGuard3', 'OUT'),
(206699, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-04', '18:10:26', 'iGuard3', 'OUT'),
(206959, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-03', '18:20:30', 'iGuard3', 'OUT'),
(207245, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-02', '18:29:34', 'iGuard3', 'OUT'),
(207588, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-01', '18:08:16', 'iGuard3', 'OUT'),
(210325, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-15', '07:42:19', 'iGuard5', 'IN'),
(210579, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-11', '07:18:03', 'iGuard5', 'IN'),
(210755, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-10', '08:12:51', 'iGuard5', 'IN'),
(210970, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-09', '07:42:58', 'iGuard5', 'IN'),
(211168, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-08', '07:29:41', 'iGuard5', 'IN'),
(211383, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-04', '07:56:59', 'iGuard5', 'IN'),
(211527, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-03', '07:44:34', 'iGuard5', 'IN'),
(211740, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-02', '08:07:44', 'iGuard5', 'IN'),
(212058, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-01', '07:50:52', 'iGuard5', 'IN'),
(213743, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-18', '19:40:25', 'iGuard3', 'OUT'),
(214077, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-17', '18:50:04', 'iGuard3', 'OUT'),
(214359, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-16', '19:02:35', 'iGuard3', 'OUT'),
(215714, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-18', '08:43:27', 'iGuard5', 'IN'),
(215912, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-17', '07:54:05', 'iGuard5', 'IN'),
(216115, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-16', '07:53:01', 'iGuard5', 'IN'),
(217822, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-30', '18:44:37', 'iGuard2', 'OUT'),
(218916, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-23', '18:31:15', 'iGuard2', 'OUT'),
(219525, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-31', '18:18:16', 'iGuard3', 'OUT'),
(220173, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-29', '18:22:23', 'iGuard3', 'OUT'),
(220709, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-25', '18:01:46', 'iGuard3', 'OUT'),
(220946, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-24', '18:07:50', 'iGuard3', 'OUT'),
(221556, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-22', '18:29:46', 'iGuard3', 'OUT'),
(224001, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-31', '07:44:47', 'iGuard5', 'IN'),
(224275, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-30', '07:26:57', 'iGuard5', 'IN'),
(224544, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-29', '07:31:42', 'iGuard5', 'IN'),
(224863, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-25', '07:24:40', 'iGuard5', 'IN'),
(225037, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-24', '07:40:28', 'iGuard5', 'IN'),
(225246, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-23', '07:35:41', 'iGuard5', 'IN'),
(225433, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-07-22', '07:31:22', 'iGuard5', 'IN'),
(225520, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-15', '18:14:30', 'iGuard1', 'OUT'),
(227346, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-14', '18:13:09', 'iGuard2', 'OUT'),
(228277, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-07', '18:07:52', 'iGuard2', 'OUT'),
(228772, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-05', '18:11:33', 'iGuard2', 'OUT'),
(229133, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-01', '18:15:36', 'iGuard2', 'OUT'),
(230132, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-13', '19:05:37', 'iGuard3', 'OUT'),
(231511, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-06', '18:04:45', 'iGuard3', 'OUT'),
(235369, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-15', '07:37:53', 'iGuard5', 'IN'),
(235593, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-14', '09:38:18', 'iGuard5', 'IN'),
(235832, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-13', '07:39:40', 'iGuard5', 'IN'),
(236452, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-07', '06:55:09', 'iGuard5', 'IN'),
(236657, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-06', '07:54:25', 'iGuard5', 'IN'),
(236902, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-05', '07:48:05', 'iGuard5', 'IN'),
(237223, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-01', '07:37:11', 'iGuard5', 'IN'),
(240300, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-19', '18:07:42', 'iGuard2', 'OUT'),
(241783, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-27', '18:12:13', 'iGuard3', 'OUT'),
(241784, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-27', '18:12:06', 'iGuard3', 'OUT'),
(242422, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-22', '18:15:14', 'iGuard3', 'OUT'),
(242794, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-20', '18:18:53', 'iGuard3', 'OUT'),
(246561, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-27', '07:11:24', 'iGuard5', 'IN'),
(246876, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-22', '07:28:37', 'iGuard5', 'IN'),
(247131, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-20', '07:11:23', 'iGuard5', 'IN'),
(247378, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-08-19', '07:46:21', 'iGuard5', 'IN'),
(249618, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-10', '18:33:28', 'iGuard2', 'OUT'),
(251522, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-12', '19:05:56', 'iGuard3', 'OUT'),
(251926, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-11', '18:55:10', 'iGuard3', 'OUT'),
(252134, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-11', '07:37:33', 'iGuard3', 'IN'),
(252328, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-10', '19:10:00', 'iGuard3', 'OUT'),
(252520, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-10', '08:44:45', 'iGuard3', 'IN'),
(253345, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-05', '18:42:27', 'iGuard3', 'OUT'),
(253709, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-04', '19:01:43', 'iGuard3', 'OUT'),
(254120, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-03', '18:26:22', 'iGuard3', 'OUT'),
(254512, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-02', '18:35:44', 'iGuard3', 'OUT'),
(255384, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-12', '07:57:14', 'iGuard4', 'IN'),
(258697, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-05', '08:09:38', 'iGuard5', 'IN'),
(258940, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-04', '07:27:06', 'iGuard5', 'IN'),
(259184, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-03', '07:29:58', 'iGuard5', 'IN'),
(259438, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-02', '07:33:45', 'iGuard5', 'IN'),
(261567, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-27', '13:22:54', 'iGuard2', 'OUT'),
(263485, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-17', '18:11:08', 'iGuard2', 'OUT'),
(264022, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-30', '18:27:34', 'iGuard3', 'OUT'),
(264405, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-28', '17:10:54', 'iGuard3', 'OUT'),
(264408, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-28', '12:42:22', 'iGuard3', 'IN'),
(264580, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-27', '09:44:35', 'iGuard3', 'IN'),
(264669, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-26', '20:36:36', 'iGuard3', 'OUT'),
(265099, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-25', '19:32:16', 'iGuard3', 'OUT'),
(265106, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-25', '19:31:37', 'iGuard3', 'OUT'),
(265525, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-24', '18:39:51', 'iGuard3', 'OUT'),
(265930, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-23', '18:01:00', 'iGuard3', 'OUT'),
(266998, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-18', '18:49:45', 'iGuard3', 'OUT'),
(267399, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-17', '18:21:13', 'iGuard3', 'OUT'),
(267773, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-16', '18:41:23', 'iGuard3', 'OUT'),
(267953, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-16', '08:28:19', 'iGuard3', 'IN'),
(268370, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-30', '07:46:01', 'iGuard4', 'IN'),
(269211, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-26', '07:20:46', 'iGuard4', 'IN'),
(269716, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-25', '07:44:45', 'iGuard4', 'IN'),
(270259, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-24', '07:39:33', 'iGuard4', 'IN'),
(270835, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-23', '07:36:17', 'iGuard4', 'IN'),
(271902, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-18', '07:45:32', 'iGuard4', 'IN'),
(272415, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-09-17', '08:08:57', 'iGuard4', 'IN'),
(273336, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-01', '15:17:59', 'iGuard1', 'OUT'),
(273487, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-03', '08:05:29', 'iGuard1', 'IN'),
(273626, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-07', '07:29:21', 'iGuard1', 'IN'),
(273753, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-08', '07:45:55', 'iGuard1', 'IN'),
(273920, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-09', '09:28:27', 'iGuard1', 'IN'),
(274076, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-10', '08:48:25', 'iGuard1', 'IN'),
(274283, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-14', '07:38:15', 'iGuard1', 'IN'),
(274454, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-15', '08:13:39', 'iGuard1', 'IN'),
(279070, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-01', '18:47:58', 'iGuard3', 'OUT'),
(279478, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-02', '18:43:15', 'iGuard3', 'OUT'),
(279882, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-03', '19:14:12', 'iGuard3', 'OUT'),
(280561, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-07', '19:00:04', 'iGuard3', 'OUT'),
(280944, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-08', '18:46:46', 'iGuard3', 'OUT'),
(281354, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-09', '18:58:32', 'iGuard3', 'OUT'),
(281805, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-10', '19:09:49', 'iGuard3', 'OUT'),
(281999, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-12', '12:13:58', 'iGuard3', 'IN'),
(282000, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-12', '12:14:04', 'iGuard3', 'IN'),
(282030, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-12', '17:42:29', 'iGuard3', 'OUT'),
(282460, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-14', '18:47:15', 'iGuard3', 'OUT'),
(282814, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-15', '18:22:26', 'iGuard3', 'OUT'),
(283151, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-01', '07:46:48', 'iGuard4', 'IN'),
(283619, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-02', '07:57:15', 'iGuard4', 'IN'),
(286904, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-16', '07:54:22', 'iGuard1', 'IN'),
(287052, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-16', '19:08:46', 'iGuard3', 'OUT'),
(287239, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-17', '08:04:41', 'iGuard1', 'IN'),
(287400, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-17', '19:18:13', 'iGuard3', 'OUT'),
(287547, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-22', '08:19:25', 'iGuard1', 'IN'),
(287915, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-22', '19:06:21', 'iGuard3', 'OUT'),
(288082, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-23', '08:14:32', 'iGuard1', 'IN'),
(289640, 1078, 'Sy, Mark Philip ', 'EVERYONE', '---', '2019-10-23', '20:05:16', 'iGuard2', 'OUT'),
(291822, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-24', '08:01:25', 'iGuard1', 'IN'),
(292181, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-24', '18:59:05', 'iGuard3', 'OUT'),
(292790, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-28', '07:49:42', 'iGuard1', 'IN'),
(293521, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-28', '19:01:44', 'iGuard3', 'OUT'),
(294534, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-29', '07:20:22', 'iGuard1', 'IN'),
(294942, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-29', '18:40:00', 'iGuard3', 'OUT'),
(299207, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-31', '12:56:57', 'iGuard3', 'OUT'),
(299557, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-30', '19:06:32', 'iGuard3', 'OUT'),
(300727, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-31', '07:52:13', 'iGuard1', 'IN'),
(300892, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-10-30', '07:29:50', 'iGuard1', 'IN'),
(301090, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-14', '07:45:16', 'iGuard1', 'IN'),
(301223, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-13', '07:56:55', 'iGuard1', 'IN'),
(301587, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-11', '08:04:14', 'iGuard1', 'IN'),
(301833, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-07', '07:47:42', 'iGuard1', 'IN'),
(302021, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-06', '07:48:37', 'iGuard1', 'IN'),
(302221, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-05', '07:39:05', 'iGuard1', 'IN'),
(302425, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-04', '07:39:43', 'iGuard1', 'IN'),
(303076, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-13', '18:49:06', 'iGuard2', 'OUT'),
(304477, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-07', '18:59:26', 'iGuard2', 'OUT'),
(306297, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-14', '19:37:17', 'iGuard3', 'OUT'),
(307124, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-12', '18:06:15', 'iGuard3', 'OUT'),
(307303, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-12', '06:58:43', 'iGuard3', 'IN'),
(307418, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-11', '19:08:06', 'iGuard3', 'OUT'),
(308045, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-07', '18:54:07', 'iGuard3', 'OUT'),
(308433, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-06', '19:08:11', 'iGuard3', 'OUT'),
(308832, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-05', '18:43:14', 'iGuard3', 'OUT'),
(309205, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-04', '18:56:17', 'iGuard3', 'OUT'),
(312733, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-18', '07:49:59', 'iGuard1', 'IN'),
(312879, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-18', '18:16:07', 'iGuard3', 'OUT'),
(313672, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-19', '07:25:16', 'iGuard1', 'IN'),
(313673, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-19', '19:27:16', 'iGuard3', 'IN'),
(315525, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-21', '08:26:07', 'iGuard1', 'IN'),
(317102, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-25', '18:20:55', 'iGuard3', 'OUT'),
(317618, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-25', '07:52:48', 'iGuard4', 'IN'),
(317855, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-26', '07:46:17', 'iGuard1', 'IN'),
(317989, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-26', '19:07:45', 'iGuard3', 'OUT'),
(318850, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-27', '07:08:51', 'iGuard1', 'IN'),
(319009, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-27', '18:30:46', 'iGuard3', 'OUT'),
(319917, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-28', '19:07:19', 'iGuard3', 'OUT'),
(320216, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-28', '06:54:57', 'iGuard3', 'IN'),
(321374, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-19', '19:27:04', 'iGuard2', 'OUT'),
(322553, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-22', '16:42:34', 'iGuard2', 'OUT'),
(322611, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-11-22', '11:11:27', 'iGuard2', 'IN'),
(324440, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-02', '19:07:15', 'iGuard3', 'OUT'),
(325078, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-02', '08:07:11', 'iGuard4', 'OUT'),
(326352, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-04', '09:07:15', 'iGuard1', 'IN'),
(326353, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-04', '19:21:04', 'iGuard3', 'OUT'),
(327680, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-05', '08:00:34', 'iGuard1', 'IN'),
(327782, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-05', '19:22:35', 'iGuard3', 'OUT'),
(329814, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-09', '08:06:16', 'iGuard1', 'IN'),
(330275, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-09', '18:16:45', 'iGuard3', 'OUT'),
(331632, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-10', '08:05:18', 'iGuard1', 'IN'),
(331659, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-10', '19:34:40', 'iGuard3', 'OUT'),
(333347, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-11', '07:37:49', 'iGuard1', 'IN'),
(333348, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-11', '19:24:53', 'iGuard3', 'OUT'),
(334567, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-12', '07:59:14', 'iGuard1', 'IN'),
(334568, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-12', '19:12:57', 'iGuard3', 'OUT'),
(335435, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-26', '09:30:08', 'iGuard1', 'IN'),
(335486, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-23', '09:05:19', 'iGuard1', 'IN'),
(335867, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-18', '08:05:14', 'iGuard1', 'IN'),
(336059, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-17', '08:50:46', 'iGuard1', 'IN'),
(336261, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-16', '09:14:52', 'iGuard1', 'IN'),
(338793, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-26', '18:38:21', 'iGuard3', 'OUT'),
(338917, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-23', '18:43:17', 'iGuard3', 'OUT'),
(339222, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-19', '19:11:11', 'iGuard3', 'OUT'),
(339459, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-19', '08:12:22', 'iGuard3', 'IN'),
(339619, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-18', '19:07:18', 'iGuard3', 'OUT'),
(340071, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-17', '18:07:08', 'iGuard3', 'OUT'),
(340332, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2019-12-16', '19:04:45', 'iGuard3', 'OUT'),
(342591, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-09', '07:45:23', 'iGuard1', 'IN'),
(342754, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-08', '08:06:35', 'iGuard1', 'IN'),
(343086, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-06', '08:26:07', 'iGuard1', 'IN'),
(343235, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-02', '09:03:56', 'iGuard1', 'IN'),
(343407, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-14', '17:15:10', 'iGuard2', 'OUT'),
(343587, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-14', '09:16:25', 'iGuard2', 'IN'),
(344128, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-08', '18:46:35', 'iGuard2', 'OUT'),
(345843, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-09', '18:51:14', 'iGuard3', 'OUT'),
(346195, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-08', '18:23:43', 'iGuard3', 'OUT'),
(346582, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-07', '18:09:56', 'iGuard3', 'OUT'),
(346730, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-07', '07:33:34', 'iGuard3', 'IN'),
(346892, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-06', '18:29:15', 'iGuard3', 'OUT'),
(347314, 1078, 'Sy, Mark Philip', 'EVERYONE', '---', '2020-01-02', '18:41:41', 'iGuard3', 'OUT');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `emp_id` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `Type` varchar(11) NOT NULL,
  `College` varchar(20) NOT NULL,
  `department` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `empl_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`emp_id`, `accountID`, `Type`, `College`, `department`, `position`, `empl_password`) VALUES
(201416386, 1, 'non-admin', 'OVPASS', 'HRDO', 0, '1234'),
(201311111, 4, 'admin', 'OVPASS', 'HRDO', 0, '1234'),
(201510576, 5, 'admin', 'CEIT', '', 0, '1234'),
(201517119, 12, 'Non - Admin', 'CEIT', '', 0, NULL),
(201610456, 13, 'Non - Admin', 'CEIT', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lc_bal_log`
--

CREATE TABLE `lc_bal_log` (
  `logID` int(11) NOT NULL,
  `emp_id` int(50) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `prevLeaveCredits` int(11) NOT NULL,
  `updatedLeaveCredits` int(11) NOT NULL,
  `dateUpdated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaverequest`
--

CREATE TABLE `leaverequest` (
  `leaverequestID` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `leaverequestType` varchar(100) NOT NULL,
  `leaverequestLocation` varchar(200) NOT NULL,
  `leaverequestNoOfDays` int(10) NOT NULL,
  `leaverequestStartDate` date NOT NULL,
  `leaverequestEndDate` date NOT NULL,
  `leaverequestCommutation` varchar(100) NOT NULL,
  `emp_id` varchar(40) NOT NULL,
  `leaverequestEmployeeName` varchar(500) NOT NULL,
  `emp_supervisor` varchar(500) NOT NULL,
  `emp_supervisor_response` varchar(50) NOT NULL,
  `emp_supervisor_remarks` varchar(500) DEFAULT NULL,
  `hr_status` varchar(15) NOT NULL,
  `hr_remarks` varchar(500) DEFAULT NULL,
  `respondedby_hr` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leaverequest`
--

INSERT INTO `leaverequest` (`leaverequestID`, `date_requested`, `leaverequestType`, `leaverequestLocation`, `leaverequestNoOfDays`, `leaverequestStartDate`, `leaverequestEndDate`, `leaverequestCommutation`, `emp_id`, `leaverequestEmployeeName`, `emp_supervisor`, `emp_supervisor_response`, `emp_supervisor_remarks`, `hr_status`, `hr_remarks`, `respondedby_hr`) VALUES
(11, '2020-03-03', 'Vacation Leave', 'local', 4, '2020-03-06', '2020-03-10', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Disapproved', 'because ethan is a girl', 'Pending', NULL, NULL),
(12, '2020-03-07', 'Sick Leave', 'local', 1, '2020-03-05', '2020-03-06', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Approved', NULL, 'Pending', NULL, NULL),
(13, '2020-03-07', 'Vacation Leave', 'local', 2, '2020-03-11', '2020-03-13', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Approved', NULL, 'Pending', NULL, NULL),
(14, '2020-03-07', 'Vacation Leave', 'local', 4, '2020-03-10', '2020-03-13', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(15, '2020-03-07', 'Vacation Leave', 'local', 5, '2020-03-10', '2020-03-14', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(16, '2020-03-07', 'Vacation Leave', 'local', 5, '2020-03-10', '2020-03-14', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(17, '2020-03-07', 'Vacation Leave', 'local', 5, '2020-03-10', '2020-03-14', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(18, '2020-03-07', 'Vacation Leave', 'local', 4, '2020-03-10', '2020-03-13', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(19, '2020-03-07', 'Vacation Leave', 'local', 3, '2020-03-11', '2020-03-13', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(20, '2020-03-07', 'Vacation Leave', 'local', 4, '2020-03-10', '2020-03-13', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(21, '2020-03-07', 'Vacation Leave', 'local', 4, '2020-03-10', '2020-03-13', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(22, '2020-03-07', 'Vacation Leave', 'local', 3, '2020-03-10', '2020-03-12', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(23, '2020-03-07', 'Vacation Leave', 'local', 3, '2020-03-10', '2020-03-12', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(24, '2020-03-07', 'Vacation Leave', 'local', 4, '2020-03-10', '2020-03-13', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(25, '2020-03-07', 'Vacation Leave', 'local', 5, '2020-03-10', '2020-03-14', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(26, '2020-03-09', 'Vacation Leave', 'international', 20, '2020-03-12', '2020-03-31', 'Requested', '201610456', 'Emmanuel Justin Atienza', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(27, '2020-03-09', 'Sick Leave', 'international', 217, '2020-03-01', '2020-10-14', 'Not Requested', '201610456', 'Emmanuel Justin Atienza', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(28, '2020-03-11', 'Sick Leave', 'local', 2, '2020-03-10', '2020-03-11', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL),
(29, '2020-03-11', 'Vacation Leave', 'local', 1, '2020-03-14', '2020-03-14', 'Requested', '201517119', 'Carlo Angeles', '201510576', 'Pending', NULL, 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `empno` int(11) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `reason` text,
  `encodedby` varchar(165) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`empno`, `leave_date`, `reason`, `encodedby`, `timestamp`) VALUES
(1078, '2018-12-12', 'SPL', 'mmsy', '2019-01-06 13:39:20'),
(1078, '2018-12-13', 'SPL', 'cvsuhrdo', '2019-01-06 14:08:44'),
(1078, '2018-12-18', 'CTO', 'cvsuhrdo', '2019-01-06 14:10:22'),
(1078, '2019-02-27', 'Sick Leave', 'cvsuhrdo', '2019-03-13 01:48:36'),
(1078, '2019-05-15', 'Mandatory Leave', 'cvsuhrdo', '2019-05-20 02:51:07'),
(1078, '2019-06-06', 'Mandatory Leave', 'mmsy', '2019-06-19 01:51:55'),
(1078, '2019-06-10', 'Mandatory Leave', 'mmsy', '2019-06-19 01:52:46'),
(1078, '2019-06-11', 'Mandatory Leave', 'mmsy', '2019-06-19 01:52:46'),
(1078, '2019-06-13', 'SPL', 'mmsy', '2019-06-19 01:52:46'),
(1078, '2019-09-10', 'CTO', NULL, '2019-09-30 05:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `officialtime`
--

CREATE TABLE `officialtime` (
  `empno` int(11) DEFAULT NULL,
  `dayname` varchar(33) DEFAULT NULL,
  `dayin` time DEFAULT NULL,
  `dayout` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `officialtime`
--

INSERT INTO `officialtime` (`empno`, `dayname`, `dayin`, `dayout`) VALUES
(1078, 'Mon', '07:00:00', '18:00:00'),
(1078, 'Tue', '07:00:00', '18:00:00'),
(1078, 'Wed', '07:00:00', '18:00:00'),
(1078, 'Thu', '07:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_college`
--

CREATE TABLE `tbl_college` (
  `college_code` int(11) NOT NULL,
  `college_abrev` varchar(45) NOT NULL,
  `college_desc` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_college`
--

INSERT INTO `tbl_college` (`college_code`, `college_abrev`, `college_desc`) VALUES
(1, 'CAFENR', 'College of Agriculture, Food, Environment and Natural Resources'),
(2, 'CAS', 'College of Arts and Science'),
(3, 'CCJ', 'College of Criminal Justice'),
(4, 'CED', 'College of Education'),
(5, 'CEIT', 'College of Engineering and Information Technology'),
(6, 'CEMDS', 'College of Economics, Management and Development Studies'),
(7, 'CON', 'College of Nursing'),
(8, 'CSPEAR', 'College of Sports, Physicall Education and Recreation'),
(9, 'CVMBS', 'College of Veterinary Medicine and Biological Science '),
(10, 'BACOOR', 'Bacoor'),
(11, 'CARMONA', 'Carmona'),
(12, 'CAVITE CITY', 'Cavite City'),
(13, 'GENERAL TRIAS', 'General Trias'),
(14, 'IMUS', 'Imus'),
(15, 'NAIC', 'Naic'),
(16, 'ROSARIO', 'Rosario'),
(17, 'SILANG', 'Silang'),
(18, 'TRECE MARTIRES', 'Trece Martires'),
(19, 'TANZA', 'Tanza'),
(20, 'GS/OLC', 'Graduate School'),
(21, 'ADMIN', 'ADMIN'),
(22, 'OVPRE', 'OFFICE OF THE VICE PRESIDENT FOR RESEARCH AND EXTENSIONS'),
(23, 'OVPAA', 'OVPAA'),
(24, 'OVPASS', 'OVPASS'),
(25, 'OVPEBA', 'OVPEBA'),
(26, 'OUP', 'OFFICE OF THE UNIVERSITY PRESIDENT'),
(27, 'FINANCE', 'FINANCE'),
(28, 'MARAGONDON', 'MARAGONDON'),
(29, 'OVPPD', 'OFFICE OF THE UNIVERSITY PRESIDENT'),
(30, 'NCRDEC', 'NCRDEC'),
(31, 'PPS', 'PHYSICAL PLANT SERVICES'),
(32, 'UCSS', 'UNIVERSITY CIVIL SECURITY SERVICES'),
(33, 'OSAS', 'OFFICE OF THE STUDENTS AFFAIRS AND SERVICE'),
(34, 'KNOWLEDGE MANAGEMENT CENTER', 'KNOWLEDGE MANAGEMENT CENTER'),
(35, 'INSTITUTIONAL DEVELOPMENT OFFICE', 'INSTITUTIONAL DEVELOPMENT OFFICE'),
(36, 'STARRDEC', 'STARRDEC'),
(37, 'GAD', 'GENDER AND DEVELOPMENT'),
(38, 'OFFICE OF THE UNIVERSITY SPORTS DIRECTOR', 'OFFICE OF THE UNIVERSITY SPORTS DIRECTOR'),
(39, 'UNIVERSITY HEALTH SERVICES', 'UNIVERSITY HEALTH SERVICES'),
(40, 'OVPPD', 'OFFICE OF THE VICE PRESIDENT FOR PLANNING AND DEVELOPMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dept_code` int(11) NOT NULL,
  `dept_abbr` varchar(45) DEFAULT NULL,
  `dept_desc` varchar(80) DEFAULT NULL,
  `college_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_code`, `dept_abbr`, `dept_desc`, `college_code`) VALUES
(1, 'DCS', 'Department of Crop Science', 1),
(2, 'DAS', 'Department of Animal Science', 1),
(3, 'DAE', 'Department of Agricultural Entrepreneurship', 1),
(4, 'DFT', 'Institute of Food Science and Technology', 1),
(5, 'DFES', 'Department of Forestry and Environmental Science', 1),
(6, 'DSSH', 'Department of Social Sciences and Humanities', 2),
(7, 'DLMC', 'Department of Languages and Mass Communication', 2),
(8, 'DPS', 'Department of Physical Science', 2),
(9, 'DBS', 'Department of Biological Science', 2),
(10, 'DC', 'Department of Criminology', 3),
(11, 'HEVTED', 'Home Economics, Vocational and Technical Department', 4),
(12, 'TED', 'Teacher Education Department', 4),
(13, 'HS', 'Science High School', 4),
(14, 'CDC', 'Child Development Center', 4),
(15, 'DAFE', 'Department of Agricultural and Food Engineering', 5),
(16, 'DCE', 'Department of Civil Engineering', 5),
(17, 'DCEE', 'Department of Computer and Electronics Engineering', 5),
(18, 'DIET', 'Department of Industrial Engineering and Technology', 5),
(19, 'DIT', 'Department of Information Technology', 5),
(20, 'DMgmt.', 'Department of Management', 6),
(21, 'DE', 'Department of Economics', 6),
(22, 'DA', 'Department of Accountancy', 6),
(23, 'DDS', 'Department of Development Studies', 6),
(24, 'DM', 'Department of Midwifery', 7),
(25, 'DMT', 'Department of Medical Technology', 7),
(26, 'DPE', 'Department of Physical Education', 8),
(27, 'DN', 'Department of Nursing', 7),
(28, 'DBVS', 'Department of Basic Vet Sciences', 9),
(29, 'DIM', 'Department of Immunopathology and Microbiology', 9),
(30, 'DCPH', 'Department of Clinical and Population Health', 9),
(31, 'CID', 'Curiculum and Instruction Department', 10),
(32, 'MSD', 'Math and Science Department', 10),
(33, 'IT/CS Dept', 'Information Technoloy/Computer Science Department', 10),
(34, 'BM/HRM Dept', 'Business Manangement. HRM Department', 10),
(35, 'DAS', 'Department of Arts and Sciences', 11),
(36, 'DAIT', 'Department of Industrial and Info Tech', 11),
(38, 'DTE', 'Department of Teacher Education ', 11),
(39, 'DGE', 'Department of General Education', 12),
(43, 'DBPS', 'Department of Biological and Physical Science', 13),
(44, 'DLSSH', 'Department of Languages, SocScie and Humanities', 13),
(45, 'DTE', 'Department of Teacher Education', 13),
(50, 'DBP', 'Department Biological and Physical Sciences', 14),
(51, 'DPE', 'Department of Physical Education ', 14),
(55, 'ASD', 'Arts and Sciences Department ', 15),
(56, 'MHD', 'Management and Hospitality Department', 15),
(57, 'FMSD', 'Fisheries and Marine Science Department', 15),
(58, 'ITD', 'Information Technology Department', 15),
(59, 'ASD', 'Arts and Science Department', 16),
(61, 'DCS', 'Department of Computer Studies', 16),
(63, 'DS', 'Department of Sports', 16),
(64, 'DE', 'Department  of Engineering', 16),
(65, 'DT', 'Department of Technology', 16),
(69, 'DITC', 'Department of Info Technology and ComScie', 17),
(70, 'DS', 'Department of Sciences', 17),
(71, 'MD', 'Management Department', 18),
(72, 'GED', 'General Education Department', 18),
(73, 'CSD', 'Computer Studies Department', 18),
(75, 'DIT', 'Deparment of Information Technology', 19),
(77, 'HRDO', 'Human Resources Department Officce', 24),
(78, 'RECORDS', 'Records Department', 24),
(79, 'SUPPLY', 'Supply Department', 24),
(81, 'REGISTRAR', 'Registrar Department', 23),
(82, 'CASHIER', 'Cashier Department', 27),
(83, 'IA', 'Internal Audit Department', 24),
(84, 'ACCOUNTING', 'Accounting Department', 27),
(85, 'BUDGET', 'Budget Department', 27),
(86, 'QAAC/IDO', 'QAAC/IDO', 26),
(89, 'FSDO', 'FSDO', 26),
(90, 'OBS', 'OBS', 26),
(91, 'PLANNING', 'Planning', 26),
(92, 'SPECIAL PROJECT', 'Special Project', 26),
(93, 'PMO', 'Presidential Management Office', 26),
(94, 'SPORTS DIRECTOR', 'Sports Center', 23),
(95, 'REVIEW CENTER', 'Review Center', 23),
(97, 'LIBRARY', 'University Library', 23),
(98, 'OSAS', 'OFFICE OF STUDENT AFFAIRS AND SERVICES', 23),
(99, 'INFIRMARY', 'University Health Services Unit', 24),
(100, 'ODA', 'ODA', 24),
(101, 'ODFINANCE', 'ODFINANCE', 24),
(102, 'PPS', 'PPS', 24),
(103, 'UCSS', 'University Civil Security Services Unit', 24),
(104, 'RESEARCH', 'Research', 22),
(105, 'EXTENSION', 'Extension', 22),
(106, 'CETS', 'CETS', 22),
(107, 'NCRDEC', 'NCRDEC', 22),
(108, 'DORM', 'DORM', 25),
(109, 'WATER REFILLING', 'Water Refilling', 25),
(110, 'MALL', 'Mall', 25),
(111, 'SWIMMING POOL', 'Swimming Pool', 25),
(112, 'CONSESSIONNAIRS', 'Consessionairs', 25),
(113, 'MARKETING', 'Marketing', 25),
(114, 'AGRICULTURE/FARM', 'Agriculture/Farm', 25),
(115, 'PRINTING', 'Printing', 25),
(116, 'OBA', 'OBA', 25),
(117, 'STAARRDEC', 'STAARRDEC', 26),
(118, 'AREC', 'AFFILIATED RENEWABLE ENERGY CENTER', 26),
(119, 'VILLAGE', 'VILLAGE', 25),
(120, 'ROLLE HALL', 'ROLLE HALL', 25),
(121, 'GAD', 'GENDER AND DEVELOPMENT', 26),
(122, 'DES', 'Department of Environmental Science', 1),
(123, 'SUGAR PALM RESEARCH INFORMATION AND TRADE CEN', 'SUGAR PALM RESEARCH INFORMATION AND TRADE CENTER', 26),
(124, 'LANDSCAPING', 'LANDSCAPING', 25),
(125, 'HOSTEL TROPICANA', 'HOSTEL TROPICANA', 25),
(126, 'POLLUTION CONTROL OFFICE', 'POLLUTION CONTROL OFFICE', NULL),
(127, 'OFFICE OF THE BOARD SECRETARY', 'OFFICE OF THE BOARD SECRETARY', 26),
(128, 'KNOWLEDGE MANAGEMENT CENTER', 'KNOWLEDGE MANAGEMENT CENTER', 22),
(129, 'HOTEL & RESTAURANT MANAGEMENT', 'DEPARTMENT OF HOTEL & RESTAURANT MANAGEMENT', NULL),
(130, 'HOSPITALITY AND TOURISM', 'DEPARTMENT OF HOSPITALITY AND TOURISM', NULL),
(131, 'DVTH', 'Department of Veterinary Teaching Hospital', 9),
(132, 'DSPE', 'Department of Service Physical Education', 8),
(133, 'DISM', 'Department of Industrial Security Management', 3),
(134, 'GS/OLC', 'GRADUATE SCHOOL/ OPEN LEARNING CENTER', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_info`
--

CREATE TABLE `tbl_emp_info` (
  `id` int(11) NOT NULL,
  `emp_id` int(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `last_name` varchar(135) DEFAULT NULL,
  `first_name` varchar(135) DEFAULT NULL,
  `middle_name` varchar(135) DEFAULT NULL,
  `extension_name` varchar(135) DEFAULT NULL,
  `email_add` varchar(135) DEFAULT NULL,
  `dept_code` int(10) DEFAULT NULL,
  `position_code` int(10) DEFAULT NULL,
  `branch_code` int(10) DEFAULT NULL,
  `vl_bal` int(10) DEFAULT NULL,
  `sl_bal` int(10) DEFAULT NULL,
  `paternity_bal` int(10) DEFAULT NULL,
  `maternity_bal` int(10) DEFAULT NULL,
  `college_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_emp_info`
--

INSERT INTO `tbl_emp_info` (`id`, `emp_id`, `is_active`, `last_name`, `first_name`, `middle_name`, `extension_name`, `email_add`, `dept_code`, `position_code`, `branch_code`, `vl_bal`, `sl_bal`, `paternity_bal`, `maternity_bal`, `college_code`) VALUES
(1, 201610456, 0, 'Atienza', 'Emmanuel Justin', 'A', '', 'Ejatienza01@gmail.com', 19, 1, NULL, 15, 30, 7, NULL, 5),
(2, 201416386, 0, 'Arevalo', 'Ethan Rei', 'A', NULL, 'ethanreiarevalo@gmail.com', 77, 1, NULL, 8, 10, NULL, 40, 24),
(3, 201311111, NULL, 'Consulta', 'John Bennette', 'M', NULL, 'chachamanzero@gmail.com', 77, NULL, NULL, NULL, NULL, NULL, NULL, 24),
(4, 201517119, NULL, 'Angeles', 'Carlo', 'H', NULL, 'munggohan@gmail.com', 19, 1, NULL, 5, 5, NULL, NULL, 5),
(7, 201510576, 1, 'Aguilar', 'Jan Anthony', 'Calzado', 'none', 'toniaguilar14@gmail.com', 19, 1, 5, 5, 3, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_heirarchy`
--

CREATE TABLE `tbl_heirarchy` (
  `heirarchy_id` int(11) NOT NULL,
  `college_code` int(11) NOT NULL,
  `college_abrev` varchar(50) NOT NULL,
  `supervisor_code` int(11) DEFAULT NULL,
  `supevisor_abrev` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_heirarchy`
--

INSERT INTO `tbl_heirarchy` (`heirarchy_id`, `college_code`, `college_abrev`, `supervisor_code`, `supevisor_abrev`) VALUES
(1, 26, 'OUP', NULL, NULL),
(2, 23, 'OVPAA', 26, 'OUP'),
(3, 1, 'CAFENR', 23, 'OVPAA'),
(4, 2, 'CAS', 23, 'OVPAA'),
(5, 3, 'CCJ', 23, 'OVPAA'),
(6, 4, 'CED', 23, 'OVPAA'),
(7, 5, 'CEIT', 23, 'OVPAA'),
(8, 6, 'CEMDS', 23, 'OVPAA'),
(9, 7, 'CON', 23, 'OVPAA'),
(10, 8, 'CSPEAR', 23, 'OVPAA'),
(11, 9, 'CVMBS', 23, 'OVPAA'),
(12, 10, 'BACOOR', 23, 'OVPAA'),
(13, 11, 'CARMONA', 23, 'OVPAA'),
(14, 12, 'CAVITE CITY', 23, 'OVPAA'),
(15, 13, 'GENERAL TRIAS', 23, 'OVPAA'),
(16, 14, 'IMUS', 23, 'OVPAA'),
(17, 15, 'NAIC', 23, 'OVPAA'),
(18, 16, 'ROSARIO', 23, 'OVPAA'),
(19, 17, 'SILANG', 23, 'OVPAA'),
(20, 18, 'TRECE MARTIRES', 23, 'OVPAA'),
(21, 19, 'TANZA', 23, 'OVPAA'),
(22, 28, 'MARAGONDON', 23, 'OVPAA'),
(23, 33, 'OSAS', 23, 'OVPAA'),
(24, 22, 'OVPRE', 26, 'OUP'),
(25, 30, 'NCRDEC', 22, 'OVPRE'),
(26, 34, 'KNOWLEDGE MANAGEMENT CENTER', 22, 'OVPRE'),
(27, 24, 'OVPASS', 26, 'OUP'),
(28, 21, 'ADMIN', 24, 'OVPASS'),
(29, 39, 'UNIVERSITY HEALTH SERVICES', 24, 'OVPASS'),
(30, 32, 'UCSS', 24, 'OVPASS'),
(31, 31, 'PPS', 24, 'OVPASS'),
(32, 27, 'FINANCE', 24, 'OVPASS'),
(33, 25, 'OVPEBA', 26, 'OUP'),
(34, 29, 'OVPPD', 26, 'OUP'),
(35, 40, 'OVPPD', 26, 'OUP'),
(36, 35, 'INSTITUTIONAL DEVELOPMENT OFFICE', 29, 'OVPPD'),
(37, 35, 'INSTITUTIONAL DEVELOPMENT OFFICE', 40, 'OVPPD'),
(38, 37, 'GAD', 26, 'OUP'),
(39, 20, 'GS/OLC', 26, 'OUP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `position_code` int(11) NOT NULL,
  `position_abrev` varchar(100) DEFAULT NULL,
  `position_desc` varchar(300) DEFAULT NULL,
  `sg` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`position_code`, `position_abrev`, `position_desc`, `sg`, `step`) VALUES
(1, 'Acct. III', 'Accountant III', 19, 1),
(2, 'AO V', 'Administrative Officer V', 18, 1),
(3, 'AA I', 'Administrative Aide I', 4, 1),
(4, 'AA I/ Utility Worker I', 'Administrative Aide I/ Utility Worker I', 1, 1),
(5, 'AA III', 'Administrative Aide III', 3, 1),
(7, 'AA III/ Clerk I', 'Administrative Aide III/ Clerk I', 3, 1),
(8, 'AA III/ Driver I', 'Administrative Aide III/ Driver I', 3, 1),
(9, 'AA III/ Utility Worker II', 'Administrative Aide III/ Utility Worker II', 3, 1),
(10, 'AA IV', 'Administrative Aide IV', 4, 1),
(11, 'AA IV/ Cash Clerk', 'Administrative Aide IV/ Cash Clerk', 4, 1),
(12, 'AA IV/Lab. Aide II/ClerkII/Acct.Clerk I/Cash Clerk I', 'Administrative Aide IV/Laboratory Aide II/Clerk II/ Accounting Clerk I/ Cash Clerk I', 4, 1),
(13, 'AA V', 'Administrative Aide V', NULL, NULL),
(14, 'AA VI', 'Administrative Aide VI', 6, 1),
(15, 'AAsst. I', 'Administrative Assistant I', 7, 1),
(16, 'AAsst. II', 'Administrative Assistant II', 8, 1),
(17, 'AAsst. III', 'Administrative Assistant III', 9, 1),
(18, 'AAsst. IV', 'Administrative Assistant IV', NULL, NULL),
(19, 'AO I', 'Administrative Officer I', 10, 1),
(20, 'AO II', 'Administrative Officer II', 11, 1),
(21, 'Agri. Tech. I', 'Agricultural Technician I', 6, 1),
(23, 'Agri. II', 'Agriculturist II', 15, 1),
(25, 'Archi. I', 'Architect I', NULL, NULL),
(26, 'Atty. II', 'Attorney II', 18, 1),
(27, 'Board Sect. I', 'Board Secretary I', 14, 1),
(28, 'Comp. Operator I', 'Computer Operator I', NULL, NULL),
(29, 'Data Controller I', 'Data Controller I', NULL, NULL),
(30, 'Dentist I', 'Dentist I', NULL, NULL),
(31, 'Dentist II', 'Dentist II', 17, 1),
(32, 'Draftsman I', 'Draftsman I', NULL, NULL),
(33, 'Draftsman III', 'Draftsman III', NULL, NULL),
(34, 'Draftsman IV', 'Draftsman IV', NULL, NULL),
(35, 'Ed. Prog. Spec. II', 'Educational Program Specialist II', NULL, NULL),
(36, 'Eng. Aide', 'Engineering Aide', NULL, NULL),
(37, 'Eng. Asst. I', 'Engineering Assistant I', NULL, NULL),
(38, 'Farm Foreman', 'Farm Foreman', 6, 1),
(40, 'Farm Worker I', 'Farm Worker I', 2, 1),
(41, 'Farm Worker II', 'Farm Worker II', 4, 1),
(42, 'House Parent I', 'House Parent I', NULL, NULL),
(43, ' Lab. Aide I', 'Laboratory Aide I', NULL, NULL),
(44, 'Lab. Tech I', 'Laboratory Technician I', 6, 1),
(45, 'Lab. Tech II', 'Laboratory Technician II', NULL, NULL),
(46, 'Laborer II', 'Laborer II', NULL, NULL),
(47, 'Library/ Farm Worker I', 'Librarian / Farm Worker I', NULL, NULL),
(48, 'Librarian I', 'Librarian I', 11, 1),
(49, 'Lineman III', 'Lineman III', NULL, NULL),
(50, 'Mechanic I', 'Mechanic I', NULL, NULL),
(51, 'Mechanic II', 'Mechanic II', NULL, NULL),
(52, 'Med. Off. I', 'Medical Officer I', NULL, NULL),
(53, 'Med. Off. II', 'Medical Officer II', NULL, NULL),
(54, 'Med. Off. III', 'Medical Officer III', 21, 8),
(55, 'Med. Tech. I', 'Medical Technologist I', NULL, NULL),
(56, 'Nurse I', 'Nurse I', NULL, NULL),
(57, 'Nurse Maid I', 'Nurse Maid I', NULL, NULL),
(58, 'Nursing Attendant I', 'Nursing Attendant I', NULL, NULL),
(59, 'Radiologic Tech. I', 'Radiologic Technologist I', NULL, NULL),
(60, 'Research Asst. I', 'Research Assistant I', NULL, NULL),
(61, 'Sch. Farm Demonstrator', 'SCHOOL FARM DEMONSTRATOR', NULL, NULL),
(62, 'Science Research Asst.', 'Science Research  Assistant ', NULL, NULL),
(63, 'Science Research Asst. I', 'Science Research Assistant I', NULL, NULL),
(64, 'Security Guard I', 'Security Guard I', NULL, NULL),
(65, 'Senior AAsst. IV', 'Senior Administrative Assistant IV', NULL, NULL),
(66, 'Stat. I', 'Statistician I', NULL, NULL),
(67, 'Vet. II', 'Veterinarian II', NULL, NULL),
(68, 'A1', 'ACCOUNTANT I', NULL, NULL),
(71, 'ADA2', 'ADMINISTRATIVE AIDE II', NULL, NULL),
(80, 'ADOF4', 'ADMINISTRATIVE OFFICER IV', NULL, NULL),
(84, 'AP1', 'ASSISTANT PROFESSOR I', NULL, NULL),
(85, 'AP2', 'ASSISTANT PROFESSOR II', NULL, NULL),
(86, 'AP3', 'ASSISTANT PROFESSOR III', NULL, NULL),
(87, 'AP4', 'ASSISTANT PROFESSOR IV', NULL, NULL),
(88, 'APRO1', 'ASSOCIATE PROFESSOR I', NULL, NULL),
(89, 'APRO2', 'ASSOCIATE PROFESSOR II', NULL, NULL),
(90, 'APRO3', 'ASSOCIATE PROFESSOR III', NULL, NULL),
(91, 'APRO4', 'ASSOCIATE PROFESSOR IV', NULL, NULL),
(92, 'APRO5', 'ASSOCIATE PROFESSOR V', NULL, NULL),
(95, 'BS5', 'BOARD SECRETARY V', 24, 2),
(96, 'CADOF', 'CHIEF ADMINISTRATIVE OFFICER', 24, 2),
(97, 'CAD1', 'COLLEGE ADMINISTRATOR I', NULL, NULL),
(98, 'CAD2', 'COLLEGE ADMINISTRATOR II', NULL, NULL),
(99, 'CL1', 'COLLEGE LIBRARIAN I', NULL, NULL),
(100, 'CL2', 'COLLEGE LIBRARIAN II', NULL, NULL),
(101, 'CL3', 'COLLEGE LIBRARIAN III', NULL, NULL),
(102, 'CTMT1', 'COMPUTER MAINTENANCE TECHNOLOGIST I', NULL, NULL),
(103, 'COK1', 'COOK I', NULL, NULL),
(105, 'DORMG1', 'DORMITORY MANAGER I', NULL, NULL),
(107, 'ENG2', 'ENGINEER II', NULL, NULL),
(109, 'FASU', 'FARM SUPERVISOR', NULL, NULL),
(112, 'FISM', 'FISHERMAN', NULL, NULL),
(113, 'GUIDC3', 'GUIDANCE COUNSELOR III', NULL, NULL),
(114, 'GUIDC1', 'GUIDANCE COUNSELOR I', NULL, NULL),
(115, 'HOMT', 'HOME MANAGEMENT TECHNOLOGIST', NULL, NULL),
(117, 'HP3', 'HOUSEPARENT III', NULL, NULL),
(118, 'INST1', 'INSTRUCTOR I', NULL, NULL),
(119, 'INST2', 'INSTRUCTOR II', NULL, NULL),
(120, 'INST3', 'INSTRUCTOR III', NULL, NULL),
(121, 'LABA2', 'LABORATORY AIDE II', NULL, NULL),
(123, 'MTCHR1', 'MASTER TEACHER I', NULL, NULL),
(125, 'NURS2', 'NURSE II', NULL, NULL),
(126, 'PROF1', 'PROFESSOR I', NULL, NULL),
(127, 'PROF2', 'PROFESSOR II', NULL, NULL),
(128, 'PROF3', 'PROFESSOR III', NULL, NULL),
(129, 'PROF4', 'PROFESSOR IV', NULL, NULL),
(130, 'PROF5', 'PROFESSOR V', NULL, NULL),
(131, 'PROF6', 'PROFESSOR VI', NULL, NULL),
(132, 'R3', 'REGISTRAR III', NULL, NULL),
(134, 'SL1', 'SCHOOL LIBRARIAN I', NULL, NULL),
(137, 'SECG2', 'SECURITY GUARD II', NULL, NULL),
(138, 'SECG3', 'SECURITY GUARD III', NULL, NULL),
(139, 'SECO2', 'SECURITY OFFICER II', 15, 1),
(140, 'SADAS3', 'SENIOR ADMINISTRATIVE ASSISTANT III', NULL, NULL),
(143, 'SUCPRES4', 'SUC PRESIDENT IV', NULL, NULL),
(144, 'SUCVP3', 'SUC VICE-PRESIDENT III', NULL, NULL),
(145, 'TCH1', 'TEACHER I', NULL, NULL),
(146, 'TCH3', 'TEACHER III', NULL, NULL),
(147, 'TRNSP2', 'TRAINING SPECIALIST II', NULL, NULL),
(148, 'UNIPROF', 'UNIVERSITY PROFESSOR', NULL, NULL),
(150, 'VOCIS3', 'VOCATIONAL INSTRUCTION SUPERVISOR III', NULL, NULL),
(151, 'VOCPC1', 'VOCATIONAL PLACEMENT COORDINATOR I', NULL, NULL),
(152, 'WCHM1', 'WATCHMAN I', NULL, NULL),
(164, 'A.ASST1(CO1)', 'ADMINISTRATIVE ASSISTANT I(COMPUTER OPERATOR I)', NULL, NULL),
(170, 'AGRCLTRST1', 'AGRICULTURIST I', NULL, NULL),
(173, 'ATTY1', 'ATTORNEY I', NULL, NULL),
(181, 'ENGR A1', 'ENGINEERING AIDE I', NULL, NULL),
(192, 'LIB AIDE', 'LIBRARIAN AIDE', NULL, NULL),
(202, 'NSG A', 'NURSING ATTENDANT', NULL, NULL),
(203, 'NSG AIDE', 'NURSING AIDE', NULL, NULL),
(207, 'AAII(Carpenter)', 'ADMINISTRATIVE AIDE III (CARPENTER)', NULL, NULL),
(208, 'SRS', 'SCIENCE RESEARCH SPECIALIST', NULL, NULL),
(209, 'PA', 'PROJECT ASSISTANT', NULL, NULL),
(210, 'FL', 'FARM LABORER', NULL, NULL),
(211, 'SUC PRESIDENT', 'SUC PRESIDENT', NULL, NULL),
(212, 'LABORER', 'LABORER', NULL, NULL),
(214, 'AP5', 'ASSISTANT PROFESSOR V', NULL, NULL),
(215, 'NFS', 'NURSERY FARM SUPERVISOR', NULL, NULL),
(216, 'AI', 'ASSISTANT INSTRUCTOR', NULL, NULL),
(217, 'R1', 'REGISTRAR I', NULL, NULL),
(218, 'AOIII', 'Administrative Officer III', 14, 1),
(219, 'AASST V', 'ADMINISTRATIVE ASSISTANT V', 11, 1),
(220, 'AA IV', 'ADMINISTRATIVE AIDE IV', 4, 1),
(221, 'ENGII', 'ENGINEER II', NULL, NULL),
(222, 'INST', 'INSTRUCTOR', NULL, NULL),
(223, 'AA II', 'ADMINISTRATIVE AIDE II', NULL, NULL),
(224, 'AA IV C2', 'ADMINISTRATIVE AIDE IV (CLERK II)', NULL, NULL),
(225, 'PART-TIME INS', 'PART-TIME INSTRUCTOR I', NULL, NULL),
(226, 'CONTRACTUAL INS', 'CONTRACTUAL INSTRUCTOR I', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountID`);

--
-- Indexes for table `lc_bal_log`
--
ALTER TABLE `lc_bal_log`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `leaverequest`
--
ALTER TABLE `leaverequest`
  ADD PRIMARY KEY (`leaverequestID`);

--
-- Indexes for table `tbl_college`
--
ALTER TABLE `tbl_college`
  ADD PRIMARY KEY (`college_code`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_code`) USING BTREE;

--
-- Indexes for table `tbl_emp_info`
--
ALTER TABLE `tbl_emp_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_heirarchy`
--
ALTER TABLE `tbl_heirarchy`
  ADD PRIMARY KEY (`heirarchy_id`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`position_code`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lc_bal_log`
--
ALTER TABLE `lc_bal_log`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaverequest`
--
ALTER TABLE `leaverequest`
  MODIFY `leaverequestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_college`
--
ALTER TABLE `tbl_college`
  MODIFY `college_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dept_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tbl_emp_info`
--
ALTER TABLE `tbl_emp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_heirarchy`
--
ALTER TABLE `tbl_heirarchy`
  MODIFY `heirarchy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `position_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
