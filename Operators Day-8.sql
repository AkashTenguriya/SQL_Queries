--**Day-8 |Aggregate function|**|Like operator|

Use TopicwisePractice

Create table Scooters (
Id int,
Schooter_name Varchar (50),
Cost decimal(10,1),
Company_Name Varchar (50),
Colour Varchar (50)
)

INSERT INTO Scooters (Id,Schooter_name, Cost, Company_Name, Colour)
VALUES
(1, 'TurboX 150', 85000, 'SpeedScoot', 'Blue'),
(2, 'City Rider', 95000, 'Urban Mobility', 'Red'),
(3, 'Swift Glide', 100000, 'VeloTech', 'Green'),
(4, 'X-Speed 200', 105000, 'TechScoot', 'Black'),
(5, 'Elite Cruiser', 110000, 'ScootMax', 'Silver'),
(6, 'Urban Sprint', 115000, 'RideFast', 'Yellow'),
(7, 'Sonic Zoom', 120000, 'SwiftScoot', 'Orange'),
(8, 'Power Glide', 95000, 'MotoTech', 'Purple'),
(9, 'Turbo 250', 118000, 'ScooterPlus', 'White'),
(10, 'RapidRider 300', 125000, 'CityRide', 'Pink'),
(11, 'Skyline Glide', 88000, 'SkyScoot', 'Grey'),
(12, 'FastTrack 120', 95000, 'UrbanDrive', 'Blue'),
(13, 'PowerSprint 150', 99000, 'TechRide', 'Green'),
(14, 'Speedster 200', 102000, 'FastScoot', 'Red'),
(15, 'VeloCruiser 180', 108000, 'VeloMax', 'Black')

Select * from Scooters

Select Id,Schooter_name,Cost,Company_Name,Colour from Scooters  order by  id desc
Select Id,Schooter_name,Cost,Company_Name,Colour from Scooters  order by  id Asc
Select * from Scooters where Colour in ('Blue','Red','Silver','Black')

Select * from Stationary_Products

Select Sum(Cost) as Sum_Cost from Stationary_Products
Select Count(Id) as Total_Applicants from Stationary_Products
Select * from Stationary_Products  where Items_Name not like 'G%'
Select * from Stationary_Products  where Items_Name like 'G%' 
Select * from Stationary_Products  where Items_Name like '%R%'
Select * from Stationary_Products  where Items_Name not like 'H%' and Items_Name like '%e%'
Select * from Stationary_Products  where Items_Name like '%R' or Items_Name like 'S%'
Select * from Stationary_Products  where Id between  1 and 10 
Select * from Stationary_Products  where Id not between  1 and 3
Select * from Stationary_Products where Company_Name not in ('office works')
Select * from Stationary_Products where not id >=2 
Select * from Stationary_Products where not id <=2
