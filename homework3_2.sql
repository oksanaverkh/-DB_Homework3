USE lesson3;

-- Часть 2:
-- 1. Отсортируйте поле “зарплата” в порядке убывания и возрастания
SELECT * FROM people
ORDER BY salary DESC;

SELECT * FROM people
ORDER BY salary;

-- 2. Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой (возможен подзапрос)
SELECT * FROM (
SELECT * FROM people
ORDER BY salary DESC
LIMIT 5) AS t 
ORDER BY salary;

-- 3. Выполните группировку всех сотрудников по специальности , суммарная зарплата которых превышает 100000
SELECT speciality, sum(salary) AS sum_salary FROM people
GROUP BY speciality HAVING sum_salary > 100000;
