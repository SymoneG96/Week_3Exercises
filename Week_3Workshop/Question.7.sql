In a single query: if the first name of the actor is currently HARPO, change it to GROUCHO. Then write a query to verify your change.

-- Syntax
UPDATE actor
SET first_name = 'GROUCHO'
WHERE first_name = 'HARPO' AND last_name = 'WILLIAMS';
SELECT * FROM actor
WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';