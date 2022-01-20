SELECT 
	DISTINCT t1.prime_genre
FROM public.apple_table as t1;

SELECT 
	t1.prime_genre,
	sum(t1.rating_count_tot) as TotalRating
FROM public.apple_table as t1
GROUP BY t1.prime_genre 
ORDER BY TotalRating DESC; 

SELECT 
	t1.prime_genre,
	count(t1.id) as TotalApps
FROM public.apple_table as t1
GROUP BY t1.prime_genre 
ORDER BY TotalApps DESC;

SELECT 
	t1.prime_genre,
	count(t1.id) as TotalApps
FROM public.apple_table as t1
GROUP BY t1.prime_genre 
ORDER BY TotalApps ASC;

SELECT 
	t1.id,
	t1.track_name,
	t1.rating_count_tot
FROM public.apple_table as t1
ORDER BY t1.rating_count_tot DESC LIMIT 10;

SELECT 
	t1.id,
	t1.track_name,
	t1.user_rating
FROM public.apple_table as t1
ORDER BY t1.user_rating DESC LIMIT 10;

SELECT 
	t1.id,
	t1.track_name,
	t1.user_rating,
	t1.rating_count_tot
FROM public.apple_table as t1
ORDER BY t1.user_rating DESC LIMIT 10;

SELECT 
	t1.id,
	t1.track_name,
	t1.user_rating,
	t1.rating_count_tot
FROM public.apple_table as t1
WHERE t1.user_rating = 5
ORDER BY t1.rating_count_tot DESC ;

SELECT 
	t1.id,
	t1.track_name,
	t1.langnum 
FROM public.apple_table as t1
WHERE t1.langnum >1
ORDER BY t1.langnum DESC;

SELECT
	count(lenguage) as Total
FROM (
	SELECT 
		t1.id,
		t1.track_name,
		t1.langnum 
	FROM public.apple_table as t1
	WHERE t1.langnum >1
	ORDER BY t1.langnum DESC) AS lenguage
	
SELECT 
	t1.id,
	t1.track_name,
	CASE WHEN t1.price >0 THEN 'PAID' ELSE 'Free' END AS PaidApps 
FROM public.apple_table as t1
ORDER BY PaidApps;

SELECT 
	Totalpaid.PaidApps,
	count(Totalpaid.PaidApps)
FROM (SELECT 
	t1.id,
	t1.track_name,
	CASE WHEN t1.price >0 THEN 'PAID' ELSE 'Free' END AS PaidApps 
FROM public.apple_table as t1
ORDER BY PaidApps) as Totalpaid
GROUP BY Totalpaid.PaidApps

SELECT 
	Totalpaid.prime_genre,
	Totalpaid.PaidApps,
	count(Totalpaid.PaidApps)
FROM (SELECT 
	t1.id,
	t1.track_name,
	t1.prime_genre,
	CASE WHEN t1.price >0 THEN 'PAID' ELSE 'Free' END AS PaidApps 
FROM public.apple_table as t1
ORDER BY PaidApps) as Totalpaid
GROUP BY Totalpaid.PaidApps,
		Totalpaid.prime_genre
ORDER BY Totalpaid.prime_genre
