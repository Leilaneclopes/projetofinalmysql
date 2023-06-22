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
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_atualizacao` date NOT NULL,
  `sobrenome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('A','I') COLLATE utf8mb4_general_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `senha` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_endereco` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`),
  KEY `FK_id_endereco` (`id_endereco`),
  CONSTRAINT `FK_id_endereco` FOREIGN KEY (`id_endereco`) REFERENCES `tb_endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (31,'Carolina','2023-05-09','Mendes','carolina.mendes@example.com','A','1990-01-01','2023-05-01','123456',1),(32,'Fernando','2023-05-09','Costa','fernando.costa@example.com','I','1985-02-15','2023-04-27','secreta123',2),(33,'Camila','2023-05-09','Rodrigues','camila.rodrigues@example.com','A','1992-07-10','2023-05-03','senha@2023',3),(34,'Rafaela','2023-05-09','Santos','rafaela.santos@example.com','A','1994-04-20','2023-05-05','p4ssw0rd',4),(35,'Gustavo','2023-05-09','Lima','gustavo.lima@example.com','I','1998-09-30','2023-04-29','myPass123',5),(36,'Laura','2023-06-14','Ribeiro','laura.ribeiro@example.com','A','1993-03-25','2023-06-14','senha123',6),(37,'Rafael','2023-06-14','Gomes','rafael.gomes@example.com','A','1987-11-12','2023-06-14','senha456',7),(38,'Camila','2023-06-14','Almeida','camila.almeida@example.com','I','1994-08-05','2023-06-14','senha789',8),(39,'Mariana','2023-06-14','Melo','mariana.melo@example.com','A','1989-06-30','2023-06-14','senhaabc',9),(40,'Gustavo','2023-06-14','Costa','gustavo.costa@example.com','A','1996-04-18','2023-06-14','senhadef',10);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
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
