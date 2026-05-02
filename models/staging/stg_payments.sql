{{ config(
materialized='view') 
}}

select
    payment_id,
    order_id,
    payment_date,
    amount,
    payment_method
from {{ source('retail', 'payments') }}