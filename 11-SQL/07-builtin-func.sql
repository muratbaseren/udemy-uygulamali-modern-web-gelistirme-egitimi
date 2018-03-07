SELECT * FROM Users

SELECT COUNT(*) 
FROM Users

SELECT COUNT(Email) AS [RowCount]
FROM Users

SELECT MAX(Age) 
FROM Users

SELECT MIN(Age) 
FROM Users

SELECT SUM(Age) 
FROM Users

SELECT AVG(Age) 
FROM Users

SELECT LOWER(Surname) 
FROM Users

SELECT UPPER(Surname) 
FROM Users

SELECT Name, Surname, UPPER(Surname), LEN(Surname) 
FROM Users

SELECT Name, Surname, SUBSTRING(Surname,0,3), UPPER(Surname), LEN(Surname) 
FROM Users

SELECT 
	Birthdate,
	DATEPART(DD, Birthdate) AS Gun,
	DATEPART(MM, Birthdate) AS Ay,
	DATEPART(YY, Birthdate) AS Yýl
FROM Users

SELECT GETDATE()