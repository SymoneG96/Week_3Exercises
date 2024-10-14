The actor HARPO WlLLlAMS was accidentally entered in the actor table as GROUCHO WILLIAMS Write one query to fix the record, plus another to verify the change.

-- Syntax 
UPDATE actor
SET first_name = 'HARPO'
WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';
SELECT * FROM actor
WHERE first_name = 'HARPO'AND last_name = 'WILLIAMS';
