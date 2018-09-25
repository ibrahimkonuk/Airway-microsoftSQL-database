CREATE DATABASE Airlines

USE Airlines

CREATE TABLE Employees(
	EmployeeID int PRIMARY KEY NOT NULL IDENTITY,
	BranchID int NULL,
	EmployeeTypeID int NULL,
	Name varchar(20) NULL,
	Surname varchar(20) NULL,
	Telephone int NULL,
	Email nvarchar(30) NULL CONSTRAINT UC_Employees_Email UNIQUE (Email)
		)
		
CREATE TABLE Branches(
	BranchID int PRIMARY KEY NOT NULL IDENTITY,
	CityID int NULL,
	BranchName varchar(20)
		)

CREATE TABLE Planes (
	PlaneID int PRIMARY KEY NOT NULL IDENTITY,
	TrademarkID int NULL,
	Plate int NULL,
	NumOfSeat int NULL,
)

CREATE TABLE Cities(
	CityID int PRIMARY KEY NOT NULL IDENTITY,
	CityName varchar(20) NULL
)

CREATE TABLE Trademarks (
	TrademarkID int PRIMARY KEY NOT NULL IDENTITY,
	Trademark nvarchar(20) NULL
)

CREATE TABLE TypeOfEmployee(
	TypeOfEmployeeID INT PRIMARY KEY NOT NULL IDENTITY,
	TypeOfEmployee varchar(20) NULL
)


CREATE TABLE EmployeeEntry(
	EmployeeEntryID INT PRIMARY KEY NOT NULL IDENTITY,
	EmployeeID int NULL,
	EntryDate date NULL,
	EntryType nvarchar(20) NULL
)

CREATE TABLE Passenger(
	PassengerID INT PRIMARY KEY NOT NULL IDENTITY,
	CityID int NULL,
	Name varchar(20) NULL,
	Surname varchar(20) NULL,
	Email nvarchar(30) NULL CONSTRAINT UC_Passenger_Email UNIQUE (Email),
	Telephone int NULL
)


CREATE TABLE Voyages (
	VoyageID INT PRIMARY KEY NOT NULL IDENTITY,
	DepartureCityID int NULL,
	ArrivalCityID int NULL,
	PlaneID int NULL,
	PilotID int NULL,
	EmployeeID int NULL,
	DepartureTime time NULL,
	ArrivalTime time NULL
)


CREATE TABLE Tickets (
	EmployeeEntryID int NULL,
	PassengerID int NULL,
	VoyageID int NULL,
	SaleOrReservation bit NULL,
	SeatNo tinyint NULL,
	Fare money NULL
	)

CREATE TABLE Voyage-Employees
{
		VoyageID int PRIMARY KEY NOT NULL,
		EmployeeID int PRIMARY KEY NOT NULL
}
