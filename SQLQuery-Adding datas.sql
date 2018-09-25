USE Airlines

INSERT INTO Trademarks
VALUES ('RyanAir Airlines'),('Lufthansa Airlines'),('Czech Airlines')

INSERT INTO Cities
VALUES ('Prague'),('Ostrava'),('Brno'),('Zlin'),('Pardubice'),('Karlovy Vary'),('Olomouc')

INSERT INTO TypeOfEmployee
VALUES ('Pilot'),('Hostess'),('Cooker')

INSERT INTO Passenger
VALUES (1,'John','William','j_w@mail.com',420123123),(2,'Adam','Steward','a_s@mail.com',420123987),
(3,'Maria','Hill','m_h@mail.com',420456789),(4,'Bill','Brown','b_b@mail.com',420543765),
(5,'Rose','Taylor','r_t@mail.com',420264195),(6,'Johanna','Ben','y_b@mail.com',420963172),
(7,'Josef','Stone','j_s@mail.com',420200876)

INSERT INTO Branches
VALUES (1,'PragueBranch'),(2,'Ostrava Branch'),(3,'Brno Branch'),(4,'Zlin Branch'),(5,'Pardubice Branch'),
(6,'Karlovy Vary Branch'),(7,'Olomouc Branch')


INSERT INTO Planes
VALUES (1,45752,200),(2,83452,250),(3,26831,230),(1,90013,180),(2,12889,150),(3,214906,170),(1,35239,200)


INSERT INTO Employees
VALUES (1,1,'Maria','John',420324,'m_j@mai.com'),(2,2,'Marek','Wall',234964,'m_w@mail.com'),
(3,3,'Chris','Hill',234587,'c_h@mail.com'),
(4,1,'Abraham','Will',234587,'a_w@mail.com'),(5,2,'Lily','Silver',134904,'l_s@mail.com'),
(6,3,'Tom','Well',234668,'t_w@mail.com'),
(7,1,'Ana','Bill',890534,'a_b@mail.com'),(2,2,'Steve','Core',710864,'s_c@mail.com'),
(5,3,'Jousef','Brown',905123,'j_b@mail.com')

INSERT INTO Voyages
VALUES (1,7,2,'2016-01-01','2016-01-02'),(2,6,6,'2016-01-01','2016-01-02'),(3,5,7,'2016-01-01','2016-01-02'),
(4,3,8,'2016-01-01','2016-01-02'),(5,4,9,'2016-01-01','2016-01-02'),
(6,2,10,'2016-01-01','2016-01-02'),(7,1,11,'2016-01-01','2016-01-02')

INSERT INTO EmployeeEntry
VALUES (2,'2016-01-01','True'),(3,'2016-01-01','False'),(5,'2016-01-01','True'),
(6,'2016-01-01','False'),(8,'2016-01-01','True'),(9,'2016-01-01','False')

INSERT INTO Tickets
Values (1,1,11,'True',6,100),(2,2,12,'False',3,150),(3,3,13,'True',12,100),(4,4,14,'False',45,120),
(5,5,15,'True',34,125),(6,6,16,'False',24,136)