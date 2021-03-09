\o 'C:/Users/Benjewman/Desktop/output.out'
--Ben Lovelace HW1
--Creating table Countries with seven columns
CREATE TABLE Countries(
name VARCHAR(20),
latitude VARCHAR(8),
longitude VARCHAR(8),
area INTEGER,
population INTEGER,
gdp REAL,
gdpYear INTEGER
);
--Populating the Countries table (4b)
INSERT INTO Countries VALUES('Germany','51 00 N','9 00E',357022,80594017,3979,2016);
INSERT INTO Countries VALUES('Netherlands','52 30 N','54 50 E',41543,17084719,870.8,2016);
INSERT INTO Countries VALUES('Belgium','50 50 N','4 00 E',30528,11491346,508.6,20160);
INSERT INTO Countries VALUES('Luxembourg','49 45 N','60 10 E',2586,594130,587.4,2016);
INSERT INTO Countries VALUES('Poland','52 00 N','20 00 E',312685,38476269,1.052,2016);
INSERT INTO Countries VALUES('Czechia','49 45 N','15 30 E',78867,10674723,3509,2016);
INSERT INTO Countries VALUES('Austria','47 20 N','13 20 E',83871,8745413,4166,2016);
INSERT INTO Countries VALUES('France','46 00 N','2 00 E',643801,67106161,2699,2016);
INSERT INTO Countries VALUES('Switzerland','47 00 N','8 00 E',41277,8236303,496,2016);

--Creating a table that contains the countries of interest and their border countries(4a)
CREATE TABLE borders(
CountryName VARCHAR(20),
Border	    VARCHAR(20)
);
--Populating borders table(4b)
INSERT INTO borders VALUES('Germany','Austria');
INSERT INTO borders VALUES('Germany','Belgium');
INSERT INTO borders VALUES('Germany','Czechia');
INSERT INTO borders VALUES('Germany','Denmark');
INSERT INTO borders VALUES('Germany','France');
INSERT INTO borders VALUES('Germany','Luxemborg');
INSERT INTO borders VALUES('Germany','Netherlands');
INSERT INTO borders VALUES('Germany','Poland');
INSERT INTO borders VALUES('Germany','Switzerland');
INSERT INTO borders VALUES('Netherlands','Belgium');
INSERT INTO borders VALUES('Luxemborg','France');
INSERT INTO borders VALUES('Luxemborg','Belgium');
INSERT INTO borders VALUES('Poland','Czechia');
INSERT INTO borders VALUES('Czechia','Austria');
INSERT INTO borders VALUES('Austria','Switzerland');
INSERT INTO borders VALUES('France','Belgium');
INSERT INTO borders VALUES('France','Switzerland');

--Selecting all countries that border Germany(4c)
SELECT border FROM borders WHERE countryname='Germany';
--Selecting countries from Countries table that have a population greater than 35 million(4d)
SELECT name FROM Countries WHERE population>35000000;
--Selecting countries that border Germany and have a population greater than 35 million(4e)
SELECT Countries.name FROM Countries,borders WHERE population>35000000 AND countryname='Germany';
\o

