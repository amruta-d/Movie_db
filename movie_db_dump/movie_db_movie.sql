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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `release_year` int(5) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `imdb_rating` decimal(2,1) DEFAULT NULL,
  `movie_language` char(255) DEFAULT NULL,
  `country` char(255) DEFAULT NULL,
  `duration` double DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Whiplash',2014,'2014-10-10','','',8.4,'en','United States of America',105),(2,'The Shawshank Redemption',1994,'1994-09-10','','',8.3,'en','United States of America',142),(3,'The Godfather',1972,'1972-03-15','','',8.2,'en','United States of America',175),(4,'Interstellar',2014,'2014-11-05','','',8.2,'en','Canada, United States of America, United Kingdom',169),(5,'Paperman',2012,'2012-11-02','','',8.1,'en','United States of America',7),(6,'Intouchables',2011,'2011-11-02','','',8.1,'fr','France',112),(7,'Room',2015,'2015-10-16','','',8.1,'en','Canada, Ireland',117),(8,'Spirited Away',2001,'2001-07-20','','',8.1,'ja','Japan',125),(9,'Grave of the Fireflies',1988,'1988-04-16','','',8.1,'ja','Japan',89),(10,'Life Is Beautiful',1997,'1997-12-20','','',8.1,'it','Italy',116),(11,'Presto',2008,'2008-06-18','','',8.1,'en','United States of America',5),(12,'Feast',2014,'2014-11-07','','',8.1,'en','United States of America',6),(13,'Princess Mononoke',1997,'1997-07-12','','',8.1,'ja','Japan',134),(14,'The Godfather: Part II',1974,'1974-12-20','','',8.1,'en','United States of America',200),(15,'Inside Out',2015,'2015-06-09','','',8.0,'en','United States of America',94),(16,'Guardians of the Galaxy',2014,'2014-07-30','','',8.0,'en','United Kingdom, United States of America',121),(17,'The Dark Knight',2008,'2008-07-16','','',8.0,'en','United Kingdom, United States of America',152),(18,'Fight Club',1999,'1999-10-14','','',8.0,'en','Germany, United States of America',139),(19,'Schindler\'s List',1993,'1993-11-29','','',8.0,'en','United States of America',195),(20,'12 Angry Men',1957,'1957-03-25','','',8.0,'en','United States of America',96),(21,'Captain America: Civil War',2016,'2016-04-27','','',6.9,'en','United States of America',146);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
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
