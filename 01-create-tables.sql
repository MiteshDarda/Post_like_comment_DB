-- CREATE TYPE like_action AS ENUM ('like', 'dislike');
-- CREATE TYPE like_type AS ENUM ('post', 'comment');

-- DROP TYPE like_action;
-- DROP TYPE like_type;
;

-- CREATE TABLE users(
--     id SERIAL PRIMARY KEY,
--     u_name varchar(500) NOT NULL
-- );

-- CREATE TABLE post (
--     id SERIAL 
--         PRIMARY KEY,
--     info varchar(255) 
--         NOT NULL,
--     user_id Integer REFERENCES users 
--         ON DELETE CASCADE
--         NOT NULL,
--     likes Integer,
--     dislikes Integer
-- );

-- CREATE TABLE comment (
--     id SERIAL PRIMARY KEY,
--     comment varchar(1000),
--     post_id Integer REFERENCES post 
--         ON DELETE CASCADE,
--     user_id Integer REFERENCES users
--         ON DELETE CASCADE
--         NOT NULL,
--     comment_id Integer REFERENCES comment
--         ON DELETE CASCADE
-- );

-- CREATE TABLE likes (
--     id SERIAL PRIMARY KEY, 
--     operation like_action,
--     user_id Integer REFERENCES users
--         ON DELETE CASCADE
--         NOT NULL,
--     post_id Integer REFERENCES post,
--     comment_id Integer REFERENCES comment
-- );


