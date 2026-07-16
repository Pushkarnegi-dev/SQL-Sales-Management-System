-- Question 1
-- Show all products whose price is greater than 500.

SELECT *
FROM Products
WHERE UnitPrice > 5000;

-- Question 2
-- Show the ProductName and UnitPrice of products priced between 1000 and 5000.

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 1000 AND 5000;

-- Question 3
-- Show all customers who live in Delhi.

SELECT *
FROM Customers
WHERE City = 'Delhi';

-- Question 4
-- Show ProductName and UnitPrice of products costing less than 1000.
-- Sort the result by UnitPrice in ascending order.

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice < 1000
ORDER BY UnitPrice ASC;

-- Question 5
-- Show the first 10 products with a price greater than 5000.
-- Display ProductName and UnitPrice.
-- Sort the result by UnitPrice in descending order.

SELECT TOP 10 ProductName, UnitPrice
FROM Products
WHERE UnitPrice > 5000
ORDER BY UnitPrice DESC;

-- Question 6
-- Show all customers who live in Delhi, Noida, or Gurgaon.

SELECT *
FROM Customers
WHERE City IN ('Delhi', 'Noida', 'Gurgaon');

-- Question 7
-- Show all customers who do not live in Delhi, Noida, or Gurgaon.

SELECT *
FROM Customers
WHERE City NOT IN ('Delhi', 'Noida', 'Gurgaon');

-- Question 8
-- Show ProductName and UnitPrice of products whose name starts with 'S'.

SELECT ProductName, UnitPrice
FROM Products
WHERE ProductName LIKE 'S%';

-- Question 9
-- Show ProductName and UnitPrice of products whose name ends with 'SSD'.

SELECT ProductName, UnitPrice
FROM Products
WHERE ProductName LIKE '%SSD';

-- Question 10
-- Show ProductName and UnitPrice of products whose name contains 'Laptop'.

SELECT ProductName, UnitPrice
FROM Products
WHERE ProductName LIKE '%Laptop%';