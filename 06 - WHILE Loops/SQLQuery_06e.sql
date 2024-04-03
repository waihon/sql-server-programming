DECLARE @FilmID INT
DECLARE @FilmName VARCHAR(MAX)

DECLARE FilmCursor CURSOR FOR
    SELECT FilmID, FilmName FROM tblFilm

OPEN FilmCursor

FETCH NEXT FROM FilmCursor INTO @FilmID, @FilmName

WHILE @@FETCH_STATUS = 0 -- successfully selecting a new record
BEGIN
    PRINT 'Characters in the film ' + @FilmName
    SELECT CastCharacterName FROM tblCast WHERE CastFilmID = @FilmID

    FETCH NEXT FROM FilmCursor INTO @FilmID, @FilmName
END

CLOSE FileCursor
DEALLOCATE FilmCursor