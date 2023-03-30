



select id, name, user_id from `airbyte`.`silver_cities`
where 
    user_id in (20, 2, 19)
order by id