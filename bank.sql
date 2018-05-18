-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `accounts1_currencyconverter`
--

DROP TABLE IF EXISTS `accounts1_currencyconverter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts1_currencyconverter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `amount_UGX` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts1_currencyconverter`
--

LOCK TABLES `accounts1_currencyconverter` WRITE;
/*!40000 ALTER TABLE `accounts1_currencyconverter` DISABLE KEYS */;
INSERT INTO `accounts1_currencyconverter` VALUES (1,50000,'USD',1750000);
/*!40000 ALTER TABLE `accounts1_currencyconverter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts1_customerbankaccount`
--

DROP TABLE IF EXISTS `accounts1_customerbankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts1_customerbankaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` int(11) NOT NULL,
  `residence` varchar(200) NOT NULL,
  `work_history` varchar(200) NOT NULL,
  `identification_information` int(11) NOT NULL,
  `next_of_kin` varchar(200) NOT NULL,
  `relationship` varchar(200) NOT NULL,
  `account_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts1_customerbankaccount`
--

LOCK TABLES `accounts1_customerbankaccount` WRITE;
/*!40000 ALTER TABLE `accounts1_customerbankaccount` DISABLE KEYS */;
INSERT INTO `accounts1_customerbankaccount` VALUES (1,'Humphrey Ntwatwa','humphrey@gmail.com',772212186,'Mukono','An enginner in world bank',234455,'Mr. Steven','daddy',2244);
/*!40000 ALTER TABLE `accounts1_customerbankaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts1_loancalculator`
--

DROP TABLE IF EXISTS `accounts1_loancalculator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts1_loancalculator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `loan_period` varchar(200) NOT NULL,
  `interest_rate` int(11) NOT NULL,
  `results` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts1_loancalculator`
--

LOCK TABLES `accounts1_loancalculator` WRITE;
/*!40000 ALTER TABLE `accounts1_loancalculator` DISABLE KEYS */;
INSERT INTO `accounts1_loancalculator` VALUES (1,500000,'one week',10,50000);
/*!40000 ALTER TABLE `accounts1_loancalculator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts1_registercustomer`
--

DROP TABLE IF EXISTS `accounts1_registercustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts1_registercustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` int(11) NOT NULL,
  `residence` varchar(200) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `next_of_kin` varchar(200) NOT NULL,
  `relationship` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts1_registercustomer`
--

LOCK TABLES `accounts1_registercustomer` WRITE;
/*!40000 ALTER TABLE `accounts1_registercustomer` DISABLE KEYS */;
INSERT INTO `accounts1_registercustomer` VALUES (1,'Humphrey','Makumbi','humphrey@gmail.com',772212186,'Mukono','Engineer','Mr. Steven','daddy');
/*!40000 ALTER TABLE `accounts1_registercustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts1_registercustomertranscations`
--

DROP TABLE IF EXISTS `accounts1_registercustomertranscations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts1_registercustomertranscations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` int(11) NOT NULL,
  `Account_number` int(11) NOT NULL,
  `Transcation_type` varchar(200) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Transcation_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts1_registercustomertranscations`
--

LOCK TABLES `accounts1_registercustomertranscations` WRITE;
/*!40000 ALTER TABLE `accounts1_registercustomertranscations` DISABLE KEYS */;
INSERT INTO `accounts1_registercustomertranscations` VALUES (1,'Humphrey Ntwatwa','humphrey@gmail.com',77212186,2344,'Deposit',1000000,'2018-04-27 12:18:35');
/*!40000 ALTER TABLE `accounts1_registercustomertranscations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts1_userprofile`
--

DROP TABLE IF EXISTS `accounts1_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts1_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `accounts1_userprofile_user_id_d00a26a3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts1_userprofile`
--

LOCK TABLES `accounts1_userprofile` WRITE;
/*!40000 ALTER TABLE `accounts1_userprofile` DISABLE KEYS */;
INSERT INTO `accounts1_userprofile` VALUES (1,'We offer the best services','Canada','https://www.google.com',772806871,2,''),(2,'Our banking services transform peoples lives.','Kampala','https://www.google.com',701280731,1,'profile_image/500_F_135798227_keK38aovBbRAm8P7rLzIz0PgXPOwQxU0.jpg'),(3,'','','',0,4,'');
/*!40000 ALTER TABLE `accounts1_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add post',7,'add_post'),(20,'Can change post',7,'change_post'),(21,'Can delete post',7,'delete_post'),(22,'Can add friends',8,'add_friends'),(23,'Can change friends',8,'change_friends'),(24,'Can delete friends',8,'delete_friends'),(25,'Can add userprofile',9,'add_userprofile'),(26,'Can change userprofile',9,'change_userprofile'),(27,'Can delete userprofile',9,'delete_userprofile'),(28,'Can add registercustomer',10,'add_registercustomer'),(29,'Can change registercustomer',10,'change_registercustomer'),(30,'Can delete registercustomer',10,'delete_registercustomer'),(31,'Can add customer bankaccount',11,'add_customerbankaccount'),(32,'Can change customer bankaccount',11,'change_customerbankaccount'),(33,'Can delete customer bankaccount',11,'delete_customerbankaccount'),(34,'Can add registercustomertranscations',12,'add_registercustomertranscations'),(35,'Can change registercustomertranscations',12,'change_registercustomertranscations'),(36,'Can delete registercustomertranscations',12,'delete_registercustomertranscations'),(37,'Can add post',13,'add_post'),(38,'Can change post',13,'change_post'),(39,'Can delete post',13,'delete_post'),(40,'Can add friends',14,'add_friends'),(41,'Can change friends',14,'change_friends'),(42,'Can delete friends',14,'delete_friends'),(43,'Can add userprofile',15,'add_userprofile'),(44,'Can change userprofile',15,'change_userprofile'),(45,'Can delete userprofile',15,'delete_userprofile'),(46,'Can add registercustomer',16,'add_registercustomer'),(47,'Can change registercustomer',16,'change_registercustomer'),(48,'Can delete registercustomer',16,'delete_registercustomer'),(49,'Can add customer bankaccount',17,'add_customerbankaccount'),(50,'Can change customer bankaccount',17,'change_customerbankaccount'),(51,'Can delete customer bankaccount',17,'delete_customerbankaccount'),(52,'Can add registercustomertranscations',18,'add_registercustomertranscations'),(53,'Can change registercustomertranscations',18,'change_registercustomertranscations'),(54,'Can delete registercustomertranscations',18,'delete_registercustomertranscations'),(55,'Can add loan calculator',19,'add_loancalculator'),(56,'Can change loan calculator',19,'change_loancalculator'),(57,'Can delete loan calculator',19,'delete_loancalculator'),(58,'Can add currency converter',20,'add_currencyconverter'),(59,'Can change currency converter',20,'change_currencyconverter'),(60,'Can delete currency converter',20,'delete_currencyconverter');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$wBP8ifqQhq3c$/0cZ0Y7GiDUWpTufU3mCJIvpujs8/b07YomcYxCRWbs=','2018-05-18 06:57:15',1,'admin','Florence','Namukwaya','admin@gmail.com',1,1,'2018-04-27 10:06:44'),(2,'pbkdf2_sha256$24000$raC1O5GC6jei$AHx04igfB2iMSC5vlwwg6TN1TfT50FrJT0B7mSfyG2I=','2018-04-30 11:00:54',0,'Hannah','Hannah','Muhumuza','hannahflorence1993@gmail.com',0,1,'2018-04-27 10:11:28'),(3,'pbkdf2_sha256$24000$wCnn9q3oTZb1$da8fO8QEI4DAqc88K1a7FFk9c8EGFzM0a30NCcARBYo=',NULL,1,'Hilda','Hilda','Zalwango','hilda@gmail.com',1,1,'2018-04-27 11:49:21'),(4,'pbkdf2_sha256$24000$sx3Eq4awD6IK$vfpQTLBtqW0FbL7PKoq/sfXg8STRgygTA5pj0aCM0AY=',NULL,0,'Edwin','Edwin','Muhumuza','edwin@gmail.com',0,1,'2018-05-11 12:08:00');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-27 10:08:38','1','Florence',1,'Added.',10,1),(2,'2018-04-27 10:09:30','1','Post object',1,'Added.',7,1),(3,'2018-04-27 10:10:26','1','admin',2,'Changed first_name and last_name.',4,1),(4,'2018-04-27 10:11:28','2','Hannah',1,'Added.',4,1),(5,'2018-04-27 10:12:00','2','Hannah',2,'Changed first_name, last_name and email.',4,1),(6,'2018-04-27 10:13:43','1','Florence Namukwaya',1,'Added.',11,1),(7,'2018-04-27 10:14:30','1','Florence Namukwaya',1,'Added.',12,1),(8,'2018-04-27 11:51:51','1','Hannah',1,'Added.',15,1),(9,'2018-04-27 12:14:03','1','Humphrey',1,'Added.',16,1),(10,'2018-04-27 12:14:36','1','Post object',1,'Added.',13,1),(11,'2018-04-27 12:15:30','2','Post object',1,'Added.',13,1),(12,'2018-04-27 12:16:55','1','Humphrey Ntwatwa',1,'Added.',17,1),(13,'2018-04-27 12:19:30','1','Humphrey Ntwatwa',1,'Added.',18,1),(14,'2018-04-27 12:19:55','1','Friends object',1,'Added.',14,1),(15,'2018-04-27 21:01:56','3','Hilda',2,'Changed first_name and last_name.',4,1),(16,'2018-04-27 21:03:16','2','admin',1,'Added.',15,1),(17,'2018-05-11 08:08:51','2','admin',2,'Changed image.',15,1),(18,'2018-05-11 12:11:29','1','CurrencyConverter object',1,'Added.',20,1),(19,'2018-05-14 11:43:01','1','LoanCalculator object',1,'Added.',19,1),(20,'2018-05-14 11:50:31','1','LoanCalculator object',2,'Changed loan_period.',19,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (11,'accounts','customerbankaccount'),(8,'accounts','friends'),(7,'accounts','post'),(10,'accounts','registercustomer'),(12,'accounts','registercustomertranscations'),(9,'accounts','userprofile'),(20,'accounts1','currencyconverter'),(17,'accounts1','customerbankaccount'),(14,'accounts1','friends'),(19,'accounts1','loancalculator'),(13,'accounts1','post'),(16,'accounts1','registercustomer'),(18,'accounts1','registercustomertranscations'),(15,'accounts1','userprofile'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-18 18:04:25'),(2,'auth','0001_initial','2018-04-18 18:04:39'),(3,'admin','0001_initial','2018-04-18 18:04:43'),(4,'admin','0002_logentry_remove_auto_add','2018-04-18 18:04:43'),(5,'contenttypes','0002_remove_content_type_name','2018-04-18 18:04:45'),(6,'auth','0002_alter_permission_name_max_length','2018-04-18 18:04:46'),(7,'auth','0003_alter_user_email_max_length','2018-04-18 18:04:46'),(8,'auth','0004_alter_user_username_opts','2018-04-18 18:04:47'),(9,'auth','0005_alter_user_last_login_null','2018-04-18 18:04:47'),(10,'auth','0006_require_contenttypes_0002','2018-04-18 18:04:47'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-18 18:04:47'),(12,'sessions','0001_initial','2018-04-18 18:04:48'),(13,'accounts','0001_initial','2018-04-18 18:47:51'),(14,'accounts','0002_auto_20180419_0956','2018-04-19 06:56:53'),(15,'accounts','0003_remove_registercustomer_user','2018-04-19 07:04:56'),(16,'accounts','0004_remove_customerbankaccount_image','2018-04-19 07:38:46'),(17,'accounts','0005_auto_20180419_1118','2018-04-19 08:19:07'),(18,'accounts','0006_registercustomertranscations_amount','2018-04-19 08:27:04'),(19,'accounts','0007_remove_registercustomer_image','2018-04-19 13:47:15'),(20,'accounts1','0001_initial','2018-04-27 11:42:35'),(21,'accounts1','0002_remove_registercustomer_relate','2018-04-27 11:57:05'),(22,'accounts1','0003_auto_20180428_0021','2018-04-27 21:21:24'),(23,'accounts1','0004_auto_20180504_0958','2018-05-04 06:58:37'),(24,'accounts1','0005_userprofile_image','2018-05-11 08:05:37'),(25,'accounts1','0006_auto_20180514_1446','2018-05-14 11:47:27');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8kzlhb6is0eub2nqb7fymsl7mp206r91','NDVlOWFjMTk2MmUyYWZmNWYxMzM1ZjM0MzVjZDE2ODMzYjQyZWFiZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5ZGM0YzIxMTUzYzBiYjJmYTg4YzY0N2EzMWY1MWRjOGYzZjBmYjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-06-01 06:57:15');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-18 16:23:39
