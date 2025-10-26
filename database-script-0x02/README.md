# 🌍 Airbnb Database Seeding Script

## Overview
This script (`seed.sql`) populates the Airbnb database with **realistic sample data** for testing and demonstration purposes.

It complements the schema defined in `database-script-0x01/schema.sql`, ensuring all entities (users, properties, bookings, payments, etc.) are linked logically.

---

## 🧩 Data Coverage

| Table              | Description |
|--------------------|-------------|
| **users**          | 5 users (mix of hosts and guests) |
| **properties**     | 4 properties listed by hosts |
| **amenities**      | 8 amenities to attach to properties |
| **property_amenity** | Defines many-to-many relationships |
| **property_images** | Each property has 1–2 sample images |
| **bookings**       | 3 bookings connecting guests to properties |
| **payments**       | Transactions linked to each booking |
| **reviews**        | Ratings and comments from guests |

---

## 🏡 Sample Relationships
- **Alice** (host) owns *2 properties*: “Cozy Downtown Apartment” and “Beachfront Villa”.
- **Charlie** (host) owns *2 properties*: “Mountain Cabin Retreat” and “Modern Loft Studio”.
- **Bob**, **Diana**, and **Ethan** are guests who make bookings and leave reviews.

---

## 💾 How to Use
Run this file **after creating the schema**.

```bash
mysql -u <username> -p <database_name> < database-script-0x02/seed.sql
