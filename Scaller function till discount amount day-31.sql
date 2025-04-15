--**Scalar-Valued Functions Till After Discount Amount  Day-31**
Use TopicwisePractice

Create table Fav_Food1 (
Food_Id int Primary Key Identity (1,1),
Food_Name Varchar (50),
Resturant_Name Varchar (50),
Cost Decimal (10,2)
) 
INSERT INTO Fav_Food1 (Food_Name, Resturant_Name, Cost)
VALUES
('Pizza', 'Pizzeria Uno', 1500),
('Burger', 'In-N-Out', 1200),
('Sushi', 'Sushi World', 4500),
('Pasta', 'Olive Garden', 2200),
('Tacos', 'Taco Bell', 1300),
('Salad', 'Sweetgreen', 1800),
('Steak', 'Steakhouse Grill', 3000),
('Ramen', 'Ippudo', 2500),
('Burrito', 'Chipotle', 1700),
('Fried Chicken', 'KFC', 1600)


Create table Food_origin(
CountryID int Primary Key Identity (1,1),
Country_Name Varchar(50),
Food_Id int foreign Key References Fav_Food1(Food_Id)
)

Select * from Food_origin

INSERT INTO Food_origin (Country_Name,Food_Id)
VALUES
('Italy',Null),
('Japan', 2),
('Mexico', Null),
('USA', 4),
('India', 5),
('China',9),
('France', 7),
('Spain', 8),
('Thailand', 6),
('Greece', 10),
('Germany', Null),
('Brazil', 3),
('Turkey', 1)

Create function GST_Amount(@GSTDeAmt decimal(10,2)) 
Returns decimal(10,2)
as
Begin
Return (@GSTDeAmt)
End

Select * from Fav_Food1  
Select * from Food_origin

Select FF.Food_Id [Food ID],FF.Food_Name [Food Name],FF.Resturant_Name[Resturant name],FF.Cost,FO.Country_Name[Countary Name],
(Case
When FF.Cost > 2000 Then DBO.Food_Category1()
Else DBO.Food_Category()
End)   [Food Category],
(Case
When FF.Cost > 2000 Then Dbo.GST(18)
Else Dbo.GST(12)
End) [GST %],
(Case
When FF.Cost > 2000 Then DBO.DisOnFood(12) * FF.cost /100
Else DBO.DisOnFood(8) * FF.cost /100
End) [Discount Amount],
(Case
When FF.Cost > 2000 Then FF.cost - (DBO.DisOnFood(12) * FF.cost /100)
Else FF.cost - (DBO.DisOnFood(8) * FF.cost /100)
End) [Amount After Disc],
(Case
When FF.Cost > 2000 Then Dbo.GST_Amount(18) * FF.Cost/100
Else Dbo.GST_Amount(12) * FF.Cost/100
End) [GST Amount],
(Case
When FF.Cost > 2000 Then FF.Cost + (Dbo.GST_Amount(18) * FF.Cost/100)
Else FF.Cost + ( Dbo.GST_Amount(12) * FF.Cost/100)
End) [Amt After GST]


from Fav_Food1 FF Inner join Food_origin FO on FF.Food_Id = Fo.Food_Id Order by FF.Food_Id Asc