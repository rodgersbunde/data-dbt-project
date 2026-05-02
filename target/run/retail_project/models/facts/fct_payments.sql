
  
    

  create  table "postgres"."postgres_retail"."fct_payments__dbt_tmp"
  
  
    as
  
  (
    

select
    payment_id,
    order_id,
    payment_date,
    amount,
    payment_method
from "postgres"."postgres_retail"."stg_payments"
  );
  