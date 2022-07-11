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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-04-07 10:37:35.525681'),(2,'auth','0001_initial','2022-04-07 10:37:36.041116'),(3,'admin','0001_initial','2022-04-07 10:37:37.106387'),(4,'admin','0002_logentry_remove_auto_add','2022-04-07 10:37:37.343394'),(5,'admin','0003_logentry_add_action_flag_choices','2022-04-07 10:37:37.352304'),(6,'contenttypes','0002_remove_content_type_name','2022-04-07 10:37:37.590756'),(7,'auth','0002_alter_permission_name_max_length','2022-04-07 10:37:37.720577'),(8,'auth','0003_alter_user_email_max_length','2022-04-07 10:37:37.749575'),(9,'auth','0004_alter_user_username_opts','2022-04-07 10:37:37.758824'),(10,'auth','0005_alter_user_last_login_null','2022-04-07 10:37:37.915849'),(11,'auth','0006_require_contenttypes_0002','2022-04-07 10:37:37.919475'),(12,'auth','0007_alter_validators_add_error_messages','2022-04-07 10:37:37.928689'),(13,'auth','0008_alter_user_username_max_length','2022-04-07 10:37:38.049721'),(14,'auth','0009_alter_user_last_name_max_length','2022-04-07 10:37:38.163036'),(15,'auth','0010_alter_group_name_max_length','2022-04-07 10:37:38.188144'),(16,'auth','0011_update_proxy_permissions','2022-04-07 10:37:38.203726'),(17,'auth','0012_alter_user_first_name_max_length','2022-04-07 10:37:38.314213'),(18,'process','0001_initial','2022-04-07 10:37:38.762710'),(19,'sessions','0001_initial','2022-04-07 10:37:39.241789'),(20,'authtoken','0001_initial','2022-04-07 10:38:10.569280'),(21,'authtoken','0002_auto_20160226_1747','2022-04-07 10:38:11.943255'),(22,'authtoken','0003_tokenproxy','2022-04-07 10:38:11.948984'),(23,'process','0002_auto_20220407_2137','2022-04-07 16:08:11.401820'),(24,'process','0003_auto_20220408_1757','2022-04-08 12:27:28.916056'),(25,'process','0004_auto_20220505_0833','2022-05-05 03:04:19.364209'),(26,'process','0005_fileuploads','2022-05-08 13:09:19.435683'),(27,'process','0006_auto_20220508_2043','2022-05-08 15:13:28.865736'),(28,'process','0007_auto_20220508_2129','2022-05-08 15:59:23.242261'),(29,'process','0008_auto_20220609_1314','2022-06-09 07:45:27.429857'),(30,'process','0009_sources_key_words','2022-06-09 10:24:05.970132'),(31,'process','0010_auto_20220625_2244','2022-06-25 17:14:29.388794'),(32,'process','0011_fileuploads_gst_month','2022-07-06 06:50:43.343264'),(33,'process','0012_targetfiledefinitions_storage_reference_column','2022-07-09 07:24:03.182299'),(34,'process','0013_targetfiledefinitions_field_type','2022-07-09 07:36:53.496077');
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
  `gst_month` varchar(32) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_uploads`
--

LOCK TABLES `file_uploads` WRITE;
/*!40000 ALTER TABLE `file_uploads` DISABLE KEYS */;
INSERT INTO `file_uploads` VALUES (1,1,1,1,'INVOICE_OPP_REPORT_PM','FILE','UPLOAD','2Invoice_OPP_report___Month_wise___Mar_21_PM_2022_07_08_18_48_47_510274.xlsb',35812,'VALIDATED','File Validated Successfully!!!',553,0,'G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_OPP_REPORT_PM/input/2Invoice_OPP_report___Month_wise___Mar_21_PM_2022_07_08_18_48_47_510274.xlsb',1,11,'2022-07-08 18:48:49.683479',11,'2022-07-08 18:48:49.683479',10,2,11,1000,'2022-06');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_settings`
--

LOCK TABLES `module_settings` WRITE;
/*!40000 ALTER TABLE `module_settings` DISABLE KEYS */;
INSERT INTO `module_settings` VALUES (1,1,1,1,2,11,1000,'source_input_path','{\"sourceInputPath\": \"G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/{source_name}\"}','Input Path for Source',1,1,'2021-03-08 22:20:57.375798',1,'2021-03-08 22:20:57.375798'),(2,1,1,1,2,11,1000,'source_import_path','{\"sourceImportPath\": \"G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/{source_name}\"}','Import Path for Source',1,1,'2021-03-08 22:20:57.375798',1,'2021-03-08 22:20:57.375798');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_definitions`
--

LOCK TABLES `source_definitions` WRITE;
/*!40000 ALTER TABLE `source_definitions` DISABLE KEYS */;
INSERT INTO `source_definitions` VALUES (1,1,1,1,2,11,1000,'CS',1,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,0,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',1),(2,1,1,1,2,11,1000,'Invoice Number',2,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,0,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',1),(3,1,1,1,2,11,1000,'Invoice Date',3,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,0,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',1),(4,1,1,1,2,11,1000,'CS1',1,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',2),(5,1,1,1,2,11,1000,'Invoice Number1',2,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',2),(6,1,1,1,2,11,1000,'Invoice Date1',3,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',2),(7,1,1,1,2,11,1000,'CS2',1,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',3),(8,1,1,1,2,11,1000,'Invoice Number2',2,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',3),(9,1,1,1,2,11,1000,'Invoice Date2',3,'char',NULL,NULL,NULL,'1','500',NULL,NULL,1,1,0,0,1,1,'2022-05-07 12:09:01.782968',1,'2022-05-07 12:09:01.782968',3),(10,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:45:27.586078',11,'2022-06-30 16:45:27.586078',1),(11,1,1,1,2,11,1000,'Account No',2,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-06-30 16:45:27.603077',11,'2022-06-30 16:45:27.603077',1),(12,1,1,1,2,11,1000,'Name',3,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-06-30 16:45:27.612084',11,'2022-06-30 16:45:27.612084',1),(13,1,1,1,2,11,1000,'SCI',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:50:29.685829',11,'2022-06-30 16:50:29.685829',1),(14,1,1,1,2,11,1000,'Invoice Details client',2,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-06-30 16:50:29.698832',11,'2022-06-30 16:50:29.698832',1),(15,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:53:02.375773',11,'2022-06-30 16:53:02.375773',1),(16,1,1,1,2,11,1000,'Position',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-06-30 16:55:32.145103',11,'2022-06-30 16:55:32.145103',1),(17,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,1,11,'2022-06-30 16:57:16.620132',11,'2022-06-30 16:57:16.620132',1),(18,1,1,1,2,11,1000,'Account no',2,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.627153',11,'2022-06-30 16:57:16.627153',1),(19,1,1,1,2,11,1000,'Client id',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.637116',11,'2022-06-30 16:57:16.637116',1),(20,1,1,1,2,11,1000,'Service',4,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.641117',11,'2022-06-30 16:57:16.641117',1),(21,1,1,1,2,11,1000,'Date',5,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-06-30 16:57:16.649127',11,'2022-06-30 16:57:16.649127',1),(22,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-07-07 14:57:07.053806',11,'2022-07-07 14:57:07.053806',10),(23,1,1,1,2,11,1000,'CLIENT NAME',2,'char','No',NULL,NULL,'1','250',NULL,NULL,1,1,0,0,0,11,'2022-07-07 14:57:07.098896',11,'2022-07-07 14:57:07.098896',10),(24,1,1,1,2,11,1000,'GM ID/GST CODE',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 14:57:07.119148',11,'2022-07-07 14:57:07.119148',10),(25,1,1,1,2,11,1000,'INVOICE DATE',4,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 14:57:07.132894',11,'2022-07-07 14:57:07.132894',10),(26,1,1,1,2,11,1000,'INVOICE#',5,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 14:57:07.139884',11,'2022-07-07 14:57:07.139884',10),(27,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-07-07 20:05:30.216680',11,'2022-07-07 20:05:30.217724',10),(28,1,1,1,2,11,1000,'CLIENT NAME',2,'char','No',NULL,NULL,'1','250',NULL,NULL,1,1,0,0,0,11,'2022-07-07 20:05:30.234685',11,'2022-07-07 20:05:30.234685',10),(29,1,1,1,2,11,1000,'GM ID/GST CODE',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 20:05:30.242674',11,'2022-07-07 20:05:30.242674',10),(30,1,1,1,2,11,1000,'INVOICE DATE',4,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 20:05:30.246688',11,'2022-07-07 20:05:30.246688',10),(31,1,1,1,2,11,1000,'INVOICE#',5,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 20:05:30.253677',11,'2022-07-07 20:05:30.253677',10),(32,1,1,1,2,11,1000,'ALCS ID',6,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 20:05:30.259674',11,'2022-07-07 20:05:30.259674',10),(33,1,1,1,2,11,1000,'CTC',7,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-07 20:05:30.265709',11,'2022-07-07 20:05:30.265709',10),(34,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-07-08 13:43:02.054092',11,'2022-07-08 13:43:02.054092',10),(35,1,1,1,2,11,1000,'CLIENT NAME',2,'char','No',NULL,NULL,'1','250',NULL,NULL,1,1,0,0,0,11,'2022-07-08 13:43:02.070384',11,'2022-07-08 13:43:02.070384',10),(36,1,1,1,2,11,1000,'GM ID/GST CODE',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 13:43:02.075633',11,'2022-07-08 13:43:02.075633',10),(37,1,1,1,2,11,1000,'INVOICE DATE',4,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 13:43:02.081314',11,'2022-07-08 13:43:02.081314',10),(38,1,1,1,2,11,1000,'INVOICE#',5,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 13:43:02.090069',11,'2022-07-08 13:43:02.090069',10),(39,1,1,1,2,11,1000,'ALCS ID',7,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 13:43:02.096063',11,'2022-07-08 13:43:02.096063',10),(40,1,1,1,2,11,1000,'CTC',6,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 13:43:02.103570',11,'2022-07-08 13:43:02.103570',10),(41,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-07-08 16:12:54.053004',11,'2022-07-08 16:12:54.053004',10),(42,1,1,1,2,11,1000,'CLIENT NAME',2,'char','No',NULL,NULL,'1','250',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:12:54.066651',11,'2022-07-08 16:12:54.067006',10),(43,1,1,1,2,11,1000,'GM ID/GST CODE',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:12:54.073038',11,'2022-07-08 16:12:54.073038',10),(44,1,1,1,2,11,1000,'INVOICE DATE',4,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:12:54.083187',11,'2022-07-08 16:12:54.083187',10),(45,1,1,1,2,11,1000,'INVOICE#',5,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:12:54.089010',11,'2022-07-08 16:12:54.089010',10),(46,1,1,1,2,11,1000,'ALCS ID',6,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:12:54.099170',11,'2022-07-08 16:12:54.099170',10),(47,1,1,1,2,11,1000,'CTC',7,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:12:54.103518',11,'2022-07-08 16:12:54.103518',10),(48,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-07-08 16:17:48.577881',11,'2022-07-08 16:17:48.577881',10),(49,1,1,1,2,11,1000,'CLIENT NAME',2,'char','No',NULL,NULL,'1','250',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:17:48.583883',11,'2022-07-08 16:17:48.583883',10),(50,1,1,1,2,11,1000,'GM ID/GST CODE',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:17:48.588887',11,'2022-07-08 16:17:48.588887',10),(51,1,1,1,2,11,1000,'INVOICE DATE',4,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:17:48.593875',11,'2022-07-08 16:17:48.593875',10),(52,1,1,1,2,11,1000,'INVOICE#',5,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:17:48.599880',11,'2022-07-08 16:17:48.599880',10),(53,1,1,1,2,11,1000,'CTC',6,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:17:48.608599',11,'2022-07-08 16:17:48.608599',10),(54,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,0,11,'2022-07-08 16:34:01.988191',11,'2022-07-08 16:34:01.988191',10),(55,1,1,1,2,11,1000,'CLIENT NAME',2,'char','No',NULL,NULL,'1','250',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:34:01.994193',11,'2022-07-08 16:34:01.994193',10),(56,1,1,1,2,11,1000,'GM ID/GST CODE',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:34:02.002830',11,'2022-07-08 16:34:02.003194',10),(57,1,1,1,2,11,1000,'INVOICE DATE',4,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:34:02.007494',11,'2022-07-08 16:34:02.007494',10),(58,1,1,1,2,11,1000,'INVOICE#',5,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:34:02.014219',11,'2022-07-08 16:34:02.014219',10),(59,1,1,1,2,11,1000,'CTC',7,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:34:02.021190',11,'2022-07-08 16:34:02.021190',10),(60,1,1,1,2,11,1000,'ALCS ID',6,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,0,11,'2022-07-08 16:34:02.032196',11,'2022-07-08 16:34:02.032196',10),(61,1,1,1,2,11,1000,'CS',1,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,1,0,1,11,'2022-07-08 16:41:43.072707',11,'2022-07-08 16:41:43.072707',10),(62,1,1,1,2,11,1000,'CLIENT NAME',2,'char','No',NULL,NULL,'1','250',NULL,NULL,1,1,0,0,1,11,'2022-07-08 16:41:43.080690',11,'2022-07-08 16:41:43.080690',10),(63,1,1,1,2,11,1000,'GM ID/GST CODE',3,'integer','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-07-08 16:41:43.086157',11,'2022-07-08 16:41:43.086157',10),(64,1,1,1,2,11,1000,'INVOICE DATE',4,'date','dd-mm-yy',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-07-08 16:41:43.094695',11,'2022-07-08 16:41:43.094752',10),(65,1,1,1,2,11,1000,'INVOICE#',5,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-07-08 16:41:43.097689',11,'2022-07-08 16:41:43.097689',10),(66,1,1,1,2,11,1000,'CTC',6,'decimal','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-07-08 16:41:43.103701',11,'2022-07-08 16:41:43.103701',10),(67,1,1,1,2,11,1000,'ALCS ID',7,'char','No',NULL,NULL,'1','100',NULL,NULL,1,1,0,0,1,11,'2022-07-08 16:41:43.111407',11,'2022-07-08 16:41:43.111407',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` VALUES (1,1,1,1,2,11,1000,'1df26f9d-c9f5-4f5f-ad19-7eeed6ce3a62','INVOICE_SALARY_REPORT_PM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"key_words\": [], \"sheet_name\": \"\", \"target_ids\": [\"1\"], \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 2, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_SALARY_REPORT_PM/input',NULL,NULL,NULL,1,NULL,1,11,'2022-04-07 16:33:35.037184',11,'2022-06-06 18:01:39.644022',NULL,'{\"keywords\": [\"invoice\", \"salary\", \"pm\"]}'),(2,1,1,1,2,11,1000,'81954d7d-c364-478e-8843-bbc47dd6c57a','INVOICE_SALARY_REPORT_CM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 2, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_SALARY_REPORT_CM/input',NULL,NULL,NULL,2,NULL,1,11,'2022-04-07 16:36:02.295846',11,'2022-06-06 18:01:51.984679',NULL,'{\"keywords\": [\"invoice\", \"salary\", \"cm\"]}'),(3,1,1,1,2,11,1000,'adc74b3e-fa8a-4ce2-8b53-c06ba60ed50e','INVOICE_OPP_REPORT_CM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 2, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_OPP_REPORT_CM/input',NULL,NULL,NULL,3,NULL,1,11,'2022-04-08 07:05:03.512940',11,'2022-06-06 18:01:48.903364',NULL,'{\"keywords\": [\"invoice\", \"opp\", \"cm\"]}'),(7,1,1,1,2,11,1000,'c9039987-e93b-4122-8034-c45b0f00ec77','INVOICE_REIMBURSEMENT_CM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 1, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_REIMBURSEMENT_CM/input',NULL,NULL,NULL,1,NULL,1,11,'2022-07-01 12:02:25.058058',11,'2022-07-01 12:02:25.058058',NULL,'{\"keywords\": [\"invoice\", \"reimb\", \"cm\"]}'),(8,1,1,1,2,11,1000,'542dc8fd-d25a-4d70-b9c1-13fbd5364540','INVOICE_REIMBURSEMENT_PM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 1, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_REIMBURSEMENT_PM/input',NULL,NULL,NULL,1,NULL,1,11,'2022-07-01 13:27:45.151962',11,'2022-07-01 13:27:45.151962',NULL,'{\"keywords\": [\"invoice\", \"reimb\", \"pm\"]}'),(10,1,1,1,2,11,1000,'10fc6a72-0929-4c2f-9851-6bd475be1472','INVOICE_OPP_REPORT_PM','{\"table\": \"\", \"schema\": \"\", \"db_host\": \"\", \"db_port\": \"\", \"database\": \"\", \"file_type\": \"excel\", \"sheet_name\": \"\", \"target_ids\": [\"2\", \"1\"], \"db_password\": \"\", \"source_type\": \"file\", \"db_user_name\": \"\", \"file_password\": \"\", \"psql_database\": \"\", \"sheet_password\": \"\", \"text_separator\": \"\", \"other_separator\": \"\", \"column_start_row\": 2, \"sheet_name_required\": \"no\", \"file_password_required\": \"no\", \"sheet_password_required\": \"\"}','G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_OPP_REPORT_PM/input',NULL,NULL,'G:/AdventsProduct/V1.1.0/AFS/ConsolFiles/Data/INVOICE_OPP_REPORT_PM/import',0,NULL,1,11,'2022-07-06 15:49:58.245159',11,'2022-07-06 15:49:58.245159',NULL,'{\"keywords\": [\"invoice\", \"opp\", \"pm\"]}');
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stg_report_storage`
--

DROP TABLE IF EXISTS `stg_report_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg_report_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenants_id` tinytext,
  `groups_id` tinytext,
  `entities` tinytext,
  `m_processing_layer_id` tinytext,
  `m_processing_sub_layer_id` tinytext,
  `processing_layer_id` tinytext,
  `file_id` tinytext,
  `m_sources_id` tinytext,
  `m_source_name` text,
  `target_id` tinytext,
  `target_name` text,
  `gst_remittance_month` text,
  `reference_text_1` text,
  `reference_text_2` text,
  `reference_text_3` text,
  `reference_text_4` text,
  `reference_text_5` text,
  `reference_text_6` text,
  `reference_text_7` text,
  `reference_text_8` text,
  `reference_text_9` text,
  `reference_text_10` text,
  `reference_text_11` text,
  `reference_text_12` text,
  `reference_text_13` text,
  `reference_text_14` text,
  `reference_text_15` text,
  `reference_text_16` text,
  `reference_text_17` text,
  `reference_text_18` text,
  `reference_text_19` text,
  `reference_text_20` text,
  `reference_text_21` text,
  `reference_text_22` text,
  `reference_text_23` text,
  `reference_text_24` text,
  `reference_text_25` text,
  `reference_text_26` text,
  `reference_text_27` text,
  `reference_text_28` text,
  `reference_text_29` text,
  `reference_text_30` text,
  `reference_text_31` text,
  `reference_text_32` text,
  `reference_text_33` text,
  `reference_text_34` text,
  `reference_text_35` text,
  `reference_text_36` text,
  `reference_text_37` text,
  `reference_text_38` text,
  `reference_text_39` text,
  `reference_text_40` text,
  `reference_text_41` text,
  `reference_text_42` text,
  `reference_text_43` text,
  `reference_text_44` text,
  `reference_text_45` text,
  `reference_text_46` text,
  `reference_text_47` text,
  `reference_text_48` text,
  `reference_text_49` text,
  `reference_text_50` text,
  `reference_text_51` text,
  `reference_text_52` text,
  `reference_text_53` text,
  `reference_text_54` text,
  `reference_text_55` text,
  `reference_text_56` text,
  `reference_text_57` text,
  `reference_text_58` text,
  `reference_text_59` text,
  `reference_text_60` text,
  `reference_text_61` text,
  `reference_text_62` text,
  `reference_text_63` text,
  `reference_text_64` text,
  `reference_text_65` text,
  `reference_text_66` text,
  `reference_text_67` text,
  `reference_text_68` text,
  `reference_text_69` text,
  `reference_text_70` text,
  `reference_text_71` text,
  `reference_text_72` text,
  `reference_text_73` text,
  `reference_text_74` text,
  `reference_text_75` text,
  `reference_text_76` text,
  `reference_text_77` text,
  `reference_text_78` text,
  `reference_text_79` text,
  `reference_text_80` text,
  `reference_text_81` text,
  `reference_text_82` text,
  `reference_text_83` text,
  `reference_text_84` text,
  `reference_text_85` text,
  `reference_text_86` text,
  `reference_text_87` text,
  `reference_text_88` text,
  `reference_text_89` text,
  `reference_text_90` text,
  `reference_text_91` text,
  `reference_text_92` text,
  `reference_text_93` text,
  `reference_text_94` text,
  `reference_text_95` text,
  `reference_text_96` text,
  `reference_text_97` text,
  `reference_text_98` text,
  `reference_text_99` text,
  `reference_text_100` text,
  `reference_int_1` tinytext,
  `reference_int_2` tinytext,
  `reference_int_3` tinytext,
  `reference_int_4` tinytext,
  `reference_int_5` tinytext,
  `reference_int_6` tinytext,
  `reference_int_7` tinytext,
  `reference_int_8` tinytext,
  `reference_int_9` tinytext,
  `reference_int_10` tinytext,
  `reference_int_11` tinytext,
  `reference_int_12` tinytext,
  `reference_int_13` tinytext,
  `reference_int_14` tinytext,
  `reference_int_15` tinytext,
  `reference_int_16` tinytext,
  `reference_int_17` tinytext,
  `reference_int_18` tinytext,
  `reference_int_19` tinytext,
  `reference_int_20` tinytext,
  `reference_int_21` tinytext,
  `reference_int_22` tinytext,
  `reference_int_23` tinytext,
  `reference_int_24` tinytext,
  `reference_int_25` tinytext,
  `reference_int_26` tinytext,
  `reference_int_27` tinytext,
  `reference_int_28` tinytext,
  `reference_int_29` tinytext,
  `reference_int_30` tinytext,
  `reference_int_31` tinytext,
  `reference_int_32` tinytext,
  `reference_int_33` tinytext,
  `reference_int_34` tinytext,
  `reference_int_35` tinytext,
  `reference_int_36` tinytext,
  `reference_int_37` tinytext,
  `reference_int_38` tinytext,
  `reference_int_39` tinytext,
  `reference_int_40` tinytext,
  `reference_int_41` tinytext,
  `reference_int_42` tinytext,
  `reference_int_43` tinytext,
  `reference_int_44` tinytext,
  `reference_int_45` tinytext,
  `reference_int_46` tinytext,
  `reference_int_47` tinytext,
  `reference_int_48` tinytext,
  `reference_int_49` tinytext,
  `reference_int_50` tinytext,
  `reference_int_51` tinytext,
  `reference_int_52` tinytext,
  `reference_int_53` tinytext,
  `reference_int_54` tinytext,
  `reference_int_55` tinytext,
  `reference_int_56` tinytext,
  `reference_int_57` tinytext,
  `reference_int_58` tinytext,
  `reference_int_59` tinytext,
  `reference_int_60` tinytext,
  `reference_int_61` tinytext,
  `reference_int_62` tinytext,
  `reference_int_63` tinytext,
  `reference_int_64` tinytext,
  `reference_int_65` tinytext,
  `reference_int_66` tinytext,
  `reference_int_67` tinytext,
  `reference_int_68` tinytext,
  `reference_int_69` tinytext,
  `reference_int_70` tinytext,
  `reference_dec_1` tinytext,
  `reference_dec_2` tinytext,
  `reference_dec_3` tinytext,
  `reference_dec_4` tinytext,
  `reference_dec_5` tinytext,
  `reference_dec_6` tinytext,
  `reference_dec_7` tinytext,
  `reference_dec_8` tinytext,
  `reference_dec_9` tinytext,
  `reference_dec_10` tinytext,
  `reference_dec_11` tinytext,
  `reference_dec_12` tinytext,
  `reference_dec_13` tinytext,
  `reference_dec_14` tinytext,
  `reference_dec_15` tinytext,
  `reference_dec_16` tinytext,
  `reference_dec_17` tinytext,
  `reference_dec_18` tinytext,
  `reference_dec_19` tinytext,
  `reference_dec_20` tinytext,
  `reference_dec_21` tinytext,
  `reference_dec_22` tinytext,
  `reference_dec_23` tinytext,
  `reference_dec_24` tinytext,
  `reference_dec_25` tinytext,
  `reference_dec_26` tinytext,
  `reference_dec_27` tinytext,
  `reference_dec_28` tinytext,
  `reference_dec_29` tinytext,
  `reference_dec_30` tinytext,
  `reference_dec_31` tinytext,
  `reference_dec_32` tinytext,
  `reference_dec_33` tinytext,
  `reference_dec_34` tinytext,
  `reference_dec_35` tinytext,
  `reference_dec_36` tinytext,
  `reference_dec_37` tinytext,
  `reference_dec_38` tinytext,
  `reference_dec_39` tinytext,
  `reference_dec_40` tinytext,
  `reference_dec_41` tinytext,
  `reference_dec_42` tinytext,
  `reference_dec_43` tinytext,
  `reference_dec_44` tinytext,
  `reference_dec_45` tinytext,
  `reference_dec_46` tinytext,
  `reference_dec_47` tinytext,
  `reference_dec_48` tinytext,
  `reference_dec_49` tinytext,
  `reference_dec_50` tinytext,
  `reference_dec_51` tinytext,
  `reference_dec_52` tinytext,
  `reference_dec_53` tinytext,
  `reference_dec_54` tinytext,
  `reference_dec_55` tinytext,
  `reference_dec_56` tinytext,
  `reference_dec_57` tinytext,
  `reference_dec_58` tinytext,
  `reference_dec_59` tinytext,
  `reference_dec_60` tinytext,
  `reference_dec_61` tinytext,
  `reference_dec_62` tinytext,
  `reference_dec_63` tinytext,
  `reference_dec_64` tinytext,
  `reference_dec_65` tinytext,
  `reference_dec_66` tinytext,
  `reference_dec_67` tinytext,
  `reference_dec_68` tinytext,
  `reference_dec_69` tinytext,
  `reference_dec_70` tinytext,
  `reference_date_1` tinytext,
  `reference_date_2` tinytext,
  `reference_date_3` tinytext,
  `reference_date_4` tinytext,
  `reference_date_5` tinytext,
  `reference_date_6` tinytext,
  `reference_date_7` tinytext,
  `reference_date_8` tinytext,
  `reference_date_9` tinytext,
  `reference_date_10` tinytext,
  `reference_date_11` tinytext,
  `reference_date_12` tinytext,
  `reference_date_13` tinytext,
  `reference_date_14` tinytext,
  `reference_date_15` tinytext,
  `reference_date_16` tinytext,
  `reference_date_17` tinytext,
  `reference_date_18` tinytext,
  `reference_date_19` tinytext,
  `reference_date_20` tinytext,
  `reference_date_21` tinytext,
  `reference_date_22` tinytext,
  `reference_date_23` tinytext,
  `reference_date_24` tinytext,
  `reference_date_25` tinytext,
  `reference_date_26` tinytext,
  `reference_date_27` tinytext,
  `reference_date_28` tinytext,
  `reference_date_29` tinytext,
  `reference_date_30` tinytext,
  `is_active` tinytext,
  `created_by` tinytext,
  `created_date` tinytext,
  `modified_by` tinytext,
  `modified_date` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stg_report_storage`
--

LOCK TABLES `stg_report_storage` WRITE;
/*!40000 ALTER TABLE `stg_report_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `stg_report_storage` ENABLE KEYS */;
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
  `storage_reference_column` varchar(32) DEFAULT NULL,
  `field_type` varchar(32) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_file_definitions`
--

LOCK TABLES `target_file_definitions` WRITE;
/*!40000 ALTER TABLE `target_file_definitions` DISABLE KEYS */;
INSERT INTO `target_file_definitions` VALUES (1,1,1,1,2,11,1000,'CS',1,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"61\"}]',1,11,'2022-07-09 14:17:01.798842',11,'2022-07-09 14:17:01.798842',1,'reference_text_1','char'),(2,1,1,1,2,11,1000,'CLIENT NAME',2,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"62\"}]',1,11,'2022-07-09 14:17:01.802828',11,'2022-07-09 14:17:01.802828',1,'reference_text_2','char'),(3,1,1,1,2,11,1000,'GM ID/GST CODE',3,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"63\"}]',1,11,'2022-07-09 14:17:01.808284',11,'2022-07-09 14:17:01.808284',1,'reference_int_1','integer'),(4,1,1,1,2,11,1000,'INVOICE DATE',4,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"64\"}]',1,11,'2022-07-09 14:17:01.816528',11,'2022-07-09 14:17:01.816528',1,'reference_date_1','date'),(5,1,1,1,2,11,1000,'INVOICE NUMBER',5,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"65\"}]',1,11,'2022-07-09 14:17:01.821811',11,'2022-07-09 14:17:01.821811',1,'reference_text_3','char'),(6,1,1,1,2,11,1000,'CTC',6,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"66\"}]',1,11,'2022-07-09 14:17:01.827818',11,'2022-07-09 14:17:01.827818',1,'reference_dec_1','decimal'),(7,1,1,1,2,11,1000,'ALCS ID',7,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"67\"}]',1,11,'2022-07-09 14:17:01.830805',11,'2022-07-09 14:17:01.830805',1,'reference_text_4','char'),(8,1,1,1,2,11,1000,'GST NO',8,NULL,1,11,'2022-07-09 14:17:01.834807',11,'2022-07-09 14:17:01.834807',1,'reference_text_5','char'),(9,1,1,1,2,11,1000,'IRN NO',9,NULL,1,11,'2022-07-09 14:17:01.840822',11,'2022-07-09 14:17:01.840822',1,'reference_text_6','char'),(10,1,1,1,2,11,1000,'CS',1,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"61\"}]',1,11,'2022-07-09 14:32:45.741694',11,'2022-07-09 14:32:45.741694',2,'reference_text_1','char'),(11,1,1,1,2,11,1000,'ALCS ID',2,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"67\"}]',1,11,'2022-07-09 14:32:45.747260',11,'2022-07-09 14:32:45.747260',2,'reference_text_2','char'),(12,1,1,1,2,11,1000,'CTC',3,'[{\"sourceId\": \"10\", \"sourceDefinitionId\": \"66\"}]',1,11,'2022-07-09 14:32:45.754194',11,'2022-07-09 14:32:45.754194',2,'reference_dec_1','decimal');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_files`
--

LOCK TABLES `target_files` WRITE;
/*!40000 ALTER TABLE `target_files` DISABLE KEYS */;
INSERT INTO `target_files` VALUES (1,1,1,1,2,11,1000,'TAX_INVOICE_REPORT','Report for GST',NULL,1,11,'2022-07-08 18:51:37.576187',11,'2022-07-08 18:51:37.576187'),(2,1,1,1,2,11,1000,'CREDIT_NOTE','Credit note invoice report',NULL,1,11,'2022-07-08 19:12:47.307797',11,'2022-07-08 19:12:47.307797');
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

-- Dump completed on 2022-07-11 11:45:26
