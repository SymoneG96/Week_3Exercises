Display the first and last name of each actor in a single column in uppercase letters. Name the column in the results Actor Name.

-- Syntax
USE sakila;
SELECT UPPER(CONCAT (first_name, ' ', last_name)) AS "Actor Name"
FROM actor;

-- Addtional question

SELECT UPPER(CONCAT (first_name, ' ', last_name)) AS "Actor Name"
FROM actor
ORDER BY last_name;