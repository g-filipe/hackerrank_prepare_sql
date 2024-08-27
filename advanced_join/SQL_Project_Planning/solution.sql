WITH CTE1 AS (
    SELECT
        start_date,
        ROW_NUMBER() OVER(ORDER BY start_date) AS start_date_rank
    FROM Projects
    WHERE start_date NOT IN (
        SELECT end_date
        FROM Projects
    )
),
CTE2 AS (
    SELECT
        end_date,
        ROW_NUMBER() OVER(ORDER BY end_date) AS end_date_rank
    FROM Projects
    WHERE end_date NOT IN (
        SELECT start_date
        FROM Projects
    )
)
SELECT
    start_date,
    end_date
FROM CTE1
JOIN CTE2 ON start_date_rank = end_date_rank
ORDER BY DATEDIFF(end_date, start_date), start_date;