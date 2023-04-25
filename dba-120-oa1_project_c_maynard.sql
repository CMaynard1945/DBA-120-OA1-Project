-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 12:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dba-120-oa1 project c maynard`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisors`
--

CREATE TABLE `advisors` (
  `advisor_id` int(11) NOT NULL,
  `advisor_f_name` varchar(30) NOT NULL,
  `advisor_l_name` varchar(30) NOT NULL,
  `program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisors`
--

INSERT INTO `advisors` (`advisor_id`, `advisor_f_name`, `advisor_l_name`, `program_id`) VALUES
(1, 'Raj', 'Patel', 1),
(2, 'Fred', 'Jones', 2),
(3, 'Velma', 'Dinkley', 3),
(4, 'Scoobert', 'Doo', 4),
(5, 'Norville', 'Rogers', 5),
(6, 'Daphne', 'Blake', 6),
(7, 'James', 'Brown', 7),
(8, 'Blake', 'West', 8),
(9, 'Betty', 'Crocker', 9),
(10, 'Dwayne', 'Stone', 10);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program_name`) VALUES
(1, 'Computer Science'),
(2, 'Journalism'),
(3, 'Engineering'),
(4, 'Ethnic Studies'),
(5, 'Business'),
(6, 'Accounting'),
(7, 'Chemistry'),
(8, 'Pre-Law'),
(9, 'Basket Making'),
(10, 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `student_address` varchar(200) NOT NULL,
  `student_city` varchar(200) NOT NULL,
  `student_state` char(2) NOT NULL,
  `student_zip_code` char(5) NOT NULL,
  `program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `student_address`, `student_city`, `student_state`, `student_zip_code`, `program_id`) VALUES
(1, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(2, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(3, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(4, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(5, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(6, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(7, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(8, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(9, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(10, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(11, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(12, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(13, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(14, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(15, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(16, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(17, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(18, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(19, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(20, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(21, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(22, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(23, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(24, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(25, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(26, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(27, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(28, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(29, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(30, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(31, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(32, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(33, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(34, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(35, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(36, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(37, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(38, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(39, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(40, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(41, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(42, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(43, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(44, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(45, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(46, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(47, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(48, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(49, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(50, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(51, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(52, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(53, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(54, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(55, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(56, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(57, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(58, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(59, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(60, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(61, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(62, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(63, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(64, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(65, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(66, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(67, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(68, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(69, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(70, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(71, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(72, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(73, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(74, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(75, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(76, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(77, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(78, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(79, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(80, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(81, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(82, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(83, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(84, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(85, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(86, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(87, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(88, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(89, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(90, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(91, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(92, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(93, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(94, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(95, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(96, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(97, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(98, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(99, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(100, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5),
(101, 'Lee', 'Matthews', '63 Bacon Ct', 'Arden', 'NC', '28803', 1),
(102, 'Jacob', 'Smith', '123 Apple Way', 'Arden', 'NC', '28803', 1),
(103, 'John', 'Schmidt', '16 Penn Ave', 'Asheville', 'NC', '28803', 7),
(104, 'Sam', 'Mathis', '60 Park Ln', 'Asheville', 'NC', '28803', 1),
(105, 'Jamal', 'Rodriguez', '89 Battery Park', 'Asheville', 'NC', '28803', 9),
(106, 'Jessica', 'Jacobs', '5 Fairview Rd', 'Arden', 'NC', '28803', 3),
(107, 'Bart', 'Simpson', '1 Pumpkin Cir', 'Arden', 'NC', '28803', 6),
(108, 'Sterling', 'Archer', '56 Mills Gap Rd', 'Asheville', 'NC', '28803', 2),
(109, 'Mandy', 'Garcia', '5 Stallion Trl', 'Arden', 'NC', '28803', 8),
(110, 'Cary', 'Johnson', '95 Terminal Dr', 'Asheville', 'NC', '28803', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_aid`
--

CREATE TABLE `student_aid` (
  `aid_tracking_id` int(11) NOT NULL,
  `aid_status` char(1) NOT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_aid`
--

INSERT INTO `student_aid` (`aid_tracking_id`, `aid_status`, `account_id`) VALUES
(1, 'y', 1),
(2, 'n', 2),
(3, 'y', 3),
(4, 'n', 4),
(5, 'y', 5),
(6, 'n', 6),
(7, 'y', 9),
(8, 'n', 10),
(9, 'y', 11),
(10, 'n', 12),
(11, 'y', 13),
(12, 'n', 14),
(13, 'y', 15),
(14, 'n', 16),
(15, 'n', 17),
(16, 'y', 18),
(17, 'n', 19),
(18, 'y', 20),
(19, 'n', 21),
(20, 'y', 22),
(21, 'n', 23),
(22, 'y', 24),
(23, 'n', 25),
(24, 'y', 26),
(25, 'n', 27),
(26, 'y', 28),
(27, 'n', 29),
(28, 'n', 30),
(29, 'y', 31),
(30, 'n', 32),
(31, 'y', 33),
(32, 'n', 34),
(33, 'y', 35),
(34, 'n', 36),
(35, 'y', 37),
(36, 'n', 38),
(37, 'y', 39),
(38, 'n', 40),
(39, 'y', 41),
(40, 'n', 42),
(41, 'n', 43),
(42, 'y', 44),
(43, 'n', 45),
(44, 'y', 46),
(45, 'n', 47),
(46, 'y', 48),
(47, 'n', 49),
(48, 'y', 50),
(49, 'n', 51),
(50, 'y', 52),
(51, 'n', 53),
(52, 'y', 54),
(53, 'n', 55),
(54, 'n', 56),
(55, 'y', 57),
(56, 'n', 58),
(57, 'y', 59),
(58, 'n', 60),
(59, 'y', 61),
(60, 'n', 62),
(61, 'y', 63),
(62, 'n', 64),
(63, 'y', 65),
(64, 'n', 66),
(65, 'y', 67),
(66, 'n', 68),
(67, 'n', 69),
(68, 'y', 70),
(69, 'n', 71),
(70, 'y', 72),
(71, 'n', 73),
(72, 'y', 74),
(73, 'n', 75),
(74, 'y', 76),
(75, 'n', 77),
(76, 'y', 78),
(77, 'n', 79),
(78, 'y', 80),
(79, 'n', 81),
(80, 'n', 82),
(81, 'y', 83),
(82, 'n', 84),
(83, 'y', 85),
(84, 'n', 86),
(85, 'y', 87),
(86, 'n', 88),
(87, 'y', 89),
(88, 'n', 90),
(89, 'y', 91),
(90, 'n', 92),
(91, 'y', 93),
(92, 'n', 111),
(93, 'n', 112),
(94, 'y', 113),
(95, 'n', 114),
(96, 'y', 115),
(97, 'n', 116),
(98, 'y', 117),
(99, 'n', 118),
(100, 'y', 119),
(101, 'n', 120),
(102, 'y', 121),
(103, 'n', 122),
(104, 'y', 123),
(105, 'n', 124),
(106, 'n', 125),
(107, 'y', 126),
(108, 'n', 127),
(109, 'y', 128),
(110, 'n', 129);

-- --------------------------------------------------------

--
-- Table structure for table `student_finance`
--

CREATE TABLE `student_finance` (
  `account_id` int(11) NOT NULL,
  `tuition` int(11) NOT NULL,
  `credits` decimal(9,2) NOT NULL,
  `meal_plan` varchar(10) NOT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_finance`
--

INSERT INTO `student_finance` (`account_id`, `tuition`, `credits`, `meal_plan`, `student_id`) VALUES
(1, 5000, '2000.00', 'standard', 1),
(2, 5000, '2000.00', 'standard', 2),
(3, 3000, '1500.00', 'premium', 3),
(4, 1000, '500.00', 'premium', 4),
(5, 1600, '789.00', 'standard', 5),
(6, 3500, '0.00', 'standard', 6),
(9, 4400, '300.00', 'standard', 7),
(10, 4999, '2000.00', 'standard', 8),
(11, 2222, '2000.00', 'standard', 9),
(12, 2600, '500.00', 'standard', 10),
(13, 5000, '2000.00', 'standard', 11),
(14, 3000, '1500.00', 'premium', 12),
(15, 1000, '500.00', 'premium', 13),
(16, 1600, '789.00', 'standard', 14),
(17, 3500, '0.00', 'standard', 15),
(18, 4400, '300.00', 'standard', 16),
(19, 4999, '2000.00', 'standard', 17),
(20, 2222, '2000.00', 'standard', 18),
(21, 2600, '500.00', 'standard', 19),
(22, 5000, '2000.00', 'standard', 20),
(23, 3000, '1500.00', 'premium', 21),
(24, 1000, '500.00', 'premium', 22),
(25, 1600, '789.00', 'standard', 23),
(26, 3500, '0.00', 'standard', 24),
(27, 4400, '300.00', 'standard', 25),
(28, 4999, '2000.00', 'standard', 26),
(29, 2222, '2000.00', 'standard', 27),
(30, 2600, '500.00', 'standard', 28),
(31, 5000, '2000.00', 'standard', 29),
(32, 3000, '1500.00', 'premium', 30),
(33, 1000, '500.00', 'premium', 31),
(34, 1600, '789.00', 'standard', 32),
(35, 3500, '0.00', 'standard', 33),
(36, 4400, '300.00', 'standard', 34),
(37, 4999, '2000.00', 'standard', 35),
(38, 2222, '2000.00', 'standard', 36),
(39, 2600, '500.00', 'standard', 37),
(40, 5000, '2000.00', 'standard', 38),
(41, 3000, '1500.00', 'premium', 39),
(42, 1000, '500.00', 'premium', 40),
(43, 1600, '789.00', 'standard', 41),
(44, 3500, '0.00', 'standard', 42),
(45, 4400, '300.00', 'standard', 43),
(46, 4999, '2000.00', 'standard', 44),
(47, 2222, '2000.00', 'standard', 45),
(48, 2600, '500.00', 'standard', 46),
(49, 5000, '2000.00', 'standard', 47),
(50, 3000, '1500.00', 'premium', 48),
(51, 1000, '500.00', 'premium', 49),
(52, 1600, '789.00', 'standard', 50),
(53, 3500, '0.00', 'standard', 51),
(54, 4400, '300.00', 'standard', 52),
(55, 4999, '2000.00', 'standard', 53),
(56, 2222, '2000.00', 'standard', 54),
(57, 2600, '500.00', 'standard', 55),
(58, 5000, '2000.00', 'standard', 56),
(59, 3000, '1500.00', 'premium', 57),
(60, 1000, '500.00', 'premium', 58),
(61, 1600, '789.00', 'standard', 59),
(62, 3500, '0.00', 'standard', 60),
(63, 4400, '300.00', 'standard', 61),
(64, 4999, '2000.00', 'standard', 62),
(65, 2222, '2000.00', 'standard', 63),
(66, 2600, '500.00', 'standard', 64),
(67, 5000, '2000.00', 'standard', 65),
(68, 3000, '1500.00', 'premium', 66),
(69, 1000, '500.00', 'premium', 67),
(70, 1600, '789.00', 'standard', 68),
(71, 3500, '0.00', 'standard', 69),
(72, 4400, '300.00', 'standard', 70),
(73, 4999, '2000.00', 'standard', 71),
(74, 2222, '2000.00', 'standard', 72),
(75, 2600, '500.00', 'standard', 73),
(76, 5000, '2000.00', 'standard', 74),
(77, 3000, '1500.00', 'premium', 75),
(78, 1000, '500.00', 'premium', 76),
(79, 1600, '789.00', 'standard', 78),
(80, 3500, '0.00', 'standard', 79),
(81, 4400, '300.00', 'standard', 80),
(82, 4999, '2000.00', 'standard', 81),
(83, 2222, '2000.00', 'standard', 82),
(84, 2600, '500.00', 'standard', 83),
(85, 5000, '2000.00', 'standard', 84),
(86, 3000, '1500.00', 'premium', 85),
(87, 1000, '500.00', 'premium', 86),
(88, 1600, '789.00', 'standard', 87),
(89, 3500, '0.00', 'standard', 88),
(90, 4400, '300.00', 'standard', 89),
(91, 4999, '2000.00', 'standard', 90),
(92, 2222, '2000.00', 'standard', 91),
(93, 2600, '500.00', 'standard', 92),
(111, 2600, '500.00', 'standard', 92),
(112, 5000, '2000.00', 'standard', 93),
(113, 3000, '1500.00', 'premium', 94),
(114, 1000, '500.00', 'premium', 95),
(115, 1600, '789.00', 'standard', 96),
(116, 3500, '0.00', 'standard', 97),
(117, 4400, '300.00', 'standard', 98),
(118, 4999, '2000.00', 'standard', 99),
(119, 2222, '2000.00', 'standard', 100),
(120, 2600, '500.00', 'standard', 101),
(121, 5000, '2000.00', 'standard', 102),
(122, 3000, '1500.00', 'premium', 103),
(123, 1000, '500.00', 'premium', 104),
(124, 1600, '789.00', 'standard', 105),
(125, 3500, '0.00', 'standard', 106),
(126, 4400, '300.00', 'standard', 107),
(127, 4999, '2000.00', 'standard', 108),
(128, 2222, '2000.00', 'standard', 109),
(129, 2600, '500.00', 'standard', 110);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisors`
--
ALTER TABLE `advisors`
  ADD PRIMARY KEY (`advisor_id`),
  ADD UNIQUE KEY `advisor_id` (`advisor_id`),
  ADD KEY `fk_advisors_program_id` (`program_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`),
  ADD UNIQUE KEY `program_id` (`program_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `fk_program_id` (`program_id`);

--
-- Indexes for table `student_aid`
--
ALTER TABLE `student_aid`
  ADD PRIMARY KEY (`aid_tracking_id`),
  ADD UNIQUE KEY `aid_tracking_id` (`aid_tracking_id`),
  ADD KEY `fk_account_id` (`account_id`);

--
-- Indexes for table `student_finance`
--
ALTER TABLE `student_finance`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `account_id` (`account_id`),
  ADD KEY `fk_student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisors`
--
ALTER TABLE `advisors`
  MODIFY `advisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `student_aid`
--
ALTER TABLE `student_aid`
  MODIFY `aid_tracking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `student_finance`
--
ALTER TABLE `student_finance`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advisors`
--
ALTER TABLE `advisors`
  ADD CONSTRAINT `fk_advisors_program_id` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_program_id` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`);

--
-- Constraints for table `student_aid`
--
ALTER TABLE `student_aid`
  ADD CONSTRAINT `fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `student_finance` (`account_id`);

--
-- Constraints for table `student_finance`
--
ALTER TABLE `student_finance`
  ADD CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
