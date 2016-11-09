go

CREATE TABLE [dbo].[rPersonal]
(
	id	BIGINT identity(1,1),
	moddate	datetime not null,
	Company nvarchar(255) null,
	Filial nvarchar(255) null,
	Departament nvarchar(255) null,
	Upravlenie nvarchar(255) null,
	Otdel nvarchar(255) null,
	Grupa nvarchar(255) null,
	Tabel nvarchar(255) null,
	Dolgnost nvarchar(255) null, 
	FIO nvarchar(255) null,
	Familia nvarchar(255) null,
	Imya nvarchar(255) null,
	Otchestvo nvarchar(255) null,
	Daterp datetime null,
	DateUvol datetime null,
	Status nvarchar(10) null
	)
go