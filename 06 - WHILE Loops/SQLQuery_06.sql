DECLARE @Counter INT

SET @Counter = 1

WHILE @Counter <= 10
BEGIN
    PRINT @Counter
    SET @Counter += 1
END
