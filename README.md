# Hotel Management Database System

## Overview
This project implements a **Hotel Management System Database** using **Oracle SQL**. The system manages hotel operations such as **employees, customers, room bookings, reservations, and billing**. It demonstrates the use of **tables, relationships, constraints, queries, PL/SQL procedures, functions, triggers, and views**.

---

## Features

### Database Tables
1. **Employee**: Stores employee details including ID, name, gender, email, designation, address, and phone number.  
2. **Customer**: Stores customer information such as ID, name, email, NID number, address, and phone number.  
3. **Room**: Contains room details including room number, price, status (AC/Non-AC, Single/Double), and availability.  
4. **Reservation**: Tracks bookings, check-in/out dates, customer ID, and room number.  
5. **Bill**: Maintains billing information including bill ID, reservation ID, customer ID, billing date, amount, and payment method.

---

### Key Operations Implemented

- **CRUD Operations**:  
  - Insert, Update, Delete, Select on all tables.  
  - Modify and rename columns as needed.  

- **Joins**:  
  - INNER JOIN, OUTER JOIN (LEFT, RIGHT, FULL), CROSS JOIN, NATURAL JOIN.  

- **Aggregate Functions & Grouping**:  
  - MAX, MIN, SUM, AVG, COUNT, DISTINCT.  
  - `GROUP BY` and `HAVING` clauses.  

- **Filtering & Searching**:  
  - Conditional search using `WHERE`, `BETWEEN`, `IN`, `NOT IN`.  
  - Pattern matching with `LIKE`.  

- **Set Operations**:  
  - `UNION`, `UNION ALL`, `INTERSECT`, `MINUS`.  

- **PL/SQL Programming**:  
  - **Procedures**: Retrieve bill ID for a specific amount.  
  - **Functions**: Calculate the average bill amount.  
  - **Cursor Example**: Fetch first N room records.  
  - **Triggers**: Automatically update `room_status` based on `price`.  

- **Transaction Control**:  
  - `COMMIT`, `ROLLBACK`, `SAVEPOINT`.  

- **Date & Time Handling**:  
  - Retrieve system date and timestamp using `SYSDATE`, `CURRENT_DATE`, and `SYSTIMESTAMP`.  

- **Views**:  
  - Example: `view_rooms` to list rooms with numbers >= 2010.  

---

## Sample Queries

```sql
-- Max amount from bill
SELECT MAX(amount) FROM bill;

-- Count rooms by price
SELECT COUNT(room_no), price FROM room GROUP BY price HAVING COUNT(room_no) > 2;

-- Join customer with reservation
SELECT c.cust_name, r.room_no 
FROM customer c 
INNER JOIN reservation r ON c.cust_id = r.cust_id;

-- Using trigger for room_status
INSERT INTO room (room_no, price, room_status, available) VALUES (2011, 1000, NULL, 'Booked');
