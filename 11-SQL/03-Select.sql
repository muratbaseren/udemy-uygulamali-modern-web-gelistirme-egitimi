SELECT * FROM Users
SELECT Name, Surname, Age FROM Users

-- Açýklama satýrý yapma : CTRL + K + C
-- Açýklama satýrý silme : CTRL + K + U

-- Ýsim soyad, email ve aileden olma bilgisini veren sorgu.
SELECT 
	Name + ' ' + Surname AS NameSurname
	,Email
	,FromFamily AS AiledenMi
FROM Users