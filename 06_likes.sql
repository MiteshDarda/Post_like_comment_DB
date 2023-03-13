INSERT INTO likes(user_id, like_on, like_type, ref)
VALUES 
    (1, 'p', 'l', 1),
    (1, 'p', 'd', 5),
    (2, 'p', 'l', 4),
    (2, 'p', 'd', 2),
    (3, 'p', 'l', 1),
    (3, 'p', 'l', 2),
    (3, 'p', 'd', 6),
    (6, 'p', 'l', 1),
    (6, 'p', 'l', 2),
    (6, 'p', 'd', 4),
    (6, 'p', 'l', 6),
    
    (1, 'c', 'd', 1),
    (1, 'c', 'l', 2),
    (1, 'c', 'l', 5),
    (1, 'c', 'd', 10),
    (1, 'c', 'd', 13),
    (2, 'c', 'l', 2),
    (2, 'c', 'l', 5),
    (2, 'c', 'd', 10),
    (3, 'c', 'd', 4),
    (3, 'c', 'l', 6),
    (3, 'c', 'd', 13),
    (4, 'c', 'd', 1),
    (4, 'c', 'd', 2),
    (4, 'c', 'l', 3)
;

UPDATE post 
SET likes = likes + 1
WHERE id = 1;

UPDATE post 
SET dislikes = dislikes + 1
WHERE id = 5;

UPDATE post 
SET likes = likes + 1
WHERE id = 4;

UPDATE post 
SET dislikes = dislikes + 1
WHERE id = 2;

UPDATE post 
SET likes = likes + 1
WHERE id = 1;

UPDATE post 
SET likes = likes + 1
WHERE id = 2;

UPDATE post 
SET dislikes = dislikes + 1
WHERE id = 6;

UPDATE post 
SET likes = likes + 1
WHERE id = 1;

UPDATE post 
SET likes = likes + 1
WHERE id = 2;

UPDATE post 
SET dislikes = dislikes + 1
WHERE id = 4;

UPDATE post 
SET likes = likes + 1
WHERE id = 6;



UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 1;

UPDATE comment 
SET likes = likes + 1
WHERE id = 2;

UPDATE comment 
SET likes = likes + 1
WHERE id = 5;

UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 10;

UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 13;

UPDATE comment 
SET likes = likes + 1
WHERE id = 2;

UPDATE comment 
SET likes = likes + 1
WHERE id = 5;

UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 10;

UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 4;

UPDATE comment 
SET likes = likes + 1
WHERE id = 6;

UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 13;

UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 1;

UPDATE comment 
SET dislikes = dislikes + 1
WHERE id = 2;

UPDATE comment 
SET likes = likes + 1
WHERE id = 3;