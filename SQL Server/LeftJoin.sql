use OgrenciBilgileriVT

--SELECT A.OgrenciNo , A.Ad , A.Soyad , B.AdresDetay , B.Sehir FROM Ogrenci A 
    -- LEFT  JOIN OgrenciAdres B 
     --   ON A.OgrenciNo = B.OgrenciNo

SELECT A.OgrenciNo , A.Ad , A.Soyad , B.AdresDetay , B.Sehir FROM Ogrenci A 
             LEFT JOIN OgrenciAdres B 
             ON A.OgrenciNo = B.OgrenciNo
             WHERE B.OgrenciNo is NULL


        SELECT * FROM Ogrenci
        SELECT * FROM OgrenciAdres
        