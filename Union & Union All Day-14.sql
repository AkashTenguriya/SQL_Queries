--**Day-14 *Case Analysis * & *Union And Union All*
--Union ignoring Duplicate values with same id and same data Types
--Union all showing All data Duplicate values with same id and same data Types

Create table Resturants(
Id int Primary Key Identity (1,1),
[Name] Varchar (50),
Dish_Name Varchar (50),
Cost Decimal (8,2)
)
INSERT INTO Resturants([Name], Dish_Name, Cost)
VALUES
('The Bistro', 'Spaghetti Bolognese', 850),
('Sushi Haven', 'California Roll', 750),
('Pasta Palace', 'Fettuccine Alfredo', 950),
('Curry House', 'Butter Chicken', 1100),
('Grill Master', 'Ribeye Steak', 1300),
('Veggie Delight', 'Vegetable Stir-Fry', 600),
('Seafood Shack', 'Lobster Roll', 1400),
('Pizza Place', 'Margherita Pizza', 700),
('Taco Town', 'Beef Tacos', 500),
('Burger Joint', 'Cheeseburger', 650),
('BBQ Central', 'Pulled Pork Sandwich', 900),
('The Diner', 'Classic Breakfast', 550),
('Noodle House', 'Pho Bo', 800),
('Steakhouse Grill', 'Filet Mignon', 1500),
('Sweets & Treats', 'Chocolate Lava Cake', 500)

Select * from Resturants

Select Id,Name,Dish_Name,Cost,
Case

When Cost > 1000 Then 'Expensive Dish'
When Cost = 1000 Then 'Expensive Dish'
Else 'Affordable Dish'
End as Dish_Affordability

from Resturants Where Dish_Name not like 'S%' or Dish_Name like 'S%'

Select * from Resturants where Dish_Name not like 'California%'


Create Table Abroad_Traveller (
Id Int Primary Key Identity (1,1),
Traverller_Name Nvarchar (50),
Destination Nvarchar (50),
Cost Decimal (10,2)
)

INSERT INTO Abroad_Traveller (Traverller_Name, Destination, Cost)
VALUES
('John Doe', 'Paris, France', 55000),
('Jane Smith', 'Tokyo, Japan', 60000),
('Michael Brown', 'Sydney, Australia', 70000),
('Emily Davis', 'New York City, USA', 75000),
('David Wilson', 'London, UK', 80000),
('Sarah Johnson', 'Rome, Italy', 65000),
('Daniel Lee', 'Dubai, UAE', 85000),
('Rachel White', 'Bangkok, Thailand', 60000),
('Kevin Clark', 'Barcelona, Spain', 72000),
('Jessica Lewis', 'Cape Town, South Africa', 95000),
('Christopher Walker', 'Toronto, Canada', 56000),
('Olivia Hall', 'Bali, Indonesia', 65000),
('Matthew Allen', 'Auckland, New Zealand', 67000),
('Sophia Young', 'Amsterdam, Netherlands', 72000),
('Benjamin King', 'Los Angeles, USA', 55000)

Select * from Abroad_Traveller

Create Table Domestic_Traveller (
Id Int Primary Key Identity (1,1),
Traverller_Name Nvarchar (50),
Destination Nvarchar (50),
Cost Decimal (10,2)
)

INSERT INTO Domestic_Traveller (Traverller_Name, Destination, Cost)
VALUES ('John Doe', 'Paris, France', 55000),
('John Doe', 'Goa, India', 12000),
('Jane Smith', 'Kerala, India', 18000),
('Michael Brown', 'Shimla, India', 22000),
('Emily Davis', 'Jaipur, India', 25000),
('David Wilson', 'Mysore, India', 30000),
('Sarah Johnson', 'Manali, India', 35000),
('Daniel Lee', 'Rishikesh, India', 28000),
('Rachel White', 'Udaipur, India', 23000),
('Kevin Clark', 'Darjeeling, India', 19000),
('Jessica Lewis', 'Coorg, India', 15000),
('Christopher Walker', 'Leh-Ladakh, India', 45000),
('Olivia Hall', 'Agra, India', 14000),
('Matthew Allen', 'Jodhpur, India', 18000),
('Sophia Young', 'Khajuraho, India', 21000),
('Benjamin King', 'Pondicherry, India', 32000)

Select * from Abroad_Traveller
Union
Select * from Domestic_Traveller

Select * from Abroad_Traveller
Union All
Select * from Domestic_Traveller

Create Table Student(
Id int primary key Identity (1,1),
Stutdent_Name Nvarchar (50),
Picnic_Place Nvarchar (50),
Cost Decimal (10,2)
)

INSERT INTO Student (Stutdent_Name, Picnic_Place, Cost)
VALUES
('Arjun Patel', 'Kumarakom, Kerala', 2000),
('Aisha Khan', 'Rishikesh, Uttarakhand', 2200),
('Vikram Singh', 'Nainital, Uttarakhand', 1800),
('Neha Gupta', 'Wayanad, Kerala', 1600),
('Ravi Verma', 'Darjeeling, West Bengal', 1700),
('Priya Sharma', 'Leh, Ladakh', 3500),
('Kabir Mehta', 'Jaipur, Rajasthan', 2500),
('Sanya Yadav', 'Coorg, Karnataka', 2200),
('Ishaan Kapoor', 'Agra, Uttar Pradesh', 1900),
('Maya Reddy', 'Ooty, Tamil Nadu', 2100),
('Raj Malhotra', 'Pondicherry, India', 2400),
('Simran Chawla', 'Alibaug, Maharashtra', 1500),
('Zara Khan', 'Goa, India', 3000),
('Rohan Desai', 'Mahabalipuram, Tamil Nadu', 1800),
('Kritika Joshi', 'Shimla, Himachal Pradesh', 2000)


Create Table Student1(
Id int primary key Identity (1,1),
Stutdent_Name Nvarchar (50),
Picnic_Place Nvarchar (50),
Cost Decimal (10,2)
)

INSERT INTO Student1 (Stutdent_Name, Picnic_Place, Cost)
VALUES
('Arjun Patel', 'Kumarakom, Kerala', 2000),
('Aisha Khan', 'Rishikesh, Uttarakhand', 2200),
('Ananya Sharma', 'Manali, Himachal Pradesh', 1800),
('Karan Mehra', 'Goa, India', 3000),
('Sahil Joshi', 'Rishikesh, Uttarakhand', 2200),
('Priya Soni', 'Ooty, Tamil Nadu', 1700),
('Rohit Verma', 'Jaipur, Rajasthan', 2500),
('Neelam Patel', 'Darjeeling, West Bengal', 1600),
('Shivani Gupta', 'Shimla, Himachal Pradesh', 2000),
('Amit Rao', 'Coorg, Karnataka', 2200),
('Pooja Yadav', 'Alibaug, Maharashtra', 1500),
('Ravi Kumar', 'Mussoorie, Uttarakhand', 1900),
('Madhuri Reddy', 'Nainital, Uttarakhand', 1800),
('Deepak Singh', 'Kumarakom, Kerala', 2000),
('Suman Bhat', 'Leh-Ladakh, India', 3500),
('Vishal Chauhan', 'Rajasthan Desert, Rajasthan', 2800),
('Tanya Shah', 'Mahabalipuram, Tamil Nadu', 2400)

Select * from Student
Union
Select * from Student1

Select * from Student
Union All
Select * from Student1