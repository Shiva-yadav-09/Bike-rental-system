 Bike Rental System – .NET Core MVC Project
Project Overview
This project is a Bike Rental System developed using .NET Core 8 and follows the MVC (Model-View-Controller) architectural pattern.

MVC Architecture Breakdown
Model (M): Contains database entity classes and business models.

View (V): Represents the User Interface (UI), built with Razor pages.

Controller (C): Manages application logic and handles HTTP GET/POST requests.

Database Details
Database Engine: Microsoft SQL Server

Authentication: Windows Authentication

Server Name: SHIVA\SQLEXPRESS

Database Name: BikeRentalSystemDB

Tables Used:

bike

customer

rental

maintenance

Connection String
plaintext
Copy
Edit
Server=SHIVA\SQLEXPRESS;Database=BikeRentalSystemDB;Integrated Security=True;TrustServerCertificate=True
Features
Full CRUD operations (Create, Read, Update, Delete) implemented for all main entities.

Clean separation of concerns using MVC.

Responsive and user-friendly interface.