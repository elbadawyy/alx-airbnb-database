-- 🏨 ALX Airbnb Database - Table Partitioning
-- Objective: Improve performance of large Booking table by partitioning by start_date.

-- Step 1: Recreate a large Booking table with partitioning by YEAR(start_date)
DROP TABLE IF EXISTS bookings_partitioned;

CREATE TABLE bookings_partitioned (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (property_id) REFERENCES properties(id)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Step 2: Insert sample data (for testing partitioned queries)
INSERT INTO bookings_partitioned (user_id, property_id, start_date, end_date, total_amount)
VALUES
(1, 10, '2023-07-10', '2023-07-15', 400.00),
(2, 11, '2024-03-20', '2024-03-22', 300.00),
(3, 12, '2025-01-12', '2025-01-14', 200.00);

-- Step 3: Compare performance before and after partitioning using EXPLAIN ANALYZE

-- Query before partitioning (on regular bookings table)
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Query after partitioning (on partitioned table)
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
