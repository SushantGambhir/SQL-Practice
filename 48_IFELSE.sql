DECLARE @x INT
SET @x = 10

IF @x = 10
	BEGIN
		PRINT('1 is selected')
	END
ELSE
	BEGIN
		PRINT('0 is selected')
	END

IF @x = 10
	BEGIN
		PRINT('1 is selected')
		PRINT('Hello')
	END
ELSE
	BEGIN
		PRINT('0 is selected')
		PRINT('World')
	END