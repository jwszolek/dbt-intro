{{ config(materialized='table') }}

{% set user_ids = (20, 2, 19) %}

select id, name, user_id from {{ ref('silver_cities') }}
where 
    user_id in {{user_ids}}
order by id 

