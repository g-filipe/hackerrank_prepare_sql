WITH CTE AS (
    SELECT h.hacker_id, h.name, COUNT(*) total_challenges
    FROM Hackers h
    JOIN Challenges c ON h.hacker_id = c.hacker_id
    GROUP BY  h.hacker_id, h.name
)
SELECT *
FROM CTE
WHERE total_challenges = (
    SELECT MAX(total_challenges)
    FROM CTE
)
OR total_challenges IN  (
    SELECT total_challenges
    FROM CTE
    GROUP BY total_challenges
    HAVING COUNT(*) = 1
)
ORDER BY total_challenges DESC, hacker_id;