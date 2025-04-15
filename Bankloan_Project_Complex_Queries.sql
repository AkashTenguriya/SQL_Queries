use Bank_LoanDB

Select Count  (Id) as Total_Loan_Applicatons from Bank_Loan_Data
 
Select Count (Id) as MTD_Total_Loan_Applicatons from Bank_Loan_Data
Where MONTH(issue_date) =12 and YEAR(issue_date)= 2021
 
Select  SUM(loan_amount) as Total_Funded_Amount from Bank_Loan_Data
 
Select  SUM(loan_amount) as MTD_Total_Funded_Amount from Bank_Loan_Data
where MONTH(issue_date)= 12 and Year(issue_Date)=2021
 
5. Select  SUM(loan_amount) as PMTD_Total_Funded_Amount from Bank_Loan_Data
where MONTH(issue_date)= 11 and Year(issue_Date)=2021
 
6. Select Sum(total_payment) as Total_Amount_Received from Bank_Loan_Data
 
7. Select Sum(total_payment) as MTD_Total_Amount_Received from Bank_Loan_Data
Where MONTH(issue_date) = 12 and Year (issue_date)= 2021
 
8. Select Sum(total_payment) as PMTD_Total_Amount_Received from Bank_Loan_Data
Where MONTH(issue_date) = 11 and Year (issue_date)= 2021
 
9.Select Round(AVG(int_rate),4) *100 As Average_int_rate from Bank_Loan_Data
 
10.Select Round(AVG(int_rate),4) *100 As MTD_Average_int_rate from Bank_Loan_Data
Where MONTH(issue_date)=12 and year(issue_date)= 2021
 
11. Select Round(AVG(int_rate),4) *100 As PMTD_Average_int_rate from Bank_Loan_Data
Where MONTH(issue_date)=11 and year(issue_date)= 2021
 
12. Select Round(Avg(dti),4) *100 MTD_Avg_DTI from Bank_Loan_Data  Where month(issue_date)=12 and year(issue_date)=2021
 
13. Select Round(Avg(dti),4) *100 PMTD_Avg_DTI from Bank_Loan_Data
Where month(issue_date)=11 and year(issue_date)=2021
 
14. Select  (Count (Case when Loan_Status ='Fully Paid' or Loan_Status ='Current' Then Id End)*100) / Count(id) As good_Loan_Percentage 
from Bank_Loan_Data
 
15. Select Count(id) as Good_Loan_Applications from Bank_Loan_Data
where loan_status ='Current' or loan_status='fully Paid'
 
16. Select Sum(loan_amount) as Good_Loan_Funded_Amount from Bank_Loan_Data
where loan_status ='Current' or loan_status='fully Paid'
 
17. Select Sum(total_payment) as Good_Loan_Received_Amount from Bank_Loan_Data
where loan_status ='Current' or loan_status='fully Paid'
 

--Bad _Load_Applications
18. Select(Count (Case when Loan_Status ='Charged off'  Then Id End)*100.0)/
 Count(id) As Bad_Loan_Percentage
from Bank_Loan_Data
 
19. Select Count(id) as Bad_Loan_Applications from Bank_Loan_Data
where loan_status ='Charged off' 
 
20. Select SUm(loan_amount) as Bad_Funded_Amount from Bank_Loan_Data
where loan_status ='Charged off'
 
21. Select SUm(total_payment) as Bad_Amount_Received from Bank_Loan_Data
where loan_status ='Charged off'
 
22. Select loan_status,
        Count(id) as Total_Loan_Applications,
		Sum (total_payment) as Total_Amount_Received,
		Sum(loan_amount) as Total_Funded_Amount,
		Avg(int_rate *100) as Interest_Rate,
		AVG(dti*100) as DTI
	from 
	    Bank_Loan_Data
    Group by loan_status
 


23.Select loan_status,
     Sum(total_payment) as MTD_Total_Amount_Received,
	 Sum(loan_amount) as Total_Funded_Amount
	 from Bank_Loan_Data
	 where MONTH (issue_date)=12
	 Group by loan_status
 

24. --–Monthly trend by issue date
Select 
MONTH(issue_date)as Month_Number,
DATENAME(MONTH,issue_date) as Month_Name,
Count (id) as Total_Loan_Applicatons,
SUM(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from Bank_Loan_Data
Group by MONTH(issue_date),DATENAME(MONTH,issue_date) 
order by MONTH(issue_date) 
 

25.-- Regional Analysis by State
Select 
address_state,
Count (id) as Total_Loan_Applicatons,
SUM(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from Bank_Loan_Data
Group by address_state
order by SUM(loan_amount) desc
 26. -- Loan term Analyst
Select
Term,
Count (id) as Total_Loan_Applicatons,
SUM(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from Bank_Loan_Data
Group by Term
order by Term desc
 
27.-- Emp length  Analysis
Select emp_length,
Count (id) as Total_Loan_Applicatons,
SUM(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from Bank_Loan_Data
Group by emp_length
order by emp_length
 
 -- 28. Loan Purpose & BreakDown
Select
purpose,
Count (id) as Total_Loan_Applicatons,
SUM(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from Bank_Loan_Data
Group by purpose
order by Count (id) Desc

29. -- honme ownership Analysis
Select
home_ownership,
Count (id) as Total_Loan_Applicatons,
SUM(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from Bank_Loan_Data
Group by home_ownership
order by Count (id) Desc
 



27.-- Emp length  Analysis
Select
emp_length,
Count (id) as Total_Loan_Applicatons,
SUM(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from Bank_Loan_Data
Group by emp_length
order by emp_length





