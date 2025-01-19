-- BUS COMPANY
-- Create BusCompany table
CREATE TABLE BusCompany (
    companyID NUMBER(10) PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    address VARCHAR2(255) NOT NULL,
    phoneNumber VARCHAR2(20) NOT NULL,
    email VARCHAR2(255)
);

-- Add two rows of data to BusCompany
BEGIN
    INSERT INTO BusCompany (companyID, name, address, phoneNumber, email) VALUES (1, 'Bus Company A', '123 A Street', '555-123-4567', 'companyA@gmail.com');
    INSERT INTO BusCompany (companyID, name, address, phoneNumber, email) VALUES (2, 'Bus Company B', '456 B Street', '555-987-6543', 'companyB@gmail.com');
END;
/


-- ROUTE
-- Create Route table
CREATE TABLE Route (
    routeID NUMBER(10) PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    length NUMBER(10, 2) NOT NULL,
    companyID NUMBER(10) NOT NULL,
    FOREIGN KEY (companyID) REFERENCES BusCompany(companyID)
);

-- Add 4 rows of data to Route
BEGIN
    INSERT INTO Route (routeID, name, length, companyID) VALUES (1, 'Route A1', 10.5, 1);
    INSERT INTO Route (routeID, name, length, companyID) VALUES (2, 'Route A2', 15.3, 1);
    INSERT INTO Route (routeID, name, length, companyID) VALUES (3, 'Route B1', 12.7, 2);
    INSERT INTO Route (routeID, name, length, companyID) VALUES (4, 'Route B2', 18.4, 2);
END;
/

-- BUS
-- Create Bus table
CREATE TABLE Bus (
    busID NUMBER(10) PRIMARY KEY,
    model VARCHAR2(255) NOT NULL,
    mileage NUMBER(10, 2) NOT NULL,
    "year" NUMBER(4) NOT NULL
);

-- Add 3 rows of data to Bus
BEGIN
    INSERT INTO Bus (busID, model, mileage, "year") VALUES (1, 'Model X1', 25000.5, 2018);
    INSERT INTO Bus (busID, model, mileage, "year") VALUES (2, 'Model Y1', 34000.8, 2019);
    INSERT INTO Bus (busID, model, mileage, "year") VALUES (3, 'Model Z1', 15000.3, 2020);
END;
/

-- PASSENGER
-- Create Passenger table
CREATE TABLE Passenger (
  passengerID NUMBER PRIMARY KEY,
  fName VARCHAR2(100) NOT NULL,
  mName VARCHAR2(100),
  lName VARCHAR2(100) NOT NULL,
  email VARCHAR2(100) NOT NULL,
  phoneNumber VARCHAR2(20) NOT NULL,
  discountStatus NUMBER(1) NOT NULL -- 1 for True (discounted), 0 for False (not discounted)
);

-- Add 40 rows of data to Passneger
BEGIN
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (1, 'John', 'A', 'Smith', 'johnsmith1@gmail.com', '555-111-1111', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (2, 'Jane', 'B', 'Doe', 'janedoe2@gmail.com', '555-222-2222', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (3, 'Michael', 'C', 'Johnson', 'michaeljohnson3@gmail.com', '555-333-3333', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (4, 'Emily', 'D', 'Brown', 'emilybrown4@gmail.com', '555-444-4444', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (5, 'William', 'E', 'Davis', 'williamdavis5@gmail.com', '555-555-5555', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (6, 'Emma', 'F', 'Miller', 'emmamiller6@gmail.com', '555-666-6666', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (7, 'James', 'G', 'Wilson', 'jameswilson7@gmail.com', '555-777-7777', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (8, 'Olivia', 'H', 'Moore', 'oliviamoore8@gmail.com', '555-888-8888', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (9, 'Benjamin', 'I', 'Taylor', 'benjamintaylor9@gmail.com', '555-999-9999', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (10, 'Amelia', 'J', 'Anderson', 'ameliaanderson10@gmail.com', '555-101-0101', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (11, 'Lucas', 'K', 'Thomas', 'lucasthomas11@gmail.com', '555-111-1112', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (12, 'Sophia', 'L', 'Jackson', 'sophiajackson12@gmail.com', '555-222-2223', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (13, 'Elijah', 'M', 'White', 'elijahwhite13@gmail.com', '555-333-3334', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (14, 'Isabella', 'N', 'Harris', 'isabellaharris14@gmail.com', '555-444-4445', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (15, 'Daniel', 'O', 'Martin', 'danielmartin15@gmail.com', '555-555-5556', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (16, 'Mia', 'P', 'Thompson', 'miathompson16@gmail.com', '555-666-6667', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (17, 'David', 'Q', 'Garcia', 'davidgarcia17@gmail.com', '555-777-7778', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (18, 'Ava', 'R', 'Martinez', 'avamartinez18@gmail.com', '555-888-8889', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (19, 'Joseph', 'S', 'Robinson', 'josephrobinson19@gmail.com', '555-999-9990', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (20, 'Charlotte', 'T', 'Clark', 'charlotteclark20@gmail.com', '555-101-0102', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (21, 'Samuel', 'U', 'Rodriguez', 'samuelrodriguez21@gmail.com', '555-111-1113', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (22, 'Harper', 'V', 'Lewis', 'harperlewis22@gmail.com', '555-222-2224', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (23, 'Anthony', 'W', 'Lee', 'anthonylee23@gmail.com', '555-333-3335', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (24, 'Evelyn', 'X', 'Walker', 'evelynwalker24@gmail.com', '555-444-4446', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (25, 'Andrew', 'Y', 'Hall', 'andrewhall25@gmail.com', '555-555-5557', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (26, 'Abigail', 'Z', 'Allen', 'abigailallen26@gmail.com', '555-666-6668', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (27, 'Christopher', 'A', 'Young', 'christopheryoung27@gmail.com', '555-777-7779', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (28, 'Lily', 'B', 'Hernandez', 'lilyhernandez28@gmail.com', '555-888-8880', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (29, 'Joshua', 'C', 'King', 'joshuaking29@gmail.com', '555-999-9991', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (30, 'Sofia', 'D', 'Wright', 'sofiawright30@gmail.com', '555-101-0103', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (31, 'Alexander', 'E', 'Lopez', 'alexanderlopez31@gmail.com', '555-111-1114', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (32, 'Ella', 'F', 'Hill', 'ellahill32@gmail.com', '555-222-2225', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (33, 'Matthew', 'G', 'Scott', 'matthewscott33@gmail.com', '555-333-3336', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (34, 'Scarlett', 'H', 'Green', 'scarlettgreen34@gmail.com', '555-444-4447', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (35, 'Aiden', 'I', 'Adams', 'aidenadams35@gmail.com', '555-555-5558', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (36, 'Grace', 'J', 'Baker', 'gracebaker36@gmail.com', '555-666-6669', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (37, 'Jackson', 'K', 'Gonzalez', 'jacksongonzalez37@gmail.com', '555-777-7770', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (38, 'Chloe', 'L', 'Nelson', 'chloenelson38@gmail.com', '555-888-8881', 1);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (39, 'Sebastian', 'M', 'Carter', 'sebastiancarter39@gmail.com', '555-999-9992', 0);
    INSERT INTO Passenger (passengerID, fName, mName, lName, email, phoneNumber, discountStatus) VALUES (40, 'Aria', 'N', 'Mitchell', 'ariamitchell40@gmail.com', '555-101-0104', 1);
END;
/

-- BUSSTOP
-- Create BusStop table
CREATE TABLE BusStop (
  stopID NUMBER(5) PRIMARY KEY,
  name VARCHAR2(100) NOT NULL,
  address VARCHAR2(255) NOT NULL,
  type VARCHAR2(50) NOT NULL,
  coordinates VARCHAR2(255) NOT NULL
);

-- Add 10 rows of data to BusStop
BEGIN
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (1, 'Main St Station', '100 Main St', 'Station', '12.3456, 34.5678');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (2, 'Market St Terminal', '200 Market St', 'Terminal', '12.7890, 34.0987');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (3, 'Oak St Station', '300 Oak St', 'Station', '12.3210, 34.4321');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (4, 'Elm St Platform', '400 Elm St', 'Platform', '12.6543, 34.9870');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (5, 'Pine St Station', '500 Pine St', 'Station', '12.9087, 34.1276');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (6, 'Maple St Terminal', '600 Maple St', 'Terminal', '12.6789, 34.7654');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (7, 'Birch St Station', '700 Birch St', 'Station', '12.5678, 34.6789');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (8, 'Cedar St Platform', '800 Cedar St', 'Platform', '12.2345, 34.3456');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (9, 'Spruce St Terminal', '900 Spruce St', 'Terminal', '12.7896, 34.6543');
    INSERT INTO BusStop (stopID, name, address, type, coordinates) VALUES (10, 'Walnut St Station', '1000 Walnut St', 'Station', '12.0987, 34.2345');
END;
/

-- TRIP
-- Create Trip table
CREATE TABLE Trip (
  tripID NUMBER(5) PRIMARY KEY,
  tripDate DATE NOT NULL,
  tripTime VARCHAR2(8) NOT NULL,
  tariff NUMBER(6, 2) NOT NULL,
  startStopID NUMBER(5) NOT NULL,
  endStopID NUMBER(5) NOT NULL,
  busID NUMBER(5) NOT NULL,
  CONSTRAINT fk_startStopID FOREIGN KEY (startStopID) REFERENCES BusStop(stopID),
  CONSTRAINT fk_endStopID FOREIGN KEY (endStopID) REFERENCES BusStop(stopID),
  CONSTRAINT fk_busID FOREIGN KEY (busID) REFERENCES Bus(busID)
);

-- Add 20 rows of data to Trip
BEGIN
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (1, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '08:00:00', 10.0, 1, 2, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (2, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '09:00:00', 12.0, 2, 3, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (3, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '10:00:00', 10.0, 3, 4, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (4, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '11:00:00', 14.0, 4, 5, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (5, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '19:00:00', 14.0, 6, 7, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (6, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '20:00:00', 12.0, 7, 8, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (7, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '21:00:00', 10.0, 8, 9, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (8, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '22:00:00', 10.0, 9, 10, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (9, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '19:00:00', 10.0, 1, 2, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (10, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '20:00:00', 12.0, 2, 3, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (11, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '21:00:00', 10.0, 3, 4, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (12, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '22:00:00', 14.0, 4, 5, 1);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (13, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '08:00:00', 14.0, 6, 7, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (14, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '09:00:00', 12.0, 7, 8, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (15, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '10:00:00', 10.0, 8, 9, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (16, TO_DATE('2022-01-02', 'YYYY-MM-DD'), '11:00:00', 10.0, 9, 10, 2);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (17, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '12:00:00', 10.0, 1, 2, 3);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (18, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '13:00:00', 12.0, 2, 3, 3);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (19, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '14:00:00', 10.0, 3, 4, 3);
    INSERT INTO Trip (tripID, tripDate, tripTime, tariff, startStopID, endStopID, busID) VALUES (20, TO_DATE('2022-01-01', 'YYYY-MM-DD'), '15:00:00', 14.0, 4, 5, 3);
END;
/


-- SERVE
-- Create the Serve table
CREATE TABLE Serve (
  routeID NUMBER(10) NOT NULL,
  busID NUMBER(10) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  CONSTRAINT serve_pk PRIMARY KEY (routeID, busID),
  CONSTRAINT serve_route_fk FOREIGN KEY (routeID) REFERENCES Route(routeID),
  CONSTRAINT serve_bus_fk FOREIGN KEY (busID) REFERENCES Bus(busID)
);

-- Add rows of data to Serve table
BEGIN
  INSERT INTO Serve (routeID, busID, start_date, end_date) VALUES (1, 1, DATE '2022-01-01', DATE '2022-12-31');
  INSERT INTO Serve (routeID, busID, start_date, end_date) VALUES (2, 1, DATE '2022-01-01', DATE '2022-12-31');
  INSERT INTO Serve (routeID, busID, start_date, end_date) VALUES (1, 3, DATE '2022-01-01', DATE '2022-12-31');
  INSERT INTO Serve (routeID, busID, start_date, end_date) VALUES (2, 3, DATE '2022-01-01', DATE '2022-12-31');
  INSERT INTO Serve (routeID, busID, start_date, end_date) VALUES (3, 2, DATE '2022-01-01', DATE '2022-12-31');
  INSERT INTO Serve (routeID, busID, start_date, end_date) VALUES (4, 2, DATE '2022-01-01', DATE '2022-12-31');
END;
/


-- TAKES
-- Create the Takes table
CREATE TABLE Takes (
  passengerID NUMBER(10) NOT NULL,
  tripID NUMBER(10) NOT NULL,
  CONSTRAINT takes_pk PRIMARY KEY (passengerID, tripID),
  CONSTRAINT takes_passenger_fk FOREIGN KEY (passengerID) REFERENCES Passenger(passengerID),
  CONSTRAINT takes_trip_fk FOREIGN KEY (tripID) REFERENCES Trip(tripID)
);

-- Add rows of data to Takes table
BEGIN
  INSERT INTO Takes (passengerID, tripID) VALUES (1, 1);
  INSERT INTO Takes (passengerID, tripID) VALUES (2, 1);
  INSERT INTO Takes (passengerID, tripID) VALUES (3, 2);
  INSERT INTO Takes (passengerID, tripID) VALUES (4, 2);
  INSERT INTO Takes (passengerID, tripID) VALUES (5, 3);
  INSERT INTO Takes (passengerID, tripID) VALUES (6, 3);
  INSERT INTO Takes (passengerID, tripID) VALUES (7, 4);
  INSERT INTO Takes (passengerID, tripID) VALUES (8, 4);
  INSERT INTO Takes (passengerID, tripID) VALUES (9, 5);
  INSERT INTO Takes (passengerID, tripID) VALUES (10, 5);
  INSERT INTO Takes (passengerID, tripID) VALUES (11, 6);
  INSERT INTO Takes (passengerID, tripID) VALUES (12, 6);
  INSERT INTO Takes (passengerID, tripID) VALUES (13, 7);
  INSERT INTO Takes (passengerID, tripID) VALUES (14, 7);
  INSERT INTO Takes (passengerID, tripID) VALUES (15, 8);
  INSERT INTO Takes (passengerID, tripID) VALUES (16, 8);
  INSERT INTO Takes (passengerID, tripID) VALUES (17, 9);
  INSERT INTO Takes (passengerID, tripID) VALUES (18, 9);
  INSERT INTO Takes (passengerID, tripID) VALUES (19, 10);
  INSERT INTO Takes (passengerID, tripID) VALUES (20, 10);
  INSERT INTO Takes (passengerID, tripID) VALUES (21, 11);
  INSERT INTO Takes (passengerID, tripID) VALUES (22, 11);
  INSERT INTO Takes (passengerID, tripID) VALUES (23, 12);
  INSERT INTO Takes (passengerID, tripID) VALUES (24, 12);
  INSERT INTO Takes (passengerID, tripID) VALUES (25, 13);
  INSERT INTO Takes (passengerID, tripID) VALUES (26, 13);
  INSERT INTO Takes (passengerID, tripID) VALUES (27, 14);
  INSERT INTO Takes (passengerID, tripID) VALUES (28, 14);
  INSERT INTO Takes (passengerID, tripID) VALUES (29, 15);
  INSERT INTO Takes (passengerID, tripID) VALUES (30, 15);
  INSERT INTO Takes (passengerID, tripID) VALUES (31, 16);
  INSERT INTO Takes (passengerID, tripID) VALUES (32, 16);
  INSERT INTO Takes (passengerID, tripID) VALUES (33, 17);
  INSERT INTO Takes (passengerID, tripID) VALUES (34, 17);
  INSERT INTO Takes (passengerID, tripID) VALUES (35, 18);
  INSERT INTO Takes (passengerID, tripID) VALUES (36, 18);
  INSERT INTO Takes (passengerID, tripID) VALUES (37, 19);
  INSERT INTO Takes (passengerID, tripID) VALUES (38, 19);
  INSERT INTO Takes (passengerID, tripID) VALUES (39, 20);
  INSERT INTO Takes (passengerID, tripID) VALUES (40, 20);
END;
/

-- HAVE
-- Create the Have table

CREATE TABLE Have (
  routeID NUMBER(10) NOT NULL,
  stopID NUMBER(10) NOT NULL,
  PRIMARY KEY (routeID, stopID),
  FOREIGN KEY (routeID) REFERENCES Route(routeID),
  FOREIGN KEY (stopID) REFERENCES BusStop(stopID)
);
/

-- Add rows of data to Have table
BEGIN
  INSERT INTO Have (routeID, stopID) VALUES (1, 1);
  INSERT INTO Have (routeID, stopID) VALUES (1, 2);
  INSERT INTO Have (routeID, stopID) VALUES (1, 3);
  INSERT INTO Have (routeID, stopID) VALUES (2, 3);
  INSERT INTO Have (routeID, stopID) VALUES (2, 4);
  INSERT INTO Have (routeID, stopID) VALUES (2, 5);
  INSERT INTO Have (routeID, stopID) VALUES (3, 6);
  INSERT INTO Have (routeID, stopID) VALUES (3, 7);
  INSERT INTO Have (routeID, stopID) VALUES (3, 8);
  INSERT INTO Have (routeID, stopID) VALUES (4, 8);
  INSERT INTO Have (routeID, stopID) VALUES (4, 9);
  INSERT INTO Have (routeID, stopID) VALUES (4, 10);
END;
/



