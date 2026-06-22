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

-- Question 19:- Employee Name

SELECT name FROM Employee 
ORDER BY name ASC;

-- ==========================================================================================

-- Question 20:- Employee Salaries

SELECT name FROM Employee
WHERE salary>2000 
AND months < 10
Order by employee_id;

-- =========================================================================================