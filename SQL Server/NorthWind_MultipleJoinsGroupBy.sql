--select * from Orders


select  ShipVia , COUNT(*) from Orders group by ShipVia 

select Shippers.CompanyName as 'Nakliye Firması' , COUNT(*) as 'Toplam Sipariş Sayısı'
from Orders
inner join Shippers
on Orders.ShipVia = Shippers.ShipperID
group by Shippers.CompanyName