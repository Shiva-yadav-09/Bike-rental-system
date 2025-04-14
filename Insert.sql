INSERT INTO Bike (ModelName, Type, Status, HourlyRate, DailyRate, PurchaseDate, LastMaintenanceDate)  
VALUES  
('Trek FX 3', 1, 0, 5.00, 25.00, '2023-05-10', '2024-03-15'),  
('Giant Escape 2', 1, 1, 4.50, 22.00, '2022-08-20', '2024-01-10'),  
('Schwinn Discover', 2, 0, 6.00, 30.00, '2023-10-05', '2024-02-20'),  
('Cannondale Quick', 1, 1, 5.50, 28.00, '2021-07-12', '2024-03-01'),  
('Specialized Sirrus', 1, 0, 4.75, 23.50, '2020-06-30', '2024-02-15');  

INSERT INTO Customer (FirstName, LastName, Email, Phone, LicenseNumber, MembershipStatus)  
VALUES  
('John', 'Doe', 'john.doe@example.com', '555-1234', 'DL123456', 1),  
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', 'DL654321', 0),  
('Mike', 'Johnson', 'mike.johnson@example.com', '555-9876', 'DL789012', 1),  
('Emily', 'Davis', 'emily.davis@example.com', '555-4321', 'DL345678', 0),  
('Robert', 'Brown', 'robert.brown@example.com', '555-8765', 'DL901234', 1);  

INSERT INTO Rental (CustomerID, BikeID, StartTime, EndTime, TotalCost, DepositAmount, ReturnStatus)  
VALUES  
(1, 2, '2025-03-20 09:00:00', '2025-03-20 12:00:00', 13.50, 20.00, 1),  
(2, 3, '2025-03-21 14:00:00', NULL, NULL, 25.00, 0),  
(3, 1, '2025-03-22 10:30:00', '2025-03-22 16:00:00', 33.00, 20.00, 1),  
(4, 5, '2025-03-23 08:15:00', '2025-03-23 11:30:00', 14.25, 15.00, 1),  
(5, 4, '2025-03-24 17:00:00', NULL, NULL, 30.00, 0);  

INSERT INTO Maintenance (BikeID, MaintenanceType, MaintenanceDate, Description, Cost, TechnicianName)  
VALUES  
(1, 'Brake Replacement', '2025-03-10', 'Replaced brake pads and cables', 45.00, 'Tom Wilson'),  
(2, 'Tire Change', '2025-03-12', 'Changed both tires', 30.00, 'Sarah Lee'),  
(3, 'Gear Adjustment', '2025-03-15', 'Fixed gear shifting issues', 20.00, 'Mark Davis'),  
(4, 'Chain Lubrication', '2025-03-18', 'Applied lubrication to chain', 10.00, 'Emily Roberts'),  
(5, 'Full Tune-up', '2025-03-20', 'Comprehensive maintenance check', 50.00, 'John Carter');  
