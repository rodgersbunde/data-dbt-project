{{ config(
materialized='view') 
}}

select
    payment_id,
    order_id,
    payment_date,
    amount,
    payment_method
from {{ ref('payments') }}
where payment_id is not null
and order_id is not null