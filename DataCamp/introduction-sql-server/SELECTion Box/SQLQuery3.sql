-- LIKE Kullanımı 

-- a ile başlayan şarkılar

SELECT 
	song , artist
FROM 
	songlist
WHERE
	song 
LIKE 
	'a%'; 


-- e ile biten şarkılar


SELECT 
	song , artist
FROM 
	songlist
WHERE
	song 
LIKE 
	'%e'; 
