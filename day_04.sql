-- Question 11: - Weather Observation 6
 
-- WHEN LANGUAGE IS DB2 [NOTE:- DB2 DOESN'T REGEXP.]
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'A%' OR 
      CITY LIKE 'E%' OR
      CITY LIKE 'I%' OR
      CITY LIKE 'O%' OR
      CITY LIKE 'U%';
    
-- IN MYSQL
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[AEIOU]';

-- =======================================================================================================

-- Question 12: - Weather Observation 7

-- In DB2
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%a' OR 
      CITY LIKE '%e' OR
      CITY LIKE '%i' OR
      CITY LIKE '%o' OR
      CITY LIKE '%u';

-- In MySql language    
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY REGEXP '[aeiou]$';

-- ========================================================================================================

-- Question 13: - Weather Observation 8

-- In DB2
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'A%a' OR
      CITY LIKE 'A%e' OR
      CITY LIKE 'A%i' OR
      CITY LIKE 'A%o' OR
      CITY LIKE 'A%u' OR
      CITY LIKE 'E%a' OR
      CITY LIKE 'E%e' OR
      CITY LIKE 'E%i' OR
      CITY LIKE 'E%o' OR
      CITY LIKE 'E%u' OR
      CITY LIKE 'I%a' OR
      CITY LIKE 'I%e' OR
      CITY LIKE 'I%i' OR
      CITY LIKE 'I%o' OR
      CITY LIKE 'I%u' OR
      CITY LIKE 'O%a' OR
      CITY LIKE 'O%e' OR
      CITY LIKE 'O%i' OR
      CITY LIKE 'O%o' OR
      CITY LIKE 'O%u' OR
      CITY LIKE 'U%a' OR
      CITY LIKE 'U%e' OR
      CITY LIKE 'U%i' OR
      CITY LIKE 'U%o' OR
      CITY LIKE 'U%u';
-- NOTE:- After researching more get to know that regexp_like can be used in DB2. 

-- In MySQl
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY REGEXP '^[AEIOU].*[aeiou]$';
