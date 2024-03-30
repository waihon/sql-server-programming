ALTER PROC spFilmCriteria
(
    @MinLength AS INT,
    @MaxLength AS INT
)
AS
BEGIN
    SELECT
        FilmName,
        FilmRunTimeMinutes
    FROM
        tblFilm
    WHERE
        FilmRunTimeMinutes >= @MinLength AND
        FilmRunTimeMinutes <= @MaxLength
    ORDER BY
        FilmRunTimeMinutes ASC
END


EXECUTE spFilmCriteria 150, 180
EXECUTE spFilmCriteria @MinLength=150, @MaxLength=180
