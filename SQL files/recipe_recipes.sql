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
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (6,'MOROCCAN CHICKEN','Wash hands with soap and water. In large skillet over medium high-heat, warm 2 tablespoons olive oil. Season leg quarters with ½ teaspoon salt and ½ teaspoon black pepper; orange quote icon do not rinse raw poultry.\nAdd leg quarters to pan, skin-side down. orange quote icon Wash hands with soap and water after handling uncooked chicken. Brown chicken, turning once, 8 to 10 minutes per side. Remove chicken to plate and drain off all but 2 tablespoons oil. Add eggplant to hot pan and cook, stirring, 5 minutes. Add remaining tablespoon olive oil, along with zucchini, onion and garlic. Cook 5 minutes, stirring occasionally.\nRaise heat to high and add white wine to pan, stirring to scrape up any browned bits. Add all other ingredients, except parsley, and place chicken legs in mixture. Bring to boil, reduce heat to medium-low, cover and simmer for 35 to 40 minutes or until cooked through and orange quote icon internal temperature reaches 165 °F on food thermometer. To serve, place some of the eggplant ragout onto plates, top with a leg quarter and sprinkle with parsley.'),(8,'SUPER SLAM eggs','Home style'),(10,'Hotpot. Hotpot ','Good vibes all around.'),(11,'Beef Tacos','Home made'),(12,'Shrimp Vermicelli and Garlic','Traditional pupusas from China'),(13,'Chinese Noodles','Best traditional Chinese foods'),(14,'Broccoli Salad','You won’t miss the bacon in this lightened-up take on classic broccoli salad.'),(15,'PUPUSAS','Traditional pupusas from EL Salvador'),(16,'Cheesy Ground Beef Tacos','Good vibes all around.'),(17,'Cheesy Ground Beef Tacos','Good vibes all around.'),(19,'Pizza',' Home made style'),(39,'chili fish','Spicy fish with chili oil'),(40,'Nice salad','GOOD SALAD WITH GOOD TASTE'),(41,'Curry chicken','Step 1\r\nHeat vegetable oil in a skillet over medium-high heat; cook and stir onion, tomato, garlic, curry powder, habanero pepper, and thyme until onion is golden, about 7 minutes. Stir in chicken and cook until chicken is lightly browned, about 5 minutes.\r\n\r\nStep 2\r\nPour water into the skillet, reduce heat to low; cover and simmer until chicken is no longer pink at the center, about 30 minutes. Season with salt.'),(42,'Mango pudding','Dissolve a packet of gelatin in boiled hot water.\r\nStir in some sugar and a pinch of salt.\r\nAdd in the milk or cream.\r\nMix in the mango puree.\r\nPour the mixture into 4 ramekins or small bowls.\r\nCover with saran wrap and chill in the fridge for 2 hours or until set.'),(43,'Test','TEST'),(46,'test2','test22222'),(47,'test3','testsetest'),(48,'test4','testestest'),(49,'sweet chicken','sweet chicken!!!!'),(50,'Cup noodles','Good to eat!'),(51,'French Fry','Fry potato chip.');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
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
