select
-- Operational_margin = margin + shipping_fee - log_cost - ship_cost
date_date,
orders_id,
cast((margin + shipping_fee - logcost - ship_cost) as numeric) as opereational_margin

from
 {{ref('int_orders_margin')}} 
join
{{ref("stg_raw__ship")}} 
using (orders_id)
order by orders_id desc
