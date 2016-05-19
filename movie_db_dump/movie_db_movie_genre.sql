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
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genre` (
  `movie_genre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (0,13,4),(1,13,6),(2,13,11),(3,8,4),(4,8,6),(5,8,7),(6,8,11),(7,17,1),(8,17,3),(9,17,10),(10,17,13),(11,3,1),(12,3,3),(13,14,1),(14,14,3),(15,2,1),(16,2,3),(17,20,1),(18,19,1),(19,19,12),(20,19,14),(21,18,1),(22,10,1),(23,10,9),(24,26,4),(25,26,5),(26,26,13),(27,9,1),(28,9,6),(29,9,7),(30,9,12),(31,11,6),(32,11,7),(33,6,1),(34,6,9),(35,33,4),(36,33,5),(37,33,10),(38,33,13),(39,24,4),(40,24,5),(41,24,13),(42,35,4),(43,35,5),(44,35,13),(45,16,4),(46,16,5),(47,16,11),(48,36,4),(49,36,5),(50,36,10),(51,38,1),(52,38,4),(53,38,13),(54,29,4),(55,29,5),(56,29,10),(57,29,13),(58,5,6),(59,5,7),(60,5,8),(61,23,4),(62,23,5),(63,23,11),(64,23,13),(65,15,6),(66,15,7),(67,15,9),(68,4,1),(69,4,1),(70,4,4),(71,4,4),(72,4,5),(73,4,5),(74,25,4),(75,25,11),(76,25,13),(77,1,1),(78,1,2),(79,32,4),(80,32,5),(81,32,11),(82,32,13),(83,7,1),(84,7,10),(85,34,4),(86,34,6),(87,34,7),(88,34,9),(89,21,5),(90,21,10),(91,21,13),(92,27,1),(93,27,4),(94,27,11),(95,28,1),(96,28,4),(97,28,10),(98,40,1),(99,40,4),(100,40,11),(101,40,13),(102,37,4),(103,37,9),(104,12,1),(105,12,6),(106,12,7),(107,12,8),(108,12,9),(109,22,4),(110,22,8),(111,22,9),(112,22,13),(113,39,1);
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
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
