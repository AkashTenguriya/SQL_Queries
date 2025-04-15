--**Day-11 |Modify|* & *|add column,drop column and udpate column|* By using Alter *Primary Key*

Use TopicwisePractice

-- Primary key Always has  Unique Data
-- A Primary key Length Can not be Exceeded Than 900 Bytes 
-- A primary Key Can not Have null Values 
-- There Can be no Duplicate values for a Primary Key
-- A Table can contatin only One Primary Key Constraint 

Create table Perfumes (
Id int,
Perfume_Name varchar (50),
Company varchar (50)
)

INSERT INTO Perfumes (Id, Perfume_Name, Company,cost)
VALUES
    (22, 'Kanel No.45', 'Kannel',150),
    (23, 'lion chal', 'Kharwa loin',200),
    (3, 'Acqua di Gio', 'Giorgio Armani',500),
    (4, 'Black Orchid', 'Tom Ford',600),
    (5, 'Flowerbomb', 'Viktor & Rolf',700),
    (6, 'La Vie Est Belle', 'Lancôme',800),
    (7, 'Jo Malone London', 'Jo Malone',900),
    (8, 'CK One', 'Calvin Klein',800),
    (9, 'Alien', 'Thierry Mugler',700),
    (10, 'Yves Saint Laurent Black Opium','Yves Saint Laurent',600),
    (11, 'Tom Ford Oud Wood', 'Tom Ford',500),
    (12, 'Guerlain Shalimar', 'Guerlain',400),
    (13, 'Viktor & Rolf Spicebomb', 'Viktor & Rolf',300),
    (14, 'Chloé Eau de Parfum', 'Chloé',200),
    (15, 'Armani Code', 'Giorgio Armani',100),
    (16, 'Viva La Juicy', 'Juicy Couture',150),
    (17, 'LHomme', 'Yves Saint Laurent',100),
    (18, 'Paco Rabanne 1 Million', 'Paco Rabanne',50),
    (19, 'Tom Ford Neroli Portofino', 'Tom Ford',15),
    (20, 'Creed Aventus', 'Creed',25)



	Select * from Perfumes

	ALter table Perfumes add Cost decimal (8,2)
	ALter table Perfumes Drop column Cost

	Update Perfumes set cost = 250 where Id = 2

	UPDATE Perfumes
SET
    Cost = CASE 
        WHEN Id = 1 THEN 250
        WHEN Id = 2 THEN 150
        WHEN Id = 3 THEN 100
        WHEN Id = 4 THEN 699
        WHEN Id = 5 THEN 752
		WHEN Id = 6 THEN 452
		WHEN Id = 7 THEN 685
		WHEN Id = 8 THEN 199
		Else Cost --if no conditin match ,keep the original value
		ENd

	Alter table perfumes Drop column company
	ALter table Perfumes add Company1 Varchar(50)

	
	UPDATE Perfumes
SET
	Company = CASE 
        WHEN Id = 1 THEN 'Chanel'
        WHEN Id = 2 THEN 'Christian Dior'
        WHEN Id = 3 THEN 'Giorgio Armani'
        WHEN Id = 4 THEN 'Tom Ford'
        WHEN Id = 5 THEN 'Viktor & Rolf'
        WHEN Id = 6 THEN 'Lancôme'
        WHEN Id = 7 THEN 'Jo Malone'
        WHEN Id = 8 THEN 'Calvin Klein'
        WHEN Id = 9 THEN 'Thierry Mugler'
        WHEN Id = 10 THEN 'Yves Saint Laurent'
        WHEN Id = 11 THEN 'Tom Ford'
        WHEN Id = 12 THEN 'Guerlain'
        WHEN Id = 13 THEN 'Viktor & Rolf'
        WHEN Id = 14 THEN 'Chloé'
        WHEN Id = 15 THEN 'Giorgio Armani'
        WHEN Id = 16 THEN 'Juicy Couture'
        WHEN Id = 17 THEN 'Yves Saint Laurent'
        WHEN Id = 18 THEN 'Paco Rabanne'
        WHEN Id = 19 THEN 'Tom Ford'
        WHEN Id = 20 THEN 'Creed'
        ELSE Company -- If no conditions match, keep the original value
    END

	Select * from Perfumes

	Alter table perfumes drop column Company1


Create table MyVeg_2025 (
Id int Primary Key,
Veg_Name Nvarchar (50),
[Status] Nvarchar (50)
)

Select * from MyVeg_2025

INSERT INTO MyVeg_2025 (Id, Veg_Name, [Status])
VALUES
(1, 'Carrot', 'Available'),
(2, 'Spinach', 'Out of stock'),
(3, 'Tomato', 'Available'),
(4, 'Lettuce', 'Available'),
(5, 'Cucumber', 'Out of stock'),
(6, 'Broccoli', 'Available'),
(7, 'Cauliflower', 'Out of stock'),
(8, 'Potato', 'Available'),
(9, 'Onion', 'Out of stock'),
(10, 'Peas', 'Available'),
(11, 'Green Beans', 'Out of stock'),
(12, 'Bell Pepper', 'Available'),
(13, 'Eggplant', 'Available'),
(14, 'Zucchini', 'Out of stock'),
(15, 'Sweet Corn', 'Available')
