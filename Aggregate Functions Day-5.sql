--Day-5 **Aggregate functions 

Create table Devices (
Id int ,
Device_name Varchar (50),
Device_Cbrand Nvarchar (50),
Cost Decimal (10,2)
)

INSERT INTO Devices (id, Device_name, Device_Cbrand, Cost)
VALUES
(1, 'iPhone 14', 'Apple', 999.99),
(2, 'Galaxy S23', 'Samsung', 899.99),
(3, 'Pixel 7 Pro', 'Google', 899.99),
(4, 'Xperia 1 IV', 'Sony', 1199.99),
(5, 'OnePlus 11 Pro', 'OnePlus', 849.99),
(6, 'MacBook Pro 16"', 'Apple', 2399.99),
(7, 'Dell XPS 13', 'Dell', 1499.99),
(8, 'Microsoft Surface Laptop 5', 'Microsoft', 1299.99),
(9, 'Asus ROG Zephyrus', 'Asus', 1799.99),
(10, 'HP Spectre x360', 'HP', 1599.99),
(11, 'Apple Watch Ultra', 'Apple', 799.99),
(12, 'Samsung Galaxy Watch 5', 'Samsung', 349.99),
(13, 'iPad Pro 12.9"', 'Apple', 1099.99),
(14, 'Sony WH-1000XM5', 'Sony', 349.99),
(15, 'Bose Noise Cancelling Headphones 700', 'Bose', 379.99)

Select * from Devices
Select sum(Cost) as Total_Cost from Devices
Select Avg(Cost) as Average_Cost from Devices
Select Max(Cost) as maximum_Cost from Devices
Select Min(Cost) as Minimum_Cost from Devices

Select * from Devices where Device_name Like 'x%' 
Select * from Devices where Device_name Like '%13' 