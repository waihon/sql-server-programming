ALTER PROC spFilmsInYear
(
    @Year INT,
    @FilmList VARCHAR(MAX) OUTPUT,
    @FilmCount INT OUTPUT
)
AS
BEGIN
    DECLARE @Films VARCHAR(MAX)
    SET @Films = ''

    SELECT
        @Films = @Films + FilmName + ', '
    FROM
        tblFilm
    WHERE
        YEAR(FilmReleaseDate) = @Year
    ORDER BY
        FilmName ASC

    SET @FilmCount = @@ROWCOUNT
    SET @FilmList = @Films
END

DECLARE @Names AS VARCHAR(MAX)
DECLARE @Count AS INT
EXECUTE spFilmsInYear @Year = 2000, @FilmList = @Names OUTPUT, @FilmCount = @Count OUTPUT
SELECT 2000 AS [Year of Film], @Count AS [Number of Films], @Names AS [List of Films]
