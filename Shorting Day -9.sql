--**Day-9 |	Shorting|**|Like operator|

Create table Cars (
Id int,
Car_name Varchar (50),
Cost Decimal (10,2),
Company_name Varchar (50)
)

INSERT INTO Cars (ID, Car_name, Cost, Company_name)
VALUES
(1, 'Model S', 79999, 'Tesla'),
(2, 'Mustang GT', 55000, 'Ford'),
(3, 'Civic Type R', 37000, 'Honda'),
(4, 'Camry XSE', 35000, 'Toyota'),
(5, 'Corolla SE', 25000, 'Toyota'),
(6, 'F-150 Lariat', 45000, 'Ford'),
(7, 'Model 3', 39999, 'Tesla'),
(8, 'Accord Touring', 43000, 'Honda'),
(9, 'Charger R/T', 43000, 'Dodge'),
(10, 'Elantra N', 30000, 'Hyundai'),
(11, 'BMW M3', 70000, 'BMW'),
(12, 'Audi A4', 45000, 'Audi'),
(13, 'Chevrolet Camaro', 55000, 'Chevrolet'),
(14, 'Nissan Altima', 25000, 'Nissan'),
(15, 'Jeep Wrangler', 35000, 'Jeep')

Select * from Cars

Select * from Cars where Car_name like '%R%' and Car_name like 'C%'
Select * from Cars where Car_name like '%R%' or Car_name like 'C%'

Select Id,Car_name,Cost,Company_name from Cars order by Id 
Select Id,Car_name,Cost,Company_name from Cars order by Car_name desc,id desc

