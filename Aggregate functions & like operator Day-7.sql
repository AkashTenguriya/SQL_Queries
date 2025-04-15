--**Day-7 **|Like operator| & |Operators|  Practice
Use TopicwisePractice

Create table Stationary_Products(
Id int,
Items_Name varchar (50),
Cost Decimal (8,1),
Company_Name Varchar(50)
)

INSERT INTO Stationary_Products (Id, Items_Name, Cost, Company_Name) 
VALUES
(1, 'Notebook', 1200.99, 'Stationery Co.'),
(2, 'Pen', 1500.49, 'PenCraft Inc.'),
(3, 'Pencil', 1050.99, 'WriteWell'),
(4, 'Eraser', 1100.59, 'CleanSlate Supplies'),
(5, 'Highlighter', 1799.79, 'BrightMark'),
(6, 'Binder', 3999.99, 'OfficeWorks'),
(7, 'Stapler', 4499.49, 'StapleTech'),
(8, 'Paper Clips', 1299.29, 'ClipMaster'),
(9, 'Glue Stick', 1899.89, 'StickIt Solutions'),
(10, 'Scissors', 2499.59, 'SharpEdge Tools')

Select * from Stationary_Products

Select Sum(Cost) as Sum_Cost from Stationary_Products
Select Count(Id) as Total_Applicants from Stationary_Products
Select * from Stationary_Products  where Items_Name not like 'G%'
Select * from Stationary_Products  where Items_Name like 'G%' 
Select * from Stationary_Products  where Items_Name like '%R%'
Select * from Stationary_Products  where Items_Name not like 'H%' and Items_Name like '%e%'
Select * from Stationary_Products  where Items_Name like '%R' or Items_Name like 'S%'
Select * from Stationary_Products  where Id between  1 and 10 
Select * from Stationary_Products  where Id not between  1 and 3
Select * from Stationary_Products where Company_Name not in ('office works')
Select * from Stationary_Products where not id >=2 
Select * from Stationary_Products where not id <=2