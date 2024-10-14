#1 Write a query to list the product id, product name, and unit price of every product in ascending order by price.

-- Syntax 
SELECT productid, productname, unitprice
FROM products
ORDER BY unitprice ASC;

#2 What are the products that we carry where we have at least 100 units on hand in descending order by price?
-- Answer
Sirop d'rable, Grandmas Boysenberry Spread, Pt chinois, Gustaf's Knckebrd, Inlagd Sill, Boston Crab Meat, Rd Kaviar, Sasquatch Ale, Rhnbru Klosterbier, & Geitost

-- Syntax
SELECT productid, productname, unitprice, unitsinstock
FROM products
where unitsinstock > 99
ORDER BY unitprice DESC;

#3 What are the products that we carry where we have at least 100 units on hand in descending order by price? If two or more have the same price, list those in ascending order by product name.

-- Answer
I do not see two or more with the same price but I ordered the product name in asc order anyway.

-- Syntax
SELECT productid, productName, unitprice, unitsinstock From products
WHERE UnitsInStock > 99
ORDER BY UnitsInStock DESC, ProductName ASC; 

#4 Write a query against the orders table that displays the total number of distinct customers who have placed orders, by customer ID.
-- Answer 
89

-- Syntax
SELECT COUNT(DISTINCT CustomerID) AS 'Total of Distinct Customers' FROM orders; 

#5 Query that displays the total number of distinct customers who have placed orders, by customer ID, for each country where orders have been shipped.

-- Answer
Too long to type this one out
-- Syntax
SELECT ShipCountry, COUNT(DISTINCT CustomerID) AS 'Total of Distinct Customers' FROM orders
GROUP BY ShipCountry;

#6 What are the products that we carry where we have no units on hand, but 1 or more units of them are on backorder by product name?

-- Answer
Gorgonzola Telino

-- Syntax
SELECT ProductName, UnitsInStock, UnitsOnOrder FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName ASC;

#7 List the distinct job titles in employees.

-- Answer
Sales Rep, Vice President, Sales Manager, Inside Sales Coordinator

-- Syntax
SELECT DISTINCT(Title) from employees;

#7 What employees have a salary that is between $2000 and $2500 ordered by job title?

-- Answer 
Laura, Michael, Anne, Andrew

-- Syntax 
SELECT FirstName AS 'First Name', LastName AS 'Last Name',Title, Salary FROM employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title ASC;