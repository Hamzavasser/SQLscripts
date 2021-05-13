CREATE DATABASE school;
use school;

CREATE TABLE students (
students_id INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(60) NOT NULL,
last_name varchar(60) NOT NULL,
age INT NOT NULL
);

CREATE TABLE classes (
class_id INT PRIMARY KEY AUTO_INCREMENT,
subject varchar(80) NOT NULL,
description varchar(200) NOT NULL,
level INT NOT NULL
);

CREATE TABLE enrollment (
enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
fk_students_id INT NOT NULL,
fk_class_id INT NOT NULL,
FOREIGN KEY (fk_students_id) REFERENCES students(students_id),
FOREIGN KEY (fk_class_id) REFERENCES classes(class_id)
);

INSERT INTO students(first_name, last_name, age)
VALUES ('Hamza', 'Vasser', 32);
INSERT INTO students(first_name, last_name, age)
VALUES ('Alex', 'Williams', 25);
INSERT INTO students(first_name, last_name, age)
VALUES ('Alan', 'Baker', 28);

INSERT INTO classes(subject, description, level)
VALUES ('english', 'learning how to structure grammer', 9);
INSERT INTO classes(subject, description, level)
VALUES ('psychology', 'the study on the mind and how it works', 4);
INSERT INTO classes(subject, description, level)
VALUES ('mysql', 'understanding  databases', 7);

INSERT INTO enrollment(fk_students_id, fk_class_id)
VALUES (1, 1);
INSERT INTO enrollment(fk_students_id, fk_class_id)
VALUES (1,2);

INSERT INTO enrollment(fk_students_id, fk_class_id)
VALUES (2,3);
INSERT INTO enrollment(fk_students_id, fk_class_id)
VALUES (2,2);

INSERT INTO enrollment(fk_students_id, fk_class_id)
VALUES (3,3);
INSERT INTO enrollment(fk_students_id, fk_class_id)
VALUES (3,1);

SELECT first_name, last_name from students s 
JOIN enrollment e ON s.students_id=e.fk_students_id 
WHERE e.fk_class_id=3;


