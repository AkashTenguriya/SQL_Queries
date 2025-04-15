Use TopicwisePractice 

-- **Day4** Till now CRUD completed |Create Read update Delete|
--Delete using where clause , Table create insert update and delete practice over view of string data types with unicode

Create table My_Veg (
ID int,
Veg_Name Varchar (50),
Veg_Price int ,
Veg_Status Varchar (50)
)

INSERT INTO My_Veg (id, Veg_name, Veg_price, Veg_Status)
VALUES
(1, 'Carrot', 55.0, 'Available'),
(2, 'Broccoli', 60.5, 'Available'),
(3, 'Cucumber', 52.5, 'Available'),
(4, 'Spinach', 58.0, 'Out of Stock'),
(5, 'Tomato', 65.0, 'Available'),
(6, 'Lettuce', 53.5, 'Available'),
(7, 'Cauliflower', 75.0, 'Available'),
(8, 'Pepper', 62.0, 'Out of Stock'),
(9, 'Onion', 70.0, 'Available'),
(10, 'Garlic', 80.0, 'Available'),
(11, 'Potato', 55.5, 'Available'),
(12, 'Kale', 67.5, 'Out of Stock'),
(13, 'Zucchini', 64.0, 'Available'),
(14, 'Eggplant', 72.0, 'Available'),
(15, 'Sweet Potato', 68.0, 'Out of Stock')

Select * from My_Veg

Update My_Veg set Veg_price = 150 where ID =15

Delete from My_Veg where ID= 15

Create table Vafours (
Id int,
Chips_Name Varchar(50),
Chips_Types Varchar (50),
Cost int
)

INSERT INTO Vafours (id, Chips_Name, Chips_Types, Cost)
VALUES
(1, 'Lays', 'Potato', 160.0),
(2, 'Pringles', 'Potato', 180.0),
(3, 'Doritos', 'Tortilla', 170.0),
(4, 'Ruffles', 'Potato', 200.0),
(5, 'Cheetos', 'Corn', 155.0),
(6, 'Fritos', 'Corn', 160.0),
(7, 'Kettle Brand', 'Potato', 220.0),
(8, 'Wise', 'Potato', 180.0),
(9, 'Cape Cod', 'Potato', 210.0),
(10, 'Herr’s', 'Potato', 190.0),
(11, 'Snack Factory', 'Pretzel', 175.0),
(12, 'Tostitos', 'Tortilla', 200.0),
(13, 'Popchips', 'Potato', 210.0),
(14, 'Lay’s Stax', 'Potato', 230.0),
(15, 'Kettle Chips', 'Potato', 240.0)

Select * from Vafours

Update Vafours set Chips_Name = 'Balaji' where Id =2
Delete from Vafours where id = 15


