-- CREATE DATABASE BIBLIOTECA;

-- USE BIBLIOTECA;

CREATE TABLE PESSOA (
    cpf varchar(255) PRIMARY KEY,
    nome varchar(255) NOT NULL,
    data_nascimento date NOT NULL
);

CREATE TABLE AUTOR (
    id int AUTO_INCREMENT PRIMARY KEY,
    cpf_pessoa varchar(255) UNIQUE NOT NULL,

    CONSTRAINT fk_pessoa_autor
        FOREIGN KEY (cpf_pessoa)
            REFERENCES PESSOA(cpf)
);

CREATE TABLE ALUNO (
    matricula varchar(255) PRIMARY KEY,
    entrada datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ativo boolean NOT NULL,
    cpf_pessoa varchar(255) UNIQUE NOT NULL,

    CONSTRAINT fk_pessoa_aluno
        FOREIGN KEY (cpf_pessoa)
            REFERENCES PESSOA(cpf)
);

CREATE TABLE LIVRO (
    isbn varchar(13) PRIMARY KEY,
    titulo varchar(255) NOT NULL,
    ano int NOT NULL,
    editora varchar(255) NOT NULL,

    id_autor int NOT NULL,

    CONSTRAINT fk_autor_livro
        FOREIGN KEY (id_autor)
            REFERENCES AUTOR(id)

);

CREATE TABLE EMPRESTIMO (
    id int AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo date DEFAULT CURRENT_TIMESTAMP NOT NULL,
    data_devolucao date NOT NULL,

    matricula_aluno varchar(255) NOT NULL,
    isbn_livro varchar(13) NOT NULL,

    CONSTRAINT fk_aluno_emprestimo
        FOREIGN KEY (matricula_aluno)
            REFERENCES ALUNO(matricula),


    CONSTRAINT fk_livro_emprestimo
        FOREIGN KEY (isbn_livro)
            REFERENCES LIVRO(isbn)

);

CREATE TABLE CURSO (
    codigo varchar(255) PRIMARY KEY,
    nome varchar(255) NOT NULL
);

CREATE TABLE TURMA (
    codigo varchar(255) PRIMARY KEY,
    semestre varchar(255) NOT NULL
);


CREATE TABLE ESTUDA (
    matricula_aluno varchar(255) NOT NULL,
    codigo_curso varchar(13) NOT NULL,
    codigo_turma varchar(255) NOT NULL,

    CONSTRAINT fk_aluno_estuda
        FOREIGN KEY (matricula_aluno)
            REFERENCES ALUNO(matricula),


    CONSTRAINT fk_curso_estuda
        FOREIGN KEY (codigo_curso)
            REFERENCES CURSO(codigo),

    CONSTRAINT fk_turma_estuda
        FOREIGN KEY (codigo_turma)
            REFERENCES TURMA(codigo)
);