-- Update & Delect Store Procedures Day-51**

--FK Related data are not deleted 

Create procedure SP_Update_Customers
@flag bit Output,
@ID int,
@Name Nvarchar (50),
@Email Nvarchar (50),
@address Nvarchar (50)

As 
Begin
 Begin Try
   Begin Transaction
   Update Customers Set [Name]=@Name , Email = @Email , [Address] = @address where CustomerID = @ID
   Set @flag = 0
   If @@TRANCOUNT >0 
   Begin Commit Transaction 
 End
 End Try

     Begin Catch 
  IF @@TRANCOUNT  > 0
    Begin rollback Transaction 
 End
  Set @flag = 1
  End Catch

End 

-------------------------------------------

Declare @flag Bit 

Exec SP_Update_Customers @flag output , 5 , 'Vikash Chaudhary','VIkash23@gmail.com','Gotri'
If @flag = 0 
Print 'Successfully Updated'
Else
Print 'There is some Error'

Select * from Customers

-------------------------------

Create procedure SP_Delete_Customers
@flag bit output,
@id int
As 
Begin 
Begin Try 
  Begin Transaction 
  Delete From Customers Where CustomerID =@id
  Set @flag = 0
  If @@TRANCOUNT > 0
  Begin Commit transaction
 End
 End Try

 Begin Catch 
     If @@TRANCOUNT > 0
     Begin Rollback Transaction
    End
     set @flag = 1
    End Catch 
 End
 ---------------------------------------------

 Declare @flag bit

Exec SP_Delete_Customers @flag output ,1027
If @flag = 0 
Print'Deleted Successfully'
Else 
Print 'There is some error'

Select * from Customers

SP_Helptext SP_Delete_Customers

-----------------------