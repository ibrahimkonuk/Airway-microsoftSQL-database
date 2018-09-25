
CREATE TRIGGER Add_Voyage
ON Voyages
AFTER INSERT
AS
     DECLARE @NumOfSeat int,@PlaneID int,@VoyageID int

	  SELECT @PlaneID=PlaneID, @VoyageID=VoyageID from inserted
	 UPDATE Voyages SET NumOfSeat = (select NumOfSeat from Planes where     PlaneID=@PlaneID) where VoyageID=@VoyageID




CREATE TRIGGER Buying_ticket ON Tickets
AFTER INSERT
AS
BEGIN
	DECLARE @VoyageID int
	SELECT @VoyageID=VoyageID FROM inserted
		UPDATE Voyages SET NumOfSeat -=1 WHERE VoyageID=@VoyageID
END


       
CREATE TRIGGER Cancelling_Ticket ON Tickets
AFTER DELETE 
AS
BEGIN
	DECLARE @VoyageID int
	SELECT @VoyageID=VoyageID FROM deleted
		UPDATE Voyages SET NumOfSeat +=1 WHERE VoyageID=@VoyageID
END




