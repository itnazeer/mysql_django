-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$GMTUuybDMQi1jDJCupldQG$wvzO4xtAoNA08BbIUaTzEz90oyw3kKs8TFzmn1A93IE=','2021-10-07 14:52:43.360076',1,'django','','','',1,1,'2021-10-05 05:50:25.000000'),(30,'pbkdf2_sha256$260000$Vr1pZbdbACKfMT06zthSAD$AbEaAVd1G+l+KJfBaRGLeGXyxEaxoc7/3Siw3GNdbio=',NULL,0,'test','','','',0,1,'2021-10-07 03:07:19.618984');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-05 06:04:10.430364','2','test',1,'[{\"added\": {}}]',4,1),(2,'2021-10-05 06:19:01.618642','2','test',3,'',4,1),(3,'2021-10-05 06:21:10.382612','3','test',1,'[{\"added\": {}}]',4,1),(4,'2021-10-05 06:22:11.410250','3','test',3,'',4,1),(5,'2021-10-05 06:24:14.447392','4','test',1,'[{\"added\": {}}]',4,1),(6,'2021-10-05 06:27:23.216245','4','test',3,'',4,1),(7,'2021-10-05 06:29:12.549695','5','test',1,'[{\"added\": {}}]',4,1),(8,'2021-10-05 06:40:24.883812','5','test',3,'',4,1),(9,'2021-10-05 06:48:11.402348','6','test',1,'[{\"added\": {}}]',4,1),(10,'2021-10-05 07:00:43.215084','6','test',3,'',4,1),(11,'2021-10-05 07:12:08.942640','7','test',1,'[{\"added\": {}}]',4,1),(12,'2021-10-05 07:14:07.278875','7','test',3,'',4,1),(13,'2021-10-05 07:17:47.463683','8','test',1,'[{\"added\": {}}]',4,1),(14,'2021-10-05 07:20:28.819744','8','test',3,'',4,1),(15,'2021-10-05 07:24:24.778879','9','test',1,'[{\"added\": {}}]',4,1),(16,'2021-10-05 07:28:21.220619','9','test',3,'',4,1),(17,'2021-10-05 07:38:22.453152','10','test',1,'[{\"added\": {}}]',4,1),(18,'2021-10-05 07:42:01.302766','10','test',3,'',4,1),(19,'2021-10-05 07:44:24.648386','11','test',1,'[{\"added\": {}}]',4,1),(20,'2021-10-05 07:49:49.579105','11','test',3,'',4,1),(21,'2021-10-05 08:28:05.666857','12','test',1,'[{\"added\": {}}]',4,1),(22,'2021-10-05 08:43:38.951911','12','test',3,'',4,1),(23,'2021-10-05 08:48:01.023843','13','test',1,'[{\"added\": {}}]',4,1),(24,'2021-10-05 08:53:06.980613','13','test',3,'',4,1),(25,'2021-10-05 13:45:55.744532','14','test',1,'[{\"added\": {}}]',4,1),(26,'2021-10-05 13:49:51.778821','14','test',3,'',4,1),(27,'2021-10-05 13:52:31.439486','15','test',1,'[{\"added\": {}}]',4,1),(28,'2021-10-05 13:52:43.081954','15','test',3,'',4,1),(29,'2021-10-05 13:55:26.144859','16','test',1,'[{\"added\": {}}]',4,1),(30,'2021-10-05 13:55:35.788916','16','test',3,'',4,1),(31,'2021-10-06 05:57:38.072664','17','test',1,'[{\"added\": {}}]',4,1),(32,'2021-10-06 05:59:28.544180','17','test',3,'',4,1),(33,'2021-10-06 06:01:22.325375','18','test',1,'[{\"added\": {}}]',4,1),(34,'2021-10-06 06:05:12.395558','18','test',3,'',4,1),(35,'2021-10-06 07:23:11.917980','19','test',1,'[{\"added\": {}}]',4,1),(36,'2021-10-06 07:24:25.547800','19','test',3,'',4,1),(37,'2021-10-06 07:25:58.178913','20','test',1,'[{\"added\": {}}]',4,1),(38,'2021-10-06 07:30:09.408546','20','test',3,'',4,1),(39,'2021-10-06 07:36:43.787937','21','test',1,'[{\"added\": {}}]',4,1),(40,'2021-10-06 07:39:45.818261','21','test',3,'',4,1),(41,'2021-10-06 07:42:40.933237','22','test',1,'[{\"added\": {}}]',4,1),(42,'2021-10-06 09:12:00.780482','22','test',3,'',4,1),(43,'2021-10-06 09:29:31.950811','23','test',1,'[{\"added\": {}}]',4,1),(44,'2021-10-06 09:45:29.126125','23','test',3,'',4,1),(45,'2021-10-06 09:55:32.988040','24','test',1,'[{\"added\": {}}]',4,1),(46,'2021-10-06 09:57:02.665296','24','test',3,'',4,1),(47,'2021-10-06 09:59:43.476809','25','test',1,'[{\"added\": {}}]',4,1),(48,'2021-10-06 10:00:38.749404','25','test',3,'',4,1),(49,'2021-10-06 12:03:17.284822','26','test',1,'[{\"added\": {}}]',4,1),(50,'2021-10-06 12:06:47.134853','26','test',3,'',4,1),(51,'2021-10-06 12:09:24.661661','27','test',1,'[{\"added\": {}}]',4,1),(52,'2021-10-06 12:16:29.061109','27','test',3,'',4,1),(53,'2021-10-06 12:27:22.527315','28','test',1,'[{\"added\": {}}]',4,1),(54,'2021-10-06 16:18:32.013892','28','test',3,'',4,1),(55,'2021-10-06 16:22:08.139623','29','test',1,'[{\"added\": {}}]',4,1),(56,'2021-10-07 03:03:15.529308','29','test',3,'',4,1),(57,'2021-10-07 03:07:19.689794','30','test',1,'[{\"added\": {}}]',4,1),(58,'2021-10-07 14:51:45.696522','1','django',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-05 05:48:56.393281'),(2,'auth','0001_initial','2021-10-05 05:48:56.847290'),(3,'admin','0001_initial','2021-10-05 05:48:56.962120'),(4,'admin','0002_logentry_remove_auto_add','2021-10-05 05:48:56.971440'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-05 05:48:56.982041'),(6,'contenttypes','0002_remove_content_type_name','2021-10-05 05:48:57.065166'),(7,'auth','0002_alter_permission_name_max_length','2021-10-05 05:48:57.155280'),(8,'auth','0003_alter_user_email_max_length','2021-10-05 05:48:57.181634'),(9,'auth','0004_alter_user_username_opts','2021-10-05 05:48:57.193617'),(10,'auth','0005_alter_user_last_login_null','2021-10-05 05:48:57.241937'),(11,'auth','0006_require_contenttypes_0002','2021-10-05 05:48:57.248053'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-05 05:48:57.258399'),(13,'auth','0008_alter_user_username_max_length','2021-10-05 05:48:57.317584'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-05 05:48:57.374408'),(15,'auth','0010_alter_group_name_max_length','2021-10-05 05:48:57.399544'),(16,'auth','0011_update_proxy_permissions','2021-10-05 05:48:57.415307'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-05 05:48:57.471898'),(18,'sessions','0001_initial','2021-10-05 05:48:57.509279');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('37alrzwh8scw1rgt2x3y8d13n8yezg1a','.eJxVjEEOwiAQRe_C2pCWQqe4dO8ZyDAzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uz6tXpd4tIDyk74DuWW9VUy7rMUe-KPmjT18ryvBzu30HGlr-1lwiuJ8su2cHACOw9TiYmBOEEHQ8mjUJgjO8GAXTibXQUPU3GWiL1_gDt3DhM:1mY5c2:IXCokTYtaFZHdGUwDUNd7wqbs90rANMKjRaSg9zJJxI','2021-10-20 12:01:30.249119'),('57w4ri1aefwnraln8qmkntnaqo41388t','.eJxVjEEOwiAQRe_C2pCWQqe4dO8ZyDAzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uz6tXpd4tIDyk74DuWW9VUy7rMUe-KPmjT18ryvBzu30HGlr-1lwiuJ8su2cHACOw9TiYmBOEEHQ8mjUJgjO8GAXTibXQUPU3GWiL1_gDt3DhM:1mXdLa:UMIe5l9uoewUBKJKC6JvklRNJDJO5Hz7MAN0YmqyL7E','2021-10-19 05:50:38.120736'),('6wm8f6w0j9lut89ttusrxcmt0v7jjlzi','.eJxVjEEOwiAQRe_C2pCWQqe4dO8ZyDAzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uz6tXpd4tIDyk74DuWW9VUy7rMUe-KPmjT18ryvBzu30HGlr-1lwiuJ8su2cHACOw9TiYmBOEEHQ8mjUJgjO8GAXTibXQUPU3GWiL1_gDt3DhM:1mXdRo:DsDmxSMnpc77L2QfelC5ZQWEdZ8ddmjZsRI-buDwhVk','2021-10-19 05:57:04.813877'),('h89ao9zwgwpbf86xwjjr8ufvvzf8qxoh','.eJxVjEEOwiAQRe_C2pCWQqe4dO8ZyDAzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uz6tXpd4tIDyk74DuWW9VUy7rMUe-KPmjT18ryvBzu30HGlr-1lwiuJ8su2cHACOw9TiYmBOEEHQ8mjUJgjO8GAXTibXQUPU3GWiL1_gDt3DhM:1mY3Be:asP3WNLuu8Op-x55z4hjJYWogzbPs3_lUNtXu5u7coI','2021-10-20 09:26:06.674500'),('r8fj2g8mkyllh8gznluxyfcfuxggjx56','.eJxVjMsOwiAQRf-FtSEMj0pduvcbyJQZpGogKe3K-O_SpAvdnnPufYuA25rD1ngJM4mLAHH6ZRPGJ5dd0APLvcpYy7rMk9wTedgmb5X4dT3av4OMLfe1PSMq7zRri0BWj84npKgIoycmk5idMSnFzhmAO0_g7cCDVQBpFJ8vBj047g:1mYUlH:SikKdRzOQXh124B4r70VJ-1CLZ-hxMHenOi3wUMzKUQ','2021-10-21 14:52:43.364056'),('riro7sc5p0iai250n6kgszd98sp0a6ym','.eJxVjEEOwiAQRe_C2pCWQqe4dO8ZyDAzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uz6tXpd4tIDyk74DuWW9VUy7rMUe-KPmjT18ryvBzu30HGlr-1lwiuJ8su2cHACOw9TiYmBOEEHQ8mjUJgjO8GAXTibXQUPU3GWiL1_gDt3DhM:1mY01I:P308r77QoizI-LcQOrQjn0EFqLD-cGG5dWXByrKeCHg','2021-10-20 06:03:12.409786');
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

-- Dump completed on 2021-10-07 14:54:05
