-- CREATE DATABASE CASA_DO_SERTANEJO;
-- drop database CASA_DO_SERTANEJO;
use CASA_DO_SERTANEJO;

CREATE TABLE LOJA(
    id int AUTO_INCREMENT PRIMARY KEY,
    cnpj varchar(255) UNIQUE NOT NULL,
    razao varchar(255) NOT NULL,
    telefone varchar(255) UNIQUE NOT NULL,
    
    numero varchar(255) NOT NULL,
    conjunto varchar(255) NOT NULL,
    ql varchar(255) NOT NULL,
    quadra int NOT NULL,
    bairro varchar(255) NOT NULL,
    ciade varchar(255) NOT NULL,
    estado varchar(255) NOT NULL
);

CREATE TABLE PESSOA(
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255)  NOT NULL,
    cpf varchar(255) UNIQUE NOT NULL,
    telefone varchar(255) UNIQUE NOT NULL,

    numero varchar(255) NOT NULL,
    conjunto varchar(255) NOT NULL,
    ql varchar(255) NOT NULL,
    quadra int NOT NULL,
    bairro varchar(255) NOT NULL,
    ciade varchar(255) NOT NULL,
    estado varchar(255) NOT NULL,
    id_loja int  NOT NULL,

    CONSTRAINT fk_loja_pessoa
        FOREIGN KEY (id_loja)
        REFERENCES LOJA(id)
);

CREATE TABLE FUNCIONARIO(
    id int AUTO_INCREMENT PRIMARY KEY,
    id_pessoa int UNIQUE NOT NULL,

    cargo enum('CAIXA', 'VENDEDOR', 'GERENTE', 'ESTOQUISTA', 'FAXINEIRO') NOT NULL,
    salario decimal(10,2) NOT NULL,
    CONSTRAINT fk_pessoa_funcionario
        FOREIGN KEY (id_pessoa)
        REFERENCES PESSOA(id)
);

CREATE TABLE CLIENTE(
    id int AUTO_INCREMENT PRIMARY KEY,
	id_pessoa int UNIQUE NOT NULL,

    cnpj varchar(255) UNIQUE NOT NULL,
    tipo enum('JURIDICO','FISICO') NOT NULL,
    CONSTRAINT fk_pessoa_cliente
        FOREIGN KEY (id_pessoa)
        REFERENCES PESSOA(id)
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
    id_fornecedor int NOT NULL,
    id_produto int NOT NULL,
    quantidade int NOT NULL,
    valor decimal(10,2) NOT NULL,

    CONSTRAINT fk_fornecedor_fornecimento
        FOREIGN KEY (id_fornecedor)
        REFERENCES FORNECEDOR(id),

    CONSTRAINT fk_produto_fornecimento
        FOREIGN KEY (id_produto)
        REFERENCES PRODUTO(id)
);

CREATE TABLE VENDA(
	id int AUTO_INCREMENT PRIMARY KEY,
    id_funcionario int NOT NULL,
    id_cliente int NOT NULL,
    valor decimal(10,2) NOT NULL,
    quantidade int NOT NULL,
    forma enum('CREDITO','DEBITO','PIX','TED') NOT NULL,
    status bool NOT NULL,
    data_hora datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,

    CONSTRAINT fk_funcionario_venda
        FOREIGN KEY (id_funcionario)
        REFERENCES FUNCIONARIO(id),

    CONSTRAINT fk_cliente_venda
        FOREIGN KEY (id_cliente)
        REFERENCES CLIENTE(id)
);

CREATE TABLE ITEM_PEDIDO(
    id int AUTO_INCREMENT PRIMARY KEY,
    id_venda int NOT NULL,
    id_produto int NOT NULL,
    quantidade int NOT NULL,
    valor_unitario decimal(10,2) NOT NULL,
    valor_total decimal(10,2) NOT NULL,

    CONSTRAINT fk_venda_item_pedido
        FOREIGN KEY (id_venda)
        REFERENCES VENDA(id),

    CONSTRAINT fk_produto_item_pedido
        FOREIGN KEY (id_produto)
        REFERENCES PRODUTO(id)
);