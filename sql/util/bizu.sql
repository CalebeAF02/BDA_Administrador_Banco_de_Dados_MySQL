-- =====================================================================
-- EXERCÍCIOS PRÁTICOS PARADOS NOS 6 CONCEITOS DO RESUMO
-- BANCOS DE DADOS UTILIZADOS: SAKILA E WORLD
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. INNER JOIN
-- Propósito: Retorna APENAS registros com correspondência nas duas tabelas.
-- Cenário (World): Cruzar Cidades com seus respectivos Países. 
-- Se houver código de país sem par, ele não entra no resultado.
-- ---------------------------------------------------------------------
USE world;

SELECT 
    c.Name AS nome_cidade, 
    p.Name AS nome_pais
FROM city c
INNER JOIN country p ON c.CountryCode = p.Code
ORDER BY p.Name, c.Name;


-- ---------------------------------------------------------------------
-- 2. LEFT JOIN
-- Propósito: Retorna todos da esquerda + correspondências da direita. Sem par = NULL.
-- Cenário (Sakila): Mostrar todos os clientes cadastrados e a data de seus 
-- aluguéis. Caso o cliente nunca tenha alugado nada, a data virá como NULL.
-- ---------------------------------------------------------------------
USE sakila;

SELECT 
    c.first_name AS nome_cliente, 
    c.last_name AS sobrenome_cliente, 
    r.rental_date AS data_aluguel
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id;


-- ---------------------------------------------------------------------
-- 3. RIGHT JOIN
-- Propósito: Retorna todos da direita + correspondências da esquerda. Pouco usado.
-- Cenário (Sakila): Listar todos os idiomas cadastrados na direita (language) 
-- e os filmes associados a eles na esquerda (film). Se existir um idioma
-- sem nenhum filme associado, o idioma aparece e o título do filme vem NULL.
-- ---------------------------------------------------------------------
USE sakila;

SELECT 
    f.title AS titulo_filme, 
    l.name AS idioma
FROM film f
RIGHT JOIN language l ON f.language_id = l.language_id;


-- ---------------------------------------------------------------------
-- 4. CROSS JOIN
-- Propósito: Gera todas as combinações possíveis. Linhas da Tabela A x Tabela B.
-- Cenário (Sakila): Cruzar todos os idiomas com todos os tipos de categorias 
-- existentes (Simula uma matriz de "Idiomas Disponíveis por Categoria").
-- ---------------------------------------------------------------------
USE sakila;

SELECT 
    l.name AS idioma, 
    cat.name AS categoria
FROM language l
CROSS JOIN category cat;


-- ---------------------------------------------------------------------
-- 5. UNION / UNION ALL
-- Propósito: Empilha resultados de consultas verticalmente. 
-- UNION: Remove registros duplicados automaticamente.
-- UNION ALL: Mantém tudo (incluindo duplicatas) e possui melhor performance.
-- Cenário (Sakila): Juntar os nomes de todas as pessoas do banco (Atores + Clientes).
-- ---------------------------------------------------------------------
USE sakila;

-- Exemplo 5A: Usando UNION (Garante uma lista limpa, sem nomes repetidos)
SELECT first_name, 'Cadastro de Atores' AS origem 
FROM actor
UNION
SELECT first_name, 'Cadastro de Clientes' AS origem 
FROM customer
ORDER BY first_name;

-- Exemplo 5B: Usando UNION ALL (Apenas empilha, sendo muito mais rápido)
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;


-- ---------------------------------------------------------------------
-- 6. GROUP BY
-- Propósito: Agrupa registros com o mesmo valor para gerar relatórios e contagens.
-- Cenário (World): Descobrir a quantidade total de cidades cadastradas por país.
-- ---------------------------------------------------------------------
USE world;

SELECT 
    CountryCode AS codigo_pais, 
    COUNT(*) AS total_de_cidades
FROM city
GROUP BY CountryCode
ORDER BY total_de_cidades DESC;


-- ---------------------------------------------------------------------
-- 7. HAVING
-- ---------------------------------------------------------------------
USE sakila;

SELECT 
    rating as RANKING, 
    count(*) as TOTAL
FROM film
where rating in ("PG-13")
GROUP BY rating
HAVING count(*) > 200;
