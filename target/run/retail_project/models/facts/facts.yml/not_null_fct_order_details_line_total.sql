
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select line_total
from "postgres"."postgres_retail"."fct_order_details"
where line_total is null



  
  
      
    ) dbt_internal_test