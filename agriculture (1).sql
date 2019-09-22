-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 12:21 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `Name` varchar(50) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) NOT NULL,
  `Temperature (in C)` int(10) NOT NULL,
  `Annual Rainfall (in cm)` int(10) NOT NULL,
  `Soil Type` varchar(50) NOT NULL,
  `Highest Producing State` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`Name`, `Type`, `Category`, `Temperature (in C)`, `Annual Rainfall (in cm)`, `Soil Type`, `Highest Producing State`) VALUES
('Apple', NULL, 'Horticulture', 20, 125, 'Well drained loamy soil', 'Jammu and Kashmir'),
('Bajra', 'Kharif', 'Food', 30, 45, 'Sandy soil', 'Rajasthan'),
('Banana', NULL, 'Horticulture', 30, 120, 'Deep silty, clay, loamy soil', 'Tamil Nadu'),
('Barley', 'Rabi', 'Food', 25, 42, 'Sandy loam soil', 'Uttar Pradesh'),
('Cabbage', NULL, 'Horticulture', 26, 90, 'Sandy loam soil', 'Uttar Pradesh'),
('Cashew', NULL, 'Plantation', 25, 300, 'Poor sandy soil', 'Maharashtra'),
('Cassava', 'Rabi', 'Horticulture', 28, 110, 'Not sandy soil', 'Tamil Nadu'),
('Castor', 'Kharif', 'Cash', 38, 50, 'Less fertile soil', 'Maharashtra'),
('Chickpeas', 'Rabi', 'Horticulture', 30, 90, 'Heavy soil', 'Madhya Pradesh'),
('Chilli', 'Rabi', 'Horticulture', 26, 120, 'Sandy loam soil', 'Andhra Pradesh'),
('Cluster bean', 'Kharif', 'Horticulture', 35, 55, 'Well drained, sandy loam soil', 'Rajasthan'),
('Cocoa', NULL, 'Plantation', 25, 200, 'Deep and well drained soil', 'Kerala'),
('Coconut', NULL, 'Plantation', 27, 200, 'Sandy soil', 'Tamil Nadu'),
('Coffee', NULL, 'Plantation', 28, 200, 'Well drained forest loam soil', 'Karnataka'),
('Cotton', 'Kharif', 'Cash', 30, 80, 'Black soil', 'Gujarat'),
('Cowpea', 'Kharif', 'Horticulture', 35, 100, 'Well drained loamy soil', 'Uttar Pradesh'),
('Date palm', NULL, 'Horticulture', 10, 130, 'Well drained deep sandy loam soil', 'Gujarat'),
('Garlic', NULL, 'Horticulture', 10, 75, 'Fertile loam soil', 'Madhya Pradesh'),
('Grapevine', NULL, 'Horticulture', 25, 70, 'Slightly acidic soil', 'Maharashtra'),
('Groundnut', 'Kharif', 'Cash', 30, 70, 'Well drained sandy loam', 'Gujarat'),
('Hazelnut', NULL, 'Cash', 22, 75, 'Well drained soil', 'Maharashtra'),
('Jowar', 'Kharif', 'Food', 30, 45, 'Sandy loam soil', 'Maharashtra'),
('Jute', 'Zaid', 'Cash', 35, 150, 'Sandy and Clay loam soil', 'West Bengal'),
('Large cardamon', NULL, 'Horticulture', 30, 300, 'Humus rich soil', 'Sikkim'),
('Lemon', NULL, 'Horticulture', 25, 200, 'Light soil', 'Andhra Pradesh'),
('Lineseeds', 'Rabi', 'Cash', 35, 70, 'Silty loam soil', 'Madhya Pradesh'),
('Litchis', 'Rabi', 'Horticulture', 35, 120, 'Deep fertile soil', 'Bihar'),
('Maize', 'Kharif', 'Food', 27, 75, 'Fertile, Well drained alluvial soil', 'Madhya Pradesh'),
('Mango', 'Rabi', 'Horticulture', 27, 45, 'Deep soil', 'Uttar Pradesh'),
('Mat bean', 'Kharif', 'Horticulture', 21, 75, 'Well drained soil', 'Rajasthan'),
('Oats', 'Kharif', 'Food', 23, 130, 'Well drained soil', 'Punjab'),
('Onion', NULL, 'Horticulture', 25, 70, 'Clay loam', 'Maharashtra'),
('Papaya', NULL, 'Horticulture', 30, 45, 'Hilly soil', 'Odisha'),
('Pineapple', NULL, 'Horticulture', 26, 150, 'Mildly acidic soil', 'Assam'),
('Potato', 'Rabi', 'Horticulture', 26, 70, 'Loose soil', 'Uttar Pradesh'),
('Pulses', 'Rabi', 'Food', 30, 70, 'Dry light soil', 'Madhya Pradesh'),
('Ragi', 'Kharif', 'Food', 27, 120, 'Red, black , Sandy and loamy soil', 'Karnataka'),
('Rice', 'Kharif', 'Food', 24, 150, 'Clay soil', 'West Bengal'),
('Rubber', NULL, 'Plantation', 32, 250, 'Highly deep weathered soil', 'Kerala'),
('Rye', 'Rabi', 'Food', 15, 90, 'Well drained soil', 'Kerala'),
('Saffron', NULL, 'Horticulture', 10, 50, 'Well drained soil', 'Jammu and Kashmir'),
('Small cardamon', NULL, 'Horticulture', 30, 300, 'Humus rich soil', 'Kerala'),
('Soyabean', 'Kharif', 'Horticulture', 38, 60, 'Well drained fertilr loamy soil', 'Maharashtra'),
('Spinach', NULL, 'Horticulture', 30, 75, 'Well drained loamy soil', 'Uttar Pradesh'),
('Sugarcane', 'Kharif', 'Cash', 26, 120, 'Clayey loamy soil', 'Uttar Pradesh'),
('Tabacco', 'Kharif', 'Cash', 30, 120, 'Well drained loamy soil', 'Andhra Pradesh'),
('Tea', NULL, 'Plantation', 30, 250, 'Loamy soil', 'Assam'),
('Tomato', NULL, 'Horticulture', 30, 80, 'Well drained loamy soil', 'Uttar Pradesh'),
('Turnips', NULL, 'Horticulture', 29, 80, 'Clay soil', 'Maharashtra'),
('Walnut', NULL, 'Cash', 10, 127, 'Well drained soil', 'Jammu and Kashmir'),
('Wheat', 'Rabi', 'Food', 25, 75, 'Clay or Loam soil', 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `famous crops`
--

CREATE TABLE `famous crops` (
  `Name` varchar(30) NOT NULL,
  `Type` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `famous crops`
--

INSERT INTO `famous crops` (`Name`, `Type`) VALUES
('Bajra', 'Kharif'),
('Barley', 'Rabi'),
('Cassava', 'Rabi'),
('Castor', 'Kharif'),
('Chickpeas', 'Rabi'),
('Groundnut', 'Kharif'),
('Maize', 'Kharif'),
('Oats', 'Kharif');

-- --------------------------------------------------------

--
-- Table structure for table `lesser known crops`
--

CREATE TABLE `lesser known crops` (
  `Name` varchar(20) NOT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesser known crops`
--

INSERT INTO `lesser known crops` (`Name`, `Type`) VALUES
('Arecanut', 'Whole Year'),
('Korra', 'Kharif'),
('Mesta', 'Kharif'),
('Safflower', 'Rabi'),
('Samai', 'Kharif'),
('Sapota', 'Kharif'),
('Sesamum', 'Rabi'),
('Tapico', 'Whole Year');

-- --------------------------------------------------------

--
-- Table structure for table `types_of_crops`
--

CREATE TABLE `types_of_crops` (
  `Type_Name` varchar(100) NOT NULL,
  `Sown_Months` varchar(100) NOT NULL,
  `Harvested_Months` varchar(100) DEFAULT NULL,
  `Whether` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types_of_crops`
--

INSERT INTO `types_of_crops` (`Type_Name`, `Sown_Months`, `Harvested_Months`, `Whether`) VALUES
('Kharif', 'July', 'September', 'Hot'),
('Rabi', 'November', 'April', 'Cold'),
('Zaid', 'March', 'June', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Type` (`Type`);

--
-- Indexes for table `famous crops`
--
ALTER TABLE `famous crops`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `lesser known crops`
--
ALTER TABLE `lesser known crops`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `types_of_crops`
--
ALTER TABLE `types_of_crops`
  ADD PRIMARY KEY (`Type_Name`),
  ADD UNIQUE KEY `Type_Name` (`Type_Name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crops`
--
ALTER TABLE `crops`
  ADD CONSTRAINT `crops_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `types_of_crops` (`Type_Name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
