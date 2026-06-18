/*

Atividade 4 - Versão anti-recruta

1 - Liste os países que:(use WORLD)
pertencem à África
possuem população acima de 15 milhões
possuem expectativa de vida entre 50 e 70 anos
possuem área territorial menor que 1.000.000

Exiba:

* Nome
* População
* Área
* Expectativa de vida

Ordene pela população em ordem decrescente.

use world;

select 
name as  nome,
Population as populacao,
SurfaceArea area,
LifeExpectancy as expctativa_de_vida
from country
where (Continent = 'Africa') and (LifeExpectancy between 50 and 70) and (SurfaceArea < 1000000)
order by Population desc;


2 - Liste os países cujo:(use WORLD)
nome possui a letra L
ano de independência é anterior a 1950
expectativa de vida é superior a 65 anos

Exiba:
* Nome
* Ano de independência
* Expectativa de vida

Ordene pelo ano de independência.


select 
name as  nome,
IndepYear as ano_de_idenpendencia,
LifeExpectancy as expctativa_de_vida
from country
where (name like "%L%") and (IndepYear < 1950) and (LifeExpectancy > 65)
order by IndepYear asc;

3 - qual o menor valor do aluguel de um filme (use SAKILA)?

use sakila;

select min(rental_rate) AS MENOR_VALOR_DE_UM_FILME
from film;

4 - Liste os países da América do Sul e América do Norte que possuem área superior à média mundial das áreas territoriais:(USE WORLD)

Exiba:

* Nome
* Continente
* Área

Ordene pela maior área.

use world;

select 
Name as nome,
Continent as continente,
SurfaceArea area
from country
where (Continent in ('South America', 'North America')) and (SurfaceArea > (select avg(SurfaceArea) from country))
order by SurfaceArea desc;


5 - Descubra quantos países possuem:(use WORLD)
* expectativa de vida acima de 80 anos
* população superior a 5 milhões

select count(*) as qnt_paises
from country
where (LifeExpectancy > 80) and (Population > 5000000);

6 - Liste os filmes que:(use SAKILA)

possuem duração acima de 120 minutos
classificação diferente de 'NC-17'
custo de reposição superior a 20.00

Exiba:
* Título
* Classificação
* Duração
* Custo de reposição

Ordene pela maior duração.

use sakila;

select 
title as titulo,
rating as ranking,
length as tempo_de_filme,
replacement_cost as custo_de_reposicao
from film
where (length > 120) and (rating != 'NC-17') and (replacement_cost > 20.00)
order by length desc;

7 - Liste os filmes cujo:
valor de aluguel está entre 0.99 e 2.99
duração está entre 80 e 130 minutos
título contém a letra "E"

Exiba:
* Título
* Valor do aluguel
* Duração

Ordene alfabeticamente.

select 
title as titulo,
rental_rate as valor_aluguel,
length as tempo_de_filme
from film
where (rental_rate between 0.99 and 2.99) and (length between 80 and 130) and (title like "%E%")
order by title asc;


8 - Descubra:
quantos filmes possuem duração acima da duração média de todos os filmes

select count(*) as filmes_com_duracao_acima_da_media
from film
where length > (select avg(length) from film);


9 - Liste os 25 filmes mais caros para reposição que possuem classificação:
PG
PG-13
R

Exiba:
* Título
* Classificação
* Custo de reposição

Ordene pelo maior custo.

select 
title as titulo,
rating as ranking,
replacement_cost as custo_de_reposicao
from film
where  rating in('PG','PG-13','R')
order by replacement_cost desc
limit 25;


10 - Liste os filmes que:
possuem duração inferior à média dos filmes
possuem valor de aluguel superior à média dos valores de aluguel

Exiba:
* Título
* Duração
* Valor do aluguel

Ordene pelo maior valor de aluguel.

select 
title as titulo,
length as tempo_de_filme,
rental_rate as custo_do_aluguel
from film
where (length < (select avg(length) from film)) and (rental_rate > (select avg(rental_rate) from film))


*/