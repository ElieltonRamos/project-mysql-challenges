SELECT 
    t2.artist_name AS artista,
    t1.album_name AS album,
    COUNT(t3.artist_id) AS pessoas_seguidoras
FROM
    albums AS t1
        INNER JOIN
    artist_registry AS t2 ON t1.artist_id = t2.artist_id
        INNER JOIN
    artist_followers AS t3 ON t1.artist_id = t3.artist_id
GROUP BY artista , album
ORDER BY pessoas_seguidoras DESC , artista , album;