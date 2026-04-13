-- Here we shall be using Recursion in CTE

WITH CteNumbers(n)
AS
(
	SELECT 1 AS Nums
	UNION ALL
	SELECT n+1 FROM CteNumbers
	WHERE n<10
)
SELECT * FROM CteNumbers

-- The above query will give numbers 1 to 10 as result
-- The column name will be 'n'
-- Alternatively, the same query can also be written like with column name as Nums
WITH CteNumbers2 AS (
    SELECT 1 AS Nums
    UNION ALL
    SELECT Nums + 1 FROM CteNumbers2
    WHERE Nums < 10
)
SELECT * FROM CteNumbers2;

-- The query above UNION ALL is called Anchor query (SELECT 1 AS Nums)
-- The query below UNION ALL is called Recursive query (SELECT Nums + 1 FROM CteNumbers2 WHERE Nums < 10)

-- By default in T SQL, we have limit of 100 if no terminating condition specified
-- We can override it by OPTION (MAXRECURSION 0)
-- OPTION (MAXRECURSION n) means there will be (n+1) runs
-- Maximum possible value of n: 32767