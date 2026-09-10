# Superstore SQL Analysis

## 📊 Project Overview

This project analyzes an e-commerce Superstore dataset using **PostgreSQL and SQL**.

The objective is to explore sales, profit, customers, products, regions, categories, discounts, and shipping performance and generate meaningful business insights from the data.

---

## 🛠️ Tools & Technologies

* PostgreSQL
* pgAdmin 4
* SQL
* Superstore Dataset

---

## 📁 Dataset

The dataset contains **21,520 records** and includes information about:

* Orders
* Customers
* Products
* Categories
* Sales
* Quantity
* Discount
* Profit
* Regions
* Shipping

### Date Range

* Order Date: January 2014 – December 2017
* Ship Date: January 2014 – January 2018

---

## 🧹 Data Quality Checks

Before performing the analysis, the dataset was checked for data-quality issues.

The following checks were performed:

* NULL value check
* Duplicate record check
* Minimum and maximum value checks
* Date-range validation
* Sales validation
* Quantity validation
* Discount validation
* Profit validation

### Data Quality Results

* NULL values: **0**
* Duplicate records: **0**
* Sales range: **$0.44 – $22,638.48**
* Quantity range: **1 – 14**
* Discount range: **0% – 80%**
* Profit range: **-$6,599.98 – $8,399.98**

---

## 📈 Key Performance Indicators

The following business KPIs were calculated using SQL:

| KPI           |         Value |
| ------------- | ------------: |
| Total Sales   | $2,297,201.07 |
| Total Profit  |   $286,397.79 |
| Total Orders  |         5,009 |
| Profit Margin |        12.47% |

---

## 🔍 Analysis Performed

### Regional Analysis

Analyzed:

* Orders by region
* Sales by region
* Profit by region
* Profit margin by region

### Product Analysis

Analyzed:

* Top products by sales
* Top products by profit
* Low-profit products
* Product profitability

### Category Analysis

Analyzed:

* Sales by category
* Profit by category
* Category profitability

### Customer Analysis

Analyzed:

* Customer sales
* Customer profitability
* Customer order activity

### Shipping Analysis

Analyzed:

* Orders by shipping mode
* Sales by shipping mode
* Profit by shipping mode

### Discount Analysis

Analyzed the relationship between discounts and profitability to identify areas where high discounts may affect profit.

---

## 💡 Business Insights

The SQL analysis helps answer important business questions such as:

* Which regions generate the highest sales?
* Which regions generate the highest profit?
* Which products contribute the most revenue?
* Which products have low or negative profitability?
* Which categories perform best?
* How does discounting affect profit?
* Which shipping modes are used most frequently?
* Which customers contribute significantly to sales?

For example, the **Canon imageCLASS 2200 Advanced Copier** was identified as one of the highest-performing products, generating approximately **$61,599.83 in sales** and **$25,199.94 in profit**.

---

## 💼 Business Impact

This analysis can help a business:

* Identify high-performing products and regions
* Improve pricing and discount strategies
* Focus on profitable products
* Identify areas of low profitability
* Understand customer purchasing behavior
* Improve shipping and operational decisions
* Support data-driven business decisions

---

## 📂 Project Structure

```text
Superstore-SQL-Analysis/
│
├── README.md
└── superstore_analysis.sql
```

---

## 🎯 Project Objective

The main objective of this project was to develop practical **SQL and data-analysis skills** by working with a real-world-style e-commerce dataset.

The project demonstrates my ability to:

* Work with PostgreSQL
* Write SQL queries
* Perform data-quality checks
* Calculate business KPIs
* Analyze sales and profitability
* Extract business insights
* Translate data into meaningful business information

---

## 👨‍💻 Skills Demonstrated

**SQL | PostgreSQL | Data Cleaning | Data Analysis | KPI Analysis | Business Insights | Data Quality Validation**

---

## 🚀 Future Improvements

Planned improvements include:

* Creating visual dashboards using **Power BI**
* Adding SQL analysis screenshots
* Adding more advanced SQL queries
* Creating additional business recommendations
* Connecting the project to my Data Analyst portfolio website
