-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie_db
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'A24'),(2,'Alfran Productions'),(3,'Amblin Entertainment'),(4,'Atman Entertainment'),(5,'Blumhouse Productions'),(6,'Bold Films'),(7,'Bulletproof Cupid'),(8,'Canal Plus'),(9,'Castle Rock Entertainment'),(10,'Cecchi Gori Group Tiger Cinematografica'),(11,'Chaocorp'),(12,'CinéCinéma'),(13,'DC Comics'),(14,'Disney'),(15,'Duperele Films'),(16,'Element Pictures'),(17,'Fox 2000 Pictures'),(18,'Gaumont'),(19,'Knickerbocker Films'),(20,'Legendary Pictures'),(21,'Linson Films'),(22,'Lynda Obst Productions'),(23,'Marvel Enterprises'),(24,'Marvel Studios'),(25,'Melampo Cinematografica'),(26,'Moving Picture Company (MPC)'),(27,'Nibariki'),(28,'Nippon Television Network (NTV),'),(29,'No Trace Camping'),(30,'Orion-Nova Productions'),(31,'Paramount Pictures'),(32,'Pixar Animation Studios'),(33,'Quad Productions'),(34,'Regency Enterprises'),(35,'Revolution Sun Studios'),(36,'Right of Way Films'),(37,'Shinchosha Company'),(38,'Studio Ghibli'),(39,'Syncopy'),(40,'Taurus Film'),(41,'Ten Films'),(42,'TF1'),(43,'TF1 Films Production'),(44,'The Coppola Company'),(45,'Universal Pictures'),(46,'Walt Disney Animation Studios'),(47,'Walt Disney Pictures'),(48,'Warner Bros.'),(49,'Lucas Film'),(50,'Bad Robot'),(51,'Appian Way'),(52,'Lionsgate');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-18 23:06:59
