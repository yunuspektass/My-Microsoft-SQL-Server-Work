--declare @i int = 0 
--while @i < 100000
--begin 
   --insert Musteri 
   --select @i , 'User' + CAST(@i as varchar(10)) , 'YP' + CAST(@i as varchar(10))
  --set @i = @i + 1 
--end
 --go 

 set statistics io off
 set statistics time off 

 select * from Musteri where MusteriId = 88348

 --create clustered index CI_1 on Musteri (MusteriId)

