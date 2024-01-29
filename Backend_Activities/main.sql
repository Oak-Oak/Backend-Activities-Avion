
CREATE TABLE students (
	id 			integer 			   	PRIMARY KEY,
	first_name 	character varying(50)   NOT NULL,
    middle_name character varying(50)   DEFAULT 'NULL',
	last_name 	character varying(50)   NOT NULL,
    age         integer                 NOT NULL,
    location    character varying(50)   NOT NULL,
);


INSERT INTO students (id, first_name, last_name, age, location)
VALUES
	(1, 'Juan', 'Cruz', 18, 'Manila'),
	(2, 'Anne', 'Wall',20, 'Manila'),
	(3, 'Theresa', 'Joseph', 21, 'Manila'),
	(4, 'Issac', 'Gray', 19, 'Laguna'),
	(5, 'Zack', 'Mathews',22, 'Marikina'),
	(6, 'Finn', 'Lam', 21, 'Manila');

UPDATE students 
SET 
	first_name = 'Ivan',
	middle_name = 'Ingram', 
	last_name = 'Howard', 
	age = 25,
	location = 'Bulacan'
	
WHERE id = 1;

DELETE FROM students WHERE id =1 ;


SELECT * FROM students;