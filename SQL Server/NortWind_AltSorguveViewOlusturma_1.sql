--select * from Orders

--select * from Customers

--create view view_ulkeye_ve_tarihe_gore_siparisler
 --as
--select * from Orders where CustomerID 
--in (select CustomerID from Customers
--                where Country = 'Germany' or Country = 'UK' )
--                and OrderDate >= '1998-01-01'

select * from view_ulkeye_ve_tarihe_gore_siparisler