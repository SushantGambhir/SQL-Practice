-- Window function 6 & 7: FIRST_VALUE() & LAST_VALUE()

-- The table will over soreted in ascending order of Order Date, 
-- will give topmost value of Qty in FirstQty column for all rows
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
FIRST_VALUE(Qty) OVER(ORDER BY OrderDate) AS FirstQty
FROM Orders

-- LAST_VALUE() behaves little differently, by default it will partition by OrderDate
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
LAST_VALUE(Qty) OVER(ORDER BY OrderDate) AS LastQty
FROM Orders

-- To avoid partition we need to write query like this
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
LAST_VALUE(Qty) OVER(ORDER BY (SELECT 0)) AS LastQty
FROM Orders