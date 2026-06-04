CREATE DATABASE IF NOT EXISTS AULA_1;

USE AULA_1;

DROP TABLE IF EXISTS USUARIO;

CREATE TABLE USUARIO(
    id int AUTO_INCREMENT PRIMARY KEY ,
    nome varchar(255) NOT NULL,
    data_nascimento date NOT NULL,
    patente varchar(255) DEFAULT("SOLDADO") NOT NULL
    
);

-- Seleciona toda a tabela
select * from usuario;

-- Inserir todos os dados de uma vez 
INSERT INTO USUARIO (nome, data_nascimento, patente)
VALUES
("Calebe", '2002-03-23', "CABO"),
("Jubileu", '1998-07-05', "");

INSERT INTO USUARIO (nome, data_nascimento)
values
("ZULU", '1111-01-01');


INSERT INTO USUARIO(patente)
VALUE("3ºSARGENTO")
WHERE patente == ""

-- Inserrir um dado na tabela

-- email varchar(255) UNIQUE NOT NULL,
-- senha varchar(255) NOT NULL

DROP TABLE USUARIO; -- Apaga a tabela
TRUNCATE TABLE USUARIO; -- Apaga todos os dados da tabela

DELETE FROM USUARIO 
WHERE nome = "calebe";


RENAME TABLE USUARIOS to USUARIO; -- Renomeia o nome da tabela

-- alterar os dados das colunas 
ALTER TABLE USUARIO
ADD COLUMN cpf int; -- adiciona uma coluna

ALTER TABLE USUARIO
DROP COLUMN cpf; -- remove uma coluna

ALTER TABLE USUARIO
MODIFY COLUMN patente varchar(255) DEFAULT("SOLDADO") NOT NULL; -- modifica uma coluna

