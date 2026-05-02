{{ config(
materialized='table') 
}}

select
    payment_id,
    order_id,
    payment_date,
    amount,
    payment_method
from {{ ref('stg_payments') }}