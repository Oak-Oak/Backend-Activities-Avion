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

DELETE FROM students
	WHERE id = (SELECT MAX(id) FROM students);

SELECT COUNT(*) From students;

SELECT * FROM students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * FROM students ORDER BY age DESC;

CREATE TABLE research_papers (
	id 			integer 			   	PRIMARY KEY,
	student_id 	integer   				NOT NULL,
    grade       character varying(1)    DEFAULT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO research_papers
	(id, student_id, grade)
	
VALUES
	(10,1,'A'),
	(20,1,'B'),
	(30,1,'C'),
	(40,2,'D'),
	(50,2,'D'),
	(60,3,NULL),
	(70,4,NULL),
	(80,5,'F'),
	(90,3,'E'),
	(100,3,'B');
	
	
SELECT
	students.first_name,
	students.last_name,
	COUNT(research_papers.id) AS number_of_research_papers
FROM 
	students
JOIN
	research_papers ON students.id = research_papers.student_id
GROUP BY
	students.id, students.first_name, students.last_name
HAVING
	COUNT(research_papers.id) > 1;
	
SELECT
	students.first_name,
	students.last_name,
	research_papers.id AS research_papers_id,
	research_papers.grade
FROM 
	students
JOIN
	research_papers ON students.id = research_papers.student_id
WHERE
	research_papers.grade IS NULL;