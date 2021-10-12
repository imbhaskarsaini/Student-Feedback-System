-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 04:57 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`, `Date`) VALUES
(5, 'bhaskar', 'bhaskar@gmail.com', 6397284164, 'ddd', '2016-06-29 17:53:28'),
(6, 'dfd', 'bhaskar2@gmail.com', 8979648852, 'ddd', '2016-06-29 17:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `programme` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_alias`, `Name`, `designation`, `programme`, `semester`, `email`, `password`, `mobile`, `date`, `status`) VALUES
(7, 'ravm5454', 'ravi', 'Associate Professior', 'B.Tech', '4', 'rav@gmail.com', 'ravi', 9015501897, '2016-07-13 14:30:53', 0),
(8, 'sanj9015', 'sanjeev kumar', 'Developer', 'B.tech', '4', 'sanjeevtech2@gmail.com', '2ddea1', 9015501897, '2016-07-13 14:37:35', 0),
(9, 'Ashi9044', 'Ashish  Garg', 'Professor', 'Btech', '4', 'ashish@gmail.com', 'ashish', 9044444000, '2018-07-04 18:00:40', 0),
(10, 's9044', 's', 'Professor', 'Btech', '4', 's@gmail.com', '1234', 9044444096, '2018-07-07 13:15:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `Teacher provided the course outline having weekly content plan w` enum('5','4','3','2','1') NOT NULL,
  `Course objectives,learning outcomes and grading criteria are cle` enum('5','4','3','2','1') NOT NULL,
  `Course integrates throretical course concepts with the real worl` enum('5','4','3','2','1') NOT NULL,
  `Teacher is punctual,arrives on time and leaves on time` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at stimulating the interest in the course conten` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at explaining the subject matter` enum('5','4','3','2','1') NOT NULL,
  `Teacher's presentation was clear,loud ad easy to understand` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at using innovative teaching methods/ways` enum('5','4','3','2','1') NOT NULL,
  `Teacher is available and helpful during counseling hours` enum('5','4','3','2','1') NOT NULL,
  `Teacher has competed the whole course as per course outline` enum('5','4','3','2','1') NOT NULL,
  `Teacher was always fair and impartial:` enum('5','4','3','2','1') NOT NULL,
  `Assessments conducted are clearly connected to maximize learinin` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `faculty_id`, `Teacher provided the course outline having weekly content plan w`, `Course objectives,learning outcomes and grading criteria are cle`, `Course integrates throretical course concepts with the real worl`, `Teacher is punctual,arrives on time and leaves on time`, `Teacher is good at stimulating the interest in the course conten`, `Teacher is good at explaining the subject matter`, `Teacher's presentation was clear,loud ad easy to understand`, `Teacher is good at using innovative teaching methods/ways`, `Teacher is available and helpful during counseling hours`, `Teacher has competed the whole course as per course outline`, `Teacher was always fair and impartial:`, `Assessments conducted are clearly connected to maximize learinin`, `What I liked about the course`, `Why I disliked about the course`, `date`) VALUES
(19, 'pj@hotmail.com', 'rav@gmail.com', '5', '4', '3', '4', '5', '4', '3', '2', '1', '2', '5', '4', '', '\r\n kjnkl', '2018-07-07'),
(20, 'ppushkar983@gmail.com', 'rav@gmail.com', '5', '4', '3', '5', '4', '3', '2', '1', '2', '3', '4', '3', '\r\n', '\r\n', '2018-07-07'),
(21, 'ish983@gmail.com', 'rav@gmail.com', '4', '2', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '\r\n', '\r\n', '2018-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `notice_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`notice_id`, `attachment`, `subject`, `Description`, `Date`) VALUES
(8, 'AteekCV_java (1).docx', 'aaaaa', 'dfdfdfd', '2016-07-03 12:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `programme`, `semester`) VALUES
(8, 'bh', 'bhaskar@gmail.com', 'bhaskar', 'B.Tech', '6'),
(12, 'pj', 'pj@gmail.com', 'e75fab623309b2452123242f41551ed6', 'B.Tech', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
