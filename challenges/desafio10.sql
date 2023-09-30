USE SpotifyClone;
CREATE TABLE favorite_songs(
    users_id INT NOT NULL,
    music_id INT NOT NULL,
    FOREIGN KEY (users_id) REFERENCES users(users_id),
    FOREIGN KEY (music_id) REFERENCES musics(music_id),
    CONSTRAINT unique_favorite UNIQUE (users_id, music_id)
);
INSERT INTO favorite_songs (users_id, music_id)
VALUES
    (1, 1),
    (2, 4),
    (3, 3),
    (4, 7),
    (5, 10),
    (8, 4),
    (9, 7),
    (10, 1),
    (1, 6),
    (1, 10),
    (3, 1),
    (4, 4),
    (5, 2);
