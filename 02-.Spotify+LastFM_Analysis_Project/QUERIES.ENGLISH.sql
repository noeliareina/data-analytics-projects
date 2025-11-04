USE musicstream;

-- COMPARE BY COUNTRIES IN THE SAME REGION
-- MEDITERRANEAN
-- ES
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'ES'
)
ORDER BY popularity DESC
LIMIT 10;

-- FR
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'FR'
)
ORDER BY popularity DESC
LIMIT 10;

-- IT
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'IT'
)
ORDER BY popularity DESC
LIMIT 10;

-- GR
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'GR'
)
ORDER BY popularity DESC
LIMIT 10;


-- NORTH
-- DK
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'DK'
)
ORDER BY popularity DESC
LIMIT 10;

-- LV
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'LV'
)
ORDER BY popularity DESC
LIMIT 10;

-- IS
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'IS'
)
ORDER BY popularity DESC
LIMIT 10;

-- GB
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'GB'
)
ORDER BY popularity DESC
LIMIT 10;


-- CENTRAL
-- AT
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'AT'
)
ORDER BY popularity DESC
LIMIT 10;

-- DE
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'DE'
)
ORDER BY popularity DESC
LIMIT 10;

-- BE
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'BE'
)
ORDER BY popularity DESC
LIMIT 10;

-- NL
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'NL'
)
ORDER BY popularity DESC
LIMIT 10;


-- EAST
-- BY
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'BY'
)
ORDER BY popularity DESC
LIMIT 10;

-- BG
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'BG'
)
ORDER BY popularity DESC
LIMIT 10;

-- HU
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'HU'
)
ORDER BY popularity DESC
LIMIT 10;

-- PL
SELECT DISTINCT *
FROM SONGS
WHERE song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id = 'PL'
)
ORDER BY popularity DESC
LIMIT 10;


-- COMPARISON BY REGION
-- MEDITERRANEAN
SELECT DISTINCT genre, popularity
FROM SONGS
WHERE genre <> 'None' AND song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id IN ('ES', 'FR', 'MC', 'IT', 'SI', 'HR', 'BA', 'ME', 'AL', 'GR', 'MT', 'CY')
)
ORDER BY popularity DESC
LIMIT 5;

-- CENTRAL
SELECT DISTINCT genre, popularity
FROM SONGS
WHERE genre <> 'None' AND song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id IN ('AT', 'DE', 'CH', 'LI', 'BE', 'LU', 'NL')
)
ORDER BY popularity DESC
LIMIT 5;

-- NORTH
SELECT DISTINCT genre, popularity
FROM SONGS
WHERE genre <> 'None' AND song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id IN ('DK', 'EE', 'FI', 'IS', 'IE', 'LT', 'LV', 'NO', 'SE', 'GB')
)
ORDER BY popularity DESC
LIMIT 5;

-- EAST
SELECT DISTINCT genre, popularity
FROM SONGS
WHERE genre <> 'None' AND song_id IN (
    SELECT song_id
    FROM country_in_song
    WHERE country_id IN ('BY', 'BG', 'CZ', 'SK', 'HU', 'MD', 'PL', 'RO', 'UA')
)
ORDER BY popularity DESC
LIMIT 5;
