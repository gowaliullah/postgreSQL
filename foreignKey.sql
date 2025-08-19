CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    -- user_id INTEGER REFERENCES "user"(id) 
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
    -- user_id INTEGER REFERENCES "user"(id) 
    -- user_id INTEGER REFERENCES "user"(id) 
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
    WHERE id = 1;
