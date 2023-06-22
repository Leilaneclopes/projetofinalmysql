-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_projeto_final
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tb_catalogo_categoria`
--

DROP TABLE IF EXISTS `tb_catalogo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_catalogo_categoria` (
  `id_catalogo_categoria` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `id_catalogo` int NOT NULL,
  PRIMARY KEY (`id_catalogo_categoria`),
  KEY `FK_id_categoria_1` (`id_categoria`),
  KEY `FK_id_catalogo_2` (`id_catalogo`),
  CONSTRAINT `FK_id_catalogo_2` FOREIGN KEY (`id_catalogo`) REFERENCES `tb_catalogo` (`id_catalogo`),
  CONSTRAINT `FK_id_categoria_1` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_catalogo_categoria`
--

LOCK TABLES `tb_catalogo_categoria` WRITE;
/*!40000 ALTER TABLE `tb_catalogo_categoria` DISABLE KEYS */;
INSERT INTO `tb_catalogo_categoria` VALUES (25,1,25),(26,2,26),(27,3,27),(28,4,28),(29,5,37),(30,1,38),(31,2,39),(32,3,40);
/*!40000 ALTER TABLE `tb_catalogo_categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-18 20:08:42
