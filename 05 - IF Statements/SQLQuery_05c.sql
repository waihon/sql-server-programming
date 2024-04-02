ALTER PROCEDURE spVariableData
(
    @InfoType VARCHAR(9) -- ALL, AWARD or FINANCIAL
)
AS
BEGIN
    IF @InfoType = 'ALL'
    BEGIN
        SELECT * FROM tblFilm
        RETURN 
    END

    IF @InfoType = 'AWARD'
    BEGIN
        SELECT FilmName, FilmOscarWins, FilmOscarNominations FROM tblFilm
        RETURN
    END

END

EXECUTE spVariableData @InfoType = 'AWARD'
