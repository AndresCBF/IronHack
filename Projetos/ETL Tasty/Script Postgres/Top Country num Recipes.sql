select c.country_tags,
count(r.recipe_name) as numreceitas
from 
country AS c INNER JOIN 
recipes AS r ON r.country_id = c.country_id  INNER JOIN
ratings as r2 on r.recipe_id = r2.ratings_id inner join 
nutrition as n on r.recipe_id = n.nutrition_id inner join 
ingredientsquantitymeasurments as iqm on iqm.recipe_id = r.recipe_id inner join 
ingredients as i on i.ingredient_id = iqm.ingredient_id inner join 
measurements as m on m.unit_id = iqm.unit_id 
GROUP BY c.country_tags 
order by numreceitas desc limit 5