-- Query 1: What flights are scheduled to depart JFK today?
SELECT f.flight_no, f.plane_type, f.estimated_departure, f.estimated_arrival, s.scheduled_departure, s.scheduled_arrival
FROM airport_schema.flights f
JOIN airport_schema.airport_schedule s ON f.departing_from = s.airport_code
WHERE f.departed = false
AND f.arrived = false
AND f.estimated_departure BETWEEN '2023-04-27 00:00:00' AND '2023-04-27 23:59:59'
AND f.departing_from = 'JFK';

-- Query 2: What flights are scheduled to depart from JFK International Airport in the upcoming twelve hours for any location in the United States?
SELECT f.flight_no, f.plane_type, f.estimated_departure, f.estimated_arrival, s.scheduled_departure, s.scheduled_arrival
FROM airport_schema.flights f
JOIN airport_schema.airport_schedule s ON f.departing_from = s.airport_code
JOIN airport_schema.airports a ON a.airport_code = s.airport_code
WHERE f.departed = false
AND f.arrived = false
AND f.estimated_departure BETWEEN NOW() AND NOW() + INTERVAL 12 HOUR
AND a.country = 'USA'
AND f.departing_from = 'JFK';
