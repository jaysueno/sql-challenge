-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
-- Used the 'select / from' to display the desired query
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
from salaries
inner join employees on
employees.emp_no=salaries.emp_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01;' and '1986-12-31'; 

select * from employees

-- Perform an INNER JOIN on the two tables
SELECT players.first_name, players.last_name, players.hand, matches.loser_rank
FROM matches
INNER JOIN players ON
players.player_id=matches.loser_id;

-- Alternative solution:
-- Perform an INNER JOIN on the two tables
SELECT p.first_name, p.last_name, p.hand, m.loser_rank
FROM matches AS m
INNER JOIN players AS p ON
p.player_id=m.loser_id;


-- Filter the query to show only dogs under the age of 5
SELECT pet_type, pet_name
FROM people
WHERE pet_type = 'dog'
AND pet_age < 5;

-- Update "JS" to "JavaScript"
UPDATE programming_languages
SET language = 'JavaScript'
WHERE id = 2;

-- Change HTML's rating to 90
UPDATE programming_languages
SET rating = 90
WHERE id = 1;