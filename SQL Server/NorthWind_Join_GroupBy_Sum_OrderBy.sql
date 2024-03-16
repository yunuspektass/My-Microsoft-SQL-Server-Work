select TOP 10
 O.OrderID ,
 O.ShipCountry ,
 O.ShipCity,
    SUM(OD.Quantity * OD.UnitPrice) as TotalPrice,
    STRING_AGG(CONVERT(VARCHAR(MAX) , OD.ProductID) , ' - ') as ProductIDs ,
    STRING_AGG(CONVERT(VARCHAR(MAX), OD.Quantity), ' - ' ) as Quantites
from Orders O 
INNER JOIN [Order Details] OD
ON O.OrderID = OD.OrderID
GROUP BY O.OrderID , O.ShipCountry , O.ShipCity
ORDER By TotalPrice desc

--Dikkat Group By kullanırken çok dikkatli olmalıyız:
--Select satırında yazdığımız sütunları ya GROUP BY satırında da yazmalıyız
--veya bu sütunları eğer GROUP BY satırında yazmayacaksak
--SELECT satırında bunları mutlaka AVG,SUM,MAX,MIn vb. gibi AGGREGATE (topluluk işlevleri)
-- String işlemlerde Aggregate kullanılmaz mecbut group by'a eklemek zorundasın
-- ile birlikte kullanmalıyız