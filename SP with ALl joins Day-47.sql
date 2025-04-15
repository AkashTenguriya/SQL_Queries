--Store Procedures with all joins -47**
--Sp_Helptext SP_Customer_items_Details
Use TopicwisePractice
Create Table Emp_Table (
ID Int primary key Identity (1,1),
Emp_Name Varchar (50),
[Location] Varchar (50),
Fees Decimal (10,2)
)

INSERT INTO Emp_Table (Emp_Name, [Location], Fees)
VALUES 
('John Doe', 'New York', 5000),
('Jane Smith', 'Los Angeles', 6000),
('Alice Johnson', 'Chicago', 5500),
('Michael Brown', 'Houston', 4800),
('Emily Davis', 'San Francisco', 6200),
('Robert Wilson', 'Boston', 5300),
('Sophia Martinez', 'Miami', 5900),
('James Anderson', 'Seattle', 5700),
('Olivia Taylor', 'Denver', 5100),
('William Thomas', 'Dallas', 5600),
('Isabella Harris', 'Austin', 6000),
('Ethan White', 'Philadelphia', 5200),
('Charlotte Clark', 'San Diego', 5800),
('Mason Lewis', 'Phoenix', 5400),
('Amelia Walker', 'Atlanta', 5500)

Select * from Emp_Table Where Fees >= 5500

alter Procedure Emp_Details
as
Select (Emp_Name),Sum (Fees)[Total Fees],[Location]
from Emp_Table Where Fees >= 5500
Group By Emp_Name ,Location
order by (Emp_Name)
go

Exec Emp_Details

Select * from Customers
Select * from Items

Alter Procedure SP_Customer_items_Details
as
Select CS.CustomerID,CS.[Name],CS.Email,CS.[Address],IT.Item_name[Item Name],IT.Item_Cost [Cost]
from Customers CS inner join Items IT on CS.CustomerID= IT.CustomerID order by CS.CustomerID Desc 
Go

Alter Procedure SP_Food_origin_Details
as
Select FF.Food_Id,FF.Food_Name,FF.Cost,FO.Country_Name,FF.Resturant_Name 
from Fav_Food1 FF
inner join Food_origin FO on FF.Food_Id=FO.Food_Id order by FF.Food_Id desc
Go
Exec SP_Food_origin_Details 

Exec SP_Customer_items_Details

Create Procedure SP_Customer_items_AllData
as
Select CS.[Name],CS.Email,CS.[Address],IT.Item_name[Item Name],IT.Item_Cost [Cost]
from Customers CS FUll outer join  Items IT on CS.CustomerID= IT.CustomerID order by CS.CustomerID Desc 
Go

Exec SP_Customer_items_AllData



   
