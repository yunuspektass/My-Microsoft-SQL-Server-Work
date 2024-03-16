SELECT * FROM Ogrenci

SELECT ErkekMi  , COUNT(*) as 'Ogrenci Sayisi', 
             AVG(SinavNotu1) as 'Sinav1 Ort ' , 
             AVG(SinavNotu2) as 'Sinav2 Ort ' , 
             AVG(FinalNotu) as 'Final Notu' ,
             max(SinavNotu2) as 'En düşük Sınav2 Notu'  FROM Ogrenci GROUP BY ErkekMi