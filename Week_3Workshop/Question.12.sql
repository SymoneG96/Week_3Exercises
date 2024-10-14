Insert a record to represent Mary Smith renting the movie ACADEMY DINOSAUR from Mike Hillyer at store number 1 today. Then write a query to capture the exact row you entered into the rental table.

-- Syntax
INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id)
VALUES (CURRENT_DATE(), ( SELECT inventory_id FROM inventory WHERE film_id = ( SELECT film_id FROM film WHERE title = 'ACADEMY DINOSAUR')
AND store_id = 1 LIMIT 1), ( SELECT customer_id FROM customer WHERE first_name = 'Mary' AND last_name = 'Smith'), NULL, (SELECT staff_id FROM staff
WHERE first_name = 'Mike' AND last_name = 'Hillyer'));
SELECT * FROM  rental
ORDER BY rental_id DESC LIMIT 1;