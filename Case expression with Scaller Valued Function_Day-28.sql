--**Scalar-Valued Functions Passing Parater with Case expression Day-28**

Create function Fav_Food()
Returns Nvarchar (50)
as
begin
Return 'My Fav Vegitables'
End 


Select *,DBo.Fav_Food() [My Fav Vegitables] from MyVeg_2025

--Scalar-Valued Functions Passing Parater

Create function MySquare (@myNum as int)
Returns int
as 
begin
Return (@myNum * @myNum)
End

select Dbo.MySquare (7) as  [Square]

Create function MyCube (@MyNum as int)
Returns int
as 
begin
return (@MyNum*@MyNum*@MyNum)
End

select Dbo.MyCube (7) as  [Cube]
Create function Product_Status()
Returns Nvarchar(50)
As
begin
Return 'Moderate Product'
End

Create function Product_Status_1()
Returns Nvarchar(50)
As
begin
Return 'Moderate Product'
End

Create function Product_Status_2()
Returns Nvarchar(50)
As
begin
Return 'Cost not available'
End

Select * from Products 
Select * from Customers_List

Select PR.ProductID[ID],CL.Customer_Name[Customer Name],CL.Customer_EMail[Email],PR.Product_Name[Product Name],pr.Date_Of_Purchase[Purchase data & Time],PR.Product_Cost[Cost],
(Case
When PR.Product_Cost >= 899 Then Dbo.Product_Status()
When PR.Product_Cost Between 490 and 898  Then DBO.Product_Status_1()
When PR.Product_Cost is null Then DBO.Product_Status_2() 
else 'Affordable Product'
end ) as [Procut Category]
from Products as PR 
FUll join Customers_List as CL on PR.ProductID = CL.ProductID   
Order by PR.ProductID Desc