SELECT 
	t4.au_id,
	t4.au_lname,
	t4.au_fname,
	t2.title,
	t1.pub_name
FROM
	public.publishers AS t1 INNER JOIN 
	public.titles AS t2 ON t1.pub_id = t2.pub_id  INNER JOIN
	public.titleauthor AS t3 ON t2.title_id = t3.title_id INNER JOIN
	public.authors as t4  ON t3.au_id = t4.au_id
	
ORDER BY
	t3.au_id;
	

SELECT
	tittlecount.au_id,
	tittlecount.au_lname,
	tittlecount.au_fname,
	tittlecount.pub_name,
	COUNT(tittlecount.au_id) AS TitleCount
	
FROM
	(SELECT 
		t4.au_id,
		t4.au_lname,
		t4.au_fname,
		t2.title,
		t1.pub_name
	FROM
		public.publishers AS t1 INNER JOIN 
		public.titles AS t2 ON t1.pub_id = t2.pub_id  INNER JOIN
		public.titleauthor AS t3 ON t2.title_id = t3.title_id INNER JOIN
		public.authors as t4  ON t3.au_id = t4.au_id
	
	ORDER BY
		t4.au_id) AS tittlecount

GROUP BY 
	tittlecount.au_id,
	tittlecount.au_lname,
	tittlecount.au_fname,
	tittlecount.pub_name

ORDER BY 
	au_id DESC;
	
select count(1) from titleauthor;

SELECT 
	t1.au_id,
	t1.au_lname,
	t1.au_fname,
	SUM(t3.qty) AS Total
	
FROM 
	public.authors as t1 INNER JOIN
	public.titleauthor as t2 ON t1.au_id= t2.au_id INNER  JOIN
	public.sales as t3 ON t2.title_id = t3.title_id
	
GROUP BY 
	t1.au_id,
	t1.au_lname,
	t1.au_fname
	
ORDER BY Total DESC LIMIT 3;

SELECT 
	t1.au_id,
	t1.au_lname,
	t1.au_fname,
	CASE WHEN SUM(t3.qty) IS NULL THEN 0 ELSE SUM(t3.qty) END AS Total
	
FROM 
	public.authors as t1 LEFT JOIN
	public.titleauthor as t2 ON t1.au_id= t2.au_id LEFT JOIN
	public.sales as t3 ON t2.title_id = t3.title_id
	
GROUP BY 
	t1.au_id,
	t1.au_lname,
	t1.au_fname
	
ORDER BY Total DESC;
