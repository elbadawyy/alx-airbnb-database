# 🧩 Normalization Process – Airbnb Database

## 1. Overview
Normalization ensures our database is efficient, consistent, and free from redundancy.  
For this Airbnb-like database, normalization has been applied up to **Third Normal Form (3NF)**.

---

## 2. Entities Identified
The main entities in the system are:

- **Users** – stores host and guest details  
- **Properties** – contains information about listed accommodations  
- **Bookings** – holds reservation details  
- **Payments** – tracks all financial transactions  
- **Reviews** – user feedback for properties  
- **Property_Images** – stores multiple images per property  
- **Amenities** – contains property features, linked via a pivot table `property_amenity`

---

## 3. Normalization Steps

### 3.1 First Normal Form (1NF)
**Rule:** Each field must contain only atomic (indivisible) values, and there should be no repeating groups.

**Changes Applied:**
- Created a separate `property_images` table to store multiple images for each property.  
- Ensured user contact details (email, phone) are single-valued and unique.  
- Each booking record has one check-in and one check-out date (no multiple values in a single column).

---

### 3.2 Second Normal Form (2NF)
**Rule:** Must first satisfy 1NF, and all non-key attributes must depend on the entire primary key.

**Changes Applied:**
- Removed partial dependencies by referencing users and properties using foreign keys (`user_id`, `property_id`).  
- Booking details (check_in, check_out, total_price) depend entirely on `booking_id`, not on part of a composite key.  
- Moved user-specific data (like name or email) out of the booking table into the `users` table.

---

### 3.3 Third Normal Form (3NF)
**Rule:** Must satisfy 2NF, and there should be no transitive dependencies (non-key attributes depending on other non-key attributes).

**Changes Applied:**
- Moved payment data (amount, method, status, transaction_id) into a separate `payments` table, related via `booking_id`.  
- Ensured that location fields (city, country, address) exist only in the `properties` table, not repeated elsewhere.  
- Removed derived or calculated fields (e.g., total_nights) that can be computed when needed.

---

## 4. Benefits of Normalization
After normalization, the database:
- ✅ Reduces redundancy  
- ✅ Improves data integrity and consistency  
- ✅ Enhances query performance and scalability  
- ✅ Simplifies maintenance and updates  

---

## 5. Normalization Level Achieved
The final database design satisfies **Third Normal Form (3NF)**.

---
