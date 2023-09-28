DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;
CREATE TABLE artist_registry(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL
);
CREATE TABLE subscription_model(
    signature_id INT PRIMARY KEY AUTO_INCREMENT,
    signature VARCHAR(50) NOT NULL,
    subscription_value DOUBLE NOT NULL
);
CREATE TABLE albums(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    release_year INT,
    FOREIGN KEY (artist_id) REFERENCES artist_registry(artist_id)
);
CREATE TABLE musics(
	music_id INT PRIMARY KEY AUTO_INCREMENT,
    music_name VARCHAR(100) NOT NULL,
    music_duration INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);
CREATE TABLE users(
	users_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT,
    signature_id INT NOT NULL,
    signature_date DATETIME,
    FOREIGN KEY (signature_id) REFERENCES subscription_model(signature_id)
);
CREATE TABLE playback_history(
		music_id INT NOT NULL,
		users_id INT NOT NULL,
        reproduction_date DATETIME UNIQUE,
        FOREIGN KEY (music_id) REFERENCES musics(music_id),
		FOREIGN KEY (users_id) REFERENCES users(users_id)
);
CREATE TABLE artist_followers(
    artist_id INT NOT NULL,
		users_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist_registry(artist_id),
		FOREIGN KEY (users_id) REFERENCES users(users_id),
        CONSTRAINT unique_follow UNIQUE (users_id, artist_id)
);
INSERT INTO artist_registry (artist_id, artist_name) VALUES
	(1, 'Beyoncé'),
	(2, 'Queen'),
	(3, 'Elis Regina'),
	(4, 'Baco Exu do Blues'),
	(5, 'Blind Guardian'),
	(6, 'Nina Simone');
INSERT INTO subscription_model (signature_id, signature, subscription_value) VALUES
	(1, 'gratuito', 0),
	(2, 'familiar', 7.99),
	(3, 'universitário', 5.99),
	(4, 'pessoal', 6.99);
INSERT INTO albums (album_id, album_name, artist_id, release_year) VALUES
	(1, 'Renaissance', 1, 2022),
	(2, 'Jazz', 2, 1978),
	(3, 'Hot Space', 2, 1982),
	(4, 'Falso Brilhante', 3, 1998),
	(5, 'Vento de Maio', 3, 2001),
	(6, 'QVVJFA?', 4, 2003),
	(7, 'Somewhere Far Beyond', 5, 2007),
	(8, 'I Put A Spell On You', 6, 2012);
INSERT INTO musics (music_id, music_name, music_duration, album_id) VALUES
	(1, 'ALIEN SUPERSTAR', 116, 1),
	(2, 'VIRGO\'S GROOVE', 369, 1),
	(3, '"BREAK MY SOUL"', 279, 1),
	(4, '"Don\'t Stop Me Now"', 203, 2),
	(5, '"Under Pressure"', 152, 3),
	(6, '"Como Nossos Pais"', 105, 4),
	(7, '"O Medo de Amar é o Medo de Ser Livre"', 207, 5),
	(8, '"Samba em Paris"', 267, 6),
	(9, '"The Bard\'s Song"', 244, 7),
	(10, '"Feeling Good"', 100, 8);
INSERT INTO users (users_id, name, last_name, age, signature_id, signature_date) VALUES
	(1, 'Barbara', 'Liskov', 82, 1, '2019-10-20'),
	(2, 'Robert', 'Cecil Martin', 58, 1, '2017-01-06'),
	(3, 'Ada', 'Lovelace', 37, 2, '2017-12-30'),
	(4, 'Martin', 'Fowler', 46, 2, '2017-01-17'),
	(5, 'Sandi', 'Metz', 58, 2, '2018-04-29'),
	(6, 'Paulo', 'Freire', 19, 3, '2018-02-14'),
	(7, 'Bell', 'Hooks', 26, 3, '2018-01-05'),
	(8, 'Christopher', 'Alexander', 85, 4, '2019-06-05'),
	(9, 'Judith', 'Butler', 45, 4, '2020-05-13'),
	(10, 'Jorge', 'Amado', 58, 4, '2017-02-17');
INSERT INTO playback_history (users_id, music_id, reproduction_date) VALUES
    (1, 8, '2022-02-28 10:45:55'),
    (2, 10, '2022-08-05 08:05:17'),
    (3, 10, '2020-11-13 16:55:13'),
    (4, 8, '2021-08-15 17:10:10'),
    (5, 8, '2022-01-09 01:44:33'),
    (6, 7, '2017-01-24 00:31:17'),
    (7, 4, '2011-12-15 22:30:49'),
    (8, 4, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
    (10, 1, '2015-12-13 08:30:22'),
    (1, 10, '2020-03-06 11:22:33'),
    (1, 2, '2020-05-02 05:30:35'),
    (2, 7, '2020-01-02 07:40:33'),
    (3, 2, '2020-12-05 18:38:30'),
    (5, 5, '2020-08-06 15:23:43'),
    (6, 3, '2017-10-12 12:35:20');
INSERT INTO artist_followers (users_id, artist_id) VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 6),
    (6, 1),
    (9, 3),
    (10, 2),
    (1, 2),
    (1, 3),
    (2, 3),
    (5, 6);
