---Create a database called bootcamp.---
CREATE DATABASE bootcamp;

---Create a table called students.Add the following columns: id,last_name,first_name,birth_day---

CREATE TABLE students(id SERIAL PRIMARY KEY,
					  last_name VARCHAR(100) NOT NULL,
					  first_name VARCHAR(150) NOT NULL,
					  birth_day DATE NOT NULL);

---Insert the data seen above to the students table. Find the most efficient way to insert the data.---
---Insert your last_name, first_name and birth_date to the students table (Take a look at the id given).
 
 INSERT INTO students(last_name,first_name,birt_day) VALUES('Benichou','Marc','11/02/1998');
 INSERT INTO students(last_name,first_name,birt_day) VALUES('Cohen','Yoan','03/12/2010');
 INSERT INTO students(last_name,first_name,birt_day) VALUES('Benichou','Lea','27/07/1987');
 INSERT INTO students(last_name,first_name,birt_day) VALUES('Dux','Amelia','07/04/1996');
 INSERT INTO students(last_name,first_name,birt_day) VALUES('Grez','David','14/06/2003');
 INSERT INTO students(last_name,first_name,birt_day) VALUES('Simpson','Omer','03/10/1980');
 
 ---Fetch all of the data from the table.---
 SELECT * FROM students;

 ---Fetch all of the students first_names and last_names.---
 SELECT last_name,first_name FROM students;
 ---For the following questions, only fetch the first_names and last_names of the students.
--  Fetch the student which id is equal to 2.---
SELECT last_name,first_name FROM students WHERE id=2;
---Fetch the student whose last_name is Benichou AND first_name is Marc.---
SELECT last_name,first_name FROM students WHERE last_name='Benichou' AND first_name='Marc';
---Fetch the students whose last_names are Benichou OR first_names are Marc.---
SELECT last_name,first_name FROM students WHERE last_name='Benichou' OR first_name='Marc';
---Fetch the students whose first_names contain the letter a---
SELECT last_name,first_name FROM students WHERE first_name LIKE '%a%';
---Fetch the students whose first_names start with the letter a.---
SELECT last_name,first_name FROM students WHERE first_name LIKE 'A%';
---Fetch the students whose first_names end with the letter a.---
 SELECT last_name,first_name FROM students WHERE first_name LIKE '%a';
 ---Fetch the students whose second to last letter of their first_names are a---
 SELECT last_name,first_name FROM students WHERE first_name LIKE '%a_';
 ---Fetch the students whose id’s are equal to 1 AND 3-- .
 SELECT last_name,first_name FROM students WHERE id IN (1,3) ;
 ---Fetch the students whose birth_dates are equal to or come after 1/01/2000. (show all their info).--
SELECT last_name,first_name
FROM students
WHERE  birth_day <= '01-01-2000';