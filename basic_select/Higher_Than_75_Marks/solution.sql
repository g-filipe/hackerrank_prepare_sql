SELECT NAME
FROM STUDENTS
WHERE MARKS >75
ORDER BY SUBSTRING(NAME, -3, 3), ID ASC;