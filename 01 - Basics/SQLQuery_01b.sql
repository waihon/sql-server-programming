CREATE PROC spFilmList
AS
BEGIN
    SELECT
        FilmName,
        FilmReleaseDate,
        FilmRunTimeMinutes,
        FilmOscarNominations
    FROM
        tblFilm
    ORDER BY
        FilmName ASC
END
