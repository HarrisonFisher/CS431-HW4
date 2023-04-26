-- create schema
CREATE SCHEMA IF NOT EXISTS Project1;

-- create a table
CREATE TABLE Project1.flight_info (
Flight_No VARCHAR(10) PRIMARY KEY,
Airline VARCHAR(50),
Plane_Type VARCHAR(50),
Arrival_Departure BOOLEAN,
Gate VARCHAR(10),
Terminal VARCHAR(10),

To_From VARCHAR(50),
Arrival_Departure_Time VARCHAR(10),
Arrival_Departure_Details VARCHAR(100),
Remarks VARCHAR(50),
Baggage_Claim VARCHAR(10)
);