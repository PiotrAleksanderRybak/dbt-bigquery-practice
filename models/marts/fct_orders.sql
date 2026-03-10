select
    o.order_id,
    o.order_date,
    o.customer_id,
    c.customer_name,
    c.customer_city,
    o.amount_eur
from {{ ref('stg_orders') }} as o
left join {{ ref('stg_customers') }} as c
    on o.customer_id = c.customer_id