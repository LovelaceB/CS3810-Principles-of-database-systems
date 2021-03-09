--Ben Lovelace HW3
--Creating the flight table

--Creating the Carrier table
CREATE TABLE Carrier(
Airline_ID BIGINT,
Unique_Carrier_Name VARCHAR(100),
Unique_Carrier VARCHAR(8),
PRIMARY KEY (Airline_ID)
);
--Creating Aircraft table
CREATE TABLE Aircraft(
Aircraft_Type INTEGER,
Aircraft_Group INTEGER,
Aircraft_Config INTEGER,
PRIMARY KEY (Aircraft_Type, Aircraft_Config)
);
--Creating State table 
CREATE TABLE State(
State_Abr VARCHAR(2),
State_Fips INTEGER,
State_NM VARCHAR(30),
WAC INTEGER,
PRIMARY KEY (State_NM)
);
--Creating City table
CREATE TABLE City(
City_Market_ID BIGINT,
City_Name VARCHAR(40),
State_NM VARCHAR(30) REFERENCES State(State_NM),
PRIMARY KEY (City_Name)
);
--Creating Airport table
CREATE TABLE Airport(
Airport_ID BIGINT,
Airport_SEQ_ID BIGINT,
City_Name VARCHAR(30), --REFERENCES City(City_Name),	
State_Name VARCHAR(30),
Code VARCHAR(6),
PRIMARY KEY (Airport_ID)
);
--Creating Time table
CREATE TABLE Time(
Year INTEGER,
Month INTEGER,
Quarter INTEGER,
PRIMARY KEY(Year,Month,Quarter)
);
CREATE TABLE Flight(
Airline_ID BIGINT REFERENCES Carrier(Airline_ID),
Origin_Airport_ID BIGINT REFERENCES Airport(Airport_ID),
Dest_Airport_ID BIGINT REFERENCES Airport(Airport_ID),
Month INTEGER, --REFERENCES Time(Month),
Passengers INTEGER,
Freight BIGINT,
Distance INTEGER,
Mail BIGINT,
Aircraft_Type INTEGER, --REFERENCES Aircraft(Aircraft_Type),
Ramp_To_Ramp INTEGER,
Departures_Scheduled INTEGER,
Departures_Performed INTEGER,
Class VARCHAR(1),
Seats BIGINT,
PRIMARY KEY(Airline_ID, Origin_Airport_ID, Dest_Airport_ID, Passengers, Seats, Freight)
);