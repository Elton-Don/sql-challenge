--Delete View Emp_Dept

Create View Emp_Dept AS
SELECT e.emp_no,
  e.last_name,
  e.first_name,
  d.dept_name
From dept_emp As de  
Join departments As d
On (de.dept_no = d.dept_no)
Join employees As e
on (de.emp_no = e.emp_no);

Select *
From
	Emp_Dept;