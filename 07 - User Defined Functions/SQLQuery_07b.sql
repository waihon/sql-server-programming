SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER FUNCTION [dbo].[fnLongDate]
(
    @FullDate AS DATETIME
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    RETURN DATENAME(DW, @FullDate) + ', ' +
        DATENAME(D, @FullDate) +
        CASE
            WHEN DAY(@FullDate) IN (1, 21, 31) THEN 'st'
            WHEN DAY(@FullDate) IN (2, 22) THEN 'nd'
            WHEN DAY(@FullDate) IN (3, 23) THEN 'rd'
            ELSE 'th'
        END + ' ' +
        DATENAME(M, @FullDate) + ' ' +
        DATENAME(YY, @FullDate)
END
GO

SELECT TOP 5
    FilmName, FilmReleaseDate, dbo.fnLongDate(FilmReleaseDate) AS LongDate
FROM
    tblFilm

SELECT TOP 5
    ActorName, ActorDOB, dbo.fnLongDate(ActorDOB) AS DOB
FROM
    tblActor
