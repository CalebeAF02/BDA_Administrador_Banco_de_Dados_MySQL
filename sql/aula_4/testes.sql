SET FOREIGN_KEY_CHECKS = 0;


select * from actor where first_name = 'Calebe' and last_name = 'Alves';

delete from actor where first_name = 'thora';

update actor set first_name = 'Calebe', last_name = 'Alves' where first_name = 'nick' and last_name = 'DEGENERES';

insert INTO actor (actor_id, first_name, last_name)
values
(9999,'jubileu','silva');

select count(first_name) from actor where first_name = 'jubileu' and last_name = 'silva';


SELECT actor.first_name, film_actor.film_id 
FROM actor
INNER JOIN film_actor ON actor.first_name = 'calebe' ;

use world;

SELECT * 
FROM city 
WHERE NAME LIMIT "A%"
order by population DESC 

limit 10;

SELECT NAME 
FROM CITY 
WHERE POPULATION 
BETWEEN 100 and 200000
ORDER BY POPULATION ASC 
limit 15;