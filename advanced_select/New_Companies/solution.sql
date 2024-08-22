SELECT
    company_code,
    founder,
    (
        SELECT
            COUNT(DISTINCT lead_manager_code)
        FROM Lead_Manager AS LM
        WHERE LM.company_code = C.company_code
    ),
    (
        SELECT
            COUNT(DISTINCT senior_manager_code)
        FROM Senior_Manager AS SM
        WHERE SM.company_code = C.company_code
    ),
    (
        SELECT
            COUNT(DISTINCT manager_code)
        FROM Manager AS M
        WHERE M.company_code = C.company_code
    ),
    (
        SELECT
            COUNT(DISTINCT employee_code)
        FROM Employee AS E
        WHERE E.company_code = C.company_code
    )
FROM Company AS C ORDER BY C.company_code ASC;