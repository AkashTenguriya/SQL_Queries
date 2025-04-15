--Views Pratice -43**
--SP_Helptext Tour_Details (Reserve word for view the code of Querry)
---Alter View Tour_Details
--with ENCRYPTION  
--as
--Imaginary table

--View are used to iimpliment Rows and COlumns Security
--In Views Name of Primary key table (Left table or parent table) Should be diffrent from Name of Foreign key(Right table or child table) 
Use TopicwisePractice

Select * from Customers
Select * from Items

Select * from items where Item_Cost >= 500 

Create View Prior_Custmer_View
as
Select * from Customers order by CustomerID Desc

Select * from Prior_Custmer_View  order by CustomerID Desc

Alter View Primium_Items 
as
Select * from items where Item_Cost >= 1000 

Select * From Primium_Items

Select * from Customers
Select * from Items

--Create View Customer_Items_Details
--as
--select top 10 CS.CustomerID,CS.[Name],CS.Email,CS.[Address],IT.Item_name,it.Item_Cost 
--from Customers as CS
--inner join Items as IT on CS.CustomerID =IT.CustomerID order by CS.CustomerID Desc

--Select * from Customer_Items_Details order by  Customer_Items_Details.CustomerID Asc

Create View Customer_Item_Details
as
Select CS.CustomerID[ID],CS.[Name],it.Item_name[Item Name],CS.Email,CS.[Address][Address],IT.Item_Cost[Cost]
from Customers CS 
inner join Items IT on CS.CustomerID = it.CustomerID

Select * from Customer_Item_Details order by ID desc

Select * from [dbo].[Tourist]
Select * from [dbo].[Tour_Members]

Alter View Tour_Details
with ENCRYPTION  
as
Select Table1.TrourID,Table2.Member_Name,Table1.Place_Name,Table1.Cost,Table2.Number_Of_Days 
from Tourist as Table1 
inner join Tour_Members Table2
on Table1.TrourID = Table2.TrourID 

Alter View Tour_Details
  
as
Select Table1.TrourID,Table2.Member_Name,Table1.Place_Name,Table1.Cost,Table2.Number_Of_Days 
from Tourist as Table1 
inner join Tour_Members Table2
on Table1.TrourID = Table2.TrourID

Select * from Tour_Details order by Tour_Details.Cost desc

SP_Helptext Tour_Details




