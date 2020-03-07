# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.1.53-community-log
# Server OS:                    Win64
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2014-11-17 08:51:26
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;


# Dumping structure for table test.tbldepartment
DROP TABLE IF EXISTS `tbldepartment`;
CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `departmentid` varchar(6) NOT NULL,
  `departmentname` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table test.tbldepartment: ~6 rows (approximately)
/*!40000 ALTER TABLE `tbldepartment` DISABLE KEYS */;
INSERT INTO `tbldepartment` (`departmentid`, `departmentname`, `description`) VALUES
	('DP01', 'English', 'English Language Department'),
	('DP02', 'CISCO', 'Networking CISCO Department'),
	('DP03', 'Web Programming', 'Internet Programming'),
	('DP04', 'Business', 'Business Department'),
	('DP05', 'Finance', 'HR, Admin and Accounting'),
	('DP06', 'Programming', 'General Programming');
/*!40000 ALTER TABLE `tbldepartment` ENABLE KEYS */;


# Dumping structure for table test.tblparent
DROP TABLE IF EXISTS `tblparent`;
CREATE TABLE IF NOT EXISTS `tblparent` (
  `parentid` varchar(6) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table test.tblparent: ~5 rows (approximately)
/*!40000 ALTER TABLE `tblparent` DISABLE KEYS */;
INSERT INTO `tblparent` (`parentid`, `firstname`, `lastname`, `sex`, `province`, `job`, `phone`, `email`) VALUES
	('PT0001', 'SEN', 'Hun', 'M', 'Phnom Penh', 'Police', '011223344', 'hun.sen@gmail.com'),
	('PT0002', 'KIM', 'Chet', 'M', 'Kandal', 'Teacher', '013334455', 'chet.kim@yahoo.com'),
	('PT0003', 'UM', 'Phanny', 'M', 'Takeo', 'Teacher', '014332211', 'phanny.um@gmail.com'),
	('PT0004', 'YUNG', 'Chress', 'M', 'Kandal', 'Teacher', '017776633', 'chress.yung@yahoo.com'),
	('PT0005', 'YIM', 'Ros', 'M', 'Phnom Penh', 'Police', '019998877', 'ros.yim@gmail.com');
/*!40000 ALTER TABLE `tblparent` ENABLE KEYS */;


# Dumping structure for table test.tblprovinces
DROP TABLE IF EXISTS `tblprovinces`;
CREATE TABLE IF NOT EXISTS `tblprovinces` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_en_name` varchar(45) NOT NULL,
  `pro_kh_name` varchar(45) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

# Dumping data for table test.tblprovinces: ~24 rows (approximately)
/*!40000 ALTER TABLE `tblprovinces` DISABLE KEYS */;
INSERT INTO `tblprovinces` (`pro_id`, `pro_en_name`, `pro_kh_name`, `status`) VALUES
	(1, 'Phnom Penh', 'ភ្នំពេញ', ''),
	(2, 'Battambang', 'បាត់ដំបង', ''),
	(3, 'Banteay Meanchey', 'បន្ទាយមានជ័យ', ''),
	(4, 'Kampong Cham', 'កំពង់ចាម', ''),
	(5, 'Kampong Chhnang', 'កំពង់ឆ្នាំង', ''),
	(6, 'Kampong Speu', 'កំបង់ស្ពឺ', ''),
	(7, 'Kampong Thom', 'កំពង់ធំ', ''),
	(8, 'Kampot', 'កំពត', ''),
	(9, 'Kandal', 'កណ្តាល', ''),
	(10, 'Koh Kong', 'កោះកុង', ''),
	(11, 'Kratié', 'ក្រចេះ', ''),
	(12, 'Mondulkiri', 'មណ្ឌលគិរី', ''),
	(13, 'Oddar Meancheay', 'ឧត្តរមានជ័យ', ''),
	(14, 'Preah Vihear', 'ព្រះវិហារ', ''),
	(15, 'Pursat', 'ពោធិ៍សាត់', ''),
	(16, 'Prey Veng', 'ព្រៃវែង', ''),
	(17, 'Ratanakiri', 'រតនៈគិរី', ''),
	(18, 'Siem Reap', 'សៀមរាប', ''),
	(19, 'Stung Treng', 'ស្ទឹងត្រែង', ''),
	(20, 'Svay Rieng', 'ស្វាយរៀង', ''),
	(21, 'Takéo', 'តាកែវ', ''),
	(22, 'Kep', 'កែប', ''),
	(23, 'Pailin', 'ប៉ៃលិន', ''),
	(24, 'Preah Sihanouk', 'ព្រះសីហនុ', '');
/*!40000 ALTER TABLE `tblprovinces` ENABLE KEYS */;


# Dumping structure for table test.tblstudent
DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE IF NOT EXISTS `tblstudent` (
  `studentid` varchar(6) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `university` varchar(45) DEFAULT NULL,
  `teacherinchargeid` varchar(45) DEFAULT NULL,
  `parentinchargeid` varchar(45) DEFAULT NULL,
  `GPA` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table test.tblstudent: ~10 rows (approximately)
/*!40000 ALTER TABLE `tblstudent` DISABLE KEYS */;
INSERT INTO `tblstudent` (`studentid`, `firstname`, `lastname`, `sex`, `province`, `subject`, `phone`, `email`, `university`, `teacherinchargeid`, `parentinchargeid`, `GPA`) VALUES
	('ST0001', 'PEN', 'Oudom', 'M', 'Kamponcharm', 'C++', '012556699', 'oudom.pen@gmail.com', 'CMU', 'T0001', 'PT0001', 2),
	('ST0002', 'VAD', 'Oudom', 'M', 'Takeo', 'Java', '013556699', 'oudom.vad@yahoo.com', 'RUPP', NULL, 'PT0002', 3),
	('ST0003', 'SAM', 'Vuthy', 'M', 'Preyvieng', 'ASP.NET', '014556699', 'vuthy.sam@gmail.com', 'CMU', 'T0001', 'PT0001', 3),
	('ST0004', 'UM', 'Borey', 'M', 'Kandal', 'C++', '012556699', 'borey.um@yahoo.com', 'PNC', 'T0009', 'PT0005', 2),
	('ST0005', 'SEN', 'Sreyleak', 'F', 'Phnom Penh', 'Java', '019556699', 'sreyleak.seng@yahoo.com', 'RUPP', NULL, 'PT0004', 3),
	('ST0006', 'SAN', 'Thida', 'F', 'Kep', 'C++', '020556699', 'thida.san@gmail.com', 'PNC', NULL, 'PT0004', 2),
	('ST0007', 'HENG', 'Sopheak', 'M', 'Kampot', 'C#', '013557799', 'sopheak.heng@gmail.com', 'RUPP', 'T0005', 'PT0005', 1),
	('ST0008', 'HOUR', 'Bunthoeun', 'M', 'Phnom Penh', 'VB.NET', '012556688', 'bunthoeun.hour@yahoo.com', 'CMU', 'T0005', 'PT0002', 1),
	('ST0009', 'CHHAY', 'Vicheka', 'F', 'Kandal', 'Java', '014886699', 'vicheka.chhay@gmail.com', 'PNC', 'T0007', 'PT0002', 3),
	('ST0010', 'CHAN', 'Sreymom', 'F', 'Phnom Penh', 'C#', '017668899', 'sreymom.chan@yahoo.com', 'PNC', 'T0008', 'PT0001', 3);
/*!40000 ALTER TABLE `tblstudent` ENABLE KEYS */;


# Dumping structure for table test.tblteacher
DROP TABLE IF EXISTS `tblteacher`;
CREATE TABLE IF NOT EXISTS `tblteacher` (
  `teacherid` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `teachingsubject` varchar(45) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `departmentid` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table test.tblteacher: ~10 rows (approximately)
/*!40000 ALTER TABLE `tblteacher` DISABLE KEYS */;
INSERT INTO `tblteacher` (`teacherid`, `firstname`, `lastname`, `sex`, `province`, `teachingsubject`, `phone`, `email`, `departmentid`) VALUES
	('T0001', 'HENG', 'Vongkol', 'M', 'Kep', 'C Programming', '017622288', 'hengvongkol@gmail.com', 'DP06'),
	('T0002', 'VEN', 'Chanthy', 'M', 'Posat', 'HTML/CSS', '097998875', 'chanthy.ven@gmail.com', 'DP03'),
	('T0003', 'Ou', 'Sophea', 'M', 'Kandal', 'BL', '012997755', 'sophea.ou@yahoo.com', NULL),
	('T0004', 'DIM', 'Bunthoeun', 'M', 'Phnom Penh', 'CCNA', '012889977', 'bunthoeun.dim@gmail.com', 'DP02'),
	('T0005', 'CHEA', 'Ly', 'M', 'Phnom Penh', 'Linux', '016998822', 'ly.chea@gmail.com', NULL),
	('T0006', 'PEN', 'Vannak', 'M', 'Posat', 'PHP', '019998877', 'vannak.pen@yahoo.com', 'DP03'),
	('T0007', 'CHHAY', 'Vandyrichat', 'M', 'Posat', 'CI', '018994466', 'richart.chhay@yahoo.com', 'DP03'),
	('T0008', 'CHOEUN', 'Sochy', 'M', 'Phnom Penh', 'Java', '031998877', 'sochy.choeun@gmail.com', 'DP06'),
	('T0009', 'VENG', 'Richeang', 'M', 'Phnom Penh', 'CCNP', '055998877', 'richean.veng@gmail.com', 'DP02'),
	('T0010', 'DIM', 'Visouth', 'M', 'Phnom Penh', 'EN', '011998877', 'visouth.dim@yahoo.com', 'DP01');
/*!40000 ALTER TABLE `tblteacher` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
