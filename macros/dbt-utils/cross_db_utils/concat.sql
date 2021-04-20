{% macro ibmdb2__concat(fields) %}
    {{ dbt_utils.alternative_concat(fields) }}
{% endmacro %}