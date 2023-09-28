SELECT 
    COUNT(DISTINCT musics.music_id) AS cancoes,
    COUNT(DISTINCT artist_registry.artist_id) AS artistas,
    COUNT(DISTINCT albums.album_id) AS albuns
FROM
    musics
        LEFT JOIN
    albums ON musics.album_id = albums.album_id
        LEFT JOIN
    artist_registry ON albums.artist_id = artist_registry.artist_id;