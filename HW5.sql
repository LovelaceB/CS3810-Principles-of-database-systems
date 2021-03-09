
CREATE TABLE Customer(
C_ID SERIAL PRIMARY KEY,
First_Name VARCHAR,
Last_Name VARCHAR,
Address VARCHAR,
City VARCHAR,
State VARCHAR,
Zip VARCHAR,
Phone VARCHAR,
Email VARCHAR
);



CREATE TABLE Mailing_Address(
C_ID BIGINT REFERENCES Customer(C_ID),
Street VARCHAR,
City VARCHAR,
Province_State VARCHAR,
Postal_Code BIGINT,
Country VARCHAR,
PRIMARY KEY (C_ID, Street, City, Province_State, Postal_Code)
);

CREATE TABLE Airline(
Airline_Code BIGINT,
Airline_Name VARCHAR,
PRIMARY KEY (Airline_Code)
);

CREATE TABLE Flight(
Airline_Code BIGINT REFERENCES Airline(Airline_Code),
Origin_City_Name VARCHAR, 
Dest_City_Name VARCHAR, 
Flight_Num BIGINT,
Length_Time REAL,
Booking_Num BIGINT,
Time_Departure REAL,
Date_Departure BIGINT,
Time_Arrival REAL,
Date_Arrival BIGINT,
PRIMARY KEY (Flight_Num)
);

CREATE TABLE Booking(
C_ID SERIAL REFERENCES Customer(C_ID),
First_Name VARCHAR, --REFERENCES Customer(First_Name),
Last_Name VARCHAR, --REFERENCES Customer(Last_Name),

Booking_Num BIGINT,
Date_Booking BIGINT,
Origin_City VARCHAR,
Dest_City VARCHAR,
Flight_Num BIGINT REFERENCES Flight(Flight_Num),

PRIMARY KEY (C_ID, First_Name, Last_Name)
);
