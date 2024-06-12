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
-- Table structure for table `fighters`
--

DROP TABLE IF EXISTS `fighters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fighters` (
  `fighter_id` int NOT NULL AUTO_INCREMENT,
  `fighter_name` varchar(255) DEFAULT NULL,
  `record_id` int DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `weight_lb` int DEFAULT NULL,
  `height` decimal(2,1) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fighter_id`),
  KEY `record_id` (`record_id`),
  CONSTRAINT `fighters_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `record` (`Record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fighters`
--

LOCK TABLES `fighters` WRITE;
/*!40000 ALTER TABLE `fighters` DISABLE KEYS */;
INSERT INTO `fighters` VALUES (1,'Stipe Miocic',1,'1982-08-19',235,6.4,'USA'),(2,'Israel Adesanya',2,'1989-05-22',185,6.4,'Nigeria'),(3,'Kamuru Usman',3,'1987-05-13',170,6.0,'Nigeria'),(4,'Conner McGregor',4,'1988-06-14',145,5.9,'Ireland'),(5,'Dieveson Figureiredo',5,'1987-12-18',125,5.5,'Brazil'),(6,'Alex Perez',6,'1992-03-21',125,5.6,'USA'),(7,'Khabib Nurmagomedov',7,'1988-09-20',150,5.1,'Russia'),(8,'Paulo Costa',8,'1991-04-21',185,6.1,'Brazil'),(9,'Daniel Cormier',9,'1979-03-20',235,5.1,'USA'),(10,'Jorge Masvidal',10,'1984-11-20',170,5.1,'USA'),(11,'Amanda Nunes',11,'1988-05-20',145,5.8,'USA');
/*!40000 ALTER TABLE `fighters` ENABLE KEYS */;
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
