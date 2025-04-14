CREATE DATABASE BikeRentalSystemDB;
USE BikeRentalSystemDB;

-- Bikes Table
CREATE TABLE Bike (
    BikeID INT PRIMARY KEY IDENTITY(1,1),
    ModelName NVARCHAR(255) NOT NULL,
    Type INT NOT NULL,
    Status INT NOT NULL DEFAULT 0,
    HourlyRate DECIMAL(10,2) NOT NULL,
    DailyRate DECIMAL(10,2) NOT NULL,
    PurchaseDate DATETIME NOT NULL,
    LastMaintenanceDate DATETIME NULL
);
