DECLARE @MyDate DATETIME
DECLARE @NumFilms INT
DECLARE @NumActors INT
DECLARE @NumDirectors INT

SET NOCOUNT ON

SET @MyDate = '1980-01-01'
SET @NumFilms = (SELECT COUNT(*) FROM tblFilm WHERE FilmReleaseDate > = @MyDate)
SET @NumActors = (SELECT COUNT(*) FROM tblActor WHERE ActorDOB > = @MyDate)
SET @NumDirectors = (SELECT COUNT(*) FROM tblDirector WHERE DirectorDOB >= @MyDate)

PRINT 'Number of films = ' + CAST(@NumFilms AS VARCHAR(MAX))
PRINT 'Number of actors = ' + CAST(@NumActors AS VARCHAR(MAX))
PRINT 'Number of directors = ' + CAST(@NumDirectors AS VARCHAR(MAX))

