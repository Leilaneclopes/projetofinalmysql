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
-- Table structure for table `tb_catalogo`
--

DROP TABLE IF EXISTS `tb_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_catalogo` (
  `id_catalogo` int NOT NULL AUTO_INCREMENT,
  `pais_origem` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_capa` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sinopse` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ano_lancamento` year NOT NULL,
  `duracao` time NOT NULL,
  `avaliacao` enum('1','2','3','4','5') COLLATE utf8mb4_general_ci NOT NULL,
  `data_atualizacao` date NOT NULL,
  `id_classificacao` int NOT NULL,
  `id_idioma` int NOT NULL,
  `tipo_midia` enum('F','S') COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_catalogo`),
  KEY `FK_id_classificacao` (`id_classificacao`),
  KEY `FK_id_idioma` (`id_idioma`),
  CONSTRAINT `FK_id_classificacao` FOREIGN KEY (`id_classificacao`) REFERENCES `tb_classificacao` (`id_classificacao`),
  CONSTRAINT `FK_id_idioma` FOREIGN KEY (`id_idioma`) REFERENCES `tb_idioma` (`id_idioma`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_catalogo`
--

LOCK TABLES `tb_catalogo` WRITE;
/*!40000 ALTER TABLE `tb_catalogo` DISABLE KEYS */;
INSERT INTO `tb_catalogo` VALUES (25,'Estados Unidos','https://example.com/1.jpg','The Lost Treasure','Um grupo de aventureiros embarca em uma emocionante jornada em busca de um tesouro perdido em uma ilha remota.',2022,'00:01:20','1','2023-06-14',1,1,'F'),(26,'França','https://example.com/4.jpg','Amour Éternel','Uma história de amor proibido entre dois jovens artistas parisienses que lutam contra as convenções sociais e os obstáculos culturais.',2020,'00:01:20','2','2023-06-14',3,5,'F'),(27,'Alemanha','https://example.com/8.jpg','Der Stille Pfad','Ambientado na Alemanha pós-Segunda Guerra Mundial, o filme segue a vida de uma jovem sobrevivente do Holocausto enquanto ela luta para se adaptar a uma sociedade despedaçada.',2020,'00:01:20','3','2023-06-14',2,2,'F'),(28,'Itália','https://example.com/9.jpg','La Dolce Vita','Um retrato da vida extravagante e decadente da alta sociedade italiana em Roma.',2022,'00:01:25','5','2023-06-14',1,3,'F'),(37,'Estados Unidos','https://example.com/imagem1.jpg','The Unseen Files','Uma equipe de investigadores paranormais viaja pelos Estados Unidos para desvendar mistérios sobrenaturais e desvendar eventos inexplicáveis.',2022,'00:00:45','4','2023-06-14',1,3,'S'),(38,'França','https://example.com/imagem2.jpg','Les Secrets de Paris','A vida de um grupo de amigos parisienses é abalada quando um segredo obscuro é revelado, levando-os a uma jornada de descobertas e consequências imprevisíveis.',2020,'00:00:45','2','2023-06-14',2,4,'S'),(39,'Alemanha','https://example.com/imagem3.jpg','Die Schatten der Vergangenheit','Após o desaparecimento misterioso de uma jovem, um detetive implacável embarca em uma busca obscura para desvendar segredos enterrados há décadas na pequena cidade alemã.',2021,'00:00:29','4','2023-06-14',1,6,'S'),(40,'Itália','https://example.com/imagem10.jpg','LAmore Proibito','Em uma vila costeira na Itália, duas famílias rivais lutam contra tradições antigas e rivalidades mortais enquanto tentam proteger um amor proibido que pode desafiar todas as convenções.',2016,'00:00:45','1','2023-06-14',2,1,'S');
/*!40000 ALTER TABLE `tb_catalogo` ENABLE KEYS */;
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
