

select
    customer_id,
    first_name,
    last_name,
    city,
    email,
    created_at,
	current_timestamp as load_timestamp
from "postgres"."postgres"."customers"