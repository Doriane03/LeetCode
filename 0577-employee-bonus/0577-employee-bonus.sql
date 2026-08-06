# Write your MySQL query statement below
SELECT rt.name,rt.bonus
FROM (SELECT e.name,b.bonus
FROM Employee e
LEFT JOIN Bonus b ON  e.empId=b.empId)rt
WHERE rt.bonus IS NULL OR rt.bonus<1000;