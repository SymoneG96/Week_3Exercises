You need to find the ID number, first name, and last name of an actor, where the only thing you know about him is his first name, Joe.

-- Syntax
SELECT actor_id, first_name, last_name
FROM actor WHERE first_name = 'Joe';

-- Additonal Prompt
SELECT f.title
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE a.first_name = 'Joe';