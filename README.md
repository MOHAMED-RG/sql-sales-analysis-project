# Superstore Sales Analysis — SQL & PostgreSQL

An end-to-end SQL analysis of retail sales data using PostgreSQL to uncover
business insights related to sales performance, profitability, products,
customers, and shipping.

## 📊 Project Overview

This project analyzes retail sales data using SQL and PostgreSQL to identify
patterns and business insights across products, categories, cities, and
shipping methods.

The dataset contains **9,801 sales records** and **18 columns** covering
customers, products, categories, regions, sales, and shipping information.

## 📁 Dataset

**Superstore Sales Dataset**

The dataset contains retail transaction information including:

- Order and customer information
- Product and category information
- Sales and profitability data
- Shipping methods and dates
- Geographic information

## 🛠️ Tools Used

- PostgreSQL
- pgAdmin 4
- SQL

## 💡 SQL Skills Demonstrated

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- Aggregate Functions
- `HAVING`
- Common Table Expressions (CTEs)
- Data Cleaning & Validation
- Business-Oriented Data Analysis

## 🎯 Business Questions

The analysis focuses on answering questions such as:

- Which product categories generate the highest sales?
- Which cities generate the highest profit?
- Which products have the highest sales volume?
- Which shipping modes have the longest average delivery time?
- Which sub-categories generate negative profit?
- Which products and categories contribute most to overall sales?

## 📈 Key Insights

- **Technology** generated the highest total sales among the three product
  categories, with approximately **$836K** in sales.
- **New York City** generated the highest total profit, with approximately
  **$62K** in profit.
- **Standard Class** had the longest average shipping time at approximately
  **5 days**.
- **Staples** was the top-selling product by quantity, with **215 units**.
- **Tables and Bookcases** generated negative total profit, highlighting
  sub-categories that require further profitability analysis.
- Overall sales were approximately **$2.26M** across the dataset.

## 🔎 Analysis Results

### 1. Top-Selling Products

The analysis identifies the products with the highest total quantity sold.

![Top Products](screenshots/top_products.png)

---

### 2. Most Profitable Cities

The analysis ranks cities based on their total profit contribution.

![Top Profitable Cities](screenshots/top_profitable_cities.png)

---

### 3. Sales by Category

Technology generated the highest total sales, followed by Furniture and
Office Supplies.

![Sales by Category](screenshots/sales_by_category.png)

---

### 4. Shipping Analysis

Average shipping time was calculated for each shipping mode.

![Shipping Analysis](screenshots/shipping_analysis.png)

---

### 5. Negative Profit Sub-Categories

This analysis identifies sub-categories where total profit was negative.

![Negative Profit Sub-Categories](screenshots/negative_profit_subcategories.png)

## 📂 Project Structure

```text
Superstore-Sales-Analysis/
│
├── README.md
│
├── superstore_analysis.sql
│
└── screenshots/
    ├── top_products.png
    ├── top_profitable_cities.png
    ├── sales_by_category.png
    ├── shipping_analysis.png
    └── negative_profit_subcategories.png
