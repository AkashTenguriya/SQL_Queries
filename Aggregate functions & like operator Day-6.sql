--**Day-6 |Aggregate function|**|Like operator|
Use TopicwisePractice

Create table Packages (
Id int,
Destination Nvarchar (50),
Approxi_Cost Decimal (10,2),
Number_of_Days int 
)

Select * from Packages

INSERT INTO Packages (id, Destination, Approxi_Cost, Number_of_Days)
VALUES
(1, 'Paris, France', 2500.0, 7),
(2, 'Tokyo, Japan', 3000.0, 10),
(3, 'New York, USA', 2200.0, 5),
(4, 'Rome, Italy', 1800.0, 6),
(5, 'Sydney, Australia', 3500.0, 12),
(6, 'Dubai, UAE', 2800.0, 8),
(7, 'Bangkok, Thailand', 1500.0, 7),
(8, 'London, UK', 2000.0, 7),
(9, 'Maldives', 4000.0, 5),
(10, 'Istanbul, Turkey', 1700.0, 6),
(11, 'Cape Town, South Africa', 2900.0, 9),
(12, 'Dubai, UAE', 3300.0, 8),
(13, 'Rio de Janeiro, Brazil', 2400.0, 10),
(14, 'Barcelona, Spain', 2100.0, 7),
(15, 'Bangkok, Thailand', 1600.0, 6)

Select * from Packages

Select Max(Approxi_Cost) as Maximum_Package from Packages
Select Min(Approxi_Cost) as Affordable_Package from Packages
Select avg(Approxi_Cost) as Average_Cost from Packages

Select * from Packages where Destination like 'B%' --Starting word 
Select * from Packages where Destination like '%a' --Ending word 
Select * from Packages where Destination not like '%a%' --Middle word 
Select * from Packages where Destination  like '_a%'  --_after number of spaces latter starts
Select * from Packages where Destination  like '%a_' --_after number of spaces latter Ends
Select * from Packages where Destination  like 'D%' and Destination like '%A%'
Select * from Packages where Destination  like 'a%' or Destination like '%A%'