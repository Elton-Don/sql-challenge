DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE "dept_emp" (
    "emp_no" VARCHAR (6) NOT NULL,
    "dept_no" VARCHAR (4) NOT NULL,
    "from_date" date NOT NULL,
    "to_date" date NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR (4) NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR (30) NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" VARCHAR (6) NOT NULL,
    "title" VARCHAR (30) NOT NULL,
    "from_date" date NOT NULL,
    "to_date" date NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR (4) NOT NULL,
    "emp_no" VARCHAR (6) NOT NULL,
    "from_date" DATE NOT NULL,
    "to_date" DATE NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" VARCHAR (6) NOT NULL PRIMARY KEY,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR (30) NOT NULL,
    "last_name" VARCHAR (30) NOT NULL,
    "gender" VARCHAR (1) NOT NULL,
    "hire_date" DATE NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" VARCHAR (6) NOT NULL,
    "salary" INTEGER NOT NULL,
    "from_date" DATE NOT NULL,
    "to_date" DATE NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");