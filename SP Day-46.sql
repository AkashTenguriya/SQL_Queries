--Store Procedures -46**
--Funtions used in SP not Sp used in Functions

Use TopicwisePractice

Create table RereSweetFruits(
ID int Primary key Identity (1,1),
Fruits_Name Varchar (50),
Quantity int,
Cost Decimal(10,2)
)

INSERT INTO RereSweetFruits (Fruits_Name, Quantity, Cost)
VALUES
('Apple', 100, 125),
('Banana', 200, 85),
('Mango', 150, 150),
('Orange', 120, 110),
('Pineapple', 80, 135),
('Grapes', 90, 95),
('Peach', 110, 145),
('Plum', 130, 130),
('Strawberry', 200, 160),
('Watermelon', 60, 120),
('Guava', 140, 105),
('Papaya', 75, 90),
('Blueberry', 50, 115),
('Dragonfruit', 30, 175),
('Lychee', 90, 140)

Select * from RereSweetFruits

--Create Procedure MyFruits
--as
--Select * from RereSweetFruits
--Go

Create Procedure SP_FavFood
as
Select * from RereSweetFruits
Go

Exec SP_FavFood

--Create Procedure Fav_Fruit @FavFruit Nvarchar (50)
--as
--Select * from RereSweetFruits where Fruits_Name = @FavFruit
--Go

Create Procedure SP_FvFruit @FavFruit Nvarchar (50)
as
Select * from RereSweetFruits Where Fruits_Name = @FavFruit
Go

Exec Fav_Fruit @FavFruit= 'Pineapple'





