SELECT
date_date,
SUM(ads_cost) AS ads_cost,
sum(impression) as ads_impression,
sum(click) as ads_clicks
FROM {{ ref('int_campaigns') }}
group by date_date
order by date_date DESC