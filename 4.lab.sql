use sakila;
-- 1.Get film ratings
SELECT rating FROM sakila.film;
-- 2. Get release years
select release_year from sakila.film;

-- 3.Get all films with ARMAGEDDON in the title.
select * from sakila.film where TITLE  like 'ARMAGEDDON%';

-- 4. Get all films with APOLLO in the title
select * from sakila.film where title  like 'APOLLO%';

-- 5. Get all films which title ends with APOLLO.
select * from sakila.film where title  like '%_APOLLO%';
select * from sakila.film
where title regexp 'APOLLO$';

-- 6. Get all films with word DATE in the title.
select * from sakila.film where title  like '%DATE%';

select * from sakila.film
where title regexp 'DATE';

-- 7. Get 10 films with the longest title.
select * from sakila.film order by 
length(title) desc
 limit 10;

-- 8. Get 10 the longest films.

select * from film order by 
length desc limit 10;

-- 9. How many films include Behind the Scenes content?
select count(*) from sakila.film where special_features;

-- or it could be 0 if we run the code with 'Yes': This condition filters the results to only include films where the behind_the_scenes column has the value 'Yes'
select count(*) from sakila.film where special_features = 'yes';

-- 10. List films ordered by release year and title in alphabetical order.
select title, release_year
from film
order by release_year, title;


