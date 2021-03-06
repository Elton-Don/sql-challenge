DROP View IF EXISTS Hercules_B CASCADE;

Create View Hercules_B AS
Select first_name, last_name
From employees As e
Where e.first_name = 'Hercules'
And
e.last_name like 'B%';

Select *
From
	Hercules_B;