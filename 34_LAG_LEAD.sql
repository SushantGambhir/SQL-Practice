-- Window function 4 & 5: LAG() & LEAD()
CREATE TABLE Orders
(
    ProductId INT NULL,
    InvoiceNum VARCHAR(10) NULL,
    OrderDate DATE NULL,
    City VARCHAR(20) NULL,
    Qty INT NULL
)

INSERT INTO Orders (ProductId, InvoiceNum, OrderDate, City, Qty) VALUES
(1,'SOB982', '2022-01-02' , 'Delhi', 3000),
(2,'SOB983', '2022-01-02', 'NYC', 2500),
(3,'SOB984', '2022-01-02' , 'London', 376),
(1, 'SOB985', '2022-01-03', 'London', 2100),
(2, 'SOB986', '2022-01-03', 'NYC', 4000),
(4, 'SOB987', '2022-01-03','Delhi', 838),
(1, 'SOB988', '2022-01-04', 'London', 2100),
(1, 'SOB989', '2022-01-04', 'NYC', 4000),
(1, 'SOB990', '2022-01-04', 'Delhi', 838)

-- LagQty column will have Qty value of row above it, and the topmost row will have NULL
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
LAG(Qty,1) OVER(ORDER BY OrderDate) AS LagQty
FROM Orders

-- Here the topmost entry for each City will have value 0 as specified in the query
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
LAG(Qty,1,0) OVER(ORDER BY OrderDate) AS LagQty
FROM Orders

-- LagQty column will have Qty value of row above it for each City, 
-- and the topmost row will have 0 as specified in the query
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
LAG(Qty,1,0) OVER(PARTITION BY City ORDER BY OrderDate) AS LagQty
FROM Orders

-- LagQty column will have Qty value of 2nd row above it, and the topmost two rows will have NULL
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
LAG(Qty,2) OVER(ORDER BY OrderDate) AS LagQty
FROM Orders

-- LagQty column will have Qty value of row below it, and the bottom-most row will have NULL
SELECT ProductId, InvoiceNum, OrderDate, City, Qty,
LEAD(Qty,1) OVER(ORDER BY OrderDate) AS LagQty
FROM Orders

-- Similarly we can use another queries with LEAD() instead of LAG()