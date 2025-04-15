--**Day-18 *DBMS * & *Usages *

--**Intoroduction to database management System**

-- **Defination of Database management System**
    --A Database management System is a System Software Used to Store ,manage and Retrive Data Efficiently .
	--Example :- SQL server, MySQL, PostGreSQL. MongoDB, Oracle Database.

--**Why Use DBMS ?**
   -- Eliminate of data Redundancy 
   -- Ensure data Intergrity and Efficiency
   -- Provide Centrilized control of Data
   -- Facilitates Data sharing Among multiple Users

-- **Components of DBMS**
   -- Software :- DBMS Software and Application   
   -- SoftwareData :- Acutal Data Stored
   -- Users :- Database administrators,Developers & End-Users
   -- Procedures :- Instructions and rules

-- **Functions of DBMS**
   -- Data Storage,Retrival & Update
   -- User Access control
   -- Backup & Recovery
   -- Data Integrity Management
   -- Query Processing

--**Advantages of DBMS**
  -- Data Consistency
  -- Improved Data Sharing & Security
  -- Scalability & Flexibility
  -- Efficient Query Processing

--**Real-World Applications**
  -- Banking & Finance
  -- E-Commerce Platforms 
  -- Health Care Systems
  -- Social Media Platforms
  -- Educations and Earning Management System
  -- And Many more ..... 
  
  Create Table Snacks (
  Id int primary key identity (1,1),
  [Name] varchar (50),
  Cost Decimal(8,2),
  Company_Name Varchar(50)
  )

  INSERT INTO Snacks (Name, Cost, Company_Name)
VALUES
  ('Chips', 50.00, 'Lays'),
  ('Chocolate Bar', 75.00, 'Cadbury'),
  ('Cookies', 40.00, 'Oreo'),
  ('Pretzels', 60.00, 'Snyders'),
  ('Popcorn', 30.00, 'Orville Redenbacher'),
  ('Candy', 20.00, 'Haribo'),
  ('Granola Bar', 80.00, 'Nature Valley'),
  ('Ice Cream', 150.00, 'Haagen-Dazs'),
  ('Fruit Snacks', 90.00, 'Stretch Island'),
  ('Gummy Bears', 45.00, 'Trolli'),
  ('Rice Cakes', 25.00, 'Quaker'),
  ('Nuts', 120.00, 'Planters'),
  ('Trail Mix', 110.00, 'Kirkland'),
  ('Jelly Beans', 55.00, 'Jelly Belly'),
  ('Pudding', 65.00, 'Jell-O')

Select  * from Snacks

Update Snacks set Company_Name = 'Green Cauliflower' where Id =10






