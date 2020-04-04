DROP View IF EXISTS Name_count CASCADE;

Create View Name_count AS
SELECT last_name, COUNT(last_name) AS "name count"
FROM employees
Group BY last_name
Order By "name count" DESC;

Select *
From
	Name_count;