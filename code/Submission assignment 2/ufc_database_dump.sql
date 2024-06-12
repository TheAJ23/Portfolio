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

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'260','UFC APEX','USA'),(2,'259','UFC APEX','USA'),(3,'258','UFC APEX','USA'),(4,'257','Yas Bay Arena','United Arab Emirates'),(5,'256','UFC APEX','USA'),(6,'255','UFC APEX','USA'),(7,'254','Yas Bay Arena','United Arab Emirates'),(8,'253','Yas Bay Arena','United Arab Emirates'),(9,'252','UFC APEX','USA'),(10,'251','Yas Bay Arena','United Arab Emirates'),(11,'250','UFC APEX','USA');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `Record_id` int NOT NULL AUTO_INCREMENT,
  `wins` int DEFAULT NULL,
  `losses` int DEFAULT NULL,
  `draws` int DEFAULT NULL,
  PRIMARY KEY (`Record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (1,20,4,0),(2,20,1,0),(3,18,1,0),(4,22,5,0),(5,20,1,1),(6,24,6,0),(7,29,0,0),(8,13,1,0),(9,22,3,0),(10,35,14,0),(11,21,4,0);
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usa_fighters`
--

DROP TABLE IF EXISTS `usa_fighters`;
/*!50001 DROP VIEW IF EXISTS `usa_fighters`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usa_fighters` AS SELECT 
 1 AS `fighter_name`,
 1 AS `nationality`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `usa_fighters`
--

/*!50001 DROP VIEW IF EXISTS `usa_fighters`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usa_fighters` AS select `fighters`.`fighter_name` AS `fighter_name`,`fighters`.`nationality` AS `nationality` from `fighters` where (`fighters`.`nationality` = 'USA') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17  8:08:28
