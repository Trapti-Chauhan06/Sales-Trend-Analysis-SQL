# Create Database
create database sales_analysis;
# Use Database
use sales_analysis;
# Calculate Monthly Revenue
SELECT
YEAR(order_date) AS Year,
MONTH(order_date) AS Month,
SUM(total_amount) AS Total_Revenue
FROM employee.orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
# Calculate Monthly over Volume
SELECT
YEAR(order_date) AS Year,
MONTH(order_date) AS Month,
COUNT(DISTINCT order_id) AS Order_Volume
FROM employee.orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
# Revenue and Orders Together
SELECT
YEAR(order_date) AS Year,
MONTH(order_date) AS Month,
SUM(total_amount) AS Total_Revenue,
COUNT(DISTINCT order_id) AS Total_Orders
FROM employee.orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
# Top 3 Months By Sales
SELECT
YEAR(order_date) AS Year,
MONTH(order_date) AS Month,
SUM(total_amount) AS Total_Revenue
FROM employee.orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Total_Revenue DESC
LIMIT 3;
# Filter a Particular Year
SELECT
YEAR(order_date) AS Year,
MONTH(order_date) AS Month,
SUM(total_amount) AS Revenue
FROM employee.orders
WHERE YEAR(order_date)=2023
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Month;
select * from employee.orders;




