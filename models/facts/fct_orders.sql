{{ config(
    materialized = 'incremental',
    unique_key = 'order_id'
) }}

select
    o.order_id,
    o.customer_id,
    o.order_date,
	shipped_date,
    status,
    o.order_total
from {{ ref('stg_orders') }} as o

{% if is_incremental() %}
where o.order_date > (select max(order_date) from {{ this }})
{% endif %}