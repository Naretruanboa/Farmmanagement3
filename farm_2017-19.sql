-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.5-10.0.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for farm2017
CREATE DATABASE IF NOT EXISTS `farm2017` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `farm2017`;


-- Dumping structure for table farm2017.alert
CREATE TABLE IF NOT EXISTS `alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cattle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `datealert` date DEFAULT NULL,
  `timealert` time DEFAULT NULL,
  `dayinput` date DEFAULT NULL,
  `timeinput` time DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `status_alert_id` int(11) DEFAULT NULL,
  `type_alert_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `status_alert_id` (`status_alert_id`),
  KEY `fk_alert_type_alert1` (`type_alert_id`),
  KEY `cattle_id` (`cattle_id`),
  CONSTRAINT `fk_alert_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alert_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alert_status_alert1` FOREIGN KEY (`status_alert_id`) REFERENCES `status_alert` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alert_type_alert1` FOREIGN KEY (`type_alert_id`) REFERENCES `type_alert` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.alert: ~77 rows (approximately)
DELETE FROM `alert`;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
INSERT INTO `alert` (`id`, `cattle`, `note`, `datealert`, `timealert`, `dayinput`, `timeinput`, `member_id`, `cattle_id`, `status_alert_id`, `type_alert_id`) VALUES
	(1, 'C-111', '', '2017-01-10', '23:00:00', '2016-12-06', '15:20:13', 18, 1, 2, 2),
	(2, 'C-111', '����ѹ������Դ', '2016-12-24', '23:58:00', '2016-12-06', '15:20:42', 18, NULL, 2, 1),
	(3, 'C-111', '', '2017-01-03', '00:04:00', '2016-12-06', '15:21:47', 18, 1, 2, 2),
	(4, 'C-111', '', '2017-09-16', '01:00:00', '2016-12-06', '15:22:01', 18, 1, 2, 3),
	(5, 'C-111', NULL, '2017-02-06', '17:47:34', '2016-12-06', '17:47:34', 18, NULL, 2, 5),
	(6, '1/2559', NULL, '2017-02-06', '17:47:34', '2016-12-06', '17:47:34', 18, NULL, 2, 6),
	(7, '1/2559', NULL, '2017-06-06', '17:47:34', '2016-12-06', '17:47:34', 18, NULL, 2, 7),
	(8, '1/2559', NULL, '2017-08-05', '17:47:34', '2016-12-06', '17:47:34', 18, NULL, 2, 8),
	(9, '1/2559', NULL, '2017-12-08', '17:47:34', '2016-12-06', '17:47:34', 18, NULL, 2, 9),
	(10, '2/2559', NULL, '2017-02-06', '17:47:34', '2016-12-06', '17:47:34', NULL, NULL, 1, 6),
	(11, '2/2559', NULL, '2017-06-06', '17:47:34', '2016-12-06', '17:47:34', NULL, NULL, 1, 7),
	(12, '2/2559', NULL, '2017-08-05', '17:47:34', '2016-12-06', '17:47:34', NULL, NULL, 1, 8),
	(13, '2/2559', NULL, '2017-12-08', '17:47:34', '2016-12-06', '17:47:34', NULL, NULL, 1, 9),
	(14, 'C-111', 'GNRH(2.5cc)', '2017-01-01', '19:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 12),
	(15, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-06', '17:59:23', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(16, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-06', '17:59:23', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(17, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-06', '17:59:23', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(18, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-13', '17:59:23', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(19, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-13', '15:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(20, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-15', '15:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(21, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-15', '15:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(22, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-16', '15:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(23, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-18', '19:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(24, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-18', '18:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(25, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2016-12-18', '06:00:00', '2016-12-06', '17:59:23', 18, NULL, 1, 11),
	(26, 'C-111', '', '2017-01-04', '23:01:00', '2016-12-07', '13:35:40', 18, 1, 2, 2),
	(27, 'C-111', '', '2017-09-16', '01:01:00', '2016-12-07', '13:35:59', 18, 1, 2, 3),
	(28, 'C-111', NULL, '2017-02-06', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 5),
	(29, '3/2559', NULL, '2017-02-06', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 6),
	(30, '3/2559', NULL, '2017-06-06', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 7),
	(31, '3/2559', NULL, '2017-08-05', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 8),
	(32, '3/2559', NULL, '2017-12-08', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 9),
	(33, '3/2559', NULL, '2017-02-06', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 6),
	(34, '3/2559', NULL, '2017-06-06', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 7),
	(35, '3/2559', NULL, '2017-08-05', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 8),
	(36, '3/2559', NULL, '2017-12-08', '13:36:39', '2016-12-07', '13:36:39', 18, NULL, 2, 9),
	(37, 'C-111', 'GNRH(2.5cc)', '2018-01-25', '19:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 12),
	(38, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2017-12-30', '22:55:37', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(39, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2017-12-30', '22:55:37', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(40, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2017-12-30', '22:55:37', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(41, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-06', '22:55:37', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(42, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-06', '15:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(43, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-08', '15:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(44, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-08', '15:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(45, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-09', '15:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(46, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-11', '19:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(47, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-11', '18:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(48, 'C-111', 'เหนี่ยวนำการกลับสัตว์', '2018-01-11', '06:00:00', '2017-12-30', '22:55:37', 18, NULL, 1, 11),
	(49, 'C-111', NULL, '2017-12-10', '12:00:00', '2017-12-31', '03:12:28', 18, 1, 2, 13),
	(50, 'C-111', NULL, '2017-12-10', '12:00:00', '2017-12-31', '03:12:38', 18, 1, 2, 13),
	(51, 'C-111', '', '2018-01-30', '01:59:00', '2018-01-02', '04:47:34', 18, 1, 1, 2),
	(52, 'C-111', '', '2018-01-30', '01:59:00', '2018-01-02', '04:47:35', 18, 1, 1, 2),
	(53, 'C-111', '', '2018-01-30', '01:59:00', '2018-01-02', '04:47:36', 18, 1, 1, 2),
	(54, 'C-111', '', '2018-10-21', '23:00:00', '2018-01-11', '16:00:06', 18, 1, 2, 3),
	(55, 'C-111', '', '2018-10-21', '23:00:00', '2018-01-11', '16:00:08', 18, 1, 2, 3),
	(56, 'C-111', '', '2018-10-12', '23:00:00', '2018-01-11', '16:00:58', 18, 1, 2, 3),
	(57, 'C-111', '', '2018-11-09', '23:00:00', '2018-01-11', '16:01:30', 18, 1, 2, 3),
	(58, 'C-111', NULL, '2018-03-15', '23:43:37', '2018-01-14', '23:43:37', NULL, NULL, 1, 5),
	(59, '1/2561', NULL, '2018-03-15', '23:43:37', '2018-01-14', '23:43:37', NULL, NULL, 1, 6),
	(60, '1/2561', NULL, '2018-07-13', '23:43:37', '2018-01-14', '23:43:37', NULL, NULL, 1, 7),
	(61, '1/2561', NULL, '2018-09-11', '23:43:37', '2018-01-14', '23:43:37', NULL, NULL, 1, 8),
	(62, '1/2561', NULL, '2019-01-14', '23:43:37', '2018-01-14', '23:43:37', NULL, NULL, 1, 9),
	(63, 'C-111', NULL, '2018-01-16', '01:59:00', '2018-01-15', '17:53:18', 18, 1, 1, 13),
	(64, 'C-2321', NULL, '2018-04-05', '23:30:36', '2018-02-01', '23:30:36', NULL, NULL, 1, 5),
	(65, '4/2561', NULL, '2018-04-05', '23:30:36', '2018-02-01', '23:30:36', 18, NULL, 2, 6),
	(66, '4/2561', NULL, '2018-08-03', '23:30:36', '2018-02-01', '23:30:36', 18, NULL, 2, 7),
	(67, '4/2561', NULL, '2018-10-02', '23:30:36', '2018-02-01', '23:30:36', 18, NULL, 2, 8),
	(68, '4/2561', NULL, '2019-02-04', '23:30:36', '2018-02-01', '23:30:36', 18, NULL, 2, 9),
	(69, 'C-444', NULL, '2018-04-02', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 5),
	(70, '5/2561', NULL, '2018-04-02', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 6),
	(71, '5/2561', NULL, '2018-07-31', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 7),
	(72, '5/2561', NULL, '2018-09-29', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 8),
	(73, '5/2561', NULL, '2019-02-01', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 9),
	(74, '6/2561', NULL, '2018-04-02', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 6),
	(75, '6/2561', NULL, '2018-07-31', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 7),
	(76, '6/2561', NULL, '2018-09-29', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 8),
	(77, '6/2561', NULL, '2019-02-01', '23:32:48', '2018-02-01', '23:32:48', NULL, NULL, 1, 9);
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;


-- Dumping structure for table farm2017.alert_storehouse
CREATE TABLE IF NOT EXISTS `alert_storehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_medicine` int(11) DEFAULT '0' COMMENT 'แจ้งเตือนยอดคงคลังเมื่อจำนวนต่ำกว่ากำหนด',
  `stock_raw` int(11) DEFAULT '0',
  `stock_tool` int(11) DEFAULT '0',
  `stock_semen` int(11) DEFAULT '0',
  `exp_medicine` int(11) DEFAULT '0' COMMENT 'แจ้งเตือนก่อนวันหมดอายุกี่วัน',
  `exp_raw` int(11) DEFAULT '0',
  `exp_bucket` int(11) DEFAULT '0' COMMENT 'ก่อนวันที่ไนโตรเจนเหลวต่ำกว่ากำหนดกี่วัน',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.alert_storehouse: ~0 rows (approximately)
DELETE FROM `alert_storehouse`;
/*!40000 ALTER TABLE `alert_storehouse` DISABLE KEYS */;
INSERT INTO `alert_storehouse` (`id`, `stock_medicine`, `stock_raw`, `stock_tool`, `stock_semen`, `exp_medicine`, `exp_raw`, `exp_bucket`) VALUES
	(1, 10, 20, 10, 10, 20, 20, 30);
/*!40000 ALTER TABLE `alert_storehouse` ENABLE KEYS */;


-- Dumping structure for table farm2017.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idbill` int(11) DEFAULT NULL,
  `day` datetime DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `status_bill_id` int(11) NOT NULL,
  `type_bill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_member1_idx` (`member_id`),
  KEY `fk_bill_status_bill1_idx` (`status_bill_id`),
  KEY `fk_bill_type_bill1_idx` (`type_bill_id`),
  CONSTRAINT `fk_bill_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bill_status_bill1` FOREIGN KEY (`status_bill_id`) REFERENCES `status_bill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bill_type_bill1` FOREIGN KEY (`type_bill_id`) REFERENCES `type_bill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.bill: ~0 rows (approximately)
DELETE FROM `bill`;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;


-- Dumping structure for table farm2017.breed
CREATE TABLE IF NOT EXISTS `breed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.breed: ~7 rows (approximately)
DELETE FROM `breed`;
/*!40000 ALTER TABLE `breed` DISABLE KEYS */;
INSERT INTO `breed` (`id`, `value`) VALUES
	(9, 'กำแพงแสน'),
	(7, 'ชาร์โรเล่ส์'),
	(8, 'ซิมเมนทัล'),
	(2, 'บราห์มัน'),
	(6, 'บีฟมาสเตอร์'),
	(1, 'เฮียร์ฟอร์ด'),
	(3, 'แองกัส');
/*!40000 ALTER TABLE `breed` ENABLE KEYS */;


-- Dumping structure for table farm2017.breeding
CREATE TABLE IF NOT EXISTS `breeding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cattlema_id` int(11) DEFAULT NULL,
  `cattlefa_id` int(11) DEFAULT NULL,
  `semen_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `count_breed_id` int(11) DEFAULT NULL,
  `amount` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `note` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `status_cattle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'สถานะโค',
  PRIMARY KEY (`id`),
  KEY `cattlema_id` (`cattlema_id`),
  KEY `cattlefa_id` (`cattlefa_id`),
  KEY `semen_id` (`semen_id`),
  KEY `member_id` (`member_id`),
  KEY `count_breed_id` (`count_breed_id`),
  CONSTRAINT `fk_breeding_cattlefa1` FOREIGN KEY (`cattlefa_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_breeding_cattlema1` FOREIGN KEY (`cattlema_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_breeding_count_breed1` FOREIGN KEY (`count_breed_id`) REFERENCES `count_breed` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_breeding_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_breeding_semen1` FOREIGN KEY (`semen_id`) REFERENCES `semen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.breeding: ~7 rows (approximately)
DELETE FROM `breeding`;
/*!40000 ALTER TABLE `breeding` DISABLE KEYS */;
INSERT INTO `breeding` (`id`, `cattlema_id`, `cattlefa_id`, `semen_id`, `member_id`, `count_breed_id`, `amount`, `date`, `time`, `note`, `status_cattle`) VALUES
	(1, 1, 8, 122, 18, 1, '1/2560', '2017-12-30', '21:31:18', 'fghfj', NULL),
	(2, 9, 1, 122, 18, 1, '2/2560', '2017-12-30', '21:31:19', 'fjfhk', NULL),
	(3, 2, 9, 120, 18, 1, '3/2560', '2017-11-30', '21:31:21', 'asdafh', NULL),
	(4, 4, 2, NULL, 18, 1, '4/2560', '2017-12-14', '13:59:00', 'asdasfa', NULL),
	(5, 1, 2, NULL, 18, NULL, NULL, '2018-01-02', '01:59:00', '', NULL),
	(6, 1, 2, NULL, 18, NULL, NULL, '2018-01-02', '01:59:00', '', NULL),
	(7, 1, 2, NULL, 18, NULL, NULL, '2018-01-02', '01:59:00', '', NULL);
/*!40000 ALTER TABLE `breeding` ENABLE KEYS */;


-- Dumping structure for table farm2017.bucket
CREATE TABLE IF NOT EXISTS `bucket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `number` varchar(50) CHARACTER SET utf8 DEFAULT '0' COMMENT 'รหัสถัง',
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ชื่อถัง',
  `brand` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ยี่ห้อ',
  `size` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ขนาดถัง',
  `weightnull` float DEFAULT NULL COMMENT 'น้ำหนักถังเปล่า',
  `weightfull` float DEFAULT NULL COMMENT 'น้ำหนักเต็มถัง',
  `dia_partition` float DEFAULT NULL COMMENT 'เส้นผ่านศูนย์กลางฝาถัง',
  `dia_body` float DEFAULT NULL COMMENT 'เส้นผ่านศุนย์กลางตัวถัง',
  `height_body` float DEFAULT NULL COMMENT 'ความสูงของถัง',
  `ratio_nitrogen` float DEFAULT NULL COMMENT 'อัตราการสูญเสียไนโตรเจน/วัน',
  `period_nitrogen` int(11) DEFAULT NULL COMMENT 'ระยะเวลาในการรักษาไนโตรเจนเมื่อเติมเต็มถัง นับเป็นวัน',
  `goblet` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ระดับของgolet',
  `dia_canister` float DEFAULT NULL COMMENT 'เส้นผ่านศูนย์กลางcanister',
  `height_canister` float DEFAULT NULL COMMENT 'ความสูง canister',
  `quantity_canister` int(11) DEFAULT NULL COMMENT 'จำนวน canister',
  `contain_per_c` float DEFAULT NULL COMMENT 'ขนาดบรรจุหลอดน้ำเชื้อ/canister',
  `day_in_n` date DEFAULT NULL COMMENT 'วันที่เติมไนโตรเจนเหลวครั้งสุดท้าย',
  `day_exp_n` date DEFAULT NULL COMMENT 'วันที่ควรเติมไนโตรเจนเหลวครั้งใหม่',
  `day_import` datetime DEFAULT NULL COMMENT 'วันที่นำเข้า',
  `import_bucket` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'นำเข้าจาก',
  `place` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สถานที่เก็บ',
  `statusalert` int(11) NOT NULL DEFAULT '0',
  `type_bucket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_bucket_id` (`type_bucket_id`),
  CONSTRAINT `fk_bucket_type_bucket1` FOREIGN KEY (`type_bucket_id`) REFERENCES `type_bucket` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.bucket: ~2 rows (approximately)
DELETE FROM `bucket`;
/*!40000 ALTER TABLE `bucket` DISABLE KEYS */;
INSERT INTO `bucket` (`id`, `code`, `number`, `name`, `brand`, `size`, `weightnull`, `weightfull`, `dia_partition`, `dia_body`, `height_body`, `ratio_nitrogen`, `period_nitrogen`, `goblet`, `dia_canister`, `height_canister`, `quantity_canister`, `contain_per_c`, `day_in_n`, `day_exp_n`, `day_import`, `import_bucket`, `place`, `statusalert`, `type_bucket_id`) VALUES
	(2, NULL, 'ถังที่ 1', 'ถังเก็บน้ำเชื้อพ่อพันธุ์ราคาถูก', 'จีนแดง', '2', 3, 1, 30, 178, 395, 1, 30, NULL, 16, 120, 3, NULL, '2016-06-22', '2016-07-03', '2016-04-20 00:00:00', 'ร้านเฮียปอ', 'ห้องเก็บวัสดุอุปกรณ์', 0, 2),
	(3, NULL, 'ถังที่ 2', '  ถังเก็บน้ำเชื้อโคราคาแพง', 'จีน', '25', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2016-10-03', '2016-11-06', '2016-04-19 00:00:00', '-', 'ห้องเก็บวัสดุอุปกรณ์', 0, 1);
/*!40000 ALTER TABLE `bucket` ENABLE KEYS */;


-- Dumping structure for table farm2017.cable_disease
CREATE TABLE IF NOT EXISTS `cable_disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cable_disease: ~2 rows (approximately)
DELETE FROM `cable_disease`;
/*!40000 ALTER TABLE `cable_disease` DISABLE KEYS */;
INSERT INTO `cable_disease` (`id`, `value`) VALUES
	(1, 'โรคติดต่อ'),
	(2, 'โรคไม่ติดต่อ');
/*!40000 ALTER TABLE `cable_disease` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle
CREATE TABLE IF NOT EXISTS `cattle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `num_ear` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `num_date` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `teeth` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `age_wean` int(11) DEFAULT NULL,
  `age_horn_detering` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `weight` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `weight_birth` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `weight_wean` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `weight_year` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calved` date DEFAULT NULL,
  `ma_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `fa_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `farm` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `farmt_id` int(11) DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_start` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_end` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `register_num` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breeder` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `type_cattle_id` int(11) DEFAULT NULL,
  `group_cattle_id` int(11) DEFAULT NULL,
  `status_cattle_id` int(11) DEFAULT NULL,
  `stall_id` int(11) DEFAULT NULL,
  `breed_id` int(11) DEFAULT NULL,
  `dairy_id` int(11) DEFAULT NULL,
  `status_born_id` int(11) DEFAULT NULL,
  `status_treat_id` int(11) DEFAULT NULL,
  `sex_id` int(11) DEFAULT NULL,
  `Type_nutrient_id` int(11) DEFAULT NULL COMMENT 'ของก๊อต',
  `status_cow_id` int(11) DEFAULT NULL,
  `alert1` date DEFAULT NULL,
  `alert2` date DEFAULT NULL,
  `alert3` date DEFAULT NULL,
  `alert4` date DEFAULT NULL,
  `pedigree_id` int(11) DEFAULT NULL,
  `type_class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `color_id` (`color_id`),
  KEY `type_cattle_id` (`type_cattle_id`),
  KEY `group_cattle_id` (`group_cattle_id`),
  KEY `status_cattle_id` (`status_cattle_id`),
  KEY `stall_id` (`stall_id`),
  KEY `status_breed_id` (`breed_id`),
  KEY `status_born_id` (`status_born_id`),
  KEY `status_treat_id` (`status_treat_id`),
  KEY `sex_id` (`sex_id`),
  KEY `Type_nutrient_id` (`Type_nutrient_id`),
  KEY `fk_pedigree_id` (`pedigree_id`),
  KEY `fk_type_class_id` (`type_class_id`),
  KEY `dairt_id` (`dairy_id`),
  KEY `fk_farmt_id` (`farmt_id`),
  KEY `status_type_cow_id` (`status_cow_id`),
  CONSTRAINT `fk_status_type_cow_id` FOREIGN KEY (`status_cow_id`) REFERENCES `status_cow` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_breed1` FOREIGN KEY (`breed_id`) REFERENCES `breed` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_color1` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_group_cattle1` FOREIGN KEY (`group_cattle_id`) REFERENCES `group_cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_sex1` FOREIGN KEY (`sex_id`) REFERENCES `sex` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_stall1` FOREIGN KEY (`stall_id`) REFERENCES `stall` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_status_born1` FOREIGN KEY (`status_born_id`) REFERENCES `status_born` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_status_cattle1` FOREIGN KEY (`status_cattle_id`) REFERENCES `status_cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_status_treat1` FOREIGN KEY (`status_treat_id`) REFERENCES `status_treat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_type_cattle1` FOREIGN KEY (`type_cattle_id`) REFERENCES `type_cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_type_nutrient1` FOREIGN KEY (`Type_nutrient_id`) REFERENCES `type_nutrient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_dairy_id` FOREIGN KEY (`dairy_id`) REFERENCES `type_dairy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_farmt_id` FOREIGN KEY (`farmt_id`) REFERENCES `farm` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedigree_id` FOREIGN KEY (`pedigree_id`) REFERENCES `cattle_pedigree` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_type_class_id` FOREIGN KEY (`type_class_id`) REFERENCES `class_cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle: ~14 rows (approximately)
DELETE FROM `cattle`;
/*!40000 ALTER TABLE `cattle` DISABLE KEYS */;
INSERT INTO `cattle` (`id`, `num`, `num_ear`, `num_date`, `name`, `teeth`, `age`, `age_wean`, `age_horn_detering`, `weight`, `weight_birth`, `weight_wean`, `weight_year`, `calved`, `ma_id`, `fa_id`, `farm`, `farmt_id`, `price`, `price_start`, `price_end`, `register_num`, `owner`, `breeder`, `image`, `color_id`, `type_cattle_id`, `group_cattle_id`, `status_cattle_id`, `stall_id`, `breed_id`, `dairy_id`, `status_born_id`, `status_treat_id`, `sex_id`, `Type_nutrient_id`, `status_cow_id`, `alert1`, `alert2`, `alert3`, `alert4`, `pedigree_id`, `type_class_id`) VALUES
	(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
	(2, 'C-2321', '1232', '2/2561', 'บัคกี้', 4, 1, 1, '1', '200', '56', '100', '450', '2018-01-28', 'C-112', 'C-1223', 'ไทยเสรี', 1, '1', '1', '1', '1', '1', '1', '1', 5, 1, 9, 2, 1, 1, 1, 1, 1, 2, NULL, NULL, '2018-01-31', '2018-01-31', '2018-01-31', '2018-01-31', 2, 4),
	(4, 'C-333', NULL, '1/2559', 'สามซ่า', NULL, NULL, NULL, NULL, '350', '70', '220', NULL, '2016-12-08', 'C-111', 'C-222', 'ไทยเสรี', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 8, 2, 6, 7, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2),
	(5, 'C-332', ' ', '2/2559', 'ฮาจริง', 0, 1, 0, NULL, NULL, '58', NULL, NULL, '2016-12-08', 'C-111', 'C-222', 'ไทยเสรี', 1, '50000000', NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 8, 2, 5, 6, NULL, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5),
	(6, ' C-2324', NULL, '3/2559', '3/2559', NULL, NULL, NULL, NULL, '', '75', '', NULL, '2016-12-08', 'C-111', 'C-222', 'ไทยเสรี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 8, NULL, 5, 7, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(7, 'C-999', ' ', '3/2559', '3/2559', 0, 0, 0, '๏ฟฝูญ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ', '80', '60', '400', NULL, '2016-12-08', 'C-111', 'C-222', 'ไทยเสรี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 9, 2, 6, 1, NULL, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
	(8, 'C-444', '345345', '1/2560', 'สา', 4, 1, 1, '11', '300', '150', '100', '1', '2017-12-28', 'C-222', 'C-2322', 'ไทยเสรี', 1, '1', '1', '1', '1', '1', '1', '1', 5, 1, 9, 2, 1, 1, 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 2, 5),
	(9, 'C-1234', '3567', '5.122', 'FDSD', 0, NULL, NULL, NULL, '2', '1', '3', NULL, '2018-01-06', 'C-1122', 'C-1223', 'ไทยเสรี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 2, 6, 1, 2, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5),
	(10, 'C-1332', NULL, '8/2561', 'Addfres', 0, NULL, NULL, NULL, '2', '1', '3', NULL, '2018-01-02', 'C-112', 'C-111', 'ไทยเสรี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 7, 2, 1, 1, NULL, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3),
	(11, 'C-322', NULL, '1/2561', 'dere', NULL, NULL, NULL, NULL, '300', '340', '400', NULL, '2018-01-04', 'C-1234', 'C-111', 'ไทยเสรี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 1, 2, 5, 2, NULL, 1, 1, 2, NULL, NULL, '2018-01-04', NULL, NULL, NULL, 1, 5),
	(12, 'C-225', NULL, '1/2561', 'สายชู', NULL, NULL, NULL, NULL, '60', '50', '', NULL, '2018-01-14', 'C-111', 'C-222', 'ไทยเสรี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 8, NULL, 1, 8, NULL, 1, 1, 1, NULL, 2, '2018-02-01', '2018-02-01', '2018-02-01', '2018-02-01', NULL, 1),
	(13, 'C-889', ' ', '4/2561', 'บัดดี้', 0, 0, 0, '๏ฟฝูญ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ', '500', '12', '400', NULL, '2018-02-04', 'C-2321', 'C-1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 9, 2, NULL, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, ' ', ' ', '5/2561', 'อีหนี่ง', 0, 1, 0, NULL, NULL, '14', NULL, NULL, '2018-02-01', 'C-444', 'C-1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 8, 1, NULL, 9, NULL, 2, 1, 1, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, ' ', ' ', '6/2561', 'อีสอง', 0, 1, 0, NULL, NULL, '15', NULL, NULL, '2018-02-01', 'C-444', 'C-1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, 8, 1, NULL, 6, NULL, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `cattle` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_detail
CREATE TABLE IF NOT EXISTS `cattle_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `WpD` float DEFAULT NULL,
  `Pregnant` float DEFAULT NULL,
  `Lactation` int(11) DEFAULT NULL,
  `LactationPerDays` float DEFAULT NULL,
  `Fat_milk` float DEFAULT NULL,
  `Unit_bond` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Type_eating` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Strain` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Unit_energy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Stage_walk` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Price_milk` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Score_body` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Formula_record_id` int(11) DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Formula_record_id` (`Formula_record_id`),
  KEY `cattle_id` (`cattle_id`),
  CONSTRAINT `fk_cattle_detail_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_detail_formula_record1` FOREIGN KEY (`Formula_record_id`) REFERENCES `formula_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_detail: ~0 rows (approximately)
DELETE FROM `cattle_detail`;
/*!40000 ALTER TABLE `cattle_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cattle_detail` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_fatten
CREATE TABLE IF NOT EXISTS `cattle_fatten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `lot` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gene` varchar(50) CHARACTER SET utf8 NOT NULL,
  `weight` float DEFAULT '0',
  `start_price` float DEFAULT '0',
  `end_price` float DEFAULT '0',
  `total_percen` float DEFAULT NULL,
  `total_excise` float DEFAULT NULL,
  `cattle_status` int(11) NOT NULL DEFAULT '0',
  `commen` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bidder` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_cattle_fatten_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_fatten: ~0 rows (approximately)
DELETE FROM `cattle_fatten`;
/*!40000 ALTER TABLE `cattle_fatten` DISABLE KEYS */;
INSERT INTO `cattle_fatten` (`id`, `quantity`, `lot`, `gene`, `weight`, `start_price`, `end_price`, `total_percen`, `total_excise`, `cattle_status`, `commen`, `pic`, `bidder`, `member_id`) VALUES
	(14, 3, '3', 'วากิว', 3333, 0, 0, NULL, NULL, 1, '-', '14-pic.jpg', NULL, 18);
/*!40000 ALTER TABLE `cattle_fatten` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_nutrient
CREATE TABLE IF NOT EXISTS `cattle_nutrient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `DM` float DEFAULT NULL,
  `NEm` float DEFAULT NULL,
  `NEg` float DEFAULT NULL,
  `Ca` float DEFAULT NULL,
  `P` float DEFAULT NULL,
  `MP` float DEFAULT NULL,
  `ME` float DEFAULT NULL,
  `Protein` float DEFAULT NULL,
  `TDN` float DEFAULT NULL,
  `NEL` float DEFAULT NULL,
  `NDF` float DEFAULT NULL,
  `ADF` float DEFAULT NULL,
  `UIP` float DEFAULT NULL,
  `DIP` float DEFAULT NULL,
  `VitA` float DEFAULT NULL,
  `VitE` float DEFAULT NULL,
  `NFC` float DEFAULT NULL,
  `NFCperDIP` float DEFAULT NULL,
  `NDF_roughage` float DEFAULT NULL,
  `Urea` float DEFAULT NULL,
  `CP` float DEFAULT NULL,
  `Costs_weight` float DEFAULT NULL,
  `Costs_food` float DEFAULT NULL,
  `Unit_nutrient_id` int(11) DEFAULT NULL,
  `Type_nutrient_id` int(11) DEFAULT NULL,
  `Formula_record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Unit_nutrient_id` (`Unit_nutrient_id`),
  KEY `Type_nutrient_id` (`Type_nutrient_id`),
  KEY `Formula_record_id` (`Formula_record_id`),
  CONSTRAINT `fk_cattle_nutrient_formula_record1` FOREIGN KEY (`Formula_record_id`) REFERENCES `formula_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_nutrient_Type_nutrient1` FOREIGN KEY (`Type_nutrient_id`) REFERENCES `type_nutrient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_nutrient_Unit_nutrient1` FOREIGN KEY (`Unit_nutrient_id`) REFERENCES `unit_nutrient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_nutrient: ~0 rows (approximately)
DELETE FROM `cattle_nutrient`;
/*!40000 ALTER TABLE `cattle_nutrient` DISABLE KEYS */;
/*!40000 ALTER TABLE `cattle_nutrient` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_pedigree
CREATE TABLE IF NOT EXISTS `cattle_pedigree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cattle_id` int(11) DEFAULT NULL,
  `bw_epd` varchar(10) DEFAULT NULL,
  `bw_ebv` varchar(10) DEFAULT NULL,
  `bw_acc` varchar(10) DEFAULT NULL,
  `ww_epd` varchar(10) DEFAULT NULL,
  `ww_acc` varchar(10) DEFAULT NULL,
  `yw_epd` varchar(10) DEFAULT NULL,
  `yw_acc` varchar(10) DEFAULT NULL,
  `milk_epd` varchar(10) DEFAULT NULL,
  `milk_acc` varchar(10) DEFAULT NULL,
  `tm_epd` varchar(10) DEFAULT NULL,
  `tm_acc` varchar(10) DEFAULT NULL,
  `sc_epd` varchar(10) DEFAULT NULL,
  `sc_acc` varchar(10) DEFAULT NULL,
  `fat_epd` varchar(10) DEFAULT NULL,
  `fat_acc` varchar(10) DEFAULT NULL,
  `rea_epd` varchar(10) DEFAULT NULL,
  `rea_acc` varchar(10) DEFAULT NULL,
  `imf_epd` varchar(10) DEFAULT NULL,
  `rump_epd` varchar(10) DEFAULT NULL,
  `rump_ebv` varchar(10) DEFAULT NULL,
  `rump_acc` varchar(10) DEFAULT NULL,
  `milk_dairy` varchar(10) DEFAULT NULL,
  `fat_dairy` varchar(10) DEFAULT NULL,
  `tenderness` varchar(10) DEFAULT NULL,
  `docility` varchar(10) DEFAULT NULL,
  `ma` varchar(10) DEFAULT NULL,
  `breast_front` varchar(10) DEFAULT NULL,
  `breast_back` varchar(10) DEFAULT NULL,
  `breast_back_height` varchar(10) DEFAULT NULL,
  `breast_back_width` varchar(10) DEFAULT NULL,
  `breast_depth` varchar(10) DEFAULT NULL,
  `lenth_nipple` varchar(10) DEFAULT NULL,
  `front_breast` varchar(10) DEFAULT NULL,
  `back_breast` varchar(10) DEFAULT NULL,
  `body` varchar(10) DEFAULT NULL,
  `body_depth` varchar(10) DEFAULT NULL,
  `stong` varchar(10) DEFAULT NULL,
  `hip_angle` varchar(10) DEFAULT NULL,
  `width_hips` varchar(10) DEFAULT NULL,
  `cur_back_legs` varchar(10) DEFAULT NULL,
  `straight_back_legs` varchar(10) DEFAULT NULL,
  `hoof_corner` varchar(10) DEFAULT NULL,
  `point_leg_hoof` varchar(10) DEFAULT NULL,
  `age_yield` varchar(10) DEFAULT NULL,
  `protein` varchar(10) DEFAULT NULL,
  `net_income` varchar(10) DEFAULT NULL,
  `birth_rate` varchar(10) DEFAULT NULL,
  `daughter_birth_rate` varchar(10) DEFAULT NULL,
  `first_death` varchar(10) DEFAULT NULL,
  `daughter_first_death` varchar(10) DEFAULT NULL,
  `daughter_pregnancy_rate` varchar(10) DEFAULT NULL,
  `somatic` varchar(10) DEFAULT NULL,
  `adg` varchar(10) DEFAULT NULL,
  `calving_ease_dir_ebv` varchar(10) DEFAULT NULL,
  `calving_ease_dir_acc` varchar(10) DEFAULT NULL,
  `calving_ease_dtrs_ebv` varchar(10) DEFAULT NULL,
  `calving_ease_dtrs_acc` varchar(10) DEFAULT NULL,
  `birthwt_ebv` varchar(10) DEFAULT NULL,
  `birthwt_acc` varchar(10) DEFAULT NULL,
  `gestation_length_ebv` varchar(10) DEFAULT NULL,
  `gestation_length_acc` varchar(10) DEFAULT NULL,
  `wt200day_ebv` varchar(10) DEFAULT NULL,
  `wt200day_acc` varchar(10) DEFAULT NULL,
  `wt400day_ebv` varchar(10) DEFAULT NULL,
  `wt400day_acc` varchar(10) DEFAULT NULL,
  `wt600day_ebv` varchar(10) DEFAULT NULL,
  `wt600day_acc` varchar(10) DEFAULT NULL,
  `mat_cow_ebv` varchar(10) DEFAULT NULL,
  `mat_cow_acc` varchar(10) DEFAULT NULL,
  `milk200day_ebv` varchar(10) DEFAULT NULL,
  `milk200day_acc` varchar(10) DEFAULT NULL,
  `scrotal_size_ebv` varchar(10) DEFAULT NULL,
  `scrotal_size_acc` varchar(10) DEFAULT NULL,
  `carcase_wt_ebv` varchar(10) DEFAULT NULL,
  `carcase_wt_acc` varchar(10) DEFAULT NULL,
  `eye_muscle_area_ebv` varchar(10) DEFAULT NULL,
  `eye_muscle_area_acc` varchar(10) DEFAULT NULL,
  `rib_fat_ebv` varchar(10) DEFAULT NULL,
  `rib_fat_acc` varchar(10) DEFAULT NULL,
  `retail_beef_yield_ebv` varchar(10) DEFAULT NULL,
  `retail_beef_yield_acc` varchar(10) DEFAULT NULL,
  `imf_ebv` varchar(10) DEFAULT NULL,
  `imf_acc` varchar(10) DEFAULT NULL,
  `date_report` varchar(50) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `number_ear` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cattle_id` (`cattle_id`),
  CONSTRAINT `fk_cattle_id` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='ใบพันธุ์ประวัติ';

-- Dumping data for table farm2017.cattle_pedigree: ~6 rows (approximately)
DELETE FROM `cattle_pedigree`;
/*!40000 ALTER TABLE `cattle_pedigree` DISABLE KEYS */;
INSERT INTO `cattle_pedigree` (`id`, `cattle_id`, `bw_epd`, `bw_ebv`, `bw_acc`, `ww_epd`, `ww_acc`, `yw_epd`, `yw_acc`, `milk_epd`, `milk_acc`, `tm_epd`, `tm_acc`, `sc_epd`, `sc_acc`, `fat_epd`, `fat_acc`, `rea_epd`, `rea_acc`, `imf_epd`, `rump_epd`, `rump_ebv`, `rump_acc`, `milk_dairy`, `fat_dairy`, `tenderness`, `docility`, `ma`, `breast_front`, `breast_back`, `breast_back_height`, `breast_back_width`, `breast_depth`, `lenth_nipple`, `front_breast`, `back_breast`, `body`, `body_depth`, `stong`, `hip_angle`, `width_hips`, `cur_back_legs`, `straight_back_legs`, `hoof_corner`, `point_leg_hoof`, `age_yield`, `protein`, `net_income`, `birth_rate`, `daughter_birth_rate`, `first_death`, `daughter_first_death`, `daughter_pregnancy_rate`, `somatic`, `adg`, `calving_ease_dir_ebv`, `calving_ease_dir_acc`, `calving_ease_dtrs_ebv`, `calving_ease_dtrs_acc`, `birthwt_ebv`, `birthwt_acc`, `gestation_length_ebv`, `gestation_length_acc`, `wt200day_ebv`, `wt200day_acc`, `wt400day_ebv`, `wt400day_acc`, `wt600day_ebv`, `wt600day_acc`, `mat_cow_ebv`, `mat_cow_acc`, `milk200day_ebv`, `milk200day_acc`, `scrotal_size_ebv`, `scrotal_size_acc`, `carcase_wt_ebv`, `carcase_wt_acc`, `eye_muscle_area_ebv`, `eye_muscle_area_acc`, `rib_fat_ebv`, `rib_fat_acc`, `retail_beef_yield_ebv`, `retail_beef_yield_acc`, `imf_ebv`, `imf_acc`, `date_report`, `picture`, `number_ear`) VALUES
	(1, 7, '', '2', '.28', '', '.50', NULL, NULL, NULL, '.60', NULL, '-', NULL, '.61', NULL, '.27', NULL, '.2', NULL, NULL, '2', '.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+4.4', '53%', '-2.4', '54%', '-0.5', '63%', '-', '-', '+11', '55%', '+27', '52%', '+33', '52%', '-', '-', '+2', '47%', '-', '-', '-', '-', '+2.1', '29%', '0.0', '31%', '+0.4', '30%', '+0.1', '26%', 'aasd', NULL, '1/2560'),
	(2, 6, '1.2', '3.1', '.80', '21', '.79', '24', '.74', '4', '.28', '15', '-', '0.5', '.58', '-.09', '.55', '0.4', '.54', '-0.2', '.02', '4.1', '.58', '2', '1', '4', '1', '2', '2', '2', '1', '1', '3', '2', '1', '2', '3', '1', '1', '1', '2', '1', '1', '1', '2', '3', '4', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '2', '3', '1', '1', '1', '1', '2', '2', '3', '1', '1', '2', '1', '2', '3', '1', '5', '5', '5', '1', '2', '1', '2', '1', '1', '.59', NULL, NULL, '2/2560'),
	(3, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '3', '4', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '4', '3', '2', '1', '3', '1', '10', '2', '1', '1', '1', '1', '1', '1', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 5, NULL, '1', '.90', NULL, '.29', NULL, '.76', NULL, '.23', NULL, '-', NULL, '.21', NULL, '.24', NULL, '.8', NULL, NULL, '2.1', '.60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+4', '23', '-1', '52', '-0.6', '61', '-', '-', '+13', '54', '+23', '56', '+20', '40', '-', '-', '+1', '43', '-', '-', '-', '-', '+4.1', '25', '0.0', '31', '+0.2', '23', '+0.2', '23', NULL, NULL, NULL),
	(5, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '3', NULL, '1', '5', '6', '7', '2', '6', '1', '6', '2', '5', '2', '6', '7', '9', '1', '2', '5', NULL, NULL, '', '2', '5', '7', '8', '1', '5', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `cattle_pedigree` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_show
CREATE TABLE IF NOT EXISTS `cattle_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gene` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cattle_status` int(11) NOT NULL,
  `commen` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `father` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mother` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `deverloper` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pedegree` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_cattle_show_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_show: ~0 rows (approximately)
DELETE FROM `cattle_show`;
/*!40000 ALTER TABLE `cattle_show` DISABLE KEYS */;
INSERT INTO `cattle_show` (`id`, `name`, `birthday`, `sex`, `gene`, `cattle_status`, `commen`, `father`, `mother`, `deverloper`, `pic`, `pedegree`, `member_id`) VALUES
	(116, 'fsds', '2016-09-06', 'male', 'วากิว', 1, '-', 'dsfdsf', 'dsfdsf', 'dsfdsf', 'fsds-pic.jpg', 'fsds-pidegree.jpg', 18);
/*!40000 ALTER TABLE `cattle_show` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_stamp
CREATE TABLE IF NOT EXISTS `cattle_stamp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stamp_number` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `short_country` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `number_country` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `short_international` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `number_international` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `performer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ผู้ปฏิบัติ',
  `note` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cattle_id` (`cattle_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_cattle_stamp_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_stamp_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_stamp: ~4 rows (approximately)
DELETE FROM `cattle_stamp`;
/*!40000 ALTER TABLE `cattle_stamp` DISABLE KEYS */;
INSERT INTO `cattle_stamp` (`id`, `stamp_number`, `short_country`, `number_country`, `short_international`, `number_international`, `date`, `performer`, `note`, `cattle_id`, `member_id`) VALUES
	(1, 'C-333', NULL, NULL, NULL, NULL, '2016-12-16', NULL, '', 4, 18),
	(2, 'C-2321', NULL, NULL, NULL, NULL, '2018-02-01', NULL, NULL, 2, 18),
	(3, 'C-999', NULL, NULL, NULL, NULL, '2018-02-23', NULL, '', 7, 18),
	(4, 'C-889', NULL, NULL, NULL, NULL, '2018-02-07', NULL, '', 13, 18);
/*!40000 ALTER TABLE `cattle_stamp` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_strain
CREATE TABLE IF NOT EXISTS `cattle_strain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `private_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gene` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pedigree` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `lot` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bidder` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weight_birth` float DEFAULT NULL,
  `weight_wean` float DEFAULT NULL,
  `weight_year` float DEFAULT NULL,
  `strain_start_price` float DEFAULT NULL,
  `strain_end_price` float DEFAULT NULL,
  `strain_percen` float DEFAULT NULL,
  `strain_excise` float DEFAULT NULL,
  `father` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mother` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `grandfather` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `grandmother` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dad_grandfather` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dad_grandmother` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mom_grandfather` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mom_grandmother` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `grandpa` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gramdma` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mom_grandpa` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mom_grandma` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dad_grandpa` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dad_grandma` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rate_milk` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cattle_status` int(11) DEFAULT NULL,
  `commen` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_cattle_strain_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_strain: ~0 rows (approximately)
DELETE FROM `cattle_strain`;
/*!40000 ALTER TABLE `cattle_strain` DISABLE KEYS */;
INSERT INTO `cattle_strain` (`id`, `name`, `private_no`, `gene`, `sex`, `birthday`, `color`, `pic`, `pedigree`, `lot`, `bidder`, `weight`, `weight_birth`, `weight_wean`, `weight_year`, `strain_start_price`, `strain_end_price`, `strain_percen`, `strain_excise`, `father`, `mother`, `grandfather`, `grandmother`, `dad_grandfather`, `dad_grandmother`, `mom_grandfather`, `mom_grandmother`, `grandpa`, `gramdma`, `mom_grandpa`, `mom_grandma`, `dad_grandpa`, `dad_grandma`, `rate_milk`, `description`, `cattle_status`, `commen`, `member_id`) VALUES
	(1, 'หกฟก', 'ฟหกฟหก', 'วากิว', 'male', '2016-12-10', 'แดง', 'หกฟก-pic.jpg', 'หกฟก-pidegree.jpg', '43', NULL, NULL, 324, 32432, 324, NULL, NULL, NULL, NULL, 'หฟกฟหกหฟ', 'กฟหกฟหกหฟ', '324', '', '324324', '32432', '424', '32432', '324', '43242', '32432', '324324', '4234', '234324', '324', 'กฟหกหฟกฟหก', 1, '-', 18);
/*!40000 ALTER TABLE `cattle_strain` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_wean
CREATE TABLE IF NOT EXISTS `cattle_wean` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `weigthwean` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(450) CHARACTER SET utf8 DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `performer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ผู้ปฏิบัติ',
  PRIMARY KEY (`id`),
  KEY `cattle_id` (`cattle_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_cattle_wean_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_wean_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_wean: ~4 rows (approximately)
DELETE FROM `cattle_wean`;
/*!40000 ALTER TABLE `cattle_wean` DISABLE KEYS */;
INSERT INTO `cattle_wean` (`id`, `date`, `weigthwean`, `note`, `member_id`, `cattle_id`, `performer`) VALUES
	(1, '2016-12-10', '220', '', 18, 4, 'hkhkk'),
	(2, '2018-02-01', '213', NULL, 18, 2, NULL),
	(3, '2018-03-23', '400', '', 18, 7, NULL),
	(4, '2018-02-04', '400', '', 18, 13, NULL);
/*!40000 ALTER TABLE `cattle_wean` ENABLE KEYS */;


-- Dumping structure for table farm2017.cattle_year
CREATE TABLE IF NOT EXISTS `cattle_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `weightyear` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `performer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ผู้ปฏิบัติ',
  PRIMARY KEY (`id`),
  KEY `cattle_id` (`cattle_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_cattle_year_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cattle_year_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.cattle_year: ~4 rows (approximately)
DELETE FROM `cattle_year`;
/*!40000 ALTER TABLE `cattle_year` DISABLE KEYS */;
INSERT INTO `cattle_year` (`id`, `date`, `weightyear`, `cattle_id`, `member_id`, `performer`) VALUES
	(1, '2016-12-24', '350', 4, 18, NULL),
	(2, '2018-02-01', '500', 2, 18, NULL),
	(3, '2018-02-17', '80', 7, 18, NULL),
	(4, '2018-02-20', '500', 13, 18, NULL);
/*!40000 ALTER TABLE `cattle_year` ENABLE KEYS */;


-- Dumping structure for table farm2017.class_cattle
CREATE TABLE IF NOT EXISTS `class_cattle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `breeds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.class_cattle: ~5 rows (approximately)
DELETE FROM `class_cattle`;
/*!40000 ALTER TABLE `class_cattle` DISABLE KEYS */;
INSERT INTO `class_cattle` (`id`, `breeds`) VALUES
	(1, 'โคพันธุ์ตาก'),
	(2, 'กำแพง'),
	(3, 'บิน'),
	(4, 'บามั่น'),
	(5, 'ชาโล');
/*!40000 ALTER TABLE `class_cattle` ENABLE KEYS */;


-- Dumping structure for table farm2017.color
CREATE TABLE IF NOT EXISTS `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.color: ~4 rows (approximately)
DELETE FROM `color`;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` (`id`, `value`) VALUES
	(5, 'แดง'),
	(9, 'เทา'),
	(14, 'ขาว'),
	(15, 'ดำ');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;


-- Dumping structure for table farm2017.count_breed
CREATE TABLE IF NOT EXISTS `count_breed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `year` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cattle_id` (`cattle_id`),
  CONSTRAINT `fk_count_breed_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.count_breed: ~0 rows (approximately)
DELETE FROM `count_breed`;
/*!40000 ALTER TABLE `count_breed` DISABLE KEYS */;
INSERT INTO `count_breed` (`id`, `count`, `year`, `cattle_id`) VALUES
	(1, 1, '2560', 1);
/*!40000 ALTER TABLE `count_breed` ENABLE KEYS */;


-- Dumping structure for table farm2017.disease
CREATE TABLE IF NOT EXISTS `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_disease` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `symptoms_of_disease` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `cause_of_the_disease` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `complications` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `cable_disease_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `cable_disease` (`cable_disease_id`),
  CONSTRAINT `fk_disease_cable_disease1` FOREIGN KEY (`cable_disease_id`) REFERENCES `cable_disease` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disease_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.disease: ~13 rows (approximately)
DELETE FROM `disease`;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` (`id`, `name_disease`, `symptoms_of_disease`, `cause_of_the_disease`, `complications`, `note`, `image`, `member_id`, `cable_disease_id`) VALUES
	(1, 'ปากและเท้าเปื่อย', 'โคมีอาการเดินโซเซ สมองฝ่อ โคไม่สามารถควบคุมร่างกายได้ ล้ม และตายในที่สุด', 'เกิดจากสาร Proteon ที่มีผลทำให้สมองฝ่อ และทำลายระบบประสาท สารนี้มักปนเปื้อนในอาหารที่มีส่วนผสมของสัตว์ป่วย เช่น เครื่องในบดแห้ง กระดูกสัตว์ป่น เป็นต้น', '-', 'lukfug', NULL, 18, 2),
	(2, 'นิ่ว', 'โคปัสสาวะไม่ค่อยออก หรือออกเป็นหยดๆ มีอาการกระสับกระส่าย เดี๋ยวนอนเดี๋ยวลุก กินน้ำ และอาหารน้อย มักใช้เท้าเตะท้อง หรือกระทืบพื้นคอก หนังใต้ทวารกระตุก', 'เกิดจากโคกินราที่ปนเปื้อนในอาหารติดต่อกันนานหลายปี เนื่องจากรามีธาตุฟอสฟอรัสมาก และมีแคลเซียมน้อย ทำให้ตกตะกอนกลายเป็นนิ่วในระบบทางเดินปัสสาวะ รวมถึงโคที่กินน้ำน้อย การกินพืชที่มีฟอสฟอรัสมาก ก็มักเกิดเป็นโรคนี้ได้', '', '', NULL, 18, 2),
	(3, 'ปากและเท้าเปื่อย', 'โคที่เป็นโรคนี้ จะมีไข้ ซึม เบื่ออาหาร หลังจากนั้นจะมีเม็ดตุ่มพอง เกิดที่ริมฝีปากในช่องปาก เช่น เหงือกและลิ้น ทำให้น้ำลายไหล กินอาหารไม่ได้ และเกิดเม็ดตุ่มที่ระหว่างช่องกีบ ไรกีบ ทำให้เจ็บมาก เดินกะเผลก เมื่อเม็ดตุ่มแตกออกอาจมีเชื้อแบคทีเรียร่วมด้วย ทำให้แผลหายช้าขณะที่โคเป็นโรคจะผอมน้ำนมจะลดลงอย่างมาก ในโคอัตราการติดโรคสูงถึง 100% อัตราการตาย 0.2-5% ในลูกโคอัตราการตายอาจสูงถึง 50-70% โดยเฉพาะอย่างยิ่งลูกโคที่ยังดูดนมอัตราการตายอาจสูงถึง 100%', 'เกิดจากเชื้อไวรัส เอฟ เอ็ม ดี (FMD) ที่พบในประเทศไทยมี 3 ไทป์ คือ โอ (O) เอ (A) และเอเชียวัน (Asia I) เชื้อทั้ง 3 ไทป์นี้ จะทำให้สัตว์ป่วยแสดงอาการเหมือนกัน แต่ไม่สามารถให้ภูมิคุ้มกันต่างไทป์ได้ กล่าวคือถ้าฉีดวัคซีน เอฟ ไทป์ เอ ให้ หรือสัตว์เคยป่วยเป็นโรคเอฟ ไทป์ เอ มาก่อน สัตว์จะมีภูมิคุ้มกันเฉพาะต่อโรคเอฟ ไทป์เอ เท่านั้น แต่จะไม่มีภูมิคุ้มกันต่อโรคเอฟไทป์ โอ หรือ ไทป์ เอเชียวัน ดังนั้นหากมีโรคเอฟ ไทป์ โอ หรือเอเชียวันระบาดสัตว์ก็อาจจะติดโรคได้ โรคนี้มีระยะฟักตัว ประมาณ 2-8 วัน', '', '', NULL, 18, 1),
	(4, 'วิน (โรคขาดวิตามิน เอ )', 'โคจะมีอาการน้ำตาไหล และโคไม่ชอบแสง (เพราะจะทำให้น้ำตาไหล) มีอาการเดินสะดุด (สายตาไม่ดี) เบื่ออาหาร น้ำหนักลด หายใจถี่ ชอบล้ม แต่ลุกขึ้นได้ และกินอาหารได้ ', 'โคที่ขังในคอกเป็นเวลานานๆ และไม่ได้รับหญ้าสดเป็นอาหาร (เลี้ยงด้วยฟางหรืออาหารข้น) จะทำให้โคขาดวิตาเอ มักเกิดในโคที่มีอายุน้อย', '', '', NULL, 18, 1),
	(5, 'แอนแทรกซ์', 'อาการเริ่มปรากฏหลังจากเชื้อเข้าสู่ร่างกายประมาณ 1-2 วัน 2 สัปดาห์ สัตว์ตายอย่างฉับพลันโดยไม่แสดงอาการให้เห็น สัตว์มีอาการล้มชัก กล้ามเนื้อกระตุก ตากลอก เคี้ยวฟัน หายใจขัด และตายอย่างรวดเร็ว มีเลือดสีดำไหลออกมาทางปาก จมูก ทวารหนัก อวัยวะสืบพันธุ์ เลือดที่ไหลออกมาจะไม่แข็งตัว เป็นลักษณะเฉพาะของโรคนี้', 'เป็นโรคที่เกิดมาจากเชื้อแบคทีเรีย เข้าสู่ร่างกายสัตว์ทางบาดแผล หรือการกินอาหารที่มีเชื้อปนเปื้อน โรคนี้จัดเป็นโรคอันตรายที่สามารถติดต่อเข้าสู่คนได้', '', '', NULL, 18, 1),
	(6, 'คอบวม', 'สัตว์มีอาการไข้สูง อุณหภูมิ 104 องศาฟาเรนไฮต์ขึ้นไป บริเวณใต้คาง คอเหนียง และพื้นท้องจะบวมน้ำ มีน้ำลายไหลยืด ไอ ซึม ต่อมาสัตว์จะตายจากการกินอาหารไม่ได้ และหายใจไม่ออก', 'โรคนี้เกิดจากเชื้อแบคทีเรียที่พบทั่วไปในน้ำ อาหาร หญ้า หรือแม้แต่ในร่างกายของสัตว์ ทำให้สามารถติดต่อได้ง่าย', '', '', NULL, 18, 1),
	(7, 'ไข้เห็บ และเยี่ยวแดง', 'ระยะแรกโคจะมีอาการซึม ไม่กินอาหาร น้ำลายไหลมาก มีไข้สูง ขนลุก เยื่อเมือกบริเวณตา เหงือก และในช่องเพศมีสีแดงเข้ม ต่อมาโคจะมีอาการโลหิตจาง (เม็ดเลือดแดงแตก) คือ เยื่อเมือกซีดขาว หรือซีดปนเหลืองแบบดีซ่าน ตาเหลือง หายใจหอบ และยังคงมีอาการมีไข้สูงอยู่ โคจะผอม ไม่กินอาหาร และอ่อนแอลงอย่างรวดเร็ว จนทำหให้ตายได้เพราะขาดเลือด ถ้าเป็นแม่โคตั้งท้องมักจะแท้งเสมอ มักพบอาการแบบนี้ในโคพื้นเมืองที่ปรับตัวได้จนสามารถมีเชื้ออยู่ในร่างกายโดยไม่แสดงอาการให้เห็น จนกว่าร่างกายทรุดโทรมหรืออ่อนแอลง จึงจะแสดงอาการออกมา แต่ก็ไม่รุนแรงถึงตาย โคจะมีไข้สูง (ประมาณ 105-108 ฟาเรนไฮต์) หายใจหอบ และจะตายอย่างรวดเร็ว โดยที่เจ้าของอาจไม่ทันสังเกตอาการผิดปกติใดๆ โรคนี้มักเกิดกับโครุ่นมากที่สุด', 'เกิดจากเชื้อพยาธิที่อาศัยอยู่ในเห็บโค เมื่อโคถูกเห็บที่มีเชื้อดูดเลือด เชื้อพยาธิจะปนกับน้ำลายเข้าสู่เส้นเลือด และเชื้อจะไปเพิ่มจำนวนในเลือด ทำลายเม็ดเลือดแดง โรคนี้มักระบาดในช่วงต้นฤดูฝนที่มีแมลงดูดเลือดชุกชุม', '', '', NULL, 18, 1),
	(8, 'ไข้ขาแข็ง', 'มีอาการอย่างรุนแรง คือ มีไข้สูงมาก ( 105-107 ฟาเรนไฮต์ ) น้ำมูก น้ำลายไหลยืด ขอบตาบวม นัยน์ตาลึก ไม่กินอาหาร นอนซม ถ้าไล่ให้ลุกหรือเดิน จะแสดงอาการเจ็บปวดที่ขา เวลาเดินขาจะแข็ง หลังโก่ง แต่ไม่พบบาดแผลที่ขาหรือที่กีบเท้า แต่โรคนี้จะค่อยๆ หายเป็นปกติในเวลา 3-4 วัน ถ้าไม่มีโรคอื่นแทรกซ้อน แต่ควรระวังในเรื่องการเดิน และการหกล้ม ซึ่งอาจทำให้ขาหักหรือขาพิการได้', 'เกิดจากเชื้อไวรัส ที่เข้าสู่ร่างกายโคโดยแมลงดูดเลือด', '', '', NULL, 18, 1),
	(9, 'วัณโรค', 'มีหลายแบบ บ่งบอกได้ยากว่าเป็นโรคนี้ เพราะโคป่วยส่วนใหญ่จะไม่แสดงอาการเฉพาะให้เห็น  นอกจากร่างกายผอม ไม่ค่อยกินอาหาร มีไข้ และอาจแสดงอาการทางปอด เช่น ไอบ่อยๆ หายใจลำบาก เวลาหายใจจะมีเสียงดังผิดปกติ ต่อมน้ำเหลืองในช่องอกโต', 'เกิดจากเชื้อแบคทีเรียชนิดหนึ่ง ชอบอาศัยตามต่อมน้ำเหลือง สามารถแพร่จากบริเวณติดเชื้อไปยังส่วนต่าง ๆได้ และมีผลทำให้อวัยวะนั้นทำงานผิดปกติ การติดเชื้อในโคเกิดได้จากการกินหญ้าหรืออาหารที่เปื้อนสิ่งขับถ่ายจากโคที่กำลังป่วย เช่น  น้ำลาย น้ำมูก เชื้อนี้สามารถติดต่อสู่คนได้', '', '', NULL, 18, 1),
	(10, 'หนอนไชแผล', 'บริเวณบาดแผลมีหนอนซอนไซ คอยกัดกินเนื้อเยื่อ ทำให้แผลหายยาก แผลมีกลิ่นเน่าเหม็น แผลอักเสบ', 'เกิดจากแมลงวันมาวางไข่ในแผลต่างๆบนร่างกายโค', '', '', NULL, 18, 2),
	(11, 'ท้องอืด', 'ท้องอืดตึง ไม่กินอาหาร เดินกระวนกระวาย น้ำลายไหลเป็นฟอง ไม่เคี้ยวเอื้อง ลุกขึ้น และนอนลงอยู่บ่อยๆ หายใจลำบาก หากมีอาการเป็นมาก โคจะนอน และลุกไม่ได้ มีอาการท้องบวมโต หายใจไม่ออก และตายในที่สุด', 'โคกินหญ้าอ่อน ใบมันสำปะหลัง พืชตระกูลถั่ว กินยูเรีย หรือกินอาหารข้นมากเกินไป', '', '', NULL, 18, 2),
	(13, 's', 's', 's', 's', 's', NULL, 18, 2),
	(14, '1', '1', '1', '1', '1', NULL, 18, 1);
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;


-- Dumping structure for table farm2017.farm
CREATE TABLE IF NOT EXISTS `farm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_thai` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name_eng` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `shot_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.farm: ~0 rows (approximately)
DELETE FROM `farm`;
/*!40000 ALTER TABLE `farm` DISABLE KEYS */;
INSERT INTO `farm` (`id`, `name_thai`, `name_eng`, `shot_name`, `address`, `phone`) VALUES
	(1, 'ไทยเสรีฟาร์ม', 'uigif', 'TS FARMdvsg', '627 ม.1 ต.คลองขลุง อ.คลองขลุง จ.กำแพงเพชร 62120', '74754');
/*!40000 ALTER TABLE `farm` ENABLE KEYS */;


-- Dumping structure for table farm2017.fatten_list
CREATE TABLE IF NOT EXISTS `fatten_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `farm` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `cattle_fatten_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cattle_fatten_id` (`cattle_fatten_id`),
  CONSTRAINT `fk_fatten_list_cattle_fatten1` FOREIGN KEY (`cattle_fatten_id`) REFERENCES `cattle_fatten` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.fatten_list: ~0 rows (approximately)
DELETE FROM `fatten_list`;
/*!40000 ALTER TABLE `fatten_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `fatten_list` ENABLE KEYS */;


-- Dumping structure for table farm2017.festivity
CREATE TABLE IF NOT EXISTS `festivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gene` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `s_work` date DEFAULT NULL,
  `e_work` date DEFAULT NULL,
  `s_data` date DEFAULT NULL,
  `e_data` date DEFAULT NULL,
  `logo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `poster` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `details` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `referee` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `new_status` int(11) DEFAULT '0',
  `cow_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `percen` int(11) DEFAULT NULL,
  `farm_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `fk_festivity_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_festivity_type1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.festivity: ~3 rows (approximately)
DELETE FROM `festivity`;
/*!40000 ALTER TABLE `festivity` DISABLE KEYS */;
INSERT INTO `festivity` (`id`, `type_id`, `member_id`, `title`, `gene`, `s_work`, `e_work`, `s_data`, `e_data`, `logo`, `poster`, `details`, `location`, `referee`, `new_status`, `cow_id`, `percen`, `farm_name`, `phone`) VALUES
	(4, 1, 18, '3423432', 'วากิว', '2016-12-24', '2016-12-25', '2016-12-17', '2016-12-24', '3423432-logo.png', '3423432-poster.png', '23423432423', 'fgfdsgdfsgsfgsdgdfgdsgdsfgd', '34234324', 1, '0,116', 4, 'rwerfdfgdsg', '0544545454'),
	(5, 2, 18, 'asddasdsa', 'วากิว', '2016-12-11', '2016-12-18', '2016-12-03', '2016-12-10', 'asddasdsa-logo.png', 'asddasdsa-poster.png', 'sadsad', 'asdsadasdasdsadasdssadsadsad', 'sadsad', 1, '0', 432, 'dasdsad', 'asdsadasd'),
	(6, 3, 18, '555555555555555', 'วากิว', '2016-12-25', '2016-12-26', '2016-12-13', '2016-12-24', '555555555555555-logo.png', '555555555555555-poster.png', '5', '5555555555555555555555555555555555555555555555555555', '5555555', 1, '0', 5, '555555555555555', '555555555');
/*!40000 ALTER TABLE `festivity` ENABLE KEYS */;


-- Dumping structure for table farm2017.festivity_fatten_history
CREATE TABLE IF NOT EXISTS `festivity_fatten_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `festivity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `festivity_id` (`festivity_id`),
  CONSTRAINT `fk_festivity_fatten_history_festivity1` FOREIGN KEY (`festivity_id`) REFERENCES `festivity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.festivity_fatten_history: ~0 rows (approximately)
DELETE FROM `festivity_fatten_history`;
/*!40000 ALTER TABLE `festivity_fatten_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `festivity_fatten_history` ENABLE KEYS */;


-- Dumping structure for table farm2017.festivity_show_history
CREATE TABLE IF NOT EXISTS `festivity_show_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `festivity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `festivity_id` (`festivity_id`),
  CONSTRAINT `fk_festivity_cow_history_festivity1` FOREIGN KEY (`festivity_id`) REFERENCES `festivity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.festivity_show_history: ~0 rows (approximately)
DELETE FROM `festivity_show_history`;
/*!40000 ALTER TABLE `festivity_show_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `festivity_show_history` ENABLE KEYS */;


-- Dumping structure for table farm2017.festivity_strain_history
CREATE TABLE IF NOT EXISTS `festivity_strain_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `festivity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `festivity_id` (`festivity_id`),
  CONSTRAINT `fk_festivity_strain_history_festivity1` FOREIGN KEY (`festivity_id`) REFERENCES `festivity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.festivity_strain_history: ~0 rows (approximately)
DELETE FROM `festivity_strain_history`;
/*!40000 ALTER TABLE `festivity_strain_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `festivity_strain_history` ENABLE KEYS */;


-- Dumping structure for table farm2017.formula_record
CREATE TABLE IF NOT EXISTS `formula_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typecal` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `breed` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `weightperday` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `weight` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `age` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `pregnent` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `lactation` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `lactationperday` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `fatmilk` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `pricemilk` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `typeeating` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `strain` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `ndf` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `adf` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `tdn` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `nel` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `walk` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `needtdn` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `neednel` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `needadf` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `needndf` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `uip` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `dip` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `ca` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `p` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `vita` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  `Type_Formula_id` int(11) DEFAULT NULL,
  `Member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Type_Formula_id` (`Type_Formula_id`),
  KEY `Member_id` (`Member_id`),
  CONSTRAINT `fk_Formula_record_Member` FOREIGN KEY (`Member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Formula_record_Type_Formula` FOREIGN KEY (`Type_Formula_id`) REFERENCES `type_formula` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.formula_record: ~0 rows (approximately)
DELETE FROM `formula_record`;
/*!40000 ALTER TABLE `formula_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `formula_record` ENABLE KEYS */;


-- Dumping structure for table farm2017.formula_record2
CREATE TABLE IF NOT EXISTS `formula_record2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumweight` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `dm1` float DEFAULT NULL,
  `dm2` float DEFAULT NULL,
  `cp1` float DEFAULT NULL,
  `cp2` float DEFAULT NULL,
  `tdn1` float DEFAULT NULL,
  `tdn2` float DEFAULT NULL,
  `ndf1` float DEFAULT NULL,
  `ndf2` float DEFAULT NULL,
  `vita1` float DEFAULT NULL,
  `vita2` float DEFAULT NULL,
  `vite1` float DEFAULT NULL,
  `vite2` float DEFAULT NULL,
  `Type_Formula_id` int(11) DEFAULT NULL,
  `Member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Type_Formula_id` (`Type_Formula_id`),
  KEY `Member_id` (`Member_id`),
  CONSTRAINT `fk_Formula_record2_Member2` FOREIGN KEY (`Member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Formula_record2_Type_Formula2` FOREIGN KEY (`Type_Formula_id`) REFERENCES `type_formula` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ออกรายงานอาหารข้นราคาต่ำสุด';

-- Dumping data for table farm2017.formula_record2: ~2 rows (approximately)
DELETE FROM `formula_record2`;
/*!40000 ALTER TABLE `formula_record2` DISABLE KEYS */;
INSERT INTO `formula_record2` (`id`, `sumweight`, `cost`, `dm1`, `dm2`, `cp1`, `cp2`, `tdn1`, `tdn2`, `ndf1`, `ndf2`, `vita1`, `vita2`, `vite1`, `vite2`, `Type_Formula_id`, `Member_id`) VALUES
	(1, 2, 5, 3, 1, 4, 6, 8, 7, 9, 65, 32, 12, 56, 33.4, 1, 18),
	(2, 100, 12, 0, 87.4, 4, 7.17, 0, 69.05, 0, 0, 0, 0, 0, 0, NULL, NULL);
/*!40000 ALTER TABLE `formula_record2` ENABLE KEYS */;


-- Dumping structure for table farm2017.form_list
CREATE TABLE IF NOT EXISTS `form_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.form_list: ~0 rows (approximately)
DELETE FROM `form_list`;
/*!40000 ALTER TABLE `form_list` DISABLE KEYS */;
INSERT INTO `form_list` (`id`, `name`) VALUES
	(1, '2');
/*!40000 ALTER TABLE `form_list` ENABLE KEYS */;


-- Dumping structure for table farm2017.gene
CREATE TABLE IF NOT EXISTS `gene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.gene: ~3 rows (approximately)
DELETE FROM `gene`;
/*!40000 ALTER TABLE `gene` DISABLE KEYS */;
INSERT INTO `gene` (`id`, `name`) VALUES
	(1, 'วากิว'),
	(2, 'กำแพงแสน'),
	(3, 'บรามันห์');
/*!40000 ALTER TABLE `gene` ENABLE KEYS */;


-- Dumping structure for table farm2017.group_cattle
CREATE TABLE IF NOT EXISTS `group_cattle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.group_cattle: ~9 rows (approximately)
DELETE FROM `group_cattle`;
/*!40000 ALTER TABLE `group_cattle` DISABLE KEYS */;
INSERT INTO `group_cattle` (`id`, `value`) VALUES
	(1, 'โคพร้อมผสมพันธุ์'),
	(2, 'โคตั้งท้อง'),
	(3, 'โคเลี้ยงลูกแรกคลอด(ยังไม่ได้หย่านม)'),
	(4, 'โคเลี้ยงลูก2เดือน(เตรียมหย่านม)'),
	(5, 'โคเลี้ยงลูกโต(หย่านมแล้ว)'),
	(6, 'ลูกโคโต(หย่านมแล้ว)'),
	(7, 'ลูกโคโต(ยังไม่ได้หย่านม)'),
	(8, 'โครุ่น'),
	(9, 'โคเตรียมเหนี่ยวนำ');
/*!40000 ALTER TABLE `group_cattle` ENABLE KEYS */;


-- Dumping structure for table farm2017.group_medicine
CREATE TABLE IF NOT EXISTS `group_medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.group_medicine: ~9 rows (approximately)
DELETE FROM `group_medicine`;
/*!40000 ALTER TABLE `group_medicine` DISABLE KEYS */;
INSERT INTO `group_medicine` (`id`, `value`) VALUES
	(1, 'ยาแก้ติดเชื้อ(ยาปฎิชีวนะ)'),
	(2, 'ยาลดการอักเสบ/แก้ไข้'),
	(3, 'ยากำจัดพยาธิภายใน/ภายนอก'),
	(4, 'ยากลุ่มฮอร์โมน'),
	(5, 'ยาสลบ/ยานำสลบ'),
	(6, 'วิตามินแร่ธาตุ'),
	(7, 'ยาฆ่าเชื้อ'),
	(8, 'ยาทา/ยาใช้ภายนอก'),
	(9, 'อื่นๆ/วัคซีน/สมุนไพร');
/*!40000 ALTER TABLE `group_medicine` ENABLE KEYS */;


-- Dumping structure for table farm2017.horn_detering
CREATE TABLE IF NOT EXISTS `horn_detering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `note` varchar(450) CHARACTER SET utf8 DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `type_horn_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `performer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cattle_id` (`cattle_id`),
  KEY `type_horn_id` (`type_horn_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_horn_detering_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_horn_detering_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_horn_detering_type_horn` FOREIGN KEY (`type_horn_id`) REFERENCES `type_horn` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.horn_detering: ~4 rows (approximately)
DELETE FROM `horn_detering`;
/*!40000 ALTER TABLE `horn_detering` DISABLE KEYS */;
INSERT INTO `horn_detering` (`id`, `date`, `note`, `cattle_id`, `type_horn_id`, `member_id`, `performer`) VALUES
	(1, '2018-02-28', '-', 4, 3, 18, NULL),
	(2, '2018-01-27', 'ฟหกฟasdasd', 4, 2, 18, NULL),
	(3, '2018-02-06', '', 7, 1, 18, NULL),
	(4, '2018-02-03', '', 13, 1, 18, NULL);
/*!40000 ALTER TABLE `horn_detering` ENABLE KEYS */;


-- Dumping structure for table farm2017.medicine
CREATE TABLE IF NOT EXISTS `medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `scientific_name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `common_name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL COMMENT 'ปริมาณ',
  `quantity` int(11) unsigned DEFAULT '0' COMMENT 'จำนวนคงคลัง',
  `ingredient` varchar(3000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ส่วนประกอบ',
  `properties` varchar(3000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สรรพคุณ ดูศัพท์ใชอีกที  ',
  `instruction` varchar(3000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'วิธีการไช้',
  `direction` varchar(3000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ข้อบ่งใช้ใช้',
  `contraindicated` varchar(400) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ข้อห้ามใช้',
  `caution` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ข้อควรระวัง',
  `side_effect` varchar(3000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ผลข้างเคียง',
  `distance_discontinued` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ระยะหยุดใช้',
  `mfg_date` date DEFAULT NULL COMMENT 'วันที่ผลิต',
  `exp_date` date DEFAULT NULL COMMENT 'วันหมดอายุ',
  `product_by` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT 'หมายเหตุ',
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `barcode` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'บาร์โค๊ด',
  `place` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `group_medicine_id` int(11) DEFAULT NULL,
  `unit_medicine_id` int(11) DEFAULT NULL,
  `statusalert` int(11) NOT NULL DEFAULT '0',
  `medicine_success` int(11) DEFAULT NULL,
  `medicine_lost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medicine_group_medicine1_idx` (`group_medicine_id`),
  KEY `unit_medicine_id` (`unit_medicine_id`),
  CONSTRAINT `fk_medicine_group_medicine1` FOREIGN KEY (`group_medicine_id`) REFERENCES `group_medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicine_unit_medicine1` FOREIGN KEY (`unit_medicine_id`) REFERENCES `unit_medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.medicine: ~29 rows (approximately)
DELETE FROM `medicine`;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` (`id`, `trade_name`, `scientific_name`, `common_name`, `qty`, `quantity`, `ingredient`, `properties`, `instruction`, `direction`, `contraindicated`, `caution`, `side_effect`, `distance_discontinued`, `mfg_date`, `exp_date`, `product_by`, `note`, `image`, `barcode`, `place`, `group_medicine_id`, `unit_medicine_id`, `statusalert`, `medicine_success`, `medicine_lost`) VALUES
	(1, 'บิวตาซิว', 'บิวตาซิว', 'บิวตาซิว', NULL, 0, 'ฟีนิลบิวตาโซน 186.1 มก. และ โซเดียมซาลิไซเลต 50 มก.', 'รักษาอาการปวด และอักเสบ รวมถึงลดการมีไข้และโรคไขข้ออักเสบ', 'ฉีด', NULL, NULL, NULL, '', '21', NULL, NULL, NULL, '', NULL, NULL, 'คลัง2', 6, 2, 0, NULL, NULL),
	(2, 'เบเรนิล 7%', 'เบเรนิล 7%', 'เบเรนิล 7%', NULL, 0, 'ไดมินาซีน อะเซนทูเรท 70 มก.', 'รักษาโรคติดเชื้อทริพาโนโซม เชื้อบาบีเซีย และเชื้อไธเลอเรีย', 'ฉีด', NULL, NULL, NULL, '', '3', NULL, NULL, NULL, '', NULL, NULL, 'คลัง', 3, 2, 0, NULL, NULL),
	(3, 'พานาคูร์ ขนิดเม็ด 1.5 กรัม', 'พานาคูร์ ขนิดเม็ด 1.5 กรัม', 'พานาคูร์ ขนิดเม็ด 1.5 กรัม', NULL, 0, 'เฟนเบนดาโซล 1.5 กรัม', 'กำจัดพยาธิ', 'ฉีด', NULL, NULL, NULL, '', '3', NULL, NULL, NULL, '', NULL, NULL, '', 3, 1, 0, NULL, NULL),
	(4, 'สเปรย์ฟ้า ไซคลอ สเปรย์', 'สเปรย์ฟ้า ไซคลอ สเปรย์', 'สเปรย์ฟ้า ไซคลอ สเปรย์', NULL, 0, 'คลอเตตร้าไซคลินไฮเคลอไรด์', 'ป้องกันและรักษาบาอแผลจากการอักเสบ', 'ฉีดพ่นบนบาดแผลภายนอก', NULL, NULL, NULL, '', '4', NULL, NULL, NULL, '', NULL, NULL, '', 1, 2, 0, NULL, NULL),
	(5, 'โนมินโฟน 50 %', 'โนมินโฟน 50 %', 'โนมินโฟน 50 %', NULL, 0, 'ซิลไพริน โซเดียม โมโนไฮเครต- ลิโดเคน ไฮโดรคลอไรด์', 'ลดการมีไข้ และเบาเทาอาการปวด เนื่องจากการอักเสบ', 'ฉีด', NULL, NULL, NULL, '', '7', NULL, NULL, NULL, '', NULL, NULL, '', 1, 1, 0, NULL, NULL),
	(6, 'ซาดี เยนเจอร์', 'ซาดี เยนเจอร์', 'ซาดี เยนเจอร์', NULL, 0, 'สารสกัดจากใบเทียน17.8% และอื่นๆ', 'รักษาแผลสดและแผลเรื้อรัง แผลมีกลิ่นเน่าเหม็น', 'ฉีด', NULL, NULL, NULL, '', '8', NULL, NULL, NULL, '', NULL, NULL, '', 1, 1, 0, NULL, NULL),
	(7, 'ฮิปราม็อกซ์', 'ฮิปราม็อกซ์', 'ฮิปราม็อกซ์', NULL, 23, 'อะม็อกซ๊ซิลลิน', 'รักษาโรคติดเชื้อที่เกิดจากแบคทีเรียชนิดต่างๆ', 'ฉีด', NULL, NULL, NULL, '', '3', NULL, NULL, NULL, '', NULL, NULL, '', 1, 2, 0, NULL, NULL),
	(8, 'ดีเฟ็นเซอร์ 3', 'ดีเฟ็นเซอร์ 3', 'ดีเฟ็นเซอร์ 3', 1, 0, 'Inactivate Rabies Viras', 'ป้องกันการเกิดโรคพิษสุนัขบ้า', 'ฉีด', NULL, NULL, NULL, '', '1', NULL, NULL, NULL, '', NULL, NULL, '', 9, 2, 0, NULL, NULL),
	(9, 'คานซิล', 'คานซิล', 'คานซิล', NULL, 0, 'กานามัยซิน ซัลเฟต (Kanamycin sulphate)', 'รักษาโรคติดเชื้อที่เกิดจากเชื้อแบคทีเรียชนิดต่างๆ รักษาโรคทางเดินกายใจ ทางเดินอาหาร ทางเดินปัสสาวะ ปัสสาวะไม่ค่อยออก อวัยวะสืบพันธู์ และโรคข้ออักเสบ', 'ฉีด', NULL, NULL, NULL, '', '2', NULL, NULL, NULL, '', NULL, NULL, '', 1, 2, 0, NULL, NULL),
	(10, 'โรโบแร้นท์ แคลเลียร์', 'โรโบแร้นท์ แคลเลียร์', 'โรโบแร้นท์ แคลเลียร์', NULL, 0, 'วิตามิน เอ (Calcium Phosphorylcholine Chloride) 5 กรัม', 'บำรุงร่างกายและกระตุ้นเมตาบอลิซึม โคจะมีอาการน้ำตาไหล และโคไม่ชอบแสง (เพราะจะทำให้น้ำตาไหล) มีอาการเดินสะดุด (สายตาไม่ดี) เบื่ออาหาร น้ำหนักลด หายใจถี่ ชอบล้ม แต่ลุกขึ้นได้ และกินอาหารได้', 'ฉีด', NULL, NULL, NULL, '', '3', NULL, NULL, NULL, '', NULL, NULL, '', 6, 2, 0, NULL, NULL),
	(11, 'อ๊อกซี่โทซิน 50 มิลลิลิตร', 'อ๊อกซี่โทซิน 50 มิลลิลิตร', 'อ๊อกซี่โทซิน 50 มิลลิลิตร', NULL, 0, 'อ๊อกซี่โทซิน 10 ยูนิต', 'กระตุ้นการบีบตัวของมดลูก', 'ฉีด', NULL, NULL, NULL, '', '5', NULL, NULL, NULL, '', NULL, NULL, '', 4, 2, 0, NULL, NULL),
	(12, 'สเปรย์ม่วง เตตร้าเวท แอร์โรซฟอล', 'สเปรย์ม่วง เตตร้าเวท แอร์โรซฟอล', 'สเปรย์ม่วง เตตร้าเวท แอร์โรซฟอล', NULL, 0, '-อ๊อกซี่เตตร้าไซคลินไฮโดรคลอไรด์ 40 มก. -เจนเชียนไวโอเลต 162 มก.', 'ช่วยยับยั้ง และป้องกันการติดเชื้อ และมีบาดแผล', 'ฉีดพ่นบนบาดแผลภานอก', NULL, NULL, NULL, '', '5', NULL, NULL, NULL, '', NULL, NULL, '', 1, 2, 0, NULL, NULL),
	(13, 'ไบโอคาตาลิน', 'ไบโอคาตาลิน', 'ไบโอคาตาลิน', NULL, 0, '-อะมิโนแอซิด -วิตามินบีรวม -ซอร์บิทอล', 'รักษาสัตว์ในภาวะเกิดความเครียด ร่างกายกำลังอ่อนแอ ขาดโปรตีน และวิตามินบีรวม', 'ฉีด', NULL, NULL, NULL, '', '2', NULL, NULL, NULL, '', NULL, NULL, '', 9, 2, 0, NULL, NULL),
	(14, 'ฟอสโฟโนโทนิค 20%', 'ฟอสโฟโนโทนิค 20%', 'ฟอสโฟโนโทนิค 20%', NULL, 0, 'เป็นน้ำยาไอโสโทนิค 20% ของโซเดียมเม็ททิลมิโนเม็ททิลเพ็นนิลฟอสฟีเนทในสารละลาย ออร์แกนนิคโดยเฉพาะ', 'การขาดแรธาตุในแม่วัวที่ต้องให้นม รูปร่างผิดปกติ มีท่าทีว่ากระดูกผิดปกติ กินอาหารไม่ค่อยได้ การย่อยอาหารที่ผิดปกติในปลายฤดูหนาาวหรือในฤดูใบไม้ผลิและไม่ค่อยกินอาหารด้วย ทำให้การให้น้ำนมลดลง และมีอาการทางประสาท เกิดคีโตนในร่างกาย มากเกินปกติ(เนื่องจากขาดฟองฟอสฟอรัสมากกว่าการขาดแคลเซียม) ทำให้การตั้งท้องนานเกินไป อ่อนเพลียเนื่องจากขาดธาตุฟอสฟอรัส', 'ฉีดเข้ากล้ามเนื้อ หรือเข้าใต้ผิวหนัง ฉีดครั้งละ 5 cc ถึง 10 cc', NULL, NULL, NULL, '', '2', NULL, NULL, NULL, '', NULL, NULL, '', 6, 2, 0, NULL, NULL),
	(15, 'คาโตซาล 10 %', 'คาโตซาล 10 %', 'คาโตซาล 10 %', NULL, 100, '1-เอ็น-บิวทิลอะมิโน-1-เม็ทธิลเอ็นธิลฟอสฟอนัส แอซิด\r\nวิตามินบี12\r\nฟอสฟอรัส', 'ใช้กับสัตว์ที่มีผิดปกติทางเมทตาโบลิซั่ม เนื่องจากขาดสารอาหาร การเลี้ยงลูกไม่ดี ป่วย ปกกันการเป็นหมัน และการเกิดโรคทางระบบสืบพันธุ์ โดยใช้ควบคู่กับการรักษาโดยตรง การสร้างกระดูกที่ไม่ปกติอันมีสาเหตุเนื่องมาจากขาดฟอสฟอรัส สัตว์มีอาการอ่อนเพลีย ซูบผอม โลหิตจาง', 'ใช้ฉีดเข้าหลอดเลือดดำ เข้ากล้ามเนื้อ หรือเข้าใต้ผิวหนังในขนาด 1 cc ต่อน้ำหนักสัตว์ 10กิโลกรัม', NULL, NULL, NULL, '', '2', NULL, NULL, NULL, '', NULL, NULL, '', 6, 2, 0, NULL, NULL),
	(16, 'ไบรีน่า 20%', 'ไบรีน่า 20%', 'ไบรีน่า 20%', NULL, 22, 'ตัวยาซัลฟาเมท็อกซี่ไดอาซิน 20 ๔', 'ปอดบวม หลอดลมอักเสบ โรคทางระบบสืบพันธุ์ รกค้างมดลูกอักเสบ เต้านมอักเสบซึ่งทำให้สุขภาพทั่วๆ ไปผิดปกติ โรคลำไส้อักเสบ เยื่อบุช่องท้องอักเสบ', 'ใช้ฉีดเข้าหลอดโลหิตดำ เข้ากล้ามเนื้อ หรือเข้าใต้ผิวหนัง \r\nขนาดที่ให้ครั้งแรก 7.5 cc ต่อน้ำหนัก 50 กิโลกรัม\r\nขนาดที่ให้ครั้งต่อๆ ไป 5 cc ต่อน้ำหนัก 50 กิโลกรัม', NULL, NULL, NULL, '', '2', NULL, NULL, NULL, '', NULL, NULL, '', 1, 1, 0, NULL, NULL),
	(17, 'วิตามินบี 12 2000ไมโครกรัม', 'วิตามินบี 12 2000ไมโครกรัม', 'วิตามินบี 12 2000ไมโครกรัม', NULL, 0, 'ใน 1 cc ประกอบด้วย วิตามินบี 12  20000ไมโครกรัม', 'ใช้รักษาโรคโลหิตจาง และอาการขาดแร่ธาตุโคบอลท์ ในสัตว์ทุกชนิด ช่วยบำรุงร่างกายสัตว์ให้แข็งแรงในช่วงภาวะสืบพันธุ์', 'ฉีดเข้ากล้ามเนื้อ', NULL, NULL, NULL, '', '3', NULL, NULL, NULL, '', NULL, NULL, '', 6, 1, 0, NULL, NULL),
	(18, 'ซิบ-ฟอส', 'ซิบ-ฟอส', 'ซิบ-ฟอส', NULL, 0, 'Calcium glycerophoshate 40 มิลลิกรัม \r\niron glyceroposphate 100 มิลลิกรัม\r\nvitamin b12', 'ใช้เสริมแคลเซียม ฟอสฟอรัส ธาตุเหล็ก และวิตามินบี 12', 'ใช้ฉีดเข้ากล้ามเนื้อ หรือฉีดเข้าใต้ผิวหนัง', NULL, NULL, NULL, '', '1', NULL, NULL, NULL, '', NULL, NULL, '', 6, 2, 0, NULL, NULL),
	(19, 'Gentamicin injection Meiji 40 for veterinary use', 'Gentamicin injection Meiji 40 for veterinary use', 'Gentamicin injection Meiji 40 for veterinary use', NULL, 100, 'Gentamicin injection Meiji 40 for veterinary use', 'รักษาแผลฝีหนอง โรคโลหิตเป็นพิษ โรคทางเดินหายใจ เช่น ปวดบวม หลอดลมอักเสบ กล่องเสียงอักเสบ โรคทางเดินทางหารที่เกิดจากเชื้อแบคทีเรีย สะดืออักเสบ', 'ฉีดเช้ากล้ามเนื้อ 2-4มิลลิกรัมต่อน้ำหนัก 1 กก', NULL, NULL, NULL, '', '21', NULL, NULL, NULL, '', NULL, NULL, '', 1, 2, 0, NULL, NULL),
	(20, 'ไออ้อนเด็กซ์แทรน', 'ไออ้อนเด็กซ์แทรน', 'ไออ้อนเด็กซ์แทรน', NULL, 0, 'น้ำยาประกอบด้วยธาตุเหล็ก', 'ใช้สำหรับป้องกันและรักษาโรคขาดธาตูเหล็ก', 'ใช้ฉีดเข้ากล้ามเนื้อลึกๆ หรือช่องท้อง', NULL, NULL, NULL, '', '3', NULL, NULL, NULL, '', NULL, NULL, '', 6, 1, 0, NULL, NULL),
	(21, 'โนวาซิลแลน', 'โนวาซิลแลน', 'โนวาซิลแลน', NULL, 0, '50 % sterile solution sodium phenyl dimethyl pyrazolone methyl amino methane sylponate monohydrate', 'ใช้สำหรับสัตว์ ระงับอาการปวด ลดการมีไข้', 'ใช้ฉีดเข้ากล้ามเนื้อ หรือฉีดเข้าเส้นเลือด ฉีดครั้งละ 20 มิลลิกรัม', NULL, NULL, NULL, '', '2', NULL, NULL, NULL, '', NULL, NULL, '', 4, 1, 0, NULL, NULL),
	(22, 'อะนาลยิน (เว็ท)/Analgin(Vet)', 'อะนาลยิน (เว็ท)/Analgin(Vet)', 'อะนาลยิน (เว็ท)/Analgin(Vet)', NULL, 0, 'อานาลยิน 0.5กรัม\r\n', 'ใช้บรรเทาอาการปวดเกร็ง ระงับการอักเสบและลดไข้ ลดการมีไข้บรรเทาอาการปวด และอาการปวดเกร็งของทางเดินอาหาร ดังเช่นในรายที่ปวดเนื่องจากข้ออักเสบ โรคข้ออักเสบชนิดเฉียบพลัน และเรื้อรัง โรคกล้ามเนื้อและข้อรูมาติค โรคเส้นประสาทอักเสบ อาการปวดประสาท โรคเฮ้นและช่องคลอดอักเสบ ปวดเกร็งเนื้องจากเกิดการอุตตันสิ่งอุดตันของสิ่งแปลกปลอมในหลอดอาหาร', 'ใช้ฉีดเข้าเส้นเลือดในภาวะเฉียบพลัน หรือฉีดเข้ากล้ามเนื้อ อาจให้พร้อมกันทั้งสองกรณี สามารถให้ยาซ้ำได้เมื่อฤทธิ์ของยาเริ่มหมดลงในวันเดียวกัน', NULL, NULL, NULL, '', '1', NULL, NULL, NULL, '', NULL, NULL, '', 1, 2, 0, NULL, NULL),
	(23, 'เอ็นโรการ์ด 10 % อินเจ็คชัน', 'เอ็นโรการ์ด 10 % อินเจ็คชัน', 'เอ็นโรการ์ด 10 % อินเจ็คชัน', NULL, 0, 'ใน 1 มิลลิกรัม ประกอบด้วย Enrofloxacin 100มิลลิกรัม', 'รักษาโรคติดเชื้อในระบบทางเดินหายใจ โรคติดเชื้อในระบบทางเดินอาหารที่เกิดจากเชื้อแบคทีเรียหรือมัยโคพลาสมาที่ไวต่อยา Enrogerichia coli', 'ฉีดเข้ากล้ามเนื้อ  5มิลลิกรัมต่อน้ำหนัก 1 กิโลกรัม', NULL, NULL, NULL, '', '3', NULL, NULL, NULL, '', NULL, NULL, '', 7, 2, 0, NULL, NULL),
	(24, 'วิตามิน เอดี3 อี', 'วิตามิน เอดี3 อี', 'วิตามิน เอดี3 อี', NULL, 0, '1 cc ประกอบด้วย วิตามินเอ อะซีเตต 300000 ยูนิต\r\nวิตามิน ดี3 100000 ยูนิต\r\nวิตามิน อี อะซีเตต 50 มิลลิกรัม', 'วิตามิน เอ ช่วยเสริมสร้างกระดูก ป้องกันรักษาเยื่อบุผิว และมีบทบาทสำคัญต่อระบบสายตา\r\nวิตามิน ดี ช่วยในขบวนการใช้ แคลเซียม และฟอสฟอรัส\r\nวิตามิน อี ช่วยให้เซลคงตัว\r\nใช้รักษา โรคขาดวิตามินในสัตว์แรกเกิด ลดความเครียดในสัตว์ ใช้ในสัตว์ที่เจริญเติบโตช้า ระยะพักฟื้นหลังติดเชื้อ และรักษาความบกพร่องทางโภชนาการของกล้ามเนื้อ', 'ใช้ฉีดเข้ากล้ามเนื้อทุกๆ 3-6เดือน', NULL, NULL, NULL, '', '5', NULL, NULL, NULL, '', NULL, NULL, '', 6, 1, 0, NULL, NULL),
	(25, 'คลอรามีน', 'คลอรามีน', 'คลอรามีน', NULL, 0, 'คลอเฟนิรามีน มาลีเอท 10 มิลลิกรัม', 'ใช้ระงับฤทธิ์ของฮีสตามีน ต่อร่างกายสัตว์ในส่วนของ หลอดลม ลำไส้ ท่อปัสสาวะ สามารถออกฤทธิ์ต่อต้านอาการแพ้ต่างๆ เช่น แพ้ฝุ่นละออง ลมพิษ ลดอาการผื่นคันตามผิวหนัง ในโรคผิวหนังต่างๆ บรรเทาอาการแพ้เนื่องจากยาบางประเภท ช่วยลดลักษณะการบวมของบาดแผล อันเนื่องมาจากผลของฮีสตามิน', 'ฉีดเข้ากล้ามเนื้อ 1 cc ต่อน้ำหนักสัตว์ 5-20กิโลกรัม', NULL, NULL, NULL, '', '7', NULL, NULL, NULL, '', NULL, NULL, '', 1, 1, 0, NULL, NULL),
	(26, 'ไอเวอร์ติน', 'ไอเวอร์ติน', 'ไอเวอร์ติน', NULL, 0, 'ในน้ำยา 100 มิลลิลิตร ประกอบด้วย Ivermectin 1.0 กรัม', 'ไอเวอร์ติน เป็นยาฉีดสำหรับใช้รักษา พยาธิภายใน และพยาธิภายนอกที่ไวต่อยา Ivermectin รวมทั้งโรคเรื้อนโค  -	รักษาพยาธิภายในพยาธิตัวกลมที่กระเพาะอาหารและลำไส้ พยาธิตัวกลมที่ปอดรวมทั้งพยาธิภายนอก และโรคเรื้อน', 'ฉีด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 0, NULL, NULL),
	(27, 'อะเบ็ทเทล', 'อะเบ็ทเทล', 'อะเบ็ทเทล', NULL, 0, 'ใน 1 มิลลิลิตรประกอบด้วย อัลเบนดาโซล(Albendozole) 112.5 มิลลิกรัม', 'อะเบ็ทเทล เป็นยาถ่ายพยาธิแบบน้ำสำหรับกรอกเพื่อรักษา และควบคุมพยาธิภายใน เช่น ', 'กิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 0, NULL, NULL),
	(28, 'โซดาลเบน', 'โซดาลเบน', 'โซดาลเบน', NULL, 0, 'ในน้ำยาแขวนตะกอน 100 ซีซี ประกอบด้วยอัลเบนดาโซล (Albendazole)', 'โซดาลเบน เป็นยากำจัดพยาธิ แบบน้ำสำหรับกรอกปาก และ อัลเบนดาโซล (Albendazole) เป็นยาถ่ายพยาธิในกลุ่ม Benzimidazol, Albendazole และ Metabolites ของ Albendazole', 'กิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 0, NULL, NULL),
	(29, '1', '1', '1', NULL, 0, '1', '1', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, '1', 2, 1, 0, 0, 0);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;


-- Dumping structure for table farm2017.medicine_health
CREATE TABLE IF NOT EXISTS `medicine_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_id` int(11) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `status_treat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_id` (`medicine_id`),
  KEY `fk_status_treat_id` (`status_treat_id`),
  CONSTRAINT `fk_status_treat_id` FOREIGN KEY (`status_treat_id`) REFERENCES `status_treat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.medicine_health: ~0 rows (approximately)
DELETE FROM `medicine_health`;
/*!40000 ALTER TABLE `medicine_health` DISABLE KEYS */;
INSERT INTO `medicine_health` (`id`, `medicine_id`, `qty`, `status_treat_id`) VALUES
	(1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `medicine_health` ENABLE KEYS */;


-- Dumping structure for table farm2017.medicine_import
CREATE TABLE IF NOT EXISTS `medicine_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lot` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `import_medicine` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'นำเข้าจาก',
  `place` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สถานที่เก็บ',
  `day_mfd` date DEFAULT NULL,
  `day_exp` date DEFAULT NULL,
  `medicine_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `before_quantity` int(11) NOT NULL,
  `day` date NOT NULL COMMENT 'วันที่นำเข้า',
  `member_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 แจ้งเตือน',
  PRIMARY KEY (`id`),
  KEY `fk_medicine_in_medicine1_idx` (`medicine_id`),
  KEY `fk_medicine_import_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_medicine_import_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicine_in_medicine1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicine_in_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.medicine_import: ~5 rows (approximately)
DELETE FROM `medicine_import`;
/*!40000 ALTER TABLE `medicine_import` DISABLE KEYS */;
INSERT INTO `medicine_import` (`id`, `lot`, `quantity`, `price`, `import_medicine`, `place`, `day_mfd`, `day_exp`, `medicine_id`, `bill_id`, `before_quantity`, `day`, `member_id`, `status`) VALUES
	(1, 1, 10, 10000, '123', 'คลัง1', '2017-12-23', '2017-12-23', 25, NULL, 555, '2017-12-23', 18, 0),
	(2, NULL, 1, NULL, 'โรงยา', '', '2018-01-09', '2018-01-23', 1, NULL, 0, '2018-01-02', 18, 0),
	(3, NULL, 23, NULL, '', '', '2018-01-02', '2018-05-30', 7, NULL, 0, '2018-01-02', 18, 0),
	(4, NULL, 22, NULL, '', '', '2018-01-27', '2018-01-02', 16, NULL, 0, '2018-01-02', 18, 0),
	(5, NULL, 100, NULL, '', '', '2017-09-27', '2018-12-29', 15, NULL, 0, '2018-01-02', 18, 0);
/*!40000 ALTER TABLE `medicine_import` ENABLE KEYS */;


-- Dumping structure for table farm2017.medicine_order
CREATE TABLE IF NOT EXISTS `medicine_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `medicine_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `day` datetime NOT NULL,
  `member_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `importby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Medicine_Order_Release_Medicine1_idx` (`medicine_id`),
  KEY `fk_medicine_order_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_medicine_order_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicine_order_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Medicine_Order_Release_Medicine1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.medicine_order: ~3 rows (approximately)
DELETE FROM `medicine_order`;
/*!40000 ALTER TABLE `medicine_order` DISABLE KEYS */;
INSERT INTO `medicine_order` (`id`, `quantity`, `note`, `medicine_id`, `bill_id`, `day`, `member_id`, `price`, `importby`, `lot`) VALUES
	(20, 4, NULL, 1, NULL, '2016-12-16 00:00:00', 18, 2500, '111', 1),
	(21, 1, NULL, 2, NULL, '2017-12-30 00:00:00', 18, NULL, NULL, NULL),
	(22, 1, NULL, 7, NULL, '2018-01-01 00:00:00', 18, NULL, NULL, NULL);
/*!40000 ALTER TABLE `medicine_order` ENABLE KEYS */;


-- Dumping structure for table farm2017.medicine_qty
CREATE TABLE IF NOT EXISTS `medicine_qty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qty` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.medicine_qty: ~0 rows (approximately)
DELETE FROM `medicine_qty`;
/*!40000 ALTER TABLE `medicine_qty` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_qty` ENABLE KEYS */;


-- Dumping structure for table farm2017.medicine_release
CREATE TABLE IF NOT EXISTS `medicine_release` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `medicine_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medicine_release_medicine1_idx` (`medicine_id`),
  KEY `fk_medicine_release_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_medicine_release_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicine_release_medicine1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicine_release_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.medicine_release: ~0 rows (approximately)
DELETE FROM `medicine_release`;
/*!40000 ALTER TABLE `medicine_release` DISABLE KEYS */;
INSERT INTO `medicine_release` (`id`, `day`, `quantity`, `medicine_id`, `bill_id`, `member_id`) VALUES
	(1, '2018-01-19 00:00:00', 1, 1, NULL, 18);
/*!40000 ALTER TABLE `medicine_release` ENABLE KEYS */;


-- Dumping structure for table farm2017.member
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `first` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `last` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `id_card` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `nationlity` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zipcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'รหัสไปรษณีย์',
  `email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `alt_email` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'เมล์สำรอง',
  `image` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `question` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `answer` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `privilege_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_member_privilege1_idx` (`privilege_id`),
  CONSTRAINT `fk_member_privilege1` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.member: ~10 rows (approximately)
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `username`, `password`, `first`, `last`, `birthday`, `age`, `sex`, `id_card`, `nationlity`, `tel`, `mobile`, `fax`, `address`, `zipcode`, `email`, `alt_email`, `image`, `question`, `answer`, `privilege_id`) VALUES
	(18, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'อมรรัตน์', 'ธรรมใจ', '2015-04-22', NULL, 'ชาย', '1509901680887', NULL, '0633139979', NULL, '2295', '78 ม.8 ต.ออนเหนือ อ.แม่ออน จ.เชียงใหม่ 50130', NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, 1),
	(19, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'นายหัวหน้าพนักงาน', ' ', '2016-05-17', NULL, 'ชาย', '1560300247551', NULL, '0857242535', NULL, '2259', 'อาคารผู้โดยสาร ชั้น 6 (แถว F, ประตูทางเข้าที่ 3) 999 หมู่ 10 ถนน บางนา-ตราด ตำบลราชาเทวะ อำเภอบางพลี จังหวัดสมุทรปราการ 10540', NULL, 'chief@gmail.com', NULL, NULL, '1', '1', 7),
	(23, 'we', 'wer', 'asd', 'ads', '2016-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'เลขที่ 19 หมู่ 2 ตำบลแม่กา อำเภอเมือง จังหวัดพะเยา 56000 ', NULL, NULL, NULL, NULL, NULL, NULL, 7),
	(41, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'นายสุรเชษฐ์', 'กันทะเนตร', '2016-06-29', NULL, 'ชาย', '1560300232802', NULL, '0849502544', NULL, '054415956-5', 'เลขที่ 19 หมู่ 2 ตำบลแม่กา อำเภอเมือง จังหวัดพะเยา 56000 ', NULL, 'user2@gmail.com', NULL, NULL, '1', '1', 5),
	(42, 'doctor', 'f9f16d97c90d8c6f2cab37bb6d1f1992', 'นายสัตวแพทย์', ' ดูแลสัตว์', '2016-06-28', NULL, 'ชาย', '1560300232807', NULL, '0849502544', NULL, '-', 'เลขที่ 19 หมู่ 2 ตำบลแม่กา อำเภอเมือง จังหวัดพะเยา 56000 ', NULL, 'doctor@gmail.com', NULL, NULL, '1', '1', 2),
	(43, 'nurse', '3c4754b8297063ac255be63c0e1bb29f', 'นายสัตวบาล', ' หาญเจริญ', '2016-06-28', NULL, 'ชาย', '1560300247551', NULL, '0849502544', NULL, '-', '333/3 ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร กรุงเทพมหานคร 10900', NULL, 'nurse@gmail.com', NULL, NULL, '1', '1', 3),
	(44, 'user3', '92877af70a45fd6a2ed7fe81e1236b78', 'สมาชิก', ' ', '2016-06-15', NULL, 'ชาย', '1560300247511', NULL, '0849502544', NULL, '0544415959-5', 'เลขที่ 19 หมู่ 2 ตำบลแม่กา อำเภอเมือง จังหวัดพะเยา 56000 ', NULL, 'user3@hotmail.com', NULL, NULL, '1', '1', 7),
	(56, 'rf', 'dfg', 'sad', 'asd', '2016-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'เลขที่ 19 หมู่ 2 ตำบลแม่กา อำเภอเมือง จังหวัดพะเยา 56000 ', NULL, NULL, NULL, NULL, NULL, NULL, 7),
	(67, 'erwrw', 'wer', 'asd', 'das', '2016-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'เลขที่ 19 หมู่ 2 ตำบลแม่กา อำเภอเมือง จังหวัดพะเยา 56000 ', NULL, NULL, NULL, NULL, NULL, NULL, 2),
	(78, 'fd', 'sdf', 'sad', 'asd', '2016-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'เลขที่ 19 หมู่ 2 ตำบลแม่กา อำเภอเมือง จังหวัดพะเยา 56000 ', NULL, NULL, NULL, NULL, NULL, NULL, 5);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;


-- Dumping structure for table farm2017.misscarry
CREATE TABLE IF NOT EXISTS `misscarry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cattle_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `count_misscarry` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `day` date DEFAULT NULL,
  `note` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cause_misscary` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'สาเหตุการแท้ง',
  PRIMARY KEY (`id`),
  KEY `cattle_id` (`cattle_id`),
  KEY `member` (`member_id`),
  CONSTRAINT `FK_misscarry_cattle` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_misscarry_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.misscarry: ~2 rows (approximately)
DELETE FROM `misscarry`;
/*!40000 ALTER TABLE `misscarry` DISABLE KEYS */;
INSERT INTO `misscarry` (`id`, `cattle_id`, `member_id`, `count_misscarry`, `day`, `note`, `cause_misscary`) VALUES
	(1, 6, 18, '1', '2018-01-19', 'แท้งติดต่อ', 'เป็นโรคแท้งติดต่อ'),
	(2, 1, 18, '1', '2018-01-07', 'ajgfadykugfui', NULL);
/*!40000 ALTER TABLE `misscarry` ENABLE KEYS */;


-- Dumping structure for table farm2017.pay
CREATE TABLE IF NOT EXISTS `pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `processingfee` float DEFAULT NULL,
  `signsauction` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `worktogether_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `worktogether_id` (`worktogether_id`),
  CONSTRAINT `fk_pay_worktogether1` FOREIGN KEY (`worktogether_id`) REFERENCES `worktogether` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.pay: ~0 rows (approximately)
DELETE FROM `pay`;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;


-- Dumping structure for table farm2017.pregnant
CREATE TABLE IF NOT EXISTS `pregnant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_preg` date DEFAULT NULL,
  `date_schedule` datetime DEFAULT NULL,
  `time_preg` time DEFAULT NULL,
  `note` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `status_pregnant_id` int(11) DEFAULT NULL,
  `breeding_id` int(11) DEFAULT NULL,
  `cattlema_id` int(11) DEFAULT NULL,
  `cattle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `stat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pregnant_member1` (`member_id`),
  KEY `fk_pregnant_status_pregnant` (`status_pregnant_id`),
  KEY `fk_pregnant_breeding` (`breeding_id`),
  KEY `cattlema_id` (`cattlema_id`),
  CONSTRAINT `fk_pregnant_breeding` FOREIGN KEY (`breeding_id`) REFERENCES `breeding` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pregnant_cattle` FOREIGN KEY (`cattlema_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pregnant_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pregnant_status_pregnant` FOREIGN KEY (`status_pregnant_id`) REFERENCES `status_pregnant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.pregnant: ~6 rows (approximately)
DELETE FROM `pregnant`;
/*!40000 ALTER TABLE `pregnant` DISABLE KEYS */;
INSERT INTO `pregnant` (`id`, `date_preg`, `date_schedule`, `time_preg`, `note`, `member_id`, `status_pregnant_id`, `breeding_id`, `cattlema_id`, `cattle`, `stat`) VALUES
	(1, '2016-12-06', '2016-12-06 15:20:42', '16:41:13', '', 18, 2, 1, 1, NULL, NULL),
	(2, '2016-12-07', '2016-12-06 15:22:01', '16:41:14', '', 18, 2, 3, 9, NULL, NULL),
	(3, '2016-12-07', '2016-12-07 13:35:59', '16:41:15', '', 18, 1, 3, 2, NULL, NULL),
	(4, '2018-01-02', NULL, '16:41:17', NULL, 18, 3, 4, 1, NULL, NULL),
	(5, '2018-01-02', NULL, '16:41:16', NULL, 18, 3, 6, 1, NULL, NULL),
	(6, '2018-01-30', '2018-01-11 16:01:30', '16:41:20', '', 18, 1, 7, 9, NULL, NULL);
/*!40000 ALTER TABLE `pregnant` ENABLE KEYS */;


-- Dumping structure for table farm2017.privilege
CREATE TABLE IF NOT EXISTS `privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 NOT NULL,
  `permit_add_med` int(1) NOT NULL DEFAULT '0' COMMENT '0 ไม่มีสิทธิ์ 1 มีสิทธิ์',
  `permit_import_med` int(1) NOT NULL DEFAULT '0',
  `permit_release_med` int(1) NOT NULL DEFAULT '0',
  `permit_order_med` int(1) NOT NULL DEFAULT '0',
  `permit_add_semen` int(1) NOT NULL DEFAULT '0',
  `permit_import_semen` int(1) NOT NULL DEFAULT '0',
  `permit_release_semen` int(1) NOT NULL DEFAULT '0',
  `permit_order_semen` int(1) NOT NULL DEFAULT '0',
  `permit_add_raw` int(1) NOT NULL DEFAULT '0',
  `permit_import_raw` int(1) NOT NULL DEFAULT '0',
  `permit_release_raw` int(1) NOT NULL DEFAULT '0',
  `permit_order_raw` int(1) NOT NULL DEFAULT '0',
  `permit_add_tool` int(1) NOT NULL DEFAULT '0',
  `permit_import_tool` int(1) NOT NULL DEFAULT '0',
  `permit_release_tool` int(1) NOT NULL DEFAULT '0',
  `permit_borrow_tool` int(1) NOT NULL DEFAULT '0',
  `permit_order_tool` int(1) NOT NULL DEFAULT '0',
  `permit_setting` int(1) NOT NULL DEFAULT '0',
  `permit_sms` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.privilege: ~7 rows (approximately)
DELETE FROM `privilege`;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` (`id`, `value`, `permit_add_med`, `permit_import_med`, `permit_release_med`, `permit_order_med`, `permit_add_semen`, `permit_import_semen`, `permit_release_semen`, `permit_order_semen`, `permit_add_raw`, `permit_import_raw`, `permit_release_raw`, `permit_order_raw`, `permit_add_tool`, `permit_import_tool`, `permit_release_tool`, `permit_borrow_tool`, `permit_order_tool`, `permit_setting`, `permit_sms`) VALUES
	(1, 'ผู้ดูแลระบบ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(2, 'สัตวแพทย์', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(3, 'สัตวบาล', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(4, 'หัวหน้าพนักงาน', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(5, 'พนักงาน', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(6, 'สมาชิก', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(7, 'ยังไม่ได้อนุมัติ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;


-- Dumping structure for table farm2017.raw_material
CREATE TABLE IF NOT EXISTS `raw_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) unsigned DEFAULT NULL,
  `place` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `type_mateial_id` int(11) DEFAULT NULL,
  `unit_raw_material_id` int(11) DEFAULT NULL,
  `statusalert` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_raw_material_type_mateial1_idx` (`type_mateial_id`),
  KEY `fk_raw_material_unit_raw_material1_idx` (`unit_raw_material_id`),
  CONSTRAINT `` FOREIGN KEY (`unit_raw_material_id`) REFERENCES `unit_raw_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_type_mateial1` FOREIGN KEY (`type_mateial_id`) REFERENCES `type_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_unit_raw_material1` FOREIGN KEY (`unit_raw_material_id`) REFERENCES `unit_raw_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.raw_material: ~305 rows (approximately)
DELETE FROM `raw_material`;
/*!40000 ALTER TABLE `raw_material` DISABLE KEYS */;
INSERT INTO `raw_material` (`id`, `name`, `quantity`, `place`, `type_mateial_id`, `unit_raw_material_id`, `statusalert`) VALUES
	(1, 'อาหารข้นโปรตีน16%', 1, 'โกดัง 1', 3, 1, 1),
	(2, 'อาหารข้นโปรตีน18%', 0, NULL, 3, 1, 1),
	(3, 'อาหารข้นโปรตีน20%', 0, NULL, 3, 1, 1),
	(4, 'อาหารโครุ่น', 0, NULL, 3, 1, 1),
	(5, 'อาหารโคแห้งนม', 0, NULL, 3, 1, 1),
	(6, 'อาหารโคตัวผู้', 0, NULL, 3, 1, 1),
	(7, 'อาหารข้นโปรตีน12%', 0, NULL, 3, 1, 1),
	(8, 'อาหารข้นโปรตีน13%', 0, NULL, 3, 1, 1),
	(9, 'อาหารข้นโปรตีน14%', 0, NULL, 3, 1, 1),
	(10, 'กระถิน -ใบและกิ่งอ่อนสด', 0, '', 1, 1, 1),
	(11, 'กระถิน -กระถินป่น', 0, NULL, 2, 1, 0),
	(12, 'กระถิน -ใบแห้ง', 0, NULL, 1, 1, 0),
	(13, 'กระถินณรงค์ -ใบสด', 0, NULL, 1, 1, 0),
	(14, 'กล้วยน้ำว้า -เปลือกผลสุกสด', 0, NULL, 1, 1, 0),
	(15, 'กล้วยน้ำว้า -ใบสด', 0, NULL, 1, 1, 0),
	(16, 'กล้วยหอม -เปลือกผลสุกสด', 0, NULL, 1, 1, 0),
	(17, 'ข้าวเจ้า -แกลบ', 0, NULL, 2, 1, 0),
	(18, 'ข้าวเจ้า -ข้าวเปลือก', 0, NULL, 1, 1, 0),
	(19, 'ข้าวเจ้า -ปลายข้าว', 0, NULL, 2, 1, 0),
	(20, 'ข้าวเจ้า -ฟาง', 0, NULL, 1, 1, 0),
	(21, 'ข้าวเจ้า -ฟางหมักยูเรีย', 0, NULL, 1, 1, 0),
	(22, 'ข้าวเจ้า -รำละเอียด', 0, NULL, 2, 1, 0),
	(23, 'ข้าวเจ้า -รำสกัดน้ำมัน', 0, NULL, 2, 1, 0),
	(24, 'ข้าวเจ้า -รำหยาบ', 0, NULL, 4, 1, 0),
	(25, 'ข้าวเหนียว -ปลายข้าวเหนียว', 0, NULL, 4, 1, 0),
	(26, 'ข้าวเหนียว -ฟางข้าวเหนียว', 0, NULL, 4, 1, 0),
	(27, 'ข้าวโพดเลี้ยงสัตว์ -ฝักข้าวโพดบดแห้ง', 0, NULL, 2, 1, 0),
	(28, 'ข้าวโพดเลี้ยงสัตว์ -ต้นสดอายุ 70 วัน', 0, NULL, 4, 1, 0),
	(29, 'ข้าวโพดเลี้ยงสัตว์ -ต้นข้าวโพดหมัก', 0, NULL, 1, 1, 0),
	(30, 'ข้าวโพดเลี้ยงสัตว์ -เมล็ดบด', 0, NULL, 2, 1, 0),
	(31, 'ข้าวโพดเลี้ยงสัตว์ -corn gluten meal', 0, NULL, 4, 1, 0),
	(32, 'ข้าวโพดฟักอ่อน -ต้นหลังเก็บฝักสด', 0, NULL, 4, 1, 0),
	(33, 'ข้าวโพดฟักอ่อน -เปลือกฝักสด', 0, NULL, 4, 1, 0),
	(34, 'ข้าวโพดฟักอ่อน -เปลือกฝักแห้ง', 0, NULL, 4, 1, 0),
	(35, 'ข้าวโพดฟักอ่อน -เปลือกฝักหมัก', 0, NULL, 4, 1, 0),
	(36, 'ข้าวโพดฟักอ่อน -เกสรตัวผู้สด', 0, NULL, 4, 1, 0),
	(37, 'ข้าวโพดหวาน -ซังจากโรงงานผลิต', 0, NULL, 4, 1, 0),
	(38, 'ข้าวโพดหวาน -ต้นสด', 0, NULL, 4, 1, 0),
	(39, 'ข้าวโพดหวาน -ต้นหมัก', 0, NULL, 4, 1, 0),
	(40, 'ข้าวโพดหวาน -เปลือกฝักสด', 0, NULL, 4, 1, 0),
	(41, 'ข้าวโพดหวาน -เปลือกฝักและซังสด', 0, NULL, 4, 1, 0),
	(42, 'ข้าวโพดหวาน -เปลือกฝักและซังหมัก', 0, NULL, 4, 1, 0),
	(43, 'ข้าวโพดหวาน -DDGS', 0, NULL, 4, 1, 0),
	(44, 'ข้าวฟ่าง -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(45, 'ข้าวฟ่าง -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(46, 'ข้าวฟ่าง -ต้นสดอายุ 75 วัน', 0, NULL, 4, 1, 0),
	(47, 'ข้าวฟ่าง -ต้นสดอายุ 90 วัน', 0, NULL, 4, 1, 0),
	(48, 'ข้าวฟ่าง -ต้นสดอายุ 120 วัน', 0, NULL, 4, 1, 0),
	(49, 'ข้าวฟ่าง -ต้นข้าวฟ่างหมัก', 0, NULL, 4, 1, 0),
	(50, 'ข้าวฟ่าง -เมล็ดบด', 0, NULL, 2, 1, 0),
	(51, 'ข้าวฟ่างพืช -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(52, 'ข้าวฟ่างพืช -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(53, 'ข้าวฟ่างพืช -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(54, 'ข้าวสาลี -รำข้าวสาลี', 0, NULL, 2, 1, 0),
	(55, 'แคบ้าน -ใบสด', 0, NULL, 4, 1, 0),
	(56, 'แคฝรั่ง -ใบสด', 0, NULL, 4, 1, 0),
	(57, 'งา -กากงา', 0, NULL, 2, 1, 0),
	(58, 'เงาะ -เปลือกแห้ง', 0, NULL, 4, 1, 0),
	(59, 'เงาะ -เมล็ด', 0, NULL, 4, 1, 0),
	(60, 'จามจุรี/ก้ามปู -ใบแห้ง', 0, NULL, 4, 1, 0),
	(61, 'จามจุรี/ก้ามปู -ฝักอ่อนสด', 0, NULL, 4, 1, 0),
	(62, 'จามจุรี/ก้ามปู -ฝักแก่แห้ง', 0, NULL, 4, 1, 0),
	(63, 'เดือย -เปลือกหุ้มเมล็ด', 0, NULL, 4, 1, 0),
	(64, 'เดือย -เมล็ด', 0, NULL, 4, 1, 0),
	(65, 'ถั่วกรีนลีฟเดสโม -ต้นสด', 0, NULL, 4, 1, 0),
	(66, 'ถั่วเขียว -ต้นหลังการเก็บฝัก', 0, NULL, 4, 1, 0),
	(67, 'ถั่วเขียว -เปลือกเมล็ด สด (จากการเพาะถั่วงอก)', 0, NULL, 4, 1, 0),
	(68, 'ถั่วเขียว -เปลือกฝักแห้ง', 0, NULL, 4, 1, 0),
	(69, 'ถั่วเขียว -โปรตีนถั่วเขียว < 30%', 0, NULL, 4, 1, 0),
	(70, 'ถั่วเขียว -โปรตีนถั่วเขียว > 30%', 0, NULL, 4, 1, 0),
	(71, 'ถั่วเขียว -เมล็ดถั่วเขียวซีก', 0, NULL, 4, 1, 0),
	(72, 'ถั่วแขก -ฝัก(เปลือกฝักรวมเมล็ดแห้ง)', 0, NULL, 4, 1, 0),
	(73, 'ถั่วคนที่ดิน -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(74, 'ถั่วคาโลโปโก -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(75, 'ถั่วคาวาลเคต -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(76, 'ถั่วคาวาลเคต -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(77, 'ถั่วคาวาลเคต -ต้นแห้งอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(78, 'ถั่วคาวาลเคต -ต้นสดอายุ 75 วัน', 0, NULL, 4, 1, 0),
	(79, 'ถั่วคาวาลเคต -ต้นสดอายุ 90 วัน', 0, NULL, 4, 1, 0),
	(80, 'ถั่วคาวาลเคต -ต้นสดอายุ 120 วัน', 0, NULL, 4, 1, 0),
	(81, 'ถั่วเซนโตรซิมา -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(82, 'ถั่วท่าพระสไตโล -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(83, 'ถั่วท่าพระสไตโล -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(84, 'ถั่วท่าพระสไตโล -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(85, 'ถั่วท่าพระสไตโล -ต้นสดอายุ 75วัน', 0, NULL, 4, 1, 0),
	(86, 'ถั่วท่าพระสไตโล -ต้นสดอายุ 90 วัน', 0, NULL, 4, 1, 0),
	(87, 'ถั่วท่าพระสไตโล -ต้นสดอายุ 120 วัน', 0, NULL, 4, 1, 0),
	(88, 'ถั่วบันดี -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(89, 'ถั่วบันดี -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(90, 'ถั่วบันดี -ต้นแห้งอายุ 90 วัน', 0, NULL, 4, 1, 0),
	(91, 'ถั่วมะแฮะ -ต้นแห้งอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(92, 'ถั่วมะแฮะ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(93, 'ถั่วมะแฮะ -ต้นแห้งอายุ 75 วัน', 0, NULL, 4, 1, 0),
	(94, 'ถั่วมะแฮะ -ใบแห้ง', 0, NULL, 4, 1, 0),
	(95, 'ถั่วไมยรา -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(96, 'ถั่วไมยรา -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(97, 'ถั่วไมยรา -ต้นสดอายุ 75 วัน', 0, NULL, 4, 1, 0),
	(98, 'ถั่วลิสง -กากถั่วลิสงสกัดน้ำมัน', 0, NULL, 2, 1, 0),
	(99, 'ถั่วลิสง -กากถั่วลิสงอัดน้ำมัน', 0, NULL, 2, 1, 0),
	(100, 'ถั่วลิสง -ต้นหลังเก็บฝักแห้ง', 0, NULL, 4, 1, 0),
	(101, 'ถั่วลิสง -เปลือกฝักถั่วลิสงแห้ง', 0, NULL, 4, 1, 0),
	(102, 'ถั่วลิสงเถา -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(103, 'ถั่วลิสงเถา -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(104, 'ถั่วลิสงนา -ต้นแห้งอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(105, 'ถั่วลิสงนา -ต้นแห้งอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(106, 'ถั่วลิสงนา -ต้นแห้งอายุ 75 วัน', 0, NULL, 4, 1, 0),
	(107, 'ถั่วแลปแลป -ต้นสด', 0, NULL, 4, 1, 0),
	(108, 'ถั่วเหลือง -กากถั่วเหลืองสกัดน้ำมัน', 0, NULL, 2, 1, 0),
	(109, 'ถั่วเหลือง -กากถั่วเหลืองอัดน้ำมัน', 0, NULL, 4, 1, 0),
	(110, 'ถั่วเหลือง -กากน้ำเต้าหู้สด', 0, NULL, 4, 1, 0),
	(111, 'ถั่วเหลือง -ต้นถั่วเหลืองหลังเก็บ', 0, NULL, 4, 1, 0),
	(112, 'ถั่วเหลือง -ถั่วเหลืองไขมันเต็ม', 0, NULL, 4, 1, 0),
	(113, 'ถั่วเหลือง -เปลือกฝักถั่วเหลืองแห้ง', 0, NULL, 4, 1, 0),
	(114, 'ถั่วเหลือง -เปลือกหุ้มเมล็ดถั่ว', 0, NULL, 4, 1, 0),
	(115, 'ถั่วอัลฟัลฟ่า -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(116, 'ถั่วอัลฟัลฟ่า -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(117, 'ถั่วอัลฟัลฟ่า -ต้นสดอายุ 75วัน', 0, NULL, 4, 1, 0),
	(118, 'ถั่วฮามาด้า -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(119, 'ถั่วฮามาด้า -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(120, 'ถั่วฮามาด้า -ต้นสดอายุ 60วัน', 0, NULL, 4, 1, 0),
	(121, 'ถั่วฮามาด้า -ต้นแห้งอายุ 60วัน', 0, NULL, 4, 1, 0),
	(122, 'ทองหลาง -ใบสด', 0, NULL, 4, 1, 0),
	(123, 'ทานตะวัน -กากทานตะวันสกัดน้ำมัน', 0, NULL, 4, 1, 0),
	(124, 'ทานตะวัน -กากทานตะวันอัดน้ำมัน', 0, NULL, 4, 1, 0),
	(125, 'ทานตะวัน -ดอก', 0, NULL, 4, 1, 0),
	(126, 'ทานตะวัน -เปลือกเมล็ดบด', 0, NULL, 4, 1, 0),
	(127, 'ทานตะวัน -เมล็ดกะเทาะปลือก', 0, NULL, 4, 1, 0),
	(128, 'นุ่น -กากเมล็ดนุ่น', 0, NULL, 4, 1, 0),
	(129, 'บุหงานรา -ต้นแห้งอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(130, 'เบียร์ -กากเบียร์แห้ง', 0, NULL, 2, 1, 0),
	(131, 'เบียร์ -ส่าเบียร์แห้ง', 0, NULL, 4, 1, 0),
	(132, 'ประดู่ -ใบสด', 0, NULL, 4, 1, 0),
	(133, 'ปลาป่น -ปลาป่น1', 0, NULL, 2, 1, 0),
	(134, 'ปลาป่น -ปลาป่น2', 0, NULL, 4, 1, 0),
	(135, 'ปลาป่น -ปลาป่น3', 0, NULL, 4, 1, 0),
	(136, 'ปลาป่น -ปลาและกระดูกปลาป่น', 0, NULL, 4, 1, 0),
	(137, 'ปอสา -ใบสด', 0, NULL, 4, 1, 0),
	(138, 'ปาล์มน้ำมัน -กากเนื้อในเมล็ดปาล์ม', 0, NULL, 2, 1, 0),
	(139, 'ปาล์มน้ำมัน -กากปาล์มสกัดน้ำมัน', 0, NULL, 4, 1, 0),
	(140, 'ปาล์มน้ำมัน -กากปาล์มอัดน้ำมัน', 0, NULL, 4, 1, 0),
	(141, 'ปาล์มน้ำมัน -กากผลปาล์มอัดน้ำมัน', 0, NULL, 4, 1, 0),
	(142, 'ปาล์มน้ำมัน -ก้านทางปาล์ม', 0, NULL, 4, 1, 0),
	(143, 'ปาล์มน้ำมัน -ใบปาล์ม', 0, NULL, 4, 1, 0),
	(144, 'เปลือกหอยป่น -เปลือกหอยป่น', 0, NULL, 2, 1, 0),
	(145, 'ผักตบชวา -ใบสด', 0, NULL, 4, 1, 0),
	(146, 'ผักตบชวา -ลำต้นและใบสด', 0, NULL, 4, 1, 0),
	(147, 'ผักปลาบ -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(148, 'ฝ้าย -กากฝ้ายไม่รวมเปลือก', 0, NULL, 2, 1, 0),
	(149, 'ฝ้าย -เมล็ดฝ้าย', 0, NULL, 2, 1, 0),
	(150, 'มะขามเทศ -ส่วนใบสด', 0, NULL, 4, 1, 0),
	(151, 'มะเขือเทศ -กากมะเขือเทศแห้ง', 0, NULL, 4, 1, 0),
	(152, 'มะพร้าว -กากมะพร้าวอัดน้ำมันแห้ง', 0, NULL, 4, 1, 0),
	(153, 'มะพร้าว -กากมะพร้าวคั้นกะทิ', 0, NULL, 2, 1, 0),
	(154, 'มันแกว -เถามันแกวแห้ง', 0, NULL, 4, 1, 0),
	(155, 'มันสำปะหลัง -กากมัน', 0, NULL, 4, 1, 0),
	(156, 'มันสำปะหลัง -ใบมันแห้ง', 0, NULL, 4, 1, 0),
	(157, 'มันสำปะหลัง -ใบมันหมัก', 0, NULL, 4, 1, 0),
	(158, 'มันสำปะหลัง -เปลือกหัวมันสด', 0, NULL, 4, 1, 0),
	(159, 'มันสำปะหลัง -มันเส้น', 0, NULL, 2, 1, 0),
	(160, 'มันสำปะหลัง -มันอัดเม็ด', 0, NULL, 4, 1, 0),
	(161, 'มันสำปะหลัง -ยอดและต้นมัน', 0, NULL, 4, 1, 0),
	(162, 'มันสำปะหลัง -กากมันหลังหมัก', 0, NULL, 4, 1, 0),
	(163, 'ย่านพาโหม -ต้นสดอายุ 30-60 วัน', 0, NULL, 4, 1, 0),
	(164, 'เรปซีด -กากเรปซีด', 0, NULL, 4, 1, 0),
	(165, 'ลำไย -เมล็ด', 0, NULL, 4, 1, 0),
	(166, 'สับปะรด -จุกสด', 0, NULL, 4, 1, 0),
	(167, 'สับปะรด -ต้นสด', 0, NULL, 4, 1, 0),
	(168, 'สับปะรด -ใบ', 0, NULL, 4, 1, 0),
	(169, 'สับปะรด -เปลือกสดจากโรงงานสับปะรดกระป๋อง ', 0, NULL, 4, 1, 0),
	(170, 'สับปะรด -เปลือกอัดเม็ด', 0, NULL, 4, 1, 0),
	(171, 'สับปะรด -ไส้สับปะรดแห้ง', 0, NULL, 4, 1, 0),
	(172, 'หญ้ากรีนแพนิค -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(173, 'หญ้ากรีนแพนิค -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(174, 'หญ้ากรีนแพนิค -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(175, 'หญ้ากัมบ้า -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(176, 'หญ้ากัวเตมาลา -ต้นสด', 0, NULL, 4, 1, 0),
	(177, 'หญ้ากินนีสีม่วง -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(178, 'หญ้ากินนีสีม่วง -ต้นแห้งอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(179, 'หญ้ากินนีสีม่วง -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(180, 'หญ้ากินนีสีม่วง -ต้นแห้งอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(181, 'หญ้ากินนีสีม่วง -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(182, 'หญ้ากินนีสีม่วง -ต้นแห้งอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(183, 'หญ้าขจรจบดอก -ต้นแห้ง', 0, NULL, 4, 1, 0),
	(184, 'หญ้าขน -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(185, 'หญ้าขน -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(186, 'หญ้าขน -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(187, 'หญ้าโคไร -ต้นสด', 0, NULL, 4, 1, 0),
	(188, 'หญ้าเจ้าชู้ต้นใหญ่ -ต้นสด', 0, NULL, 4, 1, 0),
	(189, 'หญ้าชันกาด -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(190, 'หญ้าซิกแนลตั้ง -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(191, 'หญ้าซิกแนลนอน -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(192, 'หญ้าซิกแนลเลื้อย -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(193, 'หญ้าซิกแนลเลื้อย -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(194, 'หญ้าซิกแนลเลื้อย -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(195, 'หญ้าซิกแนลเลื้อย -ต้นสดอายุ 75 วัน', 0, NULL, 4, 1, 0),
	(196, 'หญ้าซูดาน -ต้นสด', 0, NULL, 4, 1, 0),
	(197, 'หญ้าเซทาเรีย -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(198, 'หญ้าเซทาเรีย -ต้นแห้งอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(199, 'หญ้าเซทาเรีย -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(200, 'หญ้าเซทาเรีย -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(201, 'หญ้าดอกแดง -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(202, 'หญ้าแดลลิส -ต้นสด', 0, NULL, 4, 1, 0),
	(203, 'หญ้าต้นติด -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(204, 'หญ้าตีนนก -ต้นสด', 0, NULL, 4, 1, 0),
	(205, 'หญ้าเนเปียร์ -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(206, 'หญ้าเนเปียร์ -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(207, 'หญ้าเนเปียร์ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(208, 'หญ้าเนเปียร์แคระ -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(209, 'หญ้าเนเปียร์แคระ -ต้นแห้งอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(210, 'หญ้าเนเปียร์แคระ -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(211, 'หญ้าเนเปียร์แคระ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(212, 'หญ้าเนเปียร์ยักษ์ -ต้นสดอายุ 15 วัน', 0, NULL, 4, 1, 0),
	(213, 'หญ้าเนเปียร์ยักษ์ -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(214, 'หญ้าเนเปียร์ยักษ์ -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(215, 'หญ้าเนเปียร์ยักษ์ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(216, 'หญ้าไนล์ -ต้นสด', 0, NULL, 4, 1, 0),
	(217, 'หญ้าบลูแพนิค -ต้นสด', 0, NULL, 4, 1, 0),
	(218, 'หญ้าบัฟเฟล -ต้นสด', 0, NULL, 4, 1, 0),
	(219, 'หญ้าบุ้ง -ต้นสด', 0, NULL, 4, 1, 0),
	(220, 'หญ้าใบมัน -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(221, 'หญ้าปล้อง -ต้นสด', 0, NULL, 4, 1, 0),
	(222, 'หญ้าปากควาย -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(223, 'หญ้าแฝก -ต้นแห้ง', 0, NULL, 4, 1, 0),
	(224, 'หญ้าพลิแคทูลั่ม -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(225, 'หญ้าพลิแคทูลั่ม -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(226, 'หญ้าพลิแคทูลั่ม -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(227, 'หญ้าแพงโกล่า -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(228, 'หญ้าแพงโกล่า -ต้นแห้งอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(229, 'หญ้าแพงโกล่า -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(230, 'หญ้าแพงโกล่า -ต้นแห้งอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(231, 'หญ้าแพงโกล่า -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(232, 'หญ้าแพรก -ต้นสด', 0, NULL, 4, 1, 0),
	(233, 'หญ้ามาการิการิ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(234, 'หญ้ามูลาโด้ -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(235, 'หญ้ามูลาโด้ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(236, 'หญ้ารูซี่ -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(237, 'หญ้ารูซี่ -ต้นหมัก', 0, NULL, 1, 1, 0),
	(238, 'หญ้ารูซี่ -ต้นสดอายุ 45 วัน', 0, NULL, 1, 1, 0),
	(239, 'หญ้ารูซี่ -ต้นแห้งอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(240, 'หญ้ารูซี่ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(242, 'หญ้าโร้ดส์ -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(243, 'หญ้าโร้ดส์ -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(244, 'หญ้าโร้ดส์ -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(245, 'หญ้าหวาย -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(246, 'หญ้าเห็บ -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(247, 'หญ้าแหวน -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(248, 'หญ้าอะตราตัม -ต้นสดอายุ 30 วัน', 0, NULL, 4, 1, 0),
	(249, 'หญ้าอะตราตัม -ต้นสดอายุ 45 วัน', 0, NULL, 4, 1, 0),
	(250, 'หญ้าอะตราตัม -ต้นสดอายุ 60 วัน', 0, NULL, 4, 1, 0),
	(251, 'หญ้าอาลาบังเอ็กซ์ -ต้นสด', 0, NULL, 4, 1, 0),
	(252, 'หญ้าเฮมิลกินนี -ต้นสด', 0, NULL, 4, 1, 0),
	(253, 'หอยเชอรี่ -เนื้อบดแห้ง', 0, NULL, 2, 1, 0),
	(254, 'หอยเชอรี่ -เปลือกรวมเนื้อบวด', 0, NULL, 4, 1, 0),
	(255, 'หางนกยูง -ใบสด', 0, NULL, 4, 1, 0),
	(256, 'หางเนย -หางเนยผง', 0, NULL, 4, 1, 0),
	(257, 'หางเนย -หางเนยผงผ่าน', 0, NULL, 4, 1, 0),
	(258, 'หางเนย -Delactose whey', 0, NULL, 4, 1, 0),
	(259, 'แห้วหมู -ต้นแห้ง', 0, NULL, 4, 1, 0),
	(260, 'อ้อย -กากน้ำตาล', 0, NULL, 2, 1, 0),
	(261, 'อ้อย -ชาน', 0, NULL, 4, 1, 0),
	(262, 'อ้อย -ใบ', 0, NULL, 4, 1, 0),
	(263, 'อ้อย -ยอดสด', 0, NULL, 4, 1, 0),
	(264, 'ยูเรีย -เกรดปุ๋ย', 0, NULL, 2, 1, 0),
	(265, 'ยูเรีย -เกรดผสมอาหาร', 0, NULL, 4, 1, 0),
	(266, 'หินปูนบด -เกรดผสมอาหาร', 0, NULL, 4, 1, 0),
	(267, 'ไดแคลเซียมฟอสเฟต -ไดแคลจากหินฟอสเฟต', 0, NULL, 4, 1, 0),
	(268, 'เกลือป่น -เกลือทะเล', 0, NULL, 4, 1, 0),
	(269, 'แร่ธาตุพรีมิกซ์ -จำหน่ายเป็นถุง', 0, NULL, 4, 1, 0),
	(270, 'แร่ธาตุผง -สูตรกรมปศุสัตว์', 0, NULL, 2, 1, 0),
	(271, 'แร่ธาตุก้อน -จำหน่ายเป็นก้อน', 0, NULL, 2, 1, 0),
	(272, 'วิตามินเอดีอี -วิตามินรวม', 0, NULL, 2, 1, 0),
	(273, 'กำมะถัน -แคลเซียมซัลเฟต', 0, NULL, 4, 1, 0),
	(274, 'กำมะถัน -โซเดียมซัลเฟต', 0, NULL, 4, 1, 0),
	(275, 'กำมะถัน -แอมโมเนียมซัลเฟต', 0, NULL, 4, 1, 0),
	(276, 'แคลเซียม -แคลเซียมคาร์บอเนต', 0, NULL, 4, 1, 0),
	(277, 'แคลเซียม -ไดแคลเซียมฟอสเฟต', 0, NULL, 4, 1, 0),
	(278, 'แคลเซียม -โมโนแคลเซ๊ยมฟอสเฟต', 0, NULL, 4, 1, 0),
	(279, 'แคลเซียม -หินปูนบด', 0, NULL, 4, 1, 0),
	(280, 'แคลเซียม -charcoal (bone back/bone char)', 0, NULL, 4, 1, 0),
	(281, 'แคลเซียม -dolomitie', 0, NULL, 4, 1, 0),
	(282, 'แคลเซียม -oystershell ,ground', 0, NULL, 4, 1, 0),
	(283, 'โคบอลต์ -โคบอลต์คาร์บอเนต', 0, NULL, 4, 1, 0),
	(284, 'ซีลีเนียม -โซเดียมซีลีไนท์', 0, NULL, 4, 1, 0),
	(285, 'โซเดียม -โซเดียมคลอไรด์', 0, NULL, 4, 1, 0),
	(286, 'โซเดียม -โซเดียมไบคาร์บอเนต', 0, NULL, 4, 1, 0),
	(287, 'โซเดียม -ไตร์โซเดียมฟอสเฟต', 0, NULL, 4, 1, 0),
	(288, 'โซเดียม -โมโนโซเดียมฟอสเฟต', 0, NULL, 4, 1, 0),
	(289, 'ทองแดง -คิวปริกซัลเฟต', 0, NULL, 4, 1, 0),
	(290, 'โพแทสเซียม -โพแทสเซียมคลอไรด์', 0, NULL, 4, 1, 0),
	(291, 'โพแทสเซียม -โพแทสเซียมไบคาร์บอเนต', 0, NULL, 4, 1, 0),
	(292, 'โพแทสเซียม -โพแทสเซียมไอโอไดต์', 0, NULL, 4, 1, 0),
	(293, 'ฟอสฟอรัส -กระดูกป่นอบ', 0, NULL, 4, 1, 0),
	(294, 'ฟอสฟอรัส -ไดแอมโมเนียมฟอสเฟต', 0, NULL, 4, 1, 0),
	(295, 'ฟอสฟอรัส -โมโนแอมโมเนียมฟอสเฟต', 0, NULL, 4, 1, 0),
	(296, 'ฟอสฟอรัส -defluorinated phosphate', 0, NULL, 4, 1, 0),
	(297, 'ฟอสฟอรัส -rock phosphate', 0, NULL, 4, 1, 0),
	(298, 'ฟอสฟอรัส -rock phosphate,  low ', 0, NULL, 4, 1, 0),
	(299, 'ฟอสฟอรัส -rock phosphate, soft ', 0, NULL, 4, 1, 0),
	(300, 'แมกนีเซียม -แมกนีเซียมคาร์บอเนต ', 0, NULL, 4, 1, 0),
	(301, 'แมกนีเซียม -แมกนีเซียมออกไซด์  ', 0, NULL, 4, 1, 0),
	(302, 'แมงกานีส -แมงกานัสออกไซด์', 0, NULL, 4, 1, 0),
	(303, 'สังกะสี - ซิงค์ซัลเฟต ', 0, NULL, 4, 1, 0),
	(304, 'สังกะสี -ซิงค์ออกไซด์ ', 0, NULL, 4, 1, 0),
	(305, 'เหล็ก -เฟอร์รัสซัลเฟต  ', 0, NULL, 4, 1, 0),
	(306, 'หญ้าแห้ง', 0, NULL, 1, 1, 0);
/*!40000 ALTER TABLE `raw_material` ENABLE KEYS */;


-- Dumping structure for table farm2017.raw_material_formula
CREATE TABLE IF NOT EXISTS `raw_material_formula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `value` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `dm` float DEFAULT NULL,
  `cp` float DEFAULT NULL,
  `tdn` float DEFAULT NULL,
  `ndf` float DEFAULT NULL,
  `vita` float DEFAULT NULL,
  `vite` float DEFAULT NULL,
  `Formula_record_id` int(11) DEFAULT NULL,
  `Formula_record2_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Formula_record_id` (`Formula_record_id`),
  KEY `Formula_record2_id` (`Formula_record2_id`),
  CONSTRAINT `fk_raw_material_formula_formularecord1` FOREIGN KEY (`Formula_record_id`) REFERENCES `formula_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_formula_formularecord21` FOREIGN KEY (`Formula_record2_id`) REFERENCES `formula_record2` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.raw_material_formula: ~2 rows (approximately)
DELETE FROM `raw_material_formula`;
/*!40000 ALTER TABLE `raw_material_formula` DISABLE KEYS */;
INSERT INTO `raw_material_formula` (`id`, `name`, `value`, `price`, `dm`, `cp`, `tdn`, `ndf`, `vita`, `vite`, `Formula_record_id`, `Formula_record2_id`) VALUES
	(1, 'ข้าว', 5, 20, 1, 2, 3, 4, 5, 6, NULL, 1),
	(2, 'ข้าวโพดเลี้ยงสัตว์ -ฝักข้าวโพดบดแห้ง', 100, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
/*!40000 ALTER TABLE `raw_material_formula` ENABLE KEYS */;


-- Dumping structure for table farm2017.raw_material_import
CREATE TABLE IF NOT EXISTS `raw_material_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lot` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `day_mfd` date DEFAULT NULL,
  `day_exp` date DEFAULT NULL,
  `import_raw` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สถานที่จัด\n\nใช้ศัพท์โรงเก็บ\n\n',
  `raw_material_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `before_quantity` int(11) DEFAULT NULL,
  `day` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_raw_material_in_raw_material1_idx` (`raw_material_id`),
  KEY `fk_raw_material_import_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_raw_material_import_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_import_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_in_raw_material1` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.raw_material_import: ~0 rows (approximately)
DELETE FROM `raw_material_import`;
/*!40000 ALTER TABLE `raw_material_import` DISABLE KEYS */;
INSERT INTO `raw_material_import` (`id`, `lot`, `quantity`, `price`, `day_mfd`, `day_exp`, `import_raw`, `place`, `raw_material_id`, `bill_id`, `before_quantity`, `day`, `member_id`, `status`) VALUES
	(1, NULL, 1, NULL, '2016-12-11', '2017-02-05', '', '', 1, NULL, 0, '2016-12-11 00:00:00', 18, 0);
/*!40000 ALTER TABLE `raw_material_import` ENABLE KEYS */;


-- Dumping structure for table farm2017.raw_material_nutrient
CREATE TABLE IF NOT EXISTS `raw_material_nutrient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Protein` float DEFAULT NULL,
  `TDN` float DEFAULT NULL,
  `NFC` float DEFAULT NULL,
  `DM` float DEFAULT NULL,
  `UIP` float DEFAULT NULL,
  `DIP` float DEFAULT NULL,
  `Ca` float DEFAULT NULL,
  `P` float DEFAULT NULL,
  `Urea` float DEFAULT NULL,
  `Cl` float DEFAULT NULL,
  `K` float DEFAULT NULL,
  `S` float DEFAULT NULL,
  `Mg` float DEFAULT NULL,
  `Zn` float DEFAULT NULL,
  `Cu` float DEFAULT NULL,
  `Mn` float DEFAULT NULL,
  `Co` float DEFAULT NULL,
  `Se` float DEFAULT NULL,
  `I` float DEFAULT NULL,
  `VitA` float DEFAULT NULL,
  `VitD` float DEFAULT NULL,
  `VitE` float DEFAULT NULL,
  `NEl` float DEFAULT NULL,
  `NEm` float DEFAULT NULL,
  `NEg` float DEFAULT NULL,
  `NDF` float DEFAULT NULL,
  `EE` float DEFAULT NULL,
  `CP` float DEFAULT NULL,
  `CF` float DEFAULT NULL,
  `Ash` float DEFAULT NULL,
  `NFE` float DEFAULT NULL,
  `ADF` float DEFAULT NULL,
  `ADL` float DEFAULT NULL,
  `DE` float DEFAULT NULL,
  `ME` float DEFAULT NULL,
  `Na` float DEFAULT NULL,
  `Fe` float DEFAULT NULL,
  `Raw_material_id` int(11) DEFAULT NULL,
  `Unit_nutrient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Raw_material_id` (`Raw_material_id`),
  KEY `Unit_nutrient_id` (`Unit_nutrient_id`),
  CONSTRAINT `fk_Raw_material_nutrient_Raw_material1` FOREIGN KEY (`Raw_material_id`) REFERENCES `raw_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Raw_material_nutrient_Unit_nutrient1` FOREIGN KEY (`Unit_nutrient_id`) REFERENCES `unit_nutrient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.raw_material_nutrient: ~305 rows (approximately)
DELETE FROM `raw_material_nutrient`;
/*!40000 ALTER TABLE `raw_material_nutrient` DISABLE KEYS */;
INSERT INTO `raw_material_nutrient` (`id`, `Date`, `Protein`, `TDN`, `NFC`, `DM`, `UIP`, `DIP`, `Ca`, `P`, `Urea`, `Cl`, `K`, `S`, `Mg`, `Zn`, `Cu`, `Mn`, `Co`, `Se`, `I`, `VitA`, `VitD`, `VitE`, `NEl`, `NEm`, `NEg`, `NDF`, `EE`, `CP`, `CF`, `Ash`, `NFE`, `ADF`, `ADL`, `DE`, `ME`, `Na`, `Fe`, `Raw_material_id`, `Unit_nutrient_id`) VALUES
	(1, '2016-08-07', 17.76, 70.04, 43.5, 88.57, 7.104, 12.6, 1.1, 0.72, 1.69, 0.6, 0.79, 0.19, 0.31, 79.6, 30.3, 81.9, 0.28, 0.41, 1.94, 4, 1.5, 50, 1.6, 0, 0, 24.1, 5.02, 17.76, 0, 0, 0, 20.19, 0, 0, 0, 0.31, 0, 1, NULL),
	(2, '2016-08-07', 20.7, 70.2, 42.9, 88.7, 7.866, 14.77, 1.2, 0.75, 1.69, 0.6, 0.91, 0.21, 0.33, 79.8, 30.8, 83.7, 0.34, 0.46, 1.94, 4, 1.5, 50, 1.6, 0, 0, 25, 4.5, 20.7, 0, 0, 0, 12.8, 0, 0, 0, 0.32, 0, 2, NULL),
	(3, '2016-08-07', 21.48, 70.8, 40.32, 88.5, 7.518, 15.91, 1.39, 0.97, 1.69, 0.64, 1.12, 0.26, 0.42, 114.2, 28.55, 113.5, 0.34, 0.57, 2.05, 4, 1.5, 50, 1.61, 0, 0, 26, 3.54, 21.48, 0, 0, 0, 15.36, 0, 0, 0, 0.34, 0, 3, NULL),
	(4, '2016-08-07', 17.52, 68.9, 39.67, 88.23, 6.13, 14.93, 1.1, 0.78, 2.27, 0.57, 0.77, 0.16, 0.26, 67.41, 31.04, 72.48, 0.26, 0.33, 1.87, 4, 1.5, 50.2, 1.57, 0, 0, 28.5, 5.1, 17.52, 0, 0, 0, 17, 0, 0, 0, 0.26, 0, 4, NULL),
	(5, '2016-08-07', 20.57, 70, 39.2, 89, 7.2, 13.72, 0.5, 0.4, 1.12, 0.32, 1.16, 0.21, 0.31, 49.5, 18.12, 74.75, 0.19, 0.46, 0.74, 107.32, 21.44, 91.44, 1.6, 0, 0, 29, 4.7, 20.57, 0, 0, 0, 17, 0, 0, 0, 0.12, 0, 5, NULL),
	(6, '2016-08-07', 20.48, 71.68, 39.05, 87.9, 7.17, 13.7, 1.2, 0.97, 1.14, 0.61, 1.02, 0.21, 0.31, 79.57, 36.07, 77.93, 0.3, 0.37, 2.02, 48.73, 9.73, 47.5, 1.54, 0, 0, 30.1, 4, 20.48, 0, 0, 0, 17.06, 0, 0, 0, 0.29, 0, 6, NULL),
	(7, '2016-08-07', 13.5, 73.9, 42, 88, 5.4, 8.45, 1.1, 0.61, 1.12, 0.37, 0.76, 0.16, 0.24, 98.3, 16.99, 43.1, 0.23, 0.42, 1.6, 4, 1.5, 50, 0, 1.76, 1.13, 31, 3.5, 13.5, 0, 0, 0, 14.37, 0, 3.26, 2.67, 0.32, 0, 7, NULL),
	(8, '2016-08-07', 14.6, 74.16, 41.9, 89, 5.84, 9.11, 1.18, 0.6, 1.12, 0.37, 0.76, 0.16, 0.24, 98.3, 16.99, 43.1, 0.23, 0.42, 1.6, 4, 1.5, 50, 0, 1.76, 1.14, 30, 4.5, 14.6, 0, 0, 0, 12.8, 0, 3.27, 2.68, 0.32, 0, 8, NULL),
	(9, '2016-08-07', 15.7, 77.3, 42.2, 88, 6.28, 9.77, 1.16, 0.74, 1.12, 0.37, 0.76, 0.16, 0.24, 98.3, 16.99, 43.1, 0.23, 0.42, 1.6, 4, 1.5, 50, 0, 1.76, 1.23, 28, 5.1, 15.7, 0, 0, 0, 8.12, 0, 3.41, 2.79, 0.32, 0, 9, NULL),
	(10, '2016-08-07', 22.9, 60, 28.1, 38.7, 5.725, 17.175, 1.07, 0.19, 0, 0, 1.84, 0.31, 0.41, 26.93, 8.84, 86.84, 0, 0, 0, 40, 7, 1, 1.35, 0.96, 0.41, 38.6, 1.1, 22.9, 0, 9.3, 0, 24.9, 8, 0, 1.8, 0.01, 0, 10, NULL),
	(11, '2016-10-27', 0, 46, 28.1, 92.4, 3.87, 9.03, 1, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 5, 0.6, 1.007, 0.83, 0.29, 48.2, 1.8, 12.9, 33.2, 9, 43.1, 39.4, 20.4, 2.03, 1.66, 0, 0, 11, NULL),
	(12, '2016-08-07', 24.4, 73, 31.7, 91.6, 7.32, 17.08, 1.79, 0.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 10, 1, 1.6685, 1.73, 1.11, 31.2, 4.5, 24.4, 12.8, 8.2, 50.1, 23.9, 9.3, 3.22, 2.64, 0, 0, 12, NULL),
	(13, '2016-10-27', 0, 61, 26.2, 28.2, 4.1, 12.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 15, 15, 1.3745, 1.34, 0.77, 42.9, 3.8, 16.4, 25.5, 10.7, 43.6, 32, 18, 2.69, 2.21, 0, 0, 13, NULL),
	(14, '2016-10-27', 0, 66, 0, 16.5, 2.92, 4.38, 0.24, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.497, 1.51, 0.91, 0, 12.2, 7.3, 12.2, 12.5, 55.8, 0, 0, 2.91, 2.39, 0, 0, 14, NULL),
	(15, '2016-10-27', 0, 66, 0, 22.2, 2.12, 3.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.497, 1.51, 0.91, 0, 6.2, 5.3, 12.7, 9.7, 66.1, 0, 0, 2.91, 2.39, 0, 0, 15, NULL),
	(16, '2016-10-27', 0, 63, 0, 10.7, 2.92, 4.38, 0.28, 0.09, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4235, 1.41, 0.83, 0, 6.8, 7.3, 10.6, 14.5, 60.8, 0, 0, 2.78, 2.28, 0, 0, 16, NULL),
	(17, '2016-10-27', 0, 52, 0, 91.9, 0.68, 1.02, 0.06, 0.02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 1.04, 0.49, 0, 0.4, 17, 38.4, 20.7, 38.8, 0, 0, 2.29, 1.88, 0, 0, 17, NULL),
	(18, '2016-10-27', 0, 73, 0, 88.9, 2.68, 4.02, 0.04, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6685, 1.96, 1.31, 0, 1.8, 6.7, 11.7, 6, 0, 0, 0, 3.39, 2.91, 0, 0, 18, NULL),
	(19, '2016-10-27', 0, 0, 73.8, 87.6, 2.34, 5.46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8645, 1.97, 1.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, NULL),
	(20, '2016-08-07', 3.6, 44, 9.3, 88.8, 2.52, 1.08, 0.32, 0.13, 0, 0.3, 0.9, 0.14, 0.12, 6, 4, 41, 4, 0, 0, 0, 0, 0, 0.958, 0.75, 0.22, 68.8, 1.6, 3.6, 32.3, 16.7, 45.8, 42.3, 3.7, 0, 0, 0, 0, 20, NULL),
	(21, '2016-08-07', 0, 55, 8.7, 57.9, 2.34, 5.46, 0.3, 0.05, 1.53571, 0.3, 0.9, 0.14, 0.12, 6, 4, 41, 4, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 77.5, 1.4, 7.8, 37.6, 16.3, 36.9, 56.7, 4.6, 2.42, 1.99, 0.2, 0, 21, NULL),
	(22, '2016-08-07', 13.6, 75, 43.2, 89.9, 6.664, 6.936, 0.07, 1.79, 0, 0, 1.41, 0, 0, 11, 13, 146, 0, 0, 0, 0, 0, 66, 1.7175, 2.12, 1.45, 18.8, 16.3, 13.6, 7.2, 8.1, 54.8, 8.9, 2.8, 3.79, 3.38, 0.07, 642, 22, NULL),
	(23, '2016-08-07', 17.3, 69, 43, 88.9, 8.477, 8.823, 0.13, 2.31, 0, 0, 0, 0, 0, 11, 13, 146, 0, 0, 0, 0, 0, 0, 1.5705, 1.6, 1, 28, 0.9, 17.3, 9.4, 10.8, 61.6, 12.1, 0, 3.04, 2.49, 0.05, 0, 23, NULL),
	(24, '2016-10-27', 0, 57, 17.5, 90.5, 1.653, 4.047, 0.12, 0.19, 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1.2765, 1.21, 0.64, 59.1, 2.5, 5.7, 34.5, 15.2, 42.1, 44.4, 0, 2.51, 2.06, 0, 0, 24, NULL),
	(25, '2016-10-27', 0, 81, 73, 88.3, 2.92, 4.38, 0.01, 0.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8645, 1.97, 1.32, 0, 0, 0, 0, 0, 0, 0, 0, 3.57, 2.93, 0, 0, 25, NULL),
	(26, '2016-10-27', 0, 43, 12.2, 87.2, 3.08, 1.32, 0.05, 0.16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9335, 0.72, 0.18, 0, 0, 0, 0, 0, 0, 0, 0, 1.9, 1.55, 0, 0, 26, NULL),
	(27, '2016-08-07', 8.2, 79, 57.4, 87.4, 3.28, 4.92, 0, 0.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 1.91, 1.27, 0, 3.1, 8.2, 6.1, 1.5, 81.1, 0, 0, 3.48, 2.86, 0, 0, 27, NULL),
	(28, '2016-10-27', 0, 57, 20.8, 21, 1.992, 6.308, 0.26, 0.19, 0, 0, 2.11, 0.08, 0.89, 24, 6, 31, 0.06, 0, 0, 7, 0.1, 0, 1.2765, 0.24, 0.13, 60.5, 1.8, 8.3, 28.8, 8.6, 52.5, 32.3, 0, 2.67, 2.24, 0.03, 229, 28, NULL),
	(29, '2016-08-07', 7.8, 65, 26, 26.2, 1.872, 5.928, 0.26, 0.17, 0, 0, 1.5, 0.08, 0.23, 21, 10, 30, 0.06, 0, 0, 5, 0.1, 0, 1.4725, 1.47, 0.88, 57.3, 2.2, 7.8, 24.2, 6.7, 59.2, 31, 0, 2.87, 2.35, 0.03, 229, 29, NULL),
	(30, '2016-08-07', 8.3, 82, 72.6, 87.4, 3.569, 4.731, 0.04, 0.28, 0, 0, 0.45, 0, 0.08, 21.6, 3.3, 4.81, 0, 0, 0, 1, 0, 25, 1.889, 2.49, 1.76, 12.9, 4.8, 8.3, 2.5, 1.4, 83, 3.8, 0.8, 4.07, 3.57, 0.01, 0, 30, NULL),
	(31, '2016-08-07', 0, 89, 10.4, 91.2, 38.936, 23.864, 0.05, 0.28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.0605, 2.21, 1.52, 0, 1.4, 62.8, 1.1, 3.6, 31.1, 0, 0, 3.92401, 3.21769, 0, 0, 31, NULL),
	(32, '2016-10-27', 0, 59, 21.5, 25.6, 2, 6, 0.36, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 62.1, 1.4, 8, 27.2, 7, 56.1, 37.4, 3.6, 2.60131, 2.13307, 0, 0, 32, NULL),
	(33, '2016-10-27', 0, 66, 23.9, 15.7, 4.6, 6.9, 0.27, 0.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.497, 1.51, 0.91, 57.8, 1.6, 11.5, 22, 5.2, 59.7, 27.2, 1.8, 2.90994, 2.38615, 0, 0, 33, NULL),
	(34, '2016-10-27', 0, 59, 16.9, 88.5, 4.8, 7.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 62.5, 2.2, 12, 24.4, 6.4, 55.1, 30.4, 3.5, 2.60131, 2.13307, 0, 0, 34, NULL),
	(35, '2016-10-27', 0, 67, 27, 11.6, 5.64, 8.46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 0, 4.5, 14.1, 29.8, 6.5, 45.1, 0, 0, 2.95403, 2.4223, 0, 0, 35, NULL),
	(36, '2016-10-27', 0, 64, 28, 19, 5.04, 7.56, 0.2, 0.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.448, 1.44, 0.86, 51.3, 2.4, 12.6, 24.9, 5.7, 54.4, 29.4, 3.3, 2.82176, 2.31384, 0, 0, 36, NULL),
	(37, '2016-10-27', 0, 59, 12.8, 25.8, 1.176, 3.724, 0.05, 0.09, 0, 0, 0.84, 0.03, 0.03, 16.42, 7.67, 10.48, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 76.1, 3.5, 4.9, 33.2, 2.7, 55.7, 39.4, 7.1, 2.6, 2.13, 0, 356.95, 37, NULL),
	(38, '2016-10-27', 0, 64, 20, 25.5, 2.15, 6.45, 0.35, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0.1, 0, 1.448, 1.44, 0.86, 61, 2.3, 8.6, 27.2, 8.1, 53.8, 34.6, 4.6, 2.82, 2.31, 0, 0, 38, NULL),
	(39, '2016-10-27', 0, 65, 21.1, 29.1, 2.125, 6.375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0.1, 0, 1.4725, 1.47, 0.88, 61.7, 2.7, 8.5, 28, 6, 0, 34.5, 3.8, 2.87, 2.35, 0, 0, 39, NULL),
	(40, '2016-10-27', 0, 60, 12.7, 20.1, 2.32, 3.48, 0.09, 0.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35, 1.31, 0.74, 76.8, 1.3, 5.8, 30.7, 3.4, 58.8, 38.4, 3.2, 2.65, 2.17, 0, 0, 40, NULL),
	(41, '2016-10-27', 0, 62, 13.1, 20.9, 2.64, 3.96, 0.04, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.399, 1.38, 0.8, 74.1, 2.8, 6.6, 12.5, 3.4, 0, 34.8, 4.2, 2.73, 2.24, 0, 0, 41, NULL),
	(42, '2016-10-27', 0, 62, 9, 20.8, 2.8, 4.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.399, 1.38, 0.8, 78.6, 2.3, 7, 11, 3.1, 0, 42.4, 0, 2.73, 2.24, 0, 0, 42, NULL),
	(43, '2016-10-27', 0, 77, 0, 87.2, 10.6, 15.9, 0.07, 0.72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.7665, 1.85, 1.22, 0, 9.3, 26.5, 9.1, 4.6, 50.5, 0, 0, 3.39, 2.78, 0, 0, 43, NULL),
	(44, '2016-10-27', 0, 57, 11, 17.3, 2.94, 6.86, 0.45, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 65.8, 1.7, 9.8, 25.2, 11.7, 51.7, 37.8, 8.2, 2.51, 2.06, 0, 0, 44, NULL),
	(45, '2016-10-27', 0, 57, 18.6, 21.1, 2.13, 4.97, 0.39, 0.27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 67.6, 1.5, 7.1, 32, 5.2, 53.6, 38.8, 6.4, 2.51, 2.06, 0, 0, 45, NULL),
	(46, '2016-10-27', 0, 47, 28.4, 31, 1.62, 3.78, 0.32, 0.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0315, 0.96, 0.41, 60.7, 1.3, 5.4, 0, 4.2, 0, 34.9, 5.2, 2.07, 1.8, 0, 0, 46, NULL),
	(47, '2016-10-27', 0, 66, 35, 30.2, 1.53, 3.57, 0.28, 0.23, 0, 0, 1.1, 0.11, 0.35, 38, 37, 90, 0.3, 0, 0, 7, 0, 0, 1.497, 1.51, 0.91, 53.7, 1.2, 5.1, 0, 5, 0, 31.4, 0, 2.91, 2.39, 0.01, 200, 47, NULL),
	(48, '2016-10-27', 0, 67, 36.2, 31.4, 1.56, 3.64, 0.32, 0.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 52.4, 1.2, 5.2, 0, 5, 0, 30.8, 0, 2.95, 2.42, 0, 0, 48, NULL),
	(49, '2016-10-27', 0, 67, 19.3, 18.2, 2.1, 6.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 64.2, 2.6, 8.4, 30.6, 5.5, 52.9, 42, 0, 2.95, 2.42, 0, 0, 49, NULL),
	(50, '2016-10-27', 9.6, 79, 72.5, 88.4, 4.704, 4.896, 0.03, 0.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 1.91, 1.27, 13.6, 2.9, 9.6, 1.8, 1.4, 84.3, 4.1, 0, 3.48, 2.86, 0, 0, 50, NULL),
	(51, '2016-10-27', 0, 0, 0, 17.7, 2.325, 6.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.9, 9.3, 31.4, 0, 0, 0, 0, 0, 0, 0, 0, 51, NULL),
	(52, '2016-10-27', 0, 0, 0, 17.8, 2.125, 6.375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.9, 8.5, 34.7, 0, 0, 0, 0, 0, 0, 0, 0, 52, NULL),
	(53, '2016-10-27', 0, 0, 0, 22.4, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.8, 8, 35.6, 0, 0, 0, 0, 0, 0, 0, 0, 53, NULL),
	(54, '2016-10-27', 16.3, 70, 41.6, 87.5, 4.727, 11.573, 0.11, 0.91, 0, 0, 1.21, 0.25, 0.35, 77, 13, 79, 0, 0, 0, 0, 0, 0, 1.595, 1.32, 1.01, 34.5, 3, 16.3, 8.5, 4.6, 67.7, 10.2, 2.5, 2.93, 2.51, 0.02, 131, 54, NULL),
	(55, '2016-10-27', 0, 35, 36.5, 17.1, 10.44, 15.66, 2.38, 0.34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.7375, 1.43, 0.84, 22.2, 4.7, 26.1, 17.4, 10.5, 41.3, 18.6, 4.3, 1.54, 2.3, 0, 0, 55, NULL),
	(56, '2016-10-27', 0, 36, 25.8, 24.8, 10.16, 15.24, 1.82, 0.41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.762, 1.25, 0.68, 35.4, 2.8, 25.4, 18, 10.6, 43.2, 30.6, 11.7, 1.59, 2.1, 0, 0, 56, NULL),
	(57, '2016-10-27', 36.6, 77, 11.5, 92.8, 14.64, 21.96, 2.16, 1.02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.7665, 2.08, 1.41, 25.6, 14.6, 36.6, 11.9, 11.7, 25.2, 19.2, 1.2, 3.39, 2.78, 0, 0, 57, NULL),
	(58, '2016-10-27', 0, 81, 87.74, 91.3, 2.84, 4.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8645, 1.97, 1.32, 0.56, 1.5, 7.1, 15.3, 3.1, 73, 0.42, 0, 3.57, 2.93, 0, 0, 58, NULL),
	(59, '2016-10-27', 0, 79, 0, 90, 3.96, 5.94, 0.55, 0.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 1.91, 1.27, 0, 26.5, 9.9, 5.6, 2, 56, 0, 0, 3.48, 2.86, 0, 0, 59, NULL),
	(60, '2016-10-27', 0, 76, 23.1, 0, 10.48, 15.72, 0.44, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.742, 1.82, 1.19, 39.1, 7.9, 26.2, 26.6, 3.7, 35.6, 32.5, 17.5, 3.35, 2.75, 0, 0, 60, NULL),
	(61, '2016-10-27', 0, 72, 22.9, 24.3, 9.48, 14.22, 0.46, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.644, 1.7, 1.08, 47, 1.9, 23.7, 21.6, 4.5, 48.3, 43.9, 23.2, 3.17, 2.6, 0, 0, 61, NULL),
	(62, '2016-10-27', 0, 71, 0, 86, 7.48, 11.22, 0.27, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6195, 1.66, 1.05, 0, 3.3, 18.7, 11.9, 3.7, 62.4, 0, 0, 3.13, 2.57, 0, 0, 62, NULL),
	(63, '2016-10-27', 0, 75, 0, 91.4, 4.68, 7.02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.7175, 1.79, 1.16, 0, 2.9, 11.7, 29.4, 0, 0, 0, 0, 3.31, 2.71, 0, 0, 63, NULL),
	(64, '2016-10-27', 0, 73, 53.8, 88, 5.8, 8.7, 0.05, 0.37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6685, 1.73, 1.11, 23.4, 6.2, 14.5, 0.9, 2.1, 76.3, 4.3, 0, 3.22, 2.64, 0, 0, 64, NULL),
	(65, '2016-10-27', 0, 58, 23.6, 20.3, 6.52, 9.78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 0.86, 0.32, 46, 3.5, 16.3, 29, 10.6, 40.6, 33.3, 5.3, 2.56, 1.7, 0, 0, 65, NULL),
	(66, '2016-10-27', 0, 42, 0, 92, 2.6, 3.9, 3.06, 0.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.909, 0.68, 0.15, 53.3, 0.5, 6.5, 38.2, 0, 0, 40.8, 0, 1.85, 1.52, 0, 0, 66, NULL),
	(67, '2016-10-27', 0, 52, 16.8, 26.1, 7.12, 10.68, 0.7, 0.27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 1.04, 0.49, 56.8, 2.8, 17.8, 25.3, 5.8, 48.3, 43.8, 0, 2.29, 1.88, 0, 0, 67, NULL),
	(68, '2016-10-27', 0, 48, 32.7, 92.7, 2.72, 4.08, 1.3, 0.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.056, 0.9, 0.35, 52.1, 0.6, 6.8, 38.3, 7.8, 46.5, 43.1, 9, 2.12, 1.74, 0, 0, 68, NULL),
	(69, '2016-10-27', 0, 66, 0, 91.4, 9.64, 14.46, 0.48, 0.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.497, 1.51, 0.91, 0, 1.2, 24.1, 18.2, 3.6, 52.9, 0, 0, 2.91, 2.39, 0, 0, 69, NULL),
	(70, '2016-10-27', 0, 86, 0, 94.9, 31.48, 47.22, 0.11, 0.76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.987, 2.12, 1.45, 0, 3.7, 78.7, 0, 7.6, 0, 0, 0, 3.79, 3.11, 0, 0, 70, NULL),
	(71, '2016-10-27', 0, 42, 25.8, 89.8, 4.08, 16.32, 0.23, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.909, 0.68, 0.15, 49, 1.4, 20.4, 0, 3.4, 0, 0, 0, 1.85, 1.52, 0, 0, 71, NULL),
	(72, '2016-10-27', 0, 46, 36.4, 89.4, 6.7, 20.1, 0.34, 0.41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.007, 0.83, 0.29, 30.2, 0.7, 26.8, 7.1, 5.9, 59.5, 16.3, 0, 2.03, 1.66, 0, 0, 72, NULL),
	(73, '2016-10-27', 0, 44, 0, 26, 5.6, 8.4, 1.17, 0.33, 0, 0, 1.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.958, 0.75, 0.22, 48.6, 0, 14, 0, 0, 0, 40.2, 16.2, 1.94, 1.59, 0, 0, 73, NULL),
	(74, '2016-10-27', 0, 57, 20.3, 36.3, 2.96, 11.84, 1.14, 0.16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 0.76, 0.23, 50.1, 3.2, 14.8, 28.8, 11.6, 41.6, 36.6, 7.1, 2.51, 1.6, 0, 0, 74, NULL),
	(75, '2016-10-27', 0, 57, 19.8, 19.9, 3.32, 9.96, 1.07, 0.24, 0, 0, 1.21, 0, 0.42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 49.8, 1.8, 16.6, 28.2, 12, 41.4, 32.9, 7.8, 2.51, 2.06, 0, 0, 75, NULL),
	(76, '2016-10-27', 0, 55, 21.1, 22.9, 3.22, 9.66, 0.94, 0.25, 0, 0, 2.08, 0.19, 0.35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 50, 1.3, 16.1, 31.5, 11.5, 39.6, 33.6, 7.2, 2.42, 1.99, 0, 0, 76, NULL),
	(77, '2016-10-27', 0, 55, 27.8, 91.4, 2.96, 8.88, 0.73, 0.22, 0, 0, 2.21, 0.19, 0.3, 34.07, 8.58, 160.84, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 49.5, 0.8, 14.8, 31.5, 7.1, 45.8, 33.6, 6.9, 2.42, 1.99, 0, 0, 77, NULL),
	(78, '2016-10-27', 0, 57, 16.2, 25, 3.16, 9.48, 1.06, 0.31, 0, 0, 2.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 56.5, 3.3, 15.8, 33.8, 8.2, 38.9, 38, 8.4, 2.51, 2.06, 0, 0, 78, NULL),
	(79, '2016-10-27', 0, 58, 22.8, 25.5, 3.14, 9.42, 0.55, 0.21, 0, 0, 2.06, 0.21, 0.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 1.06, 0.5, 52.3, 1.5, 15.7, 32.3, 7.7, 42.8, 37.3, 8.1, 2.56, 1.9, 0, 0, 79, NULL),
	(80, '2016-10-27', 0, 58, 25, 26, 2.86, 8.58, 0.74, 0.23, 0, 0, 1.8, 0.2, 0.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 1.24, 0.68, 51.3, 1.4, 14.3, 31.9, 8, 44.4, 33.6, 8.6, 2.56, 2.1, 0, 0, 80, NULL),
	(81, '2016-10-27', 0, 56, 10.6, 22, 3.84, 11.52, 0.83, 0.24, 0, 0, 1.49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 0.76, 0.23, 55.3, 2.4, 19.2, 31.5, 12.5, 34.4, 36.7, 9.7, 2.47, 1.6, 0, 0, 81, NULL),
	(82, '2016-10-27', 0, 66, 26.8, 10.9, 4.24, 12.72, 1.58, 0.37, 0, 0, 0.64, 0.27, 0.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.497, 1.51, 0.91, 39.8, 2.1, 21.2, 20.5, 10.1, 46.1, 27.9, 6.2, 2.91, 2.39, 0, 0, 82, NULL),
	(83, '2016-10-27', 0, 56, 24.5, 25.4, 3.18, 9.54, 1.36, 0.25, 0, 0, 2.51, 0.15, 0.44, 30.89, 7.95, 146.14, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 50.8, 1.2, 15.9, 25.5, 7.6, 49.8, 36.2, 8.5, 2.47, 2.02, 0.01, 0, 83, NULL),
	(84, '2016-10-27', 0, 57, 17.1, 26.6, 3.16, 9.48, 1.55, 0.41, 0, 0, 3.01, 0.29, 0.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 58.8, 0.9, 15.8, 30.3, 7.4, 45.6, 42.5, 9.4, 2.51, 2.06, 0, 0, 84, NULL),
	(85, '2016-10-27', 0, 54, 15.8, 26.9, 2.9, 8.7, 1, 0.32, 0, 0, 2.29, 0, 0.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 61.2, 1, 14.5, 38.1, 7.5, 38.9, 43.1, 9.2, 2.38, 1.95, 0, 0, 85, NULL),
	(86, '2016-10-27', 0, 54, 20.8, 27, 2.84, 8.52, 0.86, 0.3, 0, 0, 2.5, 0.24, 0.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 54.8, 1.5, 14.2, 35.8, 8.7, 39.7, 40, 8, 2.38, 1.95, 0, 0, 86, NULL),
	(87, '2016-10-27', 0, 57, 28.3, 27.4, 2.72, 8.16, 0.21, 0.17, 0, 0, 1.65, 0.1, 0.41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 50.4, 1.9, 13.6, 35.6, 5.8, 43.1, 37.9, 7.2, 2.51, 2.06, 0, 0, 87, NULL),
	(88, '2016-10-27', 0, 56, 0, 12.6, 3.54, 10.62, 0.88, 0.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 47.1, 0, 17.7, 0, 0, 0, 32.6, 7.1, 2.47, 2.02, 0, 0, 88, NULL),
	(89, '2016-10-27', 0, 55, 18.9, 18.9, 4.18, 12.54, 1.33, 0.26, 0, 0, 2.36, 0, 0.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 44.5, 1.6, 20.9, 30.6, 14.1, 32.8, 31.3, 6.4, 2.42, 1.99, 0, 0, 89, NULL),
	(90, '2016-10-27', 0, 53, 24.8, 0, 2.98, 8.94, 0.97, 0.24, 0, 0, 1.86, 0, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1785, 1.07, 0.52, 49.1, 1.3, 14.9, 31.5, 9.9, 42.4, 33.6, 8.5, 2.34, 1.92, 0, 0, 90, NULL),
	(91, '2016-10-27', 0, 59, 20.2, 0, 5.125, 15.375, 0.6, 0.23, 0, 0, 1.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 49.4, 4.8, 20.5, 0, 5.1, 0, 33.8, 12.7, 2.6, 2.13, 0, 0, 91, NULL),
	(92, '2016-10-27', 0, 56, 16.1, 35.9, 4.9, 14.7, 0.75, 0.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 0.76, 0.23, 54, 5.3, 19.6, 0, 5, 0, 34.7, 13.5, 2.47, 1.6, 0, 0, 92, NULL),
	(93, '2016-10-27', 0, 54, 15.2, 0, 4.175, 12.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 57.8, 5, 16.7, 0, 5.3, 0, 35, 14, 2.38, 1.95, 0, 0, 93, NULL),
	(94, '2016-10-27', 0, 59, 10.2, 94.1, 4.8, 14.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 56.4, 7.1, 19.2, 22, 7.1, 44.7, 23.5, 0, 2.6, 2.13, 0, 0, 94, NULL),
	(95, '2016-10-27', 0, 0, 34.1, 27.1, 3.56, 14.24, 0.95, 0.15, 0, 0, 2.41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 39.9, 2.1, 17.8, 0, 6.1, 0, 27.5, 9.8, 2.42, 1.99, 0, 0, 95, NULL),
	(96, '2016-10-27', 0, 0, 29.3, 32.3, 3.28, 13.12, 1, 0.2, 0, 0, 1.48, 0.43, 0.43, 23.06, 5.41, 49.45, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 44.6, 2.3, 16.4, 0, 7.4, 0, 32.2, 10.8, 2.38, 1.95, 0.02, 51.37, 96, NULL),
	(97, '2016-10-27', 0, 0, 25.7, 37.9, 3.12, 12.48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1785, 1.07, 0.52, 48.1, 2.3, 15.6, 0, 8.3, 0, 38.1, 13.7, 2.34, 1.92, 0, 0, 97, NULL),
	(98, '2016-08-07', 43.5, 73, 31.3, 91.6, 13.485, 30.015, 0.41, 0.71, 0, 0, 1.15, 0.33, 0.25, 128, 17, 0, 0, 0, 0, 0, 0, 0, 1.6685, 1.9, 1.28, 17, 0.8, 43.5, 12, 7.4, 36.3, 13.6, 0, 3.22, 2.64, 0.1, 0, 98, NULL),
	(99, '2016-08-07', 44.4, 84, 23.5, 92.8, 13.764, 30.636, 0.23, 0.63, 0, 0, 1.25, 0.29, 0.31, 35, 16, 0, 0, 0, 0, 0, 0, 0, 1.938, 1.82, 1.32, 16, 8.3, 44.4, 8.6, 7.8, 31, 0, 0, 3.7, 3.04, 0.23, 0, 99, NULL),
	(100, '2016-10-27', 0, 0, 23, 86.6, 5.32, 7.98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 51.2, 2.1, 13.3, 28.7, 10.4, 45.5, 42.1, 6.6, 2.42, 1.99, 0, 0, 100, NULL),
	(101, '2016-10-27', 0, 0, 8.1, 89, 3.36, 5.04, 0.35, 0.08, 0, 0, 0, 0.1, 0.28, 24, 18, 7, 0, 0, 0, 0, 0, 0, 0.958, 0.75, 0.22, 76.5, 1, 8.4, 57.6, 6, 27, 68, 0, 1.94, 1.59, 0.05, 9, 101, NULL),
	(102, '2016-10-27', 0, 0, 30.7, 23.4, 3.08, 9.24, 1.5, 0.36, 0, 0, 1.79, 0.19, 0.87, 45.02, 8.81, 118.9, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 42.7, 0.8, 15.4, 0, 10.4, 0, 30.3, 7.3, 2.38, 1.95, 0.03, 722.79, 102, NULL),
	(103, '2016-10-27', 0, 0, 29.9, 29, 11.68, 8.76, 1.84, 0.26, 0, 0, 2.07, 0.23, 0.53, 40.76, 8.61, 145.53, 0, 0, 0, 0, 0, 0, 1.35, 1.31, 0.74, 42.7, 0.7, 14.6, 21.8, 12.1, 50.8, 34.4, 8.4, 2.65, 2.17, 0.03, 217.99, 103, NULL),
	(104, '2016-10-27', 0, 0, 25.8, 0, 5.19, 12.11, 0.93, 0.13, 0, 0, 1.33, 0.1, 0.58, 0, 5.84, 65.15, 0, 0, 0, 0, 0, 0, 1.301, 1.24, 0.68, 45, 2.1, 17.3, 24, 9.8, 46.8, 31.8, 8, 2.56, 2.1, 0.08, 468.66, 104, NULL),
	(105, '2016-10-27', 0, 0, 24.5, 0, 4.95, 11.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 48.3, 1.7, 16.5, 26.6, 9, 46.2, 34.4, 10.4, 2.51, 2.06, 0, 0, 105, NULL),
	(106, '2016-10-27', 0, 0, 15.9, 0, 3.9, 9.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 58.8, 1.3, 13, 26.9, 11, 47.8, 46.7, 10.3, 2.51, 2.06, 0, 0, 106, NULL),
	(107, '2016-10-27', 0, 0, 15.2, 18.2, 7.4, 11.1, 1.22, 0.27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 0.64, 0.11, 51.3, 3.7, 18.5, 29.7, 11.3, 36.8, 0, 0, 1.8, 1.48, 0, 0, 107, NULL),
	(108, '2016-08-07', 47, 82, 30.8, 88.5, 16.45, 30.55, 0.34, 0.69, 0, 0, 2.2, 0.47, 0.28, 64, 23, 32, 0, 0, 0, 0, 0, 0, 1.889, 2.07, 1.58, 14.5, 1.2, 47, 5.3, 6.5, 40, 9, 2.9, 3.62, 2.96, 0.04, 133, 108, NULL),
	(109, '2016-10-27', 0, 0, 19.5, 90.7, 15.995, 29.705, 0.43, 0.52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.036, 2.18, 1.5, 17.2, 10.9, 45.7, 7.6, 6.7, 29.1, 13.3, 0, 3.88, 3.18, 0, 0, 109, NULL),
	(110, '2016-10-27', 0, 0, 29.9, 12.3, 12.12, 18.18, 0.54, 0.36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 1.76, 1.14, 25.5, 9.1, 30.3, 12.9, 5.2, 42.5, 18.9, 1.6, 3.23, 2.85, 0, 0, 110, NULL),
	(111, '2016-10-27', 0, 0, 26.1, 86.8, 2.8, 4.2, 1.43, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 0.63, 0.15, 57.4, 1.9, 7, 35.1, 7.6, 48.4, 42.1, 8.7, 1.85, 1.02, 0, 0, 111, NULL),
	(112, '2016-10-27', 0, 0, 24.5, 90.9, 22.816, 13.984, 0.26, 0.55, 0, 0, 1.76, 0, 0.24, 53, 13.6, 38.6, 0, 0, 0, 0, 0, 0, 2.2565, 2.44, 1.72, 14, 19.8, 36.8, 6.9, 4.9, 31.6, 4.8, 0, 4.28, 3.51, 0.02, 159, 112, NULL),
	(113, '2016-10-27', 0, 0, 25.4, 89.8, 2.48, 3.72, 0.94, 0.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 1.13, 0.57, 58.9, 1.6, 6.2, 34, 7.9, 50.3, 44.9, 8.5, 2.41, 1.98, 0, 0, 113, NULL),
	(114, '2016-10-27', 0, 0, 20.1, 89.5, 4.72, 7.08, 0.49, 0.13, 0, 0, 0, 0, 20.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 62.3, 1.6, 11.8, 36.3, 4.2, 46.1, 46.3, 0, 2.47, 2.02, 0.03, 0, 114, NULL),
	(115, '2016-10-27', 0, 58, 0, 18, 1.37, 18.955, 1.05, 0.35, 0, 0, 2.14, 0.48, 0.27, 0, 11, 41, 0, 0, 0, 0, 0, 0, 1.301, 1.52, 0.92, 0, 2.6, 22.3, 16.2, 15.7, 43.2, 31, 8.2, 2.92, 2.5, 0.21, 111, 115, NULL),
	(116, '2016-10-27', 0, 61, 0, 24, 3.165, 17.935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3745, 1.33, 0.76, 0, 3.1, 21.1, 25.7, 14.8, 35.3, 21.4, 0.8, 2.67, 2.25, 0, 0, 116, NULL),
	(117, '2016-10-27', 0, 57, 32.5, 25.7, 2.835, 16.065, 1.87, 0.36, 0, 0, 2.21, 0.36, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.47, 0.89, 34.4, 3.5, 18.9, 29.7, 10.7, 37.2, 22.9, 5.1, 2.87, 2.45, 0, 260, 117, NULL),
	(118, '2016-10-27', 0, 64, 22.4, 25.8, 3.276, 14.924, 1.38, 0.23, 0, 0, 1.96, 0.34, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.448, 1.44, 0.86, 48, 1.5, 18.2, 22, 9.9, 48.4, 27.6, 5.7, 2.82, 2.31, 0.05, 0, 118, NULL),
	(119, '2016-10-27', 0, 62, 23.7, 26.5, 2.862, 13.038, 1.62, 0.2, 0, 0, 1.68, 0.35, 0.36, 30.38, 7.73, 125.98, 0, 0, 0, 0, 0, 0, 1.399, 1.38, 0.8, 50.6, 1.3, 15.9, 25.4, 8.5, 48.9, 31.6, 6.6, 2.73, 2.24, 0.03, 518.15, 119, NULL),
	(120, '2016-10-27', 0, 61, 22.6, 27, 2.754, 12.546, 1.61, 0.19, 0, 0, 1.48, 0.24, 0.36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3745, 1.34, 0.77, 53, 1.3, 15.3, 28.1, 7.8, 47.5, 34.5, 7.3, 2.69, 2.21, 0.05, 0, 120, NULL),
	(121, '2016-10-27', 0, 53, 21.2, 87.9, 3.04, 12.16, 1.32, 0.13, 0, 0, 0.88, 0.09, 0.48, 33.7, 5.83, 208.2, 0, 0, 0, 0, 0, 0, 1.1785, 1.34, 0.76, 54.9, 1.4, 15.2, 38.1, 7.3, 38, 39.1, 9.2, 2.34, 2.2, 0, 325.87, 121, NULL),
	(122, '2016-10-27', 0, 59, 19.2, 29, 3.88, 15.52, 2.36, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.34, 0.76, 46.5, 4.5, 19.4, 29, 10.4, 36.7, 35.9, 8.7, 2.6, 2.2, 0, 0, 122, NULL),
	(123, '2016-10-27', 0, 62, 21.1, 90.9, 8.788, 25.012, 0.43, 1.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.399, 1.38, 0.8, 36.2, 1.7, 33.8, 21.5, 7.2, 35.8, 32, 5.3, 2.73, 2.24, 0, 0, 123, NULL),
	(124, '2016-10-27', 0, 56, 27.8, 91.5, 5.928, 16.872, 0.6, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.17, 0.61, 35, 7.2, 22.8, 30.8, 7.2, 32, 0, 0, 2.46, 2.04, 0, 0, 124, NULL),
	(125, '2016-10-27', 0, 55, 35.7, 87.8, 3.08, 4.62, 3.02, 0.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 38.5, 3.8, 7.7, 20.4, 14.3, 53.8, 35.2, 0, 2.42, 1.99, 0, 0, 125, NULL),
	(126, '2016-10-27', 0, 54, 0, 90.8, 3.32, 4.98, 0.45, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 0, 2.1, 8.3, 43.9, 7.5, 38.2, 0, 0, 2.38, 1.95, 0, 0, 126, NULL),
	(127, '2016-10-27', 0, 90, 0, 94.6, 8.12, 12.18, 0.29, 0.53, 0, 0, 0.72, 0, 0.39, 73, 25, 23, 0, 0, 0, 0, 0, 0, 2.085, 2.95, 2.13, 0, 41.4, 20.3, 13.8, 4.2, 20.3, 0, 0, 5.08, 4.68, 0.29, 54, 127, NULL),
	(128, '2016-10-27', 0, 62, 17.1, 90.3, 14.036, 17.864, 0.38, 1.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.399, 1.25, 0.68, 36.2, 6.4, 31.9, 24.7, 8.4, 28.6, 32.1, 16.3, 2.57, 2.14, 0, 0, 128, NULL),
	(129, '2016-10-27', 0, 57, 27.5, 89.6, 4.96, 7.44, 1.38, 0.72, 0, 0, 2.2, 0, 0.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 46.8, 3.5, 12.4, 29.2, 9.8, 45.1, 28.4, 0, 2.51, 2.06, 0, 0, 129, NULL),
	(130, '2016-08-07', 25, 70, 10.8, 91.3, 16.5, 8.5, 0.36, 0.47, 0, 0, 0.04, 0.21, 0.23, 104, 18.6, 53, 0, 0, 0, 0, 0, 0, 1.595, 1.79, 1.16, 50.7, 5.7, 25, 17, 7.8, 44.5, 22.8, 3.3, 3.17, 2.71, 0.06, 234, 130, NULL),
	(131, '2016-10-27', 0, 66, 1.6, 91.3, 25.805, 13.895, 0.26, 1.06, 0, 0, 1.79, 0.45, 0.27, 41, 35, 6, 0, 0, 0, 0, 0, 0, 1.497, 1.95, 1.3, 51, 0.3, 39.7, 3.5, 7.4, 49.1, 0, 0, 3.48, 2.9, 0.08, 117, 131, NULL),
	(132, '2016-10-27', 0, 67, 29.8, 36.7, 9.4, 14.1, 1.72, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 36.1, 2, 23.5, 21.7, 8.6, 44.2, 27.4, 9.4, 2.95, 2.42, 0, 0, 132, NULL),
	(133, '2016-08-07', 57.2, 79, 4.6, 92.1, 34.32, 22.88, 6.78, 3.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 1.91, 1.27, 3, 10.9, 57.2, 0.7, 24.3, 6.9, 1.4, 6.3, 3.48, 2.86, 0, 0, 133, NULL),
	(134, '2016-10-27', 0, 79, 3.6, 91.9, 37.08, 24.72, 5.86, 3.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 2.02, 1.37, 3, 9.3, 61.8, 0.7, 22.3, 5.9, 0, 0, 3.47, 2.99, 0, 0, 134, NULL),
	(135, '2016-10-27', 0, 80, 0.4, 92.1, 40.68, 27.12, 5.16, 2.92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84, 2.12, 1.45, 3, 8.5, 67.8, 0.6, 20.3, 2.8, 0, 0, 3.59, 3.11, 0, 0, 135, NULL),
	(136, '2016-10-27', 0, 72, 5.4, 91.7, 31.2, 20.8, 8.49, 3.02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.644, 1.7, 1.08, 3, 8.1, 52, 1.2, 31.5, 7.2, 0, 0, 3.17448, 2.6, 0, 0, 136, NULL),
	(137, '2016-10-27', 0, 70, 0, 23, 5.75, 17.25, 2.97, 0.29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.595, 1.63, 1.03, 0, 4.4, 23, 10.8, 13.6, 48.2, 0, 0, 3.09, 2.53, 0, 0, 137, NULL),
	(138, '2016-08-07', 16.6, 79, 11.6, 91.3, 10.956, 5.644, 0.38, 0.56, 0, 0, 0, 0, 0.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 1.91, 1.27, 59.7, 5.6, 16.6, 8.7, 6.5, 62.6, 41.9, 0, 3.48, 2.86, 0, 0, 138, NULL),
	(139, '2016-10-27', 0, 66, 20.5, 92.8, 6.468, 3.332, 0.48, 0.37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.497, 1.51, 0.91, 51.2, 12.3, 9.8, 25.4, 6.2, 46.3, 36.3, 0, 2.91, 2.39, 0, 0, 139, NULL),
	(140, '2016-10-27', 0, 68, 4.4, 93.3, 10.362, 5.338, 0.34, 0.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.546, 1.57, 0.97, 67.3, 8, 15.7, 20.7, 4.6, 51, 0, 0, 3, 2.46, 0, 0, 140, NULL),
	(141, '2016-10-27', 0, 45, 29.3, 87.3, 4.026, 2.074, 0.41, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9825, 0.79, 0.25, 54.5, 7.2, 6.1, 40.4, 2.9, 43.4, 43.3, 0, 1.98, 1.63, 0, 0, 141, NULL),
	(142, '2016-10-27', 0, 70, 0, 88.3, 1.584, 0.816, 0.67, 0.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.595, 1.63, 1.03, 0, 39, 2.4, 0.2, 3.9, 54.5, 0, 0, 3.09, 2.53, 0, 0, 142, NULL),
	(143, '2016-10-27', 0, 53, 0, 89.9, 0.792, 0.408, 1.05, 0.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1785, 1.07, 0.52, 0, 2.5, 1.2, 24.2, 10.4, 61.7, 0, 0, 2.34, 1.92, 0, 0, 143, NULL),
	(144, '2016-08-07', 0.3, 0, 0, 96.4, 0.12, 0.18, 30.54, 0.03, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3, 0.9, 96.9, 1.9, 0, 0, 0, 0, 0, 0, 144, NULL),
	(145, '2016-10-27', 0, 59, 0, 12, 6.8, 10.2, 2.03, 0.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 0, 1.8, 17, 18.1, 16.3, 46.8, 0, 0, 2.6, 2.13, 0, 0, 145, NULL),
	(146, '2016-10-27', 0, 48, 0, 8.1, 4.92, 7.38, 2.06, 0.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.056, 0.9, 0.35, 0, 2.4, 12.3, 27.3, 19.4, 38.6, 0, 0, 2.12, 1.74, 0, 0, 146, NULL),
	(147, '2016-10-27', 0, 40, 15.1, 18, 7.28, 10.92, 4.1, 0.31, 0, 0, 4.4, 0, 0.4, 49.6, 15.5, 493, 0, 0, 0, 0, 0, 0, 0.86, 0.6, 0.08, 46.6, 2.9, 18.2, 47.6, 17.2, 14.1, 33.5, 9, 1.76, 1.45, 0, 586.9, 147, NULL),
	(148, '2016-08-07', 46.7, 78, 22, 90.2, 18.68, 28.02, 0.22, 1.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.791, 1.88, 1.24, 17, 5.8, 46.7, 6.8, 8.5, 32.2, 11.2, 0, 3.44, 2.82, 0, 0, 148, NULL),
	(149, '2016-08-07', 19.8, 96, 17.6, 91.1, 5.94, 13.86, 0.16, 0.6, 0, 0, 1.91, 1.91, 0.38, 42, 6, 26, 0, 0, 0, 0, 0, 0, 2.232, 1.9, 1.26, 41.7, 16.7, 19.8, 29.6, 4.2, 29.7, 35.2, 4.2, 3.46, 3.05, 0, 303, 149, NULL),
	(150, '2016-10-27', 0, 67, 29.6, 29.1, 8.4, 12.6, 1.78, 0.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 33.8, 4.8, 21, 18.1, 10.8, 45.3, 29.3, 11, 2.95, 2.42, 0, 0, 150, NULL),
	(151, '2016-10-27', 0, 56, -0.2, 92.5, 8.32, 12.48, 0.38, 0.61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.24, 0.68, 62.9, 11.2, 20.8, 34.5, 5.3, 28.2, 48.6, 0, 2.56, 2.1, 0, 0, 151, NULL),
	(152, '2016-10-27', 0, 82, 17.1, 92.3, 10.773, 6.327, 0.26, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.889, 2, 1.35, 47.4, 11.7, 17.1, 11.6, 6.7, 52.9, 31.3, 0, 3.62, 2.96, 0.04, 0, 152, NULL),
	(153, '2016-08-07', 6.5, 74, 10.5, 91.3, 3.705, 2.795, 0.47, 0.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.693, 1.76, 1.14, 53.8, 26.8, 6.5, 12.4, 2.4, 51.9, 38.2, 0, 3.26, 2.68, 0, 0, 153, NULL),
	(154, '2016-10-27', 0, 67, 20.7, 91.5, 6.87, 16.03, 1.81, 0.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 39.5, 1.7, 22.9, 0, 15.2, 0, 30.1, 0, 2.95, 2.42, 0, 0, 154, NULL),
	(155, '2016-10-27', 0, 71, 51.8, 87.6, 1.008, 2.072, 0.7, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6195, 1.66, 1.05, 39.5, 0.3, 2.8, 15.1, 5.6, 76.2, 29.5, 0, 3.13, 2.57, 0, 0, 155, NULL),
	(156, '2016-10-27', 0, 69, 22.5, 90.6, 5.55, 16.65, 2.05, 0.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5705, 1.71, 1.1, 41.4, 5.6, 22.2, 19.7, 8.3, 44.2, 31.3, 7.4, 3.2, 2.78, 0, 0, 156, NULL),
	(157, '2016-10-27', 0, 80, 28.1, 24.9, 2.78, 11.12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84, 1.94, 1.3, 37.3, 11, 13.9, 17.6, 9.7, 47.8, 23, 6.5, 3.53, 2.89, 0, 0, 157, NULL),
	(158, '2016-10-27', 0, 66, 48.4, 37.4, 1.72, 2.58, 0.51, 0.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.497, 1.51, 0.91, 38.8, 0.9, 4.3, 13.6, 7.6, 73.6, 26.6, 0, 2.91, 2.39, 0, 0, 158, NULL),
	(159, '2016-08-07', 2.3, 79, 83.3, 89.8, 0.805, 1.495, 0.1, 0.1, 0, 0, 0.92, 0, 0.09, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8155, 2.3, 1.6, 10.1, 0.5, 2.3, 3, 3.8, 90.4, 5.7, 2.2, 4.06, 3.65, 0.02, 0, 159, NULL),
	(160, '2016-10-27', 0, 77, 75.7, 89, 0.936, 1.664, 0.27, 0.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.7665, 1.85, 1.22, 16.5, 0.6, 2.6, 5.9, 4.6, 86.3, 8.6, 0, 3.39, 2.78, 0, 0, 160, NULL),
	(161, '2016-10-27', 0, 60, 25.2, 18.2, 5.22, 9.28, 2.42, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35, 1.31, 0.74, 47.3, 3.6, 14.5, 25.6, 9.4, 46.9, 29.6, 0, 2.65, 2.17, 0, 0, 161, NULL),
	(162, '2016-10-27', 0, 72, 51.7, 30, 1.6, 2.4, 0.67, 0.09, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.644, 1.7, 1.08, 38.6, 0.4, 4, 12.9, 5.3, 77.4, 24.3, 0, 3.17, 2.6, 0, 0, 162, NULL),
	(163, '2016-10-27', 0, 58, 14.6, 26.8, 5.96, 8.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 0.86, 0.32, 48.5, 1.7, 14.9, 0, 20.3, 0, 38.5, 10.7, 2.56, 1.7, 0, 0, 163, NULL),
	(164, '2016-10-27', 0, 75, 35.8, 90.5, 12.16, 25.84, 0.84, 1.02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.7175, 1.79, 1.16, 16.5, 0.8, 38, 9.4, 8.9, 42.9, 16, 0, 3.31, 2.71, 0.05, 0, 164, NULL),
	(165, '2016-10-27', 0, 80, 71.9, 65.1, 2.92, 4.38, 0.13, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84, 1.94, 1.3, 17, 2, 7.3, 6.5, 1.8, 82.4, 0, 0, 3.53, 2.89, 0, 0, 165, NULL),
	(166, '2016-10-27', 0, 64, 28.4, 19, 3.8, 5.7, 0.69, 0.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.448, 1.44, 0.86, 51.2, 1.5, 9.5, 17.7, 9.4, 61.9, 27.2, 3.2, 2.82, 2.31, 0, 0, 166, NULL),
	(167, '2016-10-27', 0, 64, 41.2, 47.8, 1.84, 2.76, 0.53, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.448, 1.44, 0.86, 45, 0.8, 4.6, 16.3, 8.4, 69.9, 23.2, 2.2, 2.82, 2.31, 0, 0, 167, NULL),
	(168, '2016-10-27', 0, 65, 39, 0, 2.6, 3.9, 0.68, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4725, 1.47, 0.88, 46.6, 2, 6.5, 19.7, 5.9, 65.9, 25.8, 3.6, 2.87, 2.35, 0, 0, 168, NULL),
	(169, '2016-10-27', 0, 64, 28.5, 14.2, 2.28, 3.42, 0.44, 0.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.448, 1.44, 0.86, 56.9, 1.2, 5.7, 17.3, 7.7, 68.1, 29.9, 2.7, 2.82, 2.31, 0, 0, 169, NULL),
	(170, '2016-10-27', 0, 62, 0, 87, 1.4, 2.1, 0.23, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.399, 1.38, 0.8, 0, 2.7, 3.5, 15.9, 4.4, 73.5, 0, 0, 2.73, 2.24, 0, 0, 170, NULL),
	(171, '2016-10-27', 0, 74, 0, 87.1, 0.76, 1.14, 0.06, 0.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.693, 1.76, 1.14, 0, 1.5, 1.9, 8.5, 2.3, 85.8, 0, 0, 3.26, 2.68, 0, 0, 171, NULL),
	(172, '2016-10-27', 0, 55, 12.9, 24.9, 0.92, 8.28, 0.51, 0.33, 0, 0, 2.55, 0.24, 0.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.25, 0.68, 65.2, 1.4, 9.2, 28.5, 11.3, 49.6, 36.8, 3.7, 2.42, 2.1, 0.58, 0, 172, NULL),
	(173, '2016-10-27', 0, 54, 14.2, 28.5, 0.76, 6.84, 0.46, 0.31, 0, 0, 2.78, 0.16, 0.18, 21.83, 10.64, 124.29, 0, 0, 0, 0, 0, 0, 1.203, 1.06, 0.5, 66.1, 1.4, 7.6, 29.5, 10.7, 50.8, 38.7, 4.3, 2.38, 1.9, 0.64, 0, 173, NULL),
	(174, '2016-10-27', 0, 53, 14.8, 31.1, 0.65, 5.85, 0.41, 0.27, 0, 0, 2.35, 0.19, 0.17, 48.88, 4.19, 253.9, 0, 0, 0, 0, 0, 0, 1.1785, 1.07, 0.52, 67.2, 1.4, 6.5, 30.8, 10.1, 51.2, 39.9, 4.6, 2.34, 1.92, 0.54, 95.44, 174, NULL),
	(175, '2016-10-27', 0, 48, 15, 25.9, 0.71, 6.39, 0.43, 0.16, 0, 0, 1.78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.056, 0.76, 0.23, 72.1, 1.4, 7.1, 0, 4.4, 0, 42.6, 6.2, 2.12, 1.6, 0, 0, 175, NULL),
	(176, '2016-10-27', 0, 57, 13.5, 23.4, 0.99, 8.91, 0.22, 0.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 65.6, 1.7, 9.9, 29, 9.3, 50.1, 37.3, 0, 2.51, 2.06, 0, 0, 176, NULL),
	(177, '2016-10-27', 0, 51, 8.8, 21.3, 1.545, 8.755, 0.36, 0.11, 0, 0, 1.34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1295, 1.09, 0.54, 68.3, 1.5, 10.3, 33.3, 11.1, 45.4, 39.5, 3.1, 2.36, 2, 0, 0, 177, NULL),
	(178, '2016-10-27', 0, 0, 9.9, 87.5, 1.275, 7.225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69.5, 1.1, 8.5, 0, 11, 0, 0, 0, 0, 0, 0, 0, 178, NULL),
	(179, '2016-10-27', 0, 49, 10.5, 22.5, 1.11, 6.29, 0.42, 0.25, 0, 0, 2.06, 0.17, 0.36, 22.48, 29.16, 157.61, 0, 0, 0, 0, 0, 0, 1.0805, 1.15, 0.59, 70.5, 1.2, 7.4, 34, 10.4, 47.1, 40.9, 4.1, 2.16, 2, 0.17, 242.03, 179, NULL),
	(180, '2016-10-27', 0, 49, 7.5, 89, 2.01, 4.69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0805, 1.25, 0.69, 73.1, 1.5, 6.7, 33.2, 11.2, 47.4, 40.1, 0, 2.27, 2.11, 0, 0, 180, NULL),
	(181, '2016-10-27', 0, 53, 10.6, 24.4, 2.07, 4.83, 0.28, 0.27, 0, 0, 2.74, 0.14, 0.31, 16.63, 3.38, 66.87, 0, 0, 0, 0, 0, 0, 1.1785, 0.95, 0.4, 70.6, 1.3, 6.9, 35.7, 10.6, 45.5, 41.4, 4.2, 2.18, 1.75, 0.31, 217.87, 181, NULL),
	(182, '2016-10-27', 0, 42, 10.9, 89.5, 1.71, 3.99, 0.47, 0.24, 0, 0, 1.18, 0.11, 0.46, 25.02, 0, 312.2, 0, 0, 0, 0, 0, 0, 0.909, 1.15, 0.59, 73.9, 0.7, 5.7, 0, 8.8, 0, 42.4, 4.2, 1.85, 2, 0.13, 0, 182, NULL),
	(183, '2016-10-27', 0, 50, 13.7, 0, 1.68, 6.72, 0.3, 0.2, 0, 0, 3.1, 0, 0.3, 19.3, 5.6, 139.7, 0, 0, 0, 0, 0, 0, 1.105, 0.97, 0.42, 64.4, 1.8, 8.4, 33.7, 11.7, 44.4, 42, 4.2, 2.2, 1.81, 0, 291.8, 183, NULL),
	(184, '2016-10-27', 0, 56, 12.4, 20.7, 0.96, 8.64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 65, 2.2, 9.6, 27.2, 10.8, 49.2, 34.8, 3.2, 2.47, 2.02, 0, 0, 184, NULL),
	(185, '2016-10-27', 0, 56, 13.3, 22.6, 0.8, 7.2, 0.43, 0.22, 0, 0, 1.95, 0.24, 0.33, 33.64, 9.72, 108.9, 0, 0, 0, 0, 0, 0, 1.252, 0.66, 0.13, 66.8, 1.5, 8, 29.2, 10.4, 52.8, 37.8, 4.2, 2.47, 1.5, 0.1, 177.46, 185, NULL),
	(186, '2016-10-27', 0, 53, 12.6, 24.6, 1.02, 5.78, 0.29, 0.3, 0, 0, 1.76, 0.24, 0.26, 33.67, 7.18, 55.12, 0, 0, 0, 0, 0, 0, 1.1785, 1.07, 0.52, 67.4, 1.9, 6.8, 29.9, 11.3, 50.1, 38.9, 4.4, 2.34, 1.92, 0.07, 110.98, 186, NULL),
	(187, '2016-10-27', 0, 54, 8.8, 28.1, 1.425, 8.075, 0.42, 0.23, 0, 0, 1.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 68.4, 1.4, 9.5, 0, 11.9, 0, 42.5, 3.6, 2.38, 1.95, 0.06, 0, 187, NULL),
	(188, '2016-10-27', 0, 53, 0, 30, 0.98, 3.92, 0.13, 0.03, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1785, 1.07, 0.52, 0, 1.5, 4.9, 32.7, 8.9, 52, 0, 0, 2.34, 1.92, 0, 0, 188, NULL),
	(189, '2016-10-27', 0, 56, 0, 28, 2.36, 9.44, 0.31, 0.27, 0, 0, 1.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 67.6, 0, 11.8, 0, 0, 0, 35, 4.6, 2.47, 2.02, 0, 0, 189, NULL),
	(190, '2016-10-27', 0, 58, 9.2, 27.8, 1.185, 6.715, 0.28, 0.2, 0, 0, 1.56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 1.27, 0.7, 70.9, 1.2, 7.9, 30, 10.8, 50.1, 40.7, 4.9, 2.59, 2.1, 0.06, 0, 190, NULL),
	(191, '2016-10-27', 0, 60, 12.2, 26.5, 1.11, 6.29, 0.3, 0.23, 0, 0, 1.6, 0.09, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35, 1.25, 0.68, 70, 1.6, 7.4, 31.5, 8.8, 50.7, 39.1, 4, 2.86, 2.1, 0.03, 0, 191, NULL),
	(192, '2016-10-27', 0, 59, 18.2, 25.8, 1.26, 7.14, 0.21, 0.21, 0, 0, 1.76, 0.12, 0.2, 23.22, 3.58, 56.22, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 67.2, 1.3, 8.4, 29.8, 4.9, 53.7, 35, 2.7, 2.6, 2.13, 0.15, 356.6, 192, NULL),
	(193, '2016-10-27', 0, 57, 12.6, 27.7, 1.23, 6.97, 0.22, 0.28, 0, 0, 1.83, 0.11, 0.39, 36.04, 4, 114.48, 0, 0, 0, 0, 0, 0, 1.2765, 1.15, 0.59, 70.9, 1.5, 8.2, 31, 6.8, 52.5, 38.2, 3.9, 2.51, 2, 0.11, 491.76, 193, NULL),
	(194, '2016-10-27', 0, 58, 13.6, 28.3, 1.5, 6, 0.25, 0.27, 0, 0, 2.7, 0.1, 0.36, 23.69, 2.73, 42.64, 0, 0, 0, 0, 0, 0, 1.301, 1.24, 0.68, 71.4, 1.5, 7.5, 32.3, 6, 54.8, 39.2, 4.2, 2.56, 2.1, 0.37, 70.51, 194, NULL),
	(195, '2016-10-27', 0, 54, 14.1, 89.7, 1.16, 4.64, 0.31, 0.06, 0, 0, 4.11, 0, 0.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 76.3, 1, 5.8, 34.2, 2.8, 56.2, 40.4, 0, 2.38, 1.95, 0, 0, 195, NULL),
	(196, '2016-10-27', 0, 60, 13.1, 22, 1.14, 8.36, 0.6, 0.28, 0, 0, 3.53, 0, 0.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35, 1.31, 0.74, 65.4, 2, 9.5, 0, 10, 0, 43.1, 5.5, 2.65, 2.17, 0, 0, 196, NULL),
	(197, '2016-10-27', 0, 63, 11.1, 11.3, 1.665, 9.435, 0.22, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4235, 0.76, 0.23, 63.1, 1.9, 11.1, 0, 12.8, 0, 32.7, 0, 2.78, 1.6, 0, 0, 197, NULL),
	(198, '2016-10-27', 0, 0, 14.8, 89, 1.5, 8.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64.3, 1.5, 10, 0, 9.4, 0, 0, 0, 0, 0, 0, 0, 198, NULL),
	(199, '2016-10-27', 0, 60, 7.6, 19.2, 1.602, 7.298, 0.26, 0.2, 0, 0, 3.02, 0.14, 0.17, 36.91, 4.36, 162.86, 0, 0, 0, 0, 0, 0, 1.35, 1.31, 0.74, 70.5, 1.1, 8.9, 0, 11.9, 0, 40.2, 4, 2.65, 2.17, 0.15, 198.2, 199, NULL),
	(200, '2016-10-27', 0, 50, 9.6, 22.2, 1.38, 5.52, 0.25, 0.19, 0, 0, 2.18, 0.14, 0.16, 34.51, 4.24, 40.53, 0, 0, 0, 0, 0, 0, 1.105, 0.97, 0.42, 73.5, 1.1, 6.9, 0, 8.9, 0, 49.4, 4.8, 2.2, 1.81, 0.42, 75.43, 200, NULL),
	(201, '2016-10-27', 0, 55, 0, 37, 1.26, 7.14, 0.35, 0.37, 0, 0, 1.42, 0, 0.1, 24.1, 3.8, 48.3, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 69.4, 0, 8.4, 0, 0, 0, 39.2, 5.7, 2.42, 1.99, 0, 127.5, 201, NULL),
	(202, '2016-10-27', 0, 58, 7.4, 23.8, 1.5, 8.5, 0.35, 0.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 1.06, 0.5, 70.1, 3, 10, 27.8, 9.5, 49.7, 44.6, 4.5, 2.56, 1.9, 0, 0, 202, NULL),
	(203, '2016-10-27', 0, 52, 12.5, 27.5, 1.98, 7.92, 0.51, 0.35, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 1.04, 0.49, 60.1, 2.3, 9.9, 27, 15.2, 45.6, 31.4, 4.9, 2.29, 1.88, 0, 0, 203, NULL),
	(204, '2016-10-27', 0, 56, 0, 25, 2.04, 8.16, 0.32, 0.28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 0, 3.2, 10.2, 29.6, 9.8, 47.2, 0, 0, 2.46904, 2.02, 0, 0, 204, NULL),
	(205, '2016-10-27', 0, 54, 8.8, 15.8, 2.057, 10.043, 0.46, 0.36, 0, 0, 1.75, 0.26, 0.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 63.9, 1.1, 12.1, 24.9, 14.1, 46.7, 36.4, 3.3, 2.38, 1.95, 0, 0, 205, NULL),
	(206, '2016-10-27', 0, 54, 9.1, 18.7, 7.07, 8.383, 0.35, 0.33, 0, 0, 2.18, 0.15, 0.47, 22.2, 5.9, 56.98, 0, 0, 0, 0, 0, 0, 1.203, 1.06, 0.5, 65.4, 1.8, 10.1, 26.7, 13.6, 47.8, 37.2, 3.5, 2.38, 1.9, 0, 314.82, 206, NULL),
	(207, '2016-10-27', 0, 48, 9.1, 23.7, 1.48, 5.92, 0.28, 0.32, 0, 0, 2.52, 0.13, 0.25, 27.54, 4.22, 60.2, 0, 0, 0, 0, 0, 0, 1.056, 0.9, 0.35, 67.6, 1.3, 7.4, 0, 14.6, 0, 39.6, 5, 2.12, 1.74, 0.21, 375.67, 207, NULL),
	(208, '2016-10-27', 0, 56, 7, 15.7, 2.304, 10.496, 0.53, 0.34, 0, 0, 3.77, 0.25, 0.3, 25.37, 5.08, 47.45, 0, 0, 0, 0, 0, 0, 1.252, 1.06, 0.5, 61, 1.6, 12.8, 0, 17.6, 0, 34.7, 2.7, 2.47, 1.9, 1.95, 345.24, 208, NULL),
	(209, '2016-10-27', 0, 52, 13.3, 90.6, 2.124, 9.676, 0.47, 0.36, 0, 0, 1.75, 0, 0.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 1.11, 0.55, 61.7, 1.6, 11.8, 0, 11.6, 0, 0, 0, 2.38, 1.95, 0, 0, 209, NULL),
	(210, '2016-10-27', 0, 52, 11.9, 23.6, 2.052, 8.748, 0.66, 0.31, 0, 0, 1.91, 0.15, 0.52, 22.2, 5.9, 56.98, 0, 0, 0, 0, 0, 0, 1.154, 0.9, 0.36, 65, 2, 10.8, 0, 10.3, 0, 36.5, 2.8, 2.12, 2.3, 0, 314.82, 210, NULL),
	(211, '2016-10-27', 0, 54, 7.4, 24.4, 1.976, 8.424, 0.63, 0.34, 0, 0, 1.83, 0.15, 0.47, 25.37, 5.08, 47.45, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 67.2, 2.3, 10.4, 28.2, 12.7, 46.4, 39.3, 3.3, 2.38, 1.95, 1.95, 345.24, 211, NULL),
	(212, '2016-10-27', 0, 46, 0, 16.6, 1.95, 11.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.007, 0.83, 0.29, 0, 2.4, 13, 32.5, 15.1, 35.5, 0, 0, 2.03, 1.66, 0, 0, 212, NULL),
	(213, '2016-10-27', 0, 47, 8.4, 20.4, 1.854, 8.446, 0.67, 0.38, 0, 0, 2.15, 0, 0.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0315, 1.06, 0.5, 63.5, 1.5, 10.3, 33.5, 16.3, 38.4, 36.1, 2.3, 2.07, 1.9, 0, 0, 213, NULL),
	(214, '2016-10-27', 0, 51, 6.3, 21.1, 1.548, 7.052, 0.62, 0.31, 0, 0, 1.81, 0, 0.56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1295, 1.43, 0.84, 67.3, 1.8, 8.6, 38.4, 16, 0, 36.9, 2.6, 2.24859, 2.3, 0, 0, 214, NULL),
	(215, '2016-10-27', 0, 65, 1.9, 22.6, 1.843, 7.857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4725, 1.47, 0.88, 70.6, 1.8, 9.7, 0, 16, 0, 34, 0, 2.87, 2.35, 0, 0, 215, NULL),
	(216, '2016-10-27', 0, 56, 12.1, 27.6, 2.42, 9.68, 0.48, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.25, 0.68, 62.6, 2.2, 12.1, 0, 11, 0, 35.9, 0, 2.47, 2.1, 0, 0, 216, NULL),
	(217, '2016-10-27', 0, 57, 9.2, 24.9, 1.83, 10.37, 0.32, 0.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 67.2, 2, 12.2, 29.3, 9.4, 47.1, 44, 5.1, 2.51, 2.06, 0, 0, 217, NULL),
	(218, '2016-10-27', 0, 52, 6, 21.4, 1.59, 9.01, 0.34, 0.15, 0, 0, 3.3, 0, 0.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 1.04, 0.49, 68.6, 1.9, 10.6, 30.9, 12.9, 43.7, 42.5, 4.4, 2.29, 1.88, 0, 0, 218, NULL),
	(219, '2016-10-27', 0, 54, 0, 30, 1.965, 11.135, 0.44, 0.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 0, 2.1, 13.1, 26.1, 14.7, 44, 0, 0, 2.38, 1.95, 0, 0, 219, NULL),
	(220, '2016-10-27', 0, 58, 0, 33, 2.12, 8.48, 0.32, 0.23, 0, 0, 1.43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 1.24, 0.68, 66.7, 0, 10.6, 0, 0, 0, 34.3, 4.2, 2.56, 2.1, 0, 0, 220, NULL),
	(221, '2016-10-27', 0, 57, 14, 30.2, 1.78, 7.12, 0.27, 0.16, 0, 0, 1.9, 0, 0.3, 43.2, 9.6, 405.6, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 66, 2.4, 8.9, 28.8, 8.7, 51.2, 36.2, 12.9, 2.51, 2.06, 0.1, 590.2, 221, NULL),
	(222, '2016-10-27', 0, 49, 10.5, 30.5, 1.6, 6.4, 0.52, 0.28, 0, 0, 1.51, 0, 0.3, 49.5, 5.4, 265.3, 0, 0, 0, 0, 0, 0, 1.0805, 0.93, 0.39, 65.4, 1, 8, 30.3, 15.1, 45.6, 34.9, 4.2, 2.16, 1.77, 0, 461.4, 222, NULL),
	(223, '2016-10-27', 0, 59, 7.4, 29, 1.5, 6, 0.2, 0.16, 0, 0, 0, 0, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.28, 0.71, 77.9, 1.1, 7.5, 42.5, 6.1, 42.8, 44, 5.2, 2.6, 2.13, 0, 0, 223, NULL),
	(224, '2016-10-27', 0, 56, 17.3, 20.1, 1.44, 8.16, 0.93, 0.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 0.96, 0.41, 64.9, 1.1, 9.6, 28.7, 7.1, 53.5, 35.2, 3, 2.47, 1.8, 0, 0, 224, NULL),
	(225, '2016-10-27', 0, 57, 15.8, 24.9, 1.035, 5.865, 0.69, 0.16, 0, 0, 1.34, 0.17, 0.27, 20.02, 5.58, 104.14, 0, 0, 0, 0, 0, 0, 1.2765, 0.96, 0.41, 69.1, 1, 6.9, 29.8, 7.2, 55.1, 40.3, 5.5, 2.51, 1.8, 0.03, 162.38, 225, NULL),
	(226, '2016-10-27', 0, 53, 15.7, 28.7, 0.465, 2.635, 1.07, 0.14, 0, 0, 1.9, 0.2, 0.32, 19.15, 3.72, 142.42, 0, 0, 0, 0, 0, 0, 1.1785, 1.07, 0.52, 72, 1.2, 3.1, 0, 8, 0, 0, 0, 2.34, 1.92, 0.25, 295.54, 226, NULL),
	(227, '2016-10-27', 0, 58, 16.3, 24.4, 1.092, 8.008, 0.37, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.301, 1.34, 0.76, 65.1, 1.7, 9.1, 27.2, 7.8, 54.2, 34.3, 2.8, 2.56, 2.2, 0, 0, 227, NULL),
	(228, '2016-10-27', 0, 0, 16.8, 90.6, 1.26, 7.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64.7, 1.5, 8.4, 0, 8.6, 0, 0, 0, 0, 0, 0, 0, 228, NULL),
	(229, '2016-10-27', 0, 55, 12, 26.9, 1.68, 8.82, 0.91, 0.24, 0, 0, 1.03, 0.12, 0.37, 18.46, 6.07, 396.2, 0, 0, 0, 0, 0, 0, 1.2275, 1.25, 0.68, 66.2, 1.3, 10.5, 29.4, 10, 52.1, 34.5, 3.5, 2.42, 2.1, 0.23, 866.54, 229, NULL),
	(230, '2016-10-27', 0, 53, 10.8, 87, 1.71, 7.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1785, 1.26, 0.69, 70.3, 1.6, 9.5, 32.3, 7.8, 48.3, 37.1, 4.5, 2.64, 2.12, 0, 0, 230, NULL),
	(231, '2016-10-27', 0, 56, 10.4, 29.9, 1.3, 5.2, 0.47, 0.27, 0, 0, 1.58, 0.14, 0.22, 25.25, 4.22, 156.38, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 71.3, 1.3, 6.5, 35.1, 10.5, 46.7, 38.5, 4.8, 2.47, 2.02, 0.52, 166.13, 231, NULL),
	(232, '2016-10-27', 0, 55, 0, 27.1, 1.28, 5.12, 0.39, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.14, 0.58, 0, 2.1, 6.4, 29.5, 8.8, 53.2, 0, 0, 2.42, 1.99, 0, 0, 232, NULL),
	(233, '2016-10-27', 0, 56, 8.8, 27.2, 1.76, 7.04, 0.31, 0.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 71.1, 3.1, 8.8, 31.9, 8.2, 48, 35.6, 3.7, 2.47, 2.02, 0, 0, 233, NULL),
	(234, '2016-10-27', 0, 67, 21.5, 24.1, 1.944, 8.856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 57.7, 3, 10.8, 0, 7, 0, 32.4, 3.3, 2.95, 2.42, 0, 0, 234, NULL),
	(235, '2016-10-27', 0, 67, 22.3, 25.1, 1.957, 8.343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5215, 1.54, 0.94, 57.4, 3, 10.3, 0, 7, 0, 32, 4, 2.95, 2.42, 0, 0, 235, NULL),
	(236, '2016-10-27', 0, 58, 17.3, 19.8, 1.8, 10.2, 0.48, 0.33, 0, 0.08, 2.79, 0.22, 0.44, 28.5, 2.39, 95, 0, 0, 0, 6, 0, 0, 1.301, 1.24, 0.68, 61.2, 2, 12, 22.5, 7.5, 56, 28.5, 3.5, 2.56, 2.1, 0.04, 450, 236, NULL),
	(237, '2016-08-07', 7.2, 57.7, 10.9, 25, 1.08, 6.12, 0.35, 0.2, 0, 0.08, 2.79, 0.22, 0.44, 28.5, 2.39, 95, 0, 0, 0, 6, 0, 0, 1.29365, 1.23, 0.67, 67.4, 5.9, 7.2, 23.4, 8.6, 52, 36.3, 0, 2.54, 2.09, 0.04, 450, 237, NULL),
	(238, '2016-08-07', 8.5, 54, 14.5, 20.2, 1.275, 7.225, 0.57, 0.26, 0, 0.08, 2.05, 0.14, 0.44, 28.46, 2.39, 94.94, 0, 0, 0, 6, 0, 0, 1.203, 1.43, 0.84, 65.5, 1.9, 8.5, 28.4, 9.6, 51.5, 37.6, 4.4, 2.38, 2.3, 0.01, 450.15, 238, NULL),
	(239, '2016-10-27', 0, 57, 17.5, 89.6, 1.095, 6.205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2765, 1.21, 0.64, 66.2, 2.1, 7.3, 29.7, 6.9, 54, 35.1, 4.7, 2.51, 2.06, 0, 0, 239, NULL),
	(240, '2016-10-27', 0, 56, 13.2, 26.9, 1.152, 5.248, 0.4, 0.23, 0, 0.08, 1.9, 0.14, 0.34, 33.87, 2.68, 30.27, 0, 0, 0, 6, 0, 0, 1.252, 1.18, 0.61, 68.9, 1.7, 6.4, 30.6, 9.8, 51.4, 38.9, 4.2, 2.47, 2.02, 0.01, 70.49, 240, NULL),
	(242, '2016-10-27', 0, 59, 9.9, 26.6, 1.59, 9.01, 0.48, 0.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3255, 1.22, 0.66, 69.2, 2.7, 10.6, 31.9, 7.6, 47.1, 36, 8.6, 2.53, 1.8, 0, 0, 242, NULL),
	(243, '2016-10-27', 0, 53, 8.6, 27.4, 1.332, 6.068, 0.43, 0.22, 0, 0, 1.35, 0.27, 0.15, 25.28, 4.56, 57.42, 0, 0, 0, 0, 0, 0, 1.1785, 1.18, 0.62, 72.8, 2.6, 7.4, 34.4, 8.6, 47, 42.8, 0, 2.48, 2.05, 0.41, 445.87, 243, NULL),
	(244, '2016-10-27', 0, 54, 7, 28.5, 1.36, 5.44, 0.22, 0.22, 0, 0, 1.22, 0.25, 0.09, 13.19, 3.58, 29.53, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 73.1, 3.1, 6.8, 35.9, 10, 0, 41.3, 0, 2.38, 1.95, 0.34, 235.6, 244, NULL),
	(245, '2016-10-27', 0, 49, 6.1, 31, 2, 8, 0.4, 0.16, 0, 0, 1.67, 0, 0.2, 25, 5.4, 232.8, 0, 0, 0, 0, 0, 0, 1.0805, 0.93, 0.39, 70.3, 1.2, 10, 34.9, 12.4, 41.5, 47.2, 9.7, 2.16, 1.77, 0, 371.7, 245, NULL),
	(246, '2016-10-27', 0, 56, 16.3, 27.8, 1.62, 6.48, 0.57, 0.21, 0, 0, 1.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 63.6, 1.7, 8.1, 27, 10.3, 52.9, 35.6, 5.6, 2.47, 2.02, 0, 0, 246, NULL),
	(247, '2016-10-27', 0, 51, 9.8, 37, 1.92, 7.68, 0.57, 0.23, 0, 0, 2.2, 0, 0.27, 27.5, 5.97, 64.4, 0, 0, 0, 0, 0, 0, 1.1295, 1, 0.45, 66.1, 1.4, 9.6, 30.4, 13.1, 45.5, 41.3, 4.4, 2.25, 1.84, 0, 293.17, 247, NULL),
	(248, '2016-10-27', 0, 55, 15.7, 20.6, 1.53, 7.47, 0.85, 0.14, 0, 0, 2.51, 0.22, 0.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.06, 0.5, 63.6, 0.9, 9, 28.3, 10.8, 51, 36.2, 4.8, 2.42, 1.9, 0, 0, 248, NULL),
	(249, '2016-10-27', 0, 54, 15.7, 21.9, 1.207, 5.893, 0.91, 0.19, 0, 0, 1.48, 0.17, 0.63, 24.33, 5.1, 310.06, 0, 0, 0, 0, 0, 0, 1.203, 1.06, 0.5, 66.7, 0.9, 7.1, 30.2, 9.6, 52.2, 40.1, 5.1, 2.38, 1.9, 0.01, 328.02, 249, NULL),
	(250, '2016-10-27', 0, 54, 16.4, 24.4, 1.254, 5.346, 0.64, 0.16, 0, 0, 1.62, 0.21, 0.65, 22.93, 4.65, 68.78, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 65.7, 1, 6.6, 29.8, 10.3, 52.3, 38.8, 4, 2.38, 1.95, 0.01, 219, 250, NULL),
	(251, '2016-10-27', 0, 55, 8.8, 24, 1.35, 7.65, 0.39, 0.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2275, 1.06, 0.5, 70.2, 2, 9, 30.6, 10, 48.4, 47.4, 4.7, 2.42, 1.9, 0, 0, 251, NULL),
	(252, '2016-10-27', 0, 52, 11.5, 24.5, 1.84, 7.36, 0.54, 0.16, 0, 0, 2.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.154, 1.04, 0.49, 66.9, 1.4, 9.2, 32.9, 11, 45.5, 42.2, 0, 2.29, 1.88, 0, 0, 252, NULL),
	(253, '2016-08-07', 50.6, 74, 0, 90.2, 25.3, 25.3, 7.95, 0.58, 0, 0, 0, 0, 0.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.693, 1.76, 1.14, 0, 0.8, 50.6, 3.6, 28.3, 16.7, 0, 0, 3.26, 2.68, 0.12, 0, 253, NULL),
	(254, '2016-10-27', 0, 51, 0, 97.3, 6.35, 6.35, 31.84, 0.1, 0, 0, 0, 0, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1295, 1, 0.45, 0, 0.3, 12.7, 0.8, 76.2, 10, 0, 0, 2.25, 1.84384, 0.15, 0, 254, NULL),
	(255, '2016-10-27', 0, 77, 37.8, 34.9, 3.255, 18.445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.7665, 1.85, 1.22, 24.1, 10.2, 21.7, 12.3, 6.2, 49.6, 19.6, 5.4, 3.39, 2.78, 0, 0, 255, NULL),
	(256, '2016-10-27', 0, 82, 80.8, 92.5, 0, 11.7, 0.6, 0.54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.889, 2.3, 1.6, 0, 0.3, 11.7, 0.5, 7.2, 80.3, 0, 0, 3.82, 3.33, 0, 0, 256, NULL),
	(257, '2016-10-27', 0, 78, 87, 90.6, 0, 4.9, 0.58, 0.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.791, 1.88, 1.24, 0, 0.1, 4.9, 0, 8, 0, 0, 0, 3.44, 2.82, 0, 0, 257, NULL),
	(258, '2016-10-27', 0, 78, 50.8, 91.8, 0, 23.9, 4.15, 1.92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.791, 1.88, 1.24, 0, 0.2, 23.9, 0, 25.1, 50.8, 0, 0, 3.44, 2.82, 0, 0, 258, NULL),
	(259, '2016-10-27', 0, 51, 17.2, 0, 3.045, 5.655, 0.6, 0.4, 0, 0, 3.3, 0, 0.2, 21.4, 6.9, 101.5, 0, 0, 0, 0, 0, 0, 1.1295, 1, 0.45, 59.6, 1.8, 8.7, 25.8, 12.7, 51, 35.8, 6, 2.25, 1.84, 0.1, 367.7, 259, NULL),
	(260, '2016-08-07', 4.5, 64, 85.7, 73.7, 0, 4.5, 0.8, 0.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.448, 2.25, 1.76, 0, 0.8, 4.5, 0.5, 9, 85.2, 0, 0, 3.98, 3.57, 0, 0, 260, NULL),
	(261, '2016-10-27', 0, 56, 0.7, 91.5, 2.28, 1.52, 0.41, 0.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.252, 1.18, 0.61, 84, 3.3, 3.8, 26.8, 8.2, 57.9, 0, 0, 2.47, 2.02, 0, 0, 261, NULL),
	(262, '2016-10-27', 0, 54, 8.6, 35, 1.1, 3.3, 0.29, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.11, 0.55, 80.2, 1.1, 4.4, 36.5, 5.7, 52.3, 47.9, 6.6, 2.38, 1.95, 0, 0, 262, NULL),
	(263, '2016-10-27', 0, 54, 12.4, 28, 2.16, 5.04, 0.3, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.203, 1.04, 0.48, 71.3, 1.8, 7.2, 34.2, 7.3, 49.5, 44.5, 6.3, 2.29, 1.86, 0, 0, 263, NULL),
	(264, '2016-08-07', 280, 0, 0, 98, 0, 280, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264, NULL),
	(265, '2016-10-27', 0, 0, 0, 97, 0, 240, 0, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 265, NULL),
	(266, '2016-10-27', 0, 0, 0, 98, 0, 0, 34, 0, 0, 0, 0.12, 0, 2.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3500, 266, NULL),
	(267, '2016-10-27', 0, 0, 0, 97, 0, 0, 22, 19.3, 0, 0, 0, 1.1, 0.6, 100, 10, 300, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14400, 267, NULL),
	(268, '2016-10-27', 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 268, NULL),
	(269, '2016-10-27', 0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, NULL),
	(270, '2016-10-27', 0, 0, 0, 90, 0, 0, 18.8, 9.8, 0, 14, 1.5, 2.3, 2.3, 1800.5, 500, 268.5, 6.3, 9.1, 59.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8.1, 0, 270, NULL),
	(271, '2016-10-27', 0, 0, 0, 95, 0, 0, 1.7, 0.8, 0, 43, 0, 0.8, 0.4, 1077.9, 207.3, 408.5, 5, 10, 49.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 271, NULL),
	(272, '2016-10-27', 0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150000, 3000, 11000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 272, NULL),
	(273, '2016-10-27', 0, 0, 0, 85, 0, 0, 25.9, 0.01, 0, 0, 0, 23.54, 2.61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 273, NULL),
	(274, '2016-10-27', 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14.27, 0, 274, NULL),
	(275, '2016-10-27', 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 24.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 275, NULL),
	(276, '2016-10-27', 0, 0, 0, 100, 0, 0, 39.4, 0.04, 0, 0, 0.06, 0, 0.05, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.06, 300, 276, NULL),
	(277, '2016-10-27', 0, 0, 0, 97, 0, 0, 22, 19.3, 0, 0, 0.07, 1.14, 0.59, 100, 100000, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.05, 14000, 277, NULL),
	(278, '2016-10-27', 0, 0, 0, 97, 0, 0, 16.4, 21.6, 0, 0, 0.08, 1.22, 0.61, 100, 100000, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.06, 16000, 278, NULL),
	(279, '2016-10-27', 0, 0, 0, 100, 0, 0, 34, 0.02, 0, 0, 0.12, 0.04, 2.06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.06, 3500, 279, NULL),
	(280, '2016-10-27', 0, 0, 0, 90, 0, 0, 30.11, 14.14, 0, 0, 0.16, 0, 0.59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 280, NULL),
	(281, '2016-10-27', 0, 0, 0, 99, 0, 0, 22.3, 0.04, 0, 0, 0.36, 0, 9.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.36, 800, 281, NULL),
	(282, '2016-10-27', 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 774500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 282, NULL),
	(283, '2016-10-27', 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 460000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 283, NULL),
	(284, '2016-10-27', 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 456000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26.6, 0, 284, NULL),
	(285, '2016-10-27', 0, 0, 0, 100, 0, 0, 0, 0, 0, 60.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39.34, 0, 285, NULL),
	(286, '2016-10-27', 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 286, NULL),
	(287, '2016-10-27', 0, 0, 0, 96, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 287, NULL),
	(288, '2016-10-27', 0, 0, 0, 97, 0, 0, 0, 22.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16.68, 0, 288, NULL),
	(289, '2016-10-27', 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12.84, 0, 0, 254500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 289, NULL),
	(290, '2016-10-27', 0, 0, 0, 100, 0, 0, 0.05, 0, 0, 47.26, 50.54, 0.19, 0.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 600, 290, NULL),
	(291, '2016-10-27', 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 39.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 291, NULL),
	(292, '2016-10-27', 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 681700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, NULL),
	(293, '2016-10-27', 0, 0, 0, 97, 0, 0, 31.5, 14.22, 0, 0, 0.19, 0.21, 0.64, 300, 140000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, 800, 293, NULL),
	(294, '2016-10-27', 0, 0, 0, 97, 0, 0, 0.52, 20.6, 0, 0, 0.01, 2.16, 0.46, 100, 100000, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.05, 12400, 294, NULL),
	(295, '2016-10-27', 0, 0, 0, 97, 0, 0, 0.28, 24.74, 0, 0, 0.01, 1.46, 0.46, 100, 100000, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.06, 17400, 295, NULL),
	(296, '2016-10-27', 0, 0, 0, 100, 0, 0, 32, 18, 0, 0, 0.08, 0, 0.42, 0, 100000, 200, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.9, 6700, 296, NULL),
	(297, '2016-10-27', 0, 0, 0, 100, 0, 0, 35, 13, 0, 0, 0.06, 0, 0.41, 0, 100000, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.03, 16800, 297, NULL),
	(298, '2016-10-27', 0, 0, 0, 100, 0, 0, 36, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298, NULL),
	(299, '2016-10-27', 0, 0, 0, 99, 0, 0, 17.17, 9.09, 0, 0, 0, 0, 0.38, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1, 19200, 299, NULL),
	(300, '2016-10-27', 0, 0, 0, 98, 0, 0, 0.02, 0, 0, 0, 0, 0, 30.81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 300, NULL),
	(301, '2016-10-27', 0, 0, 0, 98, 0, 0, 3.07, 0, 0, 0, 0, 0, 56.2, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, NULL),
	(302, '2016-10-27', 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 774500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 302, NULL),
	(303, '2016-10-27', 0, 0, 0, 99, 0, 0, 0.02, 0, 0, 0.02, 0, 17.68, 0, 363600, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 303, NULL),
	(304, '2016-10-27', 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 780000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304, NULL),
	(305, '2016-10-27', 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 12.35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218400, 305, NULL),
	(306, '2016-10-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 306, NULL);
/*!40000 ALTER TABLE `raw_material_nutrient` ENABLE KEYS */;


-- Dumping structure for table farm2017.raw_material_order
CREATE TABLE IF NOT EXISTS `raw_material_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `raw_material_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `day` datetime NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_raw_material_order_release_raw_material1_idx` (`raw_material_id`),
  KEY `fk_raw_material_order_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_raw_material_order_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_order_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_order_release_raw_material1` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.raw_material_order: ~0 rows (approximately)
DELETE FROM `raw_material_order`;
/*!40000 ALTER TABLE `raw_material_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_material_order` ENABLE KEYS */;


-- Dumping structure for table farm2017.raw_material_price
CREATE TABLE IF NOT EXISTS `raw_material_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Unit` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Raw_material_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Raw_material_id` (`Raw_material_id`),
  CONSTRAINT `fk_raw_material_price_raw_material1` FOREIGN KEY (`Raw_material_id`) REFERENCES `raw_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.raw_material_price: ~304 rows (approximately)
DELETE FROM `raw_material_price`;
/*!40000 ALTER TABLE `raw_material_price` DISABLE KEYS */;
INSERT INTO `raw_material_price` (`id`, `Username`, `Price`, `Unit`, `Raw_material_id`) VALUES
	(1, NULL, 8.25, NULL, 1),
	(2, NULL, 8.5, NULL, 2),
	(3, NULL, 12, NULL, 3),
	(4, NULL, 7.8, NULL, 4),
	(5, NULL, 7.5, NULL, 5),
	(6, NULL, 7.6, NULL, 6),
	(7, NULL, 7, NULL, 7),
	(8, NULL, 7.5, NULL, 8),
	(9, NULL, 8, NULL, 9),
	(10, NULL, 0.5, NULL, 10),
	(11, NULL, 0, NULL, 11),
	(12, NULL, 5, NULL, 12),
	(13, NULL, 0, NULL, 13),
	(14, NULL, 0, NULL, 14),
	(15, NULL, 0, NULL, 15),
	(16, NULL, 0, NULL, 16),
	(17, NULL, 0, NULL, 17),
	(18, NULL, 0, NULL, 18),
	(19, NULL, 0, NULL, 19),
	(20, NULL, 1.2, NULL, 20),
	(21, NULL, 0, NULL, 21),
	(22, NULL, 11, NULL, 22),
	(23, NULL, 10, NULL, 23),
	(24, NULL, 0, NULL, 24),
	(25, NULL, 0, NULL, 25),
	(26, NULL, 0, NULL, 26),
	(27, NULL, 12, NULL, 27),
	(28, NULL, 0, NULL, 28),
	(29, NULL, 1.5, NULL, 29),
	(30, NULL, 8.5, NULL, 30),
	(31, NULL, 0, NULL, 31),
	(32, NULL, 0, NULL, 32),
	(33, NULL, 0, NULL, 33),
	(34, NULL, 0, NULL, 34),
	(35, NULL, 0, NULL, 35),
	(36, NULL, 0, NULL, 36),
	(37, NULL, 0, NULL, 37),
	(38, NULL, 0, NULL, 38),
	(39, NULL, 0, NULL, 39),
	(40, NULL, 0, NULL, 40),
	(41, NULL, 0, NULL, 41),
	(42, NULL, 0, NULL, 42),
	(43, NULL, 0, NULL, 43),
	(44, NULL, 0, NULL, 44),
	(45, NULL, 0, NULL, 45),
	(46, NULL, 0, NULL, 46),
	(47, NULL, 0, NULL, 47),
	(48, NULL, 0, NULL, 48),
	(49, NULL, 0, NULL, 49),
	(50, NULL, 11, NULL, 50),
	(51, NULL, 0, NULL, 51),
	(52, NULL, 0, NULL, 52),
	(53, NULL, 0, NULL, 53),
	(54, NULL, 10, NULL, 54),
	(55, NULL, 0, NULL, 55),
	(56, NULL, 0, NULL, 56),
	(57, NULL, 9.5, NULL, 57),
	(58, NULL, 0, NULL, 58),
	(59, NULL, 0, NULL, 59),
	(60, NULL, 0, NULL, 60),
	(61, NULL, 0, NULL, 61),
	(62, NULL, 0, NULL, 62),
	(63, NULL, 0, NULL, 63),
	(64, NULL, 0, NULL, 64),
	(65, NULL, 0, NULL, 65),
	(66, NULL, 0, NULL, 66),
	(67, NULL, 0, NULL, 67),
	(68, NULL, 0, NULL, 68),
	(69, NULL, 0, NULL, 69),
	(70, NULL, 0, NULL, 70),
	(71, NULL, 0, NULL, 71),
	(72, NULL, 0, NULL, 72),
	(73, NULL, 0, NULL, 73),
	(74, NULL, 0, NULL, 74),
	(75, NULL, 0, NULL, 75),
	(76, NULL, 0, NULL, 76),
	(77, NULL, 0, NULL, 77),
	(78, NULL, 0, NULL, 78),
	(79, NULL, 0, NULL, 79),
	(80, NULL, 0, NULL, 80),
	(81, NULL, 0, NULL, 81),
	(82, NULL, 0, NULL, 82),
	(83, NULL, 0, NULL, 83),
	(84, NULL, 0, NULL, 84),
	(85, NULL, 0, NULL, 85),
	(86, NULL, 0, NULL, 86),
	(87, NULL, 0, NULL, 87),
	(88, NULL, 0, NULL, 88),
	(89, NULL, 0, NULL, 89),
	(90, NULL, 0, NULL, 90),
	(91, NULL, 0, NULL, 91),
	(92, NULL, 0, NULL, 92),
	(93, NULL, 0, NULL, 93),
	(94, NULL, 0, NULL, 94),
	(95, NULL, 0, NULL, 95),
	(96, NULL, 0, NULL, 96),
	(97, NULL, 0, NULL, 97),
	(98, NULL, 10, NULL, 98),
	(99, NULL, 10.5, NULL, 99),
	(100, NULL, 0, NULL, 100),
	(101, NULL, 0, NULL, 101),
	(102, NULL, 0, NULL, 102),
	(103, NULL, 0, NULL, 103),
	(104, NULL, 0, NULL, 104),
	(105, NULL, 0, NULL, 105),
	(106, NULL, 0, NULL, 106),
	(107, NULL, 0, NULL, 107),
	(108, NULL, 19, NULL, 108),
	(109, NULL, 0, NULL, 109),
	(110, NULL, 0, NULL, 110),
	(111, NULL, 0, NULL, 111),
	(112, NULL, 0, NULL, 112),
	(113, NULL, 0, NULL, 113),
	(114, NULL, 0, NULL, 114),
	(115, NULL, 0, NULL, 115),
	(116, NULL, 0, NULL, 116),
	(117, NULL, 0, NULL, 117),
	(118, NULL, 0, NULL, 118),
	(119, NULL, 0, NULL, 119),
	(120, NULL, 0, NULL, 120),
	(121, NULL, 0, NULL, 121),
	(122, NULL, 0, NULL, 122),
	(123, NULL, 0, NULL, 123),
	(124, NULL, 0, NULL, 124),
	(125, NULL, 0, NULL, 125),
	(126, NULL, 0, NULL, 126),
	(127, NULL, 0, NULL, 127),
	(128, NULL, 0, NULL, 128),
	(129, NULL, 0, NULL, 129),
	(130, NULL, 7, NULL, 130),
	(131, NULL, 0, NULL, 131),
	(132, NULL, 0, NULL, 132),
	(133, NULL, 10, NULL, 133),
	(134, NULL, 0, NULL, 134),
	(135, NULL, 0, NULL, 135),
	(136, NULL, 0, NULL, 136),
	(137, NULL, 0, NULL, 137),
	(138, NULL, 12, NULL, 138),
	(139, NULL, 0, NULL, 139),
	(140, NULL, 0, NULL, 140),
	(141, NULL, 0, NULL, 141),
	(142, NULL, 0, NULL, 142),
	(143, NULL, 0, NULL, 143),
	(144, NULL, 0, NULL, 144),
	(145, NULL, 0, NULL, 145),
	(146, NULL, 0, NULL, 146),
	(147, NULL, 0, NULL, 147),
	(148, NULL, 8, NULL, 148),
	(149, NULL, 6, NULL, 149),
	(150, NULL, 0, NULL, 150),
	(151, NULL, 0, NULL, 151),
	(152, NULL, 0, NULL, 152),
	(153, NULL, 8, NULL, 153),
	(154, NULL, 0, NULL, 154),
	(155, NULL, 0, NULL, 155),
	(156, NULL, 0, NULL, 156),
	(157, NULL, 0, NULL, 157),
	(158, NULL, 0, NULL, 158),
	(159, NULL, 6, NULL, 159),
	(160, NULL, 0, NULL, 160),
	(161, NULL, 0, NULL, 161),
	(162, NULL, 0, NULL, 162),
	(163, NULL, 0, NULL, 163),
	(164, NULL, 0, NULL, 164),
	(165, NULL, 0, NULL, 165),
	(166, NULL, 0, NULL, 166),
	(167, NULL, 0, NULL, 167),
	(168, NULL, 0, NULL, 168),
	(169, NULL, 0, NULL, 169),
	(170, NULL, 0, NULL, 170),
	(171, NULL, 0, NULL, 171),
	(172, NULL, 0, NULL, 172),
	(173, NULL, 0, NULL, 173),
	(174, NULL, 0, NULL, 174),
	(175, NULL, 0, NULL, 175),
	(176, NULL, 0, NULL, 176),
	(177, NULL, 0, NULL, 177),
	(178, NULL, 0, NULL, 178),
	(179, NULL, 0, NULL, 179),
	(180, NULL, 0, NULL, 180),
	(181, NULL, 0, NULL, 181),
	(182, NULL, 0, NULL, 182),
	(183, NULL, 0, NULL, 183),
	(184, NULL, 0, NULL, 184),
	(185, NULL, 0, NULL, 185),
	(186, NULL, 0, NULL, 186),
	(187, NULL, 0, NULL, 187),
	(188, NULL, 0, NULL, 188),
	(189, NULL, 0, NULL, 189),
	(190, NULL, 0, NULL, 190),
	(191, NULL, 0, NULL, 191),
	(192, NULL, 0, NULL, 192),
	(193, NULL, 0, NULL, 193),
	(194, NULL, 0, NULL, 194),
	(195, NULL, 0, NULL, 195),
	(196, NULL, 0, NULL, 196),
	(197, NULL, 0, NULL, 197),
	(198, NULL, 0, NULL, 198),
	(199, NULL, 0, NULL, 199),
	(200, NULL, 0, NULL, 200),
	(201, NULL, 0, NULL, 201),
	(202, NULL, 0, NULL, 202),
	(203, NULL, 0, NULL, 203),
	(204, NULL, 0, NULL, 204),
	(205, NULL, 0, NULL, 205),
	(206, NULL, 0, NULL, 206),
	(207, NULL, 0, NULL, 207),
	(208, NULL, 0, NULL, 208),
	(209, NULL, 0, NULL, 209),
	(210, NULL, 0, NULL, 210),
	(211, NULL, 0, NULL, 211),
	(212, NULL, 0, NULL, 212),
	(213, NULL, 0, NULL, 213),
	(214, NULL, 0, NULL, 214),
	(215, NULL, 0, NULL, 215),
	(216, NULL, 0, NULL, 216),
	(217, NULL, 0, NULL, 217),
	(218, NULL, 0, NULL, 218),
	(219, NULL, 0, NULL, 219),
	(220, NULL, 0, NULL, 220),
	(221, NULL, 0, NULL, 221),
	(222, NULL, 0, NULL, 222),
	(223, NULL, 0, NULL, 223),
	(224, NULL, 0, NULL, 224),
	(225, NULL, 0, NULL, 225),
	(226, NULL, 0, NULL, 226),
	(227, NULL, 0, NULL, 227),
	(228, NULL, 0, NULL, 228),
	(229, NULL, 0, NULL, 229),
	(230, NULL, 0, NULL, 230),
	(231, NULL, 0, NULL, 231),
	(232, NULL, 0, NULL, 232),
	(233, NULL, 0, NULL, 233),
	(234, NULL, 0, NULL, 234),
	(235, NULL, 0, NULL, 235),
	(236, NULL, 0, NULL, 236),
	(237, NULL, 0.5, NULL, 237),
	(238, NULL, 0.25, NULL, 238),
	(239, NULL, 0, NULL, 239),
	(240, NULL, 0, NULL, 240),
	(242, NULL, 0, NULL, 242),
	(243, NULL, 0, NULL, 243),
	(244, NULL, 0, NULL, 244),
	(245, NULL, 0, NULL, 245),
	(246, NULL, 0, NULL, 246),
	(247, NULL, 0, NULL, 247),
	(248, NULL, 0, NULL, 248),
	(249, NULL, 0, NULL, 249),
	(250, NULL, 0, NULL, 250),
	(251, NULL, 0, NULL, 251),
	(252, NULL, 0, NULL, 252),
	(253, NULL, 7, NULL, 253),
	(254, NULL, 0, NULL, 254),
	(255, NULL, 0, NULL, 255),
	(256, NULL, 0, NULL, 256),
	(257, NULL, 0, NULL, 257),
	(258, NULL, 0, NULL, 258),
	(259, NULL, 0, NULL, 259),
	(260, NULL, 8, NULL, 260),
	(261, NULL, 0, NULL, 261),
	(262, NULL, 0, NULL, 262),
	(263, NULL, 0, NULL, 263),
	(264, NULL, 17, NULL, 264),
	(265, NULL, 0, NULL, 265),
	(266, NULL, 0, NULL, 266),
	(267, NULL, 0, NULL, 267),
	(268, NULL, 0, NULL, 268),
	(269, NULL, 0, NULL, 269),
	(270, NULL, 17, NULL, 270),
	(271, NULL, 40, NULL, 271),
	(272, NULL, 190, NULL, 272),
	(273, NULL, 0, NULL, 273),
	(274, NULL, 0, NULL, 274),
	(275, NULL, 0, NULL, 275),
	(276, NULL, 0, NULL, 276),
	(277, NULL, 0, NULL, 277),
	(278, NULL, 0, NULL, 278),
	(279, NULL, 0, NULL, 279),
	(280, NULL, 0, NULL, 280),
	(281, NULL, 0, NULL, 281),
	(282, NULL, 0, NULL, 282),
	(283, NULL, 0, NULL, 283),
	(284, NULL, 0, NULL, 284),
	(285, NULL, 0, NULL, 285),
	(286, NULL, 0, NULL, 286),
	(287, NULL, 0, NULL, 287),
	(288, NULL, 0, NULL, 288),
	(289, NULL, 0, NULL, 289),
	(290, NULL, 0, NULL, 290),
	(291, NULL, 0, NULL, 291),
	(292, NULL, 0, NULL, 292),
	(293, NULL, 0, NULL, 293),
	(294, NULL, 0, NULL, 294),
	(295, NULL, 0, NULL, 295),
	(296, NULL, 0, NULL, 296),
	(297, NULL, 0, NULL, 297),
	(298, NULL, 0, NULL, 298),
	(299, NULL, 0, NULL, 299),
	(300, NULL, 0, NULL, 300),
	(301, NULL, 0, NULL, 301),
	(302, NULL, 0, NULL, 302),
	(303, NULL, 0, NULL, 303),
	(304, NULL, 0, NULL, 304),
	(305, NULL, 0, NULL, 305);
/*!40000 ALTER TABLE `raw_material_price` ENABLE KEYS */;


-- Dumping structure for table farm2017.raw_material_release
CREATE TABLE IF NOT EXISTS `raw_material_release` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_raw_material_release_raw_material1_idx` (`raw_material_id`),
  KEY `fk_raw_material_release_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_raw_material_release_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_release_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_raw_material_release_raw_material1` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.raw_material_release: ~0 rows (approximately)
DELETE FROM `raw_material_release`;
/*!40000 ALTER TABLE `raw_material_release` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_material_release` ENABLE KEYS */;


-- Dumping structure for table farm2017.report
CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namefestivity` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `numpeople` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `numcattle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `finalprice` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `festivity_No` int(11) DEFAULT NULL,
  `worktogether_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `worktogether_id` (`worktogether_id`),
  CONSTRAINT `fk_report_worktogether1` FOREIGN KEY (`worktogether_id`) REFERENCES `worktogether` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.report: ~0 rows (approximately)
DELETE FROM `report`;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;


-- Dumping structure for table farm2017.semen
CREATE TABLE IF NOT EXISTS `semen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cattle` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'หมายเลขน้ำเชื้อ/ชื่อพ่อพันธุ์',
  `h_number` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'เบอร์ข้างตัวพ่อพันธ์',
  `color_cattle` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สีพ่อพันธุ์',
  `tube_color` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สีหลอด',
  `lid_color` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สีจุกปิด',
  `tube_size` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ขนาดหลอด',
  `farm` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ฟาร์มเจ้าของน้ำเชื้อ',
  `dealer` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ตัวแทนจำหน่าย',
  `quantity` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'จำนวนคงคลัง',
  `canister` int(11) DEFAULT NULL,
  `rack` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bucket_id` int(11) DEFAULT NULL,
  `breed_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `statusalert` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_semen_bucket1_idx` (`bucket_id`),
  KEY `breed_id` (`breed_id`),
  KEY `color_id` (`color_id`),
  CONSTRAINT `fk_semen_breed1` FOREIGN KEY (`breed_id`) REFERENCES `breed` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_bucket1` FOREIGN KEY (`bucket_id`) REFERENCES `bucket` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_color1` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.semen: ~5 rows (approximately)
DELETE FROM `semen`;
/*!40000 ALTER TABLE `semen` DISABLE KEYS */;
INSERT INTO `semen` (`id`, `name_cattle`, `h_number`, `color_cattle`, `tube_color`, `lid_color`, `tube_size`, `farm`, `dealer`, `quantity`, `canister`, `rack`, `bucket_id`, `breed_id`, `color_id`, `statusalert`) VALUES
	(120, 'MANSO68', '23', NULL, 'แดง', 'ขาว', '0.25', 'TSFARM', '', 0, 1, 'บน', 2, 3, 5, 0),
	(121, 'SK 48', 'SK 48', NULL, 'ดำ', 'แดง', '0.25', 'TS FARM', '', 1, 1, 'ล่าง', 2, 9, 5, 0),
	(122, 'PRD SK 59', 'TS49/5', NULL, 'แดง', 'ขาว', '0.25', 'PRD FARM', '', 3, 3, 'บน', 2, 9, 5, 0),
	(123, 'sk 718', 'SK95/2', NULL, 'แดง', 'ดำ', '0.25', 'TS FARM', '', 45, 2, 'ล่าง', 2, 3, 9, 0),
	(124, 'PRD 45', 'PRD 49/3', NULL, 'ขาว', 'แดง', '0.25', 'PRD FARM', '', 4, 4, 'ล่าง', 2, 9, 14, 0);
/*!40000 ALTER TABLE `semen` ENABLE KEYS */;


-- Dumping structure for table farm2017.semen_import
CREATE TABLE IF NOT EXISTS `semen_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT 'ราคาต่อหลอด ปกติราคาจะไม่เท่าเดิม',
  `farm` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'เจ้าของน้ำเชื้อ',
  `import_semen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ซื้อจากไหน (ตัวแทนจำหน่าย)',
  `place` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '000112\nเลขที่ถัง_canister_rack',
  `note` text CHARACTER SET utf8,
  `semen_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `before_quantity` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `lot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_semen_in_semen1_idx` (`semen_id`),
  KEY `fk_semen_in_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_semen_in_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_in_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_in_semen1` FOREIGN KEY (`semen_id`) REFERENCES `semen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.semen_import: ~4 rows (approximately)
DELETE FROM `semen_import`;
/*!40000 ALTER TABLE `semen_import` DISABLE KEYS */;
INSERT INTO `semen_import` (`id`, `quantity`, `price`, `farm`, `import_semen`, `place`, `note`, `semen_id`, `bill_id`, `day`, `before_quantity`, `member_id`, `lot`) VALUES
	(2, 15, 9000, NULL, NULL, NULL, NULL, 122, NULL, '2016-06-07', 0, 18, NULL),
	(3, 10, 4500, NULL, NULL, NULL, NULL, 120, NULL, '2016-06-09', 10, 18, NULL),
	(4, 10, 90000, NULL, NULL, NULL, NULL, 121, NULL, '2016-06-13', 0, 42, NULL),
	(5, 2, 2500, NULL, NULL, NULL, NULL, 122, NULL, '2016-06-13', 4, 18, NULL);
/*!40000 ALTER TABLE `semen_import` ENABLE KEYS */;


-- Dumping structure for table farm2017.semen_order
CREATE TABLE IF NOT EXISTS `semen_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `semen_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `day` date NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_semen_order_semen1_idx` (`semen_id`),
  KEY `fk_semen_order_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_semen_order_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_order_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_order_semen1` FOREIGN KEY (`semen_id`) REFERENCES `semen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.semen_order: ~8 rows (approximately)
DELETE FROM `semen_order`;
/*!40000 ALTER TABLE `semen_order` DISABLE KEYS */;
INSERT INTO `semen_order` (`id`, `quantity`, `semen_id`, `bill_id`, `day`, `member_id`) VALUES
	(1, 12, 120, NULL, '2016-06-22', 18),
	(2, 23, 121, NULL, '2016-06-22', 18),
	(3, 12, 123, NULL, '2016-06-22', 18),
	(4, 45, 120, NULL, '2016-09-27', 18),
	(5, 200, 120, NULL, '2016-09-27', 18),
	(6, 700, 124, NULL, '2016-09-27', 18),
	(7, 1, 120, NULL, '2018-01-02', 18),
	(8, 1, 120, NULL, '2018-02-03', 18);
/*!40000 ALTER TABLE `semen_order` ENABLE KEYS */;


-- Dumping structure for table farm2017.semen_release
CREATE TABLE IF NOT EXISTS `semen_release` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `semen_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_semen_release_semen1_idx` (`semen_id`),
  KEY `fk_semen_release_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_semen_release_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_release_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semen_release_semen1` FOREIGN KEY (`semen_id`) REFERENCES `semen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.semen_release: ~14 rows (approximately)
DELETE FROM `semen_release`;
/*!40000 ALTER TABLE `semen_release` DISABLE KEYS */;
INSERT INTO `semen_release` (`id`, `day`, `quantity`, `semen_id`, `bill_id`, `member_id`) VALUES
	(2, '2017-12-04', 2, 120, NULL, 42),
	(3, '2017-12-04', 2, 121, NULL, 42),
	(4, '2017-12-04', 8, 122, NULL, 42),
	(5, '2017-12-04', 2, 120, NULL, 42),
	(6, '2017-12-07', 2, 121, NULL, 42),
	(7, '2017-12-07', 3, 122, NULL, 42),
	(8, '2017-12-10', 2, 120, NULL, 43),
	(9, '2017-12-10', 5, 121, NULL, 43),
	(10, '2017-12-13', 2, 120, NULL, 18),
	(11, '2017-12-27', 1, 120, NULL, 18),
	(12, '2017-12-28', 1, 122, NULL, 18),
	(13, '2017-12-28', 1, 122, NULL, 18),
	(14, '2017-12-28', 1, 122, NULL, 18),
	(15, '2017-12-19', 1, 120, NULL, 18);
/*!40000 ALTER TABLE `semen_release` ENABLE KEYS */;


-- Dumping structure for table farm2017.sex
CREATE TABLE IF NOT EXISTS `sex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.sex: ~2 rows (approximately)
DELETE FROM `sex`;
/*!40000 ALTER TABLE `sex` DISABLE KEYS */;
INSERT INTO `sex` (`id`, `value`) VALUES
	(1, 'เพศผู้'),
	(2, 'เพศเมีย');
/*!40000 ALTER TABLE `sex` ENABLE KEYS */;


-- Dumping structure for table farm2017.stall
CREATE TABLE IF NOT EXISTS `stall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.stall: ~3 rows (approximately)
DELETE FROM `stall`;
/*!40000 ALTER TABLE `stall` DISABLE KEYS */;
INSERT INTO `stall` (`id`, `value`) VALUES
	(1, 'คอก1'),
	(5, 'คอก2'),
	(6, 'คอก3');
/*!40000 ALTER TABLE `stall` ENABLE KEYS */;


-- Dumping structure for table farm2017.standard
CREATE TABLE IF NOT EXISTS `standard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_calf1` int(11) DEFAULT NULL,
  `start_calf2` int(11) DEFAULT NULL,
  `start_calf3` int(11) DEFAULT NULL,
  `end_calf1` int(11) DEFAULT NULL,
  `end_calf2` int(11) DEFAULT NULL,
  `end_calf3` int(11) DEFAULT NULL,
  `start_intermediate1` int(11) DEFAULT NULL,
  `start_intermediate2` int(11) DEFAULT NULL,
  `start_intermediate3` int(11) DEFAULT NULL,
  `end_intermediate1` int(11) DEFAULT NULL,
  `end_intermediate2` int(11) DEFAULT NULL,
  `end_intermediate3` int(11) DEFAULT NULL,
  `start_junior1` int(11) DEFAULT NULL,
  `start_junior2` int(11) DEFAULT NULL,
  `start_junior3` int(11) DEFAULT NULL,
  `end_junior1` int(11) DEFAULT NULL,
  `end_junior2` int(11) DEFAULT NULL,
  `end_junior3` int(11) DEFAULT NULL,
  `start_senior1` int(11) DEFAULT NULL,
  `start_senior2` int(11) DEFAULT NULL,
  `start_senior3` int(11) DEFAULT NULL,
  `end_senior1` int(11) DEFAULT NULL,
  `end_senior2` int(11) DEFAULT NULL,
  `end_senior3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.standard: ~0 rows (approximately)
DELETE FROM `standard`;
/*!40000 ALTER TABLE `standard` DISABLE KEYS */;
INSERT INTO `standard` (`id`, `start_calf1`, `start_calf2`, `start_calf3`, `end_calf1`, `end_calf2`, `end_calf3`, `start_intermediate1`, `start_intermediate2`, `start_intermediate3`, `end_intermediate1`, `end_intermediate2`, `end_intermediate3`, `start_junior1`, `start_junior2`, `start_junior3`, `end_junior1`, `end_junior2`, `end_junior3`, `start_senior1`, `start_senior2`, `start_senior3`, `end_senior1`, `end_senior2`, `end_senior3`) VALUES
	(1, 1, 8, 10, 8, 10, 12, 12, 14, 16, 14, 16, 18, 19, 21, 23, 20, 22, 24, 25, 28, 32, 28, 32, 36);
/*!40000 ALTER TABLE `standard` ENABLE KEYS */;


-- Dumping structure for table farm2017.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status: ~6 rows (approximately)
DELETE FROM `status`;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id`, `value`) VALUES
	(1, 'อยู่ระหว่างการยืม'),
	(2, 'คืนเสร็จเรียบร้อย'),
	(3, 'รอการอนุมัติ'),
	(4, 'อนุมัติเสร็จเรียบร้อย'),
	(5, 'อยู่ระหว่างการส่งซ่อม'),
	(6, 'ซ่อมเสร็จเรียบร้อย/นำเข้าคลัง');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_alert
CREATE TABLE IF NOT EXISTS `status_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_alert: ~2 rows (approximately)
DELETE FROM `status_alert`;
/*!40000 ALTER TABLE `status_alert` DISABLE KEYS */;
INSERT INTO `status_alert` (`id`, `value`) VALUES
	(1, 'ยังไม่ได้ดำเนินการ'),
	(2, 'ดำเนินการแล้ว');
/*!40000 ALTER TABLE `status_alert` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_bill
CREATE TABLE IF NOT EXISTS `status_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'สถานะบิล',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_bill: ~3 rows (approximately)
DELETE FROM `status_bill`;
/*!40000 ALTER TABLE `status_bill` DISABLE KEYS */;
INSERT INTO `status_bill` (`id`, `value`) VALUES
	(1, 'อยู่ระหว่างการดำเนินการ'),
	(2, 'เสร็จสิ้น'),
	(3, 'ยกเลิก');
/*!40000 ALTER TABLE `status_bill` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_born
CREATE TABLE IF NOT EXISTS `status_born` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_born: ~4 rows (approximately)
DELETE FROM `status_born`;
/*!40000 ALTER TABLE `status_born` DISABLE KEYS */;
INSERT INTO `status_born` (`id`, `value`) VALUES
	(1, 'ลูกปกติ'),
	(2, 'ลูกแฝดสอง'),
	(3, 'ลูกแฝดสาม'),
	(4, 'ลูกแฝดสี่');
/*!40000 ALTER TABLE `status_born` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_breed
CREATE TABLE IF NOT EXISTS `status_breed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) DEFAULT NULL COMMENT 'สายพันธุ์',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.status_breed: ~3 rows (approximately)
DELETE FROM `status_breed`;
/*!40000 ALTER TABLE `status_breed` DISABLE KEYS */;
INSERT INTO `status_breed` (`id`, `value`) VALUES
	(1, 'บราห์มัน'),
	(2, 'บีฟมาสเตอร์'),
	(3, 'ชาโลเล่');
/*!40000 ALTER TABLE `status_breed` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_cattle
CREATE TABLE IF NOT EXISTS `status_cattle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_cattle: ~2 rows (approximately)
DELETE FROM `status_cattle`;
/*!40000 ALTER TABLE `status_cattle` DISABLE KEYS */;
INSERT INTO `status_cattle` (`id`, `value`) VALUES
	(1, 'โคเด็ก'),
	(2, 'โคโต');
/*!40000 ALTER TABLE `status_cattle` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_cow
CREATE TABLE IF NOT EXISTS `status_cow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.status_cow: ~3 rows (approximately)
DELETE FROM `status_cow`;
/*!40000 ALTER TABLE `status_cow` DISABLE KEYS */;
INSERT INTO `status_cow` (`id`, `value`) VALUES
	(1, 'โคนำเข้า'),
	(2, 'โคในฟาร์ม'),
	(3, 'โคขาย');
/*!40000 ALTER TABLE `status_cow` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_disease
CREATE TABLE IF NOT EXISTS `status_disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_disease: ~0 rows (approximately)
DELETE FROM `status_disease`;
/*!40000 ALTER TABLE `status_disease` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_disease` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_medicine
CREATE TABLE IF NOT EXISTS `status_medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_medicine: ~6 rows (approximately)
DELETE FROM `status_medicine`;
/*!40000 ALTER TABLE `status_medicine` DISABLE KEYS */;
INSERT INTO `status_medicine` (`id`, `value`) VALUES
	(1, '1'),
	(2, '2'),
	(3, '3'),
	(4, '4'),
	(5, '5'),
	(6, '6');
/*!40000 ALTER TABLE `status_medicine` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_pregnant
CREATE TABLE IF NOT EXISTS `status_pregnant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_pregnant: ~3 rows (approximately)
DELETE FROM `status_pregnant`;
/*!40000 ALTER TABLE `status_pregnant` DISABLE KEYS */;
INSERT INTO `status_pregnant` (`id`, `value`) VALUES
	(1, 'ท้อง'),
	(2, 'ไม่ท้อง'),
	(3, 'ยังไม่ได้ตรวจ');
/*!40000 ALTER TABLE `status_pregnant` ENABLE KEYS */;


-- Dumping structure for table farm2017.status_treat
CREATE TABLE IF NOT EXISTS `status_treat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.status_treat: ~2 rows (approximately)
DELETE FROM `status_treat`;
/*!40000 ALTER TABLE `status_treat` DISABLE KEYS */;
INSERT INTO `status_treat` (`id`, `value`) VALUES
	(1, 'หาย'),
	(2, 'ไม่หาย');
/*!40000 ALTER TABLE `status_treat` ENABLE KEYS */;


-- Dumping structure for table farm2017.sync
CREATE TABLE IF NOT EXISTS `sync` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namesync` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dayalert` int(11) DEFAULT NULL,
  `timealert` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `type_sync_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_sync_id` (`type_sync_id`),
  CONSTRAINT `fk_sync_type_sync1` FOREIGN KEY (`type_sync_id`) REFERENCES `type_sync` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.sync: ~13 rows (approximately)
DELETE FROM `sync`;
/*!40000 ALTER TABLE `sync` DISABLE KEYS */;
INSERT INTO `sync` (`id`, `namesync`, `dayalert`, `timealert`, `type_sync_id`) VALUES
	(1, 'สอด CIDR', 0, '', 1),
	(2, 'E2(0.5 cc)', 0, '', 1),
	(3, 'PG(1 cc)', 0, '', 1),
	(4, 'PG(1 cc)', 7, '', 1),
	(5, 'โพลิกอน(แม่วัว 2cc วัวสาว 1.5cc)', 7, '15:00', 1),
	(6, 'ถอด CIDR', 9, '15:00', 1),
	(7, 'ล้างด้วยน้ำสะอาดผสมยาฆ่าเชื้อ', 9, '15:00', 1),
	(8, 'E2(0.2cc)', 10, '15:00', 1),
	(9, 'ผสมเทียม(วัวสาว)', 12, '19:00', 1),
	(10, 'ผสมเทียม(เม่พันธุ์)', 12, '18:00', 1),
	(11, 'GNRH(2.5cc)', 12, '06:00', 1),
	(12, 'A', 1, '01:00', 2),
	(13, 'b', 2, '10:00', 2);
/*!40000 ALTER TABLE `sync` ENABLE KEYS */;


-- Dumping structure for table farm2017.synchronize
CREATE TABLE IF NOT EXISTS `synchronize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_sync` date DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `type_sync_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cattle_id` (`cattle_id`),
  KEY `type_sync_id` (`type_sync_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_sychronize_cattle` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sychronize_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sychronize_type_type_sync` FOREIGN KEY (`type_sync_id`) REFERENCES `type_sync` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.synchronize: ~2 rows (approximately)
DELETE FROM `synchronize`;
/*!40000 ALTER TABLE `synchronize` DISABLE KEYS */;
INSERT INTO `synchronize` (`id`, `date_sync`, `cattle_id`, `type_sync_id`, `member_id`) VALUES
	(1, '2016-12-06', 6, 1, 18),
	(2, '2017-12-30', 10, 1, 18);
/*!40000 ALTER TABLE `synchronize` ENABLE KEYS */;


-- Dumping structure for table farm2017.tool
CREATE TABLE IF NOT EXISTS `tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) unsigned DEFAULT '0' COMMENT 'จำนวนคงคลัง',
  `quantity_borrow` int(11) unsigned DEFAULT NULL COMMENT 'ยอดที่ยืมไป',
  `quantity_broken` int(11) unsigned DEFAULT '0' COMMENT 'จำนวนชำรุดเสียหาย',
  `place` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `type_tool_id` int(11) NOT NULL,
  `unit_tool_id` int(11) NOT NULL,
  `statusalert` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_tool_type_tool1_idx` (`type_tool_id`),
  KEY `fk_tool_unit_tool1_idx` (`unit_tool_id`),
  CONSTRAINT `fk_tool_type_tool1` FOREIGN KEY (`type_tool_id`) REFERENCES `type_tool` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_unit_tool1` FOREIGN KEY (`unit_tool_id`) REFERENCES `unit_tool` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.tool: ~58 rows (approximately)
DELETE FROM `tool`;
/*!40000 ALTER TABLE `tool` DISABLE KEYS */;
INSERT INTO `tool` (`id`, `name`, `quantity`, `quantity_borrow`, `quantity_broken`, `place`, `type_tool_id`, `unit_tool_id`, `statusalert`) VALUES
	(1, 'มีดตัดเบอร์หู', 1, 3, 6, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(2, 'ไซริงค์ ขนาด 3.3 ซี.ซี.', 3, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 2, 4, 0),
	(3, 'ไซริงค์อัตโนมัติ แบบต่อกับขวด ขนาด 2 ซี.ซี', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(4, 'เครื่องตัดหญ้า', 1, 2, 2, 'ห้องเก็บอุปกรณ์', 1, 2, 0),
	(5, 'ไซริงค์อัตโนมัติ ขนาด 30 ซี.ซี.', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(6, 'ลวดหนาม 50 เมตร', 0, 0, 0, 'ห้องเก็บวัสดุ', 2, 5, 0),
	(7, 'คราดรุปสี่เหลี่ยม Leaf Ranke', 0, 0, 0, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(8, 'กรรไกรผ่าตัด แบบปลายโค้ง', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 1, 0),
	(9, 'กรรไกรผ่าตัด แบบปลายตรง', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 1, 0),
	(10, 'ไหมละลายพร้อมเข็มเย็บ แบบโค้งหัวกลม', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 2, 8, 0),
	(11, 'พรั่วแซะ', 0, 4, 4, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(12, 'ส้อมโกยหญ้า', 0, 0, 0, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(13, 'เบอร์หู สีแดง', 10, 0, 0, 'ห้องเก็บวัสดุ', 2, 4, 0),
	(14, 'ชุดคีมขุดเขาวัว', 0, 1, 4, 'ห้องเก็บอุปกรณ์', 1, 8, 0),
	(15, 'คีมแต่งกีบวัว', 0, 0, 0, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(16, 'คีมขุดเขา 17 นิ้ว', 0, 0, 0, 'ห้องเก็บอุปกรณ์', 1, 3, 0),
	(17, 'เบอร์หู สีเขียว', 2, 0, 0, 'ห้องเก็บวัสดุ', 2, 4, 0),
	(18, 'เข็มฉีดยา เหล็ก เบอร์ 22 ขนาด 0.5 นิ้ว', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 4, 0),
	(19, 'เข็มฉีดยา พลาสติก', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 2, 4, 0),
	(20, 'เข็มฉีดยา เหล็ก เบอร์ 19 ขนาด 1 นิ้ว', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 2, 4, 0),
	(21, 'คีมติดเบอร์หู', 0, 0, 0, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(22, 'ปากกาเขียนเบอร์หู', 0, 0, 0, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(23, 'ชุดสักเบอร์หู', 2, 2, 1, 'ห้องเก็บอุปกรณ์', 1, 8, 0),
	(24, 'เสื้อผ้าป้องกันเชื้อและป้องกันสิ่งสกปรก', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 8, 0),
	(25, 'เจลนวดกล้ามเนื้อ สำหรับโค', 0, 0, 0, 'ห้องเก็บวัสดุ', 1, 9, 0),
	(26, 'ตัวขูดกีบเท้าโค', 0, 0, 0, 'ห้องเก็บอุปกรณ์', 1, 1, 0),
	(27, 'กาว สำหรับติดรองเท้าโค', 0, 0, 0, 'ห้องเก็บวัสดุ', 2, 10, 0),
	(28, 'คีมจับเส้นโลหิต', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 1, 0),
	(29, 'คีมจับเข็มเย็บแผล', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 1, 0),
	(30, 'กล่องเครื่องมือแพทย์ แบบสายสะพาย', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 4, 0),
	(31, 'ตะปู เบอร์2', 6, 0, 0, '', 3, 4, 0),
	(32, 'ตะปู เบอร์3', 6, 0, 0, '', 3, 4, 0),
	(33, 'ตะปู เบอร์4', 6, 0, 0, '', 3, 4, 0),
	(34, 'ตะปู เบอร์5', 0, 0, 0, '', 3, 4, 0),
	(35, 'อวัยวะเพศเมียเทียมสำหรับโค', 0, 0, 0, 'อุปกรณ์การแพทย์', 1, 3, 0),
	(36, 'อวัยวะเพศเมียเทียมสำหรับโค , IMV ', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(37, 'อวัยวะเพศเมียเทียมสำหรับโค , คอนทิเนนทอล', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(38, 'ท่อยางของอวัยวะเพศเมียเทียมสำหรับโคสีเนื้อ', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(39, 'ท่อยางของอวัยวะเพศเมียเทียมสำหรับโคสีดำ', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(40, 'กรวยยางของอวัยวะเพศเมียเทียมสำหรับโคสีเนื้อ', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(41, 'กรวยยางของอวัยวะเพศเมียเทียมสำหรับโคซิลิโคน', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(42, 'หลอดแก้ว ขนาด 15 มิลลิลิตร', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(43, 'เครื่องรีดน้ำเชื้อโค ระบบไฟฟ้า', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 2, 0),
	(44, 'ปืนฉีดน้ำเชื้อโค ออล - ทู -เมท , คอนทิเนนทอล', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(45, 'ปืนฉีดน้ำเชื้อโคใช้ครั้งเดียวทิ้งขนาด 0.25 ml', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(46, 'ปืนฉีดน้ำเชื้อโค แบบโอริง', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(47, 'ปืนฉีดน้ำเชื้อ ใช้ครั้งเดียวทิ้ง ขนาด 0.5 ml', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(48, 'ปืนผสมเทียมด้วยตัวเอง', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(49, 'พลาสติกครอบชีส ขนาด 18 นิ้ว ', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(50, 'เครื่องอุ่นน้ำเชื้อโคแบบใช้ไฟบ้าน', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 2, 0),
	(51, 'กระติกอุ่นน้ำเชื้อโค พร้อมเทอร์โมมิเตอร์', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(52, 'เครื่องมือตรวจการเป็นสัดในโค', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(53, 'เอสโตรเทค สติ๊กเกอร์ตรวจการเป็นสัดในโค', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0),
	(54, 'ถุงมือล้วง ซูเปอร์เซนซิทีฟ สีฟ้า', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 6, 0),
	(55, 'ถุงมือล้วง สุพรีม สีม่วง', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 6, 0),
	(56, 'ถุงมือล้วงสีเขียว', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 6, 0),
	(57, 'ถุงมือล้วงสีส้ม', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 6, 0),
	(58, 'โอ-ริง แหวนล็อคปืนผสมเทียมโค', 0, 0, 0, 'ห้องเก็บเครื่องมือทางการแพทย์', 1, 3, 0);
/*!40000 ALTER TABLE `tool` ENABLE KEYS */;


-- Dumping structure for table farm2017.tool_borrow
CREATE TABLE IF NOT EXISTS `tool_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `day_borrow` datetime DEFAULT NULL,
  `day_return` datetime DEFAULT NULL COMMENT 'วันที่ทำการคืน',
  `tool_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_borrow_tool_tool1_idx` (`tool_id`),
  KEY `fk_tool_borrow_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `fk_bill_borrow_tool_tool1` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_borrow_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_borrow_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_borrow_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.tool_borrow: ~0 rows (approximately)
DELETE FROM `tool_borrow`;
/*!40000 ALTER TABLE `tool_borrow` DISABLE KEYS */;
INSERT INTO `tool_borrow` (`id`, `quantity`, `day_borrow`, `day_return`, `tool_id`, `bill_id`, `member_id`, `status_id`) VALUES
	(1, 1, '2016-12-16 00:00:00', '2016-12-17 00:00:00', 1, NULL, 18, 2);
/*!40000 ALTER TABLE `tool_borrow` ENABLE KEYS */;


-- Dumping structure for table farm2017.tool_broken
CREATE TABLE IF NOT EXISTS `tool_broken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `day_broken` datetime DEFAULT NULL,
  `day_return` datetime DEFAULT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toolid_bill_id_member_id_status_id` (`tool_id`,`bill_id`,`member_id`,`status_id`),
  KEY `fk_tool_broken_bill1` (`bill_id`),
  KEY `fk_tool_broken_member1` (`member_id`),
  KEY `fk_tool_broken_status1` (`status_id`),
  CONSTRAINT `fk_tool_broken_bill1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_broken_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_broken_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_broken_tool1` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.tool_broken: ~0 rows (approximately)
DELETE FROM `tool_broken`;
/*!40000 ALTER TABLE `tool_broken` DISABLE KEYS */;
INSERT INTO `tool_broken` (`id`, `quantity`, `day_broken`, `day_return`, `tool_id`, `bill_id`, `member_id`, `status_id`) VALUES
	(1, 1, '2016-12-16 00:00:00', '2016-12-16 00:00:00', 1, NULL, 18, 6);
/*!40000 ALTER TABLE `tool_broken` ENABLE KEYS */;


-- Dumping structure for table farm2017.tool_import
CREATE TABLE IF NOT EXISTS `tool_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `import_tool` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `day` datetime DEFAULT NULL COMMENT 'วันที่นำเข้า',
  `before_quantity` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `lot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_in_tool_tool1_idx` (`tool_id`),
  KEY `fk_tool_import_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_bill_in_tool_tool1` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_import_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_import_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.tool_import: ~0 rows (approximately)
DELETE FROM `tool_import`;
/*!40000 ALTER TABLE `tool_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_import` ENABLE KEYS */;


-- Dumping structure for table farm2017.tool_order
CREATE TABLE IF NOT EXISTS `tool_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` datetime DEFAULT NULL COMMENT 'วันที่สั่งซื้อ',
  `quantity` int(11) DEFAULT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_order_tool_tool1_idx` (`tool_id`),
  KEY `fk_tool_order_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_bill_order_tool_tool1` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_order_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_order_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.tool_order: ~0 rows (approximately)
DELETE FROM `tool_order`;
/*!40000 ALTER TABLE `tool_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_order` ENABLE KEYS */;


-- Dumping structure for table farm2017.tool_release
CREATE TABLE IF NOT EXISTS `tool_release` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_release_tool_tool1_idx` (`tool_id`),
  KEY `fk_tool_release_bill1_idx` (`bill_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_bill_release_tool_tool1` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_release_bill1` FOREIGN KEY (`bill_id`) REFERENCES `storehouse`.`bill_old` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tool_release_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.tool_release: ~0 rows (approximately)
DELETE FROM `tool_release`;
/*!40000 ALTER TABLE `tool_release` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_release` ENABLE KEYS */;


-- Dumping structure for table farm2017.treatment_history
CREATE TABLE IF NOT EXISTS `treatment_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symptom` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `cause_of_illness` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `be_allergic` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `date_treat` date DEFAULT NULL,
  `time_treat` time DEFAULT NULL,
  `date_end_treat` date DEFAULT NULL,
  `dose_usesage` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_treat_horn` date DEFAULT NULL COMMENT 'เริ่มต้นวันเวลาสูญเขา',
  `date_treat_num` date DEFAULT NULL COMMENT 'เริ่มต้นวันเวลาตีเบอร์',
  `date_treat_birth` date DEFAULT NULL COMMENT 'เริ่มต้นวันเวลาคลอด',
  `date_end_treat_horn` date DEFAULT NULL COMMENT 'สิ้นสุดวันเวลาสูญเขา',
  `date_end_treat_num` date DEFAULT NULL COMMENT 'สิ้นสุดวันเวลาตีเบอร์',
  `date_end_treat_birth` date DEFAULT NULL COMMENT 'สิ้นสุดวันเวลาคลอด',
  `date_start_med` date DEFAULT NULL,
  `date_stop_med` date DEFAULT NULL,
  `note` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `status_treat_id` int(11) DEFAULT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `status_medicine` int(11) DEFAULT NULL,
  `status_disease` int(11) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `type_health_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `status_treat_id` (`status_treat_id`),
  KEY `cattle_id` (`cattle_id`),
  KEY `status_medicine` (`status_medicine`),
  KEY `status_disease` (`status_disease`),
  KEY `medicine_id` (`medicine_id`),
  KEY `disease_id` (`disease_id`),
  KEY `type_health_id` (`type_health_id`),
  CONSTRAINT `fk_status_disease` FOREIGN KEY (`status_disease`) REFERENCES `status_disease` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_status_medicine` FOREIGN KEY (`status_medicine`) REFERENCES `status_medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_cattle1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_disease1` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_history_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_history_status_treat1` FOREIGN KEY (`status_treat_id`) REFERENCES `status_treat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_medicine1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_type_health` FOREIGN KEY (`type_health_id`) REFERENCES `type_health` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.treatment_history: ~11 rows (approximately)
DELETE FROM `treatment_history`;
/*!40000 ALTER TABLE `treatment_history` DISABLE KEYS */;
INSERT INTO `treatment_history` (`id`, `symptom`, `cause_of_illness`, `be_allergic`, `date_treat`, `time_treat`, `date_end_treat`, `dose_usesage`, `date_treat_horn`, `date_treat_num`, `date_treat_birth`, `date_end_treat_horn`, `date_end_treat_num`, `date_end_treat_birth`, `date_start_med`, `date_stop_med`, `note`, `member_id`, `status_treat_id`, `cattle_id`, `status_medicine`, `status_disease`, `medicine_id`, `disease_id`, `type_health_id`) VALUES
	(1, 'เป็นไข้', 'บริเวณบาดแผลมีหนอนซอนไซ คอยกัดกินเนื้อเยื่อ ทำให้แผลหายยาก แผลมีกลิ่นเน่าเหม็น แผลอักเสบ', '-', '2017-12-30', '01:23:36', '2017-12-30', NULL, '2017-12-30', '2017-12-30', '2017-12-30', '2017-12-30', '2017-12-30', '2017-12-30', '2017-12-30', '2017-12-30', '', 18, 2, 8, NULL, NULL, 9, 10, 1),
	(2, NULL, 'ท้องอืดตึง ไม่กินอาหาร เดินกระวนกระวาย น้ำลายไหลเป็นฟอง ไม่เคี้ยวเอื้อง ลุกขึ้น และนอนลงอยู่บ่อยๆ หายใจลำบาก หากมีอาการเป็นมาก โคจะนอน และลุกไม่ได้ มีอาการท้องบวมโต หายใจไม่ออก และตายในที่สุด', '-', '2018-01-16', '01:23:35', '2018-01-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 6, NULL, NULL, 25, 11, 1),
	(3, NULL, '	โคปัสสาวะไม่ค่อยออก หรือออกเป็นหยดๆ มีอาการกระสับกระส่าย เดี๋ยวนอนเดี๋ยวลุก กินน้ำ และอาหารน้อย มักใช้เท้าเตะท้อง หรือกระทืบพื้นคอก หนังใต้ทวารกระตุก', '-', '2017-01-10', '01:23:35', '2017-01-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 7, NULL, NULL, 15, 2, 1),
	(4, NULL, 'มีอาการอย่างรุนแรง คือ มีไข้สูงมาก ( 105-107 ฟาเรนไฮต์ ) น้ำมูก น้ำลายไหลยืด ขอบตาบวม นัยน์ตาลึก ไม่กินอาหาร นอนซม ถ้าไล่ให้ลุกหรือเดิน จะแสดงอาการเจ็บปวดที่ขา เวลาเดินขาจะแข็ง หลังโก่ง แต่ไม่พบบาดแผลที่ขาหรือที่กีบเท้า แต่โรคนี้จะค่อยๆ หายเป็นปกติในเวลา 3-4 วัน ถ้าไม่มีโรคอื่นแทรกซ้อน แต่ควรระวังในเรื่องการเดิน และการหกล้ม ซึ่งอาจทำให้ขาหักหรือขาพิการได้', '-', '2017-12-08', '01:23:38', '2017-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 18, 2, 9, NULL, NULL, 8, 8, 1),
	(5, NULL, 'ระยะแรกโคจะมีอาการซึม ไม่กินอาหาร น้ำลายไหลมาก มีไข้สูง ขนลุก เยื่อเมือกบริเวณตา เหงือก และในช่องเพศมีสีแดงเข้ม ต่อมาโคจะมีอาการโลหิตจาง (เม็ดเลือดแดงแตก) คือ เยื่อเมือกซีดขาว หรือซีดปนเหลืองแบบดีซ่าน ตาเหลือง หายใจหอบ และยังคงมีอาการมีไข้สูงอยู่ โคจะผอม ไม่กินอาหาร และอ่อนแอลงอย่างรวดเร็ว จนทำหให้ตายได้เพราะขาดเลือด ถ้าเป็นแม่โคตั้งท้องมักจะแท้งเสม', '-', '2017-02-17', '01:23:39', '2017-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 10, NULL, NULL, 1, 7, 1),
	(7, NULL, 'มีไข้ ซึม เบื่ออาหาร หลังจากนั้นจะมีเม็ดตุ่มพอง เกิดที่ริมฝีปากในช่องปาก', '-', '2017-01-26', '01:23:40', '2017-01-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 12, NULL, NULL, 15, 3, 1),
	(8, NULL, 'สัตว์มีอาการไข้สูง อุณหภูมิ 104 องศาฟาเรนไฮต์ขึ้นไป บริเวณใต้คาง คอเหนียง และพื้นท้องจะบวมน้ำ มีน้ำลายไหลยืด ไอ ซึม ต่อมาสัตว์จะตายจากการกินอาหารไม่ได้ และหายใจไม่ออก', '-', '2017-02-01', '01:23:39', '2017-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 18, 2, 11, NULL, NULL, 28, 6, 1),
	(9, NULL, 'ระยะแรกโคจะมีอาการซึม ไม่กินอาหาร น้ำลายไหลมาก มีไข้สูง ขนลุก เยื่อเมือกบริเวณตา เหงือก และในช่องเพศมีสีแดงเข้ม ต่อมาโคจะมีอาการโลหิตจาง (เม็ดเลือดแดงแตก) ', '-', '2017-02-03', '01:23:34', '2017-02-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 5, NULL, NULL, 16, 7, 1),
	(11, NULL, '	โคปัสสาวะไม่ค่อยออก หรือออกเป็นหยดๆ มีอาการกระสับกระส่าย เดี๋ยวนอนเดี๋ยวลุก กินน้ำ และอาหารน้อย มักใช้เท้าเตะท้อง หรือกระทืบพื้นคอก หนังใต้ทวารกระตุก', '-', '2017-07-12', '01:23:37', '2017-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 18, 2, 8, NULL, NULL, 13, 2, 1),
	(12, NULL, 'เลือดไหลไม่หยุด', NULL, '2017-01-01', '02:18:24', '2018-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, 2),
	(13, NULL, '222', '22', '2018-01-19', '17:13:52', '2018-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, 2);
/*!40000 ALTER TABLE `treatment_history` ENABLE KEYS */;


-- Dumping structure for table farm2017.type
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type: ~3 rows (approximately)
DELETE FROM `type`;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`id`, `name`) VALUES
	(1, 'ประกวดโค'),
	(2, 'ประมูลโคพันธุ์'),
	(3, 'ประมูลโคขุน');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_alert
CREATE TABLE IF NOT EXISTS `type_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `note` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_alert: ~12 rows (approximately)
DELETE FROM `type_alert`;
/*!40000 ALTER TABLE `type_alert` DISABLE KEYS */;
INSERT INTO `type_alert` (`id`, `name`, `value`, `note`) VALUES
	(1, 'ผสมพันธุ์', 18, 'หลังจากผสมพันธุ์ไม่ติด'),
	(2, 'ตรวจท้อง', 28, 'หลังจากผสมพันธุ์'),
	(3, 'คลอด', 283, 'หลังจากตั้งท้อง'),
	(5, 'เหนี่ยวนำการกลับสัตว์', 60, 'หลังจากคลอด'),
	(6, 'ขุดเขา', 60, 'หลังจากเกิด'),
	(7, 'หย่านม', 180, 'หลังจากเกิด'),
	(8, 'ตีเบอร์', 240, 'หลังจากเกิด'),
	(9, 'บันทึกน้ำหนักลูกโค 1 ปี', 365, 'หลังจากเกิด'),
	(10, 'เหนี่ยวนำการกลับสัตว์', 61, 'หลังจากโคแท้ง'),
	(11, 'เหนี่ยวนำการกลับสัตว์', NULL, 'เหนี่ยวนำการกลับสัตว์'),
	(12, 'ผสมพันธุ์', NULL, 'หลังจากเหนี่ยวนำการกลับสัตว์'),
	(13, 'การรักษา', 1, 'การรักษา');
/*!40000 ALTER TABLE `type_alert` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_bill
CREATE TABLE IF NOT EXISTS `type_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_bill: ~14 rows (approximately)
DELETE FROM `type_bill`;
/*!40000 ALTER TABLE `type_bill` DISABLE KEYS */;
INSERT INTO `type_bill` (`id`, `value`) VALUES
	(1, 'นำเข้ายา'),
	(2, 'เบิกยา'),
	(3, 'สั่งซื้อยา'),
	(4, 'นำเข้าน้ำเชื้อ'),
	(5, 'นำเข้าถังเก็บน้ำเชื้อ'),
	(6, 'เบิกน้ำเชื้อ'),
	(7, 'สั่งซื้อน้ำเชื้อ/ถังเก็บน้ำเชื้อ'),
	(8, 'นำเข้าวัตถุดิบ'),
	(9, 'เบิกวัตถุดิบ'),
	(10, 'สั่งซื้อวัตถุดิบ'),
	(11, 'นำเข้าวัสดุ/อุปกรณ์'),
	(12, 'เบิกวัสดุ'),
	(13, 'ยืมคืนอุปกรณ์'),
	(14, 'สั่งซื้อวัสดุ/อุปกรณ์');
/*!40000 ALTER TABLE `type_bill` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_bucket
CREATE TABLE IF NOT EXISTS `type_bucket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_bucket: ~3 rows (approximately)
DELETE FROM `type_bucket`;
/*!40000 ALTER TABLE `type_bucket` DISABLE KEYS */;
INSERT INTO `type_bucket` (`id`, `value`) VALUES
	(1, 'ถังเก็บน้ำเชื้อ'),
	(2, 'ถังเก็บไนโตรเจนเหลว'),
	(3, 'ถังสนาม');
/*!40000 ALTER TABLE `type_bucket` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_cattle
CREATE TABLE IF NOT EXISTS `type_cattle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_cattle: ~2 rows (approximately)
DELETE FROM `type_cattle`;
/*!40000 ALTER TABLE `type_cattle` DISABLE KEYS */;
INSERT INTO `type_cattle` (`id`, `value`) VALUES
	(1, 'โคเนื้อ'),
	(2, 'โคนม');
/*!40000 ALTER TABLE `type_cattle` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_cow
CREATE TABLE IF NOT EXISTS `type_cow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_cow: ~3 rows (approximately)
DELETE FROM `type_cow`;
/*!40000 ALTER TABLE `type_cow` DISABLE KEYS */;
INSERT INTO `type_cow` (`id`, `name`) VALUES
	(1, 'โคประกวด'),
	(2, 'โคประมูลโคพันธุ์'),
	(3, 'โคประมูลโคขุน');
/*!40000 ALTER TABLE `type_cow` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_dairy
CREATE TABLE IF NOT EXISTS `type_dairy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.type_dairy: ~2 rows (approximately)
DELETE FROM `type_dairy`;
/*!40000 ALTER TABLE `type_dairy` DISABLE KEYS */;
INSERT INTO `type_dairy` (`id`, `value`) VALUES
	(1, 'พันธุ์แท้ขาวดำ'),
	(2, 'พันธุ์ผสมขาวดำ');
/*!40000 ALTER TABLE `type_dairy` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_formula
CREATE TABLE IF NOT EXISTS `type_formula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_formula: ~0 rows (approximately)
DELETE FROM `type_formula`;
/*!40000 ALTER TABLE `type_formula` DISABLE KEYS */;
INSERT INTO `type_formula` (`id`, `value`) VALUES
	(1, 'อาหารข้นราคาต่ำสุด');
/*!40000 ALTER TABLE `type_formula` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_health
CREATE TABLE IF NOT EXISTS `type_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='ประเภทการรักษา';

-- Dumping data for table farm2017.type_health: ~5 rows (approximately)
DELETE FROM `type_health`;
/*!40000 ALTER TABLE `type_health` DISABLE KEYS */;
INSERT INTO `type_health` (`id`, `value`) VALUES
	(1, 'การรักษาโรค'),
	(2, 'การรักษาหลังสูญเขา'),
	(3, 'การรักษาหลังตีเบอร์'),
	(4, 'การรักษาหลังโคแท้ง'),
	(5, 'การรักษาหลังคลอด');
/*!40000 ALTER TABLE `type_health` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_horn
CREATE TABLE IF NOT EXISTS `type_horn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_horn: ~5 rows (approximately)
DELETE FROM `type_horn`;
/*!40000 ALTER TABLE `type_horn` DISABLE KEYS */;
INSERT INTO `type_horn` (`id`, `value`) VALUES
	(1, 'ใช้สารเคมี'),
	(2, 'ใช้ความร้อน'),
	(3, 'ใช้ช้อนตัดเขา'),
	(4, 'ใช้เลื่อยตัดเขา'),
	(5, 'ใช้คีมตัดเขา');
/*!40000 ALTER TABLE `type_horn` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_material
CREATE TABLE IF NOT EXISTS `type_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_material: ~4 rows (approximately)
DELETE FROM `type_material`;
/*!40000 ALTER TABLE `type_material` DISABLE KEYS */;
INSERT INTO `type_material` (`id`, `value`) VALUES
	(1, 'อาหารข้น'),
	(2, 'อาหารหยาบ'),
	(3, 'อาหารสำเร็จรูป'),
	(4, 'ยังไม่ลงระบบ');
/*!40000 ALTER TABLE `type_material` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_medicine
CREATE TABLE IF NOT EXISTS `type_medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) DEFAULT NULL COMMENT 'ชื่อประเภทยา เช่น ยาเม็ด ยาน้ำ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.type_medicine: ~0 rows (approximately)
DELETE FROM `type_medicine`;
/*!40000 ALTER TABLE `type_medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_medicine` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_nutrient
CREATE TABLE IF NOT EXISTS `type_nutrient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Formula_record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Formula_record_id` (`Formula_record_id`),
  CONSTRAINT `fk_Type_nutrient_Formula_record1` FOREIGN KEY (`Formula_record_id`) REFERENCES `formula_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_nutrient: ~0 rows (approximately)
DELETE FROM `type_nutrient`;
/*!40000 ALTER TABLE `type_nutrient` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_nutrient` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_sync
CREATE TABLE IF NOT EXISTS `type_sync` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_sync: ~2 rows (approximately)
DELETE FROM `type_sync`;
/*!40000 ALTER TABLE `type_sync` DISABLE KEYS */;
INSERT INTO `type_sync` (`id`, `value`) VALUES
	(1, 'Program A'),
	(2, 'Program B');
/*!40000 ALTER TABLE `type_sync` ENABLE KEYS */;


-- Dumping structure for table farm2017.type_tool
CREATE TABLE IF NOT EXISTS `type_tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.type_tool: ~3 rows (approximately)
DELETE FROM `type_tool`;
/*!40000 ALTER TABLE `type_tool` DISABLE KEYS */;
INSERT INTO `type_tool` (`id`, `value`) VALUES
	(1, 'อุปกรณ์ใช้ในฟาร์ม'),
	(2, 'วัสดุที่ใช้ในฟาร์ม'),
	(3, 'วัสดุก่อสร้าง');
/*!40000 ALTER TABLE `type_tool` ENABLE KEYS */;


-- Dumping structure for table farm2017.unit_medicine
CREATE TABLE IF NOT EXISTS `unit_medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.unit_medicine: ~2 rows (approximately)
DELETE FROM `unit_medicine`;
/*!40000 ALTER TABLE `unit_medicine` DISABLE KEYS */;
INSERT INTO `unit_medicine` (`id`, `value`) VALUES
	(2, 'กล่อง'),
	(1, 'ขวด');
/*!40000 ALTER TABLE `unit_medicine` ENABLE KEYS */;


-- Dumping structure for table farm2017.unit_nutrient
CREATE TABLE IF NOT EXISTS `unit_nutrient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.unit_nutrient: ~0 rows (approximately)
DELETE FROM `unit_nutrient`;
/*!40000 ALTER TABLE `unit_nutrient` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_nutrient` ENABLE KEYS */;


-- Dumping structure for table farm2017.unit_raw_material
CREATE TABLE IF NOT EXISTS `unit_raw_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.unit_raw_material: ~3 rows (approximately)
DELETE FROM `unit_raw_material`;
/*!40000 ALTER TABLE `unit_raw_material` DISABLE KEYS */;
INSERT INTO `unit_raw_material` (`id`, `value`) VALUES
	(2, 'กระสอบ'),
	(1, 'กิโลกรัม'),
	(3, 'ฟ่อน');
/*!40000 ALTER TABLE `unit_raw_material` ENABLE KEYS */;


-- Dumping structure for table farm2017.unit_tool
CREATE TABLE IF NOT EXISTS `unit_tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.unit_tool: ~10 rows (approximately)
DELETE FROM `unit_tool`;
/*!40000 ALTER TABLE `unit_tool` DISABLE KEYS */;
INSERT INTO `unit_tool` (`id`, `value`) VALUES
	(9, 'กระปุก'),
	(4, 'กล่อง'),
	(10, 'ขวด'),
	(6, 'คู่'),
	(8, 'ชุด'),
	(1, 'ด้าม'),
	(7, 'ปื้น'),
	(5, 'ม้วน'),
	(3, 'อัน'),
	(2, 'เครื่อง');
/*!40000 ALTER TABLE `unit_tool` ENABLE KEYS */;


-- Dumping structure for table farm2017.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `frist_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `thai_id` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table farm2017.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table farm2017.worktogether
CREATE TABLE IF NOT EXISTS `worktogether` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `idcard` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `festivity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `festivity_id` (`festivity_id`),
  CONSTRAINT `fk_worktogether_festivity1` FOREIGN KEY (`festivity_id`) REFERENCES `festivity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table farm2017.worktogether: ~0 rows (approximately)
DELETE FROM `worktogether`;
/*!40000 ALTER TABLE `worktogether` DISABLE KEYS */;
/*!40000 ALTER TABLE `worktogether` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
