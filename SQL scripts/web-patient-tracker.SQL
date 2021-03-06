CREATE DATABASE  IF NOT EXISTS `web_patient_tracker` /*!40100 DEFAULT CHARACTER SET latin1 */;\
USE `web_patient_tracker`;\
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)\
--\
-- Host: 127.0.0.1    Database: web_customer_tracker\
-- ------------------------------------------------------\
-- Server version	5.6.16\
\
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;\
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;\
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;\
/*!40101 SET NAMES utf8 */;\
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;\
/*!40103 SET TIME_ZONE='+00:00' */;\
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;\
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;\
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;\
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;\
\
--\
-- Table structure for table `patient`\
--\
\
DROP TABLE IF EXISTS `patient`;\
/*!40101 SET @saved_cs_client     = @@character_set_client */;\
/*!40101 SET character_set_client = utf8 */;\
CREATE TABLE `patient` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `first_name` varchar(45) DEFAULT NULL,\
  `last_name` varchar(45) DEFAULT NULL,\
  `email` varchar(45) DEFAULT NULL,\
  PRIMARY KEY (`id`)\
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;\
/*!40101 SET character_set_client = @saved_cs_client */;\
\
--\
-- Dumping data for table `patient`\
--\
\
LOCK TABLES `patient` WRITE;\
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;\
\
INSERT INTO `customer` VALUES \
	(1,\'92Jesus\'92,\'92Dominguez\'92,\'92jesus@gmail.com'),\
	(2,\'92Lorenzo\'92,\'92Lanari\'92,\'92lorenzo@gmail.com'),\
	(3,\'92Martin\'92,\'92Chapman\'92,\'92martin@gmail.com'),\
	(4,\'92Elliot\'92,\'92Fairweather\'92,\'92elliot@gmail.com'),\
	(5,\'92Vasa\'92,\'92Curcin\'92,\'92vasa@gmail.com');\
\
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;\
UNLOCK TABLES;\
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;\
\
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;\
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;\
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;\
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;\
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;\
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;\
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;\
}
