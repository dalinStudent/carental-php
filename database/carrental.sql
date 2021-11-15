-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 03:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-07-05 11:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(6, 'dalin@gmail.com', 7, '14/10/2021', '20/10/2021', 'I love it', 1, '2021-10-14 13:09:28'),
(7, 'lisa@gmail.com', 7, '19/10/2021', '30/10/2021', 'I want to books it', 1, '2021-10-19 14:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Jeep', '2017-06-18 16:25:13', '2021-10-12 08:57:35'),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Daimler', '2017-06-19 06:22:13', '2021-10-12 08:56:28'),
(8, 'Honda', '2017-07-05 11:02:29', '2021-10-12 08:57:00'),
(10, 'Ford Motor', '2021-10-12 08:53:38', NULL),
(11, 'Porsche', '2021-10-12 08:58:05', NULL),
(12, 'Lamborghini', '2021-10-12 08:58:22', NULL),
(13, 'Hyundai', '2021-10-12 08:58:33', '2021-10-12 09:45:53'),
(14, 'Lexus', '2021-10-12 08:58:41', NULL),
(15, 'Mercedes-Benz', '2021-10-12 08:58:52', NULL),
(16, 'Rolls-Royce', '2021-10-12 08:59:12', NULL),
(17, 'Suzaki new', '2021-10-14 12:04:20', '2021-10-14 12:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo 1																					', 'test@test.com1', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Jennie Kim', 'hoemdalin@gmail.com', '0882051005', 'Hello Hi Bye Bye', '2021-10-14 11:48:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(2, 'hoemdalin@gmail.com', '2021-10-14 13:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(4, 'dalin@gmail.com', 'One day I will have a own car', '2021-10-14 13:24:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(8, 'Raiya Sous', 'raiya@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567890', NULL, NULL, NULL, NULL, '2021-10-12 04:29:15', '2021-10-12 09:11:13'),
(9, 'Dalin Hoem', 'dalin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0882051005', '04/07/2001', '#371', 'Phnom Penh', 'Cambodia', '2021-10-12 09:13:41', '2021-10-14 13:27:14'),
(10, 'Lisa Manoban', 'lisa@gmail.com', '202cb962ac59075b964b07152d234b70', '09876543', NULL, NULL, NULL, NULL, '2021-10-19 14:48:39', NULL),
(11, 'Rose', 'rose@gmail.com', '202cb962ac59075b964b07152d234b70', '0882051005', NULL, NULL, NULL, NULL, '2021-10-19 15:00:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(7, '200t Lexus', 5, 'Lexus has also discontinued the front-wheel-drive NX 200t for 2017. The 2017 Lexus NX 200t is a compact luxury SUV offered with all-wheel drive and a turbocharged four-cylinder engine. A hybrid version is available in the form of the NX 300h model.', 500, 'Petrol', 2021, 4, '1.jfif', '2.jfif', '3.jfif', '4.jfif', '5.jfif', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-10-12 08:04:32', '2021-10-16 01:56:03'),
(8, 'Porsche Macan Facelift', 11, 'The car is still in its first generation and Porsche has updated the Macan for the second time. It gets redesigned front and rear bumpers while there are also new all-LED headlights. Besides, the carmaker will also launch a top-of-the-line GTS trim of the Macan here which comes with a different set of bumpers. Depending on the variant, the SUV will be offered with a wide range of alloy wheels with sizes ranging from 19 to 21-inches', 300, 'Petrol', 2021, 4, '1.jpeg', '2.jpeg', '3.jpeg', '4.jpeg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-10-12 09:37:07', NULL),
(9, 'Lamborghini Urus', 12, 'Lamborghini takes a giant leap ahead and changes the way we look at SUVs with the launch of the Urus. Named after a species of wild Ox that predates the modern domestic cattle, the Urus is Lamborghini’s second SUV that comes nearly 25 years after their first SUV, the LM002, went out of production. It is based on the same MLB Evo platform as the Porsche Cayenne,', 800, 'Petrol', 2021, 4, '1.jpg', '2.jpg', '3.jpg', '1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-10-12 09:41:02', '2021-10-14 07:11:03'),
(11, 'Toyota Prius 2010', 5, 'With top fuel economy ratings and competitive interior and cargo space, reviewers agreed that it was tough to beat the 2010 Toyota Prius when it was new. Its polarizing styling may deter some shoppers, but the aerodynamic shape boosts fuel economy.', 150, 'Petrol', 2010, 4, 'p1.jpg', '2.jpg', '3.jpg', '5.jpg', '', 1, 1, 1, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, 1, '2021-10-16 02:03:24', '2021-10-16 02:05:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
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
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
