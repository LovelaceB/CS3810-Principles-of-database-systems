--Populating tables
--Ben Lovelace

COPY Carrier( Airline_Id, Unique_Carrier_Name, Unique_Carrier)
FROM 'C:\Users\Benjewman\Desktop\Carrier.csv' DELIMITER ',' CSV HEADER;
COPY State( State_Abr, State_Fips, State_Nm, WAC)
FROM 'C:\Users\Benjewman\Desktop\State.csv' DELIMITER ',' CSV HEADER;
COPY Aircraft( Aircraft_Type, Aircraft_Group, Aircraft_Config)
FROM 'C:\Users\Benjewman\Desktop\Aircraft.csv' DELIMITER ',' CSV HEADER;
COPY City( City_Market_ID, City_Name, State_Nm)
FROM 'C:\Users\Benjewman\Desktop\City.csv' DELIMITER ',' CSV HEADER;
COPY Airport( Airport_ID, Airport_SEQ_ID, City_Name, State_Name, Code)
FROM 'C:\Users\Benjewman\Desktop\Airport.csv' DELIMITER ',' CSV HEADER;
COPY Time( Year, Month, Quarter)
FROM 'C:\Users\Benjewman\Desktop\Time.csv' DELIMITER ',' CSV HEADER;
COPY Flight( Airline_ID, Origin_Airport_ID, Dest_Airport_ID, Month, Passengers, Freight, Distance, Mail, Aircraft_Type, Ramp_To_Ramp, Departures_Scheduled, Departures_Performed, Class, Seats)
FROM 'C:\Users\Benjewman\Desktop\Flight.csv' DELIMITER ',' CSV HEADER;