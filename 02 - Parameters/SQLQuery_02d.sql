ALTER PROC spFilmCriteria
(
    @MinLength AS INT = 0,
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

EXECUTE spFilmCriteria @MaxLength=180, @Title='DIE'
