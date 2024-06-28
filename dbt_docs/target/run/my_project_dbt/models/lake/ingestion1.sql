
  
    

  create  table "postgres"."public"."ingestion1__dbt_tmp"
  
  
    as
  
  (
    select
'1' as id,
'emanuel' as name,
14 as idade,
'm' as sexo

union all

select 
'2' as id,
'regina' as name,
10 as idade,
'f' as sexo
  );
  