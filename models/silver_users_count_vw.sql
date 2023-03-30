{{ config(materialized='view') }}

SELECT count(user_id) as cnt_user,user_id FROM bronze_cities GROUP BY user_id
ORDER BY cnt_user DESC

