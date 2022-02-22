SELECT * FROM ironhack.public.authors
LIMIT 5

SELECT * FROM ironhack.public.sales
LIMIT 5

SELECT 
-- trazer da tabela autores au_id, au_lname e au_fname - author first name.
t1.au_id AS AUTHOR_ID,
t1.au_lname AS LAST_NAME,
t1.au_fname AS FIRST_NAME,
-- trazer da tabela titles title
t2.title AS TITLE,
-- trazer da tabela publishers pub_name
t3.pub_name AS PUBLISHER
FROM
ironhack.public.authors AS t1 JOIN
ironhack.public.titleauthor AS t4 ON t1.au_id = t4.au_id JOIN
ironhack.public.titles AS t2 ON t2.title_id=t4.title_id JOIN
ironhack.public.publishers AS t3 ON t2.pub_id = t3.pub_id



SELECT
t5.AUTHOR_ID,
t5.LAST_NAME,
t5.FIRST_NAME,
t5.PUBLISHER,
COUNT(t5.TITLE) AS title_count
FROM (SELECT 
	-- trazer da tabela autores au_id, au_lname e au_fname - author first name.
	t1.au_id AS AUTHOR_ID,
	t1.au_lname AS LAST_NAME,
	t1.au_fname AS FIRST_NAME,
	-- trazer da tabela titles title
	t2.title AS TITLE,
	-- trazer da tabela publishers pub_name
	t3.pub_name AS PUBLISHER
	FROM
	ironhack.public.authors AS t1 JOIN
	ironhack.public.titleauthor AS t4 ON t1.au_id = t4.au_id JOIN
	ironhack.public.titles AS t2 ON t2.title_id=t4.title_id JOIN
	ironhack.public.publishers AS t3 ON t2.pub_id = t3.pub_id) AS t5
-- GROUP BY t5.AUTHOR_ID, t5.LAST_NAME, t5.FIRST_NAME, t5.PUBLISHER
GROUP BY 1,2,3,4
ORDER BY 5 DESC;



SELECT
SUM(t6.title_count) AS sum_title_count
FROM
	(SELECT
	t5.AUTHOR_ID,
	t5.LAST_NAME,
	t5.FIRST_NAME,
	t5.PUBLISHER,
	COUNT(t5.TITLE) AS title_count
	FROM (SELECT 
		-- trazer da tabela autores au_id, au_lname e au_fname - author first name.
		t1.au_id AS AUTHOR_ID,
		t1.au_lname AS LAST_NAME,
		t1.au_fname AS FIRST_NAME,
		-- trazer da tabela titles title
		t2.title AS TITLE,
		-- trazer da tabela publishers pub_name
		t3.pub_name AS PUBLISHER
		FROM
		ironhack.public.authors AS t1 JOIN
		ironhack.public.titleauthor AS t4 ON t1.au_id = t4.au_id JOIN
		ironhack.public.titles AS t2 ON t2.title_id=t4.title_id JOIN
		ironhack.public.publishers AS t3 ON t2.pub_id = t3.pub_id) AS t5
	-- GROUP BY t5.AUTHOR_ID, t5.LAST_NAME, t5.FIRST_NAME, t5.PUBLISHER
	GROUP BY 1,2,3,4
	ORDER BY 5 DESC) AS t6

SELECT
COUNT(*)
FROM 	ironhack.public.authors AS t1 JOIN
		ironhack.public.titleauthor AS t4 ON t1.au_id = t4.au_id JOIN
		ironhack.public.titles AS t2 ON t2.title_id=t4.title_id JOIN
		ironhack.public.publishers AS t3 ON t2.pub_id = t3.pub_id

SELECT
	-- trazer da tabela autores au_id, au_lname e au_fname - author first name.
	t1.au_id AS AUTHOR_ID,
	t1.au_lname AS LAST_NAME,
	t1.au_fname AS FIRST_NAME,
	SUM(t2.qty) AS TOTAL_SALES
FROM
	ironhack.public.authors AS t1 JOIN
	ironhack.public.titleauthor AS t4 ON t1.au_id = t4.au_id JOIN
	ironhack.public.sales AS t2 ON t2.title_id=t4.title_id
GROUP BY 1,2,3
ORDER BY 4 DESC
LIMIT 3


SELECT
	-- trazer da tabela autores au_id, au_lname e au_fname - author first name.
	t1.au_id AS AUTHOR_ID,
	t1.au_lname AS LAST_NAME,
	t1.au_fname AS FIRST_NAME,
	SUM(CASE WHEN t2.qty IS NULL THEN 0 ELSE t2.qty END) AS SALES
FROM
	ironhack.public.authors AS t1 LEFT JOIN
	ironhack.public.titleauthor AS t4 ON t1.au_id = t4.au_id LEFT JOIN
	ironhack.public.sales AS t2 ON t2.title_id=t4.title_id
GROUP BY 1,2,3
ORDER BY 4 DESC
