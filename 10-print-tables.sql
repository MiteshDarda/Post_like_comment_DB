-- SELECT * FROM users;
-- SELECT * FROM post;
-- SELECT * FROM comment;
-- SELECT * FROM likes;


-- Q 1. POSTS OF USERS

-- SELECT u.u_name,  p.info, p.id
-- FROM users AS u
-- INNER JOIN post AS p ON u.id = p.user_id;

-- SELECT u.u_name,  COUNT(p.info)
-- FROM users AS u
-- INNER JOIN post AS p ON u.id = p.user_id
-- GROUP BY u.u_name;


-- Q 2. POST AND ITS DIRECT COMMENTS WITH USER NAME WHO COMMENTED

-- SELECT post_comments."The Post", post_comments."Comment", u.u_name  AS "COMMENT BY"
-- FROM users AS u
-- INNER JOIN (
--     SELECT p.info AS "The Post", c.comment AS "Comment", c.user_id AS id
--     FROM post AS p
--     INNER JOIN comment AS c ON p.id = c.post_id
-- ) AS post_comments ON post_comments.id = u.id
-- ORDER BY post_comments."The Post";


-- Q 3. Opean a comment thread

-- WITH 
--     RECURSIVE comments_levels AS (
--         SELECT c1.id, c1.comment, c1.user_id, c1.comment_id, 1 as lvl
--         FROM comment as c1
--         WHERE c1.id = 1
--         UNION ALL
--         SELECT c2.id, c2.comment, c2.user_id, c2.comment_id, lvl + 1 as lvl
--         FROM comments_levels as c
--         INNER JOIN comment as c2 ON c.id = c2.comment_id
--     )
--     ,
--     final_table AS (
--         SELECT cl.lvl, cl.comment, u.u_name as comment_by, cl.id, cl.comment_id
--         FROM comments_levels as cl
--         INNER JOIN users as u ON u.id = cl.user_id
--     )

-- SELECT * FROM final_table

