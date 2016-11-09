use lansweeperdb;

go

bulk insert rPersonal
	from "Рабочий стол\test.csv"
	with (
		fieldterminator = ';',
		rowterminator = '\n'
	)

go
