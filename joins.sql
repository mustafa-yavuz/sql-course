-- Emails of the customers that live in California
SELECT district,email FROM address INNER JOIN customer 
ON address.address_id = customer.address_id
WHERE district = 'California';

-- Emails of the customers that live in California
SELECT title,first_name,last_name FROM film INNER JOIN film_actor
ON film.film_id = film_actor.film_id
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'





