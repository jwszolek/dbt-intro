{{ config(materialized='table') }}

{% set names = ["Regina", "Brikama", "Freetown"] %}

select
name,
{% for name in names %}
    (case when name  = '{{name}}' then 'NewYork' end) as {{name}}_case,
{% endfor %}
user_id
from {{ ref('silver_cities_limit') }}

