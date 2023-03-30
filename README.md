# dbt-intro
A collection of DBT examples showcasing its data transformation superpowers.


### These models have been developed for educational purposes. A more detailed description can be found below.

NOTE: `{{ config(materialized='table') }}`: This part is a DBT configuration block that sets the materialization of the model to 'table'. Materialization in DBT determines how the output of the SQL query should be stored. In this case, it tells DBT to create a table with the results of the SQL query.

1. silver_cities.sql - This query selects three columns (id, name, and user_id) from the bronze_cities table in the airbyte schema. It then orders the result set by the id column in ascending order.

2. silver_users_cities_join.sql - Selects the name and user_id columns from the silver_cities_case table (aliased as cc) in the airbyte schema. Joins the silver_cities_case table with the bronze_users table (aliased as bu) in the airbyte schema, based on the condition that the user_id values in both tables match.

3. silver_cities_limit.sql - 

4. silver_cities_case.sql - 


NOTE: When you run this DBT model, it will create a new table (or replace an existing table) with the same name as the model, containing the result of the SQL query.
