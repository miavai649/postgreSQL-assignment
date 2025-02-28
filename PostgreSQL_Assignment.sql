-- create a table named students with the following columns
-- student_id, student_name, age, email, frontend_mark, backend_mark, status
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    frontend_mark INT NOT NULL,
    backend_mark INT NOT NULL,
    status VARCHAR(10) 
);


-- create a table named courses with the following columns
-- course_id, course_name, credits
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT NOT NULL
)

-- create a table named enrollment with the following columns
-- enrollment_id, student_id, course_id
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
)

-- insert the following data into the students table
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark) VALUES
('Sameer', 21,'sameer@example.com', 48, 60),
('Zoya', 23,'zoya@example.com', 52, 58),
('Nabil', 22, 'nabil@example.com', 37, 46),
('Rafi', 24, 'rafi@example.com', 41, 40),
('Sophia', 22, 'sophia@example.com', 50, 52),
('Hasan', 23, 'hasan@gmail.com', 43, 39)

SELECT * FROM students;
