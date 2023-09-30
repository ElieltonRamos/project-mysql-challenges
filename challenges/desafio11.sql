SELECT 
    t3.album_name AS album, COUNT(t1.music_id) AS favoritadas
FROM
    favorite_songs AS t1
        INNER JOIN
    musics AS t2 ON t1.music_id = t2.music_id
        INNER JOIN
    albums AS t3 ON t2.album_id = t3.album_id
GROUP BY album
ORDER BY favoritadas DESC , album
LIMIT 3;