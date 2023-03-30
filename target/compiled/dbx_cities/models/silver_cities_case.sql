



select
name,

    (case when name  = 'Regina' then 'NewYork' end) as Regina_case,

    (case when name  = 'Brikama' then 'NewYork' end) as Brikama_case,

    (case when name  = 'Freetown' then 'NewYork' end) as Freetown_case,

user_id
from `airbyte`.`silver_cities_limit`