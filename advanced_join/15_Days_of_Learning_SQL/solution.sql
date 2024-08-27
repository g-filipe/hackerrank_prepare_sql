SELECT
    submission_date,
    (
        SELECT COUNT(DISTINCT s2.hacker_id)
        FROM Submissions s2
        WHERE s2.submission_date = s1.submission_date
        AND (
            SELECT COUNT(DISTINCT s3.submission_date)
            FROM Submissions s3
            WHERE s3.hacker_id = s2.hacker_id
            AND s3.submission_date < s1.submission_date
        ) = DATEDIFF(s1.submission_date, '2016-03-01')
    ) AS distinct_hackers_count,
    (
        SELECT h2.hacker_id
        FROM Submissions s2
        JOIN Hackers h2 ON s2.hacker_id = h2.hacker_id
        WHERE s2.submission_date = s1.submission_date
        GROUP BY s2.hacker_id
        ORDER BY COUNT(s2.submission_id) DESC, s2.hacker_id
        LIMIT 1
    ) AS top_hacker_id,
    (
        SELECT h3.name
        FROM Hackers h3
        WHERE h3.hacker_id = (
            SELECT h2.hacker_id
            FROM Submissions s2
            JOIN Hackers h2 ON s2.hacker_id = h2.hacker_id
            WHERE s2.submission_date = s1.submission_date
            GROUP BY s2.hacker_id
            ORDER BY COUNT(s2.submission_id) DESC, s2.hacker_id
            LIMIT 1
        )
    ) AS top_hacker_name
FROM
    (
        SELECT DISTINCT submission_date
        FROM Submissions
    ) s1;