DROP DATABASE IF EXISTS EMS_db;

CREATE DATABASE EMS_db;

USE EMS_db;

CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    NAMES VARCHAR(30) NOT NULL,
);

CREATE TABLE roles (
    r_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(8, 2) NOT NULL,
    department_id INT NOT NULL,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(dep_id) ON DELETE CASCADE
);

CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    CONSTRAINT fk_role FOREIGN KEY  (role_id) REFERENCES roles(r_id) ON DELETE CASCADE,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES  employee(emp_id) ON DELETE SET NULL
);

SELECT*FROM departments;

SELECT*FROM roles;

SELECT*FROM employees;


