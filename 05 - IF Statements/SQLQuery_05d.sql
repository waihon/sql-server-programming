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

    IF @InfoType = 'FINANCIAL'
    BEGIN
        SELECT FilmName, FilmBoxOfficeDollars, FilmBudgetDollars FROM tblFilm
        RETURN
    END

    SELECT 'You must choose ALL, AWARD, or FINANCIAL'
END

EXECUTE spVariableData @InfoType = 'FINANCIAL'
EXECUTE spVariableData @InfoType = 'INFO'
