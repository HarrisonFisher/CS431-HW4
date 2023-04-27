

-- What flights are scheduled to depart Houston/Intercontinental today
SELECT Flight.Flight_No, Airline.Airline_Name, Departure.Scheduled_Departure
FROM Project1.Flight
JOIN Project1.Airline ON Flight.Airline_ID = Airline.Airline_ID
JOIN Project1.Departure ON Flight.Flight_No = Departure.Flight_No
JOIN Project1.Airport ON Departure.Departing_To = Airport.Airport_ID
WHERE Airport.Airport_Name = 'Houston/Intercontinental'
