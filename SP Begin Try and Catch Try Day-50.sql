--Store Procedures inserting data Through SP Day-50**
Use TopicwisePractice


 Create Procedure SP_insert_Customer1
 @Flag bit output,
 @name Nvarchar (50),
 @email Nvarchar (50),
 @Address Nvarchar (50)
 as 
  Begin
  Begin try
     Begin transaction
     insert into Customers([Name],Email,[Address]) Values (@name,@email,@Address) 
     Set @Flag = 0
     if @@TRANCOUNT > 0
     Begin Commit transaction 
    End
	End Try

  Begin Catch
     If @@TRANCOUNT > 0
      Begin Rollback Transaction 
  End
    Set @flag= 1
  ENd Catch
  
End

Declare @Flag bit 

Exec SP_insert_Customer @flag output , 'POyush','Piyus@Gmail.com','Sayajigunj'
If @flag =0
Print 'There is some error'
Else 
Print 'Successfully inserted'

--Select * from Customers

Declare @flag bit

Exec SP_insert_Customer1 @flag output , 'Akash Parekh','Akash@gmail.com','Rajasthan'
If @flag = 0 
Print'Successfully Inserted '
Else 
Print 'There is some error'

Select * from Customers