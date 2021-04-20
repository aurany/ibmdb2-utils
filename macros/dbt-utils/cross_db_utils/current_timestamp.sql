{% macro ibmdb2__current_timestamp() %}
    current_timestamp
{% endmacro %}

{% macro ibmdb2__current_timestamp_in_utc() %}
    current timestamp - current timezone
{% endmacro %}
