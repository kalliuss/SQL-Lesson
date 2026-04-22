-- BİRDEN FAZLA WHERE

-- ac/dc nin 1980 ve 1992 arasındaki şarkılarını listele
SELECT 
	song,artist, release_year
FROM 
	songlist
WHERE
	artist = 'AC/DC'
	AND release_year BETWEEN 1980 AND 1992;


-- ac/dc 1993 ve 2005 yılındakileri döndür

SELECT 
	song, artist, release_year
FROM 
	songlist
WHERE 
	artist = 'AC/DC'
	AND (release_year = 1993
	OR release_year = 2005)
ORDER BY 
	release_year;


-- farklı bir yapı

SELECT
	song, artist, release_year
FROM 
	songList
WHERE
	(
		artist = 'AC/DC'
		AND release_year = 1993
	)
	OR
	(
		artist = 'AC/DC'
		AND release_year = 2005
	);