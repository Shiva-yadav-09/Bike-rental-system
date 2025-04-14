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
