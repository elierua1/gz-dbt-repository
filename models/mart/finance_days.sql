select
date_date,
COUNT(orders_id) AS nb_transaction,
SUM(revenue) AS revenue,
SUM(revenue) / COUNT(orders_id) AS average_basket,
SUM(margin) AS margin,
SUM(operational_margin) AS operational_margin,
SUM(purchase_cost) AS total_purchase_cost,
SUM(shipping_fee) AS total_shipping_fees,
SUM(logcost) AS total_log_costs,
SUM(quantity) AS total_quantity_sold
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date DESC