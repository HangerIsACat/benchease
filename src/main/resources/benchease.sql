-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: 54.255.99.90    Database: benchease
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.12-MariaDB-1:10.6.12+maria~ubu2004

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2016_06_01_000001_create_oauth_auth_codes_table',1),(5,'2016_06_01_000002_create_oauth_access_tokens_table',1),(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(7,'2016_06_01_000004_create_oauth_clients_table',1),(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(9,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2023_04_13_023243_create_table_work_environment',1),(12,'2023_04_14_025307_create_table_skills',1),(13,'2023_04_14_202336_create_table_user_skills',1),(14,'2023_04_14_202810_create_table_recorded_interview',1),(15,'2023_04_14_202839_create_table_skill_searches',1),(16,'2023_04_14_202900_create_table_project_history',1),(17,'2023_04_14_202928_create_table_user_jobs',1),(18,'2023_04_14_202952_create_table_shift_days',1),(19,'2023_04_14_203001_create_table_shift_hours',1),(20,'2023_05_03_111822_user_restrictions',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('99136646-7445-421e-84e6-ec4cf5a61d79',NULL,'Bench Ease Personal Access Client','87upkdmoofwmfMFkCHZ9tJMw2dKbbfqOdKK6nHbt','users','http://localhost',1,0,0,'2023-05-03 11:53:13','2023-05-03 11:53:13'),('99136646-7bee-45bf-b716-62561b86fa4b',NULL,'Bench Ease Password Grant Client','fFV5sCTZPmEV6nx48FRwlRsdK1QZG2zbhNZQL9tA','users','http://localhost',0,1,0,'2023-05-03 11:53:13','2023-05-03 11:53:13');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'99136646-7445-421e-84e6-ec4cf5a61d79','2023-05-03 11:53:13','2023-05-03 11:53:13');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
-- Table structure for table `project_history`
--

DROP TABLE IF EXISTS `project_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_history` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `project_name` varchar(255) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_history_user_id_foreign` (`user_id`),
  KEY `project_history_created_by_foreign` (`created_by`),
  KEY `project_history_updated_by_foreign` (`updated_by`),
  CONSTRAINT `project_history_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `project_history_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `project_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_history`
--

LOCK TABLES `project_history` WRITE;
/*!40000 ALTER TABLE `project_history` DISABLE KEYS */;
INSERT INTO `project_history` VALUES ('b9b76860-97f0-44ea-bbd1-98334bad4840','b90e6e6f-592e-477b-973d-61e05066fc18','blair.dickinson','Roob-Funk','Beatae quaerat et sint odit ipsam molestias repellat.','2022-12-24','2023-05-03',NULL,NULL,'2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `project_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recorded_interview`
--

DROP TABLE IF EXISTS `recorded_interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recorded_interview` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `client` varchar(255) NOT NULL,
  `job_post` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recorded_interview_user_id_foreign` (`user_id`),
  KEY `recorded_interview_created_by_foreign` (`created_by`),
  KEY `recorded_interview_updated_by_foreign` (`updated_by`),
  CONSTRAINT `recorded_interview_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `recorded_interview_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `recorded_interview_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recorded_interview`
--

LOCK TABLES `recorded_interview` WRITE;
/*!40000 ALTER TABLE `recorded_interview` DISABLE KEYS */;
INSERT INTO `recorded_interview` VALUES ('07a8dfe7-e728-497d-b58f-ed72a642b4fd','b90e6e6f-592e-477b-973d-61e05066fc18','Rau-Smitham','Veterinary Assistant OR Laboratory Animal Caretaker','https://ferry.com/alias-fugiat-provident-adipisci-laudantium-aut-architecto-quia.html',NULL,NULL,'2023-05-03 11:53:04','2023-05-03 11:53:04'),('cde923f3-bdf8-4a25-a696-31e37fdfd7cf','b90e6e6f-592e-477b-973d-61e05066fc18','Goldner PLC','Geography Teacher','http://www.becker.net/et-quia-eligendi-suscipit-quia',NULL,NULL,'2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `recorded_interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_days`
--

DROP TABLE IF EXISTS `shift_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shift_days` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `short_name` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shift_days_user_id_foreign` (`user_id`),
  KEY `shift_days_created_by_foreign` (`created_by`),
  KEY `shift_days_updated_by_foreign` (`updated_by`),
  CONSTRAINT `shift_days_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `shift_days_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `shift_days_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_days`
--

LOCK TABLES `shift_days` WRITE;
/*!40000 ALTER TABLE `shift_days` DISABLE KEYS */;
INSERT INTO `shift_days` VALUES ('ca048a72-179d-40f7-8597-901069d2fb3b','b90e6e6f-592e-477b-973d-61e05066fc18','Tue-Sat','T-W-Th-F-S',NULL,NULL,'2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `shift_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_hours`
--

DROP TABLE IF EXISTS `shift_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shift_hours` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `shift_start` varchar(255) NOT NULL,
  `shift_end` varchar(255) NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shift_hours_user_id_foreign` (`user_id`),
  KEY `shift_hours_created_by_foreign` (`created_by`),
  KEY `shift_hours_updated_by_foreign` (`updated_by`),
  CONSTRAINT `shift_hours_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `shift_hours_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `shift_hours_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_hours`
--

LOCK TABLES `shift_hours` WRITE;
/*!40000 ALTER TABLE `shift_hours` DISABLE KEYS */;
INSERT INTO `shift_hours` VALUES ('0d8178ca-70ab-44a9-82b8-5770b60f418e','b90e6e6f-592e-477b-973d-61e05066fc18','6 AM','3 PM',NULL,NULL,'2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `shift_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_searches`
--

DROP TABLE IF EXISTS `skill_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_searches` (
  `id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_searches`
--

LOCK TABLES `skill_searches` WRITE;
/*!40000 ALTER TABLE `skill_searches` DISABLE KEYS */;
INSERT INTO `skill_searches` VALUES ('00444971-e13c-4f19-b0f5-069dbf3d8579','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('005b75ae-a350-4cb2-ae6d-0db0e7bde036','Reactjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('0105b2bd-f3af-4e52-b3c2-f5e4751e2a4a','Angularjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('0184377d-5651-46e9-9e6a-69ac6e83a680','Codeigniter','2023-05-03 11:53:04','2023-05-03 11:53:04'),('06c817d7-c055-41f8-ac9d-60c52808153f','Bootstrap css','2023-05-03 11:53:04','2023-05-03 11:53:04'),('07da2008-ac8a-48e5-839b-de9990531024','Laravel','2023-05-03 11:53:04','2023-05-03 11:53:04'),('1339cb38-69d0-4a86-8388-52136e86d44d','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('133b17ef-add1-4b84-9901-9ebf24c4f450','Laravel','2023-05-03 11:53:04','2023-05-03 11:53:04'),('162358fb-007a-4c06-a850-4d723d33fca0','Webflow','2023-05-03 11:53:04','2023-05-03 11:53:04'),('1ce94c65-10e3-4ffb-8382-42e09cfb4d9f','Vuejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('1df68c04-5cb4-4368-858d-5919b2edbb10','Php','2023-05-03 11:53:04','2023-05-03 11:53:04'),('1e10117a-5864-4029-b37c-06d22562010e','Reactjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('1f6c0ff9-a730-4081-9a92-7b06b91c11d5','Webflow','2023-05-03 11:53:04','2023-05-03 11:53:04'),('28bec548-cb49-45dc-8959-133890a738a7','Shopify','2023-05-03 11:53:04','2023-05-03 11:53:04'),('2f6d071b-6edf-406a-b840-2cbbccfd8608','Bootstrap css','2023-05-03 11:53:04','2023-05-03 11:53:04'),('34191426-e7ea-4ce0-bdc8-77e0867cf9fb','Reactjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('3804ebee-785a-42be-95f0-961af958a61b','.net','2023-05-03 11:53:04','2023-05-03 11:53:04'),('39e95d49-6a5a-4266-8847-4a2007ad249d','Jira','2023-05-03 11:53:04','2023-05-03 11:53:04'),('3b19bd44-3af8-4803-b2a2-708559be50f7','Laravel','2023-05-03 11:53:04','2023-05-03 11:53:04'),('3b9c29df-2769-4e71-a185-2431ad54e225','Nodejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('4022eeb1-4187-4f28-9d56-3e3c24425a0d','.net','2023-05-03 11:53:04','2023-05-03 11:53:04'),('491a9159-e778-4310-844f-880a040a32f3','Git','2023-05-03 11:53:04','2023-05-03 11:53:04'),('495f70a3-3a3c-40ad-910d-f5b68e2f41fe','Codeigniter','2023-05-03 11:53:04','2023-05-03 11:53:04'),('4cd621e1-c21a-4b90-87fb-4b99ea08ac5f','Laravel','2023-05-03 11:53:04','2023-05-03 11:53:04'),('4e46ea07-ad21-4d05-9cfd-95a2c0f048b3','Yii','2023-05-03 11:53:04','2023-05-03 11:53:04'),('4f58d519-d829-4214-83ef-9510919d2468','Jira','2023-05-03 11:53:04','2023-05-03 11:53:04'),('5b8c845f-18fa-44f4-bee3-d17b5c6668ab','Tailwind css','2023-05-03 11:53:04','2023-05-03 11:53:04'),('5cb4a68d-e1a8-4290-8002-1ccdbb57f52e','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('5d048a97-ea91-4167-9c7d-11e7fc6182ba','Wordpress','2023-05-03 11:53:04','2023-05-03 11:53:04'),('5de04d10-2a23-4e88-953b-a95f59542dc5','Bootstrap css','2023-05-03 11:53:04','2023-05-03 11:53:04'),('5efd1ad7-9c1c-48e7-a7af-96422db95716','Wordpress','2023-05-03 11:53:04','2023-05-03 11:53:04'),('60098831-af74-40f3-986f-348df7e04c5a','Angularjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('625dc610-d1a6-4415-9260-b69227c6f02b','Codeigniter','2023-05-03 11:53:04','2023-05-03 11:53:04'),('627d9d68-cb51-4719-a445-099344eec09b','Wordpress','2023-05-03 11:53:04','2023-05-03 11:53:04'),('6b88e6db-87d6-4b00-8f7d-36724668e09e','Wordpress','2023-05-03 11:53:04','2023-05-03 11:53:04'),('6bca24f3-db82-4b0b-8e25-8ed731f58a29','Docker','2023-05-03 11:53:04','2023-05-03 11:53:04'),('6cc4570e-cf5b-40e4-964d-b4719be4bf9b','Laravel','2023-05-03 11:53:04','2023-05-03 11:53:04'),('6d689e5d-fa31-4e48-9211-e177869b866f','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('6fb904ba-ac65-40d8-8c30-ab790d867fd5','Php','2023-05-03 11:53:04','2023-05-03 11:53:04'),('703173bc-274a-4b83-9cc9-59de689f4a44','Git','2023-05-03 11:53:04','2023-05-03 11:53:04'),('71b1e731-5983-4b60-ac28-70ffb7df2a83','Codeigniter','2023-05-03 11:53:04','2023-05-03 11:53:04'),('72ed523b-780c-4c92-bbec-6ef9d35ac550','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('75fc0630-a1e6-4b5a-85d6-25e5ef606dd6','Vuejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('767cfcc6-decb-4b3f-a6cd-c7419b126b6a','.net','2023-05-03 11:53:04','2023-05-03 11:53:04'),('78a02ed5-8f96-497e-ad3e-4a885ba2a131','Yii','2023-05-03 11:53:04','2023-05-03 11:53:04'),('7a03e005-7036-4206-acfb-612d180d407d','Vuejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('7a2c9c30-9679-4402-af39-82932ec1fe93','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('7b60a315-8c2f-4a19-b096-03033899049e','Vuejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('7cb65c3b-51c2-4b90-a225-5b70f002167e','Wordpress','2023-05-03 11:53:04','2023-05-03 11:53:04'),('7e36ddbc-e5a6-41c4-b334-222ddcf4e746','Shopify','2023-05-03 11:53:04','2023-05-03 11:53:04'),('8353c929-4ef2-4380-97c0-78200e0a607b','Angularjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('866cb908-6e9a-4857-9c03-f315d694e050','Wordpress','2023-05-03 11:53:04','2023-05-03 11:53:04'),('86adc63e-5b58-4fd7-9db9-1d7e3627c047','.net','2023-05-03 11:53:04','2023-05-03 11:53:04'),('86dde10a-2e63-4ec6-abca-054ff1b01c32','Jira','2023-05-03 11:53:04','2023-05-03 11:53:04'),('8a9b29a5-2af4-4468-9d2a-ac9881286173','Nodejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('8ce783c2-795d-43c3-abc8-ffc95edf9e23','Vuejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('91716845-d4e8-4958-bae6-222516516906','Java','2023-05-03 11:53:04','2023-05-03 11:53:04'),('92fcc181-d6ae-4be5-8326-a16408a3033a','Shopify','2023-05-03 11:53:04','2023-05-03 11:53:04'),('954fcac3-a543-4f3f-a854-82686f030577','Reactjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('a0f65928-cd13-4264-a2b9-f0079a9bff92','Tailwind css','2023-05-03 11:53:04','2023-05-03 11:53:04'),('a3376e9f-8c92-4284-9e6f-3e9e8385b9d1','Nodejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('a449d685-bc6e-455e-972d-74ec215a6e7e','Php','2023-05-03 11:53:04','2023-05-03 11:53:04'),('a504c80f-2987-414a-ac22-4300e85ebefe','Yii','2023-05-03 11:53:04','2023-05-03 11:53:04'),('a692a7b4-3a6b-4e98-9376-c2129a122bf2','Git','2023-05-03 11:53:04','2023-05-03 11:53:04'),('a69bd133-e978-4972-8f5b-782bbc702a12','Php','2023-05-03 11:53:04','2023-05-03 11:53:04'),('a6f38b65-69d8-4dc7-9308-a9a1cea1a457','Javascript','2023-05-03 11:53:04','2023-05-03 11:53:04'),('ac9e97c0-292d-430c-b04f-7c1e74f82170','Shopify','2023-05-03 11:53:04','2023-05-03 11:53:04'),('afb14e7e-2690-4124-864c-cc5122d614cb','Git','2023-05-03 11:53:04','2023-05-03 11:53:04'),('b500e1a1-ba44-4116-93cd-d9496502aac9','Git','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c152d7c1-95b6-4242-a45e-480b890874e3','.net','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c1cdda4c-5d62-4dcb-8857-26372f1c8dc2','Tailwind css','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c2101369-6f42-4f10-9a67-59f9e54bc97a','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c3a63fb1-ce7f-4fc3-9f2d-c9e659685e49','Laravel','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c5836156-93ed-479a-ab3c-d2319b6b97a1','Javascript','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c8fdfd26-3626-4ae8-866d-b0c48b4e7d5e','Php','2023-05-03 11:53:04','2023-05-03 11:53:04'),('cbe7f28b-2119-4b0f-8166-3870f914f51d','Php','2023-05-03 11:53:04','2023-05-03 11:53:04'),('cc0ea2fa-f9e1-4237-93a9-aa02f00d1ab8','Webflow','2023-05-03 11:53:04','2023-05-03 11:53:04'),('cf6ddbbd-bd6a-4482-8284-7081f49ab016','Reactjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('d0e13b59-fff7-487d-93af-34f79d4a9f65','Webflow','2023-05-03 11:53:04','2023-05-03 11:53:04'),('d39e348f-9251-488d-99ae-e25258d01480','Shopify','2023-05-03 11:53:04','2023-05-03 11:53:04'),('d4244ceb-0a46-41de-9517-f8970d1d065b','Angularjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('d4ba1b27-8065-4a84-8893-48b9ae3ac4d2','Trello','2023-05-03 11:53:04','2023-05-03 11:53:04'),('d74c312e-00ec-4d87-a226-642566bebca5','Php','2023-05-03 11:53:04','2023-05-03 11:53:04'),('dc44ef00-c1cd-4686-a9f7-0512043fbe74','.net','2023-05-03 11:53:04','2023-05-03 11:53:04'),('df3d9296-5a81-4786-b138-04b1efa38360','Webflow','2023-05-03 11:53:04','2023-05-03 11:53:04'),('e19a509a-45f3-433f-853c-30391419814c','Tailwind css','2023-05-03 11:53:04','2023-05-03 11:53:04'),('e308c1e4-09c2-4620-8ac2-c06b8f1cc6b8','Java','2023-05-03 11:53:04','2023-05-03 11:53:04'),('e561dfd7-05eb-4b35-9911-d87717303911','Javascript','2023-05-03 11:53:04','2023-05-03 11:53:04'),('e56413fa-6fee-4aa1-b924-f2d1cd247de4','Yii','2023-05-03 11:53:04','2023-05-03 11:53:04'),('e96372c7-22d6-45bf-a0c8-ad595abedb65','Javascript','2023-05-03 11:53:04','2023-05-03 11:53:04'),('ea74c3e7-b06a-48b7-ad8f-c65886b23a0a','Git','2023-05-03 11:53:04','2023-05-03 11:53:04'),('f4630791-9415-4ec0-80f6-037c371391d3','.net','2023-05-03 11:53:04','2023-05-03 11:53:04'),('f4ce0f0f-3db0-4471-8f36-9397d09d98bb','Java','2023-05-03 11:53:04','2023-05-03 11:53:04'),('f6110443-87dd-4cd4-8b2c-93da715dd94f','Wordpress','2023-05-03 11:53:04','2023-05-03 11:53:04'),('f66fc892-7dc6-4d6c-ae4e-8ade269a67c5','Jira','2023-05-03 11:53:04','2023-05-03 11:53:04'),('f83875f4-8680-4be4-943d-5ad3b1084d7f','Shopify','2023-05-03 11:53:04','2023-05-03 11:53:04'),('f9dcf436-f688-4736-bbae-ce6bf2f73fc7','Yii','2023-05-03 11:53:04','2023-05-03 11:53:04'),('fb0a9444-2a7c-4794-97fa-114d8a94fa29','Angularjs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('fc8ecf87-13cf-400a-962c-751e7ba37544','Nodejs','2023-05-03 11:53:04','2023-05-03 11:53:04'),('ff672925-e2ea-4f39-8860-092abb49e811','Jira','2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `skill_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `skills_created_by_foreign` (`created_by`),
  KEY `skills_updated_by_foreign` (`updated_by`),
  CONSTRAINT `skills_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `skills_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('12725b40-027a-4193-b18f-095800e1fd92','reactjs','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('1866d5f7-46a2-409e-bd84-513fe3a4a8cb','vuejs','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('1a15c8d6-a147-4119-addf-b3711125844b','shopify','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('1d3d23ba-1a7f-42a3-8c81-6ec7adf5bff4','angularjs','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('24615b1a-5f72-415d-91d7-d01dcc0ffa90','tailwind css','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('24ca8b5e-fc87-44bd-9134-d9a529a0b850','yii','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('343aaf8a-d184-4368-bcbd-af141922beae','nodejs','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('4700b8e8-8b1d-41c1-97b0-72c7a365850c','.net','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('4789880e-922b-443a-b947-b67bbfc72297','javascript','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('479d4258-d57c-41ab-96dd-ff4ee96e0b87','java','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('4f762b69-1ab4-47af-9fc1-f49ed1eaa626','jira','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('6d244475-6abb-4ef6-98b0-1406dc3ffd96','docker','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('7bc0479f-7c7c-408c-949f-01275939c732','webflow','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('7c92ac0e-2530-4dfe-8383-ba510a45eba5','bootstrap css','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('94630fa9-e6db-423f-b09e-f10568fcdfbc','wordpress','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('bc4adfa4-bb6b-47a1-b616-98698ae6a7b2','git','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('c3e4a3e2-ce1d-4a35-bf23-1c06a1e37419','php','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('c663ffa3-a149-4427-abe2-0ddb9310ac81','trello','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('cc0b8ed1-763a-4b1d-a46c-3d9dec623aba','laravel','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('f92448ea-96e9-41ca-9b26-210c6c4920be','codeigniter','7a3df980-0a3e-4835-bf10-de016c850f31',NULL,1,'2023-05-03 11:53:03','2023-05-03 11:53:03');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_jobs`
--

DROP TABLE IF EXISTS `user_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_jobs` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `company` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_jobs_user_id_foreign` (`user_id`),
  KEY `user_jobs_created_by_foreign` (`created_by`),
  KEY `user_jobs_updated_by_foreign` (`updated_by`),
  CONSTRAINT `user_jobs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_jobs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_jobs`
--

LOCK TABLES `user_jobs` WRITE;
/*!40000 ALTER TABLE `user_jobs` DISABLE KEYS */;
INSERT INTO `user_jobs` VALUES ('2c0d1c4d-ab52-4d1c-8b4a-8f062c5ada3b','b90e6e6f-592e-477b-973d-61e05066fc18','Lockman, Jast and Langworth','Clinical School Psychologist','Doloremque cupiditate aut rerum commodi aut ex voluptatibus.','2023-03-11','2023-05-03',NULL,NULL,'2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `user_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_restrictions`
--

DROP TABLE IF EXISTS `user_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_restrictions` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_hr` tinyint(1) NOT NULL DEFAULT 0,
  `is_recruiter` tinyint(1) NOT NULL DEFAULT 0,
  `is_bench_employee` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_restrictions_user_id_foreign` (`user_id`),
  CONSTRAINT `user_restrictions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_restrictions`
--

LOCK TABLES `user_restrictions` WRITE;
/*!40000 ALTER TABLE `user_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_skills`
--

DROP TABLE IF EXISTS `user_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_skills` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `skill_id` char(36) NOT NULL,
  `category` enum('primary','secondary','others') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_skills_user_id_foreign` (`user_id`),
  KEY `user_skills_skill_id_foreign` (`skill_id`),
  CONSTRAINT `user_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`),
  CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_skills`
--

LOCK TABLES `user_skills` WRITE;
/*!40000 ALTER TABLE `user_skills` DISABLE KEYS */;
INSERT INTO `user_skills` VALUES ('0c7fac26-b073-498e-b33b-3948a24d33f2','b90e6e6f-592e-477b-973d-61e05066fc18','1866d5f7-46a2-409e-bd84-513fe3a4a8cb','others','2023-05-03 11:53:04','2023-05-03 11:53:04'),('10850596-bee0-4415-be59-74ddca9877c3','b90e6e6f-592e-477b-973d-61e05066fc18','1866d5f7-46a2-409e-bd84-513fe3a4a8cb','others','2023-05-03 11:53:04','2023-05-03 11:53:04'),('27eb89ff-7941-4023-9a7f-9c4cf86deddb','b90e6e6f-592e-477b-973d-61e05066fc18','cc0b8ed1-763a-4b1d-a46c-3d9dec623aba','secondary','2023-05-03 11:53:04','2023-05-03 11:53:04'),('3de0f586-59d4-4b15-8ff0-eb82029f7d10','b90e6e6f-592e-477b-973d-61e05066fc18','6d244475-6abb-4ef6-98b0-1406dc3ffd96','primary','2023-05-03 11:53:04','2023-05-03 11:53:04'),('5affe5f0-fe0a-4a32-b30b-a97113d76deb','b90e6e6f-592e-477b-973d-61e05066fc18','cc0b8ed1-763a-4b1d-a46c-3d9dec623aba','primary','2023-05-03 11:53:04','2023-05-03 11:53:04'),('980a7c53-12c9-45b9-8fdb-f2a98dbc4911','b90e6e6f-592e-477b-973d-61e05066fc18','479d4258-d57c-41ab-96dd-ff4ee96e0b87','secondary','2023-05-03 11:53:04','2023-05-03 11:53:04'),('9ea2015f-c262-4a2d-af94-c4c0964665f6','b90e6e6f-592e-477b-973d-61e05066fc18','94630fa9-e6db-423f-b09e-f10568fcdfbc','secondary','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c230672a-b8ca-4eb4-9f08-15aef4a6541e','b90e6e6f-592e-477b-973d-61e05066fc18','c663ffa3-a149-4427-abe2-0ddb9310ac81','primary','2023-05-03 11:53:04','2023-05-03 11:53:04'),('c7ed5835-998d-4eb7-84ef-be2f4024bd04','b90e6e6f-592e-477b-973d-61e05066fc18','4700b8e8-8b1d-41c1-97b0-72c7a365850c','primary','2023-05-03 11:53:04','2023-05-03 11:53:04'),('cf52049e-1116-486d-95b1-b3065be07395','b90e6e6f-592e-477b-973d-61e05066fc18','7bc0479f-7c7c-408c-949f-01275939c732','secondary','2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `user_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_1` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'employee',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('7a3df980-0a3e-4835-bf10-de016c850f31','2022-001','admin',NULL,' admin',NULL,NULL,NULL,NULL,'admin@sample.com','admin',NULL,'$2y$10$0fZSyc7dDnQRb9AbHUR4D.gluYomv6t4WFmkdwsggzlXXtiFHxO12',1,0,NULL,NULL,NULL,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('b90e6e6f-592e-477b-973d-61e05066fc18','2022-003','sample',NULL,' employee','+639123456789','+639123456788','ortigas,pasig city','linkedin/in/employeetest','employee@sample.com','employee',NULL,'$2y$10$pwvgyRn1wqln3gFLCSiSr.KuDsoJQf6KP5YifqH6nLbrT.cIru/m6',1,1,NULL,NULL,NULL,'2023-05-03 11:53:03','2023-05-03 11:53:03'),('fe6ced0a-1ca0-4e3b-9d60-1e80d3ecfd5c','2022-002','sample',NULL,' hr',NULL,NULL,NULL,NULL,'hr@sample.com','hr',NULL,'$2y$10$Tcl3VWw2pKt5dy0meY4xfewg9hlCVk97wa42IYo0flvuxTnDsUPPa',1,0,NULL,NULL,NULL,'2023-05-03 11:53:03','2023-05-03 11:53:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_environment`
--

DROP TABLE IF EXISTS `work_environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_environment` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `name` enum('onsite','wfh','hybrid') NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `work_environment_created_by_foreign` (`created_by`),
  KEY `work_environment_updated_by_foreign` (`updated_by`),
  KEY `work_environment_user_id_foreign` (`user_id`),
  CONSTRAINT `work_environment_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `work_environment_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `work_environment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_environment`
--

LOCK TABLES `work_environment` WRITE;
/*!40000 ALTER TABLE `work_environment` DISABLE KEYS */;
INSERT INTO `work_environment` VALUES ('2688f8f0-01a0-4a30-b197-e24c0b8f9e28','b90e6e6f-592e-477b-973d-61e05066fc18','wfh',NULL,NULL,'2023-05-03 11:53:04','2023-05-03 11:53:04');
/*!40000 ALTER TABLE `work_environment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03 13:46:54
