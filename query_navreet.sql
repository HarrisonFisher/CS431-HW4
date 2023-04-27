SELECT f.Flight_No, a.Airline_Name, d.Departing_To, ar.Arriving_From
FROM airline_db.Flight f
INNER JOIN airline_db.Airline a ON f.Airline_ID = a.Airline_ID
INNER JOIN airline_db.Departure d ON f.Flight_No = d.Flight_No
INNER JOIN airline_db.Arrival ar ON f.Flight_No = ar.Flight_No
WHERE f.Departed = true AND f.Arrived = true AND f.Early = false AND f.Late = false AND f.Remarks = 'On time';
