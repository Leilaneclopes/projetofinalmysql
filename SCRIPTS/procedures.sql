

-- Procedure INSERT tb_categoria

DELIMITER //
CREATE PROCEDURE sp_insert_categoria(nome_categoria VARCHAR(100))
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
    END // 
DELIMITER ;

CALL sp_insert_categoria('aventura');     
CALL sp_insert_categoria('romance');
CALL sp_insert_categoria('comédia');
CALL sp_insert_categoria('suspense');
CALL sp_insert_categoria('terror');


SELECT * FROM tb_categoria;

-- Procedure UPDATE tb_categoria

DELIMITER //
CREATE PROCEDURE sp_update_categoria(cod_id INT, nome_categoria VARCHAR(100))
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
    END //
DELIMITER ;

SELECT * FROM tb_categoria;

CALL sp_update_categoria(2, 'ROMANCE' );


-- Procedure DELETE tb_categoria

DELIMITER //
CREATE PROCEDURE sp_delete_categoria (cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_categoria FROM tb_categoria WHERE id_categoria = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_categoria
		WHERE id_categoria = cod_id;
	END IF;
END //
DELIMITER ;


SELECT * FROM tb_categoria;
CALL sp_delete_categoria(10);

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Procedure INSERT tb_idioma

DELIMITER //
CREATE PROCEDURE sp_insert_idioma(nome_idioma VARCHAR(100))
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
    END // 
DELIMITER ;

SELECT * FROM tb_idioma;

CALL sp_insert_idioma('italiano');
CALL sp_insert_idioma('i');


-- Procedure UPDATE tb_idioma

DELIMITER //
CREATE PROCEDURE sp_update_idioma(cod_id INT, nome_idioma VARCHAR(100))
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
    END //
DELIMITER ;


SELECT * FROM tb_idioma;

 CALL sp_update_idioma(2, 'co');

-- Procedure DELETE tb_idioma

DELIMITER //
CREATE PROCEDURE sp_delete_idioma (cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_idioma FROM tb_idioma WHERE id_idioma = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_idioma
		WHERE id_idioma = cod_id;
	END IF;
END //
DELIMITER ;

SELECT * FROM tb_idioma;
CALL sp_delete_idioma(6);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Procedure INSERT tb_tipo_pagamento

DELIMITER //
CREATE PROCEDURE sp_insert_tipo_pagamento(nome_tipo_pagamento VARCHAR(30))
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
    END // 
DELIMITER ;

SELECT * FROM tb_tipo_pagamento;


CALL sp_insert_tipo_pagamento('dinheiro');


-- Procedure UPDATE tb_tipo_pagamento

DELIMITER //
CREATE PROCEDURE sp_update_tipo_pagamento(cod_id INT, nome_tipo_pagamento VARCHAR(100))
	BEGIN
		IF NOT EXISTS
			(SELECT id_tipo_pagamento FROM tb_tipo_pagamento WHERE id_tipo_pagamento = cod_id) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
		ELSEIF
			(nome_tipo_pagamento IS NULL ) OR (fn_valida_texto(nome_tipo_pagamento, 3)) = 0 THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'nome muito curto';
		ELSE
			UPDATE tb_tipo_pagamento SET nome = LOWER(nome_tipo_pagamento)
			WHERE id_tipo_pagamento = cod_id;
		END IF;
    END //
DELIMITER ;

SELECT * FROM tb_tipo_pagamento;
CALL sp_update_tipo_pagamento(5,'di');

-- Procedure DELETE tb_tipo_pagamento

DELIMITER //
CREATE PROCEDURE sp_delete_tipo_pagamento(cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_tipo_pagamento FROM tb_tipo_pagamento WHERE id_tipo_pagamento = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_tipo_pagamento
		WHERE id_tipo_pagamento = cod_id;
	END IF;
END //
DELIMITER ;

SELECT * FROM tb_tipo_pagamento;
CALL sp_delete_tipo_pagamento(4);

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Procedure INSERT tb_país

DELIMITER //
CREATE PROCEDURE sp_insert_pais(nome_pais VARCHAR(100), cod_pais CHAR(3))
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
    END // 
DELIMITER ;

SELECT * FROM tb_pais;

CALL sp_insert_pais('brasil', 'bra');


-- Procedure UPDATE tb_país

DELIMITER //
CREATE PROCEDURE sp_update_pais(valor_id INT, nome_pais VARCHAR(100), cod_pais CHAR(3))
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
    END //
DELIMITER ;

 SELECT * FROM tb_pais;
CALL sp_update_pais(5,'BRASÍL', 'BRA');

-- Procedure DELETE tb_tipo_pagamento

DELIMITER //
CREATE PROCEDURE sp_delete_pais(valor_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_pais FROM tb_pais WHERE id_pais = valor_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_pais
		WHERE id_pais = valor_id;
	END IF;
END //
DELIMITER ;

CALL sp_delete_pais(5,'BRASÍL', 'BRA');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Procedure INSERT tb_plano

DELIMITER //
CREATE PROCEDURE sp_insert_plano(valor_plano FLOAT, descricao_plano VARCHAR(100))
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
    END // 
DELIMITER ;

SELECT * FROM tb_plano;
CALL sp_insert_plano(65,'plano golden');


-- Procedure UPDATE tb_plano

DELIMITER //
CREATE PROCEDURE sp_update_plano(cod_id INT,valor_plano FLOAT, descricao_plano  VARCHAR(100))
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
    END //
DELIMITER ;


SELECT * FROM tb_plano;

CALL sp_update_plano(4, 85, 'pleno');


-- Procedure DELETE tb_plano

DELIMITER //
CREATE PROCEDURE sp_delete_plano(cod_id INT)
BEGIN
	IF NOT EXISTS
		(SELECT id_plano FROM tb_plano WHERE id_plano = cod_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =  'ID nao existe';
    ELSE
		DELETE FROM  tb_plano
		WHERE id_plano = cod_id;
	END IF;
END //
DELIMITER ;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Procedure INSERT tb_pagamento

DELIMITER //
CREATE PROCEDURE sp_insert_pagamento(valor_p FLOAT, data_pagamento DATE, id_do_cartao_credito INT, id_do_cliente INT, id_do_tipo_pagamento INT)
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
END //
DELIMITER ;


SELECT * FROM tb_pagamento;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
