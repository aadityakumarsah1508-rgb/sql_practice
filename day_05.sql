-- Question 14: - Weather Obsevation 9

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('A','E','I','O','U');

-- ======================================================================================================
-- Question 15: - Weather Observation 10 

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE '%a'
AND CITY NOT LIKE '%e'
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u';

-- ==================================================================================================
-- Question 16: - Weather Observation 11 

Select distinct city
from station 
where lower(city) NOT REGEXP '^[aeiou].*[aeiou]$';