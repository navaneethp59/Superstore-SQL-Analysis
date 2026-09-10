```sql
-- ============================================================
-- SUPERSTORE SALES ANALYSIS
-- SQL Analysis using PostgreSQL
-- ============================================================


-- ============================================================
-- 1. DATA OVERVIEW
-- ============================================================

-- View sample records
SELECT *
FROM superstore
LIMIT 10;


-- Count total records
SELECT COUNT(*) AS total_records
FROM superstore;


-- View table columns and data types
-- Check this in PostgreSQL/pgAdmin if required.


-- ============================================================
-- 2. CHECK FOR DUPLICATE ORDERS
-- ============================================================

SELECT
    order_id,
    COUNT(*) AS record_count
FROM superstore
GROUP BY order_id
HAVING COUNT(*) > 1;


-- Check duplicate rows based on all important fields
SELECT
    row_id,
    COUNT(*) AS record_count
FROM superstore
GROUP BY row_id
HAVING COUNT(*) > 1;


-- ============================================================
-- 3. OVERALL BUSINESS PERFORMANCE
-- ============================================================

SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM superstore;


-- ============================================================
-- 4. PROFIT MARGIN
-- ============================================================

SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin_percentage
FROM superstore;


-- ============================================================
-- 5. AVERAGE ORDER VALUE
-- ============================================================

SELECT
    ROUND(
        SUM(sales) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM superstore;


-- ============================================================
-- 6. SALES BY REGION
-- ============================================================

SELECT
    region,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;


-- ============================================================
-- 7. PROFIT BY REGION
-- ============================================================

SELECT
    region,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;


-- ============================================================
-- 8. REGIONAL KPI ANALYSIS
-- ============================================================

SELECT
    region,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;


-- ============================================================
-- 9. SALES BY STATE
-- ============================================================

SELECT
    state,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC;


-- ============================================================
-- 10. PROFIT BY STATE
-- ============================================================

SELECT
    state,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_profit DESC;


-- ============================================================
-- 11. TOP 10 STATES BY SALES
-- ============================================================

SELECT
    state,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;


-- ============================================================
-- 12. TOP 10 STATES BY PROFIT
-- ============================================================

SELECT
    state,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10;


-- ============================================================
-- 13. SALES BY CATEGORY
-- ============================================================

SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;


-- ============================================================
-- 14. PROFIT BY CATEGORY
-- ============================================================

SELECT
    category,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;


-- ============================================================
-- 15. CATEGORY PERFORMANCE
-- ============================================================

SELECT
    category,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;


-- ============================================================
-- 16. SALES BY SUB-CATEGORY
-- ============================================================

SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY sub_category
ORDER BY total_sales DESC;


-- ============================================================
-- 17. PROFIT BY SUB-CATEGORY
-- ============================================================

SELECT
    sub_category,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit DESC;


-- ============================================================
-- 18. SUB-CATEGORY PERFORMANCE
-- ============================================================

SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin
FROM superstore
GROUP BY sub_category
ORDER BY total_sales DESC;


-- ============================================================
-- 19. TOP 10 PRODUCTS BY SALES
-- ============================================================

SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;


-- ============================================================
-- 20. TOP 10 PRODUCTS BY PROFIT
-- ============================================================

SELECT
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


-- ============================================================
-- 21. LOWEST 10 PRODUCTS BY PROFIT
-- ============================================================

SELECT
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;


-- ============================================================
-- 22. PRODUCT SALES AND PROFIT
-- ============================================================

SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC;


-- ============================================================
-- 23. CUSTOMER SEGMENT SALES
-- ============================================================

SELECT
    segment,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;


-- ============================================================
-- 24. CUSTOMER SEGMENT PROFIT
-- ============================================================

SELECT
    segment,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY segment
ORDER BY total_profit DESC;


-- ============================================================
-- 25. CUSTOMER SEGMENT PERFORMANCE
-- ============================================================

SELECT
    segment,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;


-- ============================================================
-- 26. SALES BY SHIPPING MODE
-- ============================================================

SELECT
    ship_mode,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY ship_mode
ORDER BY total_sales DESC;


-- ============================================================
-- 27. ORDERS BY SHIPPING MODE
-- ============================================================

SELECT
    ship_mode,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY ship_mode
ORDER BY total_orders DESC;


-- ============================================================
-- 28. SHIPPING MODE PERFORMANCE
-- ============================================================

SELECT
    ship_mode,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY ship_mode
ORDER BY total_sales DESC;


-- ============================================================
-- 29. YEARLY SALES
-- ============================================================

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY year;


-- ============================================================
-- 30. YEARLY PROFIT
-- ============================================================

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY year;


-- ============================================================
-- 31. YEARLY PERFORMANCE
-- ============================================================

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin
FROM superstore
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY year;


-- ============================================================
-- 32. MONTHLY SALES TREND
-- ============================================================

SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;


-- ============================================================
-- 33. MONTHLY PROFIT TREND
-- ============================================================

SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;


-- ============================================================
-- 34. DISCOUNT AND PROFIT ANALYSIS
-- ============================================================

SELECT
    ROUND(discount * 100, 0) AS discount_percentage,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY discount
ORDER BY discount;


-- ============================================================
-- 35. LOSS-MAKING PRODUCTS
-- ============================================================

SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;


-- ============================================================
-- 36. LOSS-MAKING SUB-CATEGORIES
-- ============================================================

SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY sub_category
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;


-- ============================================================
-- 37. TOP CUSTOMERS BY SALES
-- ============================================================

SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- ============================================================
-- 38. TOP CUSTOMERS BY PROFIT
-- ============================================================

SELECT
    customer_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;


-- ============================================================
-- 39. SALES BY CITY
-- ============================================================

SELECT
    city,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;


-- ============================================================
-- 40. PROFIT BY CITY
-- ============================================================

SELECT
    city,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY city
ORDER BY total_profit DESC
LIMIT 10;


-- ============================================================
-- END OF SUPERSTORE SALES ANALYSIS
-- ============================================================
```
