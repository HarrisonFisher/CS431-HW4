
SET search_path TO Project1, public;

-- Insert these into flight_info table
INSERT INTO Project1.flight_info (Flight_No, Airline, Plane_Type, Arrival_Departure, Gate, Terminal, To_From, Arrival_Departure_Time, Arrival_Departure_Details, Remarks, Baggage_Claim)
VALUES 
('2473', 'Southwest', '?', TRUE, 'B9', 'T1', 'Denver', '10:25 AM', '10:25 AM', 'Departed', NULL),
('1306', 'United', '?', TRUE, 'E3', 'T3', 'Las Vegas', '11:01 AM', '11:01 AM', 'Departed', NULL),
('1848', 'American', '?', TRUE, 'B24', 'T1', 'Dallas-Forth Worth', '3:30 PM', '3:30 PM', 'Delayed', NULL),
('1513', 'United', '?', FALSE, 'E6', 'T3', 'Houston/Intercontinental', '9:50 AM', '9:46 AM', 'Arrived', 'Carousel:1'),
('6493', 'ANA (All Nippon Airways)', '?', FALSE, 'E6', 'T3', 'Houston/Intercontinental', '9:50 AM', '9:46 AM', 'Arrived', 'Carousel:1'),
('9212', 'Air New Zealand', '?', FALSE, 'E6', 'T3', 'Houston/Intercontinental', '9:50 AM', '9:46 AM', 'Arrived', 'Carousel:1');