-- # of payment transactions > $5.00
SELECT COUNT(*) FROM payment
WHERE amount > 5.00;

-- # of actors whose first names start with 'P'
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

-- # of unique districts the customers are from
SELECT COUNT(DISTINCT(district)) FROM address;

-- List of names of those unique districts
SELECT DISTINCT(district) FROM address;

-- # of films with 'R' rating and replacement cost between $5 and $15
SELECT COUNT(*) FROM film
WHERE rating='R' AND replacement_cost BETWEEN 5.00 AND 15.00;

-- # of films that have the word 'Truman' somewhere in the title
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%'

