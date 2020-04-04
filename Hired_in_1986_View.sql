Create View Hired_in_1986 AS
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1985-12-31' and '1986-12-31';

Select *
From
	Hired_in_1986;
