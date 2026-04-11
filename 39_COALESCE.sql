CREATE TABLE Vendors(
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(50),
    Yearly DECIMAL(10,2),
    HalfYearly DECIMAL(10,2),
    Quaterly DECIMAL(10,2),
    Monthly DECIMAL(10,2)
)

INSERT INTO Vendors
(VendorID,VendorName,Yearly,HalfYearly,Quaterly,Monthly)
VALUES
(1,'XYZ Company',2000,NULL,NULL,NULL),
(2,'ABC Express',NULL,10000,NULL,NULL),
(3,'Door Step Delivery',NULL,NULL,6000,NULL),
(4,'TCL Telecom',NULL,NULL,NULL,1200)

SELECT * FROM Vendors

-- COALESCE Function: Returns first NOT NULL value
SELECT COALESCE(NULL,1) -- OP: 1
SELECT COALESCE(NULL,11,100,NULL,50) -- OP: 11

