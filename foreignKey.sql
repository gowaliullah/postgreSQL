CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    -- user_id INTEGER REFERENCES "user"(id) 
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL -- if set NOT NULL it's does not work 
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
    -- user_id INTEGER REFERENCES "user"(id) 
)


INSERT INTO "user"(username) VALUES
    ('Akash'),
    ('Batas'),
    ('PAni'),
    ('Nodi'),
    ('Bdidge'),
    ('Rasta');

    INSERT INTO "post"(title, user_id) VALUES
    ('Akash', 1),
    ('Batas', 2),
    ('PAni', 3),
    ('Nodi', 4),
    ('Bdidge', 5),
    ('Rasta', 6);

DROP TABLE post;
DROP TABLE "user";


SELECT * FROM post;
SELECT * FROM "user";


-- Restriction behabiour
DELETE FROM "user"
    WHERE id = 4;


-- join with 2 tables
SELECT title, username FROM post -- only title & username
    JOIN "user" ON post.user_id = "user".id


SELECT * FROM post
    JOIN "user" ON post.user_id = "user".id


    SELECT post.id FROM post
    JOIN "user" ON post.user_id = "user".id


-- as alias
SELECT * FROM post p
    JOIN "user" u ON p.user_id = u.id



-- left join
SELECT * FROM post p
    LEFT JOIN "user" u ON p.user_id = u.id

    -- right join
SELECT * FROM post p
    RIGHT JOIN "user" u ON p.user_id = u.id