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
INSERT INTO `company` VALUES (1,'A24\r'),(2,'Alfran Productions\r'),(3,'Amblin Entertainment\r'),(4,'Atman Entertainment\r'),(5,'Blumhouse Productions\r'),(6,'Bold Films\r'),(7,'Bulletproof Cupid\r'),(8,'Canal Plus\r'),(9,'Castle Rock Entertainment\r'),(10,'Cecchi Gori Group Tiger Cinematografica\r'),(11,'Chaocorp\r'),(12,'CinéCinéma\r'),(13,'DC Comics\r'),(14,'Disney\r'),(15,'Duperele Films\r'),(16,'Element Pictures\r'),(17,'Fox 2000 Pictures\r'),(18,'Gaumont\r'),(19,'Knickerbocker Films\r'),(20,'Legendary Pictures\r'),(21,'Linson Films\r'),(22,'Lynda Obst Productions\r'),(23,'Marvel Enterprises\r'),(24,'Marvel Studios\r'),(25,'Melampo Cinematografica\r'),(26,'Moving Picture Company (MPC)\r'),(27,'Nibariki\r'),(28,'\"Nippon Television Network (NTV),\"\r\n29,No Trace Camping\r\n30,Orion-Nova Productions\r\n31,Paramount Pictures\r\n32,Pixar Animation Studios\r\n33,Quad Productions\r\n34,Regency Enterprises\r\n35,Revolution Sun Studios\r\n36,Right of Way Films\r\n37,Shinchosha Company\r\n38');
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

-- Dump completed on 2016-05-17 21:55:22
