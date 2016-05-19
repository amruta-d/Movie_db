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
-- Table structure for table `company_movie`
--

DROP TABLE IF EXISTS `company_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_movie` (
  `company_movie_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`company_movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_movie`
--

LOCK TABLES `company_movie` WRITE;
/*!40000 ALTER TABLE `company_movie` DISABLE KEYS */;
INSERT INTO `company_movie` VALUES (0,13,27),(1,13,28),(2,13,38),(3,8,38),(4,17,13),(5,17,20),(6,17,39),(7,17,48),(8,3,2),(9,3,31),(10,14,31),(11,14,44),(12,2,9),(13,20,30),(14,19,3),(15,19,45),(16,18,4),(17,18,17),(18,18,19),(19,18,21),(20,18,34),(21,18,40),(22,10,10),(23,10,25),(24,26,24),(25,9,37),(26,9,38),(27,11,32),(28,30,8),(29,6,11),(30,6,12),(31,6,18),(32,6,33),(33,6,41),(34,6,42),(35,6,43),(36,33,31),(37,24,24),(38,35,24),(39,16,7),(40,16,23),(41,16,24),(42,16,26),(43,16,35),(44,36,52),(45,38,52),(46,29,20),(47,29,45),(48,5,14),(49,23,49),(50,23,50),(51,15,32),(52,15,47),(53,4,20),(54,4,20),(55,4,22),(56,4,31),(57,4,31),(58,4,39),(59,4,48),(60,4,48),(61,25,13),(62,25,48),(63,1,5),(64,1,6),(65,1,36),(66,32,24),(67,7,1),(68,7,15),(69,7,16),(70,7,29),(71,34,46),(72,34,47),(73,21,24),(74,27,47),(75,28,51),(76,40,45),(77,37,52),(78,12,46),(79,22,17),(80,22,23),(81,39,48);
/*!40000 ALTER TABLE `company_movie` ENABLE KEYS */;
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
