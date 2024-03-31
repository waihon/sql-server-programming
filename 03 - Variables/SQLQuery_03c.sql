DECLARE @MyDate DATETIME
DECLARE @NumFilms INT
DECLARE @NumActors INT
DECLARE @NumDirectors INT

SET @MyDate = '1980-01-01'
SET @NumFilms = (SELECT COUNT(*) FROM tblFilm WHERE FilmReleaseDate > = @MyDate)
SET @NumActors = (SELECT COUNT(*) FROM tblActor WHERE ActorDOB > = @MyDate)
SET @NumDirectors = (SELECT COUNT(*) FROM tblDirector WHERE DirectorDOB >= @MyDate)

SELECT 'Number of films', @NumFilms
UNION
SELECT 'Number of actors', @NumActors
UNION
SELECT 'Number of directors', @NumDirectors

