For last names that are shared by at least two actors, list those last names and the number of actors who have that last name.

-- Syntax
SELECT last_name, COUNT(*) AS num_actors
FROM actor
GROUP BY last_name
HAVING COUNT(*) >= 2;