/*
CREATE TRIGGER mytrigger2
ON Ogrenci 
AFTER DELETE
AS
BEGIN
    INSERT  INTO OgrenciLog (OgrenciSayisi,Tarih) 
    VALUES ((SELECT COUNT(OgrenciNo) FROM Ogrenci ) , GETDATE() )
    END
    */


--SELECT * FROM OgrenciLog

--INSERT INTO Ogrenci (OgrenciNo,Ad,Soyad,TcKimlikNo,KayitTarihi,ErkekMi,DogumTarihi)
--VALUES(1000,'Ali','Çalışır','12345678910','20200505',1,'20000101')

DELETE FROM Ogrenci WHERE OgrenciNo = 1000

