--**GST Calculation on Payable amount -36** Test -

Use TopicwisePractice

Create Table Sales_Executives(
ExecutiveID Int primary key Identity (1,1),
[Name] Varchar (50),
Salary Decimal (10,2),
Email_Address Varchar (100)
)

Select * from Sales_Executives

INSERT INTO Sales_Executives ([name], [Salary], [Email_Address])
VALUES 
('hiren Soni',95000.35,'Akashtenguriya2@gmail.com'),
('John Doe', 92000, 'johndoe@example.com'),
('Jane Smith', 85000, 'janesmith@example.com'),
('Mike Johnson', 94000, 'mikejohnson@example.com'),
('Emily Davis', 88000, 'emilydavis@example.com'),
('Chris Lee', 75000, 'chrislee@example.com'),
('Anna Brown', 160000, 'annabrown@example.com'),
('David Wilson', 180000, 'davidwilson@example.com'),
('Laura Taylor', 220000, 'laurataylor@example.com'),
('Steve Miller', 250000, 'stevemiller@example.com'),
('Sophie White', 300000, 'sophiewhite@example.com')

create table Sales_Amount 
(
SalesAmountID int primary key identity(1,1),
Sales_Amount decimal(12,2),
Commision_percentage decimal(5,2),
ExecutiveId int foreign key references Sales_Executives(ExecutiveId)
)
Select * from Sales_Amount
Insert into Sales_Amount (Sales_Amount,Commision_percentage,ExecutiveId)
Values (10000,10,9),
(95000,10,5),
(89000,5,4),
(125000,10,6),
(315000,10,5),
(99000,5,Null),
(216000,10,Null)

Create Function Emp_Commission(@mycom int)
returns Int
As begin
return (@mycom)
end


create function pay_catogery(@mycatogery as nvarchar(50))
returns nvarchar(50)
as
begin
return @mycatogery
end



Select * from Sales_Executives
Select * from Sales_Amount

Select SE.ExecutiveID,SE.[Name],SE.Email_Address,Se.Salary,Sa.Sales_Amount,SA.Commision_percentage,

(Case When SA.Sales_Amount >= 100000
then Salary + (Sales_Amount * dbo.Emp_Commission (10)/100 )
Else 
Salary + (Sales_Amount * dbo.Emp_Commission (5)/100 )
            End) as Total_Payable_Salary,

(Case When Salary + (Sales_Amount * dbo.Emp_Commission (10)/100 ) >=150000
Then dbo.pay_catogery ('High pay Salary')
 When Salary + (Sales_Amount * dbo.Emp_Commission (5)/100 ) < 150000
Then dbo.pay_catogery ('Moderate pay Salary')
Else
dbo.pay_catogery ('Please check the amount')
end) as Salary_satatus

from Sales_Executives as SE inner join Sales_Amount SA on SE.ExecutiveID =SA.ExecutiveId
order by (Case when SA.Sales_Amount >= 10000
Then (SE.Salary + (Sales_Amount * dbo.Emp_Commission (10)/100 ))
Else (SE.Salary + (Sales_Amount * dbo.Emp_Commission (5)/100 ))
End )Desc



Select Se.ExecutiveID,Se.[Name],SE.Salary,Se.Email_Address,SA.Sales_Amount,SA.Commision_percentage
from Sales_Executives As SE Full outer join Sales_Amount as SA on SE.ExecutiveID = SA.ExecutiveID
where SA.Sales_Amount > 95000
order by SA.Sales_Amount Desc
