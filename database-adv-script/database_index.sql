-- ============================================================
-- 📂 File: database_index.sql
-- 🏨 Project: ALX Airbnb Database - Index Optimization
-- ============================================================
-- Objective:
-- Identify and create indexes to improve query performance
-- across frequently used tables: users, bookings, and properties.
-- ============================================================

EXPLAIN SELECT * FROM bookings WHERE user_id = 5;



-- 🔍 1. Index on users table
-- Purpose: Speeds up searches and unique lookups by email
CREATE INDEX idx_users_email ON users(email);

-- 🔍 2. Index on bookings table (user_id)
-- Purpose: Optimizes JOINs and WHERE clauses filtering by user
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- 🔍 3. Index on bookings table (property_id)
-- Purpose: Improves performance for queries joining bookings with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- 🔍 4. Index on properties table (city)
-- Purpose: Enhances performance for searches and filters by city
CREATE INDEX idx_properties_city ON properties(city);

-- ============================================================


EXPLAIN SELECT * FROM bookings WHERE user_id = 5;

ANALYZE SELECT * FROM bookings WHERE property_id = 25;
