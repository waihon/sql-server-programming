SELECT
    FilmName, FilmReleaseDate
INTO #TempFilms
FROM
    tblFilm
WHERE
    FilmName LIKE '%star%'

SELECT * FROM #TempFilms

DROP TABLE #TempFilms

