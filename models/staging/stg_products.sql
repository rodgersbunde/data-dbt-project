{{ config(materialized='view') }}

select distinct
    product_id,
    product_name,
    category,
    price
from {{ ref('products') }}