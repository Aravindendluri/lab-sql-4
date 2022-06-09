-- 1.
-- Get film ratings.
select title, rating from sakila.film; 
-- 2.
-- Get release years.
select title, release_year from sakila.film;
-- 3. 
-- Get all films with ARMAGEDDON in the title.
select * 
from sakila.film
where title like '%ARMAGEDDON%';
-- 4.
-- Get all films with APOLLO in the title
select * 
from sakila.film
where title like '%APOLLO%';

-- 5.
-- Get all films which title ends with APOLLO.
select * 
from sakila.film
where title like '%APOLLO';
-- 6.
-- Get all films with word DATE in the title.
select * 
from sakila.film
where title like '%Date%';

-- 7.
-- Get 10 films with the longest title.
select title, length(title) from sakila.film
order by length(title) desc
limit 10;

-- 8.
-- Get 10 the longest films.
select title, length from sakila.film
order by length desc
limit 10;

-- 9.
-- How many films include Behind the Scenes content?
select count(title) from sakila.film
where special_features regexp 'Behind the Scenes';


 --10
select release_year, title from sakila.film
group by title; 

