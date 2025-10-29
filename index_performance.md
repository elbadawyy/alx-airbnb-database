# ⚡ ALX Airbnb Database - Implement Indexes for Optimization

## 🎯 Objective
Improve query performance by identifying frequently used columns and creating indexes on them.

---

## 🧠 Learning Focus
- Understand how **indexes** improve query speed.
- Identify high-usage columns in `User`, `Booking`, and `Property` tables.
- Use **EXPLAIN** or **ANALYZE** to measure query performance before and after indexing.

---

## 🧩 Steps

### 1. Identify High-Usage Columns
Look for columns that are frequently used in:
- **WHERE** clauses
- **JOIN** conditions
- **ORDER BY** statements

Example columns:
- `users.email`
- `bookings.user_id`
- `bookings.property_id`
- `properties.city`

---

### 2. Create Indexes
Use the `CREATE INDEX` statement to optimize query performance.

**File:** `database_index.sql`

```sql
-- Create index on users email for faster lookups
CREATE INDEX idx_users_email ON users(email);

-- Create index on bookings.user_id for frequent joins
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id to speed up property queries
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.city for faster searches and filters
CREATE INDEX idx_properties_city ON properties(city);