-- 🏨 ALX Airbnb Database - Index Optimization Script
-- Objective: Create indexes to improve performance and measure their effect

-- Step 1: Create indexes on high-usage columns
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_city ON properties(city);

-- Step 2: Measure query performance BEFORE adding indexes
-- (Run this before the CREATE INDEX statements in a real test)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 10;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 25;

-- Step 3: Measure query performance AFTER adding indexes
-- (Run this after the CREATE INDEX statements)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 10;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 25;

-- Step 4: Verify index usage
-- MySQL’s EXPLAIN output will show "key=idx_bookings_user_id" or similar.
