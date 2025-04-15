--**Full,Inner,Left & Right Joins with Case Analyss Day-24**
use TopicwisePractice

Create table Computers (
CompID int primary key identity (1,1),
Brand_Name Varchar (50),
Cost Decimal (8,2)
)
INSERT INTO Computers (Brand_Name, Cost)
VALUES 
    ('Dell', 800),
    ('HP', 750),
    ('Apple', 1200),
    ('Lenovo', 650),
    ('Acer', 500),
    ('Asus', 900),
    ('Microsoft', 1100),
    ('Razer', 1600),
    ('Samsung', 950),
    ('MSI', 1400),
    ('Toshiba', 700),
    ('Alienware', 1800),
    ('Gigabyte', 1300),
    ('Huawei', 850),
    ('Google', 1000);


Create table Company (
CompanyID int primary key identity (1,1),
CompanyName varchar (50),
Country_Of_Origin Varchar (50),
CompID int Foreign  key References Computers(CompID)
) 
INSERT INTO Company (CompanyName, Country_Of_Origin, CompID)
VALUES 
    ('Tesla', 'USA', 3),
    ('BMW', 'Germany', 7),
    ('Hyundai', 'South Korea', 1),
    ('Toyota', 'Japan', 9),
    ('Ford', 'USA', 5),
    ('Volkswagen', 'Germany', 2),
    ('Nissan', 'Japan', 10),
    ('Mercedes-Benz', 'Germany', 6),
    ('Honda', 'Japan', 4),
    ('GM', 'USA', 8);

	Select * from Computers
	Select * from Company

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Computers.Cost[Cost ],Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country]
from Computers 
inner join Company on Computers.CompID = Company.CompID

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Computers.Cost[Cost ],Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country]
from Computers 
Right join Company on Computers.CompID = Company.CompID

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Computers.Cost[Cost ],Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country]
from Computers 
Left join Company on Computers.CompID = Company.CompID Where CompanyName not like 'N%' 

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Computers.Cost[Cost ],Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country]
from Computers 
Full join Company on Computers.CompID = Company.CompID Where CompanyName not like 'N%' order by Computers.CompID desc

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country],Computers.Cost[Cost ],
(Case 
when Computers.Cost > 1000 Then 'Expensive Product'
Else 'Affordable Product'
End ) As Product_Category

from Computers 
Full join Company on Computers.CompID = Company.CompID Where CompanyName not like 'N%' order by Computers.Cost desc

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country],Computers.Cost[Cost ],
(Case 
when Computers.Cost > 1000 Then 'Expensive Product'
Else 'Affordable Product'
End ) As Product_Category

from Computers 
Inner join Company on Computers.CompID = Company.CompID Where CompanyName not like 'N%' order by Computers.Cost desc

Select Computers.CompID ,Computers.Brand_Name[Brand Name] ,Company.CompanyName[Comapany Name],Company.Country_Of_Origin[Origin country],Computers.Cost[Cost ],
(Case 
when Computers.Cost > 1000 Then 'Expensive Product'
Else 'Affordable Product'
End ) As Product_Category

from Computers 
Left join Company on Computers.CompID = Company.CompID Where CompanyName not like 'N%' order by Computers.Cost desc


