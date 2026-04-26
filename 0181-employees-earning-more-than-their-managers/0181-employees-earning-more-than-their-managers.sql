# Write your MySQL query statement below
SELECT a.name AS Employee
FROM Employee a
WHERE EXISTS (
    SELECT 1
    FROM Employee b
    WHERE a.managerId = b.id
      AND a.salary > b.salary
);