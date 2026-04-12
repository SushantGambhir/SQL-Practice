SELECT YEAR(OrderDate) AS OrderYear,SUM(SalesAmount) AS SalesByYear
FROM FactInternetSales
GROUP BY ROLLUP(YEAR(OrderDate))
-- When we use ROLLUP with GROUP BY there are two differences from the result without it
-- 1. OrderYear column will be sorted
-- 2. One extra row will be added at bottom (NULL, Sum Total of all values in SalesByYear)

SELECT YEAR(OrderDate) AS OrderYear, FORMAT(OrderDate,'MMM') AS MonthNm,
SUM(SalesAmount) AS SalesByYear
FROM FactInternetSales
GROUP BY ROLLUP(YEAR(OrderDate),FORMAT(OrderDate,'MMM'))
-- When we use ROLLUP with GROUP BY there are few differences from the result without it
-- 1. OrderYear column will be sorted
-- 2. Month will not be sorted because its considered plain text
-- 3. There will be one NULL Entry for each Year in Column MonthNum and 
-- SalesByYear column will have sum total for that year
-- 4. In the end NULL in OrderYear, MonthNm, and sum total of 
-- all values in SalesByYear at the bottom of table

SELECT ISNULL(FORMAT(OrderDate,'yyyy'),'Grand Total') AS OrderYear,
SUM(SalesAmount) AS SalesByYear
FROM FactInternetSales
GROUP BY ROLLUP(FORMAT(OrderDate,'yyyy'))
-- Giving specified text instead of NULL

SELECT ISNULL(FORMAT(OrderDate,'yyyy'),'Grand Total') AS OrderYear, 
ISNULL(FORMAT(OrderDate,'MMM'),FORMAT(OrderDate,'yyyy')+' Total') AS MonthNm,
SUM(SalesAmount) AS SalesByYear
FROM FactInternetSales
GROUP BY ROLLUP
(FORMAT(OrderDate,'yyyy'),FORMAT(OrderDate,'MMM'))
-- Same thing for the second query

