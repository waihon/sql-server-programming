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
    
    RETURN @@ROWCOUNT
END

DECLARE @Count AS INT
EXECUTE @Count = spFilmsInYear 2000
SELECT @Count AS [Number of Films]
