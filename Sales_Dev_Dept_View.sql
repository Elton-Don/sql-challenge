DROP View IF EXISTS Sales_Dept CASCADE;

Create View Sales_Dev_Dept AS
SELECT e.emp_no,
  e.last_name,
  e.first_name,
  d.dept_name
From dept_emp As de  
Join departments As d
On (de.dept_no = d.dept_no)
Join employees As e
on (de.emp_no = e.emp_no)
Where (dept_name = 'Sales')
Or (dept_name = 'Development');

Select *
From
	Sales_Dev_Dept;
