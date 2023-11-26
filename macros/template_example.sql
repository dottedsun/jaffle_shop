{% macro template_example() %}
    {% set query %}
        SELECT true AS bool
    {% endset %}

    {% if execute %}
        {% set results = run_query(query).columns[0].values()[0] %}
        {{ log('Resultados consulta ' ~ results, info=True) }}

        SELECT
            {{ results }} AS resultados
        FROM tabla_dummy

        {% set results2 = run_query(query) %}
        {{ results2 }}
    {% endif %}
{% endmacro %}