
-- Test Case 1: Find all trips on Route A2 within January
SELECT t.tripID, t.tripDate, t.tripTime, t.tariff, r.routeID, r.name AS route_name
FROM Trip t
JOIN Bus b ON t.busID = b.busID
JOIN Serve s ON b.busID = s.busID
JOIN Route r ON s.routeID = r.routeID
WHERE r.routeID = 2 AND t.tripDate BETWEEN TO_DATE('2022-01-01', 'YYYY-MM-DD') AND TO_DATE('2022-01-31', 'YYYY-MM-DD');



-- Test Case 2: Find the total fare collected by Bus company A within January
SELECT bc.companyID, bc.name AS company_name, SUM(CASE
                                                  WHEN p.discountStatus = 1     THEN t.tariff / 2
                                                  ELSE t.tariff
                                                END) as total_fare
FROM BusCompany bc
JOIN Route r ON bc.companyID = r.companyID
JOIN Serve s ON r.routeID = s.routeID
JOIN Bus b ON s.busID = b.busID
JOIN Trip t ON b.busID = t.busID
JOIN Takes tk ON t.tripID = tk.tripID
JOIN Passenger p ON tk.passengerID = p.passengerID
WHERE bc.companyID = 1 AND t.tripDate BETWEEN TO_DATE('2022-01-01', 'YYYY-MM-DD') AND TO_DATE('2022-01-31', 'YYYY-MM-DD')
GROUP BY bc.companyID, bc.name;


-- Test Case 3: Find all bus companies and the total number of buses they have
SELECT bc.companyID, bc.name AS company_name, COUNT(DISTINCT b.busID) AS total_buses
FROM BusCompany bc
LEFT JOIN Route r ON bc.companyID = r.companyID
LEFT JOIN Serve s ON r.routeID = s.routeID
LEFT JOIN Bus b ON s.busID = b.busID
GROUP BY bc.companyID, bc.name
ORDER BY bc.companyID;



-- Test Case 4: Find all passengers who travelled on Bus 3 with a discount on January 1, 2022
SELECT p.passengerID, p.fName, p.mName, p.lName
FROM Passenger p
JOIN Takes tk ON p.passengerID = tk.passengerID
JOIN Trip t ON tk.tripID = t.tripID
JOIN Bus b ON t.busID = b.busID
WHERE b.busID = 3
AND t.tripDate = TO_DATE('2022-01-01', 'YYYY-MM-DD')
AND p.discountStatus = 1;


-- Test Case 5: Retrieve the details of trips operated by Bus company B along with the buses used.
SELECT tr.tripID, tr.tripDate, tr.tripTime, tr.tariff, r.routeID, r.name, b.busID, b.model
FROM Trip tr
JOIN Bus b ON tr.busID = b.busID
JOIN Serve s ON b.busID = s.busID
JOIN Route r ON s.routeID = r.routeID
JOIN BusCompany bc ON r.companyID = bc.companyID
WHERE bc.companyID = 2;


-- Test Case 6: Find all passengers on trips along Route 3
SELECT p.passengerID, p.fName, p.mName, p.lName
FROM Passenger p
JOIN Takes tk ON p.passengerID = tk.passengerID
JOIN Trip t ON tk.tripID = t.tripID
JOIN Bus b ON t.busID = b.busID
JOIN Serve s ON b.busID = s.busID
WHERE s.routeID = 3; 





