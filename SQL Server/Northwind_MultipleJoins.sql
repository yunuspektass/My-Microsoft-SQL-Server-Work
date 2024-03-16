select Orders.OrderID 'Sipariş No',
      Orders.CustomerID 'Müşteri No', 
      Customers.ContactTitle 'Kontak Ünvan',
    Customers.ContactName as 'Kontak Kişi' ,
    Shippers.CompanyName as 'Nakliye Firması'
from Orders  
 join Customers
on Orders.CustomerID = Customers.CustomerID
 join Shippers
on Orders.ShipVia = Shippers.ShipperID
order by [Nakliye Firması] desc , [Kontak Kişi]
