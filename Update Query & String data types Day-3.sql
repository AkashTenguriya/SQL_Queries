Use TopicwisePractice --Day-3  **Topics** 1.|Update| 2.|Multiplie Column Update| 3. |String Data Types|

Create table Choco (
id int,
Choco_Name varchar (50),
Price Decimal (6,1)
)

Select * from Choco

INSERT INTO Choco (id, Choco_Name, Price)
VALUES
(1, 'Milk Chocolate', 120.50),
(2, 'Dark Chocolate', 150.00),
(3, 'White Chocolate', 130.75),
(4, 'Hazelnut Chocolate', 160.00),
(5, 'Caramel Chocolate', 140.25),
(6, 'Mint Chocolate', 135.00),
(7, 'Peanut Butter Chocolate', 125.20),
(8, 'Almond Chocolate', 145.40),
(9, 'Orange Chocolate', 110.10),
(10, 'Strawberry Chocolate', 125.30)

-- *Always use where clause to update perticular row of a column*
Update Choco Set Choco_Name = 'Coconut Tasty' Where Id = 8  
update Choco set Price = 195 where id = 8

Create table Employee(
id int,
Emp_Name Varchar(50),
Emp_salary Decimal (10,2),
Emp_Address Nvarchar (Max),
Emp_Contact Bigint 
) 

Select * from Employee  order by id desc

INSERT INTO Employee (Id, Emp_Name, Emp_salary, Emp_Address, Emp_Contact)
VALUES
(1, 'John Doe', 50000.00, '123 Main St, Cityville', '9876543210'),
(2, 'Jane Smith', 55000.00, '456 Oak St, Townsburg', '9876543211'),
(3, 'Robert Brown', 60000.00, '789 Pine St, Villagewood', '9876543212'),
(4, 'Emily White', 52000.00, '321 Birch St, Smalltown', '9876543213'),
(5, 'Michael Davis', 48000.00, '654 Maple St, Bigcity', '9876543214'),
(6, 'Sarah Wilson', 53000.00, '987 Cedar St, Lakeview', '9876543215'),
(7, 'David Martinez', 47000.00, '135 Elm St, Greenfield', '9876543216'),
(8, 'Jessica Clark', 54000.00, '246 Willow St, Riverdale', '9876543217'),
(9, 'James Lewis', 49000.00, '369 Aspen St, Hilltop', '9876543218'),
(10, 'Linda Young', 51000.00, '741 Redwood St, Crestview', '9876543219')

Update Employee set Emp_salary = 35000.00 ,Emp_Contact = 9574359853 Where Id=10 
update Employee set Emp_Name = 'Akash Tenguriya' , Emp_Address = 'h-105 Vrajdhara soc2'  where id = 10
update Employee set id = 5  where Emp_Name = 'Akash Tenguriya'
Update Employee set id = 10 Where Emp_Name ='Michael Davis'

--H.W (Student_id,Student_full_name,Student_COntact,Student_Address)

Create table Students (
Student_id int,
Student_full_name Varchar(50),
Student_Address Varchar (Max),
Student_Contact Bigint
)

Select * from Students

INSERT INTO Students (Student_id, Student_full_name, Student_Address, Student_Contact)
VALUES
(1, 'John Doe', '123 Main St, Cityville', '9876543210'),
(2, 'Jane Smith', '456 Oak St, Townsburg', '9876543211'),
(3, 'Robert Brown', '789 Pine St, Villagewood', '9876543212'),
(4, 'Emily White', '321 Birch St, Smalltown', '9876543213'),
(5, 'Michael Davis', '654 Maple St, Bigcity', '9876543214'),
(6, 'Sarah Wilson', '987 Cedar St, Lakeview', '9876543215'),
(7, 'David Martinez', '135 Elm St, Greenfield', '9876543216'),
(8, 'Jessica Clark', '246 Willow St, Riverdale', '9876543217'),
(9, 'James Lewis', '369 Aspen St, Hilltop', '9876543218'),
(10, 'Linda Young', '741 Redwood St, Crestview', '9876543219')

Update Students set Student_full_name = 'Mayank Tenguriya'  Where Student_id = 9