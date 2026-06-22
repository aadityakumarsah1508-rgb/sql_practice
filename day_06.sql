-- Question 17: - Weather Observation 12

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY not REGEXP '^[AEIOU]'
AND CITY not regexp '[aeiou]$';

-- ===========================================================================================0