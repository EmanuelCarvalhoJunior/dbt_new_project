
  
    

  create  table "postgres"."public"."feminino__dbt_tmp"
  
  
    as
  
  (
    select
*
from 
"postgres"."public"."ingestion1"
where sexo = 'f'
  );
  