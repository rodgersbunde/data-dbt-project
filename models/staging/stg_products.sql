{{ config(materialized='table') }}

select
    product_id,
    product_name,
    category,
    price
from (
    select *,
           row_number() over (
               partition by product_id
               order by product_id desc
           ) as rn
    from {{ ref('products') }}
) t
where rn = 1