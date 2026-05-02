
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_id
from "postgres"."postgres_retail"."fct_order_details"
where order_id is null



  
  
      
    ) dbt_internal_test