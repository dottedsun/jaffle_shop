SELECT * FROM {{ ref('dim_customers') }}
{{ limit_data_in_dev( 'most_recent_order', -3 ) }}