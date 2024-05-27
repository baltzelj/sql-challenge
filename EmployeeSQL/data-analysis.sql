create view task1 as
select emp_no, last_name, first_name, sex, salary
from employees
join salaries using(emp_no);

create view task2 as
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

create view task3 as
select first_name, last_name, dept_no, dept_name, emp_no
from dept_manager
join employees using(emp_no)
join departments using(dept_no);

create view task4 as
select dept_no, emp_no, last_name, first_name, dept_name
from dept_emp
join departments using(dept_no)
join employees using(emp_no);

create view task5 as
select first_name, last_name, sex
	from employees
	where first_name = 'Hercules' and last_name like 'B%';

create view task6 as
select emp_no, last_name, first_name
from employees
join dept_emp using(emp_no)
join departments using(dept_no)
where dept_name = 'Sales';

create view task7 as
select emp_no, last_name, first_name, dept_name
from employees
join dept_emp using(emp_no)
join departments using(dept_no)
where dept_name = 'Sales' or dept_name = 'Development';

create view task8 as
select last_name, count(last_name) as last_name_count
from employees
group by last_name
order by last_name_count desc;