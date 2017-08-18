-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2016 at 12:49 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `appt`
--

CREATE TABLE `appt` (
  `ano` int(11) NOT NULL,
  `astudent` varchar(120) NOT NULL,
  `aadvisor` varchar(120) NOT NULL,
  `atime` varchar(11) NOT NULL,
  `ashow` int(1) NOT NULL DEFAULT '0',
  `adate` date NOT NULL,
  `flag` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appt`
--

INSERT INTO `appt` (`ano`, `astudent`, `aadvisor`, `atime`, `ashow`, `adate`, `flag`) VALUES
(1, 'uk4ktt', 'uu9yie', '12:12', 1, '2012-12-12', 0),
(2, 'k3dfyz', 'uu9yie', '12:40', 1, '2016-10-22', 0),
(3, 'cyftrb', 'uu9yie', '12:10', 1, '2016-12-05', 0),
(5, 'k3dfyz', 'uu9yie', '02:00', 1, '2016-12-15', 0),
(6, 'uk4ktt', 'uu9yie', '04:00', 1, '2016-12-15', 0),
(7, 'uk4ktt', 'kzb3q4', '03:30', 0, '2016-12-10', 0),
(8, 'gc9mue', 'l312iq', '01:00', 0, '2016-12-22', 0),
(9, '99cpiv', '2tzqlt', '05:30', 0, '2016-12-13', 0),
(10, 'ahrumb', 'l312iq', '02:15', 1, '2016-12-24', 0),
(11, '9kmx5c', 'l312iq', '11:00', 0, '2016-12-17', 0),
(12, '99cpiv', 'l312iq', '4:15', 1, '2016-12-21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleid` int(10) NOT NULL,
  `rolename` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleid`, `rolename`) VALUES
(1, 'Admin'),
(2, 'Student'),
(3, 'Advisor');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `sno` int(11) NOT NULL,
  `stime` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `UserID` varchar(120) NOT NULL,
  `UserName` varchar(150) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(1000) DEFAULT NULL,
  `MemberSince` varchar(255) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`UserID`, `UserName`, `FirstName`, `LastName`, `Email`, `Password`, `MemberSince`, `Active`, `role`) VALUES
('2lc65o', 'jay', 'Jay', 'Patel', 'jay@pace.edu', '62083987e70c8075c1a8f974f8521685278d0035e097e86cf8284c928401190d2', '1481331783', 1, 2),
('2tzqlt', 'jennifer', 'Jennifer', 'Thomas', 'jennifer@pace.edu', 'f7e82452e1596ee6aa6b32e8664ed5b35596d75e79a592791c0b4f13266ffca58', '1481666685', 1, 3),
('4frvct', 'JohnSmith', 'John', 'Smith', 'js@gmail.com', '6f4e26455b0f9c987a0009f3c5bd12786300b90fa76fb5399c82f2e63ab7121aa', '1445987595', 1, 2),
('94s163', 'ross', 'Ross', 'geller', 'ross@pace.edu', 'b1f1adc98390a3be9b87fef6b8b8765d0ff8517bbdc8a7d88d22f021b5167f4a1', '1481266671', 1, 1),
('99cpiv', 'akshay', 'Akshay', 'Bhains', 'akshay@pace.edu', '0378b9c030dc2598b861dae9a967d0b7f4a892db03722a7fd7b5d221cac41e8e0', '1481665565', 1, 2),
('9kmx5c', 'dan', 'Dan', 'Humphrey', 'dan@pace.edu', '81ea8c2ab4f0d526241bfb0922b8df4d3cbf09c0e2909e9833dca9a74b1202908', '1481671549', 1, 2),
('afbsv0', 'shardul', 'Shardul', 'Sherlekar', 'shardul@pace.edu', '7ad08d71433d884024377dd5bf05ccd6d2d670e98daaed9f7c581a354a7cf61ad', '1481517761', 1, 1),
('ahrumb', 'serena', 'Serena', 'Van der Woodsen', 'serena@pace.edu', '1874c8acc543ae8062f14bdb99ea8fa591cf02a24f21b74b1edcf28288059504b', '1481662389', 1, 2),
('byzqw5', 'roli', 'Roli', 'Saxena', 'roli@pace.edu', '235cafb339f350ffecf614fa9e216771a3b891a659216bd5b18ea0ee125b26dfb', '1480989102', 1, 1),
('gc9mue', 'kartik', 'Kartik', 'Chawla', 'kartik@pace.edu', '07cd61267e971088601a6217b201a2d9fe0972bfa73e3070e827551840b530abf', '1481666750', 1, 2),
('h69xpx', 'chandni', 'Chandni', 'Singh', 'chandni@pace.edu', '03226e587110085c1ff979631d94881dcda6b13a5844006daa4c07166ed4a4125', '1481672885', 1, 2),
('k3dfyz', 'chuck', 'Chuck', 'Bas', 'chuck@pace.edu', 'ec04ce6b7559856a407af4e1ac77e50f6f410069046a577d3ea81839b672ae6f4', '1481178922', 1, 2),
('kzb3q4', 'roshan', 'Roshan', 'Hana', 'roshan@pace.edu', 'ea017f02e318e3612048b649697fe74ff3fde24d3e5560c0679cc30b966511ab0', '1481316339', 1, 3),
('l312iq', 'praviin', 'Praviin', 'Mandhare', 'praviin@pace.edu', '476e4ad4fdf90b15d48c6bda3442e1aaf3b47280af40199ee7dc024f0cd8efad6', '1481665944', 1, 3),
('t6xknc', 'ericka', 'Ericka', 'Jones', 'ericka@pace.edu', '67160d35f415404a845774a2a4c158cc99f3705d257cece57eab12709abfd6d82', '1481671606', 0, 3),
('t964ce', 'sai', 'Sai', 'Teja', 'sai@pace.edu', '7841bd9b9ea23bdb88c67dd24117eab8e1a9fbefc70404abee940dce01ebf0c27', '1481665413', 1, 2),
('uk4ktt', 'sid', 'Sid', 'Saxena', 'sid@pace.edu', 'd04bb00ec3b589d4e0ac1bca4d2794b12cabffa5b8309c287be0612aa94481a7d', '1481179048', 1, 2),
('uu9yie', 'siddhesh', 'Siddhesh', 'Lele', 'siddhesh@pace.edu', 'c3314708d0c4eccbe8d8bcff8ec58db859563229840a95b55e3c287ff01e61f1e', '1480994749', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appt`
--
ALTER TABLE `appt`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`UserID`,`UserName`,`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appt`
--
ALTER TABLE `appt`
  MODIFY `ano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
