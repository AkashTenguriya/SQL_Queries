--Multi line table Valued function with inner join joins -40**

--Diffrence between DDL & DML

--1. DDL (Data Definition Language):
--DDL is used to define and manage database structures, like tables, schemas, and indexes. It allows you to create, alter, or drop the structure of a database.

--Common DDL commands:

--CREATE: Defines a new database object, such as a table or view.

--ALTER: Modifies an existing database object.

--DROP: Deletes a database object.

--TRUNCATE: Removes all records from a table but does not remove the table structure.

--RENAME: Changes the name of a database object.

--Key Characteristics of DDL:

--It deals with the structure of the database, not the data.

--Changes are permanent and typically can't be rolled back (unless using a transaction in some DBMSs).

--It affects the schema of the database.

--2. DML (Data Manipulation Language):
--DML is used to manipulate the actual data within the database. It includes operations to insert, update, delete, and retrieve data.

--Common DML commands:

--SELECT: Retrieves data from the database.

--INSERT: Adds new records into a table.

--UPDATE: Modifies existing records in a table.

--DELETE: Removes records from a table.

--Key Characteristics of DML:

--It deals with the data inside the database.

--Changes can be rolled back if wrapped in a transaction.

--It does not affect the structure of the database (like creating or deleting tables).

--Summary:
--Aspect	         DDL	                                   DML
--Purpose	       Defines database structures              --Manipulates data within the database
--Examples	       CREATE, ALTER, DROP, TRUNCATE, RENAME	--SELECT, INSERT, UPDATE, DELETE              
--Rollback	       Usually not rollbackable	                --Can be rolled back (using transactions)

--In short,       DDL is for defining and modifying the structure of a database, while DML is for handling the data stored within that structure.

Use TopicwisePractice
Create Table Chocolates (
ChocoID Int Primary key Identity (1,1),
ChocoType Varchar (50),
Chocolate_Cost Decimal (10,2)
)
INSERT INTO Chocolates (ChocoType, Chocolate_Cost)
VALUES
('Dark Chocolate', 180), 
('Milk Chocolate', 220),
('White Chocolate', 150),
('Hazelnut Chocolate', 300),
('Caramel Chocolate', 350),
('Mint Chocolate', 250),
('Almond Chocolate', 400),
('Crispy Rice Chocolate', 290),
('Coffee Chocolate', 270),
('Strawberry Chocolate', 320),
('Orange Chocolate', 280),
('Lemon Chocolate', 260),
('Peanut Butter Chocolate', 450),
('Sea Salt Chocolate', 500),
('Raspberry Chocolate', 350)


Create Table Country_Of_Origin (
CountryID Int Primary key Identity (1,1),
Country_Of_Origin Nvarchar (50),
ChocoID int Foreign Key References Chocolates (ChocoID)
)

Select * from Chocolates
Select * from Country_Of_Origin

Alter Function Get_Address_join (@MyCountry Nvarchar (50))
Returns @MyTable Table
(Id int,ChocoType Varchar(50),Choco_Cost Nvarchar (50),Country Nvarchar(50))
as
Begin
Insert into @MyTable

Select Chocolates.ChocoID,Chocolates.ChocoType,Chocolates.Chocolate_Cost,Country_Of_Origin from Chocolates
Inner join Country_Of_Origin on Chocolates.ChocoID = Country_Of_Origin.ChocoID Where Country_Of_Origin = @MyCountry
Order by Chocolates.ChocoID desc
Return
End

Select * from Chocolates
Select * from Country_Of_Origin

Create Function Choco_Address_join (@My_Country Nvarchar(50))
Returns @MyTable Table
(Id Int, ChocoType Varchar (50),Choco_Cost Nvarchar (50),Country Nvarchar (50))
as
Begin
Insert into @MyTable

Select CH.ChocoID,Ch.ChocoType,Ch.Chocolate_Cost,org.Country_Of_Origin
from Chocolates CH 
inner join Country_Of_Origin Org on CH.ChocoID = Org.ChocoID where Country_Of_Origin = @My_Country
Order by Ch.ChocoID Desc
Return
End


Select top 5 * from Get_Address_join ('India')
Select top 1 * from Choco_Address_join ('Belgium')
Select Top 5 * from Items



