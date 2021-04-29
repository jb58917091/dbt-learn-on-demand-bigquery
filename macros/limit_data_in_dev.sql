{% macro limit_data_in_dev(column_name, past_x_days=3) -%}
{% if target.name == 'dev' -%}
where {{ column_name }} >= dateadd('day', -{{ past_x_days }}, current_timestamp)
{%- endif %}
{%- endmacro %}