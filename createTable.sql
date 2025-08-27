CREATE TABLE person (
    person_id SERIAL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER,
    is_actie BOOLEAN,
    dob DATE
)

CREATE TABLE person2 (
    person_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) not NULL,
    age INTEGER CHECK( age >= 18 ),
    is_actie BOOLEAN DEFAULT TRUE,
    dob DATE
)



CREATE TABLE person4 (
    id SERIAL,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    age INTEGER CHECK( age >= 18 ),
    is_actie BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(id)
)

CREATE TABLE person5 (
    id SERIAL,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    age INTEGER CHECK( age >= 18 ),
    is_actie BOOLEAN DEFAULT TRUE, -- composite key
    PRIMARY KEY(id, user_name)
)

CREATE TABLE person6 (
    id SERIAL,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    age INTEGER CHECK( age >= 18 ),
    is_actie BOOLEAN DEFAULT TRUE, -- composite key
    PRIMARY KEY(age, user_name)
)



INSERT INTO person2 VALUES(6, 'habiba', 19);

INSERT INTO person2 VALUES (7, 'habiba', 19), (8, 'habiba', 19), (9, 'habiba', 19), (10, 'habiba', 19);





