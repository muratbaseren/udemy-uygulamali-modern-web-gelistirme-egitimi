SELECT * FROM Users

SELECT * 
FROM Users
WHERE Name = 'Murat2'


SELECT * 
FROM Users
WHERE Age > 30

SELECT * 
FROM Users
WHERE Email LIKE '%s%'

SELECT * 
FROM Users
WHERE Email LIKE 's%'

SELECT * 
FROM Users
WHERE Email LIKE '%s'

SELECT * 
FROM Users
WHERE Email LIKE '_u%'

SELECT * 
FROM Users
WHERE Email LIKE 'm_r%'

SELECT * 
FROM Users
WHERE Email LIKE '[k-o]_r%'

SELECT * 
FROM Users
WHERE Email LIKE '[^a-f]_r%'

SELECT * 
FROM Users
WHERE Age >= 33

SELECT * 
FROM Users
WHERE Age <> 23

SELECT * 
FROM Users
WHERE Age <> 23

SELECT * 
FROM Users
WHERE Email IS NOT NULL
	AND Birthdate IS NOT NULL

SELECT * 
FROM Users
WHERE Email IS NOT NULL
	OR Birthdate IS NOT NULL

SELECT * 
FROM Users
WHERE Age BETWEEN 20 AND 40
--WHERE Age >= 20 AND Age <=40

SELECT * 
FROM Users
WHERE Age IN (33,11,5)
