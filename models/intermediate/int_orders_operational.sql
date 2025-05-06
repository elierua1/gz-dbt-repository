select
    m.orders_id,
    m.date_date,
    m.margin,
    round(
        m.margin + sh.shipping_fee - sh.logcost - sh.ship_cost, 2
    ) as operational_margin,
    m.quantity,
    m.revenue,
    m.purchase_cost,
    sh.shipping_fee,
    sh.ship_cost,
    sh.logcost
from {{ ref("int_orders_margin") }} m
left join {{ ref("stg_raw__ship") }} sh on m.orders_id = sh.orders_id
