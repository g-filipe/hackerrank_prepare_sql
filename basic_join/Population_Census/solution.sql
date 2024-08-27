SELECT SUM(ct.population)
FROM city ct
JOIN country co ON ct.countrycode = co.code
WHERE co.continent = 'ASIA';