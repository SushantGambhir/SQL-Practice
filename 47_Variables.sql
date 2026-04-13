DECLARE @x INT -- Declare a variable
DECLARE @y VARCHAR(20)

SET @x = 100 -- Set a value to a variable
SET @y = 'HELLO'

SELECT @x -- Fetch the value
SELECT @y

-- We can DECLARE and SELECT multiple variable in single statement
-- But cannot set multiple in single statement

DECLARE @x INT, @y VARCHAR(20)

SET @x=10
SET @y= 'World'

SELECT @x, @y

-- We must run all three (DECLARE, SET, SELECT) together. Only then they will work