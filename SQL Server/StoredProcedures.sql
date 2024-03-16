--CREATE PROCEDURE Sehiregoreogrencilistesi(@il INT)
--AS
--SELECT * FROM Ogrenci WHERE OgrenciNo 
--   in
--  (SELECT OgrenciNo FROM OgrenciAdres WHERE Sehir = @il )

--CREATE PROCEDURE Adresegoreogrencilistesi(@detay varchar(20))
--AS
--SELECT * FROM Ogrenci WHERE OgrenciNo 
--   in
--  (SELECT OgrenciNo FROM OgrenciAdres WHERE AdresDetay like @detay)

--EXEC Sehiregoreogrencilistesi 35

EXEC Adresegoreogrencilistesi '%Paris%'
