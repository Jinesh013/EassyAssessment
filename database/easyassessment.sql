-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 08:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easyassessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Sr.No.` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `module` text NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Sr.No.`, `username`, `password`, `module`, `create_datetime`) VALUES
(4, '21cs037', '21CS037@Admin', 'admin', '2022-09-23 23:30:46'),
(5, '21cs036', '21CS036@Admin', 'admin', '2022-09-23 23:31:52'),
(6, '21cs041', '21CS041@Admin', 'admin', '2022-09-23 23:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `sr` int(2) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `ccode` varchar(50) NOT NULL,
  `csem` int(2) NOT NULL,
  `module` text NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`sr`, `cname`, `ccode`, `csem`, `module`, `create_datetime`) VALUES
(5, 'java', 'ce250', 3, 'course', '2022-10-07 17:17:28'),
(6, 'DCN', 'CE257', 3, 'course', '2022-10-08 10:44:23'),
(7, 'Maths I', 'MA143', 1, 'course', '2022-10-08 10:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ex_id` int(10) NOT NULL,
  `cou_id` varchar(50) NOT NULL,
  `ex_title` varchar(50) NOT NULL,
  `ex_time_limit` varchar(50) NOT NULL,
  `ex_questlimit` varchar(50) NOT NULL,
  `ex_noofque` int(10) NOT NULL,
  `ex_description` varchar(50) NOT NULL,
  `ex_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL,
  `exam_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit`, `ex_noofque`, `ex_description`, `ex_created`, `status`, `exam_date`) VALUES
(1, 'CE257', 'DCN exam', '15', '1', 15, 'Data communication and networking', '2022-10-07 12:40:50', 'new', '2022-11-30'),
(2, 'CE252', 'DE Exam internal', '10', '10', 10, 'this is demo', '2022-10-07 12:44:47', 'new', '2022-11-12'),
(9, 'MA254', 'Maths 3 exam', '5', '5', 5, 'ok done', '2022-10-07 16:33:31', 'old', '2022-10-11'),
(10, 'MA143', 'internal 2 exam of maths', '5', '1', 5, 'GOOD LUCK!', '2022-10-18 10:37:20', 'old', '2022-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `exmminee`
--

CREATE TABLE `exmminee` (
  `sr` int(100) NOT NULL,
  `ex_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `sem` int(10) NOT NULL,
  `statuss` varchar(50) NOT NULL,
  `result` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exmminee`
--

INSERT INTO `exmminee` (`sr`, `ex_id`, `username`, `fname`, `branch`, `sem`, `statuss`, `result`) VALUES
(6, 1, '21cs044', 'patel hemil s', 'cse', 3, 'active', 0),
(7, 1, '21cs045', 'patel jeel h', 'cse', 3, 'active', 0),
(8, 1, '21cs037', 'patel jinesh', 'cse', 3, 'active', 0),
(9, 1, '21CE001', '21CE001', 'ce', 3, 'active', 0),
(11, 9, '21cs045', 'patel jeel h', 'cse', 3, 'active', 0),
(12, 9, '21cs037', 'patel jinesh', 'cse', 3, 'active', 0),
(13, 2, '21cs044', 'patel hemil s', 'cse', 3, 'active', 0),
(14, 2, '21cs045', 'patel jeel h', 'cse', 3, 'active', 0),
(15, 2, '21cs037', 'patel jinesh', 'cse', 3, 'active', 0),
(16, 2, '21CE001', '21CE001', 'ce', 3, 'active', 0),
(17, 9, '21cs044', 'patel hemil s', 'cse', 3, 'active', 0),
(19, 0, '21cs044', 'patel hemil s', 'cse', 3, 'active', 0),
(20, 0, '21cs037', 'patel jinesh', 'cse', 3, 'active', 0),
(21, 10, '21cs044', 'patel hemil s', 'cse', 3, 'deactive', 5),
(22, 10, '21cs037', 'patel jinesh', 'cse', 3, 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Sr.No.` int(3) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `subcode` varchar(10) DEFAULT NULL,
  `module` text NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Sr.No.`, `name`, `username`, `password`, `subcode`, `module`, `create_datetime`) VALUES
(4, '1', '1', '1', 'ce250', 'faculty', '2022-10-07 17:22:38'),
(6, 'Jinesh Chapri teacher', 'Jinesh Chapri teacher', '1', 'chapri', 'faculty', '2022-10-08 11:09:52'),
(7, '2', '2', '2', '2', 'faculty', '2022-10-11 16:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ex_id` int(10) NOT NULL,
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `op1` text NOT NULL,
  `op2` text NOT NULL,
  `op3` text NOT NULL,
  `op4` text NOT NULL,
  `que_ans` text NOT NULL,
  `examstatus` int(11) NOT NULL,
  `sr` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ex_id`, `que_id`, `question`, `op1`, `op2`, `op3`, `op4`, `que_ans`, `examstatus`, `sr`) VALUES
(1, 1, 'This is Qution 1', 'a', 'b', 'c', 'd', 'a', 0, 1),
(1, 2, 'This is hi', 'a', 'b', 'c', 'd', 'a', 0, 2),
(0, 1, '3', 'a', 'b', 'c', 'c', 'a', 0, 3),
(1, 3, 'what is qution?', 'a', 'b', 'c', 'd', 'd', 0, 4),
(1, 4, 'what is qution?', 'a', 'b', 'ccc', 'd', 'a', 0, 5),
(2, 1, 'this is que demo for eno2', 'a', 'b', '456', '8', 'c', 0, 6),
(9, 1, 'what is qution go for that?', '6', 'yes', 'both', 'none', 'a', 0, 7),
(9, 2, 'Done for the day ?', 'no', 'yes', 'both', 'sanp jin', 'a', 0, 8),
(9, 3, '12', '1', '5', '6', '7', 'b', 0, 9),
(9, 4, '1', '1', '1', '2', '3', 'a', 0, 10),
(9, 5, '10 + 5 ?', '5', '15', '50', '2', 'b', 0, 11),
(9, 6, '10 + 5 ?', '5', '15', '50', '2', 'b', 0, 12),
(10, 1, '10 + 5 ?', '15', '10', '3', '1', 'a', 0, 13),
(10, 2, '10 - 5?', '3', '5', '-5', '15', 'b', 0, 14),
(10, 3, '10 * 5 ?', '10', '5', '50', '25', 'c', 0, 15),
(10, 4, '1 + 1?', '1', '3', '0', '2', 'd', 0, 16),
(10, 5, '6 +5 ?', '11', '7', '5', '3', 'a', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Sr.No.` int(3) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `yearcode` int(4) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `currsem` int(2) NOT NULL,
  `module` text NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Sr.No.`, `name`, `username`, `password`, `yearcode`, `branch`, `currsem`, `module`, `create_datetime`) VALUES
(14, 'patel hemil s', '21cs044', '21cs044', 2021, 'cse', 3, '', '2022-10-07 17:22:12'),
(16, 'patel jinesh', '21cs037', '21cs037', 2021, 'cse', 3, '', '2022-10-08 05:37:36'),
(17, '21CE001', '21CE001', '21CE001', 2021, 'ce', 3, '', '2022-10-08 07:27:08'),
(18, '21CE002', '21ce002', '21ce002', 2021, 'ce', 3, '', '2022-10-08 17:20:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Sr.No.`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`sr`),
  ADD UNIQUE KEY `ccode` (`ccode`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `exmminee`
--
ALTER TABLE `exmminee`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Sr.No.`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Sr.No.`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Sr.No.` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `sr` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `ex_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exmminee`
--
ALTER TABLE `exmminee`
  MODIFY `sr` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `Sr.No.` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `sr` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Sr.No.` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
