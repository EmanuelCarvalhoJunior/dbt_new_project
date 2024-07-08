{%- macro drop_pr_schemas(PR_number) %}

    {% do log('Number PR: ' ~  PR_number  ,True) %}

    {% if PR_number%}
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
                {% if PR_number in item %}
                    {% do log('drop schema if exists ' ~ item ~ ' cascade',True ) %}
                    {% do run_query('drop schema if exists ' ~ item ~ ' cascade') %}
                {% endif %} 
            {% endfor %}
        {% else %}
            {% do log('No schemas to drop',info=True) %}
        {% endif %}

    {% else %}
        {% do log('PR Number not found',True) %}
    {% endif %}

{%- endmacro -%}



