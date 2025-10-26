-- ============================================================
-- Airbnb Database Sample Data (Seeding Script)
-- Author: Muhammad Elbadawy
-- Project: ALX Airbnb Database - Data Seeding (DML)
-- ============================================================

-- Clear all data before seeding (for testing)
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE property_amenity;
TRUNCATE TABLE amenities;
TRUNCATE TABLE property_images;
TRUNCATE TABLE reviews;
TRUNCATE TABLE payments;
TRUNCATE TABLE bookings;
TRUNCATE TABLE properties;
TRUNCATE TABLE users;
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- USERS
-- ============================================================
INSERT INTO users (first_name, last_name, email, phone_number, password_hash, user_type)
VALUES
('Alice', 'Johnson', 'alice@example.com', '+12015550101', 'hashed_password_1', 'host'),
('Bob', 'Smith', 'bob@example.com', '+12015550102', 'hashed_password_2', 'guest'),
('Charlie', 'Brown', 'charlie@example.com', '+12015550103', 'hashed_password_3', 'host'),
('Diana', 'Lopez', 'diana@example.com', '+12015550104', 'hashed_password_4', 'guest'),
('Ethan', 'Williams', 'ethan@example.com', '+12015550105', 'hashed_password_5', 'guest');

-- ============================================================
-- PROPERTIES
-- ============================================================
INSERT INTO properties (user_id, title, description, address, city, country, price_per_night, max_guests)
VALUES
(1, 'Cozy Downtown Apartment', 'Modern apartment in the city center, close to shops and restaurants.', '123 Main St', 'New York', 'USA', 120.00, 2),
(1, 'Beachfront Villa', 'Spacious villa with private pool and ocean view.', '456 Ocean Drive', 'Miami', 'USA', 350.00, 6),
(3, 'Mountain Cabin Retreat', 'Rustic cabin surrounded by nature. Perfect for a peaceful getaway.', '789 Pine Road', 'Aspen', 'USA', 200.00, 4),
(3, 'Modern Loft Studio', 'Stylish loft with great lighting and open space.', '22 Sunset Blvd', 'Los Angeles', 'USA', 180.00, 3);

-- ============================================================
-- AMENITIES
-- ============================================================
INSERT INTO amenities (name)
VALUES
('Wi-Fi'),
('Air Conditioning'),
('Pool'),
('Parking'),
('Kitchen'),
('Washer'),
('TV'),
('Heating');

-- ============================================================
-- PROPERTY_AMENITY
-- ============================================================
INSERT INTO property_amenity (property_id, amenity_id)
VALUES
(1, 1), (1, 5), (1, 7),
(2, 1), (2, 2), (2, 3), (2, 5), (2, 7),
(3, 1), (3, 5), (3, 8),
(4, 1), (4, 2), (4, 5), (4, 7);

-- ============================================================
-- PROPERTY_IMAGES
-- ============================================================
INSERT INTO property_images (property_id, image_url)
VALUES
(1, 'https://example.com/images/apartment1.jpg'),
(1, 'https://example.com/images/apartment1_living.jpg'),
(2, 'https://example.com/images/villa1.jpg'),
(2, 'https://example.com/images/villa1_pool.jpg'),
(3, 'https://example.com/images/cabin1.jpg'),
(4, 'https://example.com/images/loft1.jpg');

-- ============================================================
-- BOOKINGS
-- ============================================================
INSERT INTO bookings (user_id, property_id, check_in, check_out, total_price, status)
VALUES
(2, 1, '2025-11-10', '2025-11-12', 240.00, 'confirmed'),
(4, 2, '2025-12-01', '2025-12-05', 1400.00, 'pending'),
(5, 3, '2025-10-20', '2025-10-23', 600.00, 'completed');

-- ============================================================
-- PAYMENTS
-- ============================================================
INSERT INTO payments (booking_id, amount, payment_method, transaction_id, status)
VALUES
(1, 240.00, 'credit_card', 'TXN1001', 'completed'),
(2, 1400.00, 'paypal', 'TXN1002', 'pending'),
(3, 600.00, 'bank_transfer', 'TXN1003', 'completed');

-- ============================================================
-- REVIEWS
-- ============================================================
INSERT INTO reviews (property_id, user_id, rating, comment)
VALUES
(1, 2, 5, 'Amazing stay! The apartment was spotless and well-located.'),
(2, 4, 4, 'Great villa, loved the pool. Would stay again!'),
(3, 5, 5, 'The cabin was peaceful and cozy, perfect for a retreat.');
