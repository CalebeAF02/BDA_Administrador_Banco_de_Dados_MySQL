-- CREATE DATABASE aula_1;
-- use aula_1;


CREATE TABLE LOJA(
    id int AUTO_INCREMENT PRIMARY KEY,
    cnpj varchar(255) UNIQUE NOT NULL,
    razao varchar(255) NOT NULL,
    telefone varchar(255) UNIQUE NOT NULL,
    endereco varchar(255) UNIQUE NOT NULL
);

CREATE TABLE FUNCIONARIO(
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255)  NOT NULL,
    cpf varchar(255) UNIQUE NOT NULL,
    telefone varchar(255) UNIQUE NOT NULL,
    endereco varchar(255) UNIQUE NOT NULL,
    cargo enum('CAIXA', 'VENDEDOR', 'GERENTE', 'ESTOQUISTA', 'FAXINEIRO') NOT NULL,
    salario decimal(10,2) NOT NULL
);

CREATE TABLE CLIENTE(
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255)  NOT NULL,
    cpf varchar(255) UNIQUE NOT NULL,
    telefone varchar(255) UNIQUE NOT NULL,
    endereco varchar(255) UNIQUE NOT NULL,
    cnpj varchar(255) UNIQUE NOT NULL,
    tipo enum('JURIDICO','FISICO') NOT NULL
);

CREATE TABLE PRODUTO(
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255) NOT NULL,
    categoria varchar(255) NOT NULL,
    perecivel bool NOT NULL,
    valor decimal(10,2) NOT NULL,
    estoque int NOT NULL
);

CREATE TABLE FORNECEDOR(
    id int AUTO_INCREMENT PRIMARY KEY,
    cnpj varchar(255) UNIQUE NOT NULL,
    razao varchar(255) NOT NULL,
    
    numero varchar(255) NOT NULL,
    conjunto varchar(255) NOT NULL,
    ql varchar(255) NOT NULL,
    quadra int NOT NULL,
    bairro varchar(255) NOT NULL,
    ciade varchar(255) NOT NULL,
    estado varchar(255) NOT NULL
);

CREATE TABLE FORNECIMENTO(
    id int AUTO_INCREMENT PRIMARY KEY,
    quantidade int NOT NULL,
    valor decimal(10,2) NOT NULL
);

CREATE TABLE VENDA(
	id int AUTO_INCREMENT PRIMARY KEY,
    valor decimal(10,2) NOT NULL,
    quantidade int NOT NULL,
    forma enum('CREDITO','DEBITO','PIX','TED') NOT NULL,
    status bool NOT NULL,
    data_hora datetime DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE ITEM_PEDIDO(
    id int AUTO_INCREMENT PRIMARY KEY,
    quantidade int NOT NULL,
    valor_unitario decimal(10,2) NOT NULL,
    valor_total decimal(10,2) NOT NULL
);