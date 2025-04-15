--**--Multi Statement Table Valued function single table  -39**
Use TopicwisePractice

Select Table1.CustomerID, [Name],Item_Name ,Email,[Address],item_Cost from
Get_Product_And_Buyers_With_Cost(50) as Table2 
Inner join  Customers as Table1 
On Table2.CustomerID = Table1.CustomerID Order by Table1.CustomerID desc


--Create function Get_Tour_And_Member_With_Cost (@Cost Decimal (10,2))
--REturns Table
--as
--Return (Select * from Tourist Where  Tourist.Cost >= @Cost )

Create Function Get_Tour_Cost (@Cost Decimal (10,2))
Returns Table
Return (Select * from Tourist Where Cost >= @Cost)

Select * from Tourist
Select * from Tour_Members


--Select Table1.TrourID,Place_Name,Cost,Place_Name From  Get_Tour_And_Member_With_Cost (20000) as Table2
--Inner join Tour_Members as Table1
--On Table2.TrourID = Table1.TrourID

Select Member_Name,Number_Of_Days,Table2.TrourID,Place_Name,Cost from Get_Tour_Cost(15000) Table2
Inner join Tour_Members Table1 
on Table1.TrourID=Table2.TrourID


--Multi Statement Table Valued function 
--REturns Table of multiple Statement


Create function	Get_Cutosmers_Address(@myAddress NVarchar (50))
Returns @MyTable Table (CustId int, Cust_Name Varchar (50),Cust_Addres NVarchar(50))
as
Begin 
INsert into @MyTable
Select Customers.CustomerID,Customers.[Name],Customers.[Address] From Customers where [Address] = @myAddress
Return
End

--Executing Multi-Statement Table Valued Function
Select * from Customers

Select * from DBO.Get_Cutosmers_Address ('987 Birch St, Austin, TX')










