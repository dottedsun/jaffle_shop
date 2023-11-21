WITH PAYMENTS AS (
    SELECT *
    FROM {{ ref('stg_payments') }}
)
SELECT
order_id
, SUM(amount) AS total_amount
FROM PAYMENTS
GROUP BY 1
HAVING SUM(amount) < 0