
SET search_path TO Project1, public;

INSERT INTO Project1.Airline (Airline_ID, Airline_Name)
VALUES
(1, 'Southwest'),
(2, 'United'),
(3, 'American'),
(4, 'ANA (All Nippon Airways)'),
(5, 'Air New Zealand');

INSERT INTO Project1.Airport (Airport_ID, Airport_Name, Airport_City)
VALUES
(1, 'Denver International Airport', 'Denver'),
(2, 'McCarran International Airport', 'Las Vegas'),
(3, 'Dallas/Fort Worth International Airport', 'Dallas-Forth Worth'),
(4, 'San Francisco International Airport', 'San Francisco'),
(5, 'George Bush Intercontinental Airport', 'Houston');

INSERT INTO Project1.Flight (Flight_No, Airline_ID, Plane_Type, Departed, Arrived, Early, Late, Remarks)
VALUES
('2473', 1, '?', TRUE, FALSE, FALSE, FALSE, 'Departed'),
('1306', 2, '?', TRUE, FALSE, FALSE, FALSE, 'Departed'),
('1848', 3, '?', TRUE, FALSE, FALSE, TRUE, 'Delayed'),
('1513', 2, '?', TRUE, TRUE, FALSE, FALSE, 'Arrived'),
('6493', 4, '?', TRUE, TRUE, FALSE, FALSE, 'Arrived'),
('9212', 5, '?', TRUE, TRUE, FALSE, FALSE, 'Arrived');

INSERT INTO Project1.Departure (Flight_No, Departing_To, Scheduled_Departure, Estimated_Departure, Departure_Terminal, Departure_Gate)
VALUES
('2473', 1, '2023-04-27 09:55:00', '2023-04-27 10:25:00', 'T1', 'B9'),
('1306', 2, '2023-04-27 09:55:00', '2023-04-27 11:01:00', 'T3', 'E3'),
('1848', 4, '2023-04-27 10:00:00', '2023-04-27 15:30:00', 'T1', 'B24');

INSERT INTO Project1.Arrival (Flight_No, Arriving_From, Scheduled_Arrival, Estimated_Arrival, Arrival_Gate, Arrival_Terminal)
VALUES
('1513', 4, '2023-04-27 09:50:00', '2023-04-27 09:46:00', 'E6', 'T3'),
('6493', 4, '2023-04-27 09:50:00', '2023-04-27 09:46:00', 'E6', 'T3'),
('9212', 4, '2023-04-27 09:50:00', '2023-04-27 09:46:00', 'E6', 'T3');

INSERT INTO Project1.Baggage_Claim (Baggage_Claim_ID, Flight_No, Carousel)
VALUES
    (1, '2473', NULL),
    (2, '1306', NULL),
    (3, '1848', NULL),
    (4, '1513', 'Carousel:1'),
    (5, '6493', 'Carousel:1'),
    (6, '9212', 'Carousel:1');
