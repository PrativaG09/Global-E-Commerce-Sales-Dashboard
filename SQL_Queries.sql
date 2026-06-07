Global E-Commerce Sales Dashboard
SQL Analysis Queries

Database: ecommerce_db
Table: samplesuperstore_cleaned

1. View Sample Data
SELECT *
FROM samplesuperstore_cleaned
LIMIT 5;

2. Total Number of Records
SELECT COUNT(*) AS Total_Records
FROM samplesuperstore_cleaned;

3. Total Sales and Total Profit
SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM samplesuperstore_cleaned;

4. Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM samplesuperstore_cleaned
GROUP BY Region
ORDER BY Total_Sales DESC;

5. Profit by Category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM samplesuperstore_cleaned
GROUP BY Category
ORDER BY Total_Profit DESC;

6. Top 10 Cities by Sales
SELECT
    City,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM samplesuperstore_cleaned
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

7. Sales by Customer Segment
SELECT
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM samplesuperstore_cleaned
GROUP BY Segment
ORDER BY Total_Sales DESC;

8. Total Quantity Sold
SELECT
    SUM(Quantity) AS Total_Quantity
FROM samplesuperstore_cleaned;

9. Total Orders
SELECT
    COUNT(*) AS Total_Orders
FROM samplesuperstore_cleaned;

Key Results

Total Sales    : 2,296,195.81
Total Profit   : 286,242.20
Total Quantity : ~38,000
Total Orders   : 9,977

Highest Sales Region : West
Highest Profit Category : Technology
Top City by Sales : New York City
Largest Segment : Consumer
