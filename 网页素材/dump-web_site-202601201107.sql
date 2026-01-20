-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: web_site
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.2

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
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 幻灯片',7,'add_slide'),(26,'Can change 幻灯片',7,'change_slide'),(27,'Can delete 幻灯片',7,'delete_slide'),(28,'Can view 幻灯片',7,'view_slide'),(29,'Can add 团队成员',8,'add_team'),(30,'Can change 团队成员',8,'change_team'),(31,'Can delete 团队成员',8,'delete_team'),(32,'Can view 团队成员',8,'view_team'),(33,'Can add 新闻分类',9,'add_category'),(34,'Can change 新闻分类',9,'change_category'),(35,'Can delete 新闻分类',9,'delete_category'),(36,'Can view 新闻分类',9,'view_category'),(37,'Can add 新闻列表',10,'add_news'),(38,'Can change 新闻列表',10,'change_news'),(39,'Can delete 新闻列表',10,'delete_news'),(40,'Can view 新闻列表',10,'view_news');
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
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$jwCR9R3PG40UWSIuZVhxx0$9fd5dTYf8BDfl6npA14hmpgG6KgbAdXvBlF7/6WQyJI=','2026-01-19 14:42:37.345633',1,'admin','','','admin@126.com',1,1,'2026-01-19 14:42:30.988262');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'企业资讯'),(2,'企业集团'),(3,'移动金融'),(4,'设计建筑');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-01-19 16:03:58.468774','1','Slide object (1)',1,'[{\"added\": {}}]',7,1),(2,'2026-01-19 16:08:05.626400','1','Slide object (1)',3,'',7,1),(3,'2026-01-19 16:11:31.320239','2','Slide object (2)',1,'[{\"added\": {}}]',7,1),(4,'2026-01-19 16:13:08.433595','3','Slide object (3)',1,'[{\"added\": {}}]',7,1),(5,'2026-01-19 16:13:44.612331','4','Slide object (4)',1,'[{\"added\": {}}]',7,1),(6,'2026-01-19 18:22:10.626357','1','Team object (1)',1,'[{\"added\": {}}]',8,1),(7,'2026-01-19 18:22:44.043871','2','Team object (2)',1,'[{\"added\": {}}]',8,1),(8,'2026-01-19 18:23:20.389138','3','Team object (3)',1,'[{\"added\": {}}]',8,1),(9,'2026-01-19 18:23:50.142410','4','Team object (4)',1,'[{\"added\": {}}]',8,1),(10,'2026-01-19 18:41:29.084179','1','Category object (1)',1,'[{\"added\": {}}]',9,1),(11,'2026-01-19 18:41:44.970437','2','Category object (2)',1,'[{\"added\": {}}]',9,1),(12,'2026-01-19 18:41:53.263463','3','Category object (3)',1,'[{\"added\": {}}]',9,1),(13,'2026-01-19 18:42:02.942668','4','Category object (4)',1,'[{\"added\": {}}]',9,1),(14,'2026-01-19 18:51:39.206630','1','News object (1)',1,'[{\"added\": {}}]',10,1),(15,'2026-01-19 18:53:24.049341','2','News object (2)',1,'[{\"added\": {}}]',10,1),(16,'2026-01-19 18:54:37.223791','3','News object (3)',1,'[{\"added\": {}}]',10,1),(17,'2026-01-19 19:17:00.564082','3','News object (3)',2,'[{\"changed\": {\"fields\": [\"\\u5185\\u5bb9\"]}}]',10,1),(18,'2026-01-19 19:17:08.246217','2','News object (2)',2,'[{\"changed\": {\"fields\": [\"\\u5185\\u5bb9\"]}}]',10,1),(19,'2026-01-19 19:17:17.561689','1','News object (1)',2,'[{\"changed\": {\"fields\": [\"\\u5185\\u5bb9\"]}}]',10,1),(20,'2026-01-20 07:57:11.735978','4','企业集团1',1,'[{\"added\": {}}]',10,1),(21,'2026-01-20 07:57:46.396431','5','企业集团2',1,'[{\"added\": {}}]',10,1),(22,'2026-01-20 07:58:15.817962','6','企业集团3',1,'[{\"added\": {}}]',10,1),(23,'2026-01-20 07:59:05.833377','7','移动金融1',1,'[{\"added\": {}}]',10,1),(24,'2026-01-20 07:59:28.593094','8','移动金融2',1,'[{\"added\": {}}]',10,1),(25,'2026-01-20 07:59:59.751625','9','移动金融3',1,'[{\"added\": {}}]',10,1),(26,'2026-01-20 08:00:36.173870','10','设计建筑1',1,'[{\"added\": {}}]',10,1),(27,'2026-01-20 08:00:56.039599','11','设计建筑2',1,'[{\"added\": {}}]',10,1),(28,'2026-01-20 09:22:37.793665','2','SEO网站的基本术语',2,'[{\"changed\": {\"fields\": [\"\\u5185\\u5bb9\"]}}]',10,1),(29,'2026-01-20 09:23:54.301052','2','SEO网站的基本术语',2,'[{\"changed\": {\"fields\": [\"\\u5185\\u5bb9\"]}}]',10,1),(30,'2026-01-20 09:29:15.290018','2','SEO网站的基本术语',2,'[{\"changed\": {\"fields\": [\"\\u5185\\u5bb9\"]}}]',10,1);
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
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'news','category'),(10,'news','news'),(6,'sessions','session'),(7,'slide','slide'),(8,'team','team');
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
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-01-19 14:42:03.886437'),(2,'auth','0001_initial','2026-01-19 14:42:04.183167'),(3,'admin','0001_initial','2026-01-19 14:42:04.320072'),(4,'admin','0002_logentry_remove_auto_add','2026-01-19 14:42:04.334286'),(5,'admin','0003_logentry_add_action_flag_choices','2026-01-19 14:42:04.342927'),(6,'contenttypes','0002_remove_content_type_name','2026-01-19 14:42:04.406599'),(7,'auth','0002_alter_permission_name_max_length','2026-01-19 14:42:04.450151'),(8,'auth','0003_alter_user_email_max_length','2026-01-19 14:42:04.473986'),(9,'auth','0004_alter_user_username_opts','2026-01-19 14:42:04.480805'),(10,'auth','0005_alter_user_last_login_null','2026-01-19 14:42:04.509415'),(11,'auth','0006_require_contenttypes_0002','2026-01-19 14:42:04.511224'),(12,'auth','0007_alter_validators_add_error_messages','2026-01-19 14:42:04.518028'),(13,'auth','0008_alter_user_username_max_length','2026-01-19 14:42:04.568124'),(14,'auth','0009_alter_user_last_name_max_length','2026-01-19 14:42:04.614039'),(15,'auth','0010_alter_group_name_max_length','2026-01-19 14:42:04.633301'),(16,'auth','0011_update_proxy_permissions','2026-01-19 14:42:04.641941'),(17,'auth','0012_alter_user_first_name_max_length','2026-01-19 14:42:04.676913'),(18,'sessions','0001_initial','2026-01-19 14:42:04.699402'),(19,'slide','0001_initial','2026-01-19 15:56:50.531714'),(20,'slide','0002_alter_slide_table','2026-01-19 15:56:50.539185'),(21,'slide','0003_alter_slide_options','2026-01-19 18:20:36.400653'),(22,'team','0001_initial','2026-01-19 18:20:36.414346'),(23,'news','0001_initial','2026-01-19 18:39:43.909385'),(24,'news','0002_news','2026-01-19 18:47:07.386119'),(25,'news','0003_news_update_time_alter_news_image','2026-01-20 07:53:54.788071'),(26,'news','0004_alter_news_content','2026-01-20 09:16:36.908440');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('dh3m1bg6su7l4owipwb2efwsif236y4q','.eJxVjM0OwiAQhN-FsyH8VcCjd5-B7LIgVQNJaU_Gd5cmPehlJplvZt4swLaWsPW0hJnYhUl2-s0Q4jPVHdAD6r3x2Oq6zMj3Cj9o57dG6XU9un8HBXoZa0VWkPFna1xEyNNwdE6jnCA7ESU5AuWsAeNthqSNskPQa_KEqAX7fAHcrzfh:1vhiyD:qcq2LDRNT0hX5ip07EKVuPDoLnH9t6hpq0_8R2UdnqU','2026-02-02 14:42:37.347511');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment_count` int NOT NULL,
  `publish_time` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_category_id_798ee23f_fk_categories_id` (`category_id`),
  CONSTRAINT `news_category_id_798ee23f_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'什么是伪静态','伪静态是相对真实静态来讲的，真实静态会生成一个html或htm后缀的文件，访客能够访问到真实存在的静态页面，而伪静态则没有生成实体静态页面文件，而仅仅是以.html一类的静态页面...\r\n网站建设过程中会遇到许多问题，南京网站制作和您分享一些关于网站设计过程中常见的问题。 1、链接都应该可以打开 有的时候用户打开一个链接页面会显示404，这是链接所指向的页','news/21.png',29,'2026-01-19 18:51:39.206147',1,'2026-01-20 07:53:54.752915'),(2,'SEO网站的基本术语','<h2>SEO（Search EngineOptimization，搜索引擎优化）是一种利用<a href=\"https://baike.baidu.com/item/%E6%90%9C%E7%B4%A2%E5%BC%95%E6%93%8E/104812?fromModule=lemma_inlink\" target=\"_blank\">搜索引擎</a>的内在规则，优化网站结构和内容，从而提升网站在搜索引擎结果中的自然排名的方法。其核心目标是提高网站的可见性，获得<a href=\"https://baike.baidu.com/item/%E5%93%81%E7%89%8C%E6%95%88%E7%9B%8A/5649515?fromModule=lemma_inlink\" target=\"_blank\">品牌效益</a>，并为企业或个人获取更多流量和市场竞争优势。SEO 的核心原理是优化<a href=\"https://baike.baidu.com/item/%E7%BD%91%E7%AB%99%E7%BB%93%E6%9E%84/11069102?fromModule=lemma_inlink\" target=\"_blank\">网站结构</a>、内容和外部链接，使其更符合搜索引擎的抓取和索引规则，从而提升可见度和流量。SEO 具有成本低、长期有效的优势，但受搜索算法更新影响较大，优化策略需不断调整。其应用广泛，涵盖电子商务、企业品牌推广、内容营销等多个领域。当前，SEO 研究不仅涉及技术优化，还关注用户搜索行为分析、算法公平性以及<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD/9180?fromModule=lemma_inlink\" target=\"_blank\">人工智能</a>对搜索排名的影响，为数字营销和信息检索提供重要支持。</h2>\r\n\r\n<h2>搜索引擎优化，简称SEO（Search Engine Optimization），是一种通过分析搜索引擎的排名规则，了解搜索引擎如何进行搜索、抓取网页以及如何确定特定关键词的排名的技术。SEO通过采用易于被搜索引擎引用的方法，针对性地优化网站，从而提高其在搜索引擎中的自然排名。这样可以吸引更多用户访问网站，增加网站的流量，提升网站的销售和宣传能力，进而增强网站的品牌效应&nbsp;[1-2]。</h2>\r\n\r\n<h2>网站搜索引擎优化的核心任务是了解并研究各大搜索引擎的工作机制，包括网页搜索、内容索引、关键词匹配等相关技术。基于这些技术，对网页内容进行优化，使其符合用户的浏览习惯，在不影响用户体验的前提下提升搜索引擎排名，从而增加网站访问量，最终提升网站的宣传效果或销售能力&nbsp;[3]。</h2>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>SEO</td>\r\n			<td>Search EngineOptimization，搜索引擎优化</td>\r\n		</tr>\r\n		<tr>\r\n			<td>核心目标</td>\r\n			<td>提高网站的可见性</td>\r\n		</tr>\r\n		<tr>\r\n			<td>核心原理</td>\r\n			<td>优化<a href=\"https://baike.baidu.com/item/%E7%BD%91%E7%AB%99%E7%BB%93%E6%9E%84/11069102?fromModule=lemma_inlink\" target=\"_blank\">网站结构</a>、内容和外部链接</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>搜索引擎优化的本质在于使搜索引擎更容易接纳并推荐网站内容。搜索引擎通常会对不同网站的内容进行比对，并通过浏览器以最完整、直接和快捷的方式将内容呈现给用户&nbsp;[4]。</h2>\r\n\r\n<h2><img alt=\"\" src=\"/media/uploads/2026/01/20/xeibxs.png\" style=\"height:375px; width:500px\" /></h2>','news/22.png',65,'2026-01-19 18:53:24.048880',1,'2026-01-20 09:29:15.269950'),(3,'网站建设中常见的五大问题','网站建设过程中会遇到许多问题，南京网站制作和您分享一些关于网站设计过程中常见的问题。 1、链接都应该可以打开 有的时候用户打开一个链接页面会显示404，这是链接所指向的页\r\n网站建设过程中会遇到许多问题，南京网站制作和您分享一些关于网站设计过程中常见的问题。 1、链接都应该可以打开 有的时候用户打开一个链接页面会显示404，这是链接所指向的页','news/23.png',45,'2026-01-19 18:54:37.223416',1,'2026-01-20 07:53:54.752915'),(4,'企业集团1','企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1企业集团1','news/11.jpg',0,'2026-01-20 07:57:11.735347',2,'2026-01-20 07:57:11.735360'),(5,'企业集团2','企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2企业集团2','news/12.jpg',0,'2026-01-20 07:57:46.395820',2,'2026-01-20 07:57:46.395834'),(6,'企业集团3','企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3企业集团3','news/13.jpg',0,'2026-01-20 07:58:15.817542',2,'2026-01-20 07:58:15.817553'),(7,'移动金融1','移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1移动金融1','news/14.jpg',0,'2026-01-20 07:59:05.832867',3,'2026-01-20 07:59:05.832879'),(8,'移动金融2','移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2移动金融2','news/15.jpg',0,'2026-01-20 07:59:28.592728',3,'2026-01-20 07:59:28.592738'),(9,'移动金融3','移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3移动金融3','news/16.jpg',0,'2026-01-20 07:59:59.751191',3,'2026-01-20 07:59:59.751201'),(10,'设计建筑1','设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1设计建筑1','news/17.jpg',0,'2026-01-20 08:00:36.173486',4,'2026-01-20 08:00:36.173496'),(11,'设计建筑2','设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2设计建筑2','news/18.jpg',0,'2026-01-20 08:00:56.039176',4,'2026-01-20 08:00:56.039187');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slide` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
INSERT INTO `slide` VALUES (2,'slides/bg1.jpg','十年高端网站设计经验，用创新点缀人生，让科技融入理想','科技创新大平台，智慧生活新引擎。依靠科技进步推进经济跨越式发展。用创新点缀人生，让科技融入理想'),(3,'slides/bg.jpg','用创新点缀人生，让科技融入理想','用创新点缀人生，让科技融入理想科技创新大平台，智慧生活新引擎。依靠科技进步推进经济跨越式发展'),(4,'slides/15.jpg','科技改变世界','立足科学发展，着力自主创新。加速科技进步，为全市经济社会发展提供有力支持。凝聚科技创意，成就创新梦想');
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'avatars/01.jpeg','前端工程师','Jack'),(2,'avatars/02.jpeg','后端工程师','George'),(3,'avatars/04.jpeg','UI设计师','John'),(4,'avatars/03.jpeg','项目架构师','David');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'web_site'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-20 11:07:04
