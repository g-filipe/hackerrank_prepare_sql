WITH RECURSIVE PatternCTE AS (
    SELECT 1 AS number_stars
    UNION ALL
    SELECT number_stars + 1 FROM PatternCTE
    WHERE number_stars < 20
)
SELECT REPEAT('* ', number_stars)
FROM PatternCTE;