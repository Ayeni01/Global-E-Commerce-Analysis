CREATE DATABASE ecommerce_2023;

USE ecommerce_2023;

DROP TABLE customers;
CREATE TABLE customers (
transaction_date DATE, 
customer_id VARCHAR(50),
region VARCHAR(50),
product_id VARCHAR(50),
category VARCHAR(50),
price DECIMAL(10,2),
quantity INT,
discount DECIMAL(10,2),
total_revenue DECIMAL(10,2),
payment_method VARCHAR(50)
);


SELECT count(*) FROM customers;

-- Basic Sql Query
-- 1. Total Sales
SELECT SUM(total_revenue) AS Total_Revenue
FROM customers;

-- 2. Daily Sales Trend
SELECT transaction_date, SUM(total_revenue) AS daily_sales
FROM customers
GROUP BY transaction_date
ORDER BY transaction_date;

-- 3. Top 5-Selling Products Category
SELECT category, COUNT(customer_id) AS total_orders
FROM customers
GROUP BY category
ORDER BY total_orders DESC
LIMIT 5;

-- 4. Sales by Region (Country)
SELECT region, SUM(total_revenue) AS total_sales
FROM customers
GROUP BY region
ORDER BY total_sales DESC;

-- 5. Orders by Status
SELECT payment_method, COUNT(*) AS method_of_payment
FROM customers
GROUP BY payment_method;

-- 6. Average Revenue
SELECT round(AVG(total_revenue), 2) AS average_revenue
FROM customers;

-- 7. Total Unique Customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM customers;

-- 8. Revenue by Product Category
SELECT category, SUM(total_revenue) AS category_revenue
FROM customers
GROUP BY category
ORDER BY category_revenue DESC;

-- DAY 33: Analyze Customer & Product Patterns
-- Objective: Extract deeper insights from customer and product sales pattern using MySQL

-- 1. Top 10 Customers by Total Revenue
SELECT customer_id, SUM(total_revenue) as Customer_Revenue, COUNT(*) AS Total_transactions
FROM customers
GROUP BY customer_id
ORDER BY Customer_Revenue DESC
LIMIT 10;

-- 2. Repeat vs One-Time Customers
select count(*) as Total_customers,
	sum(case when order_count = 1 then 1 else 0 end) as one_time_buyers,
    sum(case when order_count > 1 then 1 else 0 end) as repeat_customers
from(
	select customer_id, count(*) as order_count
    from customers Group by customer_id)
    as customer_orders;
    
-- 3. Top 5 Best-Selling Products by Quality
select product_id, category, sum(quantity) as Total_units_sold
from customers
group by product_id, category
order by total_units_sold desc
limit 5;

-- 4. Average Discount by Category
select category, round(avg(discount), 2) as Avg_discount
from customers
group by category
order by Avg_discount desc;

-- 5. Revenue Distribution Across Categories
Select category, sum(total_revenue) as Category_revenue,
	round(sum(total_revenue) * 100 / 
   (select sum(total_revenue) from customers), 2) as Percet_contribution
   from customers
   group by category
   order by Category_revenue desc