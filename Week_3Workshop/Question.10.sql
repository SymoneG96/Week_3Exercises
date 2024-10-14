 How many copies of the film HUNCHBACK IMPOSSIBLE exist in the system?
 
-- Syntax
SELECT f.title, COUNT(i.inventory_id) AS Number_in_Inventory
FROM film f
JOIN inventory i ON f.film_id = i.film_id
WHERE f.title = 'HUNCHBACK IMPOSSIBLE'
GROUP BY f.title;