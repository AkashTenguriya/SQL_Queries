--Sub Queries Pratice -45**
Use TopicwisePractice
Select * from Tour_Members
Select * from Tourist where Place_Name in 
(Select Place_Name from Tourist where Cost > 22000 )

Select * from Tourist Where Place_Name in (Select Place_Name from Tourist Where Cost > 20000 )

Update Tourist set Cost = Cost + 1000 where Tourist.Place_Name in 
(Select Tourist.Place_Name From Tourist where Cost > 20000 )

Update Tourist set Cost = Cost+ 1000 Where Tourist.Place_Name in (Select Place_Name from Tourist Where Cost > 20000) 

Delete From Tour_Members Where MemberId in (Select MemberId from Tour_Members where Member_Name ='David Clark')
Delete From Tourist Where TrourID in (Select TrourID from Tourist where Place_Name = 'Colosseum')