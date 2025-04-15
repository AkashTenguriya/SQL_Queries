--**Day-12 *Primary Key*

-- Primary key Always has  Unique Data
-- A Primary key Length Can not be Exceeded Than 900 Bytes 
-- A primary Key Can not Have null Values 
-- There Can be no Duplicate values for a Primary Key
-- A Table can contatin only One Primary Key Constraint 

Use TopicwisePractice

Create table Sports_Goods(
Id Int Primary Key,
Product_Type Nvarchar (50),
Company Nvarchar (50)
)

INSERT INTO Sports_Goods (Id, Product_Type, Company)
VALUES
(1, 'Football', 'Nike'),
(2, 'Basketball', 'Adidas'),
(3, 'Tennis Racket', 'Wilson'),
(4, 'Baseball Bat', 'Easton'),
(5, 'Soccer Ball', 'Puma'),
(6, 'Running Shoes', 'Asics'),
(7, 'Yoga Mat', 'Liforme'),
(8, 'Cycling Helmet', 'Giro'),
(9, 'Golf Club', 'Callaway'),
(10, 'Badminton Racket', 'Yonex'),
(11, 'Hockey Stick', 'Bauer'),
(12, 'Swimming Goggles', 'Speedo'),
(13, 'Ski Poles', 'Salomon'),
(14, 'Boxing Gloves', 'Everlast'),
(15, 'Jump Rope', 'Rogue')

Select * from Sports_Goods

Select * from Sports_Goods where Product_Type  Like 'F%'

Select * from Sports_Goods where Product_Type  not Like 'F%'

Select * from Sports_Goods where id Between 1 and 10

Create table Cricket_Items (
Id int Primary key identity (1,1),
Type_Of_Good Nvarchar (50),
Company Nvarchar (50),
Cost Decimal (8,2)
)

INSERT INTO Cricket_Items (Type_Of_Good, Company, Cost)
VALUES
('Bat', 'SG', 1200),
('Ball', 'Kookaburra', 800),
('Gloves', 'Adidas', 1500),
('Helmet', 'Shrey', 2500),
('Pads', 'Gray Nicolls', 2000),
('Bag', 'Spartan', 2200),
('Stumps', 'MRF', 500),
('Bails', 'Slazenger', 400),
('Thigh Guard', 'Puma', 600),
('Arm Guard', 'Nike', 700),
('Jockstrap', 'Reebok', 300),
('Shoes', 'New Balance', 3000),
('T-shirt', 'Under Armour', 1000),
('Cap', 'Nike', 500),
('Sweatband', 'Puma', 250)

Select * from Cricket_Items

Create table Laptops(
Id Int primary key Identity (1,1),
[Name] Varchar (50),
Company Varchar (50),
Country_Of_Origin Varchar (50),
Status Varchar (50)
)

INSERT INTO Laptops ([Name], Company, Country_Of_Origin, [Status])
VALUES
('MacBook Air', 'Apple', 'USA', 'Available'),
('MacBook Pro', 'Apple', 'USA', 'Out of stock'),
('Dell XPS 13', 'Dell', 'USA', 'Available'),
('HP Spectre x360', 'HP', 'USA', 'Available'),
('Lenovo ThinkPad X1', 'Lenovo', 'China', 'Out of stock'),
('Asus ZenBook', 'Asus', 'Taiwan', 'Available'),
('Microsoft Surface Laptop', 'Microsoft', 'USA', 'Out of stock'),
('Acer Swift 3', 'Acer', 'Taiwan', 'Available'),
('Razer Blade 15', 'Razer', 'USA', 'Available'),
('Samsung Galaxy Book', 'Samsung', 'South Korea', 'Available'),
('LG Gram', 'LG', 'South Korea', 'Out of stock'),
('Huawei MateBook X Pro', 'Huawei', 'China', 'Available'),
('MSI GS66 Stealth', 'MSI', 'Taiwan', 'Available'),
('Alienware M15', 'Dell', 'USA', 'Available'),
('Google Pixelbook', 'Google', 'USA', 'Out of stock')

Select * from Laptops
