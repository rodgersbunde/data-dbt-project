{% macro incremental_filter(date_column) %}
    {{ date_column }} > (
        SELECT MAX({{ date_column }}) FROM {{ this }}
    )
{% endmacro %}