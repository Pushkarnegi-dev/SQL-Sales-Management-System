-- Question 1
-- Show each OrderID with the customer's FirstName, LastName, and OrderDate.

SELECT O.OrderID,
       C.FirstName,
       C.LastName,
       O.OrderDate
FROM Orders O
INNER JOIN Customers C
ON C.CustomerID = O.CustomerID;

-- Question 2
-- Show each OrderID with the employee's FirstName, LastName, JobTitle, and OrderDate.

SELECT O.OrderID,
       E.FirstName,
       E.LastName,
       E.JobTitle,
       O.OrderDate
FROM Employees AS E
INNER JOIN Orders O
ON E.EmployeeID = O.EmployeeID;

-- Question 3
-- Show each OrderID with the shipper's CompanyName, Phone, and OrderDate.

SELECT
    O.OrderID,
    S.CompanyName,
    S.Phone,
    O.OrderDate
FROM Orders O
INNER JOIN Shippers S
ON O.ShipperID = S.ShipperID;

-- Question 4
-- Show each OrderID with ProductName, Quantity, and UnitPrice.

SELECT
    O.OrderID,
    P.ProductName,
    O.Quantity,
    O.UnitPrice
FROM Products P
INNER JOIN OrderDetails O
ON P.ProductID = O.ProductID;

-- Question 5
-- Show each ProductName with its CategoryName and UnitPrice.

SELECT
    P.ProductName,
    C.CategoryName,
    P.UnitPrice
FROM Categories C
INNER JOIN Products P
ON C.CategoryID = P.CategoryID;

-- Question 6
-- Show all customers, including those who have never placed an order.

SELECT
    C.CustomerID,
    C.FirstName,
    C.LastName,
    O.OrderID
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- Question 7
-- Show all categories, including those that have no products.

SELECT
    C.CategoryName,
    P.ProductName
FROM Categories C
LEFT JOIN Products P
ON C.CategoryID = P.CategoryID;

-- Question 8
-- Show all orders, including those that do not have a matching customer record.

SELECT
    O.CustomerID,
    C.FirstName,
    C.LastName,
    O.OrderID
FROM Customers C
RIGHT JOIN Orders O
ON O.CustomerID = C.CustomerID;

-- Question 9
-- Show all products, including those that have never been ordered.

SELECT
    O.ProductID,
    P.ProductName,
    O.OrderID
FROM OrderDetails O
RIGHT JOIN Products P
ON O.ProductID = P.ProductID;

-- Question 10
-- Generate an order report showing customer and product details.

SELECT
    O.OrderID,
    C.FirstName,
    C.LastName,
    P.ProductName,
    OD.Quantity
FROM Orders O
INNER JOIN Customers C
    ON O.CustomerID = C.CustomerID
INNER JOIN OrderDetails OD
    ON O.OrderID = OD.OrderID
INNER JOIN Products P
    ON OD.ProductID = P.ProductID;