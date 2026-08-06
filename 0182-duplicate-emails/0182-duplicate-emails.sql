# Write your MySQL query statement below
SELECT email
FROM (SELECT email,COUNT(id) AS nb
FROM Person 
GROUP BY email)rt
WHERE rt.nb>1;
