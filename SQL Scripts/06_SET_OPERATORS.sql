-- Question 1
-- Show a unique list of cities from Customers and Suppliers.

SELECT City
FROM Customers

UNION

SELECT City
FROM Suppliers;

-- Question 2
-- Show all cities from Customers and Suppliers, including duplicates.

SELECT City
FROM Customers

UNION ALL

SELECT City
FROM Suppliers;

-- Question 3
-- Show the cities that exist in both Customers and Suppliers.

SELECT City
FROM Customers

INTERSECT

SELECT City
FROM Suppliers;

-- Question 4
-- Show cities where customers exist but suppliers do not.

SELECT City
FROM Customers

EXCEPT

SELECT City
FROM Suppliers;