-- Checking the data
SELECT * FROM sales_data 
LIMIT 10;

-- Sales Channel Analysis: Which sales channel (In-Store, Online, Distributor, Wholesale) has the highest sales volume?
CREATE TABLE sales_channel_analysis AS
SELECT `SalesChannel`, SUM(`OrderQuantity`) AS total_sales
FROM sales_data
GROUP BY `SalesChannel`
ORDER BY total_sales DESC;

-- Time-Based Analysis: What are the monthly or quarterly sales trends? Are there any seasonal patterns in the sales data?
CREATE TABLE monthly_sales AS
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS month, SUM(`OrderQuantity`) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Product Performance: Which products are the top sellers? What are the average discount rates applied to different products?
CREATE TABLE product_performance AS
SELECT ProductID, SUM(`OrderQuantity`) AS total_quantity_sold, AVG(`DiscountApplied`) AS avg_discount
FROM sales_data
GROUP BY ProductID
ORDER BY total_quantity_sold DESC;

-- Customer Insights: Who are the top customers based on total spending? How does customer spending behavior vary across different store locations?
CREATE TABLE customer_insights AS
SELECT CustomerID, SUM(`OrderQuantity` * `UnitPrice`) AS total_spent, COUNT(OrderNumber) AS order_count
FROM sales_data
GROUP BY CustomerID
ORDER BY total_spent DESC;

-- Geographical Analysis: How do sales vary across different store locations? Are there any regions with significantly higher or lower sales performance?
CREATE TABLE store_sales AS
SELECT StoreID, SUM(`OrderQuantity`) AS total_sales
FROM sales_data
GROUP BY StoreID
ORDER BY total_sales DESC;

-- RFM ANALYSIS
-- Calculating Recency
CREATE TABLE rfm_analysis AS
SELECT CustomerID, DATEDIFF(NOW(), MAX(OrderDate)) AS recency
FROM sales_data
GROUP BY CustomerID;

-- Calculating Frequency
ALTER TABLE rfm_analysis ADD COLUMN frequency INT;
UPDATE rfm_analysis r
JOIN (
SELECT CustomerID, COUNT(OrderNumber) AS frequency
FROM sales_data
GROUP BY CustomerID
) f ON r.CustomerID = f.CustomerID
SET 
    r.frequency = f.frequency;
    
-- Calculating Monetary
ALTER TABLE rfm_analysis ADD COLUMN monetary DECIMAL(20, 10);
UPDATE rfm_analysis r
JOIN (
SELECT CustomerID, SUM(`OrderQuantity` * `UnitPrice`) AS monetary
FROM sales_data
GROUP BY CustomerID
) m ON r.CustomerID = m.CustomerID
SET 
    r.monetary = m.monetary;
