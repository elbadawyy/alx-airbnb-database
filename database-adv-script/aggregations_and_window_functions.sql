-- ============================================================
-- 🧮 ALX Airbnb Database - Aggregations and Window Functions
-- ============================================================
-- Author: Muhammad El-Badawy
-- Project: ALX Airbnb Database
-- Task: Apply Aggregations and Window Functions
-- Description:
--   This script contains SQL queries for analyzing Airbnb data using
--   aggregate and window functions such as COUNT() and RANK().
-- ============================================================


-- ============================================================
-- 1️⃣ Total Number of Bookings per User
-- ============================================================
-- Objective:
--   Find the total number of bookings made by each user.
-- ============================================================

SELECT 
    u.id AS user_id,
    u.first_name,
    u.last_name,
    COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.first_name, u.last_name
ORDER BY total_bookings DESC;


-- ============================================================
-- 2️⃣ Rank Properties by Total Number of Bookings
-- ============================================================
-- Objective:
--   Rank properties based on how many bookings they have received.
-- ============================================================

SELECT 
    p.id AS property_id,
    p.name AS property_name,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank_by_bookings
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY total_bookings DESC;
