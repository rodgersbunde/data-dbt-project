{% snapshot dim_customers_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='check',
      check_cols=['first_name', 'last_name', 'email', 'city']
 
    )
}}

select
    customer_id,
    first_name,
    last_name,
    email,
    city,
    created_at::timestamp as signup_date
from {{ ref('stg_customers') }}

{% endsnapshot %}