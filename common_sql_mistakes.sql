-- Common mistakes beginners make (and fixes)

-- Mistake: using WHERE on aggregated values
-- Correct: use HAVING
SELECT status, COUNT(*)
FROM tickets
GROUP BY status
HAVING COUNT(*) > 10;

-- Mistake: selecting columns not in GROUP BY
-- Correct: aggregate or include in GROUP BY
SELECT department, AVG(salary)
FROM employees
GROUP BY department;