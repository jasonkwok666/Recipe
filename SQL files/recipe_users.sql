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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('','',NULL,NULL,'','null',NULL),('@@@','123','d2','213','213@11',NULL,NULL),('1','1',NULL,NULL,'j228@gmail.com','null',NULL),('111','111','111','111','213@11',NULL,NULL),('123123','213','qwe','sd','jasonkwok228@gmail.com',NULL,NULL),('2','2','2','2','213@11',NULL,NULL),('bbbbbbbb','zxcfqkh','Wu','Butler','898czxc@gmail.com','2131 54th ave','4159886532'),('cs157aaaaaa','222',NULL,NULL,'123@sda','null',NULL),('d','d','d','111','22@11',NULL,NULL),('dd','dd','d','d','213@11',NULL,NULL),('ddd','dd','d','d','213@11',NULL,NULL),('dddd','','d','d','213@11',NULL,NULL),('ddddd','d','d2','111','213@11',NULL,NULL),('dddddddd','qasdw','Lee','Yu','12sad@gmail.com','1241 42th ave','4159695486'),('gggggggg','zxcfqkh','Wu','Jamie','12zcwera@gmail.com','6591 54th ave','4159832156'),('gricelda','111',NULL,NULL,'123@as','null',NULL),('hhh','23',NULL,NULL,'jasonkwok228@gmail.com','null',NULL),('izeduvek','urmd3v2inb','Chen','Louis','8324sa@gmail.com','362 9th ave','415564874'),('jasonkwok','lol1234567','Guo','Jason','123@gmail.com','123 5th ave','415123456'),('jjjjjjjj','zxcfqkh','Octor','Han','124sadwqexv@gmail.com','9863 74th ave','4151463857'),('king','111','guo','jiaxiang','jasonkwok228@gmail.com',NULL,NULL),('llllllll','zxcqsqa','Lu','Maybe','azcqwe@gmail.com','6215 66th ave','4151654896'),('lmao','lol','wqe','asd','ds@sd',NULL,NULL),('lol','wqe','wqe','wqe','jasonkwok228@gmail.com',NULL,NULL),('lol123','23',NULL,NULL,'jaso22@gmail.com','223',NULL),('lol1231','23',NULL,NULL,'jaso22@gmail.com','223',NULL),('Mikewucs157a','123','wu','mike','qwe@qwe.com',NULL,NULL),('mmmmmmmm','qweasd','Zhu','Dylan','123aszqdg@gmail.com','9874 12th ave','4159635842'),('okuvadav','l5mh3edff3','Liu','Michael','12412@gmail.com','431 12th ave','415533456'),('oooooooo','zxcqwe','Lee','Mike','xzxcqw@gmail.com','119 3th ave','4159658741'),('qqqqqqqqq','asdwaz','Lee','Sin','124sadzz@gmail.com','9971 99th ave','4158965123'),('qweasdzxc','gfgsdfx','James','Lebron','masdhiwqe@gmail.com','125 1th ave','4159865423'),('r','r',NULL,NULL,'r@r','null',NULL),('recipe','888',NULL,NULL,'12@12','null',NULL),('test','123',NULL,NULL,'32@qq','null',NULL),('test11','11',NULL,NULL,'q@q','null',NULL),('test111','11',NULL,NULL,'q@q','null',NULL),('test123','11',NULL,NULL,'jasonkwok228@gmail.co','null',NULL),('test1232','11',NULL,NULL,'jasonkwok228@gmail.co','null',NULL),('udufifas','uhz0f6z24v','Wu','Kelvin','1412s12@gmail.com','623 34th ave','415564756'),('vbefgqw','asdqwxc','Kobe','Byrant','kobe@gmail.com','1321 1th ave','4155554121'),('z','z',NULL,NULL,'z@z','null',NULL),('zzzzzzzzz','wwwwww','Angela','Baby','9213s@gmail.com','364 65th ave','4159865316');
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

-- Dump completed on 2020-12-11 20:36:38
