SELECT hacker_id, name, SUM(total_max_score) total_score
FROM (
    SELECT h.hacker_id, h.name, MAX(s.score) total_max_score
    FROM Hackers h
    JOIN Submissions s ON h.hacker_id = s.hacker_id
    GROUP BY h.hacker_id, h.name, s.challenge_id
) CTE
GROUP BY hacker_id, name
HAVING total_score > 0
ORDER BY total_score DESC, hacker_id;