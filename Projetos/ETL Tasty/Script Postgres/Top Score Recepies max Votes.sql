select 
r.recipe_id,
r.recipe_name,
avg(r2.recipe_score) as score,
avg(r2.recipe_positivevotes) as posvotes, 
avg(r2.recipe_negativevotes) as negvotes
from 
country AS c INNER JOIN 
recipes AS r ON r.country_id = c.country_id  INNER JOIN
ratings as r2 on r.recipe_id = r2.ratings_id inner join 
nutrition as n on r.recipe_id = n.nutrition_id inner join 
ingredientsquantitymeasurments as iqm on iqm.recipe_id = r.recipe_id inner join 
ingredients as i on i.ingredient_id = iqm.ingredient_id inner join 
measurements as m on m.unit_id = iqm.unit_id 
GROUP BY r.recipe_id,r.recipe_name
order by posvotes desc limit 10
