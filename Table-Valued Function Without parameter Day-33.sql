--**Table Valued FUnction Without Parameter-33**

Use TopicwisePractice

Create function Item_GSt_Amt (@ItemCost as Decimal(10,2),@perc Decimal (5,2))
Returns Decimal(10,2)
As
Begin
Return (@ItemCost * @perc /100)
End
Select * from Items
Select *,DBO.Item_GSt_Amt (8000,10) [Combine GST] from Items	

Select * from Device Where Cost >= 3000
Select * from Items

Create function Product_Affodablitiy ()
Returns Table
As 
Return (Select CS.CustomerID,CS.[Name],CS.Email,CS.[Address],IT.Item_name,it.Item_Cost,

(Case
When It.Item_Cost > 500 Then 'Expensive Product'
Else 'Affordable Product'
End ) As Product_Category

from Customers as CS 
full join Items as IT on CS.CustomerID = it.CustomerID)

Select * from DBO.Product_Affodablitiy()
Select * from DBO.GetItemsTable()

