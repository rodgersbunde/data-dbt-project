

select
    o.order_id,
    o.customer_id,
    o.order_date,
	shipped_date,
    status,
    o.order_total
from "postgres"."postgres_retail"."stg_orders" as o


where o.order_date > (select max(order_date) from "postgres"."postgres_retail"."fct_orders")
