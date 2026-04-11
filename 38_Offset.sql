-- We have already seen TOP and utilize it in way to get bottom entries as well
-- Now we want a way to have specified entries: Entries number 11 to 20

-- Way 1: Use subqeury
SELECT TOP 10 * FROM (
    SELECT TOP 20 * FROM DimProduct ORDER BY ProductKey
) AS First20
ORDER BY ProductKey DESC;

-- Way 2: Using OFFSET
-- The below query will ignore first 10 rows and display all the reamining ones
SELECT * FROM DimProduct
ORDER BY ProductKey
OFFSET 10 ROWS

-- Row 11 to 20
SELECT * FROM DimProduct
ORDER BY ProductKey
OFFSET 10 ROWS
FETCH FIRST 10 ROWS ONLY
-- We could have also used 'FETCH NEXT 10 ROWS ONLY' instead