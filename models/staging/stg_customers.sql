select
    cast(customer_id as int64) as customer_id,
    trim(customer_name) as customer_name,
    trim(customer_city) as customer_city
from {{ source('ecommerce', 'raw_customers') }}