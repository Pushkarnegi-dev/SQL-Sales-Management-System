# 🛒 Sales Management System (SQL)

A complete SQL project developed using Microsoft SQL Server to manage
customers, products, suppliers, employees, orders, and sales operations.

This project demonstrates intermediate SQL concepts through practical
business scenarios including joins, aggregate functions, views,
set operators, and sales reporting.

---

## ✨ Features

- Manage Categories
- Manage Suppliers
- Manage Customers
- Manage Employees
- Manage Products
- Manage Orders
- Track Order Details
- Generate Sales Reports
- Create SQL Views
- Perform Business Analysis Using SQL Queries

---

## 🗄️ Database Tables

| Table Name | Description |
|------------|-------------|
| Categories | Stores product categories. |
| Suppliers | Stores supplier information. |
| Customers | Stores customer details. |
| Employees | Stores employee information. |
| Shippers | Stores shipping company details. |
| Products | Stores product information. |
| Orders | Stores customer orders. |
| OrderDetails | Stores ordered product details. |

---

## 🧠 SQL Concepts Covered

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
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- UNION
- UNION ALL
- INTERSECT
- EXCEPT
- CONCAT
- UPPER
- LOWER
- LEN
- TRIM
- REPLACE
- GETDATE()
- YEAR()
- MONTH()
- DAY()
- DATEADD()
- DATEDIFF()
- ISNULL()
- COALESCE()
- CASE
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING
- Views

---

## 📁 Project Structure

```text
Sales-Management-System-SQL
│
├── Database
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
├── Documentation
├── README Images
├── README.md
└── LICENSE
```

---

## 📸 Project Screenshots

### 🗄️ Database Overview

![Database Overview](README%20Images/Database/Database_Overview.png)

---

### 🔍 Basic Queries

![Filtering Query](README%20Images/Basic%20Queries/Basic_Query_1_Filtering.png)

![LIKE Query](README%20Images/Basic%20Queries/Basic_Query_2_LIKE.png)

---

### 🔗 Joins

![Customer Orders](README%20Images/Joins/Join_1_Customer_Orders.png)

![Product Category](README%20Images/Joins/Join_2_Product_Category.png)

![Complete Order Report](README%20Images/Joins/Join_3_Complete_Order_Report.png)

---

### 🔄 Set Operators

![UNION](README%20Images/Set%20Operators/SetOperator_1_UNION.png)

![INTERSECT](README%20Images/Set%20Operators/SetOperator_2_INTERSECT.png)

---

### ⚙️ Functions

![CONCAT](README%20Images/Functions/Function_1_CONCAT.png)

![Date Functions](README%20Images/Functions/Function_2_Date_Functions.png)

![CASE](README%20Images/Functions/Function_3_CASE.png)

![ISNULL & COALESCE](README%20Images/Functions/Function_4_ISNULL_COALESCE.png)

---

### 📊 Group by & Having

![Total Stock](README%20Images/Group%20by%20%26%20Having/Groupby_1_Total_Stock.png)

![HAVING](README%20Images/Group%20by%20%26%20Having/Groupby_2_HAVING.png)

![Category Summary](README%20Images/Group%20by%20%26%20Having/Groupby_3_Category_Summary.png)

---

### 👁️ Views

![Product Details View](README%20Images/Views/View_1_Product_Details.png)

![Order Details View](README%20Images/Views/View_2_Order_Details.png)

---

### 📈 Final Business Queries

![Best Selling Products](README%20Images/Final%20Business%20Queries/Final_1_Best_Selling_Products.png)

![High Value Customers](README%20Images/Final%20Business%20Queries/Final_2_High_Value_Customers.png)

![Revenue Report](README%20Images/Final%20Business%20Queries/Final_3_Revenue_Report.png)

---

## 🎯 Project Highlights

- Designed a normalized relational database with 8 interconnected tables.
- Implemented Primary Key and Foreign Key relationships to maintain data integrity.
- Developed 50+ business-oriented SQL queries for real-world sales reporting.
- Performed customer, product, supplier, and order analysis using SQL.
- Created reusable SQL Views to simplify reporting queries.
- Applied aggregate functions, joins, set operators, CASE expressions, and filtering techniques.
- Organized the project with professional documentation, screenshots, and GitHub-ready structure.

---

## 🛠️ Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Visual Studio Code
- Markdown
- Git & GitHub

---

## 🚀 How to Run

1. Clone this repository.
2. Open SQL Server Management Studio (SSMS).
3. Execute the SQL scripts in the following order:

   - 01_Create_Database.sql
   - 02_Create_Tables.sql
   - 03_Insert_Data.sql
   - 04_Basic_SELECT.sql
   - 05_JOINS.sql
   - 06_SET_OPERATORS.sql
   - 07_FUNCTIONS.sql
   - 08_GROUPBY_HAVING.sql
   - 09_VIEWS.sql
   - 10_Final_Business_Queries.sql

4. Explore the generated views and business reports.

---

## 📈 Future Improvements

- Stored Procedures
- Triggers
- Common Table Expressions (CTEs)
- Window Functions
- Indexes
- Transactions
- Performance Optimization

---

## 👨‍💻 Author

**Pushkar Negi**

Aspiring Data Engineer | SQL Enthusiast

If you found this project helpful, please consider giving it a ⭐ on GitHub.