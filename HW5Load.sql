COPY Airline( Airline_Code, Airline_Name)
FROM 'C:\Users\Benjewman\Desktop\Airline.csv' DELIMITER ',' CSV HEADER;
COPY Flight( Airline_Code, Origin_City_Name, Dest_City_Name, Flight_Num, Length_Time, Booking_Num, Time_Departure, Date_Departure, Time_Arrival, Date_Arrival)
FROM 'C:\Users\Benjewman\Desktop\Flights.csv' DELIMITER ',' CSV HEADER;