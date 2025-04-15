--**Left join & Right Join & Inner join , Like opertator order by Aliases name Day-23**

Create table Ev_Vehicles(
AutoId Int primary key identity (1,1),
[Name] varchar (50),
Company Varchar (50)
)
INSERT INTO Ev_Vehicles ([Name], Company)
VALUES 
    ('Model S', 'Tesla'),
    ('Model 3', 'Tesla'),
    ('Model X', 'Tesla'),
    ('Model Y', 'Tesla'),
    ('Ioniq 5', 'Hyundai'),
    ('Kona Electric', 'Hyundai'),
    ('Mustang Mach-E', 'Ford'),
    ('F-150 Lightning', 'Ford'),
    ('Leaf', 'Nissan'),
    ('Ariya', 'Nissan'),
    ('EQC', 'Mercedes-Benz'),
    ('EQS', 'Mercedes-Benz'),
    ('Polestar 2', 'Polestar'),
    ('EV6', 'Kia'),
    ('bZ4X', 'Toyota')


Create table Ev_Origin (
CountryID Int Primary key identity (1,1),
CountryName Varchar (50),
AutoId Int Foreign key References Ev_Vehicles(AutoId)
)

INSERT INTO Ev_Origin (CountryName, AutoId)
VALUES 
    ('USA', 7),
    ('Germany', 3),
    ('China', 9),
    ('South Korea', 1),
    ('Japan', 5),
    ('India', 10),
    ('France', 4),
    ('Italy', 2),
    ('Sweden', 6),
    ('UK', 8)

	INSERT INTO Ev_Origin (CountryName, AutoId)
VALUES 
    ('Canada', NULL),
    ('Australia', NULL),
    ('Netherlands', NULL),
    ('Belgium', NULL),
    ('Spain', NULL);


	Select * from Ev_Vehicles
	Select * from Ev_Origin

	Select EV.AutoId,EV.[Name],EV.Company,EO.CountryName
	from Ev_Vehicles As EV 
	inner join Ev_Origin as EO on EV.AutoId =EO.AutoId where Name not like  'L%' order by EV.AutoId Desc

Select EV.AutoId,EV.[Name],EV.Company,EO.CountryName
from Ev_Vehicles As EV 
Right join Ev_Origin as EO on EV.AutoId =EO.AutoId where Name like 'M%' order by EV.AutoId Asc


Select EV.AutoId,EV.[Name],EV.Company,EO.CountryName
from Ev_Vehicles As EV 
Left join Ev_Origin as EO on EV.AutoId =EO.AutoId where CountryName not like 'A&' order by EV.AutoId Desc
