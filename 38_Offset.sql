-- We have already seen TOP and utilize it in way to get bottom entries as well
-- Now we want a way to have specified entries: Entries number 11 to 20

-- Way 1: Use subqeury
SELECT TOP 10 * FROM (
    SELECT TOP 20 * FROM DimProduct ORDER BY ProductKey
) AS First20
ORDER BY ProductKey DESC;