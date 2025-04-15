--**Table Valued function With inner join and Single Parameter -38**
.
Create table Product(
ProducID Int Primary Key Identity (1,1),
Product_Name Varchar (50),
Product_Cost Decimal (10,2),
Mode_Of_Delivery Nvarchar (50)
)

INSERT INTO Product (Product_Name, Product_Cost, Mode_Of_Delivery)
VALUES
('Laptop', 1800, 'Online'),
('Smartphone', 2300, 'Offline'),
('Headphones', 2500, 'In Progress'),
('Smartwatch', 3000, 'Online'),
('Tablet', 4200, 'Offline'),
('Monitor', 3500, 'In Progress'),
('Keyboard', 2700, 'Offline'),
('Mouse', 2200, 'Online'),
('Speaker', 2800, 'In Progress'),
('Printer', 4500, 'Offline'),
('Charger', 3300, 'In Progress'),
('Camera', 1900, 'Online'),
('Projector', 3100, 'Offline'),
('External Hard Drive', 4800, 'In Progress'),
('Router', 4000, 'Online')

Select * from Product Where  Product_Cost >= 2000

Create function Get_Product_Cost (@Product_Cost Decimal (10,2))
REturns Table
as
Return (Select * from Product Where  Product_Cost >= @Product_Cost)

select * from DBO.Get_Product_Cost (2000)

Create function Get_Product_And_Buyers_With_Cost (@item_Cost Decimal (10,2))
REturns Table
as
Return (Select * from Items Where  Items.item_Cost >=@item_Cost )

Select * from Customers
Select * from Items

Select Table1.CustomerID, [Name],Email,[Address],item_Cost,Item_Name from Get_Product_And_Buyers_With_Cost(150) as Table2 
Inner join  Customers as Table1 
On Table2.CustomerID = Table1.CustomerID Order by Table1.CustomerID desc





