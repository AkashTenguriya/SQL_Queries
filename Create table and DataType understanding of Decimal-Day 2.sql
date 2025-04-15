Use TopicwisePractice

Select * from apple 

INSERT INTO apple (Id, Apple_Name)
VALUES 
(1, 'Granny Smith'),
(2, 'Red Delicious'),
(3, 'Fuji'),
(4, 'Honeycrisp'),
(5, 'Golden Delicious'),
(6, 'Pink Lady'),
(7, 'Gala'),
(8, 'Braeburn'),
(9, 'Empire'),
(10, 'Crispin'),
(11, 'McIntosh'),
(12, 'Jonagold'),
(13, 'Winesap'),
(14, 'Opal'),
(15, 'Ambrosia')

Create Table Employees(
Id int,
Emp_Name Varchar(50),
[Address] Varchar (Max)
)

Select * from Employees

INSERT INTO Employees (id, Emp_Name, [Address])
VALUES
(1, 'John Doe', '123 Main St, Cityville'),
(2, 'Jane Smith', '456 Oak St, Townsburg'),
(3, 'Robert Brown', '789 Pine St, Villagewood'),
(4, 'Emily White', '321 Birch St, Smalltown'),
(5, 'Michael Davis', '654 Maple St, Bigcity'),
(6, 'Sarah Wilson', '987 Cedar St, Lakeview'),
(7, 'David Martinez', '135 Elm St, Greenfield'),
(8, 'Jessica Clark', '246 Willow St, Riverdale'),
(9, 'James Lewis', '369 Aspen St, Hilltop'),
(10, 'Linda Young', '741 Redwood St, Crestview')

Create table Moto (
Id int,
Price decimal (5,4),
Model_Name Varchar (50)
)

--ALTER TABLE Moto
--ALTER COLUMN Price DECIMAL(10, 2)

Alter table moto
alter Column price Decimal (10,2)

INSERT INTO Moto (Id, Price, Model_Name)
VALUES
(1, 15000, 'Yamaha R1'),
(2, 12000, 'Honda CBR600RR'),
(3, 18000, 'Kawasaki Ninja ZX-10R'),
(4, 22000, 'Suzuki GSX-R1000'),
(5, 10000, 'Ducati Panigale V2'),
(6, 13000, 'BMW S1000RR'),
(7, 11000, 'KTM RC 390'),
(8, 25000, 'Harley Davidson Roadster'),
(9, 16000, 'Triumph Daytona 675'),
(10, 9000, 'Aprilia RS 660')

Select * from Moto

--- Create table (id,name,st_fees,St_add)

Create table Student_details(
id int,
Student_Name Varchar (50),
Student_fees Decimal (10,2),
Student_Address NVarchar(Max)
)

Select * from Student_details where Student_fees  is null -- (Student_fees  is null)Pratice latter

INSERT INTO Student_details (Id, Student_Name, Student_fees, Student_Address)--Always Predefine Column names which needs to be update values otherwise you have to All columns
VALUES
(1, 'John Doe', 5000.00, '123 Main S	t, Cityville'),
(2, 'Jane Smith', NULL, '456 Oak St, Townsburg'),
(3, 'Robert Brown', NULL, '789 Pine St, Villagewood'),
(4, 'Emily White', 5200.00, '321 Birch St, Smalltown'),
(5, 'Michael Davis', NULL, '654 Maple St, Bigcity'),
(6, 'Sarah Wilson', 5500.00, '987 Cedar St, Lakeview'),
(7, 'David Martinez', 4700.00, '135 Elm St, Greenfield'),
(8, 'Jessica Clark', 5400.00, '246 Willow St, Riverdale'),
(9, 'James Lewis', 4900.00, '369 Aspen St, Hilltop'),
(10, 'Linda Young', 5100.00, '741 Redwood St, Crestview')



