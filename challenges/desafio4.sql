SELECT 
    CONCAT(t1.name, ' ', t1.last_name) AS pessoa_usuaria,
    IF(MAX(YEAR(t2.reproduction_date)) >= 2021,
        'Ativa',
        'Inativa') AS status_pessoa_usuaria
FROM
    playback_history AS t2
        INNER JOIN
    users AS t1 ON t1.users_id = t2.users_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;
