

select
    oi.order_id,
    oi.product_id,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) as line_total
from "postgres"."postgres_retail"."stg_order_details" oi