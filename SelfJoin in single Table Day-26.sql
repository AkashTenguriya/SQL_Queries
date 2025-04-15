--**Self Joins with  date and time (Function) Case Analyss Day-26**

Use TopicwisePractice

Create table MyOffice (
Emp_Id int Primary key Identity (1,1),
Name_Of_Employee Varchar (50),
SuperVisor_ID Int
)

INSERT INTO MyOffice (Name_Of_Employee, SuperVisor_ID)  
VALUES  
    ('Alice Johnson', Null),  
    ('Bob Smith', Null),  
    ('Charlie Brown', 2),  
    ('David Williams', 9),  
    ('Emma Davis', 5),  
    ('Franklin Miller', 1),  
    ('Grace Wilson', 8),  
    ('Henry Moore', 4),  
    ('Isabella Taylor', 10),  
    ('Jack Anderson', 6),  
    ('Katherine Thomas', 2),  
    ('Liam Martinez', 7),  
    ('Mia Robinson', 5),  
    ('Noah Harris', 9),  
    ('Olivia Clark', 3)


update MyOffice set SuperVisor_ID = 1 where Emp_Id = 10
Select * from MyOffice
Select Table1.Name_Of_Employee as Employees , Table2.Name_Of_Employee as Supervisors
from MyOffice as Table1 
Inner join MyOffice as Table2 on Table1.SuperVisor_ID =Table2.Emp_Id order by Table1.Emp_Id Desc
