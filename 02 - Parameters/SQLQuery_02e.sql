ALTER PROC spFilmCriteria
(
    @MinLength AS INT = NULL,
    @MaxLength AS INT = NULL,
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
        (@MinLength IS NULL OR FilmRunTimeMinutes >= @MinLength) AND
        (@MaxLength IS NULL OR FilmRunTimeMinutes <= @MaxLength) AND
        FilmName LIKE '%' + @Title + '%'
    ORDER BY
        FilmRunTimeMinutes ASC
END

EXECUTE spFilmCriteria @Title='spider', @MinLength=125
