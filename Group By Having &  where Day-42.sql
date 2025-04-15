--Group By & Having and Where & View Over View -42**
-- 
use TopicwisePractice
Create Table Students_GB (
Id Int Primary key Identity (1,1),
[Location] Nvarchar (50),
Fees Decimal (10,2)
)
insert into Students_GB ([Location],Fees)
Values ('Vadodara',10000),
('Rajasthan',15000),
('Halol',10000),
('Vadodara',10000),
('Rajasthan',15000),
('Halol',10000),
('Vadodara',10000),
('Rajasthan',15000),
('Halol',10000),
('Vadodara',10000)
Select * From Students_GB

--Select count (Id)[ID] ,
--       ([Location])[Location],
--	   sum   (Fees) [Fees]

--from Students_GB
--Group By [Location]

Select 
COUNT (Id )[Total Districts],
[Location],
Sum (Fees) [Total Fees]
from Students_GB 
Group By Location

Select count (Id)[ID] ,
       ([Location])[Location],
	   sum   (Fees) [Fees]

from Students_GB where [Location] = 'Halol' or [Location] = 'Rajasthan'
Group By [Location]
having [Location] = 'Halol'

Select * from Students where Student_id Between 1 and 5

Alter View Student_Details1
As
Select * from Students where Student_id Between 1 and 5

Select * from Student_Details1

Create View Latest_Students
as
Select Top 5 * from Students

Select * from Latest_Students