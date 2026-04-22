SELECT * FROM  Categories;


-- önerilen syntax
SELECT 
	TOP(5) -- İLK 5 SATIR
	CategoryID,
	CategoryName,
	Description
FROM 
	Categories;


SELECT
	TOP(5) PERCENT -- SATIRLARIN ILK %5 INI DONDUR
	CategoryID AS KATEGORI_ID,
	CategoryName AS KATEGORI_ISIM, 
	Description AS KATEGORI_ACIKLAMA
FROM 
	Categories;