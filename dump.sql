-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_libro
-- ------------------------------------------------------
-- Server version	8.0.39

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add categoria',7,'add_categoria'),(26,'Can change categoria',7,'change_categoria'),(27,'Can delete categoria',7,'delete_categoria'),(28,'Can view categoria',7,'view_categoria'),(29,'Can add libro',8,'add_libro'),(30,'Can change libro',8,'change_libro'),(31,'Can delete libro',8,'delete_libro'),(32,'Can view libro',8,'view_libro'),(33,'Can add opinion',9,'add_opinion'),(34,'Can change opinion',9,'change_opinion'),(35,'Can delete opinion',9,'delete_opinion'),(36,'Can view opinion',9,'view_opinion'),(37,'Can add profile',10,'add_profile'),(38,'Can change profile',10,'change_profile'),(39,'Can delete profile',10,'delete_profile'),(40,'Can view profile',10,'view_profile'),(41,'Can add contacto',11,'add_contacto'),(42,'Can change contacto',11,'change_contacto'),(43,'Can delete contacto',11,'delete_contacto'),(44,'Can view contacto',11,'view_contacto');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$hhhod96lkVrxdr041LsVyc$LXvZpfOsH4qQThw9loSs9empLo2DYHpXUymC8o6EhiE=','2024-10-24 18:39:08.208056',1,'admin','','','neagestion@gmail.com',1,1,'2024-10-23 13:59:34.096555'),(2,'pbkdf2_sha256$870000$cyvB4T4wFPGu5IdYIn3tNg$aCWAI+3O7euY6OdkqTPyucA88OD2+LoW998sQ/iF72Y=','2024-10-23 22:10:22.524441',0,'Gustavo','','','gustavo_caballero1991@gmail.com',0,1,'2024-10-23 20:40:52.464398'),(3,'pbkdf2_sha256$870000$OOtJujWFCZ7YjT0lXgArdJ$hYIX5Ry5jElk2WGkAQfLpvBetT1JkoLNX7CPaVCzmCc=',NULL,0,'Caballero','','','gustycaballero1991@gmail.com',0,1,'2024-10-24 12:08:37.421064');
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
-- Table structure for table `blog_auth_profile`
--

DROP TABLE IF EXISTS `blog_auth_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_auth_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `blog_auth_profile_user_id_5d5f2f88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_auth_profile`
--

LOCK TABLES `blog_auth_profile` WRITE;
/*!40000 ALTER TABLE `blog_auth_profile` DISABLE KEYS */;
INSERT INTO `blog_auth_profile` VALUES (1,1,'default.jpg'),(2,2,'default.jpg');
/*!40000 ALTER TABLE `blog_auth_profile` ENABLE KEYS */;
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'blog_auth','profile'),(5,'contenttypes','contenttype'),(7,'libros','categoria'),(8,'libros','libro'),(9,'opiniones','opinion'),(11,'prueba1','contacto'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-10-23 13:22:28.475844'),(2,'auth','0001_initial','2024-10-23 13:22:29.391059'),(3,'admin','0001_initial','2024-10-23 13:22:29.601348'),(4,'admin','0002_logentry_remove_auto_add','2024-10-23 13:22:29.616973'),(5,'admin','0003_logentry_add_action_flag_choices','2024-10-23 13:22:29.626388'),(6,'contenttypes','0002_remove_content_type_name','2024-10-23 13:22:29.725613'),(7,'auth','0002_alter_permission_name_max_length','2024-10-23 13:22:29.809606'),(8,'auth','0003_alter_user_email_max_length','2024-10-23 13:22:29.845460'),(9,'auth','0004_alter_user_username_opts','2024-10-23 13:22:29.854435'),(10,'auth','0005_alter_user_last_login_null','2024-10-23 13:22:29.926716'),(11,'auth','0006_require_contenttypes_0002','2024-10-23 13:22:29.926716'),(12,'auth','0007_alter_validators_add_error_messages','2024-10-23 13:22:29.945666'),(13,'auth','0008_alter_user_username_max_length','2024-10-23 13:22:30.025167'),(14,'auth','0009_alter_user_last_name_max_length','2024-10-23 13:22:30.109237'),(15,'auth','0010_alter_group_name_max_length','2024-10-23 13:22:30.133037'),(16,'auth','0011_update_proxy_permissions','2024-10-23 13:22:30.148917'),(17,'auth','0012_alter_user_first_name_max_length','2024-10-23 13:22:30.257246'),(18,'blog_auth','0001_initial','2024-10-23 13:22:30.389536'),(19,'blog_auth','0002_remove_profile_imagen_profile_image','2024-10-23 13:22:30.447706'),(20,'libros','0001_initial','2024-10-23 13:22:30.574211'),(21,'opiniones','0001_initial','2024-10-23 13:22:30.768760'),(22,'prueba1','0001_initial','2024-10-23 13:22:30.797851'),(23,'sessions','0001_initial','2024-10-23 13:22:30.848151');
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
INSERT INTO `django_session` VALUES ('rv3qybbcwdnu6bygq4grlynkb91n8v1l','.eJxVjMsOgjAUBf-la9NQKvXi0j3fQO7ToqYkPFbGfxcSFro9M3Persd1yf0669QP4q4uuNPvRshPLTuQB5b76HksyzSQ3xV_0Nl3o-jrdrh_BxnnvNUWkOpLy-dExAZQAQWNyUKDQiYb0IgQoOHUxgiViBpDZAVL1tTgPl8JEjja:1t42jk:C2mB1X9Ntdlut0LJIJogdmW8gmbVzOjYCVCfWJWgjxA','2024-11-07 18:39:08.217920'),('yx50w2pjdx6qbffupr4t95mauzfs2blu','.eJxVjMsOgjAURP-la9PcPqDUpXu-gdxHK6gpCYWV8d-FhIXuJnPOzFsNuK3jsNW0DJOoq7Lq8tsR8jOVA8gDy33WPJd1mUgfij5p1f0s6XU73b-DEeu4r11LbDC3jbEMwaQc0VHXiWdAIN5DE2NOEqALLUJwhgCEyHN01qJXny_smDfs:1t3iAE:4SMeuciUBk_FvvatJU76-FC-G3fpC5uWsLivbYzhlHc','2024-11-06 20:41:06.863327');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_categoria`
--

DROP TABLE IF EXISTS `libros_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_categoria`
--

LOCK TABLES `libros_categoria` WRITE;
/*!40000 ALTER TABLE `libros_categoria` DISABLE KEYS */;
INSERT INTO `libros_categoria` VALUES (1,'Herr de Comunicacion'),(2,'Front-End'),(3,'Back-End'),(4,'Tutoriales');
/*!40000 ALTER TABLE `libros_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_libro`
--

DROP TABLE IF EXISTS `libros_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_libro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(20) NOT NULL,
  `autor` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_agregado` datetime(6) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `libros_libro_categoria_id_2d9d7810_fk_libros_categoria_id` (`categoria_id`),
  CONSTRAINT `libros_libro_categoria_id_2d9d7810_fk_libros_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `libros_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_libro`
--

LOCK TABLES `libros_libro` WRITE;
/*!40000 ALTER TABLE `libros_libro` DISABLE KEYS */;
INSERT INTO `libros_libro` VALUES (1,'Youtube','Google','YouTube es un sitio web de origen estadounidense dedicado a compartir videos. Presenta una variedad de clips de películas, programas de televisión y vídeos musicales, así como contenidos amateur como videoblogs. Las personas que crean contenido para esta plataforma generalmente son conocidas como youtubers. Wikipedia\r\nFundación: 14 de febrero de 2005, San Mateo, California, Estados Unidos\r\nFundadores: Jawed Karim, Steve Chen, Chad Hurley\r\nPropietario: Google\r\nOrganización principal: Google\r\nDirector ejecutivo: Neal Mohan (16 feb 2023–)\r\nOficinas centrales: San Bruno, California, Estados Unidos','2024-10-23 14:17:00.328700','libros/Herra-youtube.jfif',1),(2,'Discord','Discord Inc','Discord es un servicio de mensajería instantánea y chat de voz VolP. En esta plataforma, los usuarios tienen la capacidad de comunicarse por llamadas de voz, videollamadas, mensajes de texto, o con archivos y contenido multimedia en conversaciones privadas o como parte de comunidades llamadas «servidores».​ Wikipedia\r\nFecha del lanzamiento inicial: 13 de mayo de 2015\r\nLenguajes de programación: Python, JavaScript, TypeScript, C++, Rust, Elixir\r\nDesarrollador: Discord Inc.\r\nInterfaz gráfica predeterminada: Electron; Widget web\r\nLicencia: Freeware, software propietario\r\nPlataformas admitidas: macOS; Linux; iOS; Android; navegador web; Microsoft Windows; Xbox\r\nProgramado en: JavaScript; Elixir; Rust; Python; C++','2024-10-23 14:19:36.716966','libros/Herra-discord.jfif',1),(3,'Whatsapp','Jan Koum','WhatsApp Messenger —o simplemente WhatsApp— es una aplicación de mensajería instantánea para teléfonos inteligentes, propiedad de la empresa estadounidense Meta. Wikipedia\r\nFecha del lanzamiento inicial: febrero de 2009\r\nLenguaje de programación: Erlang\r\nAutor: Jan Koum\r\nDesarrollador: WhatsApp LLC; (Meta Platforms, Inc.)\r\nEstado actual: En desarrollo; con soporte, buena comunicación\r\nHistorial de versiones: iOS 23.21.0 Android 2.24.1.78\r\nLicencia: Propietaria','2024-10-23 14:21:50.896514','libros/Herra-Whatsapp.jfif',1),(4,'Facebook','Mark Zuckerberg','Fundadores: Mark Zuckerberg, Eduardo Saverin, Dustin Moskovitz, Chris Hughes\r\nFundación: febrero de 2004, Cambridge, Massachusetts, Estados Unidos\r\nCotización de las acciones: META (BCBA) $ 28.950,00 +25,00 (+0,09%)\r\n22 oct, 4:59 p. m. ART - Renuncia de responsabilidad\r\nOficinas centrales: Menlo Park, California, Estados Unidos\r\nFiliales: WhatsApp, Reality Labs, Meta Platforms Technologies · Ver más','2024-10-23 14:23:33.025989','libros/Herra-facebook.jfif',1),(5,'Twitter','Jack Dorsey','Twitter, Inc. fue una empresa de comunicaciones estadounidense que operaba varias plataformas de redes sociales, entre las que destacaban Twitter, Vine y Periscope. Wikipedia\r\nFundadores: Jack Dorsey, Biz Stone, Noah Glass, Evan Williams\r\nFundación: 21 de marzo de 2006, San Francisco, California, Estados Unidos\r\nOficinas centrales: San Francisco, California, Estados Unidos','2024-10-23 14:26:53.619780','libros/Herra-twitter.jfif',1),(6,'HTML','Lenguaje de programa','HTML5 es la quinta revisión importante del lenguaje básico de la World Wide Web, HTML. HTML5 específica dos variantes de sintaxis para HTML: una «clásica», HTML, y una variante XHTML conocida como sintaxis XHTML5 que deberá servirse con sintaxis XML.​​ Wikipedia\r\nLanzamiento inicial: 28 de octubre de 2014\r\nTipo de formato: Markup language','2024-10-23 14:38:34.726188','libros/html.jpg',2),(7,'CSS','Lenguaje de programa','CSS es un lenguaje informático especializado en definir y cohesionar la presentación de un documento escrito en un lenguaje de marcado como HTML o XML; por ello, puede ser aplicado a cualquier documento etiquetado en XHTML, SVG, XUL, RSS, etcétera.​ Wikipedia\r\nContenido por: Documentos HTML\r\nContenedor para: Reglas de estilo para elementos HTML (etiquetas)','2024-10-23 14:40:32.921572','libros/css.jpg',2),(8,'JavaScript','Lenguaje de programa','JavaScript es un lenguaje de programación interpretado, dialecto del estándar ECMAScript. Se define como orientado a objetos, ​ basado en prototipos, imperativo, débilmente tipado y dinámico. Wikipedia\r\nDiseñado por: Netscape Communications, Fundación Mozilla\r\nApareció en: 4 de diciembre de 1995\r\nDialectos: ECMAScript\r\nHa influido a: ObjectiveJ, JScript.NET, TIScript\r\nInfluido por: Java, Perl, Self, Python, C, Scheme','2024-10-23 14:43:11.609710','libros/JavaScrip.jfif',2),(9,'Bootstrap','Twitter','Bootstrap es un framework multiplataforma o conjunto de herramientas de código abierto para diseño de sitios y aplicaciones web. Wikipedia\r\nLenguajes de programación: CSS, JavaScript, Sass, LESS\r\nFecha del lanzamiento inicial: 19 de agosto de 2011\r\nDesarrollador: Twitter\r\nLicencia: MIT License (Apache License 2.0 prior to 3.0.1)','2024-10-23 14:44:54.214976','libros/Bootstrap.jfif',2),(10,'Angular','Aplicación','Angular es un framework para aplicaciones web desarrollado en TypeScript, de código abierto, mantenido por Google, que se utiliza para crear y mantener aplicaciones web de una sola página. Wikipedia\r\nLenguajes de programación: TypeScript, JavaScript, AngularJS','2024-10-23 14:47:19.306247','libros/Angular.png',2),(11,'React','Aplicación','React es una biblioteca Javascript de código abierto diseñada para crear interfaces de usuario con el objetivo de facilitar el desarrollo de aplicaciones en una sola página. Es mantenido por Facebook y la comunidad de software libre. En el proyecto hay más de mil desarrolladores libres.','2024-10-23 14:48:42.172147','libros/ReactJS.png',2),(12,'MySQL','Software','MySQL es un sistema de gestión de datos de código abierto que se utiliza ampliamente en el desarrollo de Back End. Existen otros lenguajes Back End, como Java o ASP.NET, que se utilizan en diferentes industrias. Conclusión clave → Los lenguajes Back End y el desarrollo Back End se utilizan para satisfacer las solicitudes realizadas por los lenguajes Front End. 13 de enero de 2021','2024-10-23 14:55:52.366758','libros/images.jfif',3),(13,'Django','Software','Django es un framework de desarrollo web de código abierto, escrito en Python, que respeta el patrón de diseño conocido como modelo–vista–controlador.','2024-10-23 14:56:53.448916','libros/Django.jfif',3),(14,'Python','Lenguaje de programa','Python es un lenguaje de alto nivel de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código. Se trata de un lenguaje de programación multiparadigma, ya que soporta parcialmente la orientación a objetos, programación imperativa y, en menor medida, programación funcional.','2024-10-23 15:01:24.317348','libros/Python.png',3),(15,'Java','Sun Microsystems','Java es un lenguaje de programación y una plataforma informática que fue comercializada por primera vez en 1995 por Sun Microsystems','2024-10-23 15:03:32.008503','libros/java.jfif',3),(16,'Ruby','Lenguaje de programa','Ruby es un lenguaje de programación interpretado, reflexivo y orientado a objetos, creado por el programador japonés Yukihiro «Matz» Matsumoto, quien comenzó a trabajar en Ruby en 1993, y lo presentó públicamente en 1995.','2024-10-23 15:41:07.799621','libros/Ruby_on_Rails.jfif',3),(17,'Desarr. Front-End','Gustavo Caballero','Las herramientas usadas por un Desarrollador Front-End son:\r\n1. Lenguajes: HTML, CSS, JavaScript, SASS.\r\n2. Frameworks: Materialize, Bootstrap, Angular.\r\n3. Librerías: JQuery, React.\r\n4. Software: Lighthouse.\r\n‍5.- React para el desarrollo de sitios y aplicaciones.','2024-10-23 15:44:38.986551','libros/Desarrollador_frontend.jpg',4),(18,'serv. de alojamieto','Gustavo Caballero','GitHub es un servicio de alojamiento de repositorio de Git basado en la nube y de código abierto que ofrece una interfaz gráfica basada en la web.\r\n\r\nEste puede ser una excelente plataforma para expandir tus redes y construir una marca personal como desarrollador web. GitHub también viene con herramientas flexibles de gestión de proyectos para ayudar a las organizaciones a adaptarse a cualquier equipo, proyecto o flujo de trabajo.','2024-10-23 15:49:48.912562','libros/Githab.png',4),(19,'Chrome Developer Too','Gustavo Caballero','Chrome Developer Tools son un conjunto de herramientas de edición y depuración web integradas en el navegador Google Chrome.\r\n\r\nAl usarlo, los desarrolladores pueden ver y actualizar fácilmente los estilos de las páginas web, depurar el código JavaScript y optimizar la velocidad del sitio web.\r\n\r\nEsta herramienta de desarrollo de aplicaciones web ofrece comandos y accesos directos útiles para navegar por su interfaz de usuario y ejecutar ciertas tareas, como deshabilitar JavaScript.','2024-10-23 15:53:32.626286','libros/Chrome.png',4),(20,'Visual Studio Code','Ferez Alexis','Visual Studio Code es un editor de código abierto que se ejecuta en Windows, Linux y macOS. Este incluye funciones integradas como resaltado de sintaxis, autocompletado y comandos de Git para que la programación sea más rápida y sencilla.','2024-10-23 15:55:49.585141','libros/Visual_Estudio.jfif',4),(21,'Sass','Ferez Alexis','Syntactically Awesome Style Sheets (Saas) es uno de los preprocesadores más populares para el framework CSS. Los desarrolladores de CSS lo usan principalmente para agregar más sintaxis lógica a un sitio de CSS, como variables, reglas anidadas y bucles.','2024-10-23 15:57:34.681263','libros/Sass.jfif',4);
/*!40000 ALTER TABLE `libros_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opiniones_opinion`
--

DROP TABLE IF EXISTS `opiniones_opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opiniones_opinion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `texto` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `libro_id` bigint NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opiniones_opinion_libro_id_9c841c10_fk_libros_libro_id` (`libro_id`),
  KEY `opiniones_opinion_usuario_id_6c8a7eea_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `opiniones_opinion_libro_id_9c841c10_fk_libros_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `libros_libro` (`id`),
  CONSTRAINT `opiniones_opinion_usuario_id_6c8a7eea_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opiniones_opinion`
--

LOCK TABLES `opiniones_opinion` WRITE;
/*!40000 ALTER TABLE `opiniones_opinion` DISABLE KEYS */;
INSERT INTO `opiniones_opinion` VALUES (1,'asfsdfsdfsd\r\nasdfsdafsdfsd\r\nasdfsadfsdafsd','2024-10-24 18:40:16.274409',10,1);
/*!40000 ALTER TABLE `opiniones_opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba1_contacto`
--

DROP TABLE IF EXISTS `prueba1_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prueba1_contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `consulta` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba1_contacto`
--

LOCK TABLES `prueba1_contacto` WRITE;
/*!40000 ALTER TABLE `prueba1_contacto` DISABLE KEYS */;
INSERT INTO `prueba1_contacto` VALUES (1,'Pedro','DiazCelinaAraceli@gmail.com','sadfjsdajflkjlksadjf\r\nasdfsdahfksdajfhlksdjfhsd'),(2,'Elida Kraviek','LuzarskiMoisesBenjamin@gmail.com','fdsafsdfsda\r\nasdfsdafds'),(3,'Alejandra Noemi','LuzarskiMoisesBenjamin@gmail.com',' vcbvcxb\r\nxcvbcvxbcvb\r\nxcvbcv'),(4,'Pedro','neagestion@gmail.com','sdfsdfdsafdsa\r\nasdfdsaf');
/*!40000 ALTER TABLE `prueba1_contacto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25  2:13:03
