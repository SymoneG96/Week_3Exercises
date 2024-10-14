#1 List the product id, product name, unit price and category name of all products. Order by category name and within that, by product name.

-- Answer 
SELECT productiD, ProductName, UnitPrice, CategoryName from products p
JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryID ASC, p.ProductName ASC;

#2 List the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.

-- Answer
SELECT ProductID, ProductName, UnitPrice, northwind.suppliers.CompanyName FROM northwind.products
INNER JOIN northwind.suppliers ON northwind.products.SupplierID = northwind.suppliers.SupplierID
WHERE UnitPrice >= 75
ORDER BY ProductName;

#3 List the product id, product name, unit price, category name, and supplier name of every product ordered by product name.

-- Answer
SELECT ProductID, ProductName, UnitPrice, northwind.categories.CategoryName, northwind.suppliers.CompanyName 
FROM northwind.products
JOIN northwind.categories ON northwind.products.CategoryID = northwind.categories.CategoryID
JOIN northwind.suppliers ON northwind.products.SupplierID = northwind.suppliers.SupplierID
ORDER BY ProductName;


#4 List the order id, ship name, ship address, and shipping company name of every order that shipped to Germany.

-- Answer
SELECT OrderID, ShipName, ShipAddress, northwind.shippers.CompanyName 
FROM northwind.orders
JOIN northwind.shippers ON northwind.orders.shipvia = northwind.shippers.shipperid
WHERE ShipCountry = 'Germany'
ORDER BY CompanyName ASC, OrderID ASC;

#5 List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"

-- Answer
SELECT Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress FROM Orders
JOIN `Order Details` ON Orders.OrderID = `Order Details`.OrderID
JOIN Products ON `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName = 'Sasquatch Ale';