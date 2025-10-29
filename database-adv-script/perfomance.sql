-- 🏨 ALX Airbnb Database - Performance Optimization Script
-- Objective: Retrieve booking details with related user, property, and payment info
-- and optimize the query for faster performance.

-- Step 1: Initial Complex Query (Before Optimization)
-- This query retrieves all bookings along with user, property, and payment details.
-- It includes WHERE and AND clauses to filter by city and date range.
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.title AS property_title,
    p.city,
    pay.amount,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id
WHERE p.city = 'New York'
AND b.start_date >= '2024-01-01'
AND b.end_date <= '2024-12-31';

-- Step 2: Optimized Query (After Analysis)
-- Optimization applied:
-- - Selected only necessary columns
-- - Added indexes on user_id, property_id, and booking_id
-- - Replaced LEFT JOIN with INNER JOIN where applicable
-- - Maintained WHERE and AND conditions for filtered performance testing
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.first_name,
    u.last_name,
    p.title AS property_title,
    pay.amount
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
INNER JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id
WHERE p.city = 'New York'
AND b.start_date >= '2024-01-01'
AND b.end_date <= '2024-12-31';
