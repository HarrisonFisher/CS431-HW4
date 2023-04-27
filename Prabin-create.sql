CREATE SCHEMA IF NOT EXISTS airport_schema;

USE airport_schema;

CREATE TABLE airports (
    airport_code VARCHAR(3) PRIMARY KEY,
    airport_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255),
    country VARCHAR(255) NOT NULL
);

CREATE TABLE airport_schedule (
    airport_code VARCHAR(3) NOT NULL,
    scheduled_departure TIMESTAMP NOT NULL,
    scheduled_arrival TIMESTAMP NOT NULL,
    FOREIGN KEY (airport_code) REFERENCES airports(airport_code),
    PRIMARY KEY (airport_code, scheduled_departure, scheduled_arrival)
);

CREATE TABLE airlines (
    airline_name VARCHAR(255) PRIMARY KEY,
    airline_code VARCHAR(2) NOT NULL
);

CREATE TABLE flights (
    flight_no INT PRIMARY KEY,
    plane_type VARCHAR(255) NOT NULL,
    departed BOOLEAN NOT NULL,
    arrived BOOLEAN NOT NULL,
    early BOOLEAN NOT NULL,
    late BOOLEAN NOT NULL,
    remarks VARCHAR(255),
    baggage_claim VARCHAR(255),
    estimated_departure TIMESTAMP,
    departure_terminal VARCHAR(255),
    departure_gate VARCHAR(255),
    estimated_arrival TIMESTAMP,
    arrival_gate VARCHAR(255),
    arrival_terminal VARCHAR(255),
    departing_from VARCHAR(3) NOT NULL,
    arrival_at VARCHAR(3) NOT NULL,
    FOREIGN KEY (departing_from) REFERENCES airport_schedule(airport_code),
    FOREIGN KEY (arrival_at) REFERENCES airport_schedule(airport_code)
);

CREATE TABLE flight_schedule (
    flight_no INT NOT NULL,
    departing_from VARCHAR(3) NOT NULL,
    departure_time TIMESTAMP NOT NULL,
    arrival_at VARCHAR(3) NOT NULL,
    arrival_time TIMESTAMP NOT NULL,
    FOREIGN KEY (flight_no) REFERENCES flights(flight_no),
    FOREIGN KEY (departing_from) REFERENCES airports(airport_code),
    FOREIGN KEY (arrival_at) REFERENCES airports(airport_code),
    PRIMARY KEY (flight_no, departing_from, departure_time, arrival_at, arrival_time)
);
