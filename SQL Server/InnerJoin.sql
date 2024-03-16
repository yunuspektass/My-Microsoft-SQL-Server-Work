use OgrenciBilgileriVT

SELECT A.OgrenciNo , A.Ad , A.Soyad , SUM(B.MiktarTL) as 'Toplam Harcama' FROM Ogrenci  A 
         INNER JOIN KantinKayitlari B 
          ON A.OgrenciNo = B.OgrenciNo
          GROUP BY A.OgrenciNo , A.Ad , A.Soyad 
          ORDER BY OgrenciNo 

SELECT * FROM KantinKayitlari

          