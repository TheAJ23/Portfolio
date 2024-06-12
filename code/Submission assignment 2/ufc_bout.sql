-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: ufc
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `bout`
--

DROP TABLE IF EXISTS `bout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bout` (
  `fight_id` int NOT NULL AUTO_INCREMENT,
  `fighter_id` int DEFAULT NULL,
  `opponent` char(25) DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `result` varchar(4) DEFAULT NULL,
  `round` int DEFAULT NULL,
  `finish` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fight_id`),
  KEY `fighter_id` (`fighter_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `bout_ibfk_1` FOREIGN KEY (`fighter_id`) REFERENCES `fighters` (`fighter_id`),
  CONSTRAINT `bout_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bout`
--

LOCK TABLES `bout` WRITE;
/*!40000 ALTER TABLE `bout` DISABLE KEYS */;
INSERT INTO `bout` VALUES (1,1,'Francis Ngannou',1,'Loss',2,'KO Punch'),(2,2,'Jan Blachowics',2,'Loss',5,'Unanimous Decision'),(3,3,'Gilbert Burns',3,'Win',3,'KO Punches'),(4,4,'Dustin Poirer',4,'Loss',2,'KO Punches'),(5,5,'Brandon Moreno',5,'Draw',5,'Majority Decision'),(6,6,'Dieveson Figureiredo',6,'Loss',1,'SUB Guillotine Choke'),(7,7,'Justin Gaethje',7,'Win',2,'SUB Triangle Choke'),(8,8,'Israel Adesanya',8,'Loss',2,'KO Punch'),(9,9,'Stipe Miocic',9,'Win',5,'Unanimous Decision'),(10,10,'Kamuru Usman',10,'Loss',5,'Unanimous Decision'),(11,11,'Felicia Spencer',11,'Win',5,'Unanimous Decision');
/*!40000 ALTER TABLE `bout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-10 13:29:05
