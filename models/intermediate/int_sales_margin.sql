

select *,
cast((quantity * purchase_price)as int64) as purchase_cost,
cast((revenue - (quantity * purchase_price)) as int64) as margin
 from
 {{ref('stg_raw__sales')}} 
join
{{ref("stg_raw__product")}} 
using (products_id)

