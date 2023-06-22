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
-- Table structure for table `tb_endereco`
--

DROP TABLE IF EXISTS `tb_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `cep` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `bairro` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `rua` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quadra` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numero` int NOT NULL,
  `id_pais` int NOT NULL,
  `data_atualizacao` date NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `FK_id_pais` (`id_pais`),
  CONSTRAINT `FK_id_pais` FOREIGN KEY (`id_pais`) REFERENCES `tb_pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_endereco`
--

LOCK TABLES `tb_endereco` WRITE;
/*!40000 ALTER TABLE `tb_endereco` DISABLE KEYS */;
INSERT INTO `tb_endereco` VALUES (1,'12345-678','Centro','Rua A','Quadra 1',10,1,'2023-06-14'),(2,'54321-098','Vila Nova','Rua B','Quadra 2',20,1,'2023-06-14'),(3,'98765-432','Jardim das Flores','Rua C','Quadra 3',30,2,'2023-06-14'),(4,'45678-901','Bairro Novo','Rua D','Quadra 4',40,3,'2023-06-14'),(5,'56789-012','Centro','Rua E','Quadra 5',50,4,'2023-06-14'),(6,'87654-321','Vila Nova','Rua F','Quadra 6',60,1,'2023-06-14'),(7,'23456-789','Jardim das Flores','Rua G','Quadra 7',70,3,'2023-06-14'),(8,'78901-234','Bairro Novo','Rua H','Quadra 8',80,2,'2023-06-14'),(9,'34567-890','Centro','Rua I','Quadra 9',90,4,'2023-06-14'),(10,'67890-123','Vila Nova','Rua J','Quadra 10',100,1,'2023-06-14');
/*!40000 ALTER TABLE `tb_endereco` ENABLE KEYS */;
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
