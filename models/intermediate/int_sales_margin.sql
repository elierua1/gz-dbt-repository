select

    s.*,
    p.purchase_price * s.quantity as purchase_cost,
    s.revenue - (p.purchase_price * s.quantity) as margin
from {{ ref("stg_raw__sales") }} s
left join {{ ref("stg_raw__product") }} p on s.product_id = p.products_id
