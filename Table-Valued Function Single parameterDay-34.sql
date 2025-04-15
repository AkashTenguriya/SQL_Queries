--**Table Valued FUnction Single Parameter-34**


Select * from Fav_Food1	 Where Cost >= 1800
Create Function Food_Cost_Above_1800 ()
Returns Table
as
Return(Select * from Fav_Food1	 Where Cost >= 1800)


Select * from DBO.Product_Affodablitiy()
Select * from Dbo.Food_Cost_Above_1800()


----**Table Valued FUnction with single parameter**

Select * from Items

Create Function GetCostTable (@MyCost int)
Returns Table
REturn (Select * from Items where Items.Item_Cost >= @MyCost)

Select * from Dbo.GetCostTable(500)--Just need to ener Items Cost Lesser or more as per your Requirements

Create table Fav_Mobile(
Id Int primary key Identity(1,1),
Brand_Name Varchar (50),
Operating_Sys_Name Nvarchar(50),
Cost Decimal(10,2)
) 
Drop table Fav_Mobile
Select * from Fav_Mobile

INSERT INTO Fav_Mobile (Brand_Name, Operating_Sys_Name, Cost)
VALUES
('Apple', 'iOS', 89000),
('Samsung', 'Android', 75000),
('OnePlus', 'Android', 45000),
('Xiaomi', 'Android', 25000),
('Realme', 'Android', 20000),
('Vivo', 'Android', 30000),
('Oppo', 'Android', 35000),
('Motorola', 'Android', 35000),
('Google', 'Android', 65000),
('Nokia', 'Android', 22000),
('Sony', 'Android', 55000),
('Huawei', 'Android', 60000),
('Asus', 'Android', 40000),
('LG', 'Android', 55000),
('Lenovo', 'Android', 30000)

Select * from Fav_Mobile

Create function Get_Mobile_Cost (@MObCost Decimal (10,2))
Returns Table 
As
Return (Select * from Fav_Mobile where Fav_Mobile.Cost >= @MObCost )

Select *  From DBO.Get_Mobile_Cost (80000)

