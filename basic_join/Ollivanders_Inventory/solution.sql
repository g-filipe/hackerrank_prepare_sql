SELECT
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM wands w
JOIN wands_property wp ON w.code = wp.code
WHERE wp.is_evil = 0
AND w.coins_needed = (
        SELECT MIN(wr.coins_needed)
        FROM wands wr
        JOIN wands_property wpr ON wr.code = wpr.code
        WHERE   wp.age = wpr.age
        AND w.power = wr.power
)
ORDER BY w.power DESC, wp.age DESC;