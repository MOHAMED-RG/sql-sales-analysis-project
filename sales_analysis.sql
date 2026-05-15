# Retail Sales Analysis Using PostgreSQL

```sql
-- =========================================
-- Retail Sales Analysis Project
-- PostgreSQL SQL Project
-- =========================================


-- =========================================
-- Data Exploration
-- =========================================

-- Display the first 5 rows from the dataset
SELECT *
FROM sales_data
LIMIT 5;


-- Count total number of rows in the dataset
SELECT COUNT(*)
FROM sales_data;


-- Check for missing values in the customer_name column
SELECT *
FROM sales_data
WHERE customer_name IS NULL;


-- Compare total rows with non-null values in selected columns
SELECT
    COUNT(*) AS total_rows,
    COUNT(customer_name) AS customer_name_count,
    COUNT(city) AS city_count,
    COUNT(sales) AS sales_count
FROM sales_data;


-- =========================================
-- Sales Analysis
-- =========================================

-- Calculate the total sales from all orders
SELECT SUM(sales) AS total_sales
FROM sales_data;


-- Calculate total sales for each product category
SELECT category,
       SUM(sales) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC
LIMIT 10;


-- Find the top 10 states by total sales
SELECT state,
       ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;


-- Calculate total sales for each region
SELECT region,
       ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;


-- Analyze total sales by year
SELECT EXTRACT(YEAR FROM order_date) AS year,
       ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY year
ORDER BY year;


-- =========================================
-- Product Analysis
-- =========================================

-- Find the top 10 products by total quantity sold
SELECT product_name,
       SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 10;


-- Identify sub-categories with negative total profit
SELECT sub_category,
       ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY sub_category
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;


-- =========================================
-- Customer Analysis
-- =========================================

-- Find the top 10 customers by total sales
SELECT customer_name,
       ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- Find the top 10 customers by total profit
SELECT customer_name,
       ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;


-- Count the number of unique customers in each customer segment
SELECT segment,
       COUNT(DISTINCT customer_id) AS number_customer
FROM sales_data
GROUP BY segment
ORDER BY number_customer DESC;


-- =========================================
-- Profit Analysis
-- =========================================

-- Find the top 10 most profitable cities
SELECT city,
       SUM(profit) AS total_profit
FROM sales_data
GROUP BY city
HAVING SUM(profit) > 0
ORDER BY total_profit DESC
LIMIT 10;


-- =========================================
-- Shipping Analysis
-- =========================================

-- Calculate the average shipping time for each ship mode
SELECT ship_mode,
       ROUND(AVG(ship_date - order_date), 2) AS avg_numbers_of_days
FROM sales_data
GROUP BY ship_mode
ORDER BY avg_numbers_of_days;


-- Count the number of orders for each shipping mode
SELECT ship_mode,
       COUNT(order_id) AS numbers_of_order
FROM sales_data
GROUP BY ship_mode
ORDER BY numbers_of_order DESC;


-- =========================================
-- Discount Analysis
-- =========================================

-- Analyze the number of discounts applied by sub-category using a CTE
WITH discount_sales AS (

    SELECT sub_category,
           discount,
           COUNT(*) AS number_discount
    FROM sales_data
    GROUP BY sub_category, discount

)

SELECT *
FROM discount_sales
ORDER BY number_discount DESC;
```
