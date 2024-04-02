DECLARE @films_2000 AS INT
DECLARE @films_2001 AS INT

SET @films_2000 = (SELECT count(*) FROM tblFilm WHERE YEAR(FilmReleaseDate) = 2000)
SET @films_2001 = (SELECT count(*) FROM tblFilm WHERE YEAR(FilmReleaseDate) = 2001)

IF @films_2000 > 10
BEGIN
    PRINT 'WARNING!'
    PRINT 'There are too many films released in year 2000'
    IF @films_2001 > 5
    BEGIN
        PRINT 'There are enough films released in year 2001'
    END
    ELSE
    BEGIN
        PRINT 'There are not enough films released in year 2001'
    END
END
ELSE
BEGIN
    PRINT 'INFORMATION'
    PRINT 'There are no more than 10 films released in year 2000' 
END
