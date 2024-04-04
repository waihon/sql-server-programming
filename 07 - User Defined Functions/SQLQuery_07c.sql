USE azuresqldb
GO

ALTER FUNCTION fnFirstName
(
    @FullName AS VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @SpacePosition AS INT
    DECLARE @Result AS VARCHAR(MAX)

    SET @SpacePosition = CHARINDEX(' ', @FullName)

    IF @SpacePosition = 0
        SET @Result = @FullName
    ELSE
        SET @Result = LEFT(@FullName, @SpacePosition - 1)
    
    RETURN @Result
END
GO

SELECT TOP 5
    ActorName, dbo.fnFirstName(ActorName)
FROM
    tblActor
ORDER BY
    ActorName

