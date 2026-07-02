-- Question 31:- Aggregation > The Blunder

SELECT CEIL(AVG(Salary * 1.0) - AVG(REPLACE(Salary, '0', '') * 1.0)) FROM EMPLOYEES;