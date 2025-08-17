SELECT * FROM person2;

ALTER TABLE person2 
    ADD COLUMN email VARCHAR(25) DEFAULT 'defaulthabi@gmail.com' NOT NULL;

ALTER TABLE person2 
    DROP COLUMN email;

ALTER TABLE person2
    RENAME COLUMN age to user_age;

ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(25);


ALTER TABLE person2
    ALTER COLUMN user_age set NOT NULL;



ALTER TABLE person2
    ALTER COLUMN user_age drop NOT NULL;



ALTER TABLE person2
    -- ADD constraint unique_person2_user_age UNIQUE(user_age);
    -- ADD constraint pk_person2_user_age PRIMARY KEY(user_age);

ALTER TABLE person2
    DROP constraint unique_person2_user_age UNIQUE(user_age);