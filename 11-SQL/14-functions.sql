USE [PhoneBookDB]
GO

CREATE FUNCTION [dbo].[FullName]
(
	@name nvarchar(25),
	@surname nvarchar(25),
	@age tinyint = 0
)
RETURNS nvarchar(57)
AS
BEGIN
	RETURN @name + ' ' + @surname + ' (' + CONVERT(nvarchar(3), @age) + ')'

END

-- Kullanımı
SELECT 
	Name,
	Surname,
	Age,
	dbo.FullName(Name, Surname, Age) AS FullInfo
FROM Users




USE [PhoneBookDB]
GO

CREATE FUNCTION UsersByAgeLimits 
(	
	@min tinyint,
	@max tinyint
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT 
		u.Name,
		u.Surname,
		dbo.FullName(u.Name, u.Surname, u.Age) AS Info
	FROM Users AS u
	WHERE u.Age > @min AND u.Age < @max
)
GO


-- Kullanımı

SELECT *
FROM dbo.UsersByAgeLimits(20,35)