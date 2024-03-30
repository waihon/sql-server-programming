ALTER PROC spFilmCriteria
(
    @MinLength AS INT,
    @MaxLength AS INT,
    @Title VARCHAR(MAX)
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
        FilmRunTimeMinutes <= @MaxLength AND
        FilmName LIKE '%' + @Title + '%'
    ORDER BY
        FilmRunTimeMinutes ASC
END

EXECUTE spFilmCriteria @MinLength=60, @MaxLength=180, @Title='man'
EXECUTE spFilmCriteria @MinLength=120, @MaxLength=180, @Title='die'

