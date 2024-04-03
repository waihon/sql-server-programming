DECLARE @Counter INT
DECLARE @MaxOscars INT
DECLARE @NumFilms INT

SET @MaxOscars = (SELECT MAX(FilmOscarWins) FROM tblFilm)
PRINT @MaxOscars
SET @Counter = 0

WHILE @Counter <= @MaxOscars
BEGIN
    SET @NumFilms = (SELECT COUNT(*) FROM tblFilm WHERE FilmOscarWins = @Counter)

    IF @NumFilms = 0 BREAK

    PRINT CAST(@NumFilms AS VARCHAR(3)) + ' films have won ' + CAST(@Counter AS VARCHAR(2)) + ' Oscars'

    SET @Counter = @Counter + 1
END
