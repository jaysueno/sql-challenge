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

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager on dept_manager.dept_no=departments.dept_no
inner join employees on dept_manager.emp_no=employees.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as x on x.emp_no=e.emp_no
inner join departments as d on d.dept_no=x.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees 
where first_name='Hercules'
and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as x on x.emp_no=e.emp_no
inner join departments as d on d.dept_no=x.dept_no
where d.dept_name = 'Sales';

-- 7. List all employees in the Sales andDev elopment departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as x on x.emp_no=e.emp_no
inner join departments as d on d.dept_no=x.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count desc;
