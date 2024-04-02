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

END

EXECUTE spVariableData @InfoType = 'ALL'
