CREATE TABLE USERS(
    id SERIAL 
        PRIMARY KEY,
    user_name varchar(255) 
        NOT NULL
);

CREATE TABLE POSTS (
    id SERIAL 
        PRIMARY KEY,
    title varchar(255) 
        NOT NULL,
    by_user Integer REFERENCES USERS 
        ON DELETE CASCADE
        NOT NULL
);

CREATE TABLE COMMENTS_ON_POST (
    id SERIAL PRIMARY KEY,
    comment varchar(1000),
    ref Integer REFERENCES POSTS 
        ON DELETE CASCADE
        NOT NULL,
    by_user Integer REFERENCES USERS 
        ON DELETE CASCADE
        NOT NULL
);

CREATE TABLE LIKES_ON_POST (
    id SERIAL PRIMARY KEY,
    like_dislike boolean 
        NOT NULL,
    ref Integer REFERENCES POSTS
        ON DELETE CASCADE
        NOT NULL,
    by_user Integer REFERENCES USERS 
        ON DELETE CASCADE
        NOT NULL
);

CREATE TABLE COMMENTS_ON_COMMENT (
    id SERIAL PRIMARY KEY,
    comment varchar(1000),
    ref Integer REFERENCES COMMENTS_ON_POST
        ON DELETE CASCADE
        NOT NULL,
    by_user Integer REFERENCES USERS 
        ON DELETE CASCADE
        NOT NULL
);

CREATE TABLE LIKES_ON_COMMENT (
    id SERIAL PRIMARY KEY,
    like_dislike boolean 
        NOT NULL,
    ref Integer REFERENCES COMMENTS
        ON DELETE CASCADE
        NOT NULL,
    by_user Integer REFERENCES USERS 
        ON DELETE CASCADE
        NOT NULL
);

CREATE TABLE LIKES_ON_COMMENT_OF_COMMENTS (
    id SERIAL PRIMARY KEY,
    like_dislike boolean 
        NOT NULL,
    ref Integer REFERENCES COMMENTS_ON_COMMENT
        ON DELETE CASCADE
        NOT NULL,
    by_user Integer REFERENCES USERS 
        ON DELETE CASCADE
        NOT NULL
);


