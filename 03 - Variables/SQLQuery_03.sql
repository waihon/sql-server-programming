SELECT
    FilmName AS Name,
    FilmReleaseDate AS [Date],
    'Film' AS [Type]
FROM
    tblFilm
WHERE
    FilmReleaseDate >= '1970-01-01'

UNION ALL

SELECT
    ActorName,
    ActorDOB,
    'Actor'
FROM
    tblActor
WHERE
    ActorDOB >= '1970-010-01'

UNION ALL

SELECT
    DirectorName,
    DirectorDOB,
    'Director'
FROM
    tblDirector
WHERE
    DirectorDOB >= '1970-01-01'
ORDER BY [Date] ASC
