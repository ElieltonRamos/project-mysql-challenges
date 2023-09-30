SELECT 
    t4.artist_name AS artista,
    CASE
        WHEN COUNT(t1.music_id) >= 5 THEN 'A'
        WHEN COUNT(t1.music_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(t1.music_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
    END AS ranking
FROM
    favorite_songs AS t1
        INNER JOIN
    musics AS t2 ON t1.music_id = t2.music_id
        INNER JOIN
    albums AS t3 ON t2.album_id = t3.album_id
        RIGHT JOIN
    artist_registry AS t4 ON t3.artist_id = t4.artist_id
GROUP BY artista
ORDER BY COUNT(t1.music_id) DESC , artista;