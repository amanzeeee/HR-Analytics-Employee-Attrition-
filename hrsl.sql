-- Created by Aman-- 
create database amansinghhhhh;

use amansinghhhhh;

select * from hr_analytics_employee_attrition_dataset;


---- -- - -- -Query 1 — Total Employees
SELECT COUNT(*) AS Total_Employees
FROM hr_analytics_employee_attrition_dataset;
---- -- - -- -Query 2 — Active Employees
SELECT COUNT(*) AS Active_Employees
FROM hr_analytics_employee_attrition_dataset
WHERE Attrition = 'No';
---- -- - -- -Query 3 — Employees Left
SELECT COUNT(*) AS Employees_Left
FROM hr_analytics_employee_attrition_dataset
WHERE Attrition = 'Yes';
---- -- - -- -Query 4 — Attrition Rate
SELECT
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*)
,2) AS Attrition_Rate
FROM hr_analytics_employee_attrition_dataset;


-- ---- -- - -- -Query 5 — Average Monthly Income
SELECT
ROUND(AVG(MonthlyIncome),2) AS Avg_Monthly_Income
FROM hr_analytics_employee_attrition_dataset;
---- -- - -- -Query 6 — Average Job Satisfaction
SELECT
ROUND(AVG(JobSatisfaction),2) AS Avg_Job_Satisfaction
FROM hr_analytics_employee_attrition_dataset;
---- -- - -- -Query 7 — Average Work Life Balance
SELECT
ROUND(AVG(WorkLifeBalance),2) AS Avg_Work_Life_Balance
FROM hr_analytics_employee_attrition_dataset;
---- -- - -- -Query 8 — Average Years at Company
SELECT
ROUND(AVG(YearsAtCompany),2) AS Avg_Years_At_Company
FROM hr_analytics_employee_attrition_dataset;






- -- -Query 9 — Department-wise Attrition
SELECT
Department,
COUNT(*) AS Employees_Left
FROM hr_analytics_employee_attrition_dataset
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY Employees_Left DESC;



- -- -Query 10 — Gender-wise Attrition
SELECT
Gender,
COUNT(*) AS Employees_Left
FROM hr_analytics_employee_attrition_dataset
WHERE Attrition='Yes'
GROUP BY Gender;



- -- -Query 11 — Job Role-wise Attrition
SELECT
JobRole,
COUNT(*) AS Employees_Left
FROM hr_analytics_employee_attrition_dataset
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY Employees_Left DESC;



- -- -Query 12 — Overtime Impact
SELECT
OverTime,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics_employee_attrition_dataset
GROUP BY OverTime;





- -- -Query 13 — Education Field-wise Attrition
SELECT
EducationField,
COUNT(*) AS Employees_Left
FROM hr_analytics_employee_attrition_dataset
WHERE Attrition='Yes'
GROUP BY EducationField
ORDER BY Employees_Left DESC;


- -- -Query 14 — Marital Status-wise Attrition
SELECT
MaritalStatus,
COUNT(*) AS Employees_Left
FROM hr_analytics_employee_attrition_dataset
WHERE Attrition='Yes'
GROUP BY MaritalStatus
ORDER BY Employees_Left DESC;



- -- -Query 15 — Average Salary by Department
SELECT
Department,
ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM hr_analytics_employee_attrition_dataset
GROUP BY Department
ORDER BY Avg_Salary DESC;





- -- -Query 16 — Experience Analysis
SELECT
YearsAtCompany,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM hr_analytics_employee_attrition_dataset
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

