Find all actors whose last names contain the letters LI. This time, order the rows by last name and first name, in that order.

-- Syntax
SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

-- Additonal
SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE a.last_name LIKE '%LI%'
GROUP BY a.actor_id, a.first_name, a.last_name;