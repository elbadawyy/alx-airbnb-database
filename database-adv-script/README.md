# 🏨 ALX Airbnb Database - Advanced Querying

## 📘 Task 0: Write Complex Queries with Joins

### 🎯 Objective
Demonstrate mastery of SQL joins by writing complex queries that combine data across multiple related tables in the Airbnb database schema.

---

### 🧠 Learning Focus
- Understand and apply **INNER JOIN**, **LEFT JOIN**, and **FULL OUTER JOIN**.
- Retrieve related data between users, bookings, properties, and reviews.
- Simulate **FULL OUTER JOIN** behavior in MySQL using `UNION`.

---



## 📘 Task 2: Apply Aggregations and Window Functions

### 🎯 Objective
Use SQL aggregation and window functions to perform data analysis on the Airbnb database.  
This includes counting user bookings and ranking properties based on their popularity.

---

### 🧠 Learning Focus
- Utilize **aggregate functions** like `COUNT`, `SUM`, and `AVG` to summarize data.  
- Apply **window functions** such as `ROW_NUMBER()` and `RANK()` for analytical insights.  
- Combine **GROUP BY** with aggregations for grouped summaries.  
- Use **OVER()** clauses to rank or partition data dynamically.

---

## 🧩 Queries Overview

### 1️⃣ Total Number of Bookings per User

Retrieve the total number of bookings made by each user using the `COUNT()` aggregate function and `GROUP BY` clause.

```sql
SELECT 
    u.id AS user_id,
    u.first_name,
    u.last_name,
    COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.first_name, u.last_name
ORDER BY total_bookings DESC;
