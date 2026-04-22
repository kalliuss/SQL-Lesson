-- IN kullanımı 

SELECT 
	song, artist 
FROM 
	songlist
WHERE 
	artist IN ('Van Halen', 'ZZ Top')
ORDER BY 
	song;



SELECT 
	song, release_year
FROM 
	songlist 
WHERE 
	release_year IN (1985, 1991, 1992);