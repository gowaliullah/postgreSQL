SHOW timezone;

SELECT now();


CREATE TABLE timeZ ( ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone );

INSERT INTO timeZ VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00')


SELECT * FROM timeZ;


SELECT now();


SELECT CURRENT_DATE;
SELECT now()::date;
SELECT now()::time;


SELECT to_char(now(), 'dd/mm/yyyy');
SELECT to_char(now(), 'DDD');

SELECT CURRENT_DATE - INTERVAL '1 year';
SELECT CURRENT_DATE - INTERVAL '1 month';
SELECT CURRENT_DATE - INTERVAL '2 year 4 month';


SELECT age(CURRENT_DATE, '2002-02-01')

SELECT * , age(CURRENT_DATE, dob) FROM students; 


SELECT extract(year from '2020-01-25'::date);
SELECT extract(day from '2020-01-25'::date);
SELECT extract(month from '2020-01-25'::date);

SELECT '0'::BOOLEAN;
SELECT '1'::BOOLEAN;
SELECT 'y'::BOOLEAN;
SELECT 'n'::BOOLEAN;