SELECT TOP 5
    FilmName,
    FilmReleaseDate,
    DATENAME(DW, FilmReleaseDate) + ', ' + -- Day of Week
    DATENAME(D, FilmReleaseDate) + ' ' +  -- Day
    DATENAME(M, FilmReleaseDate) + ' ' +  -- Month
    DATENAME(YY, FilmReleaseDate)         -- Year
FROM
    tblFilm