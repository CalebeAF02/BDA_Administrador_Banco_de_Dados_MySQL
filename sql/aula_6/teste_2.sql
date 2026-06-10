/**
*QUESTÕES USANDO O BANCO DE DADOS WORLD*
1 - Liste os 7 países mais populosos da Ásia cuja expectativa de vida seja superior a 70 anos(Ordene do mais populoso para o menos populoso).

Exiba:

* Nome

* População

* Expectativa de vida

use world;

select name,population,LifeExpectancy
from country
where (Continent = "Asia") and (LifeExpectancy >= 70.0)
order by population desc
limit 7;


2 - Liste os países da América do Sul que possuem população entre 5 milhões e 10 milhões de habitantes(Ordene alfabeticamente).

Exiba:

* Nome

* Continente

* População

select name,Continent,Population
from country
where (Population between 5000000 and 10000000) and (Continent = "South America")
order by name asc;


3 - Mostre todos os países cujo nome começa com a letra "B" e possuem expectativa de vida superior à média mundial.

select name,LifeExpectancy
from country
where LifeExpectancy > (select avg(LifeExpectancy) from country) and (name like "B%");

4 - Descubra:

*maior população do continente África

select max(Population) as Mais_Populoso,
from country
where Continent = 'Africa';

* menor população do continente África

select min(Population) as Menos_Populoso,
from country
where Continent = 'Africa';

* média populacional da África

select avg(Population) as Media
from country
where Continent = 'Africa';

select max(Population) as Mais_Populoso,
min(Population) as Menos_Populoso,
avg(Population) as Media
from country
where Continent = 'Africa';

5 - Liste os países que pertencem à Europa, Ásia ou América do Norte e possuem população superior a 50 milhões.

Ordene da maior para a menor população.

select *
from country
where (Continent in ('Europe','Asia','North America')) and (Population > 50000000)
order by Population asc;

*QUESTÕES USANDO O BANCO DE DADOS SAKILA*
6 - Liste os 20 filmes mais longos classificados como:

PG

PG-13

(Ordene da maior duração para a menor.)

Exiba:

* título

* duração

* classificação

use sakila;

select title,length,rating
from film
where (rating in ("PG","PG-13"))
order by length asc
limit 20;

7 - Descubra:

* duração média dos filmes

select avg(length) as Media,
from film;
where rating = "R";

* maior duração

select max(length) as Mais_Tempo,
from film;
where rating = "R";

* menor duração

select min(length) as Menos_Tempo
from film
where rating = "R";

(Apenas dos filmes classificados como "R".)

select avg(length) as Media,
max(length) as Mais_Tempo,
min(length) as Menos_Tempo
from film
where rating = "R";

8 - Liste os filmes cujo(ORDENE POR ORDEM ALFABÉTICA):

* título começa com "A"

* duração superior a 120 minutos

select title
from film
where (title like "A%") and (length > 120)
order by title asc;

9 - Quantos filmes existem em cada classificação abaixo?

* G

select count(*)
from film
where rating = "G";

* PG

select count(*)
from film
where rating = "PG";

* PG-13

select count(*)
from film
where rating = "PG-13";

* R

select count(*)
from film
where rating = "R";

* NC-17

select count(*)
from film
where rating = "NC-17";

*(Proibido usar GROUP BY (por enquanto).)*

select sum((select count(*) from film where rating = "G") + (select count(*) from film where rating = "PG") + (select count(*) from film where rating = "PG-13") + (select count(*) from film where rating = "R") + (select count(*) from film where rating = "NC-17"));

10 - Liste os 30 filmes mais curtos cadastrados.

Exiba:

* título

* duração

* ano de lançamento

select title,length,release_year
from film
order by length asc
limit 30;

*QUESTÃO EXTRA*
11 - Encontre os 10 países mais populosos do mundo que possuem expectativa de vida abaixo da média mundial.

Exiba:

* Nome

* População

* Expectativa de vida

use world;

select name,Population,LifeExpectancy
from country
where LifeExpectancy < (select avg(LifeExpectancy) from country)
order by Population desc
limit 10;

/