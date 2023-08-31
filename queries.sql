CREATE TABLE students (
  student_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100),
  phone_number VARCHAR(20),
  email VARCHAR(50),
  date_of_birth DATE
);

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(50),
instructor_name VARCHAR(50),
start_time TIME,
end_time TIME,
room_number VARCHAR(20)
);

CREATE TABLE faculty (
  faculty_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  date_of_birth DATE,
  address VARCHAR(100),
  email VARCHAR(50),
  phone_number VARCHAR(20),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments (department_id)
);

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50),
  location VARCHAR(100)
);

CREATE TABLE grades (
  student_id INT,
  course_id INT,
  grade VARCHAR(2),
  PRIMARY KEY (student_id, course_id),
  FOREIGN KEY (student_id) REFERENCES students (student_id),
  FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

CREATE TABLE extracurriculars (
  activity_id INT PRIMARY KEY,
  activity_name VARCHAR(50)
);

INSERT INTO students (student_id, first_name, last_name, date_of_birth, address, email, phone_number)
VALUES (1, 'John', 'Doe', '2000-01-01', '123 Main St', 'johndoe@example.com', '123-456-7890');

UPDATE students
SET address = '456 Elm St'
WHERE student_id = 1;

DELETE FROM students
WHERE student_id = 1;

SELECT first_name, last_name
FROM students;

SELECT password
FROM students
WHERE student_id = 1;

SELECT *
FROM students
WHERE email LIKE '%@example.com';

SELECT *
FROM students
WHERE date_of_birth > '1995-01-01';

SELECT *
FROM students
WHERE phone_number = '123-456-7890';

SELECT *
FROM students
WHERE address BETWEEN '100 Main St' AND '200 Main St';




