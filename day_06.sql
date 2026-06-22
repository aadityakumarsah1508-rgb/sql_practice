-- Question 17: - Weather Observation 12

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY not REGEXP '^[AEIOU]'
AND CITY not regexp '[aeiou]$';

-- ===========================================================================================

-- Question 18:- Higher than 75 marks

Select Name from STUDENTS
WHERE Marks > 75
ORDER BY (Name, -3), ID;

-- ===========================================================================================