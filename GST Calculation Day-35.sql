--**GST Calculation on Payable amount -35**

----Create function GstCal(@CGST as Decimal (10,2),@SGST as Decimal (10,2))
--Returns Decimal(10,2) 
--as 
--begin
--return (@CGST +@SGST)
--End
Use TopicwisePractice

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
end ) as [GST on Products],
(Case
When PR.Product_Cost >= 899 Then Dbo.MyDisc(8) * PR.Product_Cost/100 
When PR.Product_Cost Between 490 and 898  Then DBO.MyDisc(5) * PR.Product_Cost/100
When PR.Product_Cost is null Then Dbo.MY_GST(0)
else Dbo.MyDisc(3) * PR.Product_Cost/100
end ) as [Discounted Amount],
(Case
When PR.Product_Cost >= 899 Then PR.Product_Cost - (Dbo.MyDisc(8) * PR.Product_Cost/100 )
When PR.Product_Cost Between 490 and 898  Then PR.Product_Cost-( Dbo.MyDisc(5) * PR.Product_Cost/100 )
When PR.Product_Cost is null Then Dbo.MY_GST(0)
else PR.Product_Cost-( Dbo.MyDisc(3) * PR.Product_Cost/100 )
end ) as [Payable Amount After Deduction] ,
(Case
When PR.Product_Cost - (Dbo.MyDisc(8) * PR.Product_Cost/100) >= 899
Then PR.Product_Cost * DBO.GstCal (9,9) /100
When PR.Product_Cost - (DBO.MyDisc(5) * PR.Product_Cost/100) Between 490 and 898
Then  PR.Product_Cost * DBO.GstCal (6,6) /100
Else 
PR.Product_Cost * DBO.GstCal (4,4) /100
End) [GST Amount],
(Case
When PR.Product_Cost >= 899
Then (PR.Product_Cost - (Dbo.MyDisc(8) * PR.Product_Cost/100 ))+(PR.Product_Cost * DBO.GstCal (9,9) /100)
When PR.Product_Cost Between 490 and 898
Then (PR.Product_Cost-( Dbo.MyDisc(5) * PR.Product_Cost/100 ))+(PR.Product_Cost * DBO.GstCal (6,6) /100)
Else 
(PR.Product_Cost-( Dbo.MyDisc(3) * PR.Product_Cost/100 ))+ (PR.Product_Cost * DBO.GstCal (4,4) /100)
ENd )[Amount After GST & Dis]

from Products as PR 
Inner join Customers_List as CL on PR.ProductID = CL.ProductID   
Order by PR.ProductID Desc