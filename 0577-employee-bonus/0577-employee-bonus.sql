# Write your MySQL query statement below
SELECT rt.name,rt.bonus
FROM (SELECT e.name,b.bonus
FROM Bonus b
RIGHT JOIN Employee e ON  b.empId=e.empId)rt
WHERE rt.bonus IS NULL OR rt.bonus<1000;