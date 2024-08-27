WITH Functions_CTE AS (
    SELECT
            x,
            y,
            ROW_NUMBER() OVER() AS id
    FROM Functions
)
SELECT DISTINCT
        f1.x,
        f1.y
FROM Functions_CTE f1
JOIN Functions_CTE f2
ON f1.x = f2.y
      AND f2.x = f1.y
      AND f1.id != f2.id
WHERE f1.x <= f1.y
ORDER BY f1.x ASC;