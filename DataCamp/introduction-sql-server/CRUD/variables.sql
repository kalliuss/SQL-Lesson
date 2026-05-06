-- * variables
-- ? aslında tekrar tekrar kod yazmayı engelliyor 
-- ? js de nasıl function atıyorsun burada değişken atamanın amacı kısmen aynı oluyor

-- SELECT 
--    *
-- FROM 
--     artist
-- WHERE
--     name = @my_artist;

--!  "DECLARE" 
-- DEĞİŞKEN OLUŞTURURKEN KULLANILAN ANAHTAR KELİME


-- DECLARE @test_int INT;

-- DECLARE @my_artist VARCHAR(50);

-- ! "SET" 
-- DEĞİŞKENE DEĞER ATAMAK İÇİN KULLANILAN ANAHTAR KELİME

-- SET @my_artist = 'Queen';


-- DECLARE @test_int INT;
-- SET @test_int = 5;


-- SELECT 
--     *
-- FROM
--     artist
-- WHERE
--     name = @my_artist;


-- örnek 

DECLARE @my_artist VARCHAR(50);
DECLARE @my_album VARCHAR(300);


SET @my_artist = 'AC/DC';
SET @my_album = 'Let There Be Rock';

SELECT 
    * 
FROM 
    Album
LEFT JOIN Artist ON Artist.ArtistId = Album.ArtistId
WHERE 
    Artist.name = @my_artist AND Album.title = @my_album;



-- ! GEÇİÇİ TABLO
-- ? geçici tablolar aslında normal tablolara benziyor ama sadece geçici olarak varlar

SELECT 
    AlbumId,
    Title,
    ArtistId
INTO #temp_album
FROM Album;

-- ! elle kaldırana kadar varlığını sürdürür

DROP TABLE #temp_album;
