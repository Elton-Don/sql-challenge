Create View Employee_Salaries1 AS
 SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.gender,
  salaries.salary
 FROM employees
 INNER JOIN salaries ON
 employees.emp_no = salaries.emp_no;

Select *
From
	Employee_Salaries1;