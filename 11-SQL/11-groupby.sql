SELECT 
	c.CityName
	,u.FromFamily
	,COUNT(*) AS AdresCount
FROM Users AS u
	INNER JOIN Addresses AS a ON a.User_TcNo = u.TcNo
	INNER JOIN Cities AS c ON c.Id = a.Id
--WHERE c.CityName <> 'Ankara'
GROUP BY c.CityName, u.FromFamily
--HAVING COUNT(*) > 2 
HAVING u.FromFamily = 0




SELECT 
	c.CityName
	,SUM(u.Age) AS Summary
	,AVG(u.Age) AS Avarage
	,COUNT(u.Age) AS UserCount
FROM Users AS u
	INNER JOIN Addresses AS a ON a.User_TcNo = u.TcNo
	INNER JOIN Cities AS c ON c.Id = a.Id
GROUP BY c.CityName