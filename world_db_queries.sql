USE world;

-- Table showing the number of cities in USA
SELECT COUNT(name) AS Cities_In_USA
FROM city
WHERE CountryCode = 'USA';

-- Table showing Argentina, its population and life expectancy
SELECT Name AS country, population , LifeExpectancy
FROM country
WHERE code = 'ARG';

-- Table showing country with the highest life expectancy
SELECT name AS country, LifeExpectancy
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy DESC
LIMIT 1;

-- Table showing Spain and its capital
SELECT co.Name AS country, ci.District AS capital
FROM country co
LEFT JOIN city ci
ON co.Capital =ci.ID
WHERE co.Name = 'Spain';

-- Table showing countries in Southeast Asia and their languages
SELECT c.Name AS Country, c.Region, cl.Language
FROM country c
LEFT JOIN countrylanguage cl
ON c.Code = cl.CountryCode
WHERE c.Region = 'Southeast Asia';


