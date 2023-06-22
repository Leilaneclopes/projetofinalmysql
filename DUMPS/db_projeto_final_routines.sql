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
-- Temporary view structure for view `vw_ator`
--

DROP TABLE IF EXISTS `vw_ator`;
/*!50001 DROP VIEW IF EXISTS `vw_ator`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_ator` AS SELECT 
 1 AS `nome`,
 1 AS `sobrenome`,
 1 AS `data_nascimento`,
 1 AS `foto`,
 1 AS `qtd_filmes`,
 1 AS `qtd_series`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_perfil`
--

DROP TABLE IF EXISTS `vw_perfil`;
/*!50001 DROP VIEW IF EXISTS `vw_perfil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_perfil` AS SELECT 
 1 AS `foto_perfil`,
 1 AS `nome_perfil`,
 1 AS `tipo_perfil`,
 1 AS `nome_cliente`,
 1 AS `id_usuario`,
 1 AS `id_cartao`,
 1 AS `id_plano`,
 1 AS `data_vencimento_plano`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pagamento`
--

DROP TABLE IF EXISTS `vw_pagamento`;
/*!50001 DROP VIEW IF EXISTS `vw_pagamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pagamento` AS SELECT 
 1 AS `id_pagamento`,
 1 AS `valor`,
 1 AS `data_pagamento`,
 1 AS `id_cartao`,
 1 AS `id_plano`,
 1 AS `nome_cliente`,
 1 AS `tipo_pagamento`,
 1 AS `nome_plano`,
 1 AS `data_vencimento_plano`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_episodio`
--

DROP TABLE IF EXISTS `vw_episodio`;
/*!50001 DROP VIEW IF EXISTS `vw_episodio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_episodio` AS SELECT 
 1 AS `nome_serie`,
 1 AS `numero_temporada`,
 1 AS `nome_temporada`,
 1 AS `quantidade_episodio`,
 1 AS `numero_episodio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_temporada`
--

DROP TABLE IF EXISTS `vw_temporada`;
/*!50001 DROP VIEW IF EXISTS `vw_temporada`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_temporada` AS SELECT 
 1 AS `numero_temporada`,
 1 AS `nome_temporada`,
 1 AS `descricao`,
 1 AS `quantidade_episodio`,
 1 AS `nome_serie`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_catalogo`
--

DROP TABLE IF EXISTS `vw_catalogo`;
/*!50001 DROP VIEW IF EXISTS `vw_catalogo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_catalogo` AS SELECT 
 1 AS `id_catalogo`,
 1 AS `pais_origem`,
 1 AS `imagem_capa`,
 1 AS `titulo`,
 1 AS `sinopse`,
 1 AS `ano_lancamento`,
 1 AS `duracao`,
 1 AS `avaliacao`,
 1 AS `data_atualizacao`,
 1 AS `id_idioma`,
 1 AS `idioma_original`,
 1 AS `classificacao`,
 1 AS `categoria`,
 1 AS `Quant_idioma_disponivel`,
 1 AS `Tipo_catalogo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usuario`
--

DROP TABLE IF EXISTS `vw_usuario`;
/*!50001 DROP VIEW IF EXISTS `vw_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_usuario` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nome`,
 1 AS `data_atualizacao`,
 1 AS `sobrenome`,
 1 AS `email`,
 1 AS `status`,
 1 AS `data_nascimento`,
 1 AS `data_cadastro`,
 1 AS `endereco`,
 1 AS `cep`,
 1 AS `nome_pais`,
 1 AS `descricao`,
 1 AS `tipo_usuario`,
 1 AS `qtd_perfis`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_ator`
--

/*!50001 DROP VIEW IF EXISTS `vw_ator`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ator` AS select `a`.`nome` AS `nome`,`a`.`sobrenome` AS `sobrenome`,`a`.`data_nascimento` AS `data_nascimento`,`a`.`foto` AS `foto`,count(`f`.`id_catalogo`) AS `qtd_filmes`,count(`s`.`id_catalogo`) AS `qtd_series` from ((((`tb_ator` `a` left join `tb_catalogo_ator` `ca` on((`ca`.`id_ator` = `a`.`id_ator`))) left join `tb_catalogo` `c` on((`c`.`id_catalogo` = `ca`.`id_catalogo`))) left join `tb_filme` `f` on((`f`.`id_catalogo` = `c`.`id_catalogo`))) left join `tb_serie` `s` on((`s`.`id_catalogo` = `c`.`id_catalogo`))) group by `a`.`nome`,`a`.`sobrenome`,`a`.`data_nascimento`,`a`.`foto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_perfil`
--

/*!50001 DROP VIEW IF EXISTS `vw_perfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_perfil` AS select `p`.`foto` AS `foto_perfil`,`p`.`nome` AS `nome_perfil`,`p`.`tipo` AS `tipo_perfil`,`u`.`nome` AS `nome_cliente`,`c`.`id_usuario` AS `id_usuario`,`c`.`id_cartao` AS `id_cartao`,`c`.`id_plano` AS `id_plano`,`c`.`data_vencimento_plano` AS `data_vencimento_plano` from ((`tb_perfil` `p` join `tb_cliente` `c` on((`p`.`id_cliente` = `c`.`id_cliente`))) left join `tb_usuario` `u` on((`u`.`id_usuario` = `c`.`id_usuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pagamento`
--

/*!50001 DROP VIEW IF EXISTS `vw_pagamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pagamento` AS select `p`.`id_pagamento` AS `id_pagamento`,`p`.`valor` AS `valor`,`p`.`data_pagamento` AS `data_pagamento`,`p`.`id_cartao` AS `id_cartao`,`c`.`id_plano` AS `id_plano`,`u`.`nome` AS `nome_cliente`,`tp`.`nome` AS `tipo_pagamento`,`pl`.`descricao` AS `nome_plano`,`c`.`data_vencimento_plano` AS `data_vencimento_plano` from ((((`tb_pagamento` `p` left join `tb_tipo_pagamento` `tp` on((`tp`.`id_tipo_pagamento` = `p`.`id_tipo_pagamento`))) left join `tb_cliente` `c` on((`p`.`id_cliente` = `c`.`id_cliente`))) left join `tb_usuario` `u` on((`u`.`id_usuario` = `c`.`id_usuario`))) left join `tb_plano` `pl` on((`pl`.`id_plano` = `c`.`id_plano`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_episodio`
--

/*!50001 DROP VIEW IF EXISTS `vw_episodio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_episodio` AS select `c`.`titulo` AS `nome_serie`,`t`.`numero_temporada` AS `numero_temporada`,`t`.`titulo` AS `nome_temporada`,`t`.`quantidade_episodio` AS `quantidade_episodio`,`e`.`numero_episodio` AS `numero_episodio` from ((`tb_catalogo` `c` join `tb_episodio` `e` on((`e`.`id_catalogo` = `c`.`id_catalogo`))) left join `tb_temporada` `t` on((`t`.`id_temporada` = `e`.`id_temporada`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_temporada`
--

/*!50001 DROP VIEW IF EXISTS `vw_temporada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_temporada` AS select `t`.`numero_temporada` AS `numero_temporada`,`t`.`titulo` AS `nome_temporada`,`t`.`descricao` AS `descricao`,`t`.`quantidade_episodio` AS `quantidade_episodio`,`c`.`titulo` AS `nome_serie` from (((`tb_catalogo` `c` join `tb_episodio` `e` on((`e`.`id_catalogo` = `c`.`id_catalogo`))) left join `tb_temporada` `t` on((`t`.`id_temporada` = `e`.`id_temporada`))) left join `tb_serie` `s` on((`s`.`id_serie` = `t`.`id_serie`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_catalogo`
--

/*!50001 DROP VIEW IF EXISTS `vw_catalogo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_catalogo` AS select `c`.`id_catalogo` AS `id_catalogo`,`c`.`pais_origem` AS `pais_origem`,`c`.`imagem_capa` AS `imagem_capa`,`c`.`titulo` AS `titulo`,`c`.`sinopse` AS `sinopse`,`c`.`ano_lancamento` AS `ano_lancamento`,`c`.`duracao` AS `duracao`,`c`.`avaliacao` AS `avaliacao`,`c`.`data_atualizacao` AS `data_atualizacao`,`c`.`id_idioma` AS `id_idioma`,`i`.`nome` AS `idioma_original`,`cla`.`descricao` AS `classificacao`,`cat`.`nome` AS `categoria`,(select count(0) from `tb_catalogo_idioma` where (`tb_catalogo_idioma`.`id_catalogo` = `c`.`id_catalogo`)) AS `Quant_idioma_disponivel`,(case when (`c`.`tipo_midia` = 'F') then 'Filme' when (`c`.`tipo_midia` = 'S') then 'Serie' else 'N/A' end) AS `Tipo_catalogo` from ((((`tb_catalogo` `c` left join `tb_idioma` `i` on((`i`.`id_idioma` = `c`.`id_idioma`))) left join `tb_classificacao` `cla` on((`cla`.`id_classificacao` = `c`.`id_classificacao`))) left join `tb_catalogo_categoria` `cc` on((`cc`.`id_catalogo` = `c`.`id_catalogo`))) left join `tb_categoria` `cat` on((`cat`.`id_categoria` = `cc`.`id_categoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuario`
--

/*!50001 DROP VIEW IF EXISTS `vw_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuario` AS select `u`.`id_usuario` AS `id_usuario`,`u`.`nome` AS `nome`,`u`.`data_atualizacao` AS `data_atualizacao`,`u`.`sobrenome` AS `sobrenome`,`u`.`email` AS `email`,`u`.`status` AS `status`,`u`.`data_nascimento` AS `data_nascimento`,`u`.`data_cadastro` AS `data_cadastro`,concat(`e`.`rua`,', ',`e`.`bairro`,', ',`e`.`quadra`,', ',`e`.`numero`) AS `endereco`,`e`.`cep` AS `cep`,`p`.`nome` AS `nome_pais`,`pl`.`descricao` AS `descricao`,(case when (`f`.`id_funcionario` is not null) then 'Funcionário' when (`c`.`id_cliente` is not null) then 'Cliente' else 'N/A' end) AS `tipo_usuario`,(select count(0) from `tb_perfil` where (`tb_perfil`.`id_cliente` = `c`.`id_cliente`)) AS `qtd_perfis` from (((((`tb_usuario` `u` left join `tb_funcionario` `f` on((`f`.`id_usuario` = `u`.`id_usuario`))) left join `tb_cliente` `c` on((`c`.`id_usuario` = `u`.`id_usuario`))) left join `tb_endereco` `e` on((`e`.`id_endereco` = `u`.`id_endereco`))) left join `tb_pais` `p` on((`p`.`id_pais` = `e`.`id_pais`))) left join `tb_plano` `pl` on((`pl`.`id_plano` = `c`.`id_plano`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'db_projeto_final'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_minuscula2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_minuscula2`(texto VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    DETERMINISTIC
BEGIN
DECLARE resultado VARCHAR (255);
set resultado = lower (texto);
RETURN resultado ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_remover_acento_minusculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_remover_acento_minusculo`( texto VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    READS SQL DATA
BEGIN
		DECLARE resultado VARCHAR(255);
        SET texto = LOWER(texto);
        SET resultado = REPLACE(texto, 'á','a');
        SET resultado = REPLACE(resultado, 'â','a');
        SET resultado = REPLACE(resultado, 'ã','a');
        SET resultado = REPLACE(resultado, 'é','e');
        SET resultado = REPLACE(resultado, 'ê','e');
		SET resultado = REPLACE(resultado, 'í','i');
		SET resultado = REPLACE(resultado, 'ó','o');
        SET resultado = REPLACE(resultado, 'ô','o');
		SET resultado = REPLACE(resultado, 'ú','u');
        SET resultado = REPLACE(resultado, 'ç','c');
        SET resultado = REPLACE(resultado, 'Á', 'A');
        SET resultado = REPLACE(resultado,'É', 'E');
        SET resultado = REPLACE(resultado, 'Í', 'I');
        SET resultado = REPLACE(resultado,'Ó', 'O');
        SET resultado = REPLACE(resultado,'ó', 'o');
        SET resultado = REPLACE(resultado,'Ú', 'U');
        SET resultado = REPLACE(resultado, 'À', 'A');
		SET resultado = REPLACE(resultado,'õ', 'o');
        SET resultado = REPLACE(resultado,'Ã', 'A'); 
        SET resultado = REPLACE(resultado,'Õ', 'O');
        SET resultado = REPLACE(resultado, 'ê', 'e');
        SET resultado = REPLACE(resultado, 'ô', 'o');
        SET resultado = REPLACE(resultado, 'Â', 'A');
        SET resultado = REPLACE(resultado,'Ê', 'E');
        SET resultado = REPLACE(resultado,'Ô', 'O');
        SET resultado = REPLACE(resultado,'ç', 'c');
        SET resultado = REPLACE(resultado,'Ç', 'c');
        SET resultado = REPLACE(resultado,'^', ' ');
        SET resultado = REPLACE(resultado,'~', ' ');
        SET resultado = REPLACE(resultado,'´', ' ');
        SET resultado = REPLACE(resultado,'`', ' ');
        SET resultado = REPLACE(resultado,';', ' ');
        SET resultado = REPLACE(resultado,':', ' ');
	RETURN resultado;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_valida_texto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_valida_texto`( texto VARCHAR(255), parametro INT) RETURNS tinyint(1)
    READS SQL DATA
BEGIN
    DECLARE valor BOOLEAN;
		IF 
			(LENGTH(TRIM(texto))) < parametro THEN
            SET valor = 0;
            RETURN valor;
		ELSE
			SET valor = 1;
			RETURN valor;
		END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_categoria`(cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_categoria FROM tb_categoria WHERE id_categoria = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_categoria
		WHERE id_categoria = cod_id;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_idioma` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_idioma`(cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_idioma FROM tb_idioma WHERE id_idioma = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_idioma
		WHERE id_idioma = cod_id;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_pais` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_pais`(valor_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_pais FROM tb_pais WHERE id_pais = valor_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_pais
		WHERE id_pais = valor_id;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_plano` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_plano`(cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_plano FROM tb_plano WHERE id_plano = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_plano
		WHERE id_plano = cod_id;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_tipo_pagamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_tipo_pagamento`(cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_tipo_pagamento FROM tb_tipo_pagamento WHERE id_tipo_pagamento = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_tipo_pagamento
		WHERE id_tipo_pagamento = cod_id;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_categoria`(nome_categoria VARCHAR(100))
BEGIN
    IF 
		(nome_categoria IS NULL ) OR (fn_valida_texto(nome_categoria, 3)) = 0 THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome muito curto';
    ELSE
		INSERT INTO tb_categoria
        (nome)
        VALUES
        (LOWER(nome_categoria));
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_idioma` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_idioma`(nome_idioma VARCHAR(100))
BEGIN
    IF 
		(nome_idioma IS NULL ) OR (fn_valida_texto(nome_idioma, 3)) = 0 THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome muito curto';
    ELSE
		INSERT INTO tb_idioma
        (nome)
        VALUES
        (LOWER(nome_idioma));
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_pagamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_pagamento`(valor_p FLOAT, data_pagamento DATE, id_do_cartao_credito INT, id_do_cliente INT, id_do_tipo_pagamento INT)
BEGIN
	IF
		(valor_p IS NULL ) OR (valor_p NOT BETWEEN 20.00 AND 100.00) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'valor fora de parametro';
    ELSEIF
		(data_pagamento IS NULL) OR (data_pagamento > CURDATE()) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'data de pagamento invalida';
	ELSEIF NOT EXISTS
		(SELECT id_cartao FROM tb_cartao_credito WHERE id_cartao_credito = id_do_cartao_credito) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID_cartao_credito invalido';
	ELSEIF NOT EXISTS
		(SELECT id_cliente FROM tb_cliente WHERE id_cliente = id_do_cliente) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID_cliente invalido';
	ELSEIF NOT EXISTS
		(SELECT id_tipo_pagamento  FROM tb_tipo_pagamento  WHERE id_tipo_pagamento  = id_do_tipo_pagamento ) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID_cartao_credito invalido';
	ELSE
		INSERT INTO tb__pagamento
		(valor, data_pagamento, id_cartao, id_cliente, id_tipo_pagamento)
		VALUES
		(valor_p, data_pagamento, id_do_cartao_credito, id_do_cliente, id_do_tipo_pagamento);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_pais` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_pais`(nome_pais VARCHAR(100), cod_pais CHAR(3))
BEGIN
	IF
		(cod_pais IS NULL ) OR (fn_valida_texto(cod_pais, 2) = 0) OR (LENGTH(cod_pais) >3) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'quantidade de caractere invalida';
	ELSEIF
		(nome_pais IS NULL ) OR (fn_valida_texto(nome_pais, 3)) = 0 THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome muito curto';
    ELSE
		INSERT INTO tb_pais
        (nome, codigo)
        VALUES
        (LOWER(nome_pais), LOWER(cod_pais));
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_plano` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_plano`(valor_plano FLOAT, descricao_plano VARCHAR(100))
BEGIN
	IF
		(descricao_plano IS NULL ) OR (fn_valida_texto(descricao_plano, 99)) = 0 THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'descricao muito curta';
	ELSEIF
		(valor_plano IS NULL ) OR (valor_plano NOT BETWEEN 20.00 AND 100.00) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'valor fora de parametro';
	
    ELSE
		INSERT INTO tb_plano
        (valor, descricao)
        VALUES
        (valor_plano, LOWER(descricao_plano));
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_tipo_pagamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_tipo_pagamento`(nome_tipo_pagamento VARCHAR(30))
BEGIN
    IF 
		(nome_tipo_pagamento IS NULL ) OR (fn_valida_texto(nome_tipo_pagamento, 3)) < 0 THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome muito curto';
    ELSE
		INSERT INTO tb_tipo_pagamento
        (nome)
        VALUES
        (LOWER(nome_tipo_pagamento));
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_categoria`(cod_id INT, nome_categoria VARCHAR(100))
BEGIN
		IF NOT EXISTS
			(SELECT id_categoria FROM tb_categoria WHERE id_categoria = cod_id) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
		ELSEIF
			(nome_categoria IS NULL ) OR (fn_valida_texto(nome_categoria, 3)) = 0 THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome muito curto';
		ELSE
			UPDATE tb_categoria SET nome = LOWER(nome_categoria)
			WHERE id_categoria = cod_id;
		END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_idioma` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_idioma`(cod_id INT, nome_idioma VARCHAR(100))
BEGIN
		IF NOT EXISTS
			(SELECT id_idioma FROM tb_idioma WHERE id_idioma = cod_id) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  ' ID não existe';
		ELSEIF
			(nome_idioma IS NULL ) OR (fn_valida_texto(nome_idioma, 3)) = 0 THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome muito curto';
		ELSE
			UPDATE tb_idioma SET nome = LOWER(nome_idioma)
			WHERE id_idioma = cod_id;
		END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_pais` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_pais`(valor_id INT, nome_pais VARCHAR(100), cod_pais CHAR(3))
BEGIN
		IF NOT EXISTS
			(SELECT id_pais FROM tb_pais WHERE id_pais = valor_id) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
		ELSEIF
			(nome_pais IS NULL ) OR (fn_valida_texto(nome_pais, 3)) = 0 THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome_pais muito curto';
		ELSEIF
			(nome_pais IS NULL ) OR (fn_valida_texto(cod_pais, 2) = 0) OR (LENGTH(cod_pais) > 3 ) THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'quantidade de caractere  invalida';
		ELSE
			UPDATE tb_pais SET nome = LOWER(nome_pais), codigo = cod_pais
			WHERE id_pais = valor_id;
		END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_plano` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_plano`(cod_id INT,valor_plano FLOAT, descricao_plano  VARCHAR(100))
BEGIN
		IF NOT EXISTS
			(SELECT id_plano FROM tb_plano WHERE id_plano = cod_id) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
		ELSEIF
			(valor_plano IS NULL ) OR (valor_plano  NOT BETWEEN 20.00 AND 100.00) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'valor fora de parametro';        
		ELSEIF
			(descricao_plano IS NULL ) OR (fn_valida_texto(descricao_plano, 99 )) = 0 THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'descricao muito curta';
		ELSE
			UPDATE tb_plano SET descricao = (LOWER(descricao_plano), valor_plano)
			WHERE id_plano = cod_id;
		END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-18 20:08:43
