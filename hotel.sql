-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: Hotel
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2

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
-- Table structure for table `Bedroms`
--

DROP TABLE IF EXISTS `Bedroms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bedroms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `floors_id` int(10) unsigned NOT NULL,
  `floors_houses_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `floors_id` (`floors_id`),
  CONSTRAINT `floors_id` FOREIGN KEY (`floors_id`) REFERENCES `Floors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bedroms`
--

LOCK TABLES `Bedroms` WRITE;
/*!40000 ALTER TABLE `Bedroms` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bedroms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Floors`
--

DROP TABLE IF EXISTS `Floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE cp1251_ukrainian_ci DEFAULT NULL,
  `houses_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `houses_id` (`houses_id`),
  CONSTRAINT `houses_id` FOREIGN KEY (`houses_id`) REFERENCES `Houses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_ukrainian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Floors`
--

LOCK TABLES `Floors` WRITE;
/*!40000 ALTER TABLE `Floors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Houses`
--

DROP TABLE IF EXISTS `Houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Houses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE cp1251_ukrainian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_ukrainian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Houses`
--

LOCK TABLES `Houses` WRITE;
/*!40000 ALTER TABLE `Houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Occupants`
--

DROP TABLE IF EXISTS `Occupants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Occupants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE cp1251_ukrainian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_ukrainian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Occupants`
--

LOCK TABLES `Occupants` WRITE;
/*!40000 ALTER TABLE `Occupants` DISABLE KEYS */;
/*!40000 ALTER TABLE `Occupants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Occupants_has_Bedrooms`
--

DROP TABLE IF EXISTS `Occupants_has_Bedrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Occupants_has_Bedrooms` (
  `occupants_id` int(10) unsigned NOT NULL,
  `bedrooms_id` int(10) unsigned NOT NULL,
  `bedrooms_floors_id` int(10) unsigned NOT NULL,
  `bedrooms_floors_houses_id` int(10) unsigned NOT NULL,
  KEY `occupants_id` (`occupants_id`),
  KEY `bedrooms_id` (`bedrooms_id`),
  CONSTRAINT `Occupants_has_Bedrooms_ibfk_1` FOREIGN KEY (`occupants_id`) REFERENCES `Occupants` (`id`),
  CONSTRAINT `Occupants_has_Bedrooms_ibfk_2` FOREIGN KEY (`bedrooms_id`) REFERENCES `Bedroms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_ukrainian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Occupants_has_Bedrooms`
--

LOCK TABLES `Occupants_has_Bedrooms` WRITE;
/*!40000 ALTER TABLE `Occupants_has_Bedrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `Occupants_has_Bedrooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26  3:41:33
