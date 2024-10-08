SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND C = A THEN 'Equilateral'
        WHEN A = B OR B = C OR C = A THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;