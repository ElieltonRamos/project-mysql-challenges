SELECT 
    t1.album_name AS album, t2.artist_name AS artista
FROM
    albums AS t1
        INNER JOIN
    artist_registry AS t2 ON t1.artist_id = t2.artist_id
WHERE
    t2.artist_name = 'Elis Regina';