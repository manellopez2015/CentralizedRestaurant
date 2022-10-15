-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lsrestaurant
-- ------------------------------------------------------
-- Server version	5.7.21-log
DROP DATABASE IF EXISTS LSRestaurant;
CREATE DATABASE LSRestaurant;
USE LSRestaurant;

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
-- Table structure for table `comanda`
--

DROP TABLE IF EXISTS `comanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comanda` (
  `id_comanda` int(11) NOT NULL AUTO_INCREMENT,
  `nom_plat` varchar(255) DEFAULT NULL,
  `usuari` varchar(255) DEFAULT NULL,
  `servit` tinyint(1) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_comanda`),
  KEY `usuari` (`usuari`),
  KEY `nom_plat` (`nom_plat`),
  CONSTRAINT `comanda_ibfk_1` FOREIGN KEY (`usuari`) REFERENCES `reserva` (`usuari`),
  CONSTRAINT `comanda_ibfk_2` FOREIGN KEY (`nom_plat`) REFERENCES `plat` (`nom_plat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comanda`
--

LOCK TABLES `comanda` WRITE;
/*!40000 ALTER TABLE `comanda` DISABLE KEYS */;
INSERT INTO `comanda` VALUES (1,'Amanida de pasta','Alex',1,'10:36:26','2018-05-24');
/*!40000 ALTER TABLE `comanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plat`
--

DROP TABLE IF EXISTS `plat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plat` (
  `nom_plat` varchar(255) NOT NULL,
  `preu` double DEFAULT NULL,
  `unitats_disponibles` int(11) DEFAULT NULL,
  `unitats_gastades` int(11) DEFAULT NULL,
  PRIMARY KEY (`nom_plat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plat`
--

LOCK TABLES `plat` WRITE;
/*!40000 ALTER TABLE `plat` DISABLE KEYS */;
INSERT INTO `plat` VALUES ('Amanida Cesar',7,23,0),('Amanida de pasta',7,24,0),('Amanida verda',7,25,0),('Arròs a la cubana',10,10,0),('Bistec de vedella',11,30,0),('Croquetes de carn ',5,21,0),('Croquetes de pollastre',5,23,0),('Entrecot de vedella',17,20,0),('Escalopa de vedella',10,27,0),('Espaguetis a la carbonara',11,20,0),('Filet de vedella',19,10,0),('Gambes de Palamós',21,10,0),('Llenguado al forn',18,10,0),('Macarrons amb tomàquet',11,19,0),('Paella',12,40,0),('Patates braves',5,10,0),('Pizza Barbacoa',12,15,0),('Pizza Funghi',11,15,0),('Pizza Prosciuto',10,20,0),('Pizza Quatre Estacions',12,15,0),('Sopa de pollastre',9,20,0);
/*!40000 ALTER TABLE `plat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `usuari` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `n_comensals` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_taula` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuari`),
  KEY `id_taula` (`id_taula`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_taula`) REFERENCES `taula` (`id_taula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES ('Alberto','XEWkr8',12,'2018-05-27','14:30:00',14),('Alex','pass',1,'2018-05-24','14:30:00',3),('Guim','C8JVWg',6,'2018-05-28','21:30:00',8),('Manel','WN3RdF',4,'2018-05-28','21:30:00',6),('Marc','bkUj7j',4,'2018-05-26','14:30:00',6),('Marialejandra','svKtul',3,'2018-05-28','19:30:00',5),('Messi','tnfPij',10,'2018-05-23','14:30:00',12),('Paula','tP6zz1',3,'2018-05-29','21:30:00',5),('Pol','Jrx1sx',2,'2018-05-25','13:00:00',1),('Puigdemont','IzbR10',1,'2018-05-24','19:30:00',3),('Samantha','geObGU',1,'2018-05-26','13:00:00',3);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taula`
--

DROP TABLE IF EXISTS `taula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taula` (
  `id_taula` int(11) NOT NULL AUTO_INCREMENT,
  `num_cadires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_taula`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taula`
--

LOCK TABLES `taula` WRITE;
/*!40000 ALTER TABLE `taula` DISABLE KEYS */;
INSERT INTO `taula` VALUES (1,2),(2,2),(3,1),(4,2),(5,3),(6,4),(7,5),(8,6),(9,7),(10,8),(11,9),(12,10),(13,11),(14,12),(15,13),(16,14);
/*!40000 ALTER TABLE `taula` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-20 10:39:05
