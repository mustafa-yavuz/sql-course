-- # of payments each staff member handled(# of payment not $ amount)
SELECT staff_id,COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;

-- # of payments each staff member handled(# of payment not $ amount)
SELECT rating,ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating;

-- customer ids of the top 5 customers by total spend
SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- customer ids that made more than 40 transactions
SELECT customer_id,COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount)>=40;

-- customer ids that spend more than $100 in payments with staff id#2
SELECT customer_id,staff_id,SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id,staff_id
HAVING SUM(amount)>=100;

-- name of the highest customer ID whose name starts with an 'E' and has an address ID < 500
SELECT customer_id,first_name,last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id<500
ORDER BY customer_id DESC
LIMIT 1;
