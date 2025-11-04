CREATE SCHEMA IF NOT EXISTS MusicStream;

USE MusicStream;

CREATE TABLE artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) UNIQUE
);

CREATE TABLE decades (
    decade_id INT AUTO_INCREMENT PRIMARY KEY,
    year_range VARCHAR(10)
);

CREATE TABLE regions (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(25)
);

CREATE TABLE countries (
    country_id VARCHAR(3) PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT,
    CONSTRAINT fk_region
        FOREIGN KEY (region_id)
        REFERENCES regions(region_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(250),
    genre VARCHAR(50),
    popularity INT
);

CREATE TABLE artist_in_song (
    artist_id INT,
    song_id INT,
    PRIMARY KEY (artist_id, song_id),
    CONSTRAINT fk_artist_song
        FOREIGN KEY (artist_id)
        REFERENCES artists(artist_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_song_artist
        FOREIGN KEY (song_id)
        REFERENCES songs(song_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE country_in_song (
    country_id VARCHAR(3),
    song_id INT,
    PRIMARY KEY (country_id, song_id),
    CONSTRAINT fk_country_song
        FOREIGN KEY (country_id)
        REFERENCES countries(country_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_song_country
        FOREIGN KEY (song_id)
        REFERENCES songs(song_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE decade_of_song (
    decade_id INT,
    song_id INT,
    PRIMARY KEY (decade_id, song_id),
    CONSTRAINT fk_decade_song
        FOREIGN KEY (decade_id)
        REFERENCES decades(decade_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_song_decade
        FOREIGN KEY (song_id)
        REFERENCES songs(song_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
