# dbt-intro
A collection of DBT examples showcasing its data transformation superpowers.


### These models have been developed for educational purposes. A more detailed description can be found below.

NOTE: `{{ config(materialized='table') }}`: This part is a DBT configuration block that sets the materialization of the model to 'table'. Materialization in DBT determines how the output of the SQL query should be stored. In this case, it tells DBT to create a table with the results of the SQL query.

1. silver_cities.sql - This query selects three columns (id, name, and user_id) from the bronze_cities table in the airbyte schema. It then orders the result set by the id column in ascending order.

2. silver_users_cities_join.sql - Selects the name and user_id columns from the silver_cities_case table (aliased as cc) in the airbyte schema. Joins the silver_cities_case table with the bronze_users table (aliased as bu) in the airbyte schema, based on the condition that the user_id values in both tables match.

3. silver_cities_limit.sql - {% set user_ids = (20, 2, 19) %}: This line declares a Jinja2 variable named user_ids and assigns a tuple containing three integers (20, 2, and 19) to it. Selects the id, name, and user_id columns from the table referenced by the silver_cities model (using {{ ref('silver_cities') }}). Filters the results by including only rows where the user_id value is in the tuple of user IDs defined earlier ((20, 2, 19)). Orders the result set by the id column in ascending order.

4. silver_cities_case.sql - 


NOTE: When you run this DBT model, it will create a new table (or replace an existing table) with the same name as the model, containing the result of the SQL query.
