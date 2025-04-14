INSERT INTO Bike (ModelName, Type, Status, HourlyRate, DailyRate, PurchaseDate, LastMaintenanceDate)  
VALUES ('Trek Domane', 2, 0, 7.00, 35.00, '2024-03-25', NULL);

SELECT * FROM Bike;

SELECT * FROM Bike WHERE Status = 0;

UPDATE Bike  
SET Status = 1, LastMaintenanceDate = '2025-03-30'  
WHERE BikeID = 1;

DELETE FROM Bike WHERE BikeID = 5;

INSERT INTO Customer (FirstName, LastName, Email, Phone, LicenseNumber, MembershipStatus)  
VALUES ('Alice', 'Green', 'alice.green@example.com', '555-9999', 'DL567890', 1);

SELECT * FROM Customer;
SELECT * FROM Customer WHERE MembershipStatus = 1;

UPDATE Customer
SET Phone = '555-1234', MembershipStatus = 1  
WHERE CustomerID = 2;

DELETE FROM Customer WHERE CustomerID = 3;

INSERT INTO Rental (CustomerID, BikeID, StartTime, EndTime, TotalCost, DepositAmount, ReturnStatus)  
VALUES (2, 1, '2025-04-01 10:00:00', NULL, NULL, 20.00, 0);

SELECT * FROM Rental;
SELECT * FROM Rental WHERE ReturnStatus = 0;

UPDATE Rental  
SET EndTime = '2025-04-01 15:00:00', TotalCost = 25.00, ReturnStatus = 1  
WHERE RentalID = 1;

DELETE FROM Rental WHERE RentalID = 2;

INSERT INTO Maintenance (BikeID, MaintenanceType, MaintenanceDate, Description, Cost, TechnicianName)  
VALUES (3, 'Chain Replacement', '2025-04-02', 'Replaced broken chain', 40.00, 'Jake Miller');

SELECT * FROM Maintenance;
SELECT * FROM Maintenance WHERE BikeID = 3;

UPDATE Maintenance  
SET Cost = 45.00, TechnicianName = 'Jake Wilson'  
WHERE MaintenanceID = 1;

DELETE FROM Maintenance WHERE MaintenanceID = 2;


