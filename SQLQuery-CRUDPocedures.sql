----------------------------------------------------------------- INSERT PASSENGER


CREATE PROCEDURE InsertPassenger
(@CityID int,@Name varchar(20),@Surname varchar(20),@Email nvarchar(30),@Telephone int)
AS
BEGIN 
IF NOT EXISTS (SELECT * FROM Passenger WHERE Email=@Email)
INSERT INTO Passenger (CityID,Name,Surname,Email,Telephone) VALUES
	(@CityID,@Name,@Surname,@Email,@Telephone) 
	
ELSE PRINT 'This E-mail adress have already taken.Please try another one !'	
END

EXEC InsertPassenger @CityID=1,@Name='Michael',@Surname='Green',@Email='j_w@mail.com',@Telephone=324646
EXEC InsertPassenger @CityID=1,@Name='Michael',@Surname='Green',@Email='m_g@mail.com',@Telephone=324646


----------------------------------------------------------------- DELETE PASSENGER


CREATE PROCEDURE DeletePassenger 
(@PassengerID int)
AS
BEGIN
IF EXISTS (SELECT * FROM Passenger WHERE PassengerID=@PassengerID) 
DELETE FROM Passenger WHERE PassengerID=@PassengerID 
END

EXEC DeletePassenger @PassengerID= 12


----------------------------------------------------------------- LIST PASSENGERS


CREATE PROCEDURE ListPassengers
AS
BEGIN 
SELECT * FROM Passenger
END

EXEC ListPassengers


----------------------------------------------------------------- DETAIL OF PASSENGER


CREATE PROCEDURE DetailPassenger
(@PassengerID int)
AS 
BEGIN 
IF EXISTS (SELECT * FROM Passenger WHERE PassengerID=@PassengerID )
SELECT * FROM Passenger WHERE PassengerID=@PassengerID
END

EXEC DetailPassenger @PassengerID=3


----------------------------------------------------------------- UPDATE PASSENGER


CREATE PROCEDURE UpdatePassenger
(@PassengerID int,@CityID int,@Name varchar(20),@Surname varchar(20),@Email nvarchar(30),@Telephone int)
AS 
BEGIN 
UPDATE Passenger SET CityID=@CityID ,Name=@Name,Surname=@Surname,
Email=@Email,Telephone=@Telephone WHERE PassengerID=@PassengerID 
END

EXEC UpdatePassenger @PassengerID=1,@CityID=2,@Name='John',@Surname='William',@Email='j_w@mail.com',
@Telephone=2135436

