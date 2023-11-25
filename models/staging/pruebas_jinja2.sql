    SELECT
    id
    , order_id
    , payment_method
    , {{ cents_to_dollars() }} AS dollars_amount
    FROM {{ ref('raw_payments') }}
    LIMIT 100