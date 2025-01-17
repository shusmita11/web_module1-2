-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2025 at 10:35 AM
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
-- Database: `web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`name`, `email`, `password`) VALUES
('Shusmita Aziz', 'aziz@gmail.com', '77@77777');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_request`
--

CREATE TABLE `appointment_request` (
  `appointment_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `appointment_time` varchar(100) NOT NULL,
  `appointment_date` date NOT NULL,
  `problem` varchar(250) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_request`
--

INSERT INTO `appointment_request` (`appointment_id`, `name`, `email`, `doctor_id`, `doctor_name`, `appointment_time`, `appointment_date`, `problem`, `token`) VALUES
(1, 'ggg sss', 'gs@gmail.com', 1, 'Samia Jahan', '9:00 AM- 11:00 AM', '2025-01-07', 'ohiug', '1'),
(2, 'hhh rrr', 'hr@gmail.com', 1, 'Samia Jahan', '9:00 AM- 11:00 AM', '2025-01-07', 'fnjkrb', '2'),
(7, 'zzz aaa', 'za@gmail.com', 5, 'Farhana Ahmed', '3.00 PM - 5.00 PM', '2025-01-07', 'headache', '2'),
(9, 'Saiba', 'saiba@yahoo.com', 1, 'Samia Jahan', '3.00 PM - 5.00 PM', '2025-01-02', 'stomach ache', '1'),
(12, 'aaa zzz', 'az@gmail.com', 4, 'Noor Azad', '7.00PM - 9.00PM', '2025-01-07', 'fever', '1'),
(13, 'aaa zzz', 'az@gmail.com', 1, 'Samia Jahan', '9.00 AM - 11.00 AM', '2025-01-01', 'headache', '1'),
(14, 'aaa zzz', 'az@gmail.com', 5, 'Farhana Ahmed', '3.00 PM - 5.00 PM', '2025-01-02', 'fever', '1'),
(15, 'bbb yyy', 'by@gmail.com', 1, 'Samia Jahan', '9.00 AM - 11.00 AM', '2025-01-01', 'headache', '2'),
(19, 'aaa zzz', 'az@gmail.com', 4, 'Noor Azad', '7.00PM - 9.00PM', '2025-01-11', 'headache', '1'),
(22, 'ccc xxx', 'cx@gmail.com', 5, 'Farhana Ahmed', '3.00 PM - 5.00 PM', '2025-01-22', 'Stress', '3'),
(23, 'Peter Parker', 'parker@gmail.com', 3, 'Azhar Hossain', '9.00PM - 111.00PM', '2025-01-22', 'head spinning', '1'),
(30, 'aaa zzz', 'az@gmail.com', 3, 'Azhar Hossain', '9.00PM - 111.00PM', '2025-01-24', 'ekegnjetnh', '1'),
(31, 'aaa zzz', 'az@gmail.com', 5, 'Farhana Ahmed', '3.00 PM - 5.00 PM', '2025-01-08', ',fjwr9purobhnjl.', '1'),
(34, 'aaa zzz', 'az@gmail.com', 1, 'Samia Jahan', '9:00 AM- 11:00 AM', '2025-01-24', 'matha betha', '1'),
(35, 'aaa zzz', 'az@gmail.com', 1, 'Samia Jahan', '9:00 AM- 11:00 AM', '2025-01-24', 'matha betha', '2'),
(36, 'aaa zzz', 'az@gmail.com', 5, 'Farhana Ahmed', '3.00 PM - 5.00 PM', '2025-01-19', 'KNIHV', '1'),
(37, 'aaa zzz', 'az@gmail.com', 5, 'Farhana Ahmed', '3.00 PM - 5.00 PM', '2025-01-17', 'ohiugjkutdtr', '1'),
(38, 'aaa zzz', 'az@gmail.com', 4, 'Noor Azad', '7.00PM - 9.00PM', '2025-01-24', 'test1', '1'),
(45, 'bbb yyy', 'by@gmail.com', 4, 'Noor Azad', '7.00PM - 9.00PM', '2025-01-20', 'headache', '1'),
(47, 'bbb yyy', 'by@gmail.com', 4, 'Noor Azad', '7.00PM - 9.00PM', '2025-01-23', 'test3', '1'),
(48, 'bbb yyy', 'by@gmail.com', 4, 'Noor Azad', '7.00PM - 9.00PM', '2025-01-24', 'test5', '2'),
(49, 'ccc xxx', 'cx@gmail.com', 4, 'Noor Azad', '7.00PM - 9.00PM', '2025-01-24', 'test6', '3');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_info`
--

CREATE TABLE `doctor_info` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `available_time` varchar(100) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_info`
--

INSERT INTO `doctor_info` (`id`, `phone`, `email`, `name`, `available_time`, `speciality`, `hospital`, `password`) VALUES
(3, '11111111111', 'a1@gmail.com', 'Azhar Hossain', '9.00PM - 111.00PM', 'Surgery', 'Rajshahi Medical College Hospital', '&1111111'),
(4, '22222222222', 'b2@gmail.com', 'Noor Azad', '7.00PM - 9.00PM', 'Surgery', 'Dhaka Medical College Hospital', '&2222222'),
(5, '12345678901', 'farhana@gmail.com', 'Farhana Ahmed', '3.00 PM - 5.00 PM', 'Medicine', 'Mymensingh Medical College Hospital', '1111111$'),
(1, '01234567890', 'samia@gmail.com', 'Samia Jahan', '9:00 AM- 11:00 AM', 'Neurology', 'Dhaka Medical College Hospital', '00@00000');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cardholder_name` varchar(100) NOT NULL,
  `card_number` varchar(19) NOT NULL,
  `expiry_month` int(11) NOT NULL,
  `expiry_year` int(11) NOT NULL,
  `cvv` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_email`, `payment_method`, `name`, `cardholder_name`, `card_number`, `expiry_month`, `expiry_year`, `cvv`) VALUES
(1, 'user1@gmail.com', '', 'Jolil Mia', 'Jolil', '2222 3333 4444 555', 12, 2027, '123'),
(2, 'user1@gmail.com', 'card', 'Test', 'Test ', '123445667', 9, 2026, '222'),
(3, 'user1@gmail.com', '', 'Last Test ', 'Last Test', '12345678', 11, 2026, '999'),
(0, 'az@gmail.com', 'paypal', 'aaa zzz', 'Aziz', '1234567890098765', 3, 2026, '332'),
(0, 'az@gmail.com', 'paypal', 'aaa zzz', 'Aziz', '1234567890098765', 3, 2025, '445'),
(0, 'az@gmail.com', 'paypal', 'aaa zzz', 'Aziz', '1234567890098765', 2, 2025, '666'),
(0, 'az@gmail.com', 'card', 'aaa zzz', 'Aziz', '1234567890098765', 4, 2026, '777'),
(0, 'az@gmail.com', 'card', 'aaa zzz', 'Aziz', '1122334455667788', 2, 2026, '321'),
(0, 'az@gmail.com', 'card', 'aaa zzz', 'Aziz', '1111222233334444', 3, 2026, '778'),
(0, 'by@gmail.com', 'card', 'bbb yyy', 'test2', '2222222222222222', 2, 2025, '222'),
(0, 'by@gmail.com', 'card', 'bbb yyy', 'test3', '3333333333333333', 3, 2025, '333'),
(0, 'by@gmail.com', 'card', 'bbb yyy', 'test4', '4444444444444444', 4, 2027, '444'),
(0, 'by@gmail.com', 'card', 'bbb yyy', 'test5', '5555555555555555', 5, 2025, '555'),
(0, 'cx@gmail.com', 'card', 'ccc xxx', 'test6', '6666666666666666', 6, 2026, '666');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `medical_history` varchar(500) NOT NULL,
  `emergency_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`first_name`, `last_name`, `email`, `phone`, `nid`, `password`, `dob`, `gender`, `address`, `medical_history`, `emergency_contact`) VALUES
('aaa', 'zzz', 'az@gmail.com', '11111111111', '1234567890', '@@aA@@@@', '2008-01-07', 'Male', 'aazz', 'zzaa', '11111111111'),
('Bruce', 'Wayne', 'bw@gmail.com', '00000000000', '0011225588', 'bwbwbwbw@', '2008-05-04', 'Male', 'Gotham', 'injury in knee', '00000000000'),
('bbb', 'yyy', 'by@gmail.com', '22222222222', '2345678901', '2222222@', '2008-02-03', 'Male', 'bbbb', 'yyyy', '22222222222'),
('ccc', 'xxx', 'cx@gmail.com', '33333333333', '3456789012', '2222222#', '2005-06-14', 'Female', 'cccc', 'xxxx', '33333333333'),
('Samia', 'Dehan', 'dehan@gmail.com', '11111111111', '1313131313', '1111#111', '2004-01-03', 'Female', 'aaaa', 'aaaa', '33333333333'),
('ddd', 'vvv', 'dv@gmail.com', '44444444444', '4567890123', '3333333#', '1998-12-16', 'Male', 'dddd', 'vvvv', '44444444444'),
('eee', 'uuu', 'eu@gmail.com', '55555555555', '5678901234', '4444444#', '1998-12-16', 'Female', 'eeee', 'uuuu', '55555555555'),
('Farzana', 'Kafil', 'farzana.kafil@gmail.com', '01302926514', '1122334455', '1234567@', '2001-08-04', 'Female', 'Khilkhet, Dhaka', 'none', '01302926514'),
('fff', 'ttt', 'ft@gmail.com', '66666666666', '6789012345', '5555555#', '1996-09-15', 'Female', 'ffff', 'tttt', '66666666666'),
('ggg', 'sss', 'gs@gmail.com', '77777777777', '7890123456', '6666666#', '2003-05-11', 'Male', 'gggg', 'ssss', '77777777777'),
('hhh', 'rrr', 'hr@gmail.com', '88888888888', '8901234567', '7777777#', '2003-05-11', 'Male', 'hhhh', 'rrrr', '88888888888'),
('iii', 'qqq', 'iq@gmail.com', '99999999999', '9012345678', '8888888#', '2003-05-11', 'Male', 'iiii', 'qqqq', '99999999999'),
('jjj', 'ppp', 'jp@gmail.com', '00000000000', '0123456789', '9999999#', '2003-05-11', 'Male', 'jjjj', 'pppp', '00000000000'),
('kkk', 'ooo', 'ko@gmail.com', '11111111111', '9123456780', '0000000$', '2003-05-11', 'Male', 'kkkk', 'oooo', '00000000000'),
('mmm', 'nnn', 'mn@gmail.com', '11111111111', '8912345670', '@$000000', '2003-05-11', 'Male', 'mmmm', 'nnnn', '00000000000'),
('Noor', 'Nahar', 'nahar@gmail.com', '11111111111', '1144778855', '@@1234@@', '1966-03-21', 'Female', 'Mashkanda, Mymensingh', 'high blood pressure', '11111111111'),
('Peter', 'Parker', 'parker@gmail.com', '11111111111', '1111111110', '1111111@', '1999-05-11', 'Male', 'Queens, New York', '', '11111111111'),
('Sadika', 'Alam', 'sa@gmail.com', '01302926514', '2342342340', '@@123456@@', '1990-06-19', 'Female', 'Dhaka', '', '01711207066'),
('zzz', 'aaa', 'za@gmail.com', '11111111111', '8912345671', '@@000000', '2003-05-11', 'Male', 'mmmm', 'nnnn', '00000000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `appointment_request`
--
ALTER TABLE `appointment_request`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `doctor_info`
--
ALTER TABLE `doctor_info`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`,`email`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`,`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_request`
--
ALTER TABLE `appointment_request`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
