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