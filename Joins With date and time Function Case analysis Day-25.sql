--**Joins with  date and time (Function) Case Analyss Day-25**

Use TopicwisePractice

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country],Computers.Cost[Cost ],
(Case 
when Computers.Cost > 1000 Then 'Expensive Product'
Else 'Affordable Product'
End ) As Product_Category

from Computers 
Full join Company on Computers.CompID = Company.CompID Where CompanyName not like 'N%' order by Computers.Cost desc

Select CS.CustomerID,CS.[Name],CS.Email,CS.[Address],IT.Item_name,it.Item_Cost,

(Case
When It.Item_Cost > 500 Then 'Expensive Product'
Else 'Affordable Product'
End ) As Product_Category

from Customers as CS 
full join Items as IT on CS.CustomerID = it.CustomerID

Create table Products(
ProductID int Primary key identity (1,1),
Product_Name Varchar (50),
Product_Cost Decimal (10,2),
Date_Of_Purchase Datetime
)
INSERT INTO Products (Product_Name, Product_Cost,Date_Of_Purchase)  
VALUES  
    ('Smartphone', 699.99,GETDATE()),  
    ('Laptop', 1199.99,GETDATE()),  
    ('Tablet', 499.99,GETDATE()),  
    ('Smartwatch', 199.99,GETDATE()),  
    ('Wireless Earbuds', 149.99,GETDATE()),  
    ('Gaming Console', 499.00,GETDATE()),  
    ('Bluetooth Speaker', 89.99,GETDATE()),  
    ('4K TV', 899.99,GETDATE()),  
    ('Digital Camera', 599.99,GETDATE()),  
    ('Mechanical Keyboard', 129.99,GETDATE()),  
    ('Gaming Mouse', 79.99,GETDATE()),  
    ('VR Headset', 399.99,GETDATE()),  
    ('Portable Charger', 39.99,GETDATE()),  
    ('External Hard Drive', 109.99,GETDATE()),  
    ('Smart Home Hub', 149.99,GETDATE())

Create table Customers_List (
CustomerID Int primary key Identity (1,1),
Customer_Name Varchar (50),
Customer_EMail Nvarchar (50),
ProductID int Foreign key references Products(ProductID) 
)

INSERT INTO Customers_List (Customer_Name, Customer_EMail, ProductID)  
VALUES  
    ('Alice Johnson', 'alice.johnson@example.com', Null),  
    ('Bob Smith', 'bob.smith@example.com', Null),  
    ('Charlie Brown', 'charlie.brown@example.com', 18),  
    ('David Williams', 'david.williams@example.com', 5),  
    ('Emma Davis', 'emma.davis@example.com', 10),  
    ('Franklin Miller', 'franklin.miller@example.com', 1),  
    ('Grace Wilson', 'grace.wilson@example.com', 14),  
    ('Henry Moore', 'henry.moore@example.com', 7),  
    ('Isabella Taylor', 'isabella.taylor@example.com', 9),  
    ('Jack Anderson', 'jack.anderson@example.com', 4),  
    ('Katherine Thomas', 'katherine.thomas@example.com', 15),  
    ('Liam Martinez', 'liam.martinez@example.com', 2),  
    ('Mia Robinson', 'mia.robinson@example.com', 6),  
    ('Noah Harris', 'noah.harris@example.com', 11),  
    ('Olivia Clark', 'olivia.clark@example.com', 13)

	Select * from Products
	Select * from Customers_List

Select PR.ProductID[ID],CL.Customer_Name[Customer Name],CL.Customer_EMail[Email],PR.Product_Name[Product Name],pr.Date_Of_Purchase[Purchase data & Time],PR.Product_Cost[Cost],
(Case
When PR.Product_Cost >= 899 Then 'Expensive Product' 
When PR.Product_Cost Between 490 and 898  Then 'Moderate Product'
When PR.Product_Cost is null Then 'Cos is not Available' 
else 'Affordable Product'
end ) as [Procut Category]
from Products as PR 
FUll join Customers_List as CL on PR.ProductID = CL.ProductID  where  PR.Product_Name like '%a%' 
Order by PR.ProductID Desc




