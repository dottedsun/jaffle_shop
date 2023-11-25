{#
{% for i in range(10) %}
    SELECT {{ i }} AS number
        {% if not loop.last %}
            UNION ALL
        {% endif %}
{% endfor %}

{% set my_cool_string = 'cool' %}
{{ my_cool_string }}

{% set mi_lista = ['a', 'b', 'c'] %}
{{ mi_lista[0] }}
{% for i in mi_lista %}
	Elemento {{ i }} de mi lista
{% endfor %}


{% set temp = 45 %}
{% if temp < 65 %}
	A tomar café
{% else %}
	A tomar un refresco
{% endif %}


{% for t in [20, 65, 75] %}
    Temperatura = {{ t }}. 
    {%- if t < 65 %}
	     A tomar café
    {%- elif t ==  65 -%}
        No hacer nada
    {%- else -%}
	    A tomar un refresco
    {%- endif -%}
{% endfor %}

#}

{%- set diccionario = {
    "nombre": "Mortadelo",
    "afiliación": "TIA",
    "publicación": "Tebeo"
    }
 -%}
{{ diccionario["nombre"] }}