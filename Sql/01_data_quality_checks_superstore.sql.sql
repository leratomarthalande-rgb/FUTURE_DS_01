Select * From `sample - superstore`;

## Check For NULL values
Select
SUM( CASE WHEN `Row ID` IS NULL THEN 1 ELSE 0 END) AS `ROW ID NULLS`,
SUM( CASE WHEN `Order ID` IS NULL THEN 1 ELSE 0 END) AS `ORDER ID NULLS`,
SUM( CASE WHEN `ORDER DATE` IS NULL THEN 1 ELSE 0 END) AS `ORDER DATE NULLS`,
SUM(CASE WHEN `REGION` IS NULL THEN 1 ELSE 0 END) AS `REGION NULLS`,
SUM(CASE WHEN `PRODUCT NAME` IS NULL THEN 1 ELSE 0 END) AS `PRODUCT NAME NULLS`,
SUM(CASE WHEN `CATEGORY` IS NULL THEN 1 ELSE 0 END) AS `CATEGORY NULLS`,
SUM(CASE WHEN `SUB-CATEGORY` IS NULL THEN 1 ELSE 0 END) AS `SUN-CATEGORY NULLS`,
SUM(CASE WHEN `SALES` IS NULL THEN 1 ELSE 0 END) AS `SALES NULLS`,
SUM(CASE WHEN `PROFIT` IS NULL THEN 1 ELSE 0 END) AS `PROFIT NULLS`
FROM `sample - superstore`;

## CHECK FOR DUPLICATE ROWS
SELECT `ORDER ID`, `PRODUCT ID`, `ORDER DATE`, `QUANTITY`, `CUSTOMER ID`, COUNT(*)
FROM `sample - superstore`
GROUP BY `ORDER ID`, `PRODUCT ID`, `ORDER DATE`, `Quantity`, `Customer ID`
HAVING COUNT(*)>1;
-- only 1 dupp--

SELECT * FROM `sample - superstore`
WHERE `ORDER ID` = 'US-2014-150119'AND `Product ID` = 'FUR-CH-10002965'AND `Quantity` = 2;

DELETE FROM `sample - superstore`
WHERE `ROW ID` = 3407;

## Change DATE FORMAT

UPDATE `sample - superstore`
SET `Order Date` = STR_TO_DATE(`Order Date`, '%m/%d/%Y'),
`Ship Date` = STR_TO_DATE(`Ship Date`, '%m/%d/%Y');

ALTER TABLE `sample - superstore`
MODIFY COLUMN `Order Date` DATE;

ALTER TABLE `sample - superstore`
MODIFY COLUMN `Ship Date` DATE;

##Check for Negative Sales
SELECT *
FROM `sample - superstore`
WHERE `Sales` < 0;

##Check for Extreme Discounts
SELECT DISTINCT `Discount`
FROM `sample - superstore`
ORDER BY `Discount`;



