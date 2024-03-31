DECLARE @NameList VARCHAR(MAX)
SET @NameList = ''

SELECT
    @NameList = @NameList + ActorName + CHAR(10)
FROM
    tblActor
WHERE
    YEAR(ActorDOB) = 1970

PRINT @NameList
