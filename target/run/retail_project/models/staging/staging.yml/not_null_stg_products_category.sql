
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select category
from "postgres"."postgres_retail"."stg_products"
where category is null



  
  
      
    ) dbt_internal_test