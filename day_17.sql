-- Question 35: - Aggegration > Top Earners

Select max(months*salary) as earning, count(*)
from Employee
where months*salary = (select max(months*salary) from employee);