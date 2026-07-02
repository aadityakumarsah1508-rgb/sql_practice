-- Question 31:- Aggregation > The Blunder

SELECT CEIL(AVG(Salary * 1.0) - AVG(REPLACE(Salary, '0', '') * 1.0)) FROM EMPLOYEES;

-- =========================================================================================

-- Question 32:- Aggregation > Top Earners

SELECT (months * salary), COUNT(*) FROM Employee GROUP BY (months * salary) ORDER BY (months * salary) DESC FETCH FIRST 1 ROWS ONLY;