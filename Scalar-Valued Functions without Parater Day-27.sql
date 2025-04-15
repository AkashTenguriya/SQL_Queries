--**Scalar-Valued Functions without Parater Day-27**

--Aggregate functions are often used with the GROUP BY clause of the SELECT statement. The GROUP BY clause splits the result-set into groups of values and the aggregate function can be used to return a single value for each group.

--The most commonly used SQL aggregate functions are:

--MIN() - returns the smallest value within the selected column
--MAX() - returns the largest value within the selected column
--COUNT() - returns the number of rows in a set
--SUM() - returns the total sum of a numerical column
--AVG() - returns the average value of a numerical column
--Aggregate functions ignore null values (except for COUNT()).

Create table Device (
Id int Primary key Identity(1,1),
Device_name Nvarchar (50),
Device_Cbrand Nvarchar (50),
Cost Decimal (8,2)
)

INSERT INTO Device (Device_name, Device_Cbrand, Cost)  
VALUES  
    ('MacBook Pro 16"', 'Apple', 2499.99),  
    ('Galaxy Z Fold 5', 'Samsung', 1799.99),  
    ('Asus ROG Strix Scar 18', 'Asus', 2599.99),  
    ('Dell XPS 17', 'Dell', 1999.99),  
    ('ThinkPad P1 Gen 6', 'Lenovo', 2199.99),  
    ('Razer Blade 18', 'Razer', 2899.99),  
    ('MSI Titan GT77', 'MSI', 3799.99),  
    ('iMac Pro', 'Apple', 4999.99),  
    ('Surface Studio 2+', 'Microsoft', 4299.99),  
    ('Sony A7R V Camera', 'Sony', 3899.99),  
    ('Canon EOS R5', 'Canon', 3499.99),  
    ('Samsung Neo QLED 8K TV', 'Samsung', 2999.99),  
    ('LG OLED Evo G3', 'LG', 2499.99),  
    ('Apple Vision Pro', 'Apple', 3499.99),  
    ('Alienware Aurora R15', 'Alienware', 2199.99)

	Select * from Device

--Scaler-Valued function without parameter

Create function WelcomeMessage()
Returns Nvarchar (50)
as
Begin 
Return 'Welcome to The Programing world'
End

Select Dbo.WelcomeMessage() as My_Message
Select Dbo.SQL_Learning() [SQL Learning]



alter Function SQL_Learning()
Returns Nvarchar (50)
As
Begin
Return 'Basic SQL Learning'
End
Select Dbo.SQL_Learning() [SQL Learning]


Select *, Dbo.SQL_Learning()[SQL Learning],Dbo.WelcomeMessage() as My_Message from Device

select * from Customers_List 

Create function Emp_Prof_List()
Returns Nvarchar (50)
as
Begin
Return 'Emp & Profesor List'
End

Select Table1.Name_Of_Employee as Employees , Table2.Name_Of_Employee as Supervisors,DBo.Emp_Prof_List()[Profesor Emp list]
from MyOffice as Table1 
Inner join MyOffice as Table2 on Table1.SuperVisor_ID =Table2.Emp_Id order by Table1.Emp_Id Desc
.
