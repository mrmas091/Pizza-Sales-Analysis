


select * from pizza_sales
ORDER BY pizza_id

--#1 Total_revenue: Sum of the prize of total Pizza orders.
SELECT SUM(total_price) Total_revenue
FROM pizza_sales

--#2 Average_Order_Value: The average ampunt spend per order
SELECT SUM(total_price)/COUNT(DISTINCT(order_id)) AS average_order_value
FROM pizza_sales

--#3 Total Pizza Orders: The sum of quantity of all pizzas sold
SELECT SUM(quantity) AS Total_Pizza_orders
FROM Pizza_sales 

--#4 Total Orders: Total nunber of orders Placed
SELECT COUNT(DISTINCT(order_id)) AS  Total_orders
FROM Pizza_sales

--#5 Average Pizzas per order: The average number of pizzas sold per order
SELECT SUM(quantity) / COUNT(DISTINCT(order_id)) AS aerage_pizzas_per_order
FROM Pizza_sales

/* CHART REQUIEMENT*/

--#1 Daily trend for total orders

SELECT FORMAT(order_date,'dddd') AS day,COUNT(DISTINCT(order_id)) AS orders
from Pizza_sales
GROUP BY FORMAT(order_date,'dddd')
ORDER BY  SUM(total_price) desc

--#2 Monthly trend of total orders

SELECT DATENAME(MONTH,order_date) AS month,COUNT(DISTINCT(order_id)) AS orders
from Pizza_sales
GROUP BY DATENAME(MONTH,order_date)
ORDER BY  SUM(total_price) desc

--#3 Percentage of sales by pizza category

SELECT pizza_category, 
CAST(SUM(total_price)*100.0/(SELECT SUM(total_price) FROM Pizza_sales) AS DECIMAL(10,2)) AS Percentage
FROM Pizza_sales
GROUP BY pizza_category

--#4 Percentage of sales by pizza size
SELECT pizza_size, 
CAST(SUM(total_price)*100.0/(SELECT SUM(total_price) FROM Pizza_sales) AS DECIMAL(10,2)) AS Percentage
FROM Pizza_sales
GROUP BY pizza_size
order by pizza_size asc


--#5 Total pizzas sold by pizza category

SELECT pizza_category,SUM(quantity) Pizzas_sold
FROM Pizza_sales
GROUP BY pizza_category

--#6 Top 5 best sellers by Revenue

SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
FROM Pizza_sales
GROUP BY pizza_name

--#7 Bottom 5 Best selling pizzas by revenue:

SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
FROM Pizza_sales
GROUP BY pizza_name
ORDER BY SUM(total_price) ASC