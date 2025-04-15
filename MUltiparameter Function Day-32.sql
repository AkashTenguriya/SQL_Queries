--**Scalar-Valued Functions with Multiple Parameters Day-32**

Create function Multi_para (@A as int, @B as int)
Returns int
as
Begin
Return (@A + @B)
End

Select DBO.Multi_Para(8,9) As Addition

Select  Customers.Name,Customers.Address,Customers.Email, DBO.Multi_Para(8,9)[Addition] from Customers