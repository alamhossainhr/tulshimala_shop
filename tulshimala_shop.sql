CREATE DATABASE  IF NOT EXISTS `tulshimala_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tulshimala_shop`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: tulshimala_shop
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'products');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add order',8,'add_order'),(30,'Can change order',8,'change_order'),(31,'Can delete order',8,'delete_order'),(32,'Can view order',8,'view_order'),(33,'Can add farmer',9,'add_farmer'),(34,'Can change farmer',9,'change_farmer'),(35,'Can delete farmer',9,'delete_farmer'),(36,'Can view farmer',9,'view_farmer'),(37,'Can add hero image',10,'add_heroimage'),(38,'Can change hero image',10,'change_heroimage'),(39,'Can delete hero image',10,'delete_heroimage'),(40,'Can view hero image',10,'view_heroimage'),(41,'Can add product image',11,'add_productimage'),(42,'Can change product image',11,'change_productimage'),(43,'Can delete product image',11,'delete_productimage'),(44,'Can view product image',11,'view_productimage');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$yDbo7eJuQgWqjs0Y6Impia$KnID95GGvD9QITT5cllw8LTfpRJrRMH3xWVDY18HVAY=','2026-02-21 09:49:08.259122',1,'admin','','','mhalam670@gmail.com',1,1,'2026-02-16 16:48:59.659807'),(2,'!LbqckTZpMuJFLZYtDL3q2DIwh8Y0LzlUpYIXPFRj','2026-02-16 20:47:41.803239',0,'dfsdf','dfdf','','',0,1,'2026-02-16 20:47:41.273527'),(3,'pbkdf2_sha256$600000$OUAhS1eORJhpOrOM1jAQme$ZpQVy6M0lpBfAhdLK7c/Cpk05ZPEKv0t8gf0gCvtx1Q=','2026-02-17 10:21:57.038389',0,'01710252525','রাসেল মিয়া','','',0,1,'2026-02-17 08:07:20.837761'),(4,'pbkdf2_sha256$600000$mBkLhHJrDt98bZF0eYEnjQ$o7HM8Ocx3R4jcIeskc/dN8by/gtbsJi/M7l/iehfldw=','2026-02-17 10:22:10.882356',0,'01711223344','বাবু মিয়া','','',0,1,'2026-02-17 09:07:28.075480'),(5,'!BZDzttwqnS9iMnf2gQxhryxumR3h1mWR8EooPxNH','2026-02-17 10:37:37.256748',0,'01737007077','মিলন হোসেন','','',0,1,'2026-02-17 10:23:16.763955'),(6,'!nYPrel7rAEeSheFGAAxiuqPJqkqk32RZpjFMm9TY','2026-02-17 10:38:00.574732',0,'01710205030','মিলন হোসেন','','',0,1,'2026-02-17 10:32:18.494253'),(7,'!7PirjdtFOoFScSYYCgFNjrMP7YSRgFUOIAJT7bCu','2026-02-17 10:38:49.420714',0,'01810205030','নুর নবী','','',0,1,'2026-02-17 10:38:48.787841'),(8,'!v8MJOGlRn6mQgazOKvaROio69GMYuaMWtR5VNewn','2026-02-17 10:58:49.591380',0,'01813131313','নাসির উদ্দিন','','',0,1,'2026-02-17 10:54:40.123572'),(9,'!gO6aCaJOtyAAsRzpHjtkBQPUo2sRd6slymoj4OEf','2026-02-21 09:45:26.473246',0,'01792882838','Milon Pdder','','',0,1,'2026-02-20 10:10:04.193779');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-02-16 18:16:27.090096','1','products',1,'[{\"added\": {}}]',3,1),(2,'2026-02-16 18:24:53.712608','1','Product object (1)',1,'[{\"added\": {}}]',7,1),(3,'2026-02-16 18:26:24.805676','2','Product object (2)',1,'[{\"added\": {}}]',7,1),(4,'2026-02-20 09:04:29.768792','1','প্রিমিয়াম তুলিশী মালা চাল',2,'[{\"changed\": {\"fields\": [\"\\u09ac\\u09bf\\u09b8\\u09cd\\u09a4\\u09be\\u09b0\\u09bf\\u09a4 \\u09ac\\u09bf\\u09ac\\u09b0\\u09a3\", \"\\u099b\\u09ac\\u09bf\"]}}]',7,1),(5,'2026-02-20 09:05:11.696760','1','প্রিমিয়াম তুলশী মালা চাল',2,'[{\"changed\": {\"fields\": [\"\\u09aa\\u09a3\\u09cd\\u09af\\u09c7\\u09b0 \\u09a8\\u09be\\u09ae\"]}}]',7,1),(6,'2026-02-20 09:07:54.369476','3','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',1,'[{\"added\": {}}]',7,1),(7,'2026-02-20 09:53:50.779607','1','Tulishimala_Rice',1,'[{\"added\": {}}]',10,1),(8,'2026-02-20 09:54:16.950133','2','Tulshimala_Rice2',1,'[{\"added\": {}}]',10,1),(9,'2026-02-20 09:55:12.802305','3','Tulshimala_Rice3',1,'[{\"added\": {}}]',10,1),(10,'2026-02-20 09:55:32.763739','4','Tulshimala_Rice4',1,'[{\"added\": {}}]',10,1),(11,'2026-02-20 09:58:35.476974','2','বিন্নি ধানের চাল',2,'[{\"changed\": {\"fields\": [\"\\u099b\\u09ac\\u09bf\"]}}]',7,1),(12,'2026-02-20 10:00:24.179925','2','সাদা বিন্নি চাল',2,'[{\"changed\": {\"fields\": [\"\\u09aa\\u09a3\\u09cd\\u09af\\u09c7\\u09b0 \\u09a8\\u09be\\u09ae\", \"\\u09ac\\u09bf\\u09b8\\u09cd\\u09a4\\u09be\\u09b0\\u09bf\\u09a4 \\u09ac\\u09bf\\u09ac\\u09b0\\u09a3\", \"\\u099b\\u09ac\\u09bf\"]}}]',7,1),(13,'2026-02-20 15:04:54.080510','3','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',2,'[{\"changed\": {\"fields\": [\"\\u099b\\u09ac\\u09bf\"]}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'products','farmer'),(10,'products','heroimage'),(8,'products','order'),(7,'products','product'),(11,'products','productimage'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-02-16 16:47:41.138716'),(2,'auth','0001_initial','2026-02-16 16:47:56.591787'),(3,'admin','0001_initial','2026-02-16 16:48:00.157553'),(4,'admin','0002_logentry_remove_auto_add','2026-02-16 16:48:00.202420'),(5,'admin','0003_logentry_add_action_flag_choices','2026-02-16 16:48:00.296279'),(6,'contenttypes','0002_remove_content_type_name','2026-02-16 16:48:02.313142'),(7,'auth','0002_alter_permission_name_max_length','2026-02-16 16:48:03.554282'),(8,'auth','0003_alter_user_email_max_length','2026-02-16 16:48:03.947966'),(9,'auth','0004_alter_user_username_opts','2026-02-16 16:48:03.999558'),(10,'auth','0005_alter_user_last_login_null','2026-02-16 16:48:04.895748'),(11,'auth','0006_require_contenttypes_0002','2026-02-16 16:48:04.933932'),(12,'auth','0007_alter_validators_add_error_messages','2026-02-16 16:48:04.975325'),(13,'auth','0008_alter_user_username_max_length','2026-02-16 16:48:06.293913'),(14,'auth','0009_alter_user_last_name_max_length','2026-02-16 16:48:07.388440'),(15,'auth','0010_alter_group_name_max_length','2026-02-16 16:48:07.548897'),(16,'auth','0011_update_proxy_permissions','2026-02-16 16:48:07.631425'),(17,'auth','0012_alter_user_first_name_max_length','2026-02-16 16:48:08.745398'),(18,'sessions','0001_initial','2026-02-16 16:48:09.676070'),(19,'products','0001_initial','2026-02-16 16:58:44.225231'),(20,'products','0002_remove_product_slug_product_is_hero_and_more','2026-02-16 17:22:13.669452'),(21,'products','0003_alter_product_options_remove_product_discount_price_and_more','2026-02-16 18:10:26.342981'),(22,'products','0004_order','2026-02-16 20:10:40.921006'),(23,'products','0005_remove_order_address_remove_order_is_completed_and_more','2026-02-17 08:45:37.346967'),(24,'products','0006_alter_order_post_code_alter_order_post_office','2026-02-17 11:06:24.247685'),(25,'products','0007_order_status','2026-02-17 13:16:00.694064'),(26,'products','0008_remove_order_post_code_remove_order_post_office_and_more','2026-02-17 13:33:18.008730'),(27,'products','0009_farmer','2026-02-20 09:17:37.930196'),(28,'products','0010_heroimage','2026-02-20 09:40:50.995797'),(29,'products','0011_productimage','2026-02-20 10:04:04.515731'),(30,'products','0012_order_post_code_order_post_office','2026-02-20 10:15:50.734842'),(31,'products','0013_order_transaction_id','2026-02-20 17:40:02.196279');
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
INSERT INTO `django_session` VALUES ('1famwfpan4w5hsz01ah4ea1xvzffn4tw','e30:1vsB6N:_kLSIKZt-nLzGneaCkHV9LD3aTCGCb5R2M3hOORLZdA','2026-03-03 08:46:15.595494'),('2mc0sbx29eehlnjoq02r60s6ht947w5k','e30:1vsAzK:WTBHbXfSTnKoLOQOpyWryOvBIjTcp8KA4O6AAbgeeRY','2026-03-03 08:38:58.499537'),('858nbbhg32myw36l9z9jcia5dh9eeez6','e30:1vsAdX:61BFhwzVIpjSzGjY6wIm8DTQ4wBjxxQRwm9NHjhwTwU','2026-03-03 08:16:27.971371'),('coc0hdvdyoczopwb9ji5mcbwayxwix7a','e30:1vtNSW:Miw0OJbwGkF0-L_NU3KFxkJ2_knApbqq2TPHXx_d_mU','2026-03-06 10:10:04.217619'),('edxfzudr09z4jkevtqpzgapfjx7cwy1m','e30:1vsAUj:3kneclCf0ev29z2op7xVgUn-UDSnrc7qswNqg0H5q_U','2026-03-03 08:07:21.130714'),('gkhe19ptd57pfaizt8pm8ks1h151e3mq','e30:1vsB6i:y1SeYJb7ZlPYTWobE8ranak5z_cBZDgksov5uqVBGVE','2026-03-03 08:46:36.452005'),('hptcn2hcqorlv0i7a2fqry5oeargwjo8','e30:1vtNSi:jwJ89gBuJs-ObRWdcfu-OoyX9TmifEJ4GWRd_8iTwpY','2026-03-06 10:10:16.058859'),('j828x9ajpn04ghnfsjelfi85v5r86q9n','.eJxVjMsOgyAUBf-FdUMweAW67L7fQO4Di20DiejK9N-riYt2e2bmbCriuuS4tjTHSdRVderyuxHyK5UDyBPLo2quZZkn0oeiT9r0vUp630737yBjy3tNY5Lekhc3QHDJ9d6A5eCA0JtuCOi82RUzWkEwwIyJAgIwQeBgWX2-7j04dg:1vsARF:AyycSJH_YFGxitNaBV2u5idUWDSFoCViW5eRhVGJBFE','2026-03-03 08:03:45.658995'),('k1x4osoik9jt3o7wp8i2yr8lqydrafwd','.eJxVjMsOgyAUBf-FdUMweAW67L7fQO4Di20DiejK9N-riYt2e2bmbCriuuS4tjTHSdRVderyuxHyK5UDyBPLo2quZZkn0oeiT9r0vUp630737yBjy3tNY5Lekhc3QHDJ9d6A5eCA0JtuCOi82RUzWkEwwIyJAgIwQeBgWX2-7j04dg:1vryFf:jGjocr5YVo-CuaI3zjoWwGrA5xaV62u4vRfuq6Qgm7A','2026-03-02 19:02:59.607241'),('kundrcy5ftemindb8sutln3j45c85oex','e30:1vsCl0:hqP0W1Ctebm7FntFR6YDj5q5FQaUWvXLJsugRPkeA0g','2026-03-03 10:32:18.973730'),('lto7r7nd1klxbl8hc3be74y5g1x30mwy','e30:1vrzsz:BnLwclQE6m2FfuKwUpgXJyKjLcEYxxlzT7qLDSwM6lQ','2026-03-02 20:47:41.667507'),('myvf1i3n6xxlvaavrkb8ncs0rb102tc3','e30:1vsB8I:GVXRU2FxPmVfv1ib9aHigzqstC58AGlmsbrS8MPRTZ4','2026-03-03 08:48:14.916161'),('n2z28f4boa8qwjuy0yt4xrutsqygwdt8','.eJxVjEsOwiAUAO_C2hAenxZcuu8ZyIMHUjWQlHZlvLsh6UK3M5N5M4_HXvzR0-ZXYlcG7PLLAsZnqkPQA-u98djqvq2Bj4SftvOlUXrdzvZvULCXsc0AQqIAqwizBBdRa3SzsVYLmBwJinY2KaBRiMoQmUkSZhGzdpki-3wBzVA4Hg:1vtMKM:yvy9EyzQWptBwoykFXISTBDeKWPh17ZLvhShmDzErtw','2026-03-06 08:57:34.387880'),('nuuvhq0n9y7465z9bvfrtsbh39ualnpc','.eJxVjEsOwiAUAO_C2hAenxZcuu8ZyIMHUjWQlHZlvLsh6UK3M5N5M4_HXvzR0-ZXYlcG7PLLAsZnqkPQA-u98djqvq2Bj4SftvOlUXrdzvZvULCXsc0AQqIAqwizBBdRa3SzsVYLmBwJinY2KaBRiMoQmUkSZhGzdpki-3wBzVA4Hg:1vtS2e:q99cJ6TjonEaLi0fxDJAijQOd-neCfRFZCXB2jKqhGk','2026-03-06 15:03:40.614796'),('oucv9kdlpcs9ljjf7dnl3whrtc5wu8og','e30:1vsAZL:C6KOJr8rZSEdxau0USL9wS57JMe2jTMkCvKARSmbPts','2026-03-03 08:12:07.420708'),('p1uuzykoa76ee7lfxae76es5fj545igh','e30:1vsClW:9lR0HUEhxkbcD7z9puIriWPDH5lGV_AG6WxlAJGVl9A','2026-03-03 10:32:50.600963'),('pdbl3k5zbgux009p7bt0fd74ygsikdiv','e30:1vtNT5:UbV_WW86TtWgUyB2drJsjqHts2zteTb6xJvmO53EQ_E','2026-03-06 10:10:39.483907'),('qlx6xazqmiyycmqe899x3zqtqb4bhq7u','.eJxVjMsOgyAUBf-FdUMweAW67L7fQO4Di20DiejK9N-riYt2e2bmbCriuuS4tjTHSdRVderyuxHyK5UDyBPLo2quZZkn0oeiT9r0vUp630737yBjy3tNY5Lekhc3QHDJ9d6A5eCA0JtuCOi82RUzWkEwwIyJAgIwQeBgWX2-7j04dg:1vrwIm:_BLDK2M0nV694Cs7cZRXa3yK-0ds7yj1p-pTpc2ShQc','2026-03-02 16:58:04.559818'),('svu21fp7xt2r2vcaht7go5khab4mb466','.eJxVjEEOwiAQRe_C2hBgoAwu3XsGMjBUqoYmpV0Z765NutDtf-_9l4i0rTVuvSxxYnEWKE6_W6L8KG0HfKd2m2We27pMSe6KPGiX15nL83K4fweVev3WAybrxmTUqEtG61wBRo_OKx9YZaXBQg42GSwmB9aDAQK0QGjYkCfx_gDMSDcZ:1vsDAg:jdYCWk-SBetLIXyr0M1R2K3yAr2ael53tdBSTuqHQWI','2026-03-03 10:58:50.059239'),('vpoxw914b3ik0w396znk0ua4lrluk3sv','.eJxVjMsOgyAUBf-FdUMweAW67L7fQO4Di20DiejK9N-riYt2e2bmbCriuuS4tjTHSdRVderyuxHyK5UDyBPLo2quZZkn0oeiT9r0vUp630737yBjy3tNY5Lekhc3QHDJ9d6A5eCA0JtuCOi82RUzWkEwwIyJAgIwQeBgWX2-7j04dg:1vsDcC:4xaFIFudynB7Lzncj7mll-X4EgyRhrcEls0fbFcmHbM','2026-03-03 11:27:16.041933'),('x9og54px4vzyvof5jlbbph07fd7onoua','e30:1vsAh6:N5CMdSzGbuCQ19oHOym27nM51vLrIDBhdBfXn-H9JUc','2026-03-03 08:20:08.470072'),('zczwt64ek38bljvo5s7ragvg8r963de1','.eJxVjEsOwiAUAO_C2hAenxZcuu8ZyIMHUjWQlHZlvLsh6UK3M5N5M4_HXvzR0-ZXYlcG7PLLAsZnqkPQA-u98djqvq2Bj4SftvOlUXrdzvZvULCXsc0AQqIAqwizBBdRa3SzsVYLmBwJinY2KaBRiMoQmUkSZhGzdpki-3wBzVA4Hg:1vtjbo:D5wVXWhyxSqM5wNvFXkw0vK64L2Crp9CD2rUpIf_3yQ','2026-03-07 09:49:08.268198');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_farmer`
--

DROP TABLE IF EXISTS `products_farmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_farmer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `story` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_farmer`
--

LOCK TABLES `products_farmer` WRITE;
/*!40000 ALTER TABLE `products_farmer` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_farmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_heroimage`
--

DROP TABLE IF EXISTS `products_heroimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_heroimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `order` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `products_heroimage_chk_1` CHECK ((`order` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_heroimage`
--

LOCK TABLES `products_heroimage` WRITE;
/*!40000 ALTER TABLE `products_heroimage` DISABLE KEYS */;
INSERT INTO `products_heroimage` VALUES (1,'Tulishimala_Rice','hero_marquee/Tulshimala.jpg',1),(2,'Tulshimala_Rice2','hero_marquee/image-3.jpeg',2),(3,'Tulshimala_Rice3','hero_marquee/image-1.jpeg',3),(4,'Tulshimala_Rice4','hero_marquee/image-2.jpeg',4);
/*!40000 ALTER TABLE `products_heroimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_order`
--

DROP TABLE IF EXISTS `products_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `district` varchar(50) NOT NULL,
  `upazila` varchar(50) NOT NULL,
  `village_road` varchar(255) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `post_code` varchar(20) DEFAULT NULL,
  `post_office` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_user` (`user_id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_order`
--

LOCK TABLES `products_order` WRITE;
/*!40000 ALTER TABLE `products_order` DISABLE KEYS */;
INSERT INTO `products_order` VALUES (1,'Md Alam Hossain','01738665530','Dhaka','Savar','Bingram','প্রিমিয়াম তুলিশী মালা চাল',1,220.00,'COD','2026-02-16 20:33:17',NULL,'Pending',NULL,NULL,NULL),(2,'Md Alam Hossain','01738665530','Dhaka','Savar','Bingram','প্রিমিয়াম তুলিশী মালা চাল',1,220.00,'COD','2026-02-16 20:36:03',NULL,'Pending',NULL,NULL,NULL),(3,'Rashel Mia','01841296475','Sherpur','Nalitabari','Uttra bazar, patenga','বিন্নি ধানের চাল',3,620.00,'COD','2026-02-16 20:37:22',NULL,'Pending',NULL,NULL,NULL),(4,'dfdf','dfsdf','dfsd','df','dfdfd','বিন্নি ধানের চাল',1,240.00,'COD','2026-02-16 20:38:47',NULL,'Pending',NULL,NULL,NULL),(5,'vdfdfg','01710252525','fgfg','dfgfgfd','dfgfg','বিন্নি ধানের চাল',1,240.00,'COD','2026-02-17 08:53:36',3,'Pending',NULL,NULL,NULL),(6,'বাবু মিয়া','01711223344','বগুড়া','নন্দীগ্রাম','কলেজপাড়া, বড় মসজিদ','প্রিমিয়াম তুলিশী মালা চাল',5,900.00,'COD','2026-02-17 09:07:29',4,'Pending',NULL,NULL,NULL),(7,'মিলন হোসেন','01710205030','ঢাকা','সাভার','থানা রোড, সাভার বড় মসজিদ','বিন্নি ধানের চাল',6,1190.00,'COD','2026-02-17 10:35:26',6,'Pending',NULL,NULL,NULL),(8,'মিলন হোসেন','01710205030','ঢাকা','সাভার','থানা রোড, সাভার বড় মসজিদ','প্রিমিয়াম তুলিশী মালা চাল',3,560.00,'COD','2026-02-17 10:36:18',6,'Pending',NULL,NULL,NULL),(9,'নাসির উদ্দিন','01813131313','ঢাকা','সাভার','জাহাঙ্গীর নগর','প্রিমিয়াম তুলিশী মালা চাল',3,560.00,'COD','2026-02-17 10:54:41',8,'Pending',NULL,NULL,NULL),(10,'নাসির উদ্দিন','01813131313','ঢাকা','সাভার','জাহাঙ্গীর নগর','বিন্নি ধানের চাল',3,620.00,'COD','2026-02-17 10:58:02',8,'Pending',NULL,NULL,NULL),(11,'নাসির উদ্দিন','01813131313','ঢাকা','সাভার','জাহাঙ্গীর নগর','বিন্নি ধানের চাল',4,810.00,'Mobile','2026-02-17 10:58:50',8,'Accepted',NULL,NULL,NULL),(12,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',4,730.00,'COD','2026-02-20 10:16:29',9,'Pending','1344','Pallibiddut',NULL),(13,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',4,730.00,'Mobile','2026-02-20 10:16:36',9,'Pending','1344','Pallibiddut',NULL),(14,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',4,690.00,'Mobile','2026-02-20 10:31:06',9,'Pending','1344','Pallibiddut',NULL),(15,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',4,690.00,'Mobile','2026-02-20 10:32:16',9,'Pending','1344','Pallibiddut',NULL),(16,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',4,690.00,'Mobile','2026-02-20 10:47:21',9,'Pending','1344','Pallibiddut',NULL),(17,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',4,690.00,'Mobile','2026-02-20 10:48:02',9,'Pending','1344','Pallibiddut',NULL),(18,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',2,430.00,'Mobile','2026-02-20 10:50:10',9,'Pending','1344','Pallibiddut',NULL),(19,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',2,430.00,'COD','2026-02-20 10:50:47',9,'Pending','1344','Pallibiddut',NULL),(20,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 15:05:41',9,'Pending','1344','Pallibiddut',NULL),(21,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 15:30:29',9,'Pending','1344','Pallibiddut',NULL),(22,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 15:30:45',9,'Pending','1344','Pallibiddut',NULL),(23,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 15:41:21',9,'Pending','1344','Pallibiddut',NULL),(24,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 15:41:26',9,'Pending','1344','Pallibiddut',NULL),(25,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 15:50:55',9,'Pending','1344','Pallibiddut',NULL),(26,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 15:53:13',9,'Pending','1344','Pallibiddut',NULL),(27,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 16:31:47',9,'Pending','1344','Pallibiddut',NULL),(28,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',4,690.00,'Mobile','2026-02-20 16:36:32',9,'Pending','1344','Pallibiddut',NULL),(29,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',2,430.00,'Mobile','2026-02-20 16:45:59',9,'Pending','1344','Pallibiddut',NULL),(30,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',2,390.00,'Mobile','2026-02-20 17:11:29',9,'Pending','1344','Pallibiddut',NULL),(31,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 17:31:23',9,'Pending','1344','Pallibiddut',NULL),(32,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'Mobile','2026-02-20 17:32:12',9,'Pending','1344','Pallibiddut',NULL),(33,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',2,430.00,'Mobile','2026-02-20 17:42:27',9,'Pending','1344','Pallibiddut',NULL),(34,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',8,1570.00,'Mobile','2026-02-20 17:44:14',9,'Pending','1344','Pallibiddut',NULL),(35,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',2,370.00,'Mobile','2026-02-20 17:49:57',9,'Pending','1344','Pallibiddut',NULL),(36,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',3,530.00,'bkash','2026-02-21 08:43:35',9,'Pending','1344','Pallibiddut',NULL),(37,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',4,810.00,'bkash','2026-02-21 08:48:29',9,'Pending','1344','Pallibiddut',NULL),(38,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',4,730.00,'nagad','2026-02-21 09:01:12',9,'Pending','1344','Pallibiddut','7XFDSDSDFF6'),(39,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',3,530.00,'rocket','2026-02-21 09:01:40',9,'Pending','1344','Pallibiddut','7XFDSDSDFF7'),(40,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',1,210.00,'COD','2026-02-21 09:02:05',9,'Pending','1344','Pallibiddut',NULL),(41,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','প্রিমিয়াম তুলশী মালা চাল',3,560.00,'nagad','2026-02-21 09:12:54',9,'Pending','1344','Pallibiddut','7XFDSDSDFF9'),(42,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',4,810.00,'COD','2026-02-21 09:39:08',9,'Pending','1344','Pallibiddut',NULL),(43,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',4,810.00,'COD','2026-02-21 09:41:41',9,'Pending','1344','Pallibiddut',NULL),(44,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','সাদা বিন্নি চাল',3,620.00,'COD','2026-02-21 09:42:42',9,'Pending','1344','Pallibiddut',NULL),(45,'Milon Pdder','01792882838','Dhaka','Savar','Pallibiddut','তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)',4,690.00,'COD','2026-02-21 09:45:26',9,'Pending','1344','Pallibiddut',NULL);
/*!40000 ALTER TABLE `products_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_upcoming` tinyint(1) NOT NULL,
  `is_discounted` tinyint(1) NOT NULL,
  `is_hero` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (1,'প্রিমিয়াম তুলশী মালা চাল','এক প্রকার আতপচালের নাম তুলশীমালা চাল। এটি চিকন, ছোট ও সুগন্ধী যুক্ত। এটি শেরপুর জেলার ব্র্যান্ডিং ও জিআই স্বীকৃতি প্রাপ্ত পণ্য। এই চাল দিয়ে পোলাও, পায়েস, ভাত, খিচুড়ি, পিঠা সহ নানারকম সুস্বাদু খাবার তৈরি করা যায়।\r\n\r\nতুলসীমালা চালের বৈশিষ্ট্য:\r\n-Tulshimala rice চিকন, ছোট ও সুগন্ধী যুক্ত।\r\n-এটি একপ্রকার আতপচাল।\r\n-এই চালের খাবার কিছুটা নরম ও সহজে হজম হয়।\r\n-যেকোন খাবার হয় সুস্বাদু।\r\n-ফুল থেকে ধান পাকা পর্যন্ত ৫ বার রং বদলায়।\r\n \r\n\r\nতুলশীমালা চাল দিয়ে কি কি খাওয়া যায়?\r\n-পোলাও রান্নার জন্য বিখ্যাত তুলসীমালা চাল।\r\n-পায়েস, খিচুড়ি ও বিরিয়ানি রান্না করা যায়।\r\n-দেশি প্রায় সব ধরনের পিঠা তৈরি করা যায়।\r\n-ফ্রাইড রাইস ও অন্যান্য রান্নায় ব্যবহার করা হয়।\r\n-এই চাল নিয়মিত ভাতও খাওয়া যায়।\r\n-শিশু খাদ্য এবং বয়স্ক কিংবা অসুস্থ্যদের খাবার তৈরিতে ব্যবহার হয়।',160.00,'products/Tulshimala_2.jpg',1,1,0),(2,'সাদা বিন্নি চাল','সাদা বিন্নি জুমের চাল- সাদা,লাল,কালো বিন্নি চাল। অনেক স্থানের আদিবাসীরা বিন্নি ধানকে বলেন ‘বিনি ধান’।\r\n– বিভিন্ন উৎসবে বিন্নি চালের ঐতিহ্য ধরে রেখেছে সমভূমি ও পাহাড়ি দুই জনগোষ্ঠীই। পাহাড়ের আদিবাসীরা বিন্নি ধানের আবাদ ধরে রেখেছে।\r\n-এই ধানের চালের গুঁড়া অন্যান্য চালের গুঁড়া থেকে নরম হয়।\r\n-চালের গুঁড়া দিয়ে সব ধরনের পিঠা তৈরি করা যায়।\r\nক্ষির, পায়েস, ভাপা পিঠা, মুখশালা, চিতই, ভেজানো পিঠা, পাটিসাপটা পিঠা, চোক্ষা পিঠা ইত্যাদি তৈরি করা যায়।\r\n-ভাত হিসেবেও বিন্নি ধানের চাহিদা রয়েছে। স্বাদ ও গন্ধের জন্য বিন্নি চাল বিখ্যাত।\r\n– বিন্নি আতপ চালের আঠালো ভাত খুবই সুস্বাদু। এর রয়েছে ঔষুধি গুণও। আমাশয় সারাতে অনেকে খান এ চালের ভাত। এ চাল সিদ্ধ করতে হয় না বলে তাতে খাদ্যের গুণগত মান বেশি থাকে।',180.00,'products/Sada-Binni-3.jpg',1,1,0),(3,'তুলশী মালা চাল (শেরপুর থেকে আমদানীকৃত)','তুলশীমালা চাল এক প্রকার সুগন্ধী যুক্ত আতপচাল। এটি আকারে ছোট ও চিকন। এই চাল কেবল শেরপুর জেলাতে জন্মায়। তাই বলা যায় এই জেলার মাটি, পানি, আবহাওয়া তুলশীমালা ধানের জন্য বিশেষ উপযোগী। এই চালের বেশি কিছু বৈশিষ্ট্য রয়েছে:\r\n\r\nতুলসীমালা চালের বৈশিষ্ট্য-\r\nTulshimala rice চিকন, ছোট ও সুগন্ধী যুক্ত।\r\nএটি একপ্রকার আতপচাল।\r\nএই চালের খাবার কিছুটা নরম ও সহজে হজম হয়।\r\nযেকোন খাবার হয় সুস্বাদু।\r\nফুল থেকে ধান পাকা পর্যন্ত ৫ বার রং বদলায়।',150.00,'products/image-2_zdJzpKG.jpg',1,1,1);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productimage`
--

DROP TABLE IF EXISTS `products_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_productimage_product_id_e747596a_fk_products_product_id` (`product_id`),
  CONSTRAINT `products_productimage_product_id_e747596a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productimage`
--

LOCK TABLES `products_productimage` WRITE;
/*!40000 ALTER TABLE `products_productimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_productimage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-21 15:51:04
