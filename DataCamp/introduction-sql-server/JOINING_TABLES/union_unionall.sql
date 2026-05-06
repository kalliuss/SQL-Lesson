SELECT 
	AlbumId,
	title,
	ArtistId
FROM album
WHERE ArtistId IN (1,3)  -- 1 veya 3 olanları döndür
UNION -- birleştir | yinelenenleri atlar.
SELECT 
	AlbumId,
	title,
	ArtistId
FROM album
WHERE ArtistId IN (1, 4, 5);



SELECT 
	AlbumId,
	title,
	ArtistId
FROM album
WHERE ArtistId IN (1,3)  -- 1 veya 3 olanları döndür
UNION ALL -- birleştir | yinelenenleri DE SAYAR.
SELECT 
	AlbumId,
	title,
	ArtistId
FROM album
WHERE ArtistId IN (1, 4, 5);

-- ! TABLO SIRALAMALARI TABLO ADINA ÖNEMLİ