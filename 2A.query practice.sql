#1 Write a query to list the product id, product name, and unit price of every product that Northwind sells.
-- Syntax
Use Northwind; 
SELECT productid, productname, unitprice 
FROM products;

#2 What are the products that we carry where the unit price is $7.50 or less?

-- Answer
'Konbu', '6.0000', 'Guaran Fantstica', '4.5000','Geitost', '2.5000','Filo Mix', '7.0000','Tourtire', '7.4500

-- Syntax
SELECT productid, productname, unitprice 
From products 
Where (UnitPrice)<7.50;

#3 What are the products that we carry where we have no units on hand, but 1 or more units are on backorder?

## A little confused on the wording of this question here would untis on order be considered back order?? ##

-- Answer
'31', 'Gorgonzola Telino', '12.5000', '0', '70'

-- Syntax
SELECT productid, productname, unitprice, unitsinstock, unitsonorder
FROM products
WHERE unitsinstock = 0 AND unitsonorder > 0;

#4 How does it identify the type (category) of each item sold? Write a query to list all the seafood items we carry.
-- Answer
Each product has a corresponding categoryID related to each catergory. This makes it easier to filter.
Spegesild, Rogede sild, Rd Kaviar, Nord-Ost Matjeshering, Konbu, Jack's New England Clam Chowder, Inlagd Sill, Ikura, Gravad lax, Escargots de Bourgogne, Carnarvon Tigers, & Boston Crab Meat.	

-- Syntax
SELECT * FROM northwind.products 
where CategoryID = 8;

#5 What employees have "manager" in their titles?
-- Answer
Steven Buchanan

-- Syntax
Select Firstname,Lastname from northwind.employees where title like '%Manager';

#6 How do you know what supplier supplies each product? Write a query to list all of the items that "Tokyo Traders" supplies to Northwind.
-- Answer 
The SupplierID serves as a primary key for suppliers, and each supplier can be linked to one or more products.
The products that Tokoyo Traders supplies to Northwind are Mishi Kobe Niku, Ikura, & Longlife Tofu	

-- Syntax
Select productname, productid, supplierid FROM northwind.products where SupplierID = 4;



