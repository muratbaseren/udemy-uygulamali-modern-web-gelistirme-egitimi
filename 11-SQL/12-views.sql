-- View oluşturur.
CREATE VIEW UsersNamePhonesView AS
SELECT 
	u.Name
	,u.Surname
	,u.Name + ' ' + u.Surname AS FullName
	,u.Age
	,p.AreaCode
	,p.Number
	,'(' + p.AreaCode + ') ' + p.Number AS FullPhoneNumber
FROM Users AS u
	INNER JOIN Phones AS p ON p.User_TcNo = u.TcNo


-- View günceller.
ALTER VIEW UsersNamePhonesView AS
SELECT 
	u.Name
	,u.Surname
	,u.Name + ' ' + u.Surname AS FullName
	,u.Age
	,p.AreaCode
	,p.Number
	,'(' + p.AreaCode + ') ' + p.Number AS FullPhoneNumber
FROM Users AS u
	INNER JOIN Phones AS p ON p.User_TcNo = u.TcNo


-- View siler.
DROP VIEW UsersNamePhonesView


-- Create UsersNamePhonesWithConditionsView
CREATE VIEW UsersNamePhonesWithConditionsView AS
SELECT        TOP (100) PERCENT dbo.Users.Name, dbo.Users.Surname, dbo.Users.Age, dbo.Phones.AreaCode, dbo.Phones.Number
FROM            dbo.Phones INNER JOIN
                         dbo.Users ON dbo.Phones.User_TcNo = dbo.Users.TcNo
WHERE        (dbo.Users.Age > 20) AND (dbo.Users.Name LIKE N'%a%') OR
                         (dbo.Users.Age < 40)
ORDER BY dbo.Users.Name, dbo.Users.Surname DESC



-- Intellisense refresh : CTRL + SHIFT + R

SELECT 
	FullName
	,FullPhoneNumber
	,FullName + ' - ' + FullPhoneNumber AS FullInfo
FROM UsersNamePhonesView

SELECT *
FROM UsersNamePhonesWithConditionsView