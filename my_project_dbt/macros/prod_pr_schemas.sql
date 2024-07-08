{%- macro drop_pr_schemas(PR_number) %}

    {% do log('valor do parametro: ' ~  (PR_number | default('None')) ,True) %}

    {% set number_stg = PR_number|string %}
    {% set command_list = [] %}
    {% set pr_cleanup_query %}
        SHOW SCHEMAS IN DATABASE DBT_DB;
    {% endset %}

    {% set result = run_query(pr_cleanup_query).columns[1].values() %}
    {% if result %}
        {% for item in result %} 
            {{ command_list.append(item) }}
        {% endfor %}
    {% endif %}

    {% if command_list %}
        {% for item in command_list %}
            {% if number_stg in item %}
                {% do log('drop schema if exists ' ~ item ~ ' cascade',True ) %}
                {% do run_query('drop schema if exists ' ~ item ~ ' cascade') %}
            {% endif %} 
        {% endfor %}
    {% else %}
        {% do log('No schemas to drop',info=True) %}
    {% endif %}

{%- endmacro -%}



