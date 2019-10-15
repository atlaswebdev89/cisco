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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 14:28:21
