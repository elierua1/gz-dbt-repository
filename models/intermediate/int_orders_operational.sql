SELECT
m.orders_id,
m.date_date,
ROUND(m.margin + sh.shipping_fee - sh.logcost - sh.ship_cost, 2) AS operational_margin,
m.quantity,
m.revenue,
m.purchase_cost,
sh.shipping_fee,
sh.ship_cost,
sh.logcost
FROM {{ ref('int_orders_margin') }} m
LEFT JOIN {{ ref('stg_raw__ship') }} sh
ON m.orders_id = sh.orders_id