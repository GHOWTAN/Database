- --------------------------------------------------------
-- Host                         mysql.cc.puv.fi
-- Server version               5.5.53-0+deb8u1 - (Debian)
-- Server OS                    debian-linux-gnu
-- HeidiSQL Version             9.4.0.5125
-- --------------------------------------------------------

!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT ;
!40101 SET NAMES utf8 ;
!50503 SET NAMES utf8mb4 ;
!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 ;
!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' ;


-- Dumping database structure for tka_2017
CREATE DATABASE IF NOT EXISTS `tka_2017` !40100 DEFAULT CHARACTER SET latin1 ;
USE `tka_2017`;

-- Dumping structure for table tka_2017.apply
CREATE TABLE IF NOT EXISTS `apply` (
  `cname` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `decision` varchar(1) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  KEY `fk_apply_student` (`sid`),
  KEY `fk_apply_college1` (`cname`),
  CONSTRAINT `fk_apply_college1` FOREIGN KEY (`cname`) REFERENCES `college` (`cname`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_apply_student` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tka_2017.apply ~19 rows (approximately)
!40000 ALTER TABLE `apply` DISABLE KEYS ;
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
!40000 ALTER TABLE `apply` ENABLE KEYS ;

-- Dumping structure for table tka_2017.college
CREATE TABLE IF NOT EXISTS `college` (
  `cname` varchar(50) NOT NULL,
  `state` varchar(2) DEFAULT NULL,
  `enrollment` int(11) DEFAULT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tka_2017.college ~4 rows (approximately)
!40000 ALTER TABLE `college` DISABLE KEYS ;
INSERT INTO `college` (`cname`, `state`, `enrollment`) VALUES
	('Berkeley', 'CA', 36000),
	('Carnegie Mellon', 'PA', 11500),
	('Cornell', 'NY', 21000),
	('MIT', 'MA', 10000),
	('Stanford', 'CA', 15000);
!40000 ALTER TABLE `college` ENABLE KEYS ;

-- Dumping structure for table tka_2017.student
CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `gpa` decimal(10,1) DEFAULT NULL,
  `sizehs` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tka_2017.student ~13 rows (approximately)
!40000 ALTER TABLE `student` DISABLE KEYS ;
INSERT INTO `student` (`sid`, `sname`, `gpa`, `sizehs`) VALUES
	(123, 'Amy', 4.0, 1000),
	(234, 'Bob', 4.0, 1500),
	(345, 'Craig', 4.0, 500),
	(456, 'Doris', 4.0, 1000),
	(543, 'Craig', 3.0, 2000),
	(567, 'Edward', 3.0, 2000),
	(654, 'Amy', 4.0, 1000),
	(678, 'Fay', 4.0, 200),
	(765, 'Jay', 3.0, 1500),
	(789, 'Gary', 3.0, 800),
	(876, 'Irene', 4.0, 400),
	(987, 'Helen', 4.0, 800),
	(999, 'Am', 5.0, 12000);
!40000 ALTER TABLE `student` ENABLE KEYS ;

!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') ;
!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) ;
!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT ;