CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(50),
  birth_date DATE,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  sex VARCHAR(10),
  hire_date DATE,
  PRIMARY KEY (emp_no)
);


CREATE TABLE dept_manager(
  dept_no VARCHAR(50) NOT NULL,
  emp_no int NOT NULL ,
  PRIMARY KEY (
    emp_no
  ) );
  
  CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT,
  PRIMARY KEY (emp_no)
);
CREATE TABLE titles (
  title_id VARCHAR(50) NOT NULL,
  title VARCHAR(100),
  PRIMARY KEY (title_id)
);

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(50) NOT NULL,
  PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE departments (
  dept_no VARCHAR(50) NOT NULL,
  dept_name VARCHAR(100),
  PRIMARY KEY (dept_no)
);


ALTER TABLE employees
ADD CONSTRAINT fk_emp_title
  FOREIGN KEY (emp_title_id)
  REFERENCES titles(title_id);

ALTER TABLE salaries
ADD CONSTRAINT fk_salary_emp
  FOREIGN KEY (emp_no)
  REFERENCES employees(emp_no);
  
ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_no
  FOREIGN KEY (emp_no)
  REFERENCES employees(emp_no);
  
Alter table dept_manager
 ADD CONSTRAINT fk_emp_m
   FOREIGN KEY(emp_no)
    REFERENCES employees(emp_no);