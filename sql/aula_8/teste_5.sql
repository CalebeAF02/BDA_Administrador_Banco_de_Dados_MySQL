/*

Questão 1 (feito em sala)
Banco: SAKILA

Liste o nome dos clientes(Customer) e a data dos aluguéis realizados(retal).
* Dica: Use INNER JOIN

use sakila;

select * from customer;


select * from rental;

select
	c.first_name as NOME,
    r.rental_date as DATA
from customer c
inner join rental r
on c.customer_id = r.customer_id
order by r.rental_date asc;

Questão 2 (feito em sala)
Banco: WORLD

Mostre quantas cidades(city) existem cadastradas para cada país(country_code).
* Dica: Use GROUP BY + COUNT()

use world;

select * from country;

select * from city;

select 
	CountryCode as PAIS,
    count(*) as QNT_CIDADES 
from city
group by  CountryCode;

Questão 3
Banco: SAKILA

Mostre o título dos filmes e o nome do idioma em que cada filme está cadastrado.
* Dica: Use INNER JOIN

use sakila;

select * 
from film;

select * 
from language;

select 
	f.title FILME,
    l.name LINGUAGEM
from film f
inner join language l
on f.language_id = l.language_id;



Questão 4
Banco: WORLD

Mostre o nome do país e o nome da capital.

Resultado esperado:
* Dica: Use INNER JOIN

use world;

select *
from country

select 
	co.name as PAIS,
	co.GovernmentForm as CAPITAL
from country co
inner join city ci
on co.capital = ci.id;


Questão 5
Banco: SAKILA

Mostre quantos filmes existem em cada classificação (rating).
* Dica: Use GROUP BY + COUNT()

use sakila;

select * from film;

select 
	rating as RANKING,
    count(*) as QNT_FILMES
from film
group by rating;




Questão 6
Base: SAKILA

Mostre apenas as classificações que possuem mais de 180 filmes cadastrados.
* Dica: Use GROUP BY + COUNT() + HAVING

use sakila;

select * from film;

select 
	rating as RANKING,
    count(*) as QNT_FILMES 
from film
group by rating
having count(*) > 180
order by 2 asc;
    

Questão 7
Banco: SAKILA


Crie uma lista única contendo os nomes dos clientes e dos funcionários da locadora.
* Dica: Use UNION


use sakila;

select * from customer;
select * from store;
select * from staff;


select first_name, 'CLIENTE' as ORIGEM
from customer
union
select first_name, 'FUNCIONARIOS' as ORIGEM
from staff
order by 2 desc;

Desafio - Quem não fizer é *RECRUTA*
Banco: WORLD

Mostre os continentes que possuem mais de 20 países cadastrados.

use world;

select *from country;

select 
	Continent as CONTINENTE, 
    count(*) as QNT_PAISES
from country
group by Continent;

*/