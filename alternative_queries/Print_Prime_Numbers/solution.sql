WITH RECURSIVE Numbers AS (
    SELECT 2 AS n
    UNION
    SELECT n + 1
    FROM Numbers
    WHERE n < 1000
)
SELECT GROUP_CONCAT(num.n SEPARATOR '&')
FROM Numbers num
WHERE NOT EXISTS ( SELECT n FROM Numbers WHERE num.n % n = 0 AND n < num.n);