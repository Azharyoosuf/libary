-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 02:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Admin', 'Admin@gmail.com', 'Admin', '123', '2024-11-05 13:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `overdue`
--

CREATE TABLE `overdue` (
  `StudentID` varchar(11) NOT NULL,
  `StudentName` varchar(40) NOT NULL,
  `MobNumber` varchar(11) NOT NULL,
  `Fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(5, 'Harlequin', '2024-11-05 13:26:50', NULL),
(6, 'DC BOOKS', '2024-11-05 13:28:09', NULL),
(7, 'Mathrubhumi Books', '2024-11-05 13:28:38', NULL),
(8, 'Kairali', '2024-11-05 13:29:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `Copies` int(3) NOT NULL,
  `IssuedCopies` int(3) NOT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `Copies`, `IssuedCopies`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(7, 'The Notebook', 10, 3, 15, 5, 2003, 499, '2024-11-05 13:32:08', '2024-11-05 15:29:13'),
(8, 'It Ends with Us', 4, 9, 15, 6, 2002, 450, '2024-11-05 13:37:47', '2024-11-05 13:52:46'),
(9, 'Outlander', 10, 1, 15, 5, 2000, 299, '2024-11-05 13:54:58', '2024-11-05 14:21:12'),
(10, 'Me Before You', 20, 3, 15, 5, 2006, 399, '2024-11-05 13:55:40', '2024-11-05 15:02:51'),
(11, 'The Shining', 10, 1, 19, 7, 321, 699, '2024-11-05 13:57:01', '2024-11-05 14:17:11'),
(12, 'Dracula', 63, -2, 19, 7, 123, 499, '2024-11-05 13:57:44', '2024-11-05 14:17:39'),
(13, 'Bird Box', 12, 1, 19, 7, 121, 450, '2024-11-05 13:58:25', '2024-11-05 15:02:03'),
(14, 'World War Z', 13, 0, 19, 8, 1023, 550, '2024-11-05 14:02:52', NULL),
(15, 'balarama', 50, 0, 21, 5, 1247, 20, '2024-11-05 15:32:13', NULL),
(16, 'Harry Potter', 5, 0, 16, 6, 1999, 899, '2024-11-06 12:37:18', NULL),
(17, 'The Hobbit', 8, 0, 16, 6, 1987, 966, '2024-11-06 12:38:12', NULL),
(18, 'The Alchemist', 5, 0, 16, 6, 7896, 799, '2024-11-06 12:38:43', NULL),
(19, 'Leaves of Grass', 6, 0, 20, 8, 7412, 120, '2024-11-06 12:40:43', NULL),
(20, 'Pachinko', 3, 0, 18, 6, 7452, 350, '2024-11-06 12:42:07', NULL),
(21, 'Midnight Children', 5, 0, 18, 8, 7414, 450, '2024-11-06 12:43:10', NULL),
(22, 'Father of Nation', 5, 0, 18, 7, 7474, 350, '2024-11-06 12:43:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(15, 'Classic Romance', 1, '2024-11-05 13:26:01', '0000-00-00 00:00:00'),
(16, 'Fiction', 1, '2024-11-05 13:29:49', '0000-00-00 00:00:00'),
(17, 'Mystery & Thriller', 1, '2024-11-05 13:30:11', '0000-00-00 00:00:00'),
(18, 'Historical', 1, '2024-11-05 13:30:34', '0000-00-00 00:00:00'),
(19, 'Horror', 1, '2024-11-05 13:30:45', '0000-00-00 00:00:00'),
(20, 'Poetry', 1, '2024-11-05 13:31:01', '0000-00-00 00:00:00'),
(21, 'comedy', 1, '2024-11-05 15:30:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblfine`
--

CREATE TABLE `tblfine` (
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfine`
--

INSERT INTO `tblfine` (`fine`) VALUES
(100);

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ReturnStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `ReturnStatus`, `fine`) VALUES
(26, 7, '3', '2024-11-05 14:17:01', '2024-11-05 14:17:28', 1, NULL),
(28, 7, '3', '2024-10-01 14:21:12', '2024-11-05 14:23:18', 1, 500),
(29, NULL, '4', '2024-11-05 14:32:43', NULL, 0, NULL),
(30, NULL, '4', '2024-11-05 14:33:07', NULL, 0, NULL),
(31, NULL, '2', '2024-11-05 14:36:02', NULL, 0, NULL),
(32, NULL, '2', '2024-11-05 14:38:14', NULL, 0, NULL),
(33, 13, '6', '2024-11-05 15:02:03', NULL, 0, NULL),
(34, 10, '5', '2024-11-05 15:02:51', NULL, 0, NULL),
(35, 7, '7', '2024-11-05 15:29:13', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblrequestedbookdetails`
--

CREATE TABLE `tblrequestedbookdetails` (
  `StudentID` varchar(20) NOT NULL,
  `StudName` varchar(40) NOT NULL,
  `BookName` varchar(50) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `AuthorName` varchar(50) NOT NULL,
  `ISBNNumber` int(11) NOT NULL,
  `BookPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblrequestedbookdetails`
--

INSERT INTO `tblrequestedbookdetails` (`StudentID`, `StudName`, `BookName`, `CategoryName`, `AuthorName`, `ISBNNumber`, `BookPrice`) VALUES
('4', 'Azhar Yoosuf Sadiq', 'The Notebook', 'Classic Romance', 'Harlequin', 2003, 499),
('4', 'Azhar Yoosuf Sadiq', 'Dracula', 'Horror', 'Mathrubhumi Books', 123, 499);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(12, '2', 'Jithin', 'jithin@gmail.com', '9947509525', '202cb962ac59075b964b07152d234b70', 1, '2024-11-05 13:00:31', NULL),
(13, '3', 'Abhay Raj', 'abhay@gmail.com', '7907678447', 'caf1a3dfb505ffed0d024130f58c5cfa', 1, '2024-11-05 14:14:01', NULL),
(14, '4', 'Azhar Yoosuf Sadiq', 'a.yosuf.s2004@gmail.com', '9594769391', '25d55ad283aa400af464c76d713c07ad', 1, '2024-11-05 14:30:31', NULL),
(17, '5', 'Abin George', 'abin@gmail.com', '8547216322', '202cb962ac59075b964b07152d234b70', 1, '2024-11-05 14:57:31', NULL),
(18, '6', 'shamil', 'shamil@gmail.com', '9074107075', '202cb962ac59075b964b07152d234b70', 1, '2024-11-05 14:59:46', NULL),
(20, '8', 'pranav', 'pranav@gmail.com', '9998887779', 'caf1a3dfb505ffed0d024130f58c5cfa', 1, '2024-11-06 12:17:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
