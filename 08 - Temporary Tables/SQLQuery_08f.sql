ALTER PROC spSelectFromTemp
AS
BEGIN
    SELECT
        *
    FROM
        #TempFilms
    ORDER BY
        Release DESC -- From #TempFilms created in 08g
END
