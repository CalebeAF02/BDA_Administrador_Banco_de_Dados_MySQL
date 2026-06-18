
/*
Questão 1
Banco: WORLD

Mostre o nome das cidades e o nome do país ao qual elas pertencem.
* Dica: 
INNER JOIN
*/

use word;

select * from country;

select 
	ci.name as CIDADE,
	co.name as PAIS
from city ci
inner join country co
where ci.CountryCode = co.code;



/*
Questão 2
Banco: SAKILA

Mostre quantos filmes existem em cada classificação (rating).
* Dica:
GROUP BY
COUNT()
*/

use sakila;


select * from film;

select 
	rating as RANKING,
    count(*) as QNT_FILMES
from film
group by rating;

/*
Questão 3
Banco: WORLD

Mostre quantos países existem em cada continente.
* Dica:
GROUP BY
COUNT()
*/

use world;

select * from country;

select 
	Continent as CONTINENTE,
    count(*) as QNT_PAISES
from country
group by Continent;

/*
Questão 5
Banco: SAKILA

Mostre apenas as classificações que possuem mais de 180 filmes.
* Dica:
GROUP BY
COUNT()
HAVING
*/

use sakila;

select * from film;

select 
	rating,
    count(*)
from film
group by rating
having count(*) > 180;

/*
Questão 6
Banco: WORLD

Mostre apenas os continentes que possuem mais de 20 países cadastrados.
* Dica:
GROUP BY
COUNT()
HAVING
*/


use world;

select * from country;

select 
	Continent as CONTINENTE,
    count(*) as QNT_PAISES
from country
group by Continent
having count(*) > 20;


/*
Questão 7
Banco: SAKILA

Crie uma lista única contendo os nomes dos clientes e dos funcionários.
* Dica:
UNION
*/

use sakila;

select first_name as PESSOA
from customer
union
select first_name as PESSOA
from staff;


/*
8 - Questão bônus
Banco: SAKILA

Mostre o idioma dos filmes e a quantidade de filmes em cada idioma.
* Dica:
INNER JOIN
GROUP BY
COUNT()
*/

use sakila;

select * from film;

select
	name,
    count(*)
from language l
inner join film f
where (l.language_id = f.language_id)
group by l.name;


(select count(*) from film f, language l where (f.language_id = l.language_id));

