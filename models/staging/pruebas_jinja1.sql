/* */
{%- set payment_methods = ['credit_card', 'coupon', 'bank_transfer', 'gift_card'] -%}
WITH USO AS (
    SELECT
    *
    FROM {{ ref('raw_payments') }}
),
PIVOT AS (
    SELECT
    order_id
    {%- for method in payment_methods -%}
        , SUM(CASE
            WHEN payment_method = '{{ method }}' THEN amount
            END
        ) AS sum_{{ method }}
    {% endfor -%}
    FROM USO
    GROUP BY 1
)

SELECT * FROM PIVOT
