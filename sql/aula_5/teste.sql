
-- use sakila;

-- 1
/*
select count(*)
from actor;
*/

-- 2
/*
select actor
from actor
where first_name like "L%"
order by actor_id asc
limit 6;
*/

-- use world;

-- 3
/*
select name
from country
order by Population desc
limit 5;
*/

-- 4
/*
select name,population
from city
where population between 10000 and 30000
order by population asc;
*/

-- 5
/*
select name,population
from city
where Name in ("NATAL","BRASILIA","CONSTANTINE");
*/

-- 6
/*
select SurfaceArea
from country
where name = "spain";
*/

-- 7
/*
select min(SurfaceArea)
from country;
*/

-- use sakila;

-- 8
/*
select count(*)
from film
where title like "%OM";
*/

-- use world;

-- 9
/*
select sum(population)
from country
where name in ("BRAZIL","GAMBIA");
*/

-- 10
/*
select count(Continent)
from country
where Continent is not null and Continent = "Europe";
*/

