-- CREATE TYPE like_type AS ENUM ('l', 'd');
-- CREATE TYPE like_on AS ENUM ('p', 'c');

-- DROP TYPE like_type;
-- DROP TYPE like_on;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    u_name varchar(500) NOT NULL
);

CREATE TABLE post (
    id SERIAL 
        PRIMARY KEY,
    info varchar(255) 
        NOT NULL,
    user_id Integer REFERENCES users 
        ON DELETE CASCADE
        NOT NULL,
    likes Integer DEFAULT 0,
    dislikes Integer DEFAULT 0
);

CREATE TABLE comment (
    id SERIAL PRIMARY KEY,
    comment varchar(1000),
    post_id Integer REFERENCES post 
        ON DELETE CASCADE,
    user_id Integer REFERENCES users
        ON DELETE CASCADE
        NOT NULL,
    comment_id Integer REFERENCES comment
        ON DELETE CASCADE,
    likes Integer DEFAULT 0,
    dislikes Integer DEFAULT 0
);

CREATE TABLE likes (
    id SERIAL PRIMARY KEY, 
    user_id Integer REFERENCES users
        ON DELETE CASCADE
        NOT NULL,
    like_type like_type,
    like_on like_on,
    ref Integer
);


