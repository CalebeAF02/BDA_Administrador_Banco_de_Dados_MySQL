alter table cliente 
add column telefone varchar(255);


/*
1- Escreva o script SQL para criar um banco de dados chamado ExercitoDB e adicione as duas tabelas descritas a seguir, aplicando corretamente as restrições:


Tabela Alunos:
* AlunoID: Chave primária que deve gerar valores numéricos sequenciais automaticamente.
* Nome: Texto (máximo 150 caracteres), obrigatório preenchimento.
* Email: Texto (máximo 100 caracteres), não pode haver emails duplicados no sistema e o preenchimento é obrigatório.
* DataMatricula: Data padrão deve ser a data atual do sistema se não for informada.

Tabela Matriculas:
* MatriculaID: Chave primária inteira.
* AlunoID: Código do aluno (deve vincular-se à tabela Alunos).
* Curso: Texto (máximo 100 caracteres), obrigatório.
* StatusCurso: Texto, com uma verificação para aceitar apenas os valores: 'Ativo', 'Trancado' ou 'Concluído'.

Modificação Estrutural:

* Após criar as tabelas, utilize um comando para adicionar uma nova coluna chamada NotaFinal (tipo numérico decimal) na tabela Matriculas.
* Insira 4 dados em cada entidade
*/

create database ExercitoDB;

use ExercitoDB;


create table ALUNO (
AlunoID int auto_increment primary key,
Nome varchar(150) not null,
Email varchar(100) unique not null ,
DataMatricula datetime default current_timestamp not null
);

create table MATRICULA (
MatriculaID int auto_increment primary key,
AlunoID int not null,
Curso varchar(100) not null ,
StatusCurso enum("Ativo","Trancado","Concluido") not null,

constraint fk_aluno_matricula
FOREIGN KEY (AlunoID)
REFERENCES ALUNO(AlunoID)
);



alter table MATRICULA
add column NotaFinal decimal(10,0);


insert into ALUNO(Nome,Email)
values
("Calebe","Calebe@gmail.com"),
("Joao","Joao@gmail.com"),
("Alves","Alves@gmail.com"),
("Nicolas","Nicolas@gmail.com");

select * from ALUNO;

insert into MATRICULA(AlunoID,Curso,StatusCurso,NotaFinal)
values
(1,"LIC","Ativo",10.00),
(2,"ADS","Trancado",4.00),
(3,"ADS","Ativo",7.00),
(1,"BD","Concluido",10.00);

select * from MATRICULA;


-- Utilize os bancos de dados World e Sakila para resolver as questões de manipulação e consulta de dados (DML) abaixo. 
-- Preste muita atenção aos critérios de filtragem, junções e agrupamentos solicitados.

/*
1 - Questão 1 (SAKILA):
Escreva uma consulta que retorne o título (title), a descrição (description) e o ano de lançamento (release_year) de todos os filmes que possuem a classificação indicativa (rating) igual a 'G'.  

*/

use sakila;

select * from film;

select 
title as Titulo,
description as Descricao,
release_year as Ano_de_Lancamento
from film
where rating = "G";


/*
Questão 2 (SAKILA):
A equipe de marketing precisa listar os clientes que estão atualmente inativos para uma campanha de reengajamento. 
Exiba o primeiro nome (first_name), o sobrenome (last_name) e o email de todos os clientes (tabela customer) cujo status de ativo (active) seja igual a 0. 
Ordene o resultado alfabeticamente pelo sobrenome. 
Pense em uma solução para trazer esses usuários de volta  

*/

use sakila;

select * from film;

select * from customer;


select 
first_name as Nome,
last_name as Sobrenome,
email as Email
-- active as Status
from customer
where active = 0
order by 1 asc;


-- Adicionar filmes que tenham como categoria as listadas abaixo pois e delas q possui a menor aldiencia atual!

select * from category;

select 
name as Categoria,
(select count(*) from customer where active = 0) total
from category
group by Categoria
having count(*) >= 0 
order by 2 desc;

/*
Questão 3 (WORLD):
Escreva uma consulta que exiba o nome (Name), o continente (Continent) e a população (Population) de todos os países que pertencem ao continente 'South Africa'.

*/

use wolrd;

select * from country;

select
name as Nome,
Continent as Continente,
Population as Populacao
from country
where Continent = 'Africa';


/*
Questão 4 (WORLD):
Escreva uma consulta que retorne o nome do país, o nome da sua respectiva cidade capital e a expectativa de vida apenas para os países localizados no continente 'Europe'. 
O relatório deve omitir qualquer país que não possua uma capital cadastrada ou que tenha a expectativa de vida nula (NULL) ,
 ordenando o resultado final do país com a maior expectativa de vida para o menor.  

*/

use world;

select * from country;
select * from city;


select 
co.name as Estado,
ci.name as Capital,
co.LifeExpectancy as Espectativa_de_Vida
from country co
inner join city ci
on ci.id = co.capital
where (co.Continent = 'Europe') and (co.capital is not null) and (co.LifeExpectancy is not null)
order by 3 desc;


/*
Questão 5 (WORLD):
Crie uma query que agrupe as cidades pelo código do país (CountryCode) e exiba a média populacional das cidades de cada um. 
No entanto, o relatório deve exibir apenas os países cuja média populacional de suas cidades seja estritamente maior que 2.000.000 de habitantes.  

*/

use world;

select * from country;
select * from city;


select 
CountryCode as Codigo_do_Estado,
avg(Population) as Media_populacional
from city
group by CountryCode
having avg(Population) > 2000000;



/*
Questão 6 (WORLD):
O departamento de estatística precisa analisar a diversidade linguística mundial. 
Escreva uma consulta que exiba o nome do país (country.Name) e a quantidade de idiomas diferentes falados nele (baseado na tabela countrylanguage). 
Exiba apenas os países que possuem mais de 5 idiomas registrados e ordene o resultado da maior quantidade de idiomas para a menor.  Banco de Dados SAKILA

*/

use world;

select * from country;
select * from countrylanguage;

select 
co.name as Pais,
(select count(*) from countrylanguage cl where cl.CountryCode = co.code) as Idiomas
from country co
where (select count(*) from countrylanguage cl where cl.CountryCode = co.code) > 5
order by 2 desc;



/*
Questão 7 (SAKILA):
O gerente da locadora precisa de um relatório de desempenho financeiro por categoria de filme. 
Escreva uma consulta que exiba o nome da categoria do filme (tabela category) e o valor total arrecadado (soma de amount na tabela payment) para cada uma delas. 
Para isso, você precisará conectar as tabelas category, film_category, film, inventory, rental e payment. Ordene o resultado final pelo faturamento de forma decrescente.  

*/

use sakila;

select * from category;

select * from film_category;
select * from film;
select * from inventory;
select * from rental;
select * from payment;


select 
ca.name as Categoria,
sum(p.amount) TOTAL
from category ca
inner join film_category fc on (ca.category_id = fc.film_id) 
inner join film f on (fc.film_id = f.film_id)
inner join inventory i on (f.film_id = i.film_id)
inner join rental r on(i.film_id = r.inventory_id)
inner join payment p on (r.inventory_id = p.rental_id)
group by 1
order by 2 desc;


/*
Questão 8 (SAKILA):
Escreva uma consulta para encontrar o nome completo (nome e sobrenome) 
e o email de todos os clientes 
que realizaram um número total de locações (rentals) maior do que a média geral de locações por cliente do sistema.
 Ordene o resultado final em ordem alfabética pelo sobrenome do cliente.  

*/

use sakila;


select * from film;
select * from inventory;
select * from rental;
select * from customer;
select * from store;
select * from address;

select 
c.first_name as nome,
c.last_name as sobrenome,
c.email,
count(r.rental_id) as Locacoes
from customer c
inner join rental r on (r.customer_id = c.customer_id)
group by c.customer_id, c.first_name, c.last_name, c.email
having count(r.rental_id) > (select avg(total_de_clientes) from (select count(r.rental_id) as total_de_clientes from rental r group by r.rental_id) as clientes)
order by 2 asc;



/*
Questão 9 (SAKILA):
Encontre todos os filmes cuja descrição (description) contenha especificamente a palavra 'Documentary' 
e cujo preço de locação (rental_rate) esteja no intervalo entre $2.00 e $5.00. 
Exiba o título, a descrição e o preço de locação, 
limitando o resultado final estritamente aos 10 primeiros registros encontrados, 
ordenados de forma alfabética pelo título.  

*/

use sakila;

select * from film;

select 
title as Titulo,
description as Descricao,
rental_rate as Preco
from film
where (description like "%Documentary%") and (rental_rate between 2.00 and 5.00)
order by 1 asc
limit 10;

/*
Questão 10 (SAKILA):
Identifique quais atores (exibindo actor_id, first_name e last_name) 
participaram de filmes que, somados, acumulam um custo de substituição (replacement_cost) superior a $1.000,00. 
Ordene o resultado pelo custo total de substituição de forma decrescente para descobrir os atores "mais caros" do catálogo.
*/

use sakila;

select * from actor;
select * from film;
select * from film_actor;

select 
a.actor_id as id,
a.first_name as nome,
a.last_name as sobrenome,
sum(f.replacement_cost) as custo_de_substituicao
from actor a
inner join film_actor fa on (a.actor_id = fa.actor_id)
inner join film f on (f.film_id = fa.film_id)
group by a.actor_id, a.first_name, a.last_name
having sum(replacement_cost) < 1000
order by custo_de_substituicao desc;