-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 03:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cems`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_price` int(11) DEFAULT NULL,
  `participents` int(100) DEFAULT 0,
  `img_link` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_price`, `participents`, `img_link`, `type_id`) VALUES
(1, 'CRYPTOHUNT', 100, 0, 'images/crypto1.png', 1),
(2, 'SEARCH-IT', 50, 2, 'images/search_it.jpg', 1),
(3, 'TECHNICAL-QUIZ', 50, 2, 'images/quiz.png', 1),
(4, 'ETHICAL HACKING', 50, 1, 'images/ethical hacking.jpg', 1),
(5, 'BGMI', 50, 1, 'images/bgmi.jpg', 2),
(6, 'VALORANT', 100, 1, 'images/Valorant.jpg\r\n', 2),
(7, 'FASHION-SHOW', 200, 1, 'images/fashion.jpg', 3),
(8, 'DANCE', 100, 0, 'images/dance1.jpg', 3),
(9, 'SINGING', 50, 0, 'images/sing.jpg', 3),
(10, 'TED-TALKS', 100, 0, 'images/idol.jpg', 3),
(11, 'KITE FLYING', 50, 0, 'images/Kai po.jpg', 4),
(12, 'SHORT-MOVIE', 200, 0, 'images/offstage.jpg', 4),
(13, 'MEHANDI', 100, 0, 'image/mehandi1.jpg', 4),
(14, 'RANGOLI', 50, 0, 'images/rangoli.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL,
  `location` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`event_id`, `Date`, `time`, `location`) VALUES
(1, '2023-04-16', '3.00pm', '135 Room'),
(2, '2023-04-16', '1.00pm', '020 Room'),
(3, '2023-04-16', '11.00am', '136 Room'),
(4, '2023-04-16', '9.30am', '020 Room'),
(5, '2023-04-17', '10.00am', '121 Room'),
(6, '2023-04-17', '11.00am', '122 Room'),
(7, '2023-03-17', '9.30pm', 'ON Stage'),
(8, '2023-03-17', '7.00pm', 'ON Stage'),
(9, '2023-04-17', '5.00pm', 'ON Stage'),
(10, '2023-04-17', '6.00pm', 'ON Stage'),
(11, '2023-03-16', '10.30am', '123 Room'),
(12, '2023-03-16', '10.00am', '021 Room'),
(13, '2023-03-12', '3pm', '021 Room'),
(14, '2023-04-13', '2.00pm', 'Quandrangle');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `type_id` int(10) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`type_id`, `type_title`) VALUES
(1, 'Technical Events'),
(2, 'Gaming Events'),
(3, 'On Stage Events'),
(4, 'Off Stage Events');

-- --------------------------------------------------------

--
-- Table structure for table `participent`
--

CREATE TABLE `participent` (
  `usn` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `college` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participent`
--

INSERT INTO `participent` (`usn`, `name`, `branch`, `sem`, `email`, `phone`, `college`) VALUES
('BCCAS032', 'Raj', 'BCCA', 6, 'raj@gmail.com', '8896547324', 'ghriet'),
('BCCAS038', 'Saurabh', 'BCCA', 6, 'saurabh@GMAIL.COM', '9934736623', 'ghriet'),
('BCCAS029', 'Pratham', 'BCCA', 6, 'pratham@gmail.com', '7888387323', 'ghriet'),
('BCCAS020', 'Gautam', 'BCCA', 6, 'gautam@raisoni.net', '8998848488', 'ghriet'),
('BCCAS017', 'Gaurav', 'BCCA', 6, 'gaurav@raisoni.net', '9858787438', 'ghriet'),
('BCCAS001', 'Abhash', 'BCCA', 6, 'abhash@gmail.com', '7897854345', 'ghriet');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `rid` int(11) NOT NULL,
  `usn` varchar(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`rid`, `usn`, `event_id`) VALUES
(1, 'BCCAS032', 2),
(2, 'BCCAS038', 4),
(3, 'BCCAS029', 2),
(4, 'BCCAS032', 3),
(5, 'BCCAS020', 3),
(6, 'BCCAS017', 5),
(8, 'BCCAS032', 6),
(10, 'BCCAS001', 7);

--
-- Triggers `registered`
--
DELIMITER $$
CREATE TRIGGER `count` AFTER INSERT ON `registered` FOR EACH ROW update events
set events.participents=events.participents+1
WHERE events.event_id=new.event_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_coordinator`
--

CREATE TABLE `staff_coordinator` (
  `stid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_coordinator`
--

INSERT INTO `staff_coordinator` (`stid`, `name`, `phone`, `event_id`) VALUES
(1, 'DHIRAJ SIR', 'NULL', 1),
(2, 'ROHAN SIR', 'NULL', 2),
(3, 'NITIN SIR', 'NULL', 3),
(4, 'YOGESH SIR', 'NULL', 4),
(5, 'NARENDRA SIR', 'NULL', 5),
(6, 'YADAV SIR', 'NULL', 6),
(7, 'ANAND SIR', 'NULL', 7),
(8, 'VIVEK SIR', 'NULL', 8),
(9, 'KETAN SIR', 'NULL', 9),
(10, 'SIDDHART SIR', 'NULL', 10),
(11, 'RAKESH SIR', 'NULL', 11),
(12, 'SHUBHASH SIR', 'NULL', 12),
(13, 'PRAVEEN SIR', 'NULL', 13),
(14, 'OMKAR SIR', 'NULL', 14);

-- --------------------------------------------------------

--
-- Table structure for table `student_coordinator`
--

CREATE TABLE `student_coordinator` (
  `sid` int(11) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_coordinator`
--

INSERT INTO `student_coordinator` (`sid`, `st_name`, `phone`, `event_id`) VALUES
(1, 'RAJ SUVAGIYA', 'NULL', 1),
(2, 'SAURABH TIJARE', 'NULL', 2),
(3, 'PRATHAM MANGE', 'NULL', 3),
(4, 'GAUTAM ADSULE', 'NULL', 4),
(5, 'GAURAV WANKHADE', 'NULL', 5),
(6, 'ABHASH CHAWAN', 'NULL', 6),
(7, 'SAHARSH MAHISKAR', 'NULL', 7),
(8, 'RITIK SINGH', 'NULL', 8),
(9, 'GAURAV NAGPURKAR', 'NULL', 9),
(10, 'SANKET RAUT', 'NULL', 10),
(11, 'SARANG SHARMA', 'NULL', 11),
(12, 'BHUSHAN NIMBURKAR', 'NULL', 12),
(13, 'AKSHAY KHANKE', 'NULL', 13),
(14, 'ADITYA DHAWAD', 'NULL', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `participent`
--
ALTER TABLE `participent`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
