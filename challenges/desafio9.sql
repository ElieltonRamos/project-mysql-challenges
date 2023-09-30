SELECT 
    COUNT(t1.music_id) AS musicas_no_historico
FROM
    playback_history AS t1
        INNER JOIN
    users AS t2 ON t2.users_id = t1.users_id
GROUP BY t2.name
HAVING t2.name = 'Barbara';