/* ============================================================
   E-COMMERCE KPI ANALYSIS (SQL)
   Role: Business Analyst / Analytics Consultant
   Dataset: ecommerce_transactions
   ============================================================ */

---------------------------------------------------------------
-- KPI 1: TOTAL REVENUE
-- Business Question: How large is the business in monetary terms?
---------------------------------------------------------------
SELECT 
    SUM(Quantity * Price) AS Total_Revenue
FROM ecommerce_transactions
WHERE Quantity > 0;


---------------------------------------------------------------
-- KPI 1B: TOTAL NUMBER OF ORDERS
-- Business Question: How many unique purchases were made?
---------------------------------------------------------------
SELECT 
    COUNT(DISTINCT Invoice) AS Total_Orders
FROM ecommerce_transactions
WHERE Quantity > 0;


---------------------------------------------------------------
-- KPI 1C: AVERAGE ORDER VALUE (AOV)
-- Business Question: How much does a customer spend per order on average?
---------------------------------------------------------------
SELECT 
    SUM(Quantity * Price) / COUNT(DISTINCT Invoice) AS Average_Order_Value
FROM ecommerce_transactions
WHERE Quantity > 0;


---------------------------------------------------------------
-- KPI 2: MONTHLY REVENUE TREND
-- Business Question: Are we growing? Is there seasonality?
---------------------------------------------------------------
SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS Invoice_Month,
    SUM(Quantity * Price) AS Monthly_Revenue
FROM ecommerce_transactions
WHERE Quantity > 0
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY Invoice_Month;


---------------------------------------------------------------
-- KPI 3: REVENUE BY COUNTRY (MARKET CONTRIBUTION)
-- Business Question: Which markets drive the business?
---------------------------------------------------------------
SELECT 
    Country,
    SUM(Quantity * Price) AS Total_Revenue
FROM ecommerce_transactions
WHERE Quantity > 0
GROUP BY Country
ORDER BY Total_Revenue DESC;


---------------------------------------------------------------
-- KPI 3B: TOP 10 COUNTRIES BY REVENUE
---------------------------------------------------------------
SELECT 
    Country,
    SUM(Quantity * Price) AS Total_Revenue
FROM ecommerce_transactions
WHERE Quantity > 0
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 10;


---------------------------------------------------------------
-- KPI 4: CUSTOMER ORDER FREQUENCY
-- Business Question: Who are repeat vs one-time customers?
---------------------------------------------------------------
SELECT 
    CustomerID,
    COUNT(DISTINCT Invoice) AS Order_Count
FROM ecommerce_transactions
WHERE Quantity > 0
GROUP BY CustomerID;


---------------------------------------------------------------
-- KPI 4B: CUSTOMER SEGMENT CLASSIFICATION
---------------------------------------------------------------
SELECT 
    CustomerID,
    CASE 
        WHEN COUNT(DISTINCT Invoice) > 1 THEN 'Repeat'
        ELSE 'One-Time'
    END AS Customer_Type
FROM ecommerce_transactions
WHERE Quantity > 0
GROUP BY CustomerID;


---------------------------------------------------------------
-- KPI 4C: REVENUE CONTRIBUTION BY CUSTOMER SEGMENT
-- Business Question: Is growth driven by loyal customers?
---------------------------------------------------------------
WITH customer_type AS (
    SELECT 
        CustomerID,
        CASE 
            WHEN COUNT(DISTINCT Invoice) > 1 THEN 'Repeat'
            ELSE 'One-Time'
        END AS Customer_Type
    FROM ecommerce_transactions
    WHERE Quantity > 0
    GROUP BY CustomerID
)
SELECT 
    ct.Customer_Type,
    SUM(et.Quantity * et.Price) AS Total_Revenue
FROM ecommerce_transactions et
JOIN customer_type ct
    ON et.CustomerID = ct.CustomerID
GROUP BY ct.Customer_Type
ORDER BY Total_Revenue DESC;

