SELECT co.continent, FLOOR(AVG(ct.population))
FROM country co
JOIN city ct ON co.code = ct.countrycode
GROUP BY co.continent;