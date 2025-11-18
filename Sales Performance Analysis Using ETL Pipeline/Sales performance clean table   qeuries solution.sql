-- ============================================
-- Sales Dashboard Queries
-- Dataset: SalesPerformanceCleanTable
-- Columns: order_id, order_date, customer_name, product, category, quantity, unit_price, total_amount, region
-- ============================================

-- Question: What is the total sales per month?
SELECT 
    YEAR(order_date) AS SalesYear,
    MONTH(order_date) AS SalesMonth,
    SUM(total_amount) AS TotalSales
FROM SalesPerformanceCleanTable
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY SalesYear, SalesMonth;

GO

-- 2️⃣ Top Selling Products
-- Question: Which top 10 products generated the highest sales?
SELECT TOP 10
    product,
    SUM(total_amount) AS TotalSales
FROM SalesPerformanceCleanTable
GROUP BY product
ORDER BY TotalSales DESC;

GO

-- Question: How much sales were made in each region?
SELECT 
    region,
    SUM(total_amount) AS TotalSales
FROM SalesPerformanceCleanTable
GROUP BY region;

GO

-- Question: Which top 10 customers contributed the most revenue?
SELECT TOP 10
    customer_name,
    SUM(total_amount) AS TotalSpent
FROM SalesPerformanceCleanTable
GROUP BY customer_name
ORDER BY TotalSpent DESC;

GO


-- Question: What is the total quantity sold and total revenue for each category?
SELECT 
    category,
    SUM(quantity) AS TotalQuantity,
    SUM(total_amount) AS TotalRevenue
FROM SalesPerformanceCleanTable
GROUP BY category;

GO

-- Question: What is the average unit price for each product?
SELECT 
    product,
    AVG(unit_price) AS AvgUnitPrice
FROM SalesPerformanceCleanTable
GROUP BY product
ORDER BY AvgUnitPrice DESC;

GO

-- Question: How many orders were placed each month?
SELECT 
    YEAR(order_date) AS SalesYear,
    MONTH(order_date) AS SalesMonth,
    COUNT(order_id) AS OrdersCount
FROM SalesPerformanceCleanTable
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY SalesYear, SalesMonth;

GO
