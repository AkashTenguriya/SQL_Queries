--Group By & Having and Where on Basis of Duplicate Column -41**
--Where directly filter on Table and Having work with group by 


Use TopicwisePractice

Create Table Ice_Cream (
ID int Primary key Identity (1,1),
Ice_Cream_Flavour Nvarchar (50),
Sales_Location Nvarchar (50),
Unit_Sales Int 
)

INSERT INTO Ice_Cream (Ice_Cream_Flavour, Sales_Location, Unit_Sales)
VALUES
    ('Chocolate', 'New York', 150),
    ('Vanilla', 'Los Angeles', 120),
    ('Strawberry', 'Chicago', 100),
    ('Mint Chocolate', 'Houston', 90),
    ('Cookies & Cream', 'Miami', 130),
    ('Chocolate', 'New York', 140),
    ('Vanilla', 'Los Angeles', 110),
    ('Strawberry', 'Chicago', 105),
    ('Mint Chocolate', 'Houston', 95),
    ('Cookies & Cream', 'Miami', 125),
    ('Chocolate', 'New York', 160),
    ('Vanilla', 'Los Angeles', 130),
    ('Strawberry', 'Chicago', 115),
    ('Mint Chocolate', 'Houston', 85),
    ('Cookies & Cream', 'Miami', 135)

Select * from Ice_Cream

--Select Count(Id) [Number of Flavioured sold],Sales_Location, Sum(Unit_Sales)[Total Unit Sold] 
--From Ice_Cream where Sales_Location ='Chicago' or  Sales_Location ='Miami' or  Sales_Location ='Los Angeles'
--Group By Sales_Location

Select Count (ID)[Number of Flaour sold],Sales_Location[Location],Sum(Unit_Sales)[Total Unit Sold] from Ice_Cream 
Where Sales_Location ='Miami' or Sales_Location ='Houston' Or Sales_Location ='New York'
Group By Sales_Location

--Select Count(Id) [Number of Flavioured sold],Sales_Location, Sum(Unit_Sales)[Total Unit Sold] 
--From Ice_Cream
--Group By Sales_Location
--Having Sales_Location ='Chicago' or  Sales_Location ='Miami' or  Sales_Location ='Los Angeles'

Select Count (ID)[Number of Flaour sold],Sales_Location[Location],Sum(Unit_Sales)[Total Unit Sold] 
from Ice_Cream 
Group By Sales_Location
Having Sales_Location ='Miami' or Sales_Location ='Houston' Or Sales_Location ='New York'

Create Table ChocolateGB(
Id Int Primary key Identity (1,1),
Choco_Type Nvarchar (50),
Choco_Cost Decimal (10,2),
Country_of_Origin Nvarchar (50)
)
INSERT INTO ChocolateGB (Choco_Type, Choco_Cost, Country_of_Origin)
VALUES
    ('Dark Chocolate', 155.99, 'Switzerland'),
    ('Milk Chocolate', 160.50, 'Belgium'),
    ('White Chocolate', 165.20, 'USA'),
    ('Hazelnut Chocolate', 170.75, 'Germany'),
    ('Ruby Chocolate', 175.10, 'France'),
    ('Dark Chocolate', 180.25, 'Switzerland'),
    ('Milk Chocolate', 185.75, 'Belgium'),
    ('White Chocolate', 190.40, 'USA'),
    ('Hazelnut Chocolate', 195.90, 'Germany'),
    ('Ruby Chocolate', 200.30, 'France'),
    ('Dark Chocolate', 205.10, 'Switzerland'),
    ('Milk Chocolate', 210.60, 'Belgium'),
    ('White Chocolate', 215.35, 'USA'),
    ('Hazelnut Chocolate', 220.00, 'Germany'),
    ('Ruby Chocolate', 225.25, 'France'),
    ('Dark Chocolate', 230.80, 'Switzerland'),
    ('Milk Chocolate', 235.90, 'Belgium'),
    ('White Chocolate', 240.10, 'USA'),
    ('Hazelnut Chocolate', 245.85, 'Germany'),
    ('Ruby Chocolate', 250.00, 'France'),
    ('Dark Chocolate', 255.50, 'Switzerland'),
    ('Milk Chocolate', 260.55, 'Belgium'),
    ('White Chocolate', 265.15, 'USA'),
    ('Hazelnut Chocolate', 270.95, 'Germany'),
    ('Ruby Chocolate', 275.40, 'France')

	Select * from ChocolateGB

Select
    
     Count (Choco_Type)[Choco Variety],
     Sum (Choco_Cost)[Total Cost],--Country_of_Origin [Country Origin],
	 Count ( Country_of_Origin) [Country Count]
     from ChocolateGB
     Group by Country_of_Origin
	 Having Country_of_Origin = 'France' or Country_of_Origin = 'Germany'

Select 
  Count (Choco_Type)[Choco Varitey],
  Sum (Choco_Cost)[Total Cost],
  Country_of_Origin[orgin Country]
  from ChocolateGB
  Group By Country_of_Origin
  Having Country_of_Origin ='France' or  Country_of_Origin ='Germany'
SELECT
    COUNT(Country_of_Origin) AS [No Of Countries], 
    SUM(Choco_Cost) AS [Total Cost], 
    Country_of_Origin AS [Country Origin]
FROM ChocolateGB where Country_of_Origin = 'France' or Country_of_Origin = 'Germany'
GROUP BY Country_of_Origin
having Country_of_Origin = 'France' or Country_of_Origin = 'Germany' or Country_of_Origin = 'Switzerland'







