--Store Procedures inserting data Through SP Day-48**
Use TopicwisePractice
Create procedure Customers_data_With_Encription
With Encryption
as
Select * from Customers_List
Go

Exec Customers_data_With_Encription 

Sp_Helptext Customers_data_With_Encription

Select * from Ev_Vehicles
Select * from Ev_Origin

--Create Procedure EV_Encripted_data
--With Encryption
--as
--Select EV.AutoId,EV.[Name],EV.Company,ORG.CountryName 
--from Ev_Vehicles EV Left join Ev_Origin ORG
--on EV.AutoID= ORG.AutoId
--Go

Create procedure EV_Protected_Data
With Encryption
as
Select EV.AutoId,EV.[Name],EV.Company,EO.CountryName
from Ev_Vehicles EV 
inner join Ev_Origin EO on EV.AutoId = EO.AutoId order by EV.AutoId desc
go
Exec EV_Protected_Data
Exec EV_Encripted_data
Sp_helptext EV_Encripted_data


--Basic Example of If Else Condition

Declare @A int
Set @A = 30

Declare @B int
Set @B = 25

 If (@A > @B)
 Print 'If Statement : Condition is True'
 Else
 Print 'Else Statement : Condition is True'

 Select * from Customers
 Declare @Flag bit 

Exec SP_insert_Customer @flag output , 'POyush','Piyus@Gmail.com','Sayajigunj'
If @flag =0
Print 'There is some error'
Else 
Print 'Successfully inserted'

-- Create Procedure SP_insert_Customer
-- @Flag bit output,
-- @name Nvarchar (50),
-- @email Nvarchar (50),
-- @Address Nvarchar (50)
-- as 
--  Begin
--     Begin transaction
--     insert into Customers([Name],Email,[Address]) Values (@name,@email,@Address) 
--     Set @Flag = 0
--     if @@TRANCOUNT > 0
--     Begin Commit transaction 
--    End
--    If @@TRANCOUNT > 0
--    Begin Rollback Transaction 
--End
--    Set @flag= 1
--End
--how to insert data using Store procedure



Select * from Customers

Select * from Product
Create procedure SP_Insert_product
@flag bit output,
@Prodduct_Name Varchar (50),
@product_Cost Decimal (10,2),
@Mode_Of_Delivery Nvarchar (50)
as
Begin
     Begin Transaction
	 Insert into Product (Product_Name,Product_Cost,Mode_Of_Delivery) Values (@Prodduct_Name,@product_Cost,@Mode_Of_Delivery)
	 set @flag = 0
	 If @@TRANCOUNT >0 
	 Begin Commit Transaction
	End
	 If @@TRANCOUNT >0
  	 Begin Rollback Transaction
    End
	Set @flag =1
End
Select * from Product
Declare @Flag bit 

 Exec SP_Insert_product @flag output , 'BOat Speaker',500,'Offline'
 If @flag =0
 Print 'There is some error'
 Else 
 Print 'Successfully inserted'

