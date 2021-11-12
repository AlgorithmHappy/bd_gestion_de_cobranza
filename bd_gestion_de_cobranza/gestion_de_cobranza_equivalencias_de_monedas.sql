CREATE DATABASE  IF NOT EXISTS `gestion_de_cobranza` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestion_de_cobranza`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_de_cobranza
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `equivalencias_de_monedas`
--

DROP TABLE IF EXISTS `equivalencias_de_monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equivalencias_de_monedas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `moneda_base` int NOT NULL,
  `moneda_a_convertir` int NOT NULL,
  `valor_unitario` decimal(13,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equivalencias_de_monedas_FK` (`moneda_base`),
  KEY `equivalencias_de_monedas_FK_1` (`moneda_a_convertir`),
  CONSTRAINT `equivalencias_de_monedas_FK` FOREIGN KEY (`moneda_base`) REFERENCES `monedas` (`id`),
  CONSTRAINT `equivalencias_de_monedas_FK_1` FOREIGN KEY (`moneda_a_convertir`) REFERENCES `monedas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equivalencias_de_monedas`
--

LOCK TABLES `equivalencias_de_monedas` WRITE;
/*!40000 ALTER TABLE `equivalencias_de_monedas` DISABLE KEYS */;
INSERT INTO `equivalencias_de_monedas` VALUES (1,1,2,0.04000),(2,1,3,0.05000),(3,2,1,23.53000),(4,2,3,1.15000),(5,3,1,20.00000),(6,3,2,0.86957),(7,3,3,1.00000);
/*!40000 ALTER TABLE `equivalencias_de_monedas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 18:12:12
