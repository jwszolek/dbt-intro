{{ config(materialized='table') }}

select cc.name, cc.user_id, bu.user_name from airbyte.silver_cities_case cc
join airbyte.bronze_users bu on bu.user_id == cc.user_id