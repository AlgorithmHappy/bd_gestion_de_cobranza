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
-- Table structure for table `agentes`
--

DROP TABLE IF EXISTS `agentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `agentes_un` (`nombre_completo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentes`
--

LOCK TABLES `agentes` WRITE;
/*!40000 ALTER TABLE `agentes` DISABLE KEYS */;
INSERT INTO `agentes` VALUES (3,'Adrian'),(2,'Andrea Isabel'),(1,'Jose Luis');
/*!40000 ALTER TABLE `agentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colores`
--

DROP TABLE IF EXISTS `colores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_de_color` varchar(100) NOT NULL,
  `codigo_hexadecimal` varchar(7) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `colores_un` (`nombre_de_color`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colores`
--

LOCK TABLES `colores` WRITE;
/*!40000 ALTER TABLE `colores` DISABLE KEYS */;
INSERT INTO `colores` VALUES (1,'Rojo','#E71313'),(2,'Azul','#256CDF'),(3,'Amarillo','#EADE18'),(4,'Verde','#58B902');
/*!40000 ALTER TABLE `colores` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `ejecutivos`
--

DROP TABLE IF EXISTS `ejecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejecutivos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ejecutivo_un` (`nombre_completo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecutivos`
--

LOCK TABLES `ejecutivos` WRITE;
/*!40000 ALTER TABLE `ejecutivos` DISABLE KEYS */;
INSERT INTO `ejecutivos` VALUES (1,'Fernando'),(4,'Raul'),(2,'Roberto'),(3,'Saul');
/*!40000 ALTER TABLE `ejecutivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empresas_un` (`razon_social`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'AGROGEN S.A. DE C.V'),(3,'AUTO SERVICIO COAHUILA S.A. DE C.V.'),(4,'BARCO QUIREZA FRANSISCO'),(5,'CASA GALLARDO S.A. DE C.V.'),(2,'DOMANI S.A. DE C.V.');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_de_estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estado_un` (`nombre_de_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Aguascalientes'),(3,'México'),(2,'Puebla');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monedas`
--

DROP TABLE IF EXISTS `monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monedas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_de_moneda` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `monedas_un` (`tipo_de_moneda`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monedas`
--

LOCK TABLES `monedas` WRITE;
/*!40000 ALTER TABLE `monedas` DISABLE KEYS */;
INSERT INTO `monedas` VALUES (3,'Dolares'),(2,'Euros'),(1,'Pesos');
/*!40000 ALTER TABLE `monedas` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tipos_de_movimientos`
--

DROP TABLE IF EXISTS `tipos_de_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_movimientos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_de_movimiento` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tips_de_movimientos_un` (`tipo_de_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_movimientos`
--

LOCK TABLES `tipos_de_movimientos` WRITE;
/*!40000 ALTER TABLE `tipos_de_movimientos` DISABLE KEYS */;
INSERT INTO `tipos_de_movimientos` VALUES (2,'Ampleación'),(1,'Expedición'),(3,'Prorroga');
/*!40000 ALTER TABLE `tipos_de_movimientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 18:15:35
