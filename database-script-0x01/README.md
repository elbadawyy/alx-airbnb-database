# 🏗️ Airbnb Database Schema (DDL)

## Overview
This file defines the **Data Definition Language (DDL)** scripts for the Airbnb Database project as part of the **ALX Software Engineering Backend Module**.

The schema is designed for scalability, normalization (up to 3NF), and real-world functionality — modeling users, properties, bookings, payments, reviews, and amenities.

---

## 📚 Entities and Relationships

### 1. Users
- Represents both **hosts** and **guests**.
- One user can list multiple properties or make multiple bookings.

### 2. Properties
- Each property belongs to a host (`user_id`).
- A property can have many images, amenities, reviews, and bookings.

### 3. Bookings
- Links guests to properties.
- Tracks booking details like check-in/out dates, total price, and status.

### 4. Payments
- Connected to a single booking.
- Tracks transaction details, method, and status.

### 5. Reviews
- Written by users for properties.
- Includes rating (1–5) and optional comment.

### 6. Amenities & Property_Amenity
- Many-to-many relationship between properties and amenities.

### 7. Property_Images
- Each property can have multiple image URLs.

---

## ⚙️ Constraints and Indexing
- **Primary Keys:** Auto-incrementing IDs for all entities.
- **Foreign Keys:** Maintain referential integrity across relationships.
- **Unique Constraints:** Ensure no duplicate emails or transaction IDs.
- **Indexes:** Added on key searchable columns (e.g., `email`, `status`, `city`, `country`).

---

## 💡 Normalization Level
All tables are normalized up to **Third Normal Form (3NF)** to reduce redundancy and improve performance.

---

## 🧠 Author Notes
- SQL scripts are MySQL-compatible.  
- To run the schema:
  ```bash
  mysql -u <username> -p < database_name < schema.sql
