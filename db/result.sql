-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 04:07 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `result`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'rishabh', '63e780c3f321d13109c71bf81805476e', '2022-11-11 17:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'A', '2022-11-11 17:27:59', '0000-00-00 00:00:00'),
(2, 'First', 1, 'B', '2022-11-11 17:28:06', '0000-00-00 00:00:00'),
(3, 'Second', 2, 'A', '2022-11-11 17:28:13', '0000-00-00 00:00:00'),
(4, 'Second', 2, 'B', '2022-11-11 17:28:24', '0000-00-00 00:00:00'),
(5, 'Third', 3, 'A', '2022-11-11 17:28:32', '0000-00-00 00:00:00'),
(6, 'Third', 3, 'B', '2022-11-11 17:28:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 1, 4, 55, '2022-11-11 17:37:32', NULL),
(2, 1, 1, 3, 40, '2022-11-11 17:37:32', NULL),
(3, 1, 1, 6, 68, '2022-11-11 17:37:32', NULL),
(4, 1, 1, 2, 36, '2022-11-11 17:37:32', NULL),
(5, 2, 2, 3, 90, '2022-11-11 17:37:49', NULL),
(6, 2, 2, 6, 91, '2022-11-11 17:37:49', NULL),
(7, 2, 2, 2, 96, '2022-11-11 17:37:49', '2022-11-11 18:08:01'),
(8, 2, 2, 1, 92, '2022-11-11 17:37:49', '2022-11-11 18:08:01'),
(9, 3, 3, 4, 8, '2022-11-11 17:38:05', '2022-11-14 06:50:21'),
(10, 3, 3, 5, 14, '2022-11-11 17:38:05', '2022-11-14 06:50:21'),
(11, 3, 3, 2, 1, '2022-11-11 17:38:05', '2022-11-14 06:50:21'),
(12, 3, 3, 1, 12, '2022-11-11 17:38:05', '2022-11-14 06:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sunny', 'BCS01', 'sunny@gmail.com', 'Male', '2001-06-13', 1, '2022-11-11 17:35:43', NULL, 1),
(2, 'Monika', 'BCS02', 'monika@gmail.com', 'Female', '2004-05-24', 2, '2022-11-11 17:36:18', NULL, 1),
(3, 'Ankit', 'BCS03', 'ankit@gmail.com', 'Male', '2001-05-02', 3, '2022-11-11 17:36:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2022-11-11 17:31:16', '2022-11-11 17:31:16'),
(2, 1, 2, 1, '2022-11-11 17:31:19', '2022-11-11 17:31:19'),
(3, 1, 3, 1, '2022-11-11 17:31:25', '2022-11-11 17:31:25'),
(4, 1, 4, 0, '2022-11-11 17:31:28', '2022-11-11 17:31:28'),
(5, 1, 6, 1, '2022-11-11 17:32:01', '2022-11-11 17:32:01'),
(6, 2, 1, 1, '2022-11-11 17:32:10', '2022-11-11 17:32:10'),
(7, 2, 2, 1, '2022-11-11 17:32:14', '2022-11-11 17:32:14'),
(8, 2, 3, 1, '2022-11-11 17:32:17', '2022-11-11 17:32:17'),
(9, 2, 6, 1, '2022-11-11 17:32:22', '2022-11-11 17:32:22'),
(10, 3, 1, 1, '2022-11-11 17:32:28', '2022-11-11 17:32:28'),
(11, 3, 2, 1, '2022-11-11 17:32:33', '2022-11-11 17:32:33'),
(12, 3, 4, 1, '2022-11-11 17:32:39', '2022-11-11 17:32:39'),
(13, 3, 5, 1, '2022-11-11 17:32:44', '2022-11-11 17:32:44'),
(14, 4, 1, 1, '2022-11-11 17:32:47', '2022-11-11 17:32:47'),
(15, 4, 2, 1, '2022-11-11 17:32:54', '2022-11-11 17:32:54'),
(16, 4, 4, 1, '2022-11-11 17:32:59', '2022-11-11 17:32:59'),
(17, 4, 5, 1, '2022-11-11 17:33:06', '2022-11-11 17:33:06'),
(18, 5, 1, 1, '2022-11-11 17:33:09', '2022-11-11 17:33:09'),
(19, 5, 2, 1, '2022-11-11 17:33:12', '2022-11-11 17:33:12'),
(20, 5, 3, 1, '2022-11-11 17:33:16', '2022-11-11 17:33:16'),
(21, 5, 4, 1, '2022-11-11 17:33:20', '2022-11-11 17:33:20'),
(22, 5, 4, 1, '2022-11-11 17:33:23', '2022-11-11 17:33:23'),
(23, 5, 5, 1, '2022-11-11 17:33:26', '2022-11-11 17:33:26'),
(24, 5, 6, 1, '2022-11-11 17:33:31', '2022-11-11 17:33:31'),
(25, 6, 1, 1, '2022-11-11 17:33:37', '2022-11-11 17:33:37'),
(26, 6, 2, 1, '2022-11-11 17:33:43', '2022-11-11 17:33:43'),
(27, 6, 3, 1, '2022-11-11 17:33:46', '2022-11-11 17:33:46'),
(28, 6, 4, 1, '2022-11-11 17:33:49', '2022-11-11 17:33:49'),
(29, 6, 4, 1, '2022-11-11 17:33:53', '2022-11-11 17:33:53'),
(30, 6, 5, 1, '2022-11-11 17:33:56', '2022-11-11 17:33:56'),
(31, 6, 6, 1, '2022-11-11 17:33:59', '2022-11-11 17:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Science', '601', '2022-11-11 17:29:47', '0000-00-00 00:00:00'),
(2, 'Mathematics', '602', '2022-11-11 17:30:05', '0000-00-00 00:00:00'),
(3, 'GK', '603', '2022-11-11 17:30:15', '0000-00-00 00:00:00'),
(4, 'Aptitude', '604', '2022-11-11 17:30:41', '0000-00-00 00:00:00'),
(5, 'English', '605', '2022-11-11 17:30:54', '0000-00-00 00:00:00'),
(6, 'Hindi', '606', '2022-11-11 17:31:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
