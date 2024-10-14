#1 What is the product name(s) of the most expensive products?

-- Answer
Cte de Blaye, 263.500

-- Syntax 
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = ( SELECT MAX(UnitPrice) FROM Products);

#2 What is the product name(s) and categories of the most expensive products? 

-- Answer
Cte de Blaye, Beverages, 263.500

-- Syntax 
SELECT p.ProductName, c.CategoryName, UnitPrice FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

#3 What is the order id, shipping name, and shipping address of all orders shipped via "Federal Shipping"?
 
 -- Answer
 Too long to type out
 
 -- Syntax 
SELECT o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName
FROM Orders o
JOIN Shippers s ON o.ShipVia = s.ShipperID WHERE s.CompanyName = 'Federal Shipping';

#4 What are the order ids of the orders that ordered "Sasquatch Ale"?

-- Answer
Too long to type 

-- Syntax 
SELECT DISTINCT od.OrderID, s.CompanyName FROM `Order Details` od
JOIN Orders o ON od.OrderID = o.OrderID JOIN Shippers s ON o.ShipVia = s.ShipperID
WHERE od.ProductID = (SELECT ProductID FROM Products WHERE ProductName = 'Sasquatch Ale');

#5 What is the name of the employee that sold order 10266?

-- Answer
Janet Leverling

-- Syntax 
SELECT e.FirstName, e.LastName FROM Orders o
JOIN Employees e ON o.EmployeeID = e.EmployeeID WHERE o.OrderID = 10266;

#6 What is the name of the customer that bought order 10266?

-- Answer
Pirkko Koskitalo

-- Syntax
SELECT Customers.ContactName FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID WHERE Orders.OrderID = 10266;

