WITH RECURSIVE PatternCTE AS (
    SELECT 20 AS num_stars
    UNION ALL
    SELECT num_stars - 1
    FROM PatternCTE
    WHERE num_stars > 1
)
SELECT REPEAT('* ', num_stars) AS pattern
FROM PatternCTE;