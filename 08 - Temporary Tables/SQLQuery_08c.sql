CREATE TABLE ##TempFilms -- global temp table
(
    Title VARCHAR(MAX),
    ReleaseDate DATETIME
)

INSERT INTO ##TempFilms
SELECT
    FilmName, FilmReleaseDate
FROM
    tblFilm
WHERE
    FilmName LIKE '%star%'

SELECT * FROM ##TempFilms

DROP TABLE ##TempFilms
