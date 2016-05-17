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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `current_residence` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `active_status` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `gender` char(20) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Chazelle','Sayre','Damien','','1985-01-19','Providence Rhode Island USA\r',NULL,NULL,NULL,NULL,NULL,''),(2,'Teller','Alexander','Miles','','1987-02-20','Downingtown Pennsylvania U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(3,'Simmons','Kimble','Jonathan','','2055-01-09','Grosse Pointe Michigan U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(4,'Benoist','Marie','Melissa','','1988-10-04','Houston Texas U.S.','','','','',NULL,''),(5,'Darabont','Arpad','Frank','','2059-01-28','Montbéliard France\r',NULL,NULL,NULL,NULL,NULL,''),(6,'Robbins','Francis','Tim','','2058-10-16','West Covina California U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(7,'Freeman','','Morgan','','2037-06-01','Memphis Tennessee U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(8,'Gunton','','Bob','','2045-11-15','Santa Monica California U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(9,'Coppola','Ford','Francis','','2039-04-07','Detroit Michigan U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(10,'Brando','','Marlon','','2024-04-03','Omaha Nebraska U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(11,'Pacino','James','Alfredo','','2040-04-25','Manhattan New York U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(12,'Caan','','James','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(13,'Nolan','','Christopher','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(14,'Burstyn','','Ellen','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(15,'McConaughey','','Matthew','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(16,'Foy','','Mackenzie','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(17,'Mulroney','','Kieran','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(18,'Mulroney','','Michele','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(19,'Kudrow','','Lisa','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(20,'Daniels','','Jeff','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(21,'Reynolds','','Ryan','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(22,'Stone','','Emma','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(23,'Nakache','','Olivier','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(24,'Toledano','','Eric','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(25,'Cluzet','','François','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(26,'Sy','','Omar','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(27,'Ny','Le','Anne','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(28,'Abrahamson','','Lenny','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(29,'Larson','','Brie','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(30,'Tremblay','','Jacob','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(31,'Bridgers','','Sean','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(32,'Miyazaki','','Hayao','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(33,'Hiiragi','','Rumi','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(34,'Irino','','Miyu','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(35,'Natsuki','','Mari','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(36,'Takahata','','Isao','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(37,'Tatsumi','','Tsutomu','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(38,'Shiraishi','','Ayano','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(39,'Shinohara','','Yoshiko','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(40,'Benigni','','Roberto','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(41,'Benigni','','Roberto','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(42,'Braschi','','Nicoletta','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(43,'Cantarini','','Giorgio','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(44,'Sweetland','','Doug','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(45,'Sweetland','','Doug','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(46,'Gulager','','John','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(47,'Getty','','Balthazar','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(48,'Rollins','','Henry','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(49,'Rawat','','Navi','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(50,'Miyazaki','','Hayao','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(51,'Crudup','','Billy','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(52,'Thornton','Bob','Billy','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(53,'Driver','','Minnie','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(54,'Coppola','Ford','Francis','','2039-04-07','Detroit Michigan U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(55,'Pacino','James','Alfredo','','2040-04-25','Manhattan New York U.S.\r',NULL,NULL,NULL,NULL,NULL,''),(56,'Duvall','','Robert','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(57,'Keaton','','Diane','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(58,'Docter','','Pete','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(59,'Poehler','','Amy','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(60,'Smith','','Phyllis','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(61,'Kind','','Richard','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(62,'Gunn','','James','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(63,'Pratt','','Chris','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(64,'Saldana','','Zoe','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(65,'Bautista','','Dave','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(66,'Nolan','','Christopher','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(67,'Bale','','Christian','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(68,'Ledger','','Heath','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(69,'Eckhart','','Aaron','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(70,'Fincher','','David','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(71,'Norton','','Edward','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(72,'Pitt','','Brad','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(73,'Loaf','','Meat','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(74,'Spielberg','','Steven','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(75,'Neeson','','Liam','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(76,'Kingsley','','Ben','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(77,'Fiennes','','Ralph','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(78,'Lumet','','Sidney','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(79,'Balsam','','Martin','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(80,'Fiedler','','John','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,''),(81,'Kobb','J','Lee','','0000-00-00','\r',NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-17  9:47:58
