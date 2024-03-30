SELECT
    CountryName,
    SUM(FilmRunTimeMinutes) AS TotalRunTime,
    AVG(CAST(FilmRunTimeMinutes AS DECIMAL)) AS AvgRunTime
FROM
    tblCountry AS c
    INNER JOIN tblFilm AS f ON c.CountryID = f.FilmCountryID
GROUP BY
    CountryName
ORDER BY
    CountryName ASC
