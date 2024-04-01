ALTER PROC spFilmsInYear
(
    @Year INT
)
AS
BEGIN
    SELECT
        FilmName
    FROM
        tblFilm
    WHERE
        YEAR(FilmReleaseDate) = @Year
    ORDER BY
        FilmName ASC
END

EXECUTE spFilmsInYear 2000
