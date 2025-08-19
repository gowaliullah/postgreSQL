SELECT * FROM students;

-- Group By -> Split, Apply, Combine


SELECT country FROM students
        GROUP BY country;


        SELECT country, count(*) FROM students
        GROUP BY country;

        SELECT country, count(*), avg(age) FROM students
        GROUP BY country;


        -- having run hoy every GROUP ar against e
        SELECT country, avg(age) FROM students
        GROUP BY country
            HAVING avg(age) > 15
        ;


    SELECT extract(year from dob) as birth_year, count(*)
        FROM students
            GROUP BY birth_year;


