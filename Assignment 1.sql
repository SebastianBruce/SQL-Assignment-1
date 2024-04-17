-- SQL Assignment 1
-- Sebastian, Yoko, Jason, Allison
-- 01-29-2024

Use sakila;

-- Q1
SELECT title, release_year
FROM film
LIMIT 8;

-- Q2
SELECT title, rating
FROM film
WHERE rating = 'R'
LIMIT 7;

-- Q3
SELECT *
FROM actor
WHERE first_name = 'Penelope';

-- Q4
SELECT concat(first_name, ' ', last_name) AS 'Full name'
FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name;

-- Q5
SELECT *
FROM actor
WHERE first_name = 'Penelope'
AND last_name = 'Cruz';

-- Q6
SELECT *
FROM actor
WHERE first_name REGEXP '^Gi';

-- Q7
SELECT payment_id
FROM payment
WHERE amount BETWEEN 8 AND 8.99;

-- Q8
SELECT *
FROM film
WHERE length = 46 AND language_id IS NOT NULL;

-- Q9
SELECT country_id
FROM country
WHERE country = 'Canada'; -- 20

SELECT city
FROM city
WHERE country_id = 20;








