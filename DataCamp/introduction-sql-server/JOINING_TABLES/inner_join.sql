SELECT
    album_id,
    title,
    album.artist_id,
    name AS artis_name
FROM 
    album
INNER JOIN artist ON artist.artist_id = album.artist_id;
WHERE album.artist_id = 1;