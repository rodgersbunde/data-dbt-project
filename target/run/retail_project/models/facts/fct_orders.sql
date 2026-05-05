
      
        
        
        delete from "postgres"."postgres_retail"."fct_orders" as DBT_INTERNAL_DEST
        where (order_id) in (
            select distinct order_id
            from "fct_orders__dbt_tmp053152138359" as DBT_INTERNAL_SOURCE
        );

    

    insert into "postgres"."postgres_retail"."fct_orders" ("order_id", "customer_id", "order_date", "shipped_date", "status", "order_total")
    (
        select "order_id", "customer_id", "order_date", "shipped_date", "status", "order_total"
        from "fct_orders__dbt_tmp053152138359"
    )
  