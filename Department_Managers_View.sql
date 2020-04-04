-- Creating a view that shows the history of department managers

Create View Department_Managers AS
 SELECT dept_manager.dept_no,
  dept_manager.emp_no,
  employees.last_name,
  employees.first_name,
  dept_manager.from_date,
  dept_manager.to_date
 FROM dept_manager
 INNER JOIN employees ON
 employees.emp_no = dept_manager.emp_no;

Select *
From
	Department_Managers;