-- Question 1
-- Create a view to display product details with category information.

CREATE VIEW vw_ProductDetails AS
SELECT
    P.ProductID,
    P.ProductName,
    C.CategoryName,
    P.UnitPrice,
    P.StockQuantity
FROM Products P
INNER JOIN Categories C
    ON P.CategoryID = C.CategoryID;
GO

-- Test the view
SELECT *
FROM vw_ProductDetails;

-- Question 2
-- Create a view to display customer order details.

CREATE VIEW vw_CustomerOrders AS
SELECT
    O.OrderID,
    C.FirstName,
    C.LastName,
    O.OrderDate
FROM Orders O
INNER JOIN Customers C
    ON O.CustomerID = C.CustomerID;
GO

-- Test the view
SELECT *
FROM vw_CustomerOrders;

-- Question 3
-- Create a view to display product details with supplier information.

CREATE VIEW vw_ProductSuppliers AS
SELECT
    P.ProductID,
    P.ProductName,
    S.CompanyName,
    P.UnitPrice
FROM Products P
INNER JOIN Suppliers S
    ON P.SupplierID = S.SupplierID;
GO

-- Test the view
SELECT *
FROM vw_ProductSuppliers;

-- Question 4
-- Create a view to display employee order details.

CREATE VIEW vw_EmployeeOrders AS
SELECT
    O.OrderID,
    E.FirstName,
    E.LastName,
    E.JobTitle,
    O.OrderDate
FROM Employees E
INNER JOIN Orders O
    ON E.EmployeeID = O.EmployeeID;
GO

-- Test the view
SELECT *
FROM vw_EmployeeOrders;

-- Question 5
-- Create a view to display complete order details.

CREATE VIEW vw_OrderDetails AS
SELECT
    O.OrderID,
    C.FirstName,
    C.LastName,
    P.ProductName,
    OD.Quantity,
    P.UnitPrice
FROM Orders O
INNER JOIN Customers C
    ON O.CustomerID = C.CustomerID
INNER JOIN OrderDetails OD
    ON O.OrderID = OD.OrderID
INNER JOIN Products P
    ON OD.ProductID = P.ProductID;
GO

-- Test the view
SELECT *
FROM vw_OrderDetails;