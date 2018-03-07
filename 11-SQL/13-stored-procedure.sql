-- procedure oluşturur.
CREATE PROCEDURE InsertUser
	@tcno nvarchar(11),
	@name nvarchar(25),
	@surname nvarchar(25),
	@fromfamily bit = 0
AS
	INSERT INTO Users(TcNo,Name,Surname,Email,Birthdate,FromFamily,Age)
	VALUES(@tcno,@name,@surname,NULL,NULL,@fromfamily,NULL)

--EXEC InsertUser '4321','Merih','Başeren'


-- procedure günceller.
ALTER PROCEDURE InsertUser
	@tcno nvarchar(11),
	@name nvarchar(25),
	@surname nvarchar(25),
	@fromfamily bit = 0
AS
	INSERT INTO Users(TcNo,Name,Surname,Email,Birthdate,FromFamily,Age)
	VALUES(@tcno,@name,@surname,NULL,NULL,@fromfamily,NULL)

--EXEC InsertUser '4321','Merih','Başeren'


-- procedure siler.
DROP PROCEDURE InsertUser