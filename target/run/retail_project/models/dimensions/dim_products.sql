
  create view "postgres"."postgres_retail"."dim_products__dbt_tmp"
    
    
  as (
    

select
    product_id,
    product_name,
    category,
    price
from "postgres"."postgres_retail"."stg_products"
  );