-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: recipe
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
-- Table structure for table `createdby`
--

DROP TABLE IF EXISTS `createdby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `createdby` (
  `username` varchar(30) NOT NULL,
  `recipe_id` int NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`username`,`recipe_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `createdby_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `createdby_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `createdby`
--

LOCK TABLES `createdby` WRITE;
/*!40000 ALTER TABLE `createdby` DISABLE KEYS */;
INSERT INTO `createdby` VALUES ('111',39,'2020-11-27'),('111',40,'2020-11-27'),('111',41,'2020-11-27'),('111',50,'2020-11-29'),('dd',42,'2020-11-27'),('dd',46,'2020-11-27'),('dd',47,'2020-11-27'),('dd',48,'2020-11-27'),('dd',49,'2020-11-27'),('king',8,'2020-11-22'),('king',10,'2020-11-22'),('king',11,'2020-11-22'),('king',12,'2020-11-22'),('king',13,'2020-11-22'),('king',14,'2020-11-22'),('king',15,'2020-11-22'),('king',16,'2020-11-22'),('king',17,'2020-11-22'),('king',19,'2020-11-22');
/*!40000 ALTER TABLE `createdby` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-11 20:36:38
