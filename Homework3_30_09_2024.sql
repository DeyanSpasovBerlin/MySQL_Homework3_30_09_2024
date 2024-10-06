USE hr;
SELECT
*
FROM employees;
 -- Вывести всех сотрудников кроме тех, кто работает в департаментах 80 и 110
SELECT
first_name,
last_name,
department_id
FROM employees
WHERE department_id NOT IN (80,110);
-- variant
SELECT
first_name,
last_name,
department_id
FROM employees
WHERE (department_id !=80) AND (department_id !=110);
--  Вывести сотрудников зарабатывающих от 5000 до 7000 (включая концы)
SELECT
first_name,
last_name,
salary
FROM employees
WHERE (salary >= 5000) AND (salary <=7000);
--  Вывести все страны, которые содержат в названии 'g'
SELECT
*
FROM countries;
SELECT
country_name
FROM countries
WHERE country_name LIKE '%g%';
--  Вывести все города, где почтовый код начинается или заканчивается на 99
SELECT
*
FROM locations;
SELECT
city
FROM locations
WHERE (postal_code LIKE '99%') OR  (postal_code LIKE  '%99');
-- Вывести всех работников, кто не имеет менеджера
SELECT
first_name,
last_name
FROM employees
WHERE manager_id IS NULL;
