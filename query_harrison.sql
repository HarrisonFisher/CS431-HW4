

-- What flights are scheduled to depart Houston/Intercontinental today
SELECT *
FROM Project1.flight_info
WHERE Arrival_Departure = TRUE AND To_From = 'Houston/Intercontinental';
