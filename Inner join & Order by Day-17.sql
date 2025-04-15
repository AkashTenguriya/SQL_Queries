--**Day-17 *Inner joint * & *Order by * 

-- 1. Matching Rows: The INNER JOIN compares the rows of two tables based on a common column (typically a foreign key and primary key relationship). The join condition usually involves an equality comparison between a column in the first table and a column in the second table.

-- 2. Exclusion of Non-Matching Rows: Only the rows that have corresponding matches in both tables will appear in the final result. Rows that do not have a match in either of the tables are excluded from the result.

-- 3. Returns Results Based on Criteria: The INNER JOIN combines the selected columns from both tables only for the rows that meet the condition specified in the ON clause.

-- 4. The ORDER BY clause in SQL is used to sort the result set of a query based on one or more columns. This helps in arranging the data in either ascending (default) or descending order. Sorting the data can improve the readability of the results and help in analyzing data more efficiently.

-- 5. The ORDER BY clause is essential for organizing query results in SQL. It allows you to sort data in ascending or descending order based on one or more columns, making it easier to analyze and interpret the data. Whether you're working with numbers, dates, or strings, ORDER BY ensures that the data is presented in a meaningful and organized way.

Select * from Customers --Parent Table (Primary Key)
Select * from Items --Child Table (Foreing Key Key)

Select Customers.CustomerID,Customers.Name,Customers.Email,Customers.Address,Items.Item_name,Items.Item_Cost
from Customers inner join Items on Customers.CustomerID = Items.CustomerID order by Customers.CustomerID Asc


Create table Tourist (
TrourID Int Primary key Identity(1,1),
Place_Name Varchar (50),
Cost Decimal (10,2)
)
INSERT INTO Tourist (Place_Name, Cost)
VALUES
  ('Eiffel Tower', 25000.00),
  ('Great Wall of China', 30000.00),
  ('Machu Picchu', 20000.00),
  ('Colosseum', 15000.00),
  ('Taj Mahal', 18000.00),
  ('Grand Canyon', 22000.00),
  ('Sydney Opera House', 25000.00),
  ('Mount Fuji', 19000.00),
  ('Stonehenge', 17000.00),
  ('Pyramids of Giza', 25000.00),
  ('Christ the Redeemer', 20000.00),
  ('Statue of Liberty', 16000.00),
  ('Acropolis of Athens', 18000.00),
  ('Sagrada Familia', 21000.00),
  ('Victoria Falls', 15000.00)


Create table Tour_Members(
MemberId int Primary key Identity(1,1),
Member_Name Varchar (50),
Number_Of_Days Int,
TrourID Int Foreign key References Tourist(TrourID)
)

INSERT INTO Tour_Members (Member_Name, Number_Of_Days,TrourID)
VALUES
  ('Alice Johnson', 5, 1),
  ('Bob Smith', 7, 3),
  ('Charlie Brown', 10, 2),
  ('David Clark', 6, 5),
  ('Eva Davis', 8, 9),
  ('Fayla Harris', 4, 4),
  ('George Miller', 12, 6),
  ('Helen Carter', 9, 8),
  ('Ivy Walker', 11, 7),
  ('Jack Turner', 14, 10),
  ('Kara Moore', 15, 12),
  ('Liam Young', 13, 14),
  ('Monica Scott', 7, 11),
  ('Nathan Allen', 6, 13),
  ('Olivia Adams', 5, 15)

  Select * From Tourist
  Select * From Tour_Members

Select Tourist.TrourID,Tour_Members.Member_Name,Tourist.Place_Name,Tour_Members.Number_Of_Days,Tourist.Cost
From Tourist 
inner join Tour_Members on Tourist.TrourID = Tour_Members.TrourID Order by Tourist.TrourID Desc