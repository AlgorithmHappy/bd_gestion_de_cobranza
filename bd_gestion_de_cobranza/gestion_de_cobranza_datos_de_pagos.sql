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
-- Table structure for table `datos_de_pagos`
--

DROP TABLE IF EXISTS `datos_de_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_de_pagos` (
  `fianza` varchar(9) NOT NULL,
  `movimiento` int NOT NULL,
  `fiado` int NOT NULL,
  `antiguedad` int NOT NULL,
  `dias_vencimiento` int NOT NULL,
  `importe` decimal(12,2) NOT NULL,
  `moneda` int NOT NULL,
  `color` int NOT NULL,
  `oficina` int NOT NULL,
  PRIMARY KEY (`fianza`),
  KEY `datos_de_pagos_FK` (`movimiento`),
  KEY `datos_de_pagos_FK_1` (`fiado`),
  KEY `datos_de_pagos_FK_2` (`moneda`),
  KEY `datos_de_pagos_FK_3` (`color`),
  KEY `datos_de_pagos_FK_4` (`oficina`),
  CONSTRAINT `datos_de_pagos_FK` FOREIGN KEY (`movimiento`) REFERENCES `tipos_de_movimientos` (`id`),
  CONSTRAINT `datos_de_pagos_FK_1` FOREIGN KEY (`fiado`) REFERENCES `empresas` (`id`),
  CONSTRAINT `datos_de_pagos_FK_2` FOREIGN KEY (`moneda`) REFERENCES `monedas` (`id`),
  CONSTRAINT `datos_de_pagos_FK_3` FOREIGN KEY (`color`) REFERENCES `colores` (`id`),
  CONSTRAINT `datos_de_pagos_FK_4` FOREIGN KEY (`oficina`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_de_pagos`
--

LOCK TABLES `datos_de_pagos` WRITE;
/*!40000 ALTER TABLE `datos_de_pagos` DISABLE KEYS */;
INSERT INTO `datos_de_pagos` VALUES ('1584-0000',2,3,98,31,20000.00,2,3,3),('1845-0000',3,4,63,33,980000.00,1,3,3),('1954-0000',1,1,200,92,200000.00,3,1,2),('6587-0457',3,1,15,0,80000.00,3,4,1),('8524-0000',1,2,150,61,150000.00,2,1,1),('9711-0457',2,5,20,0,1000000.00,1,4,3);
/*!40000 ALTER TABLE `datos_de_pagos` ENABLE KEYS */;
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
