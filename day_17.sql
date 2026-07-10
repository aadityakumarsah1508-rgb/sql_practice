-- Question 35: - Aggegration > Top Earners

-- Select max(months*salary) as earning, count(*)
-- from Employee
-- where months*salary = (select max(months*salary) from employee);

SELECT MAX(months * salary) AS max_earnings,
       COUNT(*) AS num_employees
FROM Employee
WHERE (months * salary) = (
    SELECT MAX(months * salary)
    FROM Employee
);