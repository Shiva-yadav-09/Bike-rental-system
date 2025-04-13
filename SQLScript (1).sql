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

-- Customers Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) UNIQUE NOT NULL,
    Phone NVARCHAR(20) NOT NULL,
    LicenseNumber NVARCHAR(50) NOT NULL UNIQUE,
    MembershipStatus INT NOT NULL,
    RegistrationDate DATETIME NOT NULL DEFAULT GETDATE()
);

-- Rentals Table
CREATE TABLE Rental (
    RentalID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    BikeID INT NOT NULL,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NULL,
    TotalCost DECIMAL(10,2) NULL,
    DepositAmount DECIMAL(10,2) NOT NULL,
    ReturnStatus INT NOT NULL,

    CONSTRAINT FK_Rental_Customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE,
    CONSTRAINT FK_Rental_Bike FOREIGN KEY (BikeID) REFERENCES Bike(BikeID) ON DELETE CASCADE
);


-- Maintenance Table
CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY IDENTITY(1,1),
    BikeID INT NOT NULL,
    MaintenanceType NVARCHAR(100) NOT NULL,
    MaintenanceDate DATETIME NOT NULL,
    Description NVARCHAR(MAX) NULL,
    Cost DECIMAL(10,2) NOT NULL,
    TechnicianName NVARCHAR(100) NOT NULL,

    CONSTRAINT FK_Maintenance_Bike FOREIGN KEY (BikeID) REFERENCES Bike(BikeID) ON DELETE CASCADE
);


