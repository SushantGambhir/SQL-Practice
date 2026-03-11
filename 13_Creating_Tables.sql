-- Creating sample tables to understand concept of Joins from next section onwards

CREATE TABLE SalesTran(
    ProductID INT,
    InvoiceNum VARCHAR(10),
    Qty INT,
    SALES DECIMAL(10,2)
)

CREATE TABLE Products(
    ProductID INT,
    ProductName VARCHAR(30),
    UnitPrice DECIMAL(10,2)
)

INSERT INTO SalesTran
VALUES
(1,'SOB982',10,3000.00),
(2,'SOB983',5,2500.00),
(3,'SOB984',5,376.00),
(1,'SOB985',7,2100.00),
(2,'SOB986',8,4000.00),
(4,'SOB987',10,838.00)

INSERT INTO Products
VALUES
(1,'ABC Logo Cap',300.00),
(2,'Ball Bearing',500.00),
(3,'Bell',75.20),
(4,'Trousers',83.80),
(5,'Shirt',200.00)

SELECT * FROM SalesTran
SELECT * FROM Products