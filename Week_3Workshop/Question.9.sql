List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join.

-- Syntax
SELECT f.title, COUNT(fa.actor_id) AS number_of_actors
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.film_id, f.title;

