# Airbnb Database - ER Diagram

## Entities
- User
- Property
- Booking
- Payment
- Review
- Location
- Amenity
- Property_Amenity (Join table)

## Relationships
- User (1) → (M) Property
- User (1) → (M) Booking
- Property (1) → (M) Booking
- Booking (1) → (1) Payment
- Property (1) → (M) Review
- Property (M) → (M) Amenity (via Property_Amenity)
- Property (M) → (1) Location

## Tool Used
Created using [Draw.io](https://app.diagrams.net/)

## File
`ERD/airbnb_erd.png`
