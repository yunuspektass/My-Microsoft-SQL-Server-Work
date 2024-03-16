SELECT * FROM Ogrenci

--count
--SELECT COUNT(OgrenciNo) FROM Ogrenci 
--SELECT COUNT(*) FROM Ogrenci WHERE DogumTarihi >= '2000-09-03'

--sum 
--SELECT SUM(SinavNotu2) FROM Ogrenci 

--max
--SELECT MAX(SinavNotu2) FROM Ogrenci

--avg
--SELECT AVG(FinalNotu) FROM Ogrenci

SELECT SUM(FinalNotu) / COUNT(*) FROM Ogrenci
