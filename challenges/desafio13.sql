SELECT 
    CASE
        WHEN t1.age <= 30 THEN 'Até 30 anos'
        WHEN t1.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(distinct t1.users_id) AS total_pessoas_usuarias,
    COUNT(t2.music_id) AS total_favoritadas
FROM
    users AS t1
        LEFT JOIN
    favorite_songs AS t2 ON t1.users_id = t2.users_id
GROUP BY faixa_etaria;