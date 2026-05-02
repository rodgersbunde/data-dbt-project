

select
    order_id,
    customer_id,
    order_date,
	shipped_date,
    status,
    total_amount as order_total
from "postgres"."retail"."orders"