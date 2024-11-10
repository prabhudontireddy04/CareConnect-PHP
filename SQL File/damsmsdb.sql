-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2024 at 02:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(10, 742837700, 'Abhilash', 8277272726, 'abhilash@gmail.com', '2024-11-15', '10:00:00', '20', 6, '', '2024-11-10 13:01:41', NULL, NULL, NULL),
(11, 921374399, 'Kiran Abbavaram ', 9027372768, 'kiran@gmail.com', '2024-11-21', '16:00:00', '16', 9, '', '2024-11-10 13:05:45', NULL, NULL, NULL),
(12, 180624081, 'Prabhas', 8277274738, 'prabhas@gmail.com', '2024-11-18', '11:30:00', '17', 10, '', '2024-11-10 13:06:26', NULL, NULL, NULL),
(13, 399608092, 'Ravi teja ', 9027875298, 'raviteja@gmail.com', '2024-11-19', '13:45:00', '22', 14, '', '2024-11-10 13:07:37', NULL, NULL, NULL),
(14, 455864958, 'abc', 675757464, 'abc@gmail.com', '2024-11-20', '12:00:00', '20', 7, '', '2024-11-10 13:11:42', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(5, 'pranay', 9017287373, 'pranay@gmail.com', '10', '202cb962ac59075b964b07152d234b70', '2024-11-10 12:18:47'),
(6, 'Abhinav', 9018284848, 'abhinav@gmail.com', '20', '202cb962ac59075b964b07152d234b70', '2024-11-10 12:32:46'),
(7, 'Prabhu', 9876543210, 'prabhu@gmail.com', '20', '202cb962ac59075b964b07152d234b70', '2024-11-10 12:36:49'),
(8, 'prem', 9018387474, 'prem@gmail.com', '15', 'f0c17eb77a937d973f1625f0441d02b6', '2024-11-10 12:47:51'),
(9, 'mahesh', 9036375757, 'mahesh@gmail.com', '16', '7cb323203b1306810d65271d8e9228ef', '2024-11-10 12:48:15'),
(10, 'naresh', 8374737474, 'naresh@gmail.com', '17', '7bb1be8a78498a9de40098a593199819', '2024-11-10 12:48:38'),
(11, 'akash', 8747494848, 'akash@gmail.com', '18', 'cb7c5f69ff356ecca55b7d08df877991', '2024-11-10 12:49:00'),
(12, 'kalki', 8475785858, 'kalki@gmail.com', '19', '99859dfea5f1307b5a7da04ea1353d25', '2024-11-10 12:49:39'),
(13, 'vinay', 7474785748, 'vinay@gmail.com', '21', '78ffb54cea01b365797d0b883eba44fc', '2024-11-10 12:50:06'),
(14, 'sushanth', 8474718383, 'sushanth@gmail.com', '22', '68f9550795b4a03710c71bae66d67e99', '2024-11-10 12:50:55'),
(15, 'omkar', 928384848, 'omkar@gmail.com', '23', '8c8fc186ffa46ad0bb06e0adc9f7fb97', '2024-11-10 12:51:14'),
(16, 'harish', 9283827373, 'harish@gmail.com', '24', 'f28efcd9824a2e8917cbf7e887c767b3', '2024-11-10 12:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 7896541239, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(15, 'Cardiologist', '2024-11-10 12:30:46'),
(16, 'Dentist', '2024-11-10 12:30:46'),
(17, 'Neurologist', '2024-11-10 12:30:46'),
(18, 'Pediatrician', '2024-11-10 12:30:46'),
(19, 'Orthopedic Surgeon', '2024-11-10 12:30:46'),
(20, 'Dermatologist', '2024-11-10 12:30:46'),
(21, 'Ophthalmologist', '2024-11-10 12:30:46'),
(22, 'Gynecologist', '2024-11-10 12:30:46'),
(23, 'Psychiatrist', '2024-11-10 12:30:46'),
(24, 'General Surgeon', '2024-11-10 12:30:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
