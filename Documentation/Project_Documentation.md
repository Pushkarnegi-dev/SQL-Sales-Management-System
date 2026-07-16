# 🛒 Sales Management System - Project Documentation

## 📌 Project Overview

The Sales Management System is an intermediate SQL Server project designed to simulate a real-world sales database. It manages customers, products, suppliers, employees, orders, and order details while demonstrating practical SQL concepts through business-oriented scenarios.

---

## 🎯 Project Objectives

- Design a normalized relational database.
- Establish relationships using Primary Keys and Foreign Keys.
- Store and manage sales-related data efficiently.
- Practice beginner to intermediate SQL concepts.
- Generate business reports using SQL queries.
- Build a professional SQL portfolio project for GitHub.

---

## 🛠️ Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Visual Studio Code
- Git
- GitHub
---

# 🗄️ Database Design

The Sales Management System follows a relational database model where all tables are connected using Primary Keys and Foreign Keys to maintain data integrity and reduce redundancy.

The database consists of 8 interconnected tables.

---

# 📋 Database Tables

## 1. Categories
Stores different product categories.

**Primary Key:**
- CategoryID

---

## 2. Suppliers
Stores supplier information.

**Primary Key:**
- SupplierID

---

## 3. Customers
Stores customer details.

**Primary Key:**
- CustomerID

---

## 4. Employees
Stores employee information.

**Primary Key:**
- EmployeeID

---

## 5. Shippers
Stores shipping company details.

**Primary Key:**
- ShipperID

---

## 6. Products
Stores product information.

**Primary Key:**
- ProductID

**Foreign Keys:**
- CategoryID
- SupplierID

---

## 7. Orders
Stores customer orders.

**Primary Key:**
- OrderID

**Foreign Keys:**
- CustomerID
- EmployeeID
- ShipperID

---

## 8. OrderDetails
Stores details of each ordered product.

**Primary Key:**
- OrderDetailID

**Foreign Keys:**
- OrderID
- ProductID
---

# 🔗 Database Relationships

The tables are connected using the following relationships:

- Categories → Products (One-to-Many)
- Suppliers → Products (One-to-Many)
- Customers → Orders (One-to-Many)
- Employees → Orders (One-to-Many)
- Shippers → Orders (One-to-Many)
- Orders → OrderDetails (One-to-Many)
- Products → OrderDetails (One-to-Many)

These relationships ensure data consistency and eliminate unnecessary duplication.

---

# 🧠 SQL Concepts Implemented

The following SQL concepts were implemented in this project:

## Basic SQL

- SELECT
- WHERE
- DISTINCT
- TOP
- ORDER BY
- LIKE
- IN
- NOT IN
- BETWEEN
- IS NULL
- IS NOT NULL

---

## Joins

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

---

## Set Operators

- UNION
- UNION ALL
- INTERSECT
- EXCEPT

---

## SQL Functions

### String Functions

- CONCAT()
- UPPER()
- LOWER()
- LEN()
- TRIM()
- REPLACE()

### Date Functions

- GETDATE()
- YEAR()
- MONTH()
- DAY()
- DATEADD()
- DATEDIFF()

### NULL Functions

- ISNULL()
- COALESCE()

### Conditional Function

- CASE

---

## Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

---

## Other SQL Concepts

- GROUP BY
- HAVING
- Views
---

# 📈 Business Queries Implemented

This project includes multiple business-oriented SQL queries such as:

- Display all available products.
- Filter products based on price.
- Search customers using LIKE.
- Retrieve customer order history using JOINs.
- Display product categories.
- Find total stock by category.
- Generate sales reports.
- Identify high-value customers.
- Find best-selling products.
- Calculate total revenue.
- Create reusable SQL Views for reporting.

---

# 📂 Project Folder Structure

```text
SQL-Sales-Management-System
│
├── Database Backup
├── Documentation
│   └── Project_Documentation.md
├── README Images
├── SQL Scripts
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Tables.sql
│   ├── 03_Insert_Data.sql
│   ├── 04_Basic_SELECT.sql
│   ├── 05_JOINS.sql
│   ├── 06_SET_OPERATORS.sql
│   ├── 07_FUNCTIONS.sql
│   ├── 08_GROUPBY_HAVING.sql
│   ├── 09_VIEWS.sql
│   └── 10_Final_Business_Queries.sql
│
├── README.md
└── LICENSE
```

---

# 📚 Learning Outcomes

After completing this project, the following SQL concepts were successfully practiced:

- Relational Database Design
- Primary Key & Foreign Key Relationships
- Data Insertion & Management
- Data Filtering
- SQL Joins
- Aggregate Functions
- Set Operators
- String Functions
- Date Functions
- NULL Handling
- Conditional Logic (CASE)
- GROUP BY & HAVING
- SQL Views
- Business Report Generation
- Git & GitHub Project Management

---

# ✅ Conclusion

The Sales Management System project demonstrates practical SQL skills by combining database design, data manipulation, business reporting, and query optimization techniques. This project serves as a strong intermediate-level SQL portfolio project and provides hands-on experience with real-world database management scenarios.

---

# 👨‍💻 Author

**Pushkar Negi**

GitHub: https://github.com/Pushkarnegi-dev