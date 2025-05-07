-- all campaign data reunited

SELECT *
FROM {{ ref('stg_raw__adwords') }}
UNION all
SELECT *
FROM {{ ref('stg_raw__bing') }}
UNION all
SELECT *
FROM {{ ref('stg_raw__criteo') }}
UNION all
SELECT *
FROM {{ ref('stg_raw__facebook') }}