-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2025 at 10:03 AM
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
-- Database: `apartment`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartmentanalytics`
--

CREATE TABLE `apartmentanalytics` (
  `graph_id` int(10) NOT NULL,
  `today` date NOT NULL,
  `has_active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartmentanalytics`
--

INSERT INTO `apartmentanalytics` (`graph_id`, `today`, `has_active`) VALUES
(1, '2025-02-01', 1),
(2, '2025-02-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `apartmentsingup`
--

CREATE TABLE `apartmentsingup` (
  `userid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `roomNumber` varchar(255) NOT NULL,
  `ProfilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartmentsingup`
--

INSERT INTO `apartmentsingup` (`userid`, `name`, `address`, `contact_number`, `plate_number`, `roomNumber`, `ProfilePic`) VALUES
(1, 'dslkjfklsd', 'sdlfhskjdfsd', '232132213212', '', 'Unit18', 'WIN_20241101_22_21_47_Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `apartment_occupancy`
--

CREATE TABLE `apartment_occupancy` (
  `Apartment_id` int(10) NOT NULL,
  `Last_inspect` date DEFAULT NULL,
  `condition_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_records`
--

CREATE TABLE `emergency_records` (
  `emergency_id` int(10) NOT NULL,
  `disaster` varchar(255) NOT NULL,
  `happen_date` date DEFAULT NULL,
  `Unitroom` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `status_completion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lease_inform`
--

CREATE TABLE `lease_inform` (
  `leaseid` int(10) NOT NULL,
  `login_id` int(10) NOT NULL,
  `lease_start` date NOT NULL,
  `lease_end` date NOT NULL,
  `monthly` varchar(255) NOT NULL,
  `deposite` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lease_request`
--

CREATE TABLE `lease_request` (
  `leaseRec_id` int(10) NOT NULL,
  `login_Id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `monthly` int(255) NOT NULL,
  `Downpayment` int(255) NOT NULL,
  `Comments` varchar(255) NOT NULL,
  `approval` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginapartment`
--

CREATE TABLE `loginapartment` (
  `loginid` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uservalue` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginapartment`
--

INSERT INTO `loginapartment` (`loginid`, `email`, `password`, `uservalue`) VALUES
(1, 'hassam@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$4gY6xyEn8oUyDitCHhdNog$xeoOMucz3TvDc9kt/4lJtGtLyHMpyM42ex59qCsdeCk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintain_id` int(10) NOT NULL,
  `login_id` int(10) NOT NULL,
  `maintenance_issue` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `maintenancedate` date DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_avail`
--

CREATE TABLE `room_avail` (
  `room_id` int(10) NOT NULL,
  `Unit_name` varchar(255) NOT NULL,
  `RoomNumber` varchar(10) NOT NULL,
  `room_floor` varchar(10) NOT NULL,
  `room_size` varchar(255) NOT NULL,
  `Room_Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `utilitiesid` int(10) NOT NULL,
  `login_id` int(10) NOT NULL,
  `water` int(1) NOT NULL,
  `electricity` int(1) NOT NULL,
  `internet` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_apartment`
--

CREATE TABLE `visitors_apartment` (
  `visit_id` int(10) NOT NULL,
  `visitor_name` varchar(255) NOT NULL,
  `visitor_email` varchar(255) NOT NULL,
  `visited_room` varchar(255) NOT NULL,
  `valid_id` int(10) NOT NULL,
  `visited_date` date DEFAULT NULL,
  `time_in` varchar(255) NOT NULL,
  `time_out` varchar(255) DEFAULT NULL,
  `visit_reason` varchar(255) NOT NULL,
  `confirmation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors_apartment`
--

INSERT INTO `visitors_apartment` (`visit_id`, `visitor_name`, `visitor_email`, `visited_room`, `valid_id`, `visited_date`, `time_in`, `time_out`, `visit_reason`, `confirmation`) VALUES
(1, 'Hassam1', 'mywolf@gmail.com', 'Unit18', 70, '2025-02-01', '4:57 PM', NULL, 'May kinanlan', 'PENDING'),
(2, 'Hassam2', 'mywolf@gmail.com', 'Unit18', 633, '2025-02-01', '4:58 PM', NULL, 'Test', 'PENDING');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartmentanalytics`
--
ALTER TABLE `apartmentanalytics`
  ADD PRIMARY KEY (`graph_id`);

--
-- Indexes for table `apartmentsingup`
--
ALTER TABLE `apartmentsingup`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `apartment_occupancy`
--
ALTER TABLE `apartment_occupancy`
  ADD PRIMARY KEY (`Apartment_id`);

--
-- Indexes for table `emergency_records`
--
ALTER TABLE `emergency_records`
  ADD PRIMARY KEY (`emergency_id`);

--
-- Indexes for table `lease_inform`
--
ALTER TABLE `lease_inform`
  ADD PRIMARY KEY (`leaseid`),
  ADD KEY `idx_login_id` (`login_id`);

--
-- Indexes for table `lease_request`
--
ALTER TABLE `lease_request`
  ADD PRIMARY KEY (`leaseRec_id`),
  ADD KEY `login_Id` (`login_Id`);

--
-- Indexes for table `loginapartment`
--
ALTER TABLE `loginapartment`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintain_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `room_avail`
--
ALTER TABLE `room_avail`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`utilitiesid`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `visitors_apartment`
--
ALTER TABLE `visitors_apartment`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartmentanalytics`
--
ALTER TABLE `apartmentanalytics`
  MODIFY `graph_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apartmentsingup`
--
ALTER TABLE `apartmentsingup`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apartment_occupancy`
--
ALTER TABLE `apartment_occupancy`
  MODIFY `Apartment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_records`
--
ALTER TABLE `emergency_records`
  MODIFY `emergency_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lease_inform`
--
ALTER TABLE `lease_inform`
  MODIFY `leaseid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lease_request`
--
ALTER TABLE `lease_request`
  MODIFY `leaseRec_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginapartment`
--
ALTER TABLE `loginapartment`
  MODIFY `loginid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintain_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_avail`
--
ALTER TABLE `room_avail`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `utilitiesid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_apartment`
--
ALTER TABLE `visitors_apartment`
  MODIFY `visit_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartment_occupancy`
--
ALTER TABLE `apartment_occupancy`
  ADD CONSTRAINT `apartment_occupancy_ibfk_1` FOREIGN KEY (`Apartment_id`) REFERENCES `room_avail` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lease_inform`
--
ALTER TABLE `lease_inform`
  ADD CONSTRAINT `lease_inform_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `loginapartment` (`loginid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lease_request`
--
ALTER TABLE `lease_request`
  ADD CONSTRAINT `lease_request_ibfk_2` FOREIGN KEY (`login_Id`) REFERENCES `loginapartment` (`loginid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loginapartment`
--
ALTER TABLE `loginapartment`
  ADD CONSTRAINT `loginapartment_ibfk_1` FOREIGN KEY (`loginid`) REFERENCES `apartmentsingup` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `loginapartment` (`loginid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `utilities`
--
ALTER TABLE `utilities`
  ADD CONSTRAINT `utilities_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `loginapartment` (`loginid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
