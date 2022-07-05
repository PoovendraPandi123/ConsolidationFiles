-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: business_modules_one
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add departments',6,'add_departments'),(22,'Can change departments',6,'change_departments'),(23,'Can delete departments',6,'delete_departments'),(24,'Can view departments',6,'view_departments'),(25,'Can add entities',7,'add_entities'),(26,'Can change entities',7,'change_entities'),(27,'Can delete entities',7,'delete_entities'),(28,'Can view entities',7,'view_entities'),(29,'Can add groups',8,'add_groups'),(30,'Can change groups',8,'change_groups'),(31,'Can delete groups',8,'delete_groups'),(32,'Can view groups',8,'view_groups'),(33,'Can add main models',9,'add_mainmodels'),(34,'Can change main models',9,'change_mainmodels'),(35,'Can delete main models',9,'delete_mainmodels'),(36,'Can view main models',9,'view_mainmodels'),(37,'Can add main modules',10,'add_mainmodules'),(38,'Can change main modules',10,'change_mainmodules'),(39,'Can delete main modules',10,'delete_mainmodules'),(40,'Can view main modules',10,'view_mainmodules'),(41,'Can add roles',11,'add_roles'),(42,'Can change roles',11,'change_roles'),(43,'Can delete roles',11,'delete_roles'),(44,'Can view roles',11,'view_roles'),(45,'Can add sub models',12,'add_submodels'),(46,'Can change sub models',12,'change_submodels'),(47,'Can delete sub models',12,'delete_submodels'),(48,'Can view sub models',12,'view_submodels'),(49,'Can add sub modules',13,'add_submodules'),(50,'Can change sub modules',13,'change_submodules'),(51,'Can delete sub modules',13,'delete_submodules'),(52,'Can view sub modules',13,'view_submodules'),(53,'Can add tenants',14,'add_tenants'),(54,'Can change tenants',14,'change_tenants'),(55,'Can delete tenants',14,'delete_tenants'),(56,'Can view tenants',14,'view_tenants'),(57,'Can add users',15,'add_users'),(58,'Can change users',15,'change_users'),(59,'Can delete users',15,'delete_users'),(60,'Can view users',15,'view_users'),(61,'Can add user roles',16,'add_userroles'),(62,'Can change user roles',16,'change_userroles'),(63,'Can delete user roles',16,'delete_userroles'),(64,'Can view user roles',16,'view_userroles'),(65,'Can add user login log',17,'add_userloginlog'),(66,'Can change user login log',17,'change_userloginlog'),(67,'Can delete user login log',17,'delete_userloginlog'),(68,'Can view user login log',17,'view_userloginlog'),(69,'Can add types',18,'add_types'),(70,'Can change types',18,'change_types'),(71,'Can delete types',18,'delete_types'),(72,'Can view types',18,'view_types'),(73,'Can add master user filters',19,'add_masteruserfilters'),(74,'Can change master user filters',19,'change_masteruserfilters'),(75,'Can delete master user filters',19,'delete_masteruserfilters'),(76,'Can view master user filters',19,'view_masteruserfilters'),(77,'Can add module connections',20,'add_moduleconnections'),(78,'Can change module connections',20,'change_moduleconnections'),(79,'Can delete module connections',20,'delete_moduleconnections'),(80,'Can view module connections',20,'view_moduleconnections'),(81,'Can add user filter access',21,'add_userfilteraccess'),(82,'Can change user filter access',21,'change_userfilteraccess'),(83,'Can delete user filter access',21,'delete_userfilteraccess'),(84,'Can view user filter access',21,'view_userfilteraccess'),(85,'Can add type connections',22,'add_typeconnections'),(86,'Can change type connections',22,'change_typeconnections'),(87,'Can delete type connections',22,'delete_typeconnections'),(88,'Can view type connections',22,'view_typeconnections');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(64) NOT NULL,
  `dept_name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `departments_entity_id_8bc2c5da_fk_entities_id` (`entity_id`),
  CONSTRAINT `departments_entity_id_8bc2c5da_fk_entities_id` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'8388bcfe-3874-40d7-87a1-8a9a28f0850f@tml','ADMIN',1,1,'2021-03-08 00:00:00.000000',1),(2,'e887c783-5254-4e55-92e5-de4240b1bae5@tml','ILS',1,1,'2021-03-08 00:00:00.000000',1),(3,'f843f207-0da6-4113-a7bd-389060b769c0@tml','IT INFRA',1,1,'2021-03-08 00:00:00.000000',1),(4,'27e27c3d-cfa4-4bc1-b167-0c19dd0a3085@tml','SBI',1,1,'2021-03-08 00:00:00.000000',1),(5,'bb45d7bc-8c0e-4400-ade0-0c1f8fac6dae@tml','STAFFING',1,1,'2021-03-08 00:00:00.000000',1),(6,'c887c783-5254-4e55-92e5-de4240b1bae5@tml','MMH',1,1,'2021-03-08 00:00:00.000000',1),(7,'d843f207-0da6-4113-a7bd-389060b769c0@tml','CPO',1,1,'2021-03-08 00:00:00.000000',1),(8,'37e27c3d-cfa4-4bc1-b167-0c19dd0a3085@tml','HIRING',1,1,'2021-03-08 00:00:00.000000',1),(9,'eb45d7bc-8c0e-4400-ade0-0c1f8fac6dae@tml','STAFFING2',1,1,'2021-03-08 00:00:00.000000',1),(10,'57e27c3d-cfa4-4bc1-b167-0c19dd0a3085@tml','ROPS',1,1,'2021-03-08 00:00:00.000000',1),(11,'ub45d7bc-8c0e-4400-ade0-0c1f8fac6dae@tml','HR',1,1,'2021-03-08 00:00:00.000000',1),(12,'619b3e9c-7102-4a61-8629-2ca6971a3cc0@tml','OPEX',1,1,'2021-03-08 00:00:00.000000',1),(13,'296d6966-aba7-4b23-a167-079a52d13520@tml','FINANCE',1,1,'2021-03-08 00:00:00.000000',1),(14,'16e722ee-c758-4983-9281-44900d5c71c9@wc','OPERATION',1,1,'2021-03-08 00:00:00.000000',1),(15,'da720aa6-2730-40e7-b9b7-e46bee7b9c1b@wc','AGENT',1,1,'2021-03-08 00:00:00.000000',1),(16,'88266ed9-00b5-4577-99a5-043b0bd6a693@wc','FINANCE',1,1,'2021-03-08 00:00:00.000000',4),(17,'daf0af13-b03f-4f2f-b7b6-e66168bbcfec@tml','GST',1,1,'2021-03-08 00:00:00.000000',1);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'ModuleDetails','departments'),(7,'ModuleDetails','entities'),(8,'ModuleDetails','groups'),(9,'ModuleDetails','mainmodels'),(10,'ModuleDetails','mainmodules'),(19,'ModuleDetails','masteruserfilters'),(20,'ModuleDetails','moduleconnections'),(11,'ModuleDetails','roles'),(12,'ModuleDetails','submodels'),(13,'ModuleDetails','submodules'),(14,'ModuleDetails','tenants'),(22,'ModuleDetails','typeconnections'),(18,'ModuleDetails','types'),(21,'ModuleDetails','userfilteraccess'),(17,'ModuleDetails','userloginlog'),(16,'ModuleDetails','userroles'),(15,'ModuleDetails','users'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-06-29 13:17:26.448879'),(2,'contenttypes','0002_remove_content_type_name','2021-06-29 13:17:27.386369'),(3,'auth','0001_initial','2021-06-29 13:17:29.714491'),(4,'auth','0002_alter_permission_name_max_length','2021-06-29 13:17:30.120746'),(5,'auth','0003_alter_user_email_max_length','2021-06-29 13:17:30.151994'),(6,'auth','0004_alter_user_username_opts','2021-06-29 13:17:30.183243'),(7,'auth','0005_alter_user_last_login_null','2021-06-29 13:17:30.214476'),(8,'auth','0006_require_contenttypes_0002','2021-06-29 13:17:30.245815'),(9,'auth','0007_alter_validators_add_error_messages','2021-06-29 13:17:30.277047'),(10,'auth','0008_alter_user_username_max_length','2021-06-29 13:17:30.308548'),(11,'auth','0009_alter_user_last_name_max_length','2021-06-29 13:17:30.370755'),(12,'auth','0010_alter_group_name_max_length','2021-06-29 13:17:30.511404'),(13,'auth','0011_update_proxy_permissions','2021-06-29 13:17:30.589478'),(14,'auth','0012_alter_user_first_name_max_length','2021-06-29 13:17:30.636364'),(15,'ModuleDetails','0001_initial','2021-06-29 13:17:46.776995'),(16,'admin','0001_initial','2021-06-29 13:17:47.542660'),(17,'admin','0002_logentry_remove_auto_add','2021-06-29 13:17:47.589484'),(18,'admin','0003_logentry_add_action_flag_choices','2021-06-29 13:17:47.620753'),(19,'sessions','0001_initial','2021-06-29 13:17:47.933253'),(20,'ModuleDetails','0002_auto_20210629_1341','2021-06-29 13:42:05.188406'),(21,'ModuleDetails','0003_rename_sub_model_userroles_main_model','2021-06-30 21:28:48.288243'),(22,'ModuleDetails','0004_rename_main_model_userroles_sub_model','2021-06-30 21:34:24.681394'),(23,'ModuleDetails','0005_alter_submodels_sub_model_name','2021-07-01 13:12:42.095006'),(24,'ModuleDetails','0006_auto_20210726_1805','2021-07-26 18:10:42.964146'),(25,'ModuleDetails','0007_auto_20210726_2225','2021-07-26 22:25:48.600552'),(26,'ModuleDetails','0008_auto_20210726_2231','2021-07-26 22:32:11.008555'),(27,'ModuleDetails','0009_types_departments','2021-07-27 11:41:11.042016'),(28,'ModuleDetails','0010_auto_20210727_2310','2021-07-27 23:10:34.918803'),(29,'ModuleDetails','0011_delete_typeconnections','2021-07-28 00:13:54.827987');
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
-- Table structure for table `entities`
--

DROP TABLE IF EXISTS `entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_code` varchar(64) NOT NULL,
  `entity_name` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_code` (`entity_code`),
  UNIQUE KEY `entity_name` (`entity_name`),
  KEY `entities_group_id_ef17c0dc_fk_groups_id` (`group_id`),
  CONSTRAINT `entities_group_id_ef17c0dc_fk_groups_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entities`
--

LOCK TABLES `entities` WRITE;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` VALUES (1,'e5c44ba4-50ba-4464-94c5-c958e176d97d@tml','TeamLease Services Limited',1,'2021-03-08 00:00:00.000000',1),(2,'192adc54-d617-4f24-90f1-147fd891a6cd@tml','TeamLease Skills Share University',1,'2021-03-08 00:00:00.000000',1),(3,'76649670-9b3d-4cd2-8ff5-7e109696e97f@wc','Wacker Chemie India Pvt Ltd',1,'2021-03-08 00:00:00.000000',2),(4,'0a4cc994-771f-498d-8952-9133a5fda2c5@tmx','Thermax Limited',1,'2022-04-11 00:00:00.000000',3);
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_code` varchar(64) NOT NULL,
  `group_name` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_code` (`group_code`),
  UNIQUE KEY `group_name` (`group_name`),
  KEY `groups_tenant_id_de8d326d_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `groups_tenant_id_de8d326d_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'09ba98a8-9177-427b-9a11-63197f36883b@tml','TeamLease Groups',1,'2021-03-08 00:00:00.000000',1),(2,'7c6dc5ed-4e00-4380-a2eb-78511eca1ca7@wc','Wacker Chemie',1,'2021-03-08 00:00:00.000000',2),(3,'c2352891-4467-4af3-95f6-a66b8280a7f6@tmx','Thermax Limited',1,'2022-04-11 00:00:00.000000',3);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_user_filters`
--

DROP TABLE IF EXISTS `m_user_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_user_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filters` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `m_user_filters_chk_1` CHECK ((`created_by` >= 0)),
  CONSTRAINT `m_user_filters_chk_2` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user_filters`
--

LOCK TABLES `m_user_filters` WRITE;
/*!40000 ALTER TABLE `m_user_filters` DISABLE KEYS */;
INSERT INTO `m_user_filters` VALUES (1,'Tenant',1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507'),(2,'Group',1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507'),(3,'Entity',1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507'),(4,'Department',1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507'),(5,'Type',1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507');
/*!40000 ALTER TABLE `m_user_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_models`
--

DROP TABLE IF EXISTS `main_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(128) DEFAULT NULL,
  `model_code` varchar(64) NOT NULL,
  `model_name` varchar(64) NOT NULL,
  `menu_icon` varchar(64) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_code` (`model_code`),
  UNIQUE KEY `model_name` (`model_name`),
  UNIQUE KEY `icon` (`icon`),
  CONSTRAINT `main_models_chk_1` CHECK ((`created_by` >= 0)),
  CONSTRAINT `main_models_chk_2` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_models`
--

LOCK TABLES `main_models` WRITE;
/*!40000 ALTER TABLE `main_models` DISABLE KEYS */;
INSERT INTO `main_models` VALUES (1,NULL,'TRA','Home','home',1,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(2,NULL,'OPR','Operations','build',1,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(3,NULL,'MAS','Masters','delete_sweep',1,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(4,NULL,'REP','Reports','report',1,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798');
/*!40000 ALTER TABLE `main_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_modules`
--

DROP TABLE IF EXISTS `main_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_code` varchar(64) NOT NULL,
  `module_name` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_code` (`module_code`),
  UNIQUE KEY `module_name` (`module_name`),
  CONSTRAINT `main_modules_chk_1` CHECK ((`created_by` >= 0)),
  CONSTRAINT `main_modules_chk_2` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_modules`
--

LOCK TABLES `main_modules` WRITE;
/*!40000 ALTER TABLE `main_modules` DISABLE KEYS */;
INSERT INTO `main_modules` VALUES (1,'1eceffb7-5f70-4ef4-b22a-84070e7aa6fe@tml','Purchase Order Process',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(2,'db172888-4b1f-4227-8f98-80f5ca218b65@tml','Consolidation Files',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(3,'5b6e9967-2875-4cd1-adfe-e3d09c2f4159@tml','Reconciliation',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(4,'3afa9c50-0639-46de-bbc8-0f6775814a94@tml','Task Management',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(5,'52f3b698-9199-42d2-972e-d0c2d6e81ec9@tml','Payment Process',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(6,'b50b7d9b-b545-451d-a580-e2deef737eca@tml','O2C Process',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(7,'773faee2-b52e-497f-a3b5-abd3e219fc52@tml','Financial Close Process',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(8,'7e9f6df7-2fed-474e-bf73-3148b6234c7e@tml','GST',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(9,'66a4e09a-f3a0-4997-86ca-0da3c3ac1b32@wc','WC Logistics',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798'),(10,'e9f84995-4ce6-437b-b438-c5fa840f6ffe@tml','Life Cycle Management',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798');
/*!40000 ALTER TABLE `main_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_connections`
--

DROP TABLE IF EXISTS `module_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_processing_layer_id` int(10) unsigned DEFAULT NULL,
  `m_processing_sub_layer_id` int(10) unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  `main_modules_id` int(11) NOT NULL,
  `sub_modules_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_connections_main_modules_id_38b7064a_fk_main_modules_id` (`main_modules_id`),
  KEY `module_connections_sub_modules_id_a25f5677_fk_sub_modules_id` (`sub_modules_id`),
  CONSTRAINT `module_connections_main_modules_id_38b7064a_fk_main_modules_id` FOREIGN KEY (`main_modules_id`) REFERENCES `main_modules` (`id`),
  CONSTRAINT `module_connections_sub_modules_id_a25f5677_fk_sub_modules_id` FOREIGN KEY (`sub_modules_id`) REFERENCES `sub_modules` (`id`),
  CONSTRAINT `module_connections_chk_1` CHECK ((`m_processing_layer_id` >= 0)),
  CONSTRAINT `module_connections_chk_2` CHECK ((`m_processing_sub_layer_id` >= 0)),
  CONSTRAINT `module_connections_chk_3` CHECK ((`created_by` >= 0)),
  CONSTRAINT `module_connections_chk_4` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_connections`
--

LOCK TABLES `module_connections` WRITE;
/*!40000 ALTER TABLE `module_connections` DISABLE KEYS */;
INSERT INTO `module_connections` VALUES (1,1,1,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,3),(2,1,5,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,10),(3,6,6,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,11),(4,1,7,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,12),(5,1,8,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,13),(6,1,2,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,5),(7,1,3,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,14),(8,1,9,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,15),(9,5,10,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',9,16),(10,2,11,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',2,2);
/*!40000 ALTER TABLE `module_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(64) NOT NULL,
  `role_name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'a6724436-a857-4886-a483-48807c5ca8c6@tml','Application Admin',1,1,'2021-03-08 00:00:00.000000'),(2,'a3c97c3f-73b3-4dc5-a821-ad1eff38cc5e@tml','Department User',1,1,'2021-03-08 00:00:00.000000'),(3,'b5e994fa-f3bb-42d0-a379-e5bb66d77b36@tml','Department Head',1,1,'2021-03-08 00:00:00.000000'),(4,'0ed51d2b-4171-453e-a7a9-2fb89ccbe611@tml','P2P User',1,1,'2021-03-08 00:00:00.000000'),(5,'7a402241-632f-4507-b5e8-d27b645d852b@tml','Finance Head',1,1,'2021-03-08 00:00:00.000000'),(6,'9b597ab1-50df-4633-8965-514e9472ea59@tml','BRS Department User',1,1,'2021-03-08 00:00:00.000000'),(7,'343430c1-5460-4745-937f-ce7928aac31d@tml','26AS Department User',1,1,'2021-03-08 00:00:00.000000'),(8,'aa5fd2f1-851d-4127-9269-562b25b4196a@tml','Medical Insurance Department User',1,1,'2021-03-08 00:00:00.000000'),(9,'6361f439-841b-4120-a615-81c80514365f@wc','Operational User',1,1,'2021-03-08 00:00:00.000000'),(10,'7ac06643-7605-4f1f-b570-23c2c7e7cb3d!@wc','Agent User',1,1,'2021-03-08 00:00:00.000000'),(11,'24962502-c68e-4dbe-bce1-d0a585bdd1ef@wc','Finance User',1,1,'2021-03-08 00:00:00.000000'),(12,'56bfba58-a63b-4d18-b1ae-bb9bd64cd28c@tmx','App User',1,1,'2022-04-11 00:00:00.000000'),(13,'09450db9-7d24-4ba7-b982-c4d73c3a2036@tml','Finance Head',1,1,'2022-04-11 00:00:00.000000'),(14,'d8b80338-be17-42c5-9b48-4e315129bb42@tmx','BRS User',1,1,'2022-04-11 00:00:00.000000');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_models`
--

DROP TABLE IF EXISTS `sub_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_model_code` varchar(64) NOT NULL,
  `sub_model_name` varchar(64) NOT NULL,
  `sub_menu_icon` varchar(64) DEFAULT NULL,
  `sub_model_status` tinyint(1) NOT NULL,
  `url_path` varchar(64) DEFAULT NULL,
  `page_limit` smallint(5) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  `main_model_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_model_code` (`sub_model_code`),
  UNIQUE KEY `url_path` (`url_path`),
  KEY `sub_models_main_model_id_2e224b6b_fk_main_modules_id` (`main_model_id`),
  CONSTRAINT `sub_models_main_model_id_2e224b6b_fk_main_modules_id` FOREIGN KEY (`main_model_id`) REFERENCES `main_modules` (`id`),
  CONSTRAINT `sub_models_chk_1` CHECK ((`page_limit` >= 0)),
  CONSTRAINT `sub_models_chk_2` CHECK ((`created_by` >= 0)),
  CONSTRAINT `sub_models_chk_3` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_models`
--

LOCK TABLES `sub_models` WRITE;
/*!40000 ALTER TABLE `sub_models` DISABLE KEYS */;
INSERT INTO `sub_models` VALUES (1,'SRC','Source','mdi-toggle-switch-off',1,'BrsSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(2,'SRC-DEF','Source Definition','mdi-toggle-switch-off',1,'BrsSourcedefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(3,'DAS','Dashboard','mdi-toggle-switch-off',1,'BrsLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(4,'CONSOL FILE','File Upload','mdi-toggle-switch-off',1,'ConsolidationFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(5,'CONSOL PROCESS','Process','mdi-toggle-switch-off',1,'ConsolidationProcess',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(6,'CONSOL REP','Report','mdi-toggle-switch-off',1,'ConsolidationReport',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(7,'CONSOL DRA','Draft Report','mdi-toggle-switch-off',1,'ConsolidationDraftReport',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(8,'MASAGG','Aggregators','mdi-toggle-switch-off',1,'Aggregators',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(9,'MASTD','Transformation Definition','mdi-toggle-switch-off',1,'BrsTransformationDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(10,'MASPD','Processing Layer Definition','mdi-toggle-switch-off',1,'BrsProcessingLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(11,'MASBL','Business Logic Layer','mdi-toggle-switch-off',1,'BrsBusinessLogicLayer',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(12,'MASBLD','Business Logic Layer Definition','mdi-toggle-switch-off',1,'BrsBusinessLogicLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(13,'PO-DAS','Dashboard','mdi-toggle-switch-off',1,'PoLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(14,'CONS-DAS','Dashboard','mdi-toggle-switch-off',1,'ConsolFilesDashboard',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(15,'CONSOL-SRC','Source','mdi-toggle-switch-off',1,'ConsolidationSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(16,'CONSOL-SRCDEF','Source Definition','mdi-toggle-switch-off',1,'ConsolidationSourceDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(17,'VP-DAS','Dashboard','mdi-toggle-switch-off',1,'VendorPaymentsLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(18,'26AS-DAS','Dashboard','mdi-toggle-switch-off',1,'26ASLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(19,'TASK-DAS','Dashboard','mdi-toggle-switch-off',1,'TaskManagementLangingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(20,'BRS-FILE','File Upload','mdi-toggle-switch-off',1,'BrsFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(21,'BRS-OPR','Recon Summary','mdi-toggle-switch-off',1,'BrsReconOperation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(22,'BRS-REP','BRS Report','mdi-toggle-switch-off',1,'BrsReports',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(23,'O2C-SRC','Source','mdi-toggle-switch-off',1,'O2CSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(24,'FCP-SRC','Source','mdi-toggle-switch-off',1,'FCPSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(25,'GST-SRC','Source','mdi-toggle-switch-off',1,'GSTSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(26,'BRS-CON-REP','Consolidation Report','mdi-toggle-switch-off',1,'BrsConsolidationReport',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(27,'TASK-TD','Trainer Details','mdi-toggle-switch-off',1,'TaskTrainerDetails',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(28,'BRS-ME','Month End Close','mdi-toggle-switch-off',1,'BrsMonthEndCycle',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(29,'CR-SRC','Source','mdi-toggle-switch-off',1,'CRSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(30,'CR-SRC-DEF','Source Definition','mdi-toggle-switch-off',1,'CRSourcedefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(31,'CR-DAS','Dashboard','mdi-toggle-switch-off',1,'CRLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(32,'CR-TD','Transformation Definition','mdi-toggle-switch-off',1,'CRTransformationDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(33,'CR-MASPD','Processing Layer Definition','mdi-toggle-switch-off',1,'CRProcessingLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(34,'CR-MASBL','Business Logic Layer','mdi-toggle-switch-off',1,'CRBusinessLogicLayer',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(35,'CR-MASBLD','Business Logic Layer Definition','mdi-toggle-switch-off',1,'CRBusinessLogicLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(36,'CR-AGG','Aggregators','mdi-toggle-switch-off',1,'CRAggregators',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(37,'CR-FILE','File Upload','mdi-toggle-switch-off',1,'CRFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(38,'VR-SRC','Source','mdi-toggle-switch-off',1,'VRSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(39,'VR-SRC-DEF','Source Definition','mdi-toggle-switch-off',1,'VRSourcedefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(40,'VR-DAS','Dashboard','mdi-toggle-switch-off',1,'VRLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(41,'VR-TD','Transformation Definition','mdi-toggle-switch-off',1,'VRTransformationDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(42,'VR-MASPD','Processing Layer Definition','mdi-toggle-switch-off',1,'VRProcessingLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(43,'VR-MASBL','Business Logic Layer','mdi-toggle-switch-off',1,'VRBusinessLogicLayer',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(44,'VR-MASBLD','Business Logic Layer Definition','mdi-toggle-switch-off',1,'VRBusinessLogicLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(45,'VR-AGG','Aggregators','mdi-toggle-switch-off',1,'VRAggregators',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(46,'VR-FILE','File Upload','mdi-toggle-switch-off',1,'VRFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(47,'ICR-SRC','Source','mdi-toggle-switch-off',1,'ICRSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(48,'ICR-SRC-DEF','Source Definition','mdi-toggle-switch-off',1,'ICRSourcedefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(49,'ICR-DAS','Dashboard','mdi-toggle-switch-off',1,'ICRLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(50,'ICR-TD','Transformation Definition','mdi-toggle-switch-off',1,'ICRTransformationDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(51,'ICR-MASPD','Processing Layer Definition','mdi-toggle-switch-off',1,'ICRProcessingLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(52,'ICR-MASBL','Business Logic Layer','mdi-toggle-switch-off',1,'ICRBusinessLogicLayer',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(53,'ICR-MASBLD','Business Logic Layer Definition','mdi-toggle-switch-off',1,'ICRBusinessLogicLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(54,'ICR-AGG','Aggregators','mdi-toggle-switch-off',1,'ICRAggregators',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(55,'ICR-FILE','File Upload','mdi-toggle-switch-off',1,'ICRFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(56,'GSTR-SRC','Source','mdi-toggle-switch-off',1,'GSTRSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(57,'GSTR-SRC-DEF','Source Definition','mdi-toggle-switch-off',1,'GSTRSourcedefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(58,'GSTR-DAS','Dashboard','mdi-toggle-switch-off',1,'GSTRLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(59,'GSTR-TD','Transformation Definition','mdi-toggle-switch-off',1,'GSTRTransformationDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(60,'GSTR-MASPD','Processing Layer Definition','mdi-toggle-switch-off',1,'GSTRProcessingLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(61,'GSTR-MASBL','Business Logic Layer','mdi-toggle-switch-off',1,'GSTRBusinessLogicLayer',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(62,'GSTR-MASBLD','Business Logic Layer Definition','mdi-toggle-switch-off',1,'GSTRBusinessLogicLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(63,'GSTR-AGG','Aggregators','mdi-toggle-switch-off',1,'GSTRAggregators',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(64,'GSTR-FILE','File Upload','mdi-toggle-switch-off',1,'GSTRFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(65,'CR-OPR','Recon Summary','mdi-toggle-switch-off',1,'CustomerReconOperation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(66,'VR-OPR','Recon Summary','mdi-toggle-switch-off',1,'VendorReconOperation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(67,'ICR-OPR','Recon Summary','mdi-toggle-switch-off',1,'InterCompanyReconOperation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(68,'GSTR-OPR','Recon Summary','mdi-toggle-switch-off',1,'GSTReconOperation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(69,'26AS-OPR','Recon Summary','mdi-toggle-switch-off',1,'26ASReconOperation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(70,'26AS-SRC','Source','mdi-toggle-switch-off',1,'26ASSource',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(71,'26AS-SRC-DEF','Source Definition','mdi-toggle-switch-off',1,'26ASSourcedefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(72,'26AS-TD','Transformation Definition','mdi-toggle-switch-off',1,'26ASTransformationDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(73,'26AS-MASPD','Processing Layer Definition','mdi-toggle-switch-off',1,'26ASProcessingLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(74,'26AS-MASBL','Business Logic Layer','mdi-toggle-switch-off',1,'26ASBusinessLogicLayer',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(75,'26AS-MASBLD','Business Logic Layer Definition','mdi-toggle-switch-off',1,'26ASBusinessLogicLayerDefinition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(76,'26AS-AGG','Aggregators','mdi-toggle-switch-off',1,'26ASAggregators',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(77,'26AS-FILE','File Upload','mdi-toggle-switch-off',1,'26ASFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(78,'CR-PER-ASS','Period Assignment','mdi-toggle-switch-off',1,'CRPeriodAssignment',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(79,'CR-BAL-CON','Balance Confirmation','mdi-toggle-switch-off',1,'CRPBalanceConfirmation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(80,'VR-PER-ASS','Period Assignment','mdi-toggle-switch-off',1,'VRPeriodAssignment',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(81,'VR-BAL-CON','Balance Confirmation','mdi-toggle-switch-off',1,'VRPBalanceConfirmation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(82,'VR-SRC-MAPPING','Source Mapping','mdi-toggle-switch-off',1,'VRSourceMapping',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(83,'26AS-NAD','National Account Details','mdi-toggle-switch-off',1,'26ASNationalAccountDetails',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(84,'26AS-TAN-REP','TAN Report','mdi-toggle-switch-off',1,'26ASTanReport',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(85,'26AS-NAD-REP','National Account Report','mdi-toggle-switch-off',1,'26ASNADReport',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(86,'26AS-ERP-TAN-UP','ERP TAN Update','mdi-toggle-switch-off',1,'26SASErpTanUpdate',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(87,'MI-DAS','Dashboard','mdi-toggle-switch-off',1,'MedInsLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(88,'MI-FILE','File Upload','mdi-toggle-switch-off',1,'MedInsFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(89,'MI-MIS','MIS','mdi-toggle-switch-off',1,'MedInsMis',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(90,'MI-ADDITION','Addition','mdi-toggle-switch-off',1,'MedInsAddition',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(91,'MI-DELETION','Deletion','mdi-toggle-switch-off',1,'MedInsDeletion',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(92,'MI-EXPLICIT','Exception','mdi-toggle-switch-off',1,'MedInsExplicit',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(93,'26AS-AS-OPEN','26AS NAD Open','mdi-toggle-switch-off',1,'26ASNadOpen',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(94,'MI-INSURER','Insuer','mdi-toggle-switch-off',1,'MedInsInsurer',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(95,'ALCS-CLIENT','Clients','mdi-toggle-switch-off',1,'AlcsClients',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(96,'ALCS-DASHBOARD','Dashboard','mdi-toggle-switch-off',1,'AlcsDashboard',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(97,'ALCS-FILEUPLOAD','File Upload','mdi-toggle-switch-off',1,'AlcsFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(98,'ALCS-REPORT','ALCS Report','mdi-toggle-switch-off',1,'AlcsReport',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(99,'WC-PROCESS','Process','mdi-toggle-switch-off',1,'OperationalProcess',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(100,'WC-FILEUPLOAD','File Upload','mdi-toggle-switch-off',1,'OperationalFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(101,'WC-AGENT','Process','mdi-toggle-switch-off',1,'AgentProcess',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(102,'WC-FINANCE','Process','mdi-toggle-switch-off',1,'FinanceProcess',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(103,'WC-OPE-HOME','Dashboard','mdi-toggle-switch-off',1,'OperationLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(104,'WC-AGENT-HOME','Dashboard','mdi-toggle-switch-off',1,'AgentlandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(105,'WC-FIN-HOME','Dashboard','mdi-toggle-switch-off',1,'FinanceLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(106,'ALCS-OPERATIONS','Operations','mdi-toggle-switch-off',1,'AlcsOperations',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(107,'CONSOL-TARGET','Target Files','mdi-toggle-switch-off',1,'ConsolidationTargetFiles',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(108,'VR-VEN MAS','Vendor Master','mdi-toggle-switch-off',1,'VRVendorMaster',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(109,'VR-RECON-REPORT','VRS Report','mdi-toggle-switch-off',1,'VRVendorReconReport',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(110,'VR-MAT COM','Matching Comments','mdi-toggle-switch-off',1,'VRMatchingComments',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(111,'LCM-DASHBOARD','Dashboard','mdi-toggle-switch-off',1,'LCMLandingPage',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(112,'LCM-OPERATION','Operations','mdi-toggle-switch-off',1,'LCMOperation',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(113,'LCM-FILE-UPLOAD','File Upload','mdi-toggle-switch-off',1,'LCMFileUpload',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(114,'CONSOL-MAPPING','Mapping','mdi-toggle-switch-off',1,'ConsolidationMapping',100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3);
/*!40000 ALTER TABLE `sub_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_modules`
--

DROP TABLE IF EXISTS `sub_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_module_code` varchar(64) NOT NULL,
  `sub_module_name` varchar(64) NOT NULL,
  `sub_module_icon` varchar(64) DEFAULT NULL,
  `description` longtext,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  `main_module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_module_code` (`sub_module_code`),
  UNIQUE KEY `sub_module_name` (`sub_module_name`),
  KEY `sub_modules_main_module_id_dca00080_fk_main_modules_id` (`main_module_id`),
  CONSTRAINT `sub_modules_main_module_id_dca00080_fk_main_modules_id` FOREIGN KEY (`main_module_id`) REFERENCES `main_modules` (`id`),
  CONSTRAINT `sub_modules_chk_1` CHECK ((`created_by` >= 0)),
  CONSTRAINT `sub_modules_chk_2` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_modules`
--

LOCK TABLES `sub_modules` WRITE;
/*!40000 ALTER TABLE `sub_modules` DISABLE KEYS */;
INSERT INTO `sub_modules` VALUES (1,'e9db2520-4161-45f9-ae97-90f51615f687@tml','PO Issue Process','/../assets/images/gallery/purchase_order.png','Raise PO for Goods/Services required for your business',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',1),(2,'9646ceb6-f1c3-43cc-b657-ecd0e5e3e307@tml','Consolidation Files','/../assets/images/gallery/consolidation.jpg','Combining a number of files into single effective file',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',2),(3,'23a71b67-d83f-47fa-b640-47aa5f0e7b0f@tml','Bank Reconciliation','/../assets/images/gallery/bank_recon.jpg','Compares cash balance on balance sheet to corresponding amount on its bank statement',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(4,'bc8286c3-76ff-4842-a60a-719abead9c51@tml','Vendor Payments','/../assets/images/gallery/vendor_payments.png','Pay Bills to Vendors for Goods/Services provided to business',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',5),(5,'188c88ef-0da5-41e1-9788-66b049ad62e2@tml','26AS Reconciliation','/../assets/images/gallery/tax_recon.png','Resolving mismatches between TDS statement and Form 26AS',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(6,'33cc3720-72ad-4642-9c7e-c95a3d9d9c28@tml','Project Management','/../assets/images/gallery/task_management.png','Handling the entire life-cycle of a task, right from planning to tracking to execution',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',4),(7,'464185b3-77e3-4759-a546-5a26e0f6ed00@tml','O2C Process','/../assets/images/gallery/o2c_process.jpg','Order Management System from a customer places an order through to fulfillment',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',6),(8,'9b3eeeac-9d5f-4b95-b522-c5f88f8dc383@tml','Financial Close Process','/../assets/images/gallery/FC_Process.jpg','Process undertaken at the end of the month to close out the current posting period',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',7),(9,'38a2ea12-6b09-49af-ba11-10a5eb59e1ec@tml','GST','/../assets/images/gallery/GST_Process.jpg','Tax on goods and services sold domestically for consumption',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',8),(10,'6350166d-fe2b-4973-aad0-227418f60ba1@tml','Customer Reconciliation','/../assets/images/gallery/bank_recon.jpg','Compares cash balance on Customer balance sheet to Company\'s balance sheet',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(11,'e03d9222-b408-4850-ad6b-6d975e49d73b@tml','Vendor Reconciliation','/../assets/images/gallery/GST_Process.jpg','Compares on system accounts and vendor accounts',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(12,'cd92915e-108a-4bde-97ef-aee965a3b9b1@tml','Inter Company Reconciliation','/../assets/images/gallery/bank_recon.jpg','Compares on inter company accounts',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(13,'f9ff7cde-ff64-4724-a45a-409a80955ca0@tml','GST Reconciliation','/../assets/images/gallery/GST_Process.jpg','matching of sales and purchase data',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(14,'b618e65b-9001-4092-ad40-9b964eb54aea@tml','Med Insurance Recon','/../assets/images/gallery/Med_ins.jpg','Compared your payroll with the Insurer Data',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(15,'b1492258-f817-4c29-a885-39cca64fde65@tml','ALCS Reconciliation','/../assets/images/gallery/bank_recon.jpg','Compares ALCS and Bank Data',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3),(16,'b5e4ce87-92d3-457d-a054-1de4f4a737c3@wc','Wacker India Logistics','/../assets/images/gallery/bank_recon.jpg','Transport of Chemicals from Main Division to Customer',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',9),(17,'a915a9ef-3d12-473b-b28d-9235e6e960ee@tml','Life Cycle Management','/../assets/images/gallery/life_cycle_management.png','Deriving Insights',1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',10);
/*!40000 ALTER TABLE `sub_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_code` varchar(64) NOT NULL,
  `tenant_name` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenant_code` (`tenant_code`),
  UNIQUE KEY `tenant_name` (`tenant_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (1,'400a86c-a862-4997-9a7c-8108d8f8d6cd@tml','TeamLease Groups',1,'2021-03-08 00:00:00.000000'),(2,'b48d16b4-ba19-4a66-aee3-2e08dcf0e114@wc','Wacker Chemie',1,'2021-03-08 00:00:00.000000'),(3,'53d2b691-3eb5-4ba2-8db6-d8967f70f01d@tmx','Thermxglobal',1,'2022-04-11 00:00:00.000000');
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `departments_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `types_departments_id_e7249290_fk_departments_id` (`departments_id`),
  CONSTRAINT `types_departments_id_e7249290_fk_departments_id` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Staffing',1,'2021-05-30 17:58:49.674507',13),(2,'Opex',1,'2021-05-30 17:58:49.674507',13),(3,'Demo',1,'2021-05-30 17:58:49.674507',13),(4,'All',1,'2021-05-30 17:58:49.674507',13);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_filter_access`
--

DROP TABLE IF EXISTS `user_filter_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_filter_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_access` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  `m_user_filters_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_filter_access_m_user_filters_id_ad5fb8f2_fk_m_user_fi` (`m_user_filters_id`),
  KEY `user_filter_access_roles_id_2e4dff00_fk_roles_id` (`roles_id`),
  CONSTRAINT `user_filter_access_m_user_filters_id_ad5fb8f2_fk_m_user_fi` FOREIGN KEY (`m_user_filters_id`) REFERENCES `m_user_filters` (`id`),
  CONSTRAINT `user_filter_access_roles_id_2e4dff00_fk_roles_id` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `user_filter_access_chk_1` CHECK ((`created_by` >= 0)),
  CONSTRAINT `user_filter_access_chk_2` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_filter_access`
--

LOCK TABLES `user_filter_access` WRITE;
/*!40000 ALTER TABLE `user_filter_access` DISABLE KEYS */;
INSERT INTO `user_filter_access` VALUES (1,1,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',2,1),(2,1,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',3,1),(3,1,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',4,1),(4,1,1,0,'2021-05-30 17:58:49.674507',0,'2021-05-30 17:58:49.674507',5,1);
/*!40000 ALTER TABLE `user_filter_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_log`
--

DROP TABLE IF EXISTS `user_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_ip` varchar(32) DEFAULT NULL,
  `login_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_login_log_users_id_ca1df325_fk_users_id` (`users_id`),
  CONSTRAINT `user_login_log_users_id_ca1df325_fk_users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_log`
--

LOCK TABLES `user_login_log` WRITE;
/*!40000 ALTER TABLE `user_login_log` DISABLE KEYS */;
INSERT INTO `user_login_log` VALUES (1,'157.49.90.239','2021-06-29 13:53:15.379477',NULL,1),(2,'157.49.90.239','2021-06-29 15:16:38.741930',NULL,1),(3,'157.49.90.239','2021-06-29 15:31:11.119693',NULL,2),(4,'157.49.90.239','2021-06-29 15:32:13.510478',NULL,1),(5,'157.49.90.239','2021-06-29 15:33:03.713725',NULL,1),(6,'157.49.90.239','2021-06-29 15:49:19.889693',NULL,2),(7,'157.49.90.239','2021-06-29 15:49:34.827229',NULL,1),(8,'157.49.226.52','2021-06-29 17:37:31.706975',NULL,1),(9,'157.49.226.52','2021-06-29 17:38:31.910177',NULL,1),(10,'157.49.226.52','2021-06-29 17:51:05.181004',NULL,1),(11,'157.49.226.52','2021-06-29 17:52:05.493659',NULL,1),(12,'157.49.226.52','2021-06-29 19:19:38.106187',NULL,1),(13,'157.49.92.94','2021-06-30 17:43:43.848471',NULL,1),(14,'157.49.92.94','2021-06-30 20:59:39.844844',NULL,1),(15,'157.49.92.94','2021-06-30 21:10:16.206299',NULL,1),(16,'157.49.92.94','2021-06-30 22:26:50.819005',NULL,1),(17,'157.49.92.94','2021-06-30 22:35:30.226776',NULL,1),(18,'157.49.92.94','2021-06-30 23:22:28.050192',NULL,1),(19,'157.49.92.94','2021-07-01 00:45:33.630839',NULL,1),(20,'157.49.92.94','2021-07-01 00:57:56.008768',NULL,1),(21,'157.49.92.94','2021-07-01 01:03:02.713385',NULL,1),(22,'157.49.92.94','2021-07-01 01:06:44.323477',NULL,1),(23,'157.49.92.94','2021-07-01 01:17:26.857647',NULL,1),(24,'157.49.92.94','2021-07-01 02:00:13.601758',NULL,1),(25,'157.49.92.94','2021-07-01 02:01:39.055115',NULL,1),(26,'157.49.92.94','2021-07-01 02:21:49.903546',NULL,1),(27,'157.49.92.94','2021-07-01 02:46:22.252492',NULL,1),(28,'157.49.252.215','2021-07-01 09:40:11.061251',NULL,1),(29,'157.49.252.215','2021-07-01 09:59:35.927130',NULL,1),(30,'157.49.252.215','2021-07-01 10:39:04.857897',NULL,1),(31,'157.49.252.215','2021-07-01 10:56:00.253227',NULL,1),(32,'157.49.252.215','2021-07-01 11:11:19.194089',NULL,1),(33,'157.49.252.215','2021-07-01 12:13:16.080873',NULL,1),(34,'157.49.252.215','2021-07-01 13:31:57.692213',NULL,1),(35,'157.49.252.215','2021-07-01 13:53:53.557512',NULL,1),(36,'157.49.252.215','2021-07-01 14:39:36.878236',NULL,1),(37,'157.49.252.215','2021-07-01 14:42:51.566178',NULL,1),(38,'157.51.137.143','2021-07-02 09:59:37.017090',NULL,1),(39,'157.51.137.143','2021-07-02 11:35:00.943164',NULL,1),(40,'157.46.117.206','2021-07-02 12:59:27.928194',NULL,1),(41,'157.46.117.206','2021-07-02 15:42:45.462696',NULL,1),(42,'49.37.42.196','2021-07-02 15:42:53.087728',NULL,1),(43,'42.106.186.125','2021-07-02 17:22:15.968415',NULL,1),(44,'42.106.186.125','2021-07-02 20:27:26.211372',NULL,1),(45,'157.46.109.115','2021-07-03 05:04:14.050042',NULL,1),(46,'157.51.57.6','2021-07-03 09:11:26.587547',NULL,1),(47,'157.51.57.6','2021-07-03 12:20:02.001047',NULL,1),(48,'42.106.187.15','2021-07-03 15:02:11.839005',NULL,1),(49,'157.49.220.116','2021-07-04 12:33:05.277600',NULL,1),(50,'157.46.103.230','2021-07-04 15:45:50.155029',NULL,1),(51,'157.49.220.116','2021-07-04 20:04:34.666326',NULL,1),(52,'157.51.161.105','2021-07-05 08:09:41.002555',NULL,1),(53,'42.106.184.201','2021-07-05 11:32:21.597080',NULL,1),(54,'42.106.184.201','2021-07-05 11:35:57.724011',NULL,1),(55,'157.51.57.175','2021-07-06 09:31:57.285479',NULL,1),(56,'157.46.105.223','2021-07-06 15:31:21.019561',NULL,1),(57,'157.46.112.133','2021-07-06 22:52:02.695424',NULL,1),(58,'157.51.61.140','2021-07-07 00:52:18.190614',NULL,1),(59,'157.51.61.140','2021-07-07 03:06:33.797947',NULL,1),(60,'157.51.61.140','2021-07-07 03:32:14.914411',NULL,1),(61,'157.49.217.71','2021-07-07 14:13:14.479517',NULL,1),(62,'157.49.217.71','2021-07-07 14:18:19.581316',NULL,1),(63,'157.51.181.18','2021-07-08 10:34:42.598459',NULL,1),(64,'157.51.181.18','2021-07-08 11:24:57.622264',NULL,1),(65,'157.51.181.18','2021-07-08 13:33:57.238195',NULL,1),(66,'157.51.152.122','2021-07-09 09:36:46.987971',NULL,1),(67,'157.46.77.42','2021-07-09 11:33:15.983595',NULL,1),(68,'157.49.218.96','2021-07-10 09:54:55.588785',NULL,1),(69,'157.49.196.154','2021-07-10 22:21:32.658753',NULL,1),(70,'157.51.17.250','2021-07-11 14:22:45.952914',NULL,1),(71,'157.51.0.212','2021-07-12 10:34:14.873993',NULL,1),(72,'157.46.105.213','2021-07-12 18:04:46.415916',NULL,1),(73,'157.46.105.213','2021-07-12 19:23:17.867467',NULL,1),(74,'157.51.58.143','2021-07-13 10:41:10.474420',NULL,1),(75,'157.46.124.161','2021-07-14 09:39:38.242271',NULL,1),(76,'157.51.134.46','2021-07-15 07:20:26.075641',NULL,1),(77,'157.51.82.151','2021-07-15 12:26:24.564966',NULL,1),(78,'157.51.82.151','2021-07-15 12:31:17.716751',NULL,1),(79,'157.51.82.151','2021-07-15 12:32:17.722621',NULL,1),(80,'157.51.82.151','2021-07-15 14:15:19.831110',NULL,1),(81,'157.51.82.151','2021-07-15 15:29:16.736167',NULL,1),(82,'157.51.23.3','2021-07-16 09:37:55.221886',NULL,1),(83,'157.49.83.63','2021-07-17 14:31:02.553263',NULL,1),(84,'157.49.200.174','2021-07-18 10:21:47.093441',NULL,1),(85,'157.49.93.52','2021-07-19 10:29:09.317762',NULL,1),(86,'157.51.75.37','2021-07-21 10:20:15.354360',NULL,1),(87,'157.51.131.229','2021-07-23 11:29:44.100882',NULL,1),(88,'157.51.131.229','2021-07-23 15:05:46.391962',NULL,1),(89,'157.51.131.229','2021-07-23 15:20:55.776247',NULL,1),(90,'157.49.199.50','2021-07-24 11:38:50.019003',NULL,1),(91,'157.49.199.50','2021-07-24 14:57:13.730172',NULL,1),(92,'157.49.199.50','2021-07-24 23:51:47.411652',NULL,1),(93,'157.51.151.105','2021-07-26 10:10:14.391022',NULL,1),(94,'157.51.151.105','2021-07-26 12:06:30.361394',NULL,1),(95,'157.46.87.60','2021-07-26 23:15:57.096571',NULL,1),(96,'157.51.8.135','2021-07-27 11:23:29.021811',NULL,1),(97,'157.51.91.15','2021-07-27 12:08:55.630890',NULL,1),(98,'157.51.175.118','2021-07-27 22:22:25.243224',NULL,1),(99,'157.51.175.118','2021-07-27 22:33:42.942812',NULL,1),(100,'157.51.175.118','2021-07-27 22:36:58.600561',NULL,3),(101,'157.51.175.118','2021-07-27 22:46:25.846172',NULL,3),(102,'157.51.175.118','2021-07-27 23:14:29.019453',NULL,1),(103,'157.51.175.118','2021-07-27 23:15:34.627051',NULL,3),(104,'157.51.175.118','2021-07-27 23:17:41.218793',NULL,3),(105,'157.51.175.118','2021-07-27 23:24:29.457947',NULL,1),(106,'157.51.175.118','2021-07-27 23:25:49.224642',NULL,1),(107,'157.51.175.118','2021-07-27 23:27:10.774992',NULL,1),(108,'157.51.175.118','2021-07-27 23:30:32.285067',NULL,3),(109,'157.51.175.118','2021-07-28 00:11:15.547213',NULL,1),(110,'157.51.175.118','2021-07-28 00:11:35.402409',NULL,3),(111,'157.51.175.118','2021-07-28 00:44:39.992497',NULL,4),(112,'157.51.175.118','2021-07-28 00:54:11.837930',NULL,3),(113,'157.51.179.156','2021-07-28 10:33:39.712186',NULL,1),(114,'157.51.179.156','2021-07-28 14:41:33.430429',NULL,3),(115,'157.51.179.156','2021-07-28 14:41:57.992968',NULL,3),(116,'157.51.106.77','2021-07-29 10:14:15.792084',NULL,3),(117,'157.46.88.54','2021-07-30 12:31:38.375559',NULL,1),(118,'157.46.88.54','2021-07-30 12:31:50.116219',NULL,3),(119,'157.49.145.254','2021-07-31 13:15:14.617219',NULL,3),(120,'157.49.130.242','2021-07-31 23:53:46.974017',NULL,1),(121,'157.49.130.242','2021-07-31 23:53:55.225941',NULL,3),(122,'157.51.24.250','2021-08-01 11:19:16.297243',NULL,3),(123,'157.51.24.250','2021-08-01 15:05:57.915287',NULL,3),(124,'157.51.24.250','2021-08-01 17:27:08.846601',NULL,1),(125,'157.49.219.150','2021-08-02 10:37:02.583993',NULL,1),(126,'157.49.219.150','2021-08-02 10:37:18.299802',NULL,3),(127,'157.49.242.170','2021-08-03 16:19:39.361902',NULL,3),(128,'157.49.242.170','2021-08-03 16:20:06.443579',NULL,1),(129,'157.49.242.170','2021-08-03 16:55:28.652895',NULL,1),(130,'157.46.99.23','2021-08-05 21:03:08.429391',NULL,1),(131,'157.46.99.23','2021-08-05 21:03:24.181888',NULL,3),(132,'157.51.81.48','2021-08-06 10:21:15.907794',NULL,3),(133,'157.51.81.48','2021-08-06 10:38:10.125656',NULL,3),(134,'157.51.36.204','2021-08-06 21:51:31.350167',NULL,3),(135,'157.51.1.227','2021-08-07 11:15:55.607099',NULL,3),(136,'157.51.70.231','2021-08-08 22:52:47.894649',NULL,3),(137,'157.51.10.113','2021-08-09 10:12:38.866894',NULL,3),(138,'157.51.10.113','2021-08-09 11:54:37.128433',NULL,3),(139,'157.46.90.75','2021-08-10 16:51:38.593239',NULL,3),(140,'157.46.90.75','2021-08-10 21:55:42.099483',NULL,1),(141,'157.46.90.75','2021-08-10 21:56:22.327393',NULL,1),(142,'157.46.90.75','2021-08-10 22:24:56.500428',NULL,1),(143,'157.51.63.149','2021-08-11 07:00:18.697886',NULL,1),(144,'157.51.63.149','2021-08-11 16:57:49.966031',NULL,1),(145,'157.49.217.166','2021-08-12 12:18:01.988971',NULL,1),(146,'157.49.220.255','2021-08-13 09:11:10.093523',NULL,1),(147,'157.51.173.91','2021-08-13 17:20:39.572560',NULL,1),(148,'157.50.63.27','2021-08-29 19:07:29.805591',NULL,1),(149,'157.50.63.27','2021-08-29 19:24:20.226229',NULL,1),(150,'157.50.63.27','2021-08-29 20:04:29.557743',NULL,1),(151,'223.226.114.223','2021-08-30 10:33:12.914425',NULL,1),(152,'223.226.114.223','2021-08-30 15:20:35.775138',NULL,1),(153,'171.61.92.73','2021-08-31 08:59:55.141088',NULL,1),(154,'171.61.92.73','2021-08-31 13:42:02.740549',NULL,1),(155,'171.61.92.73','2021-08-31 14:25:17.684477',NULL,1),(156,'171.61.92.73','2021-08-31 19:03:33.150492',NULL,1),(157,'171.61.92.73','2021-09-01 10:40:32.299589',NULL,1),(158,'171.76.92.240','2021-09-01 17:29:41.914412',NULL,1),(159,'171.76.92.240','2021-09-02 10:49:48.566581',NULL,1),(160,'171.76.92.240','2021-09-03 01:47:29.783716',NULL,1),(161,'171.76.92.240','2021-09-03 08:18:36.216178',NULL,1),(162,'122.182.207.209','2021-09-04 11:45:31.054888',NULL,1),(163,'117.96.227.250','2021-09-06 08:23:14.673876',NULL,1),(164,'171.76.107.246','2021-09-07 14:10:31.003027',NULL,1),(165,'171.76.112.69','2021-09-08 00:17:24.230908',NULL,5),(166,'171.76.112.69','2021-09-08 08:09:29.752243',NULL,5),(167,'171.76.112.69','2021-09-08 11:03:44.476696',NULL,5),(168,'171.76.112.69','2021-09-08 11:04:46.623450',NULL,5),(169,'122.167.127.182','2021-09-09 07:58:29.058080',NULL,5),(170,'122.182.222.11','2021-09-09 08:58:11.115306',NULL,5),(171,'171.76.115.117','2021-09-09 12:49:51.029523',NULL,5),(172,'157.45.231.23','2021-09-12 11:51:31.080115',NULL,3),(173,'157.45.60.50','2021-09-13 15:00:07.275517',NULL,3),(174,'157.50.31.140','2021-09-15 11:53:59.250210',NULL,3),(175,'157.50.31.140','2021-09-15 11:54:10.643180',NULL,5),(176,'157.45.113.155','2021-09-18 12:36:06.998886',NULL,5),(177,'157.45.104.244','2021-09-20 11:01:42.290272',NULL,5),(178,'157.50.63.214','2021-09-21 06:48:28.265531',NULL,5),(179,'157.50.63.214','2021-09-21 11:04:47.348738',NULL,5),(180,'157.50.63.214','2021-09-21 11:19:05.633047',NULL,3),(181,'157.45.67.232','2021-09-22 15:10:48.924534',NULL,5),(182,'157.45.9.181','2021-09-23 10:26:25.178862',NULL,5),(183,'157.45.129.66','2021-09-24 11:21:07.603784',NULL,5),(184,'157.50.14.235','2021-09-25 14:32:40.643293',NULL,5),(185,'157.45.165.116','2021-09-27 10:30:00.340230',NULL,5),(186,'157.50.48.127','2021-09-28 15:17:43.614652',NULL,5),(187,'157.45.104.184','2021-09-29 11:18:39.481927',NULL,5),(188,'157.45.95.149','2021-09-30 12:02:21.416988',NULL,5),(189,'157.45.245.236','2021-09-30 17:11:48.869987',NULL,6),(190,'157.45.220.137','2021-10-01 14:50:28.704994',NULL,6),(191,'157.45.220.137','2021-10-01 16:44:18.030030',NULL,6),(192,'157.45.220.137','2021-10-01 17:06:32.914197',NULL,6),(193,'157.45.147.70','2021-10-02 15:37:30.232002',NULL,5),(194,'157.45.161.152','2021-10-04 11:28:25.593364',NULL,5),(195,'157.45.161.152','2021-10-04 12:30:17.757155',NULL,6),(196,'157.45.161.152','2021-10-04 19:29:45.350209',NULL,5),(197,'157.45.161.152','2021-10-04 21:06:57.581880',NULL,6),(198,'157.50.44.195','2021-10-05 09:29:52.551503',NULL,6),(199,'157.50.44.195','2021-10-05 10:56:29.281252',NULL,6),(200,'157.50.44.195','2021-10-05 22:39:21.884651',NULL,3),(201,'157.45.201.44','2021-10-06 19:40:03.931885',NULL,3),(202,'157.45.136.69','2021-10-07 23:00:13.640669',NULL,5),(203,'157.45.136.69','2021-10-08 00:49:13.244760',NULL,3),(204,'157.50.28.3','2021-10-08 14:56:22.568812',NULL,6),(205,'157.45.191.228','2021-10-10 23:52:02.843456',NULL,6),(206,'157.45.22.221','2021-10-11 09:29:48.754708',NULL,6),(207,'157.45.212.177','2021-10-13 16:52:49.400114',NULL,5),(208,'157.45.212.177','2021-10-13 16:56:30.670877',NULL,5),(209,'157.45.212.177','2021-10-13 17:02:06.508455',NULL,1),(210,'157.45.212.177','2021-10-13 17:23:22.793493',NULL,5),(211,'157.45.212.177','2021-10-13 17:45:15.384943',NULL,1),(212,'157.45.212.177','2021-10-13 17:52:41.627126',NULL,1),(213,'157.45.209.132','2021-10-16 11:12:17.203074',NULL,6),(214,'157.50.48.219','2021-10-17 11:39:57.807346',NULL,6),(215,'157.45.119.249','2021-10-18 09:41:46.143451',NULL,6),(216,'157.45.119.249','2021-10-18 20:29:11.958048',NULL,6),(217,'157.45.68.189','2021-10-19 12:22:43.639884',NULL,6),(218,'157.45.26.30','2021-10-19 23:25:55.152327',NULL,6),(219,'106.200.192.75','2021-10-20 14:37:50.012466',NULL,6),(220,'157.50.11.12','2021-10-21 02:38:14.009203',NULL,6),(221,'157.50.27.226','2021-10-21 10:17:26.474048',NULL,6),(222,'157.50.47.152','2021-10-22 11:06:05.595601',NULL,6),(223,'157.45.252.37','2021-10-23 12:27:39.197728',NULL,6),(224,'157.46.76.252','2021-11-03 16:38:17.020029',NULL,6),(225,'157.46.76.252','2021-11-03 17:01:08.772464',NULL,3),(226,'157.46.76.252','2021-11-03 17:08:56.221730',NULL,6),(227,'157.46.95.19','2021-11-11 20:11:03.597806',NULL,3),(228,'157.46.95.19','2021-11-11 20:27:14.007144',NULL,3),(229,'157.46.95.19','2021-11-11 20:44:17.787423',NULL,3),(230,'157.46.95.19','2021-11-11 20:50:36.100411',NULL,3),(231,'157.46.95.19','2021-11-11 20:56:59.510817',NULL,3),(232,'157.46.79.237','2021-11-12 08:52:09.321087',NULL,5),(233,'157.46.79.237','2021-11-12 09:04:11.141613',NULL,1),(234,'157.46.79.237','2021-11-12 09:12:14.047719',NULL,5),(235,'157.46.79.237','2021-11-12 09:48:43.979148',NULL,1),(236,'157.46.87.139','2021-11-15 09:05:56.580175',NULL,6),(237,'157.49.239.217','2021-11-17 12:13:49.991691',NULL,1),(238,'157.49.239.217','2021-11-17 14:39:07.930668',NULL,1),(239,'157.49.239.217','2021-11-17 21:39:25.113258',NULL,5),(240,'157.49.66.181','2021-11-20 12:12:45.645043',NULL,5),(241,'157.46.64.208','2021-11-21 20:55:27.884812',NULL,5),(242,'157.46.121.248','2021-11-22 10:54:56.566037',NULL,1),(243,'157.49.76.219','2021-11-23 00:04:22.103463',NULL,3),(244,'157.46.66.219','2021-11-23 13:14:16.371041',NULL,3),(245,'157.49.216.98','2021-11-24 12:25:35.860040',NULL,3),(246,'157.49.216.98','2021-11-24 12:26:08.453151',NULL,1),(247,'157.49.198.243','2021-11-25 09:48:35.886407',NULL,3),(248,'157.49.198.243','2021-11-25 09:58:05.560152',NULL,3),(249,'157.49.198.243','2021-11-25 11:37:18.005524',NULL,1),(250,'157.46.79.85','2021-11-26 10:14:39.555790',NULL,1),(251,'157.46.103.25','2021-11-27 11:05:14.572136',NULL,1),(252,'157.45.25.79','2021-11-28 22:55:53.351981',NULL,1),(253,'157.45.143.145','2021-11-29 11:33:10.581951',NULL,1),(254,'157.45.223.178','2021-12-01 12:16:03.064257',NULL,6),(255,'157.45.224.57','2021-12-01 17:33:40.116217',NULL,6),(256,'157.45.238.28','2021-12-02 00:14:25.418913',NULL,6),(257,'157.45.36.24','2021-12-02 10:43:20.615693',NULL,6),(258,'157.45.248.96','2021-12-03 11:20:30.211734',NULL,6),(259,'157.45.182.76','2021-12-05 22:32:29.874026',NULL,6),(260,'157.45.158.8','2021-12-06 14:09:39.568463',NULL,6),(261,'157.45.59.85','2021-12-07 15:10:40.607960',NULL,6),(262,'157.50.7.212','2021-12-08 14:21:59.284157',NULL,6),(263,'157.45.41.189','2021-12-09 02:41:15.507063',NULL,6),(264,'157.45.41.189','2021-12-09 03:39:04.411569',NULL,6),(265,'157.45.41.189','2021-12-09 04:16:27.971663',NULL,6),(266,'157.45.41.189','2021-12-09 04:23:49.890506',NULL,6),(267,'157.45.41.189','2021-12-09 04:31:12.407115',NULL,6),(268,'157.45.41.189','2021-12-09 04:43:28.310427',NULL,6),(269,'157.45.41.189','2021-12-09 04:44:30.416510',NULL,6),(270,'157.45.41.189','2021-12-09 04:55:53.324852','2021-12-09 04:55:53.324852',6),(271,'157.45.41.189','2021-12-09 04:59:58.160199','2021-12-09 04:59:58.160199',6),(272,'157.45.41.189','2021-12-09 05:02:09.033272','2021-12-09 05:02:09.033272',6),(273,'157.45.41.189','2021-12-09 05:03:19.621834','2021-12-09 05:03:19.621834',6),(274,'157.45.41.189','2021-12-09 05:03:48.444849',NULL,6),(275,'157.45.41.189','2021-12-09 05:04:08.735568','2021-12-09 05:04:08.735568',6),(276,'157.45.41.189','2021-12-09 05:04:48.886085',NULL,6),(277,'157.45.41.189','2021-12-09 05:04:56.463860','2021-12-09 05:04:56.463860',6),(278,'157.50.15.243','2021-12-09 17:22:31.228644',NULL,6),(279,'157.45.209.105','2022-01-27 21:27:39.281284',NULL,7),(280,'157.45.195.26','2022-01-28 08:23:19.354175',NULL,7),(281,'157.45.195.26','2022-01-28 10:49:24.116466','2022-01-28 10:49:24.111454',7),(282,'157.45.195.26','2022-01-28 10:49:32.643194',NULL,7),(283,'157.45.195.26','2022-01-28 12:25:14.069549',NULL,7),(284,'157.45.195.26','2022-01-28 12:30:20.969174','2022-01-28 12:30:20.969174',7),(285,'127.0.0.1','2022-01-28 13:49:29.588664',NULL,7),(286,'127.0.0.1','2022-01-30 20:30:56.226449',NULL,7),(287,'157.45.201.61','2022-01-30 21:24:58.606708','2022-01-30 21:24:58.604712',7),(288,'127.0.0.1','2022-01-31 00:26:29.673140',NULL,7),(289,'157.45.201.61','2022-01-31 04:25:41.693932','2022-01-31 04:25:41.686983',7),(290,'127.0.0.1','2022-01-31 11:27:46.320723',NULL,7),(291,'157.45.168.158','2022-01-31 13:35:43.853248','2022-01-31 13:35:43.849689',7),(292,'127.0.0.1','2022-01-31 14:06:34.964851',NULL,7),(293,'157.45.168.158','2022-01-31 14:30:20.007639','2022-01-31 14:30:20.007639',7),(294,'127.0.0.1','2022-01-31 14:32:26.808979',NULL,7),(295,'157.45.168.158','2022-01-31 14:35:35.737831','2022-01-31 14:35:35.737831',7),(296,'127.0.0.1','2022-01-31 19:57:38.594641',NULL,7),(297,'157.45.54.157','2022-01-31 19:58:13.311866','2022-01-31 19:58:13.311866',7),(298,'127.0.0.1','2022-02-03 12:19:09.858603',NULL,3),(299,'127.0.0.1','2022-02-03 14:23:14.479362',NULL,3),(300,'127.0.0.1','2022-02-03 15:22:45.891515',NULL,3),(301,'127.0.0.1','2022-02-03 18:25:05.185230',NULL,3),(302,'127.0.0.1','2022-02-03 18:26:18.023744',NULL,3),(303,'127.0.0.1','2022-02-03 20:47:53.061504',NULL,3),(304,'127.0.0.1','2022-02-03 20:51:11.607977',NULL,3),(305,'127.0.0.1','2022-02-03 20:55:13.773122',NULL,3),(306,'157.45.68.175','2022-02-03 20:58:12.357143','2022-02-03 20:58:12.355980',3),(307,'127.0.0.1','2022-02-03 20:58:20.951116',NULL,3),(308,'127.0.0.1','2022-02-03 21:02:26.217421',NULL,3),(309,'127.0.0.1','2022-02-03 21:11:26.611611',NULL,3),(310,'127.0.0.1','2022-02-03 21:13:45.575582',NULL,3),(311,'127.0.0.1','2022-02-04 11:48:21.033310',NULL,3),(312,'127.0.0.1','2022-02-04 11:50:17.954876',NULL,3),(313,'127.0.0.1','2022-02-04 11:52:29.787225',NULL,3),(314,'157.45.43.140','2022-02-04 19:49:31.916383','2022-02-04 19:49:31.910435',3),(315,'127.0.0.1','2022-02-04 19:49:40.914994',NULL,3),(316,'127.0.0.1','2022-02-05 01:41:22.385440',NULL,3),(317,'157.45.141.132','2022-02-05 01:47:21.884682','2022-02-05 01:47:21.884682',3),(318,'127.0.0.1','2022-02-05 01:47:30.237130',NULL,3),(319,'157.45.141.132','2022-02-05 01:47:46.599401','2022-02-05 01:47:46.599401',3),(320,'127.0.0.1','2022-02-05 01:47:55.180306',NULL,3),(321,'157.45.141.132','2022-02-05 01:55:27.524151','2022-02-05 01:55:27.522107',3),(322,'127.0.0.1','2022-02-05 01:55:41.678925',NULL,3),(323,'157.45.141.132','2022-02-05 02:04:48.262028','2022-02-05 02:04:48.262028',3),(324,'127.0.0.1','2022-02-05 02:04:55.806221',NULL,3),(325,'157.45.141.132','2022-02-05 02:47:19.408237','2022-02-05 02:47:19.406241',3),(326,'127.0.0.1','2022-02-05 09:53:05.865988',NULL,3),(327,'157.45.94.179','2022-02-05 14:05:29.604314','2022-02-05 14:05:29.597332',3),(328,'127.0.0.1','2022-02-05 14:05:38.194939',NULL,3),(329,'127.0.0.1','2022-02-06 19:20:33.019218',NULL,3),(330,'127.0.0.1','2022-02-06 19:21:00.266725',NULL,3),(331,'127.0.0.1','2022-02-06 19:22:50.087867',NULL,3),(332,'127.0.0.1','2022-02-06 19:23:45.607051',NULL,3),(333,'157.45.210.231','2022-02-06 19:23:51.769994','2022-02-06 19:23:51.769994',3),(334,'127.0.0.1','2022-02-06 19:24:47.967302',NULL,3),(335,'127.0.0.1','2022-02-09 15:06:34.855656',NULL,3),(336,'127.0.0.1','2022-02-09 20:17:16.567862',NULL,3),(337,'157.45.58.203','2022-02-09 23:34:33.907552','2022-02-09 23:34:33.892548',3),(338,'127.0.0.1','2022-02-10 12:17:21.792202',NULL,3),(339,'157.45.182.35','2022-02-11 00:06:29.208352','2022-02-11 00:06:29.200854',3),(340,'127.0.0.1','2022-02-12 18:42:04.511919',NULL,3),(341,'157.45.189.184','2022-02-12 23:46:44.542465','2022-02-12 23:46:44.533782',3),(342,'127.0.0.1','2022-02-13 15:20:19.220979',NULL,3),(343,'157.45.93.178','2022-02-14 00:19:49.304918','2022-02-14 00:19:49.292950',3),(344,'127.0.0.1','2022-02-14 23:05:10.885530',NULL,3),(345,'127.0.0.1','2022-02-15 12:10:43.735003',NULL,3),(346,'157.50.58.61','2022-02-15 23:14:31.695650','2022-02-15 23:14:31.688632',3),(347,'127.0.0.1','2022-02-16 12:36:44.541829',NULL,3),(348,'157.45.236.63','2022-02-16 22:47:22.805463','2022-02-16 22:47:22.797558',3),(349,'127.0.0.1','2022-02-17 14:49:20.379198',NULL,3),(350,'127.0.0.1','2022-02-18 12:58:33.004468',NULL,3),(351,'127.0.0.1','2022-02-18 13:01:01.005125',NULL,3),(352,'127.0.0.1','2022-02-18 13:56:12.410949',NULL,3),(353,'127.0.0.1','2022-02-18 16:00:28.356125',NULL,3),(354,'127.0.0.1','2022-02-18 23:59:16.275712',NULL,3),(355,'157.50.39.24','2022-02-19 00:46:09.721842','2022-02-19 00:46:09.719013',3),(356,'127.0.0.1','2022-02-19 19:46:46.597054',NULL,3),(357,'157.45.159.210','2022-02-20 00:09:31.200075','2022-02-20 00:09:31.190067',3),(358,'127.0.0.1','2022-02-20 13:33:00.551208',NULL,3),(359,'157.45.243.6','2022-02-20 13:56:18.703403','2022-02-20 13:56:18.703403',3),(360,'127.0.0.1','2022-02-20 20:07:51.837053',NULL,3),(361,'127.0.0.1','2022-02-21 21:02:42.168368',NULL,3),(362,'127.0.0.1','2022-02-22 14:17:35.953467',NULL,3),(363,'127.0.0.1','2022-02-24 00:06:34.557994',NULL,3),(364,'157.45.75.156','2022-02-24 01:23:50.507068','2022-02-24 01:23:50.499208',3),(365,'127.0.0.1','2022-02-24 14:41:28.331648',NULL,3),(366,'127.0.0.1','2022-02-24 18:31:37.010255',NULL,3),(367,'127.0.0.1','2022-02-26 00:08:47.267208',NULL,3),(368,'127.0.0.1','2022-02-26 12:07:59.021831',NULL,3),(369,'157.50.0.148','2022-02-27 01:11:18.742940','2022-02-27 01:11:18.735923',3),(370,'127.0.0.1','2022-02-27 22:20:46.596979',NULL,3),(371,'127.0.0.1','2022-03-01 13:08:08.693664',NULL,3),(372,'127.0.0.1','2022-03-02 16:05:56.392478',NULL,3),(373,'127.0.0.1','2022-03-04 11:01:50.115315',NULL,3),(374,'127.0.0.1','2022-03-05 17:20:39.358655',NULL,3),(375,'127.0.0.1','2022-03-06 12:43:58.617230',NULL,3),(376,'127.0.0.1','2022-03-06 19:12:53.930698',NULL,3),(377,'127.0.0.1','2022-03-07 17:23:02.764126',NULL,3),(378,'127.0.0.1','2022-03-08 12:15:51.446968',NULL,3),(379,'127.0.0.1','2022-03-10 08:15:34.875969',NULL,3),(380,'171.61.97.3','2022-03-10 08:15:46.716294','2022-03-10 08:15:46.716294',3),(381,'127.0.0.1','2022-03-10 08:16:02.316276',NULL,3),(382,'127.0.0.1','2022-03-12 21:57:33.240267',NULL,8),(383,'122.167.88.113','2022-03-12 22:08:44.471361','2022-03-12 22:08:44.471361',8),(384,'127.0.0.1','2022-03-12 22:08:56.717287',NULL,9),(385,'122.167.88.113','2022-03-12 22:10:04.164469','2022-03-12 22:10:04.164469',9),(386,'127.0.0.1','2022-03-12 22:10:15.525453',NULL,10),(387,'122.167.88.113','2022-03-12 22:10:37.549512','2022-03-12 22:10:37.549512',10),(388,'127.0.0.1','2022-03-12 22:11:22.987241',NULL,8),(389,'122.167.88.113','2022-03-13 01:24:50.694798','2022-03-13 01:24:50.688826',8),(390,'127.0.0.1','2022-03-13 01:25:05.505561',NULL,8),(391,'127.0.0.1','2022-03-13 17:46:28.972990',NULL,8),(392,'127.0.0.1','2022-03-14 10:22:19.272759',NULL,8),(393,'171.76.117.236','2022-03-14 11:50:47.324313','2022-03-14 11:50:47.319288',8),(394,'127.0.0.1','2022-03-17 09:42:21.160135',NULL,8),(395,'157.45.68.144','2022-03-17 17:03:42.433401','2022-03-17 17:03:42.423429',8),(396,'127.0.0.1','2022-03-17 17:09:36.777847',NULL,8),(397,'106.200.253.46','2022-03-17 17:35:37.086059','2022-03-17 17:35:37.086059',8),(398,'127.0.0.1','2022-03-21 11:02:35.999808',NULL,3),(399,'127.0.0.1','2022-03-22 23:19:18.086873',NULL,3),(400,'127.0.0.1','2022-03-23 10:42:26.239140',NULL,3),(401,'171.61.88.208','2022-03-23 19:00:38.401629','2022-03-23 19:00:38.401280',3),(402,'127.0.0.1','2022-03-23 19:00:50.039502',NULL,3),(403,'157.45.133.132','2022-03-23 19:01:29.910469','2022-03-23 19:01:29.910469',3),(404,'127.0.0.1','2022-03-23 19:01:38.880203',NULL,3),(405,'127.0.0.1','2022-03-24 10:16:19.697563',NULL,3),(406,'127.0.0.1','2022-03-25 09:11:34.913787',NULL,3),(407,'127.0.0.1','2022-03-28 11:31:06.348711',NULL,3),(408,'127.0.0.1','2022-03-28 11:31:21.899523',NULL,3),(409,'157.45.175.106','2022-03-29 00:25:20.679434','2022-03-29 00:25:20.673486',3),(410,'127.0.0.1','2022-03-29 00:44:58.076861',NULL,11),(411,'127.0.0.1','2022-03-29 00:53:42.933781',NULL,11),(412,'127.0.0.1','2022-03-29 19:36:08.447243',NULL,3),(413,'127.0.0.1','2022-03-31 12:26:54.404654',NULL,3),(414,'127.0.0.1','2022-04-05 18:39:23.085045',NULL,3),(415,'127.0.0.1','2022-04-05 18:39:54.887280',NULL,11),(416,'127.0.0.1','2022-04-07 16:28:23.975883',NULL,11),(417,'127.0.0.1','2022-04-07 16:28:48.795515',NULL,11),(418,'106.51.78.109','2022-04-07 23:02:19.029896','2022-04-07 23:02:19.022727',11),(419,'127.0.0.1','2022-04-08 11:59:35.626454',NULL,11),(420,'106.51.78.109','2022-04-08 12:50:30.726467','2022-04-08 12:50:30.726467',11),(421,'127.0.0.1','2022-04-08 12:51:01.172386',NULL,11),(422,'106.51.78.109','2022-04-08 19:53:36.049538','2022-04-08 19:53:36.034165',11),(423,'127.0.0.1','2022-04-08 19:54:45.964382',NULL,11),(424,'127.0.0.1','2022-04-11 16:48:31.514982',NULL,11),(425,'106.51.78.109','2022-04-11 17:26:46.345810','2022-04-11 17:26:46.345810',11),(426,'127.0.0.1','2022-04-11 19:04:49.625080',NULL,12),(427,'106.51.78.109','2022-04-11 19:39:12.729265','2022-04-11 19:39:12.729265',12),(428,'127.0.0.1','2022-04-11 19:39:23.175740',NULL,12),(429,'127.0.0.1','2022-04-11 21:26:53.526221',NULL,12),(430,'127.0.0.1','2022-04-11 23:51:09.535831',NULL,12),(431,'127.0.0.1','2022-04-12 10:44:47.224046',NULL,12),(432,'106.51.78.109','2022-04-12 11:02:07.472613','2022-04-12 11:02:07.472613',12),(433,'127.0.0.1','2022-04-12 11:22:10.271918',NULL,12),(434,'127.0.0.1','2022-04-13 15:30:28.252366',NULL,12),(435,'106.51.78.109','2022-04-13 15:41:30.339384','2022-04-13 15:41:30.339384',12),(436,'127.0.0.1','2022-04-13 15:42:01.495715',NULL,12),(437,'106.51.78.109','2022-04-13 20:15:01.798992','2022-04-13 20:15:01.796408',12),(438,'127.0.0.1','2022-04-14 12:30:58.450797',NULL,11),(439,'106.51.78.109','2022-04-14 12:37:50.441544','2022-04-14 12:37:50.441544',11),(440,'127.0.0.1','2022-04-14 12:38:02.971853',NULL,11),(441,'106.51.78.109','2022-04-14 12:51:12.245777','2022-04-14 12:51:12.244781',11),(442,'127.0.0.1','2022-04-18 18:58:06.829509',NULL,12),(443,'106.51.78.109','2022-04-19 13:13:16.772730','2022-04-19 13:13:16.763755',12),(444,'127.0.0.1','2022-04-19 15:04:20.532020',NULL,12),(445,'106.51.78.109','2022-04-19 15:32:59.368855','2022-04-19 15:32:59.368855',12),(446,'127.0.0.1','2022-04-20 11:09:34.946233',NULL,12),(447,'106.51.78.109','2022-04-20 11:18:09.291478','2022-04-20 11:18:09.291478',12),(448,'127.0.0.1','2022-04-20 11:18:23.766481',NULL,3),(449,'106.51.78.109','2022-04-20 13:34:53.750497','2022-04-20 13:34:53.748504',3),(450,'127.0.0.1','2022-04-20 13:35:04.520576',NULL,12),(451,'106.51.78.109','2022-04-20 23:39:05.906026','2022-04-20 23:39:05.902997',12),(452,'127.0.0.1','2022-04-21 08:39:53.662700',NULL,12),(453,'127.0.0.1','2022-04-22 10:14:29.243992',NULL,12),(454,'127.0.0.1','2022-04-23 14:15:50.060112',NULL,12),(455,'106.51.78.109','2022-04-23 14:31:36.243607','2022-04-23 14:31:36.243607',12),(456,'127.0.0.1','2022-04-26 10:51:03.467587',NULL,3),(457,'106.51.78.109','2022-04-26 11:01:21.378867','2022-04-26 11:01:21.378867',3),(458,'127.0.0.1','2022-04-26 11:01:32.906723',NULL,12),(459,'106.51.78.109','2022-04-26 23:09:34.795143','2022-04-26 23:09:34.775233',12),(460,'127.0.0.1','2022-04-27 08:17:23.228655',NULL,12),(461,'157.45.127.165','2022-04-27 08:22:09.927863','2022-04-27 08:22:09.927863',12),(462,'127.0.0.1','2022-04-27 08:22:20.374342',NULL,12),(463,'157.45.127.165','2022-04-27 18:27:03.392356','2022-04-27 18:27:03.388079',12),(464,'127.0.0.1','2022-04-27 18:27:13.647877',NULL,12),(465,'127.0.0.1','2022-04-28 08:31:49.428659',NULL,3),(466,'157.50.0.198','2022-04-28 08:31:54.639419','2022-04-28 08:31:54.639419',3),(467,'127.0.0.1','2022-04-28 08:32:05.210764',NULL,12),(468,'157.50.0.198','2022-04-28 16:26:39.583647','2022-04-28 16:26:39.580655',12),(469,'127.0.0.1','2022-04-28 16:26:53.684451',NULL,12),(470,'106.51.78.109','2022-04-28 20:02:58.167130','2022-04-28 20:02:58.162310',12),(471,'127.0.0.1','2022-04-29 20:03:27.885871',NULL,3),(472,'106.51.78.109','2022-04-29 20:25:38.719992','2022-04-29 20:25:38.719992',3),(473,'127.0.0.1','2022-05-05 07:30:49.720036',NULL,11),(474,'157.45.22.61','2022-05-05 07:56:36.910104','2022-05-05 07:56:36.910104',11),(475,'127.0.0.1','2022-05-05 07:56:55.690932',NULL,11),(476,'127.0.0.1','2022-05-06 14:51:32.270046',NULL,11),(477,'106.51.78.109','2022-05-06 19:13:27.102331','2022-05-06 19:13:27.087075',11),(478,'127.0.0.1','2022-05-06 19:13:35.340577',NULL,3),(479,'127.0.0.1','2022-05-07 18:47:47.503897',NULL,3),(480,'127.0.0.1','2022-05-07 18:49:35.376737',NULL,11),(481,'106.51.78.109','2022-05-08 00:26:05.877709','2022-05-08 00:26:05.861752',11),(482,'127.0.0.1','2022-05-08 12:05:36.488578',NULL,11),(483,'127.0.0.1','2022-05-09 09:59:19.268475',NULL,11),(484,'106.51.78.109','2022-05-09 12:15:33.967171','2022-05-09 12:15:33.941108',11),(485,'127.0.0.1','2022-05-09 12:15:41.157150',NULL,11),(486,'106.51.78.109','2022-05-09 13:54:07.630481','2022-05-09 13:54:07.612721',11),(487,'127.0.0.1','2022-05-09 14:51:57.237031',NULL,10),(488,'106.51.78.109','2022-05-09 14:54:06.321729','2022-05-09 14:54:06.321729',10),(489,'127.0.0.1','2022-05-09 14:56:26.230018',NULL,8),(490,'127.0.0.1','2022-05-10 12:04:46.150676',NULL,8),(491,'127.0.0.1','2022-05-10 12:06:04.420198',NULL,8),(492,'106.51.78.109','2022-05-10 12:34:59.027166','2022-05-10 12:34:59.026172',8),(493,'127.0.0.1','2022-05-10 18:40:19.695720',NULL,11),(494,'127.0.0.1','2022-05-10 18:50:10.974178',NULL,11),(495,'106.51.78.109','2022-05-10 19:06:29.007314','2022-05-10 19:06:29.006352',11),(496,'106.51.78.109','2022-05-10 19:06:55.573934','2022-05-10 19:06:55.573934',11),(497,'127.0.0.1','2022-05-11 21:19:03.959866',NULL,11),(498,'157.50.39.51','2022-05-11 22:10:30.125718','2022-05-11 22:10:30.124721',11),(499,'127.0.0.1','2022-05-13 18:32:26.822401',NULL,5),(500,'106.51.78.109','2022-05-13 18:32:52.598342','2022-05-13 18:32:52.598342',5),(501,'127.0.0.1','2022-05-13 20:08:57.061156',NULL,5),(502,'127.0.0.1','2022-05-15 09:50:42.927742',NULL,11),(503,'106.51.78.109','2022-05-15 12:46:07.833286','2022-05-15 12:46:07.798531',11),(504,'127.0.0.1','2022-05-16 21:22:52.826079',NULL,11),(505,'127.0.0.1','2022-05-19 14:19:26.876540',NULL,3),(506,'106.51.78.109','2022-05-19 14:20:13.022183','2022-05-19 14:20:13.022183',3),(507,'127.0.0.1','2022-05-19 14:21:11.395041',NULL,3),(508,'127.0.0.1','2022-05-19 14:21:55.431522',NULL,5),(509,'106.51.78.109','2022-05-19 15:03:09.261269','2022-05-19 15:03:09.259272',3),(510,'106.51.78.109','2022-05-19 15:03:15.845142','2022-05-19 15:03:15.844113',5),(511,'127.0.0.1','2022-05-23 16:47:44.549766',NULL,8),(512,'106.51.78.109','2022-05-24 02:47:53.874172','2022-05-24 02:47:53.862104',8),(513,'127.0.0.1','2022-05-24 13:31:40.681119',NULL,8),(514,'106.51.78.109','2022-05-24 14:01:56.546163','2022-05-24 14:01:56.544102',8),(515,'127.0.0.1','2022-05-24 14:02:22.985283',NULL,8),(516,'106.51.78.109','2022-05-24 14:45:15.531745','2022-05-24 14:45:15.530292',8),(517,'127.0.0.1','2022-05-24 20:04:09.829067',NULL,11),(518,'106.51.78.109','2022-05-24 22:17:37.015326','2022-05-24 22:17:37.006764',11),(519,'127.0.0.1','2022-05-25 19:02:33.821766',NULL,11),(520,'106.51.78.109','2022-05-25 23:58:42.752357','2022-05-25 23:58:42.749340',11),(521,'127.0.0.1','2022-05-26 09:32:19.454582',NULL,11),(522,'157.45.139.37','2022-05-26 12:06:50.815547','2022-05-26 12:06:50.806527',11),(523,'127.0.0.1','2022-05-26 12:09:40.133277',NULL,11),(524,'127.0.0.1','2022-06-06 12:48:50.756316',NULL,11),(525,'127.0.0.1','2022-06-08 13:28:28.649343',NULL,6),(526,'106.51.78.109','2022-06-08 15:02:37.770059','2022-06-08 15:02:37.769061',6),(527,'127.0.0.1','2022-06-08 15:12:40.431370',NULL,6),(528,'127.0.0.1','2022-06-08 15:47:06.354655',NULL,6),(529,'106.51.78.109','2022-06-08 17:19:53.471524','2022-06-08 17:19:53.469526',6),(530,'106.51.78.109','2022-06-08 17:20:01.406499','2022-06-08 17:20:01.406499',6),(531,'127.0.0.1','2022-06-09 13:16:45.436445',NULL,11),(532,'127.0.0.1','2022-06-09 15:23:08.446274',NULL,8),(533,'127.0.0.1','2022-06-10 13:33:42.020882',NULL,8),(534,'106.51.78.109','2022-06-10 13:35:55.739987','2022-06-10 13:35:55.739987',8),(535,'127.0.0.1','2022-06-10 23:12:10.091672',NULL,14),(536,'106.51.78.109','2022-06-10 23:25:35.634485','2022-06-10 23:25:35.633485',14),(537,'127.0.0.1','2022-06-10 23:26:16.280717',NULL,14),(538,'106.51.78.109','2022-06-10 23:27:16.878516','2022-06-10 23:27:16.878516',14),(539,'127.0.0.1','2022-06-10 23:27:29.697595',NULL,14),(540,'127.0.0.1','2022-06-12 13:59:16.695378',NULL,14),(541,'127.0.0.1','2022-06-13 16:32:48.236933',NULL,14),(542,'127.0.0.1','2022-06-15 19:40:19.009482',NULL,14),(543,'127.0.0.1','2022-06-16 16:35:16.153273',NULL,14),(544,'127.0.0.1','2022-06-20 18:15:33.504465',NULL,11),(545,'182.75.83.86','2022-06-20 23:26:38.407131','2022-06-20 23:26:38.402131',11),(546,'127.0.0.1','2022-06-21 14:29:45.907607',NULL,12),(547,'182.75.83.86','2022-06-21 23:49:37.017996','2022-06-21 23:49:37.014880',12),(548,'127.0.0.1','2022-06-24 19:39:24.589410',NULL,3),(549,'127.0.0.1','2022-06-24 19:39:42.797237',NULL,11),(550,'182.75.83.86','2022-06-25 01:46:21.395631','2022-06-25 01:46:21.387628',11),(551,'127.0.0.1','2022-06-25 17:14:27.822469',NULL,11),(552,'127.0.0.1','2022-06-25 22:27:10.956267',NULL,11),(553,'106.51.78.109','2022-06-26 02:23:06.954711','2022-06-26 02:23:06.949707',11),(554,'127.0.0.1','2022-06-26 21:46:19.303091',NULL,11),(555,'106.51.78.109','2022-06-27 02:51:29.461677','2022-06-27 02:51:29.450631',11),(556,'127.0.0.1','2022-06-27 12:48:25.779527',NULL,11),(557,'127.0.0.1','2022-06-28 01:45:36.554802',NULL,12),(558,'127.0.0.1','2022-06-28 16:09:59.981226',NULL,12),(559,'157.45.140.29','2022-06-28 16:11:09.963410','2022-06-28 16:11:09.963410',12),(560,'127.0.0.1','2022-06-28 16:11:38.625240',NULL,12),(561,'127.0.0.1','2022-06-29 14:33:17.163766',NULL,3),(562,'127.0.0.1','2022-06-29 14:33:30.659656',NULL,11),(563,'127.0.0.1','2022-06-30 12:16:58.011400',NULL,12),(564,'106.51.78.109','2022-06-30 12:26:33.722880','2022-06-30 12:26:33.722880',12),(565,'127.0.0.1','2022-06-30 15:09:39.152680',NULL,11),(566,'106.51.78.109','2022-06-30 21:44:13.492365','2022-06-30 21:44:13.487365',11),(567,'127.0.0.1','2022-07-01 11:49:51.581276',NULL,11);
/*!40000 ALTER TABLE `user_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  `department_id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sub_model_id` int(11) NOT NULL,
  `sub_modules_id` int(11) NOT NULL,
  `tenants_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_department_id_a0204543_fk_departments_id` (`department_id`),
  KEY `user_roles_entities_id_1828d768_fk_entities_id` (`entities_id`),
  KEY `user_roles_groups_id_fc0c236a_fk_groups_id` (`groups_id`),
  KEY `user_roles_role_id_816a4486_fk_roles_id` (`role_id`),
  KEY `user_roles_sub_modules_id_b172261d_fk_sub_modules_id` (`sub_modules_id`),
  KEY `user_roles_tenants_id_55cda6ee_fk_tenants_id` (`tenants_id`),
  KEY `user_roles_sub_model_id_56dcecd8_fk_sub_models_id` (`sub_model_id`),
  CONSTRAINT `user_roles_department_id_a0204543_fk_departments_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `user_roles_entities_id_1828d768_fk_entities_id` FOREIGN KEY (`entities_id`) REFERENCES `entities` (`id`),
  CONSTRAINT `user_roles_groups_id_fc0c236a_fk_groups_id` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `user_roles_role_id_816a4486_fk_roles_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `user_roles_sub_model_id_56dcecd8_fk_sub_models_id` FOREIGN KEY (`sub_model_id`) REFERENCES `sub_models` (`id`),
  CONSTRAINT `user_roles_sub_modules_id_b172261d_fk_sub_modules_id` FOREIGN KEY (`sub_modules_id`) REFERENCES `sub_modules` (`id`),
  CONSTRAINT `user_roles_tenants_id_55cda6ee_fk_tenants_id` FOREIGN KEY (`tenants_id`) REFERENCES `tenants` (`id`),
  CONSTRAINT `user_roles_chk_1` CHECK ((`created_by` >= 0)),
  CONSTRAINT `user_roles_chk_2` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,13,1,1),(2,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,14,2,1),(3,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,1,3,1),(4,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,17,4,1),(5,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,18,5,1),(6,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,19,6,1),(7,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,2,1,1,1),(8,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,2,1,2,1),(9,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,2,3,1),(10,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,3,3,1),(11,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,8,3,1),(12,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,9,3,1),(13,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,10,3,1),(14,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,11,3,1),(15,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,12,3,1),(16,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,4,2,1),(17,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,5,2,1),(18,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,6,2,1),(19,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,7,2,1),(20,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,15,2,1),(21,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,16,2,1),(23,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,20,3,1),(24,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,21,3,1),(25,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,22,3,1),(26,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,23,7,1),(27,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,24,8,1),(28,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,25,9,1),(29,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,26,3,1),(30,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,27,6,1),(31,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,28,3,1),(32,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,3,3,1),(33,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,20,3,1),(34,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,21,3,1),(35,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,22,3,1),(36,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,26,3,1),(37,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,28,3,1),(38,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,29,10,1),(39,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,30,10,1),(40,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,31,10,1),(41,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,32,10,1),(42,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,33,10,1),(43,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,34,10,1),(44,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,35,10,1),(45,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,36,10,1),(46,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,37,10,1),(47,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,38,11,1),(48,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,39,11,1),(49,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,40,11,1),(50,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,41,11,1),(51,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,42,11,1),(52,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,43,11,1),(53,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,44,11,1),(54,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,45,11,1),(55,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,46,11,1),(56,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,47,12,1),(57,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,48,12,1),(58,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,49,12,1),(59,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,50,12,1),(60,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,51,12,1),(61,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,52,12,1),(62,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,53,12,1),(63,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,54,12,1),(64,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,55,12,1),(65,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,56,13,1),(66,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,57,13,1),(67,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,58,13,1),(68,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,59,13,1),(69,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,60,13,1),(70,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,61,13,1),(71,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,62,13,1),(72,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,63,13,1),(73,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,64,13,1),(74,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,65,10,1),(75,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,70,5,1),(76,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,71,5,1),(77,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,72,5,1),(78,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,73,5,1),(79,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,74,5,1),(80,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,75,5,1),(81,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,76,5,1),(82,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,77,5,1),(83,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,66,11,1),(84,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,67,12,1),(85,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,68,13,1),(86,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,69,5,1),(87,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,78,10,1),(88,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,79,10,1),(89,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,80,11,1),(90,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,81,11,1),(91,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,82,11,1),(92,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,18,5,1),(93,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,70,5,1),(94,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,71,5,1),(95,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,72,5,1),(96,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,73,5,1),(97,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,74,5,1),(98,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,75,5,1),(99,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,76,5,1),(100,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,77,5,1),(101,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,69,5,1),(102,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,83,5,1),(103,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,84,5,1),(104,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,85,5,1),(105,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,86,5,1),(106,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,8,87,14,1),(107,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,8,88,14,1),(108,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,8,89,14,1),(109,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,8,90,14,1),(110,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,8,91,14,1),(111,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,8,92,14,1),(112,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,7,93,5,1),(113,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,83,5,1),(114,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,84,5,1),(115,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,85,5,1),(116,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,86,5,1),(117,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',3,1,1,1,93,5,1),(118,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,8,94,14,1),(119,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,5,95,15,1),(120,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,5,96,15,1),(121,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,97,15,1),(122,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,95,15,1),(123,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,96,15,1),(124,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,98,15,1),(125,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',13,1,1,6,106,15,1),(201,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',14,1,1,9,99,16,2),(202,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',14,1,1,9,100,16,2),(203,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',14,1,1,9,103,16,2),(204,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',15,1,1,10,101,16,2),(205,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',15,1,1,10,104,16,2),(206,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',16,1,1,11,102,16,2),(207,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',16,1,1,11,105,16,2),(280,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,4,2,1),(281,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,5,2,1),(282,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,6,2,1),(283,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,7,2,1),(284,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,14,2,1),(285,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,15,2,1),(286,0,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,16,2,1),(287,1,0,'2021-03-08 22:20:57.375798',0,'2021-03-08 22:20:57.375798',17,1,1,11,107,2,1),(288,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,40,11,3),(299,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,46,11,3),(300,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,66,11,3),(301,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,80,11,3),(302,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,81,11,3),(303,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,108,11,3),(304,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,109,11,3),(305,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,12,110,11,3),(306,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,1,1,13,111,12,1),(307,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,1,1,13,112,12,1),(308,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,1,1,13,113,12,1),(309,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,1,3,11,114,2,1),(310,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,14,3,3,3),(311,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,14,20,3,3),(312,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,14,21,3,3),(313,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,14,22,3,3),(314,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,14,26,3,3),(315,1,0,'2022-04-11 22:20:57.375798',0,'2022-04-11 22:20:57.375798',16,4,3,14,28,3,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `username` varchar(64) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` smallint(5) unsigned DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` smallint(5) unsigned DEFAULT NULL,
  `modified_date` datetime(6) NOT NULL,
  `departments_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `types_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_departments_id_0a53123a_fk_departments_id` (`departments_id`),
  KEY `users_role_id_1900a745_fk_roles_id` (`role_id`),
  KEY `users_types_id_b63ba7af_fk_types_id` (`types_id`),
  CONSTRAINT `users_departments_id_0a53123a_fk_departments_id` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `users_role_id_1900a745_fk_roles_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `users_types_id_b63ba7af_fk_types_id` FOREIGN KEY (`types_id`) REFERENCES `types` (`id`),
  CONSTRAINT `users_chk_1` CHECK ((`created_by` >= 0)),
  CONSTRAINT `users_chk_2` CHECK ((`modified_by` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('pbkdf2_sha256$216000$Ee4Kt7ek1c1U$VUWtWIYRMoxnY+sqVZtubf2WXQ9dNglsoYpL+pV+s9A=',NULL,0,1,'appadmin@adventbizsolutions.com','Appadmin',0,1,NULL,'2021-05-30 17:58:49.674507',NULL,'2021-05-30 17:58:49.674507',3,1,4),('pbkdf2_sha256$260000$NT1eWibMVhlrmNqSIcBtk8$aCoTNC464aqii8xYZthcFVzoCkWER/HbdQDAuhQ0kkI=',NULL,0,2,'prinka@adventbizsolutions.com','Prinka',0,1,NULL,'2021-06-29 15:29:23.072480',NULL,'2021-06-29 15:29:23.072480',1,2,NULL),('pbkdf2_sha256$216000$ELWAjKBsWnNH$TN7M1ATLKDifJKdNJH8PUMLlXVm3QD7Ot+xnsNDTxVU=',NULL,0,3,'sannabasappa@teamlease.com','Sannabasappa',0,1,NULL,'2021-07-27 22:36:05.641349',NULL,'2021-07-27 22:36:05.641349',13,6,1),('pbkdf2_sha256$216000$Hq8F1P15cP25$vquCQxPpS4jvdJeqOBb57HoVo6KV5tDpdGyBEo+elV0=',NULL,0,4,'hariprasad.gowda@teamlease.com','Hariprasad',0,1,NULL,'2021-07-28 00:43:54.959558',NULL,'2021-07-28 00:43:54.959558',13,6,2),('pbkdf2_sha256$216000$Wmuk8X2zlTND$yQEU0gdyviiRaYWNg5MZCipQr5ODAC4jQkLCOgoHLU8=',NULL,0,5,'lakshmanna@teamlease.com','Lakshmanna',0,1,NULL,'2021-09-07 23:28:59.133009',NULL,'2021-09-07 23:28:59.133009',13,7,1),('pbkdf2_sha256$216000$PPZy18TP9lIk$uxtcPJwnMG6GyEZ4/xYAIjD441AU47/aSwiHht8mO3k=',NULL,0,6,'vc.srikanth@teamlease.com','V.C.Srikanth',0,1,NULL,'2021-09-30 17:11:10.102343',NULL,'2021-09-30 17:11:10.102343',13,8,1),('pbkdf2_sha256$216000$2XLfmK2fD3Ak$2ORZdYWq2YaV+N7uz5Q6jmehYggPftL35yO5IKA6OGw=',NULL,0,7,'vikram@teamlease.com','Vikram Peter',0,1,NULL,'2022-01-27 21:25:09.497233',NULL,'2022-01-27 21:25:09.497233',13,5,4),('pbkdf2_sha256$216000$esoFegzZ7pRU$5Fuyo25Bkdu99vR000OqQYNoSxmpIV03UG7YQeRD/iM=',NULL,0,8,'operationuser@wackerindia.com','Operation',0,1,NULL,'2022-03-12 21:35:12.662993',NULL,'2022-03-12 21:35:12.662993',14,9,4),('pbkdf2_sha256$216000$XR1wHlMd37Tc$WApl5ZWTdkdCl0Uo7uG4EJNOy2BFO1e6XMxJRAz4Z9U=',NULL,0,9,'agentuser@xyzlogistics.com','Agent',0,1,NULL,'2022-03-12 21:37:11.834525',NULL,'2022-03-12 21:37:11.834525',15,10,4),('pbkdf2_sha256$216000$equYuAaLg5PW$5DDq9GoPzE9BgWj3nGFW/pJQIxePxWhu7NNRgkWKa0I=',NULL,0,10,'financeuser@wackerindia.com','Finance',0,1,NULL,'2022-03-12 21:37:58.670924',NULL,'2022-03-12 21:37:58.670924',16,11,4),('pbkdf2_sha256$216000$ZhcDqfJlsk7m$f6JQD0ENleualmLz3lbXntrJFSx8caV8oad5cR2OV4c=',NULL,0,11,'shyamala.narasimhan@teamlease.com','Shyamala',0,1,NULL,'2022-03-29 00:31:55.047882',NULL,'2022-03-29 00:31:55.047882',17,11,4),('pbkdf2_sha256$216000$7GmiH5rgZ03p$U6IgwpANByUEOinfLuwr6DDMF2LLh81QDI+6GEh5Pew=',NULL,0,12,'Milind.Bedekar@thermaxglobal.com','Milind',0,1,NULL,'2022-04-11 18:27:43.340212',NULL,'2022-04-11 18:27:43.340212',16,12,4),('pbkdf2_sha256$216000$3nt1svCTloEx$YIEYUF4z8kR2H5u+V6jDhmPBb9fkuhQtQ7eK5B3EYLA=',NULL,0,13,'sankar.raghunathan@teamlease.com','Sankar',0,1,NULL,'2022-05-12 12:01:26.806318',NULL,'2022-05-12 12:01:26.806318',16,13,4),('pbkdf2_sha256$216000$3wZx8chWwVE0$97wdsmKJ1Jd93m9fCsjD2YdoEv+rpS7aLLf+7vRwZ28=',NULL,0,14,'Mahesh.Khandkar@thermaxglobal.com','Mahesh',0,1,NULL,'2022-06-10 12:23:35.568161',NULL,'2022-06-10 12:23:35.568161',16,14,4);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_groups_users_id_group_id_83a49e68_uniq` (`users_id`,`group_id`),
  KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_groups_users_id_1e682706_fk_users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_permissions`
--

DROP TABLE IF EXISTS `users_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_permissions_users_id_permission_id_d7a00931_uniq` (`users_id`,`permission_id`),
  KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_permissions_users_id_e1ed60a2_fk_users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_permissions`
--

LOCK TABLES `users_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'business_modules_one'
--

--
-- Dumping routines for database 'business_modules_one'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-05 12:42:01
