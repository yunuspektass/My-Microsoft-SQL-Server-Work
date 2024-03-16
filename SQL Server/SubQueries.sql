SELECT * FROM Ogrenci

SELECT * FROM KantinKayitlari

--SELECT * FROM Ogrenci WHERE OgrenciNo in (SELECT OgrenciNo FROM OgrenciAdres WHERE Sehir = 35)

SELECT * FROM Ogrenci WHERE OgrenciNo in (SELECT OgrenciNo FROM KantinKayitlari WHERE MiktarTL >= 70)