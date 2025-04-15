--Views Pratice -44**
Use TopicwisePractice


Select * from Product
Insert into Product (Product_Name,Product_Cost,Mode_Of_Delivery)
Values ('Fast track watch', 2500,'Out of delivery' ),
('Realme Earplugs', 3500,'Deliverred' )
Select * from Customers_List

--Alter View Customer_Product_Details
--as
--Select PR.ProducID,CS.Customer_Name,PR.Product_Name,CS.Customer_EMail,pr.Mode_Of_Delivery,PR.Product_Cost
--from Product as PR FUll join Customers_List as CS
--on pr.ProducID = CS.ProductID
Select * from Customers_List
Select * from Product

Alter View Customers_With_Product_VW
With Encryption
as
Select PR.ProducID,CL.Customer_Name,CL.Customer_EMail,PR.Product_Name,PR.Mode_Of_Delivery,PR.Product_Cost
from Product PR 
inner join  Customers_List CL on PR.ProducID = CL.ProductID 

Select * from Customers_With_Product_VW

Update Customers_With_Product_VW Set Customer_Name = 'Mayank Tenguriya' where producid =3


Select * from Customer_Product_Details order by Customer_Product_Details.ProducID desc

Update Customer_Product_Details set Customer_Name = 'Akash Tenguriya' where ProducID = 1003 

