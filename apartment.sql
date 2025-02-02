-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 05:05 PM
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
(1, '2025-01-09', 1),
(2, '2025-02-02', 1),
(3, '2025-02-02', 1),
(4, '2025-02-02', 1),
(5, '2025-02-02', 1),
(6, '2025-02-02', 1),
(7, '2025-02-02', 1);

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
(4, 'Irvin Jay Clemente', 'Brgy. Cgamutan Norte, Leganes, Iloilo', '09306497773', '', ' ', 'irvinjay.jpg'),
(5, 'Christopher Clemente', 'Sambag Jaro, Iloilo', '09227733777', '1', 'Unit16', 'chris.jpg'),
(6, 'John Michael Haro', 'Oton, Iloilo', '09333333333', '', 'Unit1', 'Messenger_creation_bc189f8f-8b75-4fc7-802f-58180eaed7e5.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `apartment_occupancy`
--

CREATE TABLE `apartment_occupancy` (
  `Apartment_id` int(10) NOT NULL,
  `Last_inspect` date DEFAULT NULL,
  `condition_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartment_occupancy`
--

INSERT INTO `apartment_occupancy` (`Apartment_id`, `Last_inspect`, `condition_status`) VALUES
(1, '2025-01-12', 'New'),
(2, '2025-01-12', 'New'),
(3, '2025-01-12', 'New'),
(4, '2025-01-12', 'New'),
(5, '2025-01-12', 'New'),
(6, '2025-01-12', 'New'),
(7, '2025-01-12', 'New'),
(8, '2025-01-12', 'New'),
(9, '2025-01-12', 'New'),
(10, '2025-01-12', 'New'),
(11, '2025-01-12', 'New'),
(12, '2025-01-12', 'New'),
(13, '2025-01-12', 'New'),
(14, '2025-01-12', 'New'),
(15, '2025-01-12', 'Old'),
(16, '2025-01-12', 'Old'),
(17, '2025-01-12', 'Old'),
(18, '2025-01-12', 'Old');

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

--
-- Dumping data for table `emergency_records`
--

INSERT INTO `emergency_records` (`emergency_id`, `disaster`, `happen_date`, `Unitroom`, `description`, `status_completion`) VALUES
(1, 'Fire', '2025-01-01', 'Unit 1', 'Small Fire cause by fire crackers', 'Completed');

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

--
-- Dumping data for table `lease_inform`
--

INSERT INTO `lease_inform` (`leaseid`, `login_id`, `lease_start`, `lease_end`, `monthly`, `deposite`, `status`) VALUES
(1, 5, '2025-01-11', '2025-01-30', '5000', '5000', 'Approved'),
(2, 6, '2025-01-13', '2025-04-13', '3000', '5000', 'Approved');

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
(4, 'irvin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$ApmusvxDqJ+K2dWHoW775w$02tivqes8zm9mhC1C5kH6aeNqxTT73l4St5ftK3q/R8', 1),
(5, 'chris@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$SjiSO4N9YnZ3d58CRnFvDQ$Q0/pOSIOQ39Gab6VfA85lDlPEgvZhD26EqVr00NIGsA', 0),
(6, 'haro@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$p5imxytX0TsMf00uwAf3CQ$P8RWWlgDlSkWM3GFY1qx7zeS8uq6/gxD6qkm32Hu3z4', 0);

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

--
-- Dumping data for table `room_avail`
--

INSERT INTO `room_avail` (`room_id`, `Unit_name`, `RoomNumber`, `room_floor`, `room_size`, `Room_Img`) VALUES
(1, 'GroundFloor ', 'Unit1', 'Ground', '22.53m X 14.58m', 'groundunit1.jpg'),
(2, 'GroundFloor', 'Unit2', 'Ground', '22.53m X 14.58m', 'groundunit2.jpg'),
(3, 'GroundFloor ', 'Unit3', 'Ground', '22.53m X 14.58m', 'grounduni3.jpg'),
(4, 'GroundFloor ', 'Unit4', 'Ground', '22.53m X 14.58m', 'groundunit4.jpg'),
(5, 'GroundFloor ', 'Unit5', 'Ground', '22.53m X 14.58m', 'IMG_20241006_125907_0481977963514.jpg'),
(6, 'GroundFloor ', 'Unit6', 'Ground', '22.53m X 14.58m', 'groundunit6.jpg'),
(7, 'GroundFloor ', 'Unit7', 'Ground', '22.53m X 14.58m', 'groundunit7.jpg'),
(8, 'SecondFloor', 'Unit8', '2nd ', '22.53m X 14.58m', '2ndfloorunit1.jpg'),
(9, 'SecondFloor', 'Unit9', '2nd ', '22.53m X 14.58m', '2ndfloorunit2.jpg'),
(10, 'SecondFloor', 'Unit10', '2nd ', '22.53m X 14.58m', '2ndfloorunit3.jpg'),
(11, 'SecondFloor', 'Unit11', '2nd ', '22.53m X 14.58m', '2ndfloorunit4.jpg'),
(12, 'SecondFloor', 'Unit12', '2nd ', '22.53m X 14.58m', '2ndfloorunit5.jpg'),
(13, 'SecondFloor', 'Unit13', '2nd ', '22.53m X 14.58m', '2ndfloorunit6.jpg'),
(14, 'SecondFloor', 'Unit14', '2nd ', '22.53m X 14.58m', '2ndfloorunit7.jpg'),
(15, 'MainHouse', 'Unit15', 'Ground', '22.53m X 14.58m', 'maingroundunit1.jpg'),
(16, 'MainHouse', 'Unit16', 'Ground', '22.53m X 14.58m', 'maingroundunit2.jpg'),
(17, 'MainHouse', 'Unit17', 'Ground', '22.53m X 14.58m', 'maingroundunit3.jpg'),
(18, 'MainHouse', 'Unit18', 'Ground', '22.53m X 14.58m', 'maingroundunit4.jpg');

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

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`utilitiesid`, `login_id`, `water`, `electricity`, `internet`) VALUES
(1, 4, 1, 1, 1),
(2, 5, 1, 1, 1),
(3, 6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `visitors_apartment`
--

CREATE TABLE `visitors_apartment` (
  `visit_id` int(10) NOT NULL,
  `visitor_name` varchar(255) NOT NULL,
  `visitor_email` varchar(255) NOT NULL,
  `visited_room` varchar(255) NOT NULL,
  `valid_id` varchar(255) NOT NULL,
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
(7, 'CHRISTOPHER CLEMENTE', 'juan@gmail.com', 'Unit1', '51453100fb4b4a3591498a36c2e9f5a6.jpg', '2025-02-02', '3:37 PM', '06:21 PM', 'Agi', 'approved');

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
  MODIFY `graph_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `apartmentsingup`
--
ALTER TABLE `apartmentsingup`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apartment_occupancy`
--
ALTER TABLE `apartment_occupancy`
  MODIFY `Apartment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `emergency_records`
--
ALTER TABLE `emergency_records`
  MODIFY `emergency_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lease_inform`
--
ALTER TABLE `lease_inform`
  MODIFY `leaseid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lease_request`
--
ALTER TABLE `lease_request`
  MODIFY `leaseRec_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loginapartment`
--
ALTER TABLE `loginapartment`
  MODIFY `loginid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintain_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room_avail`
--
ALTER TABLE `room_avail`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `utilitiesid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitors_apartment`
--
ALTER TABLE `visitors_apartment`
  MODIFY `visit_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
