use world;



/*
9 - Crie uma query que agrupe as cidades por seu código de país (CountryCode) e exiba a média populacional das cidades de cada um deles. 
Filtre o resultado utilizando a cláusula correta para exibir apenas os códigos de países cuja média populacional de suas cidades seja estritamente maior que 1.500.000 de habitantes. 
Qual o resultado?
0 pontos
A) SGP e BRA
B) ETH e FIN
C) HKG e SGP ****
D) HKG e ETH
*/


select * from country;
select * from city;


select 
ci.CountryCode as pais,
avg(ci.Population) as media 
from city ci
group by ci.CountryCode
having avg(ci.Population) > 1500000
order by media desc;

/*
11 -  O departamento de geografia quer analisar a presença de idiomas. 
Escreva uma consulta que exiba o nome do país (country.Name) 
e a quantidade de idiomas diferentes registrados para ele na tabela countrylanguage. 
Exiba apenas os países que possuem mais de 6 idiomas cadastrados, ordenando da maior quantidade de idiomas para a menor.  
0 pontos
A) Canada, China, Russian Federation
B) China, India, Canada
C) United states, Canada e China ***
D) Russian federation, Brasil, India
*/

use  world;

select * from country;
select * from countrylanguage;

select 
co.Name as Nome,
(select count(cl.Language) from countrylanguage cl where co.Code = cl.CountryCode) as qnt_idiomas
from country co
where (select count(cl.Language) from countrylanguage cl where co.Code = cl.CountryCode) > 6
order by 2 desc;


/*
15 - 
Para fins de auditoria de estoque, a gerência quer identificar quais filmes do catálogo possuem poucas cópias disponíveis nas lojas. 
Escreva uma query que exiba o título do filme (title) e a quantidade total de cópias físicas registradas para ele na tabela inventory. 
O relatório deve listar apenas os filmes que possuem menos de 3 cópias no total, ordenando o resultado pelo título do filme de forma ascendente. 
Qual o nome do primeiro registro?
0 pontos
A) ANTITRUST TOMATOES
B) ANYTHING SAVANNAH
C) BABY HALL
D) CRUSADE HONEY
*/


use sakila;

select * from film;
select * from inventory;
select * from store;

select 
f.title,
(select count(i.film_id) from inventory i where i.film_id = f.film_id) as qnt_filmes
from film f
group by f.film_id
having (select count(i.film_id) from inventory i where i.film_id = f.film_id) < 3 and (select count(i.film_id) from inventory i where i.film_id = f.film_id) > 0
order by 1 asc;

