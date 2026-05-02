
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select quantity
from "postgres"."postgres_retail"."fct_order_details"
where quantity is null



  
  
      
    ) dbt_internal_test