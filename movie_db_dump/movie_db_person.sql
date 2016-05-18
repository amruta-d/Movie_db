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
INSERT INTO `person` VALUES (0,'Chazelle','Sayre','Damien','','1985-01-19','Providence Rhode Island USA','','','','','','male\r'),(1,'Teller','Alexander','Miles','','1987-02-20','Downingtown Pennsylvania U.S.','','','','','','male\r'),(2,'Simmons','K','J','','1955-01-09','Grosse Pointe Michigan U.S.','','','','','','male\r'),(3,'Benoist','Marie','Melissa','','1988-10-04','Houston Texas U.S.','','','','','','female\r'),(4,'Darabont','Arpad','Frank','','1959-01-28','Montbéliard France','','','','','','male\r'),(5,'Robbins','Francis','Tim','','1958-10-16','West Covina California U.S.','Pound Ridge, New York','','','','','male\r'),(6,'Freeman','','Morgan','','1937-06-01','Memphis Tennessee U.S.','','','','','','male\r'),(7,'Gunton','','Bob','','1945-11-15','Santa Monica California U.S.','','','','','','male\r'),(8,'Coppola','Ford','Francis','','1939-04-07','Detroit Michigan U.S.','Napa Valley, California, U.S.','','','','','male\r'),(9,'Brando','','Marlon','','1924-04-03','Omaha Nebraska U.S.','','','','','','male\r'),(10,'Pacino','James','Al','','1940-04-25','Manhattan New York U.S.','','','','','','male\r'),(11,'Caan','Edmund','James','','1940-03-26','The Bronx New York U.S.','Beverly Hills, California, U.S.','','','','','male\r'),(12,'Nolan','Edward','Christopher','','1970-07-30','London England United Kingdom','','','','','','male\r'),(13,'Burstyn','','Ellen','','1932-12-07','Detroit Michigan U.S.','','','','','','female'),(14,'McConaughey','David','Matthew','','1969-11-04','Uvalde Texas United States','Austin, Texas','','','','','male\r'),(15,'Foy','Christine','Mackenzie','','2000-11-10','Los Angeles California U.S.','','','','','','female\r'),(16,'Mulroney','','Kieran','','1965-09-24','Alexandria Virginia United States','','','','','','male\r'),(17,'Kudrow','Valerie','Lisa','','1963-07-30','Los Angeles California U.S.','','','','','','female\r'),(18,'Daniels','Warren','Jeffrey','','1955-02-19','Athens Georgia U.S.','','','','','','male\r'),(19,'Reynolds','Rodney','Ryan','','1976-10-23','Vancouver British Columbia Canada','','','','','','male\r'),(20,'Stone','Jean','Emma','','1988-11-06','Scottsdale Arizona United States','Los Angeles','','','','','female\r'),(21,'Nakache','','Olivier','','0000-00-00','Suresnes','','','','','','male\r'),(22,'Toledano','','Eric','','0000-00-00','Paris France','','','','','','male\r'),(23,'Cluzet','','François','','1955-09-21','Paris France','','','','','','male\r'),(24,'Sy','','Omar','','1978-01-20','Trappes France','','','','','','male\r'),(25,'Ny','Le','Anne','','1962-12-16','Antony Hauts-de-Seine France','','','','','','female\r'),(26,'Abrahamson','','Lenny','','1966-11-30','Dublin Ireland','','','','','','male'),(27,'Larson','','Brie','','1989-10-01','Sacramento California United','','','','','','female\r'),(28,'Tremblay','','Jacob','','2006-10-05','Vancouver British Columbia Canada','','','','','','male\r'),(29,'Bridgers','','Sean','','1968-03-15','Chapel Hill NC','','','','','','male\r'),(30,'Miyazaki','','Hayao','','1941-01-05','Bunky? Tokyo Japan','','','','','','male\r'),(31,'Hiiragi','','Rumi','','1987-08-01','Tokyo Japan','','','','','','female\r'),(32,'Irino','','Miyu','','1988-02-19','Tokyo Japan','','','','','','male\r'),(33,'Natsuki','','Mari','','1952-05-02','Tokyo Japan','','','','','','female\r'),(34,'Takahata','','Isao','','1935-10-29','Ujiyamada Mie Prefecture Japan','','','','','','male\r'),(35,'Tatsumi','','Tsutomu','','0000-00-00','','','','','','','\r'),(36,'Shiraishi','','Ayano','','0000-00-00','','','','','','','\r'),(37,'Shinohara','','Yoshiko','','0000-00-00','','','','','','','\r'),(38,'Benigni','Remigio','Roberto','','1952-10-27','Manciano La Misericordia Castiglion Fiorentino Italy','','','','','','male\r'),(39,'Benigni','Remigio','Roberto','','1952-10-27','Manciano La Misericordia Castiglion Fiorentino Italy','','','','','','male\r'),(40,'Braschi','','Nicoletta','','1960-04-19','Cesena Italy','','','','','','female\r'),(41,'Cantarini','','Giorgio','','1992-04-12','Orvieto Italy','','','','','','male\r'),(42,'Sweetland','','Doug','','0000-00-00','State College PA','','','','','','male\r'),(43,'Sweetland','','Doug','','0000-00-00','State College PA','','','','','','male\r'),(44,'Gulager','Thompson','John','','1957-12-09','New York City','','','','','','male\r'),(45,'Getty','','Balthazar','','1975-01-22','Tarzana California U.S.','','','','','','male\r'),(46,'Rollins','','Henry','','1961-02-13','Washington D.C. United States','','','','','','male\r'),(47,'Rawat','','Navi','','1977-06-05','Malibu California U.S.A','','','','','','female\r'),(48,'Miyazaki','','Hayao','','1941-01-05','Bunky? Tokyo Japan','','','','','','male\r'),(49,'Crudup','Gaither','Billy','','1968-07-08','Manhasset New York U.S.','','','','','','male\r'),(50,'Thornton','Bob','Billy','','1955-08-04','Hot Springs Arkansas United States','','','','','','male\r'),(51,'Driver','Fiona','Minnie','','1970-01-31','St. Marylebone London England','Los Angeles, California, U.S.','','','','','female\r'),(52,'Coppola','Ford','Francis','','1939-04-07','Detroit Michigan U.S.','Napa Valley, California, U.S.','','','','','male\r'),(53,'Pacino','James','Al','','1940-04-25','Manhattan New York U.S.','','','','','','male\r'),(54,'Duvall','Selden','Robert','','1931-01-05','San Diego California U.S.','','','','','','male\r'),(55,'Keaton','','Diane','','1946-01-05','Los Angeles California U.S.','','','','','','female\r'),(56,'Docter','Hans','Pete','','1968-10-09','Bloomington Minnesota United States','','','','','','male\r'),(57,'Poehler','','Amy','','1971-09-16','Newton Massachusetts United States','','','','','','female\r'),(58,'Smith','','Phyllis','','1951-07-10','St. Louis Missouri U.S.','','','','','','female\r'),(59,'Kind','John','Richard','','1956-11-22','Trenton New Jersey U.S.','','','','','','male\r'),(60,'Gunn','','James','','1970-08-05','St. Louis Missouri United States','','','','','','male\r'),(61,'Pratt','Michael','Chris','','1979-06-21','Virginia Minnesota United States','','','','','','male\r'),(62,'Saldana','Yadira','Zoe','','1978-06-19','Paterson New Jersey U.S.','','','','','','female\r'),(63,'Bautista','Michael','Dave','','1969-01-18','Washington D.C. United States','','','','','','male\r'),(64,'Nolan','Edward','Christopher','','1970-07-30','London England United Kingdom','','','','','','male\r'),(65,'Bale','Charles Philip','Christian','','1974-01-30','Haverfordwest Pembrokeshire Wales UK','Los Angeles, California','','','','','male\r'),(66,'Ledger','Andrew','Heath','','1979-04-04','Perth Western Australia Australia','','','','','','male\r'),(67,'Eckhart','Edward','Aaron','','1968-03-12','Cupertino California U.S.','','','','','','male\r'),(68,'Fincher','Andrew Leo','David','','1962-08-28','Denver Colorado U.S.','','','','','','male\r'),(69,'Norton','Harrison','Edward','','1969-08-18','Boston Massachusetts United States','','','','','','male\r'),(70,'Pitt','','Brad','','1963-12-18','Shawnee Oklahoma U.S.','','','','','','male\r'),(71,'Loaf','','Meat','','1947-09-27','Dallas Texas U.S.','','','','','','male\r'),(72,'Spielberg','Allan','Steven','','1946-12-18','Cincinnati Ohio U.S.','Los Angeles, California, U.S.','','','','','male\r'),(73,'Neeson','John','Liam','','1952-06-07','Ballymena County Antrim Northern Ireland','','','','','','male\r'),(74,'Kingsley','','Ben','','1943-12-31','Snainton North Riding of Yorkshire England UK','','','','','','male\r'),(75,'Fiennes','Nathaniel Twisleton-Wykeham','Ralph','','1962-12-22','Ipswich Suffolk England','','','','','','male\r'),(76,'Lumet','Arthur','Sidney','','1924-06-25','Philadelphia Pennsylvania U.S.','Beverly Hills, California, U.S.','','','','','male\r'),(77,'Balsam','Henry','Martin','','1919-11-04','Bronx New York City New York U.S.','','','','','','male\r'),(78,'Fiedler','Donald','John','','1925-02-03','Platteville Wisconsin U.S.','','','','','','male\r'),(79,'Kobb','J','Lee','','1911-12-08','The Bronx New York City U.S.','','','','','','male\r');
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

-- Dump completed on 2016-05-17 21:55:22
