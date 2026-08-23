# Write your MySQL query statement below
SELECT Employee.name AS Employee
FROM (
SELECT  DISTINCT E1.id,E1.name,E1.salary
FROM Employee E1
JOIN Employee E2 ON E1.id=E2.managerId) manager
JOIN Employee ON manager.id=Employee.managerId
WHERE manager.salary<Employee.salary;