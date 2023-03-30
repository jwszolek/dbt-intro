
  
    
        create or replace table `airbyte`.`silver_cities_find`
      
      
    using delta
      
      
      
      
      
      
      as
      



select 

(case when name  = 'Regina' then amount end) as test

(case when name  = 'Brikama' then amount end) as test

(case when name  = 'Freetown' then amount end) as test

from `airbyte`.`silver_cities_limit`
  