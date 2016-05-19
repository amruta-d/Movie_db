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
-- Table structure for table `movie_person_role`
--

DROP TABLE IF EXISTS `movie_person_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_person_role` (
  `movie_person_role_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_person_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_person_role`
--

LOCK TABLES `movie_person_role` WRITE;
/*!40000 ALTER TABLE `movie_person_role` DISABLE KEYS */;
INSERT INTO `movie_person_role` VALUES (0,1,0,1),(1,1,1,0),(2,1,2,0),(3,1,3,0),(4,2,4,1),(5,2,5,0),(6,2,6,0),(7,2,7,0),(8,3,8,1),(9,14,8,1),(10,3,9,0),(11,3,10,0),(12,14,10,0),(13,3,11,0),(14,17,12,1),(15,4,12,1),(16,4,13,0),(17,4,14,0),(18,4,15,0),(19,5,16,1),(20,5,18,0),(21,5,19,0),(22,5,20,0),(23,22,20,0),(24,5,21,0),(25,6,22,1),(26,6,23,1),(27,6,24,0),(28,6,25,0),(29,6,26,0),(30,7,27,1),(31,7,28,0),(32,7,29,0),(33,7,30,0),(34,13,31,1),(35,8,31,1),(36,8,32,0),(37,8,33,0),(38,8,34,0),(39,9,35,1),(40,9,36,0),(41,9,37,0),(42,9,38,0),(43,10,39,1),(44,10,39,0),(45,10,40,0),(46,10,41,0),(47,11,42,1),(48,11,42,0),(49,12,43,1),(50,12,44,0),(51,12,45,0),(52,12,46,0),(53,13,47,0),(54,13,48,0),(55,13,49,0),(56,14,50,0),(57,14,51,0),(58,15,52,1),(59,15,53,0),(60,15,54,0),(61,15,55,0),(62,16,56,1),(63,16,57,0),(64,29,57,0),(65,16,58,0),(66,16,59,0),(67,17,60,0),(68,17,61,0),(69,17,62,0),(70,18,63,1),(71,18,64,0),(72,18,65,0),(73,18,66,0),(74,19,67,1),(75,19,68,0),(76,19,69,0),(77,27,69,0),(78,19,70,0),(79,20,71,1),(80,20,72,0),(81,20,73,0),(82,20,74,0),(83,24,75,1),(84,21,75,1),(85,24,76,0),(86,21,76,0),(87,21,77,0),(88,24,78,0),(89,21,78,0),(90,22,79,1),(91,22,80,0),(92,22,81,0),(93,23,82,1),(94,23,83,0),(95,23,84,0),(96,23,85,0),(97,24,86,0),(98,25,87,1),(99,25,88,0),(100,25,89,0),(101,25,90,0),(102,26,91,1),(103,26,92,0),(104,26,93,0),(105,27,94,1),(106,27,95,0),(107,27,96,0),(108,28,97,1),(109,28,98,0),(110,30,99,0),(111,28,99,0),(112,28,100,0),(113,29,101,1),(114,29,102,0),(115,29,103,0),(116,30,104,1),(117,30,105,0),(118,40,105,0),(119,30,106,0),(120,32,107,1),(121,32,108,0),(122,32,109,0),(123,36,110,0),(124,32,110,0),(125,33,111,1),(126,33,112,0),(127,33,113,0),(128,33,114,0),(129,34,115,1),(130,34,116,1),(131,34,117,0),(132,34,118,0),(133,35,119,1),(134,35,120,0),(135,35,121,0),(136,35,122,0),(137,36,123,1),(138,38,123,1),(139,36,124,0),(140,38,124,0),(141,36,125,0),(142,38,125,0),(143,37,126,1),(144,37,127,0),(145,37,128,0),(146,37,129,0),(147,39,130,1),(148,39,131,0),(149,39,132,0),(150,39,133,0),(151,40,134,1),(152,40,135,0),(153,40,136,0);
/*!40000 ALTER TABLE `movie_person_role` ENABLE KEYS */;
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
