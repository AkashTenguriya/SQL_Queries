-- -**Day-15 *Foreign Key * & *Primary Key*

Use TopicwisePractice
Create table Chocolate (
Id int primary key Identity (1,1),
Chocolate_Name Nvarchar (50),
Quantity int,
Price decimal (6,1)
)
INSERT INTO Chocolate (Chocolate_Name, Quantity, Price)
VALUES
('Milk Chocolate', 50, 120),
('Dark Chocolate', 30, 150),
('White Chocolate', 40, 100),
('Hazelnut Chocolate', 25, 180),
('Almond Chocolate', 35, 160),
('Mint Chocolate', 45, 140),
('Caramel Chocolate', 20, 200),
('Crispy Chocolate', 60, 110),
('Chocolate Truffles', 15, 250),
('Peanut Butter Chocolate', 55, 130),
('Chocolate Bars', 70, 90),
('Chocolate Fudge', 10, 220),
('Coffee Chocolate', 30, 170),
('Raspberry Chocolate', 40, 190),
('Chili Chocolate', 25, 210)

Create table Chocolate1 (
Id int primary key Identity (1,1),
Chocolate_Name Nvarchar (50),
Quantity int,
Price decimal (6,1)
)
INSERT INTO Chocolate1 (Chocolate_Name, Quantity, Price)
VALUES
('Milk Chocolate', 50, 120),
('Dark Chocolate', 30, 150),
('White Chocolate', 40, 100),
('Milk Chocolate', 100, 250),
('Dark Chocolate', 75, 350),
('White Chocolate', 50, 200),
('Hazelnut Chocolate', 80, 300),
('Almond Chocolate', 60, 280),
('Mint Chocolate', 90, 220),
('Caramel Chocolate', 40, 400),
('Crispy Chocolate', 120, 180),
('Chocolate Truffles', 30, 500),
('Peanut Butter Chocolate', 110, 270),
('Chocolate Bars', 130, 150),
('Chocolate Fudge', 20, 450),
('Coffee Chocolate', 70, 330),
('Raspberry Chocolate', 50, 350),
('Chili Chocolate', 60, 380)

Select * from Chocolate
Union
Select * from Chocolate1

Select * from Chocolate
Union All
Select * from Chocolate1

Create Table Customers (
CustomerID int primary key Identity(1,1),
[Name] Varchar (50),
Email Nvarchar (50),
[Address] Nvarchar (Max)
)
INSERT INTO Customers ([Name], Email, Address)
VALUES
('John Doe', 'john.doe@example.com', '123 Main St, Springfield, IL'),
('Jane Smith', 'jane.smith@example.com', '456 Oak St, Chicago, IL'),
('Michael Johnson', 'michael.johnson@example.com', '789 Pine St, San Francisco, CA'),
('Emily Davis', 'emily.davis@example.com', '321 Elm St, Los Angeles, CA'),
('David Wilson', 'david.wilson@example.com', '654 Maple St, Miami, FL'),
('Sarah Brown', 'sarah.brown@example.com', '987 Birch St, Austin, TX'),
('Daniel Lee', 'daniel.lee@example.com', '135 Cedar St, New York, NY'),
('Rachel White', 'rachel.white@example.com', '246 Willow St, Boston, MA'),
('Kevin Clark', 'kevin.clark@example.com', '369 Oakwood Ave, Denver, CO'),
('Jessica Lewis', 'jessica.lewis@example.com', '741 Pinehill Rd, Phoenix, AZ'),
('Christopher Walker', 'chris.walker@example.com', '852 Fir St, Seattle, WA'),
('Olivia Hall', 'olivia.hall@example.com', '963 Redwood Dr, Portland, OR'),
('Matthew Allen', 'matthew.allen@example.com', '159 Aspen Ln, Atlanta, GA'),
('Sophia Young', 'sophia.young@example.com', '258 Maplewood Blvd, Detroit, MI'),
('Benjamin King', 'benjamin.king@example.com', '357 Birchwood Dr, Orlando, FL')


Create Table Items (
ItemID int primary key Identity(1,1),
Item_name Nvarchar (50),
Item_Cost Decimal (8,2),
CustomerID int Foreign key References Customers(CustomerID)
)
Insert into Items (Item_name,Item_Cost,CustomerID)
Values

INSERT INTO Items (Item_name, Item_Cost, CustomerID)
VALUES
('Laptop', 1500, 1),
('Smartphone', 800, 2),
('Headphones', 200, 3),
('Tablet', 600, 4),
('Smartwatch', 250, 5),
('Camera', 1200, 6),
('Printer', 300, 7),
('Monitor', 450, 8),
('Keyboard', 80, 9),
('Mouse', 50, 10),
('USB Drive', 20, 11),
('External Hard Drive', 150, 12),
('Speakers', 100, 13),
('Charger', 30, 14),
('Power Bank', 40, 15)

Update Items set CustomerID = 1 Where ItemID =3

Select * from Customers
Select * from Items