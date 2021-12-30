-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: db_pierce
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stakeholder_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'jalyn11','/:G-S0z~KB#.xbw',1,'2021-12-29 06:39:11','2021-12-29 18:06:50'),(2,'toy.richie',':$~XynX]/W?c~nU(\"~',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(3,'harry.tremblay','p-@Q&B+A@9',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(4,'wjohns',')d*_0pArpKUeB#=3#T1',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(5,'atillman','3_l$hOGUpiok>IDyU.',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(6,'cassin.vicente','S)ER,UtDV;^W2EBU4C',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(7,'peter41','whWu]EZyc@9_0*S75U',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(8,'hdickens','5Nei>(f0',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(9,'qbergstrom','d\'\'g$pl',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(10,'sedrick.ernser','v0??8m',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(11,'fleannon','ioG1(Y',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(12,'ygutkowski','@@):l](Rl0',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(13,'reichert.faye','~T5lo7+5]z|\"',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(14,'pacocha.adah','{\\CU7&M&HlMwMyZ',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(15,'swift.johnnie','.|EhIk6!1n`~',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(16,'gina.will','w$&gc<4l\'S',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(17,'abby84','T7D7,Vy,',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(18,'corine.macejkovic','F-Mt86',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(19,'carmel.rolfson','u1xMi7~ugu9gY6',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12'),(20,'eloy.runolfsson','&1H6\\XT<%}',NULL,'2021-12-29 06:39:12','2021-12-29 06:39:12');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_12_29_115832_create_stakeholders_table',1),(5,'2021_12_29_120333_create_customers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `stakeholders`
--

DROP TABLE IF EXISTS `stakeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stakeholders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_point` int NOT NULL DEFAULT '0',
  `total_buy` int NOT NULL DEFAULT '0',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stakeholders_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stakeholders`
--

LOCK TABLES `stakeholders` WRITE;
/*!40000 ALTER TABLE `stakeholders` DISABLE KEYS */;
INSERT INTO `stakeholders` VALUES (1,'Cordia','bettie.kohler@hotmail.com','795 Delta Ports\nWest Ernestina, FL 07820',0,0,'1-954-257-6000','2021-12-29 06:37:06','2021-12-29 06:37:06'),(2,'Elenora','rice.yadira@hotmail.com','348 Blanda Walks Apt. 484\nWest Haven, NC 49444',0,0,'1-928-962-2698','2021-12-29 06:37:06','2021-12-29 06:37:06'),(3,'Nora','keaton96@crona.com','576 Sunny Path\nJacobimouth, CT 24582',0,0,'+1 (202) 973-0779','2021-12-29 06:37:06','2021-12-29 06:37:06'),(4,'Gail','barry.volkman@yahoo.com','15009 Gaylord Lights Apt. 380\nEast Georgette, CT 95987-0575',0,0,'380-290-4879','2021-12-29 06:37:06','2021-12-29 06:37:06'),(5,'Ora','wilfredo.trantow@hotmail.com','65872 Zachary Street\nMcClureton, HI 16017-5808',0,0,'(352) 440-9957','2021-12-29 06:37:06','2021-12-29 06:37:06'),(6,'Annabell','arvid99@mills.org','90641 Crooks Circles\nLake Harmon, GA 85963',0,0,'+1-276-454-4231','2021-12-29 06:37:06','2021-12-29 06:37:06'),(7,'Johnathon','freeda.schmidt@johnson.com','6550 Kennith Landing\nBoscoshire, NY 57724-6018',0,0,'+1 (814) 246-1872','2021-12-29 06:37:06','2021-12-29 06:37:06'),(8,'Marvin','hermann.ebba@gmail.com','9578 Dewitt Springs\nJaimeton, MD 90185',0,0,'+1 (458) 919-0700','2021-12-29 06:37:06','2021-12-29 06:37:06'),(9,'Cristal','green.avis@yahoo.com','674 Tromp Prairie\nMonahanstad, ME 92267',0,0,'+1-734-740-5428','2021-12-29 06:37:06','2021-12-29 06:37:06'),(10,'Ida','mason39@kuhn.info','51871 Kreiger Oval Suite 225\nNew Harley, UT 66858-1133',0,0,'989.784.1519','2021-12-29 06:37:06','2021-12-29 06:37:06'),(11,'Ivory','russ61@hotmail.com','8642 Hyatt Ridges\nDorafort, FL 61892-7157',0,0,'+1 (678) 559-4459','2021-12-29 06:37:06','2021-12-29 06:37:06'),(12,'Viva','clifford74@hill.info','690 Feeney Common Apt. 096\nEzekielmouth, OK 17130-1765',0,0,'364-346-8651','2021-12-29 06:37:06','2021-12-29 06:37:06'),(13,'Reina','randal10@gmail.com','456 Loraine Court\nPort Hellen, WV 70487-2467',0,0,'(260) 334-9537','2021-12-29 06:37:06','2021-12-29 06:37:06'),(14,'Sammie','rasheed16@hirthe.biz','82387 Sipes Village Suite 324\nTitushaven, NC 34070-0445',0,0,'(248) 953-2392','2021-12-29 06:37:06','2021-12-29 06:37:06'),(15,'Jennyfer','lyric87@hotmail.com','3323 Stracke Ports\nKaraview, WI 46119-1413',0,0,'212.371.2789','2021-12-29 06:37:06','2021-12-29 06:37:06'),(16,'Moises','fraynor@hotmail.com','1640 Schroeder Terrace\nVladimirtown, MO 95721-1867',0,0,'1-213-441-2101','2021-12-29 06:37:06','2021-12-29 06:37:06'),(17,'Abdul','dubuque.robbie@dickens.net','8835 Yost Mountains\nShieldsbury, AZ 77898-3649',0,0,'1-682-425-8380','2021-12-29 06:37:06','2021-12-29 06:37:06'),(18,'Shyanne','kirk31@gmail.com','984 Renner Turnpike Suite 360\nTimmothyburgh, ND 16297',0,0,'1-463-813-9614','2021-12-29 06:37:06','2021-12-29 06:37:06'),(19,'Mose','feeney.judy@yahoo.com','754 Davin Landing\nNew Katrinaview, AK 95370',0,0,'520.612.8317','2021-12-29 06:37:06','2021-12-29 06:37:06'),(20,'Rylee','allison.berge@bins.com','7513 Lindgren Knolls\nNorth Dannieview, MS 30458-7354',0,0,'+1-405-486-4510','2021-12-29 06:37:06','2021-12-29 06:37:06');
/*!40000 ALTER TABLE `stakeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 13:52:20
