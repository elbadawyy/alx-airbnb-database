# Monitor and Refine Database Performance

## Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## Step 1: Monitor Query Performance

We used `EXPLAIN ANALYZE` to inspect the execution plans of frequently used queries.

### Example 1: Fetch bookings with user and property details
```sql
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    b.start_date,
    b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE b.start_date >= '2024-01-01'
AND b.start_date < '2024-12-31';
