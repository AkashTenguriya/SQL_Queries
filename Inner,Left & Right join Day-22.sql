--**Left join & Right Join & Inner join Day-22**

--1. INNER JOIN
--Retrieves only the matching rows from both tables.
--If there is no match, the row is excluded from the result.
--Use Case
--👉 Use INNER JOIN when you only need data that exists in both tables.

--Example Scenario
--If you join a Customers table and an Orders table using INNER JOIN, only customers who have placed orders will be included in the results.
--2. LEFT JOIN (LEFT OUTER JOIN)
--Retrieves all rows from the left table and only matching rows from the right table.
--If a row in the left table has no matching row in the right table, it will still be included in the result, with NULL values for columns from the right table.
--Use Case
--👉 Use LEFT JOIN when you want to keep all records from the left table, even if there is no corresponding record in the right table.

--Example Scenario
--If you perform a LEFT JOIN between Customers and Orders, it will return all customers, even if they haven’t placed any orders (with NULL in the Orders table columns).
--3. RIGHT JOIN (RIGHT OUTER JOIN)
--Retrieves all rows from the right table and only matching rows from the left table.
--If a row in the right table has no matching row in the left table, it will still be included in the result, with NULL values for columns from the left table.
--Use Case
--👉 Use RIGHT JOIN when you want to keep all records from the right table, even if there is no corresponding record in the left table.

--Example Scenario
--If you perform a RIGHT JOIN between Customers and Orders, it will return all orders, even if they don’t have an associated customer (with NULL in the Customers table columns).
--Summary Table
--JOIN Type	Includes Unmatched Rows?	Which Table Keeps All Rows?	NULL Values for Unmatched Rows?
--INNER JOIN	❌ No	❌ None	❌ No NULLs, only matching rows
--LEFT JOIN	✅ Yes	✅ Left Table	✅ NULLs in Right Table columns
--RIGHT JOIN	✅ Yes	✅ Right Table	✅ NULLs in Left Table columns

Use TopicwisePractice

Select * from Customers
Select * from Items


Select Customers.CustomerID,Customers.[Name],Customers.Email,Customers.[Address],items.Item_name,Items.Item_Cost
from Customers 
inner join Items on Customers.CustomerID= Items.CustomerID order by Customers.CustomerID desc

Select Customers.CustomerID,Customers.[Name],Customers.Email,Customers.[Address],items.Item_name,Items.Item_Cost
from Customers 
Left join Items on Customers.CustomerID= Items.CustomerID order by Customers.CustomerID desc

Select * from Customers

INSERT INTO Customers ([Name], Email, [Address])
VALUES 
    ('Michael Brown', 'michaelb@example.com', '101 Cedar St, Boston, MA'),
    ('Sophia Martinez', 'sophiam@example.com', '202 Birch St, San Francisco, CA'),
    ('Daniel Wilson', 'danielw@example.com', '303 Spruce St, Seattle, WA'),
    ('Olivia Taylor', 'oliviat@example.com', '404 Walnut St, Denver, CO'),
    ('William Anderson', 'williama@example.com', '505 Cherry St, Atlanta, GA')

INSERT INTO Items (Item_name, Item_Cost, CustomerID)
VALUES 
    ('Bulk Rice (50 lbs)', 180.00, NULL),
    ('Olive Oil (5L)', 200.50, NULL),
    ('Organic Honey (10 kg)', 175.75, NULL),
    ('Almonds (20 lbs)', 220.00, NULL),
    ('Premium Coffee Beans (10 kg)', 190.25, NULL);

	Select Customers.CustomerID,Customers.[Name],Customers.Email,Customers.[Address],items.Item_name,Items.Item_Cost
from Customers 
inner join Items on Customers.CustomerID= Items.CustomerID order by Customers.CustomerID desc

Select Customers.CustomerID,Customers.[Name],Customers.Email,Customers.[Address],items.Item_name,Items.Item_Cost
from Customers 
Left join Items on Customers.CustomerID= Items.CustomerID order by Customers.CustomerID desc

Select Customers.CustomerID,Customers.[Name],Customers.Email,Customers.[Address],items.Item_name,Items.Item_Cost
from Customers 
Right join Items on Customers.CustomerID= Items.CustomerID order by Customers.CustomerID desc


