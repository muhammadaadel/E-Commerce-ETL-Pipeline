SELECT a.* , c.country_name
from address a left join  country c
on a.country_id = c.country_id