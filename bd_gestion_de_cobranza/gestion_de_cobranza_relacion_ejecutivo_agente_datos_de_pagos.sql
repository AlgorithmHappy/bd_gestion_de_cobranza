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
-- Table structure for table `relacion_ejecutivo_agente_datos_de_pagos`
--

DROP TABLE IF EXISTS `relacion_ejecutivo_agente_datos_de_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacion_ejecutivo_agente_datos_de_pagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ejecutivo` int NOT NULL,
  `agente` int NOT NULL,
  `datos_de_pago` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relacion_ejecutivo_agente_datos_de_pagos_FK` (`ejecutivo`),
  KEY `relacion_ejecutivo_agente_datos_de_pagos_FK_1` (`agente`),
  KEY `relacion_ejecutivo_agente_datos_de_pagos_FK_2` (`datos_de_pago`),
  CONSTRAINT `relacion_ejecutivo_agente_datos_de_pagos_FK` FOREIGN KEY (`ejecutivo`) REFERENCES `ejecutivos` (`id`),
  CONSTRAINT `relacion_ejecutivo_agente_datos_de_pagos_FK_1` FOREIGN KEY (`agente`) REFERENCES `agentes` (`id`),
  CONSTRAINT `relacion_ejecutivo_agente_datos_de_pagos_FK_2` FOREIGN KEY (`datos_de_pago`) REFERENCES `datos_de_pagos` (`fianza`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacion_ejecutivo_agente_datos_de_pagos`
--

LOCK TABLES `relacion_ejecutivo_agente_datos_de_pagos` WRITE;
/*!40000 ALTER TABLE `relacion_ejecutivo_agente_datos_de_pagos` DISABLE KEYS */;
INSERT INTO `relacion_ejecutivo_agente_datos_de_pagos` VALUES (8,1,1,'1954-0000'),(9,2,1,'8524-0000'),(10,3,2,'1584-0000'),(11,4,3,'1845-0000'),(12,3,3,'9711-0457'),(13,1,2,'6587-0457');
/*!40000 ALTER TABLE `relacion_ejecutivo_agente_datos_de_pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 18:12:11
