-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2017 at 08:35 AM
-- Server version: 5.5.53-0+deb8u1
-- PHP Version: 5.6.29-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tka_2017`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE IF NOT EXISTS `apply` (
  `cname` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `decision` varchar(1) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`cname`, `major`, `decision`, `sid`) VALUES
('Stanford', 'CS', 'Y', 123),
('Stanford', 'EE', 'N', 123),
('Berkeley', 'CS', 'Y', 123),
('Cornell', 'EE', 'Y', 123),
('Berkeley', 'biology', 'N', 234),
('MIT', 'bioengineering', 'Y', 345),
('Cornell', 'bioengineering', 'N', 345),
('Cornell', 'CS', 'Y', 345),
('Cornell', 'EE', 'N', 345),
('Stanford', 'history', 'Y', 678),
('Stanford', 'CS', 'Y', 987),
('Berkeley', 'CS', 'Y', 987),
('Stanford', 'CS', 'N', 876),
('MIT', 'biology', 'Y', 876),
('MIT', 'marine engineering', 'N', 876),
('Stanford', 'history', 'Y', 765),
('Cornell', 'history', 'N', 765),
('Cornell', 'psychology', 'Y', 765),
('MIT', 'CS', 'N', 543);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
 ADD KEY `fk_apply_student` (`sid`), ADD KEY `fk_apply_college1` (`cname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
ADD CONSTRAINT `fk_apply_college1` FOREIGN KEY (`cname`) REFERENCES `college` (`cname`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_apply_student` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;