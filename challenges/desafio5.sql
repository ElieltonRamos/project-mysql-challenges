SELECT 
    REPLACE(t2.music_name, '"', '') AS cancao,
    COUNT(t1.reproduction_date) AS reproducoes
FROM
    playback_history AS t1
        INNER JOIN
    musics AS t2 ON t1.music_id = t2.music_id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;