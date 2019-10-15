-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: cisco_ap
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cisco_auth_error`
--

DROP TABLE IF EXISTS `cisco_auth_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_auth_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` int(28) unsigned NOT NULL,
  `reason` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_auth_error`
--

LOCK TABLES `cisco_auth_error` WRITE;
/*!40000 ALTER TABLE `cisco_auth_error` DISABLE KEYS */;
INSERT INTO `cisco_auth_error` VALUES (12,'2019-10-14 12:53:41',3232235926,'Ошибка. Проверьте ваши данные для доступа');
/*!40000 ALTER TABLE `cisco_auth_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_business`
--

DROP TABLE IF EXISTS `cisco_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_business`
--

LOCK TABLES `cisco_business` WRITE;
/*!40000 ALTER TABLE `cisco_business` DISABLE KEYS */;
INSERT INTO `cisco_business` VALUES (1,'Автозаправка АЗС №1 Беларуснефть'),(2,'ОАО Беларусбанк'),(3,'Гостиница Интурист'),(6,'Юность'),(7,'АЗС 86'),(8,'АЗС 100'),(9,'Гостиница Беларусь'),(10,'123415'),(11,'Запровка'),(12,'123'),(13,'ГОРГАЗ'),(14,'БелинвестБанк'),(15,'Белагропромбанк');
/*!40000 ALTER TABLE `cisco_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_permissions`
--

DROP TABLE IF EXISTS `cisco_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissions` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_permissions`
--

LOCK TABLES `cisco_permissions` WRITE;
/*!40000 ALTER TABLE `cisco_permissions` DISABLE KEYS */;
INSERT INTO `cisco_permissions` VALUES (1,'info'),(3,'home'),(4,'point'),(6,'console');
/*!40000 ALTER TABLE `cisco_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_point_address`
--

DROP TABLE IF EXISTS `cisco_point_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_point_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_point_address`
--

LOCK TABLES `cisco_point_address` WRITE;
/*!40000 ALTER TABLE `cisco_point_address` DISABLE KEYS */;
INSERT INTO `cisco_point_address` VALUES (1,'Беларусь, Брест, Московская улица, 202'),(2,'Беларусь, Брест, Московская улица, 210'),(3,'Беларусь, Брест, Пионерская улица, 50'),(4,'Беларусь, Брест, улица Гоголя, 65'),(5,'Россия, Москва'),(6,'Россия, Иркутская область, Ангарск, 123-й квартал'),(7,'Беларусь, Брест, микрорайон Киевка, 3-й Заводской переулок'),(8,'Беларусь, Брест, улица Гоголя, 87'),(9,'Беларусь, Брэст, садовыя ўчасткі'),(10,'Беларусь, Брест, улица 17 Сентября'),(11,'Беларусь, Брест, микрорайон Киевка, 3-й Заводской переулок, 11'),(12,'Беларусь, Брестская область, Брестский район, Тельминский сельсовет, деревня Тельмы-2'),(13,'Беларусь, Брестская область, Кобрин, улица Гоголя'),(14,'Беларусь, Брест, улица Гоголя'),(15,'Беларусь, Брестская область, Брестский район, Тельминский сельсовет, деревня Тельмы-1'),(16,'Беларусь, Брест, улица 17 Сентября, 1'),(17,'Беларусь, Брест, 3-й Северный переулок'),(18,'Казахстан, Восточно-Казахстанская область, Семей, квартал 343'),(19,'Беларусь, Брест, Советская улица'),(20,'Беларусь, Брест, микрорайон Киевка, 3-й Заводской переулок 11'),(21,'Беларусь, Брест, улица Гоголя, 1Г'),(22,'Беларусь, Брест, улица Гоголя, 85'),(23,'Беларусь, Брест, улица Орджоникидзе, 22'),(24,'Беларусь, Брест, улица Горького, 27'),(25,'Беларусь, Брест, улица Карла Маркса, 3'),(26,'Беларусь, Брест, микрорайон Киевка, 3-й Заводской переулок, 34А'),(27,'Россия, Москва, Московский, 3-й микрорайон'),(28,'Казахстан, Актобе, 12-й микрорайон'),(29,'Беларусь, Минск, улица Героев 120-й Дивизии'),(30,'Беларусь, Брест, 2-я Заводская улица'),(31,'Беларусь, Брестская область, Брестский район, агрогородок Мухавец, улица 60 лет Октября'),(32,'Беларусь, Брест, 2-я Заводская улица, 5'),(33,'Беларусь, Брест, улица 17 Сентября, 12'),(34,'Беларусь, Брест, улица 17 Сентября, 12А'),(35,'Беларусь, Брест, бульвар Космонавтов, 115');
/*!40000 ALTER TABLE `cisco_point_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_point_data`
--

DROP TABLE IF EXISTS `cisco_point_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_point_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` int(25) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `id_address` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `notice` text NOT NULL,
  `set_place` varchar(150) NOT NULL,
  `speed_download` float NOT NULL,
  `speed_upload` float NOT NULL,
  `id_ssid` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `id_model` int(11) NOT NULL,
  `mac` varchar(50) NOT NULL,
  `installation_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_address` (`id_address`),
  KEY `id_business` (`id_business`),
  KEY `id_ssid` (`id_ssid`),
  KEY `id_model` (`id_model`),
  CONSTRAINT `cisco_point_data_ibfk_1` FOREIGN KEY (`id_address`) REFERENCES `cisco_point_address` (`id`),
  CONSTRAINT `cisco_point_data_ibfk_2` FOREIGN KEY (`id_business`) REFERENCES `cisco_business` (`id`),
  CONSTRAINT `cisco_point_data_ibfk_3` FOREIGN KEY (`id_ssid`) REFERENCES `cisco_point_ssid` (`id`),
  CONSTRAINT `cisco_point_data_ibfk_4` FOREIGN KEY (`id_model`) REFERENCES `cisco_points_model` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_point_data`
--

LOCK TABLES `cisco_point_data` WRITE;
/*!40000 ALTER TABLE `cisco_point_data` DISABLE KEYS */;
INSERT INTO `cisco_point_data` VALUES (40,84010775,52.1084,23.7354,26,11,'','Под потолком',30,20,3,'internal',1,'61:24:12:41:25:12','2019-04-18'),(42,16909436,52.0866,23.6937,10,3,'','4125',50,15,3,'internal',1,'12:31:25:12:41:24','2018-01-01'),(45,33882609,52.0892,23.6935,34,3,'124124','124124',30,10,2,'internal',1,'12:41:24:12:41:24','2018-01-01'),(46,33621373,52.0962,23.6904,15,3,'','5125125',30,35,3,'internal',1,'12:12:41:24:15:21','2018-01-01'),(49,16909179,52.0954,23.6916,30,2,'','3123123',50,50,2,'internal',1,'12:12:31:23:12:31','2018-01-01'),(50,83952159,52.0954,23.6904,16,3,'','125123123',30,25,2,'internal',1,'12:31:23:12:31:23','2018-01-01'),(51,33752555,52.0962,23.6917,31,6,'','237235235235',100,30,1,'internal',1,'23:52:35:23:52:35','2018-01-01'),(53,17039667,52.095,23.693,7,6,'','Gjl',100,50,6,'internal',1,'12:14:15:12:51:25','2019-09-20'),(54,602663915,52.0945,23.6936,33,6,'','235',40,40,2,'external',1,'23:52:35:23:52:35','2018-01-01'),(55,83952140,52.0913,23.7017,35,14,'','6123142',30,25,1,'internal',1,'12:51:23:12:51:61','2019-10-11'),(56,117571864,52.0965,23.6938,11,13,'','124',50,20,7,'external',1,'12:41:21:24:12:41','2019-10-11');
/*!40000 ALTER TABLE `cisco_point_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_point_speed`
--

DROP TABLE IF EXISTS `cisco_point_speed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_point_speed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speed` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_point_speed`
--

LOCK TABLES `cisco_point_speed` WRITE;
/*!40000 ALTER TABLE `cisco_point_speed` DISABLE KEYS */;
INSERT INTO `cisco_point_speed` VALUES (1,0.5),(2,1),(3,2),(4,3),(5,4),(6,6),(7,8),(8,10),(9,15),(10,20),(11,25),(12,30),(13,35),(14,40),(15,50),(16,100);
/*!40000 ALTER TABLE `cisco_point_speed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_point_ssid`
--

DROP TABLE IF EXISTS `cisco_point_ssid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_point_ssid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_point_ssid`
--

LOCK TABLES `cisco_point_ssid` WRITE;
/*!40000 ALTER TABLE `cisco_point_ssid` DISABLE KEYS */;
INSERT INTO `cisco_point_ssid` VALUES (1,'Alfabank'),(2,'SSID'),(3,'Belarusbank'),(5,'124123'),(6,'Unost'),(7,'GorGaz'),(8,'Wifi-belagro');
/*!40000 ALTER TABLE `cisco_point_ssid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_points_model`
--

DROP TABLE IF EXISTS `cisco_points_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_points_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_points_model`
--

LOCK TABLES `cisco_points_model` WRITE;
/*!40000 ALTER TABLE `cisco_points_model` DISABLE KEYS */;
INSERT INTO `cisco_points_model` VALUES (1,'702');
/*!40000 ALTER TABLE `cisco_points_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_role_permissions`
--

DROP TABLE IF EXISTS `cisco_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL,
  `id_permissions` int(11) NOT NULL,
  `sh` int(11) NOT NULL DEFAULT '1',
  `a` int(11) NOT NULL DEFAULT '0',
  `e` int(11) NOT NULL DEFAULT '0',
  `del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cisco_role_permissions_ibfk_1` (`id_role`),
  KEY `cisco_role_permissions_ibfk_2` (`id_permissions`),
  CONSTRAINT `cisco_role_permissions_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `cisco_users_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cisco_role_permissions_ibfk_2` FOREIGN KEY (`id_permissions`) REFERENCES `cisco_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_role_permissions`
--

LOCK TABLES `cisco_role_permissions` WRITE;
/*!40000 ALTER TABLE `cisco_role_permissions` DISABLE KEYS */;
INSERT INTO `cisco_role_permissions` VALUES (24,1,1,1,0,0,0),(26,2,1,1,1,0,0),(28,1,4,1,1,1,1),(29,1,6,1,0,0,0),(30,2,3,1,1,0,0),(32,1,3,1,0,0,0),(33,2,4,1,1,1,0),(34,3,1,1,0,0,0),(35,3,4,1,0,0,0),(36,3,3,1,0,0,0);
/*!40000 ALTER TABLE `cisco_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_users`
--

DROP TABLE IF EXISTS `cisco_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `banned` int(1) NOT NULL DEFAULT '0',
  `salt` varchar(100) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `cisco_users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `cisco_users_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_users`
--

LOCK TABLES `cisco_users` WRITE;
/*!40000 ALTER TABLE `cisco_users` DISABLE KEYS */;
INSERT INTO `cisco_users` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e',0,NULL,1),(2,'user','81dc9bdb52d04dc20036dbd8313ed055',0,NULL,2),(3,'korn','e10adc3949ba59abbe56e057f20f883e',0,NULL,3);
/*!40000 ALTER TABLE `cisco_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_users_data`
--

DROP TABLE IF EXISTS `cisco_users_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_users_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `sessionTime` int(100) NOT NULL DEFAULT '1440',
  `checkIP` int(5) NOT NULL DEFAULT '0',
  `checkAgent` int(5) NOT NULL DEFAULT '0',
  `id_users` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_users` (`id_users`),
  CONSTRAINT `cisco_users_data_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `cisco_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_users_data`
--

LOCK TABLES `cisco_users_data` WRITE;
/*!40000 ALTER TABLE `cisco_users_data` DISABLE KEYS */;
INSERT INTO `cisco_users_data` VALUES (1,'Дорошук','Дмитрий','+375297293386',1440,1,1,1),(2,'Иван','Иванов','46579133',1440,0,0,2),(3,'Дмитрий','Корн','+37529 72933 86',1440,0,0,3);
/*!40000 ALTER TABLE `cisco_users_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_users_data_auth`
--

DROP TABLE IF EXISTS `cisco_users_data_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_users_data_auth` (
  `id_session` varchar(100) NOT NULL,
  `id_users` int(20) NOT NULL,
  `ip_address` int(20) unsigned NOT NULL,
  `agent_user_hash` varchar(150) NOT NULL,
  `lastVisit` int(50) NOT NULL,
  PRIMARY KEY (`id_session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_users_data_auth`
--

LOCK TABLES `cisco_users_data_auth` WRITE;
/*!40000 ALTER TABLE `cisco_users_data_auth` DISABLE KEYS */;
INSERT INTO `cisco_users_data_auth` VALUES ('70b8fad2800e885ab49babf96992df18',1,3232235926,'03ae9b347fef0e4eb823d90450264a0a',1571131510),('d3868f78e8beb5f39a7eae45b00c16a4',1,3232235926,'03ae9b347fef0e4eb823d90450264a0a',1571128112);
/*!40000 ALTER TABLE `cisco_users_data_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_users_log_data`
--

DROP TABLE IF EXISTS `cisco_users_log_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_users_log_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_users` int(11) NOT NULL,
  `time_login` int(50) NOT NULL,
  `time_session_delete` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `lastVisit` int(50) NOT NULL,
  `ip_addr` int(20) unsigned NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `user_agent_hash` varchar(100) NOT NULL,
  `id_session` varchar(150) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_users_log_data`
--

LOCK TABLES `cisco_users_log_data` WRITE;
/*!40000 ALTER TABLE `cisco_users_log_data` DISABLE KEYS */;
INSERT INTO `cisco_users_log_data` VALUES (1,1,1569652757,'2019-09-28 06:40:27',1569652757,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-28 06:39:17'),(2,2,1569652831,'2019-09-28 06:41:39',1569652831,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-28 06:40:31'),(3,1,1569652903,'2019-09-28 06:42:49',1569652903,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-28 06:41:43'),(4,2,1569652972,'2019-09-28 06:44:03',1569652972,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-28 06:42:53'),(5,2,1569653047,'2019-09-28 06:44:12',1569653047,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-28 06:44:07'),(6,1,1569653057,'2019-09-28 08:51:54',1569660714,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-09-28 06:44:17'),(7,1,1569660718,'2019-09-28 09:24:26',1569662666,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-09-28 08:51:58'),(8,1,1569662675,'2019-09-28 10:59:30',1569668369,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-09-28 09:24:35'),(9,1,1569668374,'2019-09-28 12:13:22',1569672589,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-28 10:59:34'),(10,2,1569672806,'2019-09-28 12:28:55',1569673463,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-28 12:13:26'),(11,1,1569673740,'2019-09-28 12:34:55',1569674095,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','08f75402ab6cd8b1ad1fb9f851552649','2019-09-28 12:29:00'),(12,1,1569674275,'2019-09-28 13:51:48',1569678707,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-09-28 12:37:55'),(13,1,1569678714,'2019-09-28 14:04:08',1569679448,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','e654f97b65a6e1b5a959b6158cb3af99','2019-09-28 13:51:54'),(14,1,1569679580,NULL,1569679580,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','c0e2f8874497321cdf1b982e3d5940b0','2019-09-28 14:06:20'),(15,1,1569679707,'2019-09-28 15:27:51',1569684471,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-09-28 14:08:27'),(16,1,1569829477,'2019-09-30 12:18:59',1569845938,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-09-30 07:44:37'),(17,1,1569845952,'2019-09-30 14:12:02',1569852714,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-09-30 12:19:12'),(18,1,1569852728,NULL,1569852728,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','f7d65bc44d457c72678223c6fa00dcf7','2019-09-30 14:12:09'),(19,1,1569907802,'2019-10-01 07:49:26',1569916165,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-01 05:30:02'),(20,1,1569916170,'2019-10-01 09:44:58',1569923098,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-01 07:49:31'),(21,1,1569923106,'2019-10-01 10:30:52',1569925851,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-01 09:45:06'),(22,1,1569925870,'2019-10-01 11:02:16',1569927736,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','d32db70874faf707b2ac57a45548c3f1','2019-10-01 10:31:10'),(23,1,1569927762,'2019-10-01 11:17:31',1569928651,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','5536665cfa36568894bd0f3a1f9e4180','2019-10-01 11:02:42'),(24,1,1569928658,'2019-10-01 12:04:07',1569931439,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-01 11:17:38'),(25,2,1569931454,'2019-10-01 12:27:58',1569932871,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-01 12:04:14'),(26,2,1569932884,'2019-10-01 12:58:16',1569934693,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-01 12:28:04'),(27,1,1569934702,'2019-10-01 12:58:58',1569934702,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-01 12:58:22'),(28,1,1569934742,'2019-10-01 13:03:12',1569934742,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-01 12:59:02'),(29,1,1569934996,'2019-10-01 13:29:56',1569936596,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-01 13:03:16'),(30,1,1569936611,'2019-10-02 05:58:28',1569995908,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-01 13:30:11'),(31,1,1569995941,'2019-10-02 06:43:19',1569998397,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 05:59:04'),(32,2,1569998603,'2019-10-02 07:30:53',1570001453,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-02 06:43:24'),(33,1,1570001458,'2019-10-02 07:31:25',1570001458,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:30:58'),(34,2,1570001490,'2019-10-02 07:32:56',1570001490,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:31:30'),(35,1,1570001580,'2019-10-02 07:41:40',1570002096,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:33:00'),(36,2,1570002104,'2019-10-02 07:41:54',1570002104,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:41:44'),(37,2,1570002117,'2019-10-02 07:42:53',1570002117,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:41:57'),(38,2,1570002178,'2019-10-02 07:43:47',1570002178,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:42:58'),(39,2,1570002231,'2019-10-02 07:44:00',1570002231,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:43:51'),(40,1,1570002247,'2019-10-02 07:46:16',1570002247,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:44:07'),(41,2,1570002381,'2019-10-02 07:46:30',1570002381,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:46:21'),(42,2,1570002652,'2019-10-02 07:59:17',1570003156,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:50:52'),(43,3,1570003166,'2019-10-02 07:59:31',1570003166,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:59:26'),(44,3,1570003177,'2019-10-02 08:00:27',1570003177,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 07:59:37'),(45,3,1570003232,'2019-10-02 08:00:37',1570003232,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:00:32'),(46,1,1570003242,'2019-10-02 08:00:50',1570003242,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:00:42'),(47,2,1570003255,'2019-10-02 08:00:58',1570003255,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:00:55'),(48,3,1570003301,'2019-10-02 08:02:48',1570003301,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:01:41'),(49,3,1570003375,'2019-10-02 08:03:19',1570003375,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:02:55'),(50,1,1570003405,'2019-10-02 08:03:37',1570003405,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:03:25'),(51,2,1570003422,'2019-10-02 08:06:42',1570003422,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:03:42'),(52,1,1570003607,'2019-10-02 08:07:47',1570003607,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:06:47'),(53,2,1570003671,'2019-10-02 08:08:23',1570003671,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:07:51'),(54,1,1570003707,'2019-10-02 08:08:55',1570003707,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:08:27'),(55,1,1570003739,'2019-10-02 08:09:44',1570003739,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:09:00'),(56,3,1570003791,'2019-10-02 08:18:29',1570004299,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:09:51'),(57,2,1570004313,'2019-10-02 08:34:16',1570005253,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:18:33'),(58,1,1570005308,'2019-10-02 08:35:15',1570005308,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','LogOut','2019-10-02 08:35:08'),(59,1,1570005629,'2019-10-02 08:40:33',1570005629,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','LogOut','2019-10-02 08:40:29'),(60,1,1570005650,'2019-10-02 08:40:54',1570005650,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','LogOut','2019-10-02 08:40:50'),(61,3,1570005776,'2019-10-02 08:43:15',1570005776,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','LogOut','2019-10-02 08:42:56'),(62,1,1570005800,'2019-10-02 08:43:54',1570005800,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:43:20'),(63,2,1570005839,'2019-10-02 08:44:20',1570005839,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:43:59'),(64,2,1570005864,'2019-10-02 08:44:29',1570005864,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','LogOut','2019-10-02 08:44:24'),(65,2,1570005882,'2019-10-02 08:46:13',1570005882,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','LogOut','2019-10-02 08:44:42'),(66,1,1570005978,'2019-10-02 09:29:51',1570008571,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 08:46:18'),(67,1,1570008597,'2019-10-02 09:35:58',1570008911,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:29:57'),(68,1,1570008982,'2019-10-02 09:36:25',1570008982,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:36:22'),(69,1,1570009048,'2019-10-02 09:37:31',1570009048,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:37:28'),(70,1,1570009078,'2019-10-02 09:38:00',1570009078,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:37:58'),(71,1,1570009150,'2019-10-02 09:39:53',1570009150,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:39:10'),(72,1,1570009216,'2019-10-02 09:57:11',1570010228,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:40:16'),(73,1,1570010262,'2019-10-02 09:57:44',1570010262,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:57:42'),(74,1,1570010277,'2019-10-02 09:58:00',1570010277,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:57:57'),(75,1,1570010320,'2019-10-02 10:00:59',1570010320,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 09:58:40'),(76,1,1570010497,'2019-10-02 10:01:43',1570010497,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 10:01:37'),(77,2,1570010546,'2019-10-02 10:02:30',1570010546,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 10:02:27'),(78,1,1570010750,'2019-10-02 10:23:37',1570011811,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 10:05:50'),(79,2,1570011824,'2019-10-02 11:06:21',1570014381,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-02 10:23:44'),(80,2,1570016399,NULL,1570016399,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','1ec63eafae5c72cba737a11dd52f68d4','2019-10-02 11:39:59'),(81,2,1570016410,'2019-10-02 11:40:18',1570016410,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 11:40:10'),(82,1,1570016423,'2019-10-02 11:40:26',1570016423,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 11:40:23'),(83,1,1570016431,'2019-10-02 11:54:00',1570017235,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 11:40:31'),(84,3,1570017250,'2019-10-02 12:30:09',1570019219,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 11:54:10'),(85,1,1570019414,'2019-10-02 12:53:16',1570020510,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 12:30:14'),(86,3,1570020803,'2019-10-02 13:47:37',1570024043,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 12:53:23'),(87,1,1570024061,'2019-10-02 13:49:03',1570024061,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 13:47:41'),(88,2,1570024148,'2019-10-02 14:10:46',1570025440,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-02 13:49:08'),(89,2,1570025452,NULL,1570025452,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','60571d3b96b029b013589856308b47bd','2019-10-02 14:10:52'),(90,2,1570080231,NULL,1570080231,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','b9638edbc1db4d75dc38d43d13184290','2019-10-03 05:23:51'),(91,2,1570080328,'2019-10-03 05:32:03',1570080654,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 05:25:28'),(92,2,1570084897,'2019-10-03 06:41:49',1570084897,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 06:41:37'),(93,2,1570085005,'2019-10-03 07:01:34',1570086059,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 06:43:25'),(94,3,1570086133,'2019-10-03 07:02:27',1570086133,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 07:02:13'),(95,2,1570086150,'2019-10-03 07:03:26',1570086150,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 07:02:30'),(96,2,1570086209,'2019-10-03 07:04:28',1570086209,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 07:03:29'),(97,2,1570086271,'2019-10-03 07:06:14',1570086271,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 07:04:31'),(98,1,1570086378,'2019-10-03 07:32:15',1570087934,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-03 07:06:18'),(99,1,1570088241,NULL,1570088241,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','1c342e1f77b99daea83c16fc26a423bc','2019-10-03 07:37:21'),(100,1,1570088282,'2019-10-03 07:43:43',1570088587,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 07:38:02'),(101,1,1570088709,'2019-10-03 07:46:13',1570088709,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 07:45:09'),(102,2,1570088778,'2019-10-03 07:51:24',1570089082,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 07:46:18'),(103,1,1570089089,'2019-10-03 08:32:47',1570091567,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-03 07:51:29'),(104,2,1570091571,'2019-10-03 09:00:26',1570093218,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 08:32:52'),(105,1,1570093232,'2019-10-03 09:00:37',1570093232,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 09:00:32'),(106,3,1570093248,'2019-10-03 09:03:32',1570093248,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 09:00:48'),(107,2,1570093423,'2019-10-03 09:03:47',1570093423,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 09:03:43'),(108,1,1570093431,'2019-10-03 09:03:54',1570093431,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 09:03:51'),(109,2,1570093437,'2019-10-03 09:53:12',1570096392,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-03 09:03:57'),(110,1,1570096590,'2019-10-03 09:56:34',1570096590,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 09:56:30'),(111,1,1570096604,'2019-10-03 09:56:48',1570096604,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 09:56:44'),(112,1,1570096650,'2019-10-03 11:01:57',1570100517,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-03 09:57:30'),(113,1,1570108511,'2019-10-03 13:15:17',1570108511,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 13:15:12'),(114,2,1570108521,'2019-10-03 13:15:23',1570108521,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 13:15:21'),(115,3,1570108532,'2019-10-03 13:15:34',1570108532,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 13:15:32'),(116,1,1570108539,'2019-10-03 13:47:21',1570110441,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-03 13:15:39'),(117,2,1570110457,NULL,1570110457,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','623d951f1593744d94d661a4c707a09a','2019-10-03 13:47:37'),(118,2,1570170058,'2019-10-04 06:21:02',1570170058,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-04 06:20:58'),(119,2,1570170066,'2019-10-04 06:27:49',1570170469,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-04 06:21:06'),(120,1,1570170473,'2019-10-04 06:28:45',1570170473,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-04 06:27:53'),(121,3,1570170531,'2019-10-04 06:29:15',1570170531,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-04 06:28:51'),(122,1,1570171226,'2019-10-04 07:22:23',1570173743,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-04 06:40:26'),(123,1,1570173747,'2019-10-04 08:44:45',1570178685,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-04 07:22:27'),(124,1,1570178692,'2019-10-04 09:39:36',1570181976,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','76658ca3756ea2cc3046e672750e3984','2019-10-04 08:44:52'),(125,2,1570182231,'2019-10-04 09:51:23',1570182683,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','6e0f710f77a02d776a6dd886f13de8f2','2019-10-04 09:43:51'),(126,2,1570182835,'2019-10-04 10:01:06',1570183165,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-04 09:53:56'),(127,1,1570183271,'2019-10-04 12:32:42',1570192362,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-04 10:01:11'),(128,1,1570192369,'2019-10-04 13:00:46',1570194046,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-04 12:32:49'),(129,2,1570194155,NULL,1570194155,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','c8ef9638ba282bb35ecb102dafc8a464','2019-10-04 13:02:35'),(130,2,1570431380,'2019-10-07 10:27:58',1570444078,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-07 06:56:20'),(131,1,1570444464,'2019-10-07 11:31:51',1570447911,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-07 10:34:24'),(132,1,1570447920,'2019-10-07 12:57:20',1570453040,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-07 11:32:00'),(133,1,1570453044,'2019-10-07 13:20:11',1570454143,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-07 12:57:24'),(134,2,1570454418,'2019-10-07 13:23:58',1570454418,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-07 13:20:18'),(135,3,1570454643,'2019-10-07 13:28:57',1570454643,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-07 13:24:03'),(136,2,1570454945,'2019-10-07 14:02:04',1570456913,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-07 13:29:05'),(137,1,1570456931,'2019-10-07 14:04:55',1570456931,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-07 14:02:11'),(138,1,1570457109,NULL,1570457109,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','91c8b9436a5c2bdb878c018dc1be3fcd','2019-10-07 14:05:09'),(139,1,1570513809,'2019-10-08 06:00:45',1570514167,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-08 05:50:09'),(140,2,1570514450,'2019-10-08 06:01:39',1570514450,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-08 06:00:50'),(141,3,1570514507,'2019-10-08 06:05:37',1570514507,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-08 06:01:47'),(142,1,1570514743,NULL,1570514743,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','580ccd4a2cbc48525091fe9073037e68','2019-10-08 06:05:43'),(143,1,1570514905,NULL,1570514905,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','aa1c0460431d5e8a59b91fb8e21f1bff','2019-10-08 06:08:25'),(144,1,1570515093,'2019-10-08 06:44:52',1570516797,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-08 06:11:33'),(145,2,1570517099,'2019-10-08 07:17:18',1570519038,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-08 06:44:59'),(146,2,1570519192,'2019-10-08 07:25:12',1570519508,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-08 07:19:52'),(147,2,1570519519,'2019-10-08 07:27:40',1570519519,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-08 07:25:19'),(148,1,1570519665,'2019-10-08 08:30:11',1570523410,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-08 07:27:45'),(149,3,1570523416,'2019-10-08 09:39:03',1570527543,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-08 08:30:16'),(150,2,1570527683,'2019-10-08 10:24:10',1570530249,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-08 09:41:23'),(151,1,1570540211,NULL,1570540211,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','829261a2784f53c376eaaa527725fcd6','2019-10-08 13:10:11'),(152,1,1570540216,'2019-10-08 13:46:39',1570542399,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','ed0f9258022ede6a4a5473f04cc204b2','2019-10-08 13:10:16'),(153,3,1570542557,NULL,1570542557,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Mobile Safari/537.36','214317175cd9da5c40f67f9621046631','e452ae39867bf9ff5876190b1c389a2e','2019-10-08 13:49:17'),(154,2,1570604041,'2019-10-09 06:55:03',1570604041,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-09 06:54:01'),(155,1,1570604109,'2019-10-09 06:56:27',1570604109,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-09 06:55:09'),(156,3,1570604192,'2019-10-09 06:57:44',1570604192,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','LogOut','2019-10-09 06:56:32'),(157,1,1570604272,'2019-10-09 07:33:28',1570606408,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-09 06:57:52'),(158,1,1570606412,'2019-10-09 08:27:10',1570609630,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-09 07:33:32'),(159,1,1570610972,'2019-10-09 09:46:44',1570614404,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-09 08:49:32'),(160,1,1570614410,'2019-10-09 11:41:24',1570621284,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-09 09:46:50'),(161,1,1570621291,'2019-10-09 12:20:31',1570623631,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-09 11:41:31'),(162,1,1570623636,'2019-10-09 13:01:06',1570626066,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-09 12:20:36'),(163,1,1570626071,'2019-10-09 13:37:04',1570628224,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','TimeOut','2019-10-09 13:01:11'),(164,1,1570628228,'2019-10-09 13:45:05',1570628705,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 YaBrowser/19.6.2.594 (beta) Yowser/2.5 Safari/537.36','45b7570e36fae59fbdfb0637fc4aaae9','886d35b6f6e9328e8ddcba083b01cfef','2019-10-09 13:37:09'),(165,1,1570688788,'2019-10-10 07:15:02',1570691510,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-10 06:26:29'),(166,2,1570691707,'2019-10-10 07:15:14',1570691707,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-10 07:15:07'),(167,3,1570691725,'2019-10-10 07:20:53',1570692035,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-10 07:15:25'),(168,1,1570692057,'2019-10-10 08:20:40',1570695634,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-10 07:20:57'),(169,1,1570695662,'2019-10-10 09:06:12',1570698372,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','0679e0a24c5ca03cd6dd3b5fcd59e1bb','2019-10-10 08:21:02'),(170,1,1570698449,NULL,1570698449,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36','02ced948f219d7135ba37d6ca891bdd5','1f94adb17e4d7c07a073476a90113537','2019-10-10 09:07:29'),(171,1,1570698623,NULL,1570698623,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','f874b4751218508d5d72c1832aad88ac','2019-10-10 09:10:23'),(172,1,1570698749,'2019-10-10 09:19:19',1570699159,3232235926,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36','02ced948f219d7135ba37d6ca891bdd5','023fa093b8c58648ff6d05aceb839f0d','2019-10-10 09:12:29'),(173,1,1570699162,'2019-10-10 09:57:27',1570701447,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-10 09:19:23'),(174,1,1570701809,'2019-10-10 10:28:38',1570703286,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-10 10:03:30'),(175,1,1570703322,'2019-10-10 10:42:14',1570703928,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-10 10:28:42'),(176,3,1570704139,'2019-10-10 11:48:56',1570708136,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-10 10:42:19'),(177,1,1570708143,'2019-10-10 13:56:14',1570715774,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-10 11:49:03'),(178,1,1570715779,NULL,1570715779,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','87f320aa23710294e43a5fd18a308bb8','2019-10-10 13:56:19'),(179,1,1570772844,'2019-10-11 06:42:48',1570776168,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-11 05:47:25'),(180,1,1570776185,'2019-10-11 06:43:12',1570776185,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-11 06:43:06'),(181,1,1570776192,NULL,1570776192,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','1a7cec4683c618c7fdf0d3b2f61628cb','2019-10-11 06:43:12'),(182,1,1570776199,'2019-10-11 07:21:00',1570778460,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-11 06:43:20'),(183,1,1570778465,'2019-10-11 08:18:46',1570781926,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-11 07:21:05'),(184,1,1570781930,'2019-10-11 09:56:45',1570787805,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-11 08:18:50'),(185,3,1570787812,'2019-10-11 09:57:45',1570787812,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-11 09:56:52'),(186,1,1570787868,'2019-10-11 09:57:54',1570787868,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-11 09:57:48'),(187,2,1570787879,'2019-10-11 09:58:04',1570787879,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-11 09:57:59'),(188,2,1570787911,'2019-10-11 12:42:32',1570797751,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-11 09:58:31'),(189,1,1570797759,'2019-10-11 12:54:15',1570798451,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-11 12:42:39'),(190,1,1570798460,'2019-10-11 13:07:25',1570799215,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-11 12:54:20'),(191,2,1570799249,'2019-10-11 13:41:45',1570801171,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-11 13:07:29'),(192,1,1570801320,'2019-10-11 13:55:21',1570802121,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','0d5e86be4e5fdde18fdc7c697b0bcb57','2019-10-11 13:42:00'),(193,1,1571034102,'2019-10-14 08:06:35',1571040183,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-14 06:21:42'),(194,1,1571040399,'2019-10-14 11:13:23',1571051603,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-14 08:06:39'),(195,1,1571051608,'2019-10-14 12:51:18',1571057478,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-14 11:13:28'),(196,2,1571057485,'2019-10-14 12:53:34',1571057485,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-14 12:51:25'),(197,1,1571057996,'2019-10-14 13:35:46',1571060146,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-14 12:59:56'),(198,1,1571060155,'2019-10-14 13:59:22',1571061562,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-14 13:35:55'),(199,1,1571121849,'2019-10-15 06:53:45',1571122425,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-15 06:44:09'),(200,1,1571122436,'2019-10-15 06:57:10',1571122436,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-15 06:53:56'),(201,1,1571122634,'2019-10-15 06:58:51',1571122634,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-15 06:57:14'),(202,1,1571122735,'2019-10-15 06:59:13',1571122735,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-15 06:58:55'),(203,1,1571122757,NULL,1571122757,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','4b8c2e95bda5f210563891e065bc2224','2019-10-15 06:59:17'),(204,1,1571122977,'2019-10-15 07:14:30',1571123670,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','LogOut','2019-10-15 07:02:57'),(205,1,1571123674,'2019-10-15 08:28:27',1571128107,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-15 07:14:34'),(206,1,1571128112,NULL,1571128112,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','d3868f78e8beb5f39a7eae45b00c16a4','2019-10-15 08:28:32'),(207,1,1571128137,'2019-10-15 08:55:34',1571129734,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','TimeOut','2019-10-15 08:28:57'),(208,1,1571129739,'2019-10-15 09:25:10',1571131510,3232235926,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 YaBrowser/19.9.3.358 (beta) Yowser/2.5 Safari/537.36','03ae9b347fef0e4eb823d90450264a0a','70b8fad2800e885ab49babf96992df18','2019-10-15 08:55:39');
/*!40000 ALTER TABLE `cisco_users_log_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_users_role`
--

DROP TABLE IF EXISTS `cisco_users_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_users_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  `alias_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_users_role`
--

LOCK TABLES `cisco_users_role` WRITE;
/*!40000 ALTER TABLE `cisco_users_role` DISABLE KEYS */;
INSERT INTO `cisco_users_role` VALUES (1,'admin','Администратор'),(2,'moderator','Модератор'),(3,'user','Пользователь');
/*!40000 ALTER TABLE `cisco_users_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_views_menu_data`
--

DROP TABLE IF EXISTS `cisco_views_menu_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_views_menu_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `class` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_views_menu_data`
--

LOCK TABLES `cisco_views_menu_data` WRITE;
/*!40000 ALTER TABLE `cisco_views_menu_data` DISABLE KEYS */;
INSERT INTO `cisco_views_menu_data` VALUES (1,'Инфо','info','Дополнительные сведения по wifi точкам',100,'icon-books'),(2,'Добавить wifi точку','add_point','Добавление новой точки в систему',20,'icon-plus-circle icon-position-right'),(3,'Точки wifi','points','Список точек wifi',40,'icon-podcast icon-position-left'),(4,'Карта','points_maps','Карта всех точек Cisco',60,'icon-pushpin3');
/*!40000 ALTER TABLE `cisco_views_menu_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_views_role_menu`
--

DROP TABLE IF EXISTS `cisco_views_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_views_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_role` (`id_role`),
  KEY `id_menu` (`id_menu`),
  CONSTRAINT `cisco_views_role_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `cisco_users_role` (`id`),
  CONSTRAINT `cisco_views_role_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `cisco_views_menu_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_views_role_menu`
--

LOCK TABLES `cisco_views_role_menu` WRITE;
/*!40000 ALTER TABLE `cisco_views_role_menu` DISABLE KEYS */;
INSERT INTO `cisco_views_role_menu` VALUES (1,1,2),(2,2,1),(3,1,1),(4,3,1),(5,2,2),(6,1,3),(7,2,3),(8,3,3),(9,1,4);
/*!40000 ALTER TABLE `cisco_views_role_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 14:37:35
