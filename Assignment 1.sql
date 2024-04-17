-- SQL Assignment 1
-- Sebastian, Yoko, Jason, Allison
-- 01-29-2024

Use sakila;

-- Q1
-- Write a query to show the first 8 movie names and their released year in the film table.
SELECT title, release_year
FROM film
LIMIT 8;

-- Q2
-- Write a query showing the first 7 'R' rated movies in the film table
SELECT title, rating
FROM film
WHERE rating = 'R'
LIMIT 7;

-- Q3
-- Do we have any actors or actresses with the name of Penelope on the actor's table? 
SELECT *
FROM actor
WHERE first_name = 'Penelope';

-- Q4
-- Show all the actors with the name of Penelope (Q3), but show them sorted in alphabetical order based on their last names. 
-- (Show first and last name in one column as ‘Full name’)
SELECT concat(first_name, ' ', last_name) AS 'Full name'
FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name;

-- Q5
-- Do we have any actors or actresses with the first name of Penelope and the last name of 'Cruz' on the actor's table? 
-- Show her in the result window. 
SELECT *
FROM actor
WHERE first_name = 'Penelope'
AND last_name = 'Cruz';

-- Q6
-- Report all the actor's names starting with "Gi" in the actor’s table
SELECT *
FROM actor
WHERE first_name REGEXP '^Gi';

-- Q7
-- In the payment table, we need to show the payment Id of all the payment amounts greater than (or equal to) 8 and less than or equal to 8.99. (Use Between)
SELECT payment_id
FROM payment
WHERE amount BETWEEN 8 AND 8.99;

-- Q8
-- Show all the 46-minute movies with a value in their language id.
SELECT *
FROM film
WHERE length = 46 AND language_id IS NOT NULL;

-- Q9
-- Show all the Canadian cities. (Find the country code in the country table and use it in your query.
SELECT country_id
FROM country
WHERE country = 'Canada'; -- 20

SELECT city
FROM city
WHERE country_id = 20;








