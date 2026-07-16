-- Question 1
-- Show the total number of customers in each city.

SELECT
    City,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City;

-- Question 2
-- Show the total stock available in each category.

SELECT
    C.CategoryName,
    SUM(P.StockQuantity) AS TotalStock
FROM Categories C
INNER JOIN Products P
    ON C.CategoryID = P.CategoryID
GROUP BY
    C.CategoryName;

    -- Question 3
-- Show the average product price in each category.

SELECT
    C.CategoryName,
    AVG(P.UnitPrice) AS AveragePrice
FROM Categories C
INNER JOIN Products P
    ON C.CategoryID = P.CategoryID
GROUP BY
    C.CategoryName;

    -- Question 4
-- Show the cheapest and most expensive product price in each category.

SELECT
    C.CategoryName,
    MIN(P.UnitPrice) AS MinimumPrice,
    MAX(P.UnitPrice) AS MaximumPrice
FROM Categories C
INNER JOIN Products P
    ON C.CategoryID = P.CategoryID
GROUP BY
    C.CategoryName;

    -- Question 5
-- Show cities that have more than 3 customers.

SELECT
    City,
    COUNT(CustomerID) AS TotalCustomers
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 3;

    -- Question 6
-- Show categories whose total stock is greater than 100.

SELECT
    C.CategoryName,
    SUM(P.StockQuantity) AS TotalStock
FROM Categories C
INNER JOIN Products P
    ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
HAVING SUM(P.StockQuantity) > 100;

-- Question 7
-- Show categories whose average product price is greater than 10000.

SELECT
    C.CategoryName,
    AVG(P.UnitPrice) AS AveragePrice
FROM Categories C
INNER JOIN Products P
    ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
HAVING AVG(P.UnitPrice) > 10000;

-- Question 8
-- Show suppliers who supply more than 3 products.

SELECT
    S.CompanyName,
    COUNT(P.ProductID) AS TotalProducts
FROM Suppliers S
INNER JOIN Products P
    ON S.SupplierID = P.SupplierID
GROUP BY S.CompanyName
HAVING COUNT(P.ProductID) > 3;

-- Question 9
-- Show a summary of each category.

SELECT
    C.CategoryName,
    COUNT(P.ProductID) AS TotalProducts,
    SUM(P.StockQuantity) AS TotalStock,
    AVG(P.UnitPrice) AS AveragePrice
FROM Categories C
INNER JOIN Products P
    ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName;

-- Question 10
-- Show categories having more than 2 products and sort them by total products.

SELECT
    C.CategoryName,
    COUNT(P.ProductID) AS TotalProducts
FROM Categories C
INNER JOIN Products P
    ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
HAVING COUNT(P.ProductID) > 2
ORDER BY TotalProducts DESC;