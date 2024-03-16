select * from Orders 

select * from Employees
-- 1.Tüm employee'lerin yaptığı toplam sipariş / satış miktarını bulalım
-- 2. 100 adetten fazla sipariş ile ilgilenen (satış yapan) satış personelini bulalım.

-- 1

--select Employees.EmployeeID , COUNT(*) 
--from Orders   
--inner join Employees
--on Orders.EmployeeID = Employees.EmployeeID
--group by Employees.EmployeeID
-- 2 
--having count(*) > 100


-- + ' ' + şeklinde bilgileri yanyana bir sütunda getirebiliriz. 

select Employees.FirstName + ' ' + Employees.LastName , COUNT(*) 
from Orders   
inner join Employees
on Orders.EmployeeID = Employees.EmployeeID
group by Employees.FirstName + ' ' + Employees.LastName 
having count(*) < 76