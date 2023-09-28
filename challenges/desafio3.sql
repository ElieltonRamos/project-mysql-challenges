SELECT 
    CONCAT(t1.name, ' ', t1.last_name) AS pessoa_usuaria,
    COUNT(t2.music_id) AS musicas_ouvidas,
    ROUND(SUM(t3.music_duration / 60), 2) AS total_minutos
FROM
    users AS t1
        INNER JOIN
    playback_history AS t2 ON t1.users_id = t2.users_id
        INNER JOIN
    musics AS t3 ON t3.music_id = t2.music_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;
