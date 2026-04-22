

CREATE TABLE [Musteri](
	MusteriNo INT NOT NULL,
	Ad NVARCHAR(30) NOT NULL,
	Soyad NVARCHAR(30) NOT NULL,
	Adres NVARCHAR(200) NOT NULL,
	TEL CHAR(15) NOT NULL,
	Constraint PK_Musteri Primary Key (MusteriNo)
	);
	

CREATE TABLE [Saticilar](
	SaticiNo INT NOT NULL,
	Marka NVARCHAR(40) NOT NULL,
	UlkeKod CHAR(2) NOT NULL,
	TEL VARCHAR(20) NOT NULL,
	Constraint PK_Saticilar Primary Key (SaticiNo)
);


