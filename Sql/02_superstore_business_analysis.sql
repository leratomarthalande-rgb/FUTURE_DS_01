## EDA SECTION
## Executive Overview Queries

SELECT 
	ROUND(SUM(`Sales`), 2) AS total_sales, 
	ROUND(SUM(`Profit`), 2) AS total_profit,
	COUNT(DISTINCT `Order ID`) AS total_orders, 
	ROUND(SUM(`Profit`) / SUM(`Sales`) * 100, 2) AS profit_margin_pct 
FROM `sample - superstore`;
 
 ## Sales By Category
 SELECT 
	`Category`, 
    ROUND(SUM(`Sales`), 2) AS total_sales 
FROM `sample - superstore`
GROUP BY `Category` 
ORDER BY total_sales DESC;

## Profit by Region
SELECT
	`REGION`,
	ROUND(SUM(`PROFIT`), 2) AS Total_profit
FROM `sample - superstore`
GROUP BY `REGION`
ORDER BY Total_profit DESC;

## MONTLY SALES TREND
SELECT
    DATE_FORMAT(`Order Date`, '%m') AS month,
	ROUND(SUM(`SALES`), 2) AS TOTAL_SALES
FROM `sample - superstore`
GROUP BY MONTH
ORDER BY TOTAL_SALES DESC;

##Product Revenue Analysis Queries
## Top 5 Products by Revenue
SELECT
    `Product Name`,
    ROUND(SUM(`Sales`), 2) AS total_sales
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;


## Sales by Sub-Category
SELECT
    `Sub-Category`,
    ROUND(SUM(`Sales`), 2) AS total_sales
FROM `sample - superstore`
GROUP BY `Sub-Category`
ORDER BY total_sales DESC;

## Quantity Sold by Sub-Category
SELECT
    `Sub-Category`,
    SUM(`Quantity`) AS total_quantity
FROM `sample - superstore`
GROUP BY `Sub-Category`
ORDER BY total_quantity DESC;


# Most Profitable Products
SELECT
    `Product Name`,
    ROUND(SUM(`Profit`), 2) AS total_profit
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 10;

# Categories with Highest Profit Margin
SELECT
    `Category`,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(SUM(`Profit`), 2) AS total_profit,
    ROUND(SUM(`Profit`) / SUM(`Sales`) * 100, 2) AS profit_margin_pct
FROM `sample - superstore`
GROUP BY `Category`
ORDER BY profit_margin_pct DESC;

## Average Shipping Time
SELECT
    ROUND(AVG(DATEDIFF(`Ship Date`, `Order Date`)), 2) AS avg_shipping_days
FROM `sample - superstore`;
