What is the price of the cheapest item that Northwind sells?

-- Answer
Geitost 2.5000

-- Syntax
SELECT productname, MIN(unitprice) AS CheapestItem
FROM northwind.products
GROUP BY ProductName
ORDER BY CheapestItem ASC
LIMIT 1;

OR for just the price itself

SELECT MIN(unitprice) AS CheapestPrice
FROM northwind.products;

#2 What is the average price of items that Northwind sells?

-- Answer
28.86 

-- Syntax
SELECT AVG(unitprice) AS 'Average Item Price'
FROM northwind.products;

#3 What is the price of the most expensive item that Northwind sells?

-- Answer
263.50

-- Syntax
Select max(unitprice) AS 'Most Expensive Product'
FROM northwind.products;
OR
SELECT ROUND(MAX(UnitPrice),2) AS 'Most Expensive Product' 
From products;

#4 What is the sum of all the employee's salaries?

-- Answer 
20362.93

-- Syntax
Select Round(Sum(Salary),2) AS 'Total Company Payroll'
From employees;
OR
SELECT Sum(Salary) AS ' Total Company Payroll'
From northwind.employees;

#5 Which employee makes the highest salary, and which employee makes the lowest?

-- Answer 
Steven Buchanan( Lowest ) & Janet Leverling ( Highest )

-- Syntax
  SELECT
  ( SELECT CONCAT (FirstName, ' ', LastName)
    FROM employees
    ORDER BY Salary DESC
    LIMIT 1 ) AS HighestSalaryEmployee,
  ( SELECT CONCAT (FirstName, ' ', LastName)
    FROM employees
    ORDER BY Salary ASC
    LIMIT 1 ) AS LowestSalaryEmployee;
  
  #6 What is the supplier ID of each supplier and the number of items they supply?
  
  -- Answer
  Too long to type out
  
  -- Syntax
SELECT SupplierID, COUNT(ProductID) AS NumberOfItemsSupplied 
FROM Products
GROUP BY SupplierID;

#7 What is the category ID of each category and the average price of each item in the category? 
-- For time sake I will no longer list mutiple Syntaxs & or direct answers from sytanx results. Only syntax answers!

-- Syntax
SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
FROM Products
GROUP BY CategoryID;

#8 
For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?

-- Syntax
SELECT SupplierID, COUNT(ProductID) AS NumberOfItemsSupplied
FROM Products
GROUP BY SupplierID
HAVING COUNT(ProductID) >= 5;

#9 List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand). Sort the results in descending order by value. Iftwo or more have the same value, order by product name

-- Syntax
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName ASC;
