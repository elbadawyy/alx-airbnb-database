-- 🏨 ALX Airbnb Database - Performance Optimization Script
-- Objective: Retrieve booking details with related user, property, and payment info
-- and optimize the query for faster performance.

-- Step 1: Initial Complex Query (Before Optimization)
-- This version retrieves all bookings with user, property, and payment details.
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
LEFT JOIN payments pay ON pay.booking_id = b.id;

-- Step 2: Optimized Query (After Analysis)
-- Optimization applied:
-- - Only select required columns
-- - Use INNER JOIN where appropriate
-- - Leverage existing indexes (e.g., user_id, property_id)
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
LEFT JOIN payments pay ON pay.booking_id = b.id;
