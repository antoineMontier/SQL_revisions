--Create a database called "company_records" 
--that stores information about employees and departments. 
--The "employees" table should have the following columns: 
--id (integer, primary key), 
--first_name (string), 
--last_name (string), 
--salary (integer), 
--department_id (integer, foreign key to the "departments" table). 
--The "departments" table should have the following columns: 
--id (integer, primary key), 
--name (string), 
--budget (integer).

CREATE TABLE IF NOT EXISTS employees(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    salary INTEGER CHECK (salary >= 0),
    did INTEGER NOT NULL,
    FOREIGN KEY (did) REFERENCES department(did)
);

CREATE TABLE IF NOT EXISTS department(
    did SERIAL PRIMARY KEY,
    name VARCHAR(255),
    budget INTEGER CHECK (budget >= 0)
);