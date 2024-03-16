--select DATEDIFF(year , '2020-02-02' , '2023-04-21' ) as Datediff

 select * from Employees

select FirstName,
        LastName,
        TitleOfCourtesy,
        DATEDIFF(year ,BirthDate  , GETDATE() ) as 'Age',
        DATEDIFF(year ,  HireDate , GETDATE() )  as 'Çalışma Yılı'
from Employees