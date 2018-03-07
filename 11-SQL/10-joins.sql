
-- User kayıtları ve kesişen phone, address, company, city kayıt bilgileri.
SELECT
	u.TcNo
	,u.Name
	,u.Surname
	,p.AreaCode
	,p.Number
	,a.AdressesDescription
	,c.CityName
	,co.CompanyName
FROM Users AS u
	INNER JOIN Phones AS p ON p.User_TcNo = u.TcNo
	INNER JOIN Addresses AS a ON a.User_TcNo = u.TcNo
	INNER JOIN Users_Companies AS uco ON uco.User_TcNo = u.TcNo
	INNER JOIN Companies AS co ON uco.Companies_Id = co.Id
	INNER JOIN Cities AS c ON c.Id = a.Id


-- Tüm user kayıtları ve kesişen adres kayıtları
SELECT
	u.TcNo
	,u.Name
	,u.Surname
	,a.AdressesDescription
FROM Users AS u
	LEFT JOIN Addresses AS a ON a.User_TcNo = u.TcNo



-- Tüm adres kayıtları ve kesişen user kayıtları
SELECT
	u.TcNo
	,u.Name
	,u.Surname
	,a.AdressesDescription
FROM Users AS u
	RIGHT JOIN Addresses AS a ON a.User_TcNo = u.TcNo