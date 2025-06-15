-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: defect_tracker
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `defects`
--

DROP TABLE IF EXISTS `defects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defects` (
  `defect_id` int NOT NULL AUTO_INCREMENT,
  `test_case_id` int DEFAULT NULL,
  `defect_title` varchar(255) NOT NULL,
  `description` text,
  `severity_id` int DEFAULT NULL,
  `priority_id` int DEFAULT NULL,
  `defect_status_id` int DEFAULT NULL,
  `assigned_to` int DEFAULT NULL,
  `reported_by` int DEFAULT NULL,
  `reported_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `fixed_by` int DEFAULT NULL,
  `fix_date` datetime DEFAULT NULL,
  `resolution` text,
  `environment` varchar(255) DEFAULT NULL,
  `release_number` varchar(50) DEFAULT NULL,
  `module_id` int DEFAULT NULL,
  `submodule_id` int DEFAULT NULL,
  `comments` text,
  `attachments` text,
  `related_test_case` int DEFAULT NULL,
  `reopen_count` int DEFAULT '0',
  `defect_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`defect_id`),
  KEY `test_case_id` (`test_case_id`),
  KEY `assigned_to` (`assigned_to`),
  KEY `reported_by` (`reported_by`),
  KEY `fixed_by` (`fixed_by`),
  KEY `severity_id` (`severity_id`),
  KEY `priority_id` (`priority_id`),
  KEY `defect_status_id` (`defect_status_id`),
  KEY `module_id` (`module_id`),
  KEY `submodule_id` (`submodule_id`),
  CONSTRAINT `defects_ibfk_1` FOREIGN KEY (`test_case_id`) REFERENCES `testcases` (`test_case_id`),
  CONSTRAINT `defects_ibfk_2` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`user_id`),
  CONSTRAINT `defects_ibfk_3` FOREIGN KEY (`reported_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `defects_ibfk_4` FOREIGN KEY (`fixed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `defects_ibfk_5` FOREIGN KEY (`severity_id`) REFERENCES `severity` (`severity_id`),
  CONSTRAINT `defects_ibfk_6` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`priority_id`),
  CONSTRAINT `defects_ibfk_7` FOREIGN KEY (`defect_status_id`) REFERENCES `defect_status` (`defect_status_id`),
  CONSTRAINT `defects_ibfk_8` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`),
  CONSTRAINT `defects_ibfk_9` FOREIGN KEY (`submodule_id`) REFERENCES `submodules` (`submodule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defects`
--

LOCK TABLES `defects` WRITE;
/*!40000 ALTER TABLE `defects` DISABLE KEYS */;
/*!40000 ALTER TABLE `defects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-15 18:05:40
