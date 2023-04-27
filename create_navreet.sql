-- Create schema for airline database
CREATE SCHEMA IF NOT EXISTS airline_db;

-- Create Airline table
CREATE TABLE IF NOT EXISTS airline_db.Airline (
  Airline_ID SERIAL PRIMARY KEY,
  Airline_Name VARCHAR(255) NOT NULL
);

-- Create Flight table
CREATE TABLE IF NOT EXISTS airline_db.Flight (
  Flight_No VARCHAR(10) PRIMARY KEY,
  Airline_ID INTEGER NOT NULL REFERENCES airline_db.Airline(Airline_ID),
  Plane_Type VARCHAR(255) NOT NULL,
  Departed BOOLEAN NOT NULL,
  Arrived BOOLEAN NOT NULL,
  Early BOOLEAN NOT NULL,
  Late BOOLEAN NOT NULL,
  Remarks VARCHAR(255) NOT NULL
);

-- Create Departure table
CREATE TABLE IF NOT EXISTS airline_db.Departure (
  Flight_No VARCHAR(10) NOT NULL REFERENCES airline_db.Flight(Flight_No),
  Departing_To VARCHAR(255) NOT NULL,
  Scheduled_Departure TIMESTAMP NOT NULL,
  Estimated_Departure TIMESTAMP,
  Departure_Terminal VARCHAR(255) NOT NULL,
  Departure_Gate VARCHAR(255) NOT NULL,
  PRIMARY KEY (Flight_No, Scheduled_Departure)
);

-- Create Arrival table
CREATE TABLE IF NOT EXISTS airline_db.Arrival (
  Flight_No VARCHAR(10) NOT NULL REFERENCES airline_db.Flight(Flight_No),
  Arriving_From VARCHAR(255) NOT NULL,
  Scheduled_Arrival TIMESTAMP NOT NULL,
  Estimated_Arrival TIMESTAMP,
  Arrival_Terminal VARCHAR(255),
  Arrival_Gate VARCHAR(255),
  PRIMARY KEY (Flight_No, Scheduled_Arrival)
);

-- Create Baggage_Claim table
CREATE TABLE IF NOT EXISTS airline_db.Baggage_Claim (
  Baggage_Claim_ID SERIAL PRIMARY KEY,
  Flight_No VARCHAR(10) NOT NULL REFERENCES airline_db.Flight(Flight_No),
  Carousel VARCHAR(255)
);

-- Create Airport table
CREATE TABLE IF NOT EXISTS airline_db.Airport (
  Airport_ID SERIAL PRIMARY KEY,
  Airport_Name VARCHAR(255) NOT NULL,
  Airport_City VARCHAR(255) NOT NULL
);
