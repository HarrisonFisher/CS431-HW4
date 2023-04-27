-- Create the schema
CREATE SCHEMA IF NOT EXISTS Project1;

-- Create the Airline table
CREATE TABLE Project1.Airline (
    Airline_ID INTEGER PRIMARY KEY NOT NULL,
    Airline_Name VARCHAR(50) NOT NULL
);

-- Create the Airport table
CREATE TABLE Project1.Airport (
    Airport_ID INTEGER PRIMARY KEY NOT NULL,
    Airport_Name VARCHAR(50) NOT NULL,
    Airport_City VARCHAR(50) NOT NULL
);

-- Create the Flight table
CREATE TABLE Project1.Flight (
    Flight_No VARCHAR(10) PRIMARY KEY NOT NULL,
    Airline_ID INTEGER NOT NULL REFERENCES Project1.Airline(Airline_ID),
    Plane_Type VARCHAR(50) NOT NULL,
    Departed BOOLEAN NOT NULL,
    Arrived BOOLEAN NOT NULL,
    Early BOOLEAN NOT NULL,
    Late BOOLEAN NOT NULL,
    Remarks VARCHAR(50) NOT NULL
);

-- Create the Departure table
CREATE TABLE Project1.Departure (
    Flight_No VARCHAR(10) PRIMARY KEY,
    Departing_To INTEGER NOT NULL REFERENCES Project1.Airport(Airport_ID),
    Scheduled_Departure TIMESTAMP NOT NULL,
    Estimated_Departure TIMESTAMP,
    Departure_Terminal VARCHAR(10) NOT NULL,
    Departure_Gate VARCHAR(10) NOT NULL,
    FOREIGN KEY (Flight_No) REFERENCES Project1.Flight(Flight_No)
);

-- Create the Arrival table
CREATE TABLE Project1.Arrival (
    Flight_No VARCHAR(10) PRIMARY KEY,
    Arriving_From INTEGER NOT NULL REFERENCES Project1.Airport(Airport_ID),
    Scheduled_Arrival TIMESTAMP NOT NULL,
    Estimated_Arrival TIMESTAMP,
    Arrival_Gate VARCHAR(10),
    Arrival_Terminal VARCHAR(10),
    FOREIGN KEY (Flight_No) REFERENCES Project1.Flight(Flight_No)
);

-- Create the Baggage_Claim table
CREATE TABLE Project1.Baggage_Claim (
    Baggage_Claim_ID INTEGER PRIMARY KEY NOT NULL,
    Flight_No VARCHAR(10) NOT NULL REFERENCES Project1.Flight(Flight_No),
    Carousel VARCHAR(255)
);

