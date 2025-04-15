--**Scalar-Valued Functions Passing Parater Multiple GST % with Case expression Day-29**

Alter function MY_GST_3 (@myNum Nvarchar)
Returns Nvarchar
As
Begin
Return (@myNum)
End

Select PR.ProductID[ID],CL.Customer_Name[Customer Name],CL.Customer_EMail[Email],PR.Product_Name[Product Name],pr.Date_Of_Purchase[Purchase data & Time],PR.Product_Cost[Cost],
(Case
When PR.Product_Cost >= 899 Then Dbo.Product_Status()
When PR.Product_Cost Between 490 and 898  Then DBO.Product_Status_1()
When PR.Product_Cost is null Then DBO.Product_Status_2() 
else 'Affordable Product'
end ) as [Procut Category],
(Case
When PR.Product_Cost >= 899 Then Dbo.MY_GST(18)
When PR.Product_Cost Between 490 and 898  Then DBO.MY_GST(12)
When PR.Product_Cost is null Then Dbo.MY_GST(0)
else DBO.MY_GST(8)
end ) as [GST on Products]

from Products as PR 
Inner join Customers_List as CL on PR.ProductID = CL.ProductID   
Order by PR.ProductID Desc