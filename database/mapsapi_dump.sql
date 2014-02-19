CREATE DATABASE  IF NOT EXISTS `mapsapi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mapsapi`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: mapsapi
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Cuauhtemoc'),(2,'Benito Juarez'),(3,'Álvaro Obregón'),(4,'Miguel Hidalgo'),(5,'Iztapalapa');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `description` text,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `township_id_idx` (`area_id`),
  CONSTRAINT `area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Sucursal 1','Descripción de sucursal 1',-31.397,151.644,2),(2,'Sucursal 2','Descripción de sucursal 2',-32.397,152.644,5),(3,'Sucursal 3','Descripción de sucursal 3',-33.397,153.644,1),(4,'Sucursal 4','Descripción de sucursal 4',-34.397,154.644,3),(5,'Sucursal 5','Descripción de sucursal 5',-35.397,155.644,4),(6,'Sucursal 6','Descripción de sucursal 6',-36.397,156.644,2),(7,'Sucursal 7','Descripción de sucursal 7',-37.397,157.644,5),(8,'Sucursal 8','Descripción de sucursal 8',-38.397,158.644,1),(9,'Sucursal 9','Descripción de sucursal 9',-39.397,159.644,3),(10,'Sucursal 10','Descripción de sucursal 10',-40.397,160.644,4),(11,'Sucursal 11','Descripción de sucursal 11',-41.397,161.644,2),(12,'Sucursal 12','Descripción de sucursal 12',-42.397,162.644,5);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-19  7:56:16
