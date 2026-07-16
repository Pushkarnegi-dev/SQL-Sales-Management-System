-- Question 1
-- Display each customer's full name using CONCAT.

SELECT CustomerID,
       CONCAT(FirstName, ' ', LastName) AS FullName,
       City
FROM Customers;

-- Question 2
-- Display all product names in uppercase.

SELECT ProductID,
       UPPER(ProductName) AS ProductName,
       UnitPrice
FROM Products;

-- Question 3
-- Display all customer email addresses in lowercase.

SELECT CustomerID,
       LOWER(Email) AS Email
FROM Customers;

-- Question 4
-- Display the length of each product name.

SELECT ProductName,
       LEN(ProductName) AS NameLength
FROM Products;

-- Question 5
-- Display customer first names after removing leading and trailing spaces.

SELECT CustomerID,
       TRIM(FirstName) AS Trimmed
FROM Customers;

-- Question 6
-- Replace the word 'Laptop' with 'Notebook' in product names.

SELECT ProductID,
       REPLACE(ProductName, 'Laptop', 'Notebook') AS UpdatedProductName
FROM Products;

-- Question 7
-- Display the current system date and time.

SELECT GETDATE() AS CurrentDateTime;

-- Question 8
-- Display the order year for every order.

SELECT OrderID,
       OrderDate,
       YEAR(OrderDate) AS OrderYear
FROM Orders;

-- Question 9
-- Display the order month for every order.

SELECT OrderID,
       OrderDate,
       MONTH(OrderDate) AS OrderMonth
FROM Orders;

-- Question 10
-- Display the day for every order.

SELECT OrderID,
       OrderDate,
       DAY(OrderDate) AS OrderDay
FROM Orders;

-- Question 11
-- Display the follow-up date, which is 7 days after the order date.

SELECT OrderID,
       OrderDate,
       DATEADD(DAY, 7, OrderDate) AS FollowUpDate
FROM Orders;

-- Question 12
-- Display the number of days taken to deliver each order.

SELECT OrderID,
       OrderDate,
       ShippedDate,
       DATEDIFF(DAY, OrderDate, ShippedDate) AS DaysTaken
FROM Orders;

-- Question 13
-- Display the shipped date. If it is NULL, show 'Not Shipped'.

SELECT
    OrderID,
    ISNULL(CONVERT(VARCHAR(10), ShippedDate, 120), 'Not Shipped') AS ShippingStatus
FROM Orders;

-- Question 14
-- Display the delivery date.
-- If ShippedDate is NULL, use RequiredDate.
-- If RequiredDate is also NULL, use OrderDate.

SELECT
    OrderID,
    COALESCE(ShippedDate, RequiredDate, OrderDate) AS DeliveryDate
FROM Orders;

-- Question 15
-- Categorize products based on their price.

SELECT
    ProductName,
    UnitPrice,
    CASE
        WHEN UnitPrice >= 50000 THEN 'Premium'
        WHEN UnitPrice >= 10000 THEN 'Standard'
        ELSE 'Budget'
    END AS PriceCategory
FROM Products;