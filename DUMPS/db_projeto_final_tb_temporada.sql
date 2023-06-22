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
-- Table structure for table `tb_temporada`
--

DROP TABLE IF EXISTS `tb_temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_temporada` (
  `id_temporada` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quantidade_episodio` int NOT NULL,
  `id_serie` int NOT NULL,
  `numero_temporada` int DEFAULT NULL,
  PRIMARY KEY (`id_temporada`),
  KEY `FK_id_serie` (`id_serie`),
  CONSTRAINT `FK_id_serie` FOREIGN KEY (`id_serie`) REFERENCES `tb_serie` (`id_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_temporada`
--

LOCK TABLES `tb_temporada` WRITE;
/*!40000 ALTER TABLE `tb_temporada` DISABLE KEYS */;
INSERT INTO `tb_temporada` VALUES (1,'Dark Whispers',' Enquanto investigam uma antiga mansão assombrada, a equipe do The Unseen Files se depara com segredos sombrios enterrados nas profundezas',10,5,1),(2,'Echoes of the Past','Uma onda de fenômenos inexplicáveis assola uma pequena cidade, levando a equipe do The Unseen Files a mergulhar nas histórias do passado',10,5,2),(3,'Amour Interdit','Em meio às ruas românticas de Paris, um amor proibido floresce entre dois jovens de famílias rivais',10,6,1),(4,'Trésors Cachés','À medida que segredos há muito tempo escondidos vêm à tona, os amigos parisienses embarcam em uma jornada em busca de tesouros perdidos',10,6,2),(5,'Das Vermächtnis','Um segredo familiar sinistro vem à tona quando um detetive obstinado mergulha nas sombras do passado',10,7,1),(6,'Verlorene Seelen','Enquanto investiga uma série de desaparecimentos inexplicáveis, o detetive se depara com uma sociedade secreta que busca controlar as almas perdidas',10,7,2),(7,'Destino Incerto','Os amantes proibidos lutam contra as convenções sociais e as pressões familiares enquanto enfrentam uma série de obstáculos que testam seu amor e os levam',10,8,1),(8,'Segredos Revelados','Conforme os segredos do passado vêm à tona, os amantes são confrontados com revelações chocantes que ameaçam destruir tudo o que construíram juntos',10,8,2);
/*!40000 ALTER TABLE `tb_temporada` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-18 20:08:41
