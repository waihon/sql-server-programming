CREATE PROC spFilmCriteria(@MinLength AS INT)

AS
BEGIN
    SELECT
        FilmName,
        FilmRunTimeMinutes
    FROM
        tblFilm
    WHERE
        FilmRunTimeMinutes >= @MinLength
    ORDER BY
        FilmRunTimeMinutes ASC
END

EXECUTE spFilmCriteria 150
