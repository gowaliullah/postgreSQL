CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade VARCHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
-- ('Alice', 'Smith', 18, '12', 'Physics', 'alice.smith@example.com', '2007-03-15', 'A+', 'USA'),
-- ('Bob', 'Johnson', 17, '11', 'Chemistry', 'bob.j@example.com', '2008-01-22', 'B-', 'Canada'),
-- ('Charlie', 'Brown', 19, '12', 'Mathematics', 'charlie.b@example.com', '2006-11-05', 'O+', 'UK'),
-- ('Diana', 'Miller', 16, '10', 'Biology', 'diana.m@example.com', '2009-07-30', 'AB-', 'Australia'),
-- ('Eve', 'Davis', 18, '12', 'Computer Science', 'eve.d@example.com', '2007-09-10', 'A-', 'Germany'),
-- ('Frank', 'Garcia', 17, '11', 'History', 'frank.g@example.com', '2008-04-18', 'O-', 'Spain'),
-- ('Grace', 'Rodriguez', 16, '10', 'Literature', 'grace.r@example.com', '2009-02-28', 'B+', 'Mexico'),
-- ('Harry', 'Martinez', 19, '12', 'Economics', 'harry.m@example.com', '2006-12-01', 'A+', 'France'),
-- ('Ivy', 'Hernandez', 18, '11', 'Art', 'ivy.h@example.com', '2007-06-25', 'O+', 'Italy'),
-- ('Jack', 'Lopez', 17, '10', 'Physical Education', 'jack.l@example.com', '2008-08-03', 'AB+', 'Brazil'),
-- ('Karen', 'Gonzalez', 16, '12', 'Music', 'karen.g@example.com', '2009-05-12', 'A-', 'Argentina'),
-- ('Liam', 'Perez', 19, '11', 'Philosophy', 'liam.p@example.com', '2006-10-20', 'B-', 'Portugal'),
-- ('Mia', 'Sanchez', 18, '10', 'Drama', 'mia.s@example.com', '2007-01-09', 'O-', 'Colombia'),
-- ('Noah', 'Ramirez', 17, '12', 'Geography', 'noah.r@example.com', '2008-03-07', 'A+', 'Egypt'),
-- ('Olivia', 'Torres', 16, '11', 'Sociology', 'olivia.t@example.com', '2009-04-14', 'B+', 'South Africa'),
-- ('Peter', 'Flores', 19, '10', 'Psychology', 'peter.f@example.com', '2006-09-01', 'O+', 'India'),
-- ('Quinn', 'Rivera', 18, '12', 'Law', 'quinn.r@example.com', '2007-12-19', 'AB+', 'China'),
-- ('Rachel', 'Gomez', 17, '11', 'Journalism', 'rachel.g@example.com', '2008-05-23', 'A-', 'Japan'),
-- ('Sam', 'Diaz', 16, '10', 'Environmental Science', 'sam.d@example.com', '2009-08-08', 'B-', 'South Korea'),
-- ('Tina', 'Reyes', 19, '12', 'Engineering', 'tina.r@example.com', '2006-02-17', 'O-', 'Turkey'),
-- ('Uma', 'Cruz', 18, '11', 'Architecture', 'uma.c@example.com', '2007-07-04', 'A+', 'Philippines'),
-- ('Victor', 'Morales', 17, '10', 'Nursing', 'victor.m@example.com', '2008-06-11', 'B+', 'Vietnam'),
-- ('Wendy', 'Ortiz', 16, '12', 'Pharmacy', 'wendy.o@example.com', '2009-01-29', 'O+', 'Thailand'),
-- ('Xavier', 'Vazquez', 19, '11', 'Dentistry', 'xavier.v@example.com', '2006-04-02', 'AB-', 'Indonesia'),
-- ('Yara', 'Alvarez', 18, '10', 'Veterinary Medicine', 'yara.a@example.com', '2007-10-27', 'A-', 'Malaysia'),
-- ('Zack', 'Castillo', 17, '12', 'Business Administration', 'zack.c@example.com', '2008-09-15', 'B-', 'Singapore'),
-- ('Amy', 'Gupta', 16, '11', 'Marketing', 'amy.g@example.com', '2009-03-05', 'O-', 'India'),
-- ('Ben', 'Wang', 19, '10', 'Finance', 'ben.w@example.com', '2006-07-13', 'A+', 'China'),
-- ('Chloe', 'Kim', 18, '12', 'Graphic Design', 'chloe.k@example.com', '2007-02-01', 'B+', 'South Korea'),
-- ('David', 'Chen', 17, '11', 'Animation', 'david.c@example.com', '2008-11-20', 'O+', 'Taiwan');

-- see everythings
SELECT * FROM students;

-- get single column
SELECT email FROM students;

-- multiple single column
SELECT email, first_name, country FROM students;

-- change the key_name
SELECT email as student_email FROM students;


-- sorting
SELECT * FROM students ORDER BY first_name ASC;

-- only unique value
SELECT DISTINCT country FROM students;
SELECT DISTINCT blood_group FROM students;


SELECT * FROM students 
    WHERE country ='Australia';


-- search with multiple condition
SELECT * FROM students 
    WHERE grade ='10' AND course = 'Biology';




--  multiple search with OR condition  
SELECT * FROM students 
    WHERE country ='Australia' OR country = 'UK';


SELECT * FROM students 
    WHERE (country ='Australia' OR country = 'UK') AND age =19;


-- catipalize speciphic field
SELECT upper(first_name), * FROM students;

-- concat
SELECT concat(first_name, ' ', last_name), * FROM students;

SELECT length(first_name), * FROM students;