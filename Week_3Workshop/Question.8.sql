Use JOIN to display the total amount rung up by each staff member in August of 2005, using tables staff and payment.

-- Syntax
SELECT CONCAT (staff.first_name, ' ', staff.last_name) AS staff_name, SUM(payment.amount) AS total_amount
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
WHERE payment.payment_date BETWEEN '2005-08-01' AND '2005-08-31'
GROUP BY staff.staff_id;