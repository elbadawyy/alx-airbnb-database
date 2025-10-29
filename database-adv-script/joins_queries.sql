-- ==============================================================
-- Project: ALX Airbnb Database Module
-- Task: 0 - Write Complex Queries with Joins
-- Objective: Demonstrate INNER JOIN, LEFT JOIN, and FULL OUTER JOIN
-- ==============================================================

-- 🔹 1. INNER JOIN
-- Retrieve all bookings and the respective users who made those bookings.
SELECT 
    users.id AS user_id,
    users.first_name,
    users.last_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
INNER JOIN 
    bookings
ON 
    users.id = bookings.user_id;

-- 🔹 2. LEFT JOIN
-- Retrieve all properties and their reviews, including properties that have no reviews.
SELECT 
    properties.id AS property_id,
    properties.title AS property_title,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM 
    properties
LEFT JOIN 
    reviews
ON 
    properties.id = reviews.property_id;

-- 🔹 3. FULL OUTER JOIN
-- Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
-- ⚠️ Note: MySQL does not support FULL OUTER JOIN directly.
-- The solution uses a UNION of LEFT JOIN and RIGHT JOIN to simulate it.
SELECT 
    users.id AS user_id,
    users.first_name,
    users.last_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
LEFT JOIN 
    bookings
ON 
    users.id = bookings.user_id

UNION

SELECT 
    users.id AS user_id,
    users.first_name,
    users.last_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
RIGHT JOIN 
    bookings
ON 
    users.id = bookings.user_id;

-- ==============================================================
-- END OF FILE
-- ==============================================================
