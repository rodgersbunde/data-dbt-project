

select
    -- primary keys
    cast(order_id as integer) as order_id,
    cast(product_id as integer) as product_id,

    -- measures
    cast(quantity as integer) as quantity,
    cast(unit_price as numeric(10,2)) as unit_price

from "postgres"."postgres_retail"."order_details"