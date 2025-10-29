# 🏨 ALX Airbnb Database - Advanced Querying: SQL Joins

## 📘 Task 0: Write Complex Queries with Joins

### 🎯 Objective
Demonstrate mastery of SQL joins by writing complex queries that combine data across multiple related tables in the Airbnb database schema.

---

### 🧠 Learning Focus
- Understand and apply **INNER JOIN**, **LEFT JOIN**, and **FULL OUTER JOIN**.
- Retrieve related data between users, bookings, properties, and reviews.
- Simulate **FULL OUTER JOIN** behavior in MySQL using `UNION`.

---

### 🧩 Queries Overview

#### 1. **INNER JOIN**
Retrieve all **bookings** and the respective **users** who made those bookings.
```sql
SELECT users.id, users.first_name, users.last_name, bookings.id AS booking_id, bookings.property_id, bookings.start_date, bookings.end_date
FROM users
INNER JOIN bookings ON users.id = bookings.user_id;