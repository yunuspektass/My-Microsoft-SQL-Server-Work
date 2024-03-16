use OgrenciBilgileriVT

--SELECT A.OgrenciNo , B.OgrenciNo , A.Ad , A.Soyad , B.AdresDetay , B.Sehir FROM Ogrenci A 
             --       RIGHT JOIN OgrenciAdres B 
               --        ON A.OgrenciNo = B.OgrenciNo

SELECT A.OgrenciNo , B.OgrenciNo , A.Ad , A.Soyad , B.AdresDetay , B.Sehir FROM Ogrenci A 
                    RIGHT JOIN OgrenciAdres B 
                       ON A.OgrenciNo = B.OgrenciNo
                       WHERE A.OgrenciNo is NULL

            SELECT * FROM Ogrenci
            SELECT * FROM OgrenciAdres