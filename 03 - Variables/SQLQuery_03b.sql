DECLARE @MyDate DATETIME
SET @MyDate = '1980-01-01'

SELECT
    FilmName AS Name,
    FilmReleaseDate AS [Date],
    'Film' AS [Type]
FROM
    tblFilm
WHERE
    FilmReleaseDate >= @MyDate

UNION ALL

SELECT
    ActorName,
    ActorDOB,
    'Actor'
FROM
    tblActor
WHERE
    ActorDOB >= @MyDate

UNION ALL

SELECT
    DirectorName,
    DirectorDOB,
    'Director'
FROM
    tblDirector
WHERE
    DirectorDOB >= @MyDate
ORDER BY [Date] ASC
