-- create a table named students with the following columns
-- student_id, student_name, age, frontend_mark, backend_mark, status
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    frontend_mark INT NOT NULL,
    backend_mark INT NOT NULL,
    status VARCHAR(10) 
);

