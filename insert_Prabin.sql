INSERT INTO airport_schema.airports (airport_code, airport_name, city, state, country)
VALUES ('JFK', 'John F. Kennedy International Airport', 'New York', 'NY', 'USA');

INSERT INTO airport_schema.airport_schedule (airport_code, scheduled_departure, scheduled_arrival)
VALUES ('JFK', '2023-04-27 08:00:00', '2023-04-27 11:00:00');

INSERT INTO airport_schema.airlines (airline_name, airline_code)
VALUES ('Delta Air Lines', 'DL');

INSERT INTO airport_schema.flights (flight_no, plane_type, departed, arrived, early, late, remarks, baggage_claim, estimated_departure, departure_terminal, departure_gate, estimated_arrival, arrival_gate, arrival_terminal, departing_from, arrival_at)
VALUES (1234, 'Boeing 737', true, false, false, true, '', 'B5', '2023-04-27 08:15:00', 'T1', 'A1', '2023-04-27 11:05:00', 'B3', 'T2', 'JFK', 'LAX');

INSERT INTO airport_schema.flight_schedule (flight_no, departing_from, departure_time, arrival_at, arrival_time)
VALUES (1234, 'JFK', '2023-04-27 08:15:00', 'LAX', '2023-04-27 11:05:00');
