--**Day-16 *Inner joint * & *Foreign Key * & *Primary Key* 

--Primary Key:
--1. Uniqueness: A primary key uniquely identifies each record in a table. No two rows can have the same primary key value.
--2. Uniqueness & Non-null: The primary key column(s) must have unique values and cannot contain NULL values.
--3. One per table: A table can only have one primary key.
--4. Purpose: The primary key is used to identify a specific record within its own table.

--Foreign Key:
--1. Reference: A foreign key is a column (or a set of columns) that establishes a link between data in two tables.
--2. Relational Integrity: It creates a relationship between a column in one table and the primary key (or unique key) in another table.
--3. Can Be Null: Unlike a primary key, a foreign key can contain NULL values (if allowed by the relationship).
--4. Multiple Per Table: A table can have multiple foreign keys, each referencing a different table.
--5. Purpose: The foreign key ensures that the values in the referencing column(s) match values in the referenced table’s primary key or unique key, maintaining referential integrity.

Create table Cell_Phones (
PhoneID Int Primary key Identity (1,1),
[Name] Varchar (50),
Company Varchar (50)
)
INSERT INTO Cell_Phones ([Name], Company)
VALUES 
  ('iPhone 13', 'Apple'),
  ('iPhone 12', 'Apple'),
  ('iPhone 11', 'Apple'),
  ('Galaxy S21', 'Samsung'),
  ('Galaxy S20', 'Samsung'),
  ('Galaxy Note 20', 'Samsung'),
  ('Pixel 6', 'Google'),
  ('Pixel 5', 'Google'),
  ('Pixel 4', 'Google'),
  ('OnePlus 9', 'OnePlus'),
  ('OnePlus 8T', 'OnePlus'),
  ('OnePlus 8', 'OnePlus'),
  ('Moto G Power', 'Motorola'),
  ('Moto G Stylus', 'Motorola'),
  ('Nokia 7.2', 'Nokia')


Create table Mfg_Phones (
CountryId int Primary key Identity (1,1),
Mfg_Comapny Nvarchar (50),
Model Varchar (50),
Price Decimal (10,2),
PhoneID Int Foreign key References Cell_Phones(PhoneID)
)

INSERT INTO Mfg_Phones (Mfg_Comapny , Model, Price, PhoneID)
VALUES
  ('Apple', 'iPhone 13', 99999.99, 3),
  ('Samsung', 'Galaxy S21', 79999.99, 5),
  ('Google', 'Pixel 6', 67999.99, 1),
  ('OnePlus', 'OnePlus 9', 74999.99, 15),
  ('Motorola', 'Moto G Power', 24999.99, 7),
  ('Apple', 'iPhone 12', 85999.99, 8),
  ('Samsung', 'Galaxy S20', 69999.99, 4),
  ('Google', 'Pixel 5', 59999.99, 2),
  ('OnePlus', 'OnePlus 8T', 82999.99, 9),
  ('Motorola', 'Moto G Stylus', 31999.99, 10),
  ('Apple', 'iPhone SE', 39999.99, 13),
  ('Samsung', 'Galaxy Note 20', 109999.99, 11),
  ('Google', 'Pixel 4', 48999.99, 14),
  ('OnePlus', 'OnePlus 8', 69999.99, 6),
  ('Nokia', 'Nokia 7.2', 34999.99, 12)

  Select * from Cell_Phones
  Select * from Mfg_Phones  Order by PhoneID Desc

Select [Name],Company,Mfg_Comapny,Model,Price
from Cell_Phones
inner join Mfg_Phones on Cell_Phones.PhoneID = Mfg_Phones.PhoneID

