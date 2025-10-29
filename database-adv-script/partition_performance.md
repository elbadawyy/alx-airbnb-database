# 🧩 ALX Airbnb Database - Partitioning Performance Report

## 🎯 Objective
The goal of this task is to optimize query performance for large datasets by **partitioning** the `bookings` table based on the `start_date` column.

---

## 🧠 Partitioning Strategy
We implemented **RANGE partitioning** by the **year of `start_date`**.  
This allows the database engine to scan only the relevant partitions for a specific date range, improving efficiency and reducing I/O overhead.

### SQL Implementation
The `bookings_partitioned` table was created using:

```sql
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
