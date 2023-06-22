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
-- Table structure for table `tb_classificacao`
--

DROP TABLE IF EXISTS `tb_classificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_classificacao` (
  `id_classificacao` int NOT NULL AUTO_INCREMENT,
  `idade` int NOT NULL,
  `descricao` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_classificacao`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_classificacao`
--

LOCK TABLES `tb_classificacao` WRITE;
/*!40000 ALTER TABLE `tb_classificacao` DISABLE KEYS */;
INSERT INTO `tb_classificacao` VALUES (1,10,'Essa classificação indica que o conteúdo é adequado para todos os públicos. Não há cenas de violência, linguagem inapropriada, nudez ou temas adultos.'),(2,14,'Essa classificação é apropriada para adolescentes acima de 14 anos. Pode conter violência moderada, linguagem de baixo calão, temas mais maduros e cenas levemente sugestivas.'),(3,16,'Essa classificação é apropriada para pessoas com 16 anos ou mais. Pode conter violência intensa, linguagem forte, cenas de sexo, consumo de drogas e temas adultos.'),(4,18,'Essa classificação é destinada a um público adulto com idade igual ou superior a 18 anos. Pode conter cenas de violência extrema, sexo explícito, linguagem ofensiva, uso de drogas pesadas e temas adultos muito intensos.');
/*!40000 ALTER TABLE `tb_classificacao` ENABLE KEYS */;
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
