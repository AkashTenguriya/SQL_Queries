USE [master]
GO
/****** Object:  Database [Final_Exam_Pratice]    Script Date: 01-04-2025 16:52:46 ******/
CREATE DATABASE [Final_Exam_Pratice]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Final_Exam_Pratice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Final_Exam_Pratice.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Final_Exam_Pratice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Final_Exam_Pratice_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Final_Exam_Pratice] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Final_Exam_Pratice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Final_Exam_Pratice] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET ARITHABORT OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Final_Exam_Pratice] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Final_Exam_Pratice] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Final_Exam_Pratice] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Final_Exam_Pratice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Final_Exam_Pratice] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Final_Exam_Pratice] SET  MULTI_USER 
GO
ALTER DATABASE [Final_Exam_Pratice] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Final_Exam_Pratice] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Final_Exam_Pratice] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Final_Exam_Pratice] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Final_Exam_Pratice] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Final_Exam_Pratice] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Final_Exam_Pratice] SET QUERY_STORE = ON
GO
ALTER DATABASE [Final_Exam_Pratice] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Final_Exam_Pratice]
GO
/****** Object:  UserDefinedFunction [dbo].[Choco_Address_join]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Choco_Address_join] (@My_Country Nvarchar(50))
Returns @MyTable Table
(Id Int, ChocoType Varchar (50),Choco_Cost Nvarchar (50),Country Nvarchar (50))
as
Begin
Insert into @MyTable

Select CH.ChocoID,Ch.ChocoType,Ch.Chocolate_Cost,org.Country_Of_Origin
from Chocolates CH 
inner join Country_Of_Origin Org on CH.ChocoID = Org.ChocoID where Country_Of_Origin = @My_Country
Order by Ch.ChocoID Desc
Return
End
GO
/****** Object:  UserDefinedFunction [dbo].[DisOnFood]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[DisOnFood] (@Dic int)
Returns int 
As 
Begin
Return (@Dic)
End
GO
/****** Object:  UserDefinedFunction [dbo].[emp_commision]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[emp_commision](@mycom as decimal(5,2))
returns decimal(5,2)
as
begin
return (@mycom)
end
GO
/****** Object:  UserDefinedFunction [dbo].[Emp_Commission]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Emp_Commission](@mycom int)
returns Int
As begin
return (@mycom)
end
GO
/****** Object:  UserDefinedFunction [dbo].[Emp_Prof_List]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Emp_Prof_List]()
Returns Nvarchar (50)
as
Begin
Return 'Emp & Profesor List'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Fav_Food]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Fav_Food]()
Returns Nvarchar (50)
as
begin
Return 'My Fav Vegitables'
End 
GO
/****** Object:  UserDefinedFunction [dbo].[Food_Category]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Food_Category] ()
Returns Nvarchar (50)
As 
Begin
Return 'Expensive Food'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Food_Category1]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Function [dbo].[Food_Category1] ()
Returns Nvarchar (50)
As 
Begin
Return 'Affordable Food'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Food_Status]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Food_Status] ()
Returns Nvarchar (50)
As 
Begin
Return 'Expensive Food'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Food_Status1]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Food_Status1] ()
Returns Nvarchar (50)
As 
Begin
Return 'Affordable Food'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Get_Address_join]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Get_Address_join] (@MyCountry Nvarchar (50))
Returns @MyTable Table
(Id int,ChocoType Varchar(50),Choco_Cost Nvarchar (50),Country Nvarchar(50))
as
Begin
Insert into @MyTable

Select Chocolates.ChocoID,Chocolates.ChocoType,Chocolates.Chocolate_Cost,Country_Of_Origin from Chocolates
Inner join Country_Of_Origin on Chocolates.ChocoID = Country_Of_Origin.ChocoID Where Country_Of_Origin = @MyCountry
Order by Chocolates.ChocoID desc
Return
End
GO
/****** Object:  UserDefinedFunction [dbo].[Get_Cutosmers_Address]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function	[dbo].[Get_Cutosmers_Address](@myAddress NVarchar (50))
Returns @MyTable Table (CustId int, Cust_Name Varchar (50),Cust_Addres NVarchar(50))
as
Begin 
INsert into @MyTable
Select Customers.CustomerID,Customers.[Name],Customers.[Address] From Customers where [Address] = @myAddress
Return
End
GO
/****** Object:  UserDefinedFunction [dbo].[GST_Amount]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[GST_Amount](@GSTDeAmt decimal(10,2)) 
Returns decimal(10,2)
as
Begin
Return (@GSTDeAmt)
End
GO
/****** Object:  UserDefinedFunction [dbo].[GST_Per]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GST_Per] (@MyGst  int)
Returns  Int
as
Begin
Return ('@MyGst')
End
GO
/****** Object:  UserDefinedFunction [dbo].[GST2]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[GST2] (@myGST int)
Returns int
as
Begin
Return (@myGST)
End
GO
/****** Object:  UserDefinedFunction [dbo].[GstCal]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[GstCal](@CGST as Decimal (10,2),@SGST as Decimal (10,2))
Returns Decimal(10,2) 
as 
begin
return (@CGST +@SGST)
End
GO
/****** Object:  UserDefinedFunction [dbo].[Item_GSt_Amt]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Item_GSt_Amt] (@ItemCost as Decimal(10,2),@perc Decimal (5,2))
Returns Decimal(10,2)
As
Begin
Return (@ItemCost * @perc /100)
End
GO
/****** Object:  UserDefinedFunction [dbo].[Item_Status]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Item_Status]()
Returns Nvarchar (50)
as
Begin
Return 'Expensive Product'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Item_Status1]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Item_Status1]()
Returns Nvarchar (50)
as
Begin
Return 'Affordable Product'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Multi_para]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create function [dbo].[Multi_para] (@A as int, @B as int)
Returns int
as
Begin
Return (@A + @B)
End
GO
/****** Object:  UserDefinedFunction [dbo].[MY_GST]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[MY_GST](@myNum int)
Returns int
As
Begin
Return (@myNum)
End
GO
/****** Object:  UserDefinedFunction [dbo].[MyCube]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create function [dbo].[MyCube] (@MyNum as int)
Returns int
as 
begin
return (@MyNum*@MyNum*@MyNum)
End
GO
/****** Object:  UserDefinedFunction [dbo].[MyDisc]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[MyDisc](@myDisc Decimal (10,2))
Returns Decimal(10,2) 
as 
begin
return (@myDisc)
End
GO
/****** Object:  UserDefinedFunction [dbo].[MySquare]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[MySquare] (@myNum as int)
Returns int
as 
begin
Return (@myNum * @myNum)
End
GO
/****** Object:  UserDefinedFunction [dbo].[pay_catogery]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[pay_catogery](@mycatogery as nvarchar(50))
returns nvarchar(50)
as
begin
return @mycatogery
end
GO
/****** Object:  UserDefinedFunction [dbo].[Product_Status]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Product_Status]()
Returns Nvarchar(50)
As
begin
Return 'Expensive Product'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Product_Status_1]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Product_Status_1]()
Returns Nvarchar(50)
As
begin
Return 'Moderate Product'
End
GO
/****** Object:  UserDefinedFunction [dbo].[Product_Status_2]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Product_Status_2]()
Returns Nvarchar(50)
As
begin
Return 'Cost not available'
End
GO
/****** Object:  UserDefinedFunction [dbo].[SQL_Learning]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[SQL_Learning]()
Returns Nvarchar (50)
As
Begin
Return 'Basic SQL Learning'
End
GO
/****** Object:  UserDefinedFunction [dbo].[WelcomeMessage]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create function [dbo].[WelcomeMessage]()
Returns Nvarchar (50)
as
Begin 
Return 'Welcome to The Programing world'
End
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Item_name] [nvarchar](50) NULL,
	[Item_Cost] [decimal](8, 2) NULL,
	[CustomerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Product_Affodablitiy]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Product_Affodablitiy] ()
Returns Table
As 
Return (Select CS.CustomerID,CS.[Name],CS.Email,CS.[Address],IT.Item_name,it.Item_Cost,

(Case
When It.Item_Cost > 3000 Then 'Expensive Product'
Else 'Affordable Product'
End ) As Product_Category

from Customers as CS 
full join Items as IT on CS.CustomerID = it.CustomerID)
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemsTable]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[GetItemsTable] ()
Returns Table
As 
Return(Select * from Items)
GO
/****** Object:  Table [dbo].[Fav_Food1]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fav_Food1](
	[Food_Id] [int] IDENTITY(1,1) NOT NULL,
	[Food_Name] [varchar](50) NULL,
	[Resturant_Name] [varchar](50) NULL,
	[Cost] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Food_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Food_Cost_Above_1800]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Food_Cost_Above_1800] ()
Returns Table
as
Return(Select * from Fav_Food1	 Where Cost >= 1800)
GO
/****** Object:  UserDefinedFunction [dbo].[GetCostTable]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[GetCostTable] (@MyCost int)
Returns Table
REturn (Select * from Items where Items.Item_Cost >= @MyCost)
GO
/****** Object:  Table [dbo].[Fav_Mobile]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fav_Mobile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand_Name] [varchar](50) NULL,
	[Operating_Sys_Name] [nvarchar](50) NULL,
	[Cost] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_Mobile_Cost]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Get_Mobile_Cost] (@MObCost Decimal (10,2))
Returns Table 
As
Return (Select * from Fav_Mobile where Fav_Mobile.Cost >= @MObCost )
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProducID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [varchar](50) NULL,
	[Product_Cost] [decimal](10, 2) NULL,
	[Mode_Of_Delivery] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProducID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_product_Csot]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Get_product_Csot] (@Product_Cost Decimal (10,2))
Returns Table 
As 
Return (Select * from Product where Product_Cost >= @Product_Cost)
GO
/****** Object:  UserDefinedFunction [dbo].[Get_product_Buyer_Cost]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Get_product_Buyer_Cost] (@item_Cost Decimal (10,2))
Returns Table
as
Return (Select * from Items Where Item_Cost >=@item_Cost )
GO
/****** Object:  UserDefinedFunction [dbo].[Get_Product_And_Buyers_With_Cost]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Get_Product_And_Buyers_With_Cost] (@item_Cost Decimal (10,2))
Returns Table
as
Return (Select * from Items Where Item_Cost >=@item_Cost )
GO
/****** Object:  UserDefinedFunction [dbo].[Get_Customers_Address]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Get_Customers_Address] (@MyAddress NVARCHAR(50))
RETURNS TABLE
AS
RETURN
(
    SELECT Customers.CustomerID, Customers.[Name], Customers.[Address]
    FROM Customers
    WHERE Customers.[Address] = @MyAddress
)
GO
/****** Object:  Table [dbo].[Students]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Student_id] [int] NULL,
	[Student_full_name] [varchar](50) NULL,
	[Student_Address] [varchar](max) NULL,
	[Student_Contact] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Student_Details1]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Student_Details1]
As
Select * from Students where Student_id Between 1 and 5
GO
/****** Object:  View [dbo].[Latest_Students]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Latest_Students]
as
Select Top 5 * from Students
GO
/****** Object:  Table [dbo].[Customers_List]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_List](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [varchar](50) NULL,
	[Customer_EMail] [nvarchar](50) NULL,
	[ProductID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Customer_Product_Details]    Script Date: 01-04-2025 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Customer_Product_Details]
as
Select PR.ProducID,CS.Customer_Name,PR.Product_Name,CS.Customer_EMail,pr.Mode_Of_Delivery,PR.Product_Cost
from Product as PR FUll join Customers_List as CS
on pr.ProducID = CS.ProductID
GO
