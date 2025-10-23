-- Week 6 Assignment: Joins and Relationships
-- Student: Timnapan
-- Database: salesdb

USE salesdb;

-- Q1
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- Q2
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
ON p.productLine = pl.productLine;

-- Q3
SELECT TOP 10 o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber = o.customerNumber;
