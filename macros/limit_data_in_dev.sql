{% macro limit_data_in_dev( time_column, number_of_days = 3 ) -%}
    {% if target.name == 'dev' -%}
    WHERE 1 = 1
    AND {{ time_column }} <= DATEADD('DAY', {{ number_of_days }}, CURRENT_TIMESTAMP)
    {% endif %}
{% endmacro %}