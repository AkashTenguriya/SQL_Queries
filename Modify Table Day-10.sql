--**Day-10 |Operators|* & *|modify Table|*

Use TopicwisePractice

Create table cakes (
ID int,
Cake_Name Varchar (50),
Cost int,
Bakery_Name Varchar (50)
)

 INSERT INTO cakes (id, Cake_Name, Cost, Bakery_Name)
VALUES 
(1, 'Luxury Chocolate Cake', 550.00, 'Gourmet Bakery'),
(2, 'Premium Vanilla Cake', 520.00, 'Elite Sweets'),
(3, 'Gold Leaf Red Velvet Cake', 600.00, 'The Royal Bakehouse'),
(4, 'Signature Carrot Cake', 510.00, 'Golden Crust Bakery'),
(5, 'Deluxe Cheesecake', 530.00, 'Sweet Treats Shop'),
(6, 'Exquisite Black Forest Cake', 650.00, 'Elegant Desserts'),
(7, 'Strawberry Supreme Cake', 540.00, 'Delicious Delights'),
(8, 'Mocha Fusion Cake', 580.00, 'The Cake Palace'),
(9, 'Lavish Lemon Cake', 590.00, 'Luxury Bakes'),
(10, 'Ultimate Tiramisu Cake', 570.00, 'Heavenly Cakes'),
(11, 'Banoffee Pie Cake', 510.00, 'The Sweet Corner'),
(12, 'Premium Mango Cake', 530.00, 'Fruity Delights'),
(13, 'Royal Pistachio Cake', 560.00, 'Nutty Bakehouse'),
(14, 'Rich Chocolate Fudge Cake', 600.00, 'Choco Bliss Bakery'),
(15, 'Coconut Dream Cake', 550.00, 'Tropical Cakes'),
(16, 'Berry Fusion Cake', 540.00, 'Berry’s Bakery'),
(17, 'Hazelnut Delight Cake', 610.00, 'Nutty Delight Bakery'),
(18, 'Lavender Infused Cake', 580.00, 'Floral Cakes'),
(19, 'Peach Melba Cake', 590.00, 'Peachy Bakery'),
(20, 'Famous Wedding Cake', 700.00, 'Ever After Bakeshop')

Select * from cakes order by id desc

Select * from cakes where Cake_Name  not like 'R%'

Select * from cakes where ID between 1 and 5

Select * from cakes where ID not between 1 and 5

select * from cakes where Bakery_Name not in ('Delicious Delight','Luxury Bake')
select * from cakes where Bakery_Name  in ('Delicious Delight','Luxury Bake')

Select * from cakes where not ID  >= 3 

Select * from cakes where  ID  > 3

Alter table cakes Add Email Nvarchar (50)

 INSERT INTO cakes (id, Cake_Name, Cost, Bakery_Name,Email)
VALUES (21, 'Vanila hot Cake', 260.00, 'Akash Bakery','Akash@gamilcom')

Alter table cakes drop column Email
