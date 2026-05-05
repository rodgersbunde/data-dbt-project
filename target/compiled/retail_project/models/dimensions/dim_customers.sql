

select
    customer_id,
    first_name,
    last_name,
    email,
	city,
    created_at as signup_date
from "postgres"."postgres_retail"."stg_customers"