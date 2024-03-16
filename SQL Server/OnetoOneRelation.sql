create table Dolap(
    DolapID int primary key identity(1000,1),
    Lokasyon varchar(30) not null
);

create table Ogrenci(
    OgrenciID int primary key identity(1,1),
    OgrenciAdi varchar(20) not null,
    OgrenciSoyadi varchar(20) not null,
    DolapID int unique not null, 
    foreign key (DolapID) references Dolap(DolapID)
);
