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

