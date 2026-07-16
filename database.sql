-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: martfury
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'wIU1XhY3GYKC9OhfojwM11mQyHOqfOQk',1,'2026-03-06 01:42:54','2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2031-03-06 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(2,'Top Slider Image 2','2031-03-06 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 1','2031-03-06 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 2','2031-03-06 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(5,'Homepage middle 3','2031-03-06 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(6,'Homepage big 1','2031-03-06 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(7,'Homepage bottom small','2031-03-06 00:00:00','not_set','FTWH8QNQR59S','promotion/7.jpg','/products',0,7,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(8,'Product sidebar','2031-03-06 00:00:00','product-sidebar','XLFZXS4TDFFN','promotion/8.jpg','/products',0,8,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL),(9,'Homepage big 2','2031-03-06 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'This is a sample description text for the category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(2,'Fashion',0,'This is a sample description text for the category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(3,'Electronic',0,'This is a sample description text for the category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(4,'Commercial',0,'This is a sample description text for the category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2026-03-06 01:42:55','2026-03-06 01:42:55');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`),
  KEY `idx_categories_trans_categories_id` (`categories_id`),
  KEY `idx_categories_trans_category_lang` (`categories_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`),
  KEY `idx_contact_cfo_trans_cfo_id` (`contact_custom_field_options_id`),
  KEY `idx_contact_cfo_trans_cfo_lang` (`contact_custom_field_options_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`),
  KEY `idx_contact_cf_trans_cf_id` (`contact_custom_fields_id`),
  KEY `idx_contact_cf_trans_cf_lang` (`contact_custom_fields_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'John Doe','contact_1@example.com','+15552106360','123 Main St, New York, US','Other','This is a sample contact message content for testing purposes.',NULL,'unread','2026-03-06 01:42:54','2026-03-06 01:42:54'),(2,'Robert Brown','contact_2@example.com','+15558925944','123 Main St, New York, US','Other','This is a sample contact message content for testing purposes.',NULL,'read','2026-03-06 01:42:54','2026-03-06 01:42:54'),(3,'Emily White','contact_3@example.com','+15554187591','123 Main St, New York, US','General Inquiry','This is a sample contact message content for testing purposes.',NULL,'read','2026-03-06 01:42:54','2026-03-06 01:42:54'),(4,'John Doe','contact_4@example.com','+15553184577','123 Main St, New York, US','General Inquiry','This is a sample contact message content for testing purposes.',NULL,'unread','2026-03-06 01:42:54','2026-03-06 01:42:54'),(5,'Michael Green','contact_5@example.com','+15555528478','123 Main St, New York, US','General Inquiry','This is a sample contact message content for testing purposes.',NULL,'read','2026-03-06 01:42:54','2026-03-06 01:42:54'),(6,'John Doe','contact_6@example.com','+15556300128','123 Main St, New York, US','Other','This is a sample contact message content for testing purposes.',NULL,'unread','2026-03-06 01:42:54','2026-03-06 01:42:54'),(7,'Jane Smith','contact_7@example.com','+15554254749','123 Main St, New York, US','Support Request','This is a sample contact message content for testing purposes.',NULL,'unread','2026-03-06 01:42:54','2026-03-06 01:42:54'),(8,'Emily White','contact_8@example.com','+15551035316','123 Main St, New York, US','Other','This is a sample contact message content for testing purposes.',NULL,'read','2026-03-06 01:42:54','2026-03-06 01:42:54'),(9,'Jane Smith','contact_9@example.com','+15557185251','123 Main St, New York, US','Feedback','This is a sample contact message content for testing purposes.',NULL,'read','2026-03-06 01:42:54','2026-03-06 01:42:54'),(10,'Jane Smith','contact_10@example.com','+15551060438','123 Main St, New York, US','Other','This is a sample contact message content for testing purposes.',NULL,'unread','2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `last_email_sequence` tinyint unsigned NOT NULL DEFAULT '0',
  `recovery_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `unsubscribe_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed_at` timestamp NULL DEFAULT NULL,
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_abandoned_carts_recovery_token_unique` (`recovery_token`),
  UNIQUE KEY `ec_abandoned_carts_unsubscribe_token_unique` (`unsubscribe_token`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2026-03-06 01:42:25','2026-03-06 01:42:25');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`),
  KEY `idx_brands_fk` (`ec_brands_id`),
  KEY `idx_brands_brands_lang` (`ec_brands_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`),
  KEY `ec_cart_customer_instance_index` (`customer_id`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `number_format_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'western',
  `space_between_price_and_currency` tinyint(1) NOT NULL DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,'western',0,0,1,1,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(2,'EUR','€',0,2,'western',0,1,0,0.84,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(3,'VND','₫',0,0,'western',0,2,0,23203,'2026-03-06 01:42:25','2026-03-06 01:42:25'),(4,'NGN','₦',1,2,'western',0,2,0,895.52,'2026-03-06 01:42:25','2026-03-06 01:42:25');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Michael Green','customer@botble.com','+15556853744','AU','Washington','Tokyo','789 Pine St',1,1,'2026-03-06 01:42:50','2026-03-06 01:42:50','10001'),(2,'Michael Green','customer@botble.com','+15558874566','AU','California','Melbourne','789 Pine St',1,0,'2026-03-06 01:42:50','2026-03-06 01:42:50','30003'),(3,'Sarah Black','vendor@botble.com','+15555266912','AU','Texas','Berlin','456 Elm St',2,1,'2026-03-06 01:42:50','2026-03-06 01:42:50','20002'),(4,'Sarah Black','vendor@botble.com','+15553132686','US','New York','Paris','789 Pine St',2,0,'2026-03-06 01:42:50','2026-03-06 01:42:50','20002'),(5,'Michael Green','customer_1@example.com','+15552689814','VN','Florida','London','123 Main St',3,1,'2026-03-06 01:42:50','2026-03-06 01:42:50','50005'),(6,'Sarah Black','customer_2@example.com','+15557645673','US','Washington','Melbourne','101 Oak St',4,1,'2026-03-06 01:42:50','2026-03-06 01:42:50','40004'),(7,'Chris Mint','customer_3@example.com','+15551070577','JP','Florida','Hanoi','202 Maple St',5,1,'2026-03-06 01:42:51','2026-03-06 01:42:51','50005'),(8,'Michael Green','customer_4@example.com','+15557655322','KR','California','London','123 Main St',6,1,'2026-03-06 01:42:51','2026-03-06 01:42:51','20002'),(9,'Michael Green','customer_5@example.com','+15552102080','UK','New York','Paris','789 Pine St',7,1,'2026-03-06 01:42:51','2026-03-06 01:42:51','40004'),(10,'Anna Orange','customer_6@example.com','+15557145021','AU','New York','New York','202 Maple St',8,1,'2026-03-06 01:42:51','2026-03-06 01:42:51','10001'),(11,'Sarah Black','customer_7@example.com','+15558518142','KR','California','Hanoi','202 Maple St',9,1,'2026-03-06 01:42:52','2026-03-06 01:42:52','10001'),(12,'Chris Mint','customer_8@example.com','+15554122807','KR','Texas','Paris','202 Maple St',10,1,'2026-03-06 01:42:52','2026-03-06 01:42:52','30003');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_expires_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `tax_class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_customers_is_vendor_index` (`is_vendor`),
  KEY `ec_customers_vendor_verified_at_index` (`vendor_verified_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Michael Green','customer@botble.com','$2y$12$Bv08hiJni8WzVwovCv/ApubIG1Rg6Ew8ANXaFysfAlL8vzx9HXHkW','customers/9.jpg','1976-02-08','regular',NULL,'+15553857789',NULL,'2026-03-06 01:42:50','2026-03-06 01:42:50','2026-03-06 08:42:50',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Sarah Black','vendor@botble.com','$2y$12$S1pcj2YdxrWZY4O/t7HDq.X/7mPVMbGGOv/rY2fFUS9I.7.cLk8r.','customers/2.jpg','2000-02-25','regular',NULL,'+15554849033',NULL,'2026-03-06 01:42:50','2026-03-06 01:43:01','2026-03-06 08:42:50',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(3,'Michael Green','customer_1@example.com','$2y$12$LwcyG9pZsqduJCf8e5/ZeeVpoOYbxxrOidRjqObDqpIwZd7aE.ET6','customers/1.jpg','1991-03-04','regular',NULL,'+15559493562',NULL,'2026-03-06 01:42:50','2026-03-06 01:43:01','2026-03-06 08:42:50',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(4,'Sarah Black','customer_2@example.com','$2y$12$N4m8psvca5SLkocoNBJtJufyVFWnqZpK1fAP1DRF0L3OEH7CZdfU.','customers/2.jpg','1977-03-05','regular',NULL,'+15552071635',NULL,'2026-03-06 01:42:50','2026-03-06 01:43:01','2026-03-06 08:42:50',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(5,'Chris Mint','customer_3@example.com','$2y$12$eH4qy5q98wQhy6eJ8VEfnu/HXFsEo/57z83Szfvgin9QSxEqV8KO6','customers/3.jpg','2001-02-19','regular',NULL,'+15553392346',NULL,'2026-03-06 01:42:51','2026-03-06 01:43:02','2026-03-06 08:42:51',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(6,'Michael Green','customer_4@example.com','$2y$12$5hR3Sfh/4AV1WBdVhU5yCui3zXiIfmhjPWwT9tyuaBS7bgGN8mgFC','customers/4.jpg','1980-02-09','regular',NULL,'+15559699634',NULL,'2026-03-06 01:42:51','2026-03-06 01:43:02','2026-03-06 08:42:51',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(7,'Michael Green','customer_5@example.com','$2y$12$4o4Ar3m14xa.tftf09tZf.eWz0XHV22C6guGueZM1iq2c92mg9ege','customers/5.jpg','2005-02-20','regular',NULL,'+15555209592',NULL,'2026-03-06 01:42:51','2026-03-06 01:43:02','2026-03-06 08:42:51',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(8,'Anna Orange','customer_6@example.com','$2y$12$cHj5WYgdot.ndBu9xtBB2el.YBuwJrX0NT4kcdXPaItBDoDxRMtKO','customers/6.jpg','2006-02-08','regular',NULL,'+15554872507',NULL,'2026-03-06 01:42:51','2026-03-06 01:43:02','2026-03-06 08:42:51',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(9,'Sarah Black','customer_7@example.com','$2y$12$ii70BdzIN9khoEjYxShi2..sMbRGQcs0aBe4YGieZDWiGtLO1AjKO','customers/7.jpg','1998-02-13','regular',NULL,'+15557284567',NULL,'2026-03-06 01:42:52','2026-03-06 01:43:02','2026-03-06 08:42:52',NULL,'activated',NULL,NULL,1,'2026-03-06 08:43:01',NULL,0),(10,'Chris Mint','customer_8@example.com','$2y$12$O.8jfNYsQJz8PadaVnFz9emxBPuHXKhruRDejy3J3qQX3ehio9JGe','customers/8.jpg','1997-03-04','regular',NULL,'+15559598072',NULL,'2026-03-06 01:42:52','2026-03-06 01:43:03','2026-03-06 08:42:52',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`),
  KEY `ec_discounts_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','KJHYFFDVIAT5','2026-03-05 08:42:54','2026-03-21 08:42:54',NULL,0,10,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(2,'Discount 2','WSKOESJF1OL9','2026-03-05 08:42:54',NULL,NULL,0,50,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(3,'Discount 3','XM8YYVVKGF2S','2026-03-05 08:42:54','2026-03-13 08:42:54',NULL,0,25,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(4,'Discount 4','XEHJAJVWYNU3','2026-03-05 08:42:54',NULL,NULL,0,100,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(5,'Discount 5','D1LRX1F9IZ55','2026-03-05 08:42:54','2026-03-26 08:42:54',NULL,0,50,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(6,'Discount 6','JUB8O0ZFMBXP','2026-03-05 08:42:54','2026-03-16 08:42:54',NULL,0,200,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(7,'Discount 7','ZNZR1ZIC9Z7F','2026-03-05 08:42:54',NULL,NULL,0,15,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(8,'Discount 8','HWZH3HUISGD5','2026-03-05 08:42:54','2026-04-05 08:42:54',NULL,0,500,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(9,'Discount 9','IXAYETN3RVQC','2026-03-05 08:42:54','2026-03-11 08:42:54',NULL,0,75,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL),(10,'Discount 10','NL8MOD3CBJXL','2026-03-05 08:42:54',NULL,NULL,0,150,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0',
  KEY `ec_flash_sale_products_product_id_flash_sale_id_index` (`product_id`,`flash_sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,1330.335,11,5),(1,2,92.5536,17,5),(1,3,696.789,17,5),(1,4,633.55005,13,1),(1,5,420.703,16,2),(1,6,318.435,16,2),(1,7,39.7768,20,5),(1,8,372.173802,20,4),(1,9,547.1851,15,5),(1,10,135.785,18,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2026-12-06 00:00:00','published','2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`),
  KEY `idx_flash_sales_fk` (`ec_flash_sales_id`),
  KEY `idx_flash_sales_flash_sales_lang` (`ec_flash_sales_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(2,1,'2 Year',10,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(3,1,'3 Year',20,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(4,2,'4GB',0,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(5,2,'8GB',10,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(6,2,'16GB',20,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(7,3,'Core i5',0,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(8,3,'Core i7',10,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(9,3,'Core i9',20,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(10,4,'128GB',0,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(11,4,'256GB',10,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(12,4,'512GB',20,9999,0,'2026-03-06 01:43:00','2026-03-06 01:43:00');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`),
  KEY `idx_global_option_value_fk` (`ec_global_option_value_id`),
  KEY `idx_global_option_value_global_option_value_lang` (`ec_global_option_value_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `price_per_product` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,0,'2026-03-06 01:43:00','2026-03-06 01:43:00');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`),
  KEY `idx_global_options_fk` (`ec_global_options_id`),
  KEY `idx_global_options_global_options_lang` (`ec_global_options_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_item_tax_components`
--

DROP TABLE IF EXISTS `ec_invoice_item_tax_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_item_tax_components` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_item_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `jurisdiction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iitc_invoice_item` (`invoice_item_id`),
  CONSTRAINT `ec_invoice_item_tax_components_invoice_item_id_foreign` FOREIGN KEY (`invoice_item_id`) REFERENCES `ec_invoice_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_item_tax_components`
--

LOCK TABLES `ec_invoice_item_tax_components` WRITE;
/*!40000 ALTER TABLE `ec_invoice_item_tax_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_item_tax_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_tax_amount` decimal(15,2) DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`),
  KEY `ec_invoices_reference_id_reference_type_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`),
  KEY `idx_option_value_fk` (`ec_option_value_id`),
  KEY `idx_option_value_option_value_lang` (`ec_option_value_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `price_per_product` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`),
  KEY `idx_options_fk` (`ec_options_id`),
  KEY `idx_options_options_lang` (`ec_options_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_addresses_order_id_type_unique` (`order_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_metadata`
--

DROP TABLE IF EXISTS `ec_order_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_metadata` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_metadata_order_id_meta_key_index` (`order_id`,`meta_key`),
  KEY `ec_order_metadata_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_metadata`
--

LOCK TABLES `ec_order_metadata` WRITE;
/*!40000 ALTER TABLE `ec_order_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `tax_breakdown` json DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_product_order_id_product_id_index` (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product_tax_components`
--

DROP TABLE IF EXISTS `ec_order_product_tax_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product_tax_components` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_product_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `jurisdiction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opt_order_product` (`order_product_id`),
  KEY `idx_opt_order_product_code` (`order_product_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product_tax_components`
--

LOCK TABLES `ec_order_product_tax_components` WRITE;
/*!40000 ALTER TABLE `ec_order_product_tax_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product_tax_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `images` json DEFAULT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `shipping_tax_amount` decimal(15,2) DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`),
  KEY `ec_orders_status_created_at_index` (`status`,`created_at`),
  KEY `ec_orders_user_id_is_finished_index` (`user_id`,`is_finished`),
  KEY `ec_orders_store_id_index` (`store_id`),
  KEY `ec_orders_store_finished_index` (`store_id`,`is_finished`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2026-03-06 01:42:27','2026-03-06 01:42:27',0),(2,'Size','size','text',1,1,1,'published',1,'2026-03-06 01:42:27','2026-03-06 01:42:27',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`),
  KEY `idx_product_attribute_sets_fk` (`ec_product_attribute_sets_id`),
  KEY `idx_product_attribute_sets_product_attribute_sets_lang` (`ec_product_attribute_sets_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(2,1,'Blue','blue','#333333',NULL,0,2,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(3,1,'Red','red','#DA323F',NULL,0,3,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(4,1,'Black','black','#2F366C',NULL,0,4,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(6,2,'S','s',NULL,NULL,1,1,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(7,2,'M','m',NULL,NULL,0,2,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(8,2,'L','l',NULL,NULL,0,3,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(9,2,'XL','xl',NULL,NULL,0,4,'2026-03-06 01:42:27','2026-03-06 01:42:27'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2026-03-06 01:42:27','2026-03-06 01:42:27');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`),
  KEY `idx_product_attributes_fk` (`ec_product_attributes_id`),
  KEY `idx_product_attributes_product_attributes_lang` (`ec_product_attributes_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`),
  KEY `ec_product_categories_slug_index` (`slug`),
  KEY `idx_ec_product_categories_status` (`status`),
  KEY `idx_ec_product_categories_parent_id` (`parent_id`),
  KEY `idx_ec_product_categories_status_parent_order` (`status`,`parent_id`,`order`),
  KEY `idx_ec_product_categories_is_featured` (`is_featured`),
  KEY `idx_ec_product_categories_name` (`name`),
  KEY `idx_ec_product_categories_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions','hot-promotions',0,NULL,'published',0,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-star',NULL),(2,'Electronics','electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-laundry',NULL),(3,'Consumer Electronic','consumer-electronic',2,NULL,'published',0,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(4,'Home Audio & Theaters','home-audio-theaters',3,NULL,'published',0,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(5,'TV & Videos','tv-videos',3,NULL,'published',1,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(6,'Camera, Photos & Videos','camera-photos-videos',3,NULL,'published',2,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(7,'Cellphones & Accessories','cellphones-accessories',3,NULL,'published',3,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(8,'Headphones','headphones',3,NULL,'published',4,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(9,'Videos games','videos-games',3,NULL,'published',5,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(10,'Wireless Speakers','wireless-speakers',3,NULL,'published',6,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(11,'Office Electronic','office-electronic',3,NULL,'published',7,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(12,'Accessories & Parts','accessories-parts',2,NULL,'published',1,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(13,'Digital Cables','digital-cables',12,NULL,'published',0,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(14,'Audio & Video Cables','audio-video-cables',12,NULL,'published',1,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(15,'Batteries','batteries',12,NULL,'published',2,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(16,'Clothing','clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-shirt',NULL),(17,'Computers','computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-desktop',NULL),(18,'Computer & Technologies','computer-technologies',17,NULL,'published',0,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(19,'Computer & Tablets','computer-tablets',18,NULL,'published',0,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(20,'Laptop','laptop',18,NULL,'published',1,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(21,'Monitors','monitors',18,NULL,'published',2,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(22,'Computer Components','computer-components',18,NULL,'published',3,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(23,'Networking','networking',17,NULL,'published',1,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(24,'Drive & Storages','drive-storages',23,NULL,'published',0,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(25,'Gaming Laptop','gaming-laptop',23,NULL,'published',1,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(26,'Security & Protection','security-protection',23,NULL,'published',2,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(27,'Accessories','accessories',23,NULL,'published',3,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,NULL),(28,'Home & Kitchen','home-kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-lampshade',NULL),(29,'Health & Beauty','health-beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-heart-pulse',NULL),(30,'Jewelry & Watch','jewelry-watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-diamond2',NULL),(31,'Technology Toys','technology-toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-desktop',NULL),(32,'Phones','phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-smartphone',NULL),(33,'Babies & Moms','babies-moms',0,NULL,'published',9,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-baby-bottle',NULL),(34,'Sport & Outdoor','sport-outdoor',0,NULL,'published',10,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-baseball',NULL),(35,'Books & Office','books-office',0,NULL,'published',11,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-book2',NULL),(36,'Cars & Motorcycles','cars-motorcycles',0,NULL,'published',12,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-car-siren',NULL),(37,'Home Improvements','home-improvements',0,NULL,'published',13,NULL,0,'2026-03-06 01:42:26','2026-03-06 01:42:26','icon-wrench',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`),
  KEY `idx_product_categories_fk` (`ec_product_categories_id`),
  KEY `idx_product_categories_product_categories_lang` (`ec_product_categories_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category` (`product_id`,`category_id`),
  KEY `idx_product_id_category_id` (`product_id`,`category_id`),
  KEY `idx_product_category_composite` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,1),(1,8),(1,13),(1,27),(1,33),(1,48),(1,49),(1,52),(1,54),(2,5),(2,8),(2,11),(2,13),(2,17),(2,22),(2,23),(2,39),(2,48),(2,51),(3,28),(3,33),(3,46),(4,6),(4,10),(4,21),(4,27),(4,29),(4,32),(4,38),(4,48),(5,3),(5,8),(5,14),(5,25),(5,27),(5,35),(5,46),(6,4),(6,14),(6,16),(6,26),(6,53),(7,4),(7,10),(7,12),(7,35),(7,46),(7,49),(7,52),(8,2),(8,13),(8,20),(8,29),(8,35),(8,39),(8,42),(8,44),(9,21),(9,31),(9,44),(9,51),(10,36),(10,39),(10,53),(11,1),(11,14),(11,18),(11,34),(11,36),(11,37),(12,2),(12,15),(12,17),(12,31),(12,42),(13,11),(13,20),(13,30),(13,38),(13,46),(13,47),(13,50),(14,24),(14,37),(14,54),(15,26),(15,29),(15,43),(15,44),(15,47),(16,5),(16,6),(16,7),(16,8),(16,9),(16,16),(16,20),(16,24),(16,34),(16,40),(16,43),(16,51),(17,2),(17,10),(17,25),(18,1),(18,18),(18,41),(18,50),(19,20),(19,22),(19,26),(19,32),(19,53),(20,14),(20,19),(20,23),(20,32),(20,33),(20,36),(20,52),(21,3),(21,5),(21,6),(21,9),(21,11),(21,50),(21,53),(22,2),(22,30),(22,31),(22,54),(23,7),(23,9),(23,22),(23,38),(23,40),(23,41),(24,12),(24,18),(24,28),(24,29),(24,37),(24,38),(24,41),(25,1),(25,3),(25,32),(25,40),(26,15),(26,33),(26,45),(27,25),(27,40),(27,47),(28,11),(28,19),(28,28),(28,34),(28,42),(28,45),(28,48),(29,4),(29,5),(29,7),(29,16),(29,19),(29,49),(29,50),(30,4),(30,13),(30,15),(30,24),(30,34),(30,41),(30,43),(31,12),(31,15),(31,16),(31,26),(31,27),(31,45),(31,49),(31,52),(32,10),(32,30),(32,51),(33,17),(33,23),(33,44),(34,7),(34,18),(34,22),(34,24),(34,37),(34,54),(35,6),(35,12),(35,21),(35,25),(35,31),(35,35),(35,39),(35,42),(35,43),(35,47),(36,3),(36,21),(36,45),(37,9),(37,17),(37,19),(37,23),(37,28),(37,30),(37,36);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`),
  KEY `idx_product_id_collection_id` (`product_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,11),(1,12),(1,13),(1,22),(1,29),(1,31),(1,34),(1,36),(1,38),(1,49),(1,51),(1,52),(1,53),(2,2),(2,6),(2,7),(2,10),(2,16),(2,20),(2,21),(2,25),(2,26),(2,30),(2,33),(2,40),(2,44),(2,45),(2,46),(2,48),(2,50),(3,1),(3,3),(3,4),(3,5),(3,8),(3,9),(3,14),(3,15),(3,17),(3,18),(3,19),(3,23),(3,24),(3,27),(3,28),(3,32),(3,35),(3,37),(3,39),(3,41),(3,42),(3,43),(3,47),(3,54);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2026-03-06 01:42:26','2026-03-06 01:42:26',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2026-03-06 01:42:26','2026-03-06 01:42:26',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2026-03-06 01:42:26','2026-03-06 01:42:26',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`),
  KEY `idx_product_collections_fk` (`ec_product_collections_id`),
  KEY `idx_product_collections_product_collections_lang` (`ec_product_collections_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,19,0,0.00,'fixed',1),(1,35,0,0.00,'fixed',1),(1,37,0,0.00,'fixed',1),(1,45,0,0.00,'fixed',1),(1,46,0,0.00,'fixed',1),(1,52,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,21,0,0.00,'fixed',1),(2,23,0,0.00,'fixed',1),(2,28,0,0.00,'fixed',1),(2,39,0,0.00,'fixed',1),(2,54,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,10,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,27,0,0.00,'fixed',1),(3,32,0,0.00,'fixed',1),(3,48,0,0.00,'fixed',1),(3,54,0,0.00,'fixed',1),(4,1,0,0.00,'fixed',1),(4,16,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(4,37,0,0.00,'fixed',1),(4,41,0,0.00,'fixed',1),(4,48,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(5,18,0,0.00,'fixed',1),(5,34,0,0.00,'fixed',1),(5,36,0,0.00,'fixed',1),(5,37,0,0.00,'fixed',1),(6,5,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(6,35,0,0.00,'fixed',1),(6,45,0,0.00,'fixed',1),(6,49,0,0.00,'fixed',1),(6,50,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,18,0,0.00,'fixed',1),(7,25,0,0.00,'fixed',1),(7,49,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,14,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,23,0,0.00,'fixed',1),(8,34,0,0.00,'fixed',1),(8,42,0,0.00,'fixed',1),(9,21,0,0.00,'fixed',1),(9,25,0,0.00,'fixed',1),(9,33,0,0.00,'fixed',1),(9,35,0,0.00,'fixed',1),(9,36,0,0.00,'fixed',1),(9,38,0,0.00,'fixed',1),(9,40,0,0.00,'fixed',1),(10,3,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,21,0,0.00,'fixed',1),(10,36,0,0.00,'fixed',1),(11,3,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,17,0,0.00,'fixed',1),(11,25,0,0.00,'fixed',1),(11,51,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,15,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(12,30,0,0.00,'fixed',1),(12,34,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,22,0,0.00,'fixed',1),(13,27,0,0.00,'fixed',1),(13,28,0,0.00,'fixed',1),(13,32,0,0.00,'fixed',1),(13,40,0,0.00,'fixed',1),(13,54,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,25,0,0.00,'fixed',1),(14,40,0,0.00,'fixed',1),(14,42,0,0.00,'fixed',1),(14,43,0,0.00,'fixed',1),(14,53,0,0.00,'fixed',1),(15,1,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,27,0,0.00,'fixed',1),(15,28,0,0.00,'fixed',1),(15,32,0,0.00,'fixed',1),(15,33,0,0.00,'fixed',1),(15,41,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,6,0,0.00,'fixed',1),(16,32,0,0.00,'fixed',1),(16,35,0,0.00,'fixed',1),(16,37,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,19,0,0.00,'fixed',1),(17,39,0,0.00,'fixed',1),(17,45,0,0.00,'fixed',1),(17,48,0,0.00,'fixed',1),(17,54,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,16,0,0.00,'fixed',1),(18,17,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,24,0,0.00,'fixed',1),(18,38,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,9,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(19,26,0,0.00,'fixed',1),(20,3,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,29,0,0.00,'fixed',1),(20,31,0,0.00,'fixed',1),(20,37,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(21,22,0,0.00,'fixed',1),(21,24,0,0.00,'fixed',1),(21,26,0,0.00,'fixed',1),(21,45,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,26,0,0.00,'fixed',1),(22,33,0,0.00,'fixed',1),(22,51,0,0.00,'fixed',1),(23,2,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,21,0,0.00,'fixed',1),(23,36,0,0.00,'fixed',1),(23,49,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,23,0,0.00,'fixed',1),(24,29,0,0.00,'fixed',1),(24,32,0,0.00,'fixed',1),(24,39,0,0.00,'fixed',1),(24,42,0,0.00,'fixed',1),(24,52,0,0.00,'fixed',1),(25,4,0,0.00,'fixed',1),(25,11,0,0.00,'fixed',1),(25,13,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,22,0,0.00,'fixed',1),(25,30,0,0.00,'fixed',1),(25,33,0,0.00,'fixed',1),(26,11,0,0.00,'fixed',1),(26,17,0,0.00,'fixed',1),(26,23,0,0.00,'fixed',1),(26,29,0,0.00,'fixed',1),(26,44,0,0.00,'fixed',1),(26,45,0,0.00,'fixed',1),(26,50,0,0.00,'fixed',1),(27,14,0,0.00,'fixed',1),(27,23,0,0.00,'fixed',1),(27,26,0,0.00,'fixed',1),(27,30,0,0.00,'fixed',1),(27,42,0,0.00,'fixed',1),(27,50,0,0.00,'fixed',1),(27,51,0,0.00,'fixed',1),(28,21,0,0.00,'fixed',1),(28,22,0,0.00,'fixed',1),(28,32,0,0.00,'fixed',1),(28,36,0,0.00,'fixed',1),(28,40,0,0.00,'fixed',1),(28,44,0,0.00,'fixed',1),(28,49,0,0.00,'fixed',1),(29,10,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,30,0,0.00,'fixed',1),(29,32,0,0.00,'fixed',1),(29,33,0,0.00,'fixed',1),(29,40,0,0.00,'fixed',1),(29,48,0,0.00,'fixed',1),(30,20,0,0.00,'fixed',1),(30,26,0,0.00,'fixed',1),(30,37,0,0.00,'fixed',1),(30,39,0,0.00,'fixed',1),(30,42,0,0.00,'fixed',1),(30,45,0,0.00,'fixed',1),(30,48,0,0.00,'fixed',1),(31,8,0,0.00,'fixed',1),(31,14,0,0.00,'fixed',1),(31,20,0,0.00,'fixed',1),(31,24,0,0.00,'fixed',1),(31,26,0,0.00,'fixed',1),(31,37,0,0.00,'fixed',1),(31,48,0,0.00,'fixed',1),(32,1,0,0.00,'fixed',1),(32,27,0,0.00,'fixed',1),(32,36,0,0.00,'fixed',1),(32,38,0,0.00,'fixed',1),(32,41,0,0.00,'fixed',1),(32,44,0,0.00,'fixed',1),(33,5,0,0.00,'fixed',1),(33,9,0,0.00,'fixed',1),(33,11,0,0.00,'fixed',1),(33,36,0,0.00,'fixed',1),(33,37,0,0.00,'fixed',1),(33,48,0,0.00,'fixed',1),(34,9,0,0.00,'fixed',1),(34,16,0,0.00,'fixed',1),(34,21,0,0.00,'fixed',1),(34,26,0,0.00,'fixed',1),(34,40,0,0.00,'fixed',1),(34,45,0,0.00,'fixed',1),(34,50,0,0.00,'fixed',1),(35,1,0,0.00,'fixed',1),(35,4,0,0.00,'fixed',1),(35,20,0,0.00,'fixed',1),(35,27,0,0.00,'fixed',1),(35,47,0,0.00,'fixed',1),(35,49,0,0.00,'fixed',1),(36,23,0,0.00,'fixed',1),(36,24,0,0.00,'fixed',1),(36,29,0,0.00,'fixed',1),(36,31,0,0.00,'fixed',1),(36,34,0,0.00,'fixed',1),(36,37,0,0.00,'fixed',1),(36,46,0,0.00,'fixed',1),(37,13,0,0.00,'fixed',1),(37,15,0,0.00,'fixed',1),(37,23,0,0.00,'fixed',1),(37,30,0,0.00,'fixed',1),(37,43,0,0.00,'fixed',1),(37,45,0,0.00,'fixed',1),(37,52,0,0.00,'fixed',1),(38,12,0,0.00,'fixed',1),(38,14,0,0.00,'fixed',1),(38,16,0,0.00,'fixed',1),(38,31,0,0.00,'fixed',1),(38,35,0,0.00,'fixed',1),(38,39,0,0.00,'fixed',1),(38,40,0,0.00,'fixed',1),(39,3,0,0.00,'fixed',1),(39,8,0,0.00,'fixed',1),(39,13,0,0.00,'fixed',1),(39,26,0,0.00,'fixed',1),(39,30,0,0.00,'fixed',1),(39,33,0,0.00,'fixed',1),(39,43,0,0.00,'fixed',1),(40,5,0,0.00,'fixed',1),(40,11,0,0.00,'fixed',1),(40,12,0,0.00,'fixed',1),(40,15,0,0.00,'fixed',1),(40,27,0,0.00,'fixed',1),(40,36,0,0.00,'fixed',1),(40,44,0,0.00,'fixed',1),(41,4,0,0.00,'fixed',1),(41,5,0,0.00,'fixed',1),(41,29,0,0.00,'fixed',1),(41,30,0,0.00,'fixed',1),(41,36,0,0.00,'fixed',1),(41,39,0,0.00,'fixed',1),(41,42,0,0.00,'fixed',1),(42,9,0,0.00,'fixed',1),(42,23,0,0.00,'fixed',1),(42,26,0,0.00,'fixed',1),(42,27,0,0.00,'fixed',1),(42,38,0,0.00,'fixed',1),(42,53,0,0.00,'fixed',1),(43,11,0,0.00,'fixed',1),(43,14,0,0.00,'fixed',1),(43,17,0,0.00,'fixed',1),(43,22,0,0.00,'fixed',1),(43,23,0,0.00,'fixed',1),(43,42,0,0.00,'fixed',1),(43,53,0,0.00,'fixed',1),(44,2,0,0.00,'fixed',1),(44,9,0,0.00,'fixed',1),(44,24,0,0.00,'fixed',1),(44,25,0,0.00,'fixed',1),(44,36,0,0.00,'fixed',1),(44,53,0,0.00,'fixed',1),(45,5,0,0.00,'fixed',1),(45,9,0,0.00,'fixed',1),(45,13,0,0.00,'fixed',1),(45,24,0,0.00,'fixed',1),(45,32,0,0.00,'fixed',1),(45,35,0,0.00,'fixed',1),(45,46,0,0.00,'fixed',1),(46,25,0,0.00,'fixed',1),(46,28,0,0.00,'fixed',1),(46,34,0,0.00,'fixed',1),(46,36,0,0.00,'fixed',1),(46,39,0,0.00,'fixed',1),(46,48,0,0.00,'fixed',1),(46,53,0,0.00,'fixed',1),(47,3,0,0.00,'fixed',1),(47,13,0,0.00,'fixed',1),(47,15,0,0.00,'fixed',1),(47,19,0,0.00,'fixed',1),(47,42,0,0.00,'fixed',1),(47,49,0,0.00,'fixed',1),(47,50,0,0.00,'fixed',1),(48,2,0,0.00,'fixed',1),(48,6,0,0.00,'fixed',1),(48,13,0,0.00,'fixed',1),(48,17,0,0.00,'fixed',1),(48,44,0,0.00,'fixed',1),(48,47,0,0.00,'fixed',1),(48,53,0,0.00,'fixed',1),(49,5,0,0.00,'fixed',1),(49,6,0,0.00,'fixed',1),(49,9,0,0.00,'fixed',1),(49,11,0,0.00,'fixed',1),(49,25,0,0.00,'fixed',1),(49,43,0,0.00,'fixed',1),(50,23,0,0.00,'fixed',1),(50,24,0,0.00,'fixed',1),(50,30,0,0.00,'fixed',1),(50,32,0,0.00,'fixed',1),(50,52,0,0.00,'fixed',1),(51,13,0,0.00,'fixed',1),(51,16,0,0.00,'fixed',1),(51,29,0,0.00,'fixed',1),(51,32,0,0.00,'fixed',1),(51,33,0,0.00,'fixed',1),(51,36,0,0.00,'fixed',1),(52,11,0,0.00,'fixed',1),(52,14,0,0.00,'fixed',1),(52,32,0,0.00,'fixed',1),(52,43,0,0.00,'fixed',1),(52,49,0,0.00,'fixed',1),(52,51,0,0.00,'fixed',1),(52,54,0,0.00,'fixed',1),(53,1,0,0.00,'fixed',1),(53,3,0,0.00,'fixed',1),(53,4,0,0.00,'fixed',1),(53,12,0,0.00,'fixed',1),(53,20,0,0.00,'fixed',1),(53,27,0,0.00,'fixed',1),(53,51,0,0.00,'fixed',1),(54,7,0,0.00,'fixed',1),(54,9,0,0.00,'fixed',1),(54,18,0,0.00,'fixed',1),(54,24,0,0.00,'fixed',1),(54,27,0,0.00,'fixed',1),(54,44,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(2,4,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(3,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(4,8,'ecommerce/digital-product-files/8-2.jpg','{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"8-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(5,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(6,12,'ecommerce/digital-product-files/12-2.jpg','{\"filename\":\"12-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"12-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(7,16,'ecommerce/digital-product-files/16-1.jpg','{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"16-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(8,16,'ecommerce/digital-product-files/16-2.jpg','{\"filename\":\"16-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"16-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(9,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(10,20,'ecommerce/digital-product-files/20-2.jpg','{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"20-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(11,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(12,24,'ecommerce/digital-product-files/24-2.jpg','{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"24-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(13,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(14,28,'ecommerce/digital-product-files/28-2.jpg','{\"filename\":\"28-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"28-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(15,32,'ecommerce/digital-product-files/32-1.jpg','{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"32-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(16,32,'ecommerce/digital-product-files/32-2.jpg','{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"32-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(17,36,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(18,36,'ecommerce/digital-product-files/36-2.jpg','{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"36-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(19,40,'ecommerce/digital-product-files/40-1.jpg','{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"40-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(20,40,'ecommerce/digital-product-files/40-2.jpg','{\"filename\":\"40-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"40-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(21,44,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(22,44,'ecommerce/digital-product-files/44-2.jpg','{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"44-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(23,48,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(24,48,'ecommerce/digital-product-files/48-2.jpg','{\"filename\":\"48-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"48-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(25,52,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(26,52,'ecommerce/digital-product-files/52-2.jpg','{\"filename\":\"52-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"52-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(27,60,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(28,67,'ecommerce/digital-product-files/8-2.jpg','{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"8-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(29,68,'ecommerce/digital-product-files/8-3.jpg','{\"filename\":\"8-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"8-3\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(30,69,'ecommerce/digital-product-files/8-4.jpg','{\"filename\":\"8-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"8-4\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(31,87,'ecommerce/digital-product-files/24-2.jpg','{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"24-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(32,88,'ecommerce/digital-product-files/24-3.jpg','{\"filename\":\"24-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"24-3\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(33,94,'ecommerce/digital-product-files/32-2.jpg','{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"32-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(34,95,'ecommerce/digital-product-files/32-3.jpg','{\"filename\":\"32-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"32-3\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(35,104,'ecommerce/digital-product-files/36-2.jpg','{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"36-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49'),(36,107,'ecommerce/digital-product-files/40-2.jpg','{\"filename\":\"40-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-03-06 08:42:49\",\"name\":\"40-2\",\"extension\":\"jpg\"}','2026-03-06 01:42:49','2026-03-06 01:42:49');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,12),(1,21),(1,33),(1,39),(1,45),(1,54),(2,6),(2,18),(2,24),(2,27),(2,36),(2,51),(3,3),(3,9),(3,15),(3,30),(3,42),(3,48);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_labels_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2026-03-06 01:42:27','2026-03-06 01:42:27','#ffffff'),(2,'New','#02856e','published','2026-03-06 01:42:27','2026-03-06 01:42:27','#ffffff'),(3,'Sale','#fe9931','published','2026-03-06 01:42:27','2026-03-06 01:42:27','#ffffff');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`),
  KEY `idx_product_labels_fk` (`ec_product_labels_id`),
  KEY `idx_product_labels_product_labels_lang` (`ec_product_labels_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'68.2 cm',0,0),(1,7,'98.46 cm',0,0),(1,8,'res_1440p',0,0),(1,9,'panel_oled',0,0),(1,10,'hdr_10plus',0,0),(2,1,'4.41 cm',0,0),(2,2,'33.5 cm',0,0),(2,3,'28.59 cm',0,0),(2,4,'89.36 cm',0,0),(2,5,'24.56 cm',0,0),(3,6,'23.81 cm',0,0),(3,7,'39.48 cm',0,0),(3,8,'res_1440p',0,0),(3,9,'panel_ips',0,0),(3,10,'hdr_10',0,0),(4,1,'9.3 cm',0,0),(4,2,'7.11 cm',0,0),(4,3,'54.94 cm',0,0),(4,4,'89.91 cm',0,0),(4,5,'27.25 cm',0,0),(5,6,'33.44 cm',0,0),(5,7,'18.04 cm',0,0),(5,8,'res_1080p',0,0),(5,9,'panel_ips',0,0),(5,10,'hdr_10plus',0,0),(6,6,'32.26 cm',0,0),(6,7,'9.52 cm',0,0),(6,8,'res_1080p',0,0),(6,9,'panel_oled',0,0),(6,10,'hdr_10',0,0),(7,6,'75.48 cm',0,0),(7,7,'92.18 cm',0,0),(7,8,'res_1440p',0,0),(7,9,'panel_va',0,0),(7,10,'hdr_10',0,0),(8,1,'46.44 cm',0,0),(8,2,'44.37 cm',0,0),(8,3,'54.82 cm',0,0),(8,4,'27.7 cm',0,0),(8,5,'6.41 cm',0,0),(9,1,'59.1 cm',0,0),(9,2,'50.62 cm',0,0),(9,3,'25.04 cm',0,0),(9,4,'77.93 cm',0,0),(9,5,'65.59 cm',0,0),(10,1,'36.83 cm',0,0),(10,2,'41.11 cm',0,0),(10,3,'73.2 cm',0,0),(10,4,'96.59 cm',0,0),(10,5,'64.12 cm',0,0),(11,1,'34.95 cm',0,0),(11,2,'39.03 cm',0,0),(11,3,'79.92 cm',0,0),(11,4,'82.56 cm',0,0),(11,5,'24.41 cm',0,0),(12,6,'17.08 cm',0,0),(12,7,'71.17 cm',0,0),(12,8,'res_1440p',0,0),(12,9,'panel_oled',0,0),(12,10,'hdr_10plus',0,0),(13,6,'39.23 cm',0,0),(13,7,'17.12 cm',0,0),(13,8,'res_4k',0,0),(13,9,'panel_oled',0,0),(13,10,'hdr_dolby',0,0),(14,1,'32.11 cm',0,0),(14,2,'34 cm',0,0),(14,3,'47.25 cm',0,0),(14,4,'78.68 cm',0,0),(14,5,'64.48 cm',0,0),(15,6,'29.76 cm',0,0),(15,7,'53.86 cm',0,0),(15,8,'res_1440p',0,0),(15,9,'panel_va',0,0),(15,10,'hdr_none',0,0),(16,6,'72.51 cm',0,0),(16,7,'2.34 cm',0,0),(16,8,'res_4k',0,0),(16,9,'panel_oled',0,0),(16,10,'hdr_10',0,0),(17,1,'21.17 cm',0,0),(17,2,'49.22 cm',0,0),(17,3,'76.56 cm',0,0),(17,4,'72.24 cm',0,0),(17,5,'72.88 cm',0,0),(18,6,'29 cm',0,0),(18,7,'61.99 cm',0,0),(18,8,'res_1080p',0,0),(18,9,'panel_oled',0,0),(18,10,'hdr_dolby',0,0),(19,1,'24.04 cm',0,0),(19,2,'7.57 cm',0,0),(19,3,'87.55 cm',0,0),(19,4,'44.93 cm',0,0),(19,5,'96.42 cm',0,0),(20,1,'64.8 cm',0,0),(20,2,'14.29 cm',0,0),(20,3,'38.68 cm',0,0),(20,4,'61.88 cm',0,0),(20,5,'36.81 cm',0,0),(21,6,'50.29 cm',0,0),(21,7,'24.56 cm',0,0),(21,8,'res_1440p',0,0),(21,9,'panel_ips',0,0),(21,10,'hdr_dolby',0,0),(22,6,'86.39 cm',0,0),(22,7,'18.23 cm',0,0),(22,8,'res_1080p',0,0),(22,9,'panel_ips',0,0),(22,10,'hdr_dolby',0,0),(23,1,'81 cm',0,0),(23,2,'13.6 cm',0,0),(23,3,'81.61 cm',0,0),(23,4,'1.13 cm',0,0),(23,5,'77.74 cm',0,0),(24,6,'75.21 cm',0,0),(24,7,'89.8 cm',0,0),(24,8,'res_4k',0,0),(24,9,'panel_ips',0,0),(24,10,'hdr_dolby',0,0),(25,6,'1.8 cm',0,0),(25,7,'46.97 cm',0,0),(25,8,'res_1080p',0,0),(25,9,'panel_oled',0,0),(25,10,'hdr_10',0,0),(26,1,'73.66 cm',0,0),(26,2,'39.8 cm',0,0),(26,3,'94.82 cm',0,0),(26,4,'61.6 cm',0,0),(26,5,'45.55 cm',0,0),(27,6,'61.75 cm',0,0),(27,7,'82.75 cm',0,0),(27,8,'res_4k',0,0),(27,9,'panel_ips',0,0),(27,10,'hdr_dolby',0,0),(28,6,'75.47 cm',0,0),(28,7,'21.05 cm',0,0),(28,8,'res_1080p',0,0),(28,9,'panel_oled',0,0),(28,10,'hdr_none',0,0),(29,6,'2.43 cm',0,0),(29,7,'40.81 cm',0,0),(29,8,'res_1440p',0,0),(29,9,'panel_tn',0,0),(29,10,'hdr_10',0,0),(30,1,'92.56 cm',0,0),(30,2,'89.31 cm',0,0),(30,3,'10.39 cm',0,0),(30,4,'56.75 cm',0,0),(30,5,'27.83 cm',0,0),(31,6,'82.62 cm',0,0),(31,7,'66.41 cm',0,0),(31,8,'res_4k',0,0),(31,9,'panel_va',0,0),(31,10,'hdr_10',0,0),(32,6,'50.78 cm',0,0),(32,7,'30.23 cm',0,0),(32,8,'res_4k',0,0),(32,9,'panel_tn',0,0),(32,10,'hdr_dolby',0,0),(33,6,'32.68 cm',0,0),(33,7,'24.6 cm',0,0),(33,8,'res_1080p',0,0),(33,9,'panel_tn',0,0),(33,10,'hdr_dolby',0,0),(34,1,'5.12 cm',0,0),(34,2,'16.84 cm',0,0),(34,3,'53.82 cm',0,0),(34,4,'22.85 cm',0,0),(34,5,'28.47 cm',0,0),(35,6,'91.89 cm',0,0),(35,7,'54.61 cm',0,0),(35,8,'res_4k',0,0),(35,9,'panel_ips',0,0),(35,10,'hdr_10',0,0),(36,6,'52.99 cm',0,0),(36,7,'25.5 cm',0,0),(36,8,'res_1080p',0,0),(36,9,'panel_tn',0,0),(36,10,'hdr_10',0,0),(37,1,'46.91 cm',0,0),(37,2,'41.86 cm',0,0),(37,3,'52.38 cm',0,0),(37,4,'78.63 cm',0,0),(37,5,'32.88 cm',0,0),(38,6,'23.57 cm',0,0),(38,7,'55.03 cm',0,0),(38,8,'res_1080p',0,0),(38,9,'panel_tn',0,0),(38,10,'hdr_none',0,0),(39,1,'2.55 cm',0,0),(39,2,'93.16 cm',0,0),(39,3,'34.58 cm',0,0),(39,4,'39.04 cm',0,0),(39,5,'86.4 cm',0,0),(40,6,'55.34 cm',0,0),(40,7,'44.31 cm',0,0),(40,8,'res_1080p',0,0),(40,9,'panel_oled',0,0),(40,10,'hdr_none',0,0),(41,1,'65.55 cm',0,0),(41,2,'81.71 cm',0,0),(41,3,'86.15 cm',0,0),(41,4,'71.05 cm',0,0),(41,5,'53.73 cm',0,0),(42,1,'23.28 cm',0,0),(42,2,'72.77 cm',0,0),(42,3,'51.91 cm',0,0),(42,4,'22.77 cm',0,0),(42,5,'58.75 cm',0,0),(43,6,'32.8 cm',0,0),(43,7,'40.17 cm',0,0),(43,8,'res_4k',0,0),(43,9,'panel_va',0,0),(43,10,'hdr_10',0,0),(44,6,'1.59 cm',0,0),(44,7,'19.21 cm',0,0),(44,8,'res_1080p',0,0),(44,9,'panel_ips',0,0),(44,10,'hdr_10',0,0),(45,6,'95.86 cm',0,0),(45,7,'4.17 cm',0,0),(45,8,'res_1080p',0,0),(45,9,'panel_ips',0,0),(45,10,'hdr_none',0,0),(46,1,'57.58 cm',0,0),(46,2,'80.76 cm',0,0),(46,3,'96.35 cm',0,0),(46,4,'14.63 cm',0,0),(46,5,'32.75 cm',0,0),(47,1,'88.52 cm',0,0),(47,2,'51.18 cm',0,0),(47,3,'97.35 cm',0,0),(47,4,'92.61 cm',0,0),(47,5,'40.96 cm',0,0),(48,6,'51.1 cm',0,0),(48,7,'90.27 cm',0,0),(48,8,'res_4k',0,0),(48,9,'panel_va',0,0),(48,10,'hdr_none',0,0),(49,1,'40.87 cm',0,0),(49,2,'51.24 cm',0,0),(49,3,'52.39 cm',0,0),(49,4,'65.58 cm',0,0),(49,5,'88.61 cm',0,0),(50,1,'31.71 cm',0,0),(50,2,'14.56 cm',0,0),(50,3,'78.35 cm',0,0),(50,4,'21.55 cm',0,0),(50,5,'10.49 cm',0,0),(51,6,'61.39 cm',0,0),(51,7,'71.67 cm',0,0),(51,8,'res_4k',0,0),(51,9,'panel_oled',0,0),(51,10,'hdr_dolby',0,0),(52,1,'38.46 cm',0,0),(52,2,'47.88 cm',0,0),(52,3,'88.95 cm',0,0),(52,4,'6.91 cm',0,0),(52,5,'61.99 cm',0,0),(53,6,'37.75 cm',0,0),(53,7,'69.81 cm',0,0),(53,8,'res_1440p',0,0),(53,9,'panel_va',0,0),(53,10,'hdr_none',0,0),(54,1,'82.62 cm',0,0),(54,2,'82.67 cm',0,0),(54,3,'17.5 cm',0,0),(54,4,'35.25 cm',0,0),(54,5,'76.99 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute_translations` VALUES (1,1,6,'ar','68.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(2,1,7,'ar','98.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(3,2,1,'ar','4.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(4,2,2,'ar','33.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(5,2,3,'ar','28.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(6,2,4,'ar','89.36 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(7,2,5,'ar','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(8,3,6,'ar','23.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(9,3,7,'ar','39.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(10,4,1,'ar','9.3 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(11,4,2,'ar','7.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(12,4,3,'ar','54.94 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(13,4,4,'ar','89.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(14,4,5,'ar','27.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(15,5,6,'ar','33.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(16,5,7,'ar','18.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(17,6,6,'ar','32.26 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(18,6,7,'ar','9.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(19,7,6,'ar','75.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(20,7,7,'ar','92.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(21,8,1,'ar','46.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(22,8,2,'ar','44.37 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(23,8,3,'ar','54.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(24,8,4,'ar','27.7 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(25,8,5,'ar','6.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(26,9,1,'ar','59.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(27,9,2,'ar','50.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(28,9,3,'ar','25.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(29,9,4,'ar','77.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(30,9,5,'ar','65.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(31,10,1,'ar','36.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(32,10,2,'ar','41.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(33,10,3,'ar','73.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(34,10,4,'ar','96.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(35,10,5,'ar','64.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(36,11,1,'ar','34.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(37,11,2,'ar','39.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(38,11,3,'ar','79.92 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(39,11,4,'ar','82.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(40,11,5,'ar','24.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(41,12,6,'ar','17.08 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(42,12,7,'ar','71.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(43,13,6,'ar','39.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(44,13,7,'ar','17.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(45,14,1,'ar','32.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(46,14,2,'ar','34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(47,14,3,'ar','47.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(48,14,4,'ar','78.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(49,14,5,'ar','64.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(50,15,6,'ar','29.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(51,15,7,'ar','53.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(52,16,6,'ar','72.51 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(53,16,7,'ar','2.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(54,17,1,'ar','21.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(55,17,2,'ar','49.22 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(56,17,3,'ar','76.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(57,17,4,'ar','72.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(58,17,5,'ar','72.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(59,18,6,'ar','29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(60,18,7,'ar','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(61,19,1,'ar','24.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(62,19,2,'ar','7.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(63,19,3,'ar','87.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(64,19,4,'ar','44.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(65,19,5,'ar','96.42 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(66,20,1,'ar','64.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(67,20,2,'ar','14.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(68,20,3,'ar','38.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(69,20,4,'ar','61.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(70,20,5,'ar','36.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(71,21,6,'ar','50.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(72,21,7,'ar','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(73,22,6,'ar','86.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(74,22,7,'ar','18.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(75,23,1,'ar','81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(76,23,2,'ar','13.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(77,23,3,'ar','81.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(78,23,4,'ar','1.13 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(79,23,5,'ar','77.74 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(80,24,6,'ar','75.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(81,24,7,'ar','89.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(82,25,6,'ar','1.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(83,25,7,'ar','46.97 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(84,26,1,'ar','73.66 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(85,26,2,'ar','39.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(86,26,3,'ar','94.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(87,26,4,'ar','61.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(88,26,5,'ar','45.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(89,27,6,'ar','61.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(90,27,7,'ar','82.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(91,28,6,'ar','75.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(92,28,7,'ar','21.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(93,29,6,'ar','2.43 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(94,29,7,'ar','40.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(95,30,1,'ar','92.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(96,30,2,'ar','89.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(97,30,3,'ar','10.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(98,30,4,'ar','56.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(99,30,5,'ar','27.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(100,31,6,'ar','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(101,31,7,'ar','66.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(102,32,6,'ar','50.78 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(103,32,7,'ar','30.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(104,33,6,'ar','32.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(105,33,7,'ar','24.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(106,34,1,'ar','5.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(107,34,2,'ar','16.84 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(108,34,3,'ar','53.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(109,34,4,'ar','22.85 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(110,34,5,'ar','28.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(111,35,6,'ar','91.89 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(112,35,7,'ar','54.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(113,36,6,'ar','52.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(114,36,7,'ar','25.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(115,37,1,'ar','46.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(116,37,2,'ar','41.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(117,37,3,'ar','52.38 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(118,37,4,'ar','78.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(119,37,5,'ar','32.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(120,38,6,'ar','23.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(121,38,7,'ar','55.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(122,39,1,'ar','2.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(123,39,2,'ar','93.16 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(124,39,3,'ar','34.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(125,39,4,'ar','39.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(126,39,5,'ar','86.4 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(127,40,6,'ar','55.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(128,40,7,'ar','44.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(129,41,1,'ar','65.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(130,41,2,'ar','81.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(131,41,3,'ar','86.15 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(132,41,4,'ar','71.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(133,41,5,'ar','53.73 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(134,42,1,'ar','23.28 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(135,42,2,'ar','72.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(136,42,3,'ar','51.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(137,42,4,'ar','22.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(138,42,5,'ar','58.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(139,43,6,'ar','32.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(140,43,7,'ar','40.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(141,44,6,'ar','1.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(142,44,7,'ar','19.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(143,45,6,'ar','95.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(144,45,7,'ar','4.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(145,46,1,'ar','57.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(146,46,2,'ar','80.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(147,46,3,'ar','96.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(148,46,4,'ar','14.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(149,46,5,'ar','32.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(150,47,1,'ar','88.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(151,47,2,'ar','51.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(152,47,3,'ar','97.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(153,47,4,'ar','92.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(154,47,5,'ar','40.96 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(155,48,6,'ar','51.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(156,48,7,'ar','90.27 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(157,49,1,'ar','40.87 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(158,49,2,'ar','51.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(159,49,3,'ar','52.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(160,49,4,'ar','65.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(161,49,5,'ar','88.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(162,50,1,'ar','31.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(163,50,2,'ar','14.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(164,50,3,'ar','78.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(165,50,4,'ar','21.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(166,50,5,'ar','10.49 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(167,51,6,'ar','61.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(168,51,7,'ar','71.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(169,52,1,'ar','38.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(170,52,2,'ar','47.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(171,52,3,'ar','88.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(172,52,4,'ar','6.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(173,52,5,'ar','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(174,53,6,'ar','37.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(175,53,7,'ar','69.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(176,54,1,'ar','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(177,54,2,'ar','82.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(178,54,3,'ar','17.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(179,54,4,'ar','35.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(180,54,5,'ar','76.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(181,1,6,'vi','68.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(182,1,7,'vi','98.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(183,2,1,'vi','4.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(184,2,2,'vi','33.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(185,2,3,'vi','28.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(186,2,4,'vi','89.36 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(187,2,5,'vi','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(188,3,6,'vi','23.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(189,3,7,'vi','39.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(190,4,1,'vi','9.3 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(191,4,2,'vi','7.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(192,4,3,'vi','54.94 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(193,4,4,'vi','89.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(194,4,5,'vi','27.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(195,5,6,'vi','33.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(196,5,7,'vi','18.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(197,6,6,'vi','32.26 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(198,6,7,'vi','9.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(199,7,6,'vi','75.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(200,7,7,'vi','92.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(201,8,1,'vi','46.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(202,8,2,'vi','44.37 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(203,8,3,'vi','54.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(204,8,4,'vi','27.7 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(205,8,5,'vi','6.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(206,9,1,'vi','59.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(207,9,2,'vi','50.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(208,9,3,'vi','25.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(209,9,4,'vi','77.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(210,9,5,'vi','65.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(211,10,1,'vi','36.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(212,10,2,'vi','41.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(213,10,3,'vi','73.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(214,10,4,'vi','96.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(215,10,5,'vi','64.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(216,11,1,'vi','34.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(217,11,2,'vi','39.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(218,11,3,'vi','79.92 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(219,11,4,'vi','82.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(220,11,5,'vi','24.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(221,12,6,'vi','17.08 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(222,12,7,'vi','71.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(223,13,6,'vi','39.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(224,13,7,'vi','17.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(225,14,1,'vi','32.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(226,14,2,'vi','34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(227,14,3,'vi','47.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(228,14,4,'vi','78.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(229,14,5,'vi','64.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(230,15,6,'vi','29.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(231,15,7,'vi','53.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(232,16,6,'vi','72.51 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(233,16,7,'vi','2.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(234,17,1,'vi','21.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(235,17,2,'vi','49.22 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(236,17,3,'vi','76.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(237,17,4,'vi','72.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(238,17,5,'vi','72.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(239,18,6,'vi','29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(240,18,7,'vi','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(241,19,1,'vi','24.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(242,19,2,'vi','7.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(243,19,3,'vi','87.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(244,19,4,'vi','44.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(245,19,5,'vi','96.42 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(246,20,1,'vi','64.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(247,20,2,'vi','14.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(248,20,3,'vi','38.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(249,20,4,'vi','61.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(250,20,5,'vi','36.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(251,21,6,'vi','50.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(252,21,7,'vi','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(253,22,6,'vi','86.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(254,22,7,'vi','18.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(255,23,1,'vi','81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(256,23,2,'vi','13.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(257,23,3,'vi','81.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(258,23,4,'vi','1.13 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(259,23,5,'vi','77.74 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(260,24,6,'vi','75.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(261,24,7,'vi','89.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(262,25,6,'vi','1.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(263,25,7,'vi','46.97 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(264,26,1,'vi','73.66 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(265,26,2,'vi','39.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(266,26,3,'vi','94.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(267,26,4,'vi','61.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(268,26,5,'vi','45.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(269,27,6,'vi','61.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(270,27,7,'vi','82.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(271,28,6,'vi','75.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(272,28,7,'vi','21.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(273,29,6,'vi','2.43 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(274,29,7,'vi','40.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(275,30,1,'vi','92.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(276,30,2,'vi','89.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(277,30,3,'vi','10.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(278,30,4,'vi','56.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(279,30,5,'vi','27.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(280,31,6,'vi','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(281,31,7,'vi','66.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(282,32,6,'vi','50.78 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(283,32,7,'vi','30.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(284,33,6,'vi','32.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(285,33,7,'vi','24.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(286,34,1,'vi','5.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(287,34,2,'vi','16.84 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(288,34,3,'vi','53.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(289,34,4,'vi','22.85 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(290,34,5,'vi','28.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(291,35,6,'vi','91.89 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(292,35,7,'vi','54.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(293,36,6,'vi','52.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(294,36,7,'vi','25.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(295,37,1,'vi','46.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(296,37,2,'vi','41.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(297,37,3,'vi','52.38 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(298,37,4,'vi','78.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(299,37,5,'vi','32.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(300,38,6,'vi','23.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(301,38,7,'vi','55.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(302,39,1,'vi','2.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(303,39,2,'vi','93.16 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(304,39,3,'vi','34.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(305,39,4,'vi','39.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(306,39,5,'vi','86.4 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(307,40,6,'vi','55.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(308,40,7,'vi','44.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(309,41,1,'vi','65.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(310,41,2,'vi','81.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(311,41,3,'vi','86.15 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(312,41,4,'vi','71.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(313,41,5,'vi','53.73 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(314,42,1,'vi','23.28 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(315,42,2,'vi','72.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(316,42,3,'vi','51.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(317,42,4,'vi','22.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(318,42,5,'vi','58.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(319,43,6,'vi','32.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(320,43,7,'vi','40.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(321,44,6,'vi','1.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(322,44,7,'vi','19.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(323,45,6,'vi','95.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(324,45,7,'vi','4.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(325,46,1,'vi','57.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(326,46,2,'vi','80.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(327,46,3,'vi','96.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(328,46,4,'vi','14.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(329,46,5,'vi','32.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(330,47,1,'vi','88.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(331,47,2,'vi','51.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(332,47,3,'vi','97.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(333,47,4,'vi','92.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(334,47,5,'vi','40.96 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(335,48,6,'vi','51.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(336,48,7,'vi','90.27 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(337,49,1,'vi','40.87 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(338,49,2,'vi','51.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(339,49,3,'vi','52.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(340,49,4,'vi','65.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(341,49,5,'vi','88.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(342,50,1,'vi','31.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(343,50,2,'vi','14.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(344,50,3,'vi','78.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(345,50,4,'vi','21.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(346,50,5,'vi','10.49 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(347,51,6,'vi','61.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(348,51,7,'vi','71.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(349,52,1,'vi','38.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(350,52,2,'vi','47.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(351,52,3,'vi','88.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(352,52,4,'vi','6.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(353,52,5,'vi','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(354,53,6,'vi','37.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(355,53,7,'vi','69.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(356,54,1,'vi','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(357,54,2,'vi','82.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(358,54,3,'vi','17.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(359,54,4,'vi','35.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(360,54,5,'vi','76.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(361,1,6,'fr','68.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(362,1,7,'fr','98.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(363,2,1,'fr','4.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(364,2,2,'fr','33.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(365,2,3,'fr','28.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(366,2,4,'fr','89.36 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(367,2,5,'fr','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(368,3,6,'fr','23.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(369,3,7,'fr','39.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(370,4,1,'fr','9.3 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(371,4,2,'fr','7.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(372,4,3,'fr','54.94 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(373,4,4,'fr','89.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(374,4,5,'fr','27.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(375,5,6,'fr','33.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(376,5,7,'fr','18.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(377,6,6,'fr','32.26 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(378,6,7,'fr','9.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(379,7,6,'fr','75.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(380,7,7,'fr','92.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(381,8,1,'fr','46.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(382,8,2,'fr','44.37 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(383,8,3,'fr','54.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(384,8,4,'fr','27.7 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(385,8,5,'fr','6.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(386,9,1,'fr','59.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(387,9,2,'fr','50.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(388,9,3,'fr','25.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(389,9,4,'fr','77.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(390,9,5,'fr','65.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(391,10,1,'fr','36.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(392,10,2,'fr','41.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(393,10,3,'fr','73.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(394,10,4,'fr','96.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(395,10,5,'fr','64.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(396,11,1,'fr','34.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(397,11,2,'fr','39.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(398,11,3,'fr','79.92 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(399,11,4,'fr','82.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(400,11,5,'fr','24.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(401,12,6,'fr','17.08 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(402,12,7,'fr','71.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(403,13,6,'fr','39.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(404,13,7,'fr','17.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(405,14,1,'fr','32.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(406,14,2,'fr','34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(407,14,3,'fr','47.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(408,14,4,'fr','78.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(409,14,5,'fr','64.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(410,15,6,'fr','29.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(411,15,7,'fr','53.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(412,16,6,'fr','72.51 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(413,16,7,'fr','2.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(414,17,1,'fr','21.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(415,17,2,'fr','49.22 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(416,17,3,'fr','76.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(417,17,4,'fr','72.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(418,17,5,'fr','72.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(419,18,6,'fr','29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(420,18,7,'fr','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(421,19,1,'fr','24.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(422,19,2,'fr','7.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(423,19,3,'fr','87.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(424,19,4,'fr','44.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(425,19,5,'fr','96.42 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(426,20,1,'fr','64.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(427,20,2,'fr','14.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(428,20,3,'fr','38.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(429,20,4,'fr','61.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(430,20,5,'fr','36.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(431,21,6,'fr','50.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(432,21,7,'fr','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(433,22,6,'fr','86.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(434,22,7,'fr','18.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(435,23,1,'fr','81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(436,23,2,'fr','13.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(437,23,3,'fr','81.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(438,23,4,'fr','1.13 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(439,23,5,'fr','77.74 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(440,24,6,'fr','75.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(441,24,7,'fr','89.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(442,25,6,'fr','1.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(443,25,7,'fr','46.97 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(444,26,1,'fr','73.66 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(445,26,2,'fr','39.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(446,26,3,'fr','94.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(447,26,4,'fr','61.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(448,26,5,'fr','45.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(449,27,6,'fr','61.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(450,27,7,'fr','82.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(451,28,6,'fr','75.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(452,28,7,'fr','21.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(453,29,6,'fr','2.43 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(454,29,7,'fr','40.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(455,30,1,'fr','92.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(456,30,2,'fr','89.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(457,30,3,'fr','10.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(458,30,4,'fr','56.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(459,30,5,'fr','27.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(460,31,6,'fr','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(461,31,7,'fr','66.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(462,32,6,'fr','50.78 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(463,32,7,'fr','30.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(464,33,6,'fr','32.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(465,33,7,'fr','24.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(466,34,1,'fr','5.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(467,34,2,'fr','16.84 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(468,34,3,'fr','53.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(469,34,4,'fr','22.85 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(470,34,5,'fr','28.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(471,35,6,'fr','91.89 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(472,35,7,'fr','54.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(473,36,6,'fr','52.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(474,36,7,'fr','25.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(475,37,1,'fr','46.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(476,37,2,'fr','41.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(477,37,3,'fr','52.38 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(478,37,4,'fr','78.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(479,37,5,'fr','32.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(480,38,6,'fr','23.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(481,38,7,'fr','55.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(482,39,1,'fr','2.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(483,39,2,'fr','93.16 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(484,39,3,'fr','34.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(485,39,4,'fr','39.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(486,39,5,'fr','86.4 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(487,40,6,'fr','55.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(488,40,7,'fr','44.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(489,41,1,'fr','65.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(490,41,2,'fr','81.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(491,41,3,'fr','86.15 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(492,41,4,'fr','71.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(493,41,5,'fr','53.73 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(494,42,1,'fr','23.28 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(495,42,2,'fr','72.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(496,42,3,'fr','51.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(497,42,4,'fr','22.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(498,42,5,'fr','58.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(499,43,6,'fr','32.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(500,43,7,'fr','40.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(501,44,6,'fr','1.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(502,44,7,'fr','19.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(503,45,6,'fr','95.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(504,45,7,'fr','4.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(505,46,1,'fr','57.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(506,46,2,'fr','80.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(507,46,3,'fr','96.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(508,46,4,'fr','14.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(509,46,5,'fr','32.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(510,47,1,'fr','88.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(511,47,2,'fr','51.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(512,47,3,'fr','97.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(513,47,4,'fr','92.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(514,47,5,'fr','40.96 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(515,48,6,'fr','51.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(516,48,7,'fr','90.27 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(517,49,1,'fr','40.87 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(518,49,2,'fr','51.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(519,49,3,'fr','52.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(520,49,4,'fr','65.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(521,49,5,'fr','88.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(522,50,1,'fr','31.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(523,50,2,'fr','14.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(524,50,3,'fr','78.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(525,50,4,'fr','21.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(526,50,5,'fr','10.49 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(527,51,6,'fr','61.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(528,51,7,'fr','71.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(529,52,1,'fr','38.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(530,52,2,'fr','47.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(531,52,3,'fr','88.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(532,52,4,'fr','6.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(533,52,5,'fr','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(534,53,6,'fr','37.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(535,53,7,'fr','69.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(536,54,1,'fr','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(537,54,2,'fr','82.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(538,54,3,'fr','17.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(539,54,4,'fr','35.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(540,54,5,'fr','76.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(541,1,6,'id','68.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(542,1,7,'id','98.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(543,2,1,'id','4.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(544,2,2,'id','33.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(545,2,3,'id','28.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(546,2,4,'id','89.36 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(547,2,5,'id','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(548,3,6,'id','23.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(549,3,7,'id','39.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(550,4,1,'id','9.3 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(551,4,2,'id','7.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(552,4,3,'id','54.94 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(553,4,4,'id','89.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(554,4,5,'id','27.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(555,5,6,'id','33.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(556,5,7,'id','18.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(557,6,6,'id','32.26 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(558,6,7,'id','9.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(559,7,6,'id','75.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(560,7,7,'id','92.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(561,8,1,'id','46.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(562,8,2,'id','44.37 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(563,8,3,'id','54.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(564,8,4,'id','27.7 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(565,8,5,'id','6.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(566,9,1,'id','59.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(567,9,2,'id','50.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(568,9,3,'id','25.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(569,9,4,'id','77.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(570,9,5,'id','65.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(571,10,1,'id','36.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(572,10,2,'id','41.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(573,10,3,'id','73.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(574,10,4,'id','96.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(575,10,5,'id','64.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(576,11,1,'id','34.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(577,11,2,'id','39.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(578,11,3,'id','79.92 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(579,11,4,'id','82.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(580,11,5,'id','24.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(581,12,6,'id','17.08 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(582,12,7,'id','71.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(583,13,6,'id','39.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(584,13,7,'id','17.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(585,14,1,'id','32.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(586,14,2,'id','34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(587,14,3,'id','47.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(588,14,4,'id','78.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(589,14,5,'id','64.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(590,15,6,'id','29.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(591,15,7,'id','53.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(592,16,6,'id','72.51 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(593,16,7,'id','2.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(594,17,1,'id','21.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(595,17,2,'id','49.22 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(596,17,3,'id','76.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(597,17,4,'id','72.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(598,17,5,'id','72.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(599,18,6,'id','29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(600,18,7,'id','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(601,19,1,'id','24.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(602,19,2,'id','7.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(603,19,3,'id','87.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(604,19,4,'id','44.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(605,19,5,'id','96.42 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(606,20,1,'id','64.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(607,20,2,'id','14.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(608,20,3,'id','38.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(609,20,4,'id','61.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(610,20,5,'id','36.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(611,21,6,'id','50.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(612,21,7,'id','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(613,22,6,'id','86.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(614,22,7,'id','18.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(615,23,1,'id','81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(616,23,2,'id','13.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(617,23,3,'id','81.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(618,23,4,'id','1.13 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(619,23,5,'id','77.74 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(620,24,6,'id','75.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(621,24,7,'id','89.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(622,25,6,'id','1.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(623,25,7,'id','46.97 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(624,26,1,'id','73.66 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(625,26,2,'id','39.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(626,26,3,'id','94.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(627,26,4,'id','61.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(628,26,5,'id','45.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(629,27,6,'id','61.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(630,27,7,'id','82.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(631,28,6,'id','75.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(632,28,7,'id','21.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(633,29,6,'id','2.43 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(634,29,7,'id','40.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(635,30,1,'id','92.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(636,30,2,'id','89.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(637,30,3,'id','10.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(638,30,4,'id','56.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(639,30,5,'id','27.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(640,31,6,'id','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(641,31,7,'id','66.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(642,32,6,'id','50.78 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(643,32,7,'id','30.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(644,33,6,'id','32.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(645,33,7,'id','24.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(646,34,1,'id','5.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(647,34,2,'id','16.84 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(648,34,3,'id','53.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(649,34,4,'id','22.85 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(650,34,5,'id','28.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(651,35,6,'id','91.89 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(652,35,7,'id','54.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(653,36,6,'id','52.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(654,36,7,'id','25.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(655,37,1,'id','46.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(656,37,2,'id','41.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(657,37,3,'id','52.38 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(658,37,4,'id','78.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(659,37,5,'id','32.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(660,38,6,'id','23.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(661,38,7,'id','55.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(662,39,1,'id','2.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(663,39,2,'id','93.16 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(664,39,3,'id','34.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(665,39,4,'id','39.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(666,39,5,'id','86.4 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(667,40,6,'id','55.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(668,40,7,'id','44.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(669,41,1,'id','65.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(670,41,2,'id','81.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(671,41,3,'id','86.15 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(672,41,4,'id','71.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(673,41,5,'id','53.73 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(674,42,1,'id','23.28 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(675,42,2,'id','72.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(676,42,3,'id','51.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(677,42,4,'id','22.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(678,42,5,'id','58.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(679,43,6,'id','32.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(680,43,7,'id','40.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(681,44,6,'id','1.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(682,44,7,'id','19.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(683,45,6,'id','95.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(684,45,7,'id','4.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(685,46,1,'id','57.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(686,46,2,'id','80.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(687,46,3,'id','96.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(688,46,4,'id','14.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(689,46,5,'id','32.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(690,47,1,'id','88.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(691,47,2,'id','51.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(692,47,3,'id','97.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(693,47,4,'id','92.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(694,47,5,'id','40.96 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(695,48,6,'id','51.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(696,48,7,'id','90.27 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(697,49,1,'id','40.87 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(698,49,2,'id','51.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(699,49,3,'id','52.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(700,49,4,'id','65.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(701,49,5,'id','88.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(702,50,1,'id','31.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(703,50,2,'id','14.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(704,50,3,'id','78.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(705,50,4,'id','21.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(706,50,5,'id','10.49 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(707,51,6,'id','61.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(708,51,7,'id','71.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(709,52,1,'id','38.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(710,52,2,'id','47.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(711,52,3,'id','88.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(712,52,4,'id','6.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(713,52,5,'id','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(714,53,6,'id','37.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(715,53,7,'id','69.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(716,54,1,'id','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(717,54,2,'id','82.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(718,54,3,'id','17.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(719,54,4,'id','35.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(720,54,5,'id','76.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(721,1,6,'tr','68.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(722,1,7,'tr','98.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(723,2,1,'tr','4.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(724,2,2,'tr','33.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(725,2,3,'tr','28.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(726,2,4,'tr','89.36 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(727,2,5,'tr','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(728,3,6,'tr','23.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(729,3,7,'tr','39.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(730,4,1,'tr','9.3 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(731,4,2,'tr','7.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(732,4,3,'tr','54.94 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(733,4,4,'tr','89.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(734,4,5,'tr','27.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(735,5,6,'tr','33.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(736,5,7,'tr','18.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(737,6,6,'tr','32.26 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(738,6,7,'tr','9.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(739,7,6,'tr','75.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(740,7,7,'tr','92.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(741,8,1,'tr','46.44 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(742,8,2,'tr','44.37 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(743,8,3,'tr','54.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(744,8,4,'tr','27.7 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(745,8,5,'tr','6.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(746,9,1,'tr','59.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(747,9,2,'tr','50.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(748,9,3,'tr','25.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(749,9,4,'tr','77.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(750,9,5,'tr','65.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(751,10,1,'tr','36.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(752,10,2,'tr','41.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(753,10,3,'tr','73.2 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(754,10,4,'tr','96.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(755,10,5,'tr','64.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(756,11,1,'tr','34.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(757,11,2,'tr','39.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(758,11,3,'tr','79.92 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(759,11,4,'tr','82.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(760,11,5,'tr','24.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(761,12,6,'tr','17.08 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(762,12,7,'tr','71.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(763,13,6,'tr','39.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(764,13,7,'tr','17.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(765,14,1,'tr','32.11 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(766,14,2,'tr','34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(767,14,3,'tr','47.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(768,14,4,'tr','78.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(769,14,5,'tr','64.48 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(770,15,6,'tr','29.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(771,15,7,'tr','53.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(772,16,6,'tr','72.51 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(773,16,7,'tr','2.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(774,17,1,'tr','21.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(775,17,2,'tr','49.22 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(776,17,3,'tr','76.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(777,17,4,'tr','72.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(778,17,5,'tr','72.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(779,18,6,'tr','29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(780,18,7,'tr','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(781,19,1,'tr','24.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(782,19,2,'tr','7.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(783,19,3,'tr','87.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(784,19,4,'tr','44.93 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(785,19,5,'tr','96.42 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(786,20,1,'tr','64.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(787,20,2,'tr','14.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(788,20,3,'tr','38.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(789,20,4,'tr','61.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(790,20,5,'tr','36.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(791,21,6,'tr','50.29 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(792,21,7,'tr','24.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(793,22,6,'tr','86.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(794,22,7,'tr','18.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(795,23,1,'tr','81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(796,23,2,'tr','13.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(797,23,3,'tr','81.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(798,23,4,'tr','1.13 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(799,23,5,'tr','77.74 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(800,24,6,'tr','75.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(801,24,7,'tr','89.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(802,25,6,'tr','1.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(803,25,7,'tr','46.97 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(804,26,1,'tr','73.66 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(805,26,2,'tr','39.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(806,26,3,'tr','94.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(807,26,4,'tr','61.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(808,26,5,'tr','45.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(809,27,6,'tr','61.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(810,27,7,'tr','82.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(811,28,6,'tr','75.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(812,28,7,'tr','21.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(813,29,6,'tr','2.43 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(814,29,7,'tr','40.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(815,30,1,'tr','92.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(816,30,2,'tr','89.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(817,30,3,'tr','10.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(818,30,4,'tr','56.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(819,30,5,'tr','27.83 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(820,31,6,'tr','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(821,31,7,'tr','66.41 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(822,32,6,'tr','50.78 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(823,32,7,'tr','30.23 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(824,33,6,'tr','32.68 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(825,33,7,'tr','24.6 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(826,34,1,'tr','5.12 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(827,34,2,'tr','16.84 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(828,34,3,'tr','53.82 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(829,34,4,'tr','22.85 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(830,34,5,'tr','28.47 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(831,35,6,'tr','91.89 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(832,35,7,'tr','54.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(833,36,6,'tr','52.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(834,36,7,'tr','25.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(835,37,1,'tr','46.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(836,37,2,'tr','41.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(837,37,3,'tr','52.38 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(838,37,4,'tr','78.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(839,37,5,'tr','32.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(840,38,6,'tr','23.57 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(841,38,7,'tr','55.03 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(842,39,1,'tr','2.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(843,39,2,'tr','93.16 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(844,39,3,'tr','34.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(845,39,4,'tr','39.04 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(846,39,5,'tr','86.4 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(847,40,6,'tr','55.34 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(848,40,7,'tr','44.31 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(849,41,1,'tr','65.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(850,41,2,'tr','81.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(851,41,3,'tr','86.15 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(852,41,4,'tr','71.05 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(853,41,5,'tr','53.73 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(854,42,1,'tr','23.28 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(855,42,2,'tr','72.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(856,42,3,'tr','51.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(857,42,4,'tr','22.77 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(858,42,5,'tr','58.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(859,43,6,'tr','32.8 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(860,43,7,'tr','40.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(861,44,6,'tr','1.59 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(862,44,7,'tr','19.21 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(863,45,6,'tr','95.86 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(864,45,7,'tr','4.17 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(865,46,1,'tr','57.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(866,46,2,'tr','80.76 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(867,46,3,'tr','96.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(868,46,4,'tr','14.63 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(869,46,5,'tr','32.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(870,47,1,'tr','88.52 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(871,47,2,'tr','51.18 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(872,47,3,'tr','97.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(873,47,4,'tr','92.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(874,47,5,'tr','40.96 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(875,48,6,'tr','51.1 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(876,48,7,'tr','90.27 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(877,49,1,'tr','40.87 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(878,49,2,'tr','51.24 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(879,49,3,'tr','52.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(880,49,4,'tr','65.58 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(881,49,5,'tr','88.61 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(882,50,1,'tr','31.71 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(883,50,2,'tr','14.56 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(884,50,3,'tr','78.35 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(885,50,4,'tr','21.55 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(886,50,5,'tr','10.49 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(887,51,6,'tr','61.39 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(888,51,7,'tr','71.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(889,52,1,'tr','38.46 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(890,52,2,'tr','47.88 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(891,52,3,'tr','88.95 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(892,52,4,'tr','6.91 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(893,52,5,'tr','61.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(894,53,6,'tr','37.75 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(895,53,7,'tr','69.81 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(896,54,1,'tr','82.62 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(897,54,2,'tr','82.67 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(898,54,3,'tr','17.5 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(899,54,4,'tr','35.25 cm','2026-03-06 01:42:59','2026-03-06 01:42:59'),(900,54,5,'tr','76.99 cm','2026-03-06 01:42:59','2026-03-06 01:42:59');
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,NULL,'published','2026-03-06 01:42:54','2026-03-06 01:42:54'),(2,'Mobile',NULL,NULL,'published','2026-03-06 01:42:54','2026-03-06 01:42:54'),(3,'Iphone',NULL,NULL,'published','2026-03-06 01:42:54','2026-03-06 01:42:54'),(4,'Printer',NULL,NULL,'published','2026-03-06 01:42:54','2026-03-06 01:42:54'),(5,'Office',NULL,NULL,'published','2026-03-06 01:42:54','2026-03-06 01:42:54'),(6,'IT',NULL,NULL,'published','2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`),
  KEY `idx_product_tags_fk` (`ec_product_tags_id`),
  KEY `idx_product_tags_product_tags_lang` (`ec_product_tags_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_up_sale_relations` VALUES (1,13,0,10.00,'percent',1),(2,29,0,20.00,'fixed',1),(2,40,0,10.00,'fixed',1),(3,21,0,5.00,'percent',1),(3,46,0,5.00,'fixed',1),(4,22,0,15.00,'percent',1),(4,37,0,10.00,'percent',1),(5,18,0,5.00,'fixed',1),(5,51,0,20.00,'percent',1),(6,7,0,15.00,'percent',1),(6,33,0,10.00,'fixed',1),(7,21,0,5.00,'percent',1),(7,33,0,50.00,'fixed',1),(8,14,0,20.00,'percent',1),(8,31,0,10.00,'percent',1),(9,4,0,20.00,'fixed',1),(9,16,0,20.00,'fixed',1),(10,2,0,20.00,'fixed',1),(10,14,0,50.00,'fixed',1),(11,31,0,20.00,'percent',1),(11,35,0,10.00,'fixed',1),(12,39,0,15.00,'percent',1),(12,50,0,10.00,'fixed',1),(13,4,0,5.00,'fixed',1),(13,44,0,5.00,'percent',1),(14,43,0,5.00,'fixed',1),(14,46,0,10.00,'percent',1),(15,11,0,5.00,'percent',1),(15,14,0,50.00,'fixed',1),(16,10,0,50.00,'fixed',1),(16,51,0,10.00,'percent',1),(17,8,0,20.00,'fixed',1),(17,43,0,15.00,'percent',1),(18,17,0,20.00,'percent',1),(18,34,0,5.00,'fixed',1),(19,28,0,20.00,'fixed',1),(19,51,0,10.00,'fixed',1),(20,9,0,50.00,'fixed',1),(20,28,0,20.00,'percent',1),(21,10,0,20.00,'fixed',1),(21,30,0,20.00,'percent',1),(22,27,0,20.00,'fixed',1),(22,49,0,20.00,'percent',1),(23,5,0,50.00,'fixed',1),(23,15,0,50.00,'fixed',1),(24,1,0,10.00,'percent',1),(24,17,0,5.00,'fixed',1),(25,29,0,20.00,'percent',1),(25,52,0,50.00,'fixed',1),(26,2,0,50.00,'fixed',1),(26,7,0,20.00,'fixed',1),(27,11,0,20.00,'fixed',1),(27,12,0,10.00,'fixed',1),(28,6,0,10.00,'percent',1),(28,37,0,5.00,'percent',1),(29,2,0,20.00,'fixed',1),(29,12,0,5.00,'percent',1),(30,14,0,20.00,'fixed',1),(30,40,0,50.00,'fixed',1),(31,39,0,10.00,'fixed',1),(31,53,0,15.00,'percent',1),(32,14,0,50.00,'fixed',1),(32,38,0,50.00,'fixed',1),(33,13,0,50.00,'fixed',1),(33,52,0,10.00,'fixed',1),(34,9,0,5.00,'fixed',1),(34,13,0,10.00,'fixed',1),(35,9,0,10.00,'fixed',1),(35,36,0,5.00,'fixed',1),(36,29,0,15.00,'percent',1),(36,52,0,15.00,'percent',1),(37,3,0,15.00,'percent',1),(37,27,0,5.00,'percent',1),(38,30,0,5.00,'fixed',1),(38,31,0,5.00,'fixed',1),(39,12,0,5.00,'percent',1),(39,30,0,20.00,'percent',1),(40,23,0,20.00,'percent',1),(40,33,0,50.00,'fixed',1),(41,48,0,20.00,'percent',1),(41,52,0,5.00,'percent',1),(42,8,0,20.00,'percent',1),(42,53,0,5.00,'fixed',1),(43,4,0,20.00,'fixed',1),(43,50,0,5.00,'fixed',1),(44,47,0,20.00,'fixed',1),(44,54,0,50.00,'fixed',1),(45,19,0,15.00,'percent',1),(45,50,0,50.00,'fixed',1),(46,17,0,20.00,'percent',1),(46,54,0,5.00,'fixed',1),(47,5,0,20.00,'percent',1),(47,12,0,50.00,'fixed',1),(48,4,0,20.00,'fixed',1),(48,45,0,20.00,'fixed',1),(49,12,0,20.00,'percent',1),(49,16,0,20.00,'percent',1),(50,2,0,20.00,'fixed',1),(50,21,0,50.00,'fixed',1),(51,2,0,15.00,'percent',1),(51,46,0,5.00,'percent',1),(52,14,0,20.00,'fixed',1),(52,45,0,5.00,'fixed',1),(53,8,0,15.00,'percent',1),(53,16,0,20.00,'percent',1),(54,8,0,20.00,'percent',1),(54,20,0,50.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`),
  KEY `ec_product_variation_items_variation_id_attribute_id_index` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (3,1,2),(9,1,5),(15,1,8),(21,1,11),(47,1,24),(51,1,26),(65,1,33),(71,1,36),(85,1,43),(103,1,52),(131,1,66),(135,1,68),(143,1,72),(11,2,6),(29,2,15),(33,2,17),(39,2,20),(43,2,22),(57,2,29),(63,2,32),(69,2,35),(79,2,40),(81,2,41),(83,2,42),(99,2,50),(105,2,53),(107,2,54),(111,2,56),(127,2,64),(7,3,4),(19,3,10),(35,3,18),(53,3,27),(59,3,30),(91,3,46),(93,3,47),(101,3,51),(113,3,57),(125,3,63),(129,3,65),(139,3,70),(1,4,1),(13,4,7),(17,4,9),(23,4,12),(27,4,14),(31,4,16),(41,4,21),(45,4,23),(55,4,28),(61,4,31),(67,4,34),(77,4,39),(87,4,44),(95,4,48),(115,4,58),(117,4,59),(133,4,67),(137,4,69),(5,5,3),(25,5,13),(37,5,19),(49,5,25),(73,5,37),(75,5,38),(89,5,45),(97,5,49),(109,5,55),(119,5,60),(121,5,61),(123,5,62),(141,5,71),(2,6,1),(14,6,7),(24,6,12),(66,6,33),(68,6,34),(94,6,47),(102,6,51),(108,6,54),(112,6,56),(116,6,58),(124,6,62),(10,7,5),(12,7,6),(18,7,9),(20,7,10),(26,7,13),(32,7,16),(42,7,21),(56,7,28),(62,7,31),(86,7,43),(90,7,45),(92,7,46),(130,7,65),(4,8,2),(6,8,3),(8,8,4),(30,8,15),(36,8,18),(38,8,19),(40,8,20),(44,8,22),(48,8,24),(50,8,25),(58,8,29),(60,8,30),(70,8,35),(76,8,38),(96,8,48),(106,8,53),(110,8,55),(132,8,66),(140,8,70),(16,9,8),(34,9,17),(54,9,27),(74,9,37),(80,9,40),(82,9,41),(88,9,44),(100,9,50),(114,9,57),(122,9,61),(126,9,63),(128,9,64),(136,9,68),(138,9,69),(22,10,11),(28,10,14),(46,10,23),(52,10,26),(64,10,32),(72,10,36),(78,10,39),(84,10,42),(98,10,49),(104,10,52),(118,10,59),(120,10,60),(134,10,67),(142,10,71),(144,10,72);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`),
  KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`),
  KEY `ec_product_variations_product_id_index` (`product_id`),
  KEY `ec_product_variations_configurable_product_id_index` (`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,55,1,1),(2,56,1,0),(3,57,2,1),(4,58,2,0),(5,59,3,1),(6,60,4,1),(7,61,5,1),(8,62,5,0),(9,63,6,1),(10,64,7,1),(11,65,7,0),(12,66,7,0),(13,67,8,1),(14,68,8,0),(15,69,8,0),(16,70,14,1),(17,71,14,0),(18,72,14,0),(19,73,14,0),(20,74,15,1),(21,75,15,0),(22,76,17,1),(23,77,18,1),(24,78,18,0),(25,79,18,0),(26,80,18,0),(27,81,19,1),(28,82,19,0),(29,83,22,1),(30,84,23,1),(31,85,23,0),(32,86,23,0),(33,87,24,1),(34,88,24,0),(35,89,26,1),(36,90,26,0),(37,91,26,0),(38,92,30,1),(39,93,30,0),(40,94,32,1),(41,95,32,0),(42,96,33,1),(43,97,33,0),(44,98,34,1),(45,99,34,0),(46,100,34,0),(47,101,34,0),(48,102,35,1),(49,103,35,0),(50,104,36,1),(51,105,37,1),(52,106,37,0),(53,107,40,1),(54,108,43,1),(55,109,43,0),(56,110,43,0),(57,111,43,0),(58,112,45,1),(59,113,45,0),(60,114,45,0),(61,115,46,1),(62,116,46,0),(63,117,46,0),(64,118,46,0),(65,119,49,1),(66,120,49,0),(67,121,50,1),(68,122,50,0),(69,123,50,0),(70,124,53,1),(71,125,53,0),(72,126,53,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2026-03-06',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0),(1,26,0),(2,26,0),(1,30,0),(2,30,0),(1,32,0),(2,32,0),(1,33,0),(2,33,0),(1,34,0),(2,34,0),(1,35,0),(2,35,0),(1,36,0),(2,36,0),(1,37,0),(2,37,0),(1,40,0),(2,40,0),(1,43,0),(2,43,0),(1,45,0),(2,45,0),(1,46,0),(2,46,0),(1,49,0),(2,49,0),(1,50,0),(2,50,0),(1,53,0),(2,53,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `is_new_until` date DEFAULT NULL,
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `variations_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT '0.00',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `tax_class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_includes_tax` tinyint(1) NOT NULL DEFAULT '0',
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  KEY `ec_products_variations_count_index` (`variations_count`),
  KEY `ec_products_slug_index` (`slug`),
  KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  KEY `idx_products_order_created` (`order`,`created_at`),
  KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  KEY `ec_products_reviews_count_index` (`reviews_count`),
  KEY `ec_products_reviews_avg_index` (`reviews_avg`),
  KEY `ec_products_status_is_variation_index` (`status`,`is_variation`),
  KEY `ec_products_storehouse_quantity_index` (`with_storehouse_management`,`quantity`),
  KEY `ec_products_currency_code_index` (`currency_code`),
  KEY `idx_store_variation_status` (`store_id`,`is_variation`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','smart-home-speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\",\"products\\/1-4.jpg\"]',NULL,'IU-102-A1',0,15,0,1,'in_stock',0,NULL,7,0,2,10,4.30,0,1773.78,NULL,NULL,NULL,14,19,17,741,NULL,'standard',173941,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8021311641388',NULL,NULL,0,0,'auto_generate',0,0,0,2,6,0),(2,'Headphone Ultra Bass','headphone-ultra-bass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\",\"products\\/2-4.jpg\"]',NULL,'N9-113-A1',0,13,0,1,'in_stock',0,NULL,2,0,2,10,2.80,0,149.28,NULL,NULL,NULL,18,14,19,549,NULL,'standard',49981,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','6954604782210',NULL,NULL,0,0,'auto_generate',0,0,0,1,2,0),(3,'Boxed - Bluetooth Headphone','boxed-bluetooth-headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\",\"products\\/3-4.jpg\"]',NULL,'PM-184-A1',0,16,0,1,'in_stock',0,NULL,2,0,1,10,3.50,0,1548.42,NULL,NULL,NULL,11,14,11,712,NULL,'standard',76352,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','6207900036854',NULL,NULL,0,0,'auto_generate',0,0,0,2,1,0),(4,'Camera Samsung SS-24 (Digital)','camera-samsung-ss-24','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/4-4.jpg\"]',NULL,'KG-149-A1',0,16,0,1,'in_stock',0,NULL,1,0,1,10,3.30,0,1774.65,1508.4525,NULL,NULL,16,11,16,743,NULL,'standard',160482,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','5360433758189',NULL,NULL,0,0,'auto_generate',0,0,0,1,6,0),(5,'Macbook Pro 2015','macbook-pro-2015','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/5-4.jpg\"]',NULL,'R6-195-A1',0,13,0,1,'in_stock',0,NULL,2,0,2,10,2.70,0,472.7,NULL,NULL,NULL,19,16,12,818,NULL,'standard',28152,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','0882171973747',NULL,NULL,0,0,'auto_generate',0,0,0,2,8,0),(6,'Apple Watch Serial 7','apple-watch-serial-7','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6-1.jpg\",\"products\\/6-2.jpg\",\"products\\/6-3.jpg\",\"products\\/6-4.jpg\"]',NULL,'DE-100-A1',0,18,0,1,'in_stock',0,NULL,4,0,1,9,3.22,0,424.58,NULL,NULL,NULL,19,16,19,618,NULL,'standard',30030,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','6719099727036',NULL,NULL,0,0,'auto_generate',0,0,0,2,5,0),(7,'Macbook Pro 13 inch','macbook-pro-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7-1.jpg\",\"products\\/7-2.jpg\",\"products\\/7-3.jpg\"]',NULL,'OM-135-A1',0,15,0,1,'in_stock',0,NULL,6,0,3,10,2.80,0,71.03,NULL,NULL,NULL,16,12,19,857,NULL,'standard',49052,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8706598095481',NULL,NULL,0,0,'auto_generate',0,0,0,2,9,0),(8,'Apple Keyboard (Digital)','apple-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\",\"products\\/8-4.jpg\"]',NULL,'JZ-197-A1',0,20,0,1,'in_stock',0,NULL,3,0,3,9,3.33,0,619.67,477.1459,NULL,NULL,18,11,14,737,NULL,'standard',5062,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','1620865745725',NULL,NULL,0,0,'auto_generate',0,0,0,1,9,0),(9,'MacSafe 80W','macsafe-80w','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/9-3.jpg\"]',NULL,'WZ-175',0,17,0,1,'in_stock',0,NULL,5,0,0,10,3.00,0,764.63,710.63,NULL,NULL,13,19,18,859,NULL,'standard',150240,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','4642500199196',NULL,NULL,0,0,'auto_generate',0,0,0,1,8,0),(10,'Hand playstation','hand-playstation','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10-1.jpg\",\"products\\/10-2.jpg\",\"products\\/10-3.jpg\",\"products\\/10-4.jpg\"]',NULL,'CC-152',0,11,0,1,'in_stock',0,NULL,4,0,0,9,3.00,0,511.9,208.9,NULL,NULL,13,16,20,633,NULL,'standard',104477,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7079042881918',NULL,NULL,0,0,'auto_generate',0,0,0,1,9,0),(11,'Apple Airpods Serial 3','apple-airpods-serial-3','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/11-4.jpg\"]',NULL,'NO-172',0,15,0,1,'in_stock',0,NULL,6,0,0,10,2.80,0,1504.73,1053.311,NULL,NULL,13,16,12,820,NULL,'standard',130977,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8825995678247',NULL,NULL,0,0,'auto_generate',0,0,0,1,6,0),(12,'Cool Smart Watches (Digital)','cool-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\",\"products\\/12-4.jpg\"]',NULL,'J5-197',0,15,0,1,'in_stock',0,NULL,6,0,0,10,2.20,0,589.11,505.11,NULL,NULL,16,11,19,879,NULL,'standard',33838,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','3032760386770',NULL,NULL,0,0,'auto_generate',0,0,0,2,6,0),(13,'Black Smart Watches','black-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13-1.jpg\",\"products\\/13-2.jpg\",\"products\\/13-3.jpg\",\"products\\/13-4.jpg\"]',NULL,'CM-152',0,13,0,1,'in_stock',0,NULL,5,0,0,10,3.30,0,1503.33,1292.8638,NULL,NULL,18,17,18,842,NULL,'standard',132339,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','2292203793676',NULL,NULL,0,0,'auto_generate',0,0,0,2,4,0),(14,'Leather Watch In Black','leather-watch-in-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14-1.jpg\",\"products\\/14-2.jpg\",\"products\\/14-3.jpg\",\"products\\/14-4.jpg\"]',NULL,'L1-105-A1',0,17,0,1,'in_stock',0,NULL,5,0,4,10,2.70,0,1217.71,NULL,NULL,NULL,20,20,15,822,NULL,'standard',109278,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','0907286727990',NULL,NULL,0,0,'auto_generate',0,0,0,1,8,0),(15,'Macbook Pro 2015 13 inch','macbook-pro-2015-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15-1.jpg\",\"products\\/15-2.jpg\",\"products\\/15-3.jpg\",\"products\\/15-4.jpg\"]',NULL,'P6-200-A1',0,18,0,1,'in_stock',0,NULL,3,0,2,9,3.22,0,1762.32,NULL,NULL,NULL,13,20,17,550,NULL,'standard',133442,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','6770047676103',NULL,NULL,0,0,'auto_generate',0,0,0,2,6,0),(16,'Historic Alarm Clock (Digital)','historic-alarm-clock','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\"]',NULL,'5P-152',0,19,0,1,'in_stock',0,NULL,6,0,0,10,3.30,0,525.7,410.046,NULL,NULL,12,14,19,630,NULL,'standard',11562,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','9207356963237',NULL,NULL,0,0,'auto_generate',0,0,0,2,3,0),(17,'Black Glasses','black-glasses','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\",\"products\\/17-4.jpg\"]',NULL,'TG-176-A1',0,18,0,1,'in_stock',0,NULL,2,0,1,10,2.90,0,1250.35,NULL,NULL,NULL,18,10,13,563,NULL,'standard',172942,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8913551119546',NULL,NULL,0,0,'auto_generate',0,0,0,1,6,0),(18,'Phillips Mouse','phillips-mouse','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\",\"products\\/18-4.jpg\"]',NULL,'NC-155-A1',0,12,0,1,'in_stock',0,NULL,4,0,4,10,2.00,0,1947.75,NULL,NULL,NULL,12,16,15,675,NULL,'standard',16752,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','5173208367444',NULL,NULL,0,0,'auto_generate',0,0,0,2,2,0),(19,'Gaming Keyboard','gaming-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\",\"products\\/19-4.jpg\"]',NULL,'YR-153-A1',0,17,0,1,'in_stock',1,NULL,7,0,2,9,3.22,0,835.93,NULL,NULL,NULL,17,11,17,737,NULL,'standard',38752,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','5592672540106',NULL,NULL,0,0,'auto_generate',0,0,0,1,6,0),(20,'Wireless Keyboard (Digital)','wireless-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\",\"products\\/20-4.jpg\"]',NULL,'I6-122',0,19,0,1,'in_stock',0,NULL,1,0,0,9,2.78,0,453.37,189.37,NULL,NULL,18,19,20,659,NULL,'standard',94318,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','6802162526862',NULL,NULL,0,0,'auto_generate',0,0,0,1,9,0),(21,'Black Smart Watches','black-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21-1.jpg\",\"products\\/21-2.jpg\",\"products\\/21-3.jpg\",\"products\\/21-4.jpg\"]',NULL,'QA-153',0,18,0,1,'in_stock',0,NULL,4,0,0,10,2.70,0,1424.16,1029.16,NULL,NULL,15,16,20,579,NULL,'standard',39772,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','3311996635754',NULL,NULL,0,0,'auto_generate',0,0,0,2,2,0),(22,'Smart Home Speaker','smart-home-speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\",\"products\\/22-4.jpg\"]',NULL,'CK-138-A1',0,17,0,1,'in_stock',0,NULL,3,0,1,10,3.30,0,1278.06,NULL,NULL,NULL,16,19,14,720,NULL,'standard',55388,'2026-03-06 01:42:44','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','0152406850304',NULL,NULL,0,0,'auto_generate',0,0,0,2,3,0),(23,'Headphone Ultra Bass','headphone-ultra-bass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\",\"products\\/23-4.jpg\"]',NULL,'ML-145-A1',0,15,0,1,'in_stock',1,NULL,6,0,3,10,2.80,0,1920.63,NULL,NULL,NULL,15,13,10,726,NULL,'standard',178064,'2026-03-06 01:42:45','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','4400362347076',NULL,NULL,0,0,'auto_generate',0,0,0,1,5,0),(24,'Boxed - Bluetooth Headphone (Digital)','boxed-bluetooth-headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24-1.jpg\",\"products\\/24-2.jpg\",\"products\\/24-3.jpg\",\"products\\/24-4.jpg\"]',NULL,'QK-163-A1',0,13,0,1,'in_stock',0,NULL,2,0,2,9,2.44,0,1968.18,1574.544,NULL,NULL,15,11,18,838,NULL,'standard',141053,'2026-03-06 01:42:45','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','5393600248039',NULL,NULL,0,0,'auto_generate',0,0,0,2,2,0),(25,'Camera Samsung SS-24','camera-samsung-ss-24','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25-1.jpg\",\"products\\/25-2.jpg\",\"products\\/25-3.jpg\",\"products\\/25-4.jpg\"]',NULL,'BJ-193',0,18,0,1,'in_stock',0,NULL,3,0,0,10,3.30,0,1205.27,994.27,NULL,NULL,10,13,12,667,NULL,'standard',12479,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','2934298805994',NULL,NULL,0,0,'auto_generate',0,0,0,2,4,0),(26,'Leather Watch In Black','leather-watch-in-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\",\"products\\/26-3.jpg\",\"products\\/26-4.jpg\"]',NULL,'3R-144-A1',0,20,0,1,'in_stock',0,NULL,6,0,3,10,2.60,0,1477.45,NULL,NULL,NULL,12,18,15,797,NULL,'standard',190067,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1811090058685',NULL,NULL,0,0,'auto_generate',0,0,0,1,7,0),(27,'Apple iPhone 13 Plus','apple-iphone-13-plus','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27-1.jpg\",\"products\\/27-2.jpg\",\"products\\/27-3.jpg\",\"products\\/27-4.jpg\"]',NULL,'YY-171',0,18,0,1,'in_stock',0,NULL,3,0,0,9,3.22,0,1147.71,111.71,NULL,NULL,12,15,11,760,NULL,'standard',64922,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','3354292864855',NULL,NULL,0,0,'auto_generate',0,0,0,2,1,0),(28,'Macbook Pro 2015 (Digital)','macbook-pro-2015','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28-1.jpg\",\"products\\/28-2.jpg\",\"products\\/28-3.jpg\",\"products\\/28-4.jpg\"]',NULL,'JX-184',0,18,0,1,'in_stock',0,NULL,2,0,0,9,2.44,0,605.77,545.193,NULL,NULL,13,10,14,836,NULL,'standard',45615,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','6806179039377',NULL,NULL,0,0,'auto_generate',0,0,0,2,3,0),(29,'Apple Watch Serial 7','apple-watch-serial-7','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29-1.jpg\",\"products\\/29-2.jpg\",\"products\\/29-3.jpg\"]',NULL,'Z5-103',0,18,0,1,'in_stock',1,NULL,3,0,0,9,3.11,0,571.36,156.36,NULL,NULL,17,13,16,574,NULL,'standard',141250,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4388841735777',NULL,NULL,0,0,'auto_generate',0,0,0,2,9,0),(30,'Macbook Pro 13 inch','macbook-pro-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30-1.jpg\",\"products\\/30-2.jpg\",\"products\\/30-3.jpg\",\"products\\/30-4.jpg\"]',NULL,'YA-119-A1',0,17,0,1,'in_stock',1,NULL,3,0,2,10,3.80,0,906.05,NULL,NULL,NULL,13,12,18,757,NULL,'standard',109508,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1356298023115',NULL,NULL,0,0,'auto_generate',0,0,0,1,9,0),(31,'Apple Keyboard','apple-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31-1.jpg\",\"products\\/31-2.jpg\",\"products\\/31-3.jpg\",\"products\\/31-4.jpg\"]',NULL,'EM-177',0,13,0,1,'in_stock',0,NULL,6,0,0,10,3.40,0,853.24,294.24,NULL,NULL,15,12,18,840,NULL,'standard',108399,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','6854060221059',NULL,NULL,0,0,'auto_generate',0,0,0,2,1,0),(32,'MacSafe 80W (Digital)','macsafe-80w','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/32-1.jpg\",\"products\\/32-2.jpg\",\"products\\/32-3.jpg\",\"products\\/32-4.jpg\"]',NULL,'TY-123-A1',0,18,0,1,'in_stock',0,NULL,2,0,2,10,3.10,0,138.59,113.6438,NULL,NULL,14,20,19,508,NULL,'standard',61157,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','5995764966455',NULL,NULL,0,0,'auto_generate',0,0,0,2,8,0),(33,'Hand playstation','hand-playstation','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/33-1.jpg\",\"products\\/33-2.jpg\",\"products\\/33-3.jpg\",\"products\\/33-4.jpg\"]',NULL,'XK-102-A1',0,13,0,1,'in_stock',0,NULL,5,0,2,9,3.56,0,1435.81,NULL,NULL,NULL,16,19,20,875,NULL,'standard',192099,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','3590005880952',NULL,NULL,0,0,'auto_generate',0,0,0,2,8,0),(34,'Apple Airpods Serial 3','apple-airpods-serial-3','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/34-1.jpg\",\"products\\/34-2.jpg\",\"products\\/34-3.jpg\",\"products\\/34-4.jpg\"]',NULL,'DB-197-A1',0,12,0,1,'in_stock',0,NULL,7,0,4,10,1.90,0,1816.84,NULL,NULL,NULL,10,14,17,729,NULL,'standard',48982,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1017342045681',NULL,NULL,0,0,'auto_generate',0,0,0,1,1,0),(35,'Cool Smart Watches','cool-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/35-1.jpg\",\"products\\/35-2.jpg\",\"products\\/35-3.jpg\",\"products\\/35-4.jpg\"]',NULL,'OY-102-A1',0,15,0,1,'in_stock',0,NULL,4,0,2,10,2.10,0,1082.33,NULL,NULL,NULL,11,15,18,821,NULL,'standard',149538,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','9729847070878',NULL,NULL,0,0,'auto_generate',0,0,0,2,6,0),(36,'Black Smart Watches (Digital)','black-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/36-1.jpg\",\"products\\/36-2.jpg\",\"products\\/36-3.jpg\"]',NULL,'VR-129-A1',0,14,0,1,'in_stock',1,NULL,3,0,1,9,2.89,0,1637.96,1293.9884,NULL,NULL,19,16,19,504,NULL,'standard',110082,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','4498054546470',NULL,NULL,0,0,'auto_generate',0,0,0,2,3,0),(37,'Leather Watch In Black','leather-watch-in-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/37-1.jpg\",\"products\\/37-2.jpg\",\"products\\/37-3.jpg\"]',NULL,'PR-139-A1',0,14,0,1,'in_stock',0,NULL,4,0,2,10,3.20,0,378.25,NULL,NULL,NULL,15,20,20,825,NULL,'standard',56327,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8827907969757',NULL,NULL,0,0,'auto_generate',0,0,0,1,3,0),(38,'Macbook Pro 2015 13 inch','macbook-pro-2015-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/38-1.jpg\",\"products\\/38-2.jpg\",\"products\\/38-3.jpg\",\"products\\/38-4.jpg\"]',NULL,'DP-161',0,18,0,1,'in_stock',0,NULL,6,0,0,10,4.10,0,823.6,533.6,NULL,NULL,12,12,13,684,NULL,'standard',50050,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1294290022104',NULL,NULL,0,0,'auto_generate',0,0,0,2,4,0),(39,'Sony WH-1000XM4 Wireless Headphones','sony-wh-1000xm4-wireless-headphones','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/39-1.jpg\",\"products\\/39-2.jpg\",\"products\\/39-3.jpg\",\"products\\/39-4.jpg\"]',NULL,'KZ-168',0,10,0,1,'in_stock',0,NULL,7,0,0,10,3.10,0,1476.01,1088.01,NULL,NULL,19,13,11,689,NULL,'standard',19484,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0693328213353',NULL,NULL,0,0,'auto_generate',0,0,0,1,5,0),(40,'Samsung Galaxy S22 Ultra (Digital)','samsung-galaxy-s22-ultra','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/40-1.jpg\",\"products\\/40-2.jpg\",\"products\\/40-3.jpg\",\"products\\/40-4.jpg\"]',NULL,'2Q-142-A1',0,12,0,1,'in_stock',1,NULL,1,0,1,10,2.90,0,664.29,564.6465,NULL,NULL,11,13,16,562,NULL,'standard',183597,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','1128591826362',NULL,NULL,0,0,'auto_generate',0,0,0,2,3,0),(41,'Dell XPS 15 Laptop','dell-xps-15-laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/41-1.jpg\",\"products\\/41-2.jpg\",\"products\\/41-3.jpg\",\"products\\/41-4.jpg\"]',NULL,'WK-179',0,20,0,1,'in_stock',0,NULL,1,0,0,10,3.20,0,1474.82,1321.82,NULL,NULL,10,19,19,850,NULL,'standard',51366,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8879815347165',NULL,NULL,0,0,'auto_generate',0,0,0,1,8,0),(42,'iPad Pro 12.9-inch','ipad-pro-129-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/42-1.jpg\",\"products\\/42-2.jpg\",\"products\\/42-3.jpg\"]',NULL,'BZ-100',0,15,0,1,'in_stock',0,NULL,7,0,0,10,2.60,0,781.63,601.63,NULL,NULL,13,20,10,589,NULL,'standard',97210,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','9517153297689',NULL,NULL,0,0,'auto_generate',0,0,0,1,4,0),(43,'Bose QuietComfort Earbuds','bose-quietcomfort-earbuds','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/43-1.jpg\",\"products\\/43-2.jpg\",\"products\\/43-3.jpg\"]',NULL,'QP-124-A1',0,18,0,1,'in_stock',0,NULL,4,0,4,10,4.10,0,1440.94,NULL,NULL,NULL,11,16,16,793,NULL,'standard',42004,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','5939303453709',NULL,NULL,0,0,'auto_generate',0,0,0,2,5,0),(44,'LG OLED C1 Series TV (Digital)','lg-oled-c1-series-tv','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/44-1.jpg\",\"products\\/44-2.jpg\",\"products\\/44-3.jpg\"]',NULL,'SN-161',0,16,0,1,'in_stock',0,NULL,1,0,0,10,3.10,0,558.78,493.78,NULL,NULL,18,17,15,655,NULL,'standard',50855,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','9941736544073',NULL,NULL,0,0,'auto_generate',0,0,0,2,6,0),(45,'Dyson V11 Vacuum Cleaner','dyson-v11-vacuum-cleaner','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/45-1.jpg\",\"products\\/45-2.jpg\",\"products\\/45-3.jpg\",\"products\\/45-4.jpg\"]',NULL,'PY-185-A1',0,20,0,1,'in_stock',0,NULL,7,0,3,10,2.00,0,1167.9,NULL,NULL,NULL,17,11,13,539,NULL,'standard',32605,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8586486903803',NULL,NULL,0,0,'auto_generate',0,0,0,2,3,0),(46,'Nintendo Switch OLED Model','nintendo-switch-oled-model','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/46-1.jpg\",\"products\\/46-2.jpg\",\"products\\/46-3.jpg\",\"products\\/46-4.jpg\"]',NULL,'CO-130-A1',0,13,0,1,'in_stock',0,NULL,7,0,4,10,2.60,0,1339.35,NULL,NULL,NULL,20,11,11,637,NULL,'standard',133462,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','3566595470309',NULL,NULL,0,0,'auto_generate',0,0,0,1,6,0),(47,'Canon EOS R5 Camera','canon-eos-r5-camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/47-1.jpg\",\"products\\/47-2.jpg\",\"products\\/47-3.jpg\"]',NULL,'UW-103',0,10,0,1,'in_stock',1,NULL,6,0,0,9,3.89,0,61.43,3.43,NULL,NULL,14,12,13,879,NULL,'standard',84439,'2026-03-06 01:42:45','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8540848776122',NULL,NULL,0,0,'auto_generate',0,0,0,1,6,0),(48,'Fitbit Sense Smartwatch (Digital)','fitbit-sense-smartwatch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/48-1.jpg\",\"products\\/48-2.jpg\",\"products\\/48-3.jpg\",\"products\\/48-4.jpg\"]',NULL,'EZ-106',0,12,0,1,'in_stock',0,NULL,2,0,0,10,2.80,0,1550.82,1147.6068,NULL,NULL,14,10,15,821,NULL,'standard',112589,'2026-03-06 01:42:46','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','9443911618864',NULL,NULL,0,0,'auto_generate',0,0,0,2,7,0),(49,'Sonos Beam Soundbar','sonos-beam-soundbar','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/49-1.jpg\",\"products\\/49-2.jpg\",\"products\\/49-3.jpg\",\"products\\/49-4.jpg\"]',NULL,'DR-106-A1',0,17,0,1,'in_stock',0,NULL,5,0,2,10,3.80,0,1471.21,NULL,NULL,NULL,17,17,16,555,NULL,'standard',141785,'2026-03-06 01:42:46','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0728414718297',NULL,NULL,0,0,'auto_generate',0,0,0,1,2,0),(50,'Logitech MX Master 3 Mouse','logitech-mx-master-3-mouse','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/50-1.jpg\",\"products\\/50-2.jpg\",\"products\\/50-3.jpg\",\"products\\/50-4.jpg\"]',NULL,'PY-122-A1',0,16,0,1,'in_stock',0,NULL,3,0,3,9,2.33,0,508,NULL,NULL,NULL,15,19,12,659,NULL,'standard',59325,'2026-03-06 01:42:46','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','6663059798775',NULL,NULL,0,0,'auto_generate',0,0,0,1,7,0),(51,'Kindle Paperwhite E-reader','kindle-paperwhite-e-reader','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/51-1.jpg\",\"products\\/51-2.jpg\",\"products\\/51-3.jpg\",\"products\\/51-4.jpg\"]',NULL,'QQ-137',0,10,0,1,'in_stock',0,NULL,6,0,0,8,3.50,0,304.2,7.2,NULL,NULL,18,12,20,899,NULL,'standard',144154,'2026-03-06 01:42:46','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8346612710930',NULL,NULL,0,0,'auto_generate',0,0,0,2,1,0),(52,'GoPro HERO10 Black (Digital)','gopro-hero10-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/52-1.jpg\",\"products\\/52-2.jpg\",\"products\\/52-3.jpg\"]',NULL,'KR-180',0,12,0,1,'in_stock',0,NULL,1,0,0,10,4.00,0,1705.21,1193.647,NULL,NULL,12,18,12,669,NULL,'standard',111226,'2026-03-06 01:42:46','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','8731576585883',NULL,NULL,0,0,'auto_generate',0,0,0,1,3,0),(53,'Anker PowerCore Power Bank','anker-powercore-power-bank','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/53-1.jpg\",\"products\\/53-2.jpg\",\"products\\/53-3.jpg\",\"products\\/53-4.jpg\"]',NULL,'CB-100-A1',0,20,0,1,'in_stock',0,NULL,4,0,3,10,2.80,0,1023.95,NULL,NULL,NULL,20,15,16,643,NULL,'standard',22755,'2026-03-06 01:42:46','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','2951650207784',NULL,NULL,0,0,'auto_generate',0,0,0,2,1,0),(54,'Samsung Galaxy Buds Pro','samsung-galaxy-buds-pro','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/54-1.jpg\",\"products\\/54-2.jpg\",\"products\\/54-3.jpg\"]',NULL,'OU-130',0,17,0,1,'in_stock',0,NULL,6,0,0,10,2.30,0,352.23,260.6502,NULL,NULL,16,17,13,891,NULL,'standard',43385,'2026-03-06 01:42:46','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','2376210357189',NULL,NULL,0,0,'auto_generate',0,0,0,1,1,0),(55,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/1-2.jpg\"]',NULL,'IU-102-A1',0,15,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1773.78,NULL,NULL,NULL,14,19,17,741,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','1289125508755',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(56,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/1-3.jpg\"]',NULL,'IU-102-A1-A2',0,15,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1773.78,NULL,NULL,NULL,14,19,17,741,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8846845223622',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(57,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-2.jpg\"]',NULL,'N9-113-A1',0,13,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,149.28,NULL,NULL,NULL,18,14,19,549,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','5361749976847',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(58,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-3.jpg\"]',NULL,'N9-113-A1-A2',0,13,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,149.28,NULL,NULL,NULL,18,14,19,549,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','6127683206971',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(59,'Boxed - Bluetooth Headphone',NULL,NULL,NULL,'published','[\"products\\/3-2.jpg\"]',NULL,'PM-184-A1',0,16,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,1548.42,NULL,NULL,NULL,11,14,11,712,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','2729670538122',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(60,'Camera Samsung SS-24 (Digital)',NULL,NULL,NULL,'published','[\"products\\/4-2.jpg\"]',NULL,'KG-149-A1',0,16,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1774.65,1508.4525,NULL,NULL,16,11,16,743,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','4921821683455',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(61,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/5-2.jpg\"]',NULL,'R6-195-A1',0,13,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,472.7,NULL,NULL,NULL,19,16,12,818,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7192460804199',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(62,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/5-3.jpg\"]',NULL,'R6-195-A1-A2',0,13,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,472.7,NULL,NULL,NULL,19,16,12,818,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8174921880859',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(63,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/6-2.jpg\"]',NULL,'DE-100-A1',0,18,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,424.58,NULL,NULL,NULL,19,16,19,618,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','3088224013461',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(64,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/7-2.jpg\"]',NULL,'OM-135-A1',0,15,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,71.03,NULL,NULL,NULL,16,12,19,857,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7289319159996',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(65,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/7-3.jpg\"]',NULL,'OM-135-A1-A2',0,15,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,71.03,NULL,NULL,NULL,16,12,19,857,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','5553968608757',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(66,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'OM-135-A1-A3',0,15,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,71.03,NULL,NULL,NULL,16,12,19,857,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8731530312722',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(67,'Apple Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-2.jpg\"]',NULL,'JZ-197-A1',0,20,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,619.67,477.1459,NULL,NULL,18,11,14,737,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','6492429511566',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(68,'Apple Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-3.jpg\"]',NULL,'JZ-197-A1-A2',0,20,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,619.67,470.9492,NULL,NULL,18,11,14,737,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','5475701583179',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(69,'Apple Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-4.jpg\"]',NULL,'JZ-197-A1-A3',0,20,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,619.67,439.9657,NULL,NULL,18,11,14,737,NULL,'standard',0,'2026-03-06 01:42:46','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','7300894806836',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(70,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/14-2.jpg\"]',NULL,'L1-105-A1',0,17,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1217.71,NULL,NULL,NULL,20,20,15,822,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7962332741613',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(71,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/14-3.jpg\"]',NULL,'L1-105-A1-A2',0,17,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1217.71,NULL,NULL,NULL,20,20,15,822,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','5309284247312',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(72,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/14-4.jpg\"]',NULL,'L1-105-A1-A3',0,17,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1217.71,NULL,NULL,NULL,20,20,15,822,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7806533362232',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(73,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/14-1.jpg\"]',NULL,'L1-105-A1-A4',0,17,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1217.71,NULL,NULL,NULL,20,20,15,822,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','4235054746666',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(74,'Macbook Pro 2015 13 inch',NULL,NULL,NULL,'published','[\"products\\/15-2.jpg\"]',NULL,'P6-200-A1',0,18,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1762.32,NULL,NULL,NULL,13,20,17,550,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','1896334353658',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(75,'Macbook Pro 2015 13 inch',NULL,NULL,NULL,'published','[\"products\\/15-3.jpg\"]',NULL,'P6-200-A1-A2',0,18,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1762.32,NULL,NULL,NULL,13,20,17,550,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','3151550107507',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(76,'Black Glasses',NULL,NULL,NULL,'published','[\"products\\/17-2.jpg\"]',NULL,'TG-176-A1',0,18,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,1250.35,NULL,NULL,NULL,18,10,13,563,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','0394403800887',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(77,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-2.jpg\"]',NULL,'NC-155-A1',0,12,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1947.75,NULL,NULL,NULL,12,16,15,675,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7571125754831',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(78,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-3.jpg\"]',NULL,'NC-155-A1-A2',0,12,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1947.75,NULL,NULL,NULL,12,16,15,675,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','4671501012869',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(79,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-4.jpg\"]',NULL,'NC-155-A1-A3',0,12,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1947.75,NULL,NULL,NULL,12,16,15,675,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','9106875030751',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(80,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'NC-155-A1-A4',0,12,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1947.75,NULL,NULL,NULL,12,16,15,675,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7138177644055',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(81,'Gaming Keyboard',NULL,NULL,NULL,'published','[\"products\\/19-2.jpg\"]',NULL,'YR-153-A1',0,17,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,835.93,NULL,NULL,NULL,17,11,17,737,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','8249663745909',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(82,'Gaming Keyboard',NULL,NULL,NULL,'published','[\"products\\/19-3.jpg\"]',NULL,'YR-153-A1-A2',0,17,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,835.93,NULL,NULL,NULL,17,11,17,737,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','0228868455361',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(83,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/22-2.jpg\"]',NULL,'CK-138-A1',0,17,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1278.06,NULL,NULL,NULL,16,19,14,720,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','0783182845835',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(84,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/23-2.jpg\"]',NULL,'ML-145-A1',0,15,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1920.63,NULL,NULL,NULL,15,13,10,726,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','7195281146752',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(85,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/23-3.jpg\"]',NULL,'ML-145-A1-A2',0,15,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1920.63,NULL,NULL,NULL,15,13,10,726,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','3814887346277',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(86,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/23-4.jpg\"]',NULL,'ML-145-A1-A3',0,15,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1920.63,NULL,NULL,NULL,15,13,10,726,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'physical','0794276698961',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(87,'Boxed - Bluetooth Headphone (Digital)',NULL,NULL,NULL,'published','[\"products\\/24-2.jpg\"]',NULL,'QK-163-A1',0,13,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,1968.18,1574.544,NULL,NULL,15,11,18,838,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','5192717959834',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(88,'Boxed - Bluetooth Headphone (Digital)',NULL,NULL,NULL,'published','[\"products\\/24-3.jpg\"]',NULL,'QK-163-A1-A2',0,13,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,1968.18,1672.953,NULL,NULL,15,11,18,838,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:03',0,'Botble\\ACL\\Models\\User',NULL,'digital','5228345766183',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(89,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/26-2.jpg\"]',NULL,'3R-144-A1',0,20,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1477.45,NULL,NULL,NULL,12,18,15,797,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','3974006536917',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(90,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/26-3.jpg\"]',NULL,'3R-144-A1-A2',0,20,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1477.45,NULL,NULL,NULL,12,18,15,797,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1879504251428',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(91,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/26-4.jpg\"]',NULL,'3R-144-A1-A3',0,20,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1477.45,NULL,NULL,NULL,12,18,15,797,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4794622401708',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(92,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/30-2.jpg\"]',NULL,'YA-119-A1',0,17,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,906.05,NULL,NULL,NULL,13,12,18,757,NULL,'standard',0,'2026-03-06 01:42:47','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0984236107354',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(93,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/30-3.jpg\"]',NULL,'YA-119-A1-A2',0,17,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,906.05,NULL,NULL,NULL,13,12,18,757,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','5017149608689',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(94,'MacSafe 80W (Digital)',NULL,NULL,NULL,'published','[\"products\\/32-2.jpg\"]',NULL,'TY-123-A1',0,18,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,138.59,113.6438,NULL,NULL,14,20,19,508,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','2796404474100',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(95,'MacSafe 80W (Digital)',NULL,NULL,NULL,'published','[\"products\\/32-3.jpg\"]',NULL,'TY-123-A1-A2',0,18,0,1,'in_stock',0,NULL,2,1,0,0,0.00,0,138.59,106.7143,NULL,NULL,14,20,19,508,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','7128134512022',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(96,'Hand playstation',NULL,NULL,NULL,'published','[\"products\\/33-2.jpg\"]',NULL,'XK-102-A1',0,13,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1435.81,NULL,NULL,NULL,16,19,20,875,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','6753796513875',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(97,'Hand playstation',NULL,NULL,NULL,'published','[\"products\\/33-3.jpg\"]',NULL,'XK-102-A1-A2',0,13,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1435.81,NULL,NULL,NULL,16,19,20,875,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','5866293897537',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(98,'Apple Airpods Serial 3',NULL,NULL,NULL,'published','[\"products\\/34-2.jpg\"]',NULL,'DB-197-A1',0,12,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1816.84,NULL,NULL,NULL,10,14,17,729,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','6619297560100',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(99,'Apple Airpods Serial 3',NULL,NULL,NULL,'published','[\"products\\/34-3.jpg\"]',NULL,'DB-197-A1-A2',0,12,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1816.84,NULL,NULL,NULL,10,14,17,729,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8447086016280',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(100,'Apple Airpods Serial 3',NULL,NULL,NULL,'published','[\"products\\/34-4.jpg\"]',NULL,'DB-197-A1-A3',0,12,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1816.84,NULL,NULL,NULL,10,14,17,729,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1243099635947',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(101,'Apple Airpods Serial 3',NULL,NULL,NULL,'published','[\"products\\/34-1.jpg\"]',NULL,'DB-197-A1-A4',0,12,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1816.84,NULL,NULL,NULL,10,14,17,729,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','9630779575754',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(102,'Cool Smart Watches',NULL,NULL,NULL,'published','[\"products\\/35-2.jpg\"]',NULL,'OY-102-A1',0,15,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1082.33,NULL,NULL,NULL,11,15,18,821,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0638085528777',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(103,'Cool Smart Watches',NULL,NULL,NULL,'published','[\"products\\/35-3.jpg\"]',NULL,'OY-102-A1-A2',0,15,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1082.33,NULL,NULL,NULL,11,15,18,821,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8961639846358',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(104,'Black Smart Watches (Digital)',NULL,NULL,NULL,'published','[\"products\\/36-2.jpg\"]',NULL,'VR-129-A1',0,14,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1637.96,1293.9884,NULL,NULL,19,16,19,504,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','5604431872585',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(105,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/37-2.jpg\"]',NULL,'PR-139-A1',0,14,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,378.25,NULL,NULL,NULL,15,20,20,825,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4086147342124',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(106,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/37-3.jpg\"]',NULL,'PR-139-A1-A2',0,14,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,378.25,NULL,NULL,NULL,15,20,20,825,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4185931471061',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(107,'Samsung Galaxy S22 Ultra (Digital)',NULL,NULL,NULL,'published','[\"products\\/40-2.jpg\"]',NULL,'2Q-142-A1',0,12,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,664.29,564.6465,NULL,NULL,11,13,16,562,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'digital','6624523002934',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(108,'Bose QuietComfort Earbuds',NULL,NULL,NULL,'published','[\"products\\/43-2.jpg\"]',NULL,'QP-124-A1',0,18,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1440.94,NULL,NULL,NULL,11,16,16,793,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','9501760527840',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(109,'Bose QuietComfort Earbuds',NULL,NULL,NULL,'published','[\"products\\/43-3.jpg\"]',NULL,'QP-124-A1-A2',0,18,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1440.94,NULL,NULL,NULL,11,16,16,793,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0911281345127',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(110,'Bose QuietComfort Earbuds',NULL,NULL,NULL,'published','[\"products\\/43-1.jpg\"]',NULL,'QP-124-A1-A3',0,18,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1440.94,NULL,NULL,NULL,11,16,16,793,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4659494696372',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(111,'Bose QuietComfort Earbuds',NULL,NULL,NULL,'published','[\"products\\/43-1.jpg\"]',NULL,'QP-124-A1-A4',0,18,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1440.94,NULL,NULL,NULL,11,16,16,793,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4577993068462',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(112,'Dyson V11 Vacuum Cleaner',NULL,NULL,NULL,'published','[\"products\\/45-2.jpg\"]',NULL,'PY-185-A1',0,20,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1167.9,NULL,NULL,NULL,17,11,13,539,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','5307014041063',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(113,'Dyson V11 Vacuum Cleaner',NULL,NULL,NULL,'published','[\"products\\/45-3.jpg\"]',NULL,'PY-185-A1-A2',0,20,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1167.9,NULL,NULL,NULL,17,11,13,539,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','3817699596212',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(114,'Dyson V11 Vacuum Cleaner',NULL,NULL,NULL,'published','[\"products\\/45-4.jpg\"]',NULL,'PY-185-A1-A3',0,20,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1167.9,NULL,NULL,NULL,17,11,13,539,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8450698181093',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(115,'Nintendo Switch OLED Model',NULL,NULL,NULL,'published','[\"products\\/46-2.jpg\"]',NULL,'CO-130-A1',0,13,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1339.35,NULL,NULL,NULL,20,11,11,637,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1369508807177',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(116,'Nintendo Switch OLED Model',NULL,NULL,NULL,'published','[\"products\\/46-3.jpg\"]',NULL,'CO-130-A1-A2',0,13,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1339.35,NULL,NULL,NULL,20,11,11,637,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0141377374667',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(117,'Nintendo Switch OLED Model',NULL,NULL,NULL,'published','[\"products\\/46-4.jpg\"]',NULL,'CO-130-A1-A3',0,13,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1339.35,NULL,NULL,NULL,20,11,11,637,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0891817808756',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(118,'Nintendo Switch OLED Model',NULL,NULL,NULL,'published','[\"products\\/46-1.jpg\"]',NULL,'CO-130-A1-A4',0,13,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,1339.35,NULL,NULL,NULL,20,11,11,637,NULL,'standard',0,'2026-03-06 01:42:48','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0953527978881',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(119,'Sonos Beam Soundbar',NULL,NULL,NULL,'published','[\"products\\/49-2.jpg\"]',NULL,'DR-106-A1',0,17,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1471.21,NULL,NULL,NULL,17,17,16,555,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','0453892129951',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(120,'Sonos Beam Soundbar',NULL,NULL,NULL,'published','[\"products\\/49-3.jpg\"]',NULL,'DR-106-A1-A2',0,17,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1471.21,NULL,NULL,NULL,17,17,16,555,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4851200709530',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(121,'Logitech MX Master 3 Mouse',NULL,NULL,NULL,'published','[\"products\\/50-2.jpg\"]',NULL,'PY-122-A1',0,16,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,508,NULL,NULL,NULL,15,19,12,659,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','8939914659863',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(122,'Logitech MX Master 3 Mouse',NULL,NULL,NULL,'published','[\"products\\/50-3.jpg\"]',NULL,'PY-122-A1-A2',0,16,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,508,NULL,NULL,NULL,15,19,12,659,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','4261638212548',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(123,'Logitech MX Master 3 Mouse',NULL,NULL,NULL,'published','[\"products\\/50-4.jpg\"]',NULL,'PY-122-A1-A3',0,16,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,508,NULL,NULL,NULL,15,19,12,659,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','2167371858659',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(124,'Anker PowerCore Power Bank',NULL,NULL,NULL,'published','[\"products\\/53-2.jpg\"]',NULL,'CB-100-A1',0,20,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1023.95,NULL,NULL,NULL,20,15,16,643,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1720483081806',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(125,'Anker PowerCore Power Bank',NULL,NULL,NULL,'published','[\"products\\/53-3.jpg\"]',NULL,'CB-100-A1-A2',0,20,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1023.95,NULL,NULL,NULL,20,15,16,643,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','1316968331261',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0),(126,'Anker PowerCore Power Bank',NULL,NULL,NULL,'published','[\"products\\/53-4.jpg\"]',NULL,'CB-100-A1-A3',0,20,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1023.95,NULL,NULL,NULL,20,15,16,643,NULL,'standard',0,'2026-03-06 01:42:49','2026-03-06 01:43:04',0,'Botble\\ACL\\Models\\User',NULL,'physical','5330511967895',NULL,NULL,0,0,'auto_generate',0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`),
  KEY `idx_products_fk` (`ec_products_id`),
  KEY `idx_products_products_lang` (`ec_products_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_unique` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`),
  KEY `ec_reviews_product_id_status_index` (`product_id`,`status`),
  KEY `ec_reviews_customer_id_status_index` (`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,NULL,NULL,42,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(2,1,NULL,NULL,50,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(3,5,NULL,NULL,51,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(4,10,NULL,NULL,32,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(5,5,NULL,NULL,42,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(6,9,NULL,NULL,27,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(7,10,NULL,NULL,17,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(8,10,NULL,NULL,14,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(9,2,NULL,NULL,52,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(10,1,NULL,NULL,42,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(11,2,NULL,NULL,43,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(12,2,NULL,NULL,7,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(13,3,NULL,NULL,9,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(14,9,NULL,NULL,28,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(15,10,NULL,NULL,23,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(16,9,NULL,NULL,11,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(17,3,NULL,NULL,34,1,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(18,10,NULL,NULL,44,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(19,9,NULL,NULL,22,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(20,2,NULL,NULL,32,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(21,9,NULL,NULL,35,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(22,9,NULL,NULL,41,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(23,6,NULL,NULL,39,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(24,8,NULL,NULL,45,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(25,3,NULL,NULL,5,4,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(26,7,NULL,NULL,27,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(27,4,NULL,NULL,46,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(28,4,NULL,NULL,40,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(29,1,NULL,NULL,41,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(30,7,NULL,NULL,41,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(31,5,NULL,NULL,31,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(32,8,NULL,NULL,53,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(33,10,NULL,NULL,12,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(34,6,NULL,NULL,51,4,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(35,1,NULL,NULL,48,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(36,7,NULL,NULL,17,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(37,7,NULL,NULL,39,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(38,1,NULL,NULL,28,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(39,3,NULL,NULL,49,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(40,9,NULL,NULL,15,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(41,7,NULL,NULL,21,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(42,2,NULL,NULL,53,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(43,2,NULL,NULL,19,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(44,6,NULL,NULL,4,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(45,4,NULL,NULL,37,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(46,10,NULL,NULL,27,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(47,10,NULL,NULL,37,2,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(48,10,NULL,NULL,16,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(49,5,NULL,NULL,3,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(50,10,NULL,NULL,2,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(51,6,NULL,NULL,33,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(52,6,NULL,NULL,42,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(53,5,NULL,NULL,36,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(54,8,NULL,NULL,44,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(55,10,NULL,NULL,20,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(56,9,NULL,NULL,52,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(57,3,NULL,NULL,32,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(58,6,NULL,NULL,46,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(59,1,NULL,NULL,40,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(60,8,NULL,NULL,41,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(61,8,NULL,NULL,16,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(62,10,NULL,NULL,6,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(63,3,NULL,NULL,37,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(64,1,NULL,NULL,33,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(65,1,NULL,NULL,6,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(66,9,NULL,NULL,6,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(67,9,NULL,NULL,3,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(68,8,NULL,NULL,34,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(69,6,NULL,NULL,6,3,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(70,2,NULL,NULL,29,4,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(71,8,NULL,NULL,50,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(72,3,NULL,NULL,27,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(73,10,NULL,NULL,42,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(74,10,NULL,NULL,29,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(75,1,NULL,NULL,8,4,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(76,3,NULL,NULL,45,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(77,8,NULL,NULL,20,5,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(78,7,NULL,NULL,36,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(79,5,NULL,NULL,38,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(80,4,NULL,NULL,10,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(81,9,NULL,NULL,2,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(82,1,NULL,NULL,31,5,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(83,1,NULL,NULL,5,3,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(84,3,NULL,NULL,38,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(85,1,NULL,NULL,13,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(86,1,NULL,NULL,35,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(87,6,NULL,NULL,16,2,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(88,7,NULL,NULL,54,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(89,5,NULL,NULL,49,5,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(90,6,NULL,NULL,9,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(91,3,NULL,NULL,24,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(92,7,NULL,NULL,20,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(93,9,NULL,NULL,20,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(94,9,NULL,NULL,49,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(95,8,NULL,NULL,39,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(96,2,NULL,NULL,24,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(97,8,NULL,NULL,29,4,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(98,4,NULL,NULL,9,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(99,10,NULL,NULL,51,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(100,10,NULL,NULL,34,2,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(101,6,NULL,NULL,21,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(102,4,NULL,NULL,13,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(103,9,NULL,NULL,8,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(104,7,NULL,NULL,53,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(105,5,NULL,NULL,22,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(106,5,NULL,NULL,19,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(107,6,NULL,NULL,11,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(108,1,NULL,NULL,9,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(109,2,NULL,NULL,23,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(110,5,NULL,NULL,8,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(111,8,NULL,NULL,8,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(112,3,NULL,NULL,21,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(113,5,NULL,NULL,7,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(114,8,NULL,NULL,12,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(115,9,NULL,NULL,17,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(116,2,NULL,NULL,28,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(117,9,NULL,NULL,19,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(118,9,NULL,NULL,32,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(119,7,NULL,NULL,16,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(120,9,NULL,NULL,47,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(121,8,NULL,NULL,40,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(122,3,NULL,NULL,11,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(123,6,NULL,NULL,26,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(124,2,NULL,NULL,47,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(125,6,NULL,NULL,30,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(126,4,NULL,NULL,6,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(127,10,NULL,NULL,46,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(128,5,NULL,NULL,33,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(129,4,NULL,NULL,54,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(130,4,NULL,NULL,11,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(131,10,NULL,NULL,50,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(132,3,NULL,NULL,22,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(133,5,NULL,NULL,2,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(134,4,NULL,NULL,23,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(135,9,NULL,NULL,4,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(136,5,NULL,NULL,25,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(137,5,NULL,NULL,34,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(138,3,NULL,NULL,23,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(139,9,NULL,NULL,43,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(140,2,NULL,NULL,31,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(141,8,NULL,NULL,38,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(142,8,NULL,NULL,21,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(143,9,NULL,NULL,36,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(144,10,NULL,NULL,5,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(145,2,NULL,NULL,30,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(146,4,NULL,NULL,16,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(147,5,NULL,NULL,32,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(148,6,NULL,NULL,45,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(149,8,NULL,NULL,9,3,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(150,3,NULL,NULL,1,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(151,6,NULL,NULL,31,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(152,10,NULL,NULL,38,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(153,6,NULL,NULL,7,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(154,5,NULL,NULL,11,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(155,5,NULL,NULL,10,1,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(156,10,NULL,NULL,53,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(157,8,NULL,NULL,2,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(158,4,NULL,NULL,48,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(159,7,NULL,NULL,40,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(160,8,NULL,NULL,25,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(161,2,NULL,NULL,51,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(162,9,NULL,NULL,25,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(163,6,NULL,NULL,50,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(164,1,NULL,NULL,49,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(165,8,NULL,NULL,31,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(166,5,NULL,NULL,14,1,'Clean & perfect source code','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(167,6,NULL,NULL,18,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(168,3,NULL,NULL,3,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(169,10,NULL,NULL,24,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(170,1,NULL,NULL,53,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(171,9,NULL,NULL,24,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(172,1,NULL,NULL,39,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(173,9,NULL,NULL,45,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(174,9,NULL,NULL,50,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(175,6,NULL,NULL,25,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(176,4,NULL,NULL,30,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(177,4,NULL,NULL,49,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(178,10,NULL,NULL,39,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(179,6,NULL,NULL,8,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(180,6,NULL,NULL,43,3,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(181,2,NULL,NULL,39,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(182,7,NULL,NULL,26,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(183,10,NULL,NULL,25,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(184,7,NULL,NULL,45,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(185,2,NULL,NULL,41,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(186,8,NULL,NULL,37,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(187,1,NULL,NULL,18,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(188,7,NULL,NULL,14,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(189,10,NULL,NULL,19,1,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(190,7,NULL,NULL,22,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(191,5,NULL,NULL,41,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(192,7,NULL,NULL,37,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(193,10,NULL,NULL,13,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(194,2,NULL,NULL,2,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(195,5,NULL,NULL,39,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(196,10,NULL,NULL,11,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(197,10,NULL,NULL,26,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(198,10,NULL,NULL,28,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(199,9,NULL,NULL,53,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(200,9,NULL,NULL,34,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(201,9,NULL,NULL,26,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(202,1,NULL,NULL,14,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(203,1,NULL,NULL,3,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(204,5,NULL,NULL,23,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(205,9,NULL,NULL,5,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(206,6,NULL,NULL,13,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(207,2,NULL,NULL,11,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(208,4,NULL,NULL,7,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(209,7,NULL,NULL,42,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(210,1,NULL,NULL,44,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(211,4,NULL,NULL,1,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(212,6,NULL,NULL,14,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(213,2,NULL,NULL,44,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(214,3,NULL,NULL,46,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(215,7,NULL,NULL,50,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(216,6,NULL,NULL,40,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(217,5,NULL,NULL,27,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(218,5,NULL,NULL,30,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(219,1,NULL,NULL,46,1,'Best ecommerce CMS online store!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(220,9,NULL,NULL,29,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(221,6,NULL,NULL,2,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(222,6,NULL,NULL,35,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(223,9,NULL,NULL,23,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(224,7,NULL,NULL,2,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(225,1,NULL,NULL,20,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(226,1,NULL,NULL,21,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(227,2,NULL,NULL,1,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(228,9,NULL,NULL,13,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:52','2026-03-06 01:42:52',NULL),(229,1,NULL,NULL,17,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(230,7,NULL,NULL,47,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(231,5,NULL,NULL,54,1,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(232,4,NULL,NULL,24,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(233,8,NULL,NULL,36,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(234,1,NULL,NULL,2,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(235,5,NULL,NULL,24,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(236,5,NULL,NULL,52,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(237,7,NULL,NULL,49,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(238,8,NULL,NULL,7,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(239,8,NULL,NULL,32,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(240,6,NULL,NULL,54,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(241,2,NULL,NULL,9,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(242,7,NULL,NULL,7,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(243,3,NULL,NULL,31,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(244,8,NULL,NULL,22,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(245,4,NULL,NULL,51,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(246,7,NULL,NULL,48,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(247,10,NULL,NULL,54,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(248,3,NULL,NULL,35,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(249,3,NULL,NULL,17,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(250,1,NULL,NULL,37,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(251,9,NULL,NULL,37,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(252,4,NULL,NULL,31,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(253,3,NULL,NULL,48,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(254,3,NULL,NULL,19,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(255,4,NULL,NULL,14,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(256,3,NULL,NULL,43,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(257,7,NULL,NULL,13,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(258,10,NULL,NULL,10,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(259,6,NULL,NULL,37,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(260,2,NULL,NULL,48,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(261,8,NULL,NULL,13,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(262,7,NULL,NULL,8,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(263,8,NULL,NULL,54,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(264,4,NULL,NULL,35,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(265,6,NULL,NULL,23,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(266,6,NULL,NULL,12,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(267,1,NULL,NULL,38,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(268,10,NULL,NULL,9,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(269,8,NULL,NULL,23,2,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(270,9,NULL,NULL,31,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(271,2,NULL,NULL,17,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(272,5,NULL,NULL,28,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(273,9,NULL,NULL,54,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(274,5,NULL,NULL,9,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(275,10,NULL,NULL,18,2,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(276,2,NULL,NULL,25,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(277,10,NULL,NULL,7,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(278,1,NULL,NULL,10,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(279,2,NULL,NULL,46,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(280,3,NULL,NULL,7,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(281,4,NULL,NULL,43,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(282,2,NULL,NULL,40,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(283,1,NULL,NULL,19,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(284,8,NULL,NULL,47,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(285,4,NULL,NULL,25,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(286,1,NULL,NULL,30,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(287,2,NULL,NULL,12,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(288,6,NULL,NULL,10,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(289,3,NULL,NULL,10,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(290,2,NULL,NULL,50,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(291,4,NULL,NULL,15,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(292,4,NULL,NULL,17,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(293,2,NULL,NULL,45,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(294,7,NULL,NULL,43,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(295,9,NULL,NULL,1,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(296,5,NULL,NULL,53,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(297,4,NULL,NULL,36,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(298,5,NULL,NULL,13,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(299,2,NULL,NULL,38,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(300,4,NULL,NULL,45,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(301,3,NULL,NULL,6,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(302,7,NULL,NULL,4,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(303,4,NULL,NULL,34,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(304,7,NULL,NULL,35,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(305,8,NULL,NULL,52,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(306,2,NULL,NULL,8,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(307,2,NULL,NULL,54,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(308,7,NULL,NULL,5,1,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(309,9,NULL,NULL,30,5,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(310,2,NULL,NULL,21,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(311,7,NULL,NULL,25,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(312,6,NULL,NULL,28,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(313,10,NULL,NULL,15,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(314,1,NULL,NULL,27,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(315,10,NULL,NULL,40,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(316,3,NULL,NULL,40,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(317,5,NULL,NULL,18,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(318,8,NULL,NULL,30,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(319,1,NULL,NULL,24,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(320,6,NULL,NULL,41,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(321,7,NULL,NULL,34,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(322,1,NULL,NULL,16,5,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(323,9,NULL,NULL,38,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(324,6,NULL,NULL,49,4,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(325,2,NULL,NULL,37,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(326,10,NULL,NULL,33,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(327,3,NULL,NULL,25,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(328,5,NULL,NULL,29,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(329,2,NULL,NULL,4,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(330,6,NULL,NULL,34,1,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(331,10,NULL,NULL,49,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(332,3,NULL,NULL,36,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(333,8,NULL,NULL,42,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(334,8,NULL,NULL,5,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(335,9,NULL,NULL,39,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(336,4,NULL,NULL,28,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(337,10,NULL,NULL,45,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(338,9,NULL,NULL,7,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(339,2,NULL,NULL,42,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(340,1,NULL,NULL,15,5,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(341,3,NULL,NULL,18,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(342,9,NULL,NULL,40,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(343,2,NULL,NULL,34,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(344,4,NULL,NULL,38,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(345,3,NULL,NULL,52,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(346,4,NULL,NULL,26,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(347,4,NULL,NULL,5,5,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(348,4,NULL,NULL,18,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(349,1,NULL,NULL,51,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(350,8,NULL,NULL,26,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(351,1,NULL,NULL,43,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(352,4,NULL,NULL,44,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(353,2,NULL,NULL,22,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(354,8,NULL,NULL,43,3,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(355,1,NULL,NULL,45,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(356,5,NULL,NULL,44,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(357,3,NULL,NULL,33,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(358,2,NULL,NULL,18,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(359,5,NULL,NULL,48,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(360,8,NULL,NULL,6,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(361,5,NULL,NULL,43,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(362,7,NULL,NULL,18,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(363,7,NULL,NULL,30,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(364,3,NULL,NULL,47,4,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(365,3,NULL,NULL,42,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(366,7,NULL,NULL,32,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(367,8,NULL,NULL,46,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(368,4,NULL,NULL,27,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(369,6,NULL,NULL,44,5,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(370,7,NULL,NULL,19,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(371,4,NULL,NULL,2,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(372,1,NULL,NULL,1,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(373,4,NULL,NULL,53,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(374,7,NULL,NULL,31,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(375,1,NULL,NULL,26,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(376,5,NULL,NULL,47,4,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(377,6,NULL,NULL,52,5,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(378,7,NULL,NULL,10,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(379,3,NULL,NULL,4,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(380,2,NULL,NULL,35,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(381,10,NULL,NULL,22,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(382,1,NULL,NULL,29,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(383,7,NULL,NULL,44,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(384,1,NULL,NULL,22,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(385,10,NULL,NULL,47,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(386,10,NULL,NULL,41,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(387,1,NULL,NULL,34,1,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(388,6,NULL,NULL,32,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(389,8,NULL,NULL,15,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(390,4,NULL,NULL,52,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(391,5,NULL,NULL,46,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(392,4,NULL,NULL,39,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(393,2,NULL,NULL,15,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(394,6,NULL,NULL,47,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(395,1,NULL,NULL,32,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(396,8,NULL,NULL,17,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(397,6,NULL,NULL,53,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(398,2,NULL,NULL,26,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(399,3,NULL,NULL,16,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(400,3,NULL,NULL,13,4,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(401,5,NULL,NULL,20,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(402,4,NULL,NULL,29,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(403,1,NULL,NULL,12,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(404,6,NULL,NULL,27,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(405,8,NULL,NULL,49,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(406,10,NULL,NULL,43,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(407,3,NULL,NULL,30,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(408,3,NULL,NULL,28,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(409,2,NULL,NULL,5,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(410,8,NULL,NULL,4,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(411,5,NULL,NULL,50,1,'Clean & perfect source code','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(412,10,NULL,NULL,21,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(413,2,NULL,NULL,6,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(414,6,NULL,NULL,17,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(415,2,NULL,NULL,3,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(416,3,NULL,NULL,53,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(417,4,NULL,NULL,3,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(418,7,NULL,NULL,3,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(419,4,NULL,NULL,50,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(420,6,NULL,NULL,19,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(421,8,NULL,NULL,14,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(422,7,NULL,NULL,15,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(423,6,NULL,NULL,3,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(424,7,NULL,NULL,1,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(425,2,NULL,NULL,27,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(426,2,NULL,NULL,33,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(427,5,NULL,NULL,17,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(428,3,NULL,NULL,2,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(429,4,NULL,NULL,22,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(430,10,NULL,NULL,31,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(431,8,NULL,NULL,35,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(432,8,NULL,NULL,1,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(433,9,NULL,NULL,21,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(434,6,NULL,NULL,15,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(435,7,NULL,NULL,46,1,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(436,7,NULL,NULL,12,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(437,10,NULL,NULL,36,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(438,7,NULL,NULL,23,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(439,5,NULL,NULL,4,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(440,10,NULL,NULL,48,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(441,4,NULL,NULL,21,3,'Best ecommerce CMS online store!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(442,8,NULL,NULL,28,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(443,9,NULL,NULL,12,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(444,5,NULL,NULL,21,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(445,8,NULL,NULL,3,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(446,3,NULL,NULL,26,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(447,2,NULL,NULL,16,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(448,5,NULL,NULL,1,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(449,8,NULL,NULL,33,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(450,9,NULL,NULL,14,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(451,1,NULL,NULL,52,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(452,2,NULL,NULL,36,4,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(453,9,NULL,NULL,10,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:53','2026-03-06 01:42:53',NULL),(454,10,NULL,NULL,3,2,'Clean & perfect source code','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(455,10,NULL,NULL,52,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(456,3,NULL,NULL,41,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(457,9,NULL,NULL,46,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(458,7,NULL,NULL,29,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(459,3,NULL,NULL,15,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(460,4,NULL,NULL,8,2,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(461,6,NULL,NULL,38,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(462,9,NULL,NULL,44,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(463,4,NULL,NULL,32,4,'Clean & perfect source code','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(464,2,NULL,NULL,49,4,'Clean & perfect source code','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(465,1,NULL,NULL,4,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(466,6,NULL,NULL,36,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(467,7,NULL,NULL,52,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(468,1,NULL,NULL,7,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(469,2,NULL,NULL,14,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(470,4,NULL,NULL,33,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(471,5,NULL,NULL,37,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(472,3,NULL,NULL,51,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(473,9,NULL,NULL,16,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(474,8,NULL,NULL,48,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(475,7,NULL,NULL,11,1,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(476,4,NULL,NULL,47,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(477,1,NULL,NULL,11,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(478,3,NULL,NULL,39,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(479,1,NULL,NULL,25,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(480,1,NULL,NULL,54,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(481,9,NULL,NULL,48,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(482,3,NULL,NULL,14,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(483,3,NULL,NULL,8,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(484,6,NULL,NULL,22,1,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(485,9,NULL,NULL,33,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(486,5,NULL,NULL,6,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(487,5,NULL,NULL,16,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(488,4,NULL,NULL,19,4,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(489,10,NULL,NULL,4,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(490,3,NULL,NULL,54,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(491,9,NULL,NULL,51,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(492,5,NULL,NULL,35,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(493,4,NULL,NULL,41,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(494,5,NULL,NULL,45,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(495,7,NULL,NULL,38,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(496,10,NULL,NULL,30,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(497,7,NULL,NULL,24,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(498,3,NULL,NULL,44,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(499,8,NULL,NULL,11,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(500,6,NULL,NULL,48,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(501,9,NULL,NULL,42,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(502,2,NULL,NULL,20,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(503,5,NULL,NULL,40,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(504,5,NULL,NULL,12,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(505,5,NULL,NULL,26,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(506,3,NULL,NULL,20,4,'Best ecommerce CMS online store!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(507,10,NULL,NULL,1,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(508,2,NULL,NULL,10,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(509,3,NULL,NULL,29,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(510,7,NULL,NULL,9,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(511,5,NULL,NULL,5,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(512,4,NULL,NULL,12,3,'Clean & perfect source code','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(513,2,NULL,NULL,13,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(514,4,NULL,NULL,20,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(515,1,NULL,NULL,23,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(516,3,NULL,NULL,12,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(517,9,NULL,NULL,18,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(518,6,NULL,NULL,1,5,'Clean & perfect source code','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(519,8,NULL,NULL,18,2,'Best ecommerce CMS online store!','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(520,4,NULL,NULL,4,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(521,9,NULL,NULL,9,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(522,6,NULL,NULL,5,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(523,6,NULL,NULL,24,2,'Good app, good backup service and support. Good documentation.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(524,10,NULL,NULL,35,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL);
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shipments_order_id_unique` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zip_range` (`zip_code_from`,`zip_code_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2026-03-06 01:42:54','2026-03-06 01:42:54'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2026-03-06 01:42:54','2026-03-06 01:42:54'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(8,4,'Resolution','select','[{\"id\":\"res_1080p\",\"value\":\"1920x1080\"},{\"id\":\"res_1440p\",\"value\":\"2560x1440\"},{\"id\":\"res_4k\",\"value\":\"3840x2160\"}]',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(9,4,'Panel Type','select','[{\"id\":\"panel_ips\",\"value\":\"IPS\"},{\"id\":\"panel_va\",\"value\":\"VA\"},{\"id\":\"panel_tn\",\"value\":\"TN\"},{\"id\":\"panel_oled\",\"value\":\"OLED\"}]',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(10,4,'HDR Support','radio','[{\"id\":\"hdr_10\",\"value\":\"HDR10\"},{\"id\":\"hdr_10plus\",\"value\":\"HDR10+\"},{\"id\":\"hdr_dolby\",\"value\":\"Dolby Vision\"},{\"id\":\"hdr_none\",\"value\":\"None\"}]',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`),
  KEY `idx_specification_attributes_fk` (`ec_specification_attributes_id`),
  KEY `idx_specification_attributes_specification_attributes_lang` (`ec_specification_attributes_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes_translations` VALUES ('ar',1,'الارتفاع',NULL,NULL),('ar',2,'العرض',NULL,NULL),('ar',3,'الوزن',NULL,NULL),('ar',4,'الطاقة',NULL,NULL),('ar',5,'السرعة',NULL,NULL),('ar',6,'عمر البطارية',NULL,NULL),('ar',7,'حجم الشاشة',NULL,NULL),('ar',8,'الدقة',NULL,NULL),('ar',9,'نوع اللوحة','[{\"id\":\"panel_ips\",\"value\":\"IPS\"},{\"id\":\"panel_va\",\"value\":\"VA\"},{\"id\":\"panel_tn\",\"value\":\"TN\"},{\"id\":\"panel_oled\",\"value\":\"OLED\"}]',NULL),('ar',10,'دعم HDR','[{\"id\":\"hdr_10\",\"value\":\"HDR10\"},{\"id\":\"hdr_10plus\",\"value\":\"HDR10+\"},{\"id\":\"hdr_dolby\",\"value\":\"Dolby Vision\"},{\"id\":\"hdr_none\",\"value\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f\"}]',NULL),('fr',1,'Height',NULL,NULL),('fr',2,'Width',NULL,NULL),('fr',3,'Weight',NULL,NULL),('fr',4,'Power',NULL,NULL),('fr',5,'Speed',NULL,NULL),('fr',6,'Battery Life',NULL,NULL),('fr',7,'Screen Size',NULL,NULL),('fr',8,'Resolution',NULL,NULL),('fr',9,'Panel Type',NULL,NULL),('fr',10,'HDR Support',NULL,NULL),('id',1,'Height',NULL,NULL),('id',2,'Width',NULL,NULL),('id',3,'Weight',NULL,NULL),('id',4,'Power',NULL,NULL),('id',5,'Speed',NULL,NULL),('id',6,'Battery Life',NULL,NULL),('id',7,'Screen Size',NULL,NULL),('id',8,'Resolution',NULL,NULL),('id',9,'Panel Type',NULL,NULL),('id',10,'HDR Support',NULL,NULL),('tr',1,'Height',NULL,NULL),('tr',2,'Width',NULL,NULL),('tr',3,'Weight',NULL,NULL),('tr',4,'Power',NULL,NULL),('tr',5,'Speed',NULL,NULL),('tr',6,'Battery Life',NULL,NULL),('tr',7,'Screen Size',NULL,NULL),('tr',8,'Resolution',NULL,NULL),('tr',9,'Panel Type',NULL,NULL),('tr',10,'HDR Support',NULL,NULL),('vi',1,'Chiều cao',NULL,NULL),('vi',2,'Chiều rộng',NULL,NULL),('vi',3,'Cân nặng',NULL,NULL),('vi',4,'Công suất',NULL,NULL),('vi',5,'Tốc độ',NULL,NULL),('vi',6,'Thời lượng pin',NULL,NULL),('vi',7,'Kích thước màn hình',NULL,NULL),('vi',8,'Độ phân giải',NULL,NULL),('vi',9,'Loại tấm nền','[{\"id\":\"panel_ips\",\"value\":\"IPS\"},{\"id\":\"panel_va\",\"value\":\"VA\"},{\"id\":\"panel_tn\",\"value\":\"TN\"},{\"id\":\"panel_oled\",\"value\":\"OLED\"}]',NULL),('vi',10,'Hỗ trợ HDR','[{\"id\":\"hdr_10\",\"value\":\"HDR10\"},{\"id\":\"hdr_10plus\",\"value\":\"HDR10+\"},{\"id\":\"hdr_dolby\",\"value\":\"Dolby Vision\"},{\"id\":\"hdr_none\",\"value\":\"Kh\\u00f4ng h\\u1ed7 tr\\u1ee3\"}]',NULL);
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(2,'Performance',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(3,'Battery',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(4,'Display',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
INSERT INTO `ec_specification_groups_translations` VALUES ('ar',1,'الأبعاد',NULL),('ar',2,'الأداء',NULL),('ar',3,'البطارية',NULL),('ar',4,'الشاشة',NULL),('fr',1,'Dimensions',NULL),('fr',2,'Performance',NULL),('fr',3,'Battery',NULL),('fr',4,'Display',NULL),('id',1,'Dimensions',NULL),('id',2,'Performance',NULL),('id',3,'Battery',NULL),('id',4,'Display',NULL),('tr',1,'Dimensions',NULL),('tr',2,'Performance',NULL),('tr',3,'Battery',NULL),('tr',4,'Display',NULL),('vi',1,'Kích thước',NULL),('vi',2,'Hiệu suất',NULL),('vi',3,'Pin',NULL),('vi',4,'Màn hình',NULL);
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL),(2,'Technical Specification',NULL,'2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
INSERT INTO `ec_specification_tables_translations` VALUES ('ar',1,'المواصفات العامة',NULL),('ar',2,'المواصفات الفنية',NULL),('fr',1,'General Specification',NULL),('fr',2,'Technical Specification',NULL),('id',1,'General Specification',NULL),('id',2,'Technical Specification',NULL),('tr',1,'General Specification',NULL),('tr',2,'Technical Specification',NULL),('vi',1,'Thông số chung',NULL),('vi',2,'Thông số kỹ thuật',NULL);
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2026-03-06 01:42:59','2026-03-06 01:42:59',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2026-03-06 01:42:54','2026-03-06 01:42:54'),(2,'None',0,2,'published','2026-03-06 01:42:54','2026-03-06 01:42:54'),(3,'Import Tax',15,3,'published','2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL),(2,'PAYMENT',1,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL),(3,'ORDER &amp; RETURNS',2,'published','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`),
  KEY `idx_faq_cat_trans_faq_cat_id` (`faq_categories_id`),
  KEY `idx_faq_cat_trans_faq_cat_lang` (`faq_categories_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','We offer several shipping methods including Standard Shipping, Express Shipping, and Overnight Delivery. You can select your preferred method at checkout.',1,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(2,'Do You Ship Internationally?','Yes, we ship to over 200 countries worldwide. International shipping rates and delivery times vary by location.',1,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(3,'How Long Will It Take To Get My Package?','Standard shipping typically takes 3-5 business days. Express shipping takes 1-2 business days. International orders may take 7-14 business days depending on customs.',1,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(4,'What Payment Methods Are Accepted?','We accept all major credit cards (Visa, MasterCard, American Express), PayPal, and Apple Pay. We also support local payment methods depending on your region.',2,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(5,'Is Buying On-Line Safe?','Yes, buying online with us is completely safe. We use SSL encryption to protect your personal and payment information. We do not store your credit card details.',2,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(6,'How do I place an Order?','To place an order, browse our catalog, select the items you like, and add them to your cart. Then proceed to checkout, enter your shipping and payment details, and confirm your order.',3,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(7,'How Can I Cancel Or Change My Order?','You can cancel or change your order within 1 hour of placing it by contacting our customer support. After that, we may have already processed it, but we will do our best to assist you.',3,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(8,'Do I need an account to place an order?','No, you can place an order as a guest. However, creating an account allows you to track your orders, save your address for faster checkout, and access exclusive offers.',3,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(9,'How Do I Track My Order?','Once your order is shipped, we will send you a tracking number via email. You can use this number to track your package on our website or the carrier\'s tracking page.',3,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(10,'How Can I Return a Product?','We accept returns within 30 days of purchase. The item must be unused and in its original packaging. Please contact our support team to initiate a return and get a return shipping label.',3,'published','2026-03-06 01:42:56','2026-03-06 01:42:56');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`),
  KEY `idx_faqs_trans_faqs_id` (`faqs_id`),
  KEY `idx_faqs_trans_faq_lang` (`faqs_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','7681274629679b1793d2d82a47ba7909',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','dd45f0ed752bcc05e9e1b548e305eef4',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','a82bcd70c785ecba74a3ad2a489d4c41',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','51d0f5b366e1396ee6b63d0fecd56860',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','783871f519cf70ea04666451c4bc5ed2',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','921ffcf3c2e59b7ae987cd2777379d4a',4,'Botble\\Menu\\Models\\Menu'),(7,'ar','dd45f0ed752bcc05e9e1b548e305eef4',2,'Botble\\Menu\\Models\\MenuLocation'),(8,'ar','a82bcd70c785ecba74a3ad2a489d4c41',5,'Botble\\Menu\\Models\\Menu'),(9,'ar','51d0f5b366e1396ee6b63d0fecd56860',6,'Botble\\Menu\\Models\\Menu'),(10,'ar','783871f519cf70ea04666451c4bc5ed2',7,'Botble\\Menu\\Models\\Menu'),(11,'ar','921ffcf3c2e59b7ae987cd2777379d4a',8,'Botble\\Menu\\Models\\Menu'),(12,'vi','dd45f0ed752bcc05e9e1b548e305eef4',3,'Botble\\Menu\\Models\\MenuLocation'),(13,'vi','a82bcd70c785ecba74a3ad2a489d4c41',9,'Botble\\Menu\\Models\\Menu'),(14,'vi','51d0f5b366e1396ee6b63d0fecd56860',10,'Botble\\Menu\\Models\\Menu'),(15,'vi','783871f519cf70ea04666451c4bc5ed2',11,'Botble\\Menu\\Models\\Menu'),(16,'vi','921ffcf3c2e59b7ae987cd2777379d4a',12,'Botble\\Menu\\Models\\Menu'),(17,'fr','dd45f0ed752bcc05e9e1b548e305eef4',4,'Botble\\Menu\\Models\\MenuLocation'),(18,'fr','a82bcd70c785ecba74a3ad2a489d4c41',13,'Botble\\Menu\\Models\\Menu'),(19,'fr','51d0f5b366e1396ee6b63d0fecd56860',14,'Botble\\Menu\\Models\\Menu'),(20,'fr','783871f519cf70ea04666451c4bc5ed2',15,'Botble\\Menu\\Models\\Menu'),(21,'fr','921ffcf3c2e59b7ae987cd2777379d4a',16,'Botble\\Menu\\Models\\Menu'),(22,'id','dd45f0ed752bcc05e9e1b548e305eef4',5,'Botble\\Menu\\Models\\MenuLocation'),(23,'id','a82bcd70c785ecba74a3ad2a489d4c41',17,'Botble\\Menu\\Models\\Menu'),(24,'id','51d0f5b366e1396ee6b63d0fecd56860',18,'Botble\\Menu\\Models\\Menu'),(25,'id','783871f519cf70ea04666451c4bc5ed2',19,'Botble\\Menu\\Models\\Menu'),(26,'id','921ffcf3c2e59b7ae987cd2777379d4a',20,'Botble\\Menu\\Models\\Menu'),(27,'tr','dd45f0ed752bcc05e9e1b548e305eef4',6,'Botble\\Menu\\Models\\MenuLocation'),(28,'tr','a82bcd70c785ecba74a3ad2a489d4c41',21,'Botble\\Menu\\Models\\Menu'),(29,'tr','51d0f5b366e1396ee6b63d0fecd56860',22,'Botble\\Menu\\Models\\Menu'),(30,'tr','783871f519cf70ea04666451c4bc5ed2',23,'Botble\\Menu\\Models\\Menu'),(31,'tr','921ffcf3c2e59b7ae987cd2777379d4a',24,'Botble\\Menu\\Models\\Menu'),(32,'ar','7681274629679b1793d2d82a47ba7909',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(33,'vi','7681274629679b1793d2d82a47ba7909',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(34,'fr','7681274629679b1793d2d82a47ba7909',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(35,'id','7681274629679b1793d2d82a47ba7909',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(36,'tr','7681274629679b1793d2d82a47ba7909',6,'Botble\\SimpleSlider\\Models\\SimpleSlider');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Arabic','ar','ar','sa',0,1,1),(3,'Tiếng Việt','vi','vi','vn',0,2,0),(4,'Français','fr','fr','fr',0,3,0),(5,'Bahasa Indonesia','id','id','id',0,4,0),(6,'Türkçe','tr','tr','tr',0,5,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2026-03-06 01:42:25','2026-03-06 01:42:25',NULL,'public'),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,'public'),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,'public'),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,'public'),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,'public'),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,'public'),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2026-03-06 01:42:26','2026-03-06 01:42:26',NULL,'public'),(16,0,'1-1','1-1',3,'image/jpeg',9803,'products/1-1.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(17,0,'1-2','1-2',3,'image/jpeg',9803,'products/1-2.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(18,0,'1-3','1-3',3,'image/jpeg',9803,'products/1-3.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(19,0,'1-4','1-4',3,'image/jpeg',9803,'products/1-4.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(20,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(21,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(22,0,'10-3','10-3',3,'image/jpeg',9803,'products/10-3.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(23,0,'10-4','10-4',3,'image/jpeg',9803,'products/10-4.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(24,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(25,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2026-03-06 01:42:27','2026-03-06 01:42:27',NULL,'public'),(26,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(27,0,'11-4','11-4',3,'image/jpeg',9803,'products/11-4.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(28,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(29,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(30,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(31,0,'12-4','12-4',3,'image/jpeg',9803,'products/12-4.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(32,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(33,0,'13-2','13-2',3,'image/jpeg',9803,'products/13-2.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(34,0,'13-3','13-3',3,'image/jpeg',9803,'products/13-3.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(35,0,'13-4','13-4',3,'image/jpeg',9803,'products/13-4.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(36,0,'14-1','14-1',3,'image/jpeg',9803,'products/14-1.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(37,0,'14-2','14-2',3,'image/jpeg',9803,'products/14-2.jpg','[]','2026-03-06 01:42:28','2026-03-06 01:42:28',NULL,'public'),(38,0,'14-3','14-3',3,'image/jpeg',9803,'products/14-3.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(39,0,'14-4','14-4',3,'image/jpeg',9803,'products/14-4.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(40,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(41,0,'15-2','15-2',3,'image/jpeg',9803,'products/15-2.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(42,0,'15-3','15-3',3,'image/jpeg',9803,'products/15-3.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(43,0,'15-4','15-4',3,'image/jpeg',9803,'products/15-4.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(44,0,'16-1','16-1',3,'image/jpeg',9803,'products/16-1.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(45,0,'16-2','16-2',3,'image/jpeg',9803,'products/16-2.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(46,0,'16-3','16-3',3,'image/jpeg',9803,'products/16-3.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(47,0,'16-4','16-4',3,'image/jpeg',9803,'products/16-4.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(48,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(49,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2026-03-06 01:42:29','2026-03-06 01:42:29',NULL,'public'),(50,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(51,0,'17-4','17-4',3,'image/jpeg',9803,'products/17-4.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(52,0,'17-5','17-5',3,'image/jpeg',9803,'products/17-5.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(53,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(54,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(55,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(56,0,'18-4','18-4',3,'image/jpeg',9803,'products/18-4.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(57,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(58,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(59,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(60,0,'19-4','19-4',3,'image/jpeg',9803,'products/19-4.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(61,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2026-03-06 01:42:30','2026-03-06 01:42:30',NULL,'public'),(62,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(63,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(64,0,'2-4','2-4',3,'image/jpeg',9803,'products/2-4.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(65,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(66,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(67,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(68,0,'20-4','20-4',3,'image/jpeg',9803,'products/20-4.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(69,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(70,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(71,0,'21-3','21-3',3,'image/jpeg',9803,'products/21-3.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(72,0,'21-4','21-4',3,'image/jpeg',9803,'products/21-4.jpg','[]','2026-03-06 01:42:31','2026-03-06 01:42:31',NULL,'public'),(73,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(74,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(75,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(76,0,'22-4','22-4',3,'image/jpeg',9803,'products/22-4.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(77,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(78,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(79,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(80,0,'23-4','23-4',3,'image/jpeg',9803,'products/23-4.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(81,0,'24-1','24-1',3,'image/jpeg',9803,'products/24-1.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(82,0,'24-2','24-2',3,'image/jpeg',9803,'products/24-2.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(83,0,'24-3','24-3',3,'image/jpeg',9803,'products/24-3.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(84,0,'24-4','24-4',3,'image/jpeg',9803,'products/24-4.jpg','[]','2026-03-06 01:42:32','2026-03-06 01:42:32',NULL,'public'),(85,0,'25-1','25-1',3,'image/jpeg',9803,'products/25-1.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(86,0,'25-2','25-2',3,'image/jpeg',9803,'products/25-2.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(87,0,'25-3','25-3',3,'image/jpeg',9803,'products/25-3.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(88,0,'25-4','25-4',3,'image/jpeg',9803,'products/25-4.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(89,0,'26-1','26-1',3,'image/jpeg',9803,'products/26-1.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(90,0,'26-2','26-2',3,'image/jpeg',9803,'products/26-2.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(91,0,'26-3','26-3',3,'image/jpeg',9803,'products/26-3.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(92,0,'26-4','26-4',3,'image/jpeg',9803,'products/26-4.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(93,0,'27-1','27-1',3,'image/jpeg',9803,'products/27-1.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(94,0,'27-2','27-2',3,'image/jpeg',9803,'products/27-2.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(95,0,'27-3','27-3',3,'image/jpeg',9803,'products/27-3.jpg','[]','2026-03-06 01:42:33','2026-03-06 01:42:33',NULL,'public'),(96,0,'27-4','27-4',3,'image/jpeg',9803,'products/27-4.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(97,0,'28-1','28-1',3,'image/jpeg',9803,'products/28-1.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(98,0,'28-2','28-2',3,'image/jpeg',9803,'products/28-2.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(99,0,'28-3','28-3',3,'image/jpeg',9803,'products/28-3.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(100,0,'28-4','28-4',3,'image/jpeg',9803,'products/28-4.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(101,0,'29-1','29-1',3,'image/jpeg',9803,'products/29-1.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(102,0,'29-2','29-2',3,'image/jpeg',9803,'products/29-2.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(103,0,'29-3','29-3',3,'image/jpeg',9803,'products/29-3.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(104,0,'3-1','3-1',3,'image/jpeg',9803,'products/3-1.jpg','[]','2026-03-06 01:42:34','2026-03-06 01:42:34',NULL,'public'),(105,0,'3-2','3-2',3,'image/jpeg',9803,'products/3-2.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(106,0,'3-3','3-3',3,'image/jpeg',9803,'products/3-3.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(107,0,'3-4','3-4',3,'image/jpeg',9803,'products/3-4.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(108,0,'30-1','30-1',3,'image/jpeg',9803,'products/30-1.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(109,0,'30-2','30-2',3,'image/jpeg',9803,'products/30-2.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(110,0,'30-3','30-3',3,'image/jpeg',9803,'products/30-3.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(111,0,'30-4','30-4',3,'image/jpeg',9803,'products/30-4.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(112,0,'31-1','31-1',3,'image/jpeg',9803,'products/31-1.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(113,0,'31-2','31-2',3,'image/jpeg',9803,'products/31-2.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(114,0,'31-3','31-3',3,'image/jpeg',9803,'products/31-3.jpg','[]','2026-03-06 01:42:35','2026-03-06 01:42:35',NULL,'public'),(115,0,'31-4','31-4',3,'image/jpeg',9803,'products/31-4.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(116,0,'32-1','32-1',3,'image/jpeg',9803,'products/32-1.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(117,0,'32-2','32-2',3,'image/jpeg',9803,'products/32-2.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(118,0,'32-3','32-3',3,'image/jpeg',9803,'products/32-3.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(119,0,'32-4','32-4',3,'image/jpeg',9803,'products/32-4.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(120,0,'33-1','33-1',3,'image/jpeg',9803,'products/33-1.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(121,0,'33-2','33-2',3,'image/jpeg',9803,'products/33-2.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(122,0,'33-3','33-3',3,'image/jpeg',9803,'products/33-3.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(123,0,'33-4','33-4',3,'image/jpeg',9803,'products/33-4.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(124,0,'34-1','34-1',3,'image/jpeg',9803,'products/34-1.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(125,0,'34-2','34-2',3,'image/jpeg',9803,'products/34-2.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(126,0,'34-3','34-3',3,'image/jpeg',9803,'products/34-3.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(127,0,'34-4','34-4',3,'image/jpeg',9803,'products/34-4.jpg','[]','2026-03-06 01:42:36','2026-03-06 01:42:36',NULL,'public'),(128,0,'35-1','35-1',3,'image/jpeg',9803,'products/35-1.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(129,0,'35-2','35-2',3,'image/jpeg',9803,'products/35-2.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(130,0,'35-3','35-3',3,'image/jpeg',9803,'products/35-3.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(131,0,'35-4','35-4',3,'image/jpeg',9803,'products/35-4.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(132,0,'36-1','36-1',3,'image/jpeg',9803,'products/36-1.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(133,0,'36-2','36-2',3,'image/jpeg',9803,'products/36-2.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(134,0,'36-3','36-3',3,'image/jpeg',9803,'products/36-3.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(135,0,'37-1','37-1',3,'image/jpeg',9803,'products/37-1.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(136,0,'37-2','37-2',3,'image/jpeg',9803,'products/37-2.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(137,0,'37-3','37-3',3,'image/jpeg',9803,'products/37-3.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(138,0,'38-1','38-1',3,'image/jpeg',9803,'products/38-1.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(139,0,'38-2','38-2',3,'image/jpeg',9803,'products/38-2.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(140,0,'38-3','38-3',3,'image/jpeg',9803,'products/38-3.jpg','[]','2026-03-06 01:42:37','2026-03-06 01:42:37',NULL,'public'),(141,0,'38-4','38-4',3,'image/jpeg',9803,'products/38-4.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(142,0,'39-1','39-1',3,'image/jpeg',9803,'products/39-1.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(143,0,'39-2','39-2',3,'image/jpeg',9803,'products/39-2.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(144,0,'39-3','39-3',3,'image/jpeg',9803,'products/39-3.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(145,0,'39-4','39-4',3,'image/jpeg',9803,'products/39-4.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(146,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(147,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(148,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(149,0,'4-4','4-4',3,'image/jpeg',9803,'products/4-4.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(150,0,'40-1','40-1',3,'image/jpeg',9803,'products/40-1.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(151,0,'40-2','40-2',3,'image/jpeg',9803,'products/40-2.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(152,0,'40-3','40-3',3,'image/jpeg',9803,'products/40-3.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(153,0,'40-4','40-4',3,'image/jpeg',9803,'products/40-4.jpg','[]','2026-03-06 01:42:38','2026-03-06 01:42:38',NULL,'public'),(154,0,'41-1','41-1',3,'image/jpeg',9803,'products/41-1.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(155,0,'41-2','41-2',3,'image/jpeg',9803,'products/41-2.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(156,0,'41-3','41-3',3,'image/jpeg',9803,'products/41-3.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(157,0,'41-4','41-4',3,'image/jpeg',9803,'products/41-4.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(158,0,'42-1','42-1',3,'image/jpeg',9803,'products/42-1.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(159,0,'42-2','42-2',3,'image/jpeg',9803,'products/42-2.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(160,0,'42-3','42-3',3,'image/jpeg',9803,'products/42-3.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(161,0,'43-1','43-1',3,'image/jpeg',9803,'products/43-1.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(162,0,'43-2','43-2',3,'image/jpeg',9803,'products/43-2.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(163,0,'43-3','43-3',3,'image/jpeg',9803,'products/43-3.jpg','[]','2026-03-06 01:42:39','2026-03-06 01:42:39',NULL,'public'),(164,0,'44-1','44-1',3,'image/jpeg',9803,'products/44-1.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(165,0,'44-2','44-2',3,'image/jpeg',9803,'products/44-2.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(166,0,'44-3','44-3',3,'image/jpeg',9803,'products/44-3.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(167,0,'45-1','45-1',3,'image/jpeg',9803,'products/45-1.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(168,0,'45-2','45-2',3,'image/jpeg',9803,'products/45-2.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(169,0,'45-3','45-3',3,'image/jpeg',9803,'products/45-3.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(170,0,'45-4','45-4',3,'image/jpeg',9803,'products/45-4.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(171,0,'46-1','46-1',3,'image/jpeg',9803,'products/46-1.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(172,0,'46-2','46-2',3,'image/jpeg',9803,'products/46-2.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(173,0,'46-3','46-3',3,'image/jpeg',9803,'products/46-3.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(174,0,'46-4','46-4',3,'image/jpeg',9803,'products/46-4.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(175,0,'47-1','47-1',3,'image/jpeg',9803,'products/47-1.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(176,0,'47-2','47-2',3,'image/jpeg',9803,'products/47-2.jpg','[]','2026-03-06 01:42:40','2026-03-06 01:42:40',NULL,'public'),(177,0,'47-3','47-3',3,'image/jpeg',9803,'products/47-3.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(178,0,'48-1','48-1',3,'image/jpeg',9803,'products/48-1.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(179,0,'48-2','48-2',3,'image/jpeg',9803,'products/48-2.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(180,0,'48-3','48-3',3,'image/jpeg',9803,'products/48-3.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(181,0,'48-4','48-4',3,'image/jpeg',9803,'products/48-4.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(182,0,'49-1','49-1',3,'image/jpeg',9803,'products/49-1.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(183,0,'49-2','49-2',3,'image/jpeg',9803,'products/49-2.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(184,0,'49-3','49-3',3,'image/jpeg',9803,'products/49-3.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(185,0,'49-4','49-4',3,'image/jpeg',9803,'products/49-4.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(186,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(187,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(188,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(189,0,'5-4','5-4',3,'image/jpeg',9803,'products/5-4.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(190,0,'50-1','50-1',3,'image/jpeg',9803,'products/50-1.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(191,0,'50-2','50-2',3,'image/jpeg',9803,'products/50-2.jpg','[]','2026-03-06 01:42:41','2026-03-06 01:42:41',NULL,'public'),(192,0,'50-3','50-3',3,'image/jpeg',9803,'products/50-3.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(193,0,'50-4','50-4',3,'image/jpeg',9803,'products/50-4.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(194,0,'51-1','51-1',3,'image/jpeg',9803,'products/51-1.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(195,0,'51-2','51-2',3,'image/jpeg',9803,'products/51-2.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(196,0,'51-3','51-3',3,'image/jpeg',9803,'products/51-3.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(197,0,'51-4','51-4',3,'image/jpeg',9803,'products/51-4.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(198,0,'52-1','52-1',3,'image/jpeg',9803,'products/52-1.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(199,0,'52-2','52-2',3,'image/jpeg',9803,'products/52-2.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(200,0,'52-3','52-3',3,'image/jpeg',9803,'products/52-3.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(201,0,'53-1','53-1',3,'image/jpeg',9803,'products/53-1.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(202,0,'53-2','53-2',3,'image/jpeg',9803,'products/53-2.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(203,0,'53-3','53-3',3,'image/jpeg',9803,'products/53-3.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(204,0,'53-4','53-4',3,'image/jpeg',9803,'products/53-4.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(205,0,'54-1','54-1',3,'image/jpeg',9803,'products/54-1.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(206,0,'54-2','54-2',3,'image/jpeg',9803,'products/54-2.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(207,0,'54-3','54-3',3,'image/jpeg',9803,'products/54-3.jpg','[]','2026-03-06 01:42:42','2026-03-06 01:42:42',NULL,'public'),(208,0,'6-1','6-1',3,'image/jpeg',9803,'products/6-1.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(209,0,'6-2','6-2',3,'image/jpeg',9803,'products/6-2.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(210,0,'6-3','6-3',3,'image/jpeg',9803,'products/6-3.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(211,0,'6-4','6-4',3,'image/jpeg',9803,'products/6-4.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(212,0,'7-1','7-1',3,'image/jpeg',9803,'products/7-1.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(213,0,'7-2','7-2',3,'image/jpeg',9803,'products/7-2.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(214,0,'7-3','7-3',3,'image/jpeg',9803,'products/7-3.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(215,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(216,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(217,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(218,0,'8-4','8-4',3,'image/jpeg',9803,'products/8-4.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(219,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(220,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(221,0,'9-3','9-3',3,'image/jpeg',9803,'products/9-3.jpg','[]','2026-03-06 01:42:43','2026-03-06 01:42:43',NULL,'public'),(222,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(223,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(224,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(225,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(226,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(227,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(228,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(229,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(230,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(231,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2026-03-06 01:42:49','2026-03-06 01:42:49',NULL,'public'),(232,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,'public'),(233,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2026-03-06 01:42:54','2026-03-06 01:42:54',NULL,'public'),(234,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(235,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(236,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(237,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(238,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(239,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(240,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(241,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(242,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(243,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(244,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(245,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(246,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2026-03-06 01:42:55','2026-03-06 01:42:55',NULL,'public'),(247,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(248,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(249,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(250,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(251,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(252,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(253,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(254,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(255,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(256,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(257,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(258,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(259,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(260,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(261,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2026-03-06 01:42:56','2026-03-06 01:42:56',NULL,'public'),(262,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,'public'),(263,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,'public'),(264,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,'public'),(265,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,'public'),(266,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,'public'),(267,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,'public'),(268,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2026-03-06 01:42:57','2026-03-06 01:42:57',NULL,'public'),(269,0,'app','app',9,'image/png',8667,'general/app.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(270,0,'coming-soon','coming-soon',9,'image/jpeg',22253,'general/coming-soon.jpg','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(271,0,'favicon','favicon',9,'image/png',5047,'general/favicon.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(272,0,'logo-dark','logo-dark',9,'image/png',1562,'general/logo-dark.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(273,0,'logo-light','logo-light',9,'image/png',1529,'general/logo-light.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(274,0,'logo','logo',9,'image/png',1441,'general/logo.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(275,0,'newsletter','newsletter',9,'image/jpeg',9778,'general/newsletter.jpg','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(276,0,'payment-method-1','payment-method-1',9,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(277,0,'payment-method-2','payment-method-2',9,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(278,0,'payment-method-3','payment-method-3',9,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(279,0,'payment-method-4','payment-method-4',9,'image/jpeg',944,'general/payment-method-4.jpg','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(280,0,'payment-method-5','payment-method-5',9,'image/jpeg',964,'general/payment-method-5.jpg','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(281,0,'placeholder','placeholder',9,'image/png',12344,'general/placeholder.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(282,0,'1','1',10,'image/png',9022,'stores/1.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(283,0,'10','10',10,'image/png',4384,'stores/10.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(284,0,'11','11',10,'image/png',4706,'stores/11.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(285,0,'12','12',10,'image/png',5075,'stores/12.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(286,0,'13','13',10,'image/png',3700,'stores/13.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(287,0,'14','14',10,'image/png',4239,'stores/14.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(288,0,'15','15',10,'image/png',5304,'stores/15.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(289,0,'16','16',10,'image/png',4796,'stores/16.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(290,0,'17','17',10,'image/png',4919,'stores/17.png','[]','2026-03-06 01:43:00','2026-03-06 01:43:00',NULL,'public'),(291,0,'2','2',10,'image/png',8598,'stores/2.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public'),(292,0,'3','3',10,'image/png',7888,'stores/3.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public'),(293,0,'4','4',10,'image/png',8393,'stores/4.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public'),(294,0,'5','5',10,'image/png',10159,'stores/5.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public'),(295,0,'6','6',10,'image/png',10312,'stores/6.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public'),(296,0,'7','7',10,'image/png',3764,'stores/7.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public'),(297,0,'8','8',10,'image/png',4237,'stores/8.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public'),(298,0,'9','9',10,'image/png',4096,'stores/9.png','[]','2026-03-06 01:43:01','2026-03-06 01:43:01',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2026-03-06 01:42:25','2026-03-06 01:42:25',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2026-03-06 01:42:25','2026-03-06 01:42:25',NULL),(3,0,'products',NULL,'products',0,'2026-03-06 01:42:27','2026-03-06 01:42:27',NULL),(4,0,'customers',NULL,'customers',0,'2026-03-06 01:42:49','2026-03-06 01:42:49',NULL),(5,0,'news',NULL,'news',0,'2026-03-06 01:42:54','2026-03-06 01:42:54',NULL),(6,0,'sliders',NULL,'sliders',0,'2026-03-06 01:42:55','2026-03-06 01:42:55',NULL),(7,0,'promotion',NULL,'promotion',0,'2026-03-06 01:42:56','2026-03-06 01:42:56',NULL),(8,0,'payments',NULL,'payments',0,'2026-03-06 01:42:56','2026-03-06 01:42:56',NULL),(9,0,'general',NULL,'general',0,'2026-03-06 01:43:00','2026-03-06 01:43:00',NULL),(10,0,'stores',NULL,'stores',0,'2026-03-06 01:43:00','2026-03-06 01:43:00',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2026-03-06 01:42:59','2026-03-06 01:42:59'),(2,5,'main-menu','2026-03-06 01:43:05','2026-03-06 01:43:05'),(3,9,'main-menu','2026-03-06 01:43:05','2026-03-06 01:43:05'),(4,13,'main-menu','2026-03-06 01:43:05','2026-03-06 01:43:05'),(5,17,'main-menu','2026-03-06 01:43:05','2026-03-06 01:43:05'),(6,21,'main-menu','2026-03-06 01:43:05','2026-03-06 01:43:05');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(2,1,0,NULL,NULL,'#',NULL,1,'Pages',NULL,'_self',1,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:43:00'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,1,'Terms Of Use',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:43:00'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,2,'Terms & Conditions',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:43:00'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,3,'Refund Policy',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:43:00'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,4,'Coming soon',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:43:00'),(8,1,0,NULL,NULL,'/products',NULL,2,'Products',NULL,'_self',1,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Products Of Category',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(11,1,8,NULL,NULL,'/products/headphone-ultra-bass',NULL,2,'Product Single',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(12,1,0,NULL,NULL,'/stores',NULL,3,'Stores',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQs',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(16,2,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms Of Use',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(17,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Terms & Conditions',NULL,'_self',0,'2026-03-06 01:42:59','2026-03-06 01:42:59'),(18,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Refund Policy',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(19,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'FAQs',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(20,2,0,NULL,NULL,'/nothing',NULL,4,'404 Page',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(21,3,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(22,3,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Affiliate',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(23,3,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Career',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(24,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(25,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Our blog',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(26,4,0,NULL,NULL,'/cart',NULL,1,'Cart',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(27,4,0,NULL,NULL,'/customer/overview',NULL,2,'My account',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(28,4,0,NULL,NULL,'/products',NULL,3,'Shop',NULL,'_self',0,'2026-03-06 01:43:00','2026-03-06 01:43:00'),(29,5,0,NULL,NULL,'/',NULL,0,'الرئيسية',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(30,5,0,NULL,NULL,'#',NULL,1,'الصفحات',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(31,5,30,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'من نحن',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(32,5,30,3,'Botble\\Page\\Models\\Page',NULL,NULL,1,'شروط الاستخدام',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(33,5,30,4,'Botble\\Page\\Models\\Page',NULL,NULL,2,'الشروط والأحكام',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(34,5,30,5,'Botble\\Page\\Models\\Page',NULL,NULL,3,'سياسة الاسترجاع',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(35,5,30,12,'Botble\\Page\\Models\\Page',NULL,NULL,4,'قريباً',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(36,5,0,NULL,NULL,'/products',NULL,2,'المنتجات',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(37,5,36,NULL,NULL,'/products',NULL,0,'جميع المنتجات',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'منتجات الفئة',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(39,5,36,NULL,NULL,'/products/headphone-ultra-bass',NULL,2,'منتج واحد',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(40,5,0,NULL,NULL,'/stores',NULL,3,'المتاجر',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(41,5,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'المدونة',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(42,5,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'الأسئلة الشائعة',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(43,5,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'اتصل بنا',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(44,6,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'شروط الاستخدام',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(45,6,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'الشروط والأحكام',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(46,6,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'سياسة الاسترجاع',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(47,6,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'الأسئلة الشائعة',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(48,6,0,NULL,NULL,'/nothing',NULL,4,'صفحة 404',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(49,7,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'من نحن',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(50,7,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'الشركاء',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(51,7,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'الوظائف',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(52,7,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'اتصل بنا',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(53,8,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'مدونتنا',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(54,8,0,NULL,NULL,'/cart',NULL,1,'السلة',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(55,8,0,NULL,NULL,'/customer/overview',NULL,2,'حسابي',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(56,8,0,NULL,NULL,'/products',NULL,3,'المتجر',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(57,9,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(58,9,0,NULL,NULL,'#',NULL,1,'Trang',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(59,9,58,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Về chúng tôi',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(60,9,58,3,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Điều khoản sử dụng',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(61,9,58,4,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Điều khoản và điều kiện',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(62,9,58,5,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Chính sách hoàn tiền',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(63,9,58,12,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Sắp ra mắt',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(64,9,0,NULL,NULL,'/products',NULL,2,'Sản phẩm',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(65,9,64,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(66,9,64,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Sản phẩm theo danh mục',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(67,9,64,NULL,NULL,'/products/headphone-ultra-bass',NULL,2,'Sản phẩm đơn',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(68,9,0,NULL,NULL,'/stores',NULL,3,'Cửa hàng',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(69,9,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Tin tức',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(70,9,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Hỏi đáp',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(71,9,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Liên hệ',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(72,10,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(73,10,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Điều khoản và điều kiện',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(74,10,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Chính sách hoàn tiền',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(75,10,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Hỏi đáp',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(76,10,0,NULL,NULL,'/nothing',NULL,4,'Trang 404',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(77,11,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Về chúng tôi',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(78,11,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Đối tác',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(79,11,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Tuyển dụng',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(80,11,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Liên hệ chúng tôi',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(81,12,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog của chúng tôi',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(82,12,0,NULL,NULL,'/cart',NULL,1,'Giỏ hàng',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(83,12,0,NULL,NULL,'/customer/overview',NULL,2,'Tài khoản của tôi',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(84,12,0,NULL,NULL,'/products',NULL,3,'Cửa hàng',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(85,13,0,NULL,NULL,'/',NULL,0,'Accueil',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(86,13,0,NULL,NULL,'#',NULL,1,'Pages',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(87,13,86,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'À propos',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(88,13,86,3,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Conditions d\'utilisation',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(89,13,86,4,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Termes et conditions',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(90,13,86,5,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Politique de remboursement',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(91,13,86,12,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Bientôt disponible',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(92,13,0,NULL,NULL,'/products',NULL,2,'Produits',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(93,13,92,NULL,NULL,'/products',NULL,0,'Tous les produits',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(94,13,92,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Produits de la catégorie',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(95,13,92,NULL,NULL,'/products/headphone-ultra-bass',NULL,2,'Produit unique',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(96,13,0,NULL,NULL,'/stores',NULL,3,'Boutiques',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(97,13,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(98,13,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQ',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(99,13,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(100,14,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Conditions d\'utilisation',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(101,14,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Termes et conditions',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(102,14,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Politique de remboursement',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(103,14,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'FAQ',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(104,14,0,NULL,NULL,'/nothing',NULL,4,'Page 404',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(105,15,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'À propos',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(106,15,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Affilié',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(107,15,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Carrière',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(108,15,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contactez-nous',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(109,16,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Notre blog',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(110,16,0,NULL,NULL,'/cart',NULL,1,'Panier',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(111,16,0,NULL,NULL,'/customer/overview',NULL,2,'Mon compte',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(112,16,0,NULL,NULL,'/products',NULL,3,'Boutique',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(113,17,0,NULL,NULL,'/',NULL,0,'Beranda',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(114,17,0,NULL,NULL,'#',NULL,1,'Halaman',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(115,17,114,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Tentang kami',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(116,17,114,3,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Syarat penggunaan',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(117,17,114,4,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Syarat dan ketentuan',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(118,17,114,5,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Kebijakan pengembalian dana',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(119,17,114,12,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Segera hadir',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(120,17,0,NULL,NULL,'/products',NULL,2,'Produk',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(121,17,120,NULL,NULL,'/products',NULL,0,'Semua produk',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(122,17,120,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Produk berdasarkan kategori',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(123,17,120,NULL,NULL,'/products/headphone-ultra-bass',NULL,2,'Produk tunggal',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(124,17,0,NULL,NULL,'/stores',NULL,3,'Toko',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(125,17,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(126,17,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQ',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(127,17,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Kontak',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(128,18,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Syarat penggunaan',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(129,18,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Syarat dan ketentuan',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(130,18,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Kebijakan pengembalian dana',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(131,18,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'FAQ',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(132,18,0,NULL,NULL,'/nothing',NULL,4,'Halaman 404',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(133,19,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Tentang kami',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(134,19,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Afiliasi',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(135,19,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Karir',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(136,19,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Hubungi kami',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(137,20,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog kami',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(138,20,0,NULL,NULL,'/cart',NULL,1,'Keranjang',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(139,20,0,NULL,NULL,'/customer/overview',NULL,2,'Akun saya',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(140,20,0,NULL,NULL,'/products',NULL,3,'Toko',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(141,21,0,NULL,NULL,'/',NULL,0,'Ana Sayfa',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(142,21,0,NULL,NULL,'#',NULL,1,'Sayfalar',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(143,21,142,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Hakkımızda',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(144,21,142,3,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Kullanım Şartları',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(145,21,142,4,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Şartlar ve Koşullar',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(146,21,142,5,'Botble\\Page\\Models\\Page',NULL,NULL,3,'İade Politikası',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(147,21,142,12,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Yakında',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(148,21,0,NULL,NULL,'/products',NULL,2,'Ürünler',NULL,'_self',1,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(149,21,148,NULL,NULL,'/products',NULL,0,'Tüm ürünler',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(150,21,148,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Kategoriye göre ürünler',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(151,21,148,NULL,NULL,'/products/headphone-ultra-bass',NULL,2,'Tekli ürün',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(152,21,0,NULL,NULL,'/stores',NULL,3,'Mağazalar',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(153,21,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(154,21,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'SSS',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(155,21,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'İletişim',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(156,22,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Kullanım Şartları',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(157,22,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Şartlar ve Koşullar',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(158,22,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'İade Politikası',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(159,22,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'SSS',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(160,22,0,NULL,NULL,'/nothing',NULL,4,'404 Sayfası',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(161,23,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Hakkımızda',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(162,23,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'İş Ortakları',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(163,23,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Kariyer',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(164,23,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Bize ulaşın',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(165,24,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blogumuz',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(166,24,0,NULL,NULL,'/cart',NULL,1,'Sepet',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(167,24,0,NULL,NULL,'/customer/overview',NULL,2,'Hesabım',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05'),(168,24,0,NULL,NULL,'/products',NULL,3,'Mağaza',NULL,'_self',0,'2026-03-06 01:43:05','2026-03-06 01:43:05');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2026-03-06 01:42:59','2026-03-06 01:42:59'),(2,'Quick links','quick-links','published','2026-03-06 01:42:59','2026-03-06 01:42:59'),(3,'Company','company','published','2026-03-06 01:43:00','2026-03-06 01:43:00'),(4,'Business','business','published','2026-03-06 01:43:00','2026-03-06 01:43:00'),(5,'القائمة الرئيسية','main-menu-ar','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(6,'روابط سريعة','quick-links-ar','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(7,'الشركة','company-ar','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(8,'الأعمال','business-ar','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(9,'Menu chính','main-menu-vi','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(10,'Liên kết nhanh','quick-links-vi','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(11,'Công ty','company-vi','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(12,'Kinh doanh','business-vi','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(13,'Menu principal','main-menu-fr','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(14,'Liens rapides','quick-links-fr','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(15,'Entreprise','company-fr','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(16,'Affaires','business-fr','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(17,'Menu utama','main-menu-id','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(18,'Tautan cepat','quick-links-id','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(19,'Perusahaan','company-id','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(20,'Bisnis','business-id','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(21,'Ana menü','main-menu-tr','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(22,'Hızlı bağlantılar','quick-links-tr','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(23,'Şirket','company-tr','published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(24,'İş','business-tr','published','2026-03-06 01:43:05','2026-03-06 01:43:05');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(2,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(3,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(4,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(5,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(6,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(7,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(8,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(9,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(10,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(11,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(12,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(13,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(14,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:44','2026-03-06 01:42:44'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',32,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',33,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',34,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',35,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',36,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',37,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',38,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',39,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',40,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',41,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(42,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',42,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',43,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',44,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(45,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',45,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',46,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',47,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:45','2026-03-06 01:42:45'),(48,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',48,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:46','2026-03-06 01:42:46'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',49,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:46','2026-03-06 01:42:46'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',50,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:46','2026-03-06 01:42:46'),(51,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',51,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:46','2026-03-06 01:42:46'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',52,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:46','2026-03-06 01:42:46'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',53,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:46','2026-03-06 01:42:46'),(54,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What is the warranty period?\"},{\"key\":\"answer\",\"value\":\"This product comes with a 1-year manufacturer warranty covering defects in materials and workmanship.\"}],[{\"key\":\"question\",\"value\":\"Is this item compatible with Mac and Windows?\"},{\"key\":\"answer\",\"value\":\"Yes, this product is fully compatible with both macOS and Windows operating systems out of the box.\"}],[{\"key\":\"question\",\"value\":\"How long does the battery last?\"},{\"key\":\"answer\",\"value\":\"The battery life is approximately 10 hours on a full charge, depending on usage conditions.\"}],[{\"key\":\"question\",\"value\":\"Does it come with a carrying case?\"},{\"key\":\"answer\",\"value\":\"Yes, a protective carrying case is included in the box to keep your device safe during travel.\"}],[{\"key\":\"question\",\"value\":\"Can I return it if I don\'t like it?\"},{\"key\":\"answer\",\"value\":\"Absolutely! We offer a hassle-free 30-day return policy. If you are not satisfied, you can return it for a full refund.\"}]]]',54,'Botble\\Ecommerce\\Models\\Product','2026-03-06 01:42:46','2026-03-06 01:42:46'),(55,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-03-06 01:42:56','2026-03-06 01:42:56'),(56,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-03-06 01:42:56','2026-03-06 01:42:56'),(57,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-03-06 01:42:56','2026-03-06 01:42:56'),(58,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-03-06 01:42:56','2026-03-06 01:42:56'),(59,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-03-06 01:42:56','2026-03-06 01:42:56'),(60,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-03-06 01:42:56','2026-03-06 01:42:56');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2021_08_02_084121_fix_old_shortcode',1),(18,'2022_04_20_100851_add_index_to_media_table',1),(19,'2022_04_20_101046_add_index_to_menu_table',1),(20,'2022_07_10_034813_move_lang_folder_to_root',1),(21,'2022_08_04_051940_add_missing_column_expires_at',1),(22,'2022_09_01_000001_create_admin_notifications_tables',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(25,'2022_12_02_093615_update_slug_index_columns',1),(26,'2023_01_30_024431_add_alt_to_media_table',1),(27,'2023_02_16_042611_drop_table_password_resets',1),(28,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(29,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(30,'2023_08_21_090810_make_page_content_nullable',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_05_04_030654_improve_social_links',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2024_09_30_024515_create_sessions_table',1),(40,'2024_12_01_000000_add_indexes_to_pages_translations_table',1),(41,'2024_12_01_000000_add_key_prefix_index_to_slugs_table',1),(42,'2024_12_19_000001_create_device_tokens_table',1),(43,'2024_12_19_000002_create_push_notifications_table',1),(44,'2024_12_19_000003_create_push_notification_recipients_table',1),(45,'2024_12_30_000001_create_user_settings_table',1),(46,'2025_07_06_030754_add_phone_to_users_table',1),(47,'2025_07_31_add_performance_indexes_to_slugs_table',1),(48,'2025_11_10_000000_cleanup_duplicate_widgets',1),(49,'2025_11_30_100000_add_sessions_invalidated_at_to_users_table',1),(50,'2020_11_18_150916_ads_create_ads_table',2),(51,'2021_12_02_035301_add_ads_translations_table',2),(52,'2023_04_17_062645_add_open_in_new_tab',2),(53,'2023_11_07_023805_add_tablet_mobile_image',2),(54,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(55,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(56,'2024_04_27_100730_improve_analytics_setting',3),(57,'2015_06_29_025744_create_audit_history',4),(58,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(59,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(60,'2025_11_07_000001_add_actor_type_to_audit_histories_table',4),(61,'2015_06_18_033822_create_blog_table',5),(62,'2021_02_16_092633_remove_default_value_for_author_type',5),(63,'2021_12_03_030600_create_blog_translations',5),(64,'2022_04_19_113923_add_index_to_table_posts',5),(65,'2023_08_29_074620_make_column_author_id_nullable',5),(66,'2024_07_30_091615_fix_order_column_in_categories_table',5),(67,'2024_12_01_000000_add_indexes_to_blog_translations_tables',5),(68,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(69,'2016_06_17_091537_create_contacts_table',6),(70,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(71,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(72,'2024_03_25_000001_update_captcha_settings_for_contact',6),(73,'2024_04_19_063914_create_custom_fields_table',6),(74,'2024_12_01_000000_add_indexes_to_contact_translations_tables',6),(75,'2020_03_05_041139_create_ecommerce_tables',7),(76,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(77,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(78,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(79,'2021_02_18_073505_update_table_ec_reviews',7),(80,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(81,'2021_03_10_025153_change_column_tax_amount',7),(82,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(83,'2021_04_28_074008_ecommerce_create_product_label_table',7),(84,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(85,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(86,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(87,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(88,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(89,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(90,'2021_11_23_071403_correct_languages_for_product_variations',7),(91,'2021_11_28_031808_add_product_tags_translations',7),(92,'2021_12_01_031123_add_featured_image_to_ec_products',7),(93,'2022_01_01_033107_update_table_ec_shipments',7),(94,'2022_02_16_042457_improve_product_attribute_sets',7),(95,'2022_03_22_075758_correct_product_name',7),(96,'2022_04_19_113334_add_index_to_ec_products',7),(97,'2022_04_28_144405_remove_unused_table',7),(98,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(99,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(100,'2022_06_16_095633_add_index_to_some_tables',7),(101,'2022_06_30_035148_create_order_referrals_table',7),(102,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(103,'2022_08_14_032836_create_ec_order_returns_table',7),(104,'2022_08_14_033554_create_ec_order_return_items_table',7),(105,'2022_08_15_040324_add_billing_address',7),(106,'2022_08_30_091114_support_digital_products_table',7),(107,'2022_09_13_095744_create_options_table',7),(108,'2022_09_13_104347_create_option_value_table',7),(109,'2022_10_05_163518_alter_table_ec_order_product',7),(110,'2022_10_12_041517_create_invoices_table',7),(111,'2022_10_12_142226_update_orders_table',7),(112,'2022_10_13_024916_update_table_order_returns',7),(113,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(114,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(115,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(116,'2022_11_19_041643_add_ec_tax_product_table',7),(117,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(118,'2022_12_17_041532_fix_address_in_order_invoice',7),(119,'2022_12_26_070329_create_ec_product_views_table',7),(120,'2023_01_04_033051_fix_product_categories',7),(121,'2023_01_09_050400_add_ec_global_options_translations_table',7),(122,'2023_01_10_093754_add_missing_option_value_id',7),(123,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(124,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(125,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(126,'2023_02_27_095752_remove_duplicate_reviews',7),(127,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(128,'2023_04_21_082427_create_ec_product_categorizables_table',7),(129,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(130,'2023_05_17_025812_fix_invoice_issue',7),(131,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(132,'2023_05_27_144611_fix_exchange_rate_setting',7),(133,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(134,'2023_06_30_042512_create_ec_order_tax_information_table',7),(135,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(136,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(137,'2023_08_15_064505_create_ec_tax_rules_table',7),(138,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(139,'2023_08_22_094114_drop_unique_for_barcode',7),(140,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(141,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(142,'2023_09_19_024955_create_discount_product_categories_table',7),(143,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(144,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(145,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(146,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(147,'2023_12_25_040604_ec_create_review_replies_table',7),(148,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(149,'2024_01_16_070706_fix_translation_tables',7),(150,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(151,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(152,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(153,'2024_03_29_042242_migrate_old_captcha_settings',7),(154,'2024_03_29_093946_create_ec_order_return_histories_table',7),(155,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(156,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(157,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(158,'2024_05_07_073153_improve_table_wishlist',7),(159,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(160,'2024_05_15_021503_fix_invoice_path',7),(161,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(162,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(163,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(164,'2024_07_14_071826_make_customer_email_nullable',7),(165,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(166,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(167,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(168,'2024_08_19_132849_create_specification_tables',7),(169,'2024_09_07_060744_add_author_column_to_specification_tables',7),(170,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(171,'2024_09_25_073928_remove_wrong_product_slugs',7),(172,'2024_12_01_000000_add_indexes_to_ecommerce_translations_tables',7),(173,'2025_01_10_000000_fix_order_invoice_rounding_issues',7),(174,'2025_01_15_050230_migrate_old_theme_options',7),(175,'2025_01_15_optimize_products_export_index',7),(176,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(177,'2025_01_24_044641_migrate_old_country_data',7),(178,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(179,'2025_02_13_021247_add_tax_translations',7),(180,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(181,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(182,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(183,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(184,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(185,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(186,'2025_06_17_091813_increase_note_in_shipments_table',7),(187,'2025_06_24_000001_create_ec_product_license_codes_table',7),(188,'2025_06_24_080427_add_license_code_type_to_products_table',7),(189,'2025_07_06_062402_create_ec_customer_deletion_requests_table',7),(190,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',7),(191,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',7),(192,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',7),(193,'2025_07_15_090809_create_ec_abandoned_carts_table',7),(194,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',7),(195,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',7),(196,'2025_08_01_161205_optimize_product_variation_query_indexes',7),(197,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',7),(198,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',7),(199,'2025_09_08_025516_add_variations_count_to_ec_products_table',7),(200,'2025_09_08_080248_add_slug_column_to_ec_product_categories_table',7),(201,'2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table',7),(202,'2025_09_08_080443_populate_slug_column_for_product_categories',7),(203,'2025_09_08_081216_add_slug_column_to_ec_products_table',7),(204,'2025_09_08_081237_add_slug_column_to_ec_products_translations_table',7),(205,'2025_09_08_081321_populate_slug_column_for_products',7),(206,'2025_09_10_073321_add_performance_indexes_to_ecommerce_tables',7),(207,'2025_09_18_093922_fix_tax_rounding_in_order_products_and_invoices',7),(208,'2025_09_21_030756_add_reviews_cache_to_ec_products_table',7),(209,'2025_09_30_090432_add_performance_indexes_to_ec_product_categories_table',7),(210,'2025_10_10_090331_add_number_format_style_to_ec_currencies_table',7),(211,'2025_10_10_092235_add_space_between_price_and_currency_to_ec_currencies_table',7),(212,'2025_10_11_074318_add_price_includes_tax_to_ec_products_table',7),(213,'2025_10_13_043527_generate_slugs_for_product_collections',7),(214,'2025_10_22_020518_add_verification_code_to_ec_customer_deletion_requests_table',7),(215,'2025_10_22_090000_remove_duplicate_order_addresses',7),(216,'2025_10_28_133220_add_unique_order_id_to_shipments_table',7),(217,'2025_10_28_134738_fix_order_payment_shipment_discount_data_issues',7),(218,'2025_11_05_032148_add_performance_indexes_to_ecommerce_tables',7),(219,'2025_11_10_100000_create_ec_order_metadata_table',7),(220,'2025_11_12_100000_improve_ec_customer_recently_viewed_products_table',7),(221,'2025_11_18_214150_add_covering_indexes_to_product_relation_tables',7),(222,'2025_12_02_045049_add_index_to_product_labels_table',7),(223,'2025_12_12_150000_add_sequence_columns_to_abandoned_carts',7),(224,'2025_12_16_160000_add_is_new_until_to_ec_products_table',7),(225,'2025_12_28_000628_add_images_column_to_ec_order_returns_table',7),(226,'2026_01_05_162601_update_missing_slugs_for_ec_product_categories_table',7),(227,'2026_01_09_024811_add_currency_code_to_ec_products_table',7),(228,'2026_01_11_221755_add_price_columns_to_ec_product_up_sale_relations_table',7),(229,'2026_01_14_035001_add_customer_id_to_ec_cart_table',7),(230,'2026_01_26_084750_add_customer_id_to_ec_review_replies_table',7),(231,'2026_01_31_144854_add_zip_code_range_to_ec_shipping_rule_items_table',7),(232,'2026_02_02_090000_create_ec_order_product_tax_components_table',7),(233,'2026_02_02_090001_create_ec_invoice_item_tax_components_table',7),(234,'2026_02_02_090002_add_tax_class_to_ec_customers_table',7),(235,'2026_02_02_090003_add_tax_class_to_ec_products_table',7),(236,'2026_02_02_090004_add_tax_breakdown_to_ec_order_product_table',7),(237,'2026_02_03_090000_drop_foreign_key_from_ec_order_product_tax_components_table',7),(238,'2026_02_07_090000_remove_duplicate_product_variation_records',7),(239,'2026_02_11_090000_add_price_per_product_to_options_tables',7),(240,'2026_02_11_090000_add_shipping_tax_amount_to_ec_orders_and_invoices_table',7),(241,'2026_02_11_160300_convert_specification_options_to_id_based_format',7),(242,'2026_03_03_150041_add_content_to_ec_product_tags_table',7),(243,'2026_03_04_000001_add_name_to_ec_shipping_rule_items_table',7),(244,'2026_03_04_000002_normalize_zip_codes_in_ec_shipping_rule_items_table',7),(245,'2026_03_06_020547_make_comment_nullable_in_ec_reviews_table',7),(246,'2026_03_06_020805_fix_empty_status_in_ec_invoices_table',7),(247,'2018_07_09_221238_create_faq_table',8),(248,'2021_12_03_082134_create_faq_translations',8),(249,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(250,'2024_12_01_000000_add_indexes_to_faq_translations_tables',8),(251,'2016_10_03_032336_create_languages_table',9),(252,'2023_09_14_022423_add_index_for_language_table',9),(253,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(254,'2021_12_03_075608_create_page_translations',10),(255,'2023_07_06_011444_create_slug_translations_table',10),(256,'2024_12_01_000000_add_indexes_to_slugs_translations_table',10),(257,'2019_11_18_061011_create_country_table',11),(258,'2021_12_03_084118_create_location_translations',11),(259,'2021_12_03_094518_migrate_old_location_data',11),(260,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(261,'2022_01_16_085908_improve_plugin_location',11),(262,'2022_08_04_052122_delete_location_backup_tables',11),(263,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(264,'2023_07_26_041451_add_more_columns_to_location_table',11),(265,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(266,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(267,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(268,'2024_08_17_094600_add_image_into_countries',11),(269,'2025_01_08_093652_add_zip_code_to_cities',11),(270,'2025_07_31_083459_add_indexes_for_location_search_performance',11),(271,'2021_07_06_030002_create_marketplace_table',12),(272,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(273,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(274,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(275,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(276,'2021_12_06_031304_update_table_mp_customer_revenues',12),(277,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(278,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(279,'2022_11_02_071413_add_more_info_for_store',12),(280,'2022_11_02_080444_add_tax_info',12),(281,'2023_02_01_062030_add_store_translations',12),(282,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(283,'2023_02_17_023648_fix_store_prefix',12),(284,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(285,'2024_05_07_082630_create_mp_messages_table',12),(286,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(287,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(288,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(289,'2024_09_17_125408_add_square_logo_to_stores_table',12),(290,'2025_07_31_021805_add_indexes_for_vendor_categories_optimization',12),(291,'2025_08_07_073854_add_verification_fields_to_mp_stores_table',12),(292,'2025_11_05_000001_add_indexes_for_marketplace_performance_optimization',12),(293,'2026_02_02_090000_add_tax_location_to_mp_stores_table',12),(294,'2017_10_24_154832_create_newsletter_table',13),(295,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(296,'2017_05_18_080441_create_payment_tables',14),(297,'2021_03_27_144913_add_customer_type_into_table_payments',14),(298,'2021_05_24_034720_make_column_currency_nullable',14),(299,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(300,'2021_10_19_020859_update_metadata_field',14),(301,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(302,'2022_07_07_153354_update_charge_id_in_table_payments',14),(303,'2024_07_04_083133_create_payment_logs_table',14),(304,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(305,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(306,'2017_07_11_140018_create_simple_slider_table',15),(307,'2026_01_10_000001_add_status_to_simple_slider_items_table',15),(308,'2025_04_08_040931_create_social_logins_table',16),(309,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',17),(310,'2018_07_09_214610_create_testimonial_table',18),(311,'2021_12_03_083642_create_testimonials_translations',18),(312,'2024_12_01_000000_add_indexes_to_testimonials_translations_table',18),(313,'2016_10_07_193005_create_translations_table',19),(314,'2023_12_12_105220_drop_translations_table',19);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mp_customer_revenues_customer_id_index` (`customer_id`),
  KEY `mp_customer_revenues_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mp_customer_withdrawals_customer_id_index` (`customer_id`),
  KEY `mp_customer_withdrawals_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint unsigned DEFAULT NULL,
  `verification_note` text COLLATE utf8mb4_unicode_ci,
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mp_stores_customer_id_index` (`customer_id`),
  KEY `mp_stores_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','torrey.hilpert@example.org','+18062216587','3183 Vickie Tunnel Apt. 336','LI','Iowa','Port Efren',2,'stores/1.png',NULL,NULL,'Aliquid sapiente id et. Optio aut facilis eaque repudiandae. Illo exercitationem optio qui ut. Tempore aperiam eligendi at officiis est. Distinctio quo incidunt voluptas veritatis voluptas molestiae voluptatem. Odit natus accusamus nam ut distinctio et. Eaque voluptatum sint inventore doloribus vero esse error. Dicta qui cumque ut impedit ipsam est in.','Founded in 2002, GoPro has grown into a global brand known for its action cameras and versatile accessories.','published',1,'2025-09-25 01:43:01',NULL,'Established vendor with proven track record',NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Global Office','herminia27@example.com','+13176827487','10406 Joanny Shoal','TK','New Hampshire','East Nilshaven',6,'stores/2.png',NULL,NULL,'Id voluptatem sed porro. Provident et architecto porro illo accusantium voluptatum. Ex sequi et est possimus ipsum. Iusto quisquam dolorem quis hic minima exercitationem. Qui tempora dignissimos dolorem cumque qui hic.','Global Office provides high-quality office supplies and equipment for businesses of all sizes.','published',0,NULL,NULL,NULL,NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','gertrude.kub@example.net','+16148336915','98886 Bauch Points Suite 086','CO','New Hampshire','Sengermouth',8,'stores/3.png',NULL,NULL,'Quo enim consequatur maiores autem dolore vitae sunt. Repudiandae ipsam delectus deserunt quibusdam veritatis explicabo. Itaque et ut nemo non vitae rerum. Temporibus non et et quia. Nam nobis ut quia rerum. Labore ut deleniti quae. Velit ab fuga autem adipisci. Similique necessitatibus autem assumenda quam. Omnis enim non voluptatem. Amet illum ea dolores.','Young Shop specializes in trendy fashion and accessories for the youth market.','published',0,NULL,NULL,NULL,NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Global Store','elsie46@example.com','+19345021961','1129 Noel Garden Apt. 105','PA','Oklahoma','Tyriquefort',3,'stores/4.png',NULL,NULL,'Sequi soluta enim a vel dicta fugiat. Ex consectetur rerum reiciendis vitae mollitia explicabo quibusdam. Culpa quis voluptate ipsam qui distinctio. Blanditiis veritatis sequi accusantium fugiat et. Dolores non aspernatur nisi occaecati mollitia. Suscipit enim quas dolores voluptatem nisi autem. Mollitia dicta quis voluptatum ut est. Perspiciatis commodi sunt rerum rerum adipisci et.','Global Store offers a wide range of products from electronics to home goods at competitive prices.','published',1,'2025-10-26 01:43:01',NULL,'Verified business with valid documentation',NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Robert\'s Store','kip.tremblay@example.org','+18572437667','93209 Verlie Village','BM','Iowa','Port Camronview',2,'stores/5.png',NULL,NULL,'Rerum quas expedita unde minus. Laboriosam quia et omnis repellat sed mollitia repudiandae. Odit qui dolore amet eveniet ea. Veritatis unde qui aut placeat dolorem qui. Fugit delectus quaerat consectetur dolorem libero suscipit. Saepe vel et nostrum est aut. Porro nesciunt qui saepe dignissimos. Soluta ipsum est sed qui.','Robert\'s Store is your destination for premium quality clothing and accessories.','published',1,'2025-12-26 01:43:01',NULL,'Verified business with valid documentation',NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','hartmann.franz@example.net','+19084555182','697 Orland Views','NC','South Carolina','Bruenville',4,'stores/6.png',NULL,NULL,'Et accusamus provident delectus ea molestiae. Facilis enim delectus quidem fuga nihil totam optio sed. Voluptates et molestias quis quibusdam adipisci. Saepe expedita qui quia possimus et. Illo magnam aliquam maxime et id et. Autem fugiat aut voluptas aut vel accusantium aut. Repellat exercitationem repudiandae enim suscipit. Est laborum laborum aut facilis consequatur.','Stouffer brings you delicious, ready-to-eat meals that are perfect for busy lifestyles.','published',1,'2026-01-23 01:43:01',NULL,'Successfully completed verification process',NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'StarKist','yazmin09@example.net','+17754775635','82514 Camden Loaf Apt. 450','ET','Louisiana','South Jesusville',9,'stores/7.png',NULL,NULL,'Possimus consequatur officia quia facere ullam vel odit repellat. Aspernatur quo odio voluptas rerum accusamus. Et quos cum incidunt atque sit dolor et. Qui repellendus pariatur et deserunt nihil. Vel iusto beatae est debitis temporibus ut. Nemo cum nihil occaecati pariatur dolorem. Occaecati dolores reprehenderit neque.','StarKist is committed to providing sustainable seafood products of the highest quality.','published',0,NULL,NULL,NULL,NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','bradly59@example.com','+16506815317','9039 Hoeger Cape Apt. 277','PE','Arkansas','Rodriguezhaven',3,'stores/8.png',NULL,NULL,'Aut rerum expedita sunt autem in rerum. Sequi aut vero sit vel rem veritatis ullam. Vel optio deleniti tempore consequatur in animi. Possimus veniam reprehenderit ratione odit. Reiciendis laudantium perspiciatis laudantium ut voluptate est dolorem. Excepturi natus est quaerat molestiae veritatis ducimus qui. Natus perferendis ab hic qui laboriosam.','Old El Paso brings the flavors of Mexico to your table with authentic ingredients and recipes.','published',1,'2026-01-05 01:43:01',NULL,'Authentic products and reliable service confirmed',NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Tyson','xzemlak@example.com','+15418773379','5337 Stokes Vista','BL','South Carolina','North Cesar',5,'stores/9.png',NULL,NULL,'Voluptas consequuntur sunt nisi. Rerum id nesciunt sunt qui. Dolore quia sit quis laboriosam et. Ut autem fuga natus id. Cum occaecati libero ex omnis perferendis odit fugit. Repellendus deleniti quas voluptatem beatae ab itaque laboriosam eos. Magni minima est est. Maxime doloribus eos tenetur.','Tyson offers a variety of protein products to help you create delicious meals for your family.','published',0,NULL,NULL,NULL,NULL,'2026-03-06 01:43:03','2026-03-06 01:43:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mp_vendor_info_customer_id_index` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$h6x5RNsR3U5fEe/HyYk7z.QJpNLHH868tYUDGVsg5BZ6D/Q8nE4FO','{\"name\":\"Mr. Sylvester Lesch\",\"number\":\"+16805898203\",\"full_name\":\"Lenora Senger\",\"description\":\"Osbaldo Kuhlman\"}','2026-03-06 01:43:01','2026-03-06 01:43:01','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$M.BmeNz3FiitLdxxe6fUXedOcLGJrXk3NbHDiFDJ/81pRqLbzu3WK','{\"name\":\"Prof. Harmon Rogahn\",\"number\":\"+18504581041\",\"full_name\":\"Weldon Kemmer\",\"description\":\"Sydni Mayer Sr.\"}','2026-03-06 01:43:01','2026-03-06 01:43:01','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$jVXED/EvoE..ZOX4Us8wQ.f2YRXjkTtjt5uZ73Xtlz0RgsBHQH7F2','{\"name\":\"Ms. Tessie Lehner\",\"number\":\"+19032274049\",\"full_name\":\"Dr. Javier Harris\",\"description\":\"Lempi Fadel\"}','2026-03-06 01:43:02','2026-03-06 01:43:02','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$fViT79AuZWh0V2SqzqClEOQxueWkvjhqzTxrmXhhx74E4VyeARatu','{\"name\":\"Kristofer Sporer\",\"number\":\"+15395909472\",\"full_name\":\"Hilma Abernathy\",\"description\":\"Dr. Maxine Hayes\"}','2026-03-06 01:43:02','2026-03-06 01:43:02','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$psQowmRA2d6W3cM6Kt1o7e1e1N8VDJ8OMisrMuTF0E9QHpKZzrykW','{\"name\":\"Althea Hills\",\"number\":\"+17868121786\",\"full_name\":\"Francisca Hilpert\",\"description\":\"Jaren Marvin\"}','2026-03-06 01:43:02','2026-03-06 01:43:02','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$6eO4qikIyukr9zDxtCeze.U.9sbsIlRRR8mSRNWdkcvpEqc3iRY9O','{\"name\":\"Lori Lynch\",\"number\":\"+12676044652\",\"full_name\":\"Mrs. Loren Wolf I\",\"description\":\"Delphia Effertz\"}','2026-03-06 01:43:02','2026-03-06 01:43:02','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$IFXTeJUjdRRy0ZsldPmaHOT3dBQ.MWXJXKeIUmUsd2/sNLtdSNfg2','{\"name\":\"Ian Kozey DVM\",\"number\":\"+15396756849\",\"full_name\":\"Ms. Nayeli Schamberger\",\"description\":\"Louisa Nader\"}','2026-03-06 01:43:02','2026-03-06 01:43:02','bank_transfer',NULL),(8,9,0.00,0.00,0.00,'$2y$12$XjC69Co83Mo78g3x2j8.Q.oSjraZd7J30.AYSNwfmMk8saYTRNbaW','{\"name\":\"Abdul Harris\",\"number\":\"+19309071748\",\"full_name\":\"Violet Hammes\",\"description\":\"Mrs. Nelda Buckridge III\"}','2026-03-06 01:43:03','2026-03-06 01:43:03','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"Featured products\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div>[testimonials title=\"What our Clients say\" subtitle=\"Customers Review\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]<div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(2,'About us','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(3,'Terms Of Use','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(4,'Terms &amp; Conditions','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(5,'Refund Policy','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(10,'Affiliate','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(11,'Career','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,'default',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2027-03-06 08:42:56\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2026-03-06 01:42:56','2026-03-06 01:42:56');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('ar',1,'الصفحة الرئيسية',NULL,'<div>[simple-slider key=\"home-slider-ar\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"التوصيل المجاني\" subtitle1=\"لجميع الطلبات التي تزيد عن 99 دولارًا\" icon2=\"icon-sync\" title2=\"الإرجاع خلال 90 يومًا\" subtitle2=\"إذا كانت البضائع بها مشاكل\" icon3=\"icon-credit-card\" title3=\"الدفع الآمن\" subtitle3=\"دفع آمن 100٪\" icon4=\"icon-bubbles\" title4=\"الدعم على مدار الساعة\" subtitle4=\"دعم مخصص\" icon5=\"icon-gift\" title5=\"خدمة الهدايا\" subtitle5=\"دعم خدمة الهدايا\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"صفقة اليوم\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"الفئات الأعلى\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"المنتجات المميزة\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"المنتجات الحصرية\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div>[testimonials title=\"ماذا يقول عملاؤنا\" subtitle=\"تقييم العملاء\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]<div>[download-app title=\"قم بتنزيل تطبيق Martfury الآن!\" subtitle=\"تسوق بسرعة وسهولة أكثر مع تطبيقنا. احصل على رابط لتنزيل التطبيق على هاتفك.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"انضم إلى نشرتنا الإخبارية الآن\" subtitle=\"اشترك للحصول على معلومات حول المنتجات والكوبونات\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>'),('ar',2,'من نحن',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('ar',3,'شروط الاستخدام',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('ar',4,'الشروط والأحكام',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('ar',5,'سياسة الاسترجاع',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('ar',6,'المدونة',NULL,'<p>---</p>'),('ar',7,'الأسئلة الشائعة',NULL,'<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>'),('ar',8,'اتصل بنا',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('ar',9,'سياسة ملفات تعريف الارتباط',NULL,'<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('ar',10,'الشركاء',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('ar',11,'الوظائف',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('ar',12,'قريباً',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2027-03-06 08:42:56\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>'),('fr',1,'Accueil',NULL,'<div>[simple-slider key=\"home-slider-fr\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Livraison gratuite\" subtitle1=\"Pour toutes les commandes supérieures à 99 $\" icon2=\"icon-sync\" title2=\"Retour sous 90 jours\" subtitle2=\"Si les produits ont des problèmes\" icon3=\"icon-credit-card\" title3=\"Paiement sécurisé\" subtitle3=\"Paiement 100% sécurisé\" icon4=\"icon-bubbles\" title4=\"Support 24/7\" subtitle4=\"Support dédié\" icon5=\"icon-gift\" title5=\"Service cadeau\" subtitle5=\"Support service cadeau\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"Offre du jour\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"Catégories principales\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"Produits en vedette\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"Produits exclusifs\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div>[testimonials title=\"Ce que disent nos clients\" subtitle=\"Avis des clients\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]<div>[download-app title=\"Téléchargez l\'application Martfury maintenant !\" subtitle=\"Achetez rapidement et facilement avec notre application. Obtenez un lien pour télécharger l\'application sur votre téléphone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"Rejoignez notre newsletter maintenant\" subtitle=\"Abonnez-vous pour recevoir des informations sur les produits et les coupons\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>'),('fr',2,'À propos',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('fr',3,'Conditions d\'utilisation',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('fr',4,'Termes et conditions',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('fr',5,'Politique de remboursement',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('fr',6,'Blog',NULL,'<p>---</p>'),('fr',7,'FAQ',NULL,'<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>'),('fr',8,'Contact',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('fr',9,'Politique des cookies',NULL,'<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('fr',10,'Affilié',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('fr',11,'Carrière',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('fr',12,'Bientôt disponible',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2027-03-06 08:42:56\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>'),('id',1,'Beranda',NULL,'<div>[simple-slider key=\"home-slider-id\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Pengiriman gratis\" subtitle1=\"Untuk semua pesanan di atas $99\" icon2=\"icon-sync\" title2=\"Pengembalian 90 hari\" subtitle2=\"Jika barang bermasalah\" icon3=\"icon-credit-card\" title3=\"Pembayaran aman\" subtitle3=\"Pembayaran 100% aman\" icon4=\"icon-bubbles\" title4=\"Dukungan 24/7\" subtitle4=\"Dukungan khusus\" icon5=\"icon-gift\" title5=\"Layanan hadiah\" subtitle5=\"Dukungan layanan hadiah\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"Penawaran hari ini\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"Kategori teratas\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"Produk unggulan\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"Produk eksklusif\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div>[testimonials title=\"Apa kata klien kami\" subtitle=\"Ulasan pelanggan\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]<div>[download-app title=\"Unduh aplikasi Martfury sekarang!\" subtitle=\"Berbelanja dengan cepat dan mudah dengan aplikasi kami. Dapatkan tautan untuk mengunduh aplikasi di ponsel Anda.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"Bergabunglah dengan buletin kami sekarang\" subtitle=\"Berlangganan untuk mendapatkan informasi tentang produk dan kupon\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>'),('id',2,'Tentang kami',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('id',3,'Syarat penggunaan',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('id',4,'Syarat dan ketentuan',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('id',5,'Kebijakan pengembalian dana',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('id',6,'Blog',NULL,'<p>---</p>'),('id',7,'FAQ',NULL,'<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>'),('id',8,'Kontak',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('id',9,'Kebijakan cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('id',10,'Afiliasi',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('id',11,'Karir',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('id',12,'Segera hadir',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2027-03-06 08:42:56\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>'),('tr',1,'Ana Sayfa',NULL,'<div>[simple-slider key=\"home-slider-tr\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Ücretsiz teslimat\" subtitle1=\"99 $\'ın üzerindeki tüm siparişler için\" icon2=\"icon-sync\" title2=\"90 gün iade\" subtitle2=\"Ürünlerde sorun varsa\" icon3=\"icon-credit-card\" title3=\"Güvenli ödeme\" subtitle3=\"%100 güvenli ödeme\" icon4=\"icon-bubbles\" title4=\"7/24 destek\" subtitle4=\"Özel destek\" icon5=\"icon-gift\" title5=\"Hediye hizmeti\" subtitle5=\"Hediye hizmeti desteği\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"Günün fırsatı\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"En iyi kategoriler\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"Öne çıkan ürünler\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"Özel ürünler\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div>[testimonials title=\"Müşterilerimiz ne diyor\" subtitle=\"Müşteri yorumları\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]<div>[download-app title=\"Martfury uygulamasını şimdi indirin!\" subtitle=\"Uygulamamızla daha hızlı ve kolay alışveriş yapın. Uygulamayı telefonunuza indirmek için bir bağlantı alın.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"Bültenimize şimdi katılın\" subtitle=\"Ürünler ve kuponlar hakkında bilgi almak için abone olun\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>'),('tr',2,'Hakkımızda',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('tr',3,'Kullanım Şartları',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('tr',4,'Şartlar ve Koşullar',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('tr',5,'İade Politikası',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('tr',6,'Blog',NULL,'<p>---</p>'),('tr',7,'SSS',NULL,'<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>'),('tr',8,'İletişim',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('tr',9,'Çerez Politikası',NULL,'<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('tr',10,'İş Ortakları',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('tr',11,'Kariyer',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('tr',12,'Yakında',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2027-03-06 08:42:56\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>'),('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-vi\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Giao hàng miễn phí\" subtitle1=\"Cho tất cả đơn hàng trên 99 đô la\" icon2=\"icon-sync\" title2=\"Đổi trả trong 90 ngày\" subtitle2=\"Nếu hàng hóa có vấn đề\" icon3=\"icon-credit-card\" title3=\"Thanh toán an toàn\" subtitle3=\"Thanh toán an toàn 100%\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Hỗ trợ tận tâm\" icon5=\"icon-gift\" title5=\"Dịch vụ quà tặng\" subtitle5=\"Hỗ trợ dịch vụ quà tặng\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"Ưu đãi trong ngày\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục hàng đầu\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div>[testimonials title=\"Khách hàng nói gì về chúng tôi\" subtitle=\"Đánh giá của khách hàng\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]<div>[download-app title=\"Tải ứng dụng Martfury ngay bây giờ!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin của chúng tôi ngay bây giờ\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('vi',3,'Điều khoản sử dụng',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('vi',4,'Điều khoản và điều kiện',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('vi',5,'Chính sách hoàn tiền',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Đối tác',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('vi',11,'Tuyển dụng',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2027-03-06 08:42:56\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(2,2),(3,2),(1,3),(4,3),(2,4),(4,4),(1,5),(4,5),(1,6),(3,6),(1,7),(3,7),(2,8),(4,8),(2,9),(3,9),(1,10),(3,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1389,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1841,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2173,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',902,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',968,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',495,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',924,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1240,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',411,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',389,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2385,NULL,'2026-03-06 01:42:55','2026-03-06 01:42:55');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`),
  KEY `idx_posts_trans_posts_id` (`posts_id`),
  KEY `idx_posts_trans_post_lang` (`posts_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.phone-number\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"pages.export\":true,\"pages.import\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"blog.reports\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"ecommerce.customer-carts.index\":true,\"ecommerce.customer-carts.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"product-license-codes.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"ecommerce.product-specifications.import\":true,\"ecommerce.product-specifications.export\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"page-translations.export\":true,\"page-translations.import\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2026-03-06 01:42:54','2026-03-06 01:42:54');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','edf21183d74b6b168cec1f290ddd8d90',NULL,'2026-03-06 01:43:05'),(2,'api_enabled','0',NULL,'2026-03-06 01:43:05'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2026-03-06 01:43:05'),(4,'analytics_dashboard_widgets','0','2026-03-06 01:42:19','2026-03-06 01:42:19'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2026-03-06 01:42:19','2026-03-06 01:42:19'),(6,'api_layer_api_key','',NULL,'2026-03-06 01:43:05'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2026-03-06 01:42:24','2026-03-06 01:42:24'),(10,'payment_cod_fee_type','fixed',NULL,'2026-03-06 01:43:05'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2026-03-06 01:43:05'),(12,'theme','martfury',NULL,'2026-03-06 01:43:05'),(13,'show_admin_bar','1',NULL,'2026-03-06 01:43:05'),(14,'language_hide_default','1',NULL,'2026-03-06 01:43:05'),(15,'language_switcher_display','dropdown',NULL,'2026-03-06 01:43:05'),(16,'language_display','all',NULL,'2026-03-06 01:43:05'),(17,'language_hide_languages','[]',NULL,'2026-03-06 01:43:05'),(18,'simple_slider_using_assets','0',NULL,NULL),(19,'admin_favicon','general/favicon.png',NULL,'2026-03-06 01:43:05'),(20,'admin_logo','general/logo-light.png',NULL,'2026-03-06 01:43:05'),(21,'payment_cod_status','1',NULL,'2026-03-06 01:43:05'),(22,'payment_bank_transfer_status','1',NULL,'2026-03-06 01:43:05'),(23,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2026-03-06 01:43:05'),(24,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2026-03-06 01:43:05'),(25,'payment_stripe_payment_type','stripe_checkout',NULL,'2026-03-06 01:43:05'),(26,'plugins_ecommerce_customer_new_order_status','0',NULL,'2026-03-06 01:43:05'),(27,'plugins_ecommerce_admin_new_order_status','0',NULL,'2026-03-06 01:43:05'),(28,'ecommerce_is_enabled_support_digital_products','1',NULL,'2026-03-06 01:43:05'),(29,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2026-03-06 01:43:05'),(30,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2026-03-06 01:43:05'),(31,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2026-03-06 01:43:05'),(32,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2026-03-06 01:43:05'),(33,'ecommerce_store_order_prefix','SF',NULL,'2026-03-06 01:43:05'),(34,'ecommerce_enable_product_specification','1',NULL,'2026-03-06 01:43:05'),(35,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2026-03-06 01:43:05'),(36,'payment_cod_logo','payments/cod.png',NULL,'2026-03-06 01:43:05'),(37,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2026-03-06 01:43:05'),(38,'payment_stripe_logo','payments/stripe.webp',NULL,'2026-03-06 01:43:05'),(39,'payment_paypal_logo','payments/paypal.png',NULL,'2026-03-06 01:43:05'),(40,'payment_mollie_logo','payments/mollie.png',NULL,'2026-03-06 01:43:05'),(41,'payment_paystack_logo','payments/paystack.png',NULL,'2026-03-06 01:43:05'),(42,'payment_razorpay_logo','payments/razorpay.png',NULL,'2026-03-06 01:43:05'),(43,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2026-03-06 01:43:05'),(44,'permalink-botble-blog-models-post','blog',NULL,'2026-03-06 01:43:05'),(45,'permalink-botble-blog-models-category','blog',NULL,'2026-03-06 01:43:05'),(46,'ecommerce_store_name','Martfury',NULL,NULL),(47,'ecommerce_store_phone','1800979769',NULL,NULL),(48,'ecommerce_store_address','502 New Street',NULL,NULL),(49,'ecommerce_store_state','Brighton VIC',NULL,NULL),(50,'ecommerce_store_city','Brighton VIC',NULL,NULL),(51,'ecommerce_store_country','AU',NULL,NULL),(52,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,'2026-03-06 01:43:05'),(53,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,'2026-03-06 01:43:05'),(54,'theme-martfury-copyright','© %Y MartFury. All Rights Reserved.',NULL,'2026-03-06 01:43:05'),(55,'theme-martfury-favicon','general/favicon.png',NULL,'2026-03-06 01:43:05'),(56,'theme-martfury-logo','general/logo.png',NULL,'2026-03-06 01:43:05'),(57,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,'2026-03-06 01:43:05'),(58,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,'2026-03-06 01:43:05'),(59,'theme-martfury-hotline','1800 97 97 69',NULL,'2026-03-06 01:43:05'),(60,'theme-martfury-email','contact@martfury.co',NULL,'2026-03-06 01:43:05'),(61,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,'2026-03-06 01:43:05'),(62,'theme-martfury-homepage_id','1',NULL,'2026-03-06 01:43:05'),(63,'theme-martfury-blog_page_id','6',NULL,'2026-03-06 01:43:05'),(64,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2026-03-06 01:43:05'),(65,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,'2026-03-06 01:43:05'),(66,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,'2026-03-06 01:43:05'),(67,'theme-martfury-number_of_products_per_page','42',NULL,'2026-03-06 01:43:05'),(68,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,'2026-03-06 01:43:05'),(69,'theme-martfury-product_feature_1_icon','icon-network',NULL,'2026-03-06 01:43:05'),(70,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,'2026-03-06 01:43:05'),(71,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,'2026-03-06 01:43:05'),(72,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,'2026-03-06 01:43:05'),(73,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,'2026-03-06 01:43:05'),(74,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,'2026-03-06 01:43:05'),(75,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,'2026-03-06 01:43:05'),(76,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,'2026-03-06 01:43:05'),(77,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,'2026-03-06 01:43:05'),(78,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,'2026-03-06 01:43:05'),(79,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,'2026-03-06 01:43:05'),(80,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,'2026-03-06 01:43:05'),(81,'theme-martfury-contact_info_box_2_details','',NULL,'2026-03-06 01:43:05'),(82,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,'2026-03-06 01:43:05'),(83,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,'2026-03-06 01:43:05'),(84,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,'2026-03-06 01:43:05'),(85,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,'2026-03-06 01:43:05'),(86,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,'2026-03-06 01:43:05'),(87,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,'2026-03-06 01:43:05'),(88,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,'2026-03-06 01:43:05'),(89,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,'2026-03-06 01:43:05'),(90,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,'2026-03-06 01:43:05'),(91,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,'2026-03-06 01:43:05'),(92,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,'2026-03-06 01:43:05'),(93,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,'2026-03-06 01:43:05'),(94,'theme-martfury-number_of_cross_sale_product','7',NULL,'2026-03-06 01:43:05'),(95,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,'2026-03-06 01:43:05'),(96,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,'2026-03-06 01:43:05'),(97,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,'2026-03-06 01:43:05'),(98,'theme-martfury-primary_font','Work Sans',NULL,'2026-03-06 01:43:05'),(99,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,'2026-03-06 01:43:05'),(100,'theme-martfury-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,'2026-03-06 01:43:05'),(101,'theme-martfury-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2026-03-06 01:43:05'),(102,'theme-martfury-lazy_load_images','1',NULL,'2026-03-06 01:43:05'),(103,'theme-martfury-lazy_load_placeholder_image','general/placeholder.png',NULL,'2026-03-06 01:43:05'),(104,'theme-martfury-ar-site_title','مارت فيوري - التسوق عبر الإنترنت',NULL,NULL),(105,'theme-martfury-ar-seo_description','تسوق عبر الإنترنت للإلكترونيات والأزياء والأجهزة المنزلية والمزيد. أفضل الأسعار وشحن سريع وخدمة عملاء ممتازة.',NULL,NULL),(106,'theme-martfury-ar-copyright','© %Y مارت فيوري. جميع الحقوق محفوظة.',NULL,NULL),(107,'theme-martfury-ar-welcome_message','مرحباً بك في مارت فيوري!',NULL,NULL),(108,'theme-martfury-ar-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(109,'theme-martfury-ar-cookie_consent_message','تجربتك على هذا الموقع ستتحسن باستخدام ملفات تعريف الارتباط.',NULL,NULL),(110,'theme-martfury-ar-cookie_consent_learn_more_text','سياسة ملفات تعريف الارتباط',NULL,NULL),(111,'theme-martfury-ar-product_feature_1_title','شحن في جميع أنحاء العالم',NULL,NULL),(112,'theme-martfury-ar-product_feature_2_title','إرجاع مجاني لمدة 7 أيام',NULL,NULL),(113,'theme-martfury-ar-product_feature_3_title','يقدم المورد الفواتير',NULL,NULL),(114,'theme-martfury-ar-product_feature_4_title','الدفع عبر الإنترنت أو عند الاستلام',NULL,NULL),(115,'theme-martfury-ar-contact_info_box_1_title','اتصل مباشرة',NULL,NULL),(116,'theme-martfury-ar-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(117,'theme-martfury-ar-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(118,'theme-martfury-ar-contact_info_box_2_title','المقر الرئيسي',NULL,NULL),(119,'theme-martfury-ar-contact_info_box_2_subtitle','17 Queen St, Melbourne VIC 3000, Australia',NULL,NULL),(120,'theme-martfury-ar-contact_info_box_3_title','اعمل معنا',NULL,NULL),(121,'theme-martfury-ar-contact_info_box_3_subtitle','أرسل سيرتك الذاتية إلى بريدنا الإلكتروني',NULL,NULL),(122,'theme-martfury-ar-contact_info_box_4_title','خدمة العملاء',NULL,NULL),(123,'theme-martfury-ar-contact_info_box_5_title','العلاقات الإعلامية',NULL,NULL),(124,'theme-martfury-ar-contact_info_box_6_title','دعم البائعين',NULL,NULL),(125,'theme-martfury-vi-site_title','MartFury - Mua sắm trực tuyến',NULL,NULL),(126,'theme-martfury-vi-seo_description','Mua sắm trực tuyến điện tử, thời trang, đồ gia dụng và nhiều hơn nữa. Giá tốt nhất, vận chuyển nhanh và dịch vụ khách hàng xuất sắc.',NULL,NULL),(127,'theme-martfury-vi-copyright','© %Y MartFury. Bảo lưu mọi quyền.',NULL,NULL),(128,'theme-martfury-vi-welcome_message','Chào mừng đến với MartFury!',NULL,NULL),(129,'theme-martfury-vi-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(130,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie.',NULL,NULL),(131,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(132,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(133,'theme-martfury-vi-product_feature_2_title','Hoàn trả miễn phí trong 7 ngày',NULL,NULL),(134,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp cung cấp hóa đơn',NULL,NULL),(135,'theme-martfury-vi-product_feature_4_title','Thanh toán trực tuyến hoặc khi nhận hàng',NULL,NULL),(136,'theme-martfury-vi-contact_info_box_1_title','Liên hệ trực tiếp',NULL,NULL),(137,'theme-martfury-vi-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(138,'theme-martfury-vi-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(139,'theme-martfury-vi-contact_info_box_2_title','Trụ sở chính',NULL,NULL),(140,'theme-martfury-vi-contact_info_box_2_subtitle','17 Queen St, Melbourne VIC 3000, Australia',NULL,NULL),(141,'theme-martfury-vi-contact_info_box_3_title','Làm việc với chúng tôi',NULL,NULL),(142,'theme-martfury-vi-contact_info_box_3_subtitle','Gửi CV của bạn đến email của chúng tôi',NULL,NULL),(143,'theme-martfury-vi-contact_info_box_4_title','Dịch vụ khách hàng',NULL,NULL),(144,'theme-martfury-vi-contact_info_box_5_title','Quan hệ truyền thông',NULL,NULL),(145,'theme-martfury-vi-contact_info_box_6_title','Hỗ trợ nhà cung cấp',NULL,NULL),(146,'theme-martfury-fr-site_title','MartFury - Achats en ligne',NULL,NULL),(147,'theme-martfury-fr-seo_description','Achetez en ligne de l\'électronique, de la mode, des articles ménagers et bien plus encore. Les meilleurs prix, livraison rapide et excellent service client.',NULL,NULL),(148,'theme-martfury-fr-copyright','© %Y MartFury. Tous droits réservés.',NULL,NULL),(149,'theme-martfury-fr-welcome_message','Bienvenue chez MartFury !',NULL,NULL),(150,'theme-martfury-fr-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(151,'theme-martfury-fr-cookie_consent_message','Votre expérience sur ce site sera améliorée en autorisant les cookies.',NULL,NULL),(152,'theme-martfury-fr-cookie_consent_learn_more_text','Politique des cookies',NULL,NULL),(153,'theme-martfury-fr-product_feature_1_title','Livraison dans le monde entier',NULL,NULL),(154,'theme-martfury-fr-product_feature_2_title','Retour gratuit sous 7 jours',NULL,NULL),(155,'theme-martfury-fr-product_feature_3_title','Le fournisseur fournit les factures',NULL,NULL),(156,'theme-martfury-fr-product_feature_4_title','Payer en ligne ou à la réception',NULL,NULL),(157,'theme-martfury-fr-contact_info_box_1_title','Contactez directement',NULL,NULL),(158,'theme-martfury-fr-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(159,'theme-martfury-fr-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(160,'theme-martfury-fr-contact_info_box_2_title','Siège social',NULL,NULL),(161,'theme-martfury-fr-contact_info_box_2_subtitle','17 Queen St, Melbourne VIC 3000, Australia',NULL,NULL),(162,'theme-martfury-fr-contact_info_box_3_title','Travaillez avec nous',NULL,NULL),(163,'theme-martfury-fr-contact_info_box_3_subtitle','Envoyez votre CV à notre adresse e-mail',NULL,NULL),(164,'theme-martfury-fr-contact_info_box_4_title','Service client',NULL,NULL),(165,'theme-martfury-fr-contact_info_box_5_title','Relations avec les médias',NULL,NULL),(166,'theme-martfury-fr-contact_info_box_6_title','Support fournisseur',NULL,NULL),(167,'theme-martfury-id-site_title','MartFury - Belanja online',NULL,NULL),(168,'theme-martfury-id-seo_description','Belanja online untuk elektronik, fashion, peralatan rumah tangga, dan banyak lagi. Harga terbaik, pengiriman cepat, dan layanan pelanggan yang sangat baik.',NULL,NULL),(169,'theme-martfury-id-copyright','© %Y MartFury. Semua hak dilindungi.',NULL,NULL),(170,'theme-martfury-id-welcome_message','Selamat datang di MartFury!',NULL,NULL),(171,'theme-martfury-id-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(172,'theme-martfury-id-cookie_consent_message','Pengalaman Anda di situs ini akan ditingkatkan dengan mengizinkan cookie.',NULL,NULL),(173,'theme-martfury-id-cookie_consent_learn_more_text','Kebijakan cookie',NULL,NULL),(174,'theme-martfury-id-product_feature_1_title','Pengiriman ke seluruh dunia',NULL,NULL),(175,'theme-martfury-id-product_feature_2_title','Pengembalian gratis 7 hari',NULL,NULL),(176,'theme-martfury-id-product_feature_3_title','Pemasok memberikan tagihan',NULL,NULL),(177,'theme-martfury-id-product_feature_4_title','Bayar online atau saat menerima',NULL,NULL),(178,'theme-martfury-id-contact_info_box_1_title','Hubungi langsung',NULL,NULL),(179,'theme-martfury-id-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(180,'theme-martfury-id-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(181,'theme-martfury-id-contact_info_box_2_title','Kantor pusat',NULL,NULL),(182,'theme-martfury-id-contact_info_box_2_subtitle','17 Queen St, Melbourne VIC 3000, Australia',NULL,NULL),(183,'theme-martfury-id-contact_info_box_3_title','Bekerja dengan kami',NULL,NULL),(184,'theme-martfury-id-contact_info_box_3_subtitle','Kirim CV Anda ke email kami',NULL,NULL),(185,'theme-martfury-id-contact_info_box_4_title','Layanan pelanggan',NULL,NULL),(186,'theme-martfury-id-contact_info_box_5_title','Hubungan media',NULL,NULL),(187,'theme-martfury-id-contact_info_box_6_title','Dukungan vendor',NULL,NULL),(188,'theme-martfury-tr-site_title','MartFury - Çevrimiçi Alışveriş',NULL,NULL),(189,'theme-martfury-tr-seo_description','Elektronik, moda, ev eşyaları ve daha fazlası için çevrimiçi alışveriş yapın. En iyi fiyatlar, hızlı kargo ve mükemmel müşteri hizmeti.',NULL,NULL),(190,'theme-martfury-tr-copyright','© %Y MartFury. Tüm hakları saklıdır.',NULL,NULL),(191,'theme-martfury-tr-welcome_message','MartFury\'ye hoş geldiniz!',NULL,NULL),(192,'theme-martfury-tr-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(193,'theme-martfury-tr-cookie_consent_message','Bu sitedeki deneyiminiz çerezlere izin vererek geliştirilecektir.',NULL,NULL),(194,'theme-martfury-tr-cookie_consent_learn_more_text','Çerez Politikası',NULL,NULL),(195,'theme-martfury-tr-product_feature_1_title','Dünya çapında kargo',NULL,NULL),(196,'theme-martfury-tr-product_feature_2_title','7 gün ücretsiz iade',NULL,NULL),(197,'theme-martfury-tr-product_feature_3_title','Tedarikçi fatura verir',NULL,NULL),(198,'theme-martfury-tr-product_feature_4_title','Çevrimiçi veya teslimatta ödeyin',NULL,NULL),(199,'theme-martfury-tr-contact_info_box_1_title','Doğrudan iletişim',NULL,NULL),(200,'theme-martfury-tr-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(201,'theme-martfury-tr-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(202,'theme-martfury-tr-contact_info_box_2_title','Genel merkez',NULL,NULL),(203,'theme-martfury-tr-contact_info_box_2_subtitle','17 Queen St, Melbourne VIC 3000, Australia',NULL,NULL),(204,'theme-martfury-tr-contact_info_box_3_title','Bizimle çalışın',NULL,NULL),(205,'theme-martfury-tr-contact_info_box_3_subtitle','CV\'nizi e-posta adresimize gönderin',NULL,NULL),(206,'theme-martfury-tr-contact_info_box_4_title','Müşteri hizmetleri',NULL,NULL),(207,'theme-martfury-tr-contact_info_box_5_title','Medya ilişkileri',NULL,NULL),(208,'theme-martfury-tr-contact_info_box_6_title','Satıcı desteği',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(4,2,'سلايدر 1','sliders/1-lg.jpg','/products',NULL,1,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(5,2,'سلايدر 2','sliders/2-lg.jpg','/products',NULL,2,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(6,2,'سلايدر 3','sliders/3-lg.jpg','/products',NULL,3,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(7,3,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(8,3,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(9,3,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(10,4,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(11,4,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(12,4,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(13,5,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(14,5,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(15,5,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(16,6,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(17,6,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(18,6,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'published','2026-03-06 01:43:05','2026-03-06 01:43:05');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2026-03-06 01:42:56','2026-03-06 01:42:56'),(2,'سلايدر الرئيسية','home-slider-ar',NULL,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(3,'Slider trang chủ','home-slider-vi',NULL,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(4,'Slider accueil','home-slider-fr',NULL,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(5,'Slider beranda','home-slider-id',NULL,'published','2026-03-06 01:43:05','2026-03-06 01:43:05'),(6,'Ana sayfa slider','home-slider-tr',NULL,'published','2026-03-06 01:43:05','2026-03-06 01:43:05');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_key_prefix` (`key`,`prefix`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2026-03-06 01:42:25','2026-03-06 01:42:25'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2026-03-06 01:42:25','2026-03-06 01:42:25'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2026-03-06 01:42:25','2026-03-06 01:42:25'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2026-03-06 01:42:25','2026-03-06 01:42:25'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2026-03-06 01:42:25','2026-03-06 01:42:25'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2026-03-06 01:42:25','2026-03-06 01:42:25'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2026-03-06 01:42:25','2026-03-06 01:42:25'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-03-06 01:42:26','2026-03-06 01:42:26'),(45,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(46,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(47,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(48,'camera-samsung-ss-24-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:43:05'),(49,'macbook-pro-2015',5,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(50,'apple-watch-serial-7',6,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(51,'macbook-pro-13-inch',7,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(52,'apple-keyboard-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:43:05'),(53,'macsafe-80w',9,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(54,'hand-playstation',10,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(55,'apple-airpods-serial-3',11,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(56,'cool-smart-watches-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:43:05'),(57,'black-smart-watches',13,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(58,'leather-watch-in-black',14,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(59,'macbook-pro-2015-13-inch',15,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(60,'historic-alarm-clock-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:43:05'),(61,'black-glasses',17,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(62,'phillips-mouse',18,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(63,'gaming-keyboard',19,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(64,'wireless-keyboard-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:43:05'),(65,'black-smart-watches',21,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(66,'smart-home-speaker',22,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:44','2026-03-06 01:42:44'),(67,'headphone-ultra-bass',23,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(68,'boxed-bluetooth-headphone-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:43:05'),(69,'camera-samsung-ss-24',25,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(70,'leather-watch-in-black',26,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(71,'apple-iphone-13-plus',27,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(72,'macbook-pro-2015-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:43:05'),(73,'apple-watch-serial-7',29,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(74,'macbook-pro-13-inch',30,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(75,'apple-keyboard',31,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(76,'macsafe-80w-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:43:05'),(77,'hand-playstation',33,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(78,'apple-airpods-serial-3',34,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(79,'cool-smart-watches',35,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(80,'black-smart-watches-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:43:05'),(81,'leather-watch-in-black',37,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(82,'macbook-pro-2015-13-inch',38,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(83,'sony-wh-1000xm4-wireless-headphones',39,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(84,'samsung-galaxy-s22-ultra-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:43:05'),(85,'dell-xps-15-laptop',41,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(86,'ipad-pro-129-inch',42,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(87,'bose-quietcomfort-earbuds',43,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(88,'lg-oled-c1-series-tv-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:43:06'),(89,'dyson-v11-vacuum-cleaner',45,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(90,'nintendo-switch-oled-model',46,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(91,'canon-eos-r5-camera',47,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:45','2026-03-06 01:42:45'),(92,'fitbit-sense-smartwatch-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:46','2026-03-06 01:43:06'),(93,'sonos-beam-soundbar',49,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:46','2026-03-06 01:42:46'),(94,'logitech-mx-master-3-mouse',50,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:46','2026-03-06 01:42:46'),(95,'kindle-paperwhite-e-reader',51,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:46','2026-03-06 01:42:46'),(96,'gopro-hero10-black-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:46','2026-03-06 01:43:06'),(97,'anker-powercore-power-bank',53,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:46','2026-03-06 01:42:46'),(98,'samsung-galaxy-buds-pro',54,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:42:46','2026-03-06 01:42:46'),(99,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-03-06 01:42:54','2026-03-06 01:42:54'),(100,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-03-06 01:42:54','2026-03-06 01:42:54'),(101,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-03-06 01:42:54','2026-03-06 01:42:54'),(102,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-03-06 01:42:54','2026-03-06 01:42:54'),(103,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-03-06 01:42:54','2026-03-06 01:42:54'),(104,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-03-06 01:42:54','2026-03-06 01:42:54'),(105,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(106,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(107,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(108,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(109,'general',1,'Botble\\Blog\\Models\\Tag','tag','2026-03-06 01:42:55','2026-03-06 01:42:55'),(110,'design',2,'Botble\\Blog\\Models\\Tag','tag','2026-03-06 01:42:55','2026-03-06 01:42:55'),(111,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2026-03-06 01:42:55','2026-03-06 01:42:55'),(112,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2026-03-06 01:42:55','2026-03-06 01:42:55'),(113,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2026-03-06 01:42:55','2026-03-06 01:42:55'),(114,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(115,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(116,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(117,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(118,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(119,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(120,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(121,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(122,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(123,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(124,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2026-03-06 01:42:55','2026-03-06 01:42:57'),(125,'home',1,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(126,'about-us',2,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(127,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(128,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(129,'refund-policy',5,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(130,'blog',6,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(131,'faqs',7,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(132,'contact',8,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(133,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(134,'affiliate',10,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(135,'career',11,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(136,'coming-soon',12,'Botble\\Page\\Models\\Page','','2026-03-06 01:42:56','2026-03-06 01:42:56'),(137,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(138,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(139,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(140,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(141,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(142,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(143,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(144,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(145,'tyson',9,'Botble\\Marketplace\\Models\\Store','stores','2026-03-06 01:43:03','2026-03-06 01:43:03'),(146,'smart-home-speaker',55,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(147,'smart-home-speaker',56,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(148,'headphone-ultra-bass',57,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(149,'headphone-ultra-bass',58,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(150,'boxed-bluetooth-headphone',59,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(151,'camera-samsung-ss-24-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(152,'macbook-pro-2015',61,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(153,'macbook-pro-2015',62,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(154,'apple-watch-serial-7',63,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(155,'macbook-pro-13-inch',64,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(156,'macbook-pro-13-inch',65,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(157,'macbook-pro-13-inch',66,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(158,'apple-keyboard-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(159,'apple-keyboard-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(160,'apple-keyboard-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(161,'leather-watch-in-black',70,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(162,'leather-watch-in-black',71,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(163,'leather-watch-in-black',72,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(164,'leather-watch-in-black',73,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(165,'macbook-pro-2015-13-inch',74,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(166,'macbook-pro-2015-13-inch',75,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(167,'black-glasses',76,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(168,'phillips-mouse',77,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(169,'phillips-mouse',78,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(170,'phillips-mouse',79,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(171,'phillips-mouse',80,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(172,'gaming-keyboard',81,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(173,'gaming-keyboard',82,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(174,'smart-home-speaker',83,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(175,'headphone-ultra-bass',84,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(176,'headphone-ultra-bass',85,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(177,'headphone-ultra-bass',86,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(178,'boxed-bluetooth-headphone-digital',87,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(179,'boxed-bluetooth-headphone-digital',88,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(180,'leather-watch-in-black',89,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(181,'leather-watch-in-black',90,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(182,'leather-watch-in-black',91,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(183,'macbook-pro-13-inch',92,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(184,'macbook-pro-13-inch',93,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(185,'macsafe-80w-digital',94,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(186,'macsafe-80w-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(187,'hand-playstation',96,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(188,'hand-playstation',97,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(189,'apple-airpods-serial-3',98,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(190,'apple-airpods-serial-3',99,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(191,'apple-airpods-serial-3',100,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(192,'apple-airpods-serial-3',101,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(193,'cool-smart-watches',102,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(194,'cool-smart-watches',103,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(195,'black-smart-watches-digital',104,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(196,'leather-watch-in-black',105,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(197,'leather-watch-in-black',106,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(198,'samsung-galaxy-s22-ultra-digital',107,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(199,'bose-quietcomfort-earbuds',108,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(200,'bose-quietcomfort-earbuds',109,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(201,'bose-quietcomfort-earbuds',110,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(202,'bose-quietcomfort-earbuds',111,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(203,'dyson-v11-vacuum-cleaner',112,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(204,'dyson-v11-vacuum-cleaner',113,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(205,'dyson-v11-vacuum-cleaner',114,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(206,'nintendo-switch-oled-model',115,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(207,'nintendo-switch-oled-model',116,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(208,'nintendo-switch-oled-model',117,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(209,'nintendo-switch-oled-model',118,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(210,'sonos-beam-soundbar',119,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(211,'sonos-beam-soundbar',120,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(212,'logitech-mx-master-3-mouse',121,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(213,'logitech-mx-master-3-mouse',122,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(214,'logitech-mx-master-3-mouse',123,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(215,'anker-powercore-power-bank',124,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(216,'anker-powercore-power-bank',125,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(217,'anker-powercore-power-bank',126,'Botble\\Ecommerce\\Models\\Product','products','2026-03-06 01:43:06','2026-03-06 01:43:06'),(218,'new-arrival',1,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2026-03-06 01:43:06','2026-03-06 01:43:06'),(219,'best-sellers',2,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2026-03-06 01:43:06','2026-03-06 01:43:06'),(220,'special-offer',3,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2026-03-06 01:43:06','2026-03-06 01:43:06');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`),
  KEY `idx_slugid_key_prefix` (`slugs_id`,`key`,`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-03-06 01:42:55','2026-03-06 01:42:55'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-03-06 01:42:55','2026-03-06 01:42:55'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-03-06 01:42:55','2026-03-06 01:42:55'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-03-06 01:42:55','2026-03-06 01:42:55'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-03-06 01:42:55','2026-03-06 01:42:55');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`),
  KEY `idx_tags_trans_tags_id` (`tags_id`),
  KEY `idx_tags_trans_tag_lang` (`tags_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`),
  KEY `idx_testimonials_trans_testimonials_id` (`testimonials_id`),
  KEY `idx_testimonials_trans_testimonial_lang` (`testimonials_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `sessions_invalidated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@company.com',NULL,NULL,'$2y$12$meWeXRB4otsZn6noTm/xR.HikWcTooTWeLbodtdNusTL6TBcsjfuu',NULL,'2026-03-06 01:42:54','2026-03-06 01:42:54','System','Admin','admin',NULL,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `widgets_unique_index` (`theme`,`sidebar_id`,`widget_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2026-03-06 01:43:00','2026-03-06 01:43:00'),(13,'CustomMenuWidget','footer_sidebar','martfury-ar',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0633\\u0631\\u064a\\u0639\\u0629\",\"menu_id\":\"quick-links-ar\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(14,'CustomMenuWidget','footer_sidebar','martfury-ar',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\",\"menu_id\":\"company-ar\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(15,'CustomMenuWidget','footer_sidebar','martfury-ar',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644\",\"menu_id\":\"business-ar\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(16,'BlogSearchWidget','primary_sidebar','martfury-ar',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"\\u0628\\u062d\\u062b\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-ar',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0641\\u0626\\u0627\\u062a\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(18,'RecentPostsWidget','primary_sidebar','martfury-ar',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"\\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631\\u0627\\u062a \\u0627\\u0644\\u0623\\u062e\\u064a\\u0631\\u0629\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(19,'TagsWidget','primary_sidebar','martfury-ar',4,'{\"id\":\"TagsWidget\",\"name\":\"\\u0627\\u0644\\u0648\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0634\\u0627\\u0626\\u0639\\u0629\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-ar',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643\\u064a\\u0629\",\"categories\":[18,2,3,4,5,6,7]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-ar',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633 \\u0648\\u0627\\u0644\\u0623\\u0632\\u064a\\u0627\\u0621\",\"categories\":[8,9,10,11,12]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-ar',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0645\\u0646\\u0632\\u0644 \\u0648\\u0627\\u0644\\u062d\\u062f\\u064a\\u0642\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0637\\u0628\\u062e\",\"categories\":[13,14,15,16,17]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-ar',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0635\\u062d\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\",\"categories\":[20,21,22,23,24]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-ar',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u062d\\u0648\\u0627\\u0633\\u064a\\u0628 \\u0648\\u0627\\u0644\\u062a\\u0642\\u0646\\u064a\\u0627\\u062a\",\"categories\":[25,26,27,28,29,19]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(25,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"quick-links-vi\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(26,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"company-vi\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(27,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Kinh doanh\",\"menu_id\":\"business-vi\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(28,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(29,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(30,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(31,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb ph\\u1ed5 bi\\u1ebfn\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(32,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed ti\\u00eau d\\u00f9ng\",\"categories\":[18,2,3,4,5,6,7]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(33,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o v\\u00e0 trang ph\\u1ee5c\",\"categories\":[8,9,10,11,12]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(34,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Nh\\u00e0 c\\u1eeda, v\\u01b0\\u1eddn v\\u00e0 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(35,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe v\\u00e0 l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(36,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh v\\u00e0 c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(37,'CustomMenuWidget','footer_sidebar','martfury-fr',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Liens rapides\",\"menu_id\":\"quick-links-fr\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(38,'CustomMenuWidget','footer_sidebar','martfury-fr',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Entreprise\",\"menu_id\":\"company-fr\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(39,'CustomMenuWidget','footer_sidebar','martfury-fr',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Affaires\",\"menu_id\":\"business-fr\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(40,'BlogSearchWidget','primary_sidebar','martfury-fr',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Rechercher\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(41,'BlogCategoriesWidget','primary_sidebar','martfury-fr',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Cat\\u00e9gories\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(42,'RecentPostsWidget','primary_sidebar','martfury-fr',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Publications r\\u00e9centes\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(43,'TagsWidget','primary_sidebar','martfury-fr',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags populaires\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(44,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-fr',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u00c9lectronique grand public\",\"categories\":[18,2,3,4,5,6,7]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(45,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-fr',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"V\\u00eatements et habillement\",\"categories\":[8,9,10,11,12]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(46,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-fr',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Maison, jardin et cuisine\",\"categories\":[13,14,15,16,17]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(47,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-fr',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sant\\u00e9 et beaut\\u00e9\",\"categories\":[20,21,22,23,24]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(48,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-fr',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Informatique et technologies\",\"categories\":[25,26,27,28,29,19]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(49,'CustomMenuWidget','footer_sidebar','martfury-id',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Tautan cepat\",\"menu_id\":\"quick-links-id\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(50,'CustomMenuWidget','footer_sidebar','martfury-id',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Perusahaan\",\"menu_id\":\"company-id\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(51,'CustomMenuWidget','footer_sidebar','martfury-id',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Bisnis\",\"menu_id\":\"business-id\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(52,'BlogSearchWidget','primary_sidebar','martfury-id',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Cari\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(53,'BlogCategoriesWidget','primary_sidebar','martfury-id',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Kategori\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(54,'RecentPostsWidget','primary_sidebar','martfury-id',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Posting terbaru\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(55,'TagsWidget','primary_sidebar','martfury-id',4,'{\"id\":\"TagsWidget\",\"name\":\"Tag populer\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(56,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-id',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Elektronik konsumen\",\"categories\":[18,2,3,4,5,6,7]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(57,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-id',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Pakaian dan busana\",\"categories\":[8,9,10,11,12]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(58,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-id',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Rumah, taman, dan dapur\",\"categories\":[13,14,15,16,17]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(59,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-id',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Kesehatan dan kecantikan\",\"categories\":[20,21,22,23,24]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(60,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-id',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Komputer dan teknologi\",\"categories\":[25,26,27,28,29,19]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(61,'CustomMenuWidget','footer_sidebar','martfury-tr',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"H\\u0131zl\\u0131 ba\\u011flant\\u0131lar\",\"menu_id\":\"quick-links-tr\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(62,'CustomMenuWidget','footer_sidebar','martfury-tr',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u015eirket\",\"menu_id\":\"company-tr\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(63,'CustomMenuWidget','footer_sidebar','martfury-tr',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0130\\u015f\",\"menu_id\":\"business-tr\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(64,'BlogSearchWidget','primary_sidebar','martfury-tr',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Ara\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(65,'BlogCategoriesWidget','primary_sidebar','martfury-tr',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Kategoriler\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(66,'RecentPostsWidget','primary_sidebar','martfury-tr',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Son g\\u00f6nderiler\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(67,'TagsWidget','primary_sidebar','martfury-tr',4,'{\"id\":\"TagsWidget\",\"name\":\"Pop\\u00fcler etiketler\"}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(68,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-tr',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"T\\u00fcketici Elektroni\\u011fi\",\"categories\":[18,2,3,4,5,6,7]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(69,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-tr',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Giyim ve Konfeksiyon\",\"categories\":[8,9,10,11,12]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(70,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-tr',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Ev, Bah\\u00e7e ve Mutfak\",\"categories\":[13,14,15,16,17]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(71,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-tr',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sa\\u011fl\\u0131k ve G\\u00fczellik\",\"categories\":[20,21,22,23,24]}','2026-03-06 01:43:05','2026-03-06 01:43:05'),(72,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-tr',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Bilgisayar ve Teknolojiler\",\"categories\":[25,26,27,28,29,19]}','2026-03-06 01:43:05','2026-03-06 01:43:05');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `quote_requests`
--

DROP TABLE IF EXISTS `quote_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quote_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `quoted_price` decimal(15,2) DEFAULT NULL,
  `quoted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quote_requests_product_id_index` (`product_id`),
  KEY `quote_requests_customer_id_index` (`customer_id`),
  KEY `quote_requests_status_index` (`status`),
  KEY `quote_requests_email_index` (`email`),
  CONSTRAINT `quote_requests_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `ec_products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `quote_requests_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `ec_customers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_requests`
--

LOCK TABLES `quote_requests` WRITE;
/*!40000 ALTER TABLE `quote_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-06 15:43:07
