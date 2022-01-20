SELECT 	
	t1.au_id as AuthorID,
	t2.title_id as  TitleID,
	CAST (t3.price AS NUMERIC) * t2.qty * (CAST (t3.royalty AS NUMERIC)/ 100) * (CAST (t1.royaltyper AS NUMERIC) / 100) as royalty_per_sale
FROM public.titleauthor as t1,
	 public.sales as t2,
	 public.titles as t3;
	 

SELECT
	t1.au_id as AuthorID,
	t2.title_id as  TitleID, 
	CAST (t3.price AS NUMERIC) * t2.qty * (CAST (t3.royalty AS NUMERIC)/ 100) * (CAST (t1.royaltyper AS NUMERIC) / 100) as royalty_per_sale,
	CAST (t3.advance AS NUMERIC) * (t1.royaltyper / 100) as advance_per_title_and_author
FROM public.titleauthor as t1,
	 public.sales as t2,
	 public.titles as t3
	 

		