begin transaction; -- Toplu işleme başaldığımız yeri gösterir

begin try -- Hataların oluşacağı yerler 
   insert into Ogrenciler(OgrenciID , Ad , Soyad , Sinif) values (11 , 'Kaan' ,'Yılmaz','10-A');
   insert into Ogrenciler(OgrenciID , Ad , Soyad , Sinif) values (12 , 'Zeyneb' ,'Demir','10-B');
   

   -- Tüm öğrenciler başarıyla eklendi , işlemi onaylayalım.
   commit  -- Transaction içinde commit yazmalısın 

end try 

begin catch -- Herhangi bir hatayı burada yakalayacağız. Hata durumunda işlemi geri alalım.
    rollback;
    
    --Hata bilgilerini bir log tablosuna kaydedelim.
    insert into ErrorLog(ErrorDate,ErrorMessage) values (GETDATE(),ERROR_MESSAGE());
end catch;

