-- Insert data into Airline table
INSERT INTO airline_db.Airline (Airline_Name)
VALUES ('Delta'), ('United'), ('American'), ('Southwest');

-- Insert data into Flight table
INSERT INTO airline_db.Flight (Flight_No, Airline_ID, Plane_Type, Departed, Arrived, Early, Late, Remarks)
VALUES ('DL123', 1, 'Boeing 737', true, true, false, false, 'On time'),
('UA456', 2, 'Airbus A320', true, true, false, false, 'On time'),
('AA789', 3, 'Boeing 747', true, true, false, false, 'On time'),
('WN012', 4, 'Boeing 737', true, true, false, false, 'On time');

-- Insert data into Departure table
INSERT INTO airline_db.Departure (Flight_No, Departing_To, Scheduled_Departure, Estimated_Departure, Departure_Terminal, Departure_Gate)
VALUES ('DL123', 'Atlanta', '2023-04-26 15:30:00', '2023-04-26 15:35:00', 'Terminal A', 'Gate 1'),
('UA456', 'Chicago', '2023-04-26 16:00:00', '2023-04-26 16:05:00', 'Terminal B', 'Gate 2'),
('AA789', 'New York', '2023-04-26 16:30:00', '2023-04-26 16:40:00', 'Terminal C', 'Gate 3'),
('WN012', 'Las Vegas', '2023-04-26 17:00:00', '2023-04-26 17:10:00', 'Terminal D', 'Gate 4');

-- Insert data into Arrival table
INSERT INTO airline_db.Arrival (Flight_No, Arriving_From, Scheduled_Arrival, Estimated_Arrival, Arrival_Terminal, Arrival_Gate)
VALUES ('DL123', 'New York', '2023-04-26 18:30:00', '2023-04-26 18:35:00', 'Terminal A', 'Gate 1'),
('UA456', 'Los Angeles', '2023-04-26 19:00:00', '2023-04-26 19:05:00', 'Terminal B', 'Gate 2'),
('AA789', 'Miami', '2023-04-26 19:30:00', '2023-04-26 19:40:00', 'Terminal C', 'Gate 3'),
('WN012', 'Dallas', '2023-04-26 20:00:00', '2023-04-26 20:10:00', 'Terminal D', 'Gate 4');

-- Insert data into Baggage_Claim table
INSERT INTO airline_db.Baggage_Claim (Flight_No, Carousel)
VALUES ('DL123', 'Carousel 1'),
('UA456', 'Carousel 2'),
('AA789', 'Carousel 3'),
('WN012', 'Carousel 4');

-- Insert data into Airport table
INSERT INTO airline_db.Airport (Airport_Name, Airport_City)
VALUES ('Hartsfield-Jackson Atlanta International Airport', 'Atlanta'),
('O'Hare International Airport', 'Chicago'),
('John F. Kennedy International Airport', 'New York'),
('Los Angeles International Airport', 'Los Angeles'),
('Miami International Airport', 'Miami'),
('McCarran International Airport', 'Las Vegas'),
('Dallas/Fort Worth International Airport', 'Dallas');
