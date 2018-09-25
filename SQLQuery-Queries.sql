USE Airlines

alter table Employees
add constraint UC_Employees_Email unique (Email) 

alter table Employees 
drop column Age

exec sp_rename 'Passenger', 'Passengers'; 

insert into Passenger
values (1,'Bill','Stone','b_s@mail.com',4204685)

update Passenger set Passenger.Email='b_stone@mail.com'
where Passenger.Email='b_s@mail.com' 

delete from Passenger 
where Passenger.Email='b_stone@mail.com'

select voyages.DepartureCityID 
from Voyages
group by DepartureCityID

select Passenger.Name +' '+ Passenger.Surname as 'Passenger Names'
from Passenger
order by [Passenger Names]

select min(Fare) as 'Cheapest' ,min(Fare) as 'Most expensive',avg(Fare) as 'Average'
from Tickets

select top(5) Passenger.Name +' '+ Passenger.Surname as 'Passenger Names'
from Passenger
where Passenger.Name like 'B%'
order by [Passenger Names] asc

select count(*) as 'Total number of passengers'
from Passenger

select * from Voyages 
right join Employees on Voyages.PilotID=Employees.EmployeeID
where Employees.Surname='Brown'

select Employees.Name+' '+Employees.Surname as 'Pilots'
from Employees
right outer join TypeOfEmployee on TypeOfEmployee.TypeOfEmployeeID=Employees.EmployeeTypeID
where TypeOfEmployeeID=(select TypeOfEmployeeID where TypeOfEmployee.TypeOfEmployee='Pilot')

select * , Cities.CityName from Voyages
inner join Cities on Voyages.DepartureCityID=Cities.CityID
where datepart(YEAR,DepartureTime)>='2016' and datepart(MONTH,DepartureTime)>='1'
and CityName='Prague'
order by Voyages.DepartureTime asc

select Cities.CityName ,Passenger.Name+' '+Passenger.Surname as 'Passenger name', Voyages.DepartureTime
from Voyages
left join Tickets on Voyages.VoyageID=Tickets.VoyageID
inner join Cities on Voyages.DepartureCityID=Cities.CityID
inner join Passenger on Tickets.PassengerID=Passenger.PassengerID
where datepart(YEAR,Voyages.DepartureTime)>=2016 and DepartureCityID=(select CityID from Cities where Cities.CityName='Prague')
and Tickets.SaleOrReservation='True'









