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
               order by product_id
           ) as rn
    from {{ ref('products') }}
	where product_id is not null
	 and product_name is not null
        and category is not null
        and price is not null
) t
where rn = 1