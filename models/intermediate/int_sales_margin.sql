select

s.* ,
p.purchase_price * s.quantity as purchase_cost,
s.revenue - (p.purchase_price * s.quantity) as margin
FROM {{ ref('stg_raw__sales') }} s
LEFT JOIN {{ ref('stg_raw__product') }} p
on s.product_id = p.products_id