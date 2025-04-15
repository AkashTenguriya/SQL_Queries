--**Day-13 *Case Analysis *

Create table Shades (
Id Int Primary Key Identity (1,1),
[Name] Varchar (50),
Company Varchar (50),
Cost Decimal(8,2)
)

INSERT INTO Shades ([Name], Company, Cost)
VALUES
('Aviator', 'Ray-Ban', 150),
('Wayfarer', 'Ray-Ban', 130),
('Clubmaster', 'Ray-Ban', 120),
('Cat-Eye', 'Prada', 200),
('Round Sunglasses', 'Gucci', 250),
('Sport Sunglasses', 'Oakley', 180),
('Mirrored Sunglasses', 'Maui Jim', 220),
('Polarized Sunglasses', 'Smith', 170),
('Shield Sunglasses', 'Balenciaga', 300),
('Rectangle Sunglasses', 'Tom Ford', 230),
('Browline Sunglasses', 'Versace', 270),
('Flip-Up Sunglasses', 'Fendi', 160),
('Vintage Sunglasses', 'Chanel', 280),
('Ski Goggles', 'Smith', 150),
('Sunglass Set', 'Levi’s', 90)

Select * from Shades

Select Id,[Name],Company,Cost ,
Case

When Cost >  220 Then 'Expensive Shade'
When Cost =  220 Then 'Moderate Shade'
Else 'Affordable'
End As Cost_Analysis
from Shades

Create Table Travel_Bags (
ID int Primary Key Identity (1,1),
Bag_Name Varchar (50),
Company Varchar (50),
Cost Decimal (10,2)
)

INSERT INTO Travel_Bags (Bag_Name, Company, Cost)
VALUES
('Duffel Bag', 'Nike', 1200),
('Backpack', 'Adidas', 1500),
('Rolling Suitcase', 'Samsonite', 2500),
('Carry-On Luggage', 'American Tourister', 1800),
('Weekend Bag', 'The North Face', 2200),
('Tote Bag', 'L.L. Bean', 1300),
('Laptop Backpack', 'Targus', 1600),
('Travel Duffel', 'Patagonia', 2700),
('Hardside Luggage', 'Rimowa', 4500),
('Garment Bag', 'Briggs & Riley', 3500),
('Messenger Bag', 'Fossil', 2000),
('Roller Bag', 'Rei Co-op', 2200),
('Sport Bag', 'Under Armour', 1800),
('Luggage Set', 'Travelpro', 3200),
('Flight Bag', 'Tumi', 4200)

Select * from Travel_Bags

Select Id,Bag_Name,Company,Cost,
Case 

When Cost > 2000 Then 'Expensive Bag'
When Cost = 2000 Then 'Moderate Bag'
Else 'Affordable Bag'
End As Bag_Affodability

from Travel_Bags


