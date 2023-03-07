-- CREATE TABLE employe(
--     id SERIAL PRIMARY KEY,
--     "name" varchar(500),
--     salary Integer
-- );

-- DROP TABLE employe;

-- SELECT * FROM employe;

-- INSERT INTO employe("name", salary)
-- VALUES
--     ('Ram', 15),
--     ('sita', 20),
--     ('gintama', 30),
--     ('gandhi', 21),
    -- ('ganja', 11);

--------------------- Given Below 2 queres are basically the same

-- SELECT * FROM employe
-- WHERE salary > (SELECT cast(avg(salary) as INT) AS x FROM employe);

-- WITH avg_sal(val) AS (
--     SELECT cast(avg(salary) as INT) FROM employe
-- )
-- SELECT * FROM employe, avg_sal
-- WHERE salary > val;


-----------------------------------

-- DROP TABLE employe;