-- Creating student table
CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number INTEGER,
	phone VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE,
	grad_year INTEGER
);

-- Creating teacher table
CREATE TABLE teachers(
teacher_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL, 
homeroom_number INTEGER,
department VARCHAR(50),
phone VARCHAR(20) UNIQUE,
email VARCHAR(20) UNIQUE
);

-- inserting the student information
INSERT INTO students(first_name,last_name, homeroom_number,phone,grad_year)
VALUES ('Mark','Watney',5,'7755551234',2035);

-- inserting the teacher information
INSERT INTO teachers(first_name,last_name, homeroom_number,department,email,phone)
VALUES ('Jonas','Salk',5,'Biology','jsalk@school.org','7755554321');

