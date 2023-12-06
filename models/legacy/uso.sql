     select 
        row_number() over (partition by user_id order by order_date, id) as user_order_seq,
        *
      from {{ ref('raw_orders') }}
      ORDER BY user_id, order_date, id