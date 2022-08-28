CREATE TABLE DS_Salaries(
	work_year CHAR(4),
    experience_level CHAR(2),
    employment_type CHAR(2),
    job_title VARCHAR(255),
    salary INT(255),
    salary_currency CHAR(3),
    salary_in_usd INT(255),
    employee_residence CHAR(2),
    remote_ratio INT(3),
    company_location CHAR(2),
    company_size CHAR(1)
);

SELECT * FROM DS_Salaries; #worked 

CREATE TABLE cyber_salaries(
	work_year CHAR(4),
    experience_level CHAR(2),
    employment_type CHAR(2),
    job_title VARCHAR(255),
    salary INT(255),
    salary_currency CHAR(3),
    salary_in_usd INT(255),
    employee_residence CHAR(2),
    remote_ratio INT(3),
    company_location CHAR(2),
    company_size CHAR(1)	
);

SELECT * FROM cyber_salaries; 

ALTER TABLE DS_Salaries
	ADD data_type CHAR(2) AFTER company_size;

UPDATE DS_Salaries SET data_type = 'DS';

ALTER TABLE cyber_salaries
	ADD data_type CHAR(2) AFTER company_size;

UPDATE cyber_salaries SET data_type = 'CB';

SELECT * FROM DS_Salaries WHERE employee_residence = 'GB'
UNION
SELECT * FROM cyber_salaries WHERE employee_residence = 'GB'
ORDER BY data_type; 









