CREATE DATABASE cascading_DB;

CREATE TABLE tbl_country (
    CountryID INT PRIMARY KEY,  
    CountryName VARCHAR(50)   
);


INSERT INTO tbl_Country (CountryID, CountryName)
VALUES (1, 'India'), 
       (2, 'United States'),
       (3, 'Canada'),
       (4, 'Australia'),
       (5, 'Germany');




CREATE TABLE tbl_State (
    StateID INT PRIMARY KEY,          
    CountryID INT,                   
    StateName VARCHAR(50),           
);

INSERT INTO tbl_State (StateID, CountryID, StateName)
VALUES (1, 1, 'Maharashtra'), 
       (2, 1, 'Karnataka'),
       (3, 1, 'Tamil Nadu'),
       (4, 1, 'Gujarat'),
       (5, 1, 'West Bengal');



INSERT INTO tbl_State (StateID, CountryID, StateName)
VALUES (6, 2, 'California'), 
       (7, 2, 'Texas'),
       (8, 2, 'New York'),
       (9, 2, 'Florida'),
       (10, 2, 'Illinois');

INSERT INTO tbl_State (StateID, CountryID, StateName)
VALUES (11, 3, 'Ontario'), 
       (12, 3, 'Quebec'),
       (13, 3, 'British Columbia'),
       (14, 3, 'Alberta'),
       (15, 3, 'Manitoba');

INSERT INTO tbl_State (StateID, CountryID, StateName)
VALUES (16, 4, 'New South Wales'), 
       (17, 4, 'Victoria'),
       (18, 4, 'Queensland'),
       (19, 4, 'Western Australia'),
       (20, 4, 'South Australia');

INSERT INTO tbl_State (StateID, CountryID, StateName)
VALUES (21, 5, 'Bavaria'), 
       (22, 5, 'Baden-Württemberg'),
       (23, 5, 'North Rhine-Westphalia'),
       (24, 5, 'Hesse'),
       (25, 5, 'Saxony');


CREATE TABLE tbl_City (
    CityID INT PRIMARY KEY IDENTITY(1,1),
    StateID INT,                          
    CityName VARCHAR(50),                 
);

INSERT INTO tbl_City (StateID, CityName)
VALUES (1, 'Mumbai'),
       (1, 'Pune'),
       (1, 'Nagpur'),
       (1, 'Nashik'),
       (1, 'Thane');

INSERT INTO tbl_City (StateID, CityName)
VALUES (2, 'Bengaluru'),
       (2, 'Mysore'),
       (2, 'Mangalore'),
       (2, 'Hubli'),
       (2, 'Belgaum');

INSERT INTO tbl_City (StateID, CityName)
VALUES (3, 'Chennai'),
       (3, 'Coimbatore'),
       (3, 'Madurai'),
       (3, 'Tiruchirappalli'),
       (3, 'Salem');

INSERT INTO tbl_City (StateID, CityName)
VALUES (4, 'Ahmedabad'),
       (4, 'Surat'),
       (4, 'Vadodara'),
       (4, 'Rajkot'),
       (4, 'Bhavnagar');

INSERT INTO tbl_City (StateID, CityName)
VALUES (5, 'Kolkata'),
       (5, 'Howrah'),
       (5, 'Durgapur'),
       (5, 'Asansol'),
       (5, 'Siliguri');

INSERT INTO tbl_City (StateID, CityName)
VALUES (6, 'Los Angeles'),
       (6, 'San Francisco'),
       (6, 'San Diego'),
       (6, 'Sacramento'),
       (6, 'San Jose');

INSERT INTO tbl_City (StateID, CityName)
VALUES (7, 'Houston'),
       (7, 'Dallas'),
       (7, 'Austin'),
       (7, 'San Antonio'),
       (7, 'Fort Worth');

INSERT INTO tbl_City (StateID, CityName)
VALUES (8, 'New York City'),
       (8, 'Buffalo'),
       (8, 'Rochester'),
       (8, 'Yonkers'),
       (8, 'Syracuse');

INSERT INTO tbl_City (StateID, CityName)
VALUES (9, 'Miami'),
       (9, 'Orlando'),
       (9, 'Tampa'),
       (9, 'Jacksonville'),
       (9, 'St. Petersburg');

INSERT INTO tbl_City (StateID, CityName)
VALUES (10, 'Chicago'),
       (10, 'Aurora'),
       (10, 'Naperville'),
       (10, 'Joliet'),
       (10, 'Rockford');

INSERT INTO tbl_City (StateID, CityName)
VALUES (11, 'Toronto'),
       (11, 'Ottawa'),
       (11, 'Mississauga'),
       (11, 'Brampton'),
       (11, 'Hamilton');

INSERT INTO tbl_City (StateID, CityName)
VALUES (12, 'Montreal'),
       (12, 'Quebec City'),
       (12, 'Laval'),
       (12, 'Gatineau'),
       (12, 'Longueuil');

INSERT INTO tbl_City (StateID, CityName)
VALUES (13, 'Vancouver'),
       (13, 'Victoria'),
       (13, 'Surrey'),
       (13, 'Burnaby'),
       (13, 'Richmond');

INSERT INTO tbl_City (StateID, CityName)
VALUES (14, 'Calgary'),
       (14, 'Edmonton'),
       (14, 'Red Deer'),
       (14, 'Lethbridge'),
       (14, 'St. Albert');

INSERT INTO tbl_City (StateID, CityName)
VALUES (15, 'Winnipeg'),
       (15, 'Brandon'),
       (15, 'Steinbach'),
       (15, 'Thompson'),
       (15, 'Portage la Prairie');

INSERT INTO tbl_City (StateID, CityName)
VALUES (16, 'Sydney'),
       (16, 'Newcastle'),
       (16, 'Wollongong'),
       (16, 'Central Coast'),
       (16, 'Albury');

INSERT INTO tbl_City (StateID, CityName)
VALUES (17, 'Melbourne'),
       (17, 'Geelong'),
       (17, 'Ballarat'),
       (17, 'Bendigo'),
       (17, 'Shepparton');

INSERT INTO tbl_City (StateID, CityName)
VALUES (18, 'Brisbane'),
       (18, 'Gold Coast'),
       (18, 'Cairns'),
       (18, 'Townsville'),
       (18, 'Toowoomba');

INSERT INTO tbl_City (StateID, CityName)
VALUES (19, 'Perth'),
       (19, 'Mandurah'),
       (19, 'Bunbury'),
       (19, 'Geraldton'),
       (19, 'Kalgoorlie');

INSERT INTO tbl_City (StateID, CityName)
VALUES (20, 'Adelaide'),
       (20, 'Mount Gambier'),
       (20, 'Gawler'),
       (20, 'Whyalla'),
       (20, 'Murray Bridge');

INSERT INTO tbl_City (StateID, CityName)
VALUES (21, 'Munich'),
       (21, 'Nuremberg'),
       (21, 'Augsburg'),
       (21, 'Regensburg'),
       (21, 'Würzburg');

INSERT INTO tbl_City (StateID, CityName)
VALUES (22, 'Stuttgart'),
       (22, 'Karlsruhe'),
       (22, 'Heidelberg'),
       (22, 'Freiburg'),
       (22, 'Mannheim');

INSERT INTO tbl_City (StateID, CityName)
VALUES (23, 'Cologne'),
       (23, 'Düsseldorf'),
       (23, 'Dortmund'),
       (23, 'Essen'),
       (23, 'Duisburg');

INSERT INTO tbl_City (StateID, CityName)
VALUES (24, 'Frankfurt'),
       (24, 'Wiesbaden'),
       (24, 'Kassel'),
       (24, 'Darmstadt'),
       (24, 'Offenbach');

INSERT INTO tbl_City (StateID, CityName)
VALUES (25, 'Dresden'),
       (25, 'Leipzig'),
       (25, 'Chemnitz'),
       (25, 'Zwickau'),
       (25, 'Plauen');

SELECT * FROM tbl_country;
SELECT * FROM tbl_State;
Select * from tbl_city;

SELECT COUNTRY.CountryName, STATE.StateName, City.CityName FROM tbl_country AS COUNTRY
INNER JOIN tbl_State AS STATE ON COUNTRY.CountryID = STATE.CountryID
INNER JOIN tbl_City AS City ON STATE.StateID = City.StateID;


CREATE PROCEDURE usp_GetCountries
AS
BEGIN
    SELECT CountryID, CountryName
    FROM tbl_Country
END



CREATE PROCEDURE usp_GetSelectedData
    @CountryID INT = NULL,
    @StateID INT = NULL,
    @CityID INT = NULL
AS
BEGIN
    SELECT 
        c.CountryName AS Country,
        s.StateName AS State,
        ci.CityName AS City
    FROM 
        tbl_Country c
    LEFT JOIN 
        tbl_State s ON s.CountryID = c.CountryID
    LEFT JOIN 
        tbl_City ci ON ci.StateID = s.StateID
    WHERE 
        (@CountryID IS NULL OR c.CountryID = @CountryID) AND
        (@StateID IS NULL OR s.StateID = @StateID) AND
        (@CityID IS NULL OR ci.CityID = @CityID);
END





CREATE PROCEDURE usp_GetStatesByCountry
    @CountryID INT
AS
BEGIN
    SELECT StateID, StateName
    FROM tbl_State
    WHERE CountryID = @CountryID
END



CREATE PROCEDURE usp_GetCitiesByState
    @StateID INT
AS
BEGIN
    SELECT CityID, CityName
    FROM tbl_City
    WHERE StateID = @StateID
END






CREATE TABLE tbl_SelectedLocations
(
    ID INT IDENTITY(1,1) PRIMARY KEY,  -- Auto-incrementing primary key
    CountryID INT NOT NULL,
    StateID INT NOT NULL,
    CityID INT NOT NULL,
    CreatedDate DATETIME DEFAULT GETDATE()  -- Optional: Store the date/time when the record was created
);


CREATE PROCEDURE usp_SaveSelection
    @CountryID INT,
    @StateID INT,
    @CityID INT
AS
BEGIN
    INSERT INTO tbl_SelectedLocations (CountryID, StateID, CityID)
    VALUES (@CountryID, @StateID, @CityID);
END


CREATE PROCEDURE usp_RetrieveSelections
AS
BEGIN
    SELECT 
        sl.ID,
        c.CountryName AS Country_Name,
        s.StateName AS State_Name,
        ci.CityName AS City_Name
    FROM 
        tbl_SelectedLocations sl
    INNER JOIN 
        tbl_Country c ON sl.CountryID = c.CountryID
    INNER JOIN 
        tbl_State s ON sl.StateID = s.StateID
    INNER JOIN 
        tbl_City ci ON sl.CityID = ci.CityID;
END


select * from tbl_SelectedLocations;