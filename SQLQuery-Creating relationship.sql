USE Airlines

ALTER TABLE Voyages
ADD CONSTRAINT FK_Voyages_Cities1 FOREIGN KEY (DepartureCityID) 
    REFERENCES Cities(CityID),

	CONSTRAINT FK_Voyages_Cities2 FOREIGN KEY (ArrivalCityID) 
    REFERENCES Cities(CityID),

	CONSTRAINT FK_Voyages_Planes FOREIGN KEY (PlaneID) 
    REFERENCES Planes(PlaneID) ON DELETE CASCADE,

	CONSTRAINT FK_Voyages_Employees1 FOREIGN KEY (PilotID) 
    REFERENCES Employees(EmployeeID),
	
	CONSTRAINT FK_Voyages_Employees2 FOREIGN KEY (EmployeeID) 
    REFERENCES Employees(EmployeeID) 

ALTER TABLE Branches
ADD CONSTRAINT FK_Branches_Cities FOREIGN KEY (CityID)
	REFERENCES Cities(CityID) ON DELETE CASCADE

ALTER TABLE Passenger
ADD CONSTRAINT FK_Passenger_Cities FOREIGN KEY (CityID)
	REFERENCES Cities(CityID) ON DELETE CASCADE

ALTER TABLE Planes
ADD CONSTRAINT FK_Planes_Trademarks FOREIGN KEY (TrademarkID)
	REFERENCES Trademarks(TrademarkID) ON DELETE CASCADE


ALTER TABLE Tickets
ADD CONSTRAINT FK_Tickets_EmployeeEntry FOREIGN KEY (EmployeeEntryID)
	REFERENCES EmployeeEntry (EmployeeEntryID) ON DELETE CASCADE,

	CONSTRAINT FK_Tickets_Passenger FOREIGN KEY (PassengerID)
	REFERENCES Passenger(PassengerID) ON DELETE CASCADE,

	CONSTRAINT FK_Tickets_Voyages FOREIGN KEY (VoyageID)
	REFERENCES Voyages(VoyageID) ON DELETE CASCADE

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Branches FOREIGN KEY (BranchID)
	REFERENCES Branches(BranchID) ON DELETE CASCADE,

	CONSTRAINT FK_Employees_TypeOfEmployee FOREIGN KEY (EmployeeTypeID)
	REFERENCES TypeOfEmployee(TypeOfEmployeeID) ON DELETE CASCADE


ALTER TABLE EmployeeEntry
ADD CONSTRAINT FK_EmployeeEntry_Employees FOREIGN KEY (EmployeeID)
	REFERENCES Employees(EmployeeID)

ALTER TABLE Voyage-Employees
ADD CONSTRAINT FK_Voyage-Employees_EmployeeID FOREIGN KEY (EmployeeID)
	REFERENCES Employees(EmployeeID),

ADD CONSTRAINT FK_Voyage-Employees_VoyageID FOREIGN KEY (VoyageID)
	REFERENCES Voyages(VoyageID)
