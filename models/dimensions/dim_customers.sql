{{ config(
materialized='view') 
}}

select
    customer_id,
    first_name,
    last_name,
    email,
	city,
    created_at as signup_date
from {{ ref('stg_customers') }}