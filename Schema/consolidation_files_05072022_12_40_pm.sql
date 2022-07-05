-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: consolidation_files
-- ------------------------------------------------------
-- Server version	8.0.18

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add module settings',7,'add_modulesettings'),(26,'Can change module settings',7,'change_modulesettings'),(27,'Can delete module settings',7,'delete_modulesettings'),(28,'Can view module settings',7,'view_modulesettings'),(29,'Can add reports',8,'add_reports'),(30,'Can change reports',8,'change_reports'),(31,'Can delete reports',8,'delete_reports'),(32,'Can view reports',8,'view_reports'),(33,'Can add target files',9,'add_targetfiles'),(34,'Can change target files',9,'change_targetfiles'),(35,'Can delete target files',9,'delete_targetfiles'),(36,'Can view target files',9,'view_targetfiles'),(37,'Can add target file definitions',10,'add_targetfiledefinitions'),(38,'Can change target file definitions',10,'change_targetfiledefinitions'),(39,'Can delete target file definitions',10,'delete_targetfiledefinitions'),(40,'Can view target file definitions',10,'view_targetfiledefinitions'),(41,'Can add sources',11,'add_sources'),(42,'Can change sources',11,'change_sources'),(43,'Can delete sources',11,'delete_sources'),(44,'Can view sources',11,'view_sources'),(45,'Can add source definitions',12,'add_sourcedefinitions'),(46,'Can change source definitions',12,'change_sourcedefinitions'),(47,'Can delete source definitions',12,'delete_sourcedefinitions'),(48,'Can view source definitions',12,'view_sourcedefinitions'),(49,'Can add Token',13,'add_token'),(50,'Can change Token',13,'change_token'),(51,'Can delete Token',13,'delete_token'),(52,'Can view Token',13,'view_token'),(53,'Can add token',14,'add_tokenproxy'),(54,'Can change token',14,'change_tokenproxy'),(55,'Can delete token',14,'delete_tokenproxy'),(56,'Can view token',14,'view_tokenproxy'),(57,'Can add file uploads',15,'add_fileuploads'),(58,'Can change file uploads',15,'change_fileuploads'),(59,'Can delete file uploads',15,'delete_fileuploads'),(60,'Can view file uploads',15,'view_fileuploads');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'authtoken','token'),(14,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(15,'process','fileuploads'),(7,'process','modulesettings'),(8,'process','reports'),(12,'process','sourcedefinitions'),(11,'process','sources'),(10,'process','targetfiledefinitions'),(9,'process','targetfiles'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-04-07 10:37:35.525681'),(2,'auth','0001_initial','2022-04-07 10:37:36.041116'),(3,'admin','0001_initial','2022-04-07 10:37:37.106387'),(4,'admin','0002_logentry_remove_auto_add','2022-04-07 10:37:37.343394'),(5,'admin','0003_logentry_add_action_flag_choices','2022-04-07 10:37:37.352304'),(6,'contenttypes','0002_remove_content_type_name','2022-04-07 10:37:37.590756'),(7,'auth','0002_alter_permission_name_max_length','2022-04-07 10:37:37.720577'),(8,'auth','0003_alter_user_email_max_length','2022-04-07 10:37:37.749575'),(9,'auth','0004_alter_user_username_opts','2022-04-07 10:37:37.758824'),(10,'auth','0005_alter_user_last_login_null','2022-04-07 10:37:37.915849'),(11,'auth','0006_require_contenttypes_0002','2022-04-07 10:37:37.919475'),(12,'auth','0007_alter_validators_add_error_messages','2022-04-07 10:37:37.928689'),(13,'auth','0008_alter_user_username_max_length','2022-04-07 10:37:38.049721'),(14,'auth','0009_alter_user_last_name_max_length','2022-04-07 10:37:38.163036'),(15,'auth','0010_alter_group_name_max_length','2022-04-07 10:37:38.188144'),(16,'auth','0011_update_proxy_permissions','2022-04-07 10:37:38.203726'),(17,'auth','0012_alter_user_first_name_max_length','2022-04-07 10:37:38.314213'),(18,'process','0001_initial','2022-04-07 10:37:38.762710'),(19,'sessions','0001_initial','2022-04-07 10:37:39.241789'),(20,'authtoken','0001_initial','2022-04-07 10:38:10.569280'),(21,'authtoken','0002_auto_20160226_1747','2022-04-07 10:38:11.943255'),(22,'authtoken','0003_tokenproxy','2022-04-07 10:38:11.948984'),(23,'process','0002_auto_20220407_2137','2022-04-07 16:08:11.401820'),(24,'process','0003_auto_20220408_1757','2022-04-08 12:27:28.916056'),(25,'process','0004_auto_20220505_0833','2022-05-05 03:04:19.364209'),(26,'process','0005_fileuploads','2022-05-08 13:09:19.435683'),(27,'process','0006_auto_20220508_2043','2022-05-08 15:13:28.865736'),(28,'process','0007_auto_20220508_2129','2022-05-08 15:59:23.242261'),(29,'process','0008_auto_20220609_1314','2022-06-09 07:45:27.429857'),(30,'process','0009_sources_key_words','2022-06-09 10:24:05.970132'),(31,'process','0010_auto_20220625_2244','2022-06-25 17:14:29.388794');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_uploads`
--

DROP TABLE IF EXISTS `file_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` int(10) unsigned NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `entities_id` int(10) unsigned NOT NULL,
  `source_name` varchar(64) NOT NULL,
  `source_type` varchar(64) DEFAULT NULL,
  `extraction_type` varchar(64) DEFAULT NULL,
  `file_name` varchar(128) DEFAULT NULL,
  `file_size_bytes` int(10) unsigned DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `comments` longtext,
  `file_row_count` int(10) unsigned DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL,
  `file_path` varchar(512) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` varchar(32) DEFAULT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` varchar(32) DEFAULT NULL,
  `m_sources_id` int(11) NOT NULL,
  `m_processing_layer_id` int(10) unsigned NOT NULL,
  `m_processing_sub_layer_id` int(10) unsigned NOT NULL,
  `processing_layer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_uploads_m_sources_id_8e74113e_fk_sources_id` (`m_sources_id`),
  CONSTRAINT `file_uploads_m_sources_id_8e74113e_fk_sources_id` FOREIGN KEY (`m_sources_id`) REFERENCES `sources` (`id`),
  CONSTRAINT `file_uploads_chk_1` CHECK ((`tenants_id` >= 0)),
  CONSTRAINT `file_uploads_chk_10` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `file_uploads_chk_11` CHECK ((`processing_layer_id` >= 0)),
  CONSTRAINT `file_uploads_chk_2` CHECK ((`groups_id` >= 0)),
  CONSTRAINT `file_uploads_chk_3` CHECK ((`entities_id` >= 0)),
  CONSTRAINT `file_uploads_chk_5` CHECK ((`file_size_bytes` >= 0)),
  CONSTRAINT `file_uploads_chk_6` CHECK ((`file_row_count` >= 0)),
  CONSTRAINT `file_uploads_chk_7` CHECK ((`created_by` >= 0)),
  CONSTRAINT `file_uploads_chk_8` CHECK ((`modified_by` >= 0)),
  CONSTRAINT `file_uploads_chk_9` CHECK ((`m_processing_layer_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_uploads`
--

LOCK TABLES `file_uploads` WRITE;
/*!40000 ALTER TABLE `file_uploads` DISABLE KEYS */;
INSERT INTO `file_uploads` VALUES (1,1,1,1,'INVOICE_SALARY_REPORT_PM','FILE','FOLDER','1.Invoice_Salary_Report_-_Month_wise_T___Temp - Apr-21.xlsb',185605,'VALIDATED','File Validated Successfully!!!',4497,0,'C:/Adventbiz/FinanceControlledApplication/ConsolidationFiles/Data/Invoice_Salary_Report_CM/input/1Invoice_Salary_Report___Month_wise_T___Temp___Apr_21_2021_06_08_01_58_34_194889.xlsb',1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',1,2,11,1000),(2,1,1,1,'INVOICE_SALARY_REPORT_CM','FILE','FOLDER','1.Invoice_Salary_Report_-_Month_wise_T___Temp - Apr-21.xlsb',185605,'VALIDATION ERROR','Columns Mismatch!!!',NULL,0,'C:/Adventbiz/FinanceControlledApplication/ConsolidationFiles/Data/Invoice_Salary_Report_CM/input/1Invoice_Salary_Report___Month_wise_T___Temp___Apr_21_2021_06_08_01_58_34_194889.xlsb',1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',2,2,11,1000),(3,1,1,1,'INVOICE_SALARY_REPORT_CM','FILE','FOLDER','1.Invoice_Salary_Report_-_Month_wise_T___Temp - Apr-21.xlsb',185605,'SUCCESS','File Processed Successfully!!!',4491,0,'C:/Adventbiz/FinanceControlledApplication/ConsolidationFiles/Data/Invoice_Salary_Report_CM/input/1Invoice_Salary_Report___Month_wise_T___Temp___Apr_21_2021_06_08_01_58_34_194889.xlsb',1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',2,2,11,1000),(4,1,1,1,'INVOICE_SALARY_REPORT_CM','FILE','FOLDER','1.Invoice_Salary_Report_-_Month_wise_T___Temp - Apr-21.xlsb',185605,'ERROR','Error in Processing Data!!!',NULL,0,'C:/Adventbiz/FinanceControlledApplication/ConsolidationFiles/Data/Invoice_Salary_Report_CM/input/1Invoice_Salary_Report___Month_wise_T___Temp___Apr_21_2021_06_08_01_58_34_194889.xlsb',1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',2,2,11,1000),(5,1,1,1,'INVOICE_SALARY_REPORT_PM','FILE','FOLDER','1.Invoice_Salary_Report_-_Month_wise_T___Temp - Apr-21.xlsb',185605,'PROCESSING','Processing Data!!!',4497,0,'C:/Adventbiz/FinanceControlledApplication/ConsolidationFiles/Data/Invoice_Salary_Report_CM/input/1Invoice_Salary_Report___Month_wise_T___Temp___Apr_21_2021_06_08_01_58_34_194889.xlsb',1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',1,2,11,1000),(6,1,1,1,'INVOICE_REMIBURSEMENT_REPORT_PM','FILE','FOLDER','1.Invoice_Reimbursement_Report_-_Month_wise_T___Temp - Apr-21.xlsb',185605,'VALIDATED','File Validated Successfully!!!',5487,0,'C:/Adventbiz/FinanceControlledApplication/ConsolidationFiles/Data/Invoice_Salary_Report_CM/input/1Invoice_Salary_Report___Month_wise_T___Temp___Apr_21_2021_06_08_01_58_34_194889.xlsb',1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',1,2,11,1000);
/*!40000 ALTER TABLE `file_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_settings`
--

DROP TABLE IF EXISTS `module_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` int(10) unsigned NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `entities_id` int(10) unsigned NOT NULL,
  `m_processing_layer_id` int(10) unsigned NOT NULL,
  `m_processing_sub_layer_id` int(10) unsigned NOT NULL,
  `processing_layer_id` int(10) unsigned NOT NULL,
  `setting_key` varchar(64) DEFAULT NULL,
  `setting_value` json DEFAULT NULL,
  `setting_description` longtext,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` varchar(32) DEFAULT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `module_settings_chk_1` CHECK ((`tenants_id` >= 0)),
  CONSTRAINT `module_settings_chk_2` CHECK ((`groups_id` >= 0)),
  CONSTRAINT `module_settings_chk_3` CHECK ((`entities_id` >= 0)),
  CONSTRAINT `module_settings_chk_4` CHECK ((`m_processing_layer_id` >= 0)),
  CONSTRAINT `module_settings_chk_5` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `module_settings_chk_6` CHECK ((`processing_layer_id` >= 0)),
  CONSTRAINT `module_settings_chk_7` CHECK ((`created_by` >= 0)),
  CONSTRAINT `module_settings_chk_8` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_settings`
--

LOCK TABLES `module_settings` WRITE;
/*!40000 ALTER TABLE `module_settings` DISABLE KEYS */;
INSERT INTO `module_settings` VALUES (1,1,1,1,2,11,1000,'source_input_path','{\"sourceInputPath\": \"G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/{source_name}\"}','Input Path for Source',1,1,'2021-03-08 22:20:57.375798',1,'2021-03-08 22:20:57.375798');
/*!40000 ALTER TABLE `module_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` int(10) unsigned NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `entities_id` int(10) unsigned NOT NULL,
  `m_processing_layer_id` int(10) unsigned NOT NULL,
  `m_processing_sub_layer_id` int(10) unsigned NOT NULL,
  `processing_layer_id` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` longtext,
  `report_config` json DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` varchar(32) DEFAULT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `reports_chk_1` CHECK ((`tenants_id` >= 0)),
  CONSTRAINT `reports_chk_2` CHECK ((`groups_id` >= 0)),
  CONSTRAINT `reports_chk_3` CHECK ((`entities_id` >= 0)),
  CONSTRAINT `reports_chk_4` CHECK ((`m_processing_layer_id` >= 0)),
  CONSTRAINT `reports_chk_5` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `reports_chk_6` CHECK ((`processing_layer_id` >= 0)),
  CONSTRAINT `reports_chk_7` CHECK ((`created_by` >= 0)),
  CONSTRAINT `reports_chk_8` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_definitions`
--

DROP TABLE IF EXISTS `source_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source_definitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` int(10) unsigned NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `entities_id` int(10) unsigned NOT NULL,
  `m_processing_layer_id` int(10) unsigned NOT NULL,
  `m_processing_sub_layer_id` int(10) unsigned NOT NULL,
  `processing_layer_id` int(10) unsigned NOT NULL,
  `attribute_name` varchar(128) DEFAULT NULL,
  `attribute_position` int(10) unsigned DEFAULT NULL,
  `attribute_data_type` varchar(32) DEFAULT NULL,
  `attribute_date_format` varchar(32) DEFAULT NULL,
  `attribute_pattern` varchar(128) DEFAULT NULL,
  `attribute_enums` json DEFAULT NULL,
  `attribute_min_length` varchar(5) DEFAULT NULL,
  `attribute_max_length` varchar(5) DEFAULT NULL,
  `attribute_formula` varchar(128) DEFAULT NULL,
  `attribute_reference_field` varchar(64) DEFAULT NULL,
  `is_validate` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_unique` tinyint(1) NOT NULL,
  `is_editable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` varchar(32) DEFAULT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` varchar(32) DEFAULT NULL,
  `sources_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `source_definitions_sources_id_2faf5139_fk_sources_id` (`sources_id`),
  CONSTRAINT `source_definitions_sources_id_2faf5139_fk_sources_id` FOREIGN KEY (`sources_id`) REFERENCES `sources` (`id`),
  CONSTRAINT `source_definitions_chk_1` CHECK ((`tenants_id` >= 0)),
  CONSTRAINT `source_definitions_chk_2` CHECK ((`groups_id` >= 0)),
  CONSTRAINT `source_definitions_chk_3` CHECK ((`entities_id` >= 0)),
  CONSTRAINT `source_definitions_chk_4` CHECK ((`m_processing_layer_id` >= 0)),
  CONSTRAINT `source_definitions_chk_5` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `source_definitions_chk_6` CHECK ((`processing_layer_id` >= 0)),
  CONSTRAINT `source_definitions_chk_7` CHECK ((`attribute_position` >= 0)),
  CONSTRAINT `source_definitions_chk_8` CHECK ((`created_by` >= 0)),
  CONSTRAINT `source_definitions_chk_9` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_definitions`
--

LOCK TABLES `source_definitions` WRITE;
/*!40000 ALTER TABLE `source_definitions` DISABLE KEYS */;
INSERT INTO `source_definitions` VALUES (1,1,1,1,2,11,1000,'CS',1,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,0,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',1),(2,1,1,1,2,11,1000,'Invoice Number',2,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,0,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',1),(3,1,1,1,2,11,1000,'Invoice Date',3,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,0,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',1),(4,1,1,1,2,11,1000,'CS1',1,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',2),(5,1,1,1,2,11,1000,'Invoice Number1',2,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',2),(6,1,1,1,2,11,1000,'Invoice Date1',3,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',2),(7,1,1,1,2,11,1000,'CS2',1,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',3),(8,1,1,1,2,11,1000,'Invoice Number2',2,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',3),(9,1,1,1,2,11,1000,'Invoice Date2',3,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',3),(10,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:45:27.586078',11,'2022-06-30 16:45:27.586078',1),(11,1,1,1,2,11,1000,'Account No',2,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-06-30 16:45:27.603077',11,'2022-06-30 16:45:27.603077',1),(12,1,1,1,2,11,1000,'Name',3,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-06-30 16:45:27.612084',11,'2022-06-30 16:45:27.612084',1),(13,1,1,1,2,11,1000,'SCI',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:50:29.685829',11,'2022-06-30 16:50:29.685829',1),(14,1,1,1,2,11,1000,'Invoice Details client',2,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-06-30 16:50:29.698832',11,'2022-06-30 16:50:29.698832',1),(15,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:53:02.375773',11,'2022-06-30 16:53:02.375773',1),(16,1,1,1,2,11,1000,'Position',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:55:32.145103',11,'2022-06-30 16:55:32.145103',1),(17,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,1,11,'2022-06-30 16:57:16.620132',11,'2022-06-30 16:57:16.620132',1),(18,1,1,1,2,11,1000,'Account no',2,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.627153',11,'2022-06-30 16:57:16.627153',1),(19,1,1,1,2,11,1000,'Client id',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.637116',11,'2022-06-30 16:57:16.637116',1),(20,1,1,1,2,11,1000,'Service',4,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.641117',11,'2022-06-30 16:57:16.641117',1),(21,1,1,1,2,11,1000,'Date',5,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.649127',11,'2022-06-30 16:57:16.649127',1);
/*!40000 ALTER TABLE `source_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` int(10) unsigned NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `entities_id` int(10) unsigned NOT NULL,
  `m_processing_layer_id` int(10) unsigned NOT NULL,
  `m_processing_sub_layer_id` int(10) unsigned NOT NULL,
  `processing_layer_id` int(10) unsigned NOT NULL,
  `source_code` varchar(64) NOT NULL,
  `source_name` varchar(64) NOT NULL,
  `source_config` json NOT NULL,
  `source_input_location` varchar(512) DEFAULT NULL,
  `source_archive_location` varchar(512) DEFAULT NULL,
  `source_error_location` varchar(512) DEFAULT NULL,
  `source_import_location` varchar(512) DEFAULT NULL,
  `source_import_seq` int(10) unsigned DEFAULT NULL,
  `source_field_number` int(10) unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` varchar(32) DEFAULT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` varchar(32) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `key_words` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_code` (`source_code`),
  UNIQUE KEY `sources_source_name_d9ca8f0a_uniq` (`source_name`),
  KEY `sources_source_id_f464858a_fk_sources_id` (`source_id`),
  CONSTRAINT `sources_source_id_f464858a_fk_sources_id` FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`),
  CONSTRAINT `sources_chk_1` CHECK ((`tenants_id` >= 0)),
  CONSTRAINT `sources_chk_10` CHECK ((`modified_by` >= 0)),
  CONSTRAINT `sources_chk_2` CHECK ((`groups_id` >= 0)),
  CONSTRAINT `sources_chk_3` CHECK ((`entities_id` >= 0)),
  CONSTRAINT `sources_chk_4` CHECK ((`m_processing_layer_id` >= 0)),
  CONSTRAINT `sources_chk_5` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `sources_chk_6` CHECK ((`processing_layer_id` >= 0)),
  CONSTRAINT `sources_chk_7` CHECK ((`source_import_seq` >= 0)),
  CONSTRAINT `sources_chk_8` CHECK ((`source_field_number` >= 0)),
  CONSTRAINT `sources_chk_9` CHECK ((`created_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` VALUES (1,1,1,1,2,11,1000,'1df26f9d-c9f5-4f5f-ad19-7eeed6ce3a62','INVOICE_SALARY_REPORT_PM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"key_words\": [], \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 2, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_SALARY_REPORT_PM/input',NULL,NULL,NULL,1,NULL,1,11,'2022-04-07 16:33:35.037184',11,'2022-06-06 18:01:39.644022',NULL,'{\"keywords\": [\"invoice\", \"salary\", \"pm\"]}'),(2,1,1,1,2,11,1000,'81954d7d-c364-478e-8843-bbc47dd6c57a','INVOICE_SALARY_REPORT_CM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 2, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_SALARY_REPORT_CM/input',NULL,NULL,NULL,2,NULL,1,11,'2022-04-07 16:36:02.295846',11,'2022-06-06 18:01:51.984679',NULL,'{\"keywords\": [\"invoice\", \"salary\", \"cm\"]}'),(3,1,1,1,2,11,1000,'adc74b3e-fa8a-4ce2-8b53-c06ba60ed50e','INVOICE_OPP_REPORT_CM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 2, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_OPP_REPORT_CM/input',NULL,NULL,NULL,3,NULL,1,11,'2022-04-08 07:05:03.512940',11,'2022-06-06 18:01:48.903364',NULL,'{\"keywords\": [\"invoice\", \"opp\", \"pm\"]}'),(7,1,1,1,2,11,1000,'c9039987-e93b-4122-8034-c45b0f00ec77','INVOICE_REIMBURSEMENT_CM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 1, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_REIMBURSEMENT_CM/input',NULL,NULL,NULL,1,NULL,1,11,'2022-07-01 12:02:25.058058',11,'2022-07-01 12:02:25.058058',NULL,'{\"keywords\": [\"invoice\", \"reimb\", \"cm\"]}'),(8,1,1,1,2,11,1000,'542dc8fd-d25a-4d70-b9c1-13fbd5364540','INVOICE_REIMBURSEMENT_PM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 1, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_REIMBURSEMENT_PM/input',NULL,NULL,NULL,1,NULL,1,11,'2022-07-01 13:27:45.151962',11,'2022-07-01 13:27:45.151962',NULL,'{\"keywords\": [\"invoice\", \"reimb\", \"pm\"]}');
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_file_definitions`
--

DROP TABLE IF EXISTS `target_file_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_file_definitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` int(10) unsigned NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `entities_id` int(10) unsigned NOT NULL,
  `m_processing_layer_id` int(10) unsigned NOT NULL,
  `m_processing_sub_layer_id` int(10) unsigned NOT NULL,
  `processing_layer_id` int(10) unsigned NOT NULL,
  `field_name` varchar(128) DEFAULT NULL,
  `field_sequence` int(10) unsigned DEFAULT NULL,
  `files_config` json DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` varchar(32) DEFAULT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` varchar(32) DEFAULT NULL,
  `target_files_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `target_file_definiti_target_files_id_8712e1f7_fk_target_fi` (`target_files_id`),
  CONSTRAINT `target_file_definiti_target_files_id_8712e1f7_fk_target_fi` FOREIGN KEY (`target_files_id`) REFERENCES `target_files` (`id`),
  CONSTRAINT `target_file_definitions_chk_1` CHECK ((`tenants_id` >= 0)),
  CONSTRAINT `target_file_definitions_chk_2` CHECK ((`groups_id` >= 0)),
  CONSTRAINT `target_file_definitions_chk_3` CHECK ((`entities_id` >= 0)),
  CONSTRAINT `target_file_definitions_chk_4` CHECK ((`m_processing_layer_id` >= 0)),
  CONSTRAINT `target_file_definitions_chk_5` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `target_file_definitions_chk_6` CHECK ((`processing_layer_id` >= 0)),
  CONSTRAINT `target_file_definitions_chk_7` CHECK ((`field_sequence` >= 0)),
  CONSTRAINT `target_file_definitions_chk_8` CHECK ((`created_by` >= 0)),
  CONSTRAINT `target_file_definitions_chk_9` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_file_definitions`
--

LOCK TABLES `target_file_definitions` WRITE;
/*!40000 ALTER TABLE `target_file_definitions` DISABLE KEYS */;
INSERT INTO `target_file_definitions` VALUES (1,1,1,1,2,11,1000,'CS',1,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',1),(2,1,1,1,2,11,1000,'Client Name',2,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',1),(3,1,1,1,2,11,1000,'ALCS ID',3,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',1),(4,1,1,1,2,11,1000,'CORP ID',4,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',1),(10,1,1,1,2,11,1000,'CS',1,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',2),(11,1,1,1,2,11,1000,'Client Name',2,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',2),(12,1,1,1,2,11,1000,'ALCS ID',3,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',2),(13,1,1,1,2,11,1000,'SBU',4,NULL,0,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',2),(20,1,1,1,2,11,1000,'CS Name',1,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',3),(21,1,1,1,2,11,1000,'Client Name',2,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',3),(22,1,1,1,2,11,1000,'ALCS ID',3,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',3),(23,1,1,1,2,11,1000,'SBU',4,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',3),(30,1,1,1,2,11,1000,'CS',1,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',4),(31,1,1,1,2,11,1000,'Client Name',2,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',4),(32,1,1,1,2,11,1000,'ALCS ID',3,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',4),(33,1,1,1,2,11,1000,'SBU',4,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',4),(34,1,1,1,2,11,1000,'Date',5,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',4),(40,1,1,1,2,11,1000,'Credit Note Raised By',1,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',5),(41,1,1,1,2,11,1000,'Client Name',2,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',5),(42,1,1,1,2,11,1000,'Client Id',3,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',5),(43,1,1,1,2,11,1000,'Corp Id',4,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',5),(50,1,1,1,2,11,1000,'CS',1,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',6),(51,1,1,1,2,11,1000,'Client Name',2,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',6),(52,1,1,1,2,11,1000,'ALCS ID',3,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',6),(53,1,1,1,2,11,1000,'SBU',4,NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241',6),(54,1,1,1,2,11,1000,'CS',1,NULL,0,11,'2022-06-30 18:17:03.001071',11,'2022-06-30 18:17:03.001071',1),(55,1,1,1,2,11,1000,'Client Name',2,NULL,0,11,'2022-06-30 18:17:03.018073',11,'2022-06-30 18:17:03.018073',1),(56,1,1,1,2,11,1000,'Some',1,'[{\"sourceId\": \"1\", \"sourceDefinitionId\": \"17\"}]',1,11,'2022-06-30 18:33:40.989355',11,'2022-06-30 18:33:40.989355',1),(57,1,1,1,2,11,1000,'CS',1,'[{\"sourceId\": \"3\", \"sourceDefinitionId\": \"8\"}, {\"sourceId\": \"3\", \"sourceDefinitionId\": \"8\"}]',1,11,'2022-06-30 18:34:30.218730',11,'2022-06-30 18:34:30.218730',2);
/*!40000 ALTER TABLE `target_file_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_files`
--

DROP TABLE IF EXISTS `target_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` int(10) unsigned NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `entities_id` int(10) unsigned NOT NULL,
  `m_processing_layer_id` int(10) unsigned NOT NULL,
  `m_processing_sub_layer_id` int(10) unsigned NOT NULL,
  `processing_layer_id` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` longtext,
  `files_config` json DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` varchar(32) DEFAULT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `target_files_name_bd86a8c2_uniq` (`name`),
  CONSTRAINT `target_files_chk_1` CHECK ((`tenants_id` >= 0)),
  CONSTRAINT `target_files_chk_2` CHECK ((`groups_id` >= 0)),
  CONSTRAINT `target_files_chk_3` CHECK ((`entities_id` >= 0)),
  CONSTRAINT `target_files_chk_4` CHECK ((`m_processing_layer_id` >= 0)),
  CONSTRAINT `target_files_chk_5` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `target_files_chk_6` CHECK ((`processing_layer_id` >= 0)),
  CONSTRAINT `target_files_chk_7` CHECK ((`created_by` >= 0)),
  CONSTRAINT `target_files_chk_8` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_files`
--

LOCK TABLES `target_files` WRITE;
/*!40000 ALTER TABLE `target_files` DISABLE KEYS */;
INSERT INTO `target_files` VALUES (1,1,1,1,2,11,1000,'TAX_INVOICE','Consolidation Report of all GST and Salaries',NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241'),(2,1,1,1,2,11,1000,'PURE_AGENT','Pure Agent Report',NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241'),(3,1,1,1,2,11,1000,'COMMERCIAL_CN_AND_DN','Commercial CN and DN Report',NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241'),(4,1,1,1,2,11,1000,'DEBIT_NOTE','Debit Note',NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241'),(5,1,1,1,2,11,1000,'CREDIT_NOTE','Credit Note',NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241'),(6,1,1,1,2,11,1000,'BILL_OF_SUPPLY','Bill of Supply Report',NULL,1,1,'2021-06-08 01:58:39.804241',1,'2021-06-08 01:58:39.804241'),(7,1,1,1,2,11,1000,'sdsdsd','sdsdsdsdsd',NULL,0,11,'2022-06-26 00:29:15.886385',11,'2022-06-26 00:29:15.886385'),(8,1,1,1,2,11,1000,'CS','asasa',NULL,0,11,'2022-06-27 02:48:55.224786',11,'2022-06-27 02:48:55.225781'),(9,1,1,1,2,11,1000,'SDDFSD','asdas',NULL,0,11,'2022-06-27 02:50:58.913532',11,'2022-06-27 02:50:58.914532'),(10,1,1,1,2,11,1000,'CHECK_ONE','Checkinmgh',NULL,0,11,'2022-06-27 14:23:10.615979',11,'2022-06-27 14:23:10.615979');
/*!40000 ALTER TABLE `target_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'consolidation_files'
--

--
-- Dumping routines for database 'consolidation_files'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-05 12:43:53
